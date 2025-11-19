uint64_t objectdestroy_342Tm()
{
  v17 = sub_20C134014();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v16 = sub_20C137254();
  v5 = *(v16 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_20C134D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v15 = *(v10 + 64);
  v13 = v2 | v6 | v11;

  (*(v1 + 8))(v0 + v3, v17);
  (*(v5 + 8))(v0 + v7, v16);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v15, v13 | 7);
}

uint64_t sub_20BDC8914(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t))
{
  v5 = v3;
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_20C137254() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  sub_20C134D54();
  sub_20C134D44();
  return a3(v5 + v7, v5 + v10);
}

uint64_t objectdestroy_345Tm()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_20BDC8BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, double))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  return a3(v3 + v6, v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), 0.0);
}

uint64_t type metadata accessor for TrainerFilterUpdated()
{
  result = qword_27C76EE60;
  if (!qword_27C76EE60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDC8DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WorkoutPlanRepetitionRequested();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v4;
  (*(a4 + 8))(a2, a4, v9);
  swift_getObjectType();
  v12 = sub_20C137374();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  sub_20BDC8F20();
  sub_20C13A764();
  swift_unknownObjectRelease();
  return sub_20BDC8F78(v11);
}

unint64_t sub_20BDC8F20()
{
  result = qword_27C76A7B0;
  if (!qword_27C76A7B0)
  {
    type metadata accessor for WorkoutPlanRepetitionRequested();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76A7B0);
  }

  return result;
}

uint64_t sub_20BDC8F78(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanRepetitionRequested();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BDC8FD4()
{
  v35 = sub_20C132654();
  v0 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v28 - v4;
  v6 = sub_20C132704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132684();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B91588C(v5);
    return MEMORY[0x277D84FA0];
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_20C132664();
  if (!v10)
  {
    (*(v7 + 8))(v9, v6);
    return MEMORY[0x277D84FA0];
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = v9;
    v30 = v7;
    v31 = v6;
    v36 = MEMORY[0x277D84F90];
    v12 = v10;
    sub_20B526D44(0, v11, 0);
    v13 = v36;
    v15 = *(v0 + 16);
    v14 = v0 + 16;
    v16 = *(v14 + 64);
    v28[1] = v12;
    v17 = v12 + ((v16 + 32) & ~v16);
    v32 = *(v14 + 56);
    v33 = v15;
    v34 = v14;
    v18 = (v14 - 8);
    do
    {
      v19 = v35;
      v33(v2, v17, v35);
      v20 = sub_20C132634();
      v22 = v21;
      (*v18)(v2, v19);
      v36 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_20B526D44((v23 > 1), v24 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += v32;
      --v11;
    }

    while (v11);

    v7 = v30;
    v6 = v31;
    v9 = v29;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v27 = sub_20B527580(v13);

  (*(v7 + 8))(v9, v6);
  return v27;
}

uint64_t sub_20BDC9334()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 13;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20BDC93CC()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 13;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20BDC9704()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 13;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

uint64_t sub_20BDC97B8()
{
  sub_20B5D9BA8();
  v0 = swift_allocError();
  *v1 = 13;
  *(swift_allocObject() + 16) = v0;

  return sub_20C137CA4();
}

unint64_t sub_20BDC988C()
{
  result = qword_27C76EE70;
  if (!qword_27C76EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76EE70);
  }

  return result;
}

uint64_t sub_20BDC98E0()
{
  v0 = sub_20C132BF4();
  if (!v1)
  {
    return 4;
  }

  if (v0 == 0x6C6C6F726373 && v1 == 0xE600000000000000 || (v3 = v0, v4 = v1, (sub_20C13DFF4() & 1) != 0))
  {

    return 0;
  }

  else if (v3 == 0x7366657270 && v4 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_20C13DFF4();

    if (v5)
    {
      return 1;
    }

    else
    {
      v6 = [objc_opt_self() sharedApplication];
      v7 = sub_20C132B64();
      v8 = [v6 canOpenURL_];

      if (v8)
      {
        return 2;
      }

      else
      {
        sub_20C1380F4();
        if (sub_20C1380B4())
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_20BDC9A30()
{
  v1 = sub_20C13C554();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_lazyLockupFetcher);

  v7 = sub_20C02F3E0(v6, v5, 0, 0);

  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_descriptorIdentifier);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_descriptorIdentifier + 8);
  v32 = 0uLL;
  LOBYTE(v33) = 1;
  *(&v33 + 1) = 0;
  *&v34 = 0;
  WORD4(v34) = 128;
  v35 = 0uLL;
  *&v36 = v8;
  *(&v36 + 1) = v9;
  v37 = 0uLL;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = v7;
  *&v39[0] = MEMORY[0x277D84F90];
  *(v39 + 8) = 0u;
  *(&v39[1] + 8) = 0u;
  *(&v39[2] + 1) = 0;
  v40 = 2;
  nullsub_1(&v32);
  v10 = v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 144);
  v41[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 128);
  v41[9] = v11;
  v42 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 160);
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 80);
  v41[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 64);
  v41[5] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 112);
  v41[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 96);
  v41[7] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 16);
  v41[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row);
  v41[1] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 48);
  v41[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 32);
  v41[3] = v15;
  v16 = v39[2];
  *(v10 + 128) = v39[1];
  *(v10 + 144) = v16;
  *(v10 + 160) = v40;
  v17 = v37;
  *(v10 + 64) = v36;
  *(v10 + 80) = v17;
  v18 = v39[0];
  *(v10 + 96) = v38;
  *(v10 + 112) = v18;
  v19 = v33;
  *v10 = v32;
  *(v10 + 16) = v19;
  v20 = v35;
  *(v10 + 32) = v34;
  *(v10 + 48) = v20;

  sub_20B634408(v41);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v23 = sub_20B61DEF0(v0, result);
      if (v24)
      {
        v26 = v23;
        v27 = v24;
        v28 = v25;
        v29 = v0;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
        v30 = sub_20C13C584();
        result = (*(v2 + 8))(v4, v1);
        if ((v30 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B621750(v26, v27, v28, v29, 0, v22);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BDC9CFC(uint64_t a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0);
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v40 - v12;
  MEMORY[0x28223BE20](v13);
  v47 = &v40 - v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_lazyLockupFetcher);
  v17 = v15[10];
  v16 = v15[11];
  __swift_project_boxed_opaque_existential_1(v15 + 7, v17);
  v18 = *(v16 + 8);
  v40 = v8;
  v18(v17, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v15;
  v20 = v8;
  v21 = v42;
  (*(v3 + 16))(v5, v20, v42);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  (*(v3 + 32))(v23 + v22, v5, v21);
  v24 = (v23 + ((v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_20B9EA780;
  v24[1] = v19;

  v25 = v41;
  sub_20C137C94();
  (*(v3 + 8))(v40, v21);
  v26 = swift_allocObject();
  v27 = v43;
  *(v26 + 16) = sub_20BDCAD78;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_20B849B38;
  *(v28 + 24) = v26;
  v30 = v44;
  v29 = v45;
  v31 = v46;
  (*(v45 + 16))(v44, v25, v46);
  v32 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v33 = swift_allocObject();
  (*(v29 + 32))(v33 + v32, v30, v31);
  v34 = (v33 + ((v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v34 = sub_20B66A8B4;
  v34[1] = v28;

  v35 = v47;
  sub_20C137C94();
  v36 = *(v29 + 8);
  v36(v25, v31);
  v37 = sub_20C137CB4();
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v37(sub_20B5DF6DC, v38);

  return (v36)(v35, v31);
}

uint64_t sub_20BDCA1AC()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_catalogClient);

  swift_unknownObjectRelease();

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return v0;
}

uint64_t sub_20BDCA2B4()
{
  sub_20BDCA1AC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditorialGalleryShelf()
{
  result = qword_27C76EE78;
  if (!qword_27C76EE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDCA360()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BDCA440()
{
  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BDCA534()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BDC9A30();
  }

  return result;
}

uint64_t sub_20BDCA58C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BDCACA4;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BDCA850@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BDCA8C8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BDCA97C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_platform))
  {
    return 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 144);
  v12 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 128);
  v13 = v4;
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 160);
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 80);
  v9[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 64);
  v9[5] = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 112);
  v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 96);
  v11 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 16);
  v9[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row);
  v9[1] = v7;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 48);
  v9[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row + 32);
  v9[3] = v8;
  result = sub_20B5EAF8C(v9);
  if (result != 1)
  {
    return *(*(&v10 + 1) + 16) > a1;
  }

  return result;
}

uint64_t sub_20BDCAA18(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v8 = v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_row;
  sub_20B5D8060(v21);
  v9 = v21[9];
  *(v8 + 128) = v21[8];
  *(v8 + 144) = v9;
  *(v8 + 160) = v22;
  v10 = v21[5];
  *(v8 + 64) = v21[4];
  *(v8 + 80) = v10;
  v11 = v21[7];
  *(v8 + 96) = v21[6];
  *(v8 + 112) = v11;
  v12 = v21[1];
  *v8 = v21[0];
  *(v8 + 16) = v12;
  v13 = v21[3];
  *(v8 + 32) = v21[2];
  *(v8 + 48) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B52E424(&v20, v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_eventHub) = v20;
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_platform) = v20;
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_displayStyle) = a2;
  v14 = (v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_descriptorIdentifier);
  *v14 = a3;
  v14[1] = a4;
  type metadata accessor for ShelfLazyLockupFetcher();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 152) = MEMORY[0x277D84F90];

  v17 = sub_20B6B0C04(v16);
  v18 = MEMORY[0x277D84FA0];
  *(v15 + 160) = v17;
  *(v15 + 168) = v18;
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();

  *(v15 + 136) = 10;
  *(v15 + 144) = a2;
  *(v15 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_lazyLockupFetcher) = v15;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialGalleryShelf_subscriptionToken) = sub_20C13A914();
  return v4;
}

uint64_t sub_20BDCACB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BDCAD80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = type metadata accessor for PageAlertAction();
  v6 = (v5 - 8);
  v36 = *(v5 - 8);
  v7 = v36;
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanStringBuilder);
  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  v14 = sub_20B5E107C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v35;
  *(v17 + 24) = a2;

  sub_20C132ED4();
  v18 = &v12[v6[8]];
  *v18 = v14;
  v18[1] = v16;
  v12[v6[7]] = 1;
  v19 = &v12[v6[9]];
  *v19 = sub_20BDCFB48;
  v19[1] = v17;
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_storefrontLocalizer), *(v3 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_storefrontLocalizer + 24));
  v20 = sub_20C138D34();
  v22 = v21;
  sub_20C132ED4();
  v23 = &v9[v6[8]];
  *v23 = v20;
  v23[1] = v22;
  v9[v6[7]] = 2;
  v24 = &v9[v6[9]];
  *v24 = 0;
  *(v24 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v25 = *(v7 + 72);
  v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14F320;
  v28 = v27 + v26;
  sub_20BDCFBB0(v12, v28, type metadata accessor for PageAlertAction);
  sub_20BDCFBB0(v9, v28 + v25, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1((v13 + 48), *(v13 + 72));
  v29 = sub_20B5E107C();
  v31 = v30;
  sub_20BDCFB50(v9, type metadata accessor for PageAlertAction);
  sub_20BDCFB50(v12, type metadata accessor for PageAlertAction);
  type metadata accessor for DefaultPageAlertPresenter();
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  swift_unknownObjectWeakInit();
  v33 = MEMORY[0x277D84F90];
  *(v32 + 32) = v27;
  *(v32 + 40) = v33;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  *(v32 + 64) = v29;
  *(v32 + 72) = v31;
  *(v32 + 80) = 0;
  *(v32 + 88) = 0;
  return v32;
}

uint64_t sub_20BDCB0E8()
{
  v1 = v0;
  v16 = sub_20C132EE4();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v16);
  v15 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20B5237AC();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v17);

  v7 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
  v8 = sub_20C13CDF4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v10 = v15;
  v9 = v16;
  (*(v2 + 16))(v15, v1 + v7, v16);
  v11 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v1;
  (*(v2 + 32))(&v12[v11], v10, v9);

  sub_20B6383D0(0, 0, v6, &unk_20C17D4C8, v12);
}

uint64_t sub_20BDCB414()
{
  v1 = swift_allocObject();
  swift_weakInit();

  v2 = sub_20BDCAD80(&unk_20C17D4E8, v1);
  v4 = v3;

  v5 = v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 224))(*(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page), v2, v4, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDCB518()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C135814();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_state;
  swift_beginAccess();
  sub_20BDCFBB0(v1 + v9, v4, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20BDCFB50(v4, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = sub_20C1357F4();
  v13 = v12;
  v14 = swift_allocObject();
  swift_weakInit();

  v15 = sub_20BCCB168(v11, v13, &unk_20C17D518, v14);
  v17 = v16;

  v18 = v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v19 + 224))(*(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page), v15, v17, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return (*(v6 + 8))(v8, v5);
}

uint64_t WorkoutPlanTemplateDetailPageDataProvider.metricPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage;
  v4 = sub_20C1333A4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20BDCB860()
{
  v1[3] = v0;
  v2 = sub_20C13BB84();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20C132EE4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDCB988, 0, 0);
}

uint64_t sub_20BDCB988()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = *(v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient + 24);
  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient), v7);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_20BDCBA80;
  v10 = v0[10];

  return MEMORY[0x2821ADF00](v10, v7, v8);
}

uint64_t sub_20BDCBA80()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20BDCBC20;
  }

  else
  {
    v2 = sub_20BDCBB94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BDCBB94()
{
  (*(v0[8] + 8))(v0[10], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BDCBC20()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  sub_20C13B454();
  v2(v3, v4, v5);
  v6 = v1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = v0[14];
    v9 = v0[9];
    v11 = v0[7];
    v10 = v0[8];
    v37 = v0[6];
    v38 = v0[10];
    v35 = v0[5];
    v36 = v0[4];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_20BDCFCC0(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v13 = sub_20C13DFA4();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_20B51E694(v13, v15, &v39);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v0[2] = v33;
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v19 = sub_20C13C9D4();
    v21 = sub_20B51E694(v19, v20, &v39);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to delete template %{mask.hash}s: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v35 + 8))(v37, v36);
    v16(v38, v11);
  }

  else
  {
    v22 = v0[14];
    v24 = v0[9];
    v23 = v0[10];
    v25 = v0[7];
    v26 = v0[8];
    v28 = v0[5];
    v27 = v0[6];
    v29 = v0[4];

    v30 = *(v26 + 8);
    v30(v24, v25);
    (*(v28 + 8))(v27, v29);
    v30(v23, v25);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_20BDCBF50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_20C13BB84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_20C132EE4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDCC07C, 0, 0);
}

uint64_t sub_20BDCC07C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
  v6 = *(v3 + 16);
  v0[13] = v6;
  v0[14] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = *(v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient + 24);
  v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient), v7);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_20BDCC178;
  v10 = v0[12];
  v11 = v0[3];
  v12 = v0[4];

  return MEMORY[0x2821ADF18](v10, v11, v12, v7, v8);
}

uint64_t sub_20BDCC178()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20BDCC318;
  }

  else
  {
    v2 = sub_20BDCC28C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20BDCC28C()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BDCC318()
{
  v40 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  sub_20C13B454();
  v2(v3, v4, v5);
  v6 = v1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v33 = v0[16];
    v9 = v0[11];
    v11 = v0[9];
    v10 = v0[10];
    v37 = v0[8];
    v38 = v0[12];
    v35 = v0[7];
    v36 = v0[6];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_20BDCFCC0(&qword_27C763EF0, MEMORY[0x277CC95F0]);
    v13 = sub_20C13DFA4();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_20B51E694(v13, v15, &v39);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v0[2] = v33;
    v18 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    v19 = sub_20C13C9D4();
    v21 = sub_20B51E694(v19, v20, &v39);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to update template name %{mask.hash}s: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2F6A40](v34, -1, -1);
    MEMORY[0x20F2F6A40](v12, -1, -1);

    (*(v35 + 8))(v37, v36);
    v16(v38, v11);
  }

  else
  {
    v22 = v0[16];
    v24 = v0[11];
    v23 = v0[12];
    v25 = v0[9];
    v26 = v0[10];
    v28 = v0[7];
    v27 = v0[8];
    v29 = v0[6];

    v30 = *(v26 + 8);
    v30(v24, v25);
    (*(v28 + 8))(v27, v29);
    v30(v23, v25);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_20BDCC648(uint64_t a1)
{
  v1[5] = a1;
  sub_20C13CDA4();
  v1[6] = sub_20C13CD94();
  v3 = sub_20C13CD24();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_20BDCC6E0, v3, v2);
}

uint64_t sub_20BDCC6E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20BCD37BC;

    return sub_20BDCC7D0();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20BDCC7D0()
{
  v1[2] = v0;
  v2 = sub_20C13AF64();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_20C13CDA4();
  v1[6] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x2822009F8](sub_20BDCC8C4, v4, v3);
}

uint64_t sub_20BDCC8C4()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 16);
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 248))(*(v2 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page), ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_20BDCC9B8;

  return sub_20BDCB860();
}

uint64_t sub_20BDCC9B8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_20BDCCAD8, v3, v2);
}

uint64_t sub_20BDCCAD8()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  swift_getObjectType();
  sub_20C13AF54();
  sub_20C13A764();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BDCCBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_20C13CDA4();
  v3[8] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x2822009F8](sub_20BDCCC40, v5, v4);
}

uint64_t sub_20BDCCC40()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_20BCD4964;
    v4 = v0[5];
    v3 = v0[6];

    return sub_20BDCBF50(v4, v3);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20BDCCD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_20C13BB84();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State(0);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_20C135814();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDCCEC4, 0, 0);
}

uint64_t sub_20BDCCEC4()
{
  v1 = v0[9];
  v2 = (v0[8] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769650);
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20C14F980;
  (*(v6 + 16))(v8 + v7, v1, v5);
  v9 = sub_20BE8D710(v8);
  v0[19] = v9;
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_20BDCD08C;

  return MEMORY[0x2821ADEF0](v9, v3, v4);
}

uint64_t sub_20BDCD08C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_20BDCD928;
  }

  else
  {

    *(v4 + 176) = a1;
    v5 = sub_20BDCD1BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BDCD1BC()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_20BEDD6DC(v0[22], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20BDCF884(v0[15]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[16];
    v9 = v0[13];
    v10 = v0[8];
    (*(v7 + 32))(v6, v0[15], v8);
    v11 = *(v7 + 16);
    v0[23] = v11;
    v0[24] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11(v9, v6, v8);
    v12 = *(v7 + 56);
    v0[25] = v12;
    v0[26] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v9, 0, 1, v8);
    v13 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_state;
    swift_beginAccess();
    sub_20BDCF8EC(v9, v10 + v13);
    swift_endAccess();
    v14 = swift_task_alloc();
    v0[27] = v14;
    *v14 = v0;
    v14[1] = sub_20BDCD3D4;
    v15 = v0[18];

    return sub_20BCCA588(v15);
  }
}

uint64_t sub_20BDCD3D4()
{

  return MEMORY[0x2822009F8](sub_20BDCD4D0, 0, 0);
}

uint64_t sub_20BDCD4D0()
{
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_20BDCD574;
  v2 = *(v0 + 144);

  return sub_20BEE6740(v2);
}

uint64_t sub_20BDCD574()
{

  return MEMORY[0x2822009F8](sub_20BDCD670, 0, 0);
}

uint64_t sub_20BDCD670()
{
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_actionsShelf);
  *(v0 + 232) = v1;
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 128);
    v4 = *(v0 + 112);
    (*(v0 + 184))(v4, *(v0 + 144), v3);
    v2(v4, 0, 1, v3);
    v5 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailActionShelf_template;
    swift_beginAccess();
    sub_20BDCF950(v4, v1 + v5);
    swift_endAccess();
    sub_20C13CDA4();
    *(v0 + 240) = sub_20C13CD94();
    v7 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BDCD814, v7, v6);
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20BDCD814()
{

  sub_20BBA1AAC();

  return MEMORY[0x2822009F8](sub_20BDCD880, 0, 0);
}

uint64_t sub_20BDCD880()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BDCD928()
{

  sub_20C13B454();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1D4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[21];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "Failed to fetch workout template for editing.", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20BDCDA74(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 104) = a4;
  *(v5 + 24) = type metadata accessor for PageMetricAction();
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  *(v5 + 40) = swift_task_alloc();
  v6 = sub_20C134F24();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = type metadata accessor for ShelfMetricAction();
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDCDC08, 0, 0);
}

uint64_t sub_20BDCDC08()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  v3 = *MEMORY[0x277D52B38];
  v4 = sub_20C136664();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = *(v0 + 40);
  v7 = *(v0 + 104);
  (*(*(v0 + 56) + 104))(*(v0 + 64), **(&unk_277D98138 + v2), *(v0 + 48));
  v8 = sub_20C132C14();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v32 = *&aDeleteplleavep_0[8 * v7 + 32];
  v33 = *&aDeleteplleavep_0[8 * v7];
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 32);
  v30 = *(v0 + 40);
  v31 = *(v0 + 24);
  v16 = v10[8];
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v9 + v16, 1, 1, v17);
  v18 = v10[10];
  v19 = *MEMORY[0x277D51768];
  v20 = sub_20C1352E4();
  (*(*(v20 - 8) + 104))(v9 + v18, v19, v20);
  v21 = v10[11];
  v22 = sub_20C136E94();
  (*(*(v22 - 8) + 56))(v9 + v21, 1, 1, v22);
  v23 = MEMORY[0x277D84F90];
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v12, v9, &unk_27C7622E0);
  (*(v13 + 32))(v9 + v10[5], v11, v14);
  sub_20B5DF134(v30, v9 + v10[6], &unk_27C7617F0);
  v25 = (v9 + v10[7]);
  *v25 = v33;
  v25[1] = v32;
  v26 = (v9 + v10[9]);
  *v26 = 0;
  v26[1] = 0;
  *(v9 + v10[12]) = v24;
  sub_20BDCFBB0(v9, v15 + *(v31 + 20), type metadata accessor for ShelfMetricAction);
  *v15 = v23;
  sub_20C13CDA4();
  *(v0 + 96) = sub_20C13CD94();
  v28 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BDCDF90, v28, v27);
}

uint64_t sub_20BDCDF90()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page);
  v3 = v2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v0 + 32);
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 160))(v2, v4, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x2822009F8](sub_20BDCE06C, 0, 0);
}

uint64_t sub_20BDCE06C()
{
  v1 = v0[11];
  sub_20BDCFB50(v0[4], type metadata accessor for PageMetricAction);
  sub_20BDCFB50(v1, type metadata accessor for ShelfMetricAction);

  v2 = v0[1];

  return v2();
}

uint64_t WorkoutPlanTemplateDetailPageDataProvider.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate);
  sub_20BDCFB50(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_state, type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State);
  v3 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
  v4 = sub_20C132EE4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_contactService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_storefrontLocalizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient);

  return v0;
}

uint64_t WorkoutPlanTemplateDetailPageDataProvider.__deallocating_deinit()
{
  WorkoutPlanTemplateDetailPageDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_20BDCE324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
    v13 = sub_20C13CDF4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v12, v4);
    v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 4) = v11;
    (*(v5 + 32))(&v15[v14], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    sub_20B6383D0(0, 0, v9, a3, v15);
  }

  return result;
}

uint64_t sub_20BDCE55C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BDCE600()
{
  result = sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State(319);
    if (v2 <= 0x3F)
    {
      result = sub_20C132EE4();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20BDCE790()
{
  v0 = sub_20C135814();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_20BDCE858(uint64_t a1)
{
  v4 = *(sub_20C132EE4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20BDCCD38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20BDCE950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v120 = a3;
  v121 = a4;
  v124 = a2;
  v7 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v7 - 8);
  v115 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v9 - 8);
  v119 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v11 - 8);
  v118 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v13 - 8);
  v117 = &v114 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v114 - v16;
  *&v126 = sub_20C1333A4();
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v114 - v20;
  *(v5 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_state;
  v23 = sub_20C135814();
  v24 = *(*(v23 - 8) + 56);
  v125 = v5;
  v24(v5 + v22, 1, 1, v23);
  v25 = 0;
  if (a5)
  {
    type metadata accessor for WorkoutPlanTemplateDetailActionShelf();
    swift_allocObject();

    v25 = sub_20BBA6520();
  }

  v26 = v125;
  *(v125 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_actionsShelf) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BB0);
  sub_20C133AA4();
  sub_20B51C710(v140, v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_contactService);
  type metadata accessor for WorkoutPlanTemplateDetailShelf();
  swift_allocObject();

  v27 = sub_20BEEED80();

  v116 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_detailShelf;
  *(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_detailShelf) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v26 + 16) = v140[0];
  type metadata accessor for WorkoutPlanTemplateDetailHeaderShelf();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v29 = v28 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanTemplateDetailHeaderShelf_row;
  sub_20B5D8060(v140);
  v30 = v140[9];
  *(v29 + 128) = v140[8];
  *(v29 + 144) = v30;
  *(v29 + 160) = v141;
  v31 = v140[5];
  *(v29 + 64) = v140[4];
  *(v29 + 80) = v31;
  v32 = v140[7];
  *(v29 + 96) = v140[6];
  *(v29 + 112) = v32;
  v33 = v140[1];
  *v29 = v140[0];
  *(v29 + 16) = v33;
  v34 = v140[3];
  *(v29 + 32) = v140[2];
  *(v29 + 48) = v34;
  v35 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_headerShelf;
  *(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_headerShelf) = v28;
  v36 = *MEMORY[0x277D517E8];
  v37 = sub_20C1352F4();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v17, v36, v37);
  (*(v38 + 56))(v17, 0, 1, v37);
  v39 = sub_20C132C14();
  (*(*(v39 - 8) + 56))(v117, 1, 1, v39);
  v40 = sub_20C135ED4();
  (*(*(v40 - 8) + 56))(v118, 1, 1, v40);
  v41 = sub_20C136914();
  (*(*(v41 - 8) + 56))(v119, 1, 1, v41);
  sub_20C133384();
  v121 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage;
  v42 = v123;
  v43 = v21;
  v44 = v126;
  (*(v123 + 32))(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_metricPage, v43, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v137, v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_subscriptionToken) = sub_20C13A914();
  v45 = OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_templateIdentifier;
  v46 = sub_20C132EE4();
  v119 = *(v46 - 8);
  (*(v119 + 2))(v26 + v45, v124, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v137, v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_workoutPlanStringBuilder) = v137;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EEA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = *(v26 + v35);
  v48 = inited + 32;
  *(inited + 40) = &off_2822DD868;
  *(inited + 48) = *(v26 + v116);
  *(inited + 56) = &off_2822F4750;
  v49 = *(v26 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_actionsShelf);
  v50 = &off_2822D1660;
  if (!v49)
  {
    v50 = 0;
  }

  *(inited + 64) = v49;
  *(inited + 72) = v50;
  v51 = v26 + v121;
  v52 = v122;
  (*(v42 + 16))(v122, v51, v44);

  v121 = sub_20C133394();
  v118 = v53;
  result = (*(v42 + 8))(v52, v44);
  v55 = 0;
  v56 = MEMORY[0x277D84F90];
  v57 = 3;
  v58 = MEMORY[0x277D84F90];
  v120 = v46;
LABEL_6:
  if (v55 > 3)
  {
    v57 = v55;
  }

  v59 = v57 + 1;
  v60 = (v48 + 16 * v55);
  while (v55 != 3)
  {
    if (v59 == ++v55)
    {
      __break(1u);
      return result;
    }

    v61 = v60 + 2;
    v62 = *v60;
    v60 += 2;
    if (v62)
    {
      v63 = v56;
      v64 = *(v61 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC0577C(0, v58[2] + 1, 1, v58);
        v58 = result;
      }

      v66 = v58[2];
      v65 = v58[3];
      if (v66 >= v65 >> 1)
      {
        result = sub_20BC0577C((v65 > 1), v66 + 1, 1, v58);
        v58 = result;
      }

      v58[2] = v66 + 1;
      v67 = &v58[2 * v66];
      v67[4] = v62;
      v67[5] = v64;
      v56 = v63;
      v57 = 3;
      goto LABEL_6;
    }
  }

  LODWORD(v123) = sub_20C1380F4();
  v68 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v122 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v68 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v69 = sub_20C13C724();
  v70 = type metadata accessor for CatalogPageImpressionTracker();
  v71 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v72 = MEMORY[0x277D221C0];
  v71[2] = sub_20C13C6D4();
  v71[3] = v69;
  v71[4] = v72;
  v138 = v70;
  v73 = sub_20BDCFCC0(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v139 = v73;
  *&v137 = v71;
  v74 = type metadata accessor for MetricLocationStore();
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D84F98];
  *(v75 + 16) = v56;
  *(v75 + 24) = v76;
  v77 = __swift_mutable_project_boxed_opaque_existential_1(&v137, v70);
  v78 = MEMORY[0x28223BE20](v77);
  v80 = (&v114 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80, v78);
  v82 = *v80;
  v136[3] = v70;
  v136[4] = v73;
  v136[0] = v82;
  v135[3] = v74;
  v135[4] = &off_2822B6968;
  v135[0] = v75;
  v83 = v58[2];
  if (v83)
  {
    v115 = v74;
    v116 = v73;
    v117 = &v114;
    v134[0] = v56;
    sub_20BB5D394(0, v83, 0);
    v84 = 4;
    v85 = v134[0];
    do
    {
      v86 = *&v58[v84];
      v134[0] = v85;
      v88 = *(v85 + 16);
      v87 = *(v85 + 24);
      v126 = v86;
      swift_unknownObjectRetain();
      if (v88 >= v87 >> 1)
      {
        sub_20BB5D394((v87 > 1), v88 + 1, 1);
        v85 = v134[0];
      }

      *(v85 + 16) = v88 + 1;
      v89 = v85 + 24 * v88;
      *(v89 + 32) = v126;
      *(v89 + 48) = 0;
      v84 += 2;
      --v83;
    }

    while (v83);

    v73 = v116;
    v74 = v115;
  }

  else
  {

    v85 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v136, v134);
  sub_20B51CC64(v135, v133);
  v90 = __swift_mutable_project_boxed_opaque_existential_1(v134, v134[3]);
  *&v126 = &v114;
  v91 = MEMORY[0x28223BE20](v90);
  v93 = (&v114 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v94 + 16))(v93, v91);
  v95 = __swift_mutable_project_boxed_opaque_existential_1(v133, v133[3]);
  v96 = MEMORY[0x28223BE20](v95);
  v98 = (&v114 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v99 + 16))(v98, v96);
  v100 = *v93;
  v101 = *v98;
  v131 = v70;
  v132 = v73;
  v130[0] = v100;
  v128 = v74;
  v129 = &off_2822B6968;
  v127[0] = v101;
  v102 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v103 = __swift_mutable_project_boxed_opaque_existential_1(v130, v131);
  v104 = MEMORY[0x28223BE20](v103);
  v106 = (&v114 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v107 + 16))(v106, v104);
  v108 = __swift_mutable_project_boxed_opaque_existential_1(v127, v128);
  v109 = MEMORY[0x28223BE20](v108);
  v111 = (&v114 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v112 + 16))(v111, v109);
  v113 = sub_20BE3AA74(v121, v118, v85, v123, v122, *v106, *v111, 2, v102);
  (*(v119 + 1))(v124, v120);
  __swift_destroy_boxed_opaque_existential_1(v135);
  __swift_destroy_boxed_opaque_existential_1(v136);
  __swift_destroy_boxed_opaque_existential_1(v127);
  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(v133);
  __swift_destroy_boxed_opaque_existential_1(v134);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  result = v125;
  *(v125 + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_page) = v113;
  return result;
}

uint64_t sub_20BDCF884(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BDCF8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BDCF950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762300);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BDCF9C0(uint64_t a1)
{
  v4 = *(sub_20C132EE4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20BDCCD38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20BDCFAB8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20BDCC648(v0);
}

uint64_t sub_20BDCFB50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BDCFBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BDCFC18(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_20B52AC14;

  return sub_20BDCCBA4(a1, a2, v2);
}

uint64_t sub_20BDCFCC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BDCFD0C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView);
  sub_20BA995D4(a1);
}

void sub_20BDCFD70(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView);
  sub_20BA995D4(a1);
}

void *sub_20BDCFDD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20BDCFE04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout];
  sub_20BDD4524(v171);
  v13 = v171[7];
  *(v12 + 6) = v171[6];
  *(v12 + 7) = v13;
  v14 = v171[9];
  *(v12 + 8) = v171[8];
  *(v12 + 9) = v14;
  v15 = v171[3];
  *(v12 + 2) = v171[2];
  *(v12 + 3) = v15;
  v16 = v171[5];
  *(v12 + 4) = v171[4];
  *(v12 + 5) = v16;
  v17 = v171[1];
  *v12 = v171[0];
  *(v12 + 1) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_titleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setNumberOfLines_];
  [v19 setLineBreakMode_];
  v20 = objc_opt_self();
  v21 = [v20 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:2 design:1024 variant:?];
  [v19 setFont_];

  v22 = objc_opt_self();
  v23 = [v22 labelColor];
  [v19 setTextColor_];

  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  *&v5[v18] = v19;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_subtitleLabel;
  v25 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v25 setNumberOfLines_];
  [v25 setLineBreakMode_];
  v26 = [v20 preferredFontForTextStyle_];
  [v25 setFont_];

  v27 = [v22 labelColor];
  [v25 setTextColor_];

  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setAdjustsFontForContentSizeCategory_];
  *&v5[v24] = v25;
  v28 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_episodesLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  v30 = [v20 preferredFontForTextStyle_];
  [v29 setFont_];

  v31 = [v22 labelColor];
  [v29 setTextColor_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  *&v5[v28] = v29;
  v32 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_iconStackView;
  v33 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v33 setAxis_];
  [v33 setSpacing_];
  [v33 setAlignment_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v32] = v33;
  v34 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_bottomTextStack;
  v35 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v35 setAxis_];
  [v35 setSpacing_];
  [v35 setAlignment_];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v34] = v35;
  v36 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon;
  v37 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v38 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v36] = v38;
  v39 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_gradient;
  *&v5[v39] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v40 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v41 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_floatingView;
  *&v5[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_floatingView] = v40;
  v42 = qword_27C760820;
  v43 = v40;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = *&qword_27C79ACA0;
  [v43 setCornerRadius_];

  [*&v5[v41] setContinuousCornerEnabled_];
  [*&v5[v41] setRoundContentWhenDeselected_];
  [*&v5[v41] setFocusedSizeIncrease_];
  [*&v5[v41] setContentMotionRotation:0.0 translation:{0.0, *(v12 + 7), *(v12 + 8)}];
  v45 = *&v5[v41];
  v46 = objc_opt_self();
  v47 = v45;
  v48 = [v46 configurationWithStyle_];
  [v47 setFocusAnimationConfiguration_];

  [*&v5[v41] setShadowVerticalOffset_];
  [*&v5[v41] setShadowOpacity:0 forUserInterfaceStyle:*(v12 + 11)];
  [*&v5[v41] setShadowOpacity:2 forUserInterfaceStyle:*(v12 + 11)];
  [*&v5[v41] setShadowOpacity:1 forUserInterfaceStyle:*(v12 + 11)];
  [*&v5[v41] setShadowRadius_];
  v49 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v49 smu:v44 setContinuousCornerRadius:?];
  [v49 setClipsToBounds_];
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v49[OBJC_IVAR____TtC9SeymourUI11ArtworkView_imageView] setContentMode_];
  v50 = *&v5[v36];
  v51 = *(v50 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView);
  *(v50 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = v49;

  v52 = &v5[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView];
  *v52 = v49;
  *(v52 + 1) = &off_2822B63E8;
  v170.receiver = v5;
  v170.super_class = type metadata accessor for TVProgramBrickItemCell();
  v53 = v49;
  v54 = objc_msgSendSuper2(&v170, sel_initWithFrame_, a1, a2, a3, a4);
  v55 = [v54 contentView];
  v56 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_floatingView;
  [v55 addSubview_];

  result = [*&v54[v56] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v58 = result;
  v169 = v53;
  [result addSubview_];

  v59 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_gradient;
  v60 = *&v54[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_gradient];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20C14F320;
  v62 = &v54[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout];
  v63 = *&v54[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 96];
  type metadata accessor for CGColor(0);
  *(v61 + 56) = v64;
  *(v61 + 32) = v63;
  v65 = *(v62 + 13);
  *(v61 + 88) = v64;
  *(v61 + 64) = v65;
  v66 = v60;
  v67 = v63;
  v68 = v65;
  v69 = sub_20C13CC54();

  [v66 setColors_];

  [*&v54[v59] setStartPoint_];
  [*&v54[v59] setEndPoint_];
  v70 = *&v54[v59];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_20C151490;
  sub_20B51C88C(0, &qword_27C765490);
  v72 = v70;
  *(v71 + 32) = sub_20C13D5C4();
  *(v71 + 40) = sub_20C13D5C4();
  v73 = sub_20C13CC54();

  [v72 setLocations_];

  v74 = *&v54[v56];
  v75 = *&v54[v59];
  result = [v74 contentView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v76 = result;
  [result bounds];
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;

  [v75 setFrame_];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v85 = result;
  v86 = [result layer];

  [v86 addSublayer_];
  LODWORD(v87) = *(v62 + 28);
  [*&v54[v59] setOpacity_];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v88 = result;
  v89 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_titleLabel;
  [result addSubview_];

  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v90 = result;
  v91 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_subtitleLabel;
  [result addSubview_];

  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v92 = result;
  v167 = v91;
  v93 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_bottomTextStack;
  [result addSubview_];

  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v94 = result;
  v165 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_iconStackView;
  [result addSubview_];

  [*&v54[v93] addArrangedSubview_];
  [*&v54[v93] addArrangedSubview_];
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C165CF0;
  v96 = [v54 contentView];
  v97 = [v96 widthAnchor];

  v98 = [v97 constraintEqualToConstant_];
  *(v95 + 32) = v98;
  v99 = [v54 contentView];

  v100 = [v99 heightAnchor];
  v101 = [v100 constraintEqualToConstant_];

  *(v95 + 40) = v101;
  v102 = [*&v54[v89] topAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v103 = result;
  v104 = [result topAnchor];

  v105 = [v102 constraintEqualToAnchor:v104 constant:v62[1]];
  *(v95 + 48) = v105;
  v106 = [*&v54[v89] leftAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v107 = result;
  v108 = [result leftAnchor];

  v109 = [v106 constraintEqualToAnchor:v108 constant:v62[1]];
  *(v95 + 56) = v109;
  v110 = [*&v54[v89] widthAnchor];
  v111 = [v110 constraintLessThanOrEqualToConstant_];

  *(v95 + 64) = v111;
  v112 = [*&v54[v167] &selRef_setLineBreakMode_];
  v113 = [*&v54[v89] bottomAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:v62[2]];

  *(v95 + 72) = v114;
  v115 = [*&v54[v167] leftAnchor];
  v116 = [*&v54[v89] leftAnchor];
  v117 = [v115 constraintEqualToAnchor_];

  *(v95 + 80) = v117;
  v118 = [*&v54[v167] widthAnchor];
  v119 = [v118 constraintLessThanOrEqualToConstant_];

  *(v95 + 88) = v119;
  v120 = [*&v54[v93] leftAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v121 = result;
  v122 = [result leftAnchor];

  v123 = [v120 constraintEqualToAnchor:v122 constant:v62[1]];
  *(v95 + 96) = v123;
  v124 = [*&v54[v93] rightAnchor];
  v125 = [*&v54[v165] leftAnchor];
  v126 = [v124 constraintLessThanOrEqualToAnchor:v125 constant:-v62[18]];

  *(v95 + 104) = v126;
  v127 = [*&v54[v93] bottomAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v128 = result;
  v129 = [result bottomAnchor];

  v130 = [v127 constraintEqualToAnchor:v129 constant:-v62[1]];
  *(v95 + 112) = v130;
  v131 = [*&v54[v165] rightAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v132 = result;
  v133 = [result rightAnchor];

  v134 = [v131 constraintEqualToAnchor:v133 constant:-v62[18]];
  *(v95 + 120) = v134;
  v135 = [*&v54[v165] bottomAnchor];
  result = [*&v54[v56] contentView];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v136 = result;
  v137 = [result bottomAnchor];

  v138 = [v135 constraintEqualToAnchor:v137 constant:-v62[18]];
  *(v95 + 128) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v95;
  result = [*&v54[v56] contentView];
  if (result)
  {
    v140 = result;
    v142 = *MEMORY[0x277D768C8];
    v141 = *(MEMORY[0x277D768C8] + 8);
    v143 = *(MEMORY[0x277D768C8] + 16);
    v144 = *(MEMORY[0x277D768C8] + 24);
    v145 = [v169 leadingAnchor];
    v146 = [v140 leadingAnchor];
    v147 = [v145 constraintEqualToAnchor:v146 constant:v141];

    LODWORD(v148) = 1148846080;
    [v147 setPriority_];
    v168 = v147;
    v149 = [v169 trailingAnchor];
    v150 = [v140 trailingAnchor];
    v151 = [v149 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v152) = 1148846080;
    [v151 setPriority_];
    v166 = v151;
    v153 = [v169 topAnchor];
    v154 = [v140 topAnchor];
    v155 = [v153 constraintEqualToAnchor:v154 constant:v142];

    LODWORD(v156) = 1148846080;
    [v155 setPriority_];
    v157 = [v169 bottomAnchor];
    v158 = [v140 bottomAnchor];
    v159 = [v157 constraintEqualToAnchor:v158 constant:-v143];

    LODWORD(v160) = 1148846080;
    [v159 setPriority_];
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_20C14FE90;
    *(v161 + 32) = v168;
    *(v161 + 40) = v166;
    *(v161 + 48) = v155;
    *(v161 + 56) = v159;
    v162 = v155;

    *(inited + 40) = v161;
    v163 = objc_opt_self();
    sub_20BE54D20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
    swift_arrayDestroy();
    sub_20B51C88C(0, &qword_281100500);
    v164 = sub_20C13CC54();

    [v163 activateConstraints_];

    return v54;
  }

LABEL_31:
  __break(1u);
  return result;
}

id sub_20BDD1528(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &qword_27C79C000;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v7 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x20F2F5430](v7, v10);
        }

        else
        {
          if (v7 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v12 = *(v10 + 8 * v7 + 32);
        }

        v13 = (v7 + 1);
        if (__OFADD__(v7, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v12);

        ++v7;
        if (v13 == i)
        {
          v14 = v24[0];
          v7 = 0x27C79C000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v14;
    sub_20B6FFB30(v24, *&v3[*(v7 + 1464)]);

    v15 = sub_20B8E9218(v28);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v7;
      v18 = v15 + 32;
      do
      {
        sub_20B51CC64(v18, v24);
        v19 = *&v3[v6];
        v20 = v25;
        v21 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v21 + 16))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v18 += 40;
        --v16;
      }

      while (v16);

      v5 = a1;
      v7 = v17;
    }

    else
    {

      v5 = a1;
    }
  }

  return [*&v3[*(v7 + 1464)] setControlState:v5 animated:a2 & 1];
}

void sub_20BDD17B0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &qword_27C79C000;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = aBlock[0];
          v7 = &qword_27C79C000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[v7[183]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[183]] setControlState:v5 withAnimationCoordinator:a2];
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v5;
    *(v21 + 24) = v3;
    v27 = sub_20BDD44EC;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_130;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

void sub_20BDD1AD4(void *a1, void *a2)
{
  v4 = [a1 nextFocusedView];
  if (v4)
  {
    v6 = v4;
    sub_20B51C88C(0, &qword_27C7654B0);
    if ((sub_20C13D5F4() & 1) != 0 || [v6 isDescendantOfView_])
    {
      v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) | 8;
    }

    else
    {
      v5 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState) & 0xFFFFFFFFFFFFFFF7;
    }

    sub_20BDD17B0(v5, a2);
  }
}

void sub_20BDD1C44(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_iconStackView) arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v4 = sub_20C13CC74();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2F5430](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 removeFromSuperview];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  sub_20BF498F0(*(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 152), a1);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {

    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    if ((v12 >> 1) <= v11)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v18 = v10;
    v19 = v11;

    v20 = (v18 + 8 * v19);
    v14 = MEMORY[0x277D84F90];
    do
    {
      v22 = *v20++;
      v21 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_20BC05A58(0, *(v14 + 2) + 1, 1, v14);
      }

      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      if (v24 >= v23 >> 1)
      {
        v14 = sub_20BC05A58((v23 > 1), v24 + 1, 1, v14);
      }

      *(v14 + 2) = v24 + 1;
      *&v14[8 * v24 + 32] = v21;
      --v13;
    }

    while (v13);
  }

  swift_unknownObjectRelease();
  v15 = *(v14 + 2);
  if (v15)
  {
    v16 = 0;
    while (v16 < *(v14 + 2))
    {
      v17 = v16 + 1;
      v25 = *&v14[8 * v16 + 32];
      sub_20BDD1EB8(&v25, v1);
      v16 = v17;
      if (v15 == v17)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_20:
}

void sub_20BDD1EB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(type metadata accessor for ActivityTypeIconView()) initWithFrame_];
  v5 = sub_20BD54D68();

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = [objc_opt_self() whiteColor];
  v8 = a2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout;
  v9 = *(a2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 128);
  v10 = [v6 layer];
  v11 = [v7 CGColor];
  [v10 setBorderColor_];

  v12 = [v6 layer];
  [v12 setBorderWidth_];

  v13 = *(v8 + 136);
  v14 = [v6 layer];
  [v14 setCornerRadius_];

  [v6 setClipsToBounds_];
  v15 = sub_20BD54D68();

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = &v5[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType];
  *v16 = v3;
  v16[8] = 0;
  sub_20B9C7E94(v3);
  v17 = sub_20C13C914();

  v18 = [objc_opt_self() smm:v17 systemImageNamed:?];

  v19 = [v18 imageWithRenderingMode_];
  [v5 setImage_];

  [v15 addSubview_];
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C151490;
  v22 = [v15 widthAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *(v21 + 32) = v23;
  v24 = [v15 heightAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v21 + 40) = v25;
  v26 = UIView.constraintsPinningCenterToCenterOfView(_:)(v5);
  sub_20B8D9310(v26);
  sub_20B51C88C(0, &qword_281100500);
  v27 = sub_20C13CC54();

  [v20 activateConstraints_];

  [*(a2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_iconStackView) addArrangedSubview_];
}

void sub_20BDD22A4()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_itemInfo, &qword_27C762550);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 96);
  v6[7] = v1;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 144);
  v6[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 128);
  v6[9] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 32);
  v6[3] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 64);
  v6[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout);
  v6[1] = v5;
  sub_20BDD44BC(v6);
}

id sub_20BDD23BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVProgramBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVProgramBrickItemCell()
{
  result = qword_27C76EEB8;
  if (!qword_27C76EEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BDD256C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_20BDD2664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BDD26AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BDD2724(uint64_t a1)
{
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView + 8);
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);

    ObjectType = swift_getObjectType();
    v11 = (*(v7 + 112))(ObjectType, v7);

    if (v11)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

      sub_20BD519D8(v11, v5, sub_20BDD44B4, a1);

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_20BDD28C4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon);

    [*&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v4 setNeedsLayout];
  }
}

uint64_t sub_20BDD2964(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDD29B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BDD2A08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BDD2A9C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v234 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v217 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v221 = &v189 - v9;
  v216 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v189 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v226 = &v189 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v229 = *(v16 - 8);
  v230 = v16;
  MEMORY[0x28223BE20](v16);
  v215 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = v17;
  MEMORY[0x28223BE20](v18);
  v227 = &v189 - v19;
  v224 = sub_20C1391C4();
  v223 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v225 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_20C138A64();
  v219 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v228 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v222 = &v189 - v23;
  v24 = sub_20C13C554();
  v236 = *(v24 - 1);
  v237 = v24;
  MEMORY[0x28223BE20](v24);
  v235 = (&v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v231 = v28;
  v232 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v238 = &v189 - v30;
  v31 = sub_20C136CD4();
  v233 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v240 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134E44();
  MEMORY[0x28223BE20](v33 - 8);
  v239 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C134014();
  v36 = *(v35 - 8);
  *&v38 = MEMORY[0x28223BE20](v35).n128_u64[0];
  v241 = &v189 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v40 == 33)
  {
    [*(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon) setHidden_];
    v124 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_titleLabel);
    v125 = sub_20C13C914();
    v55 = &selRef_setDescriptionTextHighlightColor_;
    [v124 setText_];

    v126 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_subtitleLabel);
    v127 = sub_20C13C914();
    [v126 setText_];

    v66 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
    if (qword_27C760828 == -1)
    {
LABEL_10:
      [v66 setBackgroundColor_];
      v128 = *(v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_episodesLabel);
      v241 = sub_20C13C914();
      [v128 v55[314]];
      v129 = v241;

      return;
    }

LABEL_27:
    v188 = v66;
    swift_once();
    v66 = v188;
    goto LABEL_10;
  }

  if (v40 == 32)
  {
    v205 = v31;
    v234 = v27;
    v213 = v26;
    v200 = v13;
    v201 = v6;
    v41 = v1;
    v42 = v37;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v44 = swift_projectBox() + *(v43 + 64);
    v45 = *v44;
    v46 = *(v44 + 8);
    v47 = *(v44 + 16);
    v48 = *(v44 + 24);
    v49 = *(v44 + 32);
    v50 = *(v44 + 40);
    v210 = v36;
    v51 = *(v36 + 16);
    v207 = v42;
    v52 = v41;
    v51();
    v53 = *(v41 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_titleLabel);
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v209 = v48;

    v208 = v49;

    v206 = v54;
    [v53 setAttributedText_];
    [*(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_subtitleLabel) setAttributedText_];
    sub_20C133F04();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v212 = v57;
    swift_retain_n();
    v204 = sub_20C138054();
    v211 = v58;
    sub_20C134E34();
    v59 = v238;
    sub_20C136CB4();
    v203 = sub_20C136CC4();
    v61 = v60;
    sub_20B51C88C(0, &qword_281100530);
    v62 = sub_20C13D374();
    v64 = v235;
    v63 = v236;
    *v235 = v62;
    v65 = v237;
    (*(v63 + 104))(v64, *MEMORY[0x277D85200], v237);
    v1 = sub_20C13C584();
    v66 = (*(v63 + 8))(v64, v65);
    if (v1)
    {
      v237 = v55;
      v68 = *(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
      v67 = *(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView + 8);
      ObjectType = swift_getObjectType();
      [v68 setContentMode_];
      v70 = v59;
      if (sub_20BA66C54(v59, v68, v67, 0))
      {
        v197 = v56;
        v198 = v50;
        v71 = swift_allocObject();
        v199 = v52;
        swift_unknownObjectWeakInit();
        v72 = v234;
        v73 = *(v234 + 16);
        v202 = v61;
        v74 = v232;
        v75 = v59;
        v76 = v213;
        v192 = v234 + 16;
        v193 = v73;
        v73(v232, v75, v213);
        v77 = *(v72 + 80);
        v196 = ObjectType;
        v78 = (v77 + 24) & ~v77;
        v190 = v231 + 7;
        v235 = v68;
        v236 = v67;
        v79 = (v231 + 7 + v78) & 0xFFFFFFFFFFFFFFF8;
        v80 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
        v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
        v195 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v194 = v77;
        v82 = swift_allocObject();
        *(v82 + 16) = v71;
        v84 = *(v72 + 32);
        v83 = (v72 + 32);
        v85 = v82 + v78;
        v86 = v76;
        v87 = v74;
        v88 = v202;
        v191 = v84;
        v84(v85, v87, v76);
        v89 = (v82 + v79);
        *v89 = v203;
        v89[1] = v88;
        v90 = (v82 + v80);
        v91 = v211;
        *v90 = v204;
        v90[1] = v91;
        *(v82 + v81) = 2;
        v92 = v82 + v195;
        *v92 = MEMORY[0x277D84F90];
        *(v92 + 8) = 0;
        v93 = (v82 + ((v81 + 31) & 0xFFFFFFFFFFFFFFF8));
        v94 = v212;
        *v93 = sub_20BDD4264;
        v93[1] = v94;
        v95 = *(v236 + 152);

        v96 = v236;

        v97 = v196;
        v95(sub_20BDD426C, v82, v196, v96);
        v98 = v235;

        [v98 bounds];
        if (v99 <= 0.0)
        {

          v52 = v199;
          v102 = v210;
        }

        else
        {
          v101 = v100;
          v102 = v210;
          if (v100 > 0.0)
          {
            v103 = v99;
            v104 = v97;
            v195 = ~v194;
            (*(v96 + 120))(0, v97, v96);
            v105 = v222;
            v70 = v238;
            v106 = v193;
            v193(v222, v238, v86);
            (*(v234 + 56))(v105, 0, 1, v86);
            (*(v96 + 16))(v105, v104, v96);
            sub_20B51C88C(0, &qword_27C762070);
            sub_20C137BC4();
            v107 = sub_20C13D5A4();
            [v98 setBackgroundColor_];

            (*(v96 + 176))(COERCE_DOUBLE(*&v103), COERCE_DOUBLE(*&v101), 0, v104, v96);
            v236 = swift_allocObject();
            v108 = v83;
            v52 = v199;
            swift_unknownObjectWeakInit();
            v109 = v232;
            v106(v232, v70, v86);
            v110 = (v194 + 16) & v195;
            v111 = (v190 + v110) & 0xFFFFFFFFFFFFFFF8;
            v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
            v113 = swift_allocObject();
            v114 = v113 + v110;
            v115 = v213;
            v235 = v108;
            v191(v114, v109, v213);
            v116 = v212;
            *(v113 + v111) = v236;
            v117 = (v113 + v112);
            *v117 = v103;
            v117[1] = v101;
            v236 = v113;
            v118 = (v113 + ((v112 + 23) & 0xFFFFFFFFFFFFFFF8));
            *v118 = sub_20BDD4264;
            v118[1] = v116;
            v119 = v115;
            v193(v109, v70, v115);
            (*(v223 + 104))(v225, *MEMORY[0x277D542A8], v224);

            v120 = v228;
            sub_20C138A54();
            v121 = v226;
            sub_20B5F1AF0(v120, v226);
            v123 = v229;
            v122 = v230;
            if ((*(v229 + 48))(v121, 1, v230) == 1)
            {
              sub_20B520158(v121, &unk_27C766670);
              sub_20BA1DA4C();
              sub_20BDD2724(v116);

              (*(v219 + 8))(v120, v220);
            }

            else
            {
              v143 = *(v123 + 32);
              v224 = v123 + 32;
              v225 = v143;
              (v143)(v227, v121, v122);
              v144 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v193(v109, v70, v119);
              v145 = v109;
              v146 = (v194 + 40) & v195;
              v147 = v146 + v231;
              v148 = v116;
              v149 = (v146 + v231) & 0xFFFFFFFFFFFFFFF8;
              v150 = swift_allocObject();
              *(v150 + 2) = v144;
              v150[3] = v103;
              v150[4] = v101;
              v191(v150 + v146, v145, v119);
              *(v150 + v147) = 0;
              v151 = v150 + v149;
              *(v151 + 1) = sub_20BDD4264;
              *(v151 + 2) = v148;
              v152 = swift_allocObject();
              *(v152 + 16) = sub_20BDD4400;
              *(v152 + 24) = v150;
              v153 = v229;
              v154 = v230;
              v155 = v215;
              (*(v229 + 16))(v215, v227, v230);
              v156 = (*(v153 + 80) + 16) & ~*(v153 + 80);
              v157 = (v214 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
              v158 = swift_allocObject();
              (v225)(v158 + v156, v155, v154);
              v159 = (v158 + v157);
              *v159 = sub_20B5F67A4;
              v159[1] = v152;

              v160 = v221;
              sub_20C137C94();
              v161 = swift_allocObject();
              v162 = v236;
              *(v161 + 16) = sub_20BDD4344;
              *(v161 + 24) = v162;
              v163 = swift_allocObject();
              *(v163 + 16) = sub_20B5F67D4;
              *(v163 + 24) = v161;
              v164 = v201;
              v165 = v217;
              v166 = v218;
              (*(v201 + 16))(v217, v160, v218);
              v167 = (*(v164 + 80) + 16) & ~*(v164 + 80);
              v168 = (v216 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
              v169 = swift_allocObject();
              (*(v164 + 32))(v169 + v167, v165, v166);
              v170 = (v169 + v168);
              *v170 = sub_20B5DF204;
              v170[1] = v163;

              v171 = v200;
              sub_20C137C94();
              v172 = *(v164 + 8);
              v172(v221, v166);
              v173 = sub_20C137CB4();
              v174 = swift_allocObject();
              *(v174 + 16) = 0;
              *(v174 + 24) = 0;
              v173(sub_20B52347C, v174);

              v172(v171, v166);
              (*(v229 + 8))(v227, v230);
              (*(v219 + 8))(v228, v220);
            }

            v56 = v197;
            v141 = v233;
            v142 = &off_277D9A000;
            v102 = v210;
            goto LABEL_22;
          }

          v52 = v199;
        }

        v56 = v197;
        v70 = v238;
        v141 = v233;
        v142 = &off_277D9A000;
      }

      else
      {

        v102 = v210;
        v141 = v233;
        v142 = &off_277D9A000;
      }

LABEL_22:
      (*(v234 + 8))(v70, v213);
      (*(v141 + 8))(v240, v205);

      sub_20B62A2AC(v239);

      v175 = v56;
      [*(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_episodesLabel) v142[196]];
      v176 = sub_20C133E54();
      if (v177)
      {
        v178 = v176;
        v179 = v177;
        v180 = *(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon);
        [v180 setHidden_];
        v181 = &v180[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
        *v181 = v178;
        v181[1] = v179;

        v182 = v102;
        v183 = *&v180[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

        v184 = sub_20C13C914();
        v185 = v183;
        v102 = v182;
        [v185 setText_];

        [v180 invalidateIntrinsicContentSize];
      }

      else
      {
        [*(v52 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon) setHidden_];
      }

      v186 = v241;
      v187 = sub_20C133F74();
      sub_20BDD1C44(v187);

      (*(v102 + 8))(v186, v207);
      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_20C13B534();

  v130 = v1;
  v131 = sub_20C13BB74();
  v132 = sub_20C13D1D4();

  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v242 = a1;
    v243 = v135;
    *v133 = 138543618;
    *(v133 + 4) = v130;
    *v134 = v130;
    *(v133 + 12) = 2082;
    v136 = sub_20B5F66D0();
    v137 = v130;
    v138 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v136);
    v140 = sub_20B51E694(v138, v139, &v243);

    *(v133 + 14) = v140;
    _os_log_impl(&dword_20B517000, v131, v132, "Attempted to configure %{public}@ with item: %{public}s", v133, 0x16u);
    sub_20B520158(v134, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v134, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v135);
    MEMORY[0x20F2F6A40](v135, -1, -1);
    MEMORY[0x20F2F6A40](v133, -1, -1);
  }

  (*(v234 + 8))(v5, v3);
}

void sub_20BDD426C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA45D64(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BDD4344(void *a1)
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

  sub_20BA63650(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BDD4400(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2EAC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20BDD44EC(double a1)
{
  v2 = *(v1 + 24);
  LODWORD(a1) = 1.0;
  if ((*(v1 + 16) & 8) == 0)
  {
    LODWORD(a1) = *(v2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout + 112);
  }

  return [*(v2 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_gradient) setOpacity_];
}

double sub_20BDD4524@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v4 CGColor];
  v6 = [v2 blackColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = [v7 CGColor];
  *a1 = xmmword_20C17D5B0;
  *(a1 + 16) = xmmword_20C17D5C0;
  *(a1 + 32) = xmmword_20C17D5D0;
  *(a1 + 48) = xmmword_20C158E10;
  *(a1 + 64) = xmmword_20C158E20;
  *(a1 + 80) = xmmword_20C158E30;
  *(a1 + 96) = v5;
  *(a1 + 104) = v8;
  *(a1 + 112) = 1060320051;
  *(a1 + 120) = xmmword_20C17D5E0;
  result = 70.0;
  *(a1 + 136) = xmmword_20C17D5F0;
  *(a1 + 152) = 4;
  return result;
}

void sub_20BDD4684()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_layout);
  sub_20BDD4524(v32);
  v5 = v32[7];
  v4[6] = v32[6];
  v4[7] = v5;
  v6 = v32[9];
  v4[8] = v32[8];
  v4[9] = v6;
  v7 = v32[3];
  v4[2] = v32[2];
  v4[3] = v7;
  v8 = v32[5];
  v4[4] = v32[4];
  v4[5] = v8;
  v9 = v32[1];
  *v4 = v32[0];
  v4[1] = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  v12 = objc_opt_self();
  v13 = [v12 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:2 design:1024 variant:?];
  [v11 setFont_];

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v11 setTextColor_];

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  *(v1 + v10) = v11;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_subtitleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setNumberOfLines_];
  [v17 setLineBreakMode_];
  v18 = [v12 preferredFontForTextStyle_];
  [v17 setFont_];

  v19 = [v14 labelColor];
  [v17 setTextColor_];

  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  *(v1 + v16) = v17;
  v20 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_episodesLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  v22 = [v12 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v14 labelColor];
  [v21 setTextColor_];

  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  *(v1 + v20) = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_iconStackView;
  v25 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v25 setAxis_];
  [v25 setSpacing_];
  [v25 setAlignment_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_bottomTextStack;
  v27 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v27 setAxis_];
  [v27 setSpacing_];
  [v27 setAlignment_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v26) = v27;
  v28 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_recencyIcon;
  v29 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v30 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v28) = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_gradient;
  *(v1 + v31) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BDD4BCC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9SeymourUI42CatalogEditorialCollectionPageDataProvider_editorialCollectionIdentifier);

  return v1;
}

uint64_t sub_20BDD4C10@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D523C8];
  v3 = sub_20C135ED4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

id WelcomeViewController.__allocating_init(dependencies:version:sheet:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_20BDD62C0(a1, a2, a3, a4 & 1, a5);

  return v12;
}

id WelcomeViewController.init(dependencies:version:sheet:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = sub_20BDD62C0(a1, a2, a3, a4 & 1, a5);

  return v5;
}

Swift::Void __swiftcall WelcomeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = v41 - v6;
  v7 = sub_20C138334();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1350D4();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_viewDidLoad, v12);
  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setPrefersLargeTitles_];
  }

  v18 = [v1 buttonTray];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_20C14F980;
  (*(v11 + 104))(v14, *MEMORY[0x277D51590], v10);
  v20 = sub_20C1350C4();
  v22 = v21;
  (*(v11 + 8))(v14, v10);
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_20C13CC54();

  [v18 setPrivacyLinkForBundles_];

  v24 = sub_20C133334();
  v25 = *(v24 + 16);
  if (v25)
  {
    v46 = objc_opt_self();
    v47 = v1;
    v27 = v45 + 16;
    v26 = *(v45 + 16);
    v28 = *(v45 + 80);
    v41[1] = v24;
    v29 = v24 + ((v28 + 32) & ~v28);
    v44 = *(v45 + 72);
    v45 = v26;
    do
    {
      (v45)(v9, v29, v7);
      sub_20C138314();
      v30 = sub_20C13C914();

      sub_20C138304();
      v31 = sub_20C13C914();

      sub_20C138324();
      (*(v27 - 8))(v9, v7);
      v32 = sub_20C13C914();

      v33 = [v46 smm:v32 systemImageNamed:?];

      [v47 addBulletedListItemWithTitle:v30 description:v31 image:v33];
      v29 += v44;
      --v25;
    }

    while (v25);

    v1 = v47;
  }

  else
  {
  }

  v34 = [objc_opt_self() boldButton];
  [v34 addTarget:v1 action:sel_didTapContinueButton forControlEvents:64];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_storefrontLocalizer], *&v1[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_storefrontLocalizer + 24]);
  v35 = v34;
  sub_20C138D34();
  v36 = sub_20C13C914();

  [v35 setTitle:v36 forState:0];

  v37 = v43;
  sub_20C13D884();
  v38 = sub_20C13D874();
  if ((*(*(v38 - 8) + 48))(v37, 1, v38))
  {
    sub_20B783944(v37, v42);
    sub_20C13D894();

    sub_20B7839B4(v37);
  }

  else
  {
    v39 = [objc_opt_self() blackColor];
    sub_20C13D774();
    sub_20C13D894();
  }

  v40 = [v1 buttonTray];
  [v40 addButton_];

  [v1 setModalInPresentation_];
}

Swift::Void __swiftcall WelcomeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1);
}

uint64_t WelcomeViewController.onDismiss(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler);
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler);
  *v3 = a1;
  v3[1] = a2;
  sub_20B583ECC(v4);
}

uint64_t sub_20BDD56AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v35 - v3;
  v4 = sub_20C13BB84();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C136354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v41 = v1;
  sub_20B6A6418(*(v1 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_version), *(v1 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_version + 8), *(v1 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_version + 16));
  sub_20C136314();
  sub_20C13B534();
  v16 = *(v8 + 16);
  v40 = v15;
  v45 = v7;
  v16(v12, v15, v7);
  v37 = v6;
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v46 = v20;
    *v19 = 136446210;
    v21 = v45;
    v16(v36, v12, v45);
    v22 = sub_20C13C9D4();
    v24 = v23;
    v25 = *(v8 + 8);
    v25(v12, v21);
    v26 = sub_20B51E694(v22, v24, &v46);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_20B517000, v17, v18, "WelcomeViewController updating preference: %{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x20F2F6A40](v20, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);

    v27 = v25;
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v12, v45);
  }

  (*(v38 + 8))(v37, v39);
  __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_privacyPreferenceClient), *(v41 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_privacyPreferenceClient + 24));
  v28 = v42;
  v29 = v40;
  sub_20C139C04();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v44;
  v32 = sub_20C137CB4();
  v33 = swift_allocObject();
  *(v33 + 16) = sub_20BDD695C;
  *(v33 + 24) = v30;

  v32(sub_20B52347C, v33);

  (*(v43 + 8))(v28, v31);
  return (v27)(v29, v45);
}

void sub_20BDD5B88(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v28 - v7;
  if (*(a1 + 8) == 1)
  {
    v9 = *a1;
    sub_20C13B534();
    v10 = v9;
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();
    sub_20B583FB8(v9, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29[0] = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = MEMORY[0x20F2F5850](v28[1], v28[2]);
      v17 = sub_20B51E694(v15, v16, v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20B517000, v11, v12, "WelcomeViewController error updating acknowledgement: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x20F2F6A40](v14, -1, -1);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_20C13B534();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "WelcomeViewController updated Notice Privacy Preference", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = [Strong navigationController];

    if (v23)
    {
      v24 = [v23 navigationBar];

      [v24 setPrefersLargeTitles_];
    }
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = *&v25[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler];
    if (v27)
    {
      sub_20B584050(*&v25[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler]);

      v27();
      sub_20B583ECC(v27);
    }

    else
    {
    }
  }
}

id WelcomeViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20C13C914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20C13C914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20C13C914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id WelcomeViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20C13C914();

  if (a4)
  {
    v12 = sub_20C13C914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id WelcomeViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BDD62C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v38 = a5;
  v39 = a2;
  v41 = a4;
  v40 = a3;
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v8 - 8);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v37 - v16;
  v42 = sub_20C1333A4();
  v18 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_dismissHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763E00);
  sub_20C133AA4();
  sub_20B51C710(v47, &v5[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_privacyPreferenceClient]);
  v22 = OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_sheet;
  v23 = sub_20C133354();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v5[v22], a5, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v47, &v5[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_storefrontLocalizer]);
  v25 = &v5[OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_version];
  v26 = v40;
  *v25 = v39;
  *(v25 + 1) = v26;
  v25[16] = v41 & 1;
  v27 = *MEMORY[0x277D51878];
  v28 = sub_20C1352F4();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v17, v27, v28);
  (*(v29 + 56))(v17, 0, 1, v28);
  v30 = sub_20C132C14();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  v31 = sub_20C135ED4();
  (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
  v32 = sub_20C136914();
  (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
  sub_20C133384();
  (*(v18 + 32))(v6 + OBJC_IVAR____TtC9SeymourUI21WelcomeViewController_metricPage, v20, v42);
  v33 = v38;
  sub_20C133344();
  v34 = sub_20C13C914();

  v46.receiver = v6;
  v46.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v46, sel_initWithTitle_detailText_icon_contentLayout_, v34, 0, 0, 2);

  (*(v24 + 8))(v33, v23);
  return v35;
}

uint64_t type metadata accessor for WelcomeViewController()
{
  result = qword_27C76EEF8;
  if (!qword_27C76EEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDD6840()
{
  result = sub_20C133354();
  if (v1 <= 0x3F)
  {
    result = sub_20C1333A4();
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

id TVWorkoutPlanDetailViewController.__allocating_init(dependencies:pageContext:pageNavigator:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_20BDD885C(a1, a2, a3, v14, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

uint64_t TVWorkoutPlanDetailViewController.resignActiveObserver.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t TVWorkoutPlanDetailViewController.preferredFocusEnvironments.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14F580;
  v2 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

Swift::Void __swiftcall TVWorkoutPlanDetailViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v23 - v8;
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_viewDidLoad, v7);
  sub_20B793D60(0);
  sub_20BDD7048();
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
  v11 = *(*(v10 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v12 = *(v11 + 16);
  if (v12)
  {
    v24 = v9;
    v25 = v5;

    v13 = (v11 + 40);
    do
    {
      v14 = *v13;
      v15 = swift_getObjectType();
      v16 = *(v14 + 48);
      swift_unknownObjectRetain();
      v16(v15, v14);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);

    v9 = v24;
    v5 = v25;
  }

  [v1 setRestoresFocusAfterTransition_];
  [*(*(v10 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInset_];
  [*(*(v10 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) setContentInsetAdjustmentBehavior_];
  v17 = sub_20BE15F54();
  MEMORY[0x20F2EA980](0, v17);
  v18 = sub_20C133244();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  v19 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(v9, &v1[v19]);
  swift_endAccess();
  if (!*(v10 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state))
  {
    *(v10 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_state) = 1;
    v20 = sub_20C13CDF4();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    sub_20B6383D0(0, 0, v5, &unk_20C17D778, v22);
  }
}

void sub_20BDD7048()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel];
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C150040;
  v5 = [v3 topAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 topAnchor];

  v9 = [v5 constraintEqualToAnchor:v8 constant:44.0];
  *(v4 + 32) = v9;
  v10 = [v3 leftAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v11 leftAnchor];

  v14 = [v10 constraintEqualToAnchor:v13 constant:80.0];
  *(v4 + 40) = v14;
  v15 = [v3 rightAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = objc_opt_self();
  v19 = [v17 rightAnchor];

  v20 = [v15 constraintEqualToAnchor:v19 constant:-80.0];
  *(v4 + 48) = v20;
  sub_20B51C88C(0, &qword_281100500);
  v21 = sub_20C13CC54();

  [v18 activateConstraints_];
}

Swift::Void __swiftcall TVWorkoutPlanDetailViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];

    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
    v5 = *(v4 + 504);
    __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker], *&v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker + 24]);
    v6 = *&v5[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];
    v7 = v5;
    [v6 bounds];
    sub_20B9D8614(v8, v9, v10, v11);

    [*(*(v4 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];
    sub_20BDD7444(v12, v13);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20BDD7444(double a1, double a2)
{
  if ((a2 + -390.0) / -780.0 * 1.01 + 0.5 > 0.0)
  {
    v3 = (a2 + -390.0) / -780.0 * 1.01 + 0.5;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1.0;
  }

  if (v5 == 0.0)
  {
    v4 = (a2 + -780.0 + -42.5) / -85.0 * 1.01 + 0.5;
    if (v4 <= 0.0)
    {
      v4 = 0.0;
    }

    if (v4 > 1.0)
    {
      v4 = 1.0;
    }
  }

  [*(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel) setAlpha_];
  v32 = *(v2 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider);
  v6 = [*(*(v32 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) visibleCells];
  sub_20B51C88C(0, &qword_27C772960);
  v7 = sub_20C13CC74();

  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    while (v10)
    {
      v11 = MEMORY[0x20F2F5430](v9, v7);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

LABEL_20:
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EF80);
      if (swift_dynamicCast())
      {
        v33 = v13;
        v14 = *(&v35 + 1);
        v15 = v36;
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        v16 = v14;
        v10 = v7 & 0xC000000000000001;
        (*(v15 + 8))(v16, v15, v5);

        __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      else
      {

        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        sub_20B520158(&v34, &qword_27C76EF88);
      }

      ++v9;
      if (v12 == i)
      {
        goto LABEL_27;
      }
    }

    if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v11 = *(v7 + 8 * v9 + 32);
    v12 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_20;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = *(*(v32 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  v18 = sub_20C13C914();
  v19 = [v17 visibleSupplementaryViewsOfKind_];

  sub_20B51C88C(0, &unk_27C768240);
  v20 = sub_20C13CC74();

  if (v20 >> 62)
  {
    goto LABEL_41;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_29:
    v22 = 0;
    v23 = v20 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x20F2F5430](v22, v20);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v22 >= *(v23 + 16))
        {
          goto LABEL_40;
        }

        v24 = *(v20 + 8 * v22 + 32);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v21 = sub_20C13DB34();
          if (!v21)
          {
          }

          goto LABEL_29;
        }
      }

      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EF80);
      if (swift_dynamicCast())
      {
        v27 = *(&v35 + 1);
        v28 = v36;
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        v29 = *(v28 + 8);
        v30 = v28;
        v23 = v20 & 0xFFFFFFFFFFFFFF8;
        v29(v27, v30, v5);

        __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      else
      {

        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        sub_20B520158(&v34, &qword_27C76EF88);
      }

      ++v22;
    }

    while (v25 != v21);
  }
}

Swift::Void __swiftcall TVWorkoutPlanDetailViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C1333A4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1, v7);
  v10[1] = *&v2[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider];
  sub_20BE1CF94(v9);
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  sub_20BDD8B20(&qword_27C76EF10, type metadata accessor for TVWorkoutPlanDetailPageDataProvider);
  sub_20C138C54();
  (*(v6 + 8))(v9, v5);
  sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20BDD8B20(&unk_27C76EF20, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20C139364();
}

Swift::Void __swiftcall TVWorkoutPlanDetailViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20C132E94();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillDisappear_, a1, v7);
  v16 = v2;
  sub_20C132E84();
  sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20C139274();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v16 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v15 - 2) = &v16;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v15 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v16 = v2;
      sub_20BDD8B20(&qword_27C76EF30, type metadata accessor for TVWorkoutPlanDetailViewController);
      sub_20C138C64();
    }
  }
}

Swift::Void __swiftcall TVWorkoutPlanDetailViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20BDD8B20(&unk_27C76EF20, type metadata accessor for TVWorkoutPlanDetailViewController);
  sub_20C139374();
}

id TVWorkoutPlanDetailViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVWorkoutPlanDetailViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BDD8388()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel);

  v2 = sub_20C13C914();

  [v1 setText_];
}

uint64_t sub_20BDD8484@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20BDD84DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B59784C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BDD85B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*v1 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker);
  v4 = v3[3];
  v5 = v3[4];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

uint64_t sub_20BDD86DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDD87C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_20BDD8B20(&qword_27C76EF18, type metadata accessor for TVWorkoutPlanDetailViewController);

  return a3(ObjectType, v5, a2);
}

id sub_20BDD885C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, objc_class *a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v26 - v18;
  (*(v13 + 32))(&v26 - v18, v20, v21, v17);
  type metadata accessor for TVWorkoutPlanDetailPageDataProvider();
  swift_allocObject();
  v22 = sub_20BE3C968(a1, a2, a3);
  v23 = objc_allocWithZone(a5);
  (*(v13 + 16))(v15, v19, a6);
  v24 = sub_20BDD8C8C(a1, v22, v15, v23, a6, a7);

  (*(v13 + 8))(v19, a6);
  *(v22 + 3) = &off_2822E7888;
  swift_unknownObjectWeakAssign();

  return v24;
}

uint64_t sub_20BDD8A20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BE19458(a1, v4, v5, v6);
}

uint64_t type metadata accessor for TVWorkoutPlanDetailViewController()
{
  result = qword_27C76EF68;
  if (!qword_27C76EF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDD8B20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20BDD8B88()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20BDD8C8C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_visibility] = 1;
  v14 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  v15 = sub_20C133244();
  (*(*(v15 - 8) + 56))(&a4[v14], 1, 1, v15);
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_resignActiveObserver] = 0;
  v16 = &a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_layout];
  *v16 = xmmword_20C16A0C0;
  *(v16 + 2) = 0x408B080000000000;
  v17 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v19 = [objc_opt_self() smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v18 setFont_];

  v20 = [objc_opt_self() labelColor];
  [v18 setTextColor_];

  [v18 setTextAlignment_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  *&a4[v17] = v18;
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider] = a2;
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_eventHub] = v24[0];
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_platform] = v24[0];
  sub_20B51CC64(v25, &a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_pageNavigator]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v24, &a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v24, &a4[OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_timerProvider]);
  v23.receiver = a4;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v25);
  *(a2 + 40) = &off_2822E7820;
  swift_unknownObjectWeakAssign();
  return v21;
}

void sub_20BDD9048()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_visibility) = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_lastFocusedIndexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_settlingTimer) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_resignActiveObserver) = 0;
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_layout;
  *v3 = xmmword_20C16A0C0;
  *(v3 + 16) = 0x408B080000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  [v5 setAllowsDefaultTighteningForTruncation_];
  v6 = [objc_opt_self() smu:*MEMORY[0x277D76A08] preferredFontForTextStyle:1024 variant:?];
  [v5 setFont_];

  v7 = [objc_opt_self() labelColor];
  [v5 setTextColor_];

  [v5 setTextAlignment_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];
  *(v0 + v4) = v5;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BDD9280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20BDD92C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BDD9340()
{
  sub_20C13E164();
  if (*(v0 + 8))
  {
    v1 = *(v0 + 24);
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
    sub_20C13E184();
    if (v1)
    {
      sub_20C13CA64();
    }

    sub_20C13E184();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
  }

  return sub_20C13E1B4();
}

uint64_t sub_20BDD9404()
{
  if (!*(v0 + 8))
  {
    return MEMORY[0x20F2F58E0](0);
  }

  v1 = *(v0 + 24);
  MEMORY[0x20F2F58E0](1);
  sub_20C13CA64();
  sub_20C13E184();
  if (v1)
  {
    sub_20C13CA64();
  }

  return sub_20C13E184();
}

uint64_t sub_20BDD94A0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_20C13E164();
  if (v1)
  {
    MEMORY[0x20F2F58E0](1);
    sub_20C13CA64();
    sub_20C13E184();
    if (v2)
    {
      sub_20C13CA64();
    }

    sub_20C13E184();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
  }

  return sub_20C13E1B4();
}

BOOL sub_20BDD9554(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_20BDD9A3C(v5, v7);
}

uint64_t sub_20BDD95A0(__int128 *a1)
{
  v2 = v1;
  if (*(v2 + 8))
  {
    sub_20C13E184();
    sub_20C13CA64();
  }

  else
  {
    sub_20C13E184();
  }

  sub_20C134744();
  sub_20C13CA64();

  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1 && (MEMORY[0x20F2F58E0](2), (v5 & 1) == 0))
    {
      MEMORY[0x20F2F58E0](1);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x20F2F5910](v11);
    }

    else
    {
      MEMORY[0x20F2F58E0](0);
    }
  }

  else
  {
    v7 = *(v2 + 33) | ((*(v2 + 37) | (*(v2 + 39) << 16)) << 32);
    v8 = v5 | (v7 << 8);
    MEMORY[0x20F2F58E0](1);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x20F2F5910](v9);
    if (v7 & 0x7FF00000000000 | v8 & 0xFFFFFFFFFFFFFLL)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x20F2F5910](v10);
    MEMORY[0x20F2F58E0](v6 & 0x3F);
  }

  sub_20C13E184();
  if (!*(v2 + 56))
  {
    sub_20C13E184();
    if (*(v2 + 72))
    {
      goto LABEL_21;
    }

LABEL_24:
    MEMORY[0x20F2F58E0](0);
    goto LABEL_26;
  }

  sub_20C13E184();
  sub_20C13CA64();
  if (!*(v2 + 72))
  {
    goto LABEL_24;
  }

LABEL_21:
  v12 = *(v2 + 88);
  MEMORY[0x20F2F58E0](1);
  sub_20C13CA64();
  sub_20C13E184();
  if (v12)
  {
    sub_20C13CA64();
  }

  sub_20C13E184();
LABEL_26:
  v13 = *(v2 + 104);
  v14 = *(v13 + 16);
  MEMORY[0x20F2F58E0](v14);
  if (v14)
  {
    v15 = (v13 + 32);
    do
    {
      v16 = *v15++;

      sub_20B970D44(a1, v16);

      --v14;
    }

    while (v14);
  }

  v17 = *(v2 + 112);
  v18 = *(v17 + 16);
  MEMORY[0x20F2F58E0](v18);
  if (v18)
  {
    v19 = v17 + 32;
    do
    {
      ++v19;
      sub_20C134744();
      sub_20C13CA64();

      --v18;
    }

    while (v18);
  }

  if (*(v2 + 128))
  {
    sub_20C13E184();
    sub_20C13CA64();
    if (*(v2 + 144))
    {
LABEL_34:
      sub_20C13E184();
      sub_20C13CA64();
      goto LABEL_37;
    }
  }

  else
  {
    sub_20C13E184();
    if (*(v2 + 144))
    {
      goto LABEL_34;
    }
  }

  sub_20C13E184();
LABEL_37:
  v20 = *(v2 + 160);
  switch(v20)
  {
    case 2:
      v21 = 2;
      return MEMORY[0x20F2F58E0](v21);
    case 1:
      v21 = 1;
      return MEMORY[0x20F2F58E0](v21);
    case 0:
      v21 = 0;
      return MEMORY[0x20F2F58E0](v21);
  }

  MEMORY[0x20F2F58E0](3);

  return sub_20C13CA64();
}

uint64_t sub_20BDD98D0()
{
  sub_20C13E164();
  sub_20BDD95A0(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BDD9914()
{
  sub_20C13E164();
  sub_20BDD95A0(v1);
  return sub_20C13E1B4();
}

BOOL sub_20BDD9950(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_20BDD9B1C(v13, v15);
}

unint64_t sub_20BDD99E8()
{
  result = qword_27C76EF90;
  if (!qword_27C76EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76EF90);
  }

  return result;
}

BOOL sub_20BDD9A3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return *(a2 + 8) == 0;
  }

  v4 = *(a2 + 8);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *a1 == *a2 && v3 == v4;
  if (!v11 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    if (v8 && (v5 == v9 && v6 == v8 || (sub_20C13DFF4() & 1) != 0))
    {
      goto LABEL_13;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_13:
  v12 = v7 ^ v10 ^ 1;
  return v12 & 1;
}

BOOL sub_20BDD9B1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = sub_20C134744();
  v9 = v8;
  if (v7 == sub_20C134744() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_20C13DFF4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_20B92B998(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a2 + 24), *(a2 + 32), *(a2 + 40)) & 1) == 0 || ((*(a1 + 41) ^ *(a2 + 41)))
  {
    return 0;
  }

  v14 = *(a1 + 56);
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!v15 || (*(a1 + 48) != *(a2 + 48) || v14 != v15) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = *(a1 + 72);
  v17 = *(a2 + 72);
  if (!v16)
  {
    if (v17)
    {
      return 0;
    }

    goto LABEL_45;
  }

  if (!v17)
  {
    return 0;
  }

  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  v22 = *(a2 + 80);
  v21 = *(a2 + 88);
  v23 = *(a2 + 96);
  if ((*(a1 + 64) != *(a2 + 64) || v16 != v17) && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (v19)
  {
    if (!v21)
    {
      return 0;
    }

    if (v18 == v22 && v19 == v21)
    {
      if ((v20 ^ v23))
      {
        return 0;
      }

      goto LABEL_45;
    }

    v24 = sub_20C13DFF4();
    result = 0;
    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v21)
    {
      return result;
    }
  }

  if (((v20 ^ v23) & 1) == 0)
  {
LABEL_45:
    if ((sub_20BB801A8(*(a1 + 104), *(a2 + 104)) & 1) == 0 || (sub_20BB80260(*(a1 + 112), *(a2 + 112)) & 1) == 0)
    {
      return 0;
    }

    v25 = *(a1 + 128);
    v26 = *(a2 + 128);
    if (v25)
    {
      if (!v26 || (*(a1 + 120) != *(a2 + 120) || v25 != v26) && (sub_20C13DFF4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    v27 = *(a1 + 144);
    v28 = *(a2 + 144);
    if (v27)
    {
      if (!v28 || (*(a1 + 136) != *(a2 + 136) || v27 != v28) && (sub_20C13DFF4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    v29 = *(a1 + 160);
    v30 = *(a2 + 160);
    if (v29 == 2)
    {
      if (v30 == 2)
      {
        return 1;
      }
    }

    else if (v29 == 1)
    {
      if (v30 == 1)
      {
        return 1;
      }
    }

    else
    {
      if (v29)
      {
        return v30 >= 3 && (*(a1 + 152) == *(a2 + 152) && v29 == v30 || (sub_20C13DFF4() & 1) != 0);
      }

      if (!v30)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_20BDD9E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20BDD9E68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20BDD9EC4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_20BDD9F00()
{
  result = qword_27C76EF98;
  if (!qword_27C76EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76EF98);
  }

  return result;
}

void sub_20BDD9F5C(void (*a1)(CGAffineTransform *), uint64_t a2, CGFloat a3, CGFloat a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &aBlock - v9;
  v11 = sub_20C132C14();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = objc_opt_self();

  v17 = [v16 mainScreen];
  [v17 scale];
  v19 = v18;

  CGAffineTransformMakeScale(&aBlock, v19, v19);
  v31.width = a3;
  v31.height = a4;
  CGSizeApplyAffineTransform(v31, &aBlock);
  sub_20C138944();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_20B9E801C(v10);
    sub_20BDDA36C();
    v20 = swift_allocError();
    *v21 = 1;
    *&aBlock.a = v20;
    LOBYTE(aBlock.b) = 1;
    a1(&aBlock);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v22 = [objc_opt_self() sharedSession];
    v23 = [objc_opt_self() mainBundle];
    v24 = [v23 bundleIdentifier];

    if (v24)
    {
      sub_20C13C954();
    }

    v25 = sub_20C13D194();

    v26 = sub_20C132B64();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_20B5D9B44;
    *(v27 + 24) = v15;
    *&aBlock.tx = sub_20BDDA578;
    *&aBlock.ty = v27;
    *&aBlock.a = MEMORY[0x277D85DD0];
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_20BDDA580;
    *&aBlock.d = &block_descriptor_131;
    v28 = _Block_copy(&aBlock);

    v29 = [v25 dataTaskWithURL:v26 completionHandler:v28];
    _Block_release(v28);

    [v29 resume];
    (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_20BDDA36C()
{
  result = qword_27C76EFA0;
  if (!qword_27C76EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76EFA0);
  }

  return result;
}

void sub_20BDDA3C0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (!a4)
    {
      sub_20BDDA36C();
      v6 = swift_allocError();
      a4 = 0;
      v7 = v6;
      *v8 = 1;
LABEL_6:
      v9 = a4;
      a5(v7, 1);

      return;
    }

LABEL_5:
    v7 = a4;
    goto LABEL_6;
  }

  if (a4)
  {
    goto LABEL_5;
  }

  v12 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_20B719888(a1, a2);
  sub_20B719888(a1, a2);
  v13 = sub_20C132C34();
  v14 = [v12 initWithData_];

  v15 = a1;
  v16 = a1;
  v17 = a2;
  sub_20B94ACA8(v16, a2);
  if (v14)
  {
    v18 = v14;
    a5(v14, 0);
  }

  else
  {
    sub_20BDDA36C();
    v19 = swift_allocError();
    *v20 = 0;
    a5(v19, 1);
  }

  sub_20B94ACA8(v15, v17);
}

uint64_t sub_20BDDA580(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_20C132C54();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_20B94ACA8(v6, v10);
}

uint64_t sub_20BDDA648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = sub_20C13CDF4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  v11 = v1;
  sub_20B6383D0(0, 0, v4, &unk_20C17DE68, v10);

  v12 = sub_20BDDC100(v11 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_workoutSessionConfiguration);
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_20BE7F170(v12);

  return swift_unknownObjectRelease();
}

uint64_t sub_20BDDA898()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_accountProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_20BDDA95C;

  return MEMORY[0x2821AFC58](v3, v2);
}

uint64_t sub_20BDDA95C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_20BDDAAFC;
  }

  else
  {
    *(v4 + 32) = a1;
    v5 = sub_20BDDAA88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20BDDAA88()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account);
  *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account) = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20BDDAAFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account);
  *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account) = 0;

  v3 = *(v0 + 8);

  return v3();
}

void sub_20BDDAB6C(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  v7 = v1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = v7[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8];
    v19 = *&v7[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
    v20 = v13;
    sub_20BDDD33C(v19, v13);
    v14 = sub_20C13C9D4();
    v16 = sub_20B51E694(v14, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20B517000, v8, v9, "Summary controller presentation requested with presentation state %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    v17 = v11;
    a1 = v18;
    MEMORY[0x20F2F6A40](v17, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_20BDDBB14(a1);
}

void sub_20BDDAD5C()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  sub_20C13B564();
  v8 = v0;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v14 = v8[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8];
    v21 = *&v8[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
    v22 = v14;
    sub_20BDDD33C(v21, v14);
    v15 = sub_20C13C9D4();
    v17 = sub_20B51E694(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20B517000, v9, v10, "Session controller dismissal requested with presentation state %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F2F6A40](v13, -1, -1);
    v18 = v12;
    v2 = v20;
    MEMORY[0x20F2F6A40](v18, -1, -1);
  }

  v19 = *(v2 + 8);
  v19(v7, v1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_20C13B564();
    sub_20C13BB64();
    v19(v4, v1);
    sub_20BE7E5C0();
    swift_unknownObjectRelease();
  }

  sub_20BDDB940();
}

uint64_t sub_20BDDAFF0(char a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  sub_20C13B564();
  sub_20C13BB64();
  v12 = *(v3 + 8);
  v12(v11, v2);
  if (((1 << a1) & 0x1F8E) != 0)
  {
    sub_20C13B564();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1F4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "User initiated end reason, requesting upsell presentation", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    v12(v8, v2);
    return sub_20BDDB574();
  }

  else
  {
    sub_20C13B564();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "End reason not applicable, skipping upsell presentation", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    return (v12)(v5, v2);
  }
}

uint64_t sub_20BDDB27C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  sub_20C13B564();
  sub_20C13BB64();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = &v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
  if (v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8] >= 2u && *v10 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = result;
      sub_20C13B564();
      sub_20C13BB64();
      v9(v8, v2);
      sub_20BE7E094();
      [v12 dismissViewControllerAnimated:1 completion:0];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20C13B564();
    v13 = v1;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      v18 = v10[8];
      v23 = *v10;
      v24 = v18;
      sub_20BDDD33C(v23, v18);
      v19 = sub_20C13C9D4();
      v21 = sub_20B51E694(v19, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_20B517000, v14, v15, "Unexpected state %s on summary exit", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    return (v9)(v5, v2);
  }

  return result;
}

uint64_t sub_20BDDB574()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  sub_20C13B564();
  sub_20C13BB64();
  v12 = *(v3 + 8);
  v12(v11, v2);
  v13 = &v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
  if (!v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8])
  {
    v13[8] = 1;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = *&v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_marketingItem];
    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account];
    sub_20BDDD33C(v14, 0);
    v22 = v21;
    sub_20BE7EC08(v20, v21);
    sub_20BDDD328(v14, 0);
    goto LABEL_15;
  }

  if (v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8] == 1)
  {
    sub_20C13B564();
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20B517000, v15, v16, "Skipping duplicate upsell presentation request", v17, 2u);
      MEMORY[0x20F2F6A40](v17, -1, -1);
    }

    v18 = v8;
    return (v12)(v18, v2);
  }

  if (v14)
  {
    sub_20C13B564();
    v23 = v1;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1F4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37 = v27;
      *v26 = 136315138;
      v28 = v13[8];
      v35 = *v13;
      v36 = v28;
      sub_20BDDD33C(v35, v28);
      v29 = sub_20C13C9D4();
      v31 = sub_20B51E694(v29, v30, &v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_20B517000, v24, v25, "Unexpected state %s found when requesting upsell presentation", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    v18 = v5;
    return (v12)(v18, v2);
  }

  v13[8] = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *&v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_marketingItem];
    v33 = *&v1[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account];
    v22 = v33;
    sub_20BE7EC08(v32, v33);
LABEL_15:

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20BDDB940()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v7 = v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8);
  if (!*(v1 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8))
  {
    goto LABEL_7;
  }

  if (v9 == 1)
  {
    *v7 = 0;
    *(v7 + 8) = 1;
LABEL_8:
    sub_20BDDD328(v8, v9);
    return;
  }

  if (!v8)
  {
LABEL_7:
    *v7 = 0;
    *(v7 + 8) = 0;
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_20C13B564();
    sub_20C13BB64();
    v6(v5, v2);
    sub_20BE7E094();
    [v11 dismissViewControllerAnimated:1 completion:0];
    swift_unknownObjectRelease();
  }
}

void sub_20BDDBB14(void *a1)
{
  v2 = v1;
  v15 = a1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v4 + 8))(v6, v3);
  v7 = v2 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState;
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8))
  {
    v9 = *v7;
    if (v8 == 1)
    {
      v10 = v15;
      *v7 = v15;
      *(v7 + 8) = 1;
      v11 = v10;
      sub_20BDDD328(v9, 1u);
    }

    else if (!v9)
    {
      v12 = v15;
      *v7 = v15;
      *(v7 + 8) = 0;

      v13 = v12;
    }
  }
}

void sub_20BDDBC8C()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  sub_20C13B564();
  sub_20C13BB64();
  v8 = *(v2 + 8);
  v8(v7, v1);
  v9 = &v0[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
  if (v0[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState + 8] == 1)
  {
    v10 = *v9;
    Strong = swift_unknownObjectWeakLoadStrong();
    v28 = v10;
    if (Strong)
    {
      sub_20C13B564();
      sub_20C13BB64();
      v8(v7, v1);
      sub_20BE7E2E0();
      swift_unknownObjectRelease();
    }

    if (v10)
    {
      v12 = *v9;
      *v9 = 1;
      v13 = v9[8];
      v9[8] = 2;
      sub_20BDDD328(v12, v13);
      v14 = sub_20C138104();
      v15 = sub_20C138104();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v14 == v15)
      {
        if (v16)
        {
          sub_20BE7EFF0(v28);
LABEL_15:
          swift_unknownObjectRelease();
        }
      }

      else if (v16)
      {
        sub_20C13B564();
        sub_20C13BB64();
        v8(v7, v1);
        sub_20BE7DCC4(v28);
        goto LABEL_15;
      }

      sub_20BDDD328(v10, 1u);
      return;
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_20C13B564();
      sub_20C13BB64();
      v8(v7, v1);
      sub_20BE7E094();
      [v27 dismissViewControllerAnimated:1 completion:{0, v28}];
      sub_20BDDD328(0, 1u);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20C13B564();
    v17 = v0;
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136315138;
      v22 = v9[8];
      v29 = *v9;
      v30 = v22;
      sub_20BDDD33C(v29, v22);
      v23 = sub_20C13C9D4();
      v25 = sub_20B51E694(v23, v24, &v31);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_20B517000, v18, v19, "Unexpected presentation state %s when dismissing upsell", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    v8(v4, v1);
  }
}

char *sub_20BDDC100(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  sub_20BDDD2B4(a1, v4);

  v10 = sub_20B9C04B4(v9, v4);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v10[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onTransitioningToPostSession];
  v13 = *&v10[OBJC_IVAR____TtC9SeymourUI16SessionPresenter_onTransitioningToPostSession];
  *v12 = sub_20BDDD318;
  v12[1] = v11;

  sub_20B583ECC(v13);

  v14 = *(v10 + 18);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v14 + 32);
  *(v14 + 32) = sub_20BDDD320;
  *(v14 + 40) = v15;

  sub_20B583ECC(v16);

  return v10;
}

void sub_20BDDC350(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20BDDAFF0(a1);
  }
}

void sub_20BDDC3AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BDDB27C();
  }
}

id sub_20BDDC430()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleContentSessionPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SampleContentSessionPresenter()
{
  result = qword_27C76EFE8;
  if (!qword_27C76EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDDC570()
{
  result = type metadata accessor for WorkoutSessionConfiguration();
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

uint64_t sub_20BDDC650(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20BDDBC8C();
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a3;
  v16[5] = v4;
  v16[6] = a1;
  v16[7] = a2;
  v17 = a3;
  v18 = a2;
  v19 = v4;
  v20 = a1;
  sub_20B6383D0(0, 0, v10, &unk_20C17DE58, v16);
}

uint64_t sub_20BDDC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_20C138FA4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_20C13BB84();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDDC980, 0, 0);
}

uint64_t sub_20BDDC980()
{
  v23 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v1;
    sub_20C13B564();
    v3 = v1;
    v4 = sub_20C13BB74();
    v5 = sub_20C13D1F4();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = MEMORY[0x20F2F5850](v0[3], v0[4]);
      v14 = sub_20B51E694(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20B517000, v4, v5, "Purchase failed with error: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x20F2F6A40](v11, -1, -1);
      MEMORY[0x20F2F6A40](v10, -1, -1);

      (*(v8 + 8))(v7, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v18 = v0[6];
    swift_getObjectType();
    v19 = v18;
    sub_20C138F94();
    sub_20BDDD25C();
    sub_20C13A764();
    swift_unknownObjectRelease();
    (*(v16 + 8))(v15, v17);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_20BDDCC04(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B564();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  sub_20BDDBC8C();
  v15 = sub_20C13CDF4();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v17 = v4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  sub_20B6383D0(0, 0, v10, &unk_20C17DE48, v16);
}

uint64_t sub_20BDDCE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_20BDDCE3C, 0, 0);
}

uint64_t sub_20BDDCE3C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [*(v0 + 24) metricsOverlay];
    if (v3)
    {
      v4 = v3;
      v5 = sub_20C13C754();
    }

    else
    {
      v5 = 0;
    }

    sub_20C065618(*(v0 + 32), *(v0 + 40), v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_20BDDCF48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI29SampleContentSessionPresenterC17PresentationState33_DF81E58D06FCA145E52020A768D685D0LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TVWorkoutDetailMenuItem(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TVWorkoutDetailMenuItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20BDDD08C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_20BDDD0B4(uint64_t a1)
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
  v10[1] = sub_20B52AC14;

  return sub_20BDDCE18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_20BDDD188(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20BDDC864(a1, v4, v5, v6, v7);
}

unint64_t sub_20BDDD25C()
{
  result = qword_27C769A40;
  if (!qword_27C769A40)
  {
    sub_20C138FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769A40);
  }

  return result;
}

uint64_t sub_20BDDD2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSessionConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BDDD328(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

id sub_20BDDD33C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_20BDDD350(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutSessionConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BDDD3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BDDA878(a1, v4, v5, v6);
}

id sub_20BDDD460(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_presentationState];
  *v8 = 0;
  v8[8] = 2;
  *&v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_account] = 0;
  sub_20BDDD2B4(a2, &v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_workoutSessionConfiguration]);
  *&v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_dependencies] = a1;
  *&v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_marketingItem] = a3;

  v9 = a3;
  sub_20C133AA4();
  v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_platform] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B52E424(&v16, &v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  v10 = *(&v16 + 1);
  v11 = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&v11[OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8] = v10;
  swift_unknownObjectWeakAssign();
  v12 = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  *&v4[OBJC_IVAR____TtC9SeymourUI29SampleContentSessionPresenter_dynamicOfferCoordinator] = v12;
  *&v12[OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8] = v10;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_unknownObjectWeakAssign();

  v15.receiver = v4;
  v15.super_class = type metadata accessor for SampleContentSessionPresenter();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_20BDDD350(a2);
  return v13;
}

void sub_20BDDD674()
{
  v1 = sub_20C138434();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v13[1] = "eInPicturePresenter";
  sub_20C13BB64();
  v13[0] = *(v6 + 8);
  (v13[0])(v8, v5);
  swift_getObjectType();
  sub_20C138424();
  sub_20BDE1758(&qword_27C768828, MEMORY[0x277D53FD0]);
  sub_20C13A764();
  (*(v2 + 8))(v4, v1);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state + 8);
    v11 = v9;
    sub_20C13B574();
    sub_20C13BB64();
    (v13[0])(v8, v5);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(6, ObjectType, v10);
  }
}

uint64_t PictureInPicturePresenter.presentPictureInPictureSupportingViewController(_:animated:completion:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v5;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a1;
  *(v15 + 64) = a2;
  *(v15 + 72) = a3;
  v16 = v5;
  sub_20B584050(a4);
  v17 = a1;
  sub_20B6383D0(0, 0, v13, &unk_20C17DE80, v15);
}

uint64_t PictureInPicturePresenter.display.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PictureInPicturePresenter.display.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_20B8DD284;
}

uint64_t sub_20BDDDC2C()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C137FE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13A604();
    v10 = sub_20C137FD4();
    if ((v10 & 0x100000000) != 0)
    {
      v11 = v10;
      sub_20C13B574();
      sub_20C13BB64();
      (*(v1 + 8))(v3, v0);
      if ((v11 - 3) <= 1)
      {
        sub_20BDDF41C();
      }
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_20BDDDE30()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C138184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13A694();
    v10 = sub_20C138174();
    if ((v10 & 0x100000000) != 0)
    {
      v11 = v10;
      sub_20C13B574();
      sub_20C13BB64();
      (*(v1 + 8))(v3, v0);
      if (v11 == 3)
      {
        sub_20BDDF41C();
      }
    }

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_20BDDE034()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C137EA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_20C13AA14();
    sub_20C13B574();
    sub_20C13BB64();
    (*(v1 + 8))(v3, v0);
    sub_20BDDF41C();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_20BDDE214()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_20C13B574();
    sub_20C13BB64();
    v6 = *(v1 + 8);
    v6(v3, v0);
    v7 = *&v5[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
    if (v7)
    {
      v8 = *&v5[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state + 8];
      v9 = v7;
      sub_20C13B574();
      sub_20C13BB64();
      v6(v3, v0);
      ObjectType = swift_getObjectType();
      (*(v8 + 40))(5, ObjectType, v8);
    }
  }
}

id _s9SeymourUI09PictureInC9PresenterC20attachViewControlleryyAA0cdC10Supporting_pF_0(void *a1, uint64_t a2)
{
  v3 = v2;
  v15 = a1;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  ObjectType = swift_getObjectType();
  (*(a2 + 56))(v3, ObjectType, a2);
  v10 = (v3 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state);
  v11 = *(v3 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state);
  *v10 = v15;
  v10[1] = a2;

  v12 = v15;

  return v12;
}

void sub_20BDDE554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_20C138414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state])
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v10 + 8))(v12, v9);
    swift_getObjectType();
    sub_20C138404();
    sub_20BDE1758(&unk_27C768950, MEMORY[0x277D53FC0]);
    sub_20C13A764();
    (*(v6 + 8))(v8, v5);
    v13 = sub_20C13CDF4();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;
    v15 = v1;
    sub_20B6380FC(0, 0, v4, &unk_20C17DF38, v14);
  }
}

uint64_t sub_20BDDE84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_20BDDE86C, 0, 0);
}

uint64_t sub_20BDDE86C()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    *(v0 + 64) = v3;
    *(v0 + 72) = swift_getObjectType();
    *(v0 + 80) = *(v3 + 8);
    *(v0 + 88) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x70AD000000000000;
    sub_20C13CDA4();
    *(v0 + 96) = sub_20C13CD94();
    v5 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BDDE98C, v5, v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20BDDE98C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  v2(1, 0, 0, v1, v3);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BDDEA2C, 0, 0);
}

void sub_20BDDEA54(id a1, void (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v78 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  v86 = v10;
  v87 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  v21 = &v3[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  v22 = *&v3[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  v85 = a2;
  if (v22)
  {
    v80 = v9;
    v81 = v18;
    v79 = v17;
    v83 = v3;
    v84 = a3;
    v23 = a1;
    v24 = *(v21 + 1);
    ObjectType = swift_getObjectType();
    v26 = *(v24 + 48);
    v27 = v22;
    v82 = v23;
    if (v26(v23, ObjectType, v24))
    {
      sub_20C13B574();
      sub_20C13BB64();
      v28 = v86;
      v29 = v87 + 8;
      v78 = *(v87 + 8);
      v78(v20, v86);
      v30 = *v21;
      *v21 = 0;
      *(v21 + 1) = 0;

      v31 = (*(v24 + 16))(ObjectType, v24);
      v32 = v84;
      if (v31)
      {
        v87 = v29;
        sub_20C13B574();
        v33 = v27;
        v34 = sub_20C13BB74();
        v35 = sub_20C13D1F4();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138543362;
          *(v36 + 4) = v33;
          *v37 = v22;
          v38 = v33;
          _os_log_impl(&dword_20B517000, v34, v35, "Restoring PIP'ed view controller: %{public}@", v36, 0xCu);
          sub_20B64F5CC(v37);
          MEMORY[0x20F2F6A40](v37, -1, -1);
          MEMORY[0x20F2F6A40](v36, -1, -1);
        }

        v78(v81, v28);
        (*(v24 + 64))(ObjectType, v24);
        v39 = sub_20C13CDF4();
        v40 = v80;
        (*(*(v39 - 8) + 56))(v80, 1, 1, v39);
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v42 = v83;
        v41[4] = v83;
        v41[5] = v33;
        v43 = v85;
        v41[6] = v24;
        v41[7] = v43;
        v41[8] = v32;
        v44 = v33;
        v45 = v42;

        sub_20B6380FC(0, 0, v40, &unk_20C17DF28, v41);
      }

      else
      {
        v63 = v79;
        sub_20C13B574();
        v64 = v82;
        v65 = sub_20C13BB74();
        v66 = sub_20C13D1D4();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v83 = v27;
          v69 = v68;
          *&v88 = v68;
          *v67 = 136446210;
          v70 = v64;
          v71 = [v70 description];
          v72 = sub_20C13C954();
          v87 = v29;
          v73 = v72;
          v75 = v74;

          v76 = sub_20B51E694(v73, v75, &v88);

          *(v67 + 4) = v76;
          _os_log_impl(&dword_20B517000, v65, v66, "PlayerViewController %{public}s does not want PIP to be restored", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v77 = v69;
          v27 = v83;
          MEMORY[0x20F2F6A40](v77, -1, -1);
          MEMORY[0x20F2F6A40](v67, -1, -1);
        }

        v78(v63, v28);
        v85(0);
      }

      return;
    }

    a2 = v85;
    a1 = v82;
    v3 = v83;
  }

  sub_20C13B574();
  v46 = v3;
  v47 = a1;
  v48 = sub_20C13BB74();
  v49 = sub_20C13D1D4();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v89 = v51;
    *v50 = 136446466;
    v88 = *v21;
    v52 = v88;
    v53 = sub_20C13C9D4();
    v55 = sub_20B51E694(v53, v54, &v89);

    *(v50 + 4) = v55;
    *(v50 + 12) = 2082;
    v56 = v47;
    v57 = [v56 description];
    v58 = sub_20C13C954();
    v60 = v59;

    v61 = sub_20B51E694(v58, v60, &v89);

    *(v50 + 14) = v61;
    _os_log_impl(&dword_20B517000, v48, v49, "Failed to restore picture in picture: state %{public}s, playerViewController %{public}s", v50, 0x16u);
    swift_arrayDestroy();
    v62 = v51;
    a2 = v85;
    MEMORY[0x20F2F6A40](v62, -1, -1);
    MEMORY[0x20F2F6A40](v50, -1, -1);
  }

  (*(v87 + 8))(v13, v86);
  a2(0);
}

uint64_t sub_20BDDF1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a1;
  v8[6] = a4;
  return MEMORY[0x2822009F8](sub_20BDDF1D0, 0, 0);
}

uint64_t sub_20BDDF1D0()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v1 + 8);
    *(v0 + 96) = v5;
    *(v0 + 104) = swift_getObjectType();
    v6 = swift_allocObject();
    *(v0 + 112) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    *(v0 + 120) = *(v5 + 24);
    *(v0 + 128) = (v5 + 24) & 0xFFFFFFFFFFFFLL | 0xD8CE000000000000;
    sub_20C13CDA4();

    *(v0 + 136) = sub_20C13CD94();
    v8 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20BDDF324, v8, v7);
  }

  else
  {
    **(v0 + 40) = 1;
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_20BDDF324()
{
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[7];
  v5 = v0[8];

  v2(v6, v5, 0, sub_20BDE1440, v1, v3, v4);
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_20BDDF3F4, 0, 0);
}

void sub_20BDDF41C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  if (v10)
  {
    v11 = *(v9 + 1);
    v12 = v10;
    sub_20C13B574();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    v13 = *v9;
    *v9 = 0;
    *(v9 + 1) = 0;

    ObjectType = swift_getObjectType();
    (*(v11 + 72))(ObjectType, v11);
    (*(v11 + 32))(ObjectType, v11);
    sub_20C13CDC4();
    v15 = sub_20C13CDF4();
    (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v17 = v1;
    sub_20B6383D0(0, 0, v4, &unk_20C17DF48, v16);
  }
}

uint64_t sub_20BDDF6A8()
{
  *(v0 + 24) = *(*(v0 + 16) + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_audioSessionCoordinator);
  sub_20C138F44();
  sub_20BDE1758(&qword_27C76C6B0, MEMORY[0x277D541D0]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BDDF770, v2, v1);
}

uint64_t sub_20BDDF770()
{
  sub_20C138F04();

  return MEMORY[0x2822009F8](sub_20BDDF7D8, 0, 0);
}

uint64_t sub_20BDDF7D8()
{
  swift_getObjectType();
  sub_20BB29B60();
  sub_20C13A764();
  v1 = *(v0 + 8);

  return v1();
}

id PictureInPicturePresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PictureInPicturePresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall PictureInPicturePresenter.playerViewControllerDidStartPictureInPicture(_:)(AVPlayerViewController *a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  sub_20BDDE554();
}

Swift::Void __swiftcall PictureInPicturePresenter.playerViewControllerDidStopPictureInPicture(_:)(AVPlayerViewController *a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v2 + 8))(v4, v1);
  sub_20BDDD674();
}

void PictureInPicturePresenter.playerViewController(_:restoreUserInterfaceForPictureInPictureStopWithCompletionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  sub_20BDDEA54(a1, a2, a3);
}

uint64_t sub_20BDE00F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v12;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = sub_20C13BB84();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BDE01D4, 0, 0);
}

uint64_t sub_20BDE01D4()
{
  v1 = v0[8];
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state))
  {
    sub_20C13B574();
    v2 = sub_20C13BB74();
    v3 = sub_20C13D1F4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20B517000, v2, v3, "Picture In Picture Currently active. Showing alert!", v4, 2u);
      MEMORY[0x20F2F6A40](v4, -1, -1);
    }

    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    v8 = v0[8];

    (*(v6 + 8))(v5, v7);
    v9 = v8 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[23] = Strong;
    if (Strong)
    {
      v11 = *(v9 + 8);
      v0[24] = v11;
      v0[25] = swift_getObjectType();
      v0[26] = *(v11 + 16);
      v0[27] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xA530000000000000;
      sub_20C13CDA4();
      v0[28] = sub_20C13CD94();
      v12 = sub_20C13CD24();
      v14 = v13;
      v15 = sub_20BDE05B8;
LABEL_8:

      return MEMORY[0x2822009F8](v15, v12, v14);
    }
  }

  else
  {
    v16 = v0[16];
    v17 = v0[13];
    v18 = v0[14];
    v19 = v0[12];
    sub_20C13B574();
    sub_20C13BB64();
    (*(v18 + 8))(v16, v17);
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(v1, &protocol witness table for PictureInPicturePresenter, ObjectType, v19);
    v21 = v1 + OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_display;
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    v0[17] = v22;
    if (v22)
    {
      v23 = *(v21 + 8);
      v0[18] = v23;
      v0[19] = swift_getObjectType();
      v0[20] = *(v23 + 24);
      v0[21] = (v23 + 24) & 0xFFFFFFFFFFFFLL | 0xD8CE000000000000;
      sub_20C13CDA4();
      v0[22] = sub_20C13CD94();
      v12 = sub_20C13CD24();
      v14 = v24;
      v15 = sub_20BDE04E4;
      goto LABEL_8;
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_20BDE04E4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 232);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);

  v2(v6, v5, v4, v8, v7, v1, v3);
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20BDE05B8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v5 = v0[9];
  v4 = v0[10];

  v2(v5, v4, v1, v3);
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_20BDE0668(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52AC14;

  return sub_20BDE00F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20BDE0794(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_20C13CDF4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v5;
  *(v15 + 40) = a4;
  *(v15 + 48) = a5;
  *(v15 + 56) = a1;
  *(v15 + 64) = a2;
  *(v15 + 72) = a3;
  v16 = v5;
  sub_20B584050(a4);
  v17 = a1;
  sub_20B6383D0(0, 0, v13, &unk_20C17DF20, v15);
}

void sub_20BDE08D8(void (*a1)(char *, uint64_t), char *a2, void (**a3)(const void *, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v82 - v7;
  v9 = sub_20C13BB84();
  v90 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v86 = &v82 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v82 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  v88 = a2;
  v89 = a3;
  v21 = &a2[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  v22 = *&a2[OBJC_IVAR____TtC9SeymourUI25PictureInPicturePresenter_state];
  v91 = v9;
  if (!v22)
  {
    _Block_copy(a3);
LABEL_9:
    sub_20C13B574();
    v53 = a1;
    v54 = v88;
    v55 = sub_20C13BB74();
    v56 = sub_20C13D1D4();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v93 = v58;
      *v57 = 136446466;
      v92 = *v21;
      v59 = v92;
      v60 = sub_20C13C9D4();
      v62 = sub_20B51E694(v60, v61, &v93);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      v63 = v53;
      v64 = [v63 description];
      v65 = sub_20C13C954();
      v67 = v66;

      v68 = sub_20B51E694(v65, v67, &v93);

      *(v57 + 14) = v68;
      _os_log_impl(&dword_20B517000, v55, v56, "Failed to restore picture in picture: state %{public}s, playerViewController %{public}s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v58, -1, -1);
      MEMORY[0x20F2F6A40](v57, -1, -1);

      v90[1](v11, v91);
    }

    else
    {

      v90[1](v11, v9);
    }

    v89[2](v89, 0);
    goto LABEL_13;
  }

  v83 = v8;
  v84 = v11;
  v82 = v16;
  v87 = v20;
  v23 = *(v21 + 1);
  ObjectType = swift_getObjectType();
  v25 = v23[6];
  _Block_copy(a3);
  v26 = v22;
  v85 = a1;
  v27 = a1;
  v28 = v23;
  if (((v25)(v27, ObjectType, v23) & 1) == 0)
  {

    v9 = v91;
    v11 = v84;
    a1 = v85;
    goto LABEL_9;
  }

  sub_20C13B574();
  sub_20C13BB64();
  v29 = v91;
  v30 = v90[1];
  v30(v19, v91);
  v31 = *v21;
  *v21 = 0;
  *(v21 + 1) = 0;

  v32 = v28[2];
  v90 = v28;
  v33 = v26;
  if ((v32)(ObjectType, v28))
  {
    v89 = ObjectType;
    v34 = v82;
    sub_20C13B574();
    v35 = v33;
    v36 = sub_20C13BB74();
    v37 = sub_20C13D1F4();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v87;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v85 = v30;
      v41 = v40;
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      *(v41 + 4) = v35;
      *v42 = v22;
      v43 = v35;
      _os_log_impl(&dword_20B517000, v36, v37, "Restoring PIP'ed view controller: %{public}@", v41, 0xCu);
      sub_20B64F5CC(v42);
      v44 = v42;
      v29 = v91;
      MEMORY[0x20F2F6A40](v44, -1, -1);
      v45 = v41;
      v30 = v85;
      MEMORY[0x20F2F6A40](v45, -1, -1);
    }

    v30(v34, v29);
    v46 = v90;
    v90[8](v89, v90);
    v47 = sub_20C13CDF4();
    v48 = v83;
    (*(*(v47 - 8) + 56))(v83, 1, 1, v47);
    v49 = swift_allocObject();
    v49[2] = 0;
    v49[3] = 0;
    v50 = v88;
    v49[4] = v88;
    v49[5] = v35;
    v49[6] = v46;
    v49[7] = sub_20BC480F4;
    v49[8] = v39;
    v51 = v35;
    v52 = v50;

    sub_20B6380FC(0, 0, v48, &unk_20C17DF10, v49);

LABEL_13:

    return;
  }

  v69 = v86;
  sub_20C13B574();
  v70 = v85;
  v71 = sub_20C13BB74();
  v72 = sub_20C13D1D4();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v92 = v74;
    *v73 = 136446210;
    v75 = v70;
    v76 = [v75 description];
    v77 = sub_20C13C954();
    v85 = v30;
    v78 = v77;
    v90 = v33;
    v80 = v79;

    v81 = sub_20B51E694(v78, v80, &v92);

    *(v73 + 4) = v81;
    _os_log_impl(&dword_20B517000, v71, v72, "PlayerViewController %{public}s does not want PIP to be restored", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x20F2F6A40](v74, -1, -1);
    MEMORY[0x20F2F6A40](v73, -1, -1);

    v85(v86, v29);
    v33 = v90;
  }

  else
  {

    v30(v69, v29);
  }

  v89[2](v89, 0);
}

uint64_t _s9SeymourUI09PictureInC9PresenterC028playerViewControllerWillStopcdC0yySo08AVPlayergH0CF_0()
{
  v0 = sub_20C138474();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_20C13B574();
  sub_20C13BB64();
  v8(v7, v4);
  swift_getObjectType();
  sub_20C138464();
  sub_20BDE1758(&unk_27C76F050, MEMORY[0x277D53FF0]);
  sub_20C13A764();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20BDE1364(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52AC14;

  return sub_20BDDF1A8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_14()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t objectdestroy_14Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_20BDE1514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20BDDF1A8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_20BDE15F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BDDE84C(a1, v4, v5, v6);
}

uint64_t sub_20BDE16A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20BDDF688(a1, v4, v5, v6);
}

uint64_t sub_20BDE1758(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BDE17A0()
{
  v0 = sub_20C137A04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B3D4();
    sub_20BDE467C(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20BDE18AC()
{
  v0 = sub_20C136784();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13B334();
    v5 = sub_20C136774();
    v7 = v6;
    v9 = v8;
    (*(v1 + 8))(v3, v0);
    sub_20BDE4280(v5, v10, v9 & 1);

    return sub_20B583F4C(v5, v7, v9 & 1);
  }

  return result;
}

uint64_t sub_20BDE19E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v131 = a3;
  v132 = a5;
  v130 = a4;
  v129 = a2;
  v123 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v7 - 8);
  v128 = v117 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v9 - 8);
  v127 = v117 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v11 - 8);
  v126 = v117 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v13 - 8);
  v125 = v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v15 - 8);
  v124 = v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v17 - 8);
  v140 = v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v19 - 8);
  v139 = v117 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v21 - 8);
  v138 = v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v23 - 8);
  v137 = v117 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v25 - 8);
  v136 = v117 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v27 - 8);
  v135 = v117 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v29 - 8);
  v134 = v117 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v31 - 8);
  v133 = v117 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v33 - 8);
  v148 = v117 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v35 - 8);
  v147 = v117 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v37 - 8);
  v146 = v117 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v39 - 8);
  v145 = v117 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v41 - 8);
  v144 = v117 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v43 - 8);
  v143 = v117 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v45 - 8);
  v142 = v117 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v47 - 8);
  v141 = v117 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = v117 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = v117 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = v117 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = v117 - v59;
  v61 = sub_20C13BB84();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v64 = v117 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v67 = v117 - v66;
  sub_20C13B4A4();
  sub_20C13BB64();
  v68 = *(v62 + 8);
  v68(v67, v61);
  if (*(v6 + 48))
  {
    sub_20C13B534();
    v69 = sub_20C13BB74();
    v70 = sub_20C13D1F4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_20B517000, v69, v70, "Watch discovery already scheduled", v71, 2u);
      MEMORY[0x20F2F6A40](v71, -1, -1);
    }

    return (v68)(v64, v61);
  }

  else
  {
    v118 = v6;
    v117[0] = *(v6 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient + 24);
    v117[1] = *(v6 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient + 32);
    v117[3] = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient), v117[0]);
    v117[2] = sub_20C13A464();
    v73 = sub_20C133D84();
    v74 = *(*(v73 - 8) + 56);
    v122 = v60;
    v74(v60, 1, 1, v73);
    v75 = sub_20C135854();
    v76 = *(*(v75 - 8) + 56);
    v119 = v57;
    v76(v57, 1, 1, v75);
    v77 = sub_20C136194();
    v78 = *(*(v77 - 8) + 56);
    v121 = v54;
    v78(v54, 1, 1, v77);
    v79 = sub_20C133DD4();
    v80 = *(*(v79 - 8) + 56);
    v120 = v51;
    v80(v51, 1, 1, v79);
    v81 = sub_20C135274();
    (*(*(v81 - 8) + 56))(v141, 1, 1, v81);
    v82 = sub_20C134514();
    (*(*(v82 - 8) + 56))(v142, 1, 1, v82);
    v83 = sub_20C133B04();
    (*(*(v83 - 8) + 56))(v143, 1, 1, v83);
    v84 = sub_20C134C04();
    (*(*(v84 - 8) + 56))(v144, 1, 1, v84);
    v85 = sub_20C1368F4();
    (*(*(v85 - 8) + 56))(v145, 1, 1, v85);
    v86 = sub_20C134914();
    (*(*(v86 - 8) + 56))(v146, 1, 1, v86);
    v87 = sub_20C133374();
    (*(*(v87 - 8) + 56))(v147, 1, 1, v87);
    v88 = sub_20C135B74();
    (*(*(v88 - 8) + 56))(v148, 1, 1, v88);
    v89 = sub_20C134CD4();
    (*(*(v89 - 8) + 56))(v133, 1, 1, v89);
    v90 = sub_20C136EB4();
    (*(*(v90 - 8) + 56))(v134, 1, 1, v90);
    v91 = sub_20C133494();
    (*(*(v91 - 8) + 56))();
    v92 = sub_20C134594();
    (*(*(v92 - 8) + 56))(v136, 1, 1, v92);
    v93 = sub_20C138184();
    (*(*(v93 - 8) + 56))();
    v94 = sub_20C1363D4();
    (*(*(v94 - 8) + 56))(v138, 1, 1, v94);
    v95 = sub_20C1337A4();
    (*(*(v95 - 8) + 56))();
    v96 = sub_20C1337D4();
    (*(*(v96 - 8) + 56))(v140, 1, 1, v96);
    v97 = sub_20C134A94();
    v98 = v124;
    (*(*(v97 - 8) + 56))(v124, 1, 1, v97);
    v99 = sub_20C135364();
    v100 = v125;
    (*(*(v99 - 8) + 56))(v125, 1, 1, v99);
    sub_20C13CE94();
    v101 = v126;
    sub_20C136454();
    v102 = sub_20C136484();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    v103 = sub_20C136784();
    v104 = v127;
    (*(*(v103 - 8) + 56))(v127, 1, 1, v103);
    v105 = sub_20C137FE4();
    v106 = v128;
    (*(*(v105 - 8) + 56))(v128, 1, 1, v105);
    v107 = v138;
    v108 = v136;
    v109 = v134;
    sub_20C13A174();

    sub_20B520158(v106, &unk_27C768AC0);
    sub_20B520158(v104, &unk_27C765070);
    sub_20B520158(v101, &unk_27C765CB0);
    sub_20B520158(v100, &unk_27C765080);
    sub_20B520158(v98, &unk_27C768AD0);
    sub_20B520158(v140, &unk_27C765090);
    sub_20B520158(v139, &unk_27C768AE0);
    sub_20B520158(v107, &unk_27C7650A0);
    sub_20B520158(v137, &unk_27C768AF0);
    sub_20B520158(v108, &unk_27C7650B0);
    sub_20B520158(v135, &unk_27C768B00);
    sub_20B520158(v109, &unk_27C7650C0);
    sub_20B520158(v133, &unk_27C768B10);
    sub_20B520158(v148, &unk_27C7650D0);
    sub_20B520158(v147, &unk_27C768B20);
    sub_20B520158(v146, &unk_27C7650E0);
    sub_20B520158(v145, &unk_27C767260);
    sub_20B520158(v144, &unk_27C7650F0);
    sub_20B520158(v143, &qword_27C768B30);
    sub_20B520158(v142, &unk_27C765050);
    sub_20B520158(v141, &unk_27C765100);
    sub_20B520158(v120, &unk_27C7687F0);
    sub_20B520158(v121, &unk_27C765110);
    sub_20B520158(v119, &unk_27C76BBF0);
    sub_20B520158(v122, &unk_27C765120);
    v110 = v118;
    __swift_project_boxed_opaque_existential_1((v118 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider), *(v118 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 24));
    sub_20B5E2E18();
    v111 = sub_20C13D374();
    v112 = swift_allocObject();
    swift_weakInit();
    v113 = swift_allocObject();
    v114 = v129;
    v113[2] = v112;
    v113[3] = v114;
    v115 = v130;
    v113[4] = v131;
    v113[5] = v115;
    v113[6] = v132;

    v116 = sub_20C13AE34();

    *(v110 + 48) = v116;
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_20BDE2F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BDE664C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a4;
    v11[4] = a5;

    sub_20BDE3018(a2, a3, sub_20BDE6990, v11);
  }

  return result;
}

uint64_t sub_20BDE3018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a3;
  v56 = a4;
  v57 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  sub_20C13B4A4();
  sub_20C13BB64();
  v54 = *(v11 + 8);
  v54(v16, v10);
  v17 = *(v4 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_initialWatchConnectionRejection);
  if (v17 != 4)
  {
    sub_20C13B4A4();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1F4();
    v20 = os_log_type_enabled(v18, v19);
    v53 = a1;
    if (v20)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "Presenting intital watch connection rejection already on Session instead of discovery UI", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    v22 = v54;
    v54(v13, v10);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v5 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
    sub_20C13B184();
    v23 = sub_20C135174();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v9, 1, v23) == 1)
    {
      sub_20B520158(v9, &unk_27C76BC00);
    }

    else
    {
      sub_20C1350F4();
      (*(v24 + 8))(v9, v23);
    }

    sub_20C13B4A4();
    sub_20C13BB64();
    v22(v16, v10);
    v25 = sub_20B58FDD0(v17);
    v27 = v26;
    v29 = v28;
    v30 = sub_20B58FEF0(v17);
    v32 = v31;

    v33 = sub_20B5900AC(v17);
    v35 = v34;
    if (v17 == 3)
    {
      v36 = qword_27C760628;

      if (v36 != -1)
      {
        swift_once();
      }

      v37 = &qword_27C7996B8;
    }

    else
    {
      v38 = qword_27C760630;

      if (v38 != -1)
      {
        swift_once();
      }

      v37 = &qword_27C7996C8;
    }

    v39 = *v37;

    *&v58 = v25;
    *(&v58 + 1) = v27;
    *&v59 = v30;
    *(&v59 + 1) = v32;
    *&v60 = v33;
    *(&v60 + 1) = v35;
    *&v61 = v39;
    *(&v61 + 1) = v40;
    v62 = v29 & 1;
    v64 = v29 & 1;
    v63[2] = v60;
    v63[3] = v61;
    v63[0] = v58;
    v63[1] = v59;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v41 = *(v5 + 40);
      ObjectType = swift_getObjectType();
      (*(v41 + 40))(v63, ObjectType, v41);
      swift_unknownObjectRelease();
    }

    sub_20B5E5C74(&v58);
    a1 = v53;
  }

  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  v44[2] = v43;
  v44[3] = a1;
  v44[4] = v57;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *(v5 + 40);
    v46 = swift_getObjectType();
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v49 = v55;
    v50 = v56;
    v48[2] = v47;
    v48[3] = v49;
    v48[4] = v50;
    v51 = *(v45 + 8);

    v51(sub_20BDE6974, v44, sub_20BDE702C, v48, v46, v45);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_20BDE3628(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B97FC14();
    sub_20C13A764();
    Strong = swift_unknownObjectRelease();
  }

  return a2(Strong);
}

uint64_t sub_20BDE36E8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (qword_27C7609B0 != -1)
    {
      swift_once();
    }

    sub_20BDE3880();
  }

  return a2(Strong);
}

unint64_t sub_20BDE3794()
{
  v1 = v0;
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  *(v0 + 48) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState);
  if (v5 >= 2)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_20C13D3D4();
    sub_20B97FBF8(v5);
    v5 = *(v1 + v4);
  }

  *(v1 + v4) = 0;

  return sub_20B97FBF8(v5);
}

unint64_t sub_20BDE3880()
{
  v1 = v0;
  v22 = sub_20C1344C4();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
  sub_20C13B184();
  v7 = sub_20C135174();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C76BC00);
LABEL_4:
    v9 = 1;
    goto LABEL_5;
  }

  v9 = sub_20C1350F4();
  (*(v8 + 8))(v6, v7);
  if (v9 == 4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v10 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_catalogWorkout;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 24);
  v21[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 32);
  v21[1] = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider), v11);
  sub_20B5E2E18();
  v12 = sub_20C13D374();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v0 + v10;
  v15 = v22;
  (*(v2 + 16))(v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v22);
  v16 = (*(v2 + 80) + 25) & ~*(v2 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v9;
  (*(v2 + 32))(v17 + v16, v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15);

  v18 = sub_20C13AE34();

  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState);
  *(v1 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState) = v18;
  return sub_20B97FBF8(v19);
}

uint64_t sub_20BDE3BA0(uint64_t a1, char a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 70;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState);
    *(Strong + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState) = 1;
    sub_20B97FBF8(v8);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer), swift_unknownObjectRetain(), , v10))
  {
    swift_unknownObjectRelease();
    sub_20C13B4A4();
    v11 = sub_20C13BB74();
    v12 = sub_20C13D1F4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20B517000, v11, v12, "[SessionWatchDiscoveryPresenter] Connection rejection reason already displaying, skipping discovery expired UI presentation", v13, 2u);
      MEMORY[0x20F2F6A40](v13, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_20B59046C(a2, 5u, v21);
    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = swift_unknownObjectWeakLoadStrong();
      v18 = *(v16 + 40);

      if (v17)
      {
        ObjectType = swift_getObjectType();
        (*(v18 + 32))(v21, ObjectType, v18);
        swift_unknownObjectRelease();
      }
    }

    return sub_20B5E5C74(v21);
  }
}

uint64_t sub_20BDE3E10()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = *(v1 + 40);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      (*(v3 + 64))(ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20BDE3EA8()
{
  v1 = v0;
  if (*(v0 + 48))
  {
    sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v2 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState);
  if (v3 >= 2)
  {
    sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider, v8);
    __swift_project_boxed_opaque_existential_1(v8, v9);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    sub_20B97FBF8(v3);
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *(v0 + 48) = 0;
  swift_unknownObjectRelease();
  v4 = *(v0 + v2);
  *(v0 + v2) = 0;
  sub_20B97FBF8(v4);
  sub_20B583ECC(*(v0 + 16));
  sub_20B583E6C(v0 + 32);
  swift_unknownObjectRelease();
  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionOrigin);
  sub_20B97FBF8(*(v0 + v2));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_contentAvailabilityClient);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource);
  v5 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_catalogWorkout;
  v6 = sub_20C1344C4();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  return v1;
}

uint64_t sub_20BDE4090()
{
  sub_20BDE3EA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionWatchDiscoveryPresenter()
{
  result = qword_27C76F078;
  if (!qword_27C76F078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BDE413C()
{
  result = sub_20C13A484();
  if (v1 <= 0x3F)
  {
    result = sub_20C1344C4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BDE4280(int a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  v14 = *(v11 + 8);
  result = v14(v13, v10);
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
    sub_20C13B184();
    v16 = sub_20C135174();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_20B520158(v9, &unk_27C76BC00);
    }

    else
    {
      sub_20C1350F4();
      (*(v17 + 8))(v9, v16);
    }

    sub_20C13B4A4();
    sub_20C13BB64();
    v14(v13, v10);
    v18 = sub_20B58FDD0(a1);
    v20 = v19;
    v22 = v21;
    v23 = sub_20B58FEF0(a1);
    v25 = v24;

    v26 = sub_20B5900AC(a1);
    v28 = v27;
    if (a1 == 3)
    {
      v29 = qword_27C760628;

      if (v29 != -1)
      {
        swift_once();
      }

      v30 = &qword_27C7996B8;
    }

    else
    {
      v31 = qword_27C760630;

      if (v31 != -1)
      {
        swift_once();
      }

      v30 = &qword_27C7996C8;
    }

    v32 = *v30;

    *&v37 = v18;
    *(&v37 + 1) = v20;
    *&v38 = v23;
    *(&v38 + 1) = v25;
    *&v39 = v26;
    *(&v39 + 1) = v28;
    *&v40 = v32;
    *(&v40 + 1) = v33;
    v41 = v22 & 1;
    v43 = v22 & 1;
    v42[2] = v39;
    v42[3] = v40;
    v42[0] = v37;
    v42[1] = v38;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v34 + 40))(v42, ObjectType, v34);
      swift_unknownObjectRelease();
    }

    sub_20B5E5C74(&v37);
    return sub_20BDE5AA4(a1);
  }

  return result;
}

uint64_t sub_20BDE467C(void *a1)
{
  v2 = v1;
  v127 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = &v112 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v112 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v9 - 8);
  v123 = &v112 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v122 = &v112 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v13 - 8);
  v121 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v15 - 8);
  v132 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v112 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v21 - 8);
  v129 = &v112 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v23 - 8);
  v128 = &v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v25 - 8);
  v142 = &v112 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v27 - 8);
  v141 = &v112 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v29 - 8);
  v140 = &v112 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v31 - 8);
  v139 = &v112 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v33 - 8);
  v138 = &v112 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v35 - 8);
  v137 = &v112 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v37 - 8);
  v136 = &v112 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v39 - 8);
  v135 = &v112 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v41 - 8);
  v134 = &v112 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v43 - 8);
  v133 = &v112 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v112 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v50 = &v112 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v112 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v54 - 8);
  v56 = &v112 - v55;
  v57 = sub_20C13BB84();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v60 = &v112 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v112 - v62;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState) == 1)
  {
    sub_20C13B4A4();
    v64 = sub_20C13BB74();
    v65 = sub_20C13D1F4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_20B517000, v64, v65, "[SessionWatchDiscoveryPresenter] Connection rejection ignored, discovery already expired", v66, 2u);
      MEMORY[0x20F2F6A40](v66, -1, -1);
    }

    return (*(v58 + 8))(v63, v57);
  }

  else
  {
    v68 = v2;
    v69 = sub_20C1379F4();
    if (v69 == 4)
    {
      sub_20C13B4A4();
      v70 = sub_20C13BB74();
      v71 = sub_20C13D1F4();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_20B517000, v70, v71, "[SessionWatchDiscoveryPresenter] Connection rejection not a relevant watch connection rejection, ignoring", v72, 2u);
        MEMORY[0x20F2F6A40](v72, -1, -1);
      }

      return (*(v58 + 8))(v60, v57);
    }

    else
    {
      v73 = v69;
      v116 = v68;
      v113 = *(v68 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient + 24);
      v114 = *(v68 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient + 32);
      v127 = __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient), v113);
      v115 = sub_20C13A464();
      v74 = sub_20C133D84();
      v75 = *(*(v74 - 8) + 56);
      v120 = v56;
      v75(v56, 1, 1, v74);
      v76 = sub_20C135854();
      v77 = *(*(v76 - 8) + 56);
      v119 = v53;
      v77(v53, 1, 1, v76);
      v78 = sub_20C136194();
      v79 = *(*(v78 - 8) + 56);
      v117 = v50;
      v79(v50, 1, 1, v78);
      v80 = sub_20C133DD4();
      v81 = *(*(v80 - 8) + 56);
      v118 = v47;
      v81(v47, 1, 1, v80);
      v82 = sub_20C135274();
      (*(*(v82 - 8) + 56))(v133, 1, 1, v82);
      v83 = sub_20C134514();
      (*(*(v83 - 8) + 56))(v134, 1, 1, v83);
      v84 = sub_20C133B04();
      (*(*(v84 - 8) + 56))(v135, 1, 1, v84);
      v85 = sub_20C134C04();
      (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
      v86 = sub_20C1368F4();
      (*(*(v86 - 8) + 56))(v137, 1, 1, v86);
      v87 = sub_20C134914();
      (*(*(v87 - 8) + 56))(v138, 1, 1, v87);
      v88 = sub_20C133374();
      (*(*(v88 - 8) + 56))(v139, 1, 1, v88);
      v89 = sub_20C135B74();
      (*(*(v89 - 8) + 56))(v140, 1, 1, v89);
      v90 = sub_20C134CD4();
      (*(*(v90 - 8) + 56))(v141, 1, 1, v90);
      v91 = sub_20C136EB4();
      (*(*(v91 - 8) + 56))(v142, 1, 1, v91);
      v92 = sub_20C133494();
      (*(*(v92 - 8) + 56))(v128, 1, 1, v92);
      v93 = sub_20C134594();
      (*(*(v93 - 8) + 56))();
      v94 = sub_20C138184();
      (*(*(v94 - 8) + 56))(v130, 1, 1, v94);
      v95 = sub_20C1363D4();
      (*(*(v95 - 8) + 56))();
      v96 = sub_20C1337A4();
      (*(*(v96 - 8) + 56))(v132, 1, 1, v96);
      v97 = sub_20C1337D4();
      v98 = v121;
      (*(*(v97 - 8) + 56))(v121, 1, 1, v97);
      v99 = sub_20C134A94();
      v100 = v122;
      (*(*(v99 - 8) + 56))(v122, 1, 1, v99);
      v101 = sub_20C135364();
      v102 = v123;
      (*(*(v101 - 8) + 56))(v123, 1, 1, v101);
      v103 = sub_20C136484();
      v104 = v124;
      (*(*(v103 - 8) + 56))(v124, 1, 1, v103);
      sub_20C13CE94();
      v105 = v125;
      sub_20C136764();
      v106 = sub_20C136784();
      (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
      v107 = sub_20C137FE4();
      v108 = *(*(v107 - 8) + 56);
      v112 = v73;
      v109 = v126;
      v108(v126, 1, 1, v107);
      v110 = v130;
      v111 = v128;
      sub_20C13A174();

      sub_20B520158(v109, &unk_27C768AC0);
      sub_20B520158(v105, &unk_27C765070);
      sub_20B520158(v104, &unk_27C765CB0);
      sub_20B520158(v102, &unk_27C765080);
      sub_20B520158(v100, &unk_27C768AD0);
      sub_20B520158(v98, &unk_27C765090);
      sub_20B520158(v132, &unk_27C768AE0);
      sub_20B520158(v131, &unk_27C7650A0);
      sub_20B520158(v110, &unk_27C768AF0);
      sub_20B520158(v129, &unk_27C7650B0);
      sub_20B520158(v111, &unk_27C768B00);
      sub_20B520158(v142, &unk_27C7650C0);
      sub_20B520158(v141, &unk_27C768B10);
      sub_20B520158(v140, &unk_27C7650D0);
      sub_20B520158(v139, &unk_27C768B20);
      sub_20B520158(v138, &unk_27C7650E0);
      sub_20B520158(v137, &unk_27C767260);
      sub_20B520158(v136, &unk_27C7650F0);
      sub_20B520158(v135, &qword_27C768B30);
      sub_20B520158(v134, &unk_27C765050);
      sub_20B520158(v133, &unk_27C765100);
      sub_20B520158(v118, &unk_27C7687F0);
      sub_20B520158(v117, &unk_27C765110);
      sub_20B520158(v119, &unk_27C76BBF0);
      sub_20B520158(v120, &unk_27C765120);
      return sub_20BDE5AA4(v112);
    }
  }
}

uint64_t sub_20BDE5AA4(int a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_20C13B534();
  sub_20C13BB64();
  v14 = *(v5 + 8);
  v14(v13, v4);
  if (!*(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer))
  {
    return sub_20BDE5E1C(a1);
  }

  v15 = *(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_initialWatchConnectionRejection);
  if (v15 <= 1)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_initialWatchConnectionRejection))
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }
  }

  else if (v15 == 2)
  {
    v16 = 1;
  }

  else
  {
    if (v15 != 3)
    {
      goto LABEL_11;
    }

    v16 = 4;
  }

  if (v16 >= qword_20C17E100[a1])
  {
    swift_unknownObjectRetain();
    sub_20C13B4A4();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "[SessionWatchDiscoveryPresenter] Connection rejection ignored, less important than rejection reason already on session", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v24 = v10;
    return (v14)(v24, v4);
  }

LABEL_11:
  if (qword_20C17E100[*(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer + 8)] < qword_20C17E100[a1])
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider), *(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 24));
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
    return sub_20BDE5E1C(a1);
  }

  swift_unknownObjectRetain();
  sub_20C13B4A4();
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20B517000, v21, v22, "[SessionWatchDiscoveryPresenter] Connection rejection ignored, less important than existing rejection reason", v23, 2u);
    MEMORY[0x20F2F6A40](v23, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v24 = v7;
  return (v14)(v24, v4);
}

uint64_t sub_20BDE5E1C(int a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_20C1344C4();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v28[3] = v4;
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v28 - v7;
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource), *(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource + 24));
  sub_20C13B184();
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_20B520158(v8, &unk_27C76BC00);
LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  v15 = sub_20C1350F4();
  (*(v14 + 8))(v8, v13);
  if (v15 == 4)
  {
    goto LABEL_4;
  }

LABEL_5:
  v16 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_catalogWorkout;
  v17 = *(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 24);
  v28[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider + 32);
  v28[1] = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider), v17);
  sub_20B5E2E18();
  v18 = sub_20C13D374();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = v29;
  (*(v29 + 16))(v5, v2 + v16, v3);
  v21 = (*(v20 + 80) + 26) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  v23 = v3;
  v24 = v30;
  *(v22 + 24) = v30;
  *(v22 + 25) = v15;
  (*(v20 + 32))(v22 + v21, v5, v23);

  v25 = sub_20C13AE34();

  v26 = v2 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer;
  *v26 = v25;
  *(v26 + 8) = v24;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BDE621C(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v11 = *(Strong + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer), swift_unknownObjectRetain(), , !v11))
  {
LABEL_8:
    sub_20C13B4A4();
    v18 = sub_20C13BB74();
    v19 = sub_20C13D1D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20B517000, v18, v19, "[SessionWatchDiscoveryPresenter] Rejection presentation timer fired for stale rejection reason. This is unexpected", v20, 2u);
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  swift_unknownObjectRelease();
  v12 = sub_20C137734();
  v14 = v13;
  if (v12 == sub_20C137734() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C13DFF4();

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v4 + 8))(v9, v3);
  v22 = sub_20B58FDD0(a2);
  v24 = v23;
  v26 = v25;
  v27 = a2;
  v28 = sub_20B58FEF0(a2);
  v30 = v29;

  v31 = sub_20B5900AC(a2);
  v33 = v32;
  if (v27 == 3)
  {
    v34 = qword_27C760628;

    if (v34 != -1)
    {
      swift_once();
    }

    v35 = &qword_27C7996B8;
  }

  else
  {
    v36 = qword_27C760630;

    if (v36 != -1)
    {
      swift_once();
    }

    v35 = &qword_27C7996C8;
  }

  v37 = *v35;

  *&v45 = v22;
  *(&v45 + 1) = v24;
  *&v46 = v28;
  *(&v46 + 1) = v30;
  *&v47 = v31;
  *(&v47 + 1) = v33;
  *&v48 = v37;
  *(&v48 + 1) = v38;
  v50[1] = v46;
  v50[2] = v47;
  v50[3] = v48;
  v49 = v26 & 1;
  v51 = v26 & 1;
  v50[0] = v45;
  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  if (v39)
  {
    v40 = v39;
    v41 = swift_unknownObjectWeakLoadStrong();
    v42 = *(v40 + 40);

    if (v41)
    {
      ObjectType = swift_getObjectType();
      (*(v42 + 40))(v50, ObjectType, v42);
      swift_unknownObjectRelease();
    }
  }

  return sub_20B5E5C74(&v45);
}

uint64_t sub_20BDE664C()
{
  v1 = sub_20C13B604();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13A484();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B64B624(v0 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionOrigin, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_20B64B688(v7);
  if (EnumCaseMultiPayload == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

LABEL_6:
    v12 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  v10 = sub_20C1380C4();
  (*(v2 + 104))(v4, *MEMORY[0x277D4F958], v1);
  v11 = sub_20B8D7248(v4, v10);

  (*(v2 + 8))(v4, v1);
  result = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!result)
  {
    return result;
  }

  v14 = *(v0 + 40);
  v15 = swift_getObjectType();
  (*(v14 + 16))(v15, v14);
  return swift_unknownObjectRelease();
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI30SessionWatchDiscoveryPresenterC0E5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20BDE68A0()
{
  sub_20C1344C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_20BDE621C(v1, v2);
}

uint64_t sub_20BDE690C()
{
  sub_20C1344C4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_20BDE3BA0(v1, v2);
}

void *sub_20BDE69B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_20C13A484();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C137EA4();
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[5] = 0;
  v3[2] = 0;
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryState) = 0;
  v16 = v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_rejectionPresentationTimer;
  *v16 = 0;
  v16[8] = 0;
  v17 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_discoveryStartTimestamp;
  sub_20C13CE94();
  *(v3 + v17) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_eventHub) = v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(v38, v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_timerProvider);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_platform) = v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v38, v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_remoteBrowsingSource);
  v19 = OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_catalogWorkout;
  v20 = sub_20C1344C4();
  v34 = *(v20 - 8);
  v35 = v20;
  v21 = *(v34 + 16);
  v36 = a3;
  v21(v3 + v19, a3);
  sub_20B64B624(a2, v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionOrigin);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768810);
  sub_20C133AA4();
  sub_20B51C710(v38, v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_sessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(v38, v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_contentAvailabilityClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_subscriptionToken) = sub_20C13A914();
  v37 = a2;
  sub_20B64B624(a2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v32;
    v22 = v33;
    (*(v32 + 32))(v15, v12, v33);
    sub_20C137E54();
    v24 = sub_20C136784();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v9, 1, v24) == 1)
    {
      (*(v23 + 8))(v15, v22);
      sub_20B520158(v9, &unk_27C765070);
LABEL_7:
      LOBYTE(v26) = 4;
      goto LABEL_8;
    }

    v26 = sub_20C136774();
    v28 = v27;
    v30 = v29;
    (*(v23 + 8))(v15, v22);
    (*(v25 + 8))(v9, v24);
    if ((v30 & 1) == 0)
    {
      sub_20B583F4C(v26, v28, 0);
      goto LABEL_7;
    }
  }

  else
  {
    sub_20B64B688(v12);
    LOBYTE(v26) = 4;
  }

LABEL_8:
  *(v4 + OBJC_IVAR____TtC9SeymourUI30SessionWatchDiscoveryPresenter_initialWatchConnectionRejection) = v26;
  swift_getObjectType();
  sub_20C13B3E4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v38);
  swift_getObjectType();
  sub_20C13B344();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  (*(v34 + 8))(v36, v35);
  sub_20B64B688(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v4;
}

char *sub_20BDE7030(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = type metadata accessor for ActionButtonTemplateBuilder();
  v12 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v13 = swift_allocObject();
  v14 = qword_27C760AA0;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v16 = qword_27C76CF78;
  v67[3] = v11;
  v67[4] = &off_2822EEB00;
  v67[0] = v12;
  v65 = &type metadata for ActionButtonViewFactory;
  v66 = &off_2822B2B20;
  v57 = v12;
  v17 = type metadata accessor for ActionButtonContainerView();
  v18 = objc_allocWithZone(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v67, v11);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v24 = *v22;
  v63[3] = v11;
  v63[4] = &off_2822EEB00;
  v63[0] = v24;
  v61 = &type metadata for ActionButtonViewFactory;
  v62 = &off_2822B2B20;
  *&v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v63, &v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v25 = &v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v25 = v13;
  v25[1] = &off_28229AE20;
  sub_20B51CC64(v60, &v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v15;
  *&v18[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v16;
  v59.receiver = v18;
  v59.super_class = v17;
  v26 = objc_msgSendSuper2(&v59, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v60);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_actionButtonContainerView] = v27;
  v28 = &v4[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_templateBuilder];
  v28[3] = v11;
  v28[4] = &off_2822EEB00;
  *v28 = v57;
  v29 = &v4[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_templateParser];
  *v29 = v13;
  v29[1] = &off_28229AE20;
  v30 = &v4[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_viewFactory];
  *(v30 + 3) = &type metadata for ActionButtonViewFactory;
  *(v30 + 4) = &off_2822B2B20;
  v31 = type metadata accessor for ActionButtonsCell();
  v58.receiver = v4;
  v58.super_class = v31;

  v32 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
  v33 = OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_actionButtonContainerView;
  *(*&v32[OBJC_IVAR____TtC9SeymourUI17ActionButtonsCell_actionButtonContainerView] + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822E8300;
  swift_unknownObjectWeakAssign();
  v34 = v32;
  v35 = [v34 contentView];
  [v35 addSubview_];

  v56 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C14FE90;
  v37 = [*&v32[v33] leadingAnchor];
  v38 = [v34 contentView];
  v39 = [v38 leadingAnchor];

  v40 = [v37 constraintEqualToAnchor_];
  *(v36 + 32) = v40;
  v41 = [*&v32[v33] trailingAnchor];
  v42 = [v34 contentView];
  v43 = [v42 trailingAnchor];

  v44 = [v41 constraintEqualToAnchor_];
  *(v36 + 40) = v44;
  v45 = [*&v32[v33] topAnchor];
  v46 = [v34 contentView];
  v47 = [v46 topAnchor];

  v48 = [v45 constraintEqualToAnchor_];
  *(v36 + 48) = v48;
  v49 = [*&v32[v33] bottomAnchor];
  v50 = [v34 contentView];

  v51 = [v50 bottomAnchor];
  v52 = [v49 constraintLessThanOrEqualToAnchor_];

  *(v36 + 56) = v52;
  sub_20B5E29D0();
  v53 = sub_20C13CC54();

  [v56 activateConstraints_];

  return v34;
}