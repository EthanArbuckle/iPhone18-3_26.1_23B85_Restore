void sub_20B81D518(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a4;
  v77 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763868);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v20 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = v77 - a2;
  if (v77 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v22 = (a2 - a1) / v19;
    v80 = a1;
    v23 = v73;
    v79 = v73;
    v76 = v19;
    if (v22 < v21 / v19)
    {
      v24 = v22 * v19;
      v25 = v73;
      if (v73 < a1 || a1 + v24 <= v73)
      {
        v26 = v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v73 == a1)
        {
          goto LABEL_17;
        }

        v26 = v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v26;
LABEL_17:
      v75 = v23 + v24;
      v78 = v23 + v24;
      if (v24 >= 1 && v20 < v77)
      {
        v29 = *(v7 + 16);
        v74 = v7 + 16;
        v30 = (v7 + 8);
        while (1)
        {
          v31 = v20;
          v29(v17);
          (v29)(v13, v25, v6);
          sub_20C132494();
          v33 = v32;
          sub_20C132494();
          if (v33 >= v34)
          {
            v42 = *v30;
            (*v30)(v13, v6);
            v42(v17, v6);
LABEL_29:
            v40 = v76;
            v43 = v25 + v76;
            if (a1 < v25 || a1 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_34:
              v40 = v76;
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_34;
            }

            v79 = v43;
            v25 = v43;
            v20 = v31;
            goto LABEL_39;
          }

          sub_20C1324B4();
          v36 = v35;
          sub_20C1324B4();
          v38 = v37;
          v39 = *v30;
          (*v30)(v13, v6);
          v39(v17, v6);
          if (v36 >= v38)
          {
            goto LABEL_29;
          }

          v40 = v76;
          v41 = v31 + v76;
          if (a1 < v31 || a1 >= v41)
          {
            break;
          }

          if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_37:
            v40 = v76;
          }

          v20 = v41;
LABEL_39:
          a1 += v40;
          v80 = a1;
          if (v25 >= v75 || v20 >= v77)
          {
            goto LABEL_69;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_37;
      }

      goto LABEL_69;
    }

    v27 = v21 / v19 * v19;
    v71 = v15;
    if (v73 < a2 || a2 + v27 <= v73)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v73 == a2)
      {
LABEL_44:
        v44 = v23 + v27;
        if (v27 >= 1)
        {
          v45 = -v19;
          v68 = (v7 + 8);
          v69 = (v7 + 16);
          v46 = v23 + v27;
          v47 = v10;
          v76 = -v19;
          while (2)
          {
            while (1)
            {
              v74 = v44;
              v67 = v44;
              v48 = v20 + v45;
              v72 = v20 + v45;
              v70 = v20;
              while (1)
              {
                v50 = v77;
                if (v20 <= a1)
                {
                  v80 = v20;
                  v78 = v67;
                  goto LABEL_69;
                }

                v51 = *v69;
                v75 = v46 + v45;
                v51(v47);
                v52 = v47;
                v53 = v71;
                (v51)(v71, v48, v6);
                sub_20C132494();
                v55 = v54;
                sub_20C132494();
                if (v55 >= v56)
                {
                  v60 = 0;
                }

                else
                {
                  sub_20C1324B4();
                  v58 = v57;
                  sub_20C1324B4();
                  v60 = v58 < v59;
                }

                v77 = v50 + v76;
                v61 = *v68;
                (*v68)(v53, v6);
                v61(v52, v6);
                v47 = v52;
                if (v60)
                {
                  break;
                }

                v62 = v75;
                v63 = v75;
                v64 = v73;
                if (v50 < v46 || v77 >= v46)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v50 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v74 = v63;
                v46 = v63;
                v49 = v62 > v64;
                v48 = v72;
                v45 = v76;
                v20 = v70;
                if (!v49)
                {
                  v44 = v74;
                  goto LABEL_68;
                }
              }

              v65 = v73;
              if (v50 < v70 || v77 >= v70)
              {
                break;
              }

              v20 = v72;
              v44 = v74;
              v45 = v76;
              if (v50 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
                v20 = v72;
              }

              if (v46 <= v65)
              {
                goto LABEL_68;
              }
            }

            v66 = v72;
            swift_arrayInitWithTakeFrontToBack();
            v20 = v66;
            v44 = v74;
            v45 = v76;
            if (v46 > v65)
            {
              continue;
            }

            break;
          }
        }

LABEL_68:
        v80 = v20;
        v78 = v44;
LABEL_69:
        sub_20B6A09A8(&v80, &v79, &v78);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v76;
    v20 = a2;
    goto LABEL_44;
  }

LABEL_72:
  __break(1u);
}

void *sub_20B81DBAC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_20BEE19BC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_20B81DC3C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_20B81DC54(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_20B81DC6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_20B81DCA0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20B81DD04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = *MEMORY[0x277D51830];
  v13 = sub_20C1352F4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v11, v12, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  v15 = sub_20C132C14();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = sub_20C135ED4();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_20C136914();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);

  return sub_20C133384();
}

uint64_t sub_20B81E02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v4 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v4 - 8);
  *&v87 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13A814();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C133AA4();
  v10 = [objc_opt_self() standardUserDefaults];
  (*(v7 + 104))(v9, *MEMORY[0x277D4F070], v6);
  v11 = sub_20C13A804();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  v14 = MEMORY[0x20F2F4480](v10, v11, v13);

  v15 = sub_20C138104();
  v16 = sub_20C138104();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  if (v15 == v16 || v14 == 2 || (v14 & 1) != 0)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C1582F0;
    type metadata accessor for AccountSettingAvatarRowShelf();
    swift_allocObject();

    v23 = sub_20BF6AE8C();

    *(v17 + 32) = v23;
    *(v17 + 40) = &off_2822F96B0;
    type metadata accessor for AccountSettingNotificationsShelf();
    swift_allocObject();
    *(v17 + 48) = sub_20BFE9F50();
    *(v17 + 56) = &off_2822FEB38;
    type metadata accessor for AccountFitnessSettingsShelf();
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v17 + 64) = sub_20BCABCC0(v24, a2, v85);
    *(v17 + 72) = &off_2822DBBA8;
    type metadata accessor for AccountFitnessWorkoutSettingsShelf();
    swift_allocObject();

    v25 = sub_20B64DF1C();

    *(v17 + 80) = v25;
    *(v17 + 88) = &off_28229A5A0;
    type metadata accessor for AccountManagementShelf();
    swift_allocObject();

    v26 = sub_20B99BA08();

    *(v17 + 96) = v26;
    v22 = (v17 + 104);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C152DF0;
    type metadata accessor for AccountSettingAvatarRowShelf();
    swift_allocObject();

    v18 = sub_20BF6AE8C();

    *(v17 + 32) = v18;
    *(v17 + 40) = &off_2822F96B0;
    type metadata accessor for AccountFitnessSettingsShelf();
    swift_allocObject();
    swift_unknownObjectRetain();

    *(v17 + 48) = sub_20BCABCC0(v19, a2, v85);
    *(v17 + 56) = &off_2822DBBA8;
    type metadata accessor for AccountFitnessWorkoutSettingsShelf();
    swift_allocObject();

    v20 = sub_20B64DF1C();

    *(v17 + 64) = v20;
    *(v17 + 72) = &off_28229A5A0;
    type metadata accessor for AccountManagementShelf();
    swift_allocObject();

    v21 = sub_20B99BA08();

    *(v17 + 80) = v21;
    v22 = (v17 + 88);
  }

  *v22 = &off_2822BACA0;
  LODWORD(v85) = sub_20C1380F4();
  v27 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v84 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v27 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v28 = sub_20C13C724();
  v29 = type metadata accessor for CatalogPageImpressionTracker();
  v30 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v31 = MEMORY[0x277D221C0];
  v30[2] = sub_20C13C6D4();
  v30[3] = v28;
  v30[4] = v31;
  v98[3] = v29;
  v32 = sub_20B63EE48();
  v98[4] = v32;
  v98[0] = v30;
  v33 = type metadata accessor for MetricLocationStore();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F98];
  *(v34 + 16) = MEMORY[0x277D84F90];
  *(v34 + 24) = v36;
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v98, v29);
  v83 = &v81;
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v38);
  v42 = *v40;
  v97[3] = v29;
  v97[4] = v32;
  v97[0] = v42;
  v96[3] = v33;
  v96[4] = &off_2822B6968;
  v96[0] = v34;
  v43 = *(v17 + 16);
  if (v43)
  {
    v81 = v33;
    v82 = v32;
    v95[0] = v35;
    sub_20BB5D394(0, v43, 0);
    v44 = 32;
    v45 = v95[0];
    do
    {
      v46 = *(v17 + v44);
      v95[0] = v45;
      v47 = *(v45 + 16);
      v48 = *(v45 + 24);
      v87 = v46;
      swift_unknownObjectRetain();
      if (v47 >= v48 >> 1)
      {
        sub_20BB5D394((v48 > 1), v47 + 1, 1);
        v45 = v95[0];
      }

      *(v45 + 16) = v47 + 1;
      v49 = v45 + 24 * v47;
      *(v49 + 32) = v87;
      *(v49 + 48) = 0;
      v44 += 16;
      --v43;
    }

    while (v43);

    v33 = v81;
    v32 = v82;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v97, v95);
  sub_20B51CC64(v96, v94);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v95, v95[3]);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = (&v81 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = __swift_mutable_project_boxed_opaque_existential_1(v94, v94[3]);
  v56 = MEMORY[0x28223BE20](v55);
  v58 = (&v81 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58, v56);
  v60 = *v53;
  v61 = *v58;
  v92 = v29;
  v93 = v32;
  v91[0] = v60;
  v89 = v33;
  v90 = &off_2822B6968;
  v88[0] = v61;
  v62 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v64 = MEMORY[0x28223BE20](v63);
  v66 = (&v81 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v67 + 16))(v66, v64);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  v69 = MEMORY[0x28223BE20](v68);
  v71 = (&v81 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = sub_20BE3AA74(0x746E756F636361, 0xE700000000000000, v45, v85, v84, *v66, *v71, 2, v62);
  __swift_destroy_boxed_opaque_existential_1(v96);
  __swift_destroy_boxed_opaque_existential_1(v97);
  __swift_destroy_boxed_opaque_existential_1(v88);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v98);
  v74 = v86;
  *(v86 + 16) = v73;
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v76 = [objc_opt_self() bundleForClass_];
  v77 = sub_20C132964();
  v79 = v78;

  *(v74 + 24) = v77;
  *(v74 + 32) = v79;
  return v74;
}

unint64_t sub_20B81EB10()
{
  result = qword_27C766480;
  if (!qword_27C766480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766480);
  }

  return result;
}

unint64_t sub_20B81EB78()
{
  result = qword_27C766488;
  if (!qword_27C766488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C766490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766488);
  }

  return result;
}

unint64_t sub_20B81EBDC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20B81EC70(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_20B81EC1C()
{
  result = qword_27C766498;
  if (!qword_27C766498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C766498);
  }

  return result;
}

unint64_t sub_20B81EC70(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

id sub_20B81EC80(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_20C13D854();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13D874();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textForegroundColor] = 0;
  v20 = &v4[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  *(v20 + 40) = xmmword_20C15C6B0;
  v21 = type metadata accessor for MenuPickerButton();
  v24.receiver = v4;
  v24.super_class = v21;
  v22 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  sub_20C13D814();
  sub_20C13D6B4();
  (*(v13 + 104))(v15, *MEMORY[0x277D75050], v12);
  sub_20C13D864();
  (*(v17 + 16))(v11, v19, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_20C13D894();
  [v22 setChangesSelectionAsPrimaryAction_];
  [v22 setShowsMenuAsPrimaryAction_];

  (*(v17 + 8))(v19, v16);
  return v22;
}

uint64_t sub_20B81F018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = sub_20C13D874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MenuPickerButton();
  v17.receiver = v0;
  v17.super_class = v14;
  objc_msgSendSuper2(&v17, sel_updateConfiguration);
  sub_20C13D884();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B7839B4(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C13C074();
  v16 = sub_20C13C064();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  sub_20C13D7B4();
  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20C13D894();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_20B81F2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C1329B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 16);
  if (!Strong)
  {
    return v9(a2, a1, v4);
  }

  v10 = Strong;
  v35 = v4;
  v36 = a2;
  v9(v7, a1, v4);
  KeyPath = swift_getKeyPath();
  v34[3] = swift_getKeyPath();
  v12 = &v10[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor];
  v13 = *&v10[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textFontDescriptor + 40];
  if (v13 >> 1 == 0xFFFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v34[2] = KeyPath;
    v17 = *v12;
    v16 = *(v12 + 1);
    v18 = *(v12 + 2);
    v19 = *(v12 + 3);
    v20 = *(v12 + 4);
    v21 = *(v12 + 6);
    sub_20B81F7A8(*v12, v16, v18, v19, v20, v13);
    v22 = [v10 traitCollection];
    v34[0] = v20;
    v34[1] = v21;
    if ((v13 & 0x8000000000000000) != 0)
    {
      v39 = v17;
      v40 = v16;
      LOBYTE(v41) = v18 & 1;
      v42 = v19;
      LODWORD(v43) = v20;
      BYTE4(v43) = BYTE4(v20) & 1;
      v28 = v17;
      v29 = v16;
      v30 = v18;
      v24 = v22;
      v14 = sub_20B992B08();
      v25 = v28;
      v26 = v29;
      v27 = v30;
    }

    else
    {
      v37[0] = BYTE4(v19) & 1;
      LOBYTE(v38) = v13 & 1;
      v39 = v17;
      v40 = v16;
      v41 = v18;
      LODWORD(v42) = v19;
      BYTE4(v42) = BYTE4(v19) & 1;
      BYTE5(v42) = BYTE5(v19);
      v43 = v20;
      v44 = v13 & 1;
      v45 = v21;
      v23 = v18;
      v24 = v22;
      v14 = sub_20B7C6A74(v22);
      v25 = v17;
      v26 = v16;
      v27 = v23;
    }

    sub_20B81F800(v25, v26, v27, v19, v34[0], v13);
  }

  v38 = v14;
  sub_20C132864();
  sub_20B81F814();
  v31 = sub_20C132974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
  sub_20B81F86C();
  sub_20C132A74();
  v31(v37, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v38 = *&v10[OBJC_IVAR____TtC9SeymourUI16MenuPickerButton_textForegroundColor];
  v32 = v38;
  v33 = sub_20C132974();
  sub_20B81F8C0();
  sub_20C132A74();
  v33(v37, 0);

  return (*(v5 + 32))(v36, v7, v35);
}

id sub_20B81F6EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MenuPickerButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B81F7A8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = a3;

    a4 = a1;
    v6 = vars8;
  }

  return a4;
}

void *sub_20B81F800(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_20B786774(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

unint64_t sub_20B81F814()
{
  result = qword_27C7664B0;
  if (!qword_27C7664B0)
  {
    sub_20C132864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7664B0);
  }

  return result;
}

unint64_t sub_20B81F86C()
{
  result = qword_27C7664C0;
  if (!qword_27C7664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7664C0);
  }

  return result;
}

unint64_t sub_20B81F8C0()
{
  result = qword_27C7664C8;
  if (!qword_27C7664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7664C8);
  }

  return result;
}

char *sub_20B81F914(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v4 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView] = v5;
  v6 = &v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_layoutProvider];
  *(v6 + 3) = &type metadata for PhoneWorkoutPlanCalendarLayoutProvider;
  *(v6 + 4) = &off_2822F3410;
  type metadata accessor for WorkoutPlanCalendarPresenter();
  swift_allocObject();

  v7 = sub_20B9E4D3C(a1);

  *&v2[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_presenter] = v7;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for WorkoutPlanCalendarViewController();
  v8 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);
  *(*&v8[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_presenter] + 24) = &off_2822AB128;
  swift_unknownObjectWeakAssign();
  v9 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView;
  v10 = *&v8[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = objc_allocWithZone(MEMORY[0x277D752B8]);
  aBlock[4] = sub_20B821740;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20BE37A2C;
  aBlock[3] = &block_descriptor_23;
  v13 = _Block_copy(aBlock);
  v14 = v8;
  v15 = v10;
  v16 = [v12 initWithSectionProvider_];
  _Block_release(v13);

  [v15 setCollectionViewLayout_];

  [*&v8[v9] setAlwaysBounceVertical_];
  v17 = *&v8[v9];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  v21 = *&v8[v9];
  [v21 setDelegate_];

  v22 = *&v8[v9];
  v23 = type metadata accessor for CalendarDayCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  aBlock[0] = v23;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766508);
  sub_20C13C9D4();
  v26 = sub_20C13C914();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = *&v8[v9];
  v28 = type metadata accessor for WeekView();
  v29 = swift_getObjCClassFromMetadata();
  aBlock[0] = v28;
  v30 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766510);
  sub_20C13C9D4();
  v31 = sub_20C13C914();

  aBlock[0] = v28;
  sub_20C13C9D4();
  v32 = sub_20C13C914();

  [v30 registerClass:v29 forSupplementaryViewOfKind:v31 withReuseIdentifier:v32];

  v33 = *&v8[v9];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20B821748;
  *(v35 + 24) = v34;
  v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766518));
  v37 = v33;
  v38 = sub_20C13BF14();
  v39 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource;
  v40 = *&v14[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource];
  *&v14[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource] = v38;

  v41 = *&v14[v39];
  v42 = v14;
  if (v41)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v41;
    sub_20C13BF24();
  }

  return v14;
}

void sub_20B81FEE4()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for WorkoutPlanCalendarViewController();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView];
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14FE90;
  v5 = [v3 leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v0 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  v13 = [v11 trailingAnchor];

  v14 = [v10 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = [v3 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v4 + 48) = v19;
  v20 = [v3 bottomAnchor];
  v21 = [v0 view];
  if (v21)
  {
    v22 = v21;
    v23 = objc_opt_self();
    v24 = [v22 bottomAnchor];

    v25 = [v20 constraintEqualToAnchor_];
    *(v4 + 56) = v25;
    sub_20B51C88C(0, &qword_281100500);
    v26 = sub_20C13CC54();

    [v23 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_20B820244(void *a1, uint64_t a2, unint64_t a3)
{
  *&v25[0] = type metadata accessor for CalendarDayCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766508);
  sub_20C13C9D4();
  v5 = sub_20C13C914();

  v6 = sub_20C1331B4();
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:v6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v7;
  }

  v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_presenter);
  v10 = Strong;

  v11 = *(v9 + 32);

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > a3)
  {
    v13 = (v11 + (a3 << 6));
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    *&v26[10] = *(v13 + 74);
    v25[1] = v15;
    *v26 = v16;
    v25[0] = v14;
    sub_20B821784(v25, v24);

    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = BYTE8(v25[0]);
      v20 = v7;
      [v18 setSelected_];
      v21 = v26[24];
      [v18 setUserInteractionEnabled_];
      sub_20BC6B43C(v25);
      sub_20BC6B52C(v25);
      sub_20B86EDC0(v21);
      v22 = *&v18[OBJC_IVAR____TtC9SeymourUI15CalendarDayCell_dayLabel];
      v23 = sub_20C13C914();
      [v22 setText_];

      sub_20BC6B5D8(v25);
      sub_20B8217E0(v25);
    }

    else
    {
      sub_20B8217E0(v25);
    }

    return v7;
  }

  __break(1u);
  return result;
}

id sub_20B820470(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  [objc_msgSend(a2 container)];
  v6 = v5;
  swift_unknownObjectRelease();
  result = [v4 view];
  if (result)
  {
    v8 = result;
    v9 = (v6 + -24.0) / 7.0;
    v10 = [result window];

    v36 = v4;
    if (v10)
    {
      v11 = [v10 screen];

      [v11 scale];
      v13 = v12;
    }

    else
    {
      v13 = 1.0;
    }

    v15 = objc_opt_self();
    v16 = [v15 absoluteDimension_];
    v17 = [v15 absoluteDimension_];
    v18 = objc_opt_self();
    v37 = [v18 sizeWithWidthDimension:v16 heightDimension:v17];

    v19 = [objc_opt_self() itemWithLayoutSize_];
    [objc_msgSend(a2 container)];
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = [v15 absoluteDimension_];
    v23 = [v15 absoluteDimension_];
    v24 = [v18 sizeWithWidthDimension:v22 heightDimension:v23];

    v25 = [objc_opt_self() horizontalGroupWithLayoutSize:v24 repeatingSubitem:v19 count:7];
    v14 = [objc_opt_self() sectionWithGroup_];
    [v14 setOrthogonalScrollingBehavior_];
    [v14 setContentInsets_];
    [objc_msgSend(a2 container)];
    v27 = v26;
    swift_unknownObjectRelease();
    v28 = [v15 absoluteDimension_];
    v29 = [v15 estimatedDimension_];
    v30 = [v18 sizeWithWidthDimension:v28 heightDimension:v29];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_20C14F580;
    type metadata accessor for WeekView();
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766510);
    sub_20C13C9D4();
    v33 = sub_20C13C914();

    v34 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v32 elementKind:v33 alignment:1];

    *(v31 + 32) = v34;
    sub_20B51C88C(0, &qword_27C766528);
    v35 = sub_20C13CC54();

    [v14 setBoundarySupplementaryItems_];

    return v14;
  }

  __break(1u);
  return result;
}

id sub_20B820954(void *a1)
{
  v2 = sub_20C13C914();
  type metadata accessor for WeekView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766510);
  sub_20C13C9D4();
  v3 = sub_20C13C914();

  v4 = sub_20C1331B4();
  v5 = [a1 dequeueReusableSupplementaryViewOfKind:v2 withReuseIdentifier:v3 forIndexPath:v4];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    v8 = sub_20B9E50BC();

    if (swift_dynamicCastClass())
    {
      v9 = v5;
      sub_20BA195EC(v8);
    }
  }

  return v5;
}

void sub_20B820AAC(void *a1, double a2, double a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for WorkoutPlanCalendarViewController();
  objc_msgSendSuper2(&v19, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v17 = sub_20B821C60;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B863940;
  v16 = &block_descriptor_28_0;
  v8 = _Block_copy(&v13);
  v9 = v3;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_20B821C68;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_20B863940;
  v16 = &block_descriptor_34;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [a1 animateAlongsideTransition:v8 completion:v11];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_20B820C4C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView) collectionViewLayout];
  [v2 invalidateLayout];
}

uint64_t sub_20B820CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_presenter) + 32);
  v3 = v2 - 8;
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 64;
    v6 = *(v3 + 48);
    v3 += 64;
    if (v6 == 1)
    {
      v7 = *(v5 + 16);

      sub_20B820D4C(v7, 0);
    }
  }

  return result;
}

uint64_t sub_20B820D4C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F2EA980](a1, 0, v8);
  v11 = *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView);
  v12 = sub_20C133234();
  if (v12 < [v11 numberOfSections])
  {
    v13 = sub_20C133224();
    if (v13 < [v11 numberOfItemsInSection_])
    {
      v14 = sub_20C1331B4();
      [v11 scrollToItemAtIndexPath:v14 atScrollPosition:8 animated:a2 & 1];
    }
  }

  return (*(v7 + 8))(v10, v6);
}

id sub_20B820F54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanCalendarViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B821110(void *a1, id a2, uint64_t a3)
{
  if ([a2 isTracking] && (v3[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] & 1) == 0)
  {
    v3[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] = 1;
  }

  else if (([a2 isTracking] & 1) == 0 && v3[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] == 1)
  {
    v3[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] = 0;
  }

  v7 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView;
  if ((v3[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isTappingScrollView] & 1) == 0 && ([a2 _isAnimatingScroll] & 1) == 0)
  {
    v8 = [v3 view];
    if (!v8)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v9 = v8;
    [a2 _panGestureVelocityInView_];
    v11 = v10;

    if (v11 != 0.0)
    {
      return;
    }

    v3[v7] = 1;
    [a2 contentOffset];
    v13 = v12;
    [a2 contentSize];
    if (!a1)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v15 = round(v13 / v14 * ([a1 numberOfItemsInSection_] / 7));
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -9.22337204e18)
    {
      if (v15 < 9.22337204e18)
      {
        sub_20B9AC468(v15);
        return;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_20B821370(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766530);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v29 = a2;
    v16 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot;
    if ((*(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot) & 1) == 0)
    {
      sub_20C13BE84();
      sub_20C13BE24();
      v17 = *(a1 + 16);
      if (v17)
      {
        v27 = v7;
        v28 = v6;
        v30 = MEMORY[0x277D84F90];
        sub_20BB5DED4(0, v17, 0);
        v18 = v30;
        v19 = (a1 + 72);
        v20 = *(v30 + 16);
        do
        {
          v22 = *v19;
          v19 += 8;
          v21 = v22;
          v30 = v18;
          v23 = *(v18 + 24);
          if (v20 >= v23 >> 1)
          {
            sub_20BB5DED4((v23 > 1), v20 + 1, 1);
            v18 = v30;
          }

          *(v18 + 16) = v20 + 1;
          *(v18 + 8 * v20++ + 32) = v21;
          --v17;
        }

        while (v17);
        v7 = v27;
        v6 = v28;
      }

      v30 = 0;
      v31 = 1;
      sub_20C13BE04();

      *(v3 + v16) = 1;
      v24 = *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource);
      if (v24)
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = v24;

        sub_20C13BF74();

        (*(v7 + 8))(v9, v6);
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B8216E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot] = 0;
  }
}

id sub_20B821834(uint64_t a1, int a2)
{
  v3 = v2;
  v19[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766530);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = sub_20C13C554();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530);
  *v14 = sub_20C13D374();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = sub_20C13C584();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    result = [*(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_collectionView) dataSource];
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766518);
      if (swift_dynamicCastClass())
      {
        sub_20C13BFA4();
        swift_unknownObjectRelease();
        (*(v5 + 32))(v10, v7, v4);
        sub_20C13BE64();
        *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_isApplyingSnapshot) = 1;
        v17 = *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource);
        if (v17)
        {
          swift_allocObject();
          swift_unknownObjectWeakInit();
          v18 = v17;

          sub_20C13BF74();

          (*(v5 + 8))(v10, v4);
        }

        else
        {
          return (*(v5 + 8))(v10, v4);
        }
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B821B94()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_dataSource);
  if (v1)
  {
    v2 = v1;
    sub_20C13BF34();

    if ((BYTE8(v9[0]) & 1) == 0)
    {
      v3 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCalendarViewController_presenter) + 32);
      if (*&v9[0] < *(v3 + 16))
      {
        if ((*&v9[0] & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v4 = (v3 + (*&v9[0] << 6));
          v6 = v4[3];
          v5 = v4[4];
          v7 = *(v4 + 74);
          v9[0] = v4[2];
          v9[1] = v6;
          *&v10[10] = v7;
          *v10 = v5;
          sub_20B821784(v9, &v8);
          sub_20B9AD060(v9);
          sub_20B8217E0(v9);
        }
      }
    }
  }
}

uint64_t sub_20B821C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v6 - 8);
  v20[0] = v20 - v7;
  v8 = sub_20C13A484();
  MEMORY[0x28223BE20](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C137EA4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC9SeymourUI24SessionProgressPresenter_gymKitConnection;
  v16 = sub_20C134C04();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  v20[1] = a1;
  sub_20C133AA4();
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + 48) = sub_20C13A914();
  v21 = a2;
  sub_20B64B624(a2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = v20[0];
    sub_20C137DE4();
    (*(v12 + 8))(v14, v11);
    v18 = OBJC_IVAR____TtC9SeymourUI24SessionProgressPresenter_gymKitConnection;
    swift_beginAccess();
    sub_20B822C18(v17, v3 + v18);
    swift_endAccess();
  }

  else
  {
    sub_20B64B688(v10);
  }

  swift_getObjectType();
  sub_20C13AFD4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(&v22);
  sub_20C13AEE4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();
  swift_unknownObjectRelease();

  sub_20B64B688(v21);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  return v3;
}

uint64_t sub_20B822098()
{
  v0 = sub_20C135274();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C13AFC4();
    sub_20B8222C8(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20B8221A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_20C13AED4();
    v5 = sub_20C134C04();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC9SeymourUI24SessionProgressPresenter_gymKitConnection;
    swift_beginAccess();
    sub_20B822C18(v2, v4 + v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_20B8222C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C135274();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v44 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1369A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_20C135264();
  v15 = sub_20C136994();
  v17 = v16;
  v19 = v18;
  v20 = *(v9 + 8);
  v20(v14, v8);
  if (v19)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 8))(v15, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v24 = *(v2 + 40);
      v25 = swift_getObjectType();
      (*(v24 + 8))(v15, v25, v24);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20B583F4C(v15, v17, 0);
    sub_20C13B534();
    v26 = v41;
    (*(v42 + 16))(v41, a1, v43);
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50 = v38;
      *v29 = 136446210;
      sub_20C135264();
      v30 = sub_20C136994();
      v32 = v31;
      v34 = v33;
      v20(v11, v8);
      v47 = v30;
      v48 = v32;
      v49 = v34 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766548);
      sub_20C133BB4();
      (*(v42 + 8))(v41, v43);
      sub_20B583F4C(v30, v32, v34 & 1);
      v35 = sub_20B51E694(v45, v46, &v50);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_20B517000, v27, v28, "Unknown progress behavior: %{public}s", v29, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x20F2F6A40](v36, -1, -1);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v26, v43);
    }

    return (*(v39 + 8))(v44, v40);
  }

  return result;
}

uint64_t sub_20B82271C(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_20C134C04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC9SeymourUI24SessionProgressPresenter_gymKitConnection;
  swift_beginAccess();
  sub_20B822B30(v4 + v15, v14);
  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_20B822BA0(v14);
  }

  else
  {
    (*(v9 + 16))(v11, v14, v8);
    sub_20B822BA0(v14);
    v16 = sub_20C134BB4();
    (*(v9 + 8))(v11, v8);
    if (v16)
    {
      a1 = a3;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(ObjectType, v17, a1, a2);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v4 + 40);
    v21 = swift_getObjectType();
    (*(v20 + 16))(v21, v20, a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B82295C()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583E6C(v0 + 32);

  sub_20B822BA0(v0 + OBJC_IVAR____TtC9SeymourUI24SessionProgressPresenter_gymKitConnection);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionProgressPresenter()
{
  result = qword_27C766538;
  if (!qword_27C766538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B822A2C()
{
  sub_20B822AD8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B822AD8()
{
  if (!qword_27C7631D8)
  {
    sub_20C134C04();
    v0 = sub_20C13D914();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7631D8);
    }
  }
}

uint64_t sub_20B822B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B822BA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B822C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_20B822D8C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding];
  v10 = *(MEMORY[0x277D768C8] + 16);
  *v9 = *MEMORY[0x277D768C8];
  *(v9 + 1) = v10;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults];
  sub_20B823CFC(v50);
  v12 = v50[3];
  *(v11 + 2) = v50[2];
  *(v11 + 3) = v12;
  *(v11 + 4) = v50[4];
  v13 = v50[1];
  *v11 = v50[0];
  *(v11 + 1) = v13;
  v14 = &v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_layout];
  strcpy(&v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_layout], "chevron.right");
  *(v14 + 7) = -4864;
  strcpy(v14 + 16, "chevron.left");
  v14[29] = 0;
  *(v14 + 15) = -5120;
  *(v14 + 4) = 0x4000000000000000;
  v15 = &v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride];
  *(v15 + 4) = 0;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 40) = xmmword_20C15C6B0;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI13ChevronButton_symbolScaleOverride];
  *v16 = 0;
  v16[8] = 1;
  v49.receiver = v4;
  v49.super_class = type metadata accessor for ChevronButton();
  v17 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = &v17[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults];
  v19 = *&v17[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 16];
  v20 = v17;
  [v20 setTintColor_];
  v21 = [v20 titleLabel];
  if (v21)
  {
    v22 = v21;
    [v21 setAdjustsFontForContentSizeCategory_];
  }

  v23 = [v20 imageView];
  if (v23)
  {
    v24 = v23;
    [v23 setContentMode_];
  }

  v25 = [v20 imageView];

  if (v25)
  {
    [v25 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  }

  v26 = *(v18 + 3);
  v27 = *(v18 + 4);
  v28 = *(v18 + 5);
  v29 = *(v18 + 6);
  v30 = *(v18 + 7);
  v31 = *(v18 + 8);
  v48 = v18;
  v32 = *(v18 + 9);
  v33 = v20;
  sub_20B81F7A8(v26, v27, v28, v29, v30, v31);
  v34 = [v33 traitCollection];
  v35 = v34;
  v51 = v26;
  v52 = v27;
  if (v31 < 0)
  {
    LOBYTE(v53) = v28 & 1;
    v54 = v29;
    LODWORD(v55) = v30;
    BYTE4(v55) = BYTE4(v30) & 1;
    v36 = sub_20B992B08();
  }

  else
  {
    v53 = v28;
    LODWORD(v54) = v29;
    BYTE4(v54) = BYTE4(v29) & 1;
    BYTE5(v54) = BYTE5(v29);
    v55 = v30;
    v56 = v31 & 1;
    v57 = v32;
    v36 = sub_20B7C6A74(v34);
  }

  v37 = v36;
  sub_20B786774(v26, v27, v28, v29, v30, v31);

  v38 = [objc_opt_self() configurationWithFont:v37 scale:*(v48 + 1)];
  [v33 effectiveUserInterfaceLayoutDirection];

  v39 = v38;
  v40 = sub_20C13C914();

  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  if (v41)
  {
    v42 = [v41 imageWithTintColor:*v48 renderingMode:1];
  }

  else
  {
    v42 = 0;
  }

  [v33 setImage:v42 forState:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20C14F980;
  v44 = sub_20C13C054();
  v45 = MEMORY[0x277D74DB8];
  *(v43 + 32) = v44;
  *(v43 + 40) = v45;
  sub_20C13D584();
  swift_unknownObjectRelease();

  v46 = [v33 traitCollection];

  sub_20B8236EC(v46);
  return v33;
}

void sub_20B823274(void *a1)
{
  v1 = [a1 traitCollection];
  sub_20B8236EC(v1);
}

void sub_20B823318()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronButton();
  objc_msgSendSuper2(&v7, sel_tintColorDidChange);
  v1 = [v0 tintColor];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 imageView];
    if (v3 && (v4 = v3, v5 = [v3 image], v4, v5))
    {
      v6 = [v5 imageWithTintColor_];
    }

    else
    {
      v6 = 0;
    }

    [v0 setImage:v6 forState:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_20B823454()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for ChevronButton();
  objc_msgSendSuper2(&v40, sel_layoutSubviews);
  v1 = objc_opt_self();
  v2 = [v1 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v3 = [v0 imageView];
  v4 = 0.0;
  Width = 0.0;
  if (v3)
  {
    v6 = v3;
    [v3 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v41.origin.x = v8;
    v41.origin.y = v10;
    v41.size.width = v12;
    v41.size.height = v14;
    Width = CGRectGetWidth(v41);
  }

  v15 = [v0 titleLabel];
  if (v15)
  {
    v16 = v15;
    [v15 frame];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v42.origin.x = v18;
    v42.origin.y = v20;
    v42.size.width = v22;
    v42.size.height = v24;
    v4 = CGRectGetWidth(v42);
  }

  if (v2)
  {
    v25 = -1.0;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = &v0[OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding];
  v27 = *&v0[OBJC_IVAR____TtC9SeymourUI13ChevronButton_layout + 32];
  v28 = v27 + *&v0[OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding + 24];
  v29 = v4 + v27;
  v36 = Width;
  v38 = v25 * Width;
  v31 = *&v0[OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding];
  v30 = *&v0[OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding + 8];
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    v32 = v28;
  }

  else
  {
    v32 = v30;
  }

  v33 = v26[2];
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    v34 = v30;
  }

  else
  {
    v34 = v28;
  }

  [v0 setContentEdgeInsets_];
  [v0 setImageEdgeInsets_];
  return [v0 setTitleEdgeInsets_];
}

void sub_20B8236EC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 8);
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 16);
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 24);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 32);
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride + 40);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  if (v8 >> 1 == 0xFFFFFFFF)
  {
    v33 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 24];
    v34 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 32];
    v11 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 40];
    v12 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 48];
    v13 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 56];
    v14 = *&v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 64];
    v36 = v4;
    v37 = v3;
    v35 = v5;
    v15 = a1;
    v16 = v7;
    sub_20B81F7A8(v33, v34, v11, v12, v13, v14);
    v7 = v16;
    a1 = v15;
    v10 = v34;
    v5 = v35;
    v9 = v33;
    v4 = v36;
    v3 = v37;
  }

  sub_20B823CE8(v3, v4, v5, v6, v7, v8);
  if (v14 < 0)
  {
    v17 = sub_20B992B08();
  }

  else
  {
    v17 = sub_20B7C6A74(a1);
  }

  v18 = v17;
  sub_20B786774(v9, v10, v11, v12, v13, v14);
  v19 = [v40 titleLabel];
  if (v19)
  {
    v20 = v19;
    [v19 setFont_];
  }

  [v18 pointSize];
  v22 = [v18 fontWithSize_];
  v23 = &v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_symbolScaleOverride];
  if (v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_symbolScaleOverride + 8])
  {
    v23 = &v40[OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults + 8];
  }

  v24 = [objc_opt_self() configurationWithFont:v22 scale:*v23];
  v25 = [v40 imageView];
  if (!v25)
  {
LABEL_14:
    v32 = 0;
    v27 = 0;
    goto LABEL_16;
  }

  v26 = v25;
  v27 = [v25 image];

  if (v27)
  {
    v28 = [v27 imageByApplyingSymbolConfiguration_];

    if (v28)
    {
      v27 = v28;
      [v18 lineHeight];
      v30 = v29;
      [v18 ascender];
      v38 = [v27 imageWithBaselineOffsetFromBottom_];

      v32 = v38;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v32 = 0;
LABEL_16:
  v39 = v32;
  [v40 setImage_forState_];
}

id sub_20B823AD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChevronButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_20B823C3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_20B823C84(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_20B823CE8(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6 >> 1 != 0xFFFFFFFF)
  {
    return sub_20B81F7A8(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

id sub_20B823CFC@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.62745098 green:0.62745098 blue:0.62745098 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v4 = *MEMORY[0x277D76918];
  *a1 = v2;
  a1[1] = 1;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = v4;
  a1[6] = 0x90100000000;
  a1[7] = 0;
  v5 = MEMORY[0x277D84FA0];
  a1[8] = 1;
  a1[9] = v5;

  return v4;
}

void sub_20B823DD8()
{
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_contentPadding);
  v2 = *(MEMORY[0x277D768C8] + 16);
  *v1 = *MEMORY[0x277D768C8];
  v1[1] = v2;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_defaults);
  sub_20B823CFC(v9);
  v4 = v9[3];
  v3[2] = v9[2];
  v3[3] = v4;
  v3[4] = v9[4];
  v5 = v9[1];
  *v3 = v9[0];
  v3[1] = v5;
  v6 = v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_layout;
  strcpy((v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_layout), "chevron.right");
  *(v6 + 14) = -4864;
  strcpy((v6 + 16), "chevron.left");
  *(v6 + 29) = 0;
  *(v6 + 30) = -5120;
  *(v6 + 32) = 0x4000000000000000;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_fontDescriptorOverride;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = xmmword_20C15C6B0;
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI13ChevronButton_symbolScaleOverride;
  *v8 = 0;
  *(v8 + 8) = 1;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B823F04()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_20C132EE4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_identifier, v5, v7);
  v10 = sub_20C132EA4();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_lazyLockupFetcher);

  v15 = sub_20C02F3E0(v14, v13, 0, 0);

  if (*(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title + 8))
  {
    v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title);
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title + 8);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  v40 = 0uLL;
  LOBYTE(v41) = 1;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  WORD4(v42) = 128;
  v43 = 0uLL;
  *&v44 = v10;
  *(&v44 + 1) = v12;
  v45 = 0uLL;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = v15;
  v47 = MEMORY[0x277D84F90];
  *&v48 = 0;
  *(&v48 + 1) = v16;
  *v49 = v17;
  *&v49[8] = xmmword_20C150190;
  nullsub_1(&v40);
  v18 = v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row;
  v19 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 144);
  v50[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 128);
  v50[9] = v19;
  v51 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 160);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 80);
  v50[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 64);
  v50[5] = v20;
  v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 112);
  v50[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 96);
  v50[7] = v21;
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 16);
  v50[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row);
  v50[1] = v22;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 48);
  v50[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 32);
  v50[3] = v23;
  v24 = *v49;
  *(v18 + 128) = v48;
  *(v18 + 144) = v24;
  *(v18 + 160) = *&v49[16];
  v25 = v45;
  *(v18 + 64) = v44;
  *(v18 + 80) = v25;
  v26 = v47;
  *(v18 + 96) = v46;
  *(v18 + 112) = v26;
  v27 = v41;
  *v18 = v40;
  *(v18 + 16) = v27;
  v28 = v43;
  *(v18 + 32) = v42;
  *(v18 + 48) = v28;

  sub_20B520158(v50, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v31 = sub_20B61D028(v1, result);
      if (v32)
      {
        v34 = v31;
        v35 = v32;
        v36 = v33;
        sub_20B5E2E18();
        *v4 = sub_20C13D374();
        v37 = v39;
        (*(v39 + 104))(v4, *MEMORY[0x277D85200], v2);
        v38 = sub_20C13C584();
        result = (*(v37 + 8))(v4, v2);
        if ((v38 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620694(v34, v35, v36, v1, 0, v30);
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

uint64_t sub_20B8242C4()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences);
    __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 48), *(*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 72));

    v2 = v0;
    sub_20B5E107C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
    v3 = swift_allocObject();
    v4 = MEMORY[0x277D83B88];
    *(v3 + 16) = xmmword_20C14F980;
    v5 = MEMORY[0x277D83C10];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v6 = sub_20C13C994();
    v8 = v7;

    v9 = (v2 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title);
    *v9 = v6;
    v9[1] = v8;
  }

  else
  {
    v10 = (v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title);
    *v10 = 0;
    v10[1] = 0;
  }
}

uint64_t sub_20B824420()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - v3;
  v5 = sub_20C136594();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences + 8);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v9 + 16);

    if (v11)
    {
      v18[1] = v0;
      v19 = v4;
      v20 = v2;
      v21 = v1;
      v22 = v10;
      sub_20BB5D604(0, v11, 0);
      v10 = v22;
      v18[0] = v9;
      v12 = v9 + 40;
      do
      {

        sub_20C1367E4();
        sub_20C136554();

        v22 = v10;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_20BB5D604(v13 > 1, v14 + 1, 1);
          v10 = v22;
        }

        *(v10 + 16) = v14 + 1;
        (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v5);
        v12 += 16;
        --v11;
      }

      while (v11);

      v2 = v20;
      v1 = v21;
      v4 = v19;
    }

    else
    {
    }
  }

  sub_20C02BC6C(v10, v4);

  v15 = sub_20C137CB4();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  v15(sub_20B5DF6DC, v16);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_20B824720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v54 = a1;
  v5 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v5);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C132EE4();
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135214();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_20C132E94();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C133814();
  if (*(v16 + 16) && (v17 = sub_20B65B0BC(a4), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v20 = v19[1];
    v50[1] = *v19;
    v50[0] = v20;

    sub_20C135C04();
    sub_20C133894();
    (*(v12 + 8))(v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    *(inited + 32) = 9;
    sub_20C133804();
    v22 = sub_20C132EA4();
    v24 = v23;
    (*(v51 + 8))(v10, v8);
    v58 = v22;
    v59 = v24;
    sub_20C13DC04();
    *(inited + 80) = 10;
    v58 = sub_20C132D84();
    sub_20C13DC04();
    *(inited + 128) = 13;
    v25 = sub_20C1367E4();
    v27 = v26;

    v58 = v25;
    v59 = v27;
    sub_20C13DC04();
    v28 = sub_20B6B29D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762260);
    swift_arrayDestroy();
    v29 = *MEMORY[0x277D52B40];
    v30 = sub_20C136664();
    v31 = *(v30 - 8);
    (*(v31 + 104))(v7, v29, v30);
    (*(v31 + 56))(v7, 0, 1, v30);
    v32 = v5[5];
    v33 = *MEMORY[0x277D51450];
    v34 = sub_20C134F24();
    (*(*(v34 - 8) + 104))(&v7[v32], v33, v34);
    v35 = v5[6];
    v36 = sub_20C132C14();
    (*(*(v36 - 8) + 56))(&v7[v35], 1, 1, v36);
    v37 = v5[8];
    v38 = sub_20C135ED4();
    (*(*(v38 - 8) + 56))(&v7[v37], 1, 1, v38);
    v39 = v5[10];
    v40 = *MEMORY[0x277D51768];
    v41 = sub_20C1352E4();
    (*(*(v41 - 8) + 104))(&v7[v39], v40, v41);
    v42 = v5[11];
    v43 = sub_20C136E94();
    (*(*(v43 - 8) + 56))(&v7[v42], 1, 1, v43);
    v44 = &v7[v5[7]];
    v45 = v55;
    *v44 = v54;
    *(v44 + 1) = v45;
    v46 = &v7[v5[9]];
    *v46 = 0;
    *(v46 + 1) = 0;
    *&v7[v5[12]] = v28;
    v47 = v56;
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_20BFA0330(v47, v7, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B828A08(v7, type metadata accessor for ShelfMetricAction);
    return (*(v52 + 8))(v57, v53);
  }

  else
  {
  }
}

uint64_t sub_20B824DF8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanClient);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan, &unk_27C76A970);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem, &qword_27C766598);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);

  return v0;
}

uint64_t sub_20B824F54()
{
  sub_20B824DF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanAlternativesShelf()
{
  result = qword_27C766580;
  if (!qword_27C766580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B825000()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B82517C(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v1 <= 0x3F)
    {
      sub_20B82517C(319, &qword_27C766590, type metadata accessor for WorkoutPlanSwappableItem);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20B82517C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B8251D0(uint64_t a1)
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
  *(v14 + 16) = sub_20B827D00;
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

uint64_t sub_20B825494(uint64_t a1, uint64_t a2)
{
  v73 = a1;
  v74 = a2;
  v61 = sub_20C132EE4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C133954();
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v58 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v4 - 8);
  v62 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v58 - v7;
  v8 = sub_20C1352E4();
  v75 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_20C134F24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - v22;
  v24 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C136664();
  v28 = *(*(v27 - 8) + 56);
  v64 = v23;
  v28(v23, 1, 1, v27);
  v29 = *MEMORY[0x277D51450];
  v65 = v18;
  v30 = v18;
  v31 = v62;
  v32 = *(v30 + 104);
  v66 = v20;
  v68 = v17;
  v32(v20, v29, v17);
  v33 = sub_20C132C14();
  v34 = *(*(v33 - 8) + 56);
  v69 = v16;
  v34(v16, 1, 1, v33);
  v35 = sub_20C135ED4();
  v36 = *(*(v35 - 8) + 56);
  v70 = v13;
  v37 = v13;
  v38 = v63;
  v36(v37, 1, 1, v35);
  v39 = *MEMORY[0x277D51778];
  v40 = *(v75 + 104);
  v71 = v10;
  v72 = v8;
  v40(v10, v39, v8);
  v41 = sub_20C136E94();
  (*(*(v41 - 8) + 56))(v76, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v43 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
  v44 = v77;
  swift_beginAccess();
  sub_20B52F9E8(v44 + v43, v31, &unk_27C76A970);
  v45 = v67;
  if ((*(v67 + 48))(v31, 1, v38))
  {
    sub_20B520158(v31, &unk_27C76A970);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = v58;
    (*(v45 + 16))(v58, v31, v38);
    sub_20B520158(v31, &unk_27C76A970);
    v49 = v59;
    sub_20C133804();
    (*(v45 + 8))(v48, v38);
    v46 = sub_20C132EA4();
    v47 = v50;
    (*(v60 + 8))(v49, v61);
  }

  v78 = v46;
  v79 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  v51 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20B5DF134(v64, v26, &unk_27C7622E0);
  (*(v65 + 32))(&v26[v24[5]], v66, v68);
  sub_20B5DF134(v69, &v26[v24[6]], &unk_27C7617F0);
  v52 = &v26[v24[7]];
  v53 = v74;
  *v52 = v73;
  *(v52 + 1) = v53;
  sub_20B5DF134(v70, &v26[v24[8]], &unk_27C7621D0);
  v54 = &v26[v24[9]];
  *v54 = 0;
  *(v54 + 1) = 0;
  (*(v75 + 32))(&v26[v24[10]], v71, v72);
  sub_20B5DF134(v76, &v26[v24[11]], &unk_27C76BC90);
  *&v26[v24[12]] = v51;
  v55 = v77;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    sub_20BFA0330(v55, v26, Strong);
    swift_unknownObjectRelease();
  }

  return sub_20B828A08(v26, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B825D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v30 = a2;
  v31 = a4;
  v7 = sub_20C135C54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C133954();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v28 - v15;
  v29 = &v28 - v15;
  v17 = sub_20C13CDF4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = a3;
  v20 = v10;
  (*(v11 + 16))(v13, v19, v10);
  v21 = v7;
  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v7);
  v22 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v23 = (v12 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v18;
  (*(v11 + 32))(&v24[v22], v13, v20);
  (*(v8 + 32))(&v24[v23], v28, v21);
  v25 = &v24[(v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;

  sub_20B614F94(0, 0, v29, &unk_20C15CA30, v24);
}

uint64_t sub_20B826064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = sub_20C132EE4();
  v8[18] = v9;
  v8[19] = *(v9 - 8);
  v8[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B826164, 0, 0);
}

uint64_t sub_20B826164()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanClient, (v0 + 2));

    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    sub_20C133804();
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_20B8263C8;
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[16];
    v8 = v0[17];
    v9 = v0[15];

    return MEMORY[0x2821ADF10](v5, v6, v9, v7, v8, v2, v3);
  }

  else
  {
    v10 = v0[21];
    v11 = sub_20C133954();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_20B520158(v10, &unk_27C76A970);
    swift_beginAccess();
    v12 = swift_weakLoadStrong();
    v0[24] = v12;
    if (v12)
    {
      sub_20C13CDA4();
      v0[25] = sub_20C13CD94();
      v14 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B82669C, v14, v13);
    }

    else
    {

      v15 = v0[1];

      return v15();
    }
  }
}

uint64_t sub_20B8263C8()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_20B8267AC;
  }

  else
  {
    v5 = sub_20B826538;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20B826538()
{
  v1 = v0[21];
  v2 = sub_20C133954();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_20B520158(v1, &unk_27C76A970);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[25] = sub_20C13CD94();
    v5 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B82669C, v5, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_20B82669C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];

  sub_20B824720(v2, v1, v4, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 248))(v6, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_20B8267AC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B826824()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B82687C();
  }

  return result;
}

uint64_t sub_20B82687C()
{
  v53 = sub_20C132EE4();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v50 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_20C133954();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v50 - v5;
  v6 = sub_20C1352E4();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_20C134F24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *MEMORY[0x277D52B40];
  v24 = sub_20C136664();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v19, v23, v24);
  v26 = *(v25 + 56);
  v56 = v19;
  v26(v19, 0, 1, v24);
  v27 = *MEMORY[0x277D51468];
  v59 = v14;
  v28 = *(v14 + 104);
  v58 = v16;
  v60 = v13;
  v28(v16, v27, v13);
  v29 = sub_20C132C14();
  v30 = *(*(v29 - 8) + 56);
  v61 = v12;
  v30(v12, 1, 1, v29);
  v31 = sub_20C135ED4();
  v32 = v54;
  (*(*(v31 - 8) + 56))(v62, 1, 1, v31);
  v33 = v55;
  (*(v64 + 104))(v63, *MEMORY[0x277D51768], v65);
  v34 = sub_20C136E94();
  (*(*(v34 - 8) + 56))(v66, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v36 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
  v37 = v67;
  swift_beginAccess();
  v38 = v37 + v36;
  v39 = v57;
  sub_20B52F9E8(v38, v57, &unk_27C76A970);
  if ((*(v33 + 48))(v39, 1, v32))
  {
    sub_20B520158(v39, &unk_27C76A970);
    v40 = 0;
    v41 = 0;
  }

  else
  {
    v42 = v50;
    (*(v33 + 16))(v50, v39, v32);
    sub_20B520158(v39, &unk_27C76A970);
    v43 = v51;
    sub_20C133804();
    (*(v33 + 8))(v42, v32);
    v40 = sub_20C132EA4();
    v41 = v44;
    (*(v52 + 8))(v43, v53);
  }

  v68 = v40;
  v69 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830);
  sub_20B82898C();
  sub_20C13DC04();
  v45 = sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260);
  sub_20B5DF134(v56, v22, &unk_27C7622E0);
  (*(v59 + 32))(&v22[v20[5]], v58, v60);
  sub_20B5DF134(v61, &v22[v20[6]], &unk_27C7617F0);
  *&v22[v20[7]] = xmmword_20C14F9A0;
  sub_20B5DF134(v62, &v22[v20[8]], &unk_27C7621D0);
  v46 = &v22[v20[9]];
  *v46 = 0;
  *(v46 + 1) = 0;
  (*(v64 + 32))(&v22[v20[10]], v63, v65);
  sub_20B5DF134(v66, &v22[v20[11]], &unk_27C76BC90);
  *&v22[v20[12]] = v45;
  v47 = v67;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0330(v47, v22, Strong);
    swift_unknownObjectRelease();
  }

  return sub_20B828A08(v22, type metadata accessor for ShelfMetricAction);
}

uint64_t sub_20B82715C()
{
  v1 = type metadata accessor for WorkoutPlanSwappableItem();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766598);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v8, v7, &qword_27C766598);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &qword_27C766598);
  }

  else
  {
    sub_20B828924(v7, v4, type metadata accessor for WorkoutPlanSwappableItem);
    sub_20B520158(v7, &qword_27C766598);
    v10 = *(v4 + 3);
    v11 = *(v4 + 4);
    v12 = v4[40];
    sub_20B760050(v10, v11, v4[40]);
    sub_20B828A08(v4, type metadata accessor for WorkoutPlanSwappableItem);
    if (v12 != 255 && (v12 & 1) == 0)
    {
      sub_20B584078(v10, v11, v12);
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 48), *(*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 72));
  return sub_20B5E107C();
}

uint64_t sub_20B8273CC()
{
  v1 = v0;
  v2 = sub_20C133154();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x28223BE20](v2);
  v58 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C132E94();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135C54();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutPlanSwappableItem();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766598);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v51 - v14;
  v56 = sub_20C135214();
  v65 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v51 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - v20;
  v22 = sub_20C133954();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v26, v21, &unk_27C76A970);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    (*(v23 + 32))(v25, v21, v22);
    v29 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem;
    swift_beginAccess();
    sub_20B52F9E8(v1 + v29, v15, &qword_27C766598);
    v31 = v66 + 48;
    v30 = *(v66 + 48);
    if (v30(v15, 1, v67))
    {
      (*(v23 + 8))(v25, v22);
      v27 = &qword_27C766598;
      v28 = v15;
      goto LABEL_5;
    }

    v51 = v25;
    v33 = v63;
    sub_20B828924(v15, v63, type metadata accessor for WorkoutPlanSwappableItem);
    sub_20B520158(v15, &qword_27C766598);
    v34 = *(v67 + 28);
    v66 = v31;
    v35 = v54;
    v36 = v55;
    (*(v54 + 16))(v8, v33 + v34, v55);
    sub_20B828A08(v33, type metadata accessor for WorkoutPlanSwappableItem);
    v37 = v52;
    sub_20C135C04();
    v38 = v1;
    (*(v35 + 8))(v8, v36);
    v39 = v56;
    (*(v65 + 32))(v64, v37, v56);
    v40 = v53;
    sub_20B52F9E8(v38 + v29, v53, &qword_27C766598);
    if (v30(v40, 1, v67))
    {
      v41 = v51;
      sub_20B520158(v40, &qword_27C766598);
    }

    else
    {
      v41 = v51;
      v47 = v63;
      sub_20B828924(v40, v63, type metadata accessor for WorkoutPlanSwappableItem);
      sub_20B520158(v40, &qword_27C766598);
      v48 = *(v47 + 24);
      v49 = *(v47 + 32);
      v50 = *(v47 + 40);
      sub_20B760050(v48, v49, *(v47 + 40));
      sub_20B828A08(v47, type metadata accessor for WorkoutPlanSwappableItem);
      if (v50 != 255)
      {
        if (v50)
        {
          if (v48 == 2)
          {
            v42 = v57;
            v43 = v64;
            sub_20C133894();
            v44 = v58;
            sub_20C133014();
            sub_20BAB24B8(v42, v44);
            goto LABEL_10;
          }
        }

        else
        {
          sub_20B584078(v48, v49, v50);
        }
      }
    }

    v42 = v57;
    v43 = v64;
    sub_20C133894();
    v44 = v58;
    sub_20C133014();
    sub_20BAB1F7C(v42, v44);
LABEL_10:
    v46 = v45;
    (*(v61 + 8))(v44, v62);
    (*(v59 + 8))(v42, v60);
    (*(v65 + 8))(v43, v39);
    (*(v23 + 8))(v41, v22);
    return v46;
  }

  v27 = &unk_27C76A970;
  v28 = v21;
LABEL_5:
  sub_20B520158(v28, v27);
  return 0;
}

uint64_t sub_20B827BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B827C44@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
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

uint64_t sub_20B827D10(uint64_t a1)
{
  v112 = a1;
  v2 = type metadata accessor for PageAlertAction();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  MEMORY[0x28223BE20](v2);
  v111 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v98 - v6;
  v7 = type metadata accessor for WorkoutPlanSwappableItem();
  v118 = *(v7 - 8);
  v119 = v7;
  MEMORY[0x28223BE20](v7);
  v114 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766598);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v98 - v10;
  v12 = sub_20C135C54();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v107 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v113 = &v98 - v15;
  MEMORY[0x28223BE20](v16);
  v115 = &v98 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v98 - v19;
  v21 = sub_20C133954();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v106 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v98 - v25;
  v27 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
  swift_beginAccess();
  v120 = v1;
  v28 = v1 + v27;
  v29 = v21;
  v30 = v22;
  sub_20B52F9E8(v28, v20, &unk_27C76A970);
  if ((*(v22 + 48))(v20, 1, v29) == 1)
  {
    return sub_20B520158(v20, &unk_27C76A970);
  }

  v32 = *(v22 + 32);
  v32(v26, v20, v29);
  v33 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem;
  v34 = v120;
  swift_beginAccess();
  sub_20B52F9E8(v34 + v33, v11, &qword_27C766598);
  v35 = v119;
  v36 = v26;
  if ((*(v118 + 48))(v11, 1, v119))
  {
    (*(v30 + 8))(v26, v29);
    return sub_20B520158(v11, &qword_27C766598);
  }

  v103 = v32;
  v104 = v30;
  v118 = v29;
  v37 = v114;
  sub_20B828924(v11, v114, type metadata accessor for WorkoutPlanSwappableItem);
  sub_20B520158(v11, &qword_27C766598);
  v39 = v116;
  v38 = v117;
  v40 = v37 + v35[7];
  v41 = v113;
  v119 = *(v116 + 16);
  (v119)(v113, v40, v117);
  sub_20B828A08(v37, type metadata accessor for WorkoutPlanSwappableItem);
  v42 = *(v39 + 32);
  v43 = v115;
  v42(v115, v41, v38);
  v44 = *(v120 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences + 8);
  if (!v44)
  {
    (*(v39 + 8))(v43, v38);
    return (*(v104 + 8))(v36, v118);
  }

  v45 = *(v44 + 16);

  if (v45 <= v112)
  {

    (*(v116 + 8))(v115, v117);
    return (*(v104 + 8))(v36, v118);
  }

  v102 = v42;
  v113 = (v39 + 32);
  v114 = v36;
  v46 = v118;
  if (v112 < 0)
  {
    __break(1u);
  }

  else
  {

    v47 = sub_20C1367E4();
    v101 = v47;
    v49 = v48;
    v112 = v48;

    v50 = v120;
    sub_20B825494(v47, v49);
    __swift_project_boxed_opaque_existential_1((*(v50 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 48), *(*(v50 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) + 72));
    v100 = sub_20B5E107C();
    v99 = v51;
    v52 = v104 + 16;
    v53 = v106;
    (*(v104 + 16))(v106, v114, v46);
    v54 = v107;
    v55 = v117;
    (v119)(v107, v115, v117);
    v56 = v46;
    v57 = (*(v52 + 64) + 24) & ~*(v52 + 64);
    v58 = (v105 + *(v116 + 80) + v57) & ~*(v116 + 80);
    v59 = (v13 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 16) = v50;
    v103(v60 + v57, v53, v56);
    v102(v60 + v58, v54, v55);
    v61 = (v60 + v59);
    v62 = v112;
    *v61 = v101;
    v61[1] = v62;

    v63 = v110;
    sub_20C132ED4();
    v64 = v108;
    v65 = (v63 + v108[6]);
    v66 = v99;
    *v65 = v100;
    v65[1] = v66;
    *(v63 + v64[5]) = 0;
    v67 = (v63 + v64[7]);
    *v67 = sub_20B828814;
    v67[1] = v60;
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v69 = [objc_opt_self() bundleForClass_];
    v70 = sub_20C132964();
    v72 = v71;

    v73 = swift_allocObject();
    swift_weakInit();
    v74 = v111;
    sub_20C132ED4();
    v75 = (v74 + v64[6]);
    *v75 = v70;
    v75[1] = v72;
    *(v74 + v64[5]) = 2;
    v76 = (v74 + v64[7]);
    *v76 = sub_20B82891C;
    v76[1] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
    v77 = *(v109 + 72);
    v78 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_20C14F320;
    v80 = v79 + v78;
    sub_20B828924(v74, v80, type metadata accessor for PageAlertAction);
    sub_20B828924(v63, v80 + v77, type metadata accessor for PageAlertAction);
    v81 = sub_20B82715C();
    v83 = v82;
    v84 = sub_20B8273CC();
    v86 = v85;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v88 = Strong;
      type metadata accessor for DefaultPageAlertPresenter();
      v89 = swift_allocObject();
      *(v89 + 24) = 0;
      swift_unknownObjectWeakInit();
      v90 = MEMORY[0x277D84F90];
      *(v89 + 32) = v79;
      *(v89 + 40) = v90;
      *(v89 + 48) = v81;
      *(v89 + 56) = v83;
      *(v89 + 64) = v84;
      *(v89 + 72) = v86;
      *(v89 + 80) = 1;
      *(v89 + 88) = 0;
      v91 = v88 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v92 = *(v91 + 8);
        ObjectType = swift_getObjectType();
        (*(v92 + 224))(v88, v89, &off_2822DD358, ObjectType, v92);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v95 = v115;
    v94 = v116;
    v96 = v118;
    v97 = v114;
    sub_20B828A08(v74, type metadata accessor for PageAlertAction);
    sub_20B828A08(v63, type metadata accessor for PageAlertAction);
    (*(v94 + 8))(v95, v117);
    return (*(v104 + 8))(v97, v96);
  }

  return result;
}

uint64_t sub_20B828814(uint64_t a1)
{
  v3 = *(sub_20C133954() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_20C135C54() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_20B825D64(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_20B828924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20B82898C()
{
  result = qword_27C7665A0;
  if (!qword_27C7665A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7665A0);
  }

  return result;
}

uint64_t sub_20B828A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B828A68(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C133954() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C135C54() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20B52A9D4;

  return sub_20B826064(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_20B828C08()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlan;
  v2 = sub_20C133954();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_swappableItem;
  v4 = type metadata accessor for WorkoutPlanSwappableItem();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_alternateWorkoutReferences);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_title);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_row;
  sub_20B5D8060(v19);
  v8 = v19[9];
  *(v7 + 128) = v19[8];
  *(v7 + 144) = v8;
  *(v7 + 160) = v20;
  v9 = v19[5];
  *(v7 + 64) = v19[4];
  *(v7 + 80) = v9;
  v10 = v19[7];
  *(v7 + 96) = v19[6];
  *(v7 + 112) = v10;
  v11 = v19[1];
  *v7 = v19[0];
  *(v7 + 16) = v11;
  v12 = v19[3];
  *(v7 + 32) = v19[2];
  *(v7 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B52E424(&v18, v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_workoutPlanStringBuilder) = v18;
  type metadata accessor for ShelfLazyLockupFetcher();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 152) = MEMORY[0x277D84F90];
  v15 = sub_20B6B0C04(v14);
  v16 = MEMORY[0x277D84FA0];
  *(v13 + 160) = v15;
  *(v13 + 168) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  *(v13 + 136) = 5;
  *(v13 + 144) = 47;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanAlternativesShelf_lazyLockupFetcher) = v13;
  return v0;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_20B828EBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20B828F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

char *sub_20B829038(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_contentUnavailableView;
  v12 = [objc_opt_self() smu_contentUnavailableView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for ContentUnavailableCell();
  v13 = objc_msgSendSuper2(&v36, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = [v13 contentView];
  v15 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_contentUnavailableView;
  [v14 addSubview_];

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C14FE90;
  v18 = [*&v13[v15] leadingAnchor];
  v19 = [v13 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v17 + 32) = v21;
  v22 = [*&v13[v15] trailingAnchor];
  v23 = [v13 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v17 + 40) = v25;
  v26 = [*&v13[v15] topAnchor];
  v27 = [v13 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v17 + 48) = v29;
  v30 = [*&v13[v15] bottomAnchor];
  v31 = [v13 contentView];

  v32 = [v31 bottomAnchor];
  v33 = [v30 constraintEqualToAnchor_];

  *(v17 + 56) = v33;
  sub_20B5E29D0();
  v34 = sub_20C13CC54();

  [v16 activateConstraints_];

  return v13;
}

id sub_20B829628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentUnavailableCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ContentUnavailableCell()
{
  result = qword_27C7665C8;
  if (!qword_27C7665C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B829720()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20B8297C4(unint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_20B829A24(a1);
  [objc_msgSend(a2 container)];
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();
  v16 = v13 - a4 - a6;
  v17 = v15 - a3 - a5;
  LODWORD(v18) = 1148846080;
  LODWORD(v19) = 1112014848;
  [v6 systemLayoutSizeFittingSize:v16 withHorizontalFittingPriority:*(MEMORY[0x277D76C80] + 8) verticalFittingPriority:{v18, v19}];
  if (v20 > v17)
  {
    v17 = v20;
  }

  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension_];
  v23 = [v21 absoluteDimension_];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  return v24;
}

uint64_t sub_20B829918(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B829964@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8299BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B829A24(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0xE)
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x40);
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x48);
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x58);
    v12 = *(v7 + 96);
    v13 = *&v1[OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_contentUnavailableView];
    if (v8)
    {
      v14 = v12;

      v15 = v9;

      v16 = sub_20C13C914();

      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v29 = v12;

      v30 = v9;

      v16 = 0;
      if (v10)
      {
LABEL_4:
        v17 = sub_20C13C914();

        if (v11)
        {
LABEL_5:
          v33 = sub_20C13C914();

LABEL_12:
          [v13 smu:v32 updateWithType:v16 text:v17 secondaryText:v9 image:v33 buttonTitle:v12 buttonPrimaryAction:v32];

          v31 = v33;

          return;
        }

LABEL_11:
        v33 = 0;
        goto LABEL_12;
      }
    }

    v17 = 0;
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  sub_20C13B534();

  v18 = v1;
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1D4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = a1;
    v35 = v33;
    *v21 = 138543618;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2082;
    v23 = sub_20B5F66D0();
    v24 = v18;
    v25 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v23);
    v27 = sub_20B51E694(v25, v26, &v35);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_20B517000, v19, v20, "Attempted to configure %{public}@ with item: %{public}s", v21, 0x16u);
    sub_20B520158(v22, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v22, -1, -1);
    v28 = v33;
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v28, -1, -1);
    MEMORY[0x20F2F6A40](v21, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

void sub_20B829D98()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI22ContentUnavailableCell_contentUnavailableView;
  v4 = [objc_opt_self() smu_contentUnavailableView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t GymKitConnection.isGymKitStart.getter()
{
  sub_20C134BF4();
  sub_20B682FCC();
  sub_20B683020();
  if (sub_20C133C04())
  {
    v0 = 1;
  }

  else
  {
    sub_20C134BF4();
    v0 = sub_20C133C04();
  }

  return v0 & 1;
}

uint64_t sub_20B829F84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v63 - v4;
  v5 = sub_20C1388F4();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v63 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v9 - 8);
  v67 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v63 - v12;
  v77 = sub_20C1333A4();
  v69 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v21 = sub_20C132C14();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v74 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v63 - v25;
  v27 = sub_20C132704();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132684();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_20B520158(v26, &qword_27C7665D8);
LABEL_9:
    v34 = a1;
    goto LABEL_10;
  }

  (*(v28 + 32))(v30, v26, v27);
  v31 = sub_20C1326A4();
  if (!v32)
  {
    (*(v28 + 8))(v30, v27);
    goto LABEL_9;
  }

  v33 = MEMORY[0x20F2F1C80](v31);
  (*(v28 + 8))(v30, v27);
  if (v33 <= 1u)
  {
    v34 = a1;
    if (v33)
    {
      sub_20C132AE4();
      if (!v43)
      {
        goto LABEL_10;
      }

      (*(v22 + 32))(v78, a1, v21);
      type metadata accessor for NavigationResource();
    }

    else
    {
      URL.decodedOpenLink.getter(v20);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        sub_20B520158(v20, &unk_27C7617F0);
        goto LABEL_10;
      }

      v44 = *(v22 + 32);
      v63 = v22 + 32;
      v64 = v44;
      v45 = v74;
      v44(v74, v20, v21);
      v46 = *MEMORY[0x277D51860];
      v47 = sub_20C1352F4();
      v48 = *(v47 - 8);
      v49 = v66;
      (*(v48 + 104))(v66, v46, v47);
      (*(v48 + 56))(v49, 0, 1, v47);
      v50 = v65;
      (*(v22 + 16))(v65, v45, v21);
      (*(v22 + 56))(v50, 0, 1, v21);
      v51 = sub_20C135ED4();
      (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
      v52 = sub_20C136914();
      (*(*(v52 - 8) + 56))(v68, 1, 1, v52);
      v53 = v76;
      sub_20C133384();
      v54 = v69;
      (*(v69 + 16))(v75, v53, v77);
      v55 = v70;
      sub_20C134F94();
      v56 = sub_20C134FB4();
      (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      *(inited + 32) = 0x79546C6C65737075;
      *(inited + 40) = 0xEA00000000006570;
      v79 = 0x636972656E6567;
      v80 = 0xE700000000000000;
      sub_20C13DC04();
      sub_20B6B3A3C(inited);
      swift_setDeallocating();
      sub_20B520158(inited + 32, &unk_27C765CF0);
      sub_20B531620(MEMORY[0x277D84F90]);
      v58 = v71;
      sub_20C1388E4();
      (*(v22 + 8))(v34, v21);
      (*(v54 + 8))(v76, v77);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
      v60 = *(v59 + 48);
      v61 = *(v59 + 64);
      v62 = v78;
      v64(v78, v74, v21);
      (*(v72 + 32))(v62 + v60, v58, v73);
      *(v62 + v61) = 0;
      type metadata accessor for NavigationResource();
    }

    return swift_storeEnumTagMultiPayload();
  }

  v34 = a1;
  if (v33 == 2)
  {
    v38 = sub_20C132AF4();
    if (!v39)
    {
      goto LABEL_10;
    }

    v40 = v38;
    v41 = v39;
    (*(v22 + 8))(a1, v21);
    v42 = v78;
    *v78 = v40;
    v42[1] = v41;
    type metadata accessor for WorkoutNavigationResource();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for NavigationResource();
    return swift_storeEnumTagMultiPayload();
  }

  if (v33 == 3)
  {
    (*(v22 + 8))(a1, v21);
    type metadata accessor for NavigationResource();
    v35 = v78;
    *v78 = 0;
    v35[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

LABEL_10:
  sub_20B5D9BA8();
  swift_allocError();
  *v36 = 14;
  swift_willThrow();
  return (*(v22 + 8))(v34, v21);
}

uint64_t sub_20B82AA3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_20B82AAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13AC94();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B5EC5BC(v5);
    v10 = v1[5];
    v11 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
    return (*(v11 + 8))(v10, v11);
  }

  else
  {
    v37 = v6;
    v38 = a1;
    v36 = v7;
    (*(v7 + 32))(v9, v5, v6);
    v35 = v9;
    v13 = sub_20C136B34();
    v14 = v13;
    v15 = v13 + 56;
    v16 = 1 << *(v13 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v13 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    v39 = MEMORY[0x277D84F90];
    if (!v18)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v22 = *(v14 + 48) + 24 * (v21 | (v20 << 6));
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v42 = *v22;
        v23 = v42;
        v43 = v24;
        v44 = v25;
        sub_20B6A6418(v42, v24, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F00);
        sub_20C133BB4();
        v26 = MEMORY[0x20F2EB880](v40, v41);
        result = sub_20B583F4C(v23, v24, v25);
        if (v26 != 3)
        {
          break;
        }

        if (!v18)
        {
          goto LABEL_8;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC05D00(0, *(v39 + 2) + 1, 1, v39);
        v39 = result;
      }

      v29 = *(v39 + 2);
      v28 = *(v39 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v34 = v29 + 1;
        result = sub_20BC05D00((v28 > 1), v29 + 1, 1, v39);
        v30 = v34;
        v39 = result;
      }

      v31 = v39;
      *(v39 + 2) = v30;
      v31[v29 + 32] = v26;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v27 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v27 >= v19)
      {

        v32 = sub_20B716190(v39);

        *(swift_allocObject() + 16) = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665E0);
        sub_20C137CA4();
        return (*(v36 + 8))(v35, v37);
      }

      v18 = *(v15 + 8 * v27);
      ++v20;
      if (v18)
      {
        v20 = v27;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_20B82AE90()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B82AEC0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_layout];
  *v11 = xmmword_20C15CBA0;
  *(v11 + 1) = xmmword_20C15CBB0;
  __asm { FMOV            V1.2D, #4.0 }

  *(v11 + 2) = xmmword_20C15CBC0;
  *(v11 + 3) = _Q1;
  *(v11 + 4) = xmmword_20C151BD0;
  *(v11 + 10) = 0x3FC999999999999ALL;
  v17 = &v4[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
  v18 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v19 = qword_27C760820;
  v20 = v18;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&qword_27C79ACA0;
  [v20 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  [v20 setClipsToBounds_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  *v17 = v20;
  *(v17 + 1) = &off_2822B63E8;
  v22 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  [v23 setAdjustsFontSizeToFitWidth_];
  [v23 setMinimumScaleFactor_];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontForTextStyle_];
  [v25 pointSize];
  v27 = v26;

  v28 = [v24 boldSystemFontOfSize_];
  [v23 setFont_];

  v29 = [objc_opt_self() blackColor];
  [v23 setTextColor_];

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  *&v4[v22] = v23;
  v30 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v31 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_floatingView] = v30;
  [v30 setCornerRadius_];
  [*&v4[v31] setContinuousCornerEnabled_];
  [*&v4[v31] setRoundContentWhenDeselected_];
  [*&v4[v31] setFocusedSizeIncrease_];
  [*&v4[v31] setContentMotionRotation:0.0 translation:{0.0, *(v11 + 6), *(v11 + 7)}];
  v32 = *&v4[v31];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 configurationWithStyle_];
  [v34 setFocusAnimationConfiguration_];

  [*&v4[v31] setShadowVerticalOffset_];
  [*&v4[v31] setShadowOpacity:0 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v31] setShadowOpacity:2 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v31] setShadowOpacity:1 forUserInterfaceStyle:*(v11 + 10)];
  [*&v4[v31] setShadowRadius_];
  v117.receiver = v4;
  v117.super_class = type metadata accessor for TVModalityBrickItemCell();
  v36 = objc_msgSendSuper2(&v117, sel_initWithFrame_, a1, a2, a3, a4);
  v37 = [v36 contentView];
  v38 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_floatingView;
  [v37 addSubview_];

  v39 = &v36[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
  v40 = *&v36[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
  v41 = *&v36[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v43 = *(v41 + 288);
  v44 = v40;
  v43(2, ObjectType, v41);

  result = [*&v36[v38] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = result;
  [result addSubview_];

  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v47 = result;
  v48 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_20C150060;
  v50 = [v36 contentView];
  v51 = [v50 widthAnchor];

  v52 = &v36[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_layout];
  v53 = [v51 constraintEqualToConstant_];

  *(v49 + 32) = v53;
  v54 = [v36 contentView];

  v55 = [v54 heightAnchor];
  v56 = [v55 constraintEqualToConstant_];

  *(v49 + 40) = v56;
  v57 = [*&v36[v48] topAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = result;
  v59 = [result topAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:*v52];
  *(v49 + 48) = v60;
  v61 = [*&v36[v48] leadingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v62 = result;
  v63 = [result leadingAnchor];

  v64 = [v61 constraintEqualToAnchor:v63 constant:v52[2]];
  LODWORD(v65) = 1132068864;
  [v64 setPriority_];
  *(v49 + 56) = v64;
  v66 = [*&v36[v48] leadingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v67 = result;
  v68 = [result leadingAnchor];

  v69 = [v66 constraintGreaterThanOrEqualToAnchor:v68 constant:v52[1]];
  *(v49 + 64) = v69;
  v70 = [*&v36[v48] leadingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v71 = result;
  v72 = [result leadingAnchor];

  v73 = [v70 constraintLessThanOrEqualToAnchor:v72 constant:v52[2]];
  *(v49 + 72) = v73;
  v74 = [*&v36[v48] trailingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v75 = result;
  v76 = [result trailingAnchor];

  v77 = [v74 constraintEqualToAnchor:v76 constant:-v52[2]];
  LODWORD(v78) = 1132068864;
  [v77 setPriority_];
  *(v49 + 80) = v77;
  v79 = [*&v36[v48] trailingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v80 = result;
  v81 = [result trailingAnchor];

  v82 = [v79 constraintLessThanOrEqualToAnchor:v81 constant:-v52[1]];
  *(v49 + 88) = v82;
  v83 = [*&v36[v48] trailingAnchor];
  result = [*&v36[v38] contentView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v84 = result;
  v85 = [result trailingAnchor];

  v86 = [v83 constraintGreaterThanOrEqualToAnchor:v85 constant:-v52[2]];
  *(v49 + 96) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v49;
  v88 = *&v36[v38];
  v89 = *v39;
  result = [v88 contentView];
  if (result)
  {
    v90 = result;
    v92 = *MEMORY[0x277D768C8];
    v91 = *(MEMORY[0x277D768C8] + 8);
    v93 = *(MEMORY[0x277D768C8] + 16);
    v94 = *(MEMORY[0x277D768C8] + 24);
    v95 = [v89 leadingAnchor];
    v96 = [v90 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:v91];

    LODWORD(v98) = 1148846080;
    [v97 setPriority_];
    v116 = v97;
    v99 = [v89 trailingAnchor];
    v100 = [v90 trailingAnchor];
    v101 = [v99 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v102) = 1148846080;
    [v101 &selRef_meterUnit];
    v103 = v101;
    v104 = [v89 topAnchor];
    v105 = [v90 topAnchor];
    v106 = [v104 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v107) = 1148846080;
    [v106 &selRef_meterUnit];
    v108 = [v89 bottomAnchor];
    v109 = [v90 bottomAnchor];
    v110 = [v108 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v111) = 1148846080;
    [v110 setPriority_];
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_20C14FE90;
    *(v112 + 32) = v116;
    *(v112 + 40) = v103;
    *(v112 + 48) = v106;
    *(v112 + 56) = v110;
    v113 = v106;

    *(inited + 40) = v112;
    v114 = objc_opt_self();
    sub_20BE54D20(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
    swift_arrayDestroy();
    sub_20B51C88C(0, &qword_281100500);
    v115 = sub_20C13CC54();

    [v114 activateConstraints_];

    return v36;
  }

LABEL_23:
  __break(1u);
  return result;
}

id sub_20B82BEC4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
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
          v7 = 0x27C79A000;
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
    sub_20B6FFB30(v24, *&v3[*(v7 + 1656)]);

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

  return [*&v3[*(v7 + 1656)] setControlState:v5 animated:a2 & 1];
}

id sub_20B82C14C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
  if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v2 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v23[0] = MEMORY[0x277D84FA0];
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

        sub_20B6FFB30(&v26, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v23[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
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

    v27 = v14;
    sub_20B6FFB30(v23, *&v3[v7[207]]);

    v15 = sub_20B8E9218(v27);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v23);
        v18 = *&v3[v6];
        v19 = v24;
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v20 + 24))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v23);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  return [*&v3[v7[207]] setControlState:v5 withAnimationCoordinator:a2];
}

void sub_20B82C3BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    sub_20B51C88C(0, &qword_27C7654B0);
    v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
    if ((sub_20C13D5F4() & 1) != 0 || [v6 isDescendantOfView_])
    {
      v8 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      v9 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState];
      v10 = v9 | 8;
      if (v9 != (v9 | 8))
      {
        v37 = v9 | 8;
        v38 = v6;
        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v10;
        v11 = [v2 contentView];
        v12 = [v11 subviews];

        sub_20B51C88C(0, &qword_27C762910);
        v13 = sub_20C13CC74();

        v39[0] = MEMORY[0x277D84FA0];
        if (v13 >> 62)
        {
          goto LABEL_30;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
        {
          v15 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x20F2F5430](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v16 = *(v13 + 8 * v15 + 32);
            }

            v7 = (v15 + 1);
            if (__OFADD__(v15, 1))
            {
              break;
            }

            sub_20B6FFB30(&v42, v16);

            ++v15;
            if (v7 == i)
            {
              v23 = v39[0];
              v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
              goto LABEL_32;
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
          ;
        }

        v23 = MEMORY[0x277D84FA0];
LABEL_32:

        v43 = v23;
        sub_20B6FFB30(v39, *&v3[v7[207]]);

        v25 = sub_20B8E9218(v43);

        v26 = *(v25 + 16);
        if (v26)
        {
          v27 = v25 + 32;
          do
          {
            sub_20B51CC64(v27, v39);
            v28 = *&v3[v8];
            v29 = v40;
            v30 = v41;
            __swift_project_boxed_opaque_existential_1(v39, v40);
            (*(v30 + 24))(v28, a2, v29, v30);
            __swift_destroy_boxed_opaque_existential_1(v39);
            v27 += 40;
            --v26;
          }

          while (v26);
        }

        goto LABEL_41;
      }

LABEL_42:
      [*&v3[v7[207]] setControlState:v10 withAnimationCoordinator:a2];

      return;
    }

    v8 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
    v17 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState];
    v10 = v17 & 0xFFFFFFFFFFFFFFF7;
    if (v17 == (v17 & 0xFFFFFFFFFFFFFFF7))
    {
      goto LABEL_42;
    }

    v37 = v17 & 0xFFFFFFFFFFFFFFF7;
    v38 = v6;
    *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v10;
    v18 = [v2 contentView];
    v19 = [v18 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v13 = sub_20C13CC74();

    v39[0] = MEMORY[0x277D84FA0];
    if (v13 >> 62)
    {
      v20 = sub_20C13DB34();
      if (v20)
      {
LABEL_18:
        v21 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x20F2F5430](v21, v13);
          }

          else
          {
            if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v22 = *(v13 + 8 * v21 + 32);
          }

          v7 = (v21 + 1);
          if (__OFADD__(v21, 1))
          {
            goto LABEL_28;
          }

          sub_20B6FFB30(&v42, v22);

          ++v21;
        }

        while (v7 != v20);
        v24 = v39[0];
        v7 = &OBJC_IVAR____TtC9SeymourUI26DurationFilterOptionsShelf_rootModality;
        goto LABEL_38;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_18;
      }
    }

    v24 = MEMORY[0x277D84FA0];
LABEL_38:

    v43 = v24;
    sub_20B6FFB30(v39, *&v3[v7[207]]);

    v31 = sub_20B8E9218(v43);

    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v31 + 32;
      do
      {
        sub_20B51CC64(v33, v39);
        v34 = *&v3[v8];
        v35 = v40;
        v36 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        (*(v36 + 24))(v34, a2, v35, v36);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v33 += 40;
        --v32;
      }

      while (v32);
    }

LABEL_41:

    v10 = v37;
    v6 = v38;
    goto LABEL_42;
  }
}

void sub_20B82C90C()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel);
}

id sub_20B82C98C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVModalityBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVModalityBrickItemCell()
{
  result = qword_27C7665F0;
  if (!qword_27C7665F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B82CAA4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B82CB74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B82CBC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B82CC18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20B82CCAC(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v212 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v196 = &v171 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v197 = &v171 - v7;
  v195 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v171 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v171 - v13;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v206 = *(v209 - 8);
  v15 = *(v206 + 64);
  MEMORY[0x28223BE20](v209);
  v194 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v207 = &v171 - v17;
  v204 = sub_20C1391C4();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v205 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_20C138A64();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v208 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v20 - 8);
  v202 = &v171 - v21;
  v22 = sub_20C13C554();
  v213 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = (&v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = sub_20C137C24();
  v217 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v214 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v25;
  MEMORY[0x28223BE20](v26);
  v218 = &v171 - v27;
  v211 = sub_20C136CD4();
  v28 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v215 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v216 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134014();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v220 = &v171 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v36 == 33)
  {
    v117 = v221;
    v118 = *&v221[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel];
    v119 = sub_20C13C914();
    [v118 setText_];

    v61 = *&v117[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
    if (qword_27C760828 == -1)
    {
LABEL_12:
      v120 = qword_27C79AE50;

      return [v61 setBackgroundColor_];
    }

LABEL_25:
    v170 = v61;
    swift_once();
    v61 = v170;
    goto LABEL_12;
  }

  if (v36 == 32)
  {
    v183 = v14;
    v180 = v15;
    v193 = v28;
    v181 = v11;
    v37 = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v39 = swift_projectBox();
    v40 = v39 + *(v38 + 64);
    v41 = *v40;
    v42 = *(v40 + 8);
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    v45 = *(v40 + 32);
    v46 = *(v40 + 40);
    v186 = v33;
    v47 = *(v33 + 16);
    v187 = v37;
    v47(v220, v39, v37);
    v48 = *&v221[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel];
    v49 = v41;
    v188 = v42;
    v185 = v44;
    v192 = v43;

    v191 = v45;

    v189 = v46;

    v190 = v49;
    v50 = [v49 string];
    if (!v50)
    {
      sub_20C13C954();
      v50 = sub_20C13C914();
    }

    [v48 setText_];

    v51 = v216;
    sub_20C133F04();
    v52 = sub_20C138054();
    v212 = v53;
    v54 = v215;
    sub_20C134E34();
    v55 = v218;
    sub_20C136CB4();
    v56 = sub_20C136CC4();
    v58 = v57;
    sub_20B51C88C(0, &qword_281100530);
    *v24 = sub_20C13D374();
    v59 = v213;
    (*(v213 + 104))(v24, *MEMORY[0x277D85200], v22);
    v60 = sub_20C13C584();
    v61 = (*(v59 + 8))(v24, v22);
    if (v60)
    {
      v63 = *&v221[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
      v62 = *&v221[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v63 setContentMode_];
      if (sub_20BA66C54(v55, v63, v62, 0))
      {
        v65 = v58;
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v182 = v56;
        v67 = v217;
        v68 = *(v217 + 16);
        v178 = v62;
        v69 = v219;
        v175 = v217 + 16;
        v174 = v68;
        v68(v214, v55, v219);
        v70 = *(v67 + 80);
        v213 = v52;
        v179 = ObjectType;
        v71 = (v70 + 24) & ~v70;
        v172 = v210 + 7;
        v72 = (v210 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
        v74 = (v73 + 23) & 0xFFFFFFFFFFFFFFF8;
        v177 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
        v184 = v65;
        v176 = v70;
        v75 = swift_allocObject();
        *(v75 + 16) = v66;
        v76 = v75 + v71;
        v77 = v67 + 32;
        v173 = *(v67 + 32);
        v173(v76, v214, v69);
        v78 = (v75 + v72);
        v79 = v184;
        *v78 = v182;
        v78[1] = v79;
        v80 = (v75 + v73);
        v81 = v212;
        *v80 = v213;
        v80[1] = v81;
        *(v75 + v74) = 2;
        v82 = v75 + v177;
        *v82 = MEMORY[0x277D84F90];
        *(v82 + 8) = 0;
        v83 = (v75 + ((v74 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v83 = 0;
        v83[1] = 0;
        v84 = v178;
        v85 = *(v178 + 152);

        v86 = v179;
        v85(sub_20B82E24C, v75, v179, v84);

        [v63 bounds];
        if (v87 <= 0.0 || (v89 = v88, v88 <= 0.0))
        {

          v55 = v218;
          v115 = v219;
        }

        else
        {
          v90 = v87;
          v91 = v84;
          v92 = v86;
          v177 = ~v176;
          (*(v91 + 120))(0, v86, v91);
          v93 = v202;
          v171 = v77;
          v94 = v218;
          v95 = v219;
          v174(v202, v218, v219);
          (*(v217 + 56))(v93, 0, 1, v95);
          (*(v91 + 16))(v93, v92, v91);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v96 = sub_20C13D5A4();
          [v63 setBackgroundColor_];

          v97 = v95;
          (*(v91 + 176))(COERCE_DOUBLE(*&v90), COERCE_DOUBLE(*&v89), 0, v92, v91);
          v98 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v99 = v214;
          v100 = v95;
          v101 = v174;
          v174(v214, v94, v100);
          v102 = (v176 + 16) & v177;
          v103 = (v172 + v102) & 0xFFFFFFFFFFFFFFF8;
          v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
          v105 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
          v106 = swift_allocObject();
          v173(v106 + v102, v99, v97);
          *(v106 + v103) = v98;
          v107 = (v106 + v104);
          v55 = v94;
          *v107 = v90;
          v107[1] = v89;
          v202 = v106;
          v108 = (v106 + v105);
          *v108 = 0;
          v108[1] = 0;
          v109 = v97;
          v110 = v99;
          v101(v99, v94, v109);
          (*(v203 + 104))(v205, *MEMORY[0x277D542A8], v204);

          v111 = v208;
          sub_20C138A54();
          v112 = v183;
          sub_20B5F1B90(v111, v183);
          v113 = v206;
          v114 = v209;
          if ((*(v206 + 48))(v112, 1, v209) == 1)
          {
            sub_20B520158(v112, &unk_27C766670);
            sub_20BA1DA7C();

            (*(v200 + 8))(v111, v201);
            v115 = v219;
            v116 = v211;
            v54 = v215;
            v51 = v216;
LABEL_19:
            v133 = v193;
            v134 = v190;
            v135 = v188;
            v136 = v217;
LABEL_22:
            (*(v136 + 8))(v55, v115);
            (*(v133 + 8))(v54, v116);

            sub_20B62A2AC(v51);
            return (*(v186 + 8))(v220, v187);
          }

          v137 = v113;
          v213 = *(v113 + 32);
          (v213)(v207, v112, v114);
          v138 = v114;
          v139 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v101(v110, v218, v219);
          v140 = (v176 + 40) & v177;
          v141 = v140 + v210;
          v142 = v110;
          v143 = (v140 + v210) & 0xFFFFFFFFFFFFFFF8;
          v144 = swift_allocObject();
          *(v144 + 2) = v139;
          v144[3] = v90;
          v144[4] = v89;
          v173(v144 + v140, v142, v219);
          *(v144 + v141) = 0;
          v145 = v144 + v143;
          *(v145 + 1) = 0;
          *(v145 + 2) = 0;
          v146 = swift_allocObject();
          *(v146 + 16) = sub_20B82E3E0;
          *(v146 + 24) = v144;
          v147 = v194;
          (*(v137 + 16))(v194, v207, v138);
          v148 = v137;
          v149 = (*(v137 + 80) + 16) & ~*(v137 + 80);
          v150 = (v180 + v149 + 7) & 0xFFFFFFFFFFFFFFF8;
          v151 = swift_allocObject();
          (v213)(v151 + v149, v147, v138);
          v152 = (v151 + v150);
          *v152 = sub_20B5F67A4;
          v152[1] = v146;
          v153 = v197;
          sub_20C137C94();
          v154 = swift_allocObject();
          v155 = v202;
          *(v154 + 16) = sub_20B82E324;
          *(v154 + 24) = v155;
          v156 = swift_allocObject();
          *(v156 + 16) = sub_20B5F67D4;
          *(v156 + 24) = v154;
          v157 = v198;
          v158 = v196;
          v159 = v199;
          (*(v198 + 16))(v196, v153, v199);
          v160 = (*(v157 + 80) + 16) & ~*(v157 + 80);
          v161 = (v195 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
          v162 = swift_allocObject();
          (*(v157 + 32))(v162 + v160, v158, v159);
          v163 = (v162 + v161);
          *v163 = sub_20B5DF204;
          v163[1] = v156;

          v164 = v181;
          sub_20C137C94();
          v165 = *(v157 + 8);
          v165(v153, v159);
          v166 = sub_20C137CB4();
          v167 = swift_allocObject();
          *(v167 + 16) = 0;
          *(v167 + 24) = 0;
          v166(sub_20B52347C, v167);

          v168 = v164;
          v55 = v218;
          v165(v168, v159);
          v169 = v219;
          (*(v148 + 8))(v207, v209);
          (*(v200 + 8))(v208, v201);
          v115 = v169;
        }

        v136 = v217;
        v116 = v211;
        v54 = v215;
        v51 = v216;
        v133 = v193;
        v134 = v190;
        v135 = v188;
        goto LABEL_22;
      }

      v115 = v219;
      v116 = v211;
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_20C13B534();

  v122 = v221;
  v123 = sub_20C13BB74();
  v124 = sub_20C13D1D4();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v222 = a1;
    v223 = v127;
    *v125 = 138543874;
    *(v125 + 4) = v122;
    *v126 = v122;
    *(v125 + 12) = 2160;
    *(v125 + 14) = 1752392040;
    *(v125 + 22) = 2080;
    v128 = sub_20B5F66D0();
    v129 = v122;
    v130 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v128);
    v132 = sub_20B51E694(v130, v131, &v223);

    *(v125 + 24) = v132;
    _os_log_impl(&dword_20B517000, v123, v124, "Attempted to configure %{public}@ with item: %{mask.hash}s", v125, 0x20u);
    sub_20B520158(v126, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v126, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x20F2F6A40](v127, -1, -1);
    MEMORY[0x20F2F6A40](v125, -1, -1);
  }

  return (*(v212 + 8))(v4, v2);
}

void sub_20B82E24C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA49EBC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B82E324(void *a1)
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

  sub_20BA636D0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B82E3E0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2F2C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B82E494()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_layout;
  *v3 = xmmword_20C15CBA0;
  *(v3 + 16) = xmmword_20C15CBB0;
  __asm { FMOV            V1.2D, #4.0 }

  *(v3 + 32) = xmmword_20C15CBC0;
  *(v3 + 48) = _Q1;
  *(v3 + 64) = xmmword_20C151BD0;
  *(v3 + 80) = 0x3FC999999999999ALL;
  v9 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView;
  v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  v11 = qword_27C760820;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = (v0 + v9);
  [v12 smu:*&qword_27C79ACA0 setContinuousCornerRadius:?];
  [v12 setClipsToBounds_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  *v13 = v12;
  v13[1] = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setAdjustsFontSizeToFitWidth_];
  [v15 setMinimumScaleFactor_];
  v16 = objc_opt_self();
  v17 = [v16 preferredFontForTextStyle_];
  [v17 pointSize];
  v19 = v18;

  v20 = [v16 boldSystemFontOfSize_];
  [v15 setFont_];

  v21 = [objc_opt_self() blackColor];
  [v15 setTextColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  *(v0 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B82E7C8()
{
  v1 = sub_20C1380F4();
  if (!v1)
  {
    v2 = [*&v0[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView] heightAnchor];
    v3 = [v0 contentView];
    v4 = [v3 widthAnchor];

    v5 = [v2 constraintEqualToAnchor:v4 multiplier:0.8065];
LABEL_5:

    type metadata accessor for UILayoutPriority(0);
    sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
    sub_20C13BBA4();
    LODWORD(v6) = v8;
    [v5 setPriority_];
    return v5;
  }

  if (v1 == 1)
  {
    v4 = [*&v0[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView] heightAnchor];
    v5 = [v4 constraintEqualToConstant_];
    goto LABEL_5;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

char *sub_20B82E9A8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_layout];
  *v11 = xmmword_20C15CC90;
  *(v11 + 1) = xmmword_20C15CCA0;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *v12 = v13;
  *(v12 + 1) = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_shadowView;
  v15 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];

  v19 = [objc_opt_self() whiteColor];
  [v17 setTextColor_];

  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  *&v4[v16] = v17;
  v20 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_textContainer;
  v21 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v20] = v21;
  v103.receiver = v4;
  v103.super_class = type metadata accessor for FullWidthDetailHeaderCell();
  v22 = objc_msgSendSuper2(&v103, sel_initWithFrame_, a1, a2, a3, a4);
  v23 = *&v22[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel];
  v24 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel;
  v100 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel;
  v99 = v22;
  v25 = v22;
  v26 = v23;
  v27 = sub_20B830EF8();
  [v26 setFont_];

  v28 = &v25[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
  v29 = *&v25[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
  v30 = *&v25[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 288);
  v33 = v29;
  v32(2, ObjectType, v30);

  v34 = [v25 contentView];
  [v34 addSubview_];

  v35 = [v25 contentView];
  v101 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_shadowView;
  [v35 addSubview_];

  v36 = [v25 contentView];
  v37 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_textContainer;
  [v36 addSubview_];

  [*&v25[v37] addSubview_];
  v102 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C1530F0;
  v39 = [*v28 leadingAnchor];
  v40 = [v25 contentView];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v38 + 32) = v42;
  v43 = [*v28 trailingAnchor];
  v44 = [v25 contentView];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v38 + 40) = v46;
  v47 = [*v28 topAnchor];
  v48 = [v25 contentView];
  v49 = [v48 &selRef_setLineBreakMode_];

  v50 = [v47 constraintEqualToAnchor_];
  *(v38 + 48) = v50;
  v51 = [*v28 bottomAnchor];
  v52 = [v25 contentView];
  v53 = [v52 bottomAnchor];

  v54 = [v51 constraintEqualToAnchor_];
  *(v38 + 56) = v54;
  *(v38 + 64) = sub_20B82E7C8();
  v55 = [*&v25[v37] leadingAnchor];
  v56 = [v25 contentView];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor_];
  *(v38 + 72) = v58;
  v59 = [*&v25[v37] trailingAnchor];
  v60 = [v25 contentView];
  v61 = v99;
  v62 = [v60 trailingAnchor];

  v63 = [v59 constraintEqualToAnchor_];
  *(v38 + 80) = v63;
  v64 = [*&v25[v37] topAnchor];
  v65 = [v25 contentView];
  v66 = [v65 topAnchor];

  v67 = [v64 constraintEqualToAnchor_];
  *(v38 + 88) = v67;
  v68 = [*&v25[v37] bottomAnchor];
  v69 = [v25 contentView];
  v70 = [v69 bottomAnchor];

  v71 = [v68 constraintEqualToAnchor_];
  *(v38 + 96) = v71;
  v72 = [*&v99[v100] leadingAnchor];
  v73 = [*&v25[v37] leadingAnchor];
  if (qword_27C7606D0 != -1)
  {
    swift_once();
  }

  v74 = [v72 constraintEqualToAnchor:v73 constant:{*&qword_27C799F40, v99}];

  *(v38 + 104) = v74;
  v75 = [*&v61[v100] trailingAnchor];
  v76 = [*&v25[v37] trailingAnchor];
  if (qword_27C7606E0 != -1)
  {
    swift_once();
  }

  v77 = [v75 constraintLessThanOrEqualToAnchor:v76 constant:-*&qword_27C799F50];

  *(v38 + 112) = v77;
  v78 = [*&v61[v100] lastBaselineAnchor];
  v79 = [*&v25[v37] bottomAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-21.0];

  *(v38 + 120) = v80;
  v81 = [*&v25[v101] leadingAnchor];
  v82 = [v25 contentView];
  v83 = [v82 leadingAnchor];

  v84 = [v81 constraintEqualToAnchor_];
  *(v38 + 128) = v84;
  v85 = [*&v25[v101] trailingAnchor];
  v86 = [v25 contentView];
  v87 = [v86 trailingAnchor];

  v88 = [v85 constraintEqualToAnchor_];
  *(v38 + 136) = v88;
  v89 = [*&v25[v101] topAnchor];
  v90 = [v25 contentView];
  v91 = [v90 topAnchor];

  v92 = [v89 constraintEqualToAnchor_];
  *(v38 + 144) = v92;
  v93 = [*&v25[v101] bottomAnchor];
  v94 = [v25 contentView];

  v95 = [v94 bottomAnchor];
  v96 = [v93 constraintEqualToAnchor_];

  *(v38 + 152) = v96;
  sub_20B51C88C(0, &qword_281100500);
  v97 = sub_20C13CC54();

  [v102 activateConstraints_];

  return v25;
}

id sub_20B82F764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullWidthDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FullWidthDetailHeaderCell()
{
  result = qword_2811016D8;
  if (!qword_2811016D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B82F88C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B82F95C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B82F9A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B82FA00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B82FA88(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v182 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v183 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v169 = *(v6 - 8);
  v170 = v6;
  MEMORY[0x28223BE20](v6);
  v167 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v168 = &v145 - v9;
  v166 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v145 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v175 = &v145 - v15;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v181 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v165 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = v16;
  MEMORY[0x28223BE20](v17);
  v180 = &v145 - v18;
  v174 = sub_20C1391C4();
  v172 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C138A64();
  v176 = *(v20 - 8);
  v177 = v20;
  MEMORY[0x28223BE20](v20);
  v179 = &v145 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v171 = &v145 - v23;
  v24 = sub_20C13C554();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_20C137C24();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v30);
  v34 = &v145 - v33;
  if (((a1 >> 57) & 0x78 | a1 & 7) != 8)
  {
    v91 = v4;
    sub_20C13B534();

    v102 = v2;
    v103 = sub_20C13BB74();
    v104 = sub_20C13D1D4();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v184 = a1;
      v185 = v107;
      *v105 = 138543618;
      *(v105 + 4) = v102;
      *v106 = v102;
      *(v105 + 12) = 2082;
      v108 = sub_20B5F66D0();
      v109 = v102;
      v110 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v108);
      v112 = sub_20B51E694(v110, v111, &v185);

      *(v105 + 14) = v112;
      _os_log_impl(&dword_20B517000, v103, v104, "Attempted to configure %{public}@ with item: %{public}s", v105, 0x16u);
      sub_20B520158(v106, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v106, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x20F2F6A40](v107, -1, -1);
      MEMORY[0x20F2F6A40](v105, -1, -1);
    }

    v101 = v183;
    v100 = v182[1];
    goto LABEL_11;
  }

  v158 = v32;
  v161 = v31;
  v153 = v13;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00);
  v36 = swift_projectBox();
  v37 = *v36;
  v38 = *(v35 + 48);
  v39 = (v36 + *(v35 + 64));
  v40 = v39[1];
  v160 = *v39;
  v41 = *(v29 + 16);
  v163 = v29 + 16;
  v162 = v41;
  v41(v34, v36 + v38, v28);
  v42 = *&v2[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel];
  v43 = v37;
  v183 = v40;

  v182 = v43;
  [v42 setAttributedText_];
  sub_20B86E3F4(*&v2[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_textContainer]);
  v159 = sub_20C138054();
  v45 = v44;
  sub_20B51C88C(0, &qword_281100530);
  *v27 = sub_20C13D374();
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
  LOBYTE(v42) = sub_20C13C584();
  result = (*(v25 + 8))(v27, v24);
  if (v42)
  {
    v47 = v2;
    v48 = &v2[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
    v50 = *&v2[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
    v49 = *(v48 + 1);
    ObjectType = swift_getObjectType();
    [v50 setContentMode_];
    if ((sub_20BA66C54(v34, v50, v49, 0) & 1) == 0)
    {

      return (*(v29 + 8))(v34, v28);
    }

    v52 = swift_allocObject();
    v151 = v49;
    v157 = v52;
    v147 = v47;
    swift_unknownObjectWeakInit();
    v156 = v45;
    v53 = v161;
    v162(v161, v34, v28);
    v54 = *(v29 + 80);
    v155 = v34;
    v55 = (v54 + 24) & ~v54;
    v145 = v158 + 7;
    v56 = (v158 + 7 + v55) & 0xFFFFFFFFFFFFFFF8;
    v57 = v28;
    v58 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
    v59 = (v58 + 23) & 0xFFFFFFFFFFFFFFF8;
    v149 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v148 = v54;
    v60 = swift_allocObject();
    v150 = ObjectType;
    v61 = v60;
    *(v60 + 16) = v157;
    v154 = v29;
    v62 = *(v29 + 32);
    v63 = v60 + v55;
    v64 = v53;
    v65 = v29 + 32;
    v66 = v156;
    v152 = v57;
    v146 = v62;
    v62(v63, v64, v57);
    v67 = (v61 + v56);
    v68 = v183;
    *v67 = v160;
    v67[1] = v68;
    v69 = (v61 + v58);
    *v69 = v159;
    v69[1] = v66;
    *(v61 + v59) = 2;
    v70 = v61 + v149;
    *v70 = MEMORY[0x277D84F90];
    *(v70 + 8) = 0;
    v71 = (v61 + ((v59 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v71 = 0;
    v71[1] = 0;
    v72 = v151;
    v73 = *(v151 + 152);

    v74 = v150;
    v73(sub_20B830CB0, v61);

    [v50 bounds];
    if (v75 <= 0.0)
    {

      goto LABEL_14;
    }

    v77 = v76;
    v157 = v65;
    v78 = v155;
    v79 = v154;
    v80 = v152;
    if (v76 > 0.0)
    {
      v81 = v75;
      v149 = ~v148;
      (*(v72 + 120))(0, v74, v72);
      v82 = v171;
      v162(v171, v78, v80);
      (*(v79 + 56))(v82, 0, 1, v80);
      (*(v72 + 16))(v82, v74, v72);
      sub_20B51C88C(0, &qword_27C762070);
      sub_20C137BC4();
      v83 = sub_20C13D5A4();
      [v50 setBackgroundColor_];

      (*(v72 + 176))(COERCE_DOUBLE(*&v81), COERCE_DOUBLE(*&v77), 0, v74, v72);
      v84 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v85 = v161;
      v86 = v162;
      v162(v161, v78, v80);
      v87 = (v148 + 16) & v149;
      v88 = (v145 + v87) & 0xFFFFFFFFFFFFFFF8;
      v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
      v90 = swift_allocObject();
      v146(v90 + v87, v85, v80);
      *(v90 + v88) = v84;
      v91 = v80;
      v92 = (v90 + v89);
      *v92 = v81;
      v92[1] = v77;
      v171 = v90;
      v93 = (v90 + ((v89 + 23) & 0xFFFFFFFFFFFFFFF8));
      v94 = v155;
      *v93 = 0;
      v93[1] = 0;
      v86(v85, v94, v80);
      (*(v172 + 104))(v173, *MEMORY[0x277D542A8], v174);
      v95 = v179;
      v96 = v85;
      sub_20C138A54();
      v97 = v175;
      sub_20B5F1C80(v95, v175);
      v98 = v181;
      v99 = v178;
      if ((*(v181 + 48))(v97, 1, v178) == 1)
      {
        sub_20B520158(v97, &unk_27C766670);
        sub_20BA1DAC4();

        (*(v176 + 8))(v95, v177);
        v100 = *(v154 + 8);
        v101 = v94;
LABEL_11:
        v113 = v91;
        return v100(v101, v113);
      }

      v114 = v94;
      v183 = *(v98 + 32);
      (v183)(v180, v97, v99);
      v115 = v99;
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v86(v96, v114, v91);
      v117 = (v148 + 40) & v149;
      v118 = v117 + v158;
      v119 = (v117 + v158) & 0xFFFFFFFFFFFFFFF8;
      v120 = swift_allocObject();
      v121 = v91;
      v122 = v120;
      v120[2] = v116;
      *(v120 + 3) = v81;
      *(v120 + 4) = v77;
      v146(v120 + v117, v96, v121);
      *(v122 + v118) = 0;
      v123 = v122 + v119;
      *(v123 + 1) = 0;
      *(v123 + 2) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = sub_20B830E44;
      *(v124 + 24) = v122;
      v125 = v165;
      (*(v98 + 16))(v165, v180, v115);
      v126 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v127 = (v164 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
      v128 = swift_allocObject();
      (v183)(v128 + v126, v125, v115);
      v129 = (v128 + v127);
      *v129 = sub_20B5F67A4;
      v129[1] = v124;
      v130 = v168;
      sub_20C137C94();
      v131 = swift_allocObject();
      v132 = v171;
      *(v131 + 16) = sub_20B830D88;
      *(v131 + 24) = v132;
      v133 = swift_allocObject();
      *(v133 + 16) = sub_20B5F67D4;
      *(v133 + 24) = v131;
      v135 = v169;
      v134 = v170;
      v136 = v167;
      (*(v169 + 16))(v167, v130, v170);
      v137 = (*(v135 + 80) + 16) & ~*(v135 + 80);
      v138 = (v166 + v137 + 7) & 0xFFFFFFFFFFFFFFF8;
      v139 = swift_allocObject();
      (*(v135 + 32))(v139 + v137, v136, v134);
      v140 = (v139 + v138);
      *v140 = sub_20B5DF204;
      v140[1] = v133;

      v141 = v153;
      sub_20C137C94();
      v142 = *(v135 + 8);
      v142(v130, v134);
      v143 = sub_20C137CB4();
      v144 = swift_allocObject();
      *(v144 + 16) = 0;
      *(v144 + 24) = 0;
      v143(sub_20B52347C, v144);

      v142(v141, v134);
      (*(v181 + 8))(v180, v115);
      (*(v176 + 8))(v179, v177);
LABEL_14:
      v100 = *(v154 + 8);
      v101 = v155;
      v113 = v152;
      return v100(v101, v113);
    }

    return (*(v79 + 8))(v78, v80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B830CB0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA50124(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B830D88(void *a1)
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

  sub_20BA63790(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B830E44(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2FEC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

id sub_20B830EF8()
{
  v0 = *MEMORY[0x277D76A20];
  v1 = *MEMORY[0x277D743F8];
  v57 = objc_opt_self();
  v2 = [v57 preferredFontDescriptorWithTextStyle:v0 compatibleWithTraitCollection:0];
  v3 = [v2 fontDescriptorWithSymbolicTraits_];
  if (v3)
  {
    v4 = v3;

    v2 = v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v7 = swift_initStackObject();
  v8 = MEMORY[0x277D74430];
  *(v7 + 16) = xmmword_20C14F980;
  v9 = *v8;
  *(v7 + 32) = *v8;
  *(v7 + 40) = v1;
  v10 = v6;
  v11 = v9;
  v12 = v10;
  v13 = v11;
  v14 = sub_20B6B134C(v7);
  swift_setDeallocating();
  sub_20B520158(v7 + 32, &unk_27C773200);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v55;
  *(inited + 40) = v14;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v15 = sub_20C13C744();

  v16 = [v2 fontDescriptorByAddingAttributes_];

  v17 = objc_opt_self();
  v56 = [v17 fontWithDescriptor:v16 size:0.0];

  v18 = *MEMORY[0x277D76A08];
  v19 = [v57 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A08] compatibleWithTraitCollection:0];
  v20 = [v19 fontDescriptorWithSymbolicTraits_];
  if (v20)
  {
    v21 = v20;

    v19 = v21;
  }

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_20C14F980;
  *(v22 + 32) = v12;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_20C14F980;
  *(v23 + 32) = v13;
  *(v23 + 40) = v1;
  v24 = v12;
  v25 = v13;
  v26 = sub_20B6B134C(v23);
  swift_setDeallocating();
  sub_20B520158(v23 + 32, &unk_27C773200);
  *(v22 + 64) = v55;
  *(v22 + 40) = v26;
  sub_20B6B143C(v22);
  swift_setDeallocating();
  sub_20B520158(v22 + 32, &qword_27C773210);
  v27 = sub_20C13C744();

  v28 = [v19 fontDescriptorByAddingAttributes_];

  v29 = [v17 fontWithDescriptor:v28 size:0.0];
  v30 = [v57 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v31 = [v30 fontDescriptorWithSymbolicTraits_];
  if (v31)
  {
    v32 = v31;

    v30 = v32;
  }

  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_20C14F980;
  *(v33 + 32) = v24;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_20C14F980;
  *(v34 + 32) = v25;
  v35 = v34 + 32;
  *(v34 + 40) = v1;
  v36 = sub_20B6B134C(v34);
  swift_setDeallocating();
  sub_20B520158(v35, &unk_27C773200);
  *(v33 + 64) = v55;
  *(v33 + 40) = v36;
  sub_20B6B143C(v33);
  swift_setDeallocating();
  sub_20B520158(v33 + 32, &qword_27C773210);
  v37 = sub_20C13C744();

  v38 = [v30 fontDescriptorByAddingAttributes_];

  v39 = [v17 fontWithDescriptor:v38 size:0.0];
  sub_20C1380F4();
  v40 = [objc_opt_self() mainScreen];
  [v40 bounds];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  v58.origin.x = v42;
  v58.origin.y = v44;
  v58.size.width = v46;
  v58.size.height = v48;
  Width = CGRectGetWidth(v58);
  v50 = sub_20C138104();
  v51 = sub_20C138104();
  if (Width >= 350.0)
  {
    v52 = v29;
  }

  else
  {
    v52 = v56;
  }

  if (v50 == v51)
  {
    v52 = v39;
  }

  v53 = v52;

  return v53;
}

void sub_20B83153C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_layout);
  *v3 = xmmword_20C15CC90;
  v3[1] = xmmword_20C15CCA0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_shadowView;
  v7 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  LODWORD(v10) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v10];

  v11 = [objc_opt_self() whiteColor];
  [v9 setTextColor_];

  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  *(v0 + v8) = v9;
  v12 = OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_textContainer;
  v13 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8317EC(void *a1)
{
  result = sub_20C1380F4();
  if (result)
  {
    if (result != 1)
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    [objc_msgSend(a1 container)];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B8318CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B831914()
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
  if (v14 == result)
  {
    v16 = 56.0;
  }

  else
  {
    v16 = 20.0;
    if (Width / v13 > 375.0)
    {
      v16 = 40.0;
      if (Width / v13 < 834.0)
      {
        v16 = 30.0;
      }
    }
  }

  qword_27C766608 = *&v16;
  return result;
}

id sub_20B831A6C()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for SessionRangedCoachingEventView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_valueLabel];
  [v2 sizeToFit];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_unitLabel];
  [v3 sizeToFit];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView];
  [v4 sizeToFit];
  v5 = [v4 image];
  if (v5)
  {
    v6 = v5;
    [v5 _contentInsets];
    v8 = v7;
  }

  else
  {
    v8 = 6.0;
  }

  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_])
  {
    [v3 frame];
    [v3 setFrame_];
    v9 = [v4 isHidden];
    [v3 frame];
    MaxX = CGRectGetMaxX(v21) + 4.0;
    if ((v9 & 1) == 0)
    {
      [v2 smu_firstLineCapFrameOriginY];
      v12 = v11 - v8;
      [v4 frame];
      [v4 setFrame_];
      [v4 frame];
      MaxX = CGRectGetMaxX(v22);
    }

    v13 = v2;
  }

  else
  {
    [v2 frame];
    [v2 setFrame_];
    v14 = [v4 isHidden];
    [v2 frame];
    v15 = CGRectGetMaxX(v23);
    if (!v14)
    {
      v16 = v15;
      [v2 smu_firstLineCapFrameOriginY];
      v18 = v17 - v8;
      [v4 frame];
      [v4 setFrame_];
      [v4 frame];
      v15 = CGRectGetMaxX(v24);
    }

    MaxX = v15 + 4.0;
    v13 = v3;
  }

  [v13 frame];
  [v13 setFrame_];
  [v2 smu_firstLineCapFrameOriginY];
  return [v3 setSmu_firstLineCapFrameOriginY_];
}

double sub_20B831D90()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView);
  v2 = [v1 isHidden];
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_valueLabel);
  [v3 intrinsicContentSize];
  v5 = v4;
  if ((v2 & 1) == 0)
  {
    [v1 intrinsicContentSize];
    v5 = v5 + v6;
  }

  [*(v0 + OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_unitLabel) intrinsicContentSize];
  v8 = v5 + v7;
  [v3 intrinsicContentSize];
  return v8 + 4.0;
}

id sub_20B831E78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRangedCoachingEventView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B831F94()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_valueLabel];
  v2 = sub_20C13C914();
  [v1 setText_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_unitLabel];
  v4 = sub_20C13C914();
  [v3 setText_];

  [v0 invalidateIntrinsicContentSize];

  return [v0 setNeedsLayout];
}

id sub_20B832050()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView];
  result = [v1 isHidden];
  if (result)
  {
    [v1 setHidden_];
    [v0 invalidateIntrinsicContentSize];

    return [v0 setNeedsLayout];
  }

  return result;
}

id sub_20B8320D8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView];
  result = [v1 isHidden];
  if ((result & 1) == 0)
  {
    [v1 setHidden_];
    [v0 invalidateIntrinsicContentSize];

    return [v0 setNeedsLayout];
  }

  return result;
}

char *sub_20B832160()
{
  v1 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_valueLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = sub_20C1380F4();
  v4 = sub_20BA6BBC8(v3);
  [v2 setFont_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v2 setTextColor_];

  v6 = v2;
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];

  *&v0[v1] = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_unitLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = sub_20C1380F4();
  v12 = sub_20BA6C4EC(v11);
  [v10 setFont_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v10 setTextColor_];

  v14 = v10;
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];

  *&v0[v9] = v14;
  v17 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView;
  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 whiteColor];
  [v20 setTintColor_];

  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v23];

  *&v0[v17] = v20;
  v24 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImage;
  v25 = sub_20C13C914();
  v26 = [objc_opt_self() smm:v25 systemImageNamed:?];

  if (qword_27C760788 != -1)
  {
    swift_once();
  }

  v27 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:*&qword_27C766608];
  v28 = [v26 imageWithConfiguration_];

  *&v0[v24] = v28;
  v32.receiver = v0;
  v32.super_class = type metadata accessor for SessionRangedCoachingEventView();
  v29 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v29 setClipsToBounds_];
  v30 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView;
  [*&v29[OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView] setImage_];
  [v29 addSubview_];
  [v29 addSubview_];
  [v29 addSubview_];
  if (([*&v29[v30] isHidden] & 1) == 0)
  {
    [*&v29[v30] setHidden_];
    [v29 invalidateIntrinsicContentSize];
    [v29 setNeedsLayout];
  }

  return v29;
}

void sub_20B832598()
{
  v1 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_valueLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = sub_20C1380F4();
  v4 = sub_20BA6BBC8(v3);
  [v2 setFont_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v2 setTextColor_];

  v6 = v2;
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];

  *(v0 + v1) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_unitLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = sub_20C1380F4();
  v12 = sub_20BA6C4EC(v11);
  [v10 setFont_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v10 setTextColor_];

  v14 = v10;
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];

  *(v0 + v9) = v14;
  v17 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImageView;
  v18 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 whiteColor];
  [v20 setTintColor_];

  LODWORD(v22) = 1148846080;
  [v20 setContentCompressionResistancePriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v20 setContentCompressionResistancePriority:1 forAxis:v23];

  *(v0 + v17) = v20;
  v24 = OBJC_IVAR____TtC9SeymourUI30SessionRangedCoachingEventView_plusImage;
  v25 = sub_20C13C914();
  v26 = [objc_opt_self() smm:v25 systemImageNamed:?];

  if (qword_27C760788 != -1)
  {
    swift_once();
  }

  v27 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:*&qword_27C766608];
  v28 = [v26 imageWithConfiguration_];

  *(v0 + v24) = v28;
  sub_20C13DE24();
  __break(1u);
}

id sub_20B832900(void *a1, void *a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapAirplay];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v3[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_onTapSettings];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_airplayButton] = a1;
  *&v3[OBJC_IVAR____TtC9SeymourUI30AirplayAndSettingsControlsView_settingsButton] = a2;
  v35.receiver = v3;
  v35.super_class = type metadata accessor for AirplayAndSettingsControlsView();
  v8 = a1;
  v33 = a2;
  v9 = objc_msgSendSuper2(&v35, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setAxis_];
  if (qword_27C760C88 != -1)
  {
    swift_once();
  }

  v10 = qword_27C770A90;
  v11 = sub_20C13C914();
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed:v11 withConfiguration:v10];

  if (v13)
  {
    v14 = [v13 imageWithRenderingMode_];
  }

  else
  {
    v14 = 0;
  }

  [v8 setImage:v14 forState:0];

  v15 = objc_opt_self();
  v16 = [v15 whiteColor];
  [v8 setTintColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = v8;
  v20 = [v18 bundleForClass_];
  sub_20C132964();

  v21 = sub_20C13C914();

  [v19 setAccessibilityLabel_];

  [v19 setContentEdgeInsets_];
  [v19 addTarget:v9 action:sel_airplayTouchUpInside_ forControlEvents:64];
  v22 = sub_20C13C914();
  v23 = [v12 smm:v22 systemImageNamed:?];

  v24 = [v23 imageWithConfiguration_];
  v25 = [v24 imageWithRenderingMode_];

  [v33 setImage:v25 forState:0];
  v26 = [v15 whiteColor];
  [v33 setTintColor_];

  v27 = v33;
  v28 = [v18 bundleForClass_];
  sub_20C132964();

  v29 = sub_20C13C914();

  [v27 setAccessibilityLabel_];

  [v27 setContentEdgeInsets_];
  [v27 addTarget:v9 action:sel_settingsTouchUpInside_ forControlEvents:64];

  if (sub_20B8DD11C(0, a3))
  {
    [v9 addArrangedSubview_];
  }

  else
  {
    [v19 setHidden_];
  }

  v30 = sub_20B8DD11C(1, a3);

  if (v30)
  {
    [v9 addArrangedSubview_];
    v31 = v9;
  }

  else
  {
    v31 = v27;
    [v31 setHidden_];

    v19 = v9;
  }

  return v9;
}

char *sub_20B832FDC(char *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&result[*a4];
  if (v4)
  {
    v5 = result;
    v6 = sub_20B584050(v4);
    v4(v6);

    return sub_20B583ECC(v4);
  }

  return result;
}

id sub_20B83308C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirplayAndSettingsControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B833158()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_27C79A688 = *&v1;
  return result;
}

id sub_20B8331BC()
{
  result = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel) text];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C954();
    v5 = v4;

    v6 = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView) arrangedSubviews];
    sub_20B51C88C(0, &qword_27C762910);
    v7 = sub_20C13CC74();

    if (v7 >> 62)
    {
      v8 = sub_20C13DB34();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v8)
    {
      return 0;
    }

    else
    {
      v9 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v9 = v3 & 0xFFFFFFFFFFFFLL;
      }

      return (v9 != 0);
    }
  }

  return result;
}

char *sub_20B83339C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_layout];
  *v11 = xmmword_20C15CDF0;
  *(v11 + 1) = xmmword_20C15CE00;
  *(v11 + 2) = xmmword_20C15CE10;
  *(v11 + 3) = xmmword_20C15CE20;
  *(v11 + 8) = 0x4054000000000000;
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView];
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *v12 = v13;
  *(v12 + 1) = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75F68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v15 &selRef_count + 2];
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v17 setLineBreakMode_];
  [v17 setNumberOfLines_];
  v18 = objc_opt_self();
  v19 = [v18 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v17 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 blackColor];
  [v17 setTextColor_];

  [v17 setAdjustsFontForContentSizeCategory_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  v24 = *MEMORY[0x277D76940];
  v25 = [v18 preferredFontForTextStyle_];
  [v23 setFont_];

  v26 = [v20 blackColor];
  [v23 setTextColor_];

  [v23 setAdjustsFontForContentSizeCategory_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v23;
  v27 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel;
  v28 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v29 = [v18 preferredFontForTextStyle_];
  [v28 setFont_];

  [v28 setAdjustsFontForContentSizeCategory_];
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v27] = v28;
  v30 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackView;
  v31 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v31 setAlignment_];
  [v31 setAxis_];
  [v31 setDistribution_];
  [v31 &selRef_count + 2];
  *&v4[v30] = v31;
  v32 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView;
  v33 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v33 setAlignment_];
  [v33 setAxis_];
  [v33 setDistribution_];
  if (qword_27C760790 != -1)
  {
    swift_once();
  }

  [v33 setSpacing_];
  [v33 &selRef_count + 2];
  *&v4[v32] = v33;
  v34 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_focusGuide;
  *&v4[v34] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v35 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint;
  *&v4[v35] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v36 = qword_27C760820;
  v37 = *&v4[v14];
  if (v36 != -1)
  {
    swift_once();
  }

  [v37 setCornerRadius_];

  [*&v4[v14] setContinuousCornerEnabled_];
  [*&v4[v14] setRoundContentWhenDeselected_];
  [*&v4[v14] setFocusedSizeIncrease_];
  [*&v4[v14] setContentMotionRotation:0.0 translation:{0.0523598776, 0.0, 4.0}];
  v38 = *&v4[v14];
  v39 = objc_opt_self();
  v40 = v38;
  v41 = [v39 configurationWithStyle_];
  [v40 setFocusAnimationConfiguration_];

  v185.receiver = v4;
  v185.super_class = type metadata accessor for TVFilterResultDetailHeaderCell();
  v42 = objc_msgSendSuper2(&v185, &selRef__hysteresis, a1, a2, a3, a4);
  if (_UISolariumEnabled())
  {
    v43 = *&v42[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView];
    v44 = [v43 layer];
    [v44 setCornerRadius_];

    [v43 setClipsToBounds_];
  }

  v45 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackView;
  [*&v42[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackView] addArrangedSubview_];
  [*&v42[v45] addArrangedSubview_];
  [*&v42[v45] addArrangedSubview_];
  v183 = &v42[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_layout];
  [*&v42[v45] setSpacing_];
  v184 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView;
  result = [*&v42[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v47 = result;
  v48 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView;
  [result addSubview_];

  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v49 = result;
  [result addSubview_];

  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = result;
  v177 = v48;
  v51 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView;
  [result addSubview_];

  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v52 = result;
  v53 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_focusGuide;
  [result addLayoutGuide_];

  v54 = v42;
  v55 = [v54 contentView];
  [v55 addSubview_];

  v180 = v53;
  v56 = *&v42[v53];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14F580;
  v58 = *&v42[v51];
  *(v57 + 32) = v58;
  v59 = v56;
  v60 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
  v61 = sub_20C13CC54();

  [v59 setPreferredFocusEnvironments_];

  v62 = [*&v42[v45] rightAnchor];
  v63 = [*&v42[v51] leftAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-v183[8]];

  v65 = *&v54[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint];
  v182 = v54;
  v178 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint;
  *&v54[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint] = v64;

  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_20C14FF90;
  v67 = [*&v42[v51] centerYAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = result;
  v69 = [result centerYAnchor];

  v70 = [v67 constraintEqualToAnchor_];
  *(v66 + 32) = v70;
  v71 = [*&v42[v51] rightAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v72 = result;
  v73 = [result rightAnchor];

  v74 = [v71 constraintEqualToAnchor:v73 constant:-v183[3]];
  *(v66 + 40) = v74;
  v75 = [*&v42[v45] centerYAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v76 = result;
  v77 = [result centerYAnchor];

  v78 = [v75 constraintEqualToAnchor_];
  *(v66 + 48) = v78;
  v79 = [*&v42[v45] leftAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v80 = result;
  v81 = [result leftAnchor];

  v82 = [v79 constraintEqualToAnchor:v81 constant:v183[1]];
  *(v66 + 56) = v82;
  v83 = [*&v42[v45] rightAnchor];
  v84 = [*&v42[v51] leftAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:-v183[8]];

  *(v66 + 64) = v85;
  v86 = *&v54[v178];
  *(v66 + 72) = v86;
  v87 = *&v42[v180];
  v88 = v86;
  v89 = [v87 leadingAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v90 = result;
  v91 = [result leadingAnchor];

  v92 = [v89 constraintEqualToAnchor_];
  *(v66 + 80) = v92;
  v93 = [*&v42[v180] topAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v94 = result;
  v95 = [result topAnchor];

  v96 = [v93 constraintEqualToAnchor_];
  *(v66 + 88) = v96;
  v97 = [*&v42[v180] bottomAnchor];
  result = [*&v42[v184] contentView];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v98 = result;
  v99 = [result bottomAnchor];

  v100 = [v97 constraintEqualToAnchor_];
  *(v66 + 96) = v100;
  v101 = [*&v42[v180] trailingAnchor];
  v102 = [*&v42[v51] leadingAnchor];
  v103 = [v101 constraintEqualToAnchor_];

  *(v66 + 104) = v103;
  v104 = *&v42[v184];
  v105 = *&v42[v177];
  result = [v104 contentView];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v106 = result;
  v107 = *MEMORY[0x277D768C8];
  v108 = *(MEMORY[0x277D768C8] + 8);
  v110 = *(MEMORY[0x277D768C8] + 16);
  v109 = *(MEMORY[0x277D768C8] + 24);
  v111 = [v105 leadingAnchor];
  v112 = [v106 leadingAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:v108];

  LODWORD(v114) = 1148846080;
  [v113 setPriority_];
  v181 = v113;
  v115 = [v105 trailingAnchor];
  v116 = [v106 trailingAnchor];
  v117 = -v109;
  v118 = [v115 constraintEqualToAnchor:v116 constant:v117];

  LODWORD(v119) = 1148846080;
  [v118 setPriority_];
  v120 = v118;
  v121 = [v105 topAnchor];
  v122 = [v106 topAnchor];
  v123 = [v121 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v124) = 1148846080;
  [v123 setPriority_];
  v125 = [v105 bottomAnchor];
  v126 = [v106 bottomAnchor];
  v127 = -v110;
  v128 = [v125 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v129) = 1148846080;
  [v128 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v181;
  *(inited + 40) = v120;
  *(inited + 48) = v123;
  *(inited + 56) = v128;
  v131 = v123;

  sub_20B8D9310(inited);
  result = [*&v42[v184] contentView];
  if (result)
  {
    v132 = result;
    v179 = objc_opt_self();
    v133 = *&v42[v184];
    v134 = [v132 leadingAnchor];
    v135 = [v133 leadingAnchor];
    v136 = [v134 constraintEqualToAnchor:v135 constant:v108];

    LODWORD(v137) = 1148846080;
    [v136 &selRef_meterUnit];
    v138 = v136;
    v139 = [v132 trailingAnchor];
    v140 = [v133 trailingAnchor];
    v141 = [v139 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v142) = 1148846080;
    [v141 &selRef_meterUnit];
    v143 = v141;
    v144 = [v132 topAnchor];
    v145 = [v133 &selRef_setLineBreakMode_];
    v146 = [v144 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v147) = 1148846080;
    [v146 &selRef_meterUnit];
    v148 = [v132 bottomAnchor];
    v149 = [v133 &selRef_secondaryLabel + 5];
    v150 = [v148 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v151) = 1148846080;
    [v150 &selRef_meterUnit];
    v152 = swift_initStackObject();
    *(v152 + 16) = xmmword_20C14FE90;
    *(v152 + 32) = v138;
    *(v152 + 40) = v143;
    *(v152 + 48) = v146;
    *(v152 + 56) = v150;
    v153 = v146;

    sub_20B8D9310(v152);
    v154 = *&v42[v184];
    v155 = [v182 contentView];

    v156 = [v154 leadingAnchor];
    v157 = [v155 leadingAnchor];
    v158 = [v156 constraintEqualToAnchor:v157 constant:v108];

    LODWORD(v159) = 1148846080;
    [v158 setPriority_];
    v160 = v158;
    v161 = [v154 trailingAnchor];
    v162 = [v155 trailingAnchor];
    v163 = [v161 constraintEqualToAnchor:v162 constant:v117];

    LODWORD(v164) = 1148846080;
    [v163 setPriority_];
    v165 = v163;
    v166 = [v154 topAnchor];
    v167 = [v155 topAnchor];
    v168 = [v166 constraintEqualToAnchor:v167 constant:v107];

    LODWORD(v169) = 1148846080;
    [v168 setPriority_];
    v170 = [v154 bottomAnchor];
    v171 = [v155 bottomAnchor];
    v172 = [v170 &selRef_passwordEntryCancelledHandler + 6];

    LODWORD(v173) = 1148846080;
    [v172 setPriority_];
    v174 = swift_initStackObject();
    *(v174 + 16) = xmmword_20C14FE90;
    *(v174 + 32) = v160;
    *(v174 + 40) = v165;
    *(v174 + 48) = v168;
    *(v174 + 56) = v172;
    v175 = v168;

    sub_20B8D9310(v174);
    sub_20B51C88C(0, &qword_281100500);
    v176 = sub_20C13CC54();

    [v179 activateConstraints_];

    return v182;
  }

LABEL_33:
  __break(1u);
  return result;
}

id sub_20B834B80(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView);
  v7 = [v6 arrangedSubviews];
  sub_20B51C88C(0, &qword_27C762910);
  v8 = sub_20C13CC74();

  v60 = a2;
  v61 = a3;
  v9 = v6;
  if (v8 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2F5430](v11, v8);
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 removeFromSuperview];

      ++v11;
      if (v14 == i)
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

  v15 = v63;
  [v63 bounds];
  Width = CGRectGetWidth(v65);
  v17 = &v63[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_layout];
  if (sub_20C0FCD0C(Width - v17[1] - v17[3]))
  {
    v18 = MEMORY[0x277D76918];
    v19 = v9;
    v20 = &off_277D9A000;
    if (a1)
    {
      v21 = MEMORY[0x277D76918];
      v22 = a1;
      v23 = _UISolariumEnabled();
      v24 = objc_opt_self();
      v25 = *v21;
      v26 = v17;
      if (v23)
      {
        v27 = [v24 smu:v25 preferredFontForTextStyle:8 variant:?];
      }

      else
      {
        v27 = [v24 preferredFontForTextStyle_];
      }

      v30 = v27;
      v31 = _UISolariumEnabled();
      v32 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
      v33 = v22;
      v34 = TVButtonTextContentView.init(attributedTitle:)(a1);
      v35 = v34;
      if (v30)
      {
        [*&v34[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
      }

      v36 = objc_allocWithZone(type metadata accessor for TVButton());
      v37 = sub_20BB87F6C(v35, v31, 0, v36, 0.0, 0.0, 0.0, 0.0);

      v38 = v37;
      [v38 setTranslatesAutoresizingMaskIntoConstraints_];
      v15 = v63;
      [v38 addTarget:v63 action:sel_primaryActionButtonPressed_ forControlEvents:0x2000];
      [v19 addArrangedSubview_];
      v39 = [v38 widthAnchor];

      v17 = v26;
      v40 = [v39 &selRef_visibleCells + 1];

      [v40 setActive_];
      v18 = MEMORY[0x277D76918];
    }

    v41 = _UISolariumEnabled();
    v42 = objc_opt_self();
    v43 = *v18;
    if (v41)
    {
      v44 = [v42 smu:v43 preferredFontForTextStyle:8 variant:?];
    }

    else
    {
      v44 = [v42 preferredFontForTextStyle_];
    }

    v45 = v44;
    v46 = _UISolariumEnabled();
    v47 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

    v48 = TVButtonTextContentView.init(title:)(v60, v61);
    v49 = v48;
    if (v45)
    {
      [*&v48[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
    }

    v50 = objc_allocWithZone(type metadata accessor for TVButton());
    v51 = sub_20BB87F6C(v49, v46, 0, v50, 0.0, 0.0, 0.0, 0.0);

    v29 = v51;
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
    v52 = [v29 widthAnchor];

    v53 = [v52 constraintEqualToConstant_];
    [v53 setActive_];

    [v29 addTarget:v15 action:sel_secondaryActionButtonPressed_ forControlEvents:0x2000];
    [v19 addArrangedSubview_];
    [*&v15[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel] setHidden_];
  }

  else
  {
    v19 = v9;
    v20 = &off_277D9A000;
    if (!a1)
    {
      goto LABEL_31;
    }

    v28 = *&v63[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel];
    v29 = a1;
    [v28 setAttributedText_];
    [v28 setHidden_];
  }

LABEL_31:
  v54 = *&v15[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint];
  v55 = [v19 v20[386]];
  v56 = sub_20C13CC74();

  if (v56 >> 62)
  {
    v57 = sub_20C13DB34();
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v57)
  {
    v58 = -v17[8];
  }

  else
  {
    v58 = 0.0;
  }

  [v54 setConstant_];

  return [v15 layoutIfNeeded];
}

void sub_20B835248(void *a1, uint64_t a2)
{
  v21.receiver = v2;
  v21.super_class = type metadata accessor for TVFilterResultDetailHeaderCell();
  objc_msgSendSuper2(&v21, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  v5 = [a1 nextFocusedView];
  if (v5)
  {
    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView];
    v8 = [v7 arrangedSubviews];
    sub_20B51C88C(0, &qword_27C762910);
    v9 = sub_20C13CC74();

    if (v9 >> 62)
    {
      v10 = sub_20C13DB34();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v11 = [v7 arrangedSubviews];
      v12 = sub_20C13CC74();

      v20 = v6;
      MEMORY[0x28223BE20](v13);
      v19[2] = &v20;
      LOBYTE(v11) = sub_20B79AEEC(sub_20B8371B0, v19, v12);

      v14 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_focusGuide];
      if (v11)
      {
        [v14 setPreferredFocusEnvironments_];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_20C14F580;
        *(v16 + 32) = v7;
        v17 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
        v18 = sub_20C13CC54();

        [v14 setPreferredFocusEnvironments_];
      }
    }

    else
    {
      sub_20B51C88C(0, &qword_27C7654B0);
      if (sub_20C13D5F4() & 1) != 0 || (v15 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView], (sub_20C13D5F4()))
      {
        [*&v2[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView] setControlState:8 withAnimationCoordinator:a2];
      }

      else
      {
        [v15 setControlState:0 withAnimationCoordinator:a2];
      }
    }
  }
}

id sub_20B8355C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterResultDetailHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterResultDetailHeaderCell()
{
  result = qword_27C766660;
  if (!qword_27C766660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B835738()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B835814(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B835860@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8358B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20B835960(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v219 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v197 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v198 = &v179 - v9;
  v196 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v179 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v204 = &v179 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v207 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v195 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v17;
  MEMORY[0x28223BE20](v18);
  v210 = &v179 - v19;
  v203 = sub_20C1391C4();
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v202 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_20C138A64();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v209 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v179 - v23;
  v25 = sub_20C13C554();
  v217 = *(v25 - 8);
  v218 = v25;
  MEMORY[0x28223BE20](v25);
  v216 = (&v179 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_20C1391D4();
  v214 = *(v27 - 8);
  v215 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = (&v179 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = sub_20C138D64();
  v221 = *(v30 - 8);
  v222 = v30;
  MEMORY[0x28223BE20](v30);
  v220 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v32 + 64));
  MEMORY[0x28223BE20](v33);
  v39 = &v179 - v38;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x16)
  {
    v185 = v24;
    v187 = v34;
    v200 = v37;
    v186 = v16;
    v182 = v13;
    v183 = v6;
    v184 = v5;
    v40 = v35;
    v41 = v36;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763170);
    v43 = swift_projectBox();
    v44 = *v43;
    v45 = *(v43 + 8);
    v46 = *(v43 + 24);
    v219 = *(v43 + 16);
    v47 = v42[20];
    v48 = (v43 + v42[24]);
    v49 = v48[1];
    v188 = *v48;
    v50 = (v43 + v42[28]);
    v51 = v50[1];
    v189 = *v50;
    v212 = v41;
    v213 = v39;
    v52 = *(v41 + 16);
    v211 = v40;
    v190 = v41 + 16;
    v208 = v52;
    v52(v39, (v43 + v47), v40);
    v53 = v223;
    v54 = *&v223[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel];

    v55 = v44;
    v193 = v46;

    v199 = v49;

    v56 = v45;
    v191 = v55;
    [v54 setAttributedText_];
    v57 = *&v53[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel];
    if (v51)
    {
      v58 = sub_20C13C914();
    }

    else
    {
      v58 = 0;
    }

    [v57 setText_];

    v192 = v56;
    if (v45)
    {
      v71 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v72 = v56;
      v73 = [v71 initWithAttributedString_];
      v74 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v74 setAlignment_];
      v75 = v73;
      v76 = [v75 length];
      [v75 addAttribute:*MEMORY[0x277D74118] value:v74 range:{0, v76}];
    }

    else
    {
      v75 = 0;
    }

    sub_20B834B80(v75, v219, v193);

    v77 = *&v53[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView];
    v219 = *&v53[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView + 8];
    ObjectType = swift_getObjectType();
    [v77 bounds];
    *v29 = v79;
    v29[1] = v80;
    (*(v214 + 104))(v29, *MEMORY[0x277D542B0], v215);
    v81 = v220;
    sub_20C138D54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766690);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_20C14F980;
    v83 = MEMORY[0x277D54180];
    v84 = v222;
    *(v82 + 56) = v222;
    *(v82 + 64) = v83;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v82 + 32));
    (*(v221 + 16))(boxed_opaque_existential_1, v81, v84);
    v86 = sub_20C138054();
    v88 = v87;
    sub_20B51C88C(0, &qword_281100530);
    v89 = sub_20C13D374();
    v91 = v216;
    v90 = v217;
    *v216 = v89;
    v92 = v218;
    (*(v90 + 104))(v91, *MEMORY[0x277D85200], v218);
    LOBYTE(v84) = sub_20C13C584();
    result = (*(v90 + 8))(v91, v92);
    v93 = v208;
    if (v84)
    {
      [v77 setContentMode_];
      v94 = v213;
      if (sub_20BA66C54(v213, v77, v219, 1))
      {
        v95 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v217 = ObjectType;
        v96 = v211;
        v93(v200, v94, v211);
        v97 = v212;
        v98 = *(v212 + 80);
        v218 = v77;
        v216 = v86;
        v99 = v88;
        v100 = (v98 + 24) & ~v98;
        v180 = v187 + 7;
        v101 = (v187 + 7 + v100) & 0xFFFFFFFFFFFFFFF8;
        v102 = (v101 + 23) & 0xFFFFFFFFFFFFFFF8;
        v103 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
        v214 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
        v215 = v82;
        v193 = v98;
        v104 = swift_allocObject();
        *(v104 + 16) = v95;
        v105 = *(v97 + 32);
        v106 = v96;
        v107 = v99;
        v189 = v97 + 32;
        v181 = v105;
        v105(v104 + v100, v200, v106);
        v108 = (v104 + v101);
        v109 = v199;
        *v108 = v188;
        v108[1] = v109;
        v110 = (v104 + v102);
        v111 = v215;
        v112 = v219;
        *v110 = v216;
        v110[1] = v107;
        *(v104 + v103) = 9;
        v113 = v213;
        v114 = v104 + v214;
        *v114 = v111;
        *(v114 + 8) = 1;
        v115 = (v104 + ((v103 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v115 = 0;
        v115[1] = 0;
        v116 = *(v112 + 152);

        v116(sub_20B836F68, v104, v217, v112);
        v117 = v113;

        v118 = [objc_opt_self() mainScreen];
        [v118 scale];
        v120 = v119;

        v121 = sub_20C137BF4() / v120;
        v122 = sub_20C137C04();
        if (v121 <= 0.0 || (v123 = v122 / v120, v123 <= 0.0))
        {

          (*(v221 + 8))(v220, v222);
          return (*(v212 + 8))(v113, v211);
        }

        else
        {
          v124 = v193;
          v214 = ~v193;
          v126 = v217;
          v125 = v218;
          (*(v112 + 120))(0, v217, v112);
          v127 = v185;
          v179 = v107;
          v128 = v211;
          v129 = v208;
          v208(v185, v117, v211);
          (*(v212 + 56))(v127, 0, 1, v128);
          (*(v112 + 16))(v127, v126, v112);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v130 = sub_20C13D5A4();
          [v125 setBackgroundColor_];

          (*(v112 + 176))(COERCE_DOUBLE(*&v121), COERCE_DOUBLE(*&v123), 0, v126, v112);
          v131 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v132 = v200;
          v133 = v117;
          v134 = v129;
          v129(v200, v133, v128);
          v135 = (v124 + 16) & v214;
          v136 = (v180 + v135) & 0xFFFFFFFFFFFFFFF8;
          v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
          v138 = swift_allocObject();
          v181(v138 + v135, v132, v128);
          *(v138 + v136) = v131;
          v139 = (v138 + v137);
          *v139 = v121;
          v139[1] = v123;
          v219 = v138;
          v140 = (v138 + ((v137 + 23) & 0xFFFFFFFFFFFFFFF8));
          v141 = v213;
          v142 = v128;
          *v140 = 0;
          v140[1] = 0;
          v134(v132, v141, v128);
          (*(v201 + 104))(v202, *MEMORY[0x277D542A8], v203);
          v143 = v209;
          sub_20C138A54();
          v144 = v204;
          sub_20B5F1E10(v143, v204);
          v145 = v207;
          v146 = v186;
          if ((*(v207 + 48))(v144, 1, v186) == 1)
          {
            sub_20B520158(v144, &unk_27C766670);
            sub_20BA1DB3C();

            (*(v205 + 8))(v143, v206);
            (*(v221 + 8))(v220, v222);
            return (*(v212 + 8))(v141, v142);
          }

          else
          {
            v147 = v141;
            v148 = *(v145 + 32);
            v218 = (v145 + 32);
            v148(v210, v144, v146);
            v149 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v208(v132, v147, v142);
            v150 = (v193 + 40) & v214;
            v151 = v150 + v187;
            v152 = v146;
            v153 = v142;
            v154 = (v150 + v187) & 0xFFFFFFFFFFFFFFF8;
            v155 = swift_allocObject();
            *(v155 + 16) = v149;
            *(v155 + 24) = v121;
            *(v155 + 32) = v123;
            v181(v155 + v150, v132, v153);
            *(v155 + v151) = 1;
            v156 = v155 + v154;
            *(v156 + 8) = 0;
            *(v156 + 16) = 0;
            v157 = swift_allocObject();
            *(v157 + 16) = sub_20B8370FC;
            *(v157 + 24) = v155;
            v158 = v145;
            v159 = v195;
            (*(v145 + 16))(v195, v210, v152);
            v160 = (*(v145 + 80) + 16) & ~*(v145 + 80);
            v161 = (v194 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
            v162 = swift_allocObject();
            v148((v162 + v160), v159, v152);
            v163 = (v162 + v161);
            *v163 = sub_20B5F67A4;
            v163[1] = v157;
            v164 = v198;
            sub_20C137C94();
            v165 = swift_allocObject();
            v166 = v219;
            *(v165 + 16) = sub_20B837040;
            *(v165 + 24) = v166;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_20B5F67D4;
            *(v167 + 24) = v165;
            v168 = v183;
            v169 = v197;
            v170 = v184;
            (*(v183 + 16))(v197, v164, v184);
            v171 = (*(v168 + 80) + 16) & ~*(v168 + 80);
            v172 = (v196 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
            v173 = swift_allocObject();
            (*(v168 + 32))(v173 + v171, v169, v170);
            v174 = (v173 + v172);
            *v174 = sub_20B5DF204;
            v174[1] = v167;

            v175 = v182;
            sub_20C137C94();
            v176 = *(v168 + 8);
            v176(v164, v170);
            v177 = sub_20C137CB4();
            v178 = swift_allocObject();
            *(v178 + 16) = 0;
            *(v178 + 24) = 0;
            v177(sub_20B52347C, v178);

            v176(v175, v170);
            (*(v158 + 8))(v210, v186);
            (*(v205 + 8))(v209, v206);
            (*(v221 + 8))(v220, v222);
            return (*(v212 + 8))(v213, v211);
          }
        }
      }

      else
      {

        (*(v221 + 8))(v220, v222);
        return (*(v212 + 8))(v94, v211);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v59 = v223;
    v60 = sub_20C13BB74();
    v61 = sub_20C13D1D4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v224 = a1;
      v225 = v64;
      *v62 = 138543874;
      *(v62 + 4) = v59;
      *v63 = v59;
      *(v62 + 12) = 2160;
      *(v62 + 14) = 1752392040;
      *(v62 + 22) = 2080;
      v65 = sub_20B5F66D0();
      v66 = v59;
      v67 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v65);
      v69 = sub_20B51E694(v67, v68, &v225);

      *(v62 + 24) = v69;
      _os_log_impl(&dword_20B517000, v60, v61, "Attempted to configure %{public}@ with item: %{mask.hash}s", v62, 0x20u);
      sub_20B520158(v63, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v63, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x20F2F6A40](v64, -1, -1);
      MEMORY[0x20F2F6A40](v62, -1, -1);
    }

    return (*(v219 + 8))(v4, v2);
  }

  return result;
}

void sub_20B836F68()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5A674(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B837040(void *a1)
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

  sub_20BA638D0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8370FC(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F312C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20B8371D0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_layout;
  *v3 = xmmword_20C15CDF0;
  *(v3 + 16) = xmmword_20C15CE00;
  *(v3 + 32) = xmmword_20C15CE10;
  *(v3 + 48) = xmmword_20C15CE20;
  *(v3 + 64) = 0x4054000000000000;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_floatingView;
  v7 = [objc_allocWithZone(MEMORY[0x277D75F68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v9 setLineBreakMode_];
  [v9 setNumberOfLines_];
  v10 = objc_opt_self();
  v11 = [v10 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v9 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  [v9 setTextColor_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  [v15 setLineBreakMode_];
  v16 = *MEMORY[0x277D76940];
  v17 = [v10 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = [v12 blackColor];
  [v15 setTextColor_];

  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v19 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_actionLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v21 = [v10 preferredFontForTextStyle_];
  [v20 setFont_];

  [v20 setAdjustsFontForContentSizeCategory_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v19) = v20;
  v22 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackView;
  v23 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v23 setAlignment_];
  [v23 setAxis_];
  [v23 setDistribution_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v22) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_buttonStackView;
  v25 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v25 setAlignment_];
  [v25 setAxis_];
  [v25 setDistribution_];
  if (qword_27C760790 != -1)
  {
    swift_once();
  }

  [v25 setSpacing_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v24) = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_focusGuide;
  *(v0 + v26) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  v27 = OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_labelStackViewTrailingConstraint;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B837780()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E2A84);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

id sub_20B837964()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_titleLabel) text];
  if (result)
  {
    v26 = v2;
    v10 = result;
    v11 = sub_20C13C954();
    v13 = v12;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v25 = v1;
      v16 = [*(v0 + OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_subtitleLabel) text];
      if (v16)
      {
        v17 = v16;
        v18 = sub_20C13C954();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      *v8 = v11;
      v8[1] = v13;
      v8[2] = v18;
      v8[3] = v20;
      v21 = swift_storeEnumTagMultiPayload();
      *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
      *(&v25 - 4) = 0;
      *(&v25 - 24) = 1;
      *(&v25 - 2) = v8;
      *(&v25 - 1) = v15;
      v23 = [*(v15 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
      if (v23)
      {
        v24 = v23;
        sub_20C1331E4();

        sub_20C0C1CDC(v4, sub_20B5E275C);
        (*(v26 + 8))(v4, v25);
      }

      swift_unknownObjectRelease();
      return sub_20B5E2760(v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t CatalogTipSummaryNavigationHandlers.onLearnMoreTapped.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CatalogTipSummaryNavigationHandlers.onSeeMoreTipsTapped.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CatalogTipSummaryNavigationHandlers.init(onLearnMoreTapped:onSeeMoreTipsTapped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20B837C7C(uint64_t *a1, int a2)
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

uint64_t sub_20B837CC4(uint64_t result, int a2, int a3)
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

char *sub_20B837D14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  sub_20BD3E4B4(v83);
  v13 = v83[3];
  *(v12 + 2) = v83[2];
  *(v12 + 3) = v13;
  *(v12 + 4) = v83[4];
  *(v12 + 10) = v84;
  v14 = v83[1];
  *v12 = v83[0];
  *(v12 + 1) = v14;
  *&v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_iconLayout] = xmmword_20C15CF80;
  v15 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setClipsToBounds_];
  *&v5[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  [v18 setAdjustsFontSizeToFitWidth_];
  *&v5[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setClipsToBounds_];
  *&v5[v19] = v20;
  v21 = &v5[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v22 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v23 = sub_20B91B5FC(1);
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setClipsToBounds_];

  *v21 = v23;
  v21[1] = &off_2822B63E8;
  v82.receiver = v5;
  v82.super_class = type metadata accessor for ModalityFilterCell();
  v24 = objc_msgSendSuper2(&v82, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = [v24 contentView];
  v76 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  [v25 addSubview_];

  v26 = [v24 &selRef_setMaximumFractionDigits_];
  v78 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  [v26 addSubview_];

  v27 = v24;
  v28 = [v27 &selRef_setMaximumFractionDigits_];
  v29 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v75 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  [v28 addSubview_];

  v30 = &v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v31 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v32 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 288);
  v35 = v31;
  v34(1, ObjectType, v32);

  [*&v27[v29] addSubview_];
  v36 = [v27 traitCollection];

  v37 = *&v24[v78];
  v38 = &v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  v39 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 16];
  v89 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout];
  v90 = v39;
  v91 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 32];
  v92 = *&v27[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout + 48];
  v40 = sub_20B7C6A74(v36);
  [v37 setFont_];

  v41 = *&v24[v78];
  v42 = [v36 preferredContentSizeCategory];
  LOBYTE(v21) = sub_20C13D424();

  if (v21)
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  [v41 setNumberOfLines_];

  v44 = *(v38 + 1);
  v80[0] = *v38;
  v80[1] = v44;
  v45 = *(v38 + 2);
  v46 = *(v38 + 3);
  v47 = *(v38 + 4);
  v81 = *(v38 + 10);
  v80[3] = v46;
  v80[4] = v47;
  v80[2] = v45;
  v48 = *&v24[v76];
  sub_20B839890(v80, v87);
  v49 = v48;
  v50 = [v27 contentView];
  v77 = sub_20BD3E708(v49, v50);

  sub_20B8398EC(v80);
  v51 = *(v38 + 1);
  v87[0] = *v38;
  v87[1] = v51;
  v53 = *(v38 + 3);
  v52 = *(v38 + 4);
  v54 = *(v38 + 2);
  v88 = *(v38 + 10);
  v87[3] = v53;
  v87[4] = v52;
  v87[2] = v54;
  v55 = *&v27[v75];
  v56 = *v30;
  sub_20B839890(v87, v85);
  v57 = v55;
  v58 = v56;
  v59 = [v27 contentView];
  v60 = sub_20BD3DD68(v57, v58, v59);

  sub_20B8398EC(v87);
  v61 = *(v38 + 1);
  v85[0] = *v38;
  v85[1] = v61;
  v63 = *(v38 + 3);
  v62 = *(v38 + 4);
  v64 = *(v38 + 2);
  v86 = *(v38 + 10);
  v85[3] = v63;
  v85[4] = v62;
  v85[2] = v64;
  v65 = *&v24[v78];
  v66 = *&v27[v75];
  sub_20B839890(v85, &v79);
  v67 = v65;
  v68 = v66;
  v69 = [v27 contentView];

  v70 = sub_20BD3E11C(v67, v68, v69);
  sub_20B8398EC(v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  *(inited + 32) = v77;
  *(inited + 40) = v60;
  *(inited + 48) = v70;
  v72 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v73 = sub_20C13CC54();

  [v72 activateConstraints_];

  return v27;
}

id sub_20B838468()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ModalityFilterCell();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter] layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer];
  v4 = [v3 layer];
  [v4 setCornerRadius_];

  v5 = [v3 layer];
  [v5 setBorderWidth_];

  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  CGAffineTransformMakeScale(&v8, 0.75, 0.75);
  return [v6 setTransform_];
}

uint64_t sub_20B8387B0(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for ModalityFilterCell();
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        sub_20B83894C(v13);

        v3 = v13;
      }
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    sub_20B83894C(v3);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20B83894C(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v3 = *&Strong[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
  v4 = sub_20B7C6A74(a1);
  [v3 setFont_];

  v5 = *&Strong[v2];
  v6 = [a1 preferredContentSizeCategory];
  LOBYTE(v3) = sub_20C13D424();

  if (v3)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setNumberOfLines_];
}

void sub_20B838AAC(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
  v4 = objc_opt_self();
  if (!a1)
  {
    goto LABEL_8;
  }

  if (a1 != 1)
  {
    v26 = v4;
    v27 = [v4 darkGrayColor];
    [v3 setTextColor_];

    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
    v29 = [v26 darkGrayColor];
    [v28 setTintColor_];

    v30 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
    v31 = [v26 darkGrayColor];
    v32 = [v31 CGColor];

    [v30 setBorderColor_];
    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
    v25 = [v26 systemGray5Color];
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 blackColor];
  [v3 setTextColor_];

  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
  v8 = [v5 blackColor];
  [v7 setTintColor_];

  v9 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
  v10 = objc_opt_self();
  v11 = [v10 briskColors];
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 nonGradientTextColor];

  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = [v13 CGColor];

  [v9 setBorderColor_];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
  v15 = [v10 briskColors];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 nonGradientTextColor];

  if (!v17)
  {
    __break(1u);
LABEL_8:
    v18 = v4;
    v19 = [v4 whiteColor];
    [v3 setTextColor_];

    v20 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView];
    v21 = [v18 whiteColor];
    [v20 setTintColor_];

    v22 = [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer] layer];
    v23 = [v18 whiteColor];
    v24 = [v23 CGColor];

    [v22 setBorderColor_];
    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter];
    v25 = [v18 systemGray5Color];
LABEL_10:
    v17 = v25;
  }

  [v3 setBackgroundColor_];

  [v1 accessibilityApplyState:a1 == 1 disabled:a1 == 2];
}

id sub_20B838ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalityFilterCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModalityFilterCell()
{
  result = qword_281103068;
  if (!qword_281103068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B839030()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8390FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B839148@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8391A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B839220(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x26)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v9 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    ObjectType = swift_getObjectType();
    sub_20B9C7E94(v8);
    v12 = sub_20C13C914();

    v13 = [objc_opt_self() smm:v12 systemImageNamed:?];

    v14 = [v13 imageWithRenderingMode_];
    (*(v9 + 120))(v14, ObjectType, v9);
    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel];
    v16 = sub_20C13C914();
    [v15 setText_];

    sub_20B838AAC(v10);
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel] setText_];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView + 8];
    v18 = swift_getObjectType();
    (*(v17 + 120))(0, v18, v17);
    sub_20C13B534();

    v19 = v1;
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = a1;
      v33 = v31;
      *v22 = 138543874;
      *(v22 + 4) = v19;
      *v23 = v19;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2080;
      v24 = sub_20B5F66D0();
      v25 = v19;
      v26 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v24);
      v28 = sub_20B51E694(v26, v27, &v33);

      *(v22 + 24) = v28;
      _os_log_impl(&dword_20B517000, v20, v21, "Attempted to configure %{public}@ with item: %{mask.hash}s", v22, 0x20u);
      sub_20B520158(v23, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      v29 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_20B8395F4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_layout;
  sub_20BD3E4B4(v15);
  v4 = v15[3];
  *(v3 + 32) = v15[2];
  *(v3 + 48) = v4;
  *(v3 + 64) = v15[4];
  *(v3 + 80) = v16;
  v5 = v15[1];
  *v3 = v15[0];
  *(v3 + 16) = v5;
  *(v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_iconLayout) = xmmword_20C15CF80;
  v6 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_platter;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setClipsToBounds_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_titleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAllowsDefaultTighteningForTruncation_];
  [v9 setAdjustsFontSizeToFitWidth_];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setClipsToBounds_];
  *(v0 + v10) = v11;
  v12 = (v0 + OBJC_IVAR____TtC9SeymourUI18ModalityFilterCell_artworkView);
  v13 = objc_allocWithZone(type metadata accessor for ArtworkView());
  v14 = sub_20B91B5FC(1);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setClipsToBounds_];

  *v12 = v14;
  v12[1] = &off_2822B63E8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t type metadata accessor for SessionSummaryViewModel()
{
  result = qword_281102448;
  if (!qword_281102448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8399B4()
{
  sub_20B76EC8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKWorkoutActivityType(319);
    if (v1 <= 0x3F)
    {
      sub_20B652FC4(319, &qword_281102610);
      if (v2 <= 0x3F)
      {
        sub_20B839B34(319, qword_281100650, type metadata accessor for SummaryActivityRingsMetricViewModel);
        if (v3 <= 0x3F)
        {
          sub_20B839B34(319, qword_281100B30, type metadata accessor for SummaryBurnBarMetricViewModel);
          if (v4 <= 0x3F)
          {
            sub_20B652FC4(319, &qword_281100AC8);
            if (v5 <= 0x3F)
            {
              sub_20B652FC4(319, qword_281100AD0);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_20B839B34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20B839B88()
{
  if (sub_20C1380F4() != 3)
  {
    v25 = *(v0 + 136);
    if (v25)
    {
      v26 = *(v0 + 120);
      if (v26)
      {
        v27 = *(v0 + 144);
        v28 = *(v0 + 128);
        v29 = *(v0 + 80);
        v146[0] = *(v0 + 72);
        v146[1] = v29;
        v146[2] = v25;
        v146[3] = v27;
        v146[4] = v26;
        v146[5] = v28;
        v30 = *(v0 + 112);
        v147 = *(v0 + 104);
        v148 = v30;
        v31 = *(v0 + 96);
        v149 = *(v0 + 88);
        v150 = v31;
        v124 = *(v0 + 32);
        v151 = *(v0 + 24);
        v152 = v124;
        v32 = *(v0 + 40);
        v33 = *(v0 + 48);
        v128 = v32;
        v153 = v32;
        v154 = v33;
        sub_20B7A3154(v25, v27);
        sub_20B7A3154(v26, v28);
        v34 = v146[0];
        v35 = v29;
        v36 = v25;
        v37 = v27;
        v38 = v26;
        v39 = v28;
        sub_20B7A3154(v147, v30);
        sub_20B7A3154(v149, v31);
        sub_20B7A3154(v151, v124);
        result = sub_20B7A3154(v128, v33);
        v40 = 0;
        v13 = MEMORY[0x277D84F90];
LABEL_18:
        v41 = 7;
        if (v40 > 7)
        {
          v41 = v40;
        }

        v42 = v41 + 1;
        v43 = &v146[2 * v40];
        while (v40 != 7)
        {
          if (v42 == ++v40)
          {
            goto LABEL_79;
          }

          v44 = v43 + 2;
          v45 = *v43;
          v43 += 2;
          if (v45)
          {
            v129 = v39;
            v46 = v38;
            v47 = v36;
            v48 = *(v44 - 1);
            v49 = v45;
            v50 = v48;
            result = swift_isUniquelyReferenced_nonNull_native();
            v51 = v37;
            if ((result & 1) == 0)
            {
              result = sub_20BC0712C(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v53 = *(v13 + 16);
            v52 = *(v13 + 24);
            if (v53 >= v52 >> 1)
            {
              result = sub_20BC0712C((v52 > 1), v53 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v53 + 1;
            v54 = v13 + 16 * v53;
            *(v54 + 32) = v49;
            *(v54 + 40) = v50;
            v36 = v47;
            v38 = v46;
            v37 = v51;
            v39 = v129;
            goto LABEL_18;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0);
        swift_arrayDestroy();

        goto LABEL_62;
      }
    }

    else
    {
      v55 = *(v0 + 120);
      if (v55)
      {
        v56 = *(v0 + 128);
        v57 = *(v0 + 80);
        v155[0] = *(v0 + 72);
        v155[1] = v57;
        v155[2] = v55;
        v155[3] = v56;
        v58 = *(v0 + 112);
        v156 = *(v0 + 104);
        v157 = v58;
        v59 = *(v0 + 96);
        v158 = *(v0 + 88);
        v159 = v59;
        v60 = *(v0 + 32);
        v160 = *(v0 + 24);
        v161 = v60;
        v61 = *(v0 + 40);
        v62 = *(v0 + 48);
        v130 = v61;
        v162 = v61;
        v163 = v62;
        sub_20B7A3154(v55, v56);
        v63 = v155[0];
        v64 = v57;
        v123 = v55;
        v65 = v56;
        sub_20B7A3154(v156, v58);
        sub_20B7A3154(v158, v59);
        sub_20B7A3154(v160, v60);
        result = sub_20B7A3154(v130, v62);
        v66 = 0;
        v13 = MEMORY[0x277D84F90];
LABEL_34:
        if (v66 <= 6)
        {
          v67 = 6;
        }

        else
        {
          v67 = v66;
        }

        v68 = v67 + 1;
        v69 = &v155[2 * v66];
        while (v66 != 6)
        {
          if (v68 == ++v66)
          {
            goto LABEL_80;
          }

          v70 = v69 + 2;
          v71 = *v69;
          v69 += 2;
          if (v71)
          {
            v72 = *(v70 - 1);
            v73 = v71;
            v74 = v72;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_20BC0712C(0, *(v13 + 16) + 1, 1, v13);
              v13 = result;
            }

            v76 = *(v13 + 16);
            v75 = *(v13 + 24);
            if (v76 >= v75 >> 1)
            {
              result = sub_20BC0712C((v75 > 1), v76 + 1, 1, v13);
              v13 = result;
            }

            *(v13 + 16) = v76 + 1;
            v77 = v13 + 16 * v76;
            *(v77 + 32) = v73;
            *(v77 + 40) = v74;
            goto LABEL_34;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0);
        swift_arrayDestroy();

        return v13;
      }
    }

    v78 = *(v0 + 56);
    if (!v78)
    {
      v102 = *(v0 + 80);
      v173[0] = *(v0 + 72);
      v173[1] = v102;
      v103 = *(v0 + 112);
      v174 = *(v0 + 104);
      v175 = v103;
      v104 = *(v0 + 96);
      v176 = *(v0 + 88);
      v177 = v104;
      v105 = *(v0 + 32);
      v178 = *(v0 + 24);
      v179 = v105;
      v107 = *(v0 + 40);
      v106 = *(v0 + 48);
      v180 = v107;
      v181 = v106;
      v108 = v173[0];
      v109 = v102;
      sub_20B7A3154(v174, v103);
      sub_20B7A3154(v176, v104);
      sub_20B7A3154(v178, v105);
      result = sub_20B7A3154(v107, v106);
      v110 = 0;
      v13 = MEMORY[0x277D84F90];
LABEL_65:
      if (v110 <= 5)
      {
        v111 = 5;
      }

      else
      {
        v111 = v110;
      }

      v112 = v111 + 1;
      v113 = &v173[2 * v110];
      while (v110 != 5)
      {
        if (v112 == ++v110)
        {
          goto LABEL_82;
        }

        v114 = v113 + 2;
        v115 = *v113;
        v113 += 2;
        if (v115)
        {
          v116 = *(v114 - 1);
          v117 = v115;
          v118 = v116;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_20BC0712C(0, *(v13 + 16) + 1, 1, v13);
            v13 = result;
          }

          v120 = *(v13 + 16);
          v119 = *(v13 + 24);
          if (v120 >= v119 >> 1)
          {
            result = sub_20BC0712C((v119 > 1), v120 + 1, 1, v13);
            v13 = result;
          }

          *(v13 + 16) = v120 + 1;
          v121 = v13 + 16 * v120;
          *(v121 + 32) = v117;
          *(v121 + 40) = v118;
          goto LABEL_65;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0);
LABEL_30:
      swift_arrayDestroy();
      return v13;
    }

    v79 = *(v0 + 64);
    v80 = *(v0 + 80);
    v125 = *(v0 + 88);
    v164[0] = *(v0 + 72);
    v164[1] = v80;
    v164[2] = v78;
    v164[3] = v79;
    v81 = *(v0 + 112);
    v82 = *(v0 + 96);
    v165 = *(v0 + 104);
    v166 = v81;
    v167 = v125;
    v168 = v82;
    v83 = *(v0 + 32);
    v169 = *(v0 + 24);
    v170 = v83;
    v84 = *(v0 + 40);
    v85 = *(v0 + 48);
    v127 = v84;
    v171 = v84;
    v172 = v85;
    sub_20B7A3154(v78, v79);
    v86 = v164[0];
    v87 = v80;
    v38 = v78;
    v88 = v79;
    sub_20B7A3154(v165, v81);
    sub_20B7A3154(v125, v82);
    sub_20B7A3154(v169, v83);
    result = sub_20B7A3154(v127, v85);
    v89 = 0;
    v13 = MEMORY[0x277D84F90];
LABEL_48:
    if (v89 <= 6)
    {
      v90 = 6;
    }

    else
    {
      v90 = v89;
    }

    v91 = v90 + 1;
    v92 = &v164[2 * v89];
    while (v89 != 6)
    {
      if (v91 == ++v89)
      {
        goto LABEL_81;
      }

      v93 = v92 + 2;
      v94 = *v92;
      v92 += 2;
      if (v94)
      {
        v95 = v38;
        v96 = *(v93 - 1);
        v97 = v94;
        v98 = v96;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_20BC0712C(0, *(v13 + 16) + 1, 1, v13);
          v13 = result;
        }

        v100 = *(v13 + 16);
        v99 = *(v13 + 24);
        if (v100 >= v99 >> 1)
        {
          result = sub_20BC0712C((v99 > 1), v100 + 1, 1, v13);
          v13 = result;
        }

        *(v13 + 16) = v100 + 1;
        v101 = v13 + 16 * v100;
        *(v101 + 32) = v97;
        *(v101 + 40) = v98;
        v38 = v95;
        goto LABEL_48;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0);
    swift_arrayDestroy();

LABEL_62:
    return v13;
  }

  v1 = *(v0 + 32);
  v131[0] = *(v0 + 24);
  v131[1] = v1;
  v2 = *(v0 + 48);
  v132 = *(v0 + 40);
  v133 = v2;
  v3 = *(v0 + 64);
  v134 = *(v0 + 56);
  v135 = v3;
  v4 = *(v0 + 80);
  v136 = *(v0 + 72);
  v137 = v4;
  v5 = *(v0 + 112);
  v138 = *(v0 + 104);
  v139 = v5;
  v6 = *(v0 + 96);
  v140 = *(v0 + 88);
  v141 = v6;
  v122 = *(v0 + 144);
  v142 = *(v0 + 136);
  v143 = v122;
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v126 = v7;
  v144 = v7;
  v145 = v8;
  sub_20B7A3154(v131[0], v1);
  sub_20B7A3154(v132, v2);
  sub_20B7A3154(v134, v3);
  v9 = v136;
  v10 = v4;
  sub_20B7A3154(v138, v5);
  sub_20B7A3154(v140, v6);
  sub_20B7A3154(v142, v122);
  result = sub_20B7A3154(v126, v8);
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
LABEL_3:
  if (v12 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = &v131[2 * v12];
  while (1)
  {
    if (v12 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7666A0);
      goto LABEL_30;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 2;
    v18 = *v16;
    v16 += 2;
    if (v18)
    {
      v19 = *(v17 - 1);
      v20 = v18;
      v21 = v19;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20BC0712C(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
      }

      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_20BC0712C((v22 > 1), v23 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

id sub_20B83A4B0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PlaybackControl();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_20B83A544(char a1)
{
  v2 = v1;
  v29.receiver = v1;
  v29.super_class = type metadata accessor for PlaybackControl();
  objc_msgSendSuper2(&v29, sel_setHighlighted_, a1 & 1);
  v4 = [v1 isHighlighted];
  [v1 layoutIfNeeded];
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI15PlaybackControl_transitionView];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = v5[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state];
  v5[OBJC_IVAR____TtC9SeymourUI29PlaybackControlTransitionView_state] = v4;
  if ((v8 & 1) == 0)
  {
    if (v4)
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      v18[2] = sub_20B83B4C0;
      v18[3] = v6;
      v18[4] = v5;
      v18[5] = sub_20B816234;
      v18[6] = v7;
      v27 = sub_20B83B4E4;
      v28 = v18;
      v23 = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_20B7B548C;
      v26 = &block_descriptor_32_0;
      v15 = _Block_copy(&v23);
      v19 = v2;

      v20 = v5;

      [v17 animateWithDuration:2 delay:v15 options:0 animations:0.2 completion:0.0];
      goto LABEL_6;
    }

LABEL_7:
    v21 = v2;
    goto LABEL_8;
  }

  if (v4)
  {
    goto LABEL_7;
  }

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = sub_20B83B4C0;
  v10[3] = v6;
  v10[4] = v5;
  v27 = sub_20B83B4CC;
  v28 = v10;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_20B7B548C;
  v26 = &block_descriptor_24;
  v11 = _Block_copy(&v23);
  v12 = v2;

  v13 = v5;

  [v9 animateWithDuration:2 delay:v11 options:0 animations:0.47 completion:0.0];
  _Block_release(v11);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = sub_20B816234;
  v14[4] = v7;
  v27 = sub_20B83B4D8;
  v28 = v14;
  v23 = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_20B7B548C;
  v26 = &block_descriptor_26;
  v15 = _Block_copy(&v23);
  v16 = v13;

  [v9 animateWithDuration:2 delay:v15 options:0 animations:0.2 completion:0.0];
LABEL_6:
  _Block_release(v15);
LABEL_8:
}