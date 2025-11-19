uint64_t sub_20B8D0B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20B8D0BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for ShelfItemX()
{
  result = qword_27C767518;
  if (!qword_27C767518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8D0C98(uint64_t a1)
{
  sub_20B8D0DB0();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_20C135214();
    if (v5 <= 0x3F)
    {
      v3 = sub_20C133954();
      if (v6 <= 0x3F)
      {
        swift_getTupleTypeLayout3();
        v3 = 0;
        *(*(a1 - 8) + 84) = v8;
      }
    }
  }

  return v3;
}

void sub_20B8D0DB0()
{
  if (!qword_27C767528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767530);
    sub_20C135214();
    sub_20C133954();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C767528);
    }
  }
}

uint64_t sub_20B8D0E4C()
{
  v1 = type metadata accessor for ShelfItemX();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20B8D1410(v0, v3);
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v12, v4);

  v8 = sub_20C135214();
  sub_20B8D1474(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v8 - 8) + 8))(v3 + v6, v8);
  v9 = sub_20C133954();
  sub_20B8D1474(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  return sub_20C13E1B4();
}

uint64_t sub_20B8D1030(__int128 *a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B8D1410(v1, v4);
  v5 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(a1, v5);

  v9 = sub_20C135214();
  sub_20B8D1474(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v4 + v7, v9);
  v10 = sub_20C133954();
  sub_20B8D1474(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  return (*(*(v10 - 8) + 8))(v4 + v8, v10);
}

uint64_t sub_20B8D11F4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20B8D1410(v1, v3);
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v12, v4);

  v8 = sub_20C135214();
  sub_20B8D1474(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v8 - 8) + 8))(v3 + v6, v8);
  v9 = sub_20C133954();
  sub_20B8D1474(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  return sub_20C13E1B4();
}

uint64_t sub_20B8D1410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfItemX();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8D1474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B8D14BC(uint64_t a1, uint64_t a2)
{
  v43 = sub_20C133954();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v7;
  v8 = sub_20C135214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767548);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v39 - v15);
  v18 = (&v39 + *(v17 + 56) - v15);
  sub_20B8D1410(a1, &v39 - v15);
  sub_20B8D1410(a2, v18);
  v40 = *v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 64);
  v22 = *v18;
  v44 = v9;
  v23 = *(v9 + 32);
  v41 = v13;
  v23(v13, v16 + v20, v8);
  v46 = v4;
  v24 = *(v4 + 32);
  v25 = v16 + v21;
  v26 = v43;
  v24(v48, v25, v43);
  v45 = v8;
  v23(v47, v18 + v20, v8);
  v27 = v42;
  v28 = v26;
  v24(v42, v18 + v21, v26);
  sub_20BDA3714(v40, v22);
  LOBYTE(v26) = v29;

  if (v26)
  {
    v30 = v41;
    v31 = v47;
    if (MEMORY[0x20F2EC950](v41, v47))
    {
      v32 = v48;
      v33 = MEMORY[0x20F2EAFF0](v48, v27);
    }

    else
    {
      v33 = 0;
      v32 = v48;
    }
  }

  else
  {
    v33 = 0;
    v31 = v47;
    v32 = v48;
    v30 = v41;
  }

  v34 = *(v46 + 8);
  v34(v27, v28);
  v35 = *(v44 + 8);
  v36 = v31;
  v37 = v45;
  v35(v36, v45);
  v34(v32, v28);
  v35(v30, v37);
  return v33 & 1;
}

uint64_t sub_20B8D1834()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v34 = &v33 - v12;
  MEMORY[0x28223BE20](v13);
  v38 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_assetClient), *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_assetClient + 24));
  sub_20C139DF4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B8D38D0;
  *(v15 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v5, v2);
  v18 = (v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B6331FC;
  v18[1] = v15;

  v19 = v34;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_20B8D39C4;
  *(v20 + 24) = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B849B38;
  *(v21 + 24) = v20;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  (*(v36 + 16))(v35, v19, v37);
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v26 = swift_allocObject();
  (*(v23 + 32))(v26 + v25, v22, v24);
  v27 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B66A8B4;
  v27[1] = v21;

  v28 = v38;
  sub_20C137C94();
  v29 = *(v23 + 8);
  v29(v19, v24);
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B5DF6DC, v31);

  return (v29)(v28, v24);
}

size_t sub_20B8D1CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_20C133524();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C136594();
  v8 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763350);
  sub_20B8D3814();
  sub_20B8D3878();
  v10 = sub_20C13CBF4();

  v11 = *(v10 + 16);
  if (v11)
  {
    v20 = v2;
    v21 = a2;
    v29 = MEMORY[0x277D84F90];
    result = sub_20BB5D604(0, v11, 0);
    v13 = *(v10 + 16);
    v25 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = v29;
    v23 = v5 + 8;
    v24 = v5 + 16;
    v22 = v8 + 32;
    v15 = v13 - 1;
    while (v15 != -1)
    {
      if (v15 >= *(v10 + 16))
      {
        goto LABEL_12;
      }

      v16 = v27;
      (*(v5 + 16))(v7, v25 + *(v5 + 72) * v15, v27);
      sub_20C133504();
      v17 = v28;
      sub_20C136554();
      (*(v5 + 8))(v7, v16);
      v29 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_20BB5D604(v18 > 1, v19 + 1, 1);
        v17 = v28;
        v14 = v29;
      }

      *(v14 + 16) = v19 + 1;
      result = (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v17, v26);
      --v15;
      if (!--v11)
      {

        a2 = v21;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
LABEL_10:
    sub_20C02BC6C(v14, a2);
  }

  return result;
}

uint64_t sub_20B8D2004()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_lazyLockupFetcher);
  v7 = *(sub_20C02A560() + 16);

  if (v7)
  {

    v8 = sub_20C0314BC(v6, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20C14F980;
    v9 = swift_allocObject();
    v40 = v5;
    v10 = v9;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    v11 = (v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_storefrontLocalizer);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_storefrontLocalizer + 24));
    *(v10 + 40) = sub_20C138D34();
    *(v10 + 48) = v12;
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    *(v10 + 56) = sub_20C138D34();
    *(v10 + 64) = v13;
    v14 = sub_20C13C914();
    v15 = [objc_opt_self() smm:v14 systemImageNamed:?];

    v16 = v10 | 0x1000000000000006;
    *(v10 + 72) = v15;
    *(v10 + 80) = 0;
    *(v10 + 88) = 0;
    *(v10 + 96) = 0;
    v5 = v40;
    *(v8 + 32) = v16;
  }

  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_descriptorIdentifier);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_descriptorIdentifier + 8);
  v41 = 0uLL;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = 0;
  *&v43 = 0;
  WORD4(v43) = 128;
  v44 = 0uLL;
  *&v45 = v17;
  *(&v45 + 1) = v18;
  v46 = 0uLL;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = v8;
  *&v48[0] = MEMORY[0x277D84F90];
  *(v48 + 8) = 0u;
  *(&v48[1] + 8) = 0u;
  *(&v48[2] + 1) = 0;
  v49 = 2;
  nullsub_1(&v41);
  v19 = v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row;
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 144);
  v50[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 128);
  v50[9] = v20;
  v51 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 160);
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 80);
  v50[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 64);
  v50[5] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 112);
  v50[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 96);
  v50[7] = v22;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 16);
  v50[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row);
  v50[1] = v23;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 48);
  v50[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 32);
  v50[3] = v24;
  v25 = v48[2];
  *(v19 + 128) = v48[1];
  *(v19 + 144) = v25;
  *(v19 + 160) = v49;
  v26 = v46;
  *(v19 + 64) = v45;
  *(v19 + 80) = v26;
  v27 = v48[0];
  *(v19 + 96) = v47;
  *(v19 + 112) = v27;
  v28 = v42;
  *v19 = v41;
  *(v19 + 16) = v28;
  v29 = v44;
  *(v19 + 32) = v43;
  *(v19 + 48) = v29;

  sub_20B634408(v50);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v32 = v5;
      v33 = sub_20B61DA90(v1, result);
      if (v34)
      {
        v36 = v33;
        v37 = v34;
        v38 = v35;
        sub_20B5E2E18();
        *v32 = sub_20C13D374();
        (*(v3 + 104))(v32, *MEMORY[0x277D85200], v2);
        v39 = sub_20C13C584();
        result = (*(v3 + 8))(v32, v2);
        if ((v39 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620FE0(v36, v37, v38, v1, 0, v31);
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

uint64_t sub_20B8D2430()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_assetClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_mediaTagStringBuilder);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_storefrontLocalizer);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return v0;
}

uint64_t sub_20B8D2558()
{
  sub_20B8D2430();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DownloadGalleryShelf()
{
  result = qword_27C767550;
  if (!qword_27C767550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8D2604()
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

uint64_t sub_20B8D26DC()
{
  sub_20B8D1834();
  swift_getObjectType();
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20B8D28B8(uint64_t a1, uint64_t a2)
{
  v20[1] = a2;
  v20[0] = sub_20C13BB84();
  v2 = *(v20[0] - 8);
  MEMORY[0x28223BE20](v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C133524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13A984();
  v9 = sub_20C1334E4();
  v11 = v10;
  v12 = *(v6 + 8);
  v12(v8, v5);
  v21 = v9;
  v22 = v11 & 1;
  v23 = 5;
  sub_20B68CCB0();
  sub_20B68CD04();
  if (sub_20C133C04() & 1) != 0 || (sub_20C13A984(), v13 = sub_20C1334E4(), v15 = v14, v12(v8, v5), v21 = v13, v22 = v15 & 1, v23 = 8, result = sub_20C133C04(), (result))
  {
    sub_20C13B534();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1F4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "[DownloadGalleryShelf] asset bundle updated updated, updating shelf", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    (*(v2 + 8))(v4, v20[0]);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20B8D1834();
    }
  }

  return result;
}

uint64_t sub_20B8D2B94(uint64_t a1)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v6;
    v34 = v9;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[DownloadGalleryShelf] archived sessions updated, updating shelf", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v11 + 8))(v13, v10);

    v19 = sub_20C13AEB4();
    v20 = v33;
    sub_20C02CCD0(v19, v33);

    v21 = swift_allocObject();
    *(v21 + 16) = sub_20B8D39C4;
    *(v21 + 24) = v15;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_20B849B38;
    *(v22 + 24) = v21;
    v23 = v32;
    (*(v2 + 16))(v32, v20, v1);
    v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v25 = swift_allocObject();
    (*(v2 + 32))(v25 + v24, v23, v1);
    v26 = (v25 + ((v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v26 = sub_20B66A8B4;
    v26[1] = v22;

    v27 = v34;
    sub_20C137C94();
    v28 = *(v2 + 8);
    v28(v20, v1);
    v29 = sub_20C137CB4();
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v29(sub_20B5DF6DC, v30);

    return (v28)(v27, v1);
  }

  return result;
}

uint64_t sub_20B8D2FC4()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[DownloadGalleryShelf] AllowedContentRatingsUpdated, updating shelf", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B8D1834();
  }

  return result;
}

uint64_t sub_20B8D3138(uint64_t a1)
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
  *(v14 + 16) = sub_20B8D37F8;
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

uint64_t sub_20B8D33FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B8D3474@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row + 32);
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

uint64_t sub_20B8D3528(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v8 = v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_row;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v20, v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_assetClient);
  *(v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_displayStyle) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v20, v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_mediaTagStringBuilder);
  v14 = (v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_descriptorIdentifier);
  *v14 = a3;
  v14[1] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_eventHub) = v20[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v20, v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for ShelfLazyLockupFetcher();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F90];
  *(v15 + 152) = MEMORY[0x277D84F90];
  v17 = sub_20B6B0C04(v16);
  v18 = MEMORY[0x277D84FA0];
  *(v15 + 160) = v17;
  *(v15 + 168) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  sub_20C133AA4();
  *(v15 + 136) = 10;
  *(v15 + 144) = a2;
  *(v15 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20DownloadGalleryShelf_lazyLockupFetcher) = v15;
  return v4;
}

unint64_t sub_20B8D3814()
{
  result = qword_27C767560;
  if (!qword_27C767560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767560);
  }

  return result;
}

unint64_t sub_20B8D3878()
{
  result = qword_27C763ED0;
  if (!qword_27C763ED0)
  {
    sub_20C132E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763ED0);
  }

  return result;
}

uint64_t sub_20B8D38FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20B8D39CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v133 = sub_20C13BD44();
  v130 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v128 = v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for ShelfTitleView.Layout(0);
  MEMORY[0x28223BE20](v136);
  *&v132 = v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_indexPath;
  v13 = sub_20C133244();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v17 = v16;
  v139 = 1065353216;
  v140 = 1144750080;
  v18 = sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v19) = v141;
  [v15 setContentCompressionResistancePriority:1 forAxis:v19];
  v139 = 1065353216;
  v140 = 1144750080;
  v137 = v18;
  sub_20C13BB94();
  LODWORD(v20) = v141;
  [v15 setContentHuggingPriority:1 forAxis:v20];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  *&v5[v14] = v15;
  v23 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  [v24 setAllowsDefaultTighteningForTruncation_];
  v25 = [v21 lightGrayColor];
  [v24 setTextColor_];

  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontForTextStyle_];
  [v24 setFont_];

  *&v5[v23] = v24;
  v28 = [objc_opt_self() buttonWithType_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = [v28 titleLabel];
  [v29 setAdjustsFontForContentSizeCategory_];

  v30 = [v26 preferredFontForTextStyle_];
  v31 = [v28 titleLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setFont_];
  }

  v33 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton;
  [v28 setSmu:-10.0 touchInsets:{-10.0, -10.0, -10.0}];
  v139 = 1065353216;
  v140 = 1144750080;
  sub_20C13BB94();
  LODWORD(v34) = v141;
  [v28 setContentCompressionResistancePriority:1 forAxis:v34];
  v139 = 1065353216;
  v140 = 1144750080;
  v127[1] = v17;
  sub_20C13BB94();
  LODWORD(v35) = v141;
  [v28 setContentHuggingPriority:0 forAxis:v35];
  v36 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v28 setTintColor_];

  *&v5[v33] = v28;
  v37 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_alternateBottomLayoutConstraints] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_bottomLayoutConstraints] = v37;
  v38 = &v5[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout];
  *&v5[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout] = 0x4020000000000000;
  v39 = v136;
  sub_20C13BD84();
  v40 = v39[6];
  if (qword_27C7606C8 != -1)
  {
    swift_once();
  }

  *&v38[v40] = qword_27C799F38;
  *&v38[v39[7]] = 0x403E000000000000;
  *&v38[v39[8]] = 0x4014000000000000;
  v41 = &v5[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint;
  *&v5[v42] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v43 = type metadata accessor for ShelfTitleView(0);
  v138.receiver = v5;
  v138.super_class = v43;
  v44 = objc_msgSendSuper2(&v138, sel_initWithFrame_, a1, a2, a3, a4);
  v129 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel;
  v45 = *&v44[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel];
  v131 = &v44[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout];
  v46 = v44;
  v135 = v44;
  v47 = v132;
  sub_20B8D65AC(&v44[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout], v132);
  v48 = v39[5];
  v49 = v46;
  v50 = v45;
  v51 = v128;
  sub_20C13BD54();
  v52 = sub_20C13BDF4();
  v127[0] = *(*(v52 - 8) + 8);
  (v127[0])(v47 + v48, v52);
  v53 = sub_20C13BD34();
  (*(v130 + 8))(v51, v133);
  [v50 setFont_];

  v54 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton;
  v55 = *&v49[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton];
  v133 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton;
  v56 = v55;
  [v56 addTarget:v49 action:sel_tappedTitleButton_ forControlEvents:64];

  v57 = v49;
  v134 = v49;
  v58 = v57;
  v59 = v129;
  v60 = v135;
  v61 = *&v135[v129];
  v62 = v58;
  [v62 addSubview_];
  v130 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel;
  [v62 addSubview_];
  [v62 addSubview_];
  sub_20B8D65AC(v131, v47);
  v63 = *(v136 + 20);
  sub_20C13BD74();
  v65 = v64;
  v67 = v66;
  (v127[0])(v47 + v63, v52);
  v68 = v60;
  v69 = [*&v60[v59] topAnchor];
  v70 = [v62 &selRef_setLineBreakMode_];
  v71 = [v69 constraintEqualToAnchor:v70 constant:v65];

  v72 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint;
  v73 = *&v62[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint];
  *&v62[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint] = v71;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_20C150040;
  v75 = *&v62[v72];
  *(v74 + 32) = v75;
  v76 = v74;
  v77 = *&v60[v59];
  v78 = v75;
  v79 = [v77 leadingAnchor];
  v80 = [v62 leadingAnchor];

  v81 = [v79 constraintEqualToAnchor_];
  *(v76 + 5) = v81;
  v128 = v76;
  v82 = v59;
  v83 = [*&v60[v59] trailingAnchor];
  v84 = [*&v134[v133] leadingAnchor];
  v85 = v131;
  v86 = [v83 constraintLessThanOrEqualToAnchor:v84 constant:-*v131];

  *(v76 + 6) = v86;
  v87 = swift_allocObject();
  v132 = xmmword_20C151490;
  *(v87 + 16) = xmmword_20C151490;
  v88 = v130;
  v89 = [*&v62[v130] topAnchor];
  v90 = v82;
  v91 = [*&v68[v82] bottomAnchor];
  v92 = [v89 constraintEqualToAnchor:v91 constant:*(v85 + *(v136 + 32))];

  *(v87 + 32) = v92;
  v93 = [*&v62[v88] &selRef_secondaryLabel + 5];
  v94 = [v62 &selRef_secondaryLabel + 5];

  v95 = -v67;
  v96 = [v93 constraintEqualToAnchor:v94 constant:v95];

  v139 = 1065353216;
  v140 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v97) = v141;
  [v96 setPriority_];
  *(v87 + 40) = v96;
  *&v62[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_bottomLayoutConstraints] = v87;

  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_20C14F580;
  v99 = [*&v135[v90] bottomAnchor];
  v100 = [v62 bottomAnchor];

  v101 = [v99 constraintEqualToAnchor:v100 constant:v95];
  v139 = 1065353216;
  v140 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v102) = v141;
  [v101 setPriority_];
  *(v98 + 32) = v101;
  *&v62[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_alternateBottomLayoutConstraints] = v98;

  v103 = swift_allocObject();
  *(v103 + 16) = v132;
  v104 = v103;
  v105 = v130;
  v106 = [*&v62[v130] leadingAnchor];
  v107 = [v62 leadingAnchor];

  v108 = [v106 constraintEqualToAnchor_];
  *(v104 + 32) = v108;
  v136 = v104;
  v109 = [*&v62[v105] trailingAnchor];
  v110 = [v62 trailingAnchor];

  v111 = [v109 constraintEqualToAnchor_];
  *(v104 + 40) = v111;
  v112 = swift_allocObject();
  *(v112 + 16) = v132;
  v113 = v133;
  v114 = v134;
  v115 = [*&v134[v133] firstBaselineAnchor];
  v116 = [*&v135[v129] firstBaselineAnchor];
  v117 = [v115 constraintEqualToAnchor_];

  v139 = 1065353216;
  v140 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v118) = v141;
  [v117 setPriority_];
  *(v112 + 32) = v117;
  v119 = [*&v114[v113] trailingAnchor];
  v120 = [v62 trailingAnchor];

  v121 = [v119 constraintEqualToAnchor_];
  v139 = 1065353216;
  v140 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v122) = v141;
  [v121 setPriority_];
  *(v112 + 40) = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = v128;
  *(inited + 40) = v136;
  *(inited + 48) = v112;
  v124 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v125 = sub_20C13CC54();

  [v124 activateConstraints_];

  sub_20B8D5144();
  return v62;
}

uint64_t sub_20B8D49AC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ShelfTitleView(0);
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  [*&v0[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel] setText_];
  [*&v0[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel] setText_];
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton];
  [v1 setEnabled_];
  [v1 setTitle:0 forState:0];
  [v1 setAccessibilityIdentifier_];
  sub_20B8D5144();
  v2 = &v0[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf];
  *v2 = 0;
  *(v2 + 1) = 0;
  return swift_unknownObjectRelease();
}

void sub_20B8D4D30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a4 < 4 || (v19 = a3, v20 = a4, sub_20B5F6EB0(), (sub_20C13DA54() & 1) != 0))
  {
    v8 = *(v4 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel);
    if (a2)
    {
      v9 = sub_20C13C914();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText_];
  }

  else
  {
    v10 = sub_20C13C914();
    v11 = [objc_opt_self() smm:v10 systemImageNamed:{v19, v20}];

    v12 = [objc_opt_self() textAttachmentWithImage_];
    v13 = [objc_opt_self() attributedStringWithAttachment_];
    v14 = [objc_opt_self() preferredFontForTextStyle_];
    v15 = sub_20B915158(v14);

    v9 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    [v9 appendAttributedString_];
    if (a2)
    {
      MEMORY[0x20F2F4230](a1, a2);
      v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v17 = sub_20C13C914();

      v18 = [v16 initWithString_];

      [v9 appendAttributedString_];
    }

    [*(v5 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel) setAttributedText_];
  }
}

void sub_20B8D4F8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton);
  [v5 setEnabled_];
  if (a2)
  {
    v6 = sub_20C13C914();
    [v5 setTitle:v6 forState:0];

    MEMORY[0x20F2F4230](32, 0xE100000000000000);
    v7 = [*(v3 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel) text];
    if (v7)
    {
      v8 = v7;
      v9 = sub_20C13C954();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    MEMORY[0x20F2F4230](v9, v11);

    String.camelCased()();

    v12 = sub_20C13C914();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    [v5 setTitle:0 forState:0];

    [v5 setAccessibilityIdentifier_];
  }
}

void sub_20B8D5144()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel) text];
  if (v1)
  {
    v2 = v1;
    sub_20C13C954();

    sub_20B5F6EB0();
    sub_20C13DA54();
  }

  v3 = objc_opt_self();
  sub_20B5E29D0();

  v4 = sub_20C13CC54();

  [v3 deactivateConstraints_];

  v5 = sub_20C13CC54();

  [v3 activateConstraints_];
}

void sub_20B8D5298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfTitleView.Layout(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 3)
  {
    v7 = v2 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout;
    sub_20B8D65AC(v2 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout, v6);
    v8 = v4[5];
    sub_20C13BD74();
    v10 = v9;
    v11 = sub_20C13BDF4();
    (*(*(v11 - 8) + 8))(&v6[v8], v11);
    if (a2 == 1)
    {
      v10 = *(v7 + v4[7]);
    }

    else if (!a2)
    {
      v10 = v10 + *(v7 + v4[6]);
    }

    [*(v2 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint) setConstant_];
  }
}

id sub_20B8D53D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfTitleView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B8D5510()
{
  sub_20B595A38();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ShelfTitleView.Layout(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20B8D5658()
{
  result = sub_20C13BDF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B8D56D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_indexPath;
  swift_beginAccess();
  return sub_20B800360(v1 + v3, a1);
}

uint64_t sub_20B8D5730(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_20B8D57B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_indexPath;
  v3 = sub_20C133244();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v6) = v30;
  [v5 setContentCompressionResistancePriority:1 forAxis:v6];
  sub_20C13BB94();
  LODWORD(v7) = v30;
  [v5 setContentHuggingPriority:1 forAxis:v7];

  [v5 setAdjustsFontForContentSizeCategory_];
  [v5 setAllowsDefaultTighteningForTruncation_];
  v8 = objc_opt_self();
  v9 = [v8 whiteColor];
  [v5 setTextColor_];

  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  *(v1 + v4) = v5;
  v10 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  [v11 setAllowsDefaultTighteningForTruncation_];
  v12 = [v8 lightGrayColor];
  [v11 setTextColor_];

  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  v13 = objc_opt_self();
  v14 = [v13 preferredFontForTextStyle_];
  [v11 setFont_];

  *(v1 + v10) = v11;
  v15 = [objc_opt_self() buttonWithType_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [v15 titleLabel];
  [v16 setAdjustsFontForContentSizeCategory_];

  v17 = [v13 preferredFontForTextStyle_];
  v18 = [v15 titleLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setFont_];
  }

  v20 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleButton;
  [v15 setSmu:-10.0 touchInsets:{-10.0, -10.0, -10.0}];
  sub_20C13BB94();
  LODWORD(v21) = v30;
  [v15 setContentCompressionResistancePriority:1 forAxis:v21];
  sub_20C13BB94();
  LODWORD(v22) = v30;
  [v15 setContentHuggingPriority:0 forAxis:v22];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v15 setTintColor_];

  *(v1 + v20) = v15;
  v24 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_alternateBottomLayoutConstraints) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_bottomLayoutConstraints) = v24;
  v25 = v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout;
  *(v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_layout) = 0x4020000000000000;
  v26 = type metadata accessor for ShelfTitleView.Layout(0);
  sub_20C13BD84();
  v27 = v26[6];
  if (qword_27C7606C8 != -1)
  {
    swift_once();
  }

  *(v25 + v27) = qword_27C799F38;
  *(v25 + v26[7]) = 0x403E000000000000;
  *(v25 + v26[8]) = 0x4014000000000000;
  v28 = (v1 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf);
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleTopConstraint;
  *(v1 + v29) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8D5D60(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_shelf);
  *v4 = a1;
  v4[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  v6(v24, ObjectType, a2);
  v42[8] = v24[8];
  v43 = v24[9];
  v44 = v25;
  v42[4] = v24[4];
  v42[5] = v24[5];
  v42[7] = v24[7];
  v42[6] = v24[6];
  v42[0] = v24[0];
  v42[1] = v24[1];
  v42[3] = v24[3];
  v42[2] = v24[2];
  if (sub_20B5EAF8C(v42) == 1)
  {
    v7 = 0;
    v23 = 3;
  }

  else
  {
    v7 = *(&v43 + 1);
    v23 = v44;
    sub_20B8D6160(*(&v43 + 1), v44);
    sub_20B520158(v24, &qword_27C762340);
  }

  v22 = a2;
  v6(v26, ObjectType, a2);
  v39 = v26[8];
  v40 = v26[9];
  v41 = v27;
  v38[4] = v26[4];
  v38[5] = v26[5];
  v38[7] = v26[7];
  v38[6] = v26[6];
  v38[0] = v26[0];
  v38[1] = v26[1];
  v38[3] = v26[3];
  v38[2] = v26[2];
  v8 = ObjectType;
  v9 = v2;
  if (sub_20B5EAF8C(v38) == 1)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *(&v39 + 1);
    v11 = v40;

    sub_20B520158(v26, &qword_27C762340);
  }

  if (v23 == 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  if (v23 == 3)
  {
    v13 = 2;
  }

  else
  {
    v13 = v23;
  }

  sub_20B8D6150(v7, v23);
  sub_20B8D4D30(v10, v11, v12, v13);

  sub_20B8D6174(v7, v23);
  v6(v28, v8, v22);
  v35 = v28[8];
  v36 = v28[9];
  v37 = v29;
  v34[4] = v28[4];
  v34[5] = v28[5];
  v34[6] = v28[6];
  v34[7] = v28[7];
  v34[0] = v28[0];
  v34[1] = v28[1];
  v34[2] = v28[2];
  v34[3] = v28[3];
  if (sub_20B5EAF8C(v34) == 1)
  {
    v14 = 0;
    v15 = *(v9 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel);
  }

  else
  {
    v16 = v35;

    sub_20B520158(v28, &qword_27C762340);
    v15 = *(v9 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel);
    if (v16)
    {
      v17 = *(v9 + OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel);
      v14 = sub_20C13C914();
      v15 = v17;
    }

    else
    {
      v14 = 0;
    }
  }

  [v15 setText_];

  v6(v30, v8, v22);
  v32[8] = v30[8];
  v32[9] = v30[9];
  v33 = v31;
  v32[4] = v30[4];
  v32[5] = v30[5];
  v32[6] = v30[6];
  v32[7] = v30[7];
  v32[0] = v30[0];
  v32[1] = v30[1];
  v32[2] = v30[2];
  v32[3] = v30[3];
  if (sub_20B5EAF8C(v32) == 1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v19 = *(&v32[0] + 1);
    v18 = *&v32[0];

    sub_20B520158(v30, &qword_27C762340);
  }

  sub_20B8D4F8C(v18, v19);

  sub_20B8D5144();
  sub_20B8D5298(v20, v23);
  return sub_20B8D6174(v7, v23);
}

uint64_t sub_20B8D6150(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_20B8D6160(a1, a2);
  }

  return a1;
}

uint64_t sub_20B8D6160(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_20B8D6174(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_20B8D6184(a1, a2);
  }

  return a1;
}

uint64_t sub_20B8D6184(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

char *sub_20B8D6198(uint64_t *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for ShelfTitleView(0)) initWithFrame_];
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_titleLabel];
  if (a1[18])
  {
    v4 = sub_20C13C914();
  }

  else
  {
    v4 = 0;
  }

  [v3 setText_];

  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI14ShelfTitleView_subtitleLabel];
  if (a1[16])
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText_];

  sub_20B8D4F8C(*a1, a1[1]);
  sub_20B8D5144();
  sub_20B8D5298(v7, a1[20]);
  return v2;
}

id sub_20B8D6288(uint64_t *a1)
{
  v1 = sub_20B8D6198(a1);
  LODWORD(v2) = 1112014848;
  LODWORD(v3) = 1112014848;
  [v1 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v2, v3}];
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension_];
  v8 = [v6 estimatedDimension_];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = sub_20C13C914();
  v11 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v9 elementKind:v10 alignment:2];

  return v11;
}

id sub_20B8D63CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_20B8D6198(a1);
  LODWORD(v11) = 1112014848;
  LODWORD(v12) = 1112014848;
  [v10 systemLayoutSizeFittingSize:*MEMORY[0x277D76C78] withHorizontalFittingPriority:*(MEMORY[0x277D76C78] + 8) verticalFittingPriority:{v11, v12}];
  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 fractionalWidthDimension_];
  v17 = [v15 estimatedDimension_];
  v18 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v17];

  if (a5)
  {
    v19 = [objc_opt_self() layoutAnchorWithEdges:3 fractionalOffset:{0.0, -1.0}];
  }

  else
  {
    v19 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{*&a3, -(v14 + *&a4)}];
  }

  v20 = v19;
  sub_20BE51DD0(a2, v5, &off_2822B3638);
  v21 = sub_20C13C914();

  v22 = [objc_opt_self() supplementaryItemWithLayoutSize:v18 elementKind:v21 containerAnchor:v20];

  return v22;
}

uint64_t sub_20B8D65AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfTitleView.Layout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8D6610(uint64_t a1)
{
  v2 = type metadata accessor for ShelfTitleView.Layout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B8D6678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_20B8D66C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_20B8D675C(uint64_t a1, void (*a2)(void), uint64_t *a3)
{
  a2();
  v4 = sub_20C13C914();

  *a3 = v4;
  return result;
}

unint64_t sub_20B8D67B8()
{
  result = qword_27C767568;
  if (!qword_27C767568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767568);
  }

  return result;
}

uint64_t sub_20B8D680C()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 6.0;
  if (v14 != result)
  {
    v16 = 4.0;
    if (Width / v13 > 375.0)
    {
      v16 = 6.0;
      if (Width / v13 < 834.0)
      {
        v16 = 4.0;
      }
    }
  }

  qword_27C767570 = *&v16;
  return result;
}

uint64_t sub_20B8D6934()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 12.0;
  if (v14 != result)
  {
    v16 = 6.0;
    if (Width / v13 > 375.0)
    {
      v16 = 6.0;
      if (Width / v13 < 834.0)
      {
        v16 = 3.0;
      }
    }
  }

  qword_27C767578 = *&v16;
  return result;
}

double sub_20B8D6A5C()
{
  if (qword_27C7607E8 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27C767578;
  if (qword_27C7607E0 != -1)
  {
    swift_once();
  }

  result = v0 + v0 + *&qword_27C767570;
  *&qword_27C767580 = result;
  return result;
}

char *sub_20B8D6AF8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.11];
  [v2 setBackgroundColor_];

  *&v0[v1] = v2;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SessionPlatterSeparatorView();
  v4 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView;
  v6 = *&v4[OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView];
  v7 = v4;
  v8 = [v6 layer];
  v9 = sub_20C13C914();
  [v8 setCompositingFilter_];

  [v7 addSubview_];
  sub_20B8D6D70();

  return v7;
}

void sub_20B8D6D70()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = [v1 heightAnchor];
  if (qword_27C7607F0 != -1)
  {
    swift_once();
  }

  v5 = [v4 constraintEqualToConstant_];

  *(v3 + 32) = v5;
  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI27SessionPlatterSeparatorView_separatorView];
  v7 = [v6 heightAnchor];
  if (qword_27C7607E0 != -1)
  {
    swift_once();
  }

  v8 = [v7 constraintEqualToConstant_];

  *(v3 + 40) = v8;
  v9 = [v6 widthAnchor];
  v10 = [v1 widthAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v3 + 48) = v11;
  v12 = [v6 centerYAnchor];
  v13 = [v1 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v3 + 56) = v14;
  sub_20B5E29D0();
  v15 = sub_20C13CC54();

  [v2 activateConstraints_];
}

id sub_20B8D7018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionPlatterSeparatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20B8D7084()
{
  result = qword_27C767590;
  if (!qword_27C767590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767590);
  }

  return result;
}

unint64_t sub_20B8D70FC()
{
  result = qword_27C767598;
  if (!qword_27C767598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767598);
  }

  return result;
}

uint64_t sub_20B8D7150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_20C13E164();
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_20C13DFF4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_20B8D7248(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C13B604();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20B8DD0D4(&qword_281103AE0, MEMORY[0x277D4F998]), v7 = sub_20C13C7B4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20B8DD0D4(&qword_281103AD8, MEMORY[0x277D4F998]);
      v15 = sub_20C13C894();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20B8D7478(uint64_t a1, uint64_t a2)
{
  v43 = sub_20C134E04();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C1333E4();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763F18);
  MEMORY[0x28223BE20](v49);
  v9 = &v35 - v8;
  v10 = type metadata accessor for WorkoutPlanPreference();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v35 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_20C13E164();
  sub_20BBC6470();
  v18 = sub_20C13E1B4();
  v19 = -1 << *(a2 + 32);
  v20 = v18 & ~v19;
  v48 = a2 + 56;
  if (((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    return 0;
  }

  v45 = ~v19;
  v46 = *(v11 + 72);
  v47 = a1;
  v36 = (v6 + 32);
  v40 = (v4 + 8);
  v41 = (v6 + 8);
  v35 = (v4 + 32);
  v39 = a2;
  v21 = v44;
  while (1)
  {
    sub_20B8DCE6C(*(a2 + 48) + v46 * v20, v17);
    v22 = *(v49 + 48);
    sub_20B8DCE6C(v17, v9);
    sub_20B8DCE6C(v47, &v9[v22]);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_20B8DCE6C(v9, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v38;
      v24 = v43;
      (*v35)(v38, &v9[v22], v43);
      v25 = MEMORY[0x20F2EC550](v44, v23);
      v26 = *v40;
      v27 = v23;
      v21 = v44;
      (*v40)(v27, v24);
      sub_20B8DCED0(v17);
      v26(v21, v24);
      if (v25)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_20B8DCED0(v17);
    (*v40)(v21, v43);
LABEL_5:
    sub_20B520158(v9, &qword_27C763F18);
LABEL_6:
    v20 = (v20 + 1) & v45;
    if (((*(v48 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }
  }

  sub_20B8DCE6C(v9, v50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B8DCED0(v17);
    (*v41)(v50, v42);
    goto LABEL_5;
  }

  v28 = v37;
  v29 = v21;
  v30 = v42;
  (*v36)(v37, &v9[v22], v42);
  v31 = sub_20C1333C4();
  v32 = *v41;
  (*v41)(v28, v30);
  sub_20B8DCED0(v17);
  v33 = v30;
  v21 = v29;
  v32(v50, v33);
  if ((v31 & 1) == 0)
  {
LABEL_13:
    sub_20B8DCED0(v9);
    a2 = v39;
    goto LABEL_6;
  }

LABEL_16:
  sub_20B8DCED0(v9);
  return 1;
}

uint64_t sub_20B8D79A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_20C13E164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68);
  sub_20B65CA5C();
  sub_20C133BE4();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(a4 + 32);
  v7 = v5 & ~v6;
  if ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_20B65CAB0();
    sub_20B65CB04();
    do
    {
      v9 = sub_20C133BF4();
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_20B8D7B30(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    sub_20C13E164();
    MEMORY[0x20F2F58E0](a1 & 1);
    v5 = sub_20C13E1B4();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      do
      {
        v9 = *(*(a2 + 48) + v7) ^ a1;
        if ((v9 & 1) == 0)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
      LOBYTE(v2) = v9 ^ 1;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_20B8D7BF8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_20C13E164();
    sub_20B964064(a1);
    sub_20C13CA64();

    v4 = sub_20C13E1B4();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xED000073676E6952;
        v9 = 0x7974697669746361;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xE700000000000000;
            v9 = 0x7261426E727562;
            break;
          case 2:
            v8 = 0xE700000000000000;
            v10 = 0x636E65646163;
            goto LABEL_18;
          case 3:
            v8 = 0xE800000000000000;
            v9 = 0x65636E6174736964;
            break;
          case 4:
            v8 = 0xE600000000000000;
            v9 = 0x796772656E65;
            break;
          case 5:
            v9 = 0x7461527472616568;
            v8 = 0xE900000000000065;
            break;
          case 6:
            v8 = 0xE900000000000074;
            v9 = 0x6867696C68676968;
            break;
          case 7:
            v8 = 0xE900000000000079;
            v9 = 0x7469736E65746E69;
            break;
          case 8:
            v8 = 0xE700000000000000;
            v10 = 0x6E696C636E69;
LABEL_18:
            v9 = v10 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            break;
          case 9:
            v8 = 0xE300000000000000;
            v9 = 7172210;
            break;
          case 0xA:
            v8 = 0xE900000000000072;
            v9 = 0x6F74617261706573;
            break;
          case 0xB:
            v9 = 7172211;
            v8 = 0xE300000000000000;
            break;
          case 0xC:
            v8 = 0xE800000000000000;
            v9 = 0x73736572676F7270;
            break;
          case 0xD:
            v8 = 0xE500000000000000;
            v9 = 0x72656D6974;
            break;
          default:
            break;
        }

        v11 = 0x7974697669746361;
        v12 = 0xED000073676E6952;
        switch(a1)
        {
          case 1:
            v12 = 0xE700000000000000;
            if (v9 == 0x7261426E727562)
            {
              goto LABEL_43;
            }

            goto LABEL_44;
          case 2:
            v12 = 0xE700000000000000;
            v13 = 0x636E65646163;
            goto LABEL_48;
          case 3:
            v12 = 0xE800000000000000;
            if (v9 != 0x65636E6174736964)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 4:
            v12 = 0xE600000000000000;
            if (v9 != 0x796772656E65)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 5:
            v12 = 0xE900000000000065;
            if (v9 != 0x7461527472616568)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 6:
            v12 = 0xE900000000000074;
            if (v9 != 0x6867696C68676968)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 7:
            v12 = 0xE900000000000079;
            if (v9 != 0x7469736E65746E69)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 8:
            v12 = 0xE700000000000000;
            v13 = 0x6E696C636E69;
LABEL_48:
            if (v9 != (v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 9:
            v12 = 0xE300000000000000;
            if (v9 != 7172210)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 10:
            v12 = 0xE900000000000072;
            v11 = 0x6F74617261706573;
            goto LABEL_42;
          case 11:
            v12 = 0xE300000000000000;
            if (v9 != 7172211)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 12:
            v12 = 0xE800000000000000;
            if (v9 != 0x73736572676F7270)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 13:
            v12 = 0xE500000000000000;
            if (v9 != 0x72656D6974)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          default:
LABEL_42:
            if (v9 != v11)
            {
              goto LABEL_44;
            }

LABEL_43:
            if (v8 == v12)
            {

              v14 = 1;
              return v14 & 1;
            }

LABEL_44:
            v14 = sub_20C13DFF4();

            if (v14)
            {
              return v14 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v14 & 1;
            }

            break;
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_20B8D8070(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C137BA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20B8DD0D4(&unk_27C767650, MEMORY[0x277D53A28]), v7 = sub_20C13C7B4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20B8DD0D4(&qword_27C764560, MEMORY[0x277D53A28]);
      v15 = sub_20C13C894();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20B8D8288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  sub_20C13E164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767688);
  sub_20B8DCF84();
  sub_20C133BE4();
  v5 = sub_20C13E1B4();
  v6 = -1 << *(a4 + 32);
  v7 = v5 & ~v6;
  if ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    sub_20B8DCFD8();
    sub_20B8DD02C();
    do
    {
      v9 = sub_20C133BF4();
      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_20B8D8418(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_20C13E164();
  v6 = a3(a1);
  MEMORY[0x20F2F58E0](v6);
  v7 = sub_20C13E1B4();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = a3(*(*(a2 + 48) + v9));
    v12 = v11 == a3(a1);
    result = v12;
    if (v12)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

uint64_t sub_20B8D8518(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C1365F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20B8DD0D4(&qword_27C762F60, MEMORY[0x277D52AF8]), v7 = sub_20C13C7B4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20B8DD0D4(&qword_27C764300, MEMORY[0x277D52AF8]);
      v15 = sub_20C13C894();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_20B8D8730(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v3);
  v4 = sub_20C13E1B4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_20B8D87FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16) && (sub_20C13E164(), a3(a1), sub_20C13CA64(), , v6 = sub_20C13E1B4(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = a3(*(*(a2 + 48) + v8));
      v12 = v11;
      if (v10 == a3(a1) && v12 == v13)
      {
        break;
      }

      v15 = sub_20C13DFF4();

      if ((v15 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v15 & 1;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_20B8D8964(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_20B8DD0D4(&qword_27C764180, MEMORY[0x277CC9AF8]), v7 = sub_20C13C7B4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_20B8DD0D4(&qword_27C762F98, MEMORY[0x277CC9AF8]);
      v15 = sub_20C13C894();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v51 = a3;
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_20C136194();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = v9;
  v49 = sub_20C133E74();
  sub_20B52F9E8(a1, v8, &unk_27C765110);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    v47 = v15;
    v17 = v10;
    v18 = v16;
    v19 = sub_20C136184();
    v21 = v20;
    MEMORY[0x20F2ED8D0]();
    v22 = sub_20C136184();
    v24 = v23;
    v25 = *(v17 + 8);
    v48 = v18;
    v25(v13, v18);
    if (v19 == v22 && v21 == v24)
    {
    }

    else
    {
      v27 = sub_20C13DFF4();

      if ((v27 & 1) == 0)
      {
        v28 = sub_20C133F84();
        v29 = v47;
        v30 = sub_20C136184();
        v32 = sub_20B8D7150(v30, v31, v28);

        if (v32)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
          v33 = *(sub_20C138094() - 8);
          v34 = *(v33 + 72);
          v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_20C14F320;
          v37 = (v36 + v35);
          *v37 = sub_20C136184();
          v37[1] = v38;
          swift_storeEnumTagMultiPayload();
          *(v37 + v34) = 1;
          swift_storeEnumTagMultiPayload();
          v52 = v36;
          sub_20B8DBAC4(v49, sub_20BC060E4, MEMORY[0x277D53BC8]);
          v25(v29, v48);
          goto LABEL_13;
        }

        v39 = v29;
LABEL_12:
        v25(v39, v48);
        goto LABEL_13;
      }
    }

    v39 = v47;
    goto LABEL_12;
  }

  sub_20B520158(v8, &unk_27C765110);
LABEL_13:
  sub_20C134004();
  v40 = sub_20C138544();

  v41 = sub_20C138544();

  sub_20C133E34();
  v42 = sub_20C138544();

  v43 = sub_20C134004();
  v44 = sub_20C133E74();
  result = sub_20C133E34();
  *a4 = v40;
  a4[1] = v41;
  a4[2] = v42;
  a4[3] = v43;
  a4[4] = v44;
  a4[5] = result;
  return result;
}

uint64_t sub_20B8D921C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC05D3C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8D9458(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC067B0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8D9590(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_20BC05BA4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_20BEE2430(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_20BC05BA4((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_20B583EDC();
  *v1 = v4;
  return result;
}

uint64_t sub_20B8D984C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC06DC4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_20B8D999C(uint64_t a1)
{
  v78 = sub_20C132164();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772B60);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_20BC0746C(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_20BEE2718(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_20B583EDC();
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 56) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_20B52F9E8(v14, v76, &qword_27C772B60);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_20B520158(v38, &qword_27C772B60);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_20BC0746C(v40 > 1, v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_20B52F9E8(v14, v77, &qword_27C772B60);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_20B520158(v44, &qword_27C772B60);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_20B52F9E8(v14, v76, &qword_27C772B60);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_20B520158(v14, &qword_27C772B60);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 56) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_20B52F9E8(v14, v77, &qword_27C772B60);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_20B520158(v14, &qword_27C772B60);
    sub_20B583EDC();
    sub_20B520158(v38, &qword_27C772B60);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_20B8DA0E8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20BC07654(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8DA1D4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_20BC07748(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20B8DA2C0(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC07990(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ActivityType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_20B8DA3B8(uint64_t a1)
{
  v3 = sub_20C134544();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676B8);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v56 = v11;
  v57 = v6;
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v59 = v3;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_20BC07BE4(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  v24 = sub_20B8DCD50(&v60, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, v24);
    v27 = v25 + v24;
    if (v26)
    {
      __break(1u);
LABEL_26:
      v50 = (v4 + 32);
      v46 = (v4 + 16);
      v47 = v4 + 56;
      v45 = (v4 + 8);
      v32 = v56;
      v4 = v58;
      do
      {
        sub_20B520158(v32, &qword_27C7676B8);
        v34 = v16[3];
        v35 = v34 >> 1;
        if ((v34 >> 1) < v54 + 1)
        {
          v16 = sub_20BC07BE4(v34 > 1, v54 + 1, 1, v16);
          v35 = v16[3] >> 1;
        }

        sub_20B52F9E8(v14, v4, &qword_27C7676B8);
        if (v52(v4, 1, v59) != 1)
        {
          v36 = *v50;
          v33 = v54;
          if (v54 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v54;
          }

          v51 = v37;
          v55 = v16 + v18 + v17 * v54;
          v38 = v59;
          v49 = v36;
          while (1)
          {
            v39 = v4;
            v40 = v57;
            v36(v57, v39, v38);
            if (v51 == v33)
            {
              (*v45)(v40, v59);
              v33 = v51;
              v54 = v51;
              v4 = v58;
              goto LABEL_28;
            }

            v54 = v33;
            sub_20B520158(v14, &qword_27C7676B8);
            v36(v55, v40, v59);
            if (v53)
            {
              v41 = v53 - 1;
              v4 = v58;
              if (v53 - 1 >= *(v60 + 16))
              {
                __break(1u);
LABEL_46:
                v29 = v59;
                v48 = *(v6 + 7);
                v48(v14, 1, 1, v59, v12);
                v53 = 0;
LABEL_22:
                v30 = v56;
                sub_20B52F9E8(v14, v56, &qword_27C7676B8);
                v31 = *(v6 + 6);
                v6 += 48;
                v52 = v31;
                if (v31(v30, 1, v29) == 1)
                {
                  v32 = v56;
                  goto LABEL_24;
                }

                goto LABEL_26;
              }

              --v53;
              v38 = v59;
              (*v46)(v14, v60 + v18 + v41 * v17, v59);
              v42 = 0;
            }

            else
            {
              v53 = 0;
              v42 = 1;
              v4 = v58;
              v38 = v59;
            }

            (v48)(v14, v42, 1, v38);
            sub_20B52F9E8(v14, v4, &qword_27C7676B8);
            v43 = v52(v4, 1, v38);
            v55 += v17;
            v33 = v54 + 1;
            v36 = v49;
            if (v43 == 1)
            {
              goto LABEL_33;
            }
          }
        }

        v33 = v54;
LABEL_33:
        sub_20B520158(v4, &qword_27C7676B8);
        v54 = v33;
LABEL_28:
        v16[2] = v33;
        v32 = v56;
        sub_20B52F9E8(v14, v56, &qword_27C7676B8);
      }

      while (v52(v32, 1, v59) != 1);
LABEL_24:
      sub_20B520158(v14, &qword_27C7676B8);

      sub_20B520158(v32, &qword_27C7676B8);
      goto LABEL_14;
    }

    v16[2] = v27;
  }

  if (v24 != v23)
  {

LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v54 = v16[2];
  if (!v61)
  {
    goto LABEL_46;
  }

  v28 = v61 - 1;
  v29 = v59;
  if (__OFSUB__(v61, 1))
  {
    __break(1u);
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    if (v28 < *(v60 + 16))
    {
      v53 = v61 - 1;
      (*(v6 + 2))(v14, v60 + v18 + v28 * v17, v59, v12);
      v48 = *(v6 + 7);
      (v48)(v14, 0, 1, v29);
      goto LABEL_22;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_20B8DAA08(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20B8DAB24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC07C34(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_20B8DAC1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = *v5;
  v8 = *(*v5 + 2);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v4 + 3) >> 1, v12 < v9))
  {
    if (v8 <= v9)
    {
      v13 = v8 + v7;
    }

    else
    {
      v13 = v8;
    }

    v4 = sub_20BC07C34(isUniquelyReferenced_nonNull_native, v13, 1, v4);
    v12 = *(v4 + 3) >> 1;
  }

  v14 = v12 - *(v4 + 2);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v14 < v7)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v15 = *(v4 + 2);
    v16 = __OFADD__(v15, v7);
    v17 = v15 + v7;
    if (!v16)
    {
      *(v4 + 2) = v17;
LABEL_16:
      swift_unknownObjectRelease();
      if (v7 != v14)
      {
LABEL_17:
        *v5 = v4;
        return;
      }

LABEL_21:
      sub_20B8DCF2C(0, 0, 0, 0);
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_20B8DAD80(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_20C13DB34();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_20C13DB34();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_20B8DBE24(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_20B8DAE78(uint64_t a1)
{
  v78 = sub_20C133A74();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_20BC05FB0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  v24 = sub_20BEE2084(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_20B583EDC();
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_20B52F9E8(v14, v76, &unk_27C767600);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_20B520158(v38, &unk_27C767600);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_20BC05FB0(v40 > 1, v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_20B52F9E8(v14, v77, &unk_27C767600);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_20B520158(v44, &unk_27C767600);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_20B52F9E8(v14, v76, &unk_27C767600);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_20B520158(v14, &unk_27C767600);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_20B52F9E8(v14, v77, &unk_27C767600);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_20B520158(v14, &unk_27C767600);
    sub_20B583EDC();
    sub_20B520158(v38, &unk_27C767600);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_20B8DB5C0(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20B8DB710(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC05BA4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8DB884(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20B8DB9A0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC08404(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8DBAC4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_20B8DBC08(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_20BC085E0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_20B8DBD28(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_20B8DBE24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20C13DB34();
LABEL_9:
  result = sub_20C13DCD4();
  *v1 = result;
  return result;
}

uint64_t sub_20B8DBEC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C767628, &qword_27C767620);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767620);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C764F30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC064(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&unk_27C767668, &qword_27C767660);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767660);
            v9 = sub_20B72062C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TVButton();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC1F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&unk_27C7676D0, &qword_27C7676C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676C8);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C7676C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC394(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C7675F0, &qword_27C7677E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_281100500);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC534(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C7675E8, &qword_27C7675E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7675E0);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C762910);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC6D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C767648, &qword_27C767640);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767640);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C7670A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DC874(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C7675C8, &qword_27C7675C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7675C0);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C7713A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DCA14(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C767700, &qword_27C7676F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676F8);
            v9 = sub_20B7206B4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7660D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DCBB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C13DB34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C13DB34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20B8DD080(&qword_27C767680, &qword_27C767678);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767678);
            v9 = sub_20B720464(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20B51C88C(0, &qword_27C762500);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20B8DCD50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      while (v6 + v9 <= *(a4 + 16))
      {
        v10 = sub_20C134544();
        v11 = *(v10 - 8);
        v12 = *(v11 + 72);
        result = (*(v11 + 16))(v8, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + v12 * (v6 + v9 - 1), v10);
        if (a3 + v9 == 1)
        {
          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        v8 += v12;
        --v9;
        if (!(v6 + v9))
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

LABEL_9:
    v13 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_20B8DCE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanPreference();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B8DCED0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanPreference();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B8DCF2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

unint64_t sub_20B8DCF84()
{
  result = qword_27C767690;
  if (!qword_27C767690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767690);
  }

  return result;
}

unint64_t sub_20B8DCFD8()
{
  result = qword_27C767698;
  if (!qword_27C767698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767698);
  }

  return result;
}

unint64_t sub_20B8DD02C()
{
  result = qword_27C7676A0;
  if (!qword_27C7676A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7676A0);
  }

  return result;
}

uint64_t sub_20B8DD080(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_20B8DD0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B8DD178(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_20B8DD1E4(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display;
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

void sub_20B8DD284(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id MarketingPaletteBannerPresenter.__allocating_init(dependencies:placement:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_20B8DFD48(a1, a2);

  return v6;
}

id MarketingPaletteBannerPresenter.init(dependencies:placement:)(uint64_t a1, char a2)
{
  v2 = sub_20B8DFD48(a1, a2);

  return v2;
}

uint64_t sub_20B8DD394()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v16 = &v17[-v2 - 8];
  v3 = sub_20C1393B4();
  v5 = v4;
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B621B88();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v0 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  sub_20C13B084();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v17);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v7;
  sub_20B8E0204();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v17);
  sub_20C139454();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B530040(&unk_281103B10, MEMORY[0x277D543B0]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v17);

  sub_20C13B0D4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v17);

  v9 = sub_20C13CDF4();
  v10 = v16;
  (*(*(v9 - 8) + 56))(v16, 1, 1, v9);
  sub_20C13CDA4();
  v11 = v0;
  v12 = sub_20C13CD94();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_20B6383D0(0, 0, v10, &unk_20C161030, v13);
}

uint64_t sub_20B8DD850()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B8E0954;

    return sub_20B8DDFCC();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B8DD958()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B8DDA40;

    return sub_20B8DEC80();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B8DDA40()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20B8DDB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 64) = a2;
  *(v4 + 88) = *a1;
  *(v4 + 104) = *(a1 + 16);
  *(v4 + 128) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_20B8DDB8C, 0, 0);
}

uint64_t sub_20B8DDB8C()
{
  v1 = *(v0 + 88) == *(v0 + 64) && *(v0 + 96) == *(v0 + 72);
  if (!v1 && (sub_20C13DFF4() & 1) == 0)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 104);
    v4 = Strong + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus);
    v6 = *(v0 + 128);
    *v4 = v3;
    v7 = *(v4 + 8);
    *(v4 + 8) = v6;
    v8 = Strong;
    sub_20B8E083C(v3, v6);
    sub_20B8E0828(v5, v7);
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_20B8DDD08;

    return sub_20B8DEC80();
  }

  else
  {
LABEL_12:
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_20B8DDD08()
{
  v1 = *(*v0 + 112);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_20B8DDE38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B8E0954;

    return sub_20B8DEC80();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B8DDF20()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B694014;

  return sub_20B8DDFCC();
}

uint64_t sub_20B8DDFCC()
{
  v1[8] = v0;
  v2 = sub_20C13BB84();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8DE08C, 0, 0);
}

uint64_t sub_20B8DE08C()
{
  sub_20C13B424();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20B517000, v1, v2, "[UM] Refreshing summary banner placement", v3, 2u);
    MEMORY[0x20F2F6A40](v3, -1, -1);
  }

  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[8];
  v6 = v0[9];

  (*(v5 + 8))(v4, v6);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_placementProvider), *(v7 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_placementProvider + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = sub_20C1393B4();
  *(inited + 40) = v9;
  v10 = sub_20BE8C2E8(inited);
  v0[12] = v10;
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_20B8DE24C;

  return sub_20C0A07BC(v10, 0);
}

uint64_t sub_20B8DE24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B8DE378()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20B517000, v9, v10, "[UM] Text sized updated for banner presentation", v11, 2u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v12 = &v1[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    (*(v13 + 56))(ObjectType, v13);
    swift_unknownObjectRelease();
  }

  v15 = &v1[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state];
  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state];
  *v15 = 0;
  v17 = v15[8];
  v15[8] = -1;
  sub_20B8E0814(v16, v17);
  v18 = sub_20C13CDF4();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;
  v20 = v1;
  sub_20B6383D0(0, 0, v4, &unk_20C161220, v19);
}

uint64_t sub_20B8DE614()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B8DEC80();
}

uint64_t sub_20B8DE788()
{
  v1[6] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771500);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_20C135534();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B8DE8BC, 0, 0);
}

uint64_t sub_20B8DE8BC()
{
  v1 = v0[9];
  __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_contentAvailabilityClient), *(v0[6] + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_contentAvailabilityClient + 24));
  sub_20C139D44();
  v2 = swift_task_alloc();
  v0[14] = v2;
  *(v2 + 16) = "SeymourUI/MarketingPaletteBannerPresenter.swift";
  *(v2 + 24) = 47;
  *(v2 + 32) = 2;
  *(v2 + 40) = 103;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_20B52FCE0;
  v4 = v0[13];
  v5 = v0[10];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8E0850, v2, v5);
}

uint64_t sub_20B8DE9FC()
{
  v1 = v0[16];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_20B8DEA98()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B8DEB44;

  return sub_20B8DEC80();
}

uint64_t sub_20B8DEB44()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B8E0958, v1, v0);
}

uint64_t sub_20B8DEC80()
{
  v1[13] = v0;
  sub_20C13B804();
  v1[14] = swift_task_alloc();
  v2 = sub_20C13B884();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v4 = sub_20C132E94();
  v1[21] = v4;
  v1[22] = *(v4 - 8);
  v1[23] = swift_task_alloc();
  v5 = sub_20C135734();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v1[27] = v6;
  v1[28] = *(v6 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_20C13CDA4();
  v1[31] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v1[32] = v8;
  v1[33] = v7;

  return MEMORY[0x2822009F8](sub_20B8DEF28, v8, v7);
}

uint64_t sub_20B8DEF28()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[13];
  sub_20C13B424();
  sub_20C13BB64();
  v5 = *(v3 + 8);
  v0[34] = v5;
  v0[35] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = v4 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[36] = Strong;
  v0[37] = *(v6 + 8);
  if (!Strong)
  {

    goto LABEL_5;
  }

  if (sub_20C1380A4())
  {

    swift_unknownObjectRelease();
LABEL_5:

    v8 = v0[1];

    return v8();
  }

  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_20B53018C;

  return sub_20B8DE788();
}

uint64_t sub_20B8DF130()
{
  *(v0 + 362) = 0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x2822009F8](sub_20B8DF198, v1, v2);
}

uint64_t sub_20B8DF198()
{
  v50 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter__fakeUnifiedMessagingPlacements, v3);
  sub_20C13A344();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 360);
  sub_20C13B424();
  v6 = v4;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v49 = v11;
    *v10 = 136315906;
    v12 = (v9 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus);
    v47 = v5;
    if (*(v9 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus + 8) > 1u)
    {
      if (*(v9 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus + 8) == 2)
      {
        v13 = 0xE500000000000000;
        v14 = 0x7465656873;
      }

      else
      {
        if (*v12)
        {
          v14 = 0x7473696765726E75;
        }

        else
        {
          v14 = 0x6576697463616E69;
        }

        if (*v12)
        {
          v13 = 0xEC00000064657265;
        }

        else
        {
          v13 = 0xE800000000000000;
        }
      }
    }

    else if (*(v9 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus + 8))
    {
      v13 = 0xE900000000000070;
      v14 = 0x6954656C62627562;
    }

    else
    {
      v13 = 0xE600000000000000;
      v14 = 0x72656E6E6162;
    }

    v18 = *(v0 + 362);
    v19 = *(v0 + 361);
    v45 = *(v0 + 272);
    v44 = *(v0 + 232);
    v20 = *(v0 + 216);
    v21 = sub_20B51E694(v14, v13, &v49);

    *(v10 + 4) = v21;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v18;
    *(v10 + 18) = 1024;
    *(v10 + 20) = v19;
    *(v10 + 24) = 1024;
    v5 = v47;
    *(v10 + 26) = v47;
    _os_log_impl(&dword_20B517000, v7, v8, "[UM] Building summary banner assets status=%s isSubscribed=%{BOOL}d isSeymourAvailable=%{BOOL}d override:%{BOOL}d", v10, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x20F2F6A40](v11, -1, -1);
    MEMORY[0x20F2F6A40](v10, -1, -1);

    v45(v44, v20);
  }

  else
  {
    v15 = *(v0 + 272);
    v16 = *(v0 + 232);
    v17 = *(v0 + 216);

    v15(v16, v17);
  }

  v22 = *(v0 + 104);
  v23 = v22 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus;
  v24 = *(v22 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus);
  *(v0 + 328) = v24;
  if (*(v23 + 8) || *(v0 + 361) != 1 || ((v5 | *(v0 + 362) ^ 1) & 1) == 0)
  {
    v25 = *(v0 + 296);

    ObjectType = swift_getObjectType();
    (*(v25 + 56))(ObjectType, v25);
    swift_unknownObjectRelease();
    v27 = v22 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state;
    v28 = *(v22 + OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state);
    *v27 = 0;
    v29 = *(v27 + 8);
    *(v27 + 8) = -1;
    sub_20B8E0814(v28, v29);
    goto LABEL_18;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state;
  *(v0 + 336) = OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state;
  v33 = v22 + v32;
  v34 = *(v22 + v32);
  v35 = *(v22 + v32 + 8);
  if (v35 <= 1)
  {
    if (v35 || v34 != v24)
    {
      goto LABEL_29;
    }

    swift_unknownObjectRelease();
LABEL_18:

    v30 = *(v0 + 8);

    return v30();
  }

  if (v35 != 3)
  {
LABEL_29:
    v36 = v24;
    goto LABEL_30;
  }

  sub_20B8E083C(v24, 0);
  sub_20B8E0814((v34 != 0), 3u);
LABEL_30:
  v48 = *(v0 + 296);
  v37 = *v23;
  v38 = *v33;
  v39 = *(v23 + 8);
  *v33 = *v23;
  v40 = *(v33 + 8);
  *(v33 + 8) = v39;
  sub_20B8E083C(v37, v39);
  sub_20B8E0814(v38, v40);
  v41 = swift_getObjectType();
  v46 = (*(v48 + 48) + **(v48 + 48));
  v42 = swift_task_alloc();
  *(v0 + 344) = v42;
  *v42 = v0;
  v42[1] = sub_20B8DF6F0;
  v43 = *(v0 + 296);

  return v46(v24, v41, v43);
}

uint64_t sub_20B8DF6F0()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_20B8DF904;
  }

  else
  {
    v5 = sub_20B8DF82C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B8DF82C()
{
  sub_20B8E0828(*(v0 + 328), 0);

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B8DF904()
{
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[16];
  v4 = v0[17];
  v14 = v0[15];
  v6 = v0[13];

  v7 = v6 + v2;
  v8 = *(v6 + v2);
  *v7 = 0;
  v9 = *(v6 + v2 + 8);
  *(v7 + 8) = -1;
  sub_20B8E0814(v8, v9);
  sub_20C13B844();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750);
  sub_20C13B834();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  sub_20C13B7F4();
  sub_20C13B7E4();
  swift_getErrorValue();
  v10 = MEMORY[0x20F2F5850](v0[10], v0[11]);
  v0[5] = MEMORY[0x277D837D0];
  v0[2] = v10;
  v0[3] = v11;
  sub_20C13B7D4();
  sub_20B8006F4((v0 + 2));
  sub_20C13B7E4();
  sub_20C13B814();
  sub_20C13B864();
  sub_20B8E0828(v3, 0);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v14);

  v12 = v0[1];

  return v12();
}

id MarketingPaletteBannerPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MarketingPaletteBannerPresenter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPaletteBannerPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B8DFD48(uint64_t a1, char a2)
{
  v4 = sub_20C13A814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_currentPlacementStatus];
  *v8 = 0;
  v8[8] = 3;
  *&v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_display + 8] = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 104))(v7, *MEMORY[0x277D4EFF0], v4);
  LOBYTE(v13[0]) = 0;
  sub_20C13A384();
  v9 = &v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_state];
  *v9 = 0;
  v9[8] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768860);
  sub_20C133AA4();
  sub_20B51C710(v13, &v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_contentAvailabilityClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_eventHub] = v13[0];
  v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_placement] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00);
  sub_20C133AA4();
  sub_20B51C710(v13, &v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_placementProvider]);
  sub_20C133AA4();
  v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_platform] = v13[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v13, &v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC9SeymourUI31MarketingPaletteBannerPresenter_subscriptionToken] = sub_20C13A914();
  v10 = type metadata accessor for MarketingPaletteBannerPresenter();
  v12.receiver = v2;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_20B8E0024(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B8DD830(a1, v1);
}

uint64_t sub_20B8E00BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B8DD938(a1, v1);
}

uint64_t sub_20B8E0154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B8DDB50(a1, v4, v5, v6);
}

unint64_t sub_20B8E0204()
{
  result = qword_281100810;
  if (!qword_281100810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281100810);
  }

  return result;
}

uint64_t sub_20B8E0258()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B8DDE18(v0);
}

uint64_t sub_20B8E02E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B8DDE18(v0);
}

uint64_t sub_20B8E0378()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B8DDF20();
}

uint64_t sub_20B8E042C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20B8DEA98();
}

uint64_t type metadata accessor for MarketingPaletteBannerPresenter()
{
  result = qword_281100900;
  if (!qword_281100900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8E0534()
{
  sub_20B52432C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI22MarketingContentStatusO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI31MarketingPaletteBannerPresenterC0E5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B8E074C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B8E0794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_20B8E07DC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
  }

  else if (a2)
  {
    *(result + 8) = -a2;
  }

  return result;
}

void sub_20B8E0814(id a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    sub_20B8E0828(a1, a2);
  }
}

void sub_20B8E0828(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

id sub_20B8E083C(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20B8E08A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B8DE614();
}

unint64_t sub_20B8E0970()
{
  result = qword_27C767758;
  if (!qword_27C767758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767758);
  }

  return result;
}

uint64_t sub_20B8E09C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20B8E0A0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_20B8E0A5C(void *a1, void *a2, void *a3)
{
  v4 = [a1 userInterfaceStyle];
  if (v4)
  {
    v5 = v4 == 1;
    v6 = a3;
    if (v5)
    {
      v6 = a2;
    }
  }

  else
  {
    v6 = a3;
  }

  return v6;
}

uint64_t sub_20B8E0B2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  v3 = v2;
  v4 = &OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton;
  *(v2 + 16) = xmmword_20C151490;
  if (!v1)
  {
    v4 = &OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton;
  }

  v5 = *(v0 + *v4);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView);
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = v5;
  v8 = v6;
  return v3;
}

void sub_20B8E0BC8()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent_];

  qword_27C767760 = v1;
}

void sub_20B8E0C34()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() smm:v0 systemImageNamed:?];

  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76988];
  v4 = [v2 preferredFontForTextStyle_];

  v5 = [objc_opt_self() configurationWithFont_];
  v6 = [v1 imageWithConfiguration_];

  qword_27C767768 = v6;
}

void sub_20B8E0D48()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() smm:v0 systemImageNamed:?];

  v2 = objc_opt_self();
  v3 = *MEMORY[0x277D76988];
  v4 = [v2 preferredFontForTextStyle_];

  v5 = [objc_opt_self() configurationWithFont_];
  v6 = [v1 imageWithConfiguration_];

  qword_27C767770 = v6;
}

char *sub_20B8E0E54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state] = 2;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v5[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation] = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView;
  v14 = [objc_allocWithZone(type metadata accessor for TVQueueListLockupView()) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v13] = v14;
  if (qword_27C760808 != -1)
  {
    swift_once();
  }

  v15 = qword_27C767770;
  v16 = type metadata accessor for TVButtonImageContentView();
  v17 = objc_allocWithZone(v16);
  v18 = v15;
  v19 = sub_20B8C9328(v15);
  v20 = type metadata accessor for TVButton();
  v21 = sub_20BB87F4C(v19, 0, 1, objc_allocWithZone(v20), 0.0, 0.0, 0.0, 0.0);
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v22;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton;
  [v23 setEffect_];

  if (qword_27C7607F8 != -1)
  {
    swift_once();
  }

  v26 = qword_27C767760;
  [*&v21[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:qword_27C767760 forState:0];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v27 = qword_27C79ACA0;
  *&v21[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = qword_27C79ACA0;
  sub_20B9DE3E4();
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v25] = v21;
  if (qword_27C760800 != -1)
  {
    swift_once();
  }

  v28 = qword_27C767768;
  v29 = objc_allocWithZone(v16);
  v30 = v28;
  v31 = sub_20B8C9328(v28);
  v32 = sub_20BB87F4C(v31, 0, 1, objc_allocWithZone(v20), 0.0, 0.0, 0.0, 0.0);
  v33 = *&v32[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = v33;
  }

  v36 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton;
  [v34 setEffect_];

  [*&v32[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v26 forState:0];
  *&v32[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v27;
  sub_20B9DE3E4();
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v36] = v32;
  v37 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide;
  *&v5[v37] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  [*(*&v5[v13] + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView) setHidden_];
  [*(*&v5[v13] + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView) setBackgroundColor:v26 forState:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C150040;
  v39 = *&v5[v13];
  v40 = *&v5[v25];
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  v41 = *&v5[v36];
  *(v38 + 48) = v41;
  v42 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = sub_20C13CC54();

  v47 = [v42 initWithArrangedSubviews_];

  [v47 setAxis_];
  [v47 setSpacing_];
  [v47 setAlignment_];
  [v47 setDistribution_];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_horizontalStackView] = v47;
  v120.receiver = v5;
  v120.super_class = type metadata accessor for TVQueueListCell();
  v48 = objc_msgSendSuper2(&v120, sel_initWithFrame_, a1, a2, a3, a4);
  v49 = *&v48[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton];
  v50 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton;
  v116 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton;
  v51 = v48;
  v117 = v48;
  v52 = v48;
  [v49 addTarget:v52 action:sel_handleGrab forControlEvents:0x2000];
  v53 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton;
  v115 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton;
  [*&v52[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton] addTarget:v52 action:sel_handleDelete forControlEvents:0x2000];
  v119 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView;
  *(*&v52[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView] + OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_delegate + 8) = &off_2822B3C48;
  swift_unknownObjectWeakAssign();
  v54 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide;
  v118 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide;
  [v52 addLayoutGuide_];
  v55 = *&v52[v54];
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C151490;
  v57 = *&v52[v53];
  *(v56 + 32) = v57;
  v58 = *&v51[v50];
  *(v56 + 40) = v58;
  v59 = v55;
  v60 = v57;
  v61 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v62 = sub_20C13CC54();

  [v59 setPreferredFocusEnvironments_];

  v63 = [v52 contentView];
  v64 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_horizontalStackView;
  [v63 addSubview_];

  v65 = *&v52[v64];
  v66 = [v52 contentView];

  v68 = *MEMORY[0x277D768C8];
  v67 = *(MEMORY[0x277D768C8] + 8);
  v69 = *(MEMORY[0x277D768C8] + 16);
  v70 = *(MEMORY[0x277D768C8] + 24);
  v71 = [v65 leadingAnchor];
  v72 = [v66 leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:v67];

  LODWORD(v74) = 1148846080;
  [v73 setPriority_];
  v75 = v73;
  v76 = [v65 trailingAnchor];
  v77 = [v66 trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:-v70];

  LODWORD(v79) = 1148846080;
  [v78 setPriority_];
  v80 = v78;
  v81 = [v65 topAnchor];
  v82 = [v66 &selRef_setLineBreakMode_];
  v83 = [v81 constraintEqualToAnchor:v82 constant:v68];

  LODWORD(v84) = 1148846080;
  [v83 setPriority_];
  v85 = [v65 bottomAnchor];
  v86 = [v66 &selRef_secondaryLabel + 5];
  v87 = [v85 constraintEqualToAnchor:v86 constant:-v69];

  LODWORD(v88) = 1148846080;
  [v87 setPriority_];
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_20C14FE90;
  *(v89 + 32) = v75;
  *(v89 + 40) = v80;
  *(v89 + 48) = v83;
  *(v89 + 56) = v87;
  v90 = v83;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v92 = [*&v52[v115] widthAnchor];
  v93 = [*&v52[v115] heightAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(inited + 32) = v94;
  v95 = [*&v117[v116] widthAnchor];
  v96 = [*&v117[v116] heightAnchor];
  v97 = [v95 constraintEqualToAnchor_];

  *(inited + 40) = v97;
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_20C14FE90;
  v99 = [*&v52[v118] leadingAnchor];
  v100 = [*&v52[v119] leadingAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v98 + 32) = v101;
  v102 = [*&v52[v118] trailingAnchor];
  v103 = [*&v52[v119] trailingAnchor];
  v104 = [v102 constraintEqualToAnchor_];

  *(v98 + 40) = v104;
  v105 = [*&v52[v118] topAnchor];
  v106 = [*&v52[v119] topAnchor];
  v107 = [v105 constraintEqualToAnchor_];

  *(v98 + 48) = v107;
  v108 = [*&v52[v118] bottomAnchor];
  v109 = [*&v52[v119] bottomAnchor];
  v110 = [v108 constraintEqualToAnchor_];

  *(v98 + 56) = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  v111 = swift_initStackObject();
  *(v111 + 16) = xmmword_20C14F980;
  sub_20B8D9310(inited);
  sub_20B8D9310(v98);
  *(v111 + 32) = v89;
  v112 = objc_opt_self();
  sub_20BE54D20(v111);
  swift_setDeallocating();
  sub_20B520158(v111 + 32, &qword_27C7677E0);
  sub_20B51C88C(0, &qword_281100500);
  v113 = sub_20C13CC54();

  [v112 activateConstraints_];

  return v52;
}

id sub_20B8E1B84(char a1)
{
  sub_20BD6E980(a1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton];
  if (a1 == 2 || a1 == 3)
  {
    [v3 setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide] setEnabled_];
    v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation] = 1;
  }

  else
  {
    [v3 setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide] setEnabled_];
    v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation] = a1 & 1;
  }

  v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state] = a1;

  return [v1 setNeedsFocusUpdate];
}

void sub_20B8E1CAC()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state) & 0xFE) != 2)
  {
    v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
    if (v8)
    {
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 3;
      v7[24] = 96;
      v9 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v9);
      *(&v13 - 4) = 0;
      *(&v13 - 24) = 1;
      *(&v13 - 2) = v7;
      *(&v13 - 1) = v8;
      v10 = *(v8 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      swift_unknownObjectRetain();
      v11 = [v10 indexPathForCell_];
      if (v11)
      {
        v12 = v11;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E2A84);
        (*(v2 + 8))(v4, v1);
      }

      swift_unknownObjectRelease();
      sub_20B5E2760(v7);
    }
  }
}

void sub_20B8E1F0C()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
  if (v8)
  {
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = 2;
    v7[24] = 96;
    v9 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v9);
    *(&v13 - 4) = 0;
    *(&v13 - 24) = 1;
    *(&v13 - 2) = v7;
    *(&v13 - 1) = v8;
    v10 = *(v8 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    swift_unknownObjectRetain();
    v11 = [v10 indexPathForCell_];
    if (v11)
    {
      v12 = v11;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    sub_20B5E2760(v7);
  }
}

id sub_20B8E2154()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for TVQueueListCell();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView];
  [v6 prepareForReuse];
  v7 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v4, &v1[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed;
  v6[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed] = 0;
  [v6 setUserInteractionEnabled_];
  sub_20BD6EE20();
  [*&v6[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView] setHidden_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton] setHidden_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton] setHidden_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide] setEnabled_];
  v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation] = 1;
  v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state] = 2;
  return [v1 setNeedsFocusUpdate];
}

id sub_20B8E2384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVQueueListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVQueueListCell()
{
  result = qword_27C7677C0;
  if (!qword_27C7677C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8E24BC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B8E2580()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state);
  if (v14 == 3)
  {
    v20 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
    if (!v20)
    {
      return;
    }

    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    *v10 = 4;
    v10[24] = 96;
    v21 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v21);
    *(&v25 - 4) = 0;
    *(&v25 - 24) = 1;
    *(&v25 - 2) = v10;
    *(&v25 - 1) = v20;
    v22 = *(v20 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    swift_unknownObjectRetain();
    v23 = [v22 indexPathForCell_];
    if (!v23)
    {
      v13 = v10;
      goto LABEL_11;
    }

    v24 = v23;
    sub_20C1331E4();

    sub_20C0C1CDC(v4, sub_20B5E275C);
    v7 = v4;
    v13 = v10;
    goto LABEL_9;
  }

  if (v14 == 2)
  {
    v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
    if (v15)
    {
      v16 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v16);
      *(&v25 - 4) = 0;
      *(&v25 - 24) = 1;
      *(&v25 - 2) = v13;
      *(&v25 - 1) = v15;
      v17 = *(v15 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      swift_unknownObjectRetain();
      v18 = [v17 indexPathForCell_];
      if (!v18)
      {
LABEL_11:
        swift_unknownObjectRelease();
        sub_20B5E2760(v13);
        return;
      }

      v19 = v18;
      sub_20C1331E4();

      sub_20C0C1CDC(v7, sub_20B5E2A84);
LABEL_9:
      (*(v2 + 8))(v7, v1);
      goto LABEL_11;
    }
  }
}

uint64_t sub_20B8E28AC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_20B8E28C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8E2920(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B8E2994(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v9 > 31)
  {
    if (v9 != 32)
    {
      if (v9 != 33)
      {
        goto LABEL_4;
      }

LABEL_9:
      v21 = *&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView];
      v22 = OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed;
      v21[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabbed] = 0;
      [v21 setUserInteractionEnabled_];
      v23 = v1;
      sub_20BD6EE20();
      [*&v21[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_grabImageView] setHidden_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton] setHidden_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton] setHidden_];
      [*&v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide] setEnabled_];
      v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation] = 1;
      v1[OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state] = 2;
      [v1 setNeedsFocusUpdate];
      v24 = *&v21[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_titleLabel];
      [v24 setText_];
      v25 = *&v21[OBJC_IVAR____TtC9SeymourUI21TVQueueListLockupView_subtitleLabel];
      [v25 setText_];
      v26 = sub_20C13C914();
      [v24 setText_];

      v27 = sub_20C13C914();
      [v25 setText_];

      v28 = v23;
LABEL_17:

      [v28 setNeedsLayout];
      return;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v30 = swift_projectBox();
    v31 = v30 + *(v33 + 64);
    v32 = (v33 + 80);
  }

  else
  {
    if (v9 != 30)
    {
      if (v9 != 31)
      {
LABEL_4:
        v43 = v5;
        sub_20C13B534();

        v10 = v1;
        v11 = sub_20C13BB74();
        v12 = sub_20C13D1D4();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v44 = a1;
          v45 = v15;
          *v13 = 138543618;
          *(v13 + 4) = v10;
          *v14 = v10;
          *(v13 + 12) = 2082;
          v16 = sub_20B5F66D0();
          v17 = v10;
          v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
          v20 = sub_20B51E694(v18, v19, &v45);

          *(v13 + 14) = v20;
          _os_log_impl(&dword_20B517000, v11, v12, "Attempted to configure %{public}@ with item: %{public}s", v13, 0x16u);
          sub_20B520158(v14, &unk_27C762E30);
          MEMORY[0x20F2F6A40](v14, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x20F2F6A40](v15, -1, -1);
          MEMORY[0x20F2F6A40](v13, -1, -1);
        }

        (*(v4 + 8))(v8, v43);
        return;
      }

      goto LABEL_9;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7677D0);
    v30 = swift_projectBox();
    v31 = v30 + *(v29 + 80);
    v32 = (v29 + 96);
  }

  v34 = *(v31 + 16);
  v35 = *(v31 + 8);
  v36 = v30 + *v32;
  v37 = *(v36 + 8);
  v38 = *(v36 + 40);
  v43 = *v31;
  v39 = v35;
  v40 = v34;

  if (v37 != 1)
  {
    sub_20B8E1B84(SHIBYTE(v38));
    sub_20BD6E7C8(v43, v39);

    v28 = v1;
    goto LABEL_17;
  }

  v41 = v43;
}

void sub_20B8E2EE0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_state) = 2;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_delegate);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_itemInfo;
  v4 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_preferredOperation) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_lockupView;
  v6 = [objc_allocWithZone(type metadata accessor for TVQueueListLockupView()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v5) = v6;
  if (qword_27C760808 != -1)
  {
    swift_once();
  }

  v7 = qword_27C767770;
  v8 = type metadata accessor for TVButtonImageContentView();
  v9 = objc_allocWithZone(v8);
  v10 = v7;
  v11 = sub_20B8C9328(v7);
  v12 = type metadata accessor for TVButton();
  v13 = sub_20BB87F4C(v11, 0, 1, objc_allocWithZone(v12), 0.0, 0.0, 0.0, 0.0);
  v14 = *&v13[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v14;
  }

  v17 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_deleteButton;
  [v15 setEffect_];

  if (qword_27C7607F8 != -1)
  {
    swift_once();
  }

  v18 = qword_27C767760;
  [*&v13[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:qword_27C767760 forState:0];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v19 = qword_27C79ACA0;
  *&v13[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = qword_27C79ACA0;
  sub_20B9DE3E4();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v17) = v13;
  if (qword_27C760800 != -1)
  {
    swift_once();
  }

  v20 = qword_27C767768;
  v21 = objc_allocWithZone(v8);
  v22 = v20;
  v23 = sub_20B8C9328(v20);
  v24 = sub_20BB87F4C(v23, 0, 1, objc_allocWithZone(v12), 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v25;
  }

  v28 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_grabButton;
  [v26 setEffect_];

  [*&v24[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v18 forState:0];
  *&v24[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v19;
  sub_20B9DE3E4();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v28) = v24;
  v29 = OBJC_IVAR____TtC9SeymourUI15TVQueueListCell_focusGuide;
  *(v1 + v29) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  sub_20C13DE24();
  __break(1u);
}

void *sub_20B8E32D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0;
  v2[3] = a1;
  v2[4] = a2;
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 currentDevice];
  [v5 beginGeneratingDeviceOrientationNotifications];

  v6 = [objc_opt_self() defaultCenter];
  [v6 addObserver:v3 selector:sel_deviceDidRotateWithNotification_ name:*MEMORY[0x277D76878] object:0];

  v7 = [v4 currentDevice];
  v8 = [v7 orientation];

  if ((v8 - 1) <= 3 && v8 != v3[2])
  {
    swift_getObjectType();
    sub_20B8E36A4();
    sub_20C13A764();
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_20B8E3434()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 endGeneratingDeviceOrientationNotifications];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_20B8E34A8()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  if ((v2 - 1) <= 3 && v2 != *(v0 + 16))
  {
    swift_getObjectType();
    sub_20B8E36A4();
    sub_20C13A764();
  }
}

unint64_t sub_20B8E36A4()
{
  result = qword_27C7677E8;
  if (!qword_27C7677E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7677E8);
  }

  return result;
}

uint64_t sub_20B8E36F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EngagementRedirectURLInterceptor.__allocating_init(dependencies:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_20B8E82A8(a1);

  return v2;
}

uint64_t EngagementRedirectURLInterceptor.init(dependencies:)(uint64_t a1)
{
  v1 = sub_20B8E82A8(a1);

  return v1;
}

uint64_t sub_20B8E37E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a1;
  v149 = a2;
  v153 = type metadata accessor for NavigationRequest();
  v148 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v150 = v2;
  v151 = &v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7645C8);
  v137 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v135 = v3;
  v136 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v145 = &v113 - v5;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v128 = *(v129 - 1);
  MEMORY[0x28223BE20](v129);
  v125 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v6;
  MEMORY[0x28223BE20](v7);
  v127 = &v113 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644B0);
  v132 = *(v133 - 8);
  v9 = *(v132 + 64);
  MEMORY[0x28223BE20](v133);
  v131 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v142 = (&v113 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v13 = *(v12 - 8);
  v146 = v12;
  v147 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v124 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = &v113 - v16;
  MEMORY[0x28223BE20](v17);
  v143 = &v113 - v18;
  MEMORY[0x28223BE20](v19);
  v144 = &v113 - v20;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v138 = *(v140 - 8);
  v21 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v134 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v113 - v26;
  v28 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v28);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for NavigationSharingURLInfo();
  v126 = *(v31 - 8);
  v32 = *(v126 + 8);
  MEMORY[0x28223BE20](v31 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  sub_20B8E8910(v152 + *(v153 + 24), v30, type metadata accessor for NavigationSource);
  if (swift_getEnumCaseMultiPayload())
  {
    v36 = type metadata accessor for NavigationSource;
    v37 = v30;
LABEL_3:
    sub_20B8E88B0(v37, v36);
    v38 = v151;
    sub_20B8E8910(v152, v151, type metadata accessor for NavigationRequest);
    v39 = (*(v148 + 80) + 16) & ~*(v148 + 80);
    v40 = swift_allocObject();
    sub_20B8E8978(v38, v40 + v39, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }

  v115 = v14;
  v119 = v32;
  v120 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v9;
  v117 = v21;
  v42 = v141;
  v121 = v24;
  v118 = v27;
  v43 = v146;
  sub_20B8E8978(v30, v35, type metadata accessor for NavigationSharingURLInfo);
  v122 = v35;
  v44 = *(sub_20BDC8FD4() + 16);

  if (!v44)
  {
    v36 = type metadata accessor for NavigationSharingURLInfo;
    v37 = v122;
    goto LABEL_3;
  }

  v45 = v42;
  __swift_project_boxed_opaque_existential_1(v42 + 11, *(v42 + 14));
  v46 = v127;
  sub_20C1392E4();
  v47 = v128;
  v48 = v125;
  v49 = v129;
  (*(v128 + 16))(v125, v46, v129);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v123 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v48, v49);
  v53 = (v52 + v51);
  *v53 = sub_20B8E4ED0;
  v53[1] = 0;
  v54 = v130;
  sub_20C137C94();
  (*(v47 + 8))(v46, v49);
  v55 = v147;
  v56 = *(v147 + 16);
  v125 = (v147 + 16);
  v129 = v56;
  v57 = v124;
  (v56)(v124, v54, v43);
  v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v127 = *(v55 + 80);
  v59 = (v115 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v123 = v59;
  v60 = swift_allocObject();
  v61 = *(v55 + 32);
  v128 = v55 + 32;
  v114 = v58;
  v61(v60 + v58, v57, v43);
  v115 = v61;
  v62 = (v60 + v59);
  *v62 = sub_20B8E5098;
  v62[1] = 0;
  v63 = v143;
  sub_20C137C94();
  v124 = *(v55 + 8);
  (v124)(v54, v43);
  v147 = v55 + 8;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_20B8E84A4;
  *(v64 + 24) = v45;
  (v129)(v54, v63, v43);
  v65 = v123;
  v66 = swift_allocObject();
  v61(v66 + v58, v54, v43);
  v67 = (v66 + v65);
  *v67 = sub_20B7F133C;
  v67[1] = v64;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);
  v68 = v142;
  sub_20C137C94();
  (v124)(v63, v43);
  v113 = type metadata accessor for NavigationSharingURLInfo;
  v69 = v122;
  v70 = v120;
  sub_20B8E8910(v122, v120, type metadata accessor for NavigationSharingURLInfo);
  v71 = *(v126 + 80);
  v130 = (v71 | 7);
  v72 = swift_allocObject();
  *(v72 + 16) = v45;
  v126 = type metadata accessor for NavigationSharingURLInfo;
  sub_20B8E8978(v70, v72 + ((v71 + 24) & ~v71), type metadata accessor for NavigationSharingURLInfo);
  v73 = v132;
  v74 = v131;
  v75 = v133;
  (*(v132 + 16))(v131, v68, v133);
  v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v77 = (v116 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (*(v73 + 32))(v78 + v76, v74, v75);
  v79 = (v78 + v77);
  *v79 = sub_20B8E84D4;
  v79[1] = v72;

  sub_20C137C94();
  (*(v73 + 8))(v142, v75);
  __swift_project_boxed_opaque_existential_1(v45 + 4, *(v45 + 7));
  sub_20C1396A4();
  v80 = v120;
  sub_20B8E8910(v69, v120, v113);
  v142 = type metadata accessor for NavigationRequest;
  v81 = v151;
  sub_20B8E8910(v152, v151, type metadata accessor for NavigationRequest);
  v82 = (v71 + 16) & ~v71;
  v148 = *(v148 + 80);
  v83 = (v82 + v119 + v148) & ~v148;
  v84 = swift_allocObject();
  sub_20B8E8978(v80, v84 + v82, v126);
  v141 = type metadata accessor for NavigationRequest;
  sub_20B8E8978(v81, v84 + v83, type metadata accessor for NavigationRequest);
  v85 = v136;
  v86 = v137;
  v87 = v145;
  v88 = v139;
  (*(v137 + 16))(v136, v145, v139);
  v89 = (*(v86 + 80) + 16) & ~*(v86 + 80);
  v90 = (v135 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v91 = swift_allocObject();
  (*(v86 + 32))(v91 + v89, v85, v88);
  v92 = (v91 + v90);
  *v92 = sub_20B8E8580;
  v92[1] = v84;
  v93 = v121;
  sub_20C137C94();
  (*(v86 + 8))(v87, v88);
  v94 = v138;
  v145 = *(v138 + 16);
  v95 = v134;
  v96 = v140;
  (v145)(v134, v93, v140);
  v139 = *(v94 + 80);
  v135 = ((v139 + 16) & ~v139) + v117;
  v97 = (v139 + 16) & ~v139;
  v137 = v97;
  v98 = swift_allocObject();
  v136 = *(v94 + 32);
  (v136)(v98 + v97, v95, v96);
  v99 = v143;
  v100 = v144;
  v101 = v146;
  (v129)(v143, v144, v146);
  v102 = v123;
  v103 = swift_allocObject();
  v115(v103 + v114, v99, v101);
  v104 = (v103 + v102);
  *v104 = sub_20B8E868C;
  v104[1] = v98;
  v105 = v118;
  sub_20C137C94();
  v143 = *(v94 + 8);
  v106 = v121;
  (v143)(v121, v96);
  (v124)(v100, v101);
  v107 = v151;
  sub_20B8E8910(v152, v151, v142);
  v108 = (v148 + 16) & ~v148;
  v109 = swift_allocObject();
  sub_20B8E8978(v107, v109 + v108, v141);
  (v145)(v106, v105, v96);
  v110 = (v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  (v136)(v111 + v137, v106, v96);
  v112 = (v111 + v110);
  *v112 = sub_20B8E8740;
  v112[1] = v109;
  sub_20C137C94();
  (v143)(v105, v96);
  return sub_20B8E88B0(v122, type metadata accessor for NavigationSharingURLInfo);
}

uint64_t sub_20B8E4870()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);

  return sub_20C137C94();
}

uint64_t sub_20B8E48DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_20BDC8FD4();
  LOBYTE(v1) = sub_20B8E51DC(v1, v2);

  if (v1)
  {
    v3 = sub_20C134894();
    sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70]);
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D50B68], v3);
    *(swift_allocObject() + 16) = v4;

    return sub_20C137CA4();
  }

  else
  {

    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }
}

uint64_t sub_20B8E4A3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_20B8E8910(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_20B8E8978(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NavigationRequest);
  return sub_20C137CA4();
}

uint64_t sub_20B8E4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for NavigationRequest();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for NavigationWithURLInfoCompleted();
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationSource();
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationSharingURLInfo();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8E8910(a1 + *(v4 + 24), v11, type metadata accessor for NavigationSource);
  if (swift_getEnumCaseMultiPayload())
  {
    v15 = type metadata accessor for NavigationSource;
    v16 = v11;
  }

  else
  {
    sub_20B8E8978(v11, v14, type metadata accessor for NavigationSharingURLInfo);
    v20[1] = *(v2 + 80);
    swift_getObjectType();
    sub_20B8E8910(v14, v8, type metadata accessor for NavigationSharingURLInfo);
    sub_20B8E91C8(qword_2811009E0, 255, type metadata accessor for NavigationWithURLInfoCompleted);
    sub_20C13A764();
    sub_20B8E88B0(v8, type metadata accessor for NavigationWithURLInfoCompleted);
    v15 = type metadata accessor for NavigationSharingURLInfo;
    v16 = v14;
  }

  sub_20B8E88B0(v16, v15);
  sub_20B8E8910(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_20B8E8978(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NavigationRequest);
  return sub_20C137CA4();
}

uint64_t sub_20B8E4ED0()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v4 = sub_20C135704();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  v5 = sub_20C134894();
  sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70]);
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D50B50], v5);
  *(swift_allocObject() + 16) = v6;
  return sub_20C137CA4();
}

uint64_t sub_20B8E5098()
{
  sub_20B75B4F8();
  if (sub_20C135D14())
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  v1 = sub_20C134894();
  sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70]);
  v2 = swift_allocError();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D50B60], v1);
  *(swift_allocObject() + 16) = v2;
  return sub_20C137CA4();
}

uint64_t sub_20B8E51DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_20C13E164();

      sub_20C13CA64();
      v19 = sub_20C13E1B4();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_20B8E53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 16);

  sub_20C13B5F4();
  v8 = sub_20C13C914();

  v9 = [v7 arrayForKey_];

  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B7E9034;
  *(v10 + 24) = v6;
  v12[4] = sub_20B8E91B4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20B8E5B70;
  v12[3] = &block_descriptor_43;
  v11 = _Block_copy(v12);

  [v9 valueWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_20B8E5514(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20C13C4B4();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C4F4();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_20B8E91BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_78_2;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a3;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B8E91C8(&qword_281103AB0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

void sub_20B8E57F0(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_5;
  }

  v31 = 0;
  sub_20C13CC64();
  if (!v31)
  {
    goto LABEL_5;
  }

  if (a2)
  {

LABEL_5:
    sub_20C13B424();
    v12 = a2;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v27[1] = a4;
      v28 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136446210;
      if (a2)
      {
        swift_getErrorValue();
        v17 = MEMORY[0x20F2F5850](v29, v30);
        a2 = v18;
      }

      else
      {
        v17 = 0;
      }

      v31 = v17;
      v32 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
      v19 = sub_20C13D8F4();
      v21 = v20;

      v22 = sub_20B51E694(v19, v21, &v33);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_20B517000, v13, v14, "EngagementRedirectURLInterceptor failed to fetch parameters %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);

      (*(v9 + 8))(v11, v8);
      a3 = v28;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v23 = sub_20C134894();
    sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70]);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50B68], v23);
    a3(v24, 1);

    return;
  }

  v26 = sub_20B527580(v31);

  a3(v26, 0);
}

void sub_20B8E5B70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_20B8E5C04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v275 = a3;
  v265 = a4;
  v266 = a2;
  v280 = a1;
  v256 = type metadata accessor for NavigationIntent();
  v270 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v255 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800);
  MEMORY[0x28223BE20](v5 - 8);
  v229 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v241 = &v225 - v8;
  MEMORY[0x28223BE20](v9);
  v254 = &v225 - v10;
  MEMORY[0x28223BE20](v11);
  v269 = &v225 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40);
  MEMORY[0x28223BE20](v13 - 8);
  v252 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v251 = &v225 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810);
  MEMORY[0x28223BE20](v17 - 8);
  v250 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v249 = &v225 - v20;
  v272 = type metadata accessor for NavigationRequest();
  v257 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v232 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v231 = &v225 - v23;
  MEMORY[0x28223BE20](v24);
  v237 = &v225 - v25;
  MEMORY[0x28223BE20](v26);
  v258 = &v225 - v27;
  v259 = v28;
  MEMORY[0x28223BE20](v29);
  v253 = &v225 - v30;
  v264 = sub_20C13BB84();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v233 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v239 = &v225 - v33;
  MEMORY[0x28223BE20](v34);
  v262 = &v225 - v35;
  v276 = type metadata accessor for NavigationResource();
  v248 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v228 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v225 = &v225 - v38;
  MEMORY[0x28223BE20](v39);
  v243 = &v225 - v40;
  MEMORY[0x28223BE20](v41);
  v268 = &v225 - v42;
  MEMORY[0x28223BE20](v43);
  v271 = &v225 - v44;
  v45 = sub_20C1388F4();
  v273 = *(v45 - 8);
  v274 = v45;
  MEMORY[0x28223BE20](v45);
  v267 = &v225 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C132C14();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v230 = &v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v235 = &v225 - v51;
  MEMORY[0x28223BE20](v52);
  v234 = &v225 - v53;
  MEMORY[0x28223BE20](v54);
  v240 = &v225 - v55;
  MEMORY[0x28223BE20](v56);
  v242 = &v225 - v57;
  MEMORY[0x28223BE20](v58);
  v246 = &v225 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = &v225 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v63 - 8);
  v260 = &v225 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v261 = &v225 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v225 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v225 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v225 - v74;
  v282 = type metadata accessor for NavigationSource();
  v277 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v226 = &v225 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v227 = &v225 - v78;
  MEMORY[0x28223BE20](v79);
  v238 = &v225 - v80;
  MEMORY[0x28223BE20](v81);
  v236 = &v225 - v82;
  MEMORY[0x28223BE20](v83);
  v247 = &v225 - v84;
  v86 = MEMORY[0x28223BE20](v85);
  v283 = &v225 - v87;
  v88 = *(v48 + 16);
  v88(v75, v280, v47, v86);
  v89 = *(v48 + 56);
  v89(v75, 0, 1, v47);
  v245 = v48 + 56;
  v244 = v89;
  v89(v72, 1, 1, v47);
  sub_20B5DF134(v75, v69, &unk_27C7617F0);
  v90 = *(v48 + 48);
  v91 = v90(v69, 1, v47);
  v281 = v48;
  v278 = v88;
  v279 = v48 + 16;
  if (v91 == 1)
  {
    v92 = v266;
    (v88)(v62, v266, v47);
    if (v90(v69, 1, v47) != 1)
    {
      sub_20B520158(v69, &unk_27C7617F0);
    }
  }

  else
  {
    (*(v48 + 32))(v62, v69, v47);
    v92 = v266;
  }

  v93 = v72;
  v94 = v260;
  sub_20B5DF134(v93, v260, &unk_27C7617F0);
  v95 = v90(v94, 1, v47);
  v96 = v275;
  v97 = v261;
  if (v95 == 1)
  {
    v98 = type metadata accessor for NavigationSharingURLInfo();
    sub_20B52F9E8(v92 + *(v98 + 20), v97, &unk_27C7617F0);
    v99 = v90(v94, 1, v47);
    v100 = v281;
    v101 = v47;
    if (v99 != 1)
    {
      sub_20B520158(v94, &unk_27C7617F0);
    }
  }

  else
  {
    v100 = v281;
    (*(v281 + 32))(v261, v94, v47);
    v244(v97, 0, 1, v47);
    v101 = v47;
  }

  v102 = type metadata accessor for NavigationSharingURLInfo();
  v103 = (v92 + *(v102 + 24));
  v105 = *v103;
  v104 = v103[1];
  v106 = *(v100 + 32);
  v107 = v283;
  v266 = v101;
  v261 = v106;
  (v106)(v283, v62, v101);
  sub_20B5DF134(v97, v107 + *(v102 + 20), &unk_27C7617F0);
  v108 = (v107 + *(v102 + 24));
  *v108 = v105;
  v108[1] = v104;
  v109 = v282;
  swift_storeEnumTagMultiPayload();
  v110 = v271;
  sub_20B8E8910(v96, v271, type metadata accessor for NavigationResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
    v113 = v266;
    v114 = *(v273 + 32);
    v114(v267, v110 + *(v117 + 48), v274);
    v118 = *(v281 + 8);

    v118(v110, v113);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v164 = v242;
    v165 = v266;
    v166 = v278;
    v278(v242, v280, v266);
    v167 = v241;
    sub_20B8E8910(v283, v241, type metadata accessor for NavigationSource);
    (*(v277 + 56))(v167, 0, 1, v109);
    v168 = *(v272 + 36);
    LODWORD(v270) = *(v96 + *(v272 + 32));
    v275 = *(v96 + v168);
    v169 = v240;
    v166(v240, v164, v165);

    v170 = v169;
    v171 = v109;
    sub_20BBD6CD8(v170, v243);
    v172 = v234;
    v166(v234, v164, v165);
    v173 = v236;
    v244(v236 + *(v102 + 20), 1, 1, v165);
    (v261)(v173, v172, v165);
    v174 = (v173 + *(v102 + 24));
    *v174 = 0;
    v174[1] = 0;
    swift_storeEnumTagMultiPayload();
    v175 = v229;
    sub_20B52F9E8(v167, v229, &unk_27C767800);
    v176 = *(v277 + 48);
    v177 = v167;
    if (v176(v175, 1, v171) == 1)
    {
      v178 = v238;
      sub_20B8E8910(v173, v238, type metadata accessor for NavigationSource);
      v179 = v176(v175, 1, v171);
      v180 = v272;
      v181 = v232;
      v182 = v227;
      if (v179 != 1)
      {
        sub_20B520158(v175, &unk_27C767800);
      }
    }

    else
    {
      v178 = v238;
      sub_20B8E8978(v175, v238, type metadata accessor for NavigationSource);
      v180 = v272;
      v181 = v232;
      v182 = v227;
    }

    sub_20B8E8910(v178, v182, type metadata accessor for NavigationSource);
    v183 = swift_getEnumCaseMultiPayload();
    v184 = v242;
    if (v183)
    {
      sub_20B8E88B0(v182, type metadata accessor for NavigationSource);
      v185 = v228;
    }

    else
    {
      sub_20B8E88B0(v182, type metadata accessor for NavigationSharingURLInfo);
      v186 = v243;
      v187 = v225;
      sub_20B8E8910(v243, v225, type metadata accessor for NavigationResource);
      v188 = swift_getEnumCaseMultiPayload();
      v185 = v228;
      if (v188 == 10)
      {
        sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
        sub_20B520158(v177, &unk_27C767800);
        v189 = v184;
        v190 = v266;
        v191 = *(v281 + 8);
        v191(v189, v266);
        sub_20B8E8978(v186, v181, type metadata accessor for NavigationResource);
        *(v181 + v180[5]) = 0;
        v192 = 2;
        swift_storeEnumTagMultiPayload();
        goto LABEL_42;
      }

      sub_20B8E88B0(v187, type metadata accessor for NavigationResource);
      v178 = v238;
    }

    v193 = v226;
    sub_20B8E8910(v178, v226, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v194 = type metadata accessor for NavigationSource;
      v195 = v193;
LABEL_44:
      sub_20B8E88B0(v195, v194);
      v200 = v275;
      v201 = v243;
      sub_20B8E8910(v243, v181, type metadata accessor for NavigationResource);
      v202 = v234;
      v203 = v266;
      v199 = v278;
      v278(v234, v184, v266);
      sub_20BB7F2E8(v202, 1, v181 + v180[5]);
      sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
      sub_20B8E88B0(v201, type metadata accessor for NavigationResource);
      sub_20B520158(v177, &unk_27C767800);
      v204 = v184;
      v190 = v203;
      v191 = *(v281 + 8);
      v191(v204, v190);
      v192 = v270;
      goto LABEL_45;
    }

    sub_20B8E88B0(v193, type metadata accessor for NavigationSharingURLInfo);
    v196 = v243;
    sub_20B8E8910(v243, v185, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v194 = type metadata accessor for NavigationResource;
      v195 = v185;
      goto LABEL_44;
    }

    sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
    sub_20B520158(v177, &unk_27C767800);
    v197 = v184;
    v190 = v266;
    v191 = *(v281 + 8);
    v191(v197, v266);
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
    (*(v273 + 8))(v185 + *(v198 + 48), v274);
    v191(v185, v190);
    sub_20B8E8978(v196, v181, type metadata accessor for NavigationResource);
    *(v181 + v180[5]) = 1;
    swift_storeEnumTagMultiPayload();
    v192 = 2;
LABEL_42:
    v199 = v278;
    v200 = v275;
LABEL_45:
    sub_20B8E8978(v238, v181 + v180[6], type metadata accessor for NavigationSource);
    *(v181 + v180[7]) = 0;
    *(v181 + v180[8]) = v192;
    *(v181 + v180[9]) = v200;
    v205 = v181;
    v206 = v231;
    sub_20B8E8978(v205, v231, type metadata accessor for NavigationRequest);
    sub_20B8E8978(v206, v237, type metadata accessor for NavigationRequest);
    v207 = v233;
    sub_20C13B424();
    v208 = v230;
    v199(v230, v280, v190);
    v209 = sub_20C13BB74();
    v210 = sub_20C13D1F4();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v284 = v212;
      *v211 = 136315138;
      sub_20B8E91C8(&qword_27C768AB0, 255, MEMORY[0x277CC9260]);
      v213 = sub_20C13DFA4();
      v214 = v208;
      v216 = v215;
      v191(v214, v190);
      v217 = sub_20B51E694(v213, v216, &v284);

      *(v211 + 4) = v217;
      _os_log_impl(&dword_20B517000, v209, v210, "Redirected sharing URL to %s", v211, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v212);
      MEMORY[0x20F2F6A40](v212, -1, -1);
      MEMORY[0x20F2F6A40](v211, -1, -1);
    }

    else
    {

      v191(v208, v190);
    }

    (*(v263 + 8))(v207, v264);
    v218 = v257;
    v219 = v271;
    v220 = v237;
    v221 = v258;
    sub_20B8E8910(v237, v258, type metadata accessor for NavigationRequest);
    v222 = (*(v218 + 80) + 16) & ~*(v218 + 80);
    v223 = swift_allocObject();
    sub_20B8E8978(v221, v223 + v222, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    sub_20B8E88B0(v220, type metadata accessor for NavigationRequest);
    sub_20B8E88B0(v283, type metadata accessor for NavigationSource);
    v162 = type metadata accessor for NavigationResource;
    v163 = v219;
    return sub_20B8E88B0(v163, v162);
  }

  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0);
  v113 = v266;
  v114 = *(v273 + 32);
  v114(v267, v110 + *(v112 + 48), v274);
  v115 = sub_20C1387E4();
  v116 = *(*(v115 - 8) + 8);

  v116(v110, v115);
LABEL_13:
  v119 = v262;
  sub_20C13B424();
  v120 = v246;
  v121 = v280;
  v278(v246, v280, v113);
  v122 = sub_20C13BB74();
  v123 = sub_20C13D1F4();
  v124 = os_log_type_enabled(v122, v123);
  v125 = v272;
  if (v124)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v284 = v127;
    *v126 = 136315138;
    sub_20B8E91C8(&qword_27C768AB0, 255, MEMORY[0x277CC9260]);
    v128 = sub_20C13DFA4();
    v129 = v120;
    v131 = v130;
    (*(v281 + 8))(v129, v113);
    v132 = sub_20B51E694(v128, v131, &v284);

    *(v126 + 4) = v132;
    _os_log_impl(&dword_20B517000, v122, v123, "Redirected marketing URL to %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x20F2F6A40](v127, -1, -1);
    MEMORY[0x20F2F6A40](v126, -1, -1);

    (*(v263 + 8))(v262, v264);
  }

  else
  {

    (*(v281 + 8))(v120, v113);
    (*(v263 + 8))(v119, v264);
  }

  v133 = v256;
  v134 = v276;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
  v136 = *(v135 + 48);
  v137 = *(v135 + 64);
  v138 = v249;
  v278(v249, v121, v113);
  v114((v138 + v136), v267, v274);
  *(v138 + v137) = 0;
  swift_storeEnumTagMultiPayload();
  v139 = v248;
  (*(v248 + 56))(v138, 0, 1, v134);
  v140 = v251;
  (*(v270 + 56))(v251, 1, 1, v133);
  v141 = v269;
  sub_20B8E8910(v283, v269, type metadata accessor for NavigationSource);
  (*(v277 + 56))(v141, 0, 1, v282);
  v142 = v250;
  sub_20B5DF134(v138, v250, &unk_27C767810);
  v143 = *(v139 + 48);
  if (v143(v142, 1, v134) == 1)
  {
    v144 = v275;
    sub_20B8E8910(v275, v268, type metadata accessor for NavigationResource);
    v145 = v143(v142, 1, v134) == 1;
    v146 = v142;
    v147 = v258;
    v148 = v255;
    v149 = v254;
    v150 = v247;
    if (!v145)
    {
      sub_20B520158(v146, &unk_27C767810);
    }
  }

  else
  {
    sub_20B8E8978(v142, v268, type metadata accessor for NavigationResource);
    v147 = v258;
    v144 = v275;
    v148 = v255;
    v149 = v254;
    v150 = v247;
  }

  v151 = v140;
  v152 = v252;
  sub_20B5DF134(v151, v252, &qword_27C764E40);
  v153 = *(v270 + 48);
  if (v153(v152, 1, v133) == 1)
  {
    sub_20B8E8910(v144 + v125[5], v148, type metadata accessor for NavigationIntent);
    v154 = v153(v152, 1, v133);
    v155 = v253;
    if (v154 != 1)
    {
      sub_20B520158(v152, &qword_27C764E40);
    }
  }

  else
  {
    sub_20B8E8978(v152, v148, type metadata accessor for NavigationIntent);
    v155 = v253;
  }

  sub_20B5DF134(v269, v149, &unk_27C767800);
  v156 = *(v277 + 48);
  v157 = v282;
  if (v156(v149, 1, v282) == 1)
  {
    sub_20B8E8910(v144 + v125[6], v150, type metadata accessor for NavigationSource);
    if (v156(v149, 1, v157) != 1)
    {
      sub_20B520158(v149, &unk_27C767800);
    }
  }

  else
  {
    sub_20B8E8978(v149, v150, type metadata accessor for NavigationSource);
  }

  v158 = *(v144 + v125[8]);
  v159 = *(v144 + v125[9]);
  sub_20B8E8978(v268, v155, type metadata accessor for NavigationResource);
  sub_20B8E8978(v148, v155 + v125[5], type metadata accessor for NavigationIntent);
  sub_20B8E8978(v150, v155 + v125[6], type metadata accessor for NavigationSource);
  *(v155 + v125[7]) = 0;
  *(v155 + v125[8]) = v158;
  *(v155 + v125[9]) = v159;
  sub_20B8E8910(v155, v147, type metadata accessor for NavigationRequest);
  v160 = (*(v257 + 80) + 16) & ~*(v257 + 80);
  v161 = swift_allocObject();
  sub_20B8E8978(v147, v161 + v160, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B8E88B0(v155, type metadata accessor for NavigationRequest);
  v162 = type metadata accessor for NavigationSource;
  v163 = v283;
  return sub_20B8E88B0(v163, v162);
}

uint64_t EngagementRedirectURLInterceptor.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  return v0;
}

uint64_t EngagementRedirectURLInterceptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t EngagementRedirectURLInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  sub_20B8E37E0(a1, v11);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B8E83A8;
  v18[1] = v3;
  type metadata accessor for NavigationRequest();

  sub_20C137C94();
  return (*(v6 + 8))(v11, v5);
}

uint64_t EngagementRedirectURLInterceptor.cancel()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B8E81AC()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B8E82A8(uint64_t a1)
{
  *(v1 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v1 + 16) = *&v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v1 + 72) = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 88);
  return v1;
}

uint64_t sub_20B8E83D4(uint64_t a1, uint64_t a2)
{
  result = sub_20B8E91C8(&qword_27C7677F8, a2, type metadata accessor for EngagementRedirectURLInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B8E84D4(uint64_t *a1)
{
  type metadata accessor for NavigationSharingURLInfo();

  return sub_20B8E48DC(a1);
}

uint64_t sub_20B8E8580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationSharingURLInfo() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationRequest() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20B8E5C04(a1, v2 + v6, v9, a2);
}

uint64_t sub_20B8E868C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20BB550E8(v4, a1);
}

uint64_t sub_20B8E8740(uint64_t a1)
{
  v3 = *(type metadata accessor for NavigationRequest() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B8E4A3C(a1, v4);
}

uint64_t sub_20B8E87E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B8E88B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8E8910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8E8978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v2;
    v27 = (v2 + 16) & ~v2;
    v28 = v0;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v0 = v28;
    v3 = v27;
    v2 = v45;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B8E91C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20B8E9218(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C762910);
    sub_20B7A7AAC();
    result = sub_20C13CFF4();
    v1 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    v16 = sub_20C13DB64();
    if (!v16 || (*&v20 = v16, sub_20B51C88C(0, &qword_27C762910), swift_dynamicCast(), v15 = *&v23[0], v13 = v5, v14 = v6, !*&v23[0]))
    {
LABEL_27:
      sub_20B583EDC();
      return v10;
    }

LABEL_19:
    v29 = v15;
    sub_20B51C88C(0, &qword_27C762910);
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767850);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    if (*(&v21 + 1))
    {
      sub_20B51C710(&v20, v23);
      sub_20B51C710(v23, &v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20BC05B5C(0, v10[2] + 1, 1, v10);
      }

      v19 = v10[2];
      v18 = v10[3];
      if (v19 >= v18 >> 1)
      {
        v10 = sub_20BC05B5C((v18 > 1), v19 + 1, 1, v10);
      }

      v10[2] = v19 + 1;
      result = sub_20B51C710(&v20, &v10[5 * v19 + 4]);
    }

    else
    {
      result = sub_20B520158(&v20, &qword_27C767858);
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}