uint64_t sub_21D7683F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21DBF5D5C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3E490](*a1, a2, v10);
  v13 = sub_21DBF5C6C();
  v14 = [a3 layoutAttributesForItemAtIndexPath_];

  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608);
    v16 = (a4 + *(v15 + 48));
    (*(v9 + 16))(a4, v12, v8);
    [v14 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    (*(v9 + 8))(v12, v8);
    *v16 = v18;
    v16[1] = v20;
    v16[2] = v22;
    v16[3] = v24;
    return (*(*(v15 - 8) + 56))(a4, 0, 1, v15);
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61608);
    return (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }
}

void sub_21D768624(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFA12C();
  v5 = sub_21DBF5C6C();
  v6 = [a1 layoutAttributesForSupplementaryElementOfKind:v4 atIndexPath:v5];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v6 == 0;
}

void sub_21D768708(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v97 = a5;
  *&v96 = sub_21DBF5D5C();
  v10 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v92 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v92 - v18;
  v20 = *(v5 + qword_27CE61520);
  v21 = [v20 numberOfItemsInSection_];
  v22 = v21 < 1;
  v23 = v21 - 1;
  if (!v22)
  {
    if (a3)
    {
      if (a1 | a2)
      {
        MEMORY[0x223D3E490](v23, a4);
        v24 = sub_21DBF5C6C();
        v25 = [v20 layoutAttributesForItemAtIndexPath_];

        v26 = v96;
        if (v25)
        {
          [v25 frame];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v98.origin.x = v28;
          v98.origin.y = v30;
          v98.size.width = v32;
          v98.size.height = v34;
          MaxY = CGRectGetMaxY(v98);
          v99.origin.x = v28;
          v99.origin.y = v30;
          v99.size.width = v32;
          v99.size.height = v34;
          MinX = CGRectGetMinX(v99);
          v100.origin.x = v28;
          v100.origin.y = v30;
          v100.size.width = v32;
          v100.size.height = v34;
          v101.size.width = CGRectGetWidth(v100);
          v101.size.height = 0.0;
          v101.origin.x = MinX;
          v101.origin.y = MaxY;
          v102 = CGRectInset(v101, 0.0, -2.0);
          size = v102.size;
          origin = v102.origin;
          v92 = *&v102.size.height;
          v93 = *&v102.origin.y;
          (*(v10 + 8))(v15, v26);
LABEL_13:
          *&v48 = size.width;
          *&v46 = origin.x;
          v47 = 0;
          v75 = v92;
          v49 = v93;
LABEL_18:
          *(&v48 + 1) = v75;
          goto LABEL_19;
        }

        (*(v10 + 8))(v15, v96);
      }

      else
      {
        MEMORY[0x223D3E490](0, a4);
        v62 = sub_21DBF5C6C();
        v63 = [v20 layoutAttributesForItemAtIndexPath_];

        v64 = v96;
        if (v63)
        {
          [v63 frame];
          v66 = v65;
          v68 = v67;
          v70 = v69;
          v72 = v71;

          v108.origin.x = v66;
          v108.origin.y = v68;
          v108.size.width = v70;
          v108.size.height = v72;
          MinY = CGRectGetMinY(v108);
          v109.origin.x = v66;
          v109.origin.y = v68;
          v109.size.width = v70;
          v109.size.height = v72;
          v74 = CGRectGetMinX(v109);
          v110.origin.x = v66;
          v110.origin.y = v68;
          v110.size.width = v70;
          v110.size.height = v72;
          v111.size.width = CGRectGetWidth(v110);
          v111.size.height = 0.0;
          v111.origin.x = v74;
          v111.origin.y = MinY;
          v112 = CGRectInset(v111, 0.0, -2.0);
          size = v112.size;
          origin = v112.origin;
          v92 = *&v112.size.height;
          v93 = *&v112.origin.y;
          (*(v10 + 8))(v19, v64);
          goto LABEL_13;
        }

        (*(v10 + 8))(v19, v96);
      }
    }

    else
    {
      MEMORY[0x223D3E490](a1, a4);
      v50 = sub_21DBF5C6C();
      v51 = *(v10 + 8);
      v52 = v96;
      v51(v12, v96);
      v53 = [v20 layoutAttributesForItemAtIndexPath_];

      if (v53)
      {
        [v53 frame];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
      }

      else
      {
        v55 = 0.0;
        v57 = 0.0;
        v59 = 0.0;
        v61 = 0.0;
      }

      MEMORY[0x223D3E490](a2, a4);
      v76 = sub_21DBF5C6C();
      v51(v12, v52);
      v77 = [v20 layoutAttributesForItemAtIndexPath_];

      if (v77)
      {
        [v77 frame];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;

        if (v53)
        {
          v113.origin.x = v55;
          v113.origin.y = v57;
          v113.size.width = v59;
          v113.size.height = v61;
          v86 = CGRectGetMaxY(v113);
          v87 = v79;
          v88 = v86;
          v114.origin.x = v87;
          v114.origin.y = v81;
          v114.size.width = v83;
          v114.size.height = v85;
          v89 = (v88 + CGRectGetMinY(v114)) * 0.5;
          v115.origin.x = v55;
          v115.origin.y = v57;
          v115.size.width = v59;
          v115.size.height = v61;
          v90 = CGRectGetMinX(v115);
          v116.origin.x = v55;
          v116.origin.y = v57;
          v116.size.width = v59;
          v116.size.height = v61;
          v117.size.width = CGRectGetWidth(v116);
          v117.size.height = 0.0;
          v117.origin.x = v90;
          v117.origin.y = v89;
          *&v46 = CGRectInset(v117, 0.0, -2.0);
          v47 = 0;
          goto LABEL_18;
        }
      }
    }

LABEL_22:
    v46 = 0uLL;
    v47 = 1;
    v48 = 0uLL;
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_22;
  }

  v37 = *MEMORY[0x277D767D8];
  MEMORY[0x223D3E490](0, a4);
  v38 = sub_21DBF5C6C();
  (*(v10 + 8))(v12, v96);
  v39 = [v20 layoutAttributesForSupplementaryElementOfKind:v37 atIndexPath:v38];

  if (!v39)
  {
    goto LABEL_22;
  }

  [v39 frame];
  x = v103.origin.x;
  y = v103.origin.y;
  width = v103.size.width;
  height = v103.size.height;
  v44 = CGRectGetMaxY(v103);
  v104.origin.x = x;
  v104.origin.y = y;
  v104.size.width = width;
  v104.size.height = height;
  v45 = CGRectGetMinX(v104);
  v105.origin.x = x;
  v105.origin.y = y;
  v105.size.width = width;
  v105.size.height = height;
  v106.size.width = CGRectGetWidth(v105);
  v106.size.height = 0.0;
  v106.origin.x = v45;
  v106.origin.y = v44;
  v107 = CGRectInset(v106, 0.0, -2.0);
  origin = v107.origin;
  v96 = *&v107.origin.y;
  v93 = *&v107.size.height;
  size = v107.size;

  *&v48 = size.width;
  *&v46 = origin.x;
  v47 = 0;
  *(&v48 + 1) = v93;
  v49 = v96;
LABEL_19:
  *(&v46 + 1) = v49;
LABEL_23:
  v91 = v97;
  *v97 = v46;
  v91[1] = v48;
  *(v91 + 32) = v47;
}

id TTRICollectionViewDragAndDropController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRICollectionViewDragAndDropController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D768E24(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE61510));

  swift_unknownObjectRelease();
  v2 = a1 + qword_27CE61518;

  return sub_21D157444(v2);
}

uint64_t TTRICollectionViewDragAndDropController.itemID(at:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = sub_21DBFBA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  sub_21DBF8BEC();
  v8 = *(v3 - 8);
  if ((*(v8 + 48))(v7, 1, v3) == 1)
  {
    (*(v5 + 8))(v7, v4);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a1, v7, v3);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v3);
}

uint64_t TTRICollectionViewDragAndDropController.indexPath(forInsertingAt:)(uint64_t a1)
{
  v3 = *(v1 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

id TTRICollectionViewDragAndDropController.layoutAttributesForItem(at:)()
{
  v1 = *(v0 + qword_27CE61520);
  v2 = sub_21DBF5C6C();
  v3 = [v1 layoutAttributesForItemAtIndexPath_];

  return v3;
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(for:)(uint64_t a1)
{
  v3 = *(v1 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 48))(a1, ObjectType, v3);
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(forItemAt:localItemIDsToBeMoved:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 56))(a1, a2, ObjectType, v5);
}

uint64_t TTRICollectionViewDragAndDropController.itemLocation(forInsertingAt:localItemIDsToBeMoved:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 64))(a1, a2, ObjectType, v5);
}

uint64_t TTRICollectionViewDragAndDropController.siblingsBeforeAndAfter(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + qword_27CE61528 + 8);
  ObjectType = swift_getObjectType();
  return (*(v7 + 72))(a1, a2, a3, ObjectType, v7);
}

uint64_t TTRICollectionViewDragAndDropController.hitTest(with:dragItemSources:destinationIndexPath:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v18 = a1;
  v19 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_21DBF5D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v17 = *(a2 + 8);
  sub_21D0D3954(a3, v9, &unk_27CE58E70);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_21D0CF7E0(v9, &unk_27CE58E70);
    sub_21D7677CC(v18, *(v4 + qword_27CE61520), v19);
    type metadata accessor for TTRICollectionViewHitTestResult(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v4 + qword_27CE61520);
    v20 = v14;
    v21 = v17;
    sub_21D7668BC(v16, v18, &v20, v13, v19);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t TTRICollectionViewDragAndDropController.gapLocation(relativeTo:dragItemSources:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v68 = a1;
  v72 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = &v62 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v14);
  v67 = &v62 - v15;
  v69 = sub_21DBF5D5C();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v62 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v64 = &v62 - v20;
  MEMORY[0x28223BE20](v21);
  v65 = &v62 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  MEMORY[0x28223BE20](v26);
  v70 = &v62 - v27;
  v28 = *a2;
  v29 = a2[1];
  v30 = a2[2];
  v73 = *a2;
  v74 = v29;
  v75 = v30;
  v31 = type metadata accessor for TTRICollectionViewDragItemSources();
  result = sub_21D76B1D4();
  if (result)
  {
    v73 = v28;
    v74 = v29;
    v75 = v30;
    v33 = sub_21D76B558(v31);
    if (*(v33 + 16))
    {
      v34 = v71;
      v35 = v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
      v36 = v69;
      v63 = *(v71 + 16);
      (v63)(v25, v35, v69);

      v37 = *(v34 + 32);
      v37(v70, v25, v36);
      v38 = *(v4 + qword_27CE61520);
      v39 = sub_21DBF5C6C();
      v40 = [v38 presentationIndexPathForDataSourceIndexPath_];

      if (v40)
      {
        sub_21DBF5CAC();

        v41 = 0;
      }

      else
      {
        v41 = 1;
      }

      v48 = v66;
      v47 = v67;
      v49 = v71;
      (*(v71 + 56))(v13, v41, 1, v36);
      sub_21D0D523C(v13, v47, &unk_27CE58E70);
      sub_21D0D3954(v47, v48, &unk_27CE58E70);
      if ((*(v49 + 48))(v48, 1, v36) == 1)
      {
        sub_21D0CF7E0(v47, &unk_27CE58E70);
        (*(v49 + 8))(v70, v36);
        result = sub_21D0CF7E0(v48, &unk_27CE58E70);
        v42 = 1;
      }

      else
      {
        v50 = v65;
        v37(v65, v48, v36);
        v51 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
        v52 = v64;
        (v63)(v64, v68 + *(v51 + 20), v36);
        if (MEMORY[0x223D3E430](v52, v50))
        {
          v53 = *(v49 + 8);
          v53(v52, v36);
          v53(v50, v36);
          sub_21D0CF7E0(v47, &unk_27CE58E70);
          result = (v53)(v70, v36);
          v42 = 2;
        }

        else
        {
          v57 = sub_21DBF5C8C();
          v58 = *(v49 + 8);
          v58(v52, v36);
          v58(v50, v36);
          sub_21D0CF7E0(v47, &unk_27CE58E70);
          result = (v58)(v70, v36);
          if (v57)
          {
            v42 = 4;
          }

          else
          {
            v42 = 3;
          }
        }
      }
    }

    else
    {

      v43 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
      v44 = v68;
      sub_21D0D3954(v68 + *(v43 + 24), v8, &unk_27CE58E70);
      v45 = v71;
      v46 = v69;
      if ((*(v71 + 48))(v8, 1, v69) == 1)
      {
        result = sub_21D0CF7E0(v8, &unk_27CE58E70);
        v42 = 3;
      }

      else
      {
        v54 = v63;
        (*(v45 + 32))(v63, v8, v46);
        v55 = v62;
        (*(v45 + 16))(v62, v44 + *(v43 + 20), v46);
        if (MEMORY[0x223D3E430](v55, v54))
        {
          v56 = *(v45 + 8);
          v56(v55, v46);
          result = (v56)(v54, v46);
          v42 = 2;
        }

        else if (sub_21DBF5C8C())
        {
          v59 = *(v45 + 8);
          v59(v55, v46);
          result = (v59)(v54, v46);
          v42 = 4;
        }

        else
        {
          v60 = [*(v4 + qword_27CE61520) hasUncommittedUpdates];
          v61 = *(v45 + 8);
          v61(v55, v46);
          result = (v61)(v54, v46);
          if (v60)
          {
            v42 = 4;
          }

          else
          {
            v42 = 0;
          }
        }
      }
    }
  }

  else
  {
    v42 = 0;
  }

  *v72 = v42;
  return result;
}

void TTRICollectionViewDragAndDropController.customDropIndicatorRect(forInsertingAt:in:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21DBF5D0C();
  v7 = sub_21DBF5CFC();
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  if ([*(v3 + qword_27CE61520) numberOfItemsInSection_] < v7)
  {
    v8 = 0;
    v7 = 1;
LABEL_4:
    v9 = 1;
    goto LABEL_7;
  }

  v7 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    return;
  }

  v9 = 0;
LABEL_7:
  sub_21D768708(v7, v8, v9, v6, &v15);
  v11 = *(&v15 + 1);
  v10 = v15;
  v12 = v16;
  v13 = v17;
  v14 = v18;
  if ((v18 & 1) == 0)
  {
    [*(v3 + qword_27CE61520) convertRect:a1 toCoordinateSpace:{v15, v16, v17}];
    v14 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
}

Swift::Void __swiftcall TTRICollectionViewDragAndDropController.setSupplementarySectionHeaderHighlightedAsDropTarget(inSection:)(Swift::Int_optional inSection)
{
  v2 = v1;
  is_nil = inSection.is_nil;
  value = inSection.value;
  v5 = sub_21DBF5D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (is_nil)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = *(v2 + qword_27CE61520);
    v12 = *MEMORY[0x277D767D8];
    MEMORY[0x223D3E490](0, value);
    v13 = sub_21DBF5C6C();
    (*(v6 + 8))(v8, v5);
    v9 = [v11 supplementaryViewForElementKind:v12 atIndexPath:v13];

    if (v9)
    {
      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        v14 = v9;
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = v2 + qword_27CE61518;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    if (!Strong)
    {
      return;
    }

    goto LABEL_13;
  }

  if (!Strong)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v17 = Strong;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v17 != v9)
  {
LABEL_14:
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v18 + 16))(0, ObjectType, v18);
      swift_unknownObjectRelease();
    }

    if (v9)
    {
      v20 = swift_getObjectType();
      (*(v10 + 16))(1, v20, v10);
    }

    *(v15 + 8) = v10;
    swift_unknownObjectWeakAssign();
  }

  swift_unknownObjectRelease();
}

double sub_21D769FA8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  TTRICollectionViewDragAndDropController.customDropIndicatorRect(forInsertingAt:in:)(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_21D769FF4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  v11 = CGRectGetHeight(v17) * a6;
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetHeight(v18);
  v19.origin.x = UIEdgeInsetsInsetRect(a2, a3, a4, a5, v11, 0.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  if (CGRectGetMinY(v19) > a1)
  {
    return 0;
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  if (CGRectGetMaxY(v20) >= a1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_21D76A0D4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *(v2 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v5 + 24))(v2, WitnessTable, a1, a2, ObjectType, v5);
}

uint64_t sub_21D76A184(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 32))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A224(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = *(v4 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v9 + 40))(v4, WitnessTable, a1, a2, ObjectType, v9, a3, a4);
}

uint64_t sub_21D76A2EC(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 48))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A38C(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 56))(v1, WitnessTable, a1, ObjectType, v3) & 1;
}

uint64_t sub_21D76A430(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 64))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A4D0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = *(v2 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v5 + 88))(v2, WitnessTable, a1, a2, ObjectType, v5);
}

uint64_t sub_21D76A580(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 96))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A620(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 72))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A6C0(uint64_t a1)
{
  swift_getObjectType();
  v3 = *(v1 + qword_27CE61530 + 8);
  ObjectType = swift_getObjectType();
  WitnessTable = swift_getWitnessTable();
  return (*(v3 + 80))(v1, WitnessTable, a1, ObjectType, v3);
}

uint64_t sub_21D76A820(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_21D76A860@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21D76A8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewHitIndexPaths(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76A908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D76A968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76A9D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21D76AA78()
{
  v1 = *(v0 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  if (sub_21DBFA6DC() != 1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_21D76AAEC()
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v0 = sub_21DBFA49C();

  return v0;
}

uint64_t (*sub_21D76ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>))(uint64_t *, void)
{
  v7 = type metadata accessor for TTRAdjustedIndexPath(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v18 = *(v3 + 1);
  sub_21D76C764(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_21D74EAE0(v12, a3, type metadata accessor for TTRUnadjustedIndexPath);
    }

    else
    {
      sub_21D74EAE0(v12, a3, type metadata accessor for TTRUnadjustedIndexPath);
      result = sub_21DBF5CEC();
      if (__OFADD__(*v17, 1))
      {
        __break(1u);
      }

      else
      {
        ++*v17;
        return result(&v19, 0);
      }
    }
  }

  else
  {
    sub_21D74EAE0(v12, v9, type metadata accessor for TTRAdjustedIndexPath);
    v19 = v13;
    v20 = v18;
    v16 = sub_21D76B558(a2);
    TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)(v16, a3);

    return sub_21D76C804(v9, type metadata accessor for TTRAdjustedIndexPath);
  }

  return result;
}

uint64_t sub_21D76ADA4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v29 = v2;
  v4 = *(a1 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  v5 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_21DBFACFC();
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = v2;
    MEMORY[0x28223BE20](v7);
    v28[2] = v4;
    sub_21DBF8E0C();
    v10 = sub_21D0E5014(sub_21D76C7C8, v28, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

    v29 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D1ADAA8();
    v11 = sub_21DBFA07C();
    v13 = v12;

    v29 = 0x202D206C61636F6CLL;
    v30 = 0xE800000000000000;
    MEMORY[0x223D42AA0](v11, v13);

    v14 = v29;
    v15 = v30;
    v8 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_21D210A84((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
  }

  if (v3 >> 62)
  {
    if (!sub_21DBFBD7C())
    {
      goto LABEL_13;
    }

    v19 = sub_21DBFBD7C();
  }

  else
  {
    v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  v28[4] = v19;
  v29 = sub_21DBFC5BC();
  v30 = v20;
  MEMORY[0x223D42AA0](0x726568746F207820, 0xE900000000000073);
  v21 = v29;
  v22 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_21D210A84(0, *(v8 + 2) + 1, 1, v8);
  }

  v24 = *(v8 + 2);
  v23 = *(v8 + 3);
  if (v24 >= v23 >> 1)
  {
    v8 = sub_21D210A84((v23 > 1), v24 + 1, 1, v8);
  }

  *(v8 + 2) = v24 + 1;
  v25 = &v8[16 * v24];
  *(v25 + 4) = v21;
  *(v25 + 5) = v22;
LABEL_13:
  v29 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v26 = sub_21DBFA07C();

  return v26;
}

uint64_t sub_21D76B0CC()
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();

  return sub_21DBF9E3C();
}

uint64_t sub_21D76B0FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_21D76B108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_21DBF5D5C();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  result = (*(*(a4 - 8) + 32))(a5 + *(v11 + 28), a2, a4);
  *(a5 + *(v11 + 32)) = a3;
  return result;
}

uint64_t sub_21D76B1D4()
{
  v1 = *(v0 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  result = sub_21DBFA6DC();
  if (!(v1 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_3;
    }

    return 1;
  }

  v6 = result;
  v3 = sub_21DBFBD7C();
  result = v6;
  if (v6 < 1)
  {
    return 1;
  }

LABEL_3:
  v4 = __OFADD__(result, v3);
  v5 = result + v3;
  if (!v4)
  {
    return v5 == 1;
  }

  __break(1u);
  return result;
}

void (*sub_21D76B268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>))(uint64_t *, void)
{
  v7 = type metadata accessor for TTRUnadjustedIndexPath(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v13 = v3[1];
  v15 = v3[2];
  sub_21D76C764(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_21D74EAE0(v12, a3, type metadata accessor for TTRAdjustedIndexPath);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21D74EAE0(v12, v9, type metadata accessor for TTRUnadjustedIndexPath);
    v22 = v14;
    v23 = v13;
    v24 = v15;
    v17 = sub_21D76B558(a2);
    TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)(v17, a3);

    v18 = v9;
  }

  else
  {
    sub_21D74EAE0(v12, v9, type metadata accessor for TTRUnadjustedIndexPath);
    result = sub_21DBF5CEC();
    if (__OFADD__(*v20, 1))
    {
      __break(1u);
      return result;
    }

    ++*v20;
    result(&v22, 0);
    v22 = v14;
    v23 = v13;
    v24 = v15;
    v21 = sub_21D76B558(a2);
    TTRUnadjustedIndexPath.adjusted(forOriginalItemIndexPaths:)(v21, a3);

    v18 = v9;
  }

  return sub_21D76C804(v18, type metadata accessor for TTRUnadjustedIndexPath);
}

BOOL sub_21D76B498()
{
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  sub_21DBFA74C();
  swift_getWitnessTable();
  return (sub_21DBFACFC() & 1) == 0;
}

BOOL sub_21D76B514()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == 0;
}

uint64_t sub_21D76B558(uint64_t a1)
{
  v8[5] = *(v1 + 8);
  v8[2] = *(a1 + 16);
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  v2 = sub_21DBFA74C();
  v3 = sub_21DBF5D5C();
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_21D0E5014(sub_21D76C6F4, v8, v2, v3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  return v6;
}

uint64_t TTRICollectionViewDragItemSources.ItemInfo.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5D5C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewDragItemSources.itemsFromThisCollectionView.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TTRICollectionViewDragItemSources.otherItems.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v9 = v4;
  type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v5 = sub_21DBFACFC();
  v6 = v5;
  if (v5)
  {
    result = sub_21DBF8E0C();
  }

  else
  {
    v8[1] = v8;
    v9 = v4;
    MEMORY[0x28223BE20](v5);
    swift_getWitnessTable();
    result = sub_21DBFA4EC();
    v3 = result;
  }

  *a1 = v3;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21D76B8F0(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  return v3(a1 + *(v4 + 28));
}

uint64_t sub_21D76B950()
{
  swift_unknownObjectRelease();
}

void *sub_21D76B994(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *sub_21D76B9E4(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D76BA5C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_21D76BAC4()
{
  result = sub_21DBF5D5C();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D76BB98(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = *(v10 + 64);
  v14 = v13 + ((v8 + v11) & ~v11) + 1;
  v15 = (*(v7 + 80) | *(v10 + 80));
  if (v15 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v15 + 16) & ~v15));
  }

  else
  {
    v19 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    v20 = (a2 + v12) & v19;
    (*(v10 + 16))((a1 + v12) & v19, v20, v9);
    *(((a1 + v12) & v19) + v13) = *(v20 + v13);
  }

  return a1;
}

uint64_t sub_21D76BD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t sub_21D76BDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14);
  *(*(v10 + 48) + v13) = *(*(v10 + 48) + v14);
  return a1;
}

uint64_t sub_21D76BE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 24;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 24))(v13, v14);
  *(*(v10 + 40) + v13) = *(*(v10 + 40) + v14);
  return a1;
}

uint64_t sub_21D76BF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 32;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 32))(v13, v14);
  *(*(v10 + 32) + v13) = *(*(v10 + 32) + v14);
  return a1;
}

uint64_t sub_21D76C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = v9 + 40;
  v11 = *(v9 + 80);
  v12 = v8 + v11;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 40))(v13, v14);
  *(*(v10 + 24) + v13) = *(*(v10 + 24) + v14);
  return a1;
}

uint64_t sub_21D76C0F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v6 - 8) + 64) + v11;
  if (a2 > v13)
  {
    v15 = v12 + (v14 & ~v11) + 1;
    v16 = 8 * v15;
    if (v15 > 3)
    {
      goto LABEL_9;
    }

    v18 = ((a2 - v13 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

    if (v18 >= 2)
    {
LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + (v14 & ~v11) == -1)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + (v14 & ~v11) + 1;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      v27 = v13 + (v21 | v19);
      return (v27 + 1);
    }
  }

LABEL_29:
  if (v8 == v13)
  {
    v22 = *(v7 + 48);

    return v22(a1);
  }

  v24 = (a1 + v14) & ~v11;
  if (v10 != v13)
  {
    v26 = *(v24 + v12);
    if (v26 < 2)
    {
      return 0;
    }

    v27 = (v26 + 2147483646) & 0x7FFFFFFF;
    return (v27 + 1);
  }

  v25 = *(v9 + 48);

  return v25(v24, v10);
}

void sub_21D76C368(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21DBF5D5C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = v12 + v13;
  v17 = v14 + ((v12 + v13) & ~v13) + 1;
  if (a3 <= v15)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v15 < a2)
  {
    v19 = ~v15 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 == v15)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v25 = &a1[v16] & ~v13;
    if (v11 == v15)
    {
      v26 = *(v10 + 56);

      v26(v25, a2, v11);
    }

    else
    {
      *(v25 + v14) = a2 + 1;
    }
  }
}

uint64_t sub_21D76C65C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  sub_21DBF8E0C();

  return a1;
}

uint64_t sub_21D76C6A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t sub_21D76C764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D76C7C8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x223D3E410]();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21D76C804(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D76C864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for TTRICollectionViewDragItemSources.ItemInfo();
  return (*(*(v5 - 8) + 16))(a2, a1 + *(v6 + 28), v5);
}

Swift::Void __swiftcall TTRLazilyLoadedViewModelState.transitionToOutdated()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    (*(v3 + 8))(v1, v2);
    v8 = *(v2 + 16);
    v9 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v8 - 8) + 32))(v1, v6, v8);
    *(v1 + v9) = 0;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t TTRLazilyLoadedViewModelState.transitionToValid(with:)(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))(v2);
  v5 = *(a2 + 16);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v5 - 8) + 16))(v2, a1, v5);
  *(v2 + v6) = 1;

  return swift_storeEnumTagMultiPayload();
}

Swift::Bool __swiftcall TTRLazilyLoadedViewModelState.transitionToNone()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v3 + 8);
      v8(v1, v2);
      swift_storeEnumTagMultiPayload();
      v8(v6, v2);
      return 1;
    }
  }

  else
  {
    (*(*(*(v2 + 16) - 8) + 8))(v6);
  }

  return 0;
}

Swift::Void __swiftcall TTRLazilyLoadedViewModelState.transitionToInvalid()()
{
  v2 = v0;
  v3 = *(v0 - 8);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v3 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8(v6, v2);
      return;
    }

    v8(v1, v2);
    (*(*(*(v2 + 16) - 8) + 56))(v1, 1, 1);
  }

  else
  {
    v8(v1, v2);
    v9 = *(v2 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(v1, v6, v9);
    (*(v10 + 56))(v1, 0, 1, v9);
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t TTRLazilyLoadedViewModelState.isValid.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 8))(v5, a1);
    }

    return 0;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 8))(v5);
    return 1;
  }
}

uint64_t TTRLazilyLoadedViewModelState.viewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(a1 + 16);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = sub_21DBFBA8C();
      return (*(*(v10 - 8) + 32))(a2, v6, v10);
    }

    else
    {
      return (*(*(v9 - 8) + 56))(a2, 1, 1);
    }
  }

  else
  {
    v12 = *(v9 - 8);
    v13 = v6;
    v14 = v9;
    (*(v12 + 32))(a2, v13, v9);
    return (*(v12 + 56))(a2, 0, 1, v14);
  }
}

uint64_t static TTRLazilyLoadedViewModelState<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v63 = a1;
  v64 = a2;
  v5 = sub_21DBFBA8C();
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v54 = &v51 - v6;
  v59 = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v55 = &v51 - v8;
  v62 = *(a3 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v61 = a3;
  v14 = type metadata accessor for TTRLazilyLoadedViewModelState();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = swift_getTupleTypeMetadata2();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - v24;
  v27 = &v51 + *(v26 + 48) - v24;
  v60 = v15;
  v28 = *(v15 + 16);
  v28(&v51 - v24, v63, v14, v23);
  (v28)(v27, v64, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v28)(v17, v25, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v58;
        v31 = *(TupleTypeMetadata2 + 48);
        v32 = *(v58 + 32);
        v33 = v55;
        v34 = v59;
        v32();
        (v32)(&v33[v31], v27, v34);
        v35 = v61;
        v36 = v62;
        v37 = *(v62 + 48);
        if (v37(v33, 1, v61) == 1)
        {
          if (v37(&v33[v31], 1, v35) == 1)
          {
            (*(v30 + 8))(v33, v34);
LABEL_10:
            v42 = v60;
LABEL_11:
            (*(v42 + 8))(v25, v14);
            return 1;
          }
        }

        else
        {
          (*(v30 + 16))(v54, v33, v34);
          if (v37(&v33[v31], 1, v35) != 1)
          {
            v48 = v52;
            (*(v36 + 32))(v52, &v33[v31], v35);
            v49 = v54;
            LODWORD(v64) = sub_21DBFA10C();
            v50 = *(v36 + 8);
            v50(v48, v35);
            v50(v49, v35);
            (*(v30 + 8))(v33, v34);
            v42 = v60;
            if (v64)
            {
              goto LABEL_11;
            }

            goto LABEL_20;
          }

          (*(v36 + 8))(v54, v35);
        }

        (*(v53 + 8))(v33, TupleTypeMetadata2);
LABEL_19:
        v42 = v60;
LABEL_20:
        (*(v42 + 8))(v25, v14);
        return 0;
      }

      (*(v58 + 8))(v17, v59);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v38 = v13;
    (v28)(v20, v25, v14);
    v39 = v61;
    v40 = *(swift_getTupleTypeMetadata2() + 48);
    v41 = v20[v40];
    if (!swift_getEnumCaseMultiPayload())
    {
      v44 = v27[v40];
      v45 = v62;
      (*(v62 + 32))(v38, v27, v39);
      v46 = sub_21DBFA10C();
      v47 = *(v45 + 8);
      v47(v38, v39);
      v47(v20, v39);
      if (v46)
      {
        (*(v60 + 8))(v25, v14);
        return v41 ^ v44 ^ 1u;
      }

      goto LABEL_19;
    }

    (*(v62 + 8))(v20, v39);
  }

  (*(v22 + 8))(v25, v21);
  return 0;
}

uint64_t sub_21D76D858()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[4] = v3;
    result = sub_21DBFBA8C();
    if (v2 <= 0x3F)
    {
      v3[5] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21D76D944(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = v6 + 1;
  }

  if (v8 <= v6 + 1)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + 1;
  if (*(v5 + 80) > 7u || (v7 & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 + 16) & ~v7));

    return v3;
  }

  v14 = a2[v9];
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    if (v9 <= 3)
    {
      v16 = v9;
    }

    else
    {
      v16 = 4;
    }

    if (v16 <= 1)
    {
      if (!v16)
      {
        goto LABEL_30;
      }

      v17 = *a2;
    }

    else if (v16 == 2)
    {
      v17 = *a2;
    }

    else if (v16 == 3)
    {
      v17 = *a2 | (a2[2] << 16);
    }

    else
    {
      v17 = *a2;
    }

    v18 = (v17 | (v15 << (8 * v9))) + 2;
    v14 = v17 + 2;
    if (v9 < 4)
    {
      v14 = v18;
    }
  }

LABEL_30:
  if (v14 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(v3, a2, v8);
    }

    else
    {
      (*(v5 + 16))(v3, a2, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
    }

    *(v3 + v9) = 1;
    return v3;
  }

  if (!v14)
  {
    (*(v5 + 16))(__dst);
    *(v3 + v6) = a2[v6];
    *(v3 + v9) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v10);
}

unsigned __int8 *sub_21D76DB68(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4 + 1)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = result[v6];
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
        goto LABEL_21;
      }

      v10 = *result;
    }

    else if (v9 == 2)
    {
      v10 = *result;
    }

    else if (v9 == 3)
    {
      v10 = *result | (result[2] << 16);
    }

    else
    {
      v10 = *result;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_21:
  if (!v7 || v7 == 1 && (v12 = result, v16 = *(*(a2 + 16) - 8), v13 = (*(v3 + 48))(), v3 = v16, v14 = v13, result = v12, !v14))
  {
    v15 = *(v3 + 8);

    return v15(result, v2);
  }

  return result;
}

void *sub_21D76DCD0(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(__dst, a2, v7);
    }

    else
    {
      (*(v5 + 16))(__dst, a2, v4);
      (*(v5 + 56))(__dst, 0, 1, v4);
    }

    *(__dst + v8) = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v5 + 16))(__dst);
    *(__dst + v6) = a2[v6];
    *(__dst + v8) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *sub_21D76DEC0(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = __dst[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *__dst;
    }

    else if (v12 == 2)
    {
      v13 = *__dst;
    }

    else if (v12 == 3)
    {
      v13 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v13 = *__dst;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (!v10 || v10 == 1 && !(*(v6 + 48))(__dst, 1, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

  v15 = __src[v9];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *__src;
    }

    else if (v17 == 2)
    {
      v18 = *__src;
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
    }

    else
    {
      v18 = *__src;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 2;
    v15 = v18 + 2;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  if (v15 == 1)
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 16))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 1;
    return __dst;
  }

  if (!v15)
  {
    (*(v6 + 16))(__dst, __src, v5);
    __dst[v7] = __src[v7];
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

void *sub_21D76E188(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = a2[v8];
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *a2;
    }

    else if (v11 == 2)
    {
      v12 = *a2;
    }

    else if (v11 == 3)
    {
      v12 = *a2 | (a2[2] << 16);
    }

    else
    {
      v12 = *a2;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 2;
    v9 = v12 + 2;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  if (v9 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(__dst, a2, v7);
    }

    else
    {
      (*(v5 + 32))(__dst, a2, v4);
      (*(v5 + 56))(__dst, 0, 1, v4);
    }

    *(__dst + v8) = 1;
    return __dst;
  }

  if (!v9)
  {
    (*(v5 + 32))(__dst);
    *(__dst + v6) = a2[v6];
    *(__dst + v8) = 0;
    return __dst;
  }

  return memcpy(__dst, a2, v8 + 1);
}

unsigned __int8 *sub_21D76E378(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = v7 + 1;
  }

  if (v8 <= v7 + 1)
  {
    v9 = v7 + 1;
  }

  else
  {
    v9 = v8;
  }

  v10 = __dst[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_22;
      }

      v13 = *__dst;
    }

    else if (v12 == 2)
    {
      v13 = *__dst;
    }

    else if (v12 == 3)
    {
      v13 = *__dst | (__dst[2] << 16);
    }

    else
    {
      v13 = *__dst;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_22:
  if (!v10 || v10 == 1 && !(*(v6 + 48))(__dst, 1, v5))
  {
    (*(v6 + 8))(__dst, v5);
  }

  v15 = __src[v9];
  v16 = v15 - 2;
  if (v15 >= 2)
  {
    if (v9 <= 3)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    if (v17 <= 1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      v18 = *__src;
    }

    else if (v17 == 2)
    {
      v18 = *__src;
    }

    else if (v17 == 3)
    {
      v18 = *__src | (__src[2] << 16);
    }

    else
    {
      v18 = *__src;
    }

    v19 = (v18 | (v16 << (8 * v9))) + 2;
    v15 = v18 + 2;
    if (v9 < 4)
    {
      v15 = v19;
    }
  }

LABEL_40:
  if (v15 == 1)
  {
    if ((*(v6 + 48))(__src, 1, v5))
    {
      memcpy(__dst, __src, v8);
    }

    else
    {
      (*(v6 + 32))(__dst, __src, v5);
      (*(v6 + 56))(__dst, 0, 1, v5);
    }

    __dst[v9] = 1;
    return __dst;
  }

  if (!v15)
  {
    (*(v6 + 32))(__dst, __src, v5);
    __dst[v7] = __src[v7];
    __dst[v9] = 0;
    return __dst;
  }

  return memcpy(__dst, __src, v9 + 1);
}

uint64_t sub_21D76E640(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_21D76E790(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 253) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_43:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v8] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_28;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_21D76E980(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 64);
  if (*(v2 + 84))
  {
    v4 = *(v2 + 64);
  }

  else
  {
    v4 = v3 + 1;
  }

  if (v4 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  v5 = a1[v4];
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
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void sub_21D76EA58(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1)
  {
    a1[v8] = a2;
    return;
  }

  v9 = a2 - 2;
  if (v8 < 4)
  {
    a1[v8] = (v9 >> (8 * v8)) + 2;
    if (!v8)
    {
      return;
    }

    v9 &= ~(-1 << (8 * v8));
  }

  else
  {
    a1[v8] = 2;
  }

  if (v8 >= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v8;
  }

  bzero(a1, v8);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      *a1 = v9;
      a1[2] = BYTE2(v9);
    }

    else
    {
      *a1 = v9;
    }
  }

  else if (v10 == 1)
  {
    *a1 = v9;
  }

  else
  {
    *a1 = v9;
  }
}

uint64_t sub_21D76EB78(uint64_t a1)
{
  v2 = sub_21DBFBA8C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_21D0E3614(v5);
}

uint64_t sub_21D76EC48()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D76ECC8(char a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 24);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21D76EDF0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 32);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D76EF0C(int a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v4 = *MEMORY[0x277D85000] & *v3;
  v5 = v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource;
  v6 = *(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18[-v10];
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v18[-v13];
  v15 = *(v5 + 24);
  result = swift_beginAccess();
  if ((*(v3 + v15) & 1) == 0)
  {
    sub_21D0E6F44(v11);
    if ((*(v12 + 48))(v11, 1, v6) == 1)
    {
      return (*(v8 + 8))(v11, v7);
    }

    else
    {
      (*(v12 + 32))(v14, v11, v6);
      v17 = (*(*(v4 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8) + 32))(v6);
      sub_21D7702C4(v17, v19 & 1, v20, v21);

      return (*(v12 + 8))(v14, v6);
    }
  }

  return result;
}

void sub_21D76F170()
{
  v1 = [*(v0 + *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)) collectionViewLayout];
  [v1 invalidateLayout];
}

uint64_t sub_21D76F25C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a4;
  v23 = a3;
  ObjectType = swift_getObjectType();
  v7 = *MEMORY[0x277D85000] & *v4;
  v9 = *(v7 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v35[0] = swift_getAssociatedTypeWitness();
  v35[1] = v35[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = AssociatedConformanceWitness;
  v10 = type metadata accessor for UICollectionViewDiffableDataSource.CombinedSnapshots();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &ObjectType - v12;
  v22 = *a2;
  (*(v8 + 24))(v35, v9, v8);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_21DBFBEEC();
  v14 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v16 = v15;

  v33 = v14;
  v34 = v16;
  MEMORY[0x223D42AA0](0xD000000000000016, 0x800000021DC6A5B0);
  v30 = v9;
  v31 = v8;
  v32 = v35;
  sub_21DBFAE9C();
  sub_21DBF625C();

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_21DBFBEEC();
  v17 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
  v19 = v18;

  v33 = v17;
  v34 = v19;
  MEMORY[0x223D42AA0](0xD000000000000015, 0x800000021DC6A5D0);
  v25 = v5;
  v26 = v13;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  sub_21DBFAE9C();
  sub_21DBF626C();

  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t sub_21D76F5C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a2;
  v104 = a3;
  v102 = a1;
  v79 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v93 = sub_21DBFBA8C();
  v82 = *(v93 - 8);
  v6 = MEMORY[0x28223BE20](v93);
  v92 = &v69 - v7;
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  v91 = &v69 - v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v116 = v5;
  v117 = v5;
  v118 = AssociatedConformanceWitness;
  v119 = AssociatedConformanceWitness;
  v9 = sub_21DBF8B0C();
  v106 = v9;
  v10 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v69 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_21DBFBA8C();
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v120 = &v69 - v14;
  v77 = *(v9 - 8);
  MEMORY[0x28223BE20](v13);
  v105 = &v69 - v15;
  v101 = sub_21DBFBA8C();
  v16 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v18 = &v69 - v17;
  v19 = sub_21DBF849C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBFB2EC();
  v73 = objc_opt_self();
  v23 = [v73 ppt];
  sub_21DBF848C();
  sub_21DBF847C();

  v24 = *(v20 + 8);
  v74 = v22;
  v25 = v22;
  v26 = TupleTypeMetadata2;
  v76 = v19;
  v75 = v20 + 8;
  v72 = v24;
  v24(v25, v19);
  v27 = v102[3];
  v28 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v27);
  v29 = *(AssociatedTypeWitness - 8);
  v30 = *(v29 + 56);
  v100 = v29 + 56;
  v88 = v30;
  v30(v18, 1, 1, AssociatedTypeWitness);
  v31 = TTRTreeContentsQueryable.children(of:)(v18, v27, v28);
  v32 = *(v16 + 8);
  v89 = v18;
  v90 = v16 + 8;
  v87 = v32;
  v32(v18, v101);
  v116 = v31;
  v108 = v103;
  v109 = v104;
  v94 = AssociatedTypeWitness;
  v33 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable();
  v35 = v99;
  v37 = sub_21D0E5014(sub_21D108EE0, v107, v33, v5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v36);
  v71 = v35;
  sub_21DBF8AFC();
  sub_21DBF8A6C();
  v116 = v31;
  *&v110 = v37;
  v38 = sub_21DBFA74C();
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  sub_21DBFC6EC();

  v110 = v113;
  v99 = v33;
  v116 = v33;
  v117 = v38;
  v98 = v38;
  v97 = v39;
  v118 = v39;
  v119 = v40;
  v96 = v40;
  sub_21DBFBF5C();
  sub_21DBFBF2C();
  v95 = v26 - 8;
  v86 = (v81 + 4);
  v85 = (v100 - 24);
  v84 = (v81 + 2);
  v83 = (v81 + 7);
  ++v82;
  for (++v81; ; (*v81)(v60, v5))
  {
    *&v113 = v99;
    *(&v113 + 1) = v98;
    v114 = v97;
    v115 = v96;
    sub_21DBFBF4C();
    v41 = v120;
    sub_21DBFBF3C();
    if ((*(*(v26 - 8) + 48))(v41, 1, v26) == 1)
    {
      break;
    }

    v42 = v120;
    v43 = &v120[*(v26 + 48)];
    v44 = v26;
    v45 = v91;
    (*v86)(v91, v43, v5);
    v46 = v102[3];
    v47 = v102[4];
    __swift_project_boxed_opaque_existential_1(v102, v46);
    v48 = v89;
    v49 = v94;
    (*v85)(v89, v42, v94);
    v88(v48, 0, 1, v49);
    v50 = TTRTreeContentsQueryable.childrenCollection(of:)(v48, v46, v47);
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v87(v48, v101);
    *&v110 = v50;
    *(&v110 + 1) = v52;
    v111 = v54;
    v112 = v56;
    v57 = swift_allocObject();
    v58 = v104;
    *(v57 + 16) = v103;
    *(v57 + 24) = v58;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050);
    sub_21D0E8418(qword_27CE5C010);
    sub_21DBFC0EC();
    sub_21D0E8418(&qword_280D17898);
    sub_21DBFC0FC();

    sub_21DBFC0EC();

    swift_getWitnessTable();
    sub_21DBFA76C();
    v59 = v92;
    (*v84)(v92, v45, v5);
    (*v83)(v59, 0, 1, v5);
    sub_21DBF8A2C();

    (*v82)(v59, v93);
    v60 = v45;
    v26 = v44;
  }

  v61 = v77;
  v62 = v78;
  v64 = v105;
  v63 = v106;
  (*(v77 + 16))(v78, v105, v106);
  (*(v61 + 56))(v62, 0, 1, v63);
  v65 = sub_21D0E5434();
  UICollectionViewDiffableDataSource.CombinedSnapshots.init(main:sections:)(v62, v65, v79);
  (*(v61 + 8))(v64, v63);
  sub_21DBFB2DC();
  v66 = [v73 ppt];
  v67 = v74;
  sub_21DBF848C();
  sub_21DBF847C();

  return v72(v67, v76);
}

uint64_t sub_21D77020C()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 24);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

uint64_t sub_21D7702C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v63 = a3;
  v62 = a2;
  v77 = a1;
  v61[1] = swift_getObjectType();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_21DBF8D0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v66 = v61 - v10;
  v11 = *(v7 - 8);
  v12 = MEMORY[0x28223BE20](v9);
  v81 = v61 - v13;
  v79 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v74 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v61 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v61 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v73 = v61 - v23;
  v61[0] = v24;
  MEMORY[0x28223BE20](v22);
  v72 = v61 - v25;
  v86 = AssociatedTypeWitness;
  v87 = AssociatedTypeWitness;
  v88 = AssociatedConformanceWitness;
  v89 = AssociatedConformanceWitness;
  v76 = AssociatedConformanceWitness;
  v26 = sub_21DBF8B0C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v61 - v28;
  v67 = TupleTypeMetadata2;
  v30 = v21;
  v85 = sub_21DBF9E3C();
  v70 = v4;
  sub_21DBF8C2C();
  v31 = sub_21DBF8AEC();
  v32 = v29;
  v33 = v7;
  (*(v27 + 8))(v32, v26);
  if (!sub_21DBFA6DC())
  {
LABEL_31:

    v86 = 0;
    v87 = 0xE000000000000000;
    sub_21DBFBEEC();
    v56 = static UICollectionViewDiffableDataSource.loggingPrefix.getter();
    v58 = v57;

    v86 = v56;
    v87 = v58;
    v59 = MEMORY[0x223D42AA0](0xD000000000000019, 0x800000021DC6A590);
    MEMORY[0x28223BE20](v59);
    v61[-6] = &v85;
    v61[-5] = v70;
    LOBYTE(v61[-4]) = v62 & 1;
    v60 = v64;
    v61[-3] = v63;
    v61[-2] = v60;
    sub_21DBFAE9C();
    sub_21DBF626C();
  }

  v34 = 0;
  v82 = (v79 + 16);
  v78 = (v79 + 32);
  v35 = (v79 + 8);
  v65 = (v11 + 16);
  v68 = (v11 + 8);
  v75 = v30;
  v80 = v33;
  v69 = v31;
  while (1)
  {
    v42 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v42)
    {
      v43 = v31 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v34;
      v44 = *(v79 + 16);
      result = (v44)(v72, v43, AssociatedTypeWitness);
    }

    else
    {
      result = sub_21DBFBF7C();
      if (v61[0] != 8)
      {
        goto LABEL_35;
      }

      v86 = result;
      v44 = *v82;
      (*v82)(v72, &v86, AssociatedTypeWitness);
      result = swift_unknownObjectRelease();
    }

    v46 = __OFADD__(v34, 1);
    v47 = v34 + 1;
    if (v46)
    {
      break;
    }

    v71 = v47;
    v48 = *v78;
    (*v78)(v73, v72, AssociatedTypeWitness);
    sub_21DBF8C1C();
    v86 = sub_21DBF9E3C();
    v84 = sub_21DBF9E3C();
    v49 = sub_21DBF8C8C();
    if (sub_21DBFA6DC())
    {
      v50 = 0;
      do
      {
        v51 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v51)
        {
          result = (v44)(v30, v49 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v50, AssociatedTypeWitness);
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_32;
          }
        }

        else
        {
          result = sub_21DBFBF7C();
          if (v61[0] != 8)
          {
            goto LABEL_34;
          }

          v83 = result;
          v44(v30, &v83, AssociatedTypeWitness);
          result = swift_unknownObjectRelease();
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v48(v18, v30, AssociatedTypeWitness);
        v53 = sub_21DBF8C4C();
        v54 = sub_21DBFAB6C();
        if (v53)
        {
          if ((v54 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (v54)
        {
          goto LABEL_12;
        }

        v44(v74, v18, AssociatedTypeWitness);
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v30 = v75;
LABEL_12:
        (*v35)(v18, AssociatedTypeWitness);
        ++v50;
      }

      while (v52 != sub_21DBFA6DC());
    }

    v83 = v86;
    sub_21DBFA74C();
    swift_getWitnessTable();
    v55 = sub_21DBFACFC();
    if ((v55 & 1) == 0)
    {
      sub_21DBF8CCC();
    }

    v83 = v84;
    if (sub_21DBFACFC())
    {

      v38 = v80;
      v37 = v81;
      if (v55)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v36 = v80;
      v37 = v81;
      sub_21DBF8CAC();
      v38 = v36;
      v30 = v75;
    }

    v39 = *(v67 + 48);
    v40 = v66;
    v44(v66, v73, AssociatedTypeWitness);
    (*v65)(&v40[v39], v37, v38);
    sub_21DBFA74C();
    sub_21DBFA6FC();
LABEL_5:
    (*v68)(v37, v38);
    (*v35)(v73, AssociatedTypeWitness);
    v31 = v69;
    v41 = sub_21DBFA6DC();
    v34 = v71;
    if (v71 == v41)
    {
      goto LABEL_31;
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_21D770C68(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v40 = a5;
  v46 = a4;
  v45 = a3;
  v44 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_21DBF8D0C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v34 - v10;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v39 = &v34 - v12;
  v42 = v13;
  v43 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = sub_21DBFBA8C();
  v15 = MEMORY[0x28223BE20](v48);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v49 = &v34 - v18;
  v50 = TupleTypeMetadata2 - 8;
  v47 = (v19 + 32);
  v20 = *a1;
  v37 = (v8 + 32);
  v38 = (v11 + 32);
  v35 = (v11 + 8);
  v36 = (v8 + 8);
  sub_21DBF8E0C();
  v21 = 0;
  v22 = v41;
  while (1)
  {
    if (v21 == sub_21DBFA6DC())
    {
      v23 = *(TupleTypeMetadata2 - 8);
      (*(v23 + 56))(v17, 1, 1, TupleTypeMetadata2);
      v24 = v49;
      goto LABEL_7;
    }

    v25 = sub_21DBFA6AC();
    sub_21DBFA61C();
    v24 = v49;
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(TupleTypeMetadata2 - 8);
    (*(v26 + 16))(v17, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, TupleTypeMetadata2);
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
      goto LABEL_12;
    }

LABEL_6:
    v23 = v26;
    (*(v26 + 56))(v17, 0, 1, TupleTypeMetadata2);
LABEL_7:
    (*v47)(v24, v17, v48);
    if ((*(v23 + 48))(v24, 1, TupleTypeMetadata2) == 1)
    {
    }

    v28 = *(TupleTypeMetadata2 + 48);
    v29 = v39;
    v30 = v43;
    (*v38)(v39, v24, v43);
    v31 = &v24[v28];
    v32 = v42;
    (*v37)(v22, v31, v42);
    sub_21DBF8C0C();
    (*v36)(v22, v32);
    (*v35)(v29, v30);
  }

  result = sub_21DBFBF7C();
  v26 = *(TupleTypeMetadata2 - 8);
  if (*(v26 + 64) == 8)
  {
    v51 = result;
    (*(v26 + 16))(v17, &v51, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    v27 = __OFADD__(v21++, 1);
    if (v27)
    {
LABEL_12:
      __break(1u);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_21D771278()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  v3 = sub_21DBFBA8C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[*((*v1 & *v0) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)];
}

id TTRICollectionViewTreeBackedDiffableDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D7713E4(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 16);
  v4 = sub_21DBFBA8C();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 40)];
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemIDs<A>(for:)()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  return sub_21DBFA4EC();
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.items<A>(withIDs:)(uint64_t a1)
{
  sub_21D10AFA8(a1, &v4);
  if (v5)
  {
    v1 = sub_21D0D0FD0(&v4, v6);
    MEMORY[0x28223BE20](v1);
    swift_getAssociatedTypeWitness();
    v2 = sub_21DBFA4EC();
    __swift_destroy_boxed_opaque_existential_0(v6);
    return v2;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    return sub_21DBFA68C();
  }
}

uint64_t sub_21D7717A8(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return item_rdar101056925<A, B>(in:withID:)(v5, a1, AssociatedTypeWitness, v3, v4);
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.item(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_21DBF8BEC();
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    v11 = swift_checkMetadataState();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    (*(v7 + 32))(v10, v6, AssociatedTypeWitness);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v10, a1);
    return (*(v7 + 8))(v10, AssociatedTypeWitness);
  }
}

uint64_t sub_21D771AF0@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = sub_21DBFBA8C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  sub_21DBF8BEC();
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v3 + 8))(v6, v2);
    v10 = swift_checkMetadataState();
    return (*(*(v10 - 8) + 56))(v13, 1, 1, v10);
  }

  else
  {
    (*(v7 + 32))(v9, v6, AssociatedTypeWitness);
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v9, v13);
    return (*(v7 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.childItemIDs(ofParentID:)(uint64_t a1)
{
  v36 = a1;
  v2 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v2 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v3 = *(v2 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  sub_21D10AFA8(v17, &v38);
  if (!v40)
  {
    goto LABEL_4;
  }

  sub_21D0D0FD0(&v38, v41);
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v36, v12);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_0(v41);
LABEL_4:
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return sub_21DBFA68C();
  }

  v19 = *(v13 + 32);
  v35 = v16;
  v19(v16, v12, AssociatedTypeWitness);
  v20 = v42;
  v36 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v13 + 16))(v9, v16, AssociatedTypeWitness);
  (*(v13 + 56))(v9, 0, 1, AssociatedTypeWitness);
  v21 = TTRTreeContentsQueryable.childrenCollection(of:)(v9, v20, v36);
  v36 = v3;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = (*(v7 + 8))(v9, v6);
  *&v38 = v21;
  *(&v38 + 1) = v23;
  v39 = v25;
  v40 = v27;
  MEMORY[0x28223BE20](v28);
  v29 = v36;
  *(&v35 - 2) = v4;
  *(&v35 - 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A050);
  sub_21D0E8418(qword_27CE5C010);
  v30 = sub_21DBFC0EC();
  swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedTypeWitness();
  v37 = sub_21D0E8418(&qword_280D17898);
  WitnessTable = swift_getWitnessTable();
  v34 = sub_21D0E5014(sub_21D108EC8, (&v35 - 4), v30, v31, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v33);

  (*(v13 + 8))(v35, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return v34;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.indexPaths(forItemID:includingChildren:)(uint64_t a1, char a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_21D23CE60(AssociatedTypeWitness, AssociatedTypeWitness);
  v5 = *(AssociatedTypeWitness - 8);
  swift_allocObject();
  sub_21DBFA60C();
  (*(v5 + 16))(v6, a1, AssociatedTypeWitness);
  sub_21D23C8B4();
  if (a2)
  {
    TTRICollectionViewTreeBackedDiffableDataSource.childItemIDs(ofParentID:)(a1);
    sub_21DBFA6BC();
  }

  sub_21DBFA74C();
  swift_getWitnessTable();
  v7 = TTRICollectionViewTreeBackedDiffableDataSource.indexPaths<A>(forItemWithIDs:)();

  return v7;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_21DBFBA8C();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - v5;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - v7;
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v8;
  v39 = v8;
  v40 = AssociatedConformanceWitness;
  v41 = AssociatedConformanceWitness;
  v30 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  (*(v10 + 16))(v12, a1 + *(v30 + 52), v9);
  v18 = *(v13 + 48);
  v19 = v18(v12, 1, v8);
  v34 = a1;
  if (v19 == 1)
  {
    (*(v13 + 16))(v16, a1, v8);
    if (v18(v12, 1, v8) != 1)
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v12, v8);
  }

  v20 = v35;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(v16, v35);
  (*(v13 + 8))(v16, v8);
  v21 = v36;
  if ((*(v36 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v32 + 8))(v20, v33);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v37, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v24 = *(v21 + 32);
    v25 = v31;
    v24(v31, v20, AssociatedTypeWitness);
    v26 = swift_getTupleTypeMetadata2();
    v27 = *(v26 + 48);
    v28 = v37;
    v24(v37, v25, AssociatedTypeWitness);
    *&v28[v27] = *(v34 + *(v30 + 56));
    return (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
  }
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for TTRNormalizedItemLocation();
  return TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)(a1 + *(v4 + 60), a2);
}

char *TTRICollectionViewTreeBackedDiffableDataSource.indexPath(forInsertingAt:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v72 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v65 = &v59 - v5;
  v6 = sub_21DBF5D5C();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v59 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_21DBFBA8C();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v59 - v12;
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73[0] = AssociatedTypeWitness;
  v73[1] = AssociatedTypeWitness;
  v73[2] = AssociatedConformanceWitness;
  v73[3] = AssociatedConformanceWitness;
  v23 = sub_21DBF8B0C();
  v67 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  v29 = type metadata accessor for TTRRelativeInsertionPosition();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v59 - v31;
  (*(v33 + 16))(&v59 - v31, v72, v29, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21DBF8C2C();
      if (sub_21DBF8ABC() >= 1)
      {
        v40 = v71;
        MEMORY[0x223D3E490](0, 0);
        (*(v67 + 8))(v28, v23);
        goto LABEL_23;
      }

      v54 = *(v67 + 8);
      v55 = v28;
    }

    else
    {
      sub_21DBF8C2C();
      result = sub_21DBF8ABC();
      v46 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if ((v46 & 0x8000000000000000) == 0)
      {
        v47 = v64;
        NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(v23, v64);
        v48 = v70;
        if ((*(v70 + 48))(v47, 1, AssociatedTypeWitness) == 1)
        {
          (*(v67 + 8))(v25, v23);
          (*(v60 + 8))(v47, v61);
          goto LABEL_21;
        }

        (*(v48 + 32))(v21, v47, AssociatedTypeWitness);
        v57 = sub_21DBF8A5C();
        v40 = v71;
        MEMORY[0x223D3E490](v57, v46);
        (*(v48 + 8))(v21, AssociatedTypeWitness);
        (*(v67 + 8))(v25, v23);
        goto LABEL_23;
      }

      v54 = *(v67 + 8);
      v55 = v25;
    }

    v54(v55, v23);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v35 = v70;
    (*(v70 + 32))(v18, v32, AssociatedTypeWitness);
    v36 = v65;
    sub_21DBF8C3C();
    (*(v35 + 8))(v18, AssociatedTypeWitness);
    v38 = v68;
    v37 = v69;
    if ((*(v68 + 48))(v36, 1, v69) == 1)
    {
      v39 = v36;
LABEL_10:
      sub_21D31DD48(v39);
LABEL_21:
      v56 = 1;
      v40 = v71;
LABEL_24:
      v58 = type metadata accessor for TTRUnadjustedIndexPath(0);
      return (*(*(v58 - 8) + 56))(v40, v56, 1, v58);
    }

    v49 = *(v38 + 32);
    v50 = v62;
    v49(v62, v36, v37);
    v40 = v71;
    v49(v71, v50, v37);
LABEL_23:
    v56 = 0;
    goto LABEL_24;
  }

  v41 = v70;
  (*(v70 + 32))(v15, v32, AssociatedTypeWitness);
  v42 = v66;
  sub_21DBF8C3C();
  v44 = v68;
  v43 = v69;
  if ((*(v68 + 48))(v42, 1, v69) == 1)
  {
    (*(v41 + 8))(v15, AssociatedTypeWitness);
    v39 = v42;
    goto LABEL_10;
  }

  v51 = *(v44 + 32);
  v52 = v63;
  v51(v63, v42, v43);
  result = sub_21DBF5CEC();
  if (!__OFADD__(*v53, 1))
  {
    ++*v53;
    (result)(v73, 0);
    (*(v41 + 8))(v15, AssociatedTypeWitness);
    v40 = v71;
    v51(v71, v52, v43);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v2;
  v5[2] = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v5[3] = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  return sub_21D773428(a1, sub_21D19DA18, v5, a2);
}

uint64_t sub_21D773428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v100 = a2;
  v102 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v78 - v9;
  v83 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v78 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v92 = &v78 - v17;
  v18 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_21DBFBA8C();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v94 = &v78 - v19;
  v85 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v85);
  v84 = &v78 - v20;
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v22);
  v88 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v91 = &v78 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v78 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v33);
  v89 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v96 = &v78 - v36;
  MEMORY[0x28223BE20](v37);
  v101 = &v78 - v38;
  sub_21D10AFA8(v39, &v103);
  if (!v105)
  {
    goto LABEL_10;
  }

  v93 = v21;
  v97 = AssociatedConformanceWitness;
  v98 = a4;
  sub_21D0D0FD0(&v103, v106);
  v40 = v107;
  v41 = v108;
  v42 = __swift_project_boxed_opaque_existential_1(v106, v107);
  item_rdar101056925<A, B>(in:withID:)(v42, v102, AssociatedTypeWitness, v40, v41);
  v43 = *(v32 + 48);
  if (v43(v31, 1, AssociatedTypeWitness) == 1)
  {
    (*(v93 + 8))(v31, v18);
    goto LABEL_9;
  }

  v44 = v101;
  v79 = *(v32 + 32);
  v79();
  if (((v100)(v44) & 1) == 0)
  {
    (*(v32 + 8))(v44, AssociatedTypeWitness);
    goto LABEL_9;
  }

  v99 = v32 + 32;
  v100 = v32;
  v45 = v107;
  v46 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  TTRTreeContentsQueryable.topLevelItem(containing:)(v44, v45, v46, v28);
  if (v43(v28, 1, AssociatedTypeWitness) == 1)
  {
    (*(v100 + 8))(v44, AssociatedTypeWitness);
    (*(v93 + 8))(v28, v18);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v106);
    a4 = v98;
LABEL_10:
    v47 = swift_getAssociatedConformanceWitness();
    v106[0] = v7;
    v106[1] = v7;
    v106[2] = v47;
    v107 = v47;
    v48 = type metadata accessor for TTRNormalizedItemLocation();
    return (*(*(v48 - 8) + 56))(a4, 1, 1, v48);
  }

  v50 = v96;
  (v79)(v96, v28, AssociatedTypeWitness);
  v51 = v107;
  v52 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v53 = v94;
  TTRTreeContentsQueryable.parentAndChildIndex(for:)(v44, v51, v52, v94);
  v54 = v53;
  v55 = TupleTypeMetadata2;
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v54, 1, TupleTypeMetadata2) == 1)
  {
    (*(v86 + 8))(v54, v87);
    v56 = *(v100 + 8);
    v56(v50, AssociatedTypeWitness);
    v56(v44, AssociatedTypeWitness);
    goto LABEL_9;
  }

  TupleTypeMetadata2 = *(v54 + *(v55 + 48));
  v57 = v85;
  v87 = *(v85 + 48);
  v58 = v54;
  v59 = v93;
  v60 = *(v93 + 32);
  v61 = v84;
  v60(v84, v58, v18);
  *&v61[v87] = TupleTypeMetadata2;
  TupleTypeMetadata2 = *&v61[*(v57 + 48)];
  v62 = v91;
  v60(v91, v61, v18);
  v63 = v88;
  (*(v59 + 16))(v88, v62, v18);
  if (v43(v63, 1, AssociatedTypeWitness) == 1)
  {
    v64 = *(v59 + 8);
    v64(v62, v18);
    v65 = *(v100 + 8);
    v65(v96, AssociatedTypeWitness);
    v65(v101, AssociatedTypeWitness);
    v64(v63, v18);
    goto LABEL_9;
  }

  (v79)(v89, v63, AssociatedTypeWitness);
  v66 = v97;
  v67 = *(v97 + 24);
  v67(AssociatedTypeWitness, v97);
  v68 = v80;
  v67(AssociatedTypeWitness, v66);
  v67(AssociatedTypeWitness, v66);
  v69 = v68;
  v70 = swift_getAssociatedConformanceWitness();
  if (sub_21DBFA10C())
  {
    v71 = v83;
    v72 = v82;
    (*(v83 + 56))(v82, 1, 1, v7);
    v73 = *(v71 + 16);
  }

  else
  {
    v71 = v83;
    v73 = *(v83 + 16);
    v72 = v82;
    v73(v82, v69, v7);
    (*(v71 + 56))(v72, 0, 1, v7);
  }

  v74 = v81;
  v73(v81, v102, v7);
  TTRNormalizedItemLocation.init(sectionID:parentItemID:childIndex:itemID:)(v90, v72, TupleTypeMetadata2, v74, v7, v7, v98);
  v75 = *(v71 + 8);
  v75(v69, v7);
  v75(v92, v7);
  v76 = *(v100 + 8);
  v76(v89, AssociatedTypeWitness);
  (*(v93 + 8))(v91, v18);
  v76(v96, AssociatedTypeWitness);
  v76(v101, AssociatedTypeWitness);
  *&v103 = v7;
  *(&v103 + 1) = v7;
  v104 = v70;
  v105 = v70;
  v77 = type metadata accessor for TTRNormalizedItemLocation();
  (*(*(v77 - 8) + 56))(v98, 0, 1, v77);
  return __swift_destroy_boxed_opaque_existential_0(v106);
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(forItemAt:localItemIDsToBeMoved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v26 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = AssociatedTypeWitness;
  v28 = AssociatedTypeWitness;
  v29 = AssociatedConformanceWitness;
  v30 = AssociatedConformanceWitness;
  v13 = sub_21DBF8B0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  sub_21DBF8C2C();
  NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v13, v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v16, v13);
    (*(v22 + 8))(v7, v23);
    v27 = AssociatedTypeWitness;
    v28 = AssociatedTypeWitness;
    v29 = AssociatedConformanceWitness;
    v30 = AssociatedConformanceWitness;
    v17 = type metadata accessor for TTRNormalizedItemLocation();
    return (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  }

  else
  {
    v19 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
    MEMORY[0x28223BE20](v19);
    v20 = v24;
    *(&v21 - 2) = v3;
    *(&v21 - 1) = v20;
    sub_21D773428(v11, sub_21D77990C, (&v21 - 4), v26);
    (*(v8 + 8))(v11, AssociatedTypeWitness);
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_21D7743B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  (*(v11 + 16))(&v13 - v9, a1, AssociatedTypeWitness, v8);
  (*(v11 + 56))(v10, 0, 1, AssociatedTypeWitness);
  LOBYTE(a3) = sub_21D774564(v10, a3);
  (*(v7 + 8))(v10, v6);
  return a3 & 1;
}

uint64_t sub_21D774564(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = &v38 - v5;
  v6 = swift_checkMetadataState();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v54 = sub_21DBFBA8C();
  v10 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v51 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v53 = &v38 - v16;
  sub_21D10AFA8(v17, &v55);
  if (v56)
  {
    sub_21D0D0FD0(&v55, v57);
    v50 = swift_getAssociatedConformanceWitness();
    if (sub_21DBFAB4C())
    {
LABEL_9:
      __swift_destroy_boxed_opaque_existential_0(v57);
      return 1;
    }

    v49 = a2;
    v38 = v10;
    v18 = *(v10 + 16);
    v20 = v53;
    v19 = v54;
    v18(v53, v48, v54);
    v47 = v18;
    v48 = v10 + 16;
    v18(v14, v20, v19);
    v45 = *(v7 + 48);
    v46 = v7 + 48;
    if (v45(v14, 1, v6) == 1)
    {
      v21 = *(v38 + 8);
LABEL_8:
      v36 = v54;
      v21(v53, v54);
      v21(v14, v36);
      goto LABEL_9;
    }

    v23 = *(v7 + 32);
    v22 = v7 + 32;
    v44 = v23;
    v43 = AssociatedConformanceWitness + 24;
    ++v42;
    v40 = (v22 - 24);
    v39 = (v38 + 32);
    v41 = (v38 + 8);
    v38 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    while (1)
    {
      v44(v9, v14, v6);
      v24 = v52;
      (*(AssociatedConformanceWitness + 24))(v6, AssociatedConformanceWitness);
      v25 = sub_21DBFAB6C();
      (*v42)(v24, AssociatedTypeWitness);
      if (v25)
      {
        break;
      }

      v26 = v14;
      v27 = v22;
      v28 = AssociatedTypeWitness;
      v29 = AssociatedConformanceWitness;
      v30 = v58;
      v31 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v32 = v51;
      v33 = v30;
      AssociatedConformanceWitness = v29;
      AssociatedTypeWitness = v28;
      v22 = v27;
      v14 = v26;
      (*(v31 + 48))(v9, v33, v31);
      (*v40)(v9, v6);
      v21 = *v41;
      v35 = v53;
      v34 = v54;
      (*v41)(v53, v54);
      (*v39)(v35, v32, v34);
      v47(v14, v35, v34);
      if (v45(v14, 1, v6) == 1)
      {
        goto LABEL_8;
      }
    }

    (*v40)(v9, v6);
    (*v41)(v53, v54);
    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  return 0;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v99 = a1;
  v100 = a2;
  v104 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v82 = sub_21DBFBA8C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = &v80 - v11;
  v12 = swift_getAssociatedConformanceWitness();
  v109 = v7;
  v110 = v7;
  v111 = v12;
  v112 = v12;
  v90 = sub_21DBF8B0C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v80 - v13;
  v95 = sub_21DBFBA8C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v96 = &v80 - v14;
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v15);
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v80 - v18;
  MEMORY[0x28223BE20](v19);
  v84 = &v80 - v20;
  MEMORY[0x28223BE20](v21);
  v86 = &v80 - v22;
  v105 = AssociatedTypeWitness;
  v85 = AssociatedConformanceWitness;
  v23 = type metadata accessor for TTRTreeLocation();
  v101 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v98 = &v80 - v24;
  v25 = sub_21DBFBA8C();
  v102 = *(v25 - 8);
  v103 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  sub_21D10AFA8(v31, &v106);
  if (!v108)
  {
    v109 = v7;
    v110 = v7;
    v111 = v12;
    v112 = v12;
    v46 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
    return (*(*(v46 - 8) + 56))(v104, 1, 1, v46);
  }

  v93 = v7;
  v80 = v9;
  v97 = v12;
  sub_21D0D0FD0(&v106, &v109);
  *&v106 = sub_21D77583C(v99);
  MEMORY[0x28223BE20](v106);
  *(&v80 - 2) = v4;
  type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation();
  sub_21DBFA74C();
  swift_getWitnessTable();
  v32 = sub_21DBFA4EC();

  *&v106 = v32;
  MEMORY[0x28223BE20](v33);
  v34 = v100;
  *(&v80 - 2) = v4;
  *(&v80 - 1) = v34;
  sub_21DBFA74C();
  swift_getWitnessTable();
  v35 = sub_21DBFBFDC();
  v36 = (*((*MEMORY[0x277D85000] & *v4) + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 160))(v35, v34);

  v37 = v112;
  v38 = v113;
  __swift_project_boxed_opaque_existential_1(&v109, v112);
  bestInsertionLocation_rdar101056925<A, B>(in:among:localItemIDsToBeMoved:allowsInsertingAtRootLevel:)(v36, v34, 0, v37, v38, v30);

  v39 = v102;
  v40 = v103;
  (*(v102 + 16))(v27, v30, v103);
  v41 = v101;
  if ((*(v101 + 48))(v27, 1, v23) == 1)
  {
    v42 = *(v39 + 8);
    v42(v30, v40);
    v42(v27, v40);
    v43 = v104;
    v44 = v97;
    v45 = v93;
  }

  else
  {
    v99 = v4;
    v100 = v30;
    v48 = v98;
    (*(v41 + 32))(v98, v27, v23);
    v49 = v94;
    v50 = v96;
    v51 = v95;
    (*(v94 + 16))(v96, v48, v95);
    v52 = *(v105 - 8);
    v53 = (*(v52 + 48))(v50, 1);
    v45 = v93;
    if (v53 != 1)
    {
      v57 = v84;
      v58 = v105;
      (*(v85 + 24))(v105);
      (*(v52 + 8))(v50, v58);
      v59 = v87;
      v60 = *(v87 + 32);
      v61 = v86;
      (v60)(v86, v57, v45);
      v62 = v88;
      sub_21DBF8C2C();
      v63 = v90;
      sub_21DBF8A8C();
      if (v64)
      {
        v65 = v45;
        v66 = v83;
        sub_21DBF8ADC();
        v67 = v66;
        v68 = (*(v59 + 48))(v66, 1, v65);
        v69 = v80;
        if (v68 == 1)
        {
          (*(v89 + 8))(v62, v63);
          (*(v59 + 8))(v61, v65);
          (*(v101 + 8))(v98, v23);
          (*(v102 + 8))(v100, v103);
          (*(v81 + 8))(v67, v82);
          *&v106 = v65;
          *(&v106 + 1) = v65;
          v107 = v97;
          v108 = v97;
          v54 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
          v55 = *(*(v54 - 8) + 56);
          v56 = v104;
          goto LABEL_8;
        }

        v71 = v92;
        v60();
        v70 = *(v59 + 16);
      }

      else
      {
        v70 = *(v59 + 16);
        v71 = v92;
        v70(v92, v61, v45);
        v65 = v45;
        v69 = v80;
      }

      v70(v91, v71, v65);
      v72 = v63;
      if (sub_21DBFA10C())
      {
        v73 = 1;
      }

      else
      {
        v70(v69, v61, v65);
        v73 = 0;
      }

      (*(v59 + 56))(v69, v73, 1, v65);
      v74 = v98;
      v75 = v104;
      v76 = v69;
      v77 = v97;
      TTRNormalizedItemLocationForInsertAt.init(sectionID:parentItemID:unadjustedChildIndex:)(v91, v76, *&v98[*(v23 + 36)], v65, v65, v104);
      (*(v89 + 8))(v62, v72);
      v78 = *(v59 + 8);
      v78(v92, v65);
      v78(v61, v65);
      (*(v101 + 8))(v74, v23);
      (*(v102 + 8))(v100, v103);
      *&v106 = v65;
      *(&v106 + 1) = v65;
      v107 = v77;
      v108 = v77;
      v79 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
      (*(*(v79 - 8) + 56))(v75, 0, 1, v79);
      return __swift_destroy_boxed_opaque_existential_0(&v109);
    }

    (*(v49 + 8))(v50, v51);
    (*(v41 + 8))(v48, v23);
    (*(v39 + 8))(v100, v40);
    v43 = v104;
    v44 = v97;
  }

  *&v106 = v45;
  *(&v106 + 1) = v45;
  v107 = v44;
  v108 = v44;
  v54 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v55 = *(*(v54 - 8) + 56);
  v56 = v43;
LABEL_8:
  v55(v56, 1, 1, v54);
  return __swift_destroy_boxed_opaque_existential_0(&v109);
}

uint64_t sub_21D77583C(void (*a1)(char *, char *, uint64_t))
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v5 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v4 = *(v3 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_21DBF8D0C();
  v208 = *(v8 - 8);
  v209 = v8;
  MEMORY[0x28223BE20](v8);
  v202 = &v176 - v9;
  v197 = v5;
  v207 = v4;
  inserted = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation();
  MEMORY[0x28223BE20](inserted);
  v206 = &v176 - v10;
  v11 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v183 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v200 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v186 = &v176 - v14;
  MEMORY[0x28223BE20](v15);
  v196 = &v176 - v16;
  v203 = v11;
  v184 = *(v11 - 8);
  v205 = v184;
  MEMORY[0x28223BE20](v17);
  v198 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v210 = &v176 - v20;
  MEMORY[0x28223BE20](v21);
  v201 = &v176 - v22;
  MEMORY[0x28223BE20](v23);
  v214 = (&v176 - v24);
  MEMORY[0x28223BE20](v25);
  v182 = &v176 - v26;
  MEMORY[0x28223BE20](v27);
  v185 = &v176 - v28;
  MEMORY[0x28223BE20](v29);
  v204 = &v176 - v30;
  MEMORY[0x28223BE20](v31);
  v181 = &v176 - v32;
  MEMORY[0x28223BE20](v33);
  v194 = &v176 - v34;
  MEMORY[0x28223BE20](v35);
  v191 = &v176 - v36;
  MEMORY[0x28223BE20](v37);
  v199 = &v176 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v176 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = &v176 - v43;
  v45 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v46);
  v212 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v189 = &v176 - v49;
  MEMORY[0x28223BE20](v50);
  v192 = &v176 - v51;
  MEMORY[0x28223BE20](v52);
  v180 = &v176 - v53;
  MEMORY[0x28223BE20](v54);
  v188 = &v176 - v55;
  MEMORY[0x28223BE20](v56);
  v195 = &v176 - v57;
  MEMORY[0x28223BE20](v58);
  v60 = &v176 - v59;
  v223 = AssociatedTypeWitness;
  v224 = AssociatedTypeWitness;
  v225 = AssociatedConformanceWitness;
  v226 = AssociatedConformanceWitness;
  v193 = AssociatedConformanceWitness;
  v61 = sub_21DBF8B0C();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = &v176 - v63;
  v217 = v1;
  sub_21DBF8C2C();
  v215 = a1;
  sub_21DBF5D0C();
  NSDiffableDataSourceSnapshot.sectionIdentifier(at:)(v61, v44);
  v65 = v45 + 48;
  v66 = *(v45 + 48);
  if (v66(v44, 1, AssociatedTypeWitness) == 1)
  {
    (*(v205 + 8))(v44, v203);
    v67 = sub_21DBFA68C();
    (*(v62 + 8))(v64, v61);
    return v67;
  }

  v187 = v62;
  v179 = v61;
  v190 = v45;
  v69 = *(v45 + 32);
  v216 = v60;
  v219 = v69;
  v220 = v45 + 32;
  v69(v60, v44, AssociatedTypeWitness);
  v70 = v209;
  sub_21DBFBA8C();
  v218 = swift_allocBox();
  (*(v208 + 56))(v71, 1, 1, v70);
  v72 = v41;
  sub_21D778FB8(v215, v41);
  v73 = v199;
  v177 = v64;
  sub_21D7791B0(v199);
  v223 = sub_21DBF9E3C();
  v74 = *(TupleTypeMetadata2 + 48);
  v75 = v203;
  v76 = AssociatedTypeWitness;
  v78 = v205 + 16;
  v77 = *(v205 + 16);
  v79 = v196;
  v77(v196, v72, v203);
  v207 = v78;
  v215 = v77;
  v77(&v79[v74], v73, v75);
  v80 = v76;
  v81 = v66(v79, 1, v76);
  v82 = v65;
  v83 = v81;
  v84 = v74;
  v221 = v66;
  v222 = v82;
  v85 = v66(&v79[v74], 1, v76);
  v178 = v72;
  v86 = v209;
  if (v83 == 1)
  {
    v87 = v73;
    v88 = v187;
    if (v85 == 1)
    {
      v89 = v190;
      v90 = v216;
      (*(v190 + 16))(v206, v216, v80);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v91 = *(v205 + 8);
      v92 = v203;
      v91(v87, v203);
      v91(v178, v92);
      (*(v89 + 8))(v90, v80);
    }

    else
    {
      v105 = v195;
      v219(v195, &v79[v84], v80);
      v106 = v190;
      (*(v190 + 16))(v206, v105, v80);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v107 = *(v106 + 8);
      v107(v105, v80);
      v108 = *(v205 + 8);
      v109 = v203;
      v108(v87, v203);
      v108(v178, v109);
      v107(v216, v80);
    }

    (*(v88 + 8))(v177, v179);
    goto LABEL_37;
  }

  v93 = v187;
  if (v85 == 1)
  {
    v94 = v188;
    v219(v188, v79, v80);
    v95 = v190;
    v96 = (v190 + 16);
    v97 = v191;
    v214 = *(v190 + 16);
    v214(v191, v94, v80);
    (*(v95 + 56))(v97, 0, 1, v80);
    v98 = v194;
    v99 = v97;
    v100 = v203;
    v215(v194, v99, v203);
    if (v221(v98, 1, v80) == 1)
    {
      v101 = *(v205 + 8);
      v102 = v177;
      v103 = v95;
      v104 = v178;
      v101(v191, v100);
    }

    else
    {
      v212 = (v95 + 8);
      v134 = (v184 + 8);
      TupleTypeMetadata2 = v184 + 32;
      v205 = (v184 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v135 = v206;
      v136 = v194;
      v137 = v181;
      v210 = v96;
      v138 = v191;
      v139 = v180;
      do
      {
        v219(v139, v136, v80);
        v214(v135, v139, v80);
        swift_storeEnumTagMultiPayload();
        sub_21DBFA74C();
        sub_21DBFA6FC();
        sub_21D7792AC(v139, v216, v218, v217, v137);
        (*v212)(v139, v80);
        v101 = *v134;
        (*v134)(v138, v100);
        (*TupleTypeMetadata2)(v138, v137, v100);
        v215(v136, v138, v100);
      }

      while (v221(v136, 1, v80) != 1);
      v103 = v190;
      v93 = v187;
      v104 = v178;
      v102 = v177;
      v101(v191, v100);
    }

    v140 = *(v103 + 8);
    v140(v188, v80);
    v101(v199, v100);
    v101(v104, v100);
    v140(v216, v80);
    (*(v93 + 8))(v102, v179);
    v101(v194, v100);
    goto LABEL_37;
  }

  v110 = v192;
  v111 = v219;
  v219(v192, v79, v80);
  v111(v189, &v79[v84], v80);
  v112 = v202;
  sub_21D778CB0(v202);
  v113 = v204;
  sub_21DBF8CBC();
  v194 = *(v208 + 8);
  v208 += 8;
  (v194)(v112, v86);
  v114 = v190;
  v115 = *(v190 + 16);
  v116 = v185;
  v197 = v190 + 16;
  v196 = v115;
  (v115)(v185, v110, v80);
  v117 = *(v114 + 56);
  v188 = (v114 + 56);
  v181 = v117;
  (v117)(v116, 0, 1, v80);
  v118 = *(TupleTypeMetadata2 + 48);
  v119 = v186;
  v120 = v203;
  v121 = v80;
  v122 = v215;
  v215(v186, v116, v203);
  v122(&v119[v118], v113, v120);
  v123 = v121;
  v124 = v121;
  v125 = v221;
  if (v221(v119, 1, v124) == 1)
  {
    v126 = v116;
    v127 = *(v205 + 8);
    v127(v126, v120);
    v128 = v125(&v119[v118], 1, v123) == 1;
    v129 = v119;
    v130 = v214;
    v131 = v123;
    if (!v128)
    {
      v205 = v127;
      v145 = v212;
      v146 = v215;
LABEL_21:
      v147 = v183;
      (*(v183 + 8))(v186, TupleTypeMetadata2);
      v148 = v201;
      goto LABEL_22;
    }

    v127(v129, v120);
    v132 = v179;
    v133 = v127;
LABEL_36:
    v174 = v189;
    (v196)(v206, v189, v131);
    swift_storeEnumTagMultiPayload();
    sub_21DBFA74C();
    sub_21DBFA6FC();
    v133(v204, v120);
    v175 = *(v190 + 8);
    v175(v174, v131);
    v175(v192, v131);
    v133(v199, v120);
    v133(v178, v120);
    v175(v216, v131);
    (*(v187 + 8))(v177, v132);
    goto LABEL_37;
  }

  v141 = v182;
  v122(v182, v119, v120);
  v142 = v123;
  v143 = v125(&v119[v118], 1, v123);
  v146 = v122;
  v144 = v205;
  if (v143 == 1)
  {
    v205 = *(v205 + 8);
    (v205)(v185, v120);
    (*(v190 + 8))(v141, v142);
    v130 = v214;
    v145 = v212;
    v131 = v142;
    goto LABEL_21;
  }

  v169 = v195;
  v219(v195, &v119[v118], v142);
  v170 = sub_21DBFA10C();
  v171 = v141;
  v172 = *(v190 + 8);
  v172(v169, v142);
  v173 = *(v144 + 8);
  v173(v185, v120);
  v172(v171, v142);
  v205 = v173;
  v173(v119, v120);
  v131 = v142;
  if (v170)
  {
    v132 = v179;
    v133 = v205;
    goto LABEL_36;
  }

  v148 = v201;
  v130 = v214;
  v146 = v215;
  v125 = v221;
  v145 = v212;
  v147 = v183;
LABEL_22:
  (v196)(v130, v192, v131);
  (v181)(v130, 0, 1, v131);
  v146(v148, v130, v120);
  if (v125(v148, 1, v131) != 1)
  {
    v207 = v184 + 8;
    v191 = (v190 + 8);
    v186 = (v147 + 8);
    while (1)
    {
      v219(v145, v148, v131);
      v154 = v202;
      sub_21D778CB0(v202);
      v155 = v131;
      v156 = v120;
      v158 = v209;
      v157 = v210;
      sub_21DBF8CBC();
      v159 = v214;
      (v194)(v154, v158);
      (v196)(v206, v145, v155);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v160 = v205;
      (v205)(v159, v156);
      v146(v159, v157, v156);
      v161 = *(TupleTypeMetadata2 + 48);
      v120 = v156;
      v131 = v155;
      v162 = v200;
      v163 = v221;
      v146(v200, v159, v120);
      v146(&v162[v161], v204, v120);
      if (v163(v162, 1, v131) == 1)
      {
        break;
      }

      v166 = v198;
      v146(v198, v162, v120);
      if (v163(&v162[v161], 1, v131) == 1)
      {
        (v205)(v210, v120);
        v151 = *v191;
        (*v191)(v212, v131);
        v151(v166, v131);
        v152 = v214;
LABEL_26:
        (*v186)(v162, TupleTypeMetadata2);
        v146 = v215;
        goto LABEL_27;
      }

      v167 = v195;
      v219(v195, &v162[v161], v131);
      LODWORD(v203) = sub_21DBFA10C();
      v168 = *v191;
      (*v191)(v167, v131);
      v165 = v205;
      (v205)(v210, v120);
      v168(v212, v131);
      v168(v166, v131);
      v165(v162, v120);
      v152 = v214;
      if (v203)
      {
        goto LABEL_33;
      }

LABEL_27:
      v148 = v201;
      v146(v201, v152, v120);
      v153 = v221(v148, 1, v131);
      v130 = v152;
      v145 = v212;
      if (v153 == 1)
      {
        goto LABEL_23;
      }
    }

    v160(v210, v120);
    (*v191)(v212, v131);
    v164 = v163(&v162[v161], 1, v131);
    v152 = v214;
    if (v164 == 1)
    {
      v165 = v160;
      v160(v162, v120);
      v146 = v215;
LABEL_33:
      v165(v152, v120);
      (v181)(v152, 1, 1, v131);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_23:
  v149 = v205;
  (v205)(v130, v120);
  v149(v204, v120);
  v150 = *(v190 + 8);
  v150(v189, v131);
  v150(v192, v131);
  v149(v199, v120);
  v149(v178, v120);
  v150(v216, v131);
  (*(v187 + 8))(v177, v179);
  v149(v148, v120);
LABEL_37:

  return v223;
}

uint64_t sub_21D77718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a1;
  v124 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v108 = sub_21DBFBA8C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v105 = &v99 - v7;
  v114 = TupleTypeMetadata2;
  v113 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v8);
  v102 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v99 - v11;
  MEMORY[0x28223BE20](v12);
  v101 = &v99 - v13;
  v121 = v3;
  v120 = *(v3 - 8);
  MEMORY[0x28223BE20](v14);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v99 - v17;
  MEMORY[0x28223BE20](v18);
  v116 = &v99 - v19;
  MEMORY[0x28223BE20](v20);
  v115 = &v99 - v21;
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  v104 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v103 = &v99 - v26;
  MEMORY[0x28223BE20](v27);
  v110 = &v99 - v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v123 = swift_getAssociatedTypeWitness();
  v30 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v119 = &v99 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v99 - v36;
  inserted = type metadata accessor for TTRICollectionViewTreeBackedDiffableDataSource.InferredInsertLocation();
  v39 = *(inserted - 8);
  MEMORY[0x28223BE20](inserted);
  v41 = &v99 - v40;
  v112 = AssociatedConformanceWitness;
  v42 = type metadata accessor for TTRTreeLocation();
  v125 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v111 = &v99 - v43;
  sub_21D10AFA8(v44, &v126);
  if (v127)
  {
    v118 = v42;
    sub_21D0D0FD0(&v126, &v128);
    (*(v39 + 16))(v41, v122, inserted);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v46 = *(v30 + 32);
    v99 = v22;
    v47 = (v22 + 48);
    if (EnumCaseMultiPayload)
    {
      v122 = v30;
      v48 = v123;
      if (EnumCaseMultiPayload == 1)
      {
        v46(v37, v41, v123);
        v49 = v129;
        v50 = v130;
        v51 = __swift_project_boxed_opaque_existential_1(&v128, v129);
        v52 = v115;
        item_rdar101056925<A, B>(in:withID:)(v51, v37, AssociatedTypeWitness, v49, v50);
        v53 = (*v47)(v52, 1, AssociatedTypeWitness);
        v54 = v118;
        if (v53 == 1)
        {
          (*(v122 + 8))(v37, v48);
          (*(v120 + 8))(v52, v121);
LABEL_15:
          v74 = v124;
          v75 = *(v125 + 56);
          v76 = 1;
LABEL_25:
          v75(v74, v76, 1, v54);
          return __swift_destroy_boxed_opaque_existential_0(&v128);
        }

        v67 = v99;
        v68 = v110;
        (*(v99 + 32))(v110, v52, AssociatedTypeWitness);
        v69 = v129;
        v70 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, v129);
        v71 = v105;
        TTRTreeContentsQueryable.parentAndChildIndex(for:)(v68, v69, v70, v105);
        v72 = v113;
        v73 = v114;
        if ((*(v113 + 48))(v71, 1, v114) == 1)
        {
          (*(v67 + 8))(v68, AssociatedTypeWitness);
          (*(v122 + 8))(v37, v48);
          (*(v107 + 8))(v71, v108);
          goto LABEL_15;
        }

        v91 = v101;
        (*(v72 + 32))(v101, v71, v73);
        v92 = v100;
        (*(v72 + 16))(v100, v91, v73);
        v89 = v111;
        TTRTreeLocation.init(parent:index:)(v92, *&v91[*(v73 + 48)], AssociatedTypeWitness, v111);
        (*(v72 + 8))(v91, v73);
        v90 = v110;
        v93 = v124;
LABEL_24:
        (*(v67 + 8))(v90, AssociatedTypeWitness);
        (*(v122 + 8))(v37, v48);
        (*(v125 + 32))(v93, v89, v54);
        v75 = *(v125 + 56);
        v74 = v93;
        v76 = 0;
        goto LABEL_25;
      }

      v46(v32, v41, v123);
      v63 = v129;
      v64 = v130;
      v65 = __swift_project_boxed_opaque_existential_1(&v128, v129);
      v66 = v117;
      item_rdar101056925<A, B>(in:withID:)(v65, v32, AssociatedTypeWitness, v63, v64);
      if ((*v47)(v66, 1, AssociatedTypeWitness) == 1)
      {
        (*(v122 + 8))(v32, v48);
        (*(v120 + 8))(v66, v121);
        goto LABEL_18;
      }

      v83 = v99;
      v84 = v104;
      (*(v99 + 32))(v104, v66, AssociatedTypeWitness);
      v85 = v129;
      v86 = v130;
      __swift_project_boxed_opaque_existential_1(&v128, v129);
      v119 = *(v83 + 16);
      v87 = v109;
      (v119)(v109, v84, AssociatedTypeWitness);
      v117 = *(v83 + 56);
      (v117)(v87, 0, 1, AssociatedTypeWitness);
      v88 = (*(v86 + 24))(v87, v85, v86);
      (*(v120 + 8))(v87, v121);
      (v119)(v87, v84, AssociatedTypeWitness);
      (v117)(v87, 0, 1, AssociatedTypeWitness);
      v67 = v83;
      v48 = v123;
      v89 = v111;
      TTRTreeLocation.init(parent:index:)(v87, v88, AssociatedTypeWitness, v111);
      v90 = v84;
      v37 = v32;
LABEL_23:
      v93 = v124;
      v54 = v118;
      goto LABEL_24;
    }

    v58 = v119;
    v48 = v123;
    v46(v119, v41, v123);
    v59 = v129;
    v60 = v130;
    v61 = __swift_project_boxed_opaque_existential_1(&v128, v129);
    v62 = v116;
    item_rdar101056925<A, B>(in:withID:)(v61, v58, AssociatedTypeWitness, v59, v60);
    if ((*v47)(v62, 1, AssociatedTypeWitness) == 1)
    {
      (*(v30 + 8))(v58, v48);
      (*(v120 + 8))(v62, v121);
LABEL_18:
      (*(v125 + 56))(v124, 1, 1, v118);
      return __swift_destroy_boxed_opaque_existential_0(&v128);
    }

    v122 = v30;
    v67 = v99;
    v77 = v103;
    (*(v99 + 32))(v103, v62, AssociatedTypeWitness);
    v78 = v129;
    v79 = v130;
    __swift_project_boxed_opaque_existential_1(&v128, v129);
    v80 = v106;
    TTRTreeContentsQueryable.parentAndChildIndex(for:)(v77, v78, v79, v106);
    v81 = v113;
    v82 = v114;
    if ((*(v113 + 48))(v80, 1, v114) == 1)
    {
      (*(v67 + 8))(v77, AssociatedTypeWitness);
      (*(v122 + 8))(v119, v48);
      (*(v107 + 8))(v80, v108);
      goto LABEL_18;
    }

    v94 = v102;
    result = (*(v81 + 32))(v102, v80, v82);
    v95 = *(v82 + 48);
    v96 = *&v94[v95];
    v97 = v96 + 1;
    if (!__OFADD__(v96, 1))
    {
      *&v94[v95] = v97;
      v98 = v109;
      (*(v120 + 16))(v109, v94, v121);
      v89 = v111;
      TTRTreeLocation.init(parent:index:)(v98, v97, AssociatedTypeWitness, v111);
      (*(v81 + 8))(v94, v82);
      v90 = v77;
      v37 = v119;
      goto LABEL_23;
    }

    __break(1u);
  }

  else
  {
    v55 = v124;
    v56 = *(v125 + 56);

    return v56(v55, 1, 1, v42);
  }

  return result;
}

uint64_t TTRICollectionViewTreeBackedDiffableDataSource.siblingsBeforeAndAfter(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v6 = *MEMORY[0x277D85000] & *v3;
  v8 = *(v6 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource);
  v7 = *(v6 + class metadata base offset for TTRICollectionViewTreeBackedDiffableDataSource + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = v8;
  v75 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedTypeWitness();
  v83 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v80 = sub_21DBFBA8C();
  v82 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v65 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v65 - v18;
  MEMORY[0x28223BE20](v19);
  v79 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v65 - v25;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v28);
  v77 = &v65 - v29;
  sub_21D10AFA8(v30, &v84);
  if (!v86)
  {
    v38 = v83;
    goto LABEL_5;
  }

  v71 = a1;
  v72 = a2;
  sub_21D0D0FD0(&v84, v87);
  v32 = v88;
  v31 = v89;
  v33 = __swift_project_boxed_opaque_existential_1(v87, v88);
  v34 = AssociatedConformanceWitness;
  v35 = v33;
  v70 = v34;
  v36 = swift_getAssociatedConformanceWitness();
  *&v84 = v11;
  *(&v84 + 1) = v11;
  v85 = v36;
  v86 = v36;
  v37 = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  TTRNormalizedItemLocationForInsertAt<>.effectiveParentItemID.getter(v37);
  item_rdar101056925<A, B>(in:withID:)(v35, v13, AssociatedTypeWitness, v32, v31);
  v38 = v83;
  (*(v83 + 8))(v13, v11);
  v39 = *(v27 + 48);
  if (v39(v26, 1, AssociatedTypeWitness) == 1)
  {
    (*(v82 + 8))(v26, v80);
    __swift_destroy_boxed_opaque_existential_0(v87);
    a2 = v72;
    a1 = v71;
LABEL_5:
    v40 = *(v38 + 56);
    v40(a1, 1, 1, v11);
    return (v40)(a2, 1, 1, v11);
  }

  v67 = v11;
  v42 = v77;
  (*(v27 + 32))(v77, v26, AssociatedTypeWitness);
  v69 = v39;
  v43 = v88;
  v44 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  (*(v27 + 16))(v23, v42, AssociatedTypeWitness);
  v66 = v27;
  (*(v27 + 56))(v23, 0, 1, AssociatedTypeWitness);
  v65 = (*(v44 + 24))(v23, v43, v44);
  v45 = v82;
  v46 = v80;
  v68 = *(v82 + 8);
  v68(v23, v80);
  v47 = v79;
  v48 = v81;
  sub_21D778760(v81, v87, v42, v79);
  sub_21D778A08(v48, v65, v87, v42, v78);
  v49 = *(v45 + 16);
  v50 = v73;
  v82 = v45 + 16;
  v49(v73, v47, v46);
  if (v69(v50, 1, AssociatedTypeWitness) == 1)
  {
    v68(v50, v46);
    v51 = 1;
    v52 = v71;
    v53 = v66;
  }

  else
  {
    v52 = v71;
    (*(v70 + 24))(AssociatedTypeWitness);
    v46 = v80;
    v53 = v66;
    (*(v66 + 8))(v50, AssociatedTypeWitness);
    v51 = 0;
  }

  v54 = v67;
  v83 = *(v83 + 56);
  (v83)(v52, v51, 1, v67);
  v55 = v76;
  v56 = v78;
  v49(v76, v78, v46);
  if (v69(v55, 1, AssociatedTypeWitness) == 1)
  {
    v57 = v68;
    v68(v56, v46);
    v57(v79, v46);
    (*(v53 + 8))(v77, AssociatedTypeWitness);
    v57(v55, v46);
    v58 = 1;
    v59 = v72;
  }

  else
  {
    v59 = v72;
    v60 = v56;
    v61 = v55;
    v62 = v46;
    (*(v70 + 24))(AssociatedTypeWitness);
    v63 = v68;
    v68(v60, v62);
    v63(v79, v62);
    v64 = *(v53 + 8);
    v64(v77, AssociatedTypeWitness);
    v64(v61, AssociatedTypeWitness);
    v58 = 0;
  }

  (v83)(v59, v58, 1, v54);
  return __swift_destroy_boxed_opaque_existential_0(v87);
}

uint64_t sub_21D778760@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = v12;
  v24 = v12;
  v25 = AssociatedConformanceWitness;
  v26 = AssociatedConformanceWitness;
  result = type metadata accessor for TTRNormalizedItemLocationForInsertAt();
  v15 = *(a1 + *(result + 56));
  v16 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
  }

  else if (v16 < 0)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(a4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v17 = a2[3];
    v18 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v17);
    v19 = *(AssociatedTypeWitness - 8);
    (*(v19 + 16))(v11, v22, AssociatedTypeWitness);
    v22 = v8;
    v20 = *(v19 + 56);
    v20(v11, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v16, v11, v17, v18);
    (*(v9 + 8))(v11, v22);
    return (v20)(a4, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_21D778A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = v13;
  v26 = v13;
  v27 = AssociatedConformanceWitness;
  v28 = AssociatedConformanceWitness;
  v15 = *(a1 + *(type metadata accessor for TTRNormalizedItemLocationForInsertAt() + 56));
  if (v15 >= a2)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v24, 1, 1, AssociatedTypeWitness);
  }

  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(v12, a4, AssociatedTypeWitness);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, AssociatedTypeWitness);
  v20 = v10;
  v21 = v24;
  (*(v17 + 32))(v15, v12, v16, v17);
  (*(v23 + 8))(v12, v20);
  return (v19)(v21, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_21D778CB0@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_21DBF8D0C();
  v3 = sub_21DBFBA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = swift_projectBox();
  (*(v4 + 16))(v9, v10, v3);
  v11 = *(v2 - 8);
  if ((*(v11 + 48))(v9, 1, v2) != 1)
  {
    return (*(v11 + 32))(a1, v9, v2);
  }

  (*(v4 + 8))(v9, v3);
  sub_21DBF8C1C();
  (*(v11 + 16))(v6, a1, v2);
  (*(v11 + 56))(v6, 0, 1, v2);
  swift_beginAccess();
  return (*(v4 + 40))(v10, v6, v3);
}

void (*sub_21D778FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>))(void *, void)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  result = sub_21DBF5CEC();
  if (__OFSUB__(*v10, 1))
  {
    __break(1u);
  }

  else
  {
    --*v10;
    result(v14, 0);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[0] = AssociatedTypeWitness;
    v14[1] = AssociatedTypeWitness;
    v14[2] = AssociatedConformanceWitness;
    v14[3] = AssociatedConformanceWitness;
    v13 = sub_21DBF8B0C();
    NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v13, a2);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21D7791B0@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_21DBF8B0C();
  return NSDiffableDataSourceSnapshot.itemIdentifier(at:)(v2, a1);
}

uint64_t sub_21D7792AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  swift_getAssociatedConformanceWitness();
  v10 = sub_21DBF8D0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = v39 - v21;
  v22 = a1;
  v23 = v43;
  if (sub_21DBFA10C())
  {
    v24 = v46;
    v25 = *(v47 + 56);

    return v25(v24, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    sub_21D778CB0(v13);
    v39[1] = v22;
    sub_21DBF8CBC();
    v27 = *(v11 + 8);
    v27(v13, v10);
    v28 = v47 + 48;
    v29 = (*(v47 + 48))(v9, 1, AssociatedTypeWitness);
    v30 = (v28 - 32);
    v39[0] = v27;
    if (v29 == 1)
    {
      (*(v40 + 8))(v9, v41);
      v31 = v42;
      (*v30)(v42, v23, AssociatedTypeWitness);
      sub_21D778CB0(v16);
    }

    else
    {
      (*(v47 + 32))(v19, v9, AssociatedTypeWitness);
      v31 = v42;
      (*(v47 + 16))(v42, v19, AssociatedTypeWitness);
      sub_21D778CB0(v13);
      sub_21DBF8CDC();
      v27(v13, v10);
      (*(v47 + 8))(v19, AssociatedTypeWitness);
    }

    v32 = sub_21DBF8C7C();
    v33 = v46;
    if (v34)
    {
      (v39[0])(v16, v10);
      (*(v47 + 8))(v31, AssociatedTypeWitness);
      return (*(v47 + 56))(v33, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v35 = v32;
      sub_21DBF8CEC();
      v36 = sub_21DBFA6DC();

      result = (v39[0])(v16, v10);
      if (__OFSUB__(v36, 1))
      {
        __break(1u);
      }

      else if (v35 == v36 - 1)
      {
        v37 = *(v47 + 32);
        v47 += 32;
        v37(v33, v31, AssociatedTypeWitness);
        return (*(v47 + 24))(v33, 0, 1, AssociatedTypeWitness);
      }

      else
      {
        v38 = *(v47 + 8);
        v47 += 8;
        v38(v31, AssociatedTypeWitness);
        return (*(v47 + 48))(v33, 1, 1, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t sub_21D77998C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_21D779DDC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_21D779ED8(void *a1, unsigned __int16 *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  if (v7 > 7 || (v6 + 1) > 0x18 || (*(v5 + 80) & 0x100000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  v11 = *(a2 + v6);
  if (v11 >= 3)
  {
    if (v6 <= 3)
    {
      v12 = *(v5 + 64);
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

      goto LABEL_21;
    }

    if (v12)
    {
      v13 = *a2;
LABEL_21:
      v14 = (v13 | ((v11 - 3) << (8 * v6))) + 3;
      v15 = v13 + 3;
      if (v6 >= 4)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
  if (v11 == 2)
  {
    *(a1 + v6) = 2;
  }

  else
  {
    *(a1 + v6) = v11 == 1;
  }

  return a1;
}

uint64_t sub_21D77A0B4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(a1, AssociatedTypeWitness);
}

uint64_t sub_21D77A188(uint64_t a1, unsigned __int8 *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2;
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = v5[v6];
  if (v7 >= 3)
  {
    if (v6 <= 3)
    {
      v8 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *v5;
    }

    else if (v8 == 2)
    {
      v9 = *v5;
    }

    else if (v8 == 3)
    {
      v9 = *v5 | (v5[2] << 16);
    }

    else
    {
      v9 = *v5;
    }

    v10 = (v9 | ((v7 - 3) << (8 * v6))) + 3;
    v11 = v9 + 3;
    if (v6 >= 4)
    {
      LOBYTE(v7) = v11;
    }

    else
    {
      LOBYTE(v7) = v10;
    }
  }

LABEL_16:
  (*(*(AssociatedTypeWitness - 8) + 16))(a1);
  *(a1 + v6) = v7;
  return a1;
}

unsigned __int16 *sub_21D77A300(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1 != a2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    (*(v5 + 8))(a1, AssociatedTypeWitness);
    v7 = *(a2 + v6);
    if (v7 >= 3)
    {
      if (v6 <= 3)
      {
        v8 = v6;
      }

      else
      {
        v8 = 4;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v9 = *a2;
        }

        else if (v8 == 3)
        {
          v9 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v9 = *a2;
        }

        goto LABEL_14;
      }

      if (v8)
      {
        v9 = *a2;
LABEL_14:
        v10 = (v9 | ((v7 - 3) << (8 * v6))) + 3;
        v11 = v9 + 3;
        if (v6 >= 4)
        {
          LOBYTE(v7) = v11;
        }

        else
        {
          LOBYTE(v7) = v10;
        }
      }
    }

    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v6) = v7;
  }

  return a1;
}

uint64_t sub_21D77A4A0(uint64_t a1, unsigned __int8 *a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = a2;
  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  v7 = v5[v6];
  if (v7 >= 3)
  {
    if (v6 <= 3)
    {
      v8 = *(*(AssociatedTypeWitness - 8) + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *v5;
    }

    else if (v8 == 2)
    {
      v9 = *v5;
    }

    else if (v8 == 3)
    {
      v9 = *v5 | (v5[2] << 16);
    }

    else
    {
      v9 = *v5;
    }

    v10 = (v9 | ((v7 - 3) << (8 * v6))) + 3;
    v11 = v9 + 3;
    if (v6 >= 4)
    {
      LOBYTE(v7) = v11;
    }

    else
    {
      LOBYTE(v7) = v10;
    }
  }

LABEL_16:
  (*(*(AssociatedTypeWitness - 8) + 32))(a1);
  *(a1 + v6) = v7;
  return a1;
}

unsigned __int16 *sub_21D77A618(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1 != a2)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(AssociatedTypeWitness - 8);
    v6 = *(v5 + 64);
    (*(v5 + 8))(a1, AssociatedTypeWitness);
    v7 = *(a2 + v6);
    if (v7 >= 3)
    {
      if (v6 <= 3)
      {
        v8 = v6;
      }

      else
      {
        v8 = 4;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v9 = *a2;
        }

        else if (v8 == 3)
        {
          v9 = *a2 | (*(a2 + 2) << 16);
        }

        else
        {
          v9 = *a2;
        }

        goto LABEL_14;
      }

      if (v8)
      {
        v9 = *a2;
LABEL_14:
        v10 = (v9 | ((v7 - 3) << (8 * v6))) + 3;
        v11 = v9 + 3;
        if (v6 >= 4)
        {
          LOBYTE(v7) = v11;
        }

        else
        {
          LOBYTE(v7) = v10;
        }
      }
    }

    (*(v5 + 32))(a1, a2, AssociatedTypeWitness);
    *(a1 + v6) = v7;
  }

  return a1;
}

uint64_t sub_21D77A7B8(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v9 < 2)
    {
LABEL_23:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_23;
  }

LABEL_12:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_21D77A958(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v7 = v6 + 1;
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 253) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_37:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v6] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_22;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_21D77AB78(unsigned __int8 *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  result = a1[v2];
  if (result >= 3)
  {
    if (v2 <= 3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 4;
    }

    if (v4 <= 1)
    {
      if (!v4)
      {
        return result;
      }

      v5 = *a1;
    }

    else if (v4 == 2)
    {
      v5 = *a1;
    }

    else if (v4 == 3)
    {
      v5 = *a1 | (a1[2] << 16);
    }

    else
    {
      v5 = *a1;
    }

    v6 = (v5 | ((result - 3) << (8 * v2))) + 3;
    v7 = v5 + 3;
    if (v2 >= 4)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

void sub_21D77AC98(_BYTE *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (a2 > 2)
  {
    v5 = a2 - 3;
    if (v4 < 4)
    {
      a1[v4] = (v5 >> (8 * v4)) + 3;
      if (v4)
      {
        v6 = v5 & ~(-1 << (8 * v4));
        bzero(a1, v4);
        if (v4 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v4 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v5;
        }
      }
    }

    else
    {
      a1[v4] = 3;
      bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    a1[v4] = a2;
  }
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoContext:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_21D1B795C;

  return sub_21D77B87C(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = 0;
  if (a4)
  {
    v17 = type metadata accessor for TTRBasicUndoContext();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    v18 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v26[1] = 0;
    v26[2] = 0;
  }

  v26[0] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v19 = *(a11 + 8);
  v20 = a4;
  v19(a1, a2, a3, v26, a5, a6, a7, a8, a10, a12, a9, a11);
  return sub_21D311700(v26);
}

uint64_t sub_21D77B068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  (*(v15 + 16))(&v22 - v17, a1, v14, v16);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  static TTROneshotEditing.oneshotEdit(_:store:listIDsForOrderMutationPreparation:undoContext:editBlock:willSave:completionBlock:)(a2, a3, 0, v23, v24, v25, 0, 0, sub_21D22C45C, v20, a8, a10);
}

uint64_t sub_21D77B1F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0);
    return sub_21DBFA7DC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DA0);
    return sub_21DBFA7EC();
  }
}

uint64_t TTRInteractorEditsCommitting.oneshotEdit<A>(using:items:store:undoManager:editBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v10;
  v8[15] = v11;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[7] = a2;
  return MEMORY[0x2822009F8](sub_21D77B2A0, 0, 0);
}

void sub_21D77B2A0()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = type metadata accessor for TTRBasicUndoContext();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v0[2] = v3;
  v0[5] = v2;
  v0[6] = v4;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_21D77B3B4;

  JUMPOUT(0x21D77B87CLL);
}

uint64_t sub_21D77B3B4()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D77B4F0, 0, 0);
  }

  else
  {
    sub_21D311700(v2 + 16);
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21D77B4F0()
{
  sub_21D311700(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void TTRInteractorAsyncEditsCommitter.commit(saveRequest:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CE468();
  v6 = sub_21DBFB12C();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_21D77BB54;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D11E5E4;
  v9[3] = &block_descriptor_88;
  v8 = _Block_copy(v9);

  [a1 saveWithQueue:v6 completion:v8];
  _Block_release(v8);
}

void sub_21D77B664(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_21D77B720(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CE468();
  v6 = sub_21DBFB12C();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_21D77BBFC;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D11E5E4;
  v9[3] = &block_descriptor_13_3;
  v8 = _Block_copy(v9);

  [a1 saveWithQueue:v6 completion:v8];
  _Block_release(v8);
}

uint64_t sub_21D77B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_21D77B8B4, 0, 0);
}

uint64_t sub_21D77B8B4()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 56);
  *(v2 + 32) = v3;
  *(v2 + 48) = v4;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_21D77B9BC;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000035, 0x800000021DC46780, sub_21D77BBC0, v2, v7);
}

uint64_t sub_21D77B9BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_21D77BAF0;
  }

  else
  {

    v2 = sub_21D77BAD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D77BAF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D77BC00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  v26 = *(a1 + 16);
  sub_21D18F47C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  result = sub_21DBFBCCC();
  v6 = v26;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 16 * result);
    v12 = *(a1 + 36);
    v14 = *(v27 + 16);
    v13 = *(v27 + 24);
    if (v14 >= v13 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      v23 = *(*(a1 + 48) + 16 * result);
      sub_21D18F47C((v13 > 1), v14 + 1, 1);
      v11 = v23;
      v6 = v26;
      v12 = v24;
      result = v25;
    }

    *(v27 + 16) = v14 + 1;
    v15 = v27 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_21D15746C(result, v12, 0);
          v6 = v26;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_21D15746C(result, v12, 0);
      v6 = v26;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
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
  return result;
}

void *sub_21D77BE2C(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v6 = *v4;
    v7 = v4[1];

    return v7;
  }

  else
  {
    sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
    return 0;
  }
}

void *sub_21D77BF18(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21D106DF8(v4 + *(v9 + 48), type metadata accessor for TTRRecurrenceRuleModel);
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return MEMORY[0x277D84F90];
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v6 = *v4;
      v7 = v4[1];

      return v7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return MEMORY[0x277D84F90];
}

uint64_t sub_21D77C0B0(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D105354(a1, v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CF38);
      sub_21D106DF8(&v4[*(v9 + 48)], type metadata accessor for TTRRecurrenceRuleModel);
      v10 = sub_21DBF509C();
      (*(*(v10 - 8) + 8))(v4, v10);
      return 0;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8 && EnumCaseMultiPayload != 9)
    {
      v6 = *v4;
      v7 = v4[17];

      return v7;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0;
  }

  sub_21D106DF8(v4, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
  return 0;
}

uint64_t sub_21D77C28C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F258);
  v1 = __swift_project_value_buffer(v0, qword_280D0F258);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellTitleEditingState.hasUncommittedEdits.getter(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 32);

  return v4(a1, a2);
}

uint64_t TTRReminderCellTitleEditingState.isEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3, v12);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
  sub_21D106DF8(v14, type metadata accessor for TTRRemindersListViewModel.Item);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v7);
  v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v10, v7);
  sub_21D106DF8(v7, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106DF8(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
  return v15 & 1;
}

uint64_t TTRReminderCellTitleEditingPresenter.ParentType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRReminderCellTitleEditingPresenter.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TTRReminderCellTitleEditingPresenter.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D2424CC;
}

uint64_t TTRReminderCellTitleEditingPresenter.presenterManager.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellTitleEditingPresenter.presenterManager.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t TTRReminderCellTitleEditingPresenter.editingState.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  a1[3] = _s15RemindersUICore12EditingStateVMa_1(0);
  a1[4] = &off_282ED1578;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_21D105354(v1 + v3, boxed_opaque_existential_0, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t TTRReminderCellTitleEditingPresenter.isMarkedCommittableForPencil.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  return *(v1 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 36));
}

uint64_t TTRReminderCellTitleEditingPresenter.augmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v1 + v6, v5, _s15RemindersUICore12EditingStateVMa_1);
  v7 = &v5[*(v3 + 28)];
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v7 = &v5[*(v3 + 32)];
    v9 = *v7;
    v8 = v7[1];
  }

  v10 = v7[2];
  v11 = v7[3];
  sub_21D24A7C4(v9, v8);
  *a1 = v9;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v11;
  return sub_21D106DF8(v5, _s15RemindersUICore12EditingStateVMa_1);
}

uint64_t sub_21D77CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v19 = a11(a1, a2, a4, a5, a6, a7, a8, a9, a10, v11, ObjectType, a3);

  return v19;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestEndEditing()()
{
  v1 = v0;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F258);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v3 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 20)) == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 16))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestAbortEditing()()
{
  v1 = v0;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F258);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  if (*(v3 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 20)) == 1)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      *(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 1;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 16))(v1, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestHandleBeginEditingTitle(temporarilySuppressAutoCompleteReminder:)(Swift::Bool temporarilySuppressAutoCompleteReminder)
{
  v2 = v1;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v6 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v8 = sub_21D77D058();
  if (v8)
  {
    v10 = v8;
    v11 = v9;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 40))(ObjectType, v11);
    v14 = [v13 title];

    if (!v14)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    v16 = swift_getObjectType();
    (*(v15 + 8))(v14, v10, v11, v16, v15);
    sub_21D77D430(v14, temporarilySuppressAutoCompleteReminder);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D77D058()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v1);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5 + 16;
  v7 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v8)
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v9);
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *v7 = v11;
  v7[1] = v13;
  swift_unknownObjectRelease();
  v8 = *v7;
  if (*v7)
  {
LABEL_6:
    v14 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v0 + v14, v6, _s15RemindersUICore12EditingStateVMa_1);
    v15 = v1[5];
    if (v6[v15] == 1)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v6[v15] = 1;
      v16 = v1[6];
      v17 = *&v6[v16];
      swift_unknownObjectRetain();

      *&v6[v16] = 0;
      v6[v1[10]] = 0;
      v6[v1[9]] = 0;
      v18 = &v6[v1[7]];
      sub_21D24A814(*v18, *(v18 + 1));
      *v18 = 0u;
      *(v18 + 1) = 0u;
      v19 = &v6[v1[8]];
      sub_21D24A814(*v19, *(v19 + 1));
      *v19 = 0u;
      *(v19 + 1) = 0u;
    }

    sub_21D105354(v0 + v14, v3, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v6, v0 + v14);
    swift_endAccess();
    sub_21D7837F4(v3);
    sub_21D106DF8(v3, _s15RemindersUICore12EditingStateVMa_1);
    sub_21D106DF8(v6, _s15RemindersUICore12EditingStateVMa_1);
  }

  else
  {
    if (qword_280D17EE8 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_280D0F258);

    v22 = sub_21DBF84AC();
    v23 = sub_21DBFAEBC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      v26 = sub_21D25D250();
      v28 = sub_21D0CDFB4(v26, v27, v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_21D0C9000, v22, v23, "TTRReminderCellTitleEditingPresenter: Could not acquire editing session to begin editing. {item: %s}", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x223D46520](v25, -1, -1);
      MEMORY[0x223D46520](v24, -1, -1);
    }

    return 0;
  }

  return v8;
}

void sub_21D77D430(void *a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v8 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  v14 = sub_21DBF56BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - v17;
  MEMORY[0x28223BE20](v19);
  if (*(&v2->isa + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    v75 = v23;
    v76 = v22;
    v79 = a2;
    v80 = v7;
    v24 = *(&v2[1].isa + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
    v69 = &v68 - v20;
    v81 = v2;
    v71 = a1;
    v25 = v21;
    ObjectType = swift_getObjectType();
    v72 = v10;
    v70 = v8;
    v27 = *(v24 + 8);
    swift_unknownObjectRetain();
    v27(ObjectType, v24);
    swift_unknownObjectRelease();
    v77 = v15;
    v28 = *(v15 + 32);
    v29 = v69;
    v78 = v25;
    v73 = v28;
    v74 = v15 + 32;
    v28(v69, v18, v25);
    v30 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
    swift_beginAccess();
    sub_21D105354(v81 + v30, v13, _s15RemindersUICore12EditingStateVMa_1);
    v31 = v71;
    v32 = *(v70 + 24);
    v33 = *&v13[v32];
    v34 = v71;

    *&v13[v32] = v31;
    v35 = v81;
    v36 = v72;
    sub_21D105354(v81 + v30, v72, _s15RemindersUICore12EditingStateVMa_1);
    swift_beginAccess();
    sub_21D78B068(v13, v35 + v30);
    swift_endAccess();
    sub_21D7837F4(v36);
    sub_21D106DF8(v36, _s15RemindersUICore12EditingStateVMa_1);
    sub_21D106DF8(v13, _s15RemindersUICore12EditingStateVMa_1);
    v37 = [v34 string];
    v38 = sub_21DBFA16C();
    v71 = v39;
    v72 = v38;

    swift_beginAccess();
    v40 = v29;
    if (!swift_unknownObjectWeakLoadStrong() || (isa = v35[3].isa, v42 = swift_getObjectType(), v43 = (*(isa + 1))(v42, isa), LOBYTE(isa) = v44, swift_unknownObjectRelease(), (isa & 1) != 0))
    {
      v43 = 0x3FF0000000000000;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v70 = v43;
    if (Strong)
    {
      v46 = v35[5].isa;
      v47 = swift_getObjectType();
      (*(v46 + 1))(v47, v46);
      v49 = v48;
      swift_unknownObjectRelease();
      if (v49)
      {
        v50 = objc_opt_self();
        v51 = sub_21DBFA12C();

        v52 = [v50 baseLanguageFromLanguage_];

        v49 = sub_21DBFA16C();
        v54 = v53;

LABEL_17:
        v59 = sub_21DBFA89C();
        v60 = v80;
        (*(*(v59 - 8) + 56))(v80, 1, 1, v59);
        v61 = v76;
        v62 = v77;
        v63 = v40;
        v64 = v78;
        (*(v77 + 16))(v76, v40, v78);
        v65 = (*(v62 + 80) + 88) & ~*(v62 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = 0;
        *(v66 + 24) = 0;
        *(v66 + 32) = v35;
        *(v66 + 40) = v79 & 1;
        v67 = v71;
        *(v66 + 48) = v72;
        *(v66 + 56) = v67;
        *(v66 + 64) = v49;
        *(v66 + 72) = v54;
        *(v66 + 80) = v70;
        v73(v66 + v65, v61, v64);

        sub_21D3BF99C(0, 0, v60, &unk_21DC27598, v66);

        (*(v62 + 8))(v63, v64);
        return;
      }
    }

    else
    {
      v49 = 0;
    }

    v54 = 0;
    goto LABEL_17;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v55 = sub_21DBF84BC();
  __swift_project_value_buffer(v55, qword_280D0F258);
  v81 = sub_21DBF84AC();
  v56 = sub_21DBFAEBC();
  if (os_log_type_enabled(v81, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_21D0C9000, v81, v56, "Not going to harvest title attributes; missing editingSessionID", v57, 2u);
    MEMORY[0x223D46520](v57, -1, -1);
  }

  v58 = v81;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleEditingTextChange:detail:hasMarkedText:)(NSAttributedString handleTitleEditingTextChange, RemindersUICore::TTRReminderTextChangeDetail_optional *detail, Swift::Bool hasMarkedText)
{
  v4 = v3;
  v69 = hasMarkedText;
  isa = handleTitleEditingTextChange.super.isa;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v6);
  v68 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v60 - v11;
  location = detail->value.originalRangeReplaced.location;
  v73 = detail->value.originalText.super.isa;
  v71 = location;
  length = detail->value.originalRangeReplaced.length;
  replacementText = detail->value.replacementText;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  v15 = __swift_project_value_buffer(v14, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v17 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  v64 = v15;
  sub_21DAEACDC();

  v19 = v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v20 = v73;
  if ((*(v19 + *(v8 + 40)) & 1) == 0)
  {
    if (v73)
    {
      v63 = v6;
      sub_21D0D8CF0(0, &qword_280D177E0);
      v65 = length;
      sub_21D300ED0(v20);
      v21 = v20;
      v22 = v20;
      v23 = sub_21DBFB63C();

      if (v23)
      {
        v24 = v65;
        sub_21D300F14(v21);
        length = v24;
      }

      else
      {
        v28 = v67;
        sub_21D105354(v19, v67, _s15RemindersUICore12EditingStateVMa_1);
        *(v28 + *(v8 + 40)) = 1;
        v29 = v66;
        sub_21D105354(v19, v66, _s15RemindersUICore12EditingStateVMa_1);
        swift_beginAccess();
        sub_21D78B068(v28, v19);
        swift_endAccess();
        sub_21D7837F4(v29);
        v30 = v65;
        sub_21D300F14(v21);
        sub_21D106DF8(v29, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v28, _s15RemindersUICore12EditingStateVMa_1);
        length = v30;
      }

      v20 = v21;
    }

    else
    {
      v25 = v67;
      sub_21D105354(v19, v67, _s15RemindersUICore12EditingStateVMa_1);
      *(v25 + *(v8 + 40)) = 1;
      v26 = v66;
      sub_21D105354(v19, v66, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v25, v19);
      swift_endAccess();
      sub_21D7837F4(v26);
      v27 = v26;
      v20 = v73;
      sub_21D106DF8(v27, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v25, _s15RemindersUICore12EditingStateVMa_1);
    }
  }

  if (*(v19 + *(v8 + 40)) == 1)
  {
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v68);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_17;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v34 = *(v32 + 72);
        v35 = v32;
        v20 = v73;
        v34(v4, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v35);
        swift_unknownObjectRelease();
      }
    }

    sub_21D106DF8(v68, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
  }

LABEL_17:
  v36 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v36)
  {
    if (v20)
    {
      v64 = v8;
      v37 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
      v38 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
      v39 = swift_getObjectType();
      v74 = v20;
      v75 = v71;
      v76 = length;
      v77 = replacementText;
      v40 = length;
      v41 = *(v38 + 16);
      v65 = v40;
      sub_21D300ED0(v20);
      swift_unknownObjectRetain();
      v41(v78, isa, &v74, v69, v36, v37, v39, v38);
      v42 = v78[0];
      if (v78[0])
      {
        v68 = v4;
        v43 = v78[8];
        v63 = v78[7];
        v44 = v78[5];
        v62 = v78[6];
        v45 = v78[4];
        v74 = v78[1];
        v75 = v78[2];
        v76 = v78[3];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D77E434(v42, &v74, v43);

        v61 = _s15RemindersUICore12EditingStateVMa_1;
        v46 = v67;
        sub_21D105354(v19, v67, _s15RemindersUICore12EditingStateVMa_1);
        v47 = (v46 + *(v64 + 28));
        v48 = v47[1];
        v64 = *v47;
        v49 = v45;
        v50 = v45;
        v51 = v44;
        v52 = v44;
        v53 = v62;
        v54 = v63;
        sub_21D24A7C4(v50, v52);
        sub_21D24A814(v64, v48);
        *v47 = v49;
        v47[1] = v51;
        v47[2] = v53;
        v47[3] = v54;
        v55 = v66;
        sub_21D105354(v19, v66, v61);
        swift_beginAccess();
        v56 = v67;
        sub_21D78B068(v67, v19);
        swift_endAccess();
        sub_21D7837F4(v55);
        sub_21D300F14(v73);
        sub_21D0CF7E0(v78, &qword_27CE5A628);
        sub_21D106DF8(v55, _s15RemindersUICore12EditingStateVMa_1);
        sub_21D106DF8(v56, _s15RemindersUICore12EditingStateVMa_1);
      }

      else
      {
        sub_21D300F14(v73);
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (!v69)
    {
      sub_21D77D430(isa, 0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v57 = sub_21DBF84AC();
    v58 = sub_21DBFAEBC();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21D0C9000, v57, v58, "Missing editingSession for title editing", v59, 2u);
      MEMORY[0x223D46520](v59, -1, -1);
    }
  }
}

void sub_21D77E434(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = v8;
    v19 = v7;
    v20 = v6;
    v21 = a3;
    v9 = *(v3 + 24);
    v10 = *(a1 + 16);
    if (v10)
    {
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      v12 = (a1 + 56);
      do
      {
        v13 = *(v12 - 3);
        v14 = *(v12 - 2);
        v16 = *(v12 - 1);
        v15 = *v12;
        sub_21DBF8E0C();
        v11(v3, &protocol witness table for TTRReminderCellTitleEditingPresenter, v13, v14, v16, v15, ObjectType, v9);

        v12 += 4;
        --v10;
      }

      while (v10);
    }

    v6 = v20;
    if (*(v20 + 16))
    {
      v17 = swift_getObjectType();
      v23[0] = v20;
      v23[1] = v19;
      v23[2] = v18;
      (*(v9 + 40))(v3, &protocol witness table for TTRReminderCellTitleEditingPresenter, v23, v17, v9);
    }

    swift_unknownObjectRelease();
    a3 = v21;
  }

  if (*(a1 + 16) || *(v6 + 16))
  {
    sub_21D77D430(a3, 0);
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleBackspace:)(NSAttributedString handleTitleBackspace)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v8 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode))
    {
      return;
    }

    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v11 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
        swift_beginAccess();
        if ((*(v11 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 40)) & 1) == 0)
        {
          v12 = handleTitleBackspace.super.isa;
          v19 = NSAttributedString.validatedReminderTitle()();
          isa = v19.title.super.isa;
          isValid = v19.isValid;

          if (!isValid)
          {
            v18 = 1;
            sub_21D78B0CC(&v18, 1);
          }
        }
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_14:
      swift_unknownObjectRelease();
      sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEBC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v15, v16, "Missing editingSession for title editing", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleReturn:setNeedsDisplay:)(NSAttributedString handleTitleReturn, Swift::Bool setNeedsDisplay)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v11 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v12 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v16 = handleTitleReturn.super.isa;
    v35 = NSAttributedString.validatedReminderTitle()();
    isa = v35.title.super.isa;
    isValid = v35.isValid;

    if (!isValid && *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) != 1)
    {

      v34[0] = 1;
      sub_21D78B0CC(v34, 1);
      swift_unknownObjectRelease();
      return;
    }

    sub_21D77ED14(isa, v14, v15, setNeedsDisplay);
    ObjectType = swift_getObjectType();
    v20 = (*(v15 + 128))(v34, ObjectType, v15);
    v21 = LOBYTE(v34[0]);
    sub_21D77F188();
    if (*(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) == 1 || v21)
    {
      sub_21D77F2A8();
      sub_21D1578FC(v20);
LABEL_9:
      swift_unknownObjectRelease();

      return;
    }

    if (!v20)
    {
      goto LABEL_9;
    }

    v25 = v20;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v26 = *(v3 + 40);
      v27 = swift_getObjectType();
      v28 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey);
      v31[0] = 0;
      v31[1] = 0;
      v32 = 1;
      v33 = v28;
      (*(v26 + 48))(v3 + v11, v25, v31, v27, v26);
      swift_unknownObjectRelease();
      sub_21D0D0E88(v31[0]);
      v29 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      if ((*(*(v29 - 8) + 48))(v8, 1, v29) != 1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = type metadata accessor for TTRRemindersListViewModel.Item(0);
      (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    }

    sub_21D77F2A8();
LABEL_20:
    sub_21D1578FC(v20);

    swift_unknownObjectRelease();
    sub_21D0CF7E0(v8, &unk_27CE5CD80);
    return;
  }

  v22 = sub_21DBF84AC();
  v23 = sub_21DBFAEBC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21D0C9000, v22, v23, "Missing editingSession for title editing", v24, 2u);
    MEMORY[0x223D46520](v24, -1, -1);
  }
}

void sub_21D77ED14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = *(v4 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A648);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  v26 = swift_getObjectType();
  (*(a3 + 32))(aBlock, v26, a3);
  v10 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_1(aBlock, v31);
  *(v9 + 32) = (*(v11 + 7))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  aBlock[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A650);
  sub_21D0D8CF0(0, &qword_280D177E0);
  sub_21D0D0F1C(&qword_280D178B8, &qword_27CE5A650);
  v12 = sub_21DBFA41C();

  v13 = (*(v8 + 48))(a1, a2, a3, v12, ObjectType, v8);

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v4 + 40);
    v15 = swift_getObjectType();
    v16 = (*(v14 + 8))(v15, v14);
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v20 = sub_21DBFA12C();

  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = v13;
  v21[4] = v16;
  v21[5] = v18;
  v21[6] = a2;
  v21[7] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21D79284C;
  *(v22 + 24) = v21;
  v32 = sub_21D0E622C;
  v33 = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  v31 = &block_descriptor_25_2;
  v23 = _Block_copy(aBlock);

  v24 = v13;
  swift_unknownObjectRetain();

  [v19 withActionName:v20 block:{v23, 0x800000021DC502D0}];

  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (a4)
    {
      aBlock[0] = 1;
      (*(a3 + 104))(aBlock, v26, a3);
    }
  }
}

void sub_21D77F188()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType);
  if (v1 > 7)
  {
    goto LABEL_7;
  }

  if (((1 << v1) & 0xEC) != 0)
  {
    goto LABEL_9;
  }

  if (v1 != 1)
  {
    if (v1 == 4)
    {
      v2 = 1.0;
      v3 = -2.0;
      goto LABEL_8;
    }

LABEL_7:
    v2 = 1.0;
    v3 = -1.0;
    goto LABEL_8;
  }

  v2 = 0.5;
  v3 = -0.5;
LABEL_8:
  sub_21D783C30(v2, v3);
LABEL_9:
  v4 = (v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v5)
  {
    v6 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v0 + 40);
      ObjectType = swift_getObjectType();
      (*(v7 + 24))(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, v5, v6, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_21D77F2A8()
{
  v1 = _s15RemindersUICore12EditingStateVMa_1(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  v8 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v9 = *(v8 + v2[7]);
  sub_21D105354(v8, v7, _s15RemindersUICore12EditingStateVMa_1);
  v7[v2[7]] = 0;
  v10 = v2[8];

  *&v7[v10] = 0;
  v7[v2[12]] = 0;
  v7[v2[11]] = 0;
  v11 = &v7[v2[9]];
  sub_21D24A814(*v11, *(v11 + 1));
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &v7[v2[10]];
  sub_21D24A814(*v12, *(v12 + 1));
  *v12 = 0u;
  *(v12 + 1) = 0u;
  sub_21D105354(v8, v4, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v7, v8);
  swift_endAccess();
  sub_21D7837F4(v4);
  sub_21D106DF8(v4, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
  if (v9 == 1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 16))(v0, &protocol witness table for TTRReminderCellTitleEditingPresenter, ObjectType, v13);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t TTRReminderCellTitleEditingPresenter.request(handlePaste:)(unint64_t *a1)
{
  v2 = v1;
  v72 = sub_21DBF4CAC();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  LODWORD(v8) = *(a1 + 16);
  if (qword_280D17EE8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v9 = sub_21DBF84BC();
  __swift_project_value_buffer(v9, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  strcpy((inited + 32), "pasteboardItem");
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 47) = -18;
  v76 = v7;
  v77 = v6;
  LODWORD(v71) = v8;
  v78 = v8;
  v11 = TTRManagedPasteboardItem.description.getter();
  v12 = MEMORY[0x277D837D0];
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 72) = v12;
  *(inited + 80) = 1835365481;
  *(inited + 88) = 0xE400000000000000;
  v65 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item;
  v14 = sub_21D25D250();
  *(inited + 120) = v12;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  sub_21D17716C(inited);
  v73 = v2;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
  swift_arrayDestroy();
  sub_21DAEACDC();
  v16 = v73;

  v17 = *(v16 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (!v17)
  {
    return 0;
  }

  v18 = *(v16 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
  v19 = v16 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v20 = *(v19 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 24));
  v69 = v17;
  v64 = v18;
  if (v20)
  {
    swift_unknownObjectRetain();
    v21 = v20;
  }

  else
  {
    v22 = objc_allocWithZone(MEMORY[0x277CCA898]);
    swift_unknownObjectRetain();
    v21 = [v22 init];
  }

  v76 = v7;
  v77 = v6;
  v78 = v71;
  v23 = v20;
  v68 = v21;
  v24 = [v21 string];
  v25 = sub_21DBFA16C();
  v27 = v26;

  v28 = sub_21D988674(v25, v27);

  v29 = *(v28 + 16);
  if (v29)
  {
    v7 = 0;
    v71 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode;
    v8 = v70 + 8;
    v30 = v28 + 40;
    v66 = v29 - 1;
    v70 = MEMORY[0x277D84F90];
    v67 = v28 + 40;
    do
    {
      v6 = (v30 + 16 * v7);
      v2 = v7;
      while (1)
      {
        if (v2 >= *(v28 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = v2 + 1;
        v31 = *v6;
        v76 = *(v6 - 1);
        v77 = v31;
        sub_21DBF8E0C();
        sub_21DBF4C5C();
        sub_21D176F0C();
        v32 = sub_21DBFBB3C();
        v34 = v33;
        (*v8)(v5, v72);

        v35 = HIBYTE(v34) & 0xF;
        if ((v34 & 0x2000000000000000) == 0)
        {
          v35 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (v35 || (*(v73 + v71) & 1) != 0)
        {
          break;
        }

        v6 += 2;
        ++v2;
        if (v29 == v7)
        {
          goto LABEL_24;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v70;
      }

      else
      {
        v36 = sub_21D210A84(0, *(v70 + 2) + 1, 1, v70);
      }

      v38 = *(v36 + 2);
      v37 = *(v36 + 3);
      if (v38 >= v37 >> 1)
      {
        v36 = sub_21D210A84((v37 > 1), v38 + 1, 1, v36);
      }

      *(v36 + 2) = v38 + 1;
      v70 = v36;
      v39 = &v36[16 * v38];
      *(v39 + 4) = v32;
      *(v39 + 5) = v34;
      v30 = v67;
    }

    while (v66 != v2);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v40 = *(v70 + 2);
  if (v40 <= 1)
  {

    swift_unknownObjectRelease();

    return 0;
  }

  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81 = v70;
  v42 = v69;
  if (!isUniquelyReferenced_nonNull_native || v40 - 1 > *(v70 + 3) >> 1)
  {
    v70 = sub_21D210A84(isUniquelyReferenced_nonNull_native, v40, 1, v70);
    v81 = v70;
  }

  v43 = v73;
  v44 = v64;
  sub_21D5067F4(0, 1, 0);
  v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v46 = sub_21DBFA12C();

  v47 = [v45 initWithString_];

  sub_21D77ED14(v47, v42, v44, 1);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48 = *(v43 + 24);
    ObjectType = swift_getObjectType();
    (*(v44 + 32))(&v76, ObjectType, v44);
    v50 = v79;
    v51 = v80;
    __swift_project_boxed_opaque_existential_1(&v76, v79);
    v52 = (*(v51 + 40))(v50, v51);
    if (!v52)
    {
      v52 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v53 = v52;
    v54 = swift_getObjectType();
    __swift_destroy_boxed_opaque_existential_0(&v76);
    (*(v48 + 32))(v43, &protocol witness table for TTRReminderCellTitleEditingPresenter, v53, 0, v54, v48);

    swift_unknownObjectRelease();
  }

  v55 = swift_getObjectType();
  v56 = (*(v44 + 128))(&v76, v55, v44);
  v57 = v76;
  sub_21D77F188();
  if (!v56)
  {

    if (!v57)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v58 = v56;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v59 = *(v43 + 40);
    v60 = swift_getObjectType();
    v74[1] = 0;
    v74[0] = 0;
    v75 = 1;
    v61 = (*(v59 + 56))(v70, v43 + v65, v58, v74, v60, v59);
    swift_unknownObjectRelease();
    sub_21D0D0E88(v74[0]);
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v63 = *(v61 + 16);

  if (!v63)
  {
    sub_21D77F2A8();
    sub_21D1578FC(v56);
    swift_unknownObjectRelease();

    return 1;
  }

  if (v57)
  {
LABEL_42:
    sub_21D77F2A8();
  }

LABEL_43:
  sub_21D1578FC(v56);

  swift_unknownObjectRelease();
  return 1;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleTitleEscape:)(NSAttributedString handleTitleEscape)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
  {
    swift_unknownObjectRetain();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 2)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      }
    }

    else
    {
      sub_21D106DF8(v5, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
      if ((*(v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) & 1) == 0)
      {
        v7 = v1 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
        swift_beginAccess();
        if ((*(v7 + *(_s15RemindersUICore12EditingStateVMa_1(0) + 40)) & 1) == 0)
        {
          v8 = handleTitleEscape.super.isa;
          v19 = NSAttributedString.validatedReminderTitle()();
          isa = v19.title.super.isa;
          isValid = v19.isValid;

          if (!isValid)
          {
            v17 = 1;
            sub_21D78B0CC(&v17, 1);
LABEL_17:
            swift_unknownObjectRelease();
            return;
          }
        }
      }
    }

    TTRReminderCellTitleEditingPresenter.requestEndEditing()();
    goto LABEL_17;
  }

  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  v16 = sub_21DBF84AC();
  v12 = sub_21DBFAEBC();
  if (os_log_type_enabled(v16, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21D0C9000, v16, v12, "Missing editingSession for title editing", v13, 2u);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  v14 = v16;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.request(handleEditingTitleDidEnd:returnWasPressed:)(NSAttributedString handleEditingTitleDidEnd, Swift::Bool returnWasPressed)
{
  v3 = v2;
  isa = handleEditingTitleDidEnd.super.isa;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v13 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail))
  {
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEAC();
    if (!os_log_type_enabled(v15, v16))
    {
LABEL_7:

      return;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "Skip editingTitleDidEnd handling because we are committing for showing reminder detail";
LABEL_6:
    _os_log_impl(&dword_21D0C9000, v15, v16, v18, v17, 2u);
    MEMORY[0x223D46520](v17, -1, -1);
    goto LABEL_7;
  }

  v19 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  sub_21D105354(v2 + v19, v10, _s15RemindersUICore12EditingStateVMa_1);
  v10[v5[5]] = 0;
  v20 = v5[6];

  *&v10[v20] = 0;
  v10[v5[10]] = 0;
  v10[v5[9]] = 0;
  v21 = &v10[v5[7]];
  sub_21D24A814(*v21, *(v21 + 1));
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v10[v5[8]];
  sub_21D24A814(*v22, *(v22 + 1));
  *v22 = 0u;
  *(v22 + 1) = 0u;
  sub_21D105354(v2 + v19, v7, _s15RemindersUICore12EditingStateVMa_1);
  swift_beginAccess();
  sub_21D78B068(v10, v2 + v19);
  swift_endAccess();
  sub_21D7837F4(v7);
  sub_21D106DF8(v7, _s15RemindersUICore12EditingStateVMa_1);
  sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
  if (!returnWasPressed)
  {
    v23 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
    if (!v23)
    {
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAEBC();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_7;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "Missing editingSession for title editing";
      goto LABEL_6;
    }

    v24 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v25 = isa;
    v32 = NSAttributedString.validatedReminderTitle()();
    v26 = v32.title.super.isa;
    isValid = v32.isValid;

    if (isValid || *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) == 1)
    {
      sub_21D77ED14(v26, v23, v24, 1);
      v31[0] = 0;
      sub_21D78B0CC(v31, 0);
      swift_unknownObjectRelease();
    }

    else
    {

      v28 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      sub_21D77ED14(v28, v23, v24, 1);

      v31[0] = 4;
      sub_21D78B0CC(v31, 1);
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestHandleCurrentTextInputModePrimaryLanguageChange()()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  swift_beginAccess();
  v2 = _s15RemindersUICore12EditingStateVMa_1(0);
  if (*(v1 + *(v2 + 20)) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession))
    {
      v3 = *(v1 + *(v2 + 24));
      if (v3)
      {
        v4 = qword_280D17EE8;
        v5 = v3;
        if (v4 != -1)
        {
          swift_once();
        }

        v6 = sub_21DBF84BC();
        __swift_project_value_buffer(v6, qword_280D0F258);
        v7 = sub_21DBF84AC();
        v8 = sub_21DBFAE9C();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_21D0C9000, v7, v8, "Reminders List re-harvest title attributes due to text input mode changes", v9, 2u);
          MEMORY[0x223D46520](v9, -1, -1);
        }

        sub_21D77D430(v5, 0);
      }
    }
  }
}

void TTRReminderCellTitleEditingPresenter.request(applySuggestion:title:)(uint64_t a1, NSObject *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0CEB98(a1, v25);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_21D792C00(v6, v10, type metadata accessor for TTRReminderSuggestedAttribute);
    sub_21D7809BC(v10, a2);
    sub_21D106DF8(v10, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_21D0CF7E0(v6, &qword_27CE58A78);
    sub_21D0CEB98(a1, v25);
    if (swift_dynamicCast())
    {
      v25[0] = v27[0];
      v25[1] = v27[1];
      v26 = v28;
      sub_21D781BC4(v25, a2);
    }

    else
    {
      if (qword_280D17EE8 != -1)
      {
        swift_once();
      }

      v13 = sub_21DBF84BC();
      __swift_project_value_buffer(v13, qword_280D0F258);
      sub_21D1D9BE4(a1, v25);
      v14 = sub_21DBF84AC();
      v15 = sub_21DBFAECC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        sub_21D0CEB98(v25, v27);
        __swift_project_boxed_opaque_existential_1(v27, *(&v28 + 1));
        DynamicType = swift_getDynamicType();
        __swift_destroy_boxed_opaque_existential_0(v27);
        v23 = DynamicType;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A630);
        v19 = sub_21DBFA1AC();
        v21 = v20;
        sub_21D1D9C40(v25);
        v22 = sub_21D0CDFB4(v19, v21, &v24);

        *(v16 + 4) = v22;
        _os_log_impl(&dword_21D0C9000, v14, v15, "Unknown suggestion {type: %s}", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x223D46520](v17, -1, -1);
        MEMORY[0x223D46520](v16, -1, -1);
      }

      else
      {

        sub_21D1D9C40(v25);
      }
    }
  }
}

void sub_21D7809BC(uint64_t a1, NSObject *a2)
{
  v141 = a2;
  v150 = a1;
  v130 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v130);
  v132 = v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v131 = v124 - v5;
  v6 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v142 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v143 = v7;
  v144 = v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A0);
  MEMORY[0x28223BE20](v8 - 8);
  v140 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = v124 - v11;
  v147 = sub_21DBF79FC();
  v139 = *(v147 - 1);
  MEMORY[0x28223BE20](v147);
  v127 = v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v128 = v124 - v14;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC18);
  v126 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = v124 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE618A8);
  MEMORY[0x28223BE20](v16 - 8);
  v133 = (v124 - v17);
  v134 = sub_21DBF799C();
  v146 = *(v134 - 8);
  v18 = *(v146 + 64);
  MEMORY[0x28223BE20](v134);
  v125 = v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v145 = v124 - v20;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  __swift_project_value_buffer(v21, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v23 = sub_21D25D250();
  v24 = MEMORY[0x277D837D0];
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  *(inited + 72) = v24;
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  v149 = v6;
  v26 = *(v6 + 20);
  v27 = sub_21DBF79AC();
  *(inited + 120) = v24;
  *(inited + 96) = v27;
  *(inited + 104) = v28;
  sub_21D17716C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0);
  swift_arrayDestroy();
  sub_21DAEACDC();

  v29 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v29)
  {
    v30 = v2;
    v129 = v26;
    v148 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    swift_unknownObjectRetain();
    v31 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    v137 = v29;
    v32 = v150;
    if (v31)
    {
      v33 = v31;
      v34 = v133;
      TTRReminderSuggestedAttribute.AugmentedAttributeType.remSuggestedAttributeType.getter(v133);
      v35 = v146;
      v36 = v134;
      if ((*(v146 + 48))(v34, 1, v134) != 1)
      {
        v133 = *(v35 + 32);
        (v133)(v145, v34, v36);
        if (qword_280D152C0 != -1)
        {
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      sub_21D0CF7E0(v34, &qword_27CE618A8);
    }

    while (1)
    {
      v46 = TTRReminderSuggestedAttribute.attributeTypeDescription.getter();
      v145 = v47;
      v48 = [*(v32 + *(v149 + 24)) string];
      v49 = sub_21DBFA16C();
      v51 = v50;

      v52 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance;
      swift_beginAccess();
      v53 = *(v30 + v52);
      v54 = *(v53 + 16);
      v146 = v30;
      v136 = v49;
      if (v54)
      {
        v55 = sub_21D17EC6C(v46, v145, v49, v51);
        v56 = v138;
        if (v57)
        {
          v58 = v55;
          v59 = *(v53 + 56);
          v60 = v51;
          v61 = v46;
          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
          v63 = *(v62 - 8);
          v64 = v59 + *(v63 + 72) * v58;
          v29 = v137;
          sub_21D0D3954(v64, v56, &qword_27CE583A8);
          v65 = v62;
          v46 = v61;
          v51 = v60;
          (*(v63 + 56))(v56, 0, 1, v65);
        }

        else
        {
          v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
          (*(*(v67 - 8) + 56))(v56, 1, 1, v67);
        }
      }

      else
      {
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
        v56 = v138;
        (*(*(v66 - 8) + 56))(v138, 1, 1, v66);
      }

      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v56, 1, v68))
      {
        sub_21D0CF7E0(v56, &qword_27CE583A0);
        swift_endAccess();
        v70 = *(v68 + 48);
        v71 = v140;
        (*(v139 + 16))(v140, v150 + v129, v147);
        *(v71 + v70) = 1;
        (*(v69 + 56))(v71, 0, 1, v68);
        swift_beginAccess();
        sub_21D17D220(v71, v46, v145, v136, v51);
        swift_endAccess();
      }

      else
      {
        v138 = v46;
        v72 = v139;
        v73 = v127;
        v74 = v147;
        (*(v139 + 16))(v127, v56, v147);
        sub_21D0CF7E0(v56, &qword_27CE583A0);
        swift_endAccess();
        v75 = *(v72 + 32);
        v135 = v51;
        v76 = v128;
        v75(v128, v73, v74);
        v77 = *(v68 + 48);
        v78 = v140;
        sub_21DBF79CC();
        *(v78 + v77) = 1;
        v29 = v137;
        (*(v69 + 56))(v78, 0, 1, v68);
        swift_beginAccess();
        sub_21D17D220(v78, v138, v145, v136, v135);
        swift_endAccess();
        (*(v72 + 8))(v76, v147);
      }

      ObjectType = swift_getObjectType();
      v80 = *(v148 + 72);
      v140 = ObjectType;
      v80(v155);
      v81 = v141;
      v154 = v141;
      v147 = objc_opt_self();
      v82 = qword_280D1BAA8;
      v141 = v81;
      v32 = v29;
      if (v82 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      v83 = sub_21DBFA12C();

      v84 = v144;
      sub_21D105354(v150, v144, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D0D32E4(v155, v153);
      v85 = (*(v142 + 80) + 16) & ~*(v142 + 80);
      v86 = (v143 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 47) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = swift_allocObject();
      sub_21D792C00(v84, v89 + v85, type metadata accessor for TTRReminderSuggestedAttribute);
      sub_21D0D0FD0(v153, v89 + v86);
      v90 = v146;
      *(v89 + v87) = v146;
      v91 = (v89 + v88);
      v33 = v148;
      *v91 = v32;
      v91[1] = v33;
      *(v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8)) = &v154;
      v30 = v90;
      v92 = swift_allocObject();
      *(v92 + 16) = sub_21D792798;
      *(v92 + 24) = v89;
      v145 = v89;
      v151[4] = sub_21D0E6070;
      v152 = v92;
      v151[0] = MEMORY[0x277D85DD0];
      v151[1] = 1107296256;
      v151[2] = sub_21D0E6204;
      v151[3] = &block_descriptor_89;
      v36 = _Block_copy(v151);
      v35 = v152;
      swift_unknownObjectRetain();

      [v147 withActionName:v83 block:v36];

      _Block_release(v36);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if ((v84 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_35:
      swift_once();
LABEL_10:
      v124[1] = qword_280D152C8;
      v40 = v126;
      (*(v126 + 104))(v135, *MEMORY[0x277D459A8], v136);
      v41 = v125;
      (*(v35 + 16))(v125, v145, v36);
      v42 = (*(v35 + 80) + 24) & ~*(v35 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v33;
      (v133)(v43 + v42, v41);
      v44 = v33;
      v45 = v135;
      sub_21DBF832C();

      (*(v40 + 8))(v45, v136);
      (*(v146 + 8))(v145, v36);
      v29 = v137;
    }

    v151[0] = 3;
    (v33)[13](v151, v140, v33);
    v93 = (v150 + *(v149 + 28));
    if (v93[2])
    {
      v94 = v154;
      sub_21D77D430(v94, 0);

      v95 = v154;
      sub_21D0D8CF0(0, &qword_280D177E0);
      v96 = v95;
      v97 = sub_21DBFB63C();

      if (v97)
      {
        __swift_destroy_boxed_opaque_existential_0(v155);
        swift_unknownObjectRelease();
LABEL_32:
        v37 = v154;

        goto LABEL_33;
      }

      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v120 = *(v30 + 24);
        v121 = swift_getObjectType();
        v122 = *(v120 + 32);
        v123 = v154;
        v122(v30, &protocol witness table for TTRReminderCellTitleEditingPresenter, v123, 1, v121, v120);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v155);
        goto LABEL_32;
      }
    }

    else
    {
      v99 = *v93;
      v98 = v93[1];
      v100 = *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 24);
      v101 = *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor + 32);
      __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor), v100);
      v102 = v141;
      v103 = [v141 string];
      v104 = sub_21DBFA16C();
      v106 = v105;

      v107 = v146;
      v108 = (*(v101 + 24))(v99, v98, v104, v106, v100, v101);
      v110 = v109;

      v111 = sub_21D472618(v102, v108, v110);
      v112 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      v113 = v131;
      sub_21D105354(v107 + v112, v131, _s15RemindersUICore12EditingStateVMa_1);
      v114 = v130;
      v115 = v113 + *(v130 + 28);
      sub_21D24A814(*v115, *(v115 + 8));
      *v115 = 0u;
      *(v115 + 16) = 0u;
      v116 = v113 + *(v114 + 32);
      sub_21D24A814(*v116, *(v116 + 8));
      *v116 = 0u;
      *(v116 + 16) = 0u;
      v117 = v132;
      sub_21D105354(v107 + v112, v132, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v113, v107 + v112);
      swift_endAccess();
      sub_21D7837F4(v117);
      sub_21D106DF8(v117, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v113, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D77D430(v111, 0);
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();

        goto LABEL_31;
      }

      v118 = *(v107 + 24);
      v119 = swift_getObjectType();
      (*(v118 + 24))(v107, &protocol witness table for TTRReminderCellTitleEditingPresenter, v108, v110, 0, 0xE000000000000000, v119, v118);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    goto LABEL_31;
  }

  v37 = sub_21DBF84AC();
  v38 = sub_21DBFAEBC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_21D0C9000, v37, v38, "Missing editing session for applying attribute suggestions", v39, 2u);
    MEMORY[0x223D46520](v39, -1, -1);
  }

LABEL_33:
}

void sub_21D781BC4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v39 = a2;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = *a1;
  v38 = a1[1];
  v12 = a1[3];
  v37 = a1[2];
  v36 = v12;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  __swift_project_value_buffer(v13, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v15 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v15;
  *(inited + 56) = v16;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v17)
  {
    v35 = v7;
    v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v19 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v40 = v11;
    v41 = v38;
    v42 = v37;
    v43 = v36;
    v21 = *(v19 + 24);
    swift_unknownObjectRetain();
    v21(v44, &v40, v39, v17, v18, ObjectType, v19);
    v22 = v44[0];
    if (v44[0])
    {
      v23 = v44[1];
      v24 = v44[3];
      v38 = v44[2];
      v39 = v44[4];
      v25 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      sub_21D105354(v3 + v25, v10, _s15RemindersUICore12EditingStateVMa_1);
      v26 = &v10[*(v5 + 28)];
      sub_21D24A814(*v26, *(v26 + 1));
      *v26 = 0u;
      *(v26 + 1) = 0u;
      v27 = &v10[*(v5 + 32)];
      sub_21D24A814(*v27, *(v27 + 1));
      *v27 = 0u;
      *(v27 + 1) = 0u;
      v28 = v35;
      sub_21D105354(v3 + v25, v35, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v10, v3 + v25);
      swift_endAccess();
      sub_21D7837F4(v28);
      sub_21D106DF8(v28, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
      v29 = v38;
      v40 = v23;
      v41 = v38;
      v42 = v24;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v30 = v39;
      sub_21D77E434(v22, &v40, v39);
      swift_unknownObjectRelease();
      sub_21D300E70(v22, v23, v29, v24, v30);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v31 = sub_21DBF84AC();
    v32 = sub_21DBFAEBC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21D0C9000, v31, v32, "Missing editing session for applying inline hashtag suggestion", v33, 2u);
      MEMORY[0x223D46520](v33, -1, -1);
    }
  }
}

Swift::String_optional __swiftcall TTRReminderCellTitleEditingPresenter.requestAdoptForeignHashtag(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  v3 = v2;
  length = in.length;
  location = in.location;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v9 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v11)
  {
    v12 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 32);
    swift_unknownObjectRetain();
    v16 = v15(location, length, title.super.isa, v11, v12, ObjectType, v13);
    v18 = v17;
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = v16;
  v20 = v18;
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

Swift::Void __swiftcall TTRReminderCellTitleEditingPresenter.requestConvertTextToHashtag(in:title:)(__C::_NSRange in, NSAttributedString title)
{
  v3 = v2;
  v34 = in;
  v5 = _s15RemindersUICore12EditingStateVMa_1(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  if (qword_280D17EE8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_280D0F258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v13 = sub_21D25D250();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  if (v15)
  {
    v32 = v5;
    v33 = v7;
    v16 = *(v2 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession + 8);
    isa = title.super.isa;
    v18 = *(v3 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter + 8);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 40);
    swift_unknownObjectRetain();
    v20(v36, v34.location, v34.length, isa, v15, v16, ObjectType, v18);
    v21 = v36[0];
    if (v36[0])
    {
      v22 = v36[1];
      v23 = v36[3];
      v34.location = v36[2];
      v34.length = v36[4];
      v24 = OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
      swift_beginAccess();
      sub_21D105354(v3 + v24, v10, _s15RemindersUICore12EditingStateVMa_1);
      v25 = v32;
      v26 = &v10[*(v32 + 28)];
      sub_21D24A814(*v26, *(v26 + 1));
      *v26 = 0u;
      *(v26 + 1) = 0u;
      v27 = &v10[*(v25 + 32)];
      sub_21D24A814(*v27, *(v27 + 1));
      *v27 = 0u;
      *(v27 + 1) = 0u;
      v28 = v33;
      sub_21D105354(v3 + v24, v33, _s15RemindersUICore12EditingStateVMa_1);
      swift_beginAccess();
      sub_21D78B068(v10, v3 + v24);
      swift_endAccess();
      sub_21D7837F4(v28);
      sub_21D106DF8(v28, _s15RemindersUICore12EditingStateVMa_1);
      sub_21D106DF8(v10, _s15RemindersUICore12EditingStateVMa_1);
      location = v34.location;
      v35[0] = v22;
      v35[1] = v34.location;
      v35[2] = v23;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      length = v34.length;
      sub_21D77E434(v21, v35, v34.length);
      swift_unknownObjectRelease();
      sub_21D300E70(v21, v22, location, v23, length);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}