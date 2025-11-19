void sub_22F384664(uint64_t a1, uint64_t a2)
{
  sub_22F13A100(a1, v4);
  sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  if (swift_dynamicCast())
  {
    sub_22F13A100(a2, v4);
    if (swift_dynamicCast())
    {
      [v3 distanceFromLocation_];
    }
  }
}

void sub_22F384748(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = [a1 objectAtIndexedSubscript_];
  v9 = [v8 localIdentifier];
  if (!v9)
  {
    sub_22F740E20();
    v9 = sub_22F740DF0();
  }

  sub_22F740E20();
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = v10;
  sub_22F386DBC(v9, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v53);
  v12 = v53;
  v46 = v8;
  v13 = [v8 name];
  if (v13)
  {
    v14 = v13;
    sub_22F740E20();
  }

  v15 = sub_22F740DF0();

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = v12;
  sub_22F386DBC(v15, 1701667182, 0xE400000000000000, v16, &v53);
  v17 = sub_22F2B5478(&unk_2843DDDB8);
  v18 = v6;
  if (v6)
  {

    goto LABEL_7;
  }

  v19 = v17;
  [a3 insertNode_];
  v20 = [objc_opt_self() fetchAssetsForPerson:v46 options:a4];
  if (!v20)
  {

    return;
  }

  v21 = v20;
  v22 = [v20 count];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

  if (!v22)
  {

    return;
  }

  v23 = 0;
  v47 = v22;
  v48 = v21;
  for (i = [v21 objectAtIndexedSubscript_]; ; i = objc_msgSend(v48, sel_objectAtIndexedSubscript_, v23, v44))
  {
    v25 = i;
    v26 = *a5;
    v27 = a5[1];

    v28 = [v25 localIdentifier];
    v29 = sub_22F740E20();
    v31 = v30;

    v32 = sub_22F1530EC();
    v53 = MEMORY[0x231901000](1, &type metadata for Node.Label, v32);
    sub_22F10DF08(&v52, byte_2843DDE00);
    v33 = sub_22F2D67A0(v53, v29, v31, v26);

    if (!v33)
    {
      goto LABEL_12;
    }

    v34 = v19;
    v35 = v33;
    v36 = sub_22F1515F8(&unk_2843DDE08);
    sub_22F1DF3B0(&unk_2843DDE28);
    v37 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v38 = sub_22F740C80();
    v39 = [v37 kgPropertiesWithMAProperties_];

    if (!v39)
    {
      break;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v40 = sub_22F740CA0();

    v41 = type metadata accessor for Edge();
    v42 = objc_allocWithZone(v41);
    *&v42[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v42[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v36;
    *&v42[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v40;
    *&v42[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v35;
    *&v42[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v34;
    v51.receiver = v42;
    v51.super_class = v41;
    v43 = objc_msgSendSuper2(&v51, sel_init);
    [a3 insertEdge_];

LABEL_12:
    ++v23;

    if (v47 == v23)
    {

      return;
    }
  }

  sub_22F2B5954();
  v18 = swift_allocError();
  swift_willThrow();

LABEL_7:
  *a6 = v18;
}

void sub_22F384C8C(void *a1, uint64_t *a2, id a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, id a9, void *a10, uint64_t a11, uint64_t *a12)
{
  v120[8] = *MEMORY[0x277D85DE8];
  v19 = sub_22F2B4BB8();
  v21 = *a2;
  if (*(*a2 + 16))
  {
    v114 = a5;
    v22 = sub_22F1229E8(v19, v20);
    v24 = v23;

    if (v24)
    {
      v107 = a6;
      v108 = a7;
      v113 = a3;
      v25 = *(*(v21 + 56) + 8 * v22);
      sub_22F2B50F8();
      v27 = v26;

      [v25 clsIsUtility];
      v28 = sub_22F7412C0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v27;
      sub_22F386DBC(v28, 0x74696C6974557369, 0xE900000000000079, isUniquelyReferenced_nonNull_native, aBlock);
      v30 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v31 = sub_22F740C80();

      v109 = v30;
      v32 = [v30 kgPropertiesWithMAProperties_];

      if (!v32)
      {
        sub_22F2B5954();
        v41 = swift_allocError();
        swift_willThrow();

        goto LABEL_44;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v33 = sub_22F740CA0();

      sub_22F213C6C(v33);

      v34 = sub_22F740C80();

      [v113 updateNode:a1 newProperties:v34];

      v106 = v25;
      v35 = [v25 clsSceneClassifications];
      sub_22F120634(0, &qword_27DAB3D88, 0x277CD9990);
      sub_22F11FA28(&unk_27DAB3D90, &qword_27DAB3D88, 0x277CD9990);
      v36 = sub_22F741420();

      if ((v36 & 0xC000000000000001) != 0)
      {
        sub_22F7419C0();
        sub_22F741470();
        v36 = v120[3];
        v37 = v120[4];
        v38 = v120[5];
        v39 = v120[6];
        v40 = v120[7];
      }

      else
      {
        v39 = 0;
        v42 = -1 << *(v36 + 32);
        v37 = (v36 + 56);
        v38 = ~v42;
        v43 = -v42;
        if (v43 < 64)
        {
          v44 = ~(-1 << v43);
        }

        else
        {
          v44 = -1;
        }

        v40 = (v44 & *(v36 + 56));
      }

      v45 = a4;
      v46 = (v38 + 64) >> 6;
      v110 = v37;
      v111 = v36;
      while (1)
      {
        if (v36 < 0)
        {
          v51 = v39;
          v53 = sub_22F741A40();
          if (!v53 || (v120[0] = v53, swift_dynamicCast(), v54 = v40, v40 = aBlock[0], v117 = v54, v52 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_, !aBlock[0]))
          {
LABEL_37:

            sub_22F0FF590();
            a3 = v113;
            break;
          }
        }

        else
        {
          v49 = v39;
          v50 = v40;
          v51 = v39;
          if (!v40)
          {
            while (1)
            {
              v51 = (v49 + 1);
              if (__OFADD__(v49, 1))
              {
                break;
              }

              if (v51 >= v46)
              {
                goto LABEL_37;
              }

              v50 = v37[v51];
              ++v49;
              if (v50)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_53:
            swift_endAccess();

            sub_22F0FF590();
            v41 = v12;
LABEL_44:
            *a12 = v41;
            goto LABEL_47;
          }

LABEL_21:
          v117 = (v50 - 1) & v50;
          v40 = *(*(v36 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
          v52 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
          if (!v40)
          {
            goto LABEL_37;
          }
        }

        if (([v40 v52[151]] & 0xFF000000) != 0x7F000000)
        {
          v55 = [v45 nodeForIdentifier_];
          if (v55)
          {
            v112 = v55;
            v56 = [v55 name];
            v57 = v56;
            v58 = v56;
            if (!v56)
            {
              sub_22F740E20();
              v58 = sub_22F740DF0();

              sub_22F740E20();
              v57 = sub_22F740DF0();
              v45 = a4;
            }

            v59 = v56;
            v60 = [v45 nodeExistsForName_];

            if (v60)
            {
              v105 = a8;
              v61 = [v40 extendedSceneIdentifier];
              swift_beginAccess();
              v62 = *(v114 + 16);
              v120[0] = v61;
              v63 = sub_22F742010();
              v65 = v64;
              v66 = sub_22F15280C(&unk_2843DE230);
              v67 = sub_22F2D67A0(v66, v63, v65, v62);

              if (v67)
              {
              }

              else
              {
                v120[0] = v61;
                sub_22F742010();
                v68 = sub_22F740DF0();
                v69 = MEMORY[0x277D84F98];
                v70 = swift_isUniquelyReferenced_nonNull_native();
                v120[0] = v69;
                sub_22F386DBC(v68, 0xD000000000000010, 0x800000022F792110, v70, v120);
                v71 = v120[0];
                v72 = swift_isUniquelyReferenced_nonNull_native();
                v120[0] = v71;
                sub_22F386DBC(v57, 1701667182, 0xE400000000000000, v72, v120);
                v73 = sub_22F2B5478(&unk_2843DE258);
                v39 = v106;
                if (v12)
                {
                  goto LABEL_53;
                }

                v67 = v73;
                sub_22F2D601C(v73);
                [v113 insertNode_];
              }

              swift_endAccess();
              [v40 confidence];
              v74 = sub_22F741350();
              v75 = MEMORY[0x277D84F98];
              v76 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v75;
              sub_22F386DBC(v74, 0x6E656469666E6F63, 0xEA00000000006563, v76, aBlock);
              v77 = v67;
              v78 = sub_22F1515F8(&unk_2843DE280);
              sub_22F1DF3B0(&unk_2843DE2A0);
              v79 = sub_22F740C80();

              v80 = [v109 kgPropertiesWithMAProperties_];

              if (!v80)
              {

                sub_22F2B5954();
                v41 = swift_allocError();
                swift_willThrow();

                sub_22F0FF590();
                goto LABEL_44;
              }

              v81 = sub_22F740CA0();

              v82 = type metadata accessor for Edge();
              v83 = objc_allocWithZone(v82);
              *&v83[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
              *&v83[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v78;
              *&v83[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v81;
              *&v83[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = a1;
              *&v83[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v77;
              v118.receiver = v83;
              v118.super_class = v82;
              v84 = a1;
              v104 = objc_msgSendSuper2(&v118, sel_init);
              [v113 insertEdge_];
              v85 = swift_allocObject();
              *(v85 + 16) = 1;
              v86 = swift_allocObject();
              v86[2] = v107;
              v86[3] = v108;
              v86[4] = v114;
              v86[5] = v113;
              v86[6] = v77;
              v86[7] = v85;
              v86[8] = a11;
              aBlock[4] = sub_22F38A970;
              aBlock[5] = v86;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_22F385E40;
              aBlock[3] = &block_descriptor_42_0;
              v87 = _Block_copy(aBlock);
              v47 = v77;

              v88 = v113;

              v48 = v112;
              [v112 visitParentsUsingNameBlock_];
              _Block_release(v87);
              swift_beginAccess();
              if ((*(v85 + 16) & 1) == 0)
              {
                sub_22F38A91C();
                v41 = swift_allocError();
                swift_willThrow();

                sub_22F0FF590();

                goto LABEL_44;
              }

              a8 = v105;
              v45 = a4;
              v37 = v110;
            }

            else
            {
              v47 = v40;
              v40 = v57;
              v37 = v110;
              v48 = v112;
            }

            v36 = v111;
          }
        }

        v39 = v51;
        v40 = v117;
      }
    }
  }

  else
  {
  }

  swift_beginAccess();
  v89 = *a8 + 1;
  if (__OFADD__(*a8, 1))
  {
    __break(1u);
  }

  *a8 = v89;
  if (__ROR8__(0x8F5C28F5C28F5C29 * v89 + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
  {
    v120[0] = 0;
    if (![a9 performChangesAndWait:a3 error:v120])
    {
      v102 = v120[0];
      v41 = sub_22F73F370();

      swift_willThrow();
      goto LABEL_44;
    }

    v90 = v120[0];
    v91 = sub_22F7415F0();
    sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
    v92 = a9;
    v93 = a10;
    v94 = sub_22F741840();
    if (os_log_type_enabled(v94, v91))
    {
      v95 = swift_slowAlloc();
      *v95 = 134218752;
      swift_beginAccess();
      *(v95 + 4) = *a8;
      *(v95 + 12) = 2048;
      *(v95 + 14) = [v93 count];

      *(v95 + 22) = 2048;
      v96 = [objc_opt_self() any];
      v97 = [v92 nodeIdentifiersMatchingFilter:v96];

      v98 = [v97 count];
      *(v95 + 24) = v98;

      *(v95 + 32) = 2048;
      v99 = [objc_opt_self() any];
      v100 = [v92 edgeIdentifiersMatchingFilter:v99];

      v101 = [v100 count];
      *(v95 + 34) = v101;

      _os_log_impl(&dword_22F0FC000, v94, v91, "Scened %ld assets out of %ld, graph has %ld nodes and %ld edges", v95, 0x2Au);
      MEMORY[0x2319033A0](v95, -1, -1);
    }

    else
    {

      v94 = v92;
    }
  }

LABEL_47:
  v103 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22F385A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  if ((a1 != a4 || a2 != a5) && (sub_22F742040() & 1) == 0)
  {
    swift_beginAccess();
    v13 = *(a6 + 16);
    v41 = a3;
    v14 = sub_22F742010();
    v16 = v15;
    v17 = sub_22F15280C(&unk_2843DE5A0);
    v18 = sub_22F2D67A0(v17, v14, v16, v13);

    if (!v18)
    {
      sub_22F742010();
      v22 = sub_22F740DF0();
      v23 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v23;
      sub_22F386DBC(v22, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v41);
      v25 = v41;
      v26 = sub_22F740DF0();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v25;
      sub_22F386DBC(v26, 1701667182, 0xE400000000000000, v27, &v41);
      v18 = sub_22F2B5478(&unk_2843DE5C8);
      sub_22F2D601C(v18);
      [a7 insertNode_];
    }

    swift_endAccess();
    swift_beginAccess();
    v19 = *(a6 + 24);
    v20 = sub_22F152840(&unk_2843DE5F0);
    v21 = sub_22F2D6994(v20, a8, v18, v19);

    if (v21)
    {
      swift_endAccess();
    }

    else
    {
      v28 = sub_22F1515F8(&unk_2843DE618);
      sub_22F1DF3B0(&unk_2843DE638);
      v29 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v30 = sub_22F740C80();
      v31 = [v29 kgPropertiesWithMAProperties_];

      if (!v31)
      {
        swift_endAccess();

        v38 = 1;
        swift_beginAccess();
        *(a9 + 16) = 0;
        return v38;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v32 = sub_22F740CA0();

      v33 = type metadata accessor for Edge();
      v34 = objc_allocWithZone(v33);
      *&v34[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
      *&v34[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v28;
      *&v34[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v32;
      *&v34[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = a8;
      *&v34[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v18;
      v40.receiver = v34;
      v40.super_class = v33;
      v35 = a8;
      v36 = v18;
      v37 = objc_msgSendSuper2(&v40, sel_init);
      sub_22F2D6290(v37);
      [a7 insertEdge_];
      swift_endAccess();
    }
  }

  return 0;
}

uint64_t sub_22F385E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_22F740E20();
  v8 = v7;

  LOBYTE(a3) = v5(v6, v8, a3);

  return a3 & 1;
}

uint64_t GraphFullRebuilder.savePhotoKitStreamToken(with:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2822009F8](sub_22F385EDC, 0, 0);
}

uint64_t sub_22F385EDC()
{
  v1 = *(v0 + 96);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 88);
    v5 = *(*(v0 + 104) + 16);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    sub_22F386F38(v4, v1);

    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_22F386004;

    return sub_22F288D70(v5, v0 + 16);
  }
}

uint64_t sub_22F386004(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_22F38631C;
  }

  else
  {
    v5 = sub_22F386118;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F386118()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v0[17] = v1[14];
  v0[18] = v1[15];
  v4 = v1[16];
  v0[19] = v4;
  sub_22F386F38(v2, v3);

  return MEMORY[0x2822009F8](sub_22F3861B8, v4, 0);
}

uint64_t sub_22F3861B8()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v15 = *(v0 + 88);
  v4 = sub_22F73F350();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 56) = v15;
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;
  sub_22F20B504();
  v7 = sub_22F73F330();
  v9 = *(v0 + 152);
  if (v3)
  {

    *(v0 + 160) = v3;
    v13 = sub_22F386418;
  }

  else
  {
    v10 = v7;
    v11 = v8;

    sub_22F73F520();
    v12 = *(v0 + 152);
    sub_22F133BF0(v10, v11);

    v13 = sub_22F386380;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_22F38631C()
{
  sub_22F1746FC(v0[11], v0[12]);
  v1 = v0[16];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22F386380()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  sub_22F133BF0(v4, v3);

  sub_22F1746FC(v4, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_22F386418()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  sub_22F133BF0(v4, v3);

  sub_22F1746FC(v4, v3);
  v5 = v0[20];
  v6 = v0[1];

  return v6();
}

uint64_t sub_22F3864B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a4;
  v7[4] = a5;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_22F386550;

  return sub_22F3B8284(a7);
}

uint64_t sub_22F386550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_22F3866EC;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_22F386678;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F386678()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = *(v0 + 56);
  sub_22F73FC80();
  dispatch_group_leave(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F3866EC()
{
  v1 = sub_22F7415E0();
  sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v2 = sub_22F741840();
  v3 = os_log_type_enabled(v2, v1);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v4;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_22F0FC000, v2, v1, "GeoService query error: %@", v5, 0xCu);
    sub_22F120ADC(v6, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v6, -1, -1);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 24));
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22F386854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[4] = a4;
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_22F3868EC;

  return sub_22F2379C0();
}

uint64_t sub_22F3868EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = sub_22F386A88;
  }

  else
  {
    *(v4 + 72) = a1;
    v7 = sub_22F386A14;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22F386A14()
{
  v1 = *(v0 + 40);
  *(v0 + 24) = *(v0 + 72);
  sub_22F73FC80();
  dispatch_group_leave(*(v0 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F386A88()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  *(v0 + 16) = v1;
  v3 = v1;
  sub_22F73FC80();

  dispatch_group_leave(*(v0 + 32));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t GraphFullRebuilder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t GraphFullRebuilder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_22F386B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);

  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

uint64_t sub_22F386C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F386C40, 0, 0);
}

uint64_t sub_22F386C40()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = sub_22F73FA80();
  v2();

  **(v0 + 16) = *(v0 + 48);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22F386CF4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F12094C;

  return sub_22F386C1C(a1, a2, v7, v6);
}

uint64_t sub_22F386DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_22F1229E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22F128A00(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_22F1229E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22F135FD4();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_22F386F38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22F15C3C4(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F386FB4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = sub_22F15280C(&unk_2843DD690);
  v10 = sub_22F2D67A0(v9, a1, a2, v8);

  if (!v10)
  {
    v11 = sub_22F740DF0();
    v12 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v12;
    sub_22F386DBC(v11, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v18);
    v10 = v18;
    sub_22F740F10();
    v14 = sub_22F7414B0();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v10;
    sub_22F386DBC(v14, 0x657A695368736168, 0xE800000000000000, v15, &v18);

    v16 = sub_22F2B5478(&unk_2843DD6B8);
    if (!v4)
    {
      v10 = v16;
      sub_22F2D601C(v16);
      [a4 insertNode_];
    }
  }

  return v10;
}

uint64_t sub_22F387124(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;

  v9 = sub_22F15280C(&unk_2843DDE38);
  v10 = sub_22F2D67A0(v9, a1, a2, v8);

  if (!v10)
  {
    v11 = sub_22F740DF0();
    v12 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v12;
    sub_22F386DBC(v11, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v18);
    v10 = v18;
    v14 = sub_22F740DF0();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v10;
    sub_22F386DBC(v14, 1701667182, 0xE400000000000000, v15, &v18);

    v16 = sub_22F2B5478(&unk_2843DDE60);
    if (!v4)
    {
      v10 = v16;
      sub_22F2D601C(v16);
      [a4 insertNode_];
    }
  }

  return v10;
}

uint64_t sub_22F387298(char *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v221 = a4;
  v224 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v10 = &v203 - v9;
  v11 = [a1 count];
  if (v11 < 0)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    sub_22F7420C0();
    __break(1u);
LABEL_144:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v214 = v10;
  if (v11)
  {
    v12 = 0;
    v13 = a2 + 56;
    v219 = MEMORY[0x277D84F98];
    v215 = a1;
    v220 = v11;
    while (1)
    {
      v223 = objc_autoreleasePoolPush();
      v14 = [a1 objectAtIndexedSubscript_];
      v15 = [v14 localIdentifier];
      v16 = sub_22F740E20();
      v18 = v17;

      if (*(a2 + 16))
      {
        v19 = *(a2 + 40);
        sub_22F742170();
        sub_22F740D60();
        v20 = sub_22F7421D0();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = (*(a2 + 48) + 16 * v22);
            v25 = *v24 == v16 && v24[1] == v18;
            if (v25 || (sub_22F742040() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v13 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_6;
        }
      }

LABEL_16:

      v26 = [v14 location];
      if (v26)
      {
        v27 = v26;
        if (([objc_opt_self() locationIsCoarse_] & 1) == 0)
        {
          [v27 coordinate];
          if (CLLocationCoordinate2DIsValid(v231))
          {
            [v27 coordinate];
            v29 = round(v28 * 10000.0) / 10000.0;
            [v27 coordinate];
            v31 = round(v30 * 10000.0) / 10000.0;
            v32 = [v14 localIdentifier];

            v218 = sub_22F740E20();
            v217 = v33;

            v34 = v219;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v227 = v34;
            v37 = sub_22F1237E8(v29, v31);
            v38 = v34[2];
            v39 = (v36 & 1) == 0;
            v40 = v38 + v39;
            if (__OFADD__(v38, v39))
            {
              goto LABEL_136;
            }

            v41 = v36;
            if (v34[3] < v40)
            {
              sub_22F12DAB8(v40, isUniquelyReferenced_nonNull_native);
              type metadata accessor for CLLocationCoordinate2D(0);
              v219 = v42;
              v43 = v227;
              v44 = sub_22F1237E8(v29, v31);
              if ((v41 & 1) != (v45 & 1))
              {
                goto LABEL_144;
              }

              v37 = v44;
              v34 = v43;
              if (v41)
              {
                goto LABEL_29;
              }

LABEL_27:
              v34[(v37 >> 6) + 8] |= 1 << v37;
              v46 = (v34[6] + 16 * v37);
              *v46 = v29;
              v46[1] = v31;
              *(v34[7] + 8 * v37) = MEMORY[0x277D84F90];
              v47 = v34[2];
              v48 = __OFADD__(v47, 1);
              v49 = v47 + 1;
              if (v48)
              {
                goto LABEL_139;
              }

              v34[2] = v49;
              goto LABEL_29;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v36 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            else
            {
              sub_22F138C60();
              v34 = v227;
              if ((v41 & 1) == 0)
              {
                goto LABEL_27;
              }
            }

LABEL_29:
            v219 = v34;
            v50 = v34[7];
            v51 = *(v50 + 8 * v37);
            v52 = swift_isUniquelyReferenced_nonNull_native();
            *(v50 + 8 * v37) = v51;
            if ((v52 & 1) == 0)
            {
              v51 = sub_22F13E1A8(0, *(v51 + 2) + 1, 1, v51);
              *(v50 + 8 * v37) = v51;
            }

            v54 = *(v51 + 2);
            v53 = *(v51 + 3);
            v216 = (v54 + 1);
            if (v54 >= v53 >> 1)
            {
              *(v50 + 8 * v37) = sub_22F13E1A8((v53 > 1), v216, 1, v51);
            }

            v55 = *(v50 + 8 * v37);
            *(v55 + 16) = v216;
            v56 = v55 + 16 * v54;
            v57 = v217;
            *(v56 + 32) = v218;
            *(v56 + 40) = v57;
            a1 = v215;
            goto LABEL_6;
          }
        }
      }

LABEL_6:
      ++v12;
      objc_autoreleasePoolPop(v223);
      if (v12 == v220)
      {
        goto LABEL_37;
      }
    }
  }

  v219 = MEMORY[0x277D84F98];
LABEL_37:
  v58 = v219;
  v59 = v219[2];
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    v61 = sub_22F10B684(v219[2], 0);
    v62 = sub_22F11CACC(&v227, v61 + 2, v59, v58);

    sub_22F0FF590();
    if (v62 == v59)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  v61 = v60;
LABEL_41:
  type metadata accessor for GraphGeoServiceQueryPerformer();
  v63 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v63 + 112) = [objc_allocWithZone(MEMORY[0x277D0EBD0]) init];
  v227 = sub_22F150350(v60);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3DB0, &qword_22F788D40);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = sub_22F73FC90();
  v68 = dispatch_group_create();
  dispatch_group_enter(v68);
  v69 = sub_22F741320();
  v70 = v214;
  (*(*(v69 - 8) + 56))(v214, 1, 1, v69);
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = v68;
  v71[5] = v67;
  v71[6] = v63;
  v71[7] = v61;
  v72 = v68;

  v207 = v63;

  sub_22F37994C(0, 0, v70, &unk_22F788D50, v71);

  v205 = v72;
  sub_22F741620();
  v206 = v67;
  sub_22F73FC70();
  v73 = v227[8];
  v212 = v227 + 8;
  v74 = 1 << *(v227 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & v73;
  v77 = (v74 + 63) >> 6;
  v204 = "_TtC11PhotosGraph12GraphBuilder";
  v217 = v227;

  v78 = 0;
  v79 = MEMORY[0x277D84F98];
  v80 = MEMORY[0x277D84F98];
  v81 = MEMORY[0x277D84F98];
LABEL_44:
  if (v76)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v82 = v78 + 1;
    if (__OFADD__(v78, 1))
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (v82 >= v77)
    {
      break;
    }

    v76 = v212[v82];
    ++v78;
    if (v76)
    {
      v78 = v82;
LABEL_49:
      v203 = v78;
      v83 = __clz(__rbit64(v76)) | (v78 << 6);
      v84 = (v217[6] + 16 * v83);
      v85 = *v84;
      v86 = v84[1];
      v87 = *(*(v217[7] + 8 * v83) + 16);

      v211 = v87;
      if (v87)
      {
        v89 = 0;
        v214 = (v88 + 32);
        v90 = v79;
        v209 = v77;
        v208 = v76;
        v213 = v88;
        while (1)
        {
          if (v89 >= *(v88 + 16))
          {
            goto LABEL_137;
          }

          v218 = v90;
          v215 = v89;
          v91 = &v214[32 * v89];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = *(v91 + 3);
          v223 = *(v91 + 2);
          v220 = v92;

          v216 = objc_autoreleasePoolPush();
          v95 = *v224;
          v227 = v93;
          v96 = sub_22F742010();
          v98 = v97;
          v99 = sub_22F1530EC();
          v227 = MEMORY[0x231901000](1, &type metadata for Node.Label, v99);
          sub_22F10DF08(&v229, byte_2843DDEA8);
          v100 = sub_22F2D67A0(v227, v96, v98, v95);

          if (v100)
          {
            v101 = v94;
          }

          else
          {
            v227 = v93;
            sub_22F742010();
            v102 = sub_22F740DF0();
            v103 = MEMORY[0x277D84F98];
            v104 = swift_isUniquelyReferenced_nonNull_native();
            v227 = v103;
            sub_22F386DBC(v102, 0xD000000000000010, v204 | 0x8000000000000000, v104, &v227);
            v105 = v227;
            v106 = sub_22F740DF0();
            v107 = swift_isUniquelyReferenced_nonNull_native();
            v227 = v105;
            sub_22F386DBC(v106, 1701667182, 0xE400000000000000, v107, &v227);
            v108 = v222;
            v109 = sub_22F2B5478(&unk_2843DDEB0);
            v222 = v108;
            v101 = v94;
            if (v108)
            {

LABEL_125:

              objc_autoreleasePoolPop(v216);

              v183 = v205;
              goto LABEL_126;
            }

            v100 = v109;
            sub_22F2D601C(v109);
            [v221 insertNode_];
          }

          v110 = swift_isUniquelyReferenced_nonNull_native();
          v227 = v81;
          v111 = sub_22F1237E8(v85, v86);
          v113 = v81[2];
          v114 = (v112 & 1) == 0;
          v48 = __OFADD__(v113, v114);
          v115 = v113 + v114;
          if (v48)
          {
            goto LABEL_138;
          }

          v116 = v112;
          if (v81[3] >= v115)
          {
            if ((v110 & 1) == 0)
            {
              v151 = v111;
              sub_22F138F58();
              v111 = v151;
              v90 = v227;
              if (v116)
              {
                goto LABEL_64;
              }

              goto LABEL_62;
            }
          }

          else
          {
            sub_22F12E048(v115, v110);
            type metadata accessor for CLLocationCoordinate2D(0);
            v111 = sub_22F1237E8(v85, v86);
            if ((v116 & 1) != (v117 & 1))
            {
              goto LABEL_143;
            }
          }

          v90 = v227;
          if (v116)
          {
            goto LABEL_64;
          }

LABEL_62:
          v90[(v111 >> 6) + 8] |= 1 << v111;
          v118 = (v90[6] + 16 * v111);
          *v118 = v85;
          v118[1] = v86;
          *(v90[7] + 8 * v111) = MEMORY[0x277D84F90];
          v119 = v90[2];
          v48 = __OFADD__(v119, 1);
          v120 = v119 + 1;
          if (v48)
          {
            goto LABEL_140;
          }

          v90[2] = v120;
LABEL_64:
          v121 = (v90[7] + 8 * v111);
          v122 = v100;
          MEMORY[0x231900D00]();
          if (*((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v150 = *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_22F7411C0();
          }

          sub_22F741220();
          v123 = *(v220 + 16);
          if (v123)
          {
            v210 = v101;
            v218 = v90;
            v124 = 1 - v123;
            v125 = (v220 + 40);
            do
            {
              v127 = *(v125 - 1);
              v126 = *v125;
              v128 = v80[2];

              if (v128 && (v129 = sub_22F1229E8(v127, v126), (v130 & 1) != 0))
              {
                v131 = v129;

                v132 = *(v80[7] + 8 * v131);
              }

              else
              {
                v133 = v222;
                v134 = sub_22F387124(v127, v126, v224, v221);
                v222 = v133;
                if (v133)
                {

                  goto LABEL_125;
                }

                v132 = v134;
                v135 = swift_isUniquelyReferenced_nonNull_native();
                v227 = v80;
                sub_22F131F70(v132, v127, v126, v135);

                v80 = v227;
              }

              v136 = v224[1];
              v137 = sub_22F153098();
              v227 = MEMORY[0x231901000](1, &type metadata for Edge.Label, v137);
              sub_22F10E5F4(&v229, byte_2843DDEF8);
              v138 = sub_22F2D6994(v227, v122, v132, v136);

              if (v138)
              {

                if (!v124)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                v223 = v80;
                v139 = sub_22F1515F8(&unk_2843DDF00);
                sub_22F1DF3B0(&unk_2843DDF20);
                v140 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v141 = sub_22F740C80();
                v142 = [v140 kgPropertiesWithMAProperties_];

                if (!v142)
                {

                  sub_22F2B5954();
                  v222 = swift_allocError();
                  swift_willThrow();

                  goto LABEL_125;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v143 = sub_22F740CA0();

                v144 = type metadata accessor for Edge();
                v145 = objc_allocWithZone(v144);
                *&v145[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v145[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v139;
                *&v145[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v143;
                *&v145[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v122;
                *&v145[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v132;
                v226.receiver = v145;
                v226.super_class = v144;
                v146 = v122;
                v147 = v132;
                v148 = objc_msgSendSuper2(&v226, sel_init);
                sub_22F2D6290(v148);
                v149 = v148;
                [v221 insertEdge_];

                v80 = v223;
                if (!v124)
                {
LABEL_78:
                  v76 = v208;
                  v90 = v218;
                  goto LABEL_80;
                }
              }

              ++v124;
              v125 += 2;
            }

            while (v124 != 1);
            __break(1u);
            goto LABEL_132;
          }

          v76 = v208;
LABEL_80:
          v89 = (v215 + 1);

          objc_autoreleasePoolPop(v216);
          v81 = v90;
          v79 = v90;
          v77 = v209;
          v88 = v213;
          if (v89 == v211)
          {
            goto LABEL_85;
          }
        }
      }

      v90 = v81;
LABEL_85:
      v76 &= v76 - 1;

      v81 = v90;
      v78 = v203;
      goto LABEL_44;
    }
  }

  v152 = v217;

  v153 = 0;
  v154 = 1 << *(v152 + 32);
  v155 = -1;
  if (v154 < 64)
  {
    v155 = ~(-1 << v154);
  }

  v156 = v155 & v152[8];
  v203 = (v154 + 63) >> 6;
  v157 = &type metadata for Edge.Label;
  v158 = v219;
  v204 = v79;
LABEL_90:
  while (v156)
  {
    v159 = v156;
LABEL_96:
    v156 = (v159 - 1) & v159;
    if (v158[2])
    {
      v161 = v217[6];
      v208 = (v159 - 1) & v159;
      v162 = (v161 + ((v153 << 10) | (16 * __clz(__rbit64(v159)))));
      v163 = *v162;
      v164 = v162[1];
      v165 = *v162;
      v209 = v153;
      v166 = sub_22F1237E8(v165, v164);
      v156 = v208;
      v153 = v209;
      v158 = v219;
      if (v167)
      {
        v168 = *(v219[7] + 8 * v166);
        v210 = *(v168 + 16);
        if (v210)
        {
          v213 = v168 + 32;

          v170 = 0;
          v211 = v169;
          while (1)
          {
            if (v170 >= *(v169 + 16))
            {
              goto LABEL_142;
            }

            v214 = v170;
            v171 = (v213 + 16 * v170);
            v173 = *v171;
            v172 = v171[1];
            v174 = *v224;
            v175 = sub_22F1530EC();

            v227 = MEMORY[0x231901000](1, &type metadata for Node.Label, v175);
            sub_22F10DF08(&v229, byte_2843DDF50);
            v176 = sub_22F2D67A0(v227, v173, v172, v174);

            if (v176)
            {
              break;
            }

LABEL_101:
            v170 = v214 + 1;
            v169 = v211;
            if (v214 + 1 == v210)
            {

              v158 = v219;
              v153 = v209;
              v156 = v208;
              goto LABEL_90;
            }
          }

          if (v79[2] && (v177 = sub_22F1237E8(v163, v164), (v178 & 1) != 0))
          {
            v179 = *(v79[7] + 8 * v177);

            if (v179 >> 62)
            {
LABEL_107:
              v180 = sub_22F741A00();
              if (v180)
              {
                goto LABEL_111;
              }

LABEL_100:

              v79 = v204;
              goto LABEL_101;
            }
          }

          else
          {
            v179 = MEMORY[0x277D84F90];
            if (MEMORY[0x277D84F90] >> 62)
            {
              goto LABEL_107;
            }
          }

          v180 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v180)
          {
LABEL_111:
            v181 = 0;
            v223 = (v179 & 0xC000000000000001);
            v220 = v179 & 0xFFFFFFFFFFFFFF8;
            v218 = v176;
            v216 = v179;
            v215 = v180;
            while (1)
            {
              if (v223)
              {
                v182 = MEMORY[0x2319016F0](v181, v179);
              }

              else
              {
                if (v181 >= *(v220 + 16))
                {
                  goto LABEL_135;
                }

                v182 = *(v179 + 8 * v181 + 32);
              }

              v183 = v182;
              v184 = (v181 + 1);
              if (__OFADD__(v181, 1))
              {
                goto LABEL_133;
              }

              v185 = v224[1];
              v186 = sub_22F153098();
              v227 = MEMORY[0x231901000](1, v157, v186);
              sub_22F10E5F4(&v229, byte_2843DDF78);
              v187 = sub_22F2D6994(v227, v176, v183, v185);

              if (v187)
              {

                if (v184 == v180)
                {
                  goto LABEL_100;
                }
              }

              else
              {
                v188 = v157;
                v189 = sub_22F1515F8(&unk_2843DDF80);
                sub_22F1DF3B0(&unk_2843DDFA0);
                v190 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v191 = sub_22F740C80();
                v192 = [v190 kgPropertiesWithMAProperties_];

                if (!v192)
                {

                  sub_22F2B5954();
                  v222 = swift_allocError();
                  swift_willThrow();

LABEL_126:
                  v200 = &v230;
                  goto LABEL_127;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v193 = sub_22F740CA0();

                v194 = type metadata accessor for Edge();
                v195 = objc_allocWithZone(v194);
                *&v195[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v195[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v189;
                *&v195[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v193;
                v176 = v218;
                *&v195[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v218;
                *&v195[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v183;
                v225.receiver = v195;
                v225.super_class = v194;
                v196 = v176;
                v197 = v183;
                v198 = objc_msgSendSuper2(&v225, sel_init);
                sub_22F2D6290(v198);
                v199 = v198;
                [v221 insertEdge_];

                v180 = v215;
                v157 = v188;
                v179 = v216;
                if (v184 == v215)
                {
                  goto LABEL_100;
                }
              }

              ++v181;
            }
          }

          goto LABEL_100;
        }
      }
    }
  }

  while (1)
  {
    v160 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      goto LABEL_134;
    }

    if (v160 >= v203)
    {
      break;
    }

    v159 = v212[v160];
    ++v153;
    if (v159)
    {
      v153 = v160;
      goto LABEL_96;
    }
  }

  v200 = &v228;
LABEL_127:
  v201 = *(v200 - 32);
}

void sub_22F38880C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v19 = MEMORY[0x277D84F98];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DA0, &qword_22F788D08);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_22F73FC90();
  v19 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DA8, &qword_22F788D10);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_22F73FC90();
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v15 = sub_22F741320();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v9;
  v16[6] = a1;
  v16[7] = v13;
  v17 = v14;

  sub_22F37994C(0, 0, v5, &unk_22F788D20, v16);

  sub_22F741620();
  sub_22F73FC70();
  if (v19)
  {
    swift_willThrow();
  }

  else
  {
    sub_22F73FC70();
  }
}

uint64_t sub_22F388A30(uint64_t *a1, uint64_t *a2, void *a3)
{
  v48 = a3;
  v6 = sub_22F73F690();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a1;
  v10 = sub_22F742010();
  v12 = v11;
  v13 = *a2;
  v14 = sub_22F15280C(&unk_2843DDFB0);
  v15 = v10;
  v16 = sub_22F2D67A0(v14, v10, v12, v13);

  if (v16)
  {
  }

  else
  {
    v44 = a2;
    v45 = v3;
    v43 = v15;
    v17 = sub_22F740DF0();
    v18 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v18;
    sub_22F386DBC(v17, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, &v49);
    v20 = v49;
    v21 = a1[1];
    v22 = a1[2];
    v23 = sub_22F740DF0();
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v20;
    sub_22F386DBC(v23, 1701667182, 0xE400000000000000, v24, &v49);
    v25 = v49;
    v42 = type metadata accessor for PublicEvent();
    v26 = *(v42 + 24);
    sub_22F73F060();
    sub_22F73F620();
    v27 = sub_22F741350();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v25;
    sub_22F386DBC(v27, 0x7461447472617473, 0xE900000000000065, v28, &v49);
    v29 = v49;
    v30 = v47;
    v31 = *(v46 + 8);
    v31(v9, v47);
    sub_22F73F030();
    sub_22F73F620();
    v32 = sub_22F741350();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v29;
    sub_22F386DBC(v32, 0x65746144646E65, 0xE700000000000000, v33, &v49);
    v34 = v49;
    v31(v9, v30);
    v16 = *(a1 + *(v42 + 40));
    v35 = sub_22F73EE70();
    if (v16 < 1)
    {
      v37 = v45;
    }

    else
    {
      if (v16 != v35)
      {
        v16 = sub_22F7414B0();
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v34;
        sub_22F386DBC(v16, 0xD000000000000012, 0x800000022F79C680, v36, &v49);
      }

      v37 = v45;
    }

    v38 = sub_22F2B5478(&unk_2843DDFD8);
    v39 = v48;
    if (!v37)
    {
      v16 = v38;
      sub_22F2D601C(v38);
      [v39 insertNode_];
    }
  }

  return v16;
}

uint64_t sub_22F388DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v28 = a2;
  v7 = v6;
  v27 = a1;
  if (a4)
  {
    v26[0] = 95;
    v26[1] = 0xE100000000000000;

    MEMORY[0x231900B10](a3, a4);
    MEMORY[0x231900B10](95, 0xE100000000000000);

    v15 = v27;
    v14 = v28;
  }

  else
  {

    v14 = a2;
    v15 = a1;
  }

  v16 = *a5;
  v17 = sub_22F15280C(&unk_2843DE000);
  v18 = sub_22F2D67A0(v17, v15, v14, v16);

  if (v18)
  {
  }

  else
  {
    v29 = a6;
    v19 = sub_22F740DF0();
    v20 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v20;
    sub_22F386DBC(v19, 0xD000000000000010, 0x800000022F792110, isUniquelyReferenced_nonNull_native, v26);
    v18 = v26[0];
    v22 = sub_22F740DF0();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = v18;
    sub_22F386DBC(v22, 1701667182, 0xE400000000000000, v23, v26);
    v24 = sub_22F2B5478(&unk_2843DE028);
    if (!v7)
    {
      v18 = v24;
      sub_22F2D601C(v24);
      [v29 insertNode_];
    }
  }

  return v18;
}

void sub_22F388F80(unint64_t a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v227 = a3;
  v223 = a2;
  v215 = type metadata accessor for PublicEvent();
  v213 = *(v215 - 1);
  v6 = *(v213 + 64);
  MEMORY[0x28223BE20](v215);
  v217 = (&v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v212 = &v198 - v9;
  v226 = sub_22F73F690();
  v10 = *(v226 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v226);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v222 = &v198 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v224 = &v198 - v18;
  v234 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v214 = v13;
    v211 = v4;
    v13 = 0;
    v20 = a1 & 0xC000000000000001;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v218 = (v10 + 4);
    v225 = (v10 + 1);
    v10 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v220 = i;
    v221 = a1;
    v219 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x2319016F0](v13, a1, v17);
      }

      else
      {
        if (v13 >= *(v21 + 16))
        {
          goto LABEL_29;
        }

        v22 = *(a1 + 8 * v13 + 32);
      }

      v4 = v22;
      v23 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v24 = [v22 v10[394]];
      if (v24)
      {
        v25 = v24;
        v26 = [v4 creationDate];
        if (!v26)
        {

          goto LABEL_5;
        }

        v27 = v20;
        v28 = v224;
        v29 = v222;
        v30 = v26;
        sub_22F73F640();

        v31 = v226;
        (*v218)(v28, v29, v226);
        [v25 coordinate];
        v33 = v32;
        [v25 coordinate];
        v35 = v34;
        if (([objc_opt_self() locationIsCoarse_] & 1) != 0 || (objc_msgSend(v25, sel_coordinate), !CLLocationCoordinate2DIsValid(v235)))
        {
          (*v225)(v28, v31);

          v20 = v27;
LABEL_18:
          i = v220;
        }

        else
        {
          v36 = v28;
          v20 = v27;
          if (v33 == 0.0 && v35 == 0.0)
          {
            (*v225)(v36, v31);

            goto LABEL_18;
          }

          v37 = v214;
          sub_22F73F550();
          v38 = v31;
          v39 = sub_22F73F660();
          v216 = *v225;
          v216(v37, v38);
          v40 = v39 == 1;
          v41 = v36;
          i = v220;
          if (v40)
          {
            sub_22F73F570();
            v42 = sub_22F73F660();

            v43 = v37;
            v44 = v226;
            v45 = v216;
            v216(v43, v226);
            v45(v224, v44);
            if (v42 == 1)
            {
              sub_22F741BA0();
              v46 = *(v234 + 16);
              sub_22F741BE0();
              sub_22F741BF0();
              sub_22F741BB0();
            }

            else
            {
            }
          }

          else
          {

            v216(v41, v226);
          }
        }

        a1 = v221;
        v21 = v219;
        v10 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
        goto LABEL_5;
      }

LABEL_5:
      ++v13;
      if (v23 == i)
      {
        v4 = v211;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_31:
  v47 = sub_22F1E319C();
  v49 = v48;

  type metadata accessor for PublicEventGeoQuery();
  swift_allocObject();

  v51 = sub_22F237750(v50);
  sub_22F38880C(v51);
  v53 = v4;
  v54 = v217;
  if (v4)
  {
    goto LABEL_32;
  }

  v55 = 0;
  v56 = v52 + 64;
  v57 = 1 << *(v52 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(v52 + 64);
  v60 = (v57 + 63) >> 6;
  v221 = "_TtC11PhotosGraph12GraphBuilder";
  v208 = v52 + 64;
  v207 = v60;
  if (!v59)
  {
    while (1)
    {
LABEL_39:
      v61 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_112;
      }

      if (v61 >= v60)
      {
        break;
      }

      v59 = *(v56 + 8 * v61);
      ++v55;
      if (v59)
      {
        goto LABEL_42;
      }
    }

LABEL_32:

LABEL_33:

    return;
  }

LABEL_38:
  v61 = v55;
LABEL_42:
  v206 = (v59 - 1) & v59;
  v205 = v61;
  v62 = __clz(__rbit64(v59)) | (v61 << 6);
  v210 = v52;
  v63 = (*(v52 + 48) + 16 * v62);
  v64 = *(*(v52 + 56) + 8 * v62);
  v65 = v63[1];
  v202 = *v63;
  v66 = (v64 + 56);
  v67 = 1 << *(v64 + 32);
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  else
  {
    v68 = -1;
  }

  v69 = v68 & *(v64 + 56);
  v216 = ((v67 + 63) >> 6);
  v214 = v65;

  v70 = 0;
  v211 = (v64 + 56);
  while (1)
  {
    if (!v69)
    {
      while (1)
      {
        v71 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_113;
        }

        if (v71 >= v216)
        {
          break;
        }

        v69 = v66[v71];
        ++v70;
        if (v69)
        {
          v70 = v71;
          goto LABEL_51;
        }
      }

      v55 = v205;
      v52 = v210;
      v56 = v208;
      v60 = v207;
      v59 = v206;
      if (!v206)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

LABEL_51:
    v204 = v69;
    v203 = v70;
    v209 = v64;
    v72 = v212;
    sub_22F38A9A8(*(v64 + 48) + *(v213 + 72) * (__clz(__rbit64(v69)) | (v70 << 6)), v212);
    sub_22F38AA0C(v72, v54);
    v225 = sub_22F388A30(v54, v223, v227);
    if (v53)
    {
      sub_22F38AA70(v54);

      goto LABEL_33;
    }

    v218 = v49;
    v219 = v47;
    v226 = 0;
    v220 = v51;
    v73 = *(v54 + v215[7]);
    v224 = v73[2];
    if (v224)
    {
      v74 = 0;
      v75 = v73 + 8;
      v222 = v73;
      while (v74 < v73[2])
      {
        v77 = *(v75 - 4);
        v76 = *(v75 - 3);
        v79 = *(v75 - 2);
        v78 = *(v75 - 1);
        v80 = *v75;
        v81 = *v223;
        swift_bridgeObjectRetain_n();

        v82 = sub_22F15280C(&unk_2843DE050);
        v83 = sub_22F2D67A0(v82, v78, v80, v81);

        if (v83)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v84 = sub_22F740DF0();
          v85 = MEMORY[0x277D84F98];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v234 = v85;
          sub_22F386DBC(v84, 0xD000000000000010, v221 | 0x8000000000000000, isUniquelyReferenced_nonNull_native, &v234);
          v87 = v234;
          v88 = sub_22F7414B0();
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v87;
          sub_22F386DBC(v88, 0x6C6576656CLL, 0xE500000000000000, v89, &v234);
          v90 = v234;
          v91 = sub_22F740DF0();
          v92 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v90;
          sub_22F386DBC(v91, 0x79726F6765746163, 0xE800000000000000, v92, &v234);
          v93 = v226;
          v94 = sub_22F2B5478(&unk_2843DE078);
          v226 = v93;
          if (v93)
          {
LABEL_105:

            sub_22F38AA70(v217);
            return;
          }

          v95 = v94;
          sub_22F2D601C(v94);
          v83 = v95;
          [v227 insertNode_];
        }

        v96 = v225;
        v97 = v83;
        v98 = sub_22F1515F8(&unk_2843DE0A0);
        sub_22F1DF3B0(&unk_2843DE0C0);
        v99 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v100 = sub_22F740C80();
        v101 = [v99 kgPropertiesWithMAProperties_];

        if (!v101)
        {
LABEL_102:

          sub_22F2B5954();
          swift_allocError();
          swift_willThrow();

          goto LABEL_103;
        }

        ++v74;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v102 = sub_22F740CA0();

        v103 = type metadata accessor for Edge();
        v104 = objc_allocWithZone(v103);
        *&v104[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v104[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v98;
        *&v104[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v102;
        *&v104[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v96;
        *&v104[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v97;
        v233.receiver = v104;
        v233.super_class = v103;
        v105 = objc_msgSendSuper2(&v233, sel_init);
        [v227 insertEdge_];

        v75 += 5;
        v73 = v222;
        if (v224 == v74)
        {
          goto LABEL_61;
        }
      }

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
      return;
    }

LABEL_61:
    v106 = *(v217 + v215[8]);
    v224 = v106[2];
    if (v224)
    {
      v107 = 0;
      v108 = v106 + 8;
      v222 = v106;
      while (v107 < v106[2])
      {
        v110 = *(v108 - 4);
        v109 = *(v108 - 3);
        v112 = *(v108 - 2);
        v111 = *(v108 - 1);
        v113 = *v108;
        v114 = *v223;
        swift_bridgeObjectRetain_n();

        v115 = sub_22F15280C(&unk_2843DE0D0);
        v116 = sub_22F2D67A0(v115, v111, v113, v114);

        if (v116)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v117 = sub_22F740DF0();
          v118 = MEMORY[0x277D84F98];
          v119 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v118;
          sub_22F386DBC(v117, 0xD000000000000010, v221 | 0x8000000000000000, v119, &v234);
          v120 = v234;
          v121 = sub_22F7414B0();
          v122 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v120;
          sub_22F386DBC(v121, 0x6C6576656CLL, 0xE500000000000000, v122, &v234);
          v123 = v234;
          v124 = sub_22F740DF0();
          v125 = swift_isUniquelyReferenced_nonNull_native();
          v234 = v123;
          sub_22F386DBC(v124, 0x79726F6765746163, 0xE800000000000000, v125, &v234);
          v126 = v226;
          v127 = sub_22F2B5478(&unk_2843DE0F8);
          v226 = v126;
          if (v126)
          {
            goto LABEL_105;
          }

          v128 = v127;
          sub_22F2D601C(v127);
          v116 = v128;
          [v227 insertNode_];
        }

        v96 = v225;
        v97 = v116;
        v129 = sub_22F1515F8(&unk_2843DE120);
        sub_22F1DF3B0(&unk_2843DE140);
        v130 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v131 = sub_22F740C80();
        v132 = [v130 kgPropertiesWithMAProperties_];

        if (!v132)
        {
          goto LABEL_102;
        }

        ++v107;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v133 = sub_22F740CA0();

        v134 = type metadata accessor for Edge();
        v135 = objc_allocWithZone(v134);
        *&v135[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v135[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v129;
        *&v135[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v133;
        *&v135[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v96;
        *&v135[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v97;
        v232.receiver = v135;
        v232.super_class = v134;
        v136 = objc_msgSendSuper2(&v232, sel_init);
        [v227 insertEdge_];

        v108 += 5;
        v106 = v222;
        if (v224 == v107)
        {
          goto LABEL_70;
        }
      }

      goto LABEL_114;
    }

LABEL_70:
    v137 = *(*(v217 + v215[9]) + 16);
    v224 = *(v217 + v215[9]);

    v222 = v137;
    if (v137)
    {
      v138 = 0;
      v139 = (v224 + 56);
      while (v138 < *(v224 + 16))
      {
        v140 = *(v139 - 1);
        v141 = *v139;
        v142 = *(v139 - 3);
        v143 = *(v139 - 2);

        v144 = v140;
        v145 = v226;
        v146 = sub_22F388DA8(v142, v143, v144, v141, v223, v227);
        v226 = v145;
        if (v145)
        {
          sub_22F38AA70(v217);

          return;
        }

        v147 = v146;

        v148 = v225;
        v149 = v147;
        v150 = sub_22F1515F8(&unk_2843DE150);
        sub_22F1DF3B0(&unk_2843DE170);
        v151 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v152 = sub_22F740C80();
        v153 = [v151 kgPropertiesWithMAProperties_];

        if (!v153)
        {

          sub_22F2B5954();
          swift_allocError();
          swift_willThrow();

          goto LABEL_103;
        }

        ++v138;
        sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
        v154 = sub_22F740CA0();

        v155 = type metadata accessor for Edge();
        v156 = objc_allocWithZone(v155);
        *&v156[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
        *&v156[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v150;
        *&v156[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v154;
        *&v156[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v148;
        *&v156[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v149;
        v231.receiver = v156;
        v231.super_class = v155;
        v157 = objc_msgSendSuper2(&v231, sel_init);
        [v227 insertEdge_];

        v139 += 4;
        if (v222 == v138)
        {
          goto LABEL_76;
        }
      }

      goto LABEL_115;
    }

LABEL_76:

    v158 = *v223;
    v54 = v217;
    v234 = *(v217 + v215[11]);
    v159 = sub_22F742010();
    v161 = v160;
    v162 = sub_22F15280C(&unk_2843DE180);
    v224 = v158;
    v163 = sub_22F2D67A0(v162, v159, v161, v158);

    v53 = v226;
    v47 = v219;
    v49 = v218;
    if (v163)
    {
      v201 = v225;
      v222 = v163;
      v164 = sub_22F1515F8(&unk_2843DE1A8);
      sub_22F1DF3B0(&unk_2843DE1C8);
      v165 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
      v166 = sub_22F740C80();
      v167 = [v165 kgPropertiesWithMAProperties_];

      if (!v167)
      {

        sub_22F2B5954();
        swift_allocError();
        swift_willThrow();
        v196 = v201;

        v197 = v222;

        sub_22F38AA70(v54);
        return;
      }

      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
      v168 = sub_22F740CA0();

      v169 = type metadata accessor for Edge();
      v170 = objc_allocWithZone(v169);
      *&v170[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
      *&v170[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v164;
      *&v170[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v168;
      *&v170[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v201;
      v171 = v222;
      *&v170[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v222;
      v228.receiver = v170;
      v228.super_class = v169;
      v172 = objc_msgSendSuper2(&v228, sel_init);
      [v227 insertEdge_];
    }

    v51 = v220;
    if (!*(v47 + 16))
    {
      goto LABEL_96;
    }

    v173 = sub_22F1229E8(v202, v214);
    if ((v174 & 1) == 0)
    {

LABEL_96:

      v66 = v211;
      goto LABEL_98;
    }

    v175 = *(*(v47 + 56) + 8 * v173);

    v176 = v175 >> 62 ? sub_22F741A00() : *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v66 = v211;
    if (v176)
    {
      break;
    }

LABEL_97:

    v54 = v217;
LABEL_98:
    v69 = (v204 - 1) & v204;
    sub_22F38AA70(v54);
    v64 = v209;
    v70 = v203;
  }

  v177 = 0;
  v201 = (v175 & 0xC000000000000001);
  v198 = v175 & 0xFFFFFFFFFFFFFF8;
  v199 = v175;
  v200 = v176;
  while (1)
  {
    v226 = v53;
    if (v201)
    {
      v178 = MEMORY[0x2319016F0](v177, v175);
      v179 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_116;
      }
    }

    else
    {
      if (v177 >= *(v198 + 16))
      {
        goto LABEL_117;
      }

      v178 = *(v175 + 8 * v177 + 32);
      v179 = v177 + 1;
      if (__OFADD__(v177, 1))
      {
        goto LABEL_116;
      }
    }

    v180 = [v178 localIdentifier];
    v181 = sub_22F740E20();
    v183 = v182;

    v184 = sub_22F1530EC();
    v234 = MEMORY[0x231901000](1, &type metadata for Node.Label, v184);
    sub_22F10DF08(&v230, byte_2843DE1F8);
    v185 = sub_22F2D67A0(v234, v181, v183, v224);

    if (v185)
    {
      break;
    }

LABEL_85:

    ++v177;
    v40 = v179 == v200;
    v51 = v220;
    v53 = v226;
    v47 = v219;
    v49 = v218;
    v66 = v211;
    if (v40)
    {
      goto LABEL_97;
    }
  }

  v222 = v225;
  v186 = v185;
  v187 = sub_22F1515F8(&unk_2843DE200);
  sub_22F1DF3B0(&unk_2843DE220);
  v188 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
  v189 = sub_22F740C80();
  v190 = [v188 kgPropertiesWithMAProperties_];

  if (v190)
  {
    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v191 = sub_22F740CA0();

    v192 = type metadata accessor for Edge();
    v193 = objc_allocWithZone(v192);
    *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v187;
    *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v191;
    *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v186;
    *&v193[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v222;
    v229.receiver = v193;
    v229.super_class = v192;
    v194 = objc_msgSendSuper2(&v229, sel_init);
    [v227 insertEdge_];

    v178 = v194;
    v175 = v199;
    goto LABEL_85;
  }

  sub_22F2B5954();
  swift_allocError();
  swift_willThrow();

  v195 = v222;
LABEL_103:

  sub_22F38AA70(v217);
}

unint64_t sub_22F38A91C()
{
  result = qword_27DAB3D78;
  if (!qword_27DAB3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D78);
  }

  return result;
}

uint64_t sub_22F38A9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F38AA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PublicEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F38AA70(uint64_t a1)
{
  v2 = type metadata accessor for PublicEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F38AACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F12094C;

  return sub_22F386854(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_22F38ABA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22F20B7C0;

  return sub_22F33C808(a1, v5);
}

uint64_t objectdestroy_63Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  v4 = *(v1 + 40);

  v5 = *(v1 + 48);

  a1(*(v1 + 56));

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_22F38ACC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22F20B7C0;

  return sub_22F3864B0(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_22F38ADA8()
{
  result = qword_27DAB3DC0;
  if (!qword_27DAB3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3DC0);
  }

  return result;
}

uint64_t sub_22F38AE04()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0x6574656D61726150, 0xEA00000000002072);
  swift_beginAccess();
  v1 = v0[2];
  v2 = v0[3];

  MEMORY[0x231900B10](v1, v2);

  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C880);
  v3 = v0[4];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002ALL, 0x800000022F79C8B0);
  v4 = v0[5];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000024, 0x800000022F79C8E0);
  v5 = v0[6];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002CLL, 0x800000022F79C910);
  v6 = v0[7];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD00000000000002ALL, 0x800000022F79C940);
  v7 = v0[8];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79C970);
  v8 = v0[9];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C9A0);
  v9 = v0[10];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79C9D0);
  v10 = v0[11];
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000027, 0x800000022F79CA00);
  v11 = v0[12];
  sub_22F7413B0();
  MEMORY[0x231900B10](93, 0xE100000000000000);
  return 0;
}

uint64_t sub_22F38B09C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t (*sub_22F38B0F8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_22F38B154(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v94 = sub_22F73F7A0();
  v7 = *(v94 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24B8, &qword_22F779E68);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v82 - v12;
  v14 = sub_22F73F7C0();
  v95 = *(v14 - 8);
  v15 = *(v95 + 64);
  MEMORY[0x28223BE20](v14);
  v92 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 bestAddressNode];
  v87 = a4;
  if (v17)
  {
    v18 = v17;
    v19 = [v17 collection];

    v20 = [v19 languageNodes];
    v21 = [v20 locales];

    sub_22F38C710(&qword_2810AC6E0, MEMORY[0x277CC9788]);
    v22 = sub_22F741420();
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
  }

  v23 = v22 + 56;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 56);
  v27 = (v24 + 63) >> 6;
  v89 = (v7 + 8);
  v90 = v95 + 16;
  v88 = (v95 + 8);

  v28 = 0;
  v96 = MEMORY[0x277D84F90];
  v91 = a3;
LABEL_7:
  v29 = v28;
  if (!v26)
  {
    goto LABEL_9;
  }

  do
  {
    v28 = v29;
LABEL_12:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v22;
    v32 = v92;
    (*(v95 + 16))(v92, *(v22 + 48) + *(v95 + 72) * (v30 | (v28 << 6)), v14);
    v33 = v14;
    v34 = v93;
    sub_22F73F7B0();
    sub_22F73F790();
    (*v89)(v34, v94);
    v35 = sub_22F73F710();
    v36 = v13;
    v37 = *(v35 - 8);
    if ((*(v37 + 48))(v36, 1, v35) != 1)
    {
      v38 = sub_22F73F700();
      v83 = v39;
      v84 = v38;
      v40 = *v88;
      v85 = v33;
      v40(v32, v33);
      v41 = *(v37 + 8);
      v86 = v36;
      v41(v36, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_22F13E1A8(0, *(v96 + 2) + 1, 1, v96);
      }

      v22 = v31;
      a3 = v91;
      v43 = *(v96 + 2);
      v42 = *(v96 + 3);
      if (v43 >= v42 >> 1)
      {
        v96 = sub_22F13E1A8((v42 > 1), v43 + 1, 1, v96);
      }

      v44 = v96;
      *(v96 + 2) = v43 + 1;
      v45 = &v44[16 * v43];
      v46 = v83;
      *(v45 + 4) = v84;
      *(v45 + 5) = v46;
      v14 = v85;
      v13 = v86;
      goto LABEL_7;
    }

    (*v88)(v32, v33);
    sub_22F120ADC(v36, &qword_27DAB24B8, &qword_22F779E68);
    v29 = v28;
    v13 = v36;
    v14 = v33;
    v22 = v31;
    a3 = v91;
  }

  while (v26);
  while (1)
  {
LABEL_9:
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v28);
    ++v29;
    if (v26)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v96 + 2);
  if (!v13)
  {
    v56 = 0;
    goto LABEL_47;
  }

  v14 = *(v96 + 4);
  v23 = *(v96 + 5);

  sub_22F107E14(0);
  v47 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = *a3;
  v49 = v97;
  *a3 = 0x8000000000000000;
  v22 = sub_22F1229E8(v14, v23);
  v51 = *(v49 + 16);
  v52 = (v50 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    goto LABEL_50;
  }

  LOBYTE(v28) = v50;
  if (*(v49 + 24) < v53)
  {
    sub_22F127068(v53, isUniquelyReferenced_nonNull_native);
    v49 = v97;
    v54 = sub_22F1229E8(v14, v23);
    if ((v28 & 1) == (v55 & 1))
    {
      v22 = v54;
      goto LABEL_27;
    }

LABEL_53:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
LABEL_27:
    v57 = *a3;
    *a3 = v49;

    v58 = *a3;
    if (v28)
    {
    }

    else
    {
      v58[(v22 >> 6) + 8] |= 1 << v22;
      v59 = (v58[6] + 16 * v22);
      *v59 = v14;
      v59[1] = v23;
      *(v58[7] + 4 * v22) = 0;
      v60 = v58[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_51;
      }

      v58[2] = v62;
    }

    v63 = 1.0 / v87;
    *(v58[7] + 4 * v22) = v63 + *(v58[7] + 4 * v22);
    if (v13 == 1)
    {
      break;
    }

    v64 = v96;
    v65 = (v96 + 56);
    v66 = 1;
    while (v66 < *(v64 + 2))
    {
      v14 = *(v65 - 1);
      v23 = *v65;

      sub_22F107E14(sub_22F38B14C);
      v67 = *a3;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v97 = *a3;
      v69 = v97;
      *a3 = 0x8000000000000000;
      v22 = sub_22F1229E8(v14, v23);
      v71 = *(v69 + 16);
      v72 = (v70 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_50;
      }

      LOBYTE(v28) = v70;
      if (*(v69 + 24) >= v73)
      {
        if ((v68 & 1) == 0)
        {
          sub_22F1350D0();
          v69 = v97;
        }
      }

      else
      {
        sub_22F127068(v73, v68);
        v69 = v97;
        v74 = sub_22F1229E8(v14, v23);
        if ((v28 & 1) != (v75 & 1))
        {
          goto LABEL_53;
        }

        v22 = v74;
      }

      v76 = *a3;
      *a3 = v69;

      v77 = *a3;
      if (v28)
      {
      }

      else
      {
        v77[(v22 >> 6) + 8] |= 1 << v22;
        v78 = (v77[6] + 16 * v22);
        *v78 = v14;
        v78[1] = v23;
        *(v77[7] + 4 * v22) = 0;
        v79 = v77[2];
        v61 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v61)
        {
          goto LABEL_51;
        }

        v77[2] = v80;
      }

      ++v66;
      *(v77[7] + 4 * v22) = v63 + *(v77[7] + 4 * v22);
      v65 += 2;
      v64 = v96;
      if (v13 == v66)
      {
        v56 = sub_22F38B14C;
        goto LABEL_47;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    sub_22F1350D0();
    v49 = v97;
  }

  v56 = sub_22F38B14C;
LABEL_47:

  return sub_22F107E14(v56);
}

void sub_22F38B978(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 meaningLabels];
  v5 = sub_22F741420();

  v6 = 0;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v11 = v6;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(v5 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_22F740DF0();

      [a3 addObject_];

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v5 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22F38BAC8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = [a1 universalDateInterval];
  if (v9)
  {
    v10 = v9;
    sub_22F73F020();

    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_22F299354(v6, v8);
  sub_22F73F090();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_22F120ADC(v8, &qword_27DAB40E0, &unk_22F779200);
    return 0;
  }

  else
  {
    sub_22F73F080();
    v15 = v14;
    (*(v12 + 8))(v8, v11);
    return v15;
  }
}

uint64_t sub_22F38BCC4(void *a1)
{
  v1 = a1;
  v9 = MEMORY[0x277D84F98];
  v2 = [a1 count];
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_22F38C708;
  *(v4 + 24) = v3;
  aBlock[4] = sub_22F2D4D54;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_13_5;
  v5 = _Block_copy(aBlock);

  [v1 enumerateUsingBlock_];
  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_22F38BE3C(void *a1)
{
  v2 = sub_22F73F380();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA940]) init];
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F38C6E8;
  *(v9 + 24) = v8;
  v22 = sub_22F250854;
  v23 = v9;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v21 = sub_22F107E24;
  *(&v21 + 1) = &block_descriptor_45;
  v10 = _Block_copy(&aBlock);
  v11 = v7;

  [a1 enumerateUsingBlock_];
  _Block_release(v10);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
    return result;
  }

  sub_22F7417C0();
  sub_22F38C710(&qword_2810AC720, MEMORY[0x277CC9178]);
  sub_22F7418A0();
  if (*(&v21 + 1))
  {
    sub_22F107D08(&aBlock, &v18);
    sub_22F7418A0();
    while (v17)
    {
      sub_22F107D08(&v16, &aBlock);
      __swift_project_boxed_opaque_existential_1(&v18, v19);
      v13 = [v11 countForObject_];
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_1(&aBlock, *(&v21 + 1));
      v14 = [v11 countForObject_];
      swift_unknownObjectRelease();
      if (v13 >= v14)
      {
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v18);
        sub_22F107D08(&aBlock, &v18);
      }

      sub_22F7418A0();
    }

    (*(v3 + 8))(v6, v2);
    sub_22F120ADC(&v16, &qword_27DAB0C28, &qword_22F778980);
    sub_22F107D08(&v18, &aBlock);
    if (*(&v21 + 1))
    {
      if (swift_dynamicCast())
      {
        v15 = v18;

        return v15;
      }

      goto LABEL_14;
    }
  }

  else
  {

    (*(v3 + 8))(v6, v2);
    sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
    aBlock = 0u;
    v21 = 0u;
  }

  sub_22F120ADC(&aBlock, &qword_27DAB0C28, &qword_22F778980);
LABEL_14:

  return 0;
}

uint64_t sub_22F38C26C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MomentNodeCollectionMusicCurationFeatures - extractMusicCurationFeatures", 72, 2u, 0, 1, qword_2810B4E90, v45);
  v5 = sub_22F7416B0();
  v7 = v6;
  v8 = sub_22F38BAC8(a1);
  v10 = v9;
  v11 = sub_22F38BCC4(a1);
  sub_22F7416A0();
  if (v2)
  {

    sub_22F1B2BBC(0);
  }

  else
  {
    v44 = v5;
    v41 = v8;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D90);

    v13 = sub_22F740B70();
    v14 = sub_22F7415C0();

    v42 = a2;
    v43 = v11;
    v40 = v10;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46 = v16;
      *v15 = 136315138;
      v17 = sub_22F740CB0();
      v19 = v7;
      v20 = sub_22F145F20(v17, v18, &v46);

      *(v15 + 4) = v20;
      v7 = v19;
      _os_log_impl(&dword_22F0FC000, v13, v14, "[MemoriesMusic] [FeatureExtraction] (MomentNodeCollectionMusicCurationFeatureExtractor) Extracted momentRatioByLanguageCode: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x2319033A0](v16, -1, -1);
      MEMORY[0x2319033A0](v15, -1, -1);
    }

    v21 = sub_22F38BE3C(a1);
    v23 = v22;
    sub_22F7416A0();

    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      if (v23)
      {
        v29 = v21;
      }

      else
      {
        v29 = 7104878;
      }

      v39 = v7;
      if (v23)
      {
        v30 = v23;
      }

      else
      {
        v30 = 0xE300000000000000;
      }

      v38 = v21;
      v31 = sub_22F145F20(v29, v30, &v46);
      v7 = v39;

      *(v27 + 4) = v31;
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] [FeatureExtraction] (MomentNodeCollectionMusicCurationFeatureExtractor) Extracted mostFrequentMeaningLabel: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v32 = v28;
      v33 = v38;
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    else
    {

      v33 = v21;
    }

    v34 = [a1 publicEventNodes];
    v35 = [v34 performerNodes];

    v36 = [v35 performerIdentifiers];
    v37 = sub_22F741420();

    sub_22F1B2BBC(0);

    *v42 = v41;
    *(v42 + 8) = v40 & 1;
    *(v42 + 16) = v37;
    *(v42 + 24) = v43;
    *(v42 + 32) = v33;
    *(v42 + 40) = v23;
  }

  return result;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F38C710(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22F38C760(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v45 = MEMORY[0x277D84F90];
  sub_22F146D7C(0, v1, 0);
  v2 = v45;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = sub_22F741980();
  v7 = *(v3 + 36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1280, &unk_22F778600);
  v40 = v3;
  v9 = 0;
  v36 = v3 + 72;
  v37 = v1;
  v38 = v7;
  v39 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_24;
    }

    if (v7 != *(v3 + 36))
    {
      goto LABEL_25;
    }

    v41 = v9;
    v12 = v2;
    v13 = (*(v3 + 48) + 16 * v6);
    v14 = v13[1];
    v15 = *(*(v3 + 56) + 8 * v6);
    v42 = *v13;
    v43 = v14;
    swift_bridgeObjectRetain_n();
    v16 = v15;
    [v16 doubleValue];
    v44 = v17;
    v18 = sub_22F741DF0();

    v19 = v42;
    v20 = v43;
    v21 = v44;

    result = sub_22F1229E8(v19, v20);
    if (v22)
    {
      goto LABEL_26;
    }

    v18[(result >> 6) + 8] |= 1 << result;
    v23 = (v18[6] + 16 * result);
    *v23 = v19;
    v23[1] = v20;
    *(v18[7] + 8 * result) = v21;
    v24 = v18[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_27;
    }

    v18[2] = v26;

    sub_22F38EB70(&v42);

    v2 = v12;
    v45 = v12;
    v28 = *(v12 + 16);
    v27 = *(v12 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_22F146D7C((v27 > 1), v28 + 1, 1);
      v2 = v45;
    }

    *(v2 + 16) = v28 + 1;
    *(v2 + 8 * v28 + 32) = v18;
    v3 = v40;
    v10 = 1 << *(v40 + 32);
    if (v6 >= v10)
    {
      goto LABEL_28;
    }

    v4 = v39;
    v29 = *(v39 + 8 * v11);
    if ((v29 & (1 << v6)) == 0)
    {
      goto LABEL_29;
    }

    LODWORD(v7) = v38;
    if (v38 != *(v40 + 36))
    {
      goto LABEL_30;
    }

    v30 = v29 & (-2 << (v6 & 0x3F));
    if (v30)
    {
      v10 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v11 << 6;
      v32 = v11 + 1;
      v33 = (v36 + 8 * v11);
      while (v32 < (v10 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          result = sub_22F107D18(v6, v38, 0);
          v10 = __clz(__rbit64(v34)) + v31;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v38, 0);
    }

LABEL_4:
    v9 = v41 + 1;
    v6 = v10;
    if (v41 + 1 == v37)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

id FlexMusicCuration.__allocating_init(curatorVersion:bestSongSuggestions:secondarySongSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = a1;
  *&v7[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = a2;
  *&v7[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FlexMusicCuration.replaceFirstSongInBestSongSuggestions(with:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_2810A91C8;
  v8 = sub_22F740DF0();
  v9 = [v7 fetchSongWithUID_];

  p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22F771EB0;
    *(v11 + 32) = v9;
    v12 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    v13 = v9;

    v14 = sub_22F2E4B00(1, v12);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v32 = v11;
    v21 = v18;
    p_prots = (&OBJC_PROTOCOL___KGPropertyTypeProtocol + 16);
    sub_22F1531DC(v14, v16, v21, v20);

    swift_unknownObjectRelease();
    v22 = v11;
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D90);

    v24 = sub_22F740B70();
    v25 = sub_22F7415E0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v32 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22F145F20(a1, a2, &v32);
      _os_log_impl(&dword_22F0FC000, v24, v25, "[FlexMusicCuration] Unable to resolve Flex song with ID: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    v22 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  }

  v28 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_curatorVersion);
  v29 = *(v3 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  v30 = objc_allocWithZone(ObjectType);
  *&v30[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = v28;
  *(&p_prots[443]->count + v30) = v22;
  *&v30[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v29;
  v33.receiver = v30;
  v33.super_class = ObjectType;

  return objc_msgSendSuper2(&v33, sel_init);
}

id sub_22F38CE48(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v4 = sub_22F741160();

  return v4;
}

id FlexMusicCuration.init(curatorVersion:bestSongSuggestions:secondarySongSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PGFlexMusicCuration_curatorVersion] = a1;
  *&v3[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = a2;
  *&v3[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

Swift::String_optional __swiftcall FlexMusicCuration.jsonRepresentation()()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79CA80);
  v2 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v32 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    }

    v3 = sub_22F741A00();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v35 = MEMORY[0x277D84F90];
    v4 = sub_22F146454(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v34 = v0;
    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2319016F0](v6, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = [v7 uid];
      v9 = sub_22F740E20();
      v11 = v10;

      MEMORY[0x231900B10](v9, v11);

      MEMORY[0x231900B10](34, 0xE100000000000000);
      swift_unknownObjectRelease();
      v13 = *(v35 + 16);
      v12 = *(v35 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22F146454((v12 > 1), v13 + 1, 1);
      }

      ++v6;
      *(v35 + 16) = v13 + 1;
      v14 = v35 + 16 * v13;
      *(v14 + 32) = 34;
      *(v14 + 40) = 0xE100000000000000;
    }

    while (v3 != v6);
    v1 = v34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v15 = sub_22F740DA0();
  v17 = v16;

  MEMORY[0x231900B10](v15, v17);

  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79CAA0);
  v18 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v18 >> 62)
  {
    v19 = sub_22F741A00();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v36 = MEMORY[0x277D84F90];
    v4 = sub_22F146454(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2319016F0](v20, v18);
        }

        else
        {
          v21 = *(v18 + 8 * v20 + 32);
          swift_unknownObjectRetain();
        }

        v22 = [v21 uid];
        v23 = sub_22F740E20();
        v25 = v24;

        MEMORY[0x231900B10](v23, v25);

        MEMORY[0x231900B10](34, 0xE100000000000000);
        swift_unknownObjectRelease();
        v27 = *(v36 + 16);
        v26 = *(v36 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_22F146454((v26 > 1), v27 + 1, 1);
        }

        ++v20;
        *(v36 + 16) = v27 + 1;
        v28 = v36 + 16 * v27;
        *(v28 + 32) = 34;
        *(v28 + 40) = 0xE100000000000000;
      }

      while (v19 != v20);
      goto LABEL_24;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  v29 = sub_22F740DA0();
  v31 = v30;

  MEMORY[0x231900B10](v29, v31);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  v4 = 0;
  v5 = 0xE000000000000000;
LABEL_31:
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall FlexMusicCuration.expandedJsonRepresentation()()
{
  v1 = v0;
  v54[17] = *MEMORY[0x277D85DE8];
  v2 = sub_22F740E80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51[2] = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v5 = sub_22F740B90();
    v51[1] = __swift_project_value_buffer(v5, qword_2810B4D90);
    v6 = sub_22F740B70();
    v7 = sub_22F7415D0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22F0FC000, v6, v7, "[MemoriesMusic] Expanding Flex music songs metadata", v8, 2u);
      MEMORY[0x2319033A0](v8, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F770DF0;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x800000022F79CAD0;
    v10 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v48 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
      }

      v11 = sub_22F741A00();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = MEMORY[0x277D84F90];
    v53 = v1;
    v51[3] = inited + 32;
    v52 = inited;
    if (!v11)
    {
      break;
    }

    v54[0] = MEMORY[0x277D84F90];
    sub_22F146D3C(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
    }

    v13 = 0;
    v12 = v54[0];
    v1 = v10 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2319016F0](v13, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v15 = *(v10 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      v16 = sub_22F38E2F8(v15);
      swift_unknownObjectRelease();
      v54[0] = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_22F146D3C((v17 > 1), v18 + 1, 1);
        v12 = v54[0];
      }

      v12[2] = v18 + 1;
      v12[v18 + 4] = v16;
      ++v13;
      if (v14 == v11)
      {
        inited = v52;
        v1 = v53;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

LABEL_18:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  *(inited + 48) = v12;
  *(inited + 72) = v19;
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x800000022F79CAF0;
  v20 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v20 >> 62)
  {
    if (v20 < 0)
    {
      v49 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
    }

    v21 = sub_22F741A00();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v54[0] = MEMORY[0x277D84F90];
    sub_22F146D3C(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      goto LABEL_55;
    }

    v51[0] = v19;
    v23 = 0;
    v22 = v54[0];
    v1 = v20 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_44;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2319016F0](v23, v20);
      }

      else
      {
        if (v23 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v25 = *(v20 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v26 = sub_22F38E2F8(v25);
      swift_unknownObjectRelease();
      v54[0] = v22;
      v28 = v22[2];
      v27 = v22[3];
      if (v28 >= v27 >> 1)
      {
        sub_22F146D3C((v27 > 1), v28 + 1, 1);
        v22 = v54[0];
      }

      v22[2] = v28 + 1;
      v22[v28 + 4] = v26;
      ++v23;
    }

    while (v24 != v21);
    inited = v52;
    v19 = v51[0];
  }

  *(inited + 120) = v19;
  *(inited + 96) = v22;
  sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  v29 = objc_opt_self();
  v30 = sub_22F740C80();
  v54[0] = 0;
  v31 = [v29 dataWithJSONObject:v30 options:9 error:v54];

  v32 = v54[0];
  if (v31)
  {
    v33 = sub_22F73F510();
    v35 = v34;

    sub_22F740E70();
    v36 = sub_22F740E40();
    v38 = v37;
    sub_22F133BF0(v33, v35);

    if (v38)
    {
      countAndFlagsBits = v36;
    }

    else
    {
      countAndFlagsBits = 0;
    }

    if (v38)
    {
      object = v38;
    }

    else
    {
      object = 0xE000000000000000;
    }
  }

  else
  {
    v41 = v32;
    v42 = sub_22F73F370();

    swift_willThrow();

    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22F0FC000, v43, v44, "[MemoriesMusic] Unable to get FlexMusicCuration expandedJsonRepresentation. Using jsonRepresentation as backup", v45, 2u);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    v46 = FlexMusicCuration.jsonRepresentation()();
    object = v46.value._object;
    countAndFlagsBits = v46.value._countAndFlagsBits;
  }

  v47 = *MEMORY[0x277D85DE8];
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

id sub_22F38D9B8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22F740DF0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

char *FlexMusicCuration.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F79CB10);
  v32 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_curatorVersion);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F79CB30);
  v3 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v30 = *(v0 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
    }

    v4 = sub_22F741A00();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v33 = MEMORY[0x277D84F90];
    result = sub_22F146454(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v31 = v0;
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2319016F0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      v8 = sub_22F38E840(v7);
      v10 = v9;
      swift_unknownObjectRelease();
      v12 = *(v33 + 16);
      v11 = *(v33 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22F146454((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v33 + 16) = v12 + 1;
      v13 = v33 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v4 != v6);
    v1 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v14 = sub_22F740DA0();
  v16 = v15;

  MEMORY[0x231900B10](v14, v16);

  MEMORY[0x231900B10](0xD000000000000021, 0x800000022F79CB50);
  v17 = *(v1 + OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions);
  if (v17 >> 62)
  {
    v18 = sub_22F741A00();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v18)
  {
LABEL_24:
    v27 = sub_22F740DA0();
    v29 = v28;

    MEMORY[0x231900B10](v27, v29);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    return 0;
  }

  v34 = MEMORY[0x277D84F90];
  result = sub_22F146454(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2319016F0](v19, v17);
      }

      else
      {
        v20 = *(v17 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      v21 = sub_22F38E840(v20);
      v23 = v22;
      swift_unknownObjectRelease();
      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_22F146454((v24 > 1), v25 + 1, 1);
      }

      ++v19;
      *(v34 + 16) = v25 + 1;
      v26 = v34 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v18 != v19);
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

id FlexMusicCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FlexMusicCuration.replaceBestSongSuggestions(flexSongIds:)(uint64_t a1)
{
  v3 = v1;
  v22 = v3;
  ObjectType = swift_getObjectType();
  v5 = 0;
  v24 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = &off_27888E000;
  v21 = a1 + 40;
LABEL_2:
  p_prots = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v2 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    v11 = *(p_prots - 1);
    v10 = *p_prots;
    v12 = qword_2810A91C0;

    if (v12 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = qword_2810A91C8;
    v14 = sub_22F740DF0();
    v15 = [v13 fetchSongWithUID_];

    ++v5;
    p_prots += 2;
    if (v15)
    {
      MEMORY[0x231900D00]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v24 = v26;
      v5 = v2;
      v7 = v21;
      goto LABEL_2;
    }
  }

  p_prots = &OBJC_PROTOCOL___KGPropertyTypeProtocol.prots;
  v8 = v22;
  v2 = *(v22 + OBJC_IVAR___PGFlexMusicCuration_curatorVersion);
  if (!(v24 >> 62))
  {

    sub_22F742060();
    v17 = v24;
    goto LABEL_14;
  }

LABEL_17:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v17 = sub_22F741D50();

LABEL_14:

  v18 = *(v8 + OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions);
  v19 = objc_allocWithZone(ObjectType);
  *(&p_prots[442]->count + v19) = v2;
  *&v19[OBJC_IVAR___PGFlexMusicCuration_bestSongSuggestions] = v17;
  *&v19[OBJC_IVAR___PGFlexMusicCuration_secondarySongSuggestions] = v18;
  v25.receiver = v19;
  v25.super_class = ObjectType;

  return objc_msgSendSuper2(&v25, sel_init);
}

unint64_t sub_22F38E2F8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F788EB0;
  *(inited + 32) = 6580597;
  *(inited + 40) = 0xE300000000000000;
  v3 = [a1 uid];
  v4 = sub_22F740E20();
  v6 = v5;

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v8 = [a1 songName];
  v9 = sub_22F740E20();
  v11 = v10;

  *(inited + 96) = v9;
  *(inited + 104) = v11;
  *(inited + 120) = v7;
  *(inited + 128) = 0x747369747261;
  *(inited + 136) = 0xE600000000000000;
  v12 = [a1 artistName];
  v13 = sub_22F740E20();
  v15 = v14;

  *(inited + 144) = v13;
  *(inited + 152) = v15;
  *(inited + 168) = v7;
  *(inited + 176) = 0x734449676174;
  *(inited + 184) = 0xE600000000000000;
  v16 = [a1 tagIDs];
  v17 = sub_22F741420();

  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = sub_22F10B348(*(v17 + 16), 0);
    v20 = sub_22F11A438(&v47, v19 + 4, v18, v17);
    sub_22F1534EC();
    if (v20 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = MEMORY[0x277D84F90];
LABEL_5:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(inited + 192) = v19;
  *(inited + 216) = v21;
  *(inited + 224) = 0x7364726F7779656BLL;
  *(inited + 232) = 0xE800000000000000;
  v22 = [a1 keywords];
  v23 = sub_22F741420();

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_22F10B348(*(v23 + 16), 0);
    v26 = sub_22F11A438(&v47, v25 + 4, v24, v23);
    sub_22F1534EC();
    if (v26 == v24)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_9:
  *(inited + 240) = v25;
  *(inited + 264) = v21;
  *(inited + 272) = 0xD000000000000010;
  *(inited + 280) = 0x800000022F78D720;
  v27 = [a1 weightedKeywords];
  sub_22F170D8C();
  v28 = sub_22F740CA0();

  v29 = sub_22F38C760(v28);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DE8, qword_22F788F08);
  *(inited + 288) = v29;
  *(inited + 312) = v30;
  *(inited + 320) = 0x6C6173756F7261;
  *(inited + 328) = 0xE700000000000000;
  v31 = [a1 arousal];
  v32 = MEMORY[0x277D839F8];
  if (v31)
  {
    v33 = v31;
    [v31 doubleValue];
    v35 = v34;

    v48 = v32;
    *&v47 = v35;
    sub_22F107D08(&v47, (inited + 336));
  }

  else
  {
    *(inited + 360) = MEMORY[0x277D83B88];
    *(inited + 336) = 0;
  }

  *(inited + 368) = 0x65636E656C6176;
  *(inited + 376) = 0xE700000000000000;
  v36 = [a1 valence];
  if (v36)
  {
    v37 = v36;
    [v36 doubleValue];
    v39 = v38;

    v48 = v32;
    *&v47 = v39;
    sub_22F107D08(&v47, (inited + 384));
  }

  else
  {
    *(inited + 408) = MEMORY[0x277D83B88];
    *(inited + 384) = 0;
  }

  *(inited + 416) = 0x736E6F69676572;
  *(inited + 424) = 0xE700000000000000;
  v40 = [a1 regions];
  v41 = sub_22F741420();

  v42 = *(v41 + 16);
  if (!v42)
  {
    goto LABEL_18;
  }

  v43 = sub_22F10B348(*(v41 + 16), 0);
  v44 = sub_22F11A438(&v47, v43 + 4, v42, v41);
  sub_22F1534EC();
  if (v44 != v42)
  {
    __break(1u);
LABEL_18:

    v43 = MEMORY[0x277D84F90];
  }

  *(inited + 456) = v21;
  *(inited + 432) = v43;
  v45 = sub_22F14EA28(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
  swift_arrayDestroy();
  return v45;
}

uint64_t sub_22F38E840(void *a1)
{
  v2 = [a1 songName];
  v24 = sub_22F740E20();

  v3 = [a1 artistName];
  v23 = sub_22F740E20();
  v5 = v4;

  v6 = [a1 uid];
  v7 = sub_22F740E20();
  v9 = v8;

  v10 = [a1 tagIDs];
  sub_22F741420();

  v11 = [a1 keywords];
  sub_22F741420();

  v12 = [a1 weightedKeywords];
  sub_22F170D8C();
  sub_22F740CA0();

  sub_22F741B00();

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  MEMORY[0x231900B10](v23, v5);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  MEMORY[0x231900B10](v7, v9);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v13 = sub_22F741430();
  v15 = v14;

  MEMORY[0x231900B10](v13, v15);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v16 = sub_22F741430();
  v18 = v17;

  MEMORY[0x231900B10](v16, v18);

  MEMORY[0x231900B10](2128928, 0xE300000000000000);
  v19 = sub_22F740CB0();
  v21 = v20;

  MEMORY[0x231900B10](v19, v21);

  return v24;
}

uint64_t sub_22F38EB70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3720, &qword_22F785C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static ImportantEntitiesEngineContainerProtocol.ingestMomentsAtHomeAndFrequentLocation(in:progressBlock:logger:momentIngestClosure:)(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = [a1 meNode];
  if (!v8)
  {
    v16 = sub_22F740B70();
    v17 = sub_22F7415E0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22F0FC000, v16, v17, "Error! Could not find a me node in the graph.", v18, 2u);
      MEMORY[0x2319033A0](v18, -1, -1);
    }

    *swift_slowAlloc() = 0;
    a2(1.0);
    return;
  }

  v9 = v8;
  v10 = [v8 collection];
  v11 = [v10 homeNodes];

  v12 = v11;
  v13 = sub_22F740B70();
  v14 = sub_22F7415D0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = [v12 count];

    _os_log_impl(&dword_22F0FC000, v13, v14, "Found %ld home nodes connected to the me node.", v15, 0xCu);
    MEMORY[0x2319033A0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = [v12 addressNodes];
  v20 = [v19 momentNodes];

  v21 = v20;
  v22 = sub_22F740B70();
  v23 = sub_22F7415D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 count];

    _os_log_impl(&dword_22F0FC000, v22, v23, "Found %ld moments at the me node's home address.", v24, 0xCu);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  else
  {

    v22 = v21;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22F350094;
  *(v26 + 24) = v25;
  v53 = sub_22F250854;
  v54 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_46;
  v27 = _Block_copy(&aBlock);

  [v21 enumerateUsingBlock:v27];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v28 = [a1 largeFrequentLocationNodes];
  sub_22F38F31C();
  sub_22F34ACCC();
  v29 = sub_22F741420();

  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_22F741A00();
  }

  else
  {
    v30 = *(v29 + 16);
  }

  if (v30 < 1)
  {

    return;
  }

  v31 = [a1 largeFrequentLocationNodes];
  v32 = sub_22F741420();

  sub_22F10A0A8(v32);

  v33 = objc_allocWithZone(PGGraphFrequentLocationNodeCollection);
  v34 = sub_22F741410();

  v35 = [v33 initWithSet:v34 graph:a1];

  v36 = [v35 addressNodes];
  v37 = [v36 momentNodes];

  v38 = v35;
  v39 = v37;
  v40 = sub_22F740B70();
  v41 = sub_22F7415D0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = [v38 count];

    *(v42 + 12) = 2048;
    *(v42 + 14) = [v39 count];

    _os_log_impl(&dword_22F0FC000, v40, v41, "Found %ld large frequent locations and %ld moments at large frequent locations.", v42, 0x16u);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = a5;
  *(v43 + 24) = a6;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22F350040;
  *(v44 + 24) = v43;
  v53 = sub_22F2D4D54;
  v54 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_22F107E24;
  v52 = &block_descriptor_13_6;
  v45 = _Block_copy(&aBlock);

  [v39 enumerateUsingBlock:v45];

  _Block_release(v45);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_23;
  }
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F38F31C()
{
  result = qword_2810A8FE0;
  if (!qword_2810A8FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8FE0);
  }

  return result;
}

void sub_22F38F4D0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_22F740DF0();
  v2 = [v0 BOOLForKey_];

  byte_27DAD0FC8 = v2;
}

id PGSharedLibrarySimulation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGSharedLibrarySimulation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PGSharedLibrarySimulation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PGSharedLibrarySimulation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PGSharedLibrarySimulation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F38F63C(uint64_t a1)
{
  sub_22F741B00();

  strcpy(v61, "Event at path ");
  HIBYTE(v61[1]) = -18;
  sub_22F73F470();
  sub_22F1DAEAC();
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F79CBD0);
  v4 = v61[0];
  v3 = v61[1];
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  v5 = byte_27DAD0FC8;
  if (byte_27DAD0FC8 == 1)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v6 = sub_22F740B90();
    __swift_project_value_buffer(v6, qword_27DAD0E10);

    v7 = sub_22F740B70();
    v8 = sub_22F7415F0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v61[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_22F145F20(v4, v3, v61);
      _os_log_impl(&dword_22F0FC000, v7, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2319033A0](v10, -1, -1);
      MEMORY[0x2319033A0](v9, -1, -1);
    }
  }

  else
  {
  }

  v11 = *(a1 + 24);
  if (!*(v11 + 16) || (v12 = sub_22F1229E8(0xD000000000000020, 0x800000022F78F850), (v13 & 1) == 0) || (sub_22F13A100(*(v11 + 56) + 32 * v12, v61), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0), (swift_dynamicCast() & 1) == 0))
  {
    if (!v5)
    {
      goto LABEL_25;
    }

    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740B90();
    __swift_project_value_buffer(v24, qword_27DAD0E10);
    v20 = sub_22F740B70();
    v25 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v61[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_22F145F20(0xD00000000000002ALL, 0x800000022F79CBF0, v61);
      _os_log_impl(&dword_22F0FC000, v20, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

LABEL_24:

LABEL_25:
    if (!*(v11 + 16))
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_22F741B00();

  v61[0] = 0xD000000000000022;
  v61[1] = 0x800000022F79CCB0;
  v14 = sub_22F740CB0();
  v16 = v15;

  MEMORY[0x231900B10](v14, v16);

  v17 = v61[1];
  if (v5)
  {
    v18 = v61[0];
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v19 = sub_22F740B90();
    __swift_project_value_buffer(v19, qword_27DAD0E10);

    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22F145F20(v18, v17, v61);
      _os_log_impl(&dword_22F0FC000, v20, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x2319033A0](v23, -1, -1);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    goto LABEL_24;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_35;
  }

LABEL_26:
  v28 = sub_22F1229E8(0xD000000000000016, 0x800000022F78F8B0);
  if (v29)
  {
    sub_22F13A100(*(v11 + 56) + 32 * v28, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
    if (swift_dynamicCast())
    {
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_22F741B00();

      v61[0] = 0xD000000000000018;
      v61[1] = 0x800000022F79CC90;
      v30 = sub_22F740CB0();
      v32 = v31;

      MEMORY[0x231900B10](v30, v32);

      v33 = v61[1];
      if (!v5)
      {

        if (!*(v11 + 16))
        {
          goto LABEL_51;
        }

        goto LABEL_42;
      }

      v34 = v61[0];
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v35 = sub_22F740B90();
      __swift_project_value_buffer(v35, qword_27DAD0E10);

      v36 = sub_22F740B70();
      v37 = sub_22F7415F0();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v61[0] = v39;
        *v38 = 136315138;
        *(v38 + 4) = sub_22F145F20(v34, v33, v61);
        _os_log_impl(&dword_22F0FC000, v36, v37, "%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x2319033A0](v39, -1, -1);
        MEMORY[0x2319033A0](v38, -1, -1);
      }

      goto LABEL_40;
    }
  }

LABEL_35:
  if (!v5)
  {
    goto LABEL_41;
  }

  if (qword_27DAAFD40 != -1)
  {
    swift_once();
  }

  v40 = sub_22F740B90();
  __swift_project_value_buffer(v40, qword_27DAD0E10);
  v36 = sub_22F740B70();
  v41 = sub_22F7415F0();
  if (os_log_type_enabled(v36, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_22F145F20(0xD000000000000020, 0x800000022F79CC20, v61);
    _os_log_impl(&dword_22F0FC000, v36, v41, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x2319033A0](v43, -1, -1);
    MEMORY[0x2319033A0](v42, -1, -1);
  }

LABEL_40:

LABEL_41:
  if (!*(v11 + 16))
  {
    goto LABEL_51;
  }

LABEL_42:
  v44 = sub_22F1229E8(0xD000000000000015, 0x800000022F78F730);
  if (v45)
  {
    sub_22F13A100(*(v11 + 56) + 32 * v44, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
    if (swift_dynamicCast())
    {
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_22F741B00();

      v61[0] = 0xD000000000000017;
      v61[1] = 0x800000022F79CC70;
      v46 = sub_22F740CB0();
      v48 = v47;

      MEMORY[0x231900B10](v46, v48);

      v49 = v61[1];
      if (v5)
      {
        v50 = v61[0];
        if (qword_27DAAFD40 != -1)
        {
          swift_once();
        }

        v51 = sub_22F740B90();
        __swift_project_value_buffer(v51, qword_27DAD0E10);

        v52 = sub_22F740B70();
        v53 = sub_22F7415F0();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v61[0] = v55;
          *v54 = 136315138;
          *(v54 + 4) = sub_22F145F20(v50, v49, v61);
          _os_log_impl(&dword_22F0FC000, v52, v53, "%s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v55);
          MEMORY[0x2319033A0](v55, -1, -1);
          MEMORY[0x2319033A0](v54, -1, -1);
        }
      }

      else
      {
      }

      return;
    }
  }

LABEL_51:
  if (v5)
  {
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v56 = sub_22F740B90();
    __swift_project_value_buffer(v56, qword_27DAD0E10);
    v57 = sub_22F740B70();
    v58 = sub_22F7415F0();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61[0] = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_22F145F20(0xD00000000000001FLL, 0x800000022F79CC50, v61);
      _os_log_impl(&dword_22F0FC000, v57, v58, "%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x2319033A0](v60, -1, -1);
      MEMORY[0x2319033A0](v59, -1, -1);
    }
  }
}

uint64_t sub_22F390210()
{
  v58 = MEMORY[0x277D84F90];
  v0 = *MEMORY[0x277D3B218];
  type metadata accessor for PGSharedLibrarySimulationParameter();
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = 0x800000022F79CFE0;
  *(v1 + 32) = vdupq_n_s64(0x4072C00000000000uLL);
  *(v1 + 48) = xmmword_22F788FC0;
  *(v1 + 64) = xmmword_22F788FD0;
  *(v1 + 80) = xmmword_22F788FE0;
  *(v1 + 96) = v0;

  MEMORY[0x231900D00](v2);
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();

  v3 = v58;
  v4 = [objc_allocWithZone(PGRemoteConfiguration) init];
  v5 = @"com.apple.photos.sharedlibrary.sharedLibrarySimulationParameters";
  v6 = sub_22F741160();
  v7 = [v4 arrayValueForKey:@"com.apple.photos.sharedlibrary.sharedLibrarySimulationParameters" withFallbackValue:v6];

  v8 = sub_22F741180();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v54 = vdupq_n_s64(0x4072C00000000000uLL);
    do
    {
      sub_22F13A100(v10, v57);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        if (*(*&v55 + 16) && (v11 = sub_22F1229E8(1701667182, 0xE400000000000000), (v12 & 1) != 0) && (sub_22F13A100(*(*&v55 + 56) + 32 * v11, v57), (swift_dynamicCast() & 1) != 0))
        {
          v13 = swift_allocObject();
          *(v13 + 16) = v55;
          *(v13 + 24) = v56;
          *(v13 + 32) = v54;
          *(v13 + 48) = xmmword_22F788FC0;
          *(v13 + 64) = xmmword_22F788FD0;
          *(v13 + 80) = xmmword_22F788FE0;
          v14 = v13;
          *(v13 + 96) = v0;
          if (*(*&v55 + 16))
          {
            v15 = sub_22F1229E8(0xD000000000000022, 0x800000022F79C6E0);
            if (v16)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v15, v57);
              if (swift_dynamicCast())
              {
                v14[4] = *&v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v17 = sub_22F1229E8(0xD000000000000022, 0x800000022F79C6E0);
            if (v18)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v17, v57);
              if (swift_dynamicCast())
              {
                v14[4] = v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v19 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C710);
            if (v20)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v19, v57);
              if (swift_dynamicCast())
              {
                v14[5] = *&v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v21 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C710);
            if (v22)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v21, v57);
              if (swift_dynamicCast())
              {
                v14[5] = v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v23 = sub_22F1229E8(0xD000000000000020, 0x800000022F79C740);
            if (v24)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v23, v57);
              if (swift_dynamicCast())
              {
                v14[6] = *&v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v25 = sub_22F1229E8(0xD000000000000020, 0x800000022F79C740);
            if (v26)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v25, v57);
              if (swift_dynamicCast())
              {
                v14[6] = v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v27 = sub_22F1229E8(0xD000000000000028, 0x800000022F79C770);
            if (v28)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v27, v57);
              if (swift_dynamicCast())
              {
                v14[7] = *&v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v29 = sub_22F1229E8(0xD000000000000028, 0x800000022F79C770);
            if (v30)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v29, v57);
              if (swift_dynamicCast())
              {
                v14[7] = v55 * 60.0;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v31 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C7A0);
            if (v32)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v31, v57);
              if (swift_dynamicCast())
              {
                v14[8] = *&v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v33 = sub_22F1229E8(0xD000000000000026, 0x800000022F79C7A0);
            if (v34)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v33, v57);
              if (swift_dynamicCast())
              {
                v14[8] = v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v35 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F79C7D0);
            if (v36)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v35, v57);
              if (swift_dynamicCast())
              {
                v14[9] = *&v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v37 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F79C7D0);
            if (v38)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v37, v57);
              if (swift_dynamicCast())
              {
                v14[9] = v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v39 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C7F0);
            if (v40)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v39, v57);
              if (swift_dynamicCast())
              {
                v14[10] = *&v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v41 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C7F0);
            if (v42)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v41, v57);
              if (swift_dynamicCast())
              {
                v14[10] = v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v43 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C820);
            if (v44)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v43, v57);
              if (swift_dynamicCast())
              {
                v14[11] = *&v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v45 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C820);
            if (v46)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v45, v57);
              if (swift_dynamicCast())
              {
                v14[11] = v55;
              }
            }
          }

          if (*(*&v55 + 16))
          {
            v47 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C850);
            if (v48)
            {
              sub_22F13A100(*(*&v55 + 56) + 32 * v47, v57);
              if (swift_dynamicCast())
              {
                v14[12] = *&v55;
              }
            }
          }

          if (*(*&v55 + 16) && (v49 = sub_22F1229E8(0xD000000000000023, 0x800000022F79C850), (v50 & 1) != 0))
          {
            sub_22F13A100(*(*&v55 + 56) + 32 * v49, v57);

            if (swift_dynamicCast())
            {
              v14[12] = v55;
            }
          }

          else
          {
          }

          MEMORY[0x231900D00](v51);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
          }

          sub_22F741220();

          v3 = v58;
        }

        else
        {
        }
      }

      v10 += 32;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_22F390C5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27DAAFD40 != -1)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v6 = sub_22F740B90();
    __swift_project_value_buffer(v6, qword_27DAD0E10);
    v7 = sub_22F740B70();
    v8 = sub_22F7415F0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22F0FC000, v7, v8, "Starting simulations...", v9, 2u);
      MEMORY[0x2319033A0](v9, -1, -1);
    }

    if (qword_27DAAFD68 != -1)
    {
      swift_once();
    }

    v10 = qword_27DAD0E58;
    *&v11 = CACurrentMediaTime();
    sub_22F1B560C("All shared library simulations and setup", 40, 2u, v11, 0, v10, v189);
    v12 = sub_22F7416B0();
    v14 = v13;
    *&v15 = CACurrentMediaTime();
    sub_22F1B560C("Shared library simulation event ingest and setup", 48, 2u, v15, 0, v10, v190);
    type metadata accessor for PGSharedLibrarySimulationEventFactory();
    swift_allocObject();

    v16 = sub_22F330454(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DF0, &unk_22F789040);
    swift_initStackObject();

    v17 = v12;
    v18 = sub_22F1D5494(v16, v17);
    if (v3)
    {
    }

    v20 = v18;
    v162 = v10;
    sub_22F1B2BBC(0);
    type metadata accessor for PGSharedLibrarySimulationEvaluator();
    swift_initStackObject();
    result = sub_22F390210();
    v21 = result;
    v22 = result >> 62;
    if (!(result >> 62))
    {
      v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v23 == 1;
      if (v23 < 1)
      {
        break;
      }

      goto LABEL_10;
    }

LABEL_115:
    result = sub_22F741A00();
    v23 = result;
    v24 = result == 1;
    if (result < 1)
    {
      break;
    }

LABEL_10:
    v167 = v16;
    if (!v24)
    {
      v26 = 1;
      v27 = sub_22F140060(0, 1, 1, MEMORY[0x277D84F90]);
      v28 = *(v27 + 2);
      do
      {
        v29 = *(v27 + 3);
        if (v28 >= v29 >> 1)
        {
          v27 = sub_22F140060((v29 > 1), v28 + 1, 1, v27);
        }

        *(v27 + 2) = v28 + 1;
        *&v27[8 * v28++ + 32] = v26++ / v23;
      }

      while (v23 != v26);
    }

    v166 = sub_22F7416C0();
    if (v22)
    {
      v25 = sub_22F741A00();
      v16 = v167;
      if (!v25)
      {
LABEL_108:

        sub_22F1B2BBC(0);
        sub_22F7416A0();
        v151 = sub_22F740B70();
        v152 = sub_22F7415F0();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&dword_22F0FC000, v151, v152, "...finished simulations!", v153, 2u);
          MEMORY[0x2319033A0](v153, -1, -1);
        }
      }
    }

    else
    {
      v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v167;
      if (!v25)
      {
        goto LABEL_108;
      }
    }

    v157 = v22;
    v30 = v21 & 0xC000000000000001;
    result = swift_beginAccess();
    v22 = 0;
    v158 = v21 & 0xFFFFFFFFFFFFFF8;
    v156 = v21 + 32;
    v164 = v17;
    v165 = v14;
    v159 = v21 & 0xC000000000000001;
    v160 = v25;
    v174 = v20;
    v161 = v21;
    while (1)
    {
      if (v30)
      {
        v17 = MEMORY[0x2319016F0](v22, v21);
        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (v22 >= *(v158 + 16))
        {
          goto LABEL_117;
        }

        v17 = *(v156 + 8 * v22);

        a1 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }
      }

      v31 = sub_22F740B70();
      v32 = sub_22F7415F0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134218240;
        *(v33 + 4) = a1;
        *(v33 + 12) = 2048;
        if (v157)
        {
          v34 = sub_22F741A00();
        }

        else
        {
          v34 = *(v158 + 16);
        }

        *(v33 + 14) = v34;

        _os_log_impl(&dword_22F0FC000, v31, v32, "-- Simulation %ld/%ld --", v33, 0x16u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }

      else
      {
      }

      v35 = sub_22F740B70();
      a2 = sub_22F7415F0();

      v180 = v17;
      v163 = a1;
      if (os_log_type_enabled(v35, a2))
      {
        a1 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v186[0] = v36;
        *a1 = 136315138;
        v37 = sub_22F38AE04();
        v39 = sub_22F145F20(v37, v38, v186);

        *(a1 + 4) = v39;
        _os_log_impl(&dword_22F0FC000, v35, a2, "Running autosharing algorithm with %s", a1, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x2319033A0](v36, -1, -1);
        MEMORY[0x2319033A0](a1, -1, -1);
      }

      type metadata accessor for PGSharedLibrarySimulationContext();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22F788FF0;
      *&v41 = CACurrentMediaTime();
      result = sub_22F1B560C("Shared library simulation individual run", 40, 2u, v41, 0, v162, v191);
      if ((v166 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2319016F0](v22, v166);
      }

      else
      {
        if (v22 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_118;
        }

        v42 = *(v166 + 32 + 8 * v22);
      }

      v43 = v42;
      v185 = MEMORY[0x277D84F90];
      v3 = *(v20 + 16);
      if (v3 >> 62)
      {
        if (v3 < 0)
        {
          v150 = *(v20 + 16);
        }

        v44 = sub_22F741A00();
      }

      else
      {
        v44 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v181 = inited;
      if (v44)
      {
        break;
      }

      log = MEMORY[0x277D84F90];
LABEL_59:

      sub_22F1ADB68(log, &v182);
      v54 = v183;
      v55 = v184;
      __swift_project_boxed_opaque_existential_1(&v182, v183);
      v56 = *((*(v55 + 8))(v54, v55) + 16);

      if (v56)
      {
        v57 = sub_22F740DF0();
        v58 = v183;
        v59 = v184;
        __swift_project_boxed_opaque_existential_1(&v182, v183);
        (*(v59 + 8))(v58, v59);
        sub_22F2CFD00();
        v60 = sub_22F740C80();

        AnalyticsSendEvent();
      }

      sub_22F7416A0();

      sub_22F100260(&v182, v186);

      sub_22F1B2BBC(0);
      v61 = v187;
      v62 = v188;
      __swift_project_boxed_opaque_existential_1(v186, v187);
      v63 = (*(v62 + 8))(v61, v62);
      v64 = 0xD00000000000003DLL;
      v173 = 0xD00000000000004BLL;
      if (!*(v63 + 16))
      {
        v85 = 0x800000022F79CE80;
        v169 = 0xD000000000000057;
        v171 = 0xD00000000000003DLL;
        v84 = 0x800000022F79CDF0;
        v86 = 0x800000022F79CE30;
LABEL_98:

        v136 = 0xD000000000000037;
        v135 = 0x800000022F79CEE0;
        v137 = v180;
        goto LABEL_99;
      }

      sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
      if (v65)
      {
        *&v182 = 0;
        *(&v182 + 1) = 0xE000000000000000;
        sub_22F741B00();

        *&v182 = 0xD000000000000013;
        *(&v182 + 1) = 0x800000022F79CFC0;
        if (!*(v63 + 16))
        {
          goto LABEL_119;
        }

        result = sub_22F1229E8(0xD000000000000011, 0x800000022F7968A0);
        if ((v66 & 1) == 0)
        {
          goto LABEL_120;
        }

        v67 = *(*(v63 + 56) + 8 * result);
        v68 = [v67 description];
        v69 = sub_22F740E20();
        v71 = v70;

        MEMORY[0x231900B10](v69, v71);

        result = MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v63 + 16))
        {
          goto LABEL_121;
        }

        result = sub_22F1229E8(0x5F6C6C617265766FLL, 0xEE006C6C61636572);
        if ((v72 & 1) == 0)
        {
          goto LABEL_122;
        }

        v73 = *(*(v63 + 56) + 8 * result);
        v74 = [v73 description];
        v75 = sub_22F740E20();
        v77 = v76;

        MEMORY[0x231900B10](v75, v77);

        result = MEMORY[0x231900B10](0x206E6F202CLL, 0xE500000000000000);
        if (!*(v63 + 16))
        {
          goto LABEL_123;
        }

        result = sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
        if ((v78 & 1) == 0)
        {
          goto LABEL_124;
        }

        v79 = *(*(v63 + 56) + 8 * result);
        v80 = [v79 description];
        v81 = sub_22F740E20();
        v83 = v82;

        MEMORY[0x231900B10](v81, v83);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v84 = *(&v182 + 1);
        v64 = v182;
      }

      else
      {
        v84 = 0x800000022F79CDF0;
      }

      v171 = v64;
      if (!*(v63 + 16))
      {
        v85 = 0x800000022F79CE80;
        v169 = 0xD000000000000057;
        v86 = 0x800000022F79CE30;
        goto LABEL_98;
      }

      sub_22F1229E8(0xD00000000000001BLL, 0x800000022F796800);
      if (v87)
      {
        *&v182 = 0;
        *(&v182 + 1) = 0xE000000000000000;
        sub_22F741B00();
        result = MEMORY[0x231900B10](0xD000000000000022, 0x800000022F79CF90);
        if (!*(v63 + 16))
        {
          goto LABEL_125;
        }

        loga = v84;
        result = sub_22F1229E8(0xD000000000000023, 0x800000022F796820);
        if ((v88 & 1) == 0)
        {
          goto LABEL_126;
        }

        v89 = *(*(v63 + 56) + 8 * result);
        v90 = [v89 description];
        v91 = sub_22F740E20();
        v93 = v92;

        MEMORY[0x231900B10](v91, v93);

        result = MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v63 + 16))
        {
          goto LABEL_127;
        }

        result = sub_22F1229E8(0xD000000000000020, 0x800000022F796850);
        if ((v94 & 1) == 0)
        {
          goto LABEL_128;
        }

        v95 = *(*(v63 + 56) + 8 * result);
        v96 = [v95 description];
        v97 = sub_22F740E20();
        v99 = v98;

        MEMORY[0x231900B10](v97, v99);

        result = MEMORY[0x231900B10](8236, 0xE200000000000000);
        if (!*(v63 + 16))
        {
          goto LABEL_129;
        }

        result = sub_22F1229E8(0xD00000000000001BLL, 0x800000022F796800);
        if ((v100 & 1) == 0)
        {
          goto LABEL_130;
        }

        v101 = *(*(v63 + 56) + 8 * result);
        v102 = [v101 description];
        v103 = sub_22F740E20();
        v105 = v104;

        MEMORY[0x231900B10](v103, v105);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v86 = *(&v182 + 1);
        v173 = v182;
        v84 = loga;
        if (!*(v63 + 16))
        {
LABEL_81:
          v85 = 0x800000022F79CE80;
          v169 = 0xD000000000000057;
          goto LABEL_98;
        }
      }

      else
      {
        v86 = 0x800000022F79CE30;
        if (!*(v63 + 16))
        {
          goto LABEL_81;
        }
      }

      logb = v86;
      sub_22F1229E8(0xD000000000000021, 0x800000022F796780);
      v106 = 0xD000000000000057;
      v107 = 0x800000022F79CE80;
      if (v108)
      {
        *&v182 = 0;
        *(&v182 + 1) = 0xE000000000000000;
        sub_22F741B00();
        result = MEMORY[0x231900B10](0xD000000000000028, 0x800000022F79CF60);
        if (!*(v63 + 16))
        {
          goto LABEL_131;
        }

        v109 = v84;
        result = sub_22F1229E8(0xD000000000000021, 0x800000022F7967B0);
        if ((v110 & 1) == 0)
        {
          goto LABEL_132;
        }

        v111 = *(*(v63 + 56) + 8 * result);
        v112 = [v111 description];
        v113 = sub_22F740E20();
        v115 = v114;

        MEMORY[0x231900B10](v113, v115);

        result = MEMORY[0x231900B10](0x6C6C61636572202CLL, 0xEA0000000000203ALL);
        if (!*(v63 + 16))
        {
          goto LABEL_133;
        }

        result = sub_22F1229E8(0xD00000000000001ELL, 0x800000022F7967E0);
        if ((v116 & 1) == 0)
        {
          goto LABEL_134;
        }

        v117 = *(*(v63 + 56) + 8 * result);
        v118 = [v117 description];
        v119 = sub_22F740E20();
        v121 = v120;

        MEMORY[0x231900B10](v119, v121);

        result = MEMORY[0x231900B10](8236, 0xE200000000000000);
        if (!*(v63 + 16))
        {
          goto LABEL_135;
        }

        result = sub_22F1229E8(0xD000000000000021, 0x800000022F796780);
        if ((v122 & 1) == 0)
        {
          goto LABEL_136;
        }

        v123 = *(*(v63 + 56) + 8 * result);
        v124 = [v123 description];
        v125 = sub_22F740E20();
        v127 = v126;

        MEMORY[0x231900B10](v125, v127);

        MEMORY[0x231900B10](0x2E73746573736120, 0xE800000000000000);
        v107 = *(&v182 + 1);
        v106 = v182;
        v84 = v109;
      }

      v86 = logb;
      v169 = v106;
      if (!*(v63 + 16))
      {
        v85 = v107;
        goto LABEL_98;
      }

      sub_22F1229E8(0xD000000000000010, 0x800000022F796880);
      if (v128)
      {
        *&v182 = 0;
        *(&v182 + 1) = 0xE000000000000000;
        sub_22F741B00();
        result = MEMORY[0x231900B10](0xD000000000000032, 0x800000022F79CF20);
        if (!*(v63 + 16))
        {
          goto LABEL_137;
        }

        v85 = v107;
        result = sub_22F1229E8(0xD000000000000025, 0x800000022F7968C0);
        if ((v129 & 1) == 0)
        {
          goto LABEL_138;
        }

        v130 = *(*(v63 + 56) + 8 * result);

        v131 = [v130 description];
        v132 = sub_22F740E20();
        v134 = v133;

        MEMORY[0x231900B10](v132, v134);

        MEMORY[0x231900B10](46, 0xE100000000000000);
        v135 = *(&v182 + 1);
        v136 = v182;
        v86 = logb;
        v137 = v180;
      }

      else
      {

        v136 = 0xD000000000000037;
        v135 = 0x800000022F79CEE0;
        v137 = v180;
        v85 = v107;
      }

LABEL_99:

      v138 = sub_22F740B70();
      v139 = sub_22F7415F0();

      logc = v138;
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *&v182 = v155;
        *v140 = 136316162;
        swift_beginAccess();
        v154 = v136;
        v141 = v86;
        v142 = *(v137 + 2);
        v143 = *(v137 + 3);

        v144 = v85;
        v145 = sub_22F145F20(v142, v143, &v182);

        *(v140 + 4) = v145;
        *(v140 + 12) = 2080;
        v146 = sub_22F145F20(v171, v84, &v182);

        *(v140 + 14) = v146;
        *(v140 + 22) = 2080;
        v147 = sub_22F145F20(v173, v141, &v182);

        *(v140 + 24) = v147;
        *(v140 + 32) = 2080;
        v148 = sub_22F145F20(v169, v144, &v182);

        *(v140 + 34) = v148;
        *(v140 + 42) = 2080;
        v149 = sub_22F145F20(v154, v135, &v182);

        *(v140 + 44) = v149;
        _os_log_impl(&dword_22F0FC000, logc, v139, "Results for %s:\n%s\n%s\n%s\n%s", v140, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v155, -1, -1);
        MEMORY[0x2319033A0](v140, -1, -1);
      }

      else
      {
      }

      v20 = v174;
      v17 = v164;
      v14 = v165;
      v16 = v167;
      result = __swift_destroy_boxed_opaque_existential_0(v186);
      v22 = v163;
      v30 = v159;
      v21 = v161;
      if (v163 == v160)
      {
        goto LABEL_108;
      }
    }

    v45 = 0;
    v170 = v3 & 0xFFFFFFFFFFFFFF8;
    v172 = v3 & 0xC000000000000001;
    v168 = v3;
    while (v172)
    {
      a2 = MEMORY[0x2319016F0](v45, v3);
      a1 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_111;
      }

LABEL_46:
      v46 = v44;
      v47 = objc_autoreleasePoolPush();

      v48 = sub_22F3D26E4(v180, a2, inited);

      MEMORY[0x231900D00](v49);
      if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        logd = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      log = v185;
      v50 = *(inited + 24);
      *(inited + 16) = *(v48 + 4);
      *(inited + 24) = a2;

      v51 = *(v174 + 16);
      if (v51 >> 62)
      {
        if (v51 < 0)
        {
          v53 = *(v174 + 16);
        }

        sub_22F741A00();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_22F741690();

      objc_autoreleasePoolPop(v47);

      ++v45;
      v44 = v46;
      inited = v181;
      v3 = v168;
      if (a1 == v46)
      {
        goto LABEL_59;
      }
    }

    if (v45 >= *(v170 + 16))
    {
      goto LABEL_112;
    }

    a2 = *(v3 + 8 * v45 + 32);

    a1 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
      goto LABEL_46;
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    swift_once();
  }

  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
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
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

void sub_22F39251C(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_22F73FC60();
  sub_22F392D4C();
    ;
  }
}

uint64_t sub_22F3925BC(uint64_t a1, uint64_t isUniquelyReferenced_nonNull_native, unint64_t a3, uint64_t a4)
{
  v71 = a4;
  v83 = *MEMORY[0x277D85DE8];
  v67 = sub_22F73FC60();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22F73F690();
  v10 = *(v63 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Song();
  v60 = *(v59 - 8);
  v13 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v15 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v73 = (&v58 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1628, &qword_22F772A68);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v58 - v22);
  if (qword_2810A9B70 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v24 = qword_2810B4E58;
  *&v25 = CACurrentMediaTime();
  sub_22F1B560C("Random Music Ranker", 19, 2u, v25, 0, v24, v82);
  v26 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR___PGMusicCurationFeatures_consistentHash);
  v27 = -1 << *(a1 + 32);
  v28 = ~v27;
  v29 = *(a1 + 56);
  v30 = -v27;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v76 = a1;
  v77 = a1 + 56;
  v78 = v28;
  v79 = 0;
  v80 = v31 & v29;
  v81 = 0;
  v32 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  v64 = a1;

  v70 = v32;
  swift_beginAccess();
  v61 = (v10 + 1);
  v69 = v26 + 2654435769;
  v68 = ((v26 + 2654435769) << 6) + ((v26 + 2654435769) >> 2) + 2654435769u;
  v33 = MEMORY[0x277D84F98];
  v65 = (v7 + 8);
  v10 = v73;
  while (1)
  {
    a1 = v72;
    sub_22F3D4140(v72);
    sub_22F16FDD4(a1, v23);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1630, &qword_22F772A70);
    if ((*(*(v34 - 8) + 48))(v23, 1, v34) == 1)
    {
      sub_22F0FF590();
      sub_22F1B2BBC(0);
      v55 = v74;
      sub_22F7416A0();

      if (v55)
      {
      }

      goto LABEL_32;
    }

    v35 = *v23;
    sub_22F15CB04(v23 + *(v34 + 48), v10);
    if (*(a3 + v70))
    {
      v7 = v62;
      sub_22F73F680();
      sub_22F73F620();
      v37 = v36;
      (*v61)(v7, v63);
      v38 = v37 * 1000.0;
      if (COERCE__INT64(fabs(v37 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v38 <= -9.22337204e18)
      {
        goto LABEL_36;
      }

      if (v38 >= 9.22337204e18)
      {
        goto LABEL_37;
      }

      v7 = v38;
    }

    else
    {
      v7 = sub_22F1D226C(*v10, v10[1]);
    }

    sub_22F15CAA0(v10, v15);
    v39 = (v68 + v7) ^ v69;
    if ((v39 & 0x8000000000000000) != 0)
    {
      v40 = __OFSUB__(0, v39);
      v41 = -v39;
      if (v40)
      {
        goto LABEL_39;
      }

      if (v41 < 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        swift_once();
        goto LABEL_2;
      }
    }

    a1 = a3;
    v42 = v66;
    sub_22F73FC50();
    sub_22F39251C(0.0, 1.0);
    v44 = v43;
    (*v65)(v42, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v33;
    v7 = v33;
    a3 = sub_22F122A14(v15);
    v46 = *(v33 + 16);
    v47 = (v45 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_34;
    }

    v10 = v45;
    if (*(v33 + 24) < v48)
    {
      break;
    }

    v7 = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F134678();
      goto LABEL_20;
    }

LABEL_22:
    isUniquelyReferenced_nonNull_native = v75;
    if (v10)
    {
      *(*(v75 + 56) + 4 * a3) = v44;
      sub_22F15CBD8(v15);
    }

    else
    {
      *(v75 + 8 * (a3 >> 6) + 64) |= 1 << a3;
      sub_22F15CAA0(v15, *(isUniquelyReferenced_nonNull_native + 48) + *(v60 + 72) * a3);
      *(*(isUniquelyReferenced_nonNull_native + 56) + 4 * a3) = v44;
      sub_22F15CBD8(v15);
      v51 = *(isUniquelyReferenced_nonNull_native + 16);
      v40 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v40)
      {
        goto LABEL_38;
      }

      *(isUniquelyReferenced_nonNull_native + 16) = v52;
    }

    v53 = *(v7 + 16);
    v54 = v74;
    sub_22F741680();
    v10 = v73;
    if (v54)
    {
      sub_22F0FF590();

      sub_22F15CBD8(v10);
LABEL_32:

      v56 = *MEMORY[0x277D85DE8];
      return v33;
    }

    a3 = a1;
    v74 = 0;
    sub_22F15CBD8(v73);
    v33 = isUniquelyReferenced_nonNull_native;
  }

  sub_22F125F5C(v48, isUniquelyReferenced_nonNull_native);
  v49 = sub_22F122A14(v15);
  if ((v10 & 1) == (v50 & 1))
  {
    a3 = v49;
LABEL_20:
    v7 = v64;
    goto LABEL_22;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

unint64_t sub_22F392D4C()
{
  result = qword_2810A9508;
  if (!qword_2810A9508)
  {
    sub_22F73FC60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9508);
  }

  return result;
}

uint64_t MusicCatalogMonitor.isEligibleToUseMusicCatalog()()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_22F392E80;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 32, 0, 0, 0xD00000000000001DLL, 0x800000022F79D060, sub_22F393740, 0, v3);
}

uint64_t sub_22F392E80()
{
  v2 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 24) = v0;

  if (v0)
  {
    v3 = sub_22F392FB0;
  }

  else
  {
    v3 = sub_22F392F94;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22F392FCC(char a1, int a2, id a3)
{
  if (a1 & 1) == 0 && a3 && (v3 = a3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0), sub_22F394268(), (swift_dynamicCast()))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
    return sub_22F7412E0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
    return sub_22F7412F0();
  }
}

void sub_22F3930AC(char a1, id a2, void (*a3)(uint64_t, void, id))
{
  if (a2)
  {
    v5 = a2;
    a3(0, 0, a2);
  }

  else
  {
    a3(1, a1 & 1, 0);
  }
}

void sub_22F393134(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_22F393238(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = sub_22F73F360();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2 & 1);
}

void static MusicCatalogMonitor.clearCatalogMusic(from:progressReporter:)()
{
  v1 = sub_22F7416B0();
  v3 = v2;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(&unk_2843DE6B8, v1);
  if (!v0)
  {
    MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)();
  }
}

id sub_22F39340C(void *a1, void *a2, uint64_t a3, void *a4)
{
  v24[0] = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3DF8, &qword_22F789088);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v20;
  v21 = a2;
  type metadata accessor for CFString(0);
  sub_22F39415C();
  v7 = a2;
  sub_22F741A90();
  if (!*(v6 + 16))
  {
    goto LABEL_13;
  }

  v8 = sub_22F122B24(v24);
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = *(*(v6 + 56) + 8 * v8);
  swift_unknownObjectRetain();
  sub_22F139E70(v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v21 != sub_22F740E20() || v23 != v11)
  {
    v12 = sub_22F742040();

    if (v12)
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

LABEL_9:
  v22 = a4;
  v13 = a4;
  sub_22F741A90();
  if (!*(v6 + 16) || (v14 = sub_22F122B24(v24), (v15 & 1) == 0))
  {
LABEL_13:

    sub_22F139E70(v24);
    return 0;
  }

  v16 = *(*(v6 + 56) + 8 * v14);
  swift_unknownObjectRetain();
  sub_22F139E70(v24);

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = [v17 BOOLValue];
    swift_unknownObjectRelease();
    return v18;
  }

  swift_unknownObjectRelease();
  return 0;
}

id MusicCatalogMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCatalogMonitor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCatalogMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F393740(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - v5;

  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  v9 = [objc_allocWithZone(MEMORY[0x277D7FA60]) init];
  [v9 setPrivacyAcknowledgementPolicy_];
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F3941D4;
  *(v10 + 24) = v8;
  aBlock[4] = sub_22F394310;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F393134;
  aBlock[3] = &block_descriptor_16_1;
  v11 = _Block_copy(aBlock);

  [v9 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t _s11PhotosGraph19MusicCatalogMonitorC05checkcD11Eligibility16progressReporterSbSo010MAProgressI0C_tFZ_0()
{
  v26 = sub_22F740BB0();
  v24 = *(v26 - 8);
  v0 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v2 = (&v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_22F740C30();
  v23 = *(v25 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = objc_allocWithZone(MEMORY[0x277D7FA60]);

  v13 = v9;
  v14 = [v12 init];
  [v14 setPrivacyAcknowledgementPolicy_];
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22F3942B4;
  *(v15 + 24) = v11;
  aBlock[4] = sub_22F394310;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F393134;
  aBlock[3] = &block_descriptor_29_0;
  v16 = _Block_copy(aBlock);

  [v14 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v16);

  sub_22F740C10();
  *v2 = 30;
  v17 = v24;
  v18 = v26;
  (*(v24 + 104))(v2, *MEMORY[0x277D85178], v26);
  MEMORY[0x2319007F0](v5, v2);
  (*(v17 + 8))(v2, v18);
  v19 = *(v23 + 8);
  v20 = v25;
  v19(v5, v25);
  sub_22F741610();

  v19(v8, v20);
  swift_beginAccess();
  v21 = *(v10 + 16);

  return v21;
}

void sub_22F393CF4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D7FA60]) init];
  [v4 setPrivacyAcknowledgementPolicy_];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_22F3941B4;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22F393134;
  v7[3] = &block_descriptor_47;
  v6 = _Block_copy(v7);

  [v4 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v6);
}

uint64_t sub_22F393E04(void *a1)
{
  if (qword_2810A9B50 != -1)
  {
    swift_once();
  }

  v3 = qword_2810B4E40;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("Clear Catalog Music From Cache", 30, 2u, v4, 0, v3, v12);
  v5 = sub_22F1A26E0(a1);
  if (v1)
  {
    v11 = 1;
  }

  else
  {
    v6 = v5;
    v7 = sub_22F7416B0();
    v9 = v8;
    MusicCache.removeSongSources(songSourceCategories:progressReporter:)(&unk_2843DE6B8, v7);
    MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)();

    v11 = 0;
  }

  sub_22F1B2BBC(v11);
}

void _s11PhotosGraph19MusicCatalogMonitorC21canAccessMediaLibrarySbyFZ_0()
{
  v0 = sub_22F740DF0();
  v1 = TCCAccessCopyInformationForBundleId();

  if (!v1)
  {
    return;
  }

  v2 = sub_22F741180();

  if (!*MEMORY[0x277D6C0E8])
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = *MEMORY[0x277D6C0D0];
  v12 = *MEMORY[0x277D6C0E8];
  if (!v3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *MEMORY[0x277D6C1A0];
  v11 = v3;
  if (!v4)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v5 = v4;
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2319016F0](v7, v2);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          return;
        }

LABEL_11:
        v13 = v8;
        v10 = sub_22F39340C(&v13, v12, v5, v11);
        swift_unknownObjectRelease();
        if (v10)
        {
          goto LABEL_17;
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_20;
        }
      }

      if (v7 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_19:
      v6 = sub_22F741A00();
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    v8 = *(v2 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

LABEL_20:
}

unint64_t sub_22F39415C()
{
  result = qword_2810A9210;
  if (!qword_2810A9210)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9210);
  }

  return result;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3941D4(char a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090) - 8) + 80);

  return sub_22F392FCC(a1, a2, a3);
}

unint64_t sub_22F394268()
{
  result = qword_27DAB2A28;
  if (!qword_27DAB2A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB2A28);
  }

  return result;
}

void sub_22F3942B4(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 16) = a2;
  dispatch_group_leave(v4);
}

uint64_t sub_22F39431C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_22F394374(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F3F6724(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F395528(v6);
  return sub_22F741BB0();
}

BOOL sub_22F394478(void *a1, uint64_t *a2)
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

void *sub_22F3944A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22F3944D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t TripFeatureProcessor.scoringDescription(including:)(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F7707D0;
  *(inited + 32) = sub_22F740E20();
  v92 = inited + 32;
  *(inited + 40) = v4;
  *(inited + 48) = sub_22F740E20();
  *(inited + 56) = v5;
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v6;
  v96 = 10;
  v97 = 0xE100000000000000;
  v7 = v2;
  if ((v2 & 2) != 0)
  {
    v8 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment);
    if (v8)
    {
      v81 = v2;
      v83 = v1;

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79D120);

      v94 = sub_22F10B02C(v9);
      sub_22F394374(&v94);

      v10 = v94;
      if (v94 < 0 || (v94 & 0x4000000000000000) != 0)
      {
        goto LABEL_30;
      }

      for (i = *(v94 + 16); i; i = sub_22F741A00())
      {
        v12 = 0;
        v13 = v8 & 0xC000000000000001;
        v14 = v10 & 0xC000000000000001;
        v87 = i;
        v88 = v10;
        v85 = v10 & 0xC000000000000001;
        v86 = v8 & 0xC000000000000001;
        while (1)
        {
          if (v14)
          {
            v15 = MEMORY[0x2319016F0](v12, v10);
          }

          else
          {
            if (v12 >= *(v10 + 16))
            {
              goto LABEL_29;
            }

            v15 = *(v10 + 8 * v12 + 32);
          }

          v16 = v15;
          v17 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v13)
          {
            v18 = v15;
            v19 = sub_22F741D00();

            if (v19)
            {
              type metadata accessor for MomentRelevanceData(0);
              swift_dynamicCast();
              v20 = v94;
              if (v94)
              {
                goto LABEL_21;
              }
            }
          }

          else if (*(v8 + 16))
          {
            v21 = sub_22F1234BC(v15);
            if (v22)
            {
              v20 = *(*(v8 + 56) + 8 * v21);

              if (v20)
              {
LABEL_21:
                v23 = v8;
                v94 = 0;
                v95 = 0xE000000000000000;
                sub_22F741B00();
                MEMORY[0x231900B10](0xD000000000000014, 0x800000022F79D140);
                v93 = *(v20 + 16);
                v24 = sub_22F742010();
                MEMORY[0x231900B10](v24);

                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D160);
                sub_22F73F690();
                sub_22F1E3D6C();
                v25 = sub_22F742010();
                MEMORY[0x231900B10](v25);

                MEMORY[0x231900B10](2108704, 0xE300000000000000);
                v26 = sub_22F742010();
                MEMORY[0x231900B10](v26);

                MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79D180);
                v27 = *(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData_deltaTimeInHours);
                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000012, 0x800000022F79D1A0);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio + 8))
                {
                  goto LABEL_83;
                }

                v28 = *(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__densityRatio);
                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D220);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio + 8))
                {
                  goto LABEL_83;
                }

                v29 = *(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__assetRatio);
                sub_22F7413B0();
                MEMORY[0x231900B10](0xD000000000000010, 0x800000022F79D2A0);
                if (*(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8))
                {
                  goto LABEL_83;
                }

                v30 = *(v20 + OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore);
                sub_22F7413B0();
                MEMORY[0x231900B10](10, 0xE100000000000000);
                v31 = v94;
                v32 = v95;
                v94 = 9;
                v95 = 0xE100000000000000;
                v33 = [v16 UUID];
                if (v33)
                {
                  v34 = v33;
                  v35 = sub_22F740E20();
                  v37 = v36;
                }

                else
                {
                  v35 = 0x6E656D6F4D206F4ELL;
                  v37 = 0xEE00444955552074;
                }

                MEMORY[0x231900B10](v35, v37);

                MEMORY[0x231900B10](2618, 0xE200000000000000);
                MEMORY[0x231900B10](v31, v32);

                MEMORY[0x231900B10](v94, v95);

                v8 = v23;
                i = v87;
                v10 = v88;
                v14 = v85;
                v13 = v86;
                goto LABEL_8;
              }
            }
          }

LABEL_8:
          ++v12;
          if (v17 == i)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:

      v7 = v81;
      v1 = v83;
    }
  }

  if (v7)
  {
    v38 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_scoresByLevel);
    if (v38)
    {
      v82 = v7;
      v84 = v1;

      MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79D100);
      v39 = 0;
      v89 = v38;
      while (1)
      {
        if (!*(v38 + 16))
        {
          goto LABEL_37;
        }

        v42 = (v92 + 16 * v39);
        v44 = *v42;
        v43 = v42[1];

        v45 = sub_22F1229E8(v44, v43);
        if (v46)
        {
          break;
        }

LABEL_36:

LABEL_37:
        if (++v39 == 3)
        {

          v7 = v82;
          v1 = v84;
          goto LABEL_53;
        }
      }

      v47 = *(*(v38 + 56) + 8 * v45);
      v94 = 9;
      v95 = 0xE100000000000000;

      MEMORY[0x231900B10](v44, v43);

      MEMORY[0x231900B10](2618, 0xE200000000000000);
      MEMORY[0x231900B10](v94, v95);

      v94 = 0;
      v95 = 0xE000000000000000;
      if (v47 >> 62)
      {
        v48 = sub_22F741A00();
        if (v48)
        {
LABEL_42:
          v49 = 0;
          do
          {
            if ((v47 & 0xC000000000000001) != 0)
            {
              v50 = MEMORY[0x2319016F0](v49, v47);
            }

            else
            {
              if (v49 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

              v50 = *(v47 + 8 * v49 + 32);
            }

            v51 = v50;
            v52 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              __break(1u);
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            MEMORY[0x231900B10](2313, 0xE200000000000000);
            v53 = [*&v51[OBJC_IVAR___PGTripLocationScore_locationNode] name];
            v54 = sub_22F740E20();
            v56 = v55;

            MEMORY[0x231900B10](v54, v56);

            MEMORY[0x231900B10](8250, 0xE200000000000000);
            v57 = *&v51[OBJC_IVAR___PGTripLocationScore__score];
            sub_22F7413B0();
            MEMORY[0x231900B10](10, 0xE100000000000000);
            MEMORY[0x231900B10](0, 0xE000000000000000);

            ++v49;
          }

          while (v52 != v48);
          v41 = v94;
          v40 = v95;
          v38 = v89;
          goto LABEL_35;
        }
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48)
        {
          goto LABEL_42;
        }
      }

      v41 = 0;
      v40 = 0xE000000000000000;
LABEL_35:

      MEMORY[0x231900B10](v41, v40);
      goto LABEL_36;
    }
  }

LABEL_53:
  if ((v7 & 4) == 0 || (v58 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel)) == 0)
  {
LABEL_74:

    result = v96;
    v80 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v80 = v96 & 0xFFFFFFFFFFFFLL;
    }

    if (!v80)
    {

      return 0x7263736564206F4ELL;
    }

    return result;
  }

  v59 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_finalTripLocationScoreByLevel);

  MEMORY[0x231900B10](0x6373206C616E6946, 0xEF0A3A676E69726FLL);
  v60 = 0;
  v90 = v58;
  while (1)
  {
    if (!*(v58 + 16))
    {
      goto LABEL_58;
    }

    v63 = (v92 + 16 * v60);
    v65 = *v63;
    v64 = v63[1];

    v66 = sub_22F1229E8(v65, v64);
    if (v67)
    {
      break;
    }

LABEL_57:

LABEL_58:
    if (++v60 == 3)
    {

      goto LABEL_74;
    }
  }

  v68 = *(*(v58 + 56) + 8 * v66);
  v94 = 9;
  v95 = 0xE100000000000000;

  MEMORY[0x231900B10](v65, v64);

  MEMORY[0x231900B10](2618, 0xE200000000000000);
  MEMORY[0x231900B10](v94, v95);

  v94 = 0;
  v95 = 0xE000000000000000;
  if (!(v68 >> 62))
  {
    v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_63;
    }

    goto LABEL_72;
  }

  v69 = sub_22F741A00();
  if (!v69)
  {
LABEL_72:
    v62 = 0;
    v61 = 0xE000000000000000;
LABEL_56:

    MEMORY[0x231900B10](v62, v61);
    goto LABEL_57;
  }

LABEL_63:
  v91 = v60;
  v70 = 0;
  while (1)
  {
    if ((v68 & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x2319016F0](v70, v68);
    }

    else
    {
      if (v70 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v71 = *(v68 + 8 * v70 + 32);
    }

    v72 = v71;
    v73 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    MEMORY[0x231900B10](2313, 0xE200000000000000);
    v74 = [*&v72[OBJC_IVAR___PGTripLocationScore_locationNode] name];
    v75 = sub_22F740E20();
    v77 = v76;

    MEMORY[0x231900B10](v75, v77);

    MEMORY[0x231900B10](8250, 0xE200000000000000);
    v78 = *&v72[OBJC_IVAR___PGTripLocationScore__score];
    sub_22F7413B0();
    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](0, 0xE000000000000000);

    ++v70;
    if (v73 == v69)
    {
      v62 = v94;
      v61 = v95;
      v58 = v90;
      v60 = v91;
      goto LABEL_56;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  sub_22F741D40();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t TripFeatureProcessor.aoiLegacyDescription.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___PGTripFeatureProcessor_processorHelper);
  v3 = *(v1 + OBJC_IVAR___PGTripFeatureProcessor_momentNodes);
  v4 = [objc_opt_self() ignoreProgress];
  sub_22F3EFA48(v3, v4);

  v5 = sub_22F3001E8();

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  if (v5 >> 62)
  {
    goto LABEL_12;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = 0;
  if (v6)
  {
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2319016F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_11;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        v6 = sub_22F741A00();
        v7 = 0;
        if (!v6)
        {
          break;
        }
      }

      else
      {
        v11 = [v8 name];
        v12 = sub_22F740E20();
        v14 = v13;

        MEMORY[0x231900B10](v12, v14);

        MEMORY[0x231900B10](10, 0xE100000000000000);
        MEMORY[0x231900B10](9, 0xE100000000000000);

        ++v7;
        if (v10 == v6)
        {
          v7 = v17[0];
          v15 = v17[1];
          goto LABEL_14;
        }
      }
    }
  }

  v15 = 0xE000000000000000;
LABEL_14:

  strcpy(v17, "Legacy AOI:\n");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  if ((v15 & 0xF00000000000000) == 0)
  {

    v15 = 0xE600000000000000;
    v7 = 0xA656E6F4E09;
  }

  MEMORY[0x231900B10](v7, v15);

  return v17[0];
}

unint64_t TripFeatureProcessor.scoreModifierNamesDescription.getter()
{
  v1 = v0;
  sub_22F741B00();

  v2 = OBJC_IVAR___PGTripFeatureProcessor_scoreModifierNamesMet;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
    sub_22F173C28();
    sub_22F160DE4();
    v3 = sub_22F7410E0();
    v5 = v4;
  }

  else
  {
    v5 = 0xE400000000000000;
    v3 = 1701736270;
  }

  MEMORY[0x231900B10](v3, v5);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t sub_22F395528(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22F742000();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F2E57E8();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F3957A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22F39562C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22F39562C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localIdentifier];
      v11 = sub_22F740E20();
      v13 = v12;

      v14 = [v9 localIdentifier];
      v15 = sub_22F740E20();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_22F742040();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F3957A8(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_22F395FA8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_22F3F5F98(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_22F3F5F0C(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_22F3F5F98(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localIdentifier];
      v16 = sub_22F740E20();
      v18 = v17;

      v19 = [v14 localIdentifier];
      v20 = sub_22F740E20();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_22F742040();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localIdentifier];
          v5 = sub_22F740E20();
          v29 = v28;

          v30 = [v26 localIdentifier];
          v31 = sub_22F740E20();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_22F742040();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_22F13D970(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_22F13D970((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_22F395FA8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_22F3F5F98(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_22F3F5F0C(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localIdentifier];
    v5 = sub_22F740E20();
    v51 = v50;

    v52 = [v48 localIdentifier];
    v53 = sub_22F740E20();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_22F742040();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_22F395FA8(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localIdentifier];
        v38 = sub_22F740E20();
        v40 = v39;

        v41 = [v36 localIdentifier];
        v42 = sub_22F740E20();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_22F742040();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localIdentifier];
        v18 = sub_22F740E20();
        v20 = v19;

        v21 = [v16 localIdentifier];
        v22 = sub_22F740E20();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_22F742040();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

unint64_t sub_22F396398()
{
  result = qword_27DAB3E08;
  if (!qword_27DAB3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E08);
  }

  return result;
}

unint64_t sub_22F3963F0()
{
  result = qword_27DAB3E10;
  if (!qword_27DAB3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E10);
  }

  return result;
}

unint64_t sub_22F396448()
{
  result = qword_27DAB3E18;
  if (!qword_27DAB3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E18);
  }

  return result;
}

unint64_t sub_22F3964A0()
{
  result = qword_27DAB3E20;
  if (!qword_27DAB3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E20);
  }

  return result;
}

uint64_t sub_22F396504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_22F396554()
{
  result = qword_27DAB3E28;
  if (!qword_27DAB3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E28);
  }

  return result;
}

uint64_t Song.flexMLAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Song() + 104);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 44);
  LODWORD(v3) = *(v3 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 44) = v9;
  *(a1 + 40) = v3;

  return sub_22F13BB04(v4, v5, v6);
}

uint64_t type metadata accessor for Song()
{
  result = qword_2810A9990;
  if (!qword_2810A9990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Song.init(adamID:title:artist:album:genreNames:isExplicit:duration:preferenceScore:artworkURLFormat:songURLPath:introPreviewPath:audioLocale:flexMLAnalysis:lastRefreshAttemptDate:playbackInfo:arousal:valence:unitagMemoryAppropriateScore:unitagMemoryNotAppropriateScore:loudnessMainPeak:loudnessMainValue:clearedForPhotosMemoriesExport:contentProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, int a14, int a15, char a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, int a27, char a28, int a29, char a30, int a31, char a32, int a33, char a34, int a35, char a36, __int16 a37, char a38, uint64_t a39, uint64_t a40)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 92) = a15;
  *(a9 + 96) = a16 & 1;
  v41 = *(a22 + 32);
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  v42 = *(a22 + 40);
  v43 = *(a22 + 44);
  *(a9 + 104) = a17;
  *(a9 + 120) = a18;
  v44 = type metadata accessor for Song();
  sub_22F1207AC(a21, a9 + v44[15], &qword_27DAB0C90, &unk_22F785B70);
  v45 = a9 + v44[26];
  v46 = *(a22 + 16);
  *v45 = *a22;
  *(v45 + 16) = v46;
  *(v45 + 32) = v41;
  *(v45 + 44) = v43;
  *(v45 + 40) = v42;
  result = sub_22F1207AC(a23, a9 + v44[16], &qword_27DAB0920, &qword_22F770B20);
  *(a9 + v44[17]) = a24;
  v48 = a9 + v44[18];
  *v48 = a25;
  *(v48 + 4) = a26 & 1;
  v49 = a9 + v44[19];
  *v49 = a27;
  *(v49 + 4) = a28 & 1;
  v50 = a9 + v44[20];
  *v50 = a29;
  *(v50 + 4) = a30 & 1;
  v51 = a9 + v44[21];
  *v51 = a31;
  *(v51 + 4) = a32 & 1;
  v52 = a9 + v44[22];
  *v52 = a33;
  *(v52 + 4) = a34 & 1;
  v53 = a9 + v44[23];
  *v53 = a35;
  *(v53 + 4) = a36 & 1;
  *(a9 + v44[24]) = a38;
  v54 = (a9 + v44[25]);
  *v54 = a39;
  v54[1] = a40;
  return result;
}

uint64_t sub_22F39687C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for Song() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_22F396910(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t Song.compactDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  if (*(v0 + 24))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  swift_bridgeObjectRetain_n();
  v5 = sub_22F740F10();

  if (v5 >= 51)
  {
    sub_22F398F90(50);

    v6 = sub_22F740F10();
    v7 = sub_22F741890();
    v8 = __OFADD__(v6, v7);
    result = v6 + v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_32;
    }

    MEMORY[0x231900A90](result);
    sub_22F39902C();
    sub_22F740F40();
    sub_22F740F40();

    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if (*(v1 + 40))
  {
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  swift_bridgeObjectRetain_n();
  v12 = sub_22F740F10();

  if (v12 >= 51)
  {
    sub_22F398F90(50);

    v13 = sub_22F740F10();
    v14 = sub_22F741890();
    v8 = __OFADD__(v13, v14);
    result = v13 + v14;
    if (!v8)
    {
      MEMORY[0x231900A90](result);
      sub_22F39902C();
      sub_22F740F40();
      sub_22F740F40();

      v10 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_13;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v31 = v10;
  if (*(v1 + 56))
  {
    v2 = *(v1 + 48);
    v15 = *(v1 + 56);
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v32 = v3;
  swift_bridgeObjectRetain_n();
  v16 = sub_22F740F10();

  if (v16 >= 51)
  {
    sub_22F398F90(50);

    v17 = sub_22F740F10();
    v18 = sub_22F741890();
    v8 = __OFADD__(v17, v18);
    result = v17 + v18;
    if (!v8)
    {
      MEMORY[0x231900A90](result);
      sub_22F39902C();
      sub_22F740F40();
      sub_22F740F40();

      v15 = 0xE000000000000000;
      v30 = 0;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v2;
LABEL_20:
  v19 = *(v1 + 92);
  *(v1 + 96);
  v20 = sub_22F7413D0();
  v22 = v21;
  if (sub_22F740F10() < 51)
  {
    goto LABEL_23;
  }

  sub_22F398F90(50);

  v23 = sub_22F740F10();
  v24 = sub_22F741890();
  v8 = __OFADD__(v23, v24);
  result = v23 + v24;
  if (v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  MEMORY[0x231900A90](result);
  sub_22F39902C();
  sub_22F740F40();
  sub_22F740F40();

  v20 = 0;
  v22 = 0xE000000000000000;
LABEL_23:
  v25 = *(v1 + *(type metadata accessor for Song() + 96));
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v26 = 0xE500000000000000;
    v27 = 0x65736C6166;
  }

  else
  {
    v26 = 0xE400000000000000;
    v27 = 1702195828;
  }

  if (sub_22F740F10() < 51)
  {
    goto LABEL_30;
  }

  sub_22F398F90(50);

  v28 = sub_22F740F10();
  v29 = sub_22F741890();
  v8 = __OFADD__(v28, v29);
  result = v28 + v29;
  if (!v8)
  {
    MEMORY[0x231900A90](result);
    sub_22F39902C();
    sub_22F740F40();
    sub_22F740F40();

    v27 = 0;
    v26 = 0xE000000000000000;
LABEL_30:
    sub_22F741B00();
    MEMORY[0x231900B10](0x203A44496D616461, 0xE90000000000005BLL);
    MEMORY[0x231900B10](*v1, *(v1 + 8));
    MEMORY[0x231900B10](0x6C746974207C205DLL, 0xEC0000005B203A65);
    MEMORY[0x231900B10](v32, v4);

    MEMORY[0x231900B10](0x69747261207C205DLL, 0xED00005B203A7473);
    MEMORY[0x231900B10](v31, v11);

    MEMORY[0x231900B10](0x75626C61207C205DLL, 0xEC0000005B203A6DLL);
    MEMORY[0x231900B10](v30, v15);

    MEMORY[0x231900B10](0xD000000000000015, 0x800000022F79D300);
    MEMORY[0x231900B10](v20, v22);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79D320);
    MEMORY[0x231900B10](v27, v26);

    MEMORY[0x231900B10](93, 0xE100000000000000);
    return 0;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t Song.adamID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Song.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Song.artist.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Song.album.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t Song.duration.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t Song.artworkURLFormat.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Song.songURLPath.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t Song.introPreviewPath.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t Song.playbackInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for Song() + 68));
}

uint64_t Song.contentProvider.getter()
{
  v1 = (v0 + *(type metadata accessor for Song() + 100));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_22F3974D4(char a1)
{
  result = 0x44496D616461;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x747369747261;
      break;
    case 3:
      result = 0x6D75626C61;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 0x63696C7078457369;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x6E65726566657270;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x504C5255676E6F73;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636F4C6F69647561;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6B63616279616C70;
      break;
    case 14:
      result = 0x6C6173756F7261;
      break;
    case 15:
      result = 0x65636E656C6176;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD00000000000001ELL;
      break;
    case 21:
      result = 0x50746E65746E6F63;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F397780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F399890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F3977B4(uint64_t a1)
{
  v2 = sub_22F399080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3977F0(uint64_t a1)
{
  v2 = sub_22F399080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static Song.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t Song.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22F740D60();
}

uint64_t Song.hashValue.getter()
{
  sub_22F742170();
  v1 = *v0;
  v2 = v0[1];
  sub_22F740D60();
  return sub_22F7421D0();
}

unint64_t Song.jsonDescription.getter()
{
  v0 = sub_22F740E80();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_22F73EF50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22F73EFB0();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_22F73EFA0();
  sub_22F73EF40();
  sub_22F73EF60();
  type metadata accessor for Song();
  sub_22F399350(&qword_2810A99B8, type metadata accessor for Song);
  v8 = sub_22F73EF90();
  v10 = v9;
  sub_22F740E70();
  v11 = sub_22F740E40();
  v13 = v12;
  sub_22F133BF0(v8, v10);

  if (v13)
  {
    return v11;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t Song.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E38, &unk_22F789350);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F399080();
  sub_22F742210();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v58) = 0;
  sub_22F741F80();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v58) = 1;
    sub_22F741F20();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v58) = 2;
    sub_22F741F20();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v58) = 3;
    sub_22F741F20();
    v58 = v3[8];
    v65 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8);
    sub_22F741F70();
    v19 = *(v3 + 72);
    LOBYTE(v58) = 5;
    sub_22F741F30();
    v20 = v3[10];
    v21 = *(v3 + 88);
    LOBYTE(v58) = 6;
    sub_22F741F40();
    v22 = *(v3 + 23);
    v23 = *(v3 + 96);
    LOBYTE(v58) = 7;
    v65 = v23;
    sub_22F741F50();
    v24 = v3[13];
    v25 = v3[14];
    LOBYTE(v58) = 8;
    sub_22F741F20();
    v26 = v3[15];
    v27 = v3[16];
    LOBYTE(v58) = 9;
    sub_22F741F20();
    v28 = v3[17];
    v29 = v3[18];
    LOBYTE(v58) = 10;
    sub_22F741F20();
    v30 = type metadata accessor for Song();
    v31 = v30[15];
    LOBYTE(v58) = 11;
    sub_22F73F7C0();
    sub_22F399350(&qword_2810AC6E8, MEMORY[0x277CC9788]);
    sub_22F741F70();
    v32 = v30[16];
    LOBYTE(v58) = 12;
    sub_22F73F690();
    sub_22F399350(&qword_2810AC718, MEMORY[0x277CC9578]);
    sub_22F741F70();
    v58 = *(v3 + v30[17]);
    v65 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E40, &qword_22F789360);
    sub_22F3991E8(&qword_2810A9388, sub_22F3990D4);
    sub_22F741F70();
    v33 = (v3 + v30[18]);
    v34 = *v33;
    LOBYTE(v33) = *(v33 + 4);
    LOBYTE(v58) = 14;
    v65 = v33;
    sub_22F741F50();
    v35 = (v3 + v30[19]);
    v36 = *v35;
    LOBYTE(v35) = *(v35 + 4);
    LOBYTE(v58) = 15;
    v65 = v35;
    sub_22F741F50();
    v37 = (v3 + v30[20]);
    v38 = *v37;
    LOBYTE(v37) = *(v37 + 4);
    LOBYTE(v58) = 16;
    v65 = v37;
    sub_22F741F50();
    v39 = (v3 + v30[21]);
    v40 = *v39;
    LOBYTE(v39) = *(v39 + 4);
    LOBYTE(v58) = 17;
    v65 = v39;
    sub_22F741F50();
    v41 = (v3 + v30[22]);
    v42 = *v41;
    LOBYTE(v41) = *(v41 + 4);
    LOBYTE(v58) = 18;
    v65 = v41;
    sub_22F741F50();
    v43 = (v3 + v30[23]);
    v44 = *v43;
    LOBYTE(v43) = *(v43 + 4);
    LOBYTE(v58) = 19;
    v65 = v43;
    sub_22F741F50();
    v45 = *(v3 + v30[24]);
    LOBYTE(v58) = 20;
    sub_22F741F30();
    v46 = (v3 + v30[25]);
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v58) = 21;
    sub_22F741F20();
    v49 = v3 + v30[26];
    v50 = *v49;
    v51 = *(v49 + 8);
    v52 = *(v49 + 16);
    v53 = *(v49 + 24);
    v54 = *(v49 + 32);
    v55 = *(v49 + 44);
    LODWORD(v49) = *(v49 + 40);
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v62 = v54;
    v64 = v55;
    v63 = v49;
    v65 = 22;
    sub_22F13BB04(v50, v51, v52);
    sub_22F399128();
    sub_22F741FE0();
    sub_22F39917C(v58, v59, v60);
  }

  return (*(v6 + 8))(v9, v5);
}