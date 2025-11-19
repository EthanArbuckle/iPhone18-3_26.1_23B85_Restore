void sub_21B64BB80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_21B64BDE4();
  }
}

void sub_21B64BBD4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v0 traitCollection];
  [v11 displayScale];
  v13 = v12;

  CGAffineTransformMakeScale(&v20, 0.69, 0.69);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  CGRectApplyAffineTransform(v21, &v20);
  UIRectCenteredIntegralRectScale();
  v14 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  v15 = *&v0[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v15 sizeForNumberOfPages_];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  [v16 effectiveUserInterfaceLayoutDirection];

  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  CGRectGetMidY(v22);
  v18 = *&v0[v14];
  if (v18)
  {
    v19 = v18;
    BSRectWithSize();
    UIRectCenteredAboutPointScale();
    [v19 setFrame_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_21B64BDE4()
{
  v0 = sub_21B64D25C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_21B64DE08(v0);
    if (v2)
    {
      log = v2;
      sub_21B64E198(v2, 0, 0);
    }

    else
    {
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v6 = sub_21B6C8AB4();
      __swift_project_value_buffer(v6, qword_27CD94D60);
      v7 = sub_21B6C9024();
      log = sub_21B6C8A94();
      if (os_log_type_enabled(log, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_21B526000, log, v7, "Error making editing view controller for Add UI", v8, 2u);
        MEMORY[0x21CEF8150](v8, -1, -1);
      }
    }
  }

  else
  {
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v3 = sub_21B6C8AB4();
    __swift_project_value_buffer(v3, qword_27CD94D60);
    v4 = sub_21B6C9024();
    log = sub_21B6C8A94();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21B526000, log, v4, "Should have a template descriptor here", v5, 2u);
      MEMORY[0x21CEF8150](v5, -1, -1);
    }
  }
}

uint64_t sub_21B64BFAC()
{
  v1 = v0;
  v84[3] = *MEMORY[0x277D85DE8];
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v76 = &v66 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v66 - v8;
  v10 = *MEMORY[0x277D3EE98];
  v82 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
  v11 = [v82 posterConfigurationsForRole:v10 error:0];
  sub_21B61785C(0, &qword_27CD93518);
  v12 = sub_21B6C8E84();

  if (v12 >> 62)
  {
    v14 = sub_21B6C9454();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
LABEL_3:
      if (v14 < 1)
      {
        __break(1u);
      }

      v79 = v9;
      v15 = 0;
      v81 = (v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider);
      v77 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
      v16 = v12 & 0xC000000000000001;
      v74 = (v3 + 8);
      v75 = (v3 + 32);
      v72 = (v3 + 16);
      v17 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
      *&v13 = 136315138;
      v66 = v13;
      v80 = v14;
      v67 = v1;
      v78 = v12;
      while (1)
      {
        if (v16)
        {
          v18 = MEMORY[0x21CEF66E0](v15, v12);
        }

        else
        {
          v18 = *(v12 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = [v82 v17[406]];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 posterExtensionBundleIdentifier];

          v23 = sub_21B6C8DA4();
          v25 = v24;

          v26 = v81[1];
          if (v25)
          {
            v14 = v80;
            if (v26)
            {
              if (v23 == *v81 && v26 == v25)
              {

LABEL_25:
                v29 = v19;
                v30 = [v29 serverIdentity];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 posterUUID];

                  v33 = v76;
                  sub_21B6C88A4();

                  (*v75)(v79, v33, v2);
                  v34 = sub_21B6C8884();
                  v84[0] = 0;
                  v35 = [v82 posterWithUUID:v34 error:v84];

                  v36 = v84[0];
                  if (v35)
                  {
                    v37 = type metadata accessor for AmbientPosterModel();
                    v38 = objc_allocWithZone(v37);
                    *&v38[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration] = 0;
                    *&v38[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath] = 0;
                    v39 = &v38[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_symbolName];
                    *v39 = 0;
                    *(v39 + 1) = 0;
                    v40 = &v38[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_localizedTitle];
                    *v40 = 0;
                    *(v40 + 1) = 0;
                    *&v38[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration] = v35;
                    v83.receiver = v38;
                    v83.super_class = v37;
                    v41 = v36;
                    v42 = v35;
                    v43 = objc_msgSendSuper2(&v83, sel_init);
                    sub_21B638B74();
                    v44 = v77;
                    swift_beginAccess();
                    v45 = v43;
                    MEMORY[0x21CEF6000]();
                    if (*((*(v1 + v44) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v44) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_21B6C8E94();
                      v14 = v80;
                    }

                    sub_21B6C8EA4();
                    swift_endAccess();

                    (*v74)(v79, v2);
                    v12 = v78;
                    v17 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
                  }

                  else
                  {
                    v46 = v84[0];
                    v47 = sub_21B6C8764();

                    swift_willThrow();
                    if (qword_27CD925A8 != -1)
                    {
                      swift_once();
                    }

                    v48 = sub_21B6C8AB4();
                    __swift_project_value_buffer(v48, qword_27CD94D60);
                    v49 = sub_21B6C9024();
                    (*v72)(v73, v79, v2);
                    v50 = sub_21B6C8A94();
                    if (os_log_type_enabled(v50, v49))
                    {
                      v51 = swift_slowAlloc();
                      v52 = swift_slowAlloc();
                      v68 = v49;
                      v70 = v52;
                      v84[0] = v52;
                      *v51 = v66;
                      sub_21B6578DC(&unk_27CD93530, MEMORY[0x277CC95F0]);
                      v53 = v73;
                      v54 = sub_21B6C9654();
                      v69 = v47;
                      v55 = v16;
                      v56 = v54;
                      v57 = v2;
                      v59 = v58;
                      v71 = *v74;
                      v71(v53, v57);
                      v60 = v56;
                      v16 = v55;
                      v61 = sub_21B656178(v60, v59, v84);
                      v2 = v57;
                      v17 = &selRef_newAssertionForBundleIdentifier_withReason_level_;

                      *(v51 + 4) = v61;
                      _os_log_impl(&dword_21B526000, v50, v68, "Error getting poster configuration with UUID: %s", v51, 0xCu);
                      v62 = v70;
                      __swift_destroy_boxed_opaque_existential_0(v70);
                      MEMORY[0x21CEF8150](v62, -1, -1);
                      v63 = v51;
                      v1 = v67;
                      MEMORY[0x21CEF8150](v63, -1, -1);

                      v71(v79, v2);
                    }

                    else
                    {

                      v64 = *v74;
                      (*v74)(v73, v2);
                      v64(v79, v2);
                    }

                    v12 = v78;
                    v14 = v80;
                  }
                }

                else
                {

                  v12 = v78;
                }

                goto LABEL_7;
              }

              v28 = sub_21B6C96E4();

              if (v28)
              {
                goto LABEL_25;
              }
            }

            else
            {
            }
          }

          else
          {
            v14 = v80;
            if (!v26)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!v81[1])
        {
          goto LABEL_25;
        }

LABEL_7:
        if (v14 == ++v15)
        {
        }
      }
    }
  }
}

void sub_21B64C794()
{
  v1 = sub_21B6C88C4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35[-v7];
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-v9];
  v11 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration);
  if (v11)
  {
    v12 = [v11 _path];
    v13 = [v12 serverIdentity];

    if (v13)
    {
      v14 = [v13 posterUUID];

      sub_21B6C88A4();
      (*(v2 + 32))(v10, v8, v1);
      v15 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
      v16 = swift_beginAccess();
      v17 = *(v0 + v15);
      MEMORY[0x28223BE20](v16);
      *&v35[-16] = v10;

      sub_21B647654(sub_21B657BD4, &v35[-32], v17);
      v19 = v18;
      LOBYTE(v14) = v20;

      if (v14)
      {
        if (qword_27CD925A8 != -1)
        {
          swift_once();
        }

        v21 = sub_21B6C8AB4();
        __swift_project_value_buffer(v21, qword_27CD94D60);
        v22 = sub_21B6C9024();
        (*(v2 + 16))(v5, v10, v1);
        v23 = sub_21B6C8A94();
        if (os_log_type_enabled(v23, v22))
        {
          v24 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v38[0] = v37;
          *v24 = 136315138;
          sub_21B6578DC(&unk_27CD93530, MEMORY[0x277CC95F0]);
          v25 = sub_21B6C9654();
          v27 = v26;
          v36 = v22;
          v28 = *(v2 + 8);
          v28(v5, v1);
          v29 = sub_21B656178(v25, v27, v38);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_21B526000, v23, v36, "Couldn't find index of active poster with UUID %s", v24, 0xCu);
          v30 = v37;
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x21CEF8150](v30, -1, -1);
          MEMORY[0x21CEF8150](v24, -1, -1);
        }

        else
        {

          v28 = *(v2 + 8);
          v28(v5, v1);
        }

        v28(v10, v1);
      }

      else
      {
        sub_21B6500A4(v19, 0);
        (*(v2 + 8))(v10, v1);
      }
    }

    else
    {
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v31 = sub_21B6C8AB4();
      __swift_project_value_buffer(v31, qword_27CD94D60);
      v32 = sub_21B6C9024();
      v37 = sub_21B6C8A94();
      if (os_log_type_enabled(v37, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_21B526000, v37, v32, "Couldn't find UUID of active poster", v33, 2u);
        MEMORY[0x21CEF8150](v33, -1, -1);
      }

      v34 = v37;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B64CCC8()
{
  result = qword_28120B360;
  if (!qword_28120B360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD93B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B360);
  }

  return result;
}

uint64_t sub_21B64CD2C(void *a1, uint64_t a2)
{
  v4 = sub_21B6C88C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *(*a1 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
  v36 = v18;
  if (v17)
  {
    v34 = a2;
    v19 = v17;
    v20 = [v19 serverIdentity];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 posterUUID];

      sub_21B6C88A4();
      v23 = *(v5 + 56);
      v23(v16, 0, 1, v4);
    }

    else
    {

      v23 = *(v5 + 56);
      v23(v16, 1, 1, v4);
    }

    a2 = v34;
  }

  else
  {
    v23 = *(v5 + 56);
    v23(&v33 - v15, 1, 1, v4);
  }

  (*(v5 + 16))(v14, a2, v4);
  v23(v14, 0, 1, v4);
  v24 = *(v7 + 48);
  sub_21B63D2BC(v16, v9, &qword_27CD92EE8);
  sub_21B63D2BC(v14, &v9[v24], &qword_27CD92EE8);
  v25 = v5;
  v26 = *(v5 + 48);
  if (v26(v9, 1, v4) != 1)
  {
    sub_21B63D2BC(v9, v36, &qword_27CD92EE8);
    if (v26(&v9[v24], 1, v4) != 1)
    {
      v28 = v25;
      v29 = v35;
      (*(v25 + 32))(v35, &v9[v24], v4);
      sub_21B6578DC(&qword_27CD92F20, MEMORY[0x277CC95F0]);
      v30 = v36;
      v27 = sub_21B6C8D64();
      v31 = *(v28 + 8);
      v31(v29, v4);
      sub_21B62AA8C(v14, &qword_27CD92EE8);
      sub_21B62AA8C(v16, &qword_27CD92EE8);
      v31(v30, v4);
      sub_21B62AA8C(v9, &qword_27CD92EE8);
      return v27 & 1;
    }

    sub_21B62AA8C(v14, &qword_27CD92EE8);
    sub_21B62AA8C(v16, &qword_27CD92EE8);
    (*(v25 + 8))(v36, v4);
    goto LABEL_12;
  }

  sub_21B62AA8C(v14, &qword_27CD92EE8);
  sub_21B62AA8C(v16, &qword_27CD92EE8);
  if (v26(&v9[v24], 1, v4) != 1)
  {
LABEL_12:
    sub_21B62AA8C(v9, &unk_27CD93370);
    v27 = 0;
    return v27 & 1;
  }

  sub_21B62AA8C(v9, &qword_27CD92EE8);
  v27 = 1;
  return v27 & 1;
}

void *sub_21B64D25C()
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (!*(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider + 8))
  {
    __break(1u);
  }

  v1 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);

  v2 = sub_21B6C8D74();

  v52[0] = 0;
  v3 = [v1 posterDescriptorsForExtensionBundleIdentifier:v2 error:v52];

  v4 = v52[0];
  if (v3)
  {
    sub_21B61785C(0, &qword_27CD93518);
    v5 = sub_21B6C8E84();
    v6 = v4;

    v52[0] = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_68;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CEF66E0](v9, v5);
        }

        else
        {
          if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_63;
          }

          v10 = *(v5 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v7 = sub_21B6C9454();
          goto LABEL_5;
        }

        v13 = v7;
        v14 = [v10 role];
        v15 = sub_21B6C8DA4();
        v17 = v16;
        if (v15 == sub_21B6C8DA4() && v17 == v18)
        {
        }

        else
        {
          v20 = sub_21B6C96E4();

          if ((v20 & 1) == 0)
          {

            goto LABEL_9;
          }
        }

        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
LABEL_9:
        ++v9;
        v7 = v13;
        if (v12 == v13)
        {
          v21 = v52[0];
          v8 = MEMORY[0x277D84F90];
          goto LABEL_27;
        }
      }
    }

    v21 = MEMORY[0x277D84F90];
LABEL_27:

    v52[0] = v8;
    if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
    {
      v32 = sub_21B6C9454();
    }

    else
    {
      v32 = *(v21 + 16);
    }

    if (v32)
    {
      v33 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x21CEF66E0](v33, v21);
        }

        else
        {
          if (v33 >= *(v21 + 16))
          {
            goto LABEL_65;
          }

          v34 = *(v21 + 8 * v33 + 32);
        }

        v35 = v34;
        v5 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_64;
        }

        v36 = [v34 role];
        v37 = sub_21B6C8DA4();
        v39 = v38;
        if (v37 == sub_21B6C8DA4() && v39 == v40)
        {
        }

        else
        {
          v42 = sub_21B6C96E4();

          if ((v42 & 1) == 0)
          {

            goto LABEL_34;
          }
        }

        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
LABEL_34:
        ++v33;
        if (v5 == v32)
        {
          v43 = v52[0];
          goto LABEL_48;
        }
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_48:

    if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
    {
      v44 = sub_21B6C9454();
      if (v44)
      {
LABEL_51:
        v45 = 0;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x21CEF66E0](v45, v43);
          }

          else
          {
            if (v45 >= *(v43 + 16))
            {
              goto LABEL_67;
            }

            v46 = *(v43 + 8 * v45 + 32);
          }

          v47 = v46;
          v5 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_66;
          }

          v48 = [v46 pbf_ambientConfiguration];
          if (v48)
          {
            v49 = v48;
            v50 = [v48 creationBehavior];

            if (v50 == 1)
            {

              return v47;
            }
          }

          ++v45;
        }

        while (v5 != v44);
      }
    }

    else
    {
      v44 = *(v43 + 16);
      if (v44)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    v22 = v52[0];
    v23 = sub_21B6C8764();

    swift_willThrow();
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v24 = sub_21B6C8AB4();
    __swift_project_value_buffer(v24, qword_27CD94D60);
    v25 = sub_21B6C9024();
    v26 = v23;
    v27 = sub_21B6C8A94();

    if (os_log_type_enabled(v27, v25))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v23;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_21B526000, v27, v25, "Error fetching poster template descriptor: %@", v28, 0xCu);
      sub_21B62AA8C(v29, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v29, -1, -1);
      MEMORY[0x21CEF8150](v28, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21B64D8B0(char *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = *&a1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel];
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
  if (!v3)
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v6 = result;
    v7 = v3;
    v8 = [v6 identity];
    v9 = [v8 provider];

    v10 = v9;
    if (!v9)
    {
      sub_21B6C8DA4();
      v10 = sub_21B6C8D74();
    }

    v11 = sub_21B6C8DA4();
    v13 = v12;
    v14 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
    v15 = sub_21B6C8D74();
    v38[0] = 0;
    v16 = [v14 acquireExtensionInstance:v10 reason:v15 error:v38];

    if (v16)
    {
      v17 = v38[0];

      v18 = [objc_allocWithZone(MEMORY[0x277D3ECC0]) initWithProvider:v16 contents:v6];
      if ([v18 isSceneAvailable])
      {
        [v18 setVariant_];
        [v18 setShowsContentWhenReady_];
        [v18 setDelegate_];
        [v18 setUserInfo_];
        v19 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
        if (v19)
        {
          v20 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
        }

        else
        {
          v36 = [objc_opt_self() pui_sharedDisplayMonitor];
          v20 = [v36 mainConfiguration];

          v19 = 0;
        }

        v37 = v19;
        [v18 setDisplayConfiguration_];

        return v18;
      }

      else
      {

        if (qword_27CD925E0 != -1)
        {
          swift_once();
        }

        v29 = sub_21B6C8AB4();
        __swift_project_value_buffer(v29, qword_27CD94DD8);
        v30 = a1;
        v31 = sub_21B6C8A94();
        v32 = sub_21B6C9044();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          *(v33 + 4) = v30;
          *v34 = v30;
          v35 = v30;
          _os_log_impl(&dword_21B526000, v31, v32, "Can't begin editing for %@ because the editing scene failed to create", v33, 0xCu);
          sub_21B62AA8C(v34, &qword_27CD92EF0);
          MEMORY[0x21CEF8150](v34, -1, -1);
          MEMORY[0x21CEF8150](v33, -1, -1);
        }

        return 0;
      }
    }

    else
    {
      v21 = v38[0];

      v22 = sub_21B6C8764();
      swift_willThrow();
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v23 = sub_21B6C8AB4();
      __swift_project_value_buffer(v23, qword_27CD94D60);
      v24 = sub_21B6C9024();

      v25 = sub_21B6C8A94();

      if (os_log_type_enabled(v25, v24))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v38[0] = v27;
        *v26 = 136315138;
        v28 = sub_21B656178(v11, v13, v38);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_21B526000, v25, v24, "Error makeEditingSceneViewController: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x21CEF8150](v27, -1, -1);
        MEMORY[0x21CEF8150](v26, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

id sub_21B64DE08(void *a1)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [a1 identity];
  v4 = [v3 provider];

  v5 = v4;
  if (!v4)
  {
    sub_21B6C8DA4();
    v5 = sub_21B6C8D74();
  }

  v6 = sub_21B6C8DA4();
  v8 = v7;
  v9 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
  v10 = sub_21B6C8D74();
  v30[0] = 0;
  v11 = [v9 acquireExtensionInstance:v5 reason:v10 error:v30];

  if (v11)
  {
    v12 = v30[0];

    v13 = [objc_allocWithZone(MEMORY[0x277D3ECC0]) initWithProvider:v11 contents:a1];
    [v13 setVariant_];
    [v13 setShowsContentWhenReady_];
    [v13 setDelegate_];
    v14 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
    }

    else
    {
      v25 = objc_opt_self();
      v26 = v13;
      v27 = [v25 pui_sharedDisplayMonitor];
      v16 = [v27 mainConfiguration];

      v14 = 0;
    }

    v28 = v14;
    [v13 setDisplayConfiguration_];
  }

  else
  {
    v17 = v30[0];
    v18 = sub_21B6C8764();

    swift_willThrow();
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v19 = sub_21B6C8AB4();
    __swift_project_value_buffer(v19, qword_27CD94D60);
    v20 = sub_21B6C9024();

    v21 = sub_21B6C8A94();

    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30[0] = v23;
      *v22 = 136315138;
      v24 = sub_21B656178(v6, v8, v30);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_21B526000, v21, v20, "Error makeEditingSceneViewController: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x21CEF8150](v23, -1, -1);
      MEMORY[0x21CEF8150](v22, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v13;
}

void sub_21B64E198(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10 && (v11 = [v10 windowScene], v10, v11))
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D75DA0]) initWithWindowScene_];
      [v12 setWindowLevel_];
      [v12 setRootViewController_];
      [a1 setForcesSceneForeground_];
      [v12 setHidden_];
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      v14[2] = v4;
      v14[3] = a2;
      v14[4] = a3;
      aBlock[4] = sub_21B6578D0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B63863C;
      aBlock[3] = &block_descriptor_154;
      v15 = _Block_copy(aBlock);
      v16 = v4;
      sub_21B638B64(a2);

      [v13 animateWithDuration:v15 animations:0.2];

      _Block_release(v15);
      v17 = *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController];
      *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController] = a1;
      v18 = a1;

      v19 = *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow];
      *&v16[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow] = v12;
    }

    else
    {
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v20 = sub_21B6C8AB4();
      __swift_project_value_buffer(v20, qword_27CD94D60);
      v21 = sub_21B6C9024();
      log = sub_21B6C8A94();
      if (os_log_type_enabled(log, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_21B526000, log, v21, "Error getting window scene for editing scene view controller", v22, 2u);
        MEMORY[0x21CEF8150](v22, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_21B64E4A8(uint64_t a1, uint64_t (*a2)(id))
{
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  result = [result setAlpha_];
  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_21B64E548(void *a1)
{
  v2 = v1;
  if (*(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController))
  {
    if (qword_27CD925E0 != -1)
    {
      swift_once();
    }

    v4 = sub_21B6C8AB4();
    __swift_project_value_buffer(v4, qword_27CD94DD8);
    v5 = a1;
    oslog = sub_21B6C8A94();
    v6 = sub_21B6C9044();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&dword_21B526000, oslog, v6, "Can't begin editing for %@ because editing is already happening", v7, 0xCu);
      sub_21B62AA8C(v8, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v8, -1, -1);
      MEMORY[0x21CEF8150](v7, -1, -1);
    }

LABEL_13:

    return;
  }

  if (qword_27CD925E0 != -1)
  {
    swift_once();
  }

  v10 = sub_21B6C8AB4();
  __swift_project_value_buffer(v10, qword_27CD94DD8);
  v11 = a1;
  v12 = sub_21B6C8A94();
  v13 = sub_21B6C9044();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_21B526000, v12, v13, "Begin editing for %@", v14, 0xCu);
    sub_21B62AA8C(v15, &qword_27CD92EF0);
    MEMORY[0x21CEF8150](v15, -1, -1);
    MEMORY[0x21CEF8150](v14, -1, -1);
  }

  v17 = sub_21B64D8B0(v11);
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    v20 = v11;
    sub_21B64E198(v18, sub_21B6578A4, v19);

    v21 = [v18 view];
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x277D76180]) initWithSourceView_];

    [v23 setHidesSourceView_];
    v24 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    [v24 setView_];
    oslog = *&v20[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController];
    *&v20[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingViewController] = v24;
    v25 = v24;
    sub_21B64020C(oslog);

    goto LABEL_13;
  }
}

void sub_21B64E900(void *a1)
{
  v2 = v1;
  if ([a1 userInfo])
  {
    sub_21B6C93E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  aBlock = v32;
  v29 = v33;
  if (*(&v33 + 1))
  {
    type metadata accessor for AmbientCollectionViewCell();
    if (swift_dynamicCast())
    {
      if (qword_27CD925E0 != -1)
      {
        swift_once();
      }

      v4 = sub_21B6C8AB4();
      __swift_project_value_buffer(v4, qword_27CD94DD8);
      v5 = v27;
      v6 = sub_21B6C8A94();
      v7 = sub_21B6C9044();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v5;
        *v9 = v5;
        v10 = v5;
        _os_log_impl(&dword_21B526000, v6, v7, "End editing for %@", v8, 0xCu);
        sub_21B62AA8C(v9, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v9, -1, -1);
        MEMORY[0x21CEF8150](v8, -1, -1);
      }

      v11 = *&v5[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton];
      v12 = v11;

      v13 = v12;
      goto LABEL_17;
    }
  }

  else
  {
    sub_21B62AA8C(&aBlock, &qword_27CD936C0);
  }

  if (qword_27CD925E0 != -1)
  {
    swift_once();
  }

  v14 = sub_21B6C8AB4();
  __swift_project_value_buffer(v14, qword_27CD94DD8);
  v15 = sub_21B6C8A94();
  v16 = sub_21B6C9044();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21B526000, v15, v16, "End editing for Add UI", v17, 2u);
    MEMORY[0x21CEF8150](v17, -1, -1);
  }

  v11 = 0;
LABEL_17:
  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v11;
  v30 = sub_21B65789C;
  v31 = v19;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v29 = sub_21B63863C;
  *(&v29 + 1) = &block_descriptor_145;
  v20 = _Block_copy(&aBlock);
  v21 = v2;

  [v18 animateWithDuration:v20 animations:0.2];
  _Block_release(v20);
  v22 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow;
  v23 = *&v21[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow];
  if (v23 && ([v23 setHidden_], (v24 = *&v21[v22]) != 0))
  {
    [v24 setRootViewController_];
    v25 = *&v21[v22];
  }

  else
  {
    v25 = 0;
  }

  *&v21[v22] = 0;

  [a1 invalidate];
  v26 = *&v21[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController];
  *&v21[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController] = 0;
}

char *sub_21B64ECF4(char *result, void *a2)
{
  v2 = *&result[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  v5 = v2;
  v6 = sub_21B64D25C();
  if (v6)
  {

    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [v5 setAlpha_];

  result = *&v4[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton];
  if (!result)
  {
    goto LABEL_13;
  }

  [result setAlpha_];
  result = *&v4[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = [result setAlpha_];
  if (a2)
  {

    return [a2 setAlpha_];
  }

  return result;
}

void sub_21B64EDD8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = [a1 view];
  if (v11)
  {
    v31 = v11;
    v12 = [v5 view];
    if (v12)
    {
      v13 = v12;
      [v12 bounds];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v34.origin.x = a2;
      v34.origin.y = a3;
      v34.size.width = a4;
      v34.size.height = a5;
      Height = CGRectGetHeight(v34);
      v35.origin.x = v15;
      v35.origin.y = v17;
      v35.size.width = v19;
      v35.size.height = v21;
      v36 = CGRectOffset(v35, 0.0, Height);
      [v31 setFrame_];
      [v5 addChildViewController_];
      if (*&v5[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton])
      {
        [v13 insertSubview:v31 belowSubview:?];
        [a1 didMoveToParentViewController_];
        v23 = *&v5[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController];
        *&v5[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController] = a1;
        v24 = a1;

        v25 = &v5[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect];
        *v25 = a2;
        v25[1] = a3;
        v25[2] = a4;
        v25[3] = a5;
        *(v25 + 32) = 0;
        v26 = objc_opt_self();
        v27 = swift_allocObject();
        *(v27 + 16) = v31;
        *(v27 + 24) = v13;
        aBlock[4] = sub_21B65799C;
        aBlock[5] = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21B63863C;
        aBlock[3] = &block_descriptor_216;
        v28 = _Block_copy(aBlock);
        v29 = v31;
        v30 = v13;

        [v26 animateWithDuration:v28 animations:0.2];
        _Block_release(v28);
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

void sub_21B64F06C(void (*a1)(void), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      v9 = &v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect];
      if ((v2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect + 32] & 1) == 0)
      {
        v18 = *(v9 + 1);
        v19 = *v9;
        v10 = objc_opt_self();
        v11 = swift_allocObject();
        *(v11 + 16) = v8;
        *(v11 + 40) = v18;
        *(v11 + 24) = v19;
        v24 = sub_21B6579E4;
        v25 = v11;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_21B63863C;
        v23 = &block_descriptor_222;
        v12 = _Block_copy(&aBlock);
        v13 = v8;

        v14 = swift_allocObject();
        v14[2] = v6;
        v14[3] = v2;
        v14[4] = a1;
        v14[5] = a2;
        v24 = sub_21B6579F4;
        v25 = v14;
        aBlock = MEMORY[0x277D85DD0];
        v21 = 1107296256;
        v22 = sub_21B647848;
        v23 = &block_descriptor_228;
        v15 = _Block_copy(&aBlock);
        v16 = v6;
        v17 = v2;
        sub_21B638B64(a1);

        [v10 animateWithDuration:v12 animations:v15 completion:0.2];
        _Block_release(v15);
        _Block_release(v12);

        return;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  if (a1)
  {
    a1();
  }
}

id sub_21B64F2AC(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [a1 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Height = CGRectGetHeight(v21);
  v22.origin.x = v11;
  v22.origin.y = v13;
  v22.size.width = v15;
  v22.size.height = v17;
  v23 = CGRectOffset(v22, 0.0, Height);

  return [a1 setFrame_];
}

void sub_21B64F364(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 view];
  if (v7)
  {
    v8 = v7;
    [v7 removeFromSuperview];

    [a2 removeFromParentViewController];
    v9 = *(a3 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController);
    *(a3 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController) = 0;

    v10 = a3 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 1;
    if (a4)
    {
      a4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21B64F420(void *a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v41[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v41[-v11];
  v13 = [a1 serverIdentity];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 posterUUID];

    sub_21B6C88A4();
    (*(v4 + 32))(v12, v10, v3);
    v16 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
    v17 = sub_21B6C8884();
    v44[0] = 0;
    LODWORD(v16) = [v16 deletePosterConfigurationsMatchingUUID:v17 error:v44];

    if (v16)
    {
      v18 = *(v4 + 8);
      v19 = v44[0];
      v18(v12, v3);
    }

    else
    {
      v27 = v44[0];
      v28 = sub_21B6C8764();

      swift_willThrow();
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v29 = sub_21B6C8AB4();
      __swift_project_value_buffer(v29, qword_27CD94D60);
      v30 = sub_21B6C9024();
      (*(v4 + 16))(v7, v12, v3);
      v31 = sub_21B6C8A94();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v43 = v28;
        v34 = v33;
        v44[0] = v33;
        *v32 = 136315138;
        sub_21B6578DC(&unk_27CD93530, MEMORY[0x277CC95F0]);
        v35 = sub_21B6C9654();
        v37 = v36;
        v42 = v30;
        v38 = *(v4 + 8);
        v38(v7, v3);
        v39 = sub_21B656178(v35, v37, v44);

        *(v32 + 4) = v39;
        _os_log_impl(&dword_21B526000, v31, v42, "Error deleting poster configuration with UUID: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x21CEF8150](v34, -1, -1);
        MEMORY[0x21CEF8150](v32, -1, -1);

        v38(v12, v3);
      }

      else
      {

        v40 = *(v4 + 8);
        v40(v7, v3);
        v40(v12, v3);
      }
    }
  }

  else
  {
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v20 = sub_21B6C8AB4();
    __swift_project_value_buffer(v20, qword_27CD94D60);
    v21 = sub_21B6C9024();
    v22 = a1;
    v43 = sub_21B6C8A94();

    if (os_log_type_enabled(v43, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v22;
      *v24 = v22;
      v25 = v22;
      _os_log_impl(&dword_21B526000, v43, v21, "Cannot delete configuration; no UUID to unwrap for path %@", v23, 0xCu);
      sub_21B62AA8C(v24, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v24, -1, -1);
      MEMORY[0x21CEF8150](v23, -1, -1);
    }

    v26 = v43;
  }
}

void sub_21B64F97C(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v33 - v8;
  v10 = [a1 serverIdentity];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 posterUUID];

    sub_21B6C88A4();
    (*(v4 + 32))(v9, v7, v3);
    v13 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
    v14 = sub_21B6C8884();
    v34[0] = 0;
    LODWORD(v13) = [v13 togglePosterConfigurationHiddenMatchingUUID:v14 error:v34];

    if (v13)
    {
      v15 = *(v4 + 8);
      v16 = v34[0];
      v15(v9, v3);
    }

    else
    {
      v24 = v34[0];
      v25 = sub_21B6C8764();

      swift_willThrow();
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v26 = sub_21B6C8AB4();
      __swift_project_value_buffer(v26, qword_27CD94D60);
      v27 = sub_21B6C9024();
      v28 = a1;
      v29 = sub_21B6C8A94();

      if (os_log_type_enabled(v29, v27))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v28;
        *v31 = v28;
        v32 = v28;
        _os_log_impl(&dword_21B526000, v29, v27, "Error toggling poster configuration hidden for path: %@", v30, 0xCu);
        sub_21B62AA8C(v31, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v31, -1, -1);
        MEMORY[0x21CEF8150](v30, -1, -1);
      }

      (*(v4 + 8))(v9, v3);
    }
  }

  else
  {
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v17 = sub_21B6C8AB4();
    __swift_project_value_buffer(v17, qword_27CD94D60);
    v18 = sub_21B6C9024();
    v19 = a1;
    v33[0] = sub_21B6C8A94();

    if (os_log_type_enabled(v33[0], v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_21B526000, v33[0], v18, "Cannot toggle configuration hidden; No UUID to unwrap for path %@", v20, 0xCu);
      sub_21B62AA8C(v21, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v21, -1, -1);
      MEMORY[0x21CEF8150](v20, -1, -1);
    }

    v23 = v33[0];
  }
}

void *sub_21B64FDF8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  v8 = *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling);
  *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) = a1;
  if ((a1 & 1) == 0)
  {
    if (v8)
    {
      result = sub_21B65028C(0, 1);
      if (*(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss) == 1)
      {
        sub_21B650404(v7);
        v9 = sub_21B6C8A04();
        v10 = *(v9 - 8);
        if ((*(v10 + 48))(v7, 1, v9) == 1)
        {
          return sub_21B62AA8C(v7, &qword_27CD93500);
        }

        v11 = sub_21B6C89F4();
        (*(v10 + 8))(v7, v9);
        v12 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
        result = swift_beginAccess();
        v13 = *(v2 + v12);
        if ((v13 & 0xC000000000000001) == 0)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v13 + 8 * v11 + 32);
            goto LABEL_10;
          }

          __break(1u);
          return result;
        }

        v14 = MEMORY[0x21CEF66E0](v11, v13);

LABEL_10:
        sub_21B650C10(v14);

        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          [result ambientEditingCollectionViewControllerDidPressDone_];
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

void sub_21B6500A4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 collectionView];
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  MEMORY[0x21CEF5B60](0, a1);
  v12 = sub_21B6C8974();
  (*(v7 + 8))(v9, v6);
  v13 = [v11 layoutAttributesForItemAtIndexPath_];

  if (!v13)
  {
    return;
  }

  [v13 frame];
  MinY = CGRectGetMinY(v23);
  v15 = *&v3[OBJC_IVAR___PBFAmbientEditingCollectionViewController_layout];
  sub_21B659A38(0.0, MinY);
  v17 = v16;
  v19 = v18;

  v20 = [v3 collectionView];
  if (!v20)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setContentOffset:a2 & 1 animated:{v17, v19}];

  sub_21B65028C(0, 1);
}

id sub_21B65028C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (a2)
  {
    sub_21B650404(&v13 - v7);
    v9 = sub_21B6C8A04();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      return sub_21B62AA8C(v8, &qword_27CD93500);
    }

    a1 = sub_21B6C89F4();
    (*(v10 + 8))(v8, v9);
  }

  v12 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  result = *(v3 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = [result currentPage];
  if (result == a1)
  {
    return result;
  }

  result = *(v3 + v12);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  return [result setCurrentPage_];
}

id sub_21B650404@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (result)
  {
    v12 = result;
    [result contentOffset];
    v14 = v13;
    v16 = v15;

    sub_21B650670(v6, v14, v16);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_21B62AA8C(v6, &qword_27CD93500);
      goto LABEL_8;
    }

    v17 = *(v8 + 32);
    v17(v10, v6, v7);
    v18 = sub_21B6C89F4();
    result = [v2 collectionView];
    if (result)
    {
      v19 = result;
      v20 = [result numberOfSections];

      if (v18 < v20)
      {
        v17(a1, v10, v7);
        v21 = 0;
        return (*(v8 + 56))(a1, v21, 1, v7);
      }

      (*(v8 + 8))(v10, v7);
LABEL_8:
      v21 = 1;
      return (*(v8 + 56))(a1, v21, 1, v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21B650670@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  result = [v4 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = result;
  [result visibleSize];
  v19 = v18;
  v21 = v20;

  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = v19;
  v43.size.height = v21;
  if (CGRectIsEmpty(v43))
  {
    result = [v4 collectionView];
    if (result)
    {
      v22 = result;
      v23 = [result indexPathsForVisibleItems];

      v24 = sub_21B6C8A04();
      v25 = sub_21B6C8E84();

      if (*(v25 + 16))
      {
        v41 = *(v24 - 8);
        (*(v41 + 16))(a1, v25 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v24);

        v26 = *(v41 + 56);
        v27 = a1;
        v28 = 0;
      }

      else
      {

        v26 = *(*(v24 - 8) + 56);
        v27 = a1;
        v28 = 1;
      }

      return v26(v27, v28, 1, v24);
    }

    goto LABEL_24;
  }

  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = v19;
  v44.size.height = v21;
  MidX = CGRectGetMidX(v44);
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = v19;
  v45.size.height = v21;
  MidY = CGRectGetMidY(v45);
  result = [v4 collectionView];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v31 = result;
  v32 = [result indexPathForItemAtPoint_];

  if (v32)
  {
    sub_21B6C8994();

    v33 = sub_21B6C8A04();
    (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
  }

  else
  {
    v33 = sub_21B6C8A04();
    (*(*(v33 - 8) + 56))(v13, 1, 1, v33);
  }

  sub_21B657A30(v13, v15);
  sub_21B63D2BC(v15, v10, &qword_27CD93500);
  sub_21B6C8A04();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v10, 1, v33) != 1)
  {
    sub_21B62AA8C(v15, &qword_27CD93500);
    (*(v34 + 32))(a1, v10, v33);
    return (*(v34 + 56))(a1, 0, 1, v33);
  }

  result = [v4 collectionView];
  if (!result)
  {
    goto LABEL_26;
  }

  v36 = result;
  v37 = [result indexPathsForVisibleItems];

  v38 = sub_21B6C8E84();
  if (*(v38 + 16))
  {
    (*(v34 + 16))(a1, v38 + ((*(v34 + 80) + 32) & ~*(v34 + 80)), v33);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  sub_21B62AA8C(v15, &qword_27CD93500);
  (*(v34 + 56))(a1, v39, 1, v33);
  result = (v35)(v10, 1, v33);
  if (result != 1)
  {
    return sub_21B62AA8C(v10, &qword_27CD93500);
  }

  return result;
}

void sub_21B650C10(char *a1)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = *&a1[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
  if (v10 && (v11 = [v10 serverIdentity]) != 0)
  {
    v12 = v11;
    v13 = [v11 posterUUID];
    sub_21B6C88A4();

    v14 = [v12 provider];
    if (!v14)
    {
      sub_21B6C8DA4();
      v14 = sub_21B6C8D74();
    }

    v15 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore);
    v16 = sub_21B6C8884();
    v17 = *MEMORY[0x277D3EE98];
    v44[0] = 0;
    LODWORD(v15) = [v15 updateSelectedPosterUUID:v16 role:v17 from:v14 error:v44];

    if (v15)
    {
      v18 = *(v4 + 8);
      v19 = v44[0];
      v18(v9, v3);
    }

    else
    {
      v27 = v44[0];
      v28 = sub_21B6C8764();

      swift_willThrow();
      if (qword_27CD925A8 != -1)
      {
        swift_once();
      }

      v29 = sub_21B6C8AB4();
      __swift_project_value_buffer(v29, qword_27CD94D60);
      v30 = sub_21B6C9024();
      (*(v4 + 16))(v7, v9, v3);
      v31 = sub_21B6C8A94();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = swift_slowAlloc();
        LODWORD(v43) = v30;
        v33 = v32;
        v42 = swift_slowAlloc();
        v44[0] = v42;
        *v33 = 136315138;
        sub_21B6578DC(&unk_27CD93530, MEMORY[0x277CC95F0]);
        v34 = sub_21B6C9654();
        v41 = v28;
        v36 = v35;
        v37 = *(v4 + 8);
        v37(v7, v3);
        v38 = sub_21B656178(v34, v36, v44);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_21B526000, v31, v43, "Error updating selected poster to: %s", v33, 0xCu);
        v39 = v42;
        __swift_destroy_boxed_opaque_existential_0(v42);
        MEMORY[0x21CEF8150](v39, -1, -1);
        MEMORY[0x21CEF8150](v33, -1, -1);

        v37(v9, v3);
      }

      else
      {

        v40 = *(v4 + 8);
        v40(v7, v3);
        v40(v9, v3);
      }
    }
  }

  else
  {
    if (qword_27CD925A8 != -1)
    {
      swift_once();
    }

    v20 = sub_21B6C8AB4();
    __swift_project_value_buffer(v20, qword_27CD94D60);
    v21 = sub_21B6C9024();
    v22 = a1;
    v43 = sub_21B6C8A94();

    if (os_log_type_enabled(v43, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v22;
      *v24 = v22;
      v25 = v22;
      _os_log_impl(&dword_21B526000, v43, v21, "Cannot update selected poster; no server identity to unwrap for poster:%@", v23, 0xCu);
      sub_21B62AA8C(v24, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v24, -1, -1);
      MEMORY[0x21CEF8150](v23, -1, -1);
    }

    v26 = v43;
  }
}

void sub_21B651190()
{
  v1 = [*(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD936B0);
  v2 = sub_21B6C8E84();

  if (v2 >> 62)
  {
    v3 = sub_21B6C9454();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CEF66E0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 ambientEditingCollectionViewControllerDidUpdatePosters_];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_21B6512B8(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD936B0);
  v4 = sub_21B6C8E84();

  if (v4 >> 62)
  {
    v5 = sub_21B6C9454();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEF66E0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v7 ambientEditingCollectionViewController:v1 didUpdatePosterConfiguration:a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_21B6513E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v57 - v3;
  v5 = sub_21B6C8A04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B650404(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21B62AA8C(v4, &qword_27CD93500);
    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = [v0 collectionView];
  if (!v9)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v10 = v9;
  v11 = sub_21B6C8974();
  v12 = [v10 cellForItemAtIndexPath_];

  if (!v12)
  {
LABEL_23:
    (*(v6 + 8))(v8, v5);
    return;
  }

  type metadata accessor for AmbientCollectionViewCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    goto LABEL_23;
  }

  v14 = v13;
  v15 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (!v16)
  {
    (*(v6 + 8))(v8, v5);

    return;
  }

  v17 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton];
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v16;
  [v17 setAlpha_];
  v19 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton];
  if (!v19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v19 setAlpha_];
  v20 = *&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v14;
  v60 = v18;
  [v20 setAlpha_];
  v21 = [v1 collectionView];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 visibleSupplementaryViewsOfKind_];

    sub_21B61785C(0, &qword_27CD936A8);
    v24 = sub_21B6C8E84();

    if (v24 >> 62)
    {
      v25 = sub_21B6C9454();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v8;
    if (!v25)
    {
      goto LABEL_20;
    }

    if (v25 >= 1)
    {
      for (i = 0; i != v25; ++i)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x21CEF66E0](i, v24);
        }

        else
        {
          v27 = *(v24 + 8 * i + 32);
        }

        v28 = v27;
        [v27 setAlpha_];
      }

LABEL_20:
      v29 = objc_opt_self();
      v30 = swift_allocObject();
      *(v30 + 16) = v1;
      *&aBlock.tx = sub_21B657874;
      *&aBlock.ty = v30;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B63863C;
      *&aBlock.d = &block_descriptor_121;
      v31 = _Block_copy(&aBlock);
      v32 = v1;

      [v29 animateWithDuration:v31 animations:0.2];
      v33 = v31;
      v34 = v29;
      _Block_release(v33);
      v35 = swift_allocObject();
      *(v35 + 16) = v24;
      *&aBlock.tx = sub_21B65787C;
      *&aBlock.ty = v35;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B63863C;
      *&aBlock.d = &block_descriptor_127;
      v36 = _Block_copy(&aBlock);

      [v29 animateWithDuration:0 delay:v36 options:0 animations:0.1 completion:0.1];
      _Block_release(v36);
      v37 = v59;
      v38 = v60;
      [v59 addSubview_];
      v39 = [v37 _screen];
      if (v39)
      {
        v40 = v39;
        [v39 bounds];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        [v38 setFrame_];
        [v37 transform];
        CGAffineTransformInvert(&v61, &aBlock);
        aBlock = v61;
        [v38 setTransform_];
        [v38 setClipsToBounds_];
        v49 = [v38 layer];
        [v49 setCornerCurve_];

        v50 = *&v37[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterCornerRadius];
        v51 = swift_allocObject();
        *(v51 + 16) = v38;
        *(v51 + 24) = v50;
        *&aBlock.tx = sub_21B657884;
        *&aBlock.ty = v51;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_21B63863C;
        *&aBlock.d = &block_descriptor_133;
        v52 = _Block_copy(&aBlock);
        v53 = v38;

        v54 = swift_allocObject();
        v54[3] = 0;
        v54[4] = 0;
        v54[2] = v53;
        *&aBlock.tx = sub_21B657890;
        *&aBlock.ty = v54;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_21B647848;
        *&aBlock.d = &block_descriptor_139;
        v55 = _Block_copy(&aBlock);
        v56 = v53;

        [v34 animateKeyframesWithDuration:544 delay:v52 options:v55 animations:0.3 completion:0.0];
        _Block_release(v55);
        _Block_release(v52);

        (*(v6 + 8))(v58, v5);
        return;
      }

      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

id sub_21B651BD0(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton);
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result setAlpha_];
  result = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl);
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return [result setAlpha_];
}

void sub_21B651C60(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21B6C9454();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CEF66E0](i, a1);
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      [v4 setAlpha_];
    }
  }
}

void sub_21B651D18(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_21B6C8A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  sub_21B650404(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21B62AA8C(v8, &qword_27CD93500);
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  (*(v10 + 32))(v12, v8, v9);
  v13 = [v2 collectionView];
  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  v15 = sub_21B6C8974();
  v16 = [v14 cellForItemAtIndexPath_];

  if (!v16)
  {
LABEL_15:
    (*(v10 + 8))(v12, v9);
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  type metadata accessor for AmbientCollectionViewCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    goto LABEL_15;
  }

  v18 = v17;
  v19 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  v20 = *&v3[v19];
  if (v20)
  {
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v3;
    v21[4] = a1;
    v21[5] = a2;
    v22 = v20;
    v54 = v3;
    sub_21B638B64(a1);
    [v18 addSubview_];
    v23 = [v18 _screen];
    if (v23)
    {
      v24 = v23;
      [v23 bounds];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      [v22 setFrame_];
      v56.a = 1.0;
      v56.b = 0.0;
      v56.c = 0.0;
      v56.d = 1.0;
      v56.tx = 0.0;
      v56.ty = 0.0;
      [v22 setTransform_];
      [v22 setAlpha_];
      [v22 setClipsToBounds_];
      v33 = [v22 layer];
      [v33 setCornerCurve_];

      v34 = [v22 layer];
      [v34 setCornerRadius_];

      [v18 transform];
      aBlock = v56;
      CGAffineTransformInvert(&v56, &aBlock);
      v53 = objc_opt_self();
      v35 = swift_allocObject();
      v36 = *&v56.c;
      *(v35 + 24) = *&v56.a;
      *(v35 + 16) = v22;
      *(v35 + 40) = v36;
      *(v35 + 56) = *&v56.tx;
      *&aBlock.tx = sub_21B657B5C;
      *&aBlock.ty = v35;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B63863C;
      *&aBlock.d = &block_descriptor_249;
      v37 = _Block_copy(&aBlock);
      v38 = v22;

      v39 = swift_allocObject();
      v39[2] = v38;
      v39[3] = sub_21B657B50;
      v39[4] = v21;
      *&aBlock.tx = sub_21B657890;
      *&aBlock.ty = v39;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B647848;
      *&aBlock.d = &block_descriptor_255;
      v40 = _Block_copy(&aBlock);
      v41 = v38;
      v42 = v53;
      v52 = v41;

      [v42 animateKeyframesWithDuration:0 delay:v37 options:v40 animations:0.3 completion:0.0];
      _Block_release(v40);
      _Block_release(v37);

      v43 = v54;
      v44 = [v54 collectionView];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 visibleSupplementaryViewsOfKind_];

        sub_21B61785C(0, &qword_27CD936A8);
        v47 = sub_21B6C8E84();

        v48 = swift_allocObject();
        *(v48 + 16) = v43;
        *(v48 + 24) = v47;
        *&aBlock.tx = sub_21B657BB0;
        *&aBlock.ty = v48;
        *&aBlock.a = MEMORY[0x277D85DD0];
        *&aBlock.b = 1107296256;
        *&aBlock.c = sub_21B63863C;
        *&aBlock.d = &block_descriptor_261;
        v49 = _Block_copy(&aBlock);
        v50 = v43;

        [v42 animateWithDuration:v49 animations:0.2];

        _Block_release(v49);
        (*(v10 + 8))(v12, v9);
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  (*(v10 + 8))(v12, v9);

  if (a1)
  {
LABEL_16:
    a1();
  }
}

void sub_21B652448(void *a1, void *a2, void (*a3)(void))
{
  v8[0] = 0x3FF0000000000000;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x3FF0000000000000;
  v8[4] = 0;
  v8[5] = 0;
  [a1 setTransform_];
  v6 = [a2 view];
  if (v6)
  {
    v7 = v6;
    [v6 addSubview_];

    if (a3)
    {
      a3();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21B6524E8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton);
  if (!v3)
  {
    goto LABEL_15;
  }

  [v3 setAlpha_];
  v5 = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton);
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v5 setAlpha_];
  v6 = *(a1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl);
  if (!v6)
  {
LABEL_17:
    __break(1u);
    return;
  }

  [v6 setAlpha_];
  if (a2 >> 62)
  {
    v7 = sub_21B6C9454();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEF66E0](i, a2);
    }

    else
    {
      v9 = *(a2 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setAlpha_];
  }
}

Swift::Int __swiftcall AmbientEditingCollectionViewController.numberOfSections(in:)(UICollectionView *in)
{
  v2 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    return sub_21B6C9454();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id AmbientEditingCollectionViewController.collectionView(_:cellForItemAt:)(void *a1)
{
  v2 = v1;
  v4 = sub_21B6C8D74();
  v5 = sub_21B6C8974();
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:v5];

  type metadata accessor for AmbientCollectionViewCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    [*&v1[OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers] addObject_];
    *(v8 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_delegate + 8) = &off_282CD07F0;
    swift_unknownObjectWeakAssign();
    v9 = sub_21B6C89F4();
    v10 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
    result = swift_beginAccess();
    v12 = *&v2[v10];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = MEMORY[0x21CEF66E0](v9, v12);
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v9 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        __break(1u);
        return result;
      }

      v13 = *(v12 + 8 * v9 + 32);
    }

    v14 = *(v8 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel);
    *(v8 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterModel) = v13;
    if (v14)
    {
      type metadata accessor for AmbientPosterModel();
      v15 = v13;
      v14 = v14;
      v16 = sub_21B6C91A4();

      if (v16)
      {
LABEL_14:

        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v8;
        *(v20 + 24) = v2;
        v21 = swift_allocObject();
        *(v21 + 16) = sub_21B656720;
        *(v21 + 24) = v20;
        aBlock[4] = sub_21B656728;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21B647820;
        aBlock[3] = &block_descriptor_18;
        v22 = _Block_copy(aBlock);
        v23 = v6;
        v24 = v2;

        [v19 performWithoutAnimation_];
        _Block_release(v22);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return v8;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v18 = v13;
    }

    sub_21B64130C();
    sub_21B64171C();
    v15 = v13;
    goto LABEL_14;
  }

  v17 = objc_allocWithZone(MEMORY[0x277D752A8]);

  return [v17 init];
}

void sub_21B652A40(char *a1)
{
  v1 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_scaleInLayout;
  v2 = *&a1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_scaleInLayout];
  *&a1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_scaleInLayout] = 0x3FE6147AE147AE14;
  if (v2 != 0.69)
  {
    v4 = [a1 traitCollection];
    [v4 displayCornerRadius];
    if (v5 == 0.0)
    {
      v5 = 8.0 / *&a1[v1];
    }

    v6 = OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterCornerRadius;
    *&a1[OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_posterCornerRadius] = v5;
    v7 = [a1 layer];
    [v7 setCornerRadius_];
  }
}

uint64_t AmbientEditingCollectionViewController.collectionView(_:viewForSupplementaryElementOfKind:at:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_21B6C8D74();
  v9 = sub_21B6C8D74();
  v10 = sub_21B6C8974();
  v11 = [a1 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:v10];

  type metadata accessor for PosterSectionFooterView();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v11 = sub_21B6C89F4();
  v14 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  v15 = swift_beginAccess();
  v16 = *(v5 + v14);
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x21CEF66E0](v11, v16);
  }

  else
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v11 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v17 = *(v16 + 8 * v11 + 32);
  }

  v16 = *&v17[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_symbolName];
  v11 = *&v17[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_symbolName + 8];

  v15 = sub_21B6C89F4();
  a4 = *(v5 + v14);
  if ((a4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v24 = v15;

    v18 = MEMORY[0x21CEF66E0](v24, a4);

    goto LABEL_10;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:

    result = sub_21B6C95D4();
    __break(1u);
    return result;
  }

  v18 = *(a4 + 8 * v15 + 32);
LABEL_10:
  v19 = *&v18[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_localizedTitle];
  v20 = *&v18[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_localizedTitle + 8];

  if (v20)
  {
    sub_21B656750();
    v19 = sub_21B6C93D4();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_21B646764(v16, v11, v19, v22);

  return v13;
}

void AmbientEditingCollectionViewController.collectionView(_:didSelectItemAt:)(void *a1, uint64_t a2)
{
  v40 = a1;
  v4 = sub_21B6C8A04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93550);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = *(v5 + 16);
  v43 = a2;
  v18(&v38 - v16, a2, v4);
  (*(v5 + 56))(v17, 0, 1, v4);
  v19 = [v2 collectionView];
  if (!v19)
  {
    __break(1u);
    return;
  }

  v20 = v19;
  [v19 contentOffset];
  v22 = v21;
  v24 = v23;

  v42 = v2;
  sub_21B650670(v15, v22, v24);
  v25 = *(v7 + 48);
  sub_21B63D2BC(v17, v9, &qword_27CD93500);
  sub_21B63D2BC(v15, &v9[v25], &qword_27CD93500);
  v26 = *(v5 + 48);
  if (v26(v9, 1, v4) == 1)
  {
    sub_21B62AA8C(v15, &qword_27CD93500);
    sub_21B62AA8C(v17, &qword_27CD93500);
    if (v26(&v9[v25], 1, v4) == 1)
    {
      sub_21B62AA8C(v9, &qword_27CD93500);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v27 = v41;
  sub_21B63D2BC(v9, v41, &qword_27CD93500);
  if (v26(&v9[v25], 1, v4) == 1)
  {
    sub_21B62AA8C(v15, &qword_27CD93500);
    sub_21B62AA8C(v17, &qword_27CD93500);
    (*(v5 + 8))(v27, v4);
LABEL_7:
    sub_21B62AA8C(v9, &qword_27CD93550);
LABEL_8:
    v28 = sub_21B6C89F4();
    sub_21B6500A4(v28, 1);
    return;
  }

  v29 = &v9[v25];
  v30 = v39;
  (*(v5 + 32))(v39, v29, v4);
  sub_21B6578DC(&unk_28120BB30, MEMORY[0x277CC9AF8]);
  v31 = v27;
  v32 = sub_21B6C8D64();
  v33 = *(v5 + 8);
  v33(v30, v4);
  sub_21B62AA8C(v15, &qword_27CD93500);
  sub_21B62AA8C(v17, &qword_27CD93500);
  v33(v31, v4);
  sub_21B62AA8C(v9, &qword_27CD93500);
  if ((v32 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  v34 = sub_21B6C8974();
  v35 = [v40 cellForItemAtIndexPath_];

  if (v35)
  {
    type metadata accessor for AmbientCollectionViewCell();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = *(v36 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_hideOrDeleteButton);
      if (!v37 || ![v37 isSelected])
      {
        AmbientEditingCollectionViewController.dismiss()();
      }
    }
  }
}

void AmbientEditingCollectionViewController.editingSceneViewController(_:userDidDismissWith:updatedConfiguration:updatedConfiguredProperties:completion:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *&v6[OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController];
  if (v11 && (sub_21B61785C(0, &unk_28120B210), v14 = a1, v15 = v11, v16 = v14, LOBYTE(v14) = sub_21B6C91A4(), v15, v16, (v14 & 1) != 0))
  {
    v17 = swift_allocObject();
    v17[2] = v6;
    v17[3] = v16;
    v17[4] = a2;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a5;
    v17[8] = a6;
    v18 = a4;

    v19 = v16;
    v20 = v6;
    v21 = a3;
    sub_21B64F06C(sub_21B657168, v17);
  }

  else
  {

    sub_21B656BE4(a1, a2, a3, a4);
  }
}

uint64_t sub_21B653B34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = sub_21B6C8C94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B6C8CC4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v35 = v11;
    v36 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v8;
    v37 = a4;
    v17 = v14;
    if (qword_27CD925E0 != -1)
    {
      swift_once();
    }

    v18 = sub_21B6C8AB4();
    __swift_project_value_buffer(v18, qword_27CD94DD8);
    v19 = a2;
    v20 = sub_21B6C8A94();
    v21 = sub_21B6C9024();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      if (a2)
      {
        v24 = a2;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        v26 = v25;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      *(v22 + 4) = v25;
      *v23 = v26;
      _os_log_impl(&dword_21B526000, v20, v21, "Error saving editing configuration: %@", v22, 0xCu);
      sub_21B62AA8C(v23, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v23, -1, -1);
      MEMORY[0x21CEF8150](v22, -1, -1);
    }

    v14 = v17;
    v16 = v36;
    a4 = v37;
    v8 = v34;
    v11 = v35;
  }

  v38 = v14;
  sub_21B61785C(0, &unk_28120B2F0);
  v27 = sub_21B6C9074();
  v28 = swift_allocObject();
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  aBlock[4] = sub_21B657A08;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_240;
  v29 = _Block_copy(aBlock);
  v30 = a3;
  v31 = a4;

  sub_21B6C8CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B6578DC(&qword_28120B380, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93B10);
  sub_21B64CCC8();
  sub_21B6C9404();
  MEMORY[0x21CEF6220](0, v16, v11, v29);
  _Block_release(v29);

  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v16, v38);
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ((*(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) & 1) == 0)
  {
    v2 = [(UIScrollView *)a1 isScrollAnimating];

    sub_21B64FDF8(v2);
  }
}

uint64_t sub_21B654230(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21B657988;
  *(v7 + 24) = v6;
  v21 = sub_21B657C88;
  v22 = v7;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_21B647820;
  v20 = &block_descriptor_204;
  v8 = _Block_copy(&v17);
  v9 = a2;
  v10 = a3;
  v11 = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  v21 = sub_21B657994;
  v22 = v12;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_21B647848;
  v20 = &block_descriptor_210;
  v13 = _Block_copy(&v17);
  v14 = v9;
  v15 = v10;

  [v11 performBatchUpdates:v8 completion:v13];
  _Block_release(v13);
  _Block_release(v8);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_21B654448(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_21B6C8964();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [a1 role];
  v11 = sub_21B6C8DA4();
  v13 = v12;
  if (v11 == sub_21B6C8DA4() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_21B6C96E4();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  v17 = sub_21B639298(a1);
  v18 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v19 = *(a2 + v18);
  if (v19 >> 62)
  {
    v20 = sub_21B6C9454();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v21 = *(a2 + v18);
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v20)
    {
      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (sub_21B6C9454() < v20)
  {
    goto LABEL_19;
  }

LABEL_12:
  if (v20 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    if (!__OFSUB__(sub_21B6C9454(), 1))
    {
      goto LABEL_15;
    }

LABEL_23:
    __break(1u);
    return;
  }

  sub_21B69ACEC(v20, v20, v17);
  swift_endAccess();
  v22 = *(a2 + v18);
  if (v22 >> 62)
  {
    goto LABEL_21;
  }

  if (__OFSUB__(*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
  {
    goto LABEL_23;
  }

LABEL_15:
  sub_21B6C8924();
  v23 = sub_21B6C88F4();
  (*(v7 + 8))(v9, v6);
  [a3 insertSections_];
}

void sub_21B6546EC(int a1, id a2, uint64_t a3)
{
  v4 = [a2 _path];
  v5 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v6 = *(a3 + v5);
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
LABEL_25:

    return;
  }

LABEL_3:
  v21 = a3;

  for (i = 0; ; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CEF66E0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    v11 = *&v9[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
    if (v11)
    {
      break;
    }

    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v7 = sub_21B6C9454();
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_3;
    }

LABEL_14:
    if (v14 == v7)
    {

      return;
    }
  }

  sub_21B61785C(0, &qword_27CD93390);
  v12 = v4;
  v13 = v11;
  a3 = sub_21B6C91A4();

  if ((a3 & 1) == 0)
  {
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  sub_21B6500A4(i, 1);
  v15 = [v21 collectionView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = v15;
  v17 = [v15 numberOfSections];

  v18 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  v19 = *&v21[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  if (!v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ([v19 numberOfPages] == v17)
  {
LABEL_21:
    sub_21B651190();

    return;
  }

  v20 = *&v21[v18];
  if (v20)
  {
    [v20 setNumberOfPages_];
    sub_21B65028C(0, 1);
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
}

void sub_21B654980(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [v5 collectionView];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = a2;
    v11[4] = v5;
    v16[4] = a4;
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_21B63863C;
    v16[3] = a5;
    v12 = _Block_copy(v16);
    v13 = v10;
    v14 = a2;
    v15 = v5;

    BSDispatchMain();
    _Block_release(v12);
  }
}

uint64_t sub_21B654A78(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21B65792C;
  *(v7 + 24) = v6;
  v20 = sub_21B657C88;
  v21 = v7;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_21B647820;
  v19 = &block_descriptor_188;
  v8 = _Block_copy(&v16);
  v9 = a2;
  v10 = a3;
  v11 = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v20 = sub_21B657938;
  v21 = v12;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_21B647848;
  v19 = &block_descriptor_194;
  v13 = _Block_copy(&v16);
  v14 = v10;

  [v11 performBatchUpdates:v8 completion:v13];
  _Block_release(v13);
  _Block_release(v8);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_21B654C88(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_21B6C8964();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 _path];
  v11 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v12 = *(v11 + a2);
  if (v12 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
  {
    v19[1] = v11;
    v19[2] = a2;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    v23 = a3;
    v24 = v12 & 0xFFFFFFFFFFFFFF8;

    a2 = 0;
    v11 = &OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CEF66E0](a2, v12);
      }

      else
      {
        if (a2 >= *(v24 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(v12 + 8 * a2 + 32);
      }

      v7 = v14;
      v9 = *&v14[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath];
      if (v9)
      {
        break;
      }

      v15 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_17;
      }

LABEL_14:
      ++a2;
      if (v15 == i)
      {

        return;
      }
    }

    sub_21B61785C(0, &qword_27CD93390);
    v6 = v10;
    v9 = v9;
    a3 = sub_21B6C91A4();

    if (a3)
    {

      swift_beginAccess();
      v16 = sub_21B647768(a2);
      swift_endAccess();

      v17 = v20;
      sub_21B6C8924();
      v18 = sub_21B6C88F4();
      (v21)[1](v17, v22);
      [v23 deleteSections_];

      return;
    }

    v15 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_21B654F38(int a1, char *a2)
{
  v3 = [a2 collectionView];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 numberOfSections];

  v6 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  v7 = *&a2[OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ([v7 numberOfPages] == v5)
  {
LABEL_6:
    sub_21B651190();
    return;
  }

  v8 = *&a2[v6];
  if (v8)
  {
    [v8 setNumberOfPages_];
    sub_21B65028C(0, 1);
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void sub_21B655014(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v18 = a1;
  v11 = [v18 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v10;
    v13[4] = v18;
    aBlock[4] = a6;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = a7;
    v14 = _Block_copy(aBlock);
    v15 = v10;
    v16 = v18;
    v17 = v12;

    BSDispatchMain();

    _Block_release(v14);
  }

  else
  {
  }
}

void AmbientEditingCollectionViewController.posterExtensionDataStore(_:didUpdate:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v2;
  v8[4] = sub_21B65786C;
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21B63863C;
  v8[3] = &block_descriptor_39_0;
  v5 = _Block_copy(v8);
  v6 = a2;
  v7 = v2;

  BSDispatchMain();
  _Block_release(v5);
}

void sub_21B655230(void *a1, uint64_t a2)
{
  v3 = [a1 _path];
  v4 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5 >> 62)
  {
LABEL_32:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = -v6;
  v8 = 4;
  while (1)
  {
    if (v7 + v8 == 4)
    {

      return;
    }

    v9 = v8 - 4;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x21CEF66E0](v8 - 4, v5);
    }

    else
    {
      if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v10 = *(v5 + 8 * v8);
    }

    v11 = v10;
    v25 = v10;
    v12 = sub_21B6554EC(&v25, v3);

    if (v12)
    {
      break;
    }

    ++v8;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_31;
    }
  }

  v13 = *(a2 + v4);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = MEMORY[0x21CEF66E0](v8 - 4, v13);
  }

  else
  {
    if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 8 * v8);
  }

  v15 = OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration;
  v16 = *&v14[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_ambientConfiguration];
  if (v16)
  {
    v17 = [v16 hidden];
  }

  else
  {
    v17 = 2;
  }

  v18 = *&v14[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration];
  *&v14[OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterConfiguration] = a1;
  sub_21B61785C(0, &qword_28120B290);
  v19 = a1;
  if ((sub_21B6C91A4() & 1) == 0)
  {
    sub_21B638B74();
  }

  v20 = *&v14[v15];
  if (v20)
  {
    v21 = [v20 hidden];
    if (v17 != 2 && ((v21 ^ v17) & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    sub_21B651190();
    goto LABEL_28;
  }

  if (v17 != 2)
  {
    goto LABEL_27;
  }

LABEL_25:
  v22 = [v19 _path];
  v23 = [objc_allocWithZone(MEMORY[0x277D3E968]) initWithPath_];

  sub_21B6512B8(v23);
LABEL_28:
}

uint64_t sub_21B6554EC(void *a1, void *a2)
{
  v4 = sub_21B6C88C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = *(*a1 + OBJC_IVAR____TtC11PosterBoard18AmbientPosterModel_posterPath);
  v42 = &v37 - v15;
  v41 = v16;
  if (v14)
  {
    v38 = a2;
    v17 = v14;
    v18 = [v17 serverIdentity];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 posterUUID];

      v21 = v42;
      sub_21B6C88A4();

      v22 = *(v5 + 56);
      (v22)(v21, 0, 1, v4);
    }

    else
    {

      v22 = *(v5 + 56);
      (v22)(v42, 1, 1, v4);
    }

    a2 = v38;
  }

  else
  {
    v22 = *(v5 + 56);
    v22();
  }

  v23 = [a2 &selRef_setSectionIdentifierToSectionType_ + 7];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 posterUUID];

    sub_21B6C88A4();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = v42;
  (v22)(v13, v26, 1, v4);
  v28 = *(v40 + 48);
  sub_21B63D2BC(v27, v8, &qword_27CD92EE8);
  sub_21B63D2BC(v13, &v8[v28], &qword_27CD92EE8);
  v29 = v5;
  v30 = *(v5 + 48);
  if (v30(v8, 1, v4) != 1)
  {
    sub_21B63D2BC(v8, v41, &qword_27CD92EE8);
    if (v30(&v8[v28], 1, v4) != 1)
    {
      v32 = v29;
      v33 = v39;
      (*(v29 + 32))(v39, &v8[v28], v4);
      sub_21B6578DC(&qword_27CD92F20, MEMORY[0x277CC95F0]);
      v34 = v41;
      v31 = sub_21B6C8D64();
      v35 = *(v32 + 8);
      v35(v33, v4);
      sub_21B62AA8C(v13, &qword_27CD92EE8);
      sub_21B62AA8C(v27, &qword_27CD92EE8);
      v35(v34, v4);
      sub_21B62AA8C(v8, &qword_27CD92EE8);
      return v31 & 1;
    }

    sub_21B62AA8C(v13, &qword_27CD92EE8);
    sub_21B62AA8C(v27, &qword_27CD92EE8);
    (*(v29 + 8))(v41, v4);
    goto LABEL_15;
  }

  sub_21B62AA8C(v13, &qword_27CD92EE8);
  sub_21B62AA8C(v27, &qword_27CD92EE8);
  if (v30(&v8[v28], 1, v4) != 1)
  {
LABEL_15:
    sub_21B62AA8C(v8, &unk_27CD93370);
    v31 = 0;
    return v31 & 1;
  }

  sub_21B62AA8C(v8, &qword_27CD92EE8);
  v31 = 1;
  return v31 & 1;
}

size_t sub_21B655B48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_availableInstanceIdentifiers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v8[2];
  if (!v9)
  {
    sub_21B6C88B4();
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = *(v4 + 72);
  (*(v4 + 16))(v6, v8 + v10 + v11 * (v9 - 1), v3);
  swift_beginAccess();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v13 = v8[2];
    if (v13)
    {
LABEL_4:
      v14 = v13 - 1;
      (*(v4 + 8))(v8 + v10 + (v13 - 1) * v11, v3);
      v8[2] = v14;
      *(v1 + v7) = v8;
      swift_endAccess();
      (*(v4 + 32))(a1, v6, v3);
      return (*(v4 + 56))(a1, 0, 1, v3);
    }
  }

  else
  {
    result = sub_21B697E1C(v8);
    v8 = result;
    v13 = *(result + 16);
    if (v13)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall AmbientEditingCollectionViewController.invalidate()()
{
  v1 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView;
  swift_beginAccess();
  [*(v0 + v1) removeFromSuperview];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;
}

id AmbientEditingCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id AmbientEditingCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21B6C8D74();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AmbientEditingCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientEditingCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B65611C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21B656178(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_21B656178(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21B656244(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_21B657AA0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_21B656244(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_21B656350(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_21B6C9564();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_21B656350(uint64_t a1, unint64_t a2)
{
  v3 = sub_21B65639C(a1, a2);
  sub_21B6564CC(&unk_282CCEF18);
  return v3;
}

uint64_t sub_21B65639C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21B6565B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_21B6C9564();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_21B6C8E24();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21B6565B8(v10, 0);
        result = sub_21B6C9514();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21B6564CC(uint64_t result)
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

  result = sub_21B65662C(result, v11, 1, v3);
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

void *sub_21B6565B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD936D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21B65662C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD936D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21B656750()
{
  result = qword_28120B378;
  if (!qword_28120B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B378);
  }

  return result;
}

void sub_21B6567A4()
{
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_transitionOverlayView) = 0;
  v1 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_layout;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AmbientCollectionViewLayout()) init];
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_hasScrolledToActivePosterForInitialViewLayout) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_desiredSpacingFromCardToPageControl) = 0x4038000000000000;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenTop) = 0x4030000000000000;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonDistanceFromScreenEdge) = 0x4044000000000000;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonWidth) = 0x4050800000000000;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_buttonHeight) = 0x403C000000000000;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterConfiguration) = 0;
  v2 = (v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_activePosterProvider);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_doneButton) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_addButton) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControlPreferredNumberOfVisibleIndicators) = 7;
  v3 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_availableInstanceIdentifiers;
  v4 = [objc_opt_self() suggestedInstanceIdentifiers];
  sub_21B6C88C4();
  v5 = sub_21B6C8E84();

  *(v0 + v3) = v5;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController____lazy_storage___snapshotController) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneHiddenWindow) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_editingSceneViewController) = 0;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewController) = 0;
  v6 = v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_presentedEditingRemoteViewContentScreenRect;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) = 0;
  v7 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_observers;
  *(v0 + v7) = [objc_opt_self() weakObjectsHashTable];
  sub_21B6C95D4();
  __break(1u);
}

void sub_21B6569E8(void *a1)
{
  type metadata accessor for AmbientCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v3 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController__displayConfiguration);
    if (v3)
    {
      v4 = a1;
      v9 = v3;
    }

    else
    {
      v5 = objc_opt_self();
      v6 = a1;
      v7 = [v5 pui_sharedDisplayMonitor];
      v9 = [v7 mainConfiguration];

      v3 = 0;
    }

    v8 = v3;
    sub_21B6404D8(v9);
  }

  else
  {
    sub_21B6C95D4();
    __break(1u);
  }
}

void sub_21B656B14(void *a1)
{
  type metadata accessor for AmbientCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController);
    *(v2 + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_ambientPosterViewController) = 0;
    v3 = a1;
    sub_21B640910(v4);
  }

  else
  {
    sub_21B6C95D4();
    __break(1u);
  }
}

void sub_21B656BE4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = sub_21B6C88C4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 != 1)
  {
    if (qword_27CD925E0 != -1)
    {
      swift_once();
    }

    v31 = sub_21B6C8AB4();
    __swift_project_value_buffer(v31, qword_27CD94DD8);
    v32 = sub_21B6C8A94();
    v33 = sub_21B6C9044();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_17;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_21B526000, v32, v33, "User canceled editing session", v34, 2u);
    goto LABEL_16;
  }

  if (a3 && a4)
  {
    v50 = v12;
    v51 = a3;
    v15 = a4;
    v16 = [a1 contentsIdentity];
    if (v16)
    {
      v17 = v16;
      v18 = [v51 _path];
      v19 = [a1 userInfo];
      v49 = v18;
      if (v19)
      {
        sub_21B6C93E4();
        swift_unknownObjectRelease();
        sub_21B62AA8C(&aBlock, &qword_27CD936C0);
        v20 = v18;
        v21 = [v17 posterUUID];
        sub_21B6C88A4();

        v22 = objc_allocWithZone(MEMORY[0x277D3ECE0]);
        v23 = v15;
        v24 = v17;
        v48 = v17;
        v25 = v15;
        v26 = v24;
        v27 = sub_21B6C8884();
        v28 = v22;
        v29 = v20;
        v30 = [v28 initWithUpdatedPath:v20 updatedPosterUUID:v27 sourceIdentity:v26 configuredProperties:v23 attributes:0];

        v15 = v25;
        v17 = v48;

        (*(v11 + 8))(v14, v50);
      }

      else
      {
        aBlock = 0u;
        v53 = 0u;
        sub_21B62AA8C(&aBlock, &qword_27CD936C0);
        v30 = [objc_allocWithZone(MEMORY[0x277D3ECE0]) initWithNewPath:v18 destinationPosterUUID:0 sourceIdentity:v17 configuredProperties:v15 attributes:0];
      }

      v42 = *&v5[OBJC_IVAR___PBFAmbientEditingCollectionViewController_dataStore];
      v43 = swift_allocObject();
      *(v43 + 16) = v5;
      *(v43 + 24) = a1;
      v54 = sub_21B657A00;
      v55 = v43;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v53 = sub_21B6208A8;
      *(&v53 + 1) = &block_descriptor_234;
      v44 = _Block_copy(&aBlock);
      v45 = v30;
      v46 = v5;
      v47 = a1;

      [v42 processIncomingPosterConfiguration:v45 completion:v44];

      _Block_release(v44);
      return;
    }
  }

  if (qword_27CD925E0 != -1)
  {
    swift_once();
  }

  v35 = sub_21B6C8AB4();
  __swift_project_value_buffer(v35, qword_27CD94DD8);
  v36 = a4;
  v37 = a3;
  v32 = sub_21B6C8A94();
  v38 = sub_21B6C9024();

  if (os_log_type_enabled(v32, v38))
  {
    v34 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v34 = 138412546;
    *(v34 + 4) = v37;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v36;
    *v39 = a3;
    v39[1] = a4;
    v40 = v37;
    v41 = v36;
    _os_log_impl(&dword_21B526000, v32, v38, "Missing configuration %@ or properties %@", v34, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EF0);
    swift_arrayDestroy();
    MEMORY[0x21CEF8150](v39, -1, -1);
LABEL_16:
    MEMORY[0x21CEF8150](v34, -1, -1);
  }

LABEL_17:

  sub_21B64E900(a1);
}

void *sub_21B657198(double *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(v1 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_layout);
  sub_21B659A38(v11, v12);
  v15 = v14;
  v17 = v16;

  *a1 = v15;
  a1[1] = v17;
  sub_21B650670(v6, v15, v17);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21B62AA8C(v6, &qword_27CD93500);
  }

  (*(v8 + 32))(v10, v6, v7);
  v19 = sub_21B6C89F4();
  v20 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl;
  result = *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_pageControl);
  if (result)
  {
    if ([result currentPage] == v19)
    {
      return (*(v8 + 8))(v10, v7);
    }

    result = *(v2 + v20);
    if (result)
    {
      [result setCurrentPage_];
      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21B6573E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  v6 = *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling);
  *(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) = 0;
  if (v6)
  {
    result = sub_21B65028C(0, 1);
    if (*(v0 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss) == 1)
    {
      sub_21B650404(v5);
      v7 = sub_21B6C8A04();
      v8 = *(v7 - 8);
      if ((*(v8 + 48))(v5, 1, v7) == 1)
      {
        return sub_21B62AA8C(v5, &qword_27CD93500);
      }

      v9 = sub_21B6C89F4();
      (*(v8 + 8))(v5, v7);
      v10 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
      result = swift_beginAccess();
      v11 = *(v1 + v10);
      if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v12 = *(v11 + 8 * v9 + 32);
          goto LABEL_9;
        }

        __break(1u);
        return result;
      }

      v12 = MEMORY[0x21CEF66E0](v9, v11);

LABEL_9:
      sub_21B650C10(v12);

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result ambientEditingCollectionViewControllerDidPressDone_];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void *sub_21B657618(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  if ((a1 & 1) == 0)
  {
    v8 = *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling);
    *(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_isScrollingOrSettling) = 0;
    if (v8 == 1)
    {
      result = sub_21B65028C(0, 1);
      if (*(v2 + OBJC_IVAR___PBFAmbientEditingCollectionViewController_finishDismiss) == 1)
      {
        sub_21B650404(v7);
        v9 = sub_21B6C8A04();
        v10 = *(v9 - 8);
        if ((*(v10 + 48))(v7, 1, v9) == 1)
        {
          return sub_21B62AA8C(v7, &qword_27CD93500);
        }

        v11 = sub_21B6C89F4();
        (*(v10 + 8))(v7, v9);
        v12 = OBJC_IVAR___PBFAmbientEditingCollectionViewController_posters;
        result = swift_beginAccess();
        v13 = *(v2 + v12);
        if ((v13 & 0xC000000000000001) == 0)
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v11 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v13 + 8 * v11 + 32);
            goto LABEL_10;
          }

          __break(1u);
          return result;
        }

        v14 = MEMORY[0x21CEF66E0](v11, v13);

LABEL_10:
        sub_21B650C10(v14);

        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          [result ambientEditingCollectionViewControllerDidPressDone_];
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

id sub_21B6578A4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11PosterBoard25AmbientCollectionViewCell_editingButton);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t sub_21B6578DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_23Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21B65799C()
{
  v1 = *(v0 + 16);
  [*(v0 + 24) bounds];

  return [v1 setFrame_];
}

uint64_t sub_21B657A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B657AA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_224Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_135Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21B657D04()
{
  v1 = v0;
  v125 = sub_21B6C8A04();
  v2 = *(v125 - 8);
  v3 = MEMORY[0x28223BE20](v125);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v107 - v6;
  v8 = type metadata accessor for AmbientCollectionViewLayout();
  v131.receiver = v0;
  v131.super_class = v8;
  objc_msgSendSuper2(&v131, sel_prepareLayout);
  v9 = [v0 collectionView];
  if (!v9)
  {
    return;
  }

  v10 = v9;
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v127 = 0.69;
  [v0 setItemSize_];
  [v0 setMinimumLineSpacing_];
  [v0 minimumLineSpacing];
  [v0 setSectionInset_];
  v16 = &v0[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = v12;
  *(v16 + 3) = v14;
  [v0 itemSize];
  v18 = v14 - v17;
  [v0 itemSize];
  v20 = (v12 - v19) * 0.5;
  v21 = v18 * 0.5 + -50.0;
  [v0 itemSize];
  v23 = v22;
  v139.origin.y = 0.0;
  v139.origin.x = v20;
  v139.size.width = v22;
  v139.size.height = v21;
  *v16 = CGRectUnion(*v16, v139);
  v24 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v25 = MEMORY[0x277D84F90];
  *&v1[v24] = MEMORY[0x277D84F90];

  v26 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  *&v1[v26] = v25;

  v126 = v10;
  v27 = [v10 numberOfSections];
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v28 = v27;
  v111 = v5;
  v117 = v27;
  v108 = v2;
  v110 = v20;
  v109 = v18 * 0.5 + -50.0;
  if (v27)
  {
    v115 = v12 * 0.5;
    v114 = v14 * 0.5;
    *&v123 = objc_opt_self();
    v29 = 0;
    v113 = *MEMORY[0x277D767D0];
    v112 = (v2 + 8);
    v30 = 0.0;
    v122 = 50.0;
    v31 = v20;
    v32 = v23;
    *&v124 = v12;
    v116 = v14;
    do
    {
      [v1 itemSize];
      v34 = v33;
      v36 = v35;
      v37 = v12 - v33;
      v38 = v14;
      v39 = v37 * 0.5;
      v132.origin.x = v31;
      v132.origin.y = v30;
      v132.size.width = v32;
      v132.size.height = v21;
      v40 = CGRectGetMaxY(v132) + v122;
      v133.origin.x = v39;
      v133.origin.y = v40;
      v133.size.width = v34;
      v133.size.height = v36;
      v41 = CGRectGetMidX(v133) - v115;
      v118 = v39;
      v134.origin.x = v39;
      v42 = v38;
      v43 = *&v124;
      v134.origin.y = v40;
      v120 = v34;
      v134.size.width = v34;
      v119 = v36;
      v134.size.height = v36;
      v44 = CGRectGetMidY(v134) - v114;
      MEMORY[0x21CEF5B60](0, v29);
      v45 = sub_21B6C8974();
      v46 = [v123 layoutAttributesForCellWithIndexPath_];

      [v46 setFrame_];
      swift_beginAccess();
      v47 = v46;
      MEMORY[0x21CEF6000]();
      if (*((*&v1[v24] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v24] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();
      swift_endAccess();
      [v126 safeAreaInsets];
      v48 = [v1 collectionView];
      v121 = v40;
      if (v48)
      {
        v49 = v48;
        v50 = [v48 traitCollection];

        [v50 displayScale];
      }

      CGAffineTransformMakeScale(&t1, v127, v127);
      v135.origin.x = v41;
      v135.origin.y = v44;
      v135.size.width = v43;
      v135.size.height = v42;
      CGRectApplyAffineTransform(v135, &t1);
      UIRectCenteredIntegralRectScale();
      UIRectRoundToScale();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v59 = v113;
      v60 = sub_21B6C8974();
      v61 = [v123 layoutAttributesForSupplementaryViewOfKind:v59 withIndexPath:v60];

      [v61 setFrame_];
      t1.b = 0.0;
      t1.c = 0.0;
      t1.a = 1.0;
      t1.d = 1.0;
      t1.tx = 0.0;
      t1.ty = 0.0;
      [v61 setTransform_];
      swift_beginAccess();
      v62 = v61;
      MEMORY[0x21CEF6000]();
      if (*((*&v1[v26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v26] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v29;
      sub_21B6C8EA4();
      swift_endAccess();
      v63 = v118;
      v140.origin.x = v118;
      v64 = v121;
      v140.origin.y = v121;
      v23 = v120;
      v140.size.width = v120;
      v65 = v119;
      v140.size.height = v119;
      v136 = CGRectUnion(*v16, v140);
      x = v136.origin.x;
      y = v136.origin.y;
      width = v136.size.width;
      height = v136.size.height;

      (*v112)(v7, v125);
      v70 = v63;
      *v16 = x;
      *(v16 + 1) = y;
      v30 = v64;
      v31 = v63;
      v32 = v23;
      v21 = v65;
      *(v16 + 2) = width;
      *(v16 + 3) = height;
      v28 = v117;
      v12 = *&v124;
      v14 = v116;
    }

    while (v117 != v29);
  }

  else
  {
    v70 = v20;
    v65 = v18 * 0.5 + -50.0;
    v30 = 0.0;
  }

  v71 = v70;

  v137.origin.x = v71;
  v137.origin.y = v30;
  v137.size.width = v23;
  v137.size.height = v65;
  v72 = CGRectGetMaxY(v137) + 50.0;
  [v1 itemSize];
  v141.size.width = v73;
  v141.origin.x = v110;
  v141.origin.y = v72;
  v141.size.height = v109;
  *v16 = CGRectUnion(*v16, v141);
  v74 = v111;
  if (!v28)
  {
LABEL_28:

    return;
  }

  v75 = 0;
  v76 = (v108 + 8);
  while (1)
  {
    MEMORY[0x21CEF5B60](0, v75);
    v85 = *&v1[v24];
    if ((v85 & 0xC000000000000001) != 0)
    {

      v86 = MEMORY[0x21CEF66E0](v75, v85);

      goto LABEL_22;
    }

    if ((v75 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v75 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v86 = *(v85 + 8 * v75 + 32);
LABEL_22:
    [v86 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    [v126 contentOffset];
    v95 = [v1 collectionView];
    v96 = 0.0;
    if (v95)
    {
      v97 = v95;
      v98 = [v95 traitCollection];

      [v98 displayScale];
      v28 = v117;
    }

    if (v92 <= 0.0)
    {
      v77 = 0.0;
      v78 = v127;
      v79 = v127;
    }

    else
    {
      *&v124 = v90;
      v77 = 0.0;
      v78 = v127;
      v79 = v127;
      if (v94 > 0.0)
      {
        CGAffineTransformMakeScale(&t1, v127, v127);
        v138.origin.x = v88;
        *&v138.origin.y = v124;
        v138.size.width = v92;
        v138.size.height = v94;
        CGRectApplyAffineTransform(v138, &t1);
        BSSizeRoundForScale();
        v78 = v99 / v92;
        v79 = v100 / v94;
        BSRectWithSize();
        UIRectCenteredRect();
        v102 = v101;
        v104 = v103;
        BSRectRoundForScale();
        v96 = v105 - v104;
        v77 = v106 - v102;
      }
    }

    ++v75;
    CGAffineTransformMakeScale(&t1, v78, v79);
    tx = t1.tx;
    ty = t1.ty;
    v124 = *&t1.a;
    v123 = *&t1.c;
    CGAffineTransformMakeTranslation(&t1, v77, v96);
    v82 = *&t1.a;
    v83 = *&t1.c;
    v84 = *&t1.tx;
    *&t1.c = v123;
    *&t1.a = v124;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v82;
    *&t2.c = v83;
    *&t2.tx = v84;
    CGAffineTransformConcat(&v128, &t1, &t2);
    t1 = v128;
    [v86 setTransform_];

    (*v76)(v74, v125);
    if (v28 == v75)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_21B658884(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B6C89F4();
  if (sub_21B6C8DA4() == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = sub_21B6C96E4();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (v11 >> 62)
  {
    result = sub_21B6C9454();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= result)
  {
    return 0;
  }

  v10 = *(v3 + v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_18:

    v13 = MEMORY[0x21CEF66E0](v6, v10);

    return v13;
  }

  if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v10 + 8 * v6 + 32);
  }

  __break(1u);
  return result;
}

char *sub_21B658B00(uint64_t a1)
{
  v4 = v1;
  v30 = sub_21B6C8A04();
  v6 = *(v30 - 8);
  v7 = MEMORY[0x28223BE20](v30);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = sub_21B6C89F4();
  v31 = a1;
  v13 = sub_21B6C89D4();
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    goto LABEL_29;
  }

  v3 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v16 = *&v3[v4];
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  if (v15 < v17)
  {
    v2 = *&v3[v4];
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v15 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v18 = *(v2 + 8 * v15 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_34:
      v20 = sub_21B6C9454();
      goto LABEL_12;
    }

    while (1)
    {

      v25 = MEMORY[0x21CEF66E0](v15, v2);

      v18 = v25;
LABEL_8:
      v28 = v18;
      v15 = [v18 indexPath];
      sub_21B6C8994();

      if (sub_21B6C8984())
      {
        (*(v6 + 8))(v11, v30);
        return v28;
      }

      v4 = *&v3[v4];
      if (v4 >> 62)
      {
        goto LABEL_34;
      }

      v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:

      if (!v20)
      {
        break;
      }

      v27 = v11;
      v2 = 0;
      v29 = v4 & 0xC000000000000001;
      v11 = (v4 & 0xFFFFFFFFFFFFFF8);
      v21 = (v6 + 8);
      v26[1] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v29)
        {
          v22 = MEMORY[0x21CEF66E0](v2, v4);
        }

        else
        {
          if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v22 = *(v4 + 8 * v2 + 32);
        }

        v3 = v22;
        v23 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v24 = [v22 indexPath];
        sub_21B6C8994();

        v6 = sub_21B6C8984();
        v15 = *v21;
        (*v21)(v9, v30);
        if (v6)
        {
          (v15)(v27, v30);

          return v3;
        }

        ++v2;
        if (v23 == v20)
        {
          (v15)(v27, v30);
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v17 = sub_21B6C9454();
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      __break(1u);
    }

    (*(v6 + 8))(v11, v30);
LABEL_24:
  }

  return 0;
}

uint64_t sub_21B658F60(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v97 = sub_21B6C8A04();
  v12 = *(v97 - 8);
  v13 = MEMORY[0x28223BE20](v97);
  v95 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v93 = &v88 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v88 - v17;
  v98 = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes;
  swift_beginAccess();
  v96 = v5;
  v20 = *(v5 + v19);
  if (v20 >> 62)
  {
    v21 = sub_21B6C9454();
    if (v21 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v96;
  v22 = sub_21B659BA8(0, v21 - 1, a1, a2, a3, a4);
  if (v23)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v22;
  if (v22 < 0)
  {
    goto LABEL_47;
  }

  v5 = *&v96[v19];
  v4 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22)
    {
      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v48 = sub_21B6C9454();
    v7 = v90;
    if (v48 < v90)
    {
      goto LABEL_58;
    }

    v18 = v48;
    if (sub_21B6C9454() < v7)
    {
      goto LABEL_59;
    }

    if (sub_21B6C9454() >= v18)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_48:
  if (sub_21B6C9454() < 0)
  {
    goto LABEL_57;
  }

  if (sub_21B6C9454() < v6)
  {
    goto LABEL_50;
  }

LABEL_9:
  v92 = v19;
  if ((v5 & 0xC000000000000001) == 0 || v6 == 0)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_21B6335DC();
    swift_bridgeObjectRetain_n();
    v26 = 0;
    do
    {
      v27 = v26 + 1;
      sub_21B6C9534();
      v26 = v27;
    }

    while (v6 != v27);
  }

  v90 = v6;
  if (v4)
  {
    v89 = sub_21B6C9604();
    v29 = v30;
    v28 = v31;
    v33 = v32;

    v6 = v33 >> 1;
  }

  else
  {
    v28 = 0;
    v89 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v91 = v12;
  if (v6 != v28)
  {
    v34 = (v12 + 8);
    v94 = MEMORY[0x277D84F90];
    v35 = v6;
    while (!__OFSUB__(v35--, 1))
    {
      if (v35 < v28 || v35 >= v6)
      {
        goto LABEL_43;
      }

      v37 = *(v29 + 8 * v35);
      [v37 frame];
      MaxY = CGRectGetMaxY(v99);
      v100.origin.x = a1;
      v100.origin.y = a2;
      v100.size.width = a3;
      v100.size.height = a4;
      if (CGRectGetMinY(v100) > MaxY)
      {

        goto LABEL_34;
      }

      v39 = [v37 indexPath];
      sub_21B6C8994();

      v40 = [v96 collectionView];
      if (v40)
      {
        v41 = v40;
        v42 = sub_21B6C89D4();
        v43 = [v41 numberOfItemsInSection_];

        (*v34)(v18, v97);
        if (v42 < v43)
        {
          v44 = v37;
          MEMORY[0x21CEF6000]();
          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B6C8E94();
          }

          sub_21B6C8EA4();

          v94 = v98;
        }

        else
        {
        }
      }

      else
      {

        (*v34)(v18, v97);
      }

      if (v35 == v28)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  v94 = MEMORY[0x277D84F90];
LABEL_34:
  swift_unknownObjectRelease();
  v5 = *&v96[v92];
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v90;
  v45 = v91;
  if (v18 < v90)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    while (v7 != v18)
    {
      if (v7 < v18)
      {
        sub_21B6335DC();
        swift_bridgeObjectRetain_n();
        v46 = v7;
        do
        {
          v47 = (v46 + 1);
          sub_21B6C9534();
          v46 = v47;
        }

        while (v18 != v47);
        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v45 = v91;
      if ((v5 & 0xC000000000000001) == 0)
      {
        break;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_62:

  if (v4)
  {
    v50 = sub_21B6C9604();
    v92 = v51;
    v7 = v52;
    v54 = v53;

    v49 = v50;
    v18 = (v54 >> 1);
  }

  else
  {
    v49 = v5 & 0xFFFFFFFFFFFFFF8;
    v92 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v90 = v49;
  swift_unknownObjectRetain();
  v55 = v93;
  if (v7 == v18)
  {
    goto LABEL_81;
  }

  v56 = (v45 + 8);
  v89 = (v18 - 1);
  v57 = v7;
  do
  {
    v58 = v57;
    while (1)
    {
      if (v57 < v7 || v58 >= v18)
      {
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v59 = *(v92 + 8 * v58);
      [v59 frame];
      MinY = CGRectGetMinY(v101);
      v102.origin.x = a1;
      v102.origin.y = a2;
      v102.size.width = a3;
      v102.size.height = a4;
      if (MinY > CGRectGetMaxY(v102))
      {

        goto LABEL_81;
      }

      v61 = [v59 indexPath];
      sub_21B6C8994();

      v62 = [v96 collectionView];
      if (v62)
      {
        break;
      }

      (*v56)(v55, v97);
LABEL_69:
      if (v18 == ++v58)
      {
        goto LABEL_81;
      }
    }

    v63 = v62;
    v64 = v7;
    v65 = sub_21B6C89D4();
    v66 = [v63 numberOfItemsInSection_];

    (*v56)(v55, v97);
    if (v65 >= v66)
    {

      v55 = v93;
      v7 = v64;
      goto LABEL_69;
    }

    v67 = v59;
    MEMORY[0x21CEF6000]();
    v7 = v64;
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    v57 = v58 + 1;
    sub_21B6C8EA4();

    v94 = v98;
    v55 = v93;
  }

  while (v89 != v58);
LABEL_81:
  swift_unknownObjectRelease_n();
  v57 = v94;
  v18 = (v94 & 0xFFFFFFFFFFFFFF8);
  if (v94 >> 62)
  {
LABEL_107:
    v68 = sub_21B6C9454();
  }

  else
  {
    v68 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v91;
  v70 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedSupplementaryFooterAttributes;

  v92 = v70;
  swift_beginAccess();
  v71 = v57;
  if (!v68)
  {
LABEL_103:
    v87 = v71;

    return v87;
  }

  v72 = 0;
  v73 = v57 & 0xC000000000000001;
  v74 = (v69 + 8);
  v71 = v57;
  while (2)
  {
    v93 = v71;
    v75 = v72;
    while (1)
    {
      if (v73)
      {
        v76 = MEMORY[0x21CEF66E0](v75, v57);
      }

      else
      {
        if (v75 >= *(v18 + 2))
        {
          goto LABEL_105;
        }

        v76 = *(v57 + 8 * v75 + 32);
      }

      v77 = v76;
      v72 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v78 = [v76 indexPath];
      v79 = v95;
      sub_21B6C8994();

      v80 = sub_21B6C89D4();
      v81 = *v74;
      (*v74)(v79, v97);
      if (!v80)
      {
        break;
      }

      ++v75;
      v57 = v94;
      if (v72 == v68)
      {
        v71 = v93;
        goto LABEL_103;
      }
    }

    v82 = [v77 indexPath];
    v83 = v95;
    sub_21B6C8994();

    v84 = sub_21B6C89F4();
    result = v81(v83, v97);
    v85 = *&v96[v92];
    if ((v85 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v84, v85);

LABEL_98:
      MEMORY[0x21CEF6000](v86);
      v57 = v94;
      if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      sub_21B6C8EA4();

      v71 = v98;
      if (v72 == v68)
      {
        goto LABEL_103;
      }

      continue;
    }

    break;
  }

  if ((v84 & 0x8000000000000000) == 0)
  {
    if (v84 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_109;
    }

    v86 = *(v85 + 8 * v84 + 32);
    goto LABEL_98;
  }

  __break(1u);
LABEL_109:
  __break(1u);
  return result;
}

uint64_t sub_21B659A38(double a1, double a2)
{
  result = [v2 itemSize];
  if (a2 != 0.0)
  {
    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds + 24];
    v8 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes;
    swift_beginAccess();
    v9 = *&v2[v8];
    if (v9 >> 62)
    {
      result = sub_21B6C9454();
      if (result < 0)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result)
    {
      v10 = 0.0;
      do
      {
        if (result == 1)
        {
          v11 = 25.0;
        }

        else
        {
          v11 = 50.0;
        }

        v12 = v10 + v6 + v11;
        if (v12 > a2 && v12 < v7)
        {
          break;
        }

        v10 = v12;
        --result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_21B659BA8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v15 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v15 / 2;
  v16 = OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes;
  result = swift_beginAccess();
  v10 = *(v7 + v16);
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v18 = MEMORY[0x21CEF66E0](v6, v10);

LABEL_8:
    [v18 frame];
    v29.origin.x = v14;
    v29.origin.y = v13;
    v29.size.width = v12;
    v29.size.height = v11;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v14;
      v28.origin.y = v13;
      v28.size.width = v12;
      v28.size.height = v11;
      if (MaxY <= CGRectGetMinY(v28))
      {
        v25 = v6 + 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v24 = v8;
        v23.n128_f64[0] = v11;
      }

      else
      {
        v24 = v6 - 1;
        v20.n128_f64[0] = v14;
        v21.n128_f64[0] = v13;
        v22.n128_f64[0] = v12;
        v23.n128_f64[0] = v11;
        v25 = v9;
      }

      v6 = sub_21B659BA8(v25, v24, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v15 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v10 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_21B659E00(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cardSizeMultiplier] = 0x3FE6147AE147AE14;
  *&v1[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_spacingBetweenCards] = 0x4049000000000000;
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_contentBounds];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v4 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedAttributes] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard27AmbientCollectionViewLayout_cachedSupplementaryFooterAttributes] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AmbientCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_21B659EF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientCollectionViewLayout();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LegacyMigrationEvent.failureReason.getter(uint64_t a1)
{
  v1 = 2;
  if (a1 != 4)
  {
    v1 = 0;
  }

  if (a1 == 3)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t LegacyMigrationEvent.analyticsIdentifier.getter(uint64_t a1)
{
  sub_21B6C9524();

  if (a1 > 2)
  {
    if ((a1 - 3) < 2)
    {
      v2 = "com.apple.PosterBoard.";
      v3 = 0xD00000000000001BLL;
      goto LABEL_10;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2 = "ialMigrationSucceeded";
        v3 = 0xD00000000000001ELL;
        goto LABEL_10;
      case 1:
        v2 = "ationUnsupported";
        v3 = 0xD000000000000025;
LABEL_10:
        MEMORY[0x21CEF5FA0](v3, v2 | 0x8000000000000000);

        return 0xD000000000000016;
      case 2:
        v2 = "LegacyPosterMigrationFailed";
        v3 = 0xD000000000000020;
        goto LABEL_10;
    }
  }

  result = sub_21B6C9704();
  __break(1u);
  return result;
}

unint64_t sub_21B65A0F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B65A780(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void static LegacyMigrationAnalyticsReporter.record(event:migrationInfo:duration:errorCode:)(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  LegacyMigrationEvent.analyticsIdentifier.getter(a1);
  v8 = sub_21B6C8D74();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a3;
  v12[4] = sub_21B65A790;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B65A4F8;
  v12[3] = &block_descriptor_7;
  v10 = _Block_copy(v12);
  v11 = a2;

  AnalyticsSendEventLazy();
  _Block_release(v10);
}

uint64_t sub_21B65A238(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = [a1 lockProvider];
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21B645978(v9, 0x766F72506B636F6CLL, 0xEC00000072656469, isUniquelyReferenced_nonNull_native);
  v12 = [a1 homeProvider];
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B645978(v13, 0x766F7250656D6F68, 0xEC00000072656469, v14);
  v15 = [a1 pairingType];
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B645978(v16, 0x54676E6972696170, 0xEB00000000657079, v17);
  if (a4 != -1.0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_21B645978(v18, 0x6E6F697461727564, 0xE800000000000000, v19);
  }

  if (a2 == 3)
  {
    v20 = 1;
  }

  else
  {
    if (a2 != 4)
    {
      goto LABEL_8;
    }

    v20 = 2;
  }

  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_21B645978(v21, 0x526572756C696166, 0xED00006E6F736165, v22);
LABEL_8:
  if (a3)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_21B645978(v23, 0x646F43726F727265, 0xE900000000000065, v24);
  }

  return v10;
}

id sub_21B65A4F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_21B65A844();
    v4 = sub_21B6C8D14();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id LegacyMigrationAnalyticsReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LegacyMigrationAnalyticsReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMigrationAnalyticsReporter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LegacyMigrationAnalyticsReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMigrationAnalyticsReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B65A780(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B65A7E0()
{
  result = qword_27CD937C8;
  if (!qword_27CD937C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD937C8);
  }

  return result;
}

unint64_t sub_21B65A844()
{
  result = qword_28120B120;
  if (!qword_28120B120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B120);
  }

  return result;
}

uint64_t sub_21B65A89C()
{
  if (*(v0 + 40) == 1)
  {
    swift_beginAccess();
    os_activity_scope_leave((v0 + 24));
    swift_endAccess();
    *(v0 + 40) = 0;
  }

  swift_unknownObjectRelease();
  return swift_deallocClassInstance();
}

uint64_t sub_21B65A928()
{
  qword_28120B4B0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

id sub_21B65A964(double a1, double a2, double a3, double a4)
{
  v28.receiver = v4;
  v28.super_class = type metadata accessor for AdaptiveKeyLineView();
  v9 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  v11 = [objc_opt_self() whiteColor];
  v12 = [v11 CGColor];

  [v10 setBorderColor_];
  [v10 setBorderWidth_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v19[0] = 0;
  v19[1] = 0;
  v20 = 1064396915;
  v22 = 0;
  v21 = 0;
  v23 = 1064396915;
  v24 = 0;
  v25 = 0;
  v26 = xmmword_21B6D8F50;
  v27 = 1046059418;
  v14 = [objc_opt_self() valueWithCAColorMatrix_];
  [v13 setValue:v14 forKey:*MEMORY[0x277CDA440]];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B6D7FE0;
  *(v15 + 56) = sub_21B65AC78();
  *(v15 + 32) = v13;
  v16 = v13;
  v17 = sub_21B6C8E74();

  [v10 setFilters_];

  return v9;
}

id sub_21B65AC20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdaptiveKeyLineView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B65AC78()
{
  result = qword_28120B140;
  if (!qword_28120B140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B140);
  }

  return result;
}

void sub_21B65ACC4()
{
  [v0 setClipsToBounds_];
  v1 = [v0 layer];
  [v1 setCornerCurve_];
}

uint64_t sub_21B65AD54(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode;
  v4 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode);
  v5 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8);
  *v3 = result;
  v3[8] = a2 & 1;
  if (v5)
  {
    if ((a2 & 1) == 0)
    {
      return (*((*MEMORY[0x277D85000] & *v2) + 0xC8))();
    }
  }

  else if ((a2 & 1) != 0 || v4 != result)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0xC8))();
  }

  return result;
}

uint64_t sub_21B65ADC4()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  if (v2)
  {
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (v1 < 7)
  {
    v3 = 0x41u >> v1;
    return v3 & 1;
  }

  sub_21B6C9524();

  v5 = sub_21B6C9654();
  MEMORY[0x21CEF5FA0](v5);

  result = sub_21B6C95D4();
  __break(1u);
  return result;
}

void sub_21B65AEF4()
{
  v6 = [v0 traitCollection];
  v1 = [v6 displayCornerRadius];
  v3 = v2;
  v4 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xC0))(v1) & 1) == 0 && v3 == 0.0)
  {
    if ([v6 userInterfaceIdiom] == 1)
    {
      v5 = 15.0;
    }

    else
    {
      v5 = 8.0;
    }

    v3 = v5 / (*((*v4 & *v0) + 0xD0))();
  }

  (*((*v4 & *v0) + 0x98))(v3);
}

void sub_21B65B020(double a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius;
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius] = a1;
  v3 = [v1 layer];
  [v3 setCornerRadius_];
}

void *sub_21B65B19C(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius] = 0;
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_scaleInAlongsideLayoutMode] = 0x3FF0000000000000;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PosterCollectionViewCell();
  v4 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = *((*MEMORY[0x277D85000] & *v4) + 0xE8);
    v7 = v4;
    v6();
  }

  return v5;
}

id sub_21B65B32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PBFFocusPosterMastheadConfiguration.symbolImageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName);

  return v1;
}

id PBFFocusPosterMastheadConfiguration.__allocating_init(keyColor:symbolImageName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_keyColor] = a1;
  v8 = &v7[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PBFFocusPosterMastheadConfiguration.init(keyColor:symbolImageName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_keyColor] = a1;
  v4 = &v3[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PBFFocusPosterMastheadConfiguration();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t PBFFocusPosterMastheadConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_21B65B6C4(a1, v8);
  if (!v9)
  {
    sub_21B65B734(v8);
    goto LABEL_11;
  }

  type metadata accessor for PBFFocusPosterMastheadConfiguration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v5 = 0;
    return v5 & 1;
  }

  sub_21B61785C(0, &qword_28120B120);
  v2 = *&v7[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_keyColor];
  v3 = sub_21B6C91A4();

  if ((v3 & 1) == 0)
  {

    goto LABEL_11;
  }

  if (*(v1 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName) == *&v7[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName] && *(v1 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName + 8) == *&v7[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_symbolImageName + 8])
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_21B6C96E4();
  }

  return v5 & 1;
}

uint64_t sub_21B65B6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD936C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B65B734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD936C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id PBFFocusPosterMastheadConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PBFFocusPosterSelectionMastheadView.configuration.getter()
{
  v1 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PBFFocusPosterSelectionMastheadView.configuration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v1 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView);
  if (!v5)
  {
    v8 = v4;
    goto LABEL_12;
  }

  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v9 = v4;
LABEL_10:
    v10 = v5;
    goto LABEL_11;
  }

  type metadata accessor for PBFFocusPosterMastheadConfiguration();
  v6 = v4;
  v7 = v5;
  if ((sub_21B6C91A4() & 1) == 0)
  {
LABEL_11:
    [v5 removeFromSuperview];

    goto LABEL_12;
  }

LABEL_12:
  v11 = *(v1 + v3);
  *(v1 + v3) = a1;
  v12 = a1;

  sub_21B65BC18(v4);
}

void sub_21B65BB58(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5)
    {
      if (a1)
      {
        type metadata accessor for PBFFocusPosterMastheadConfiguration();
        v6 = v2;
        v7 = v5;
        v8 = a1;
        v9 = sub_21B6C91A4();

        if (v9)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if (!a1)
    {
      return;
    }

    v10 = v2;
LABEL_8:
    [v2 removeFromSuperview];
LABEL_9:
  }
}

void sub_21B65BC18(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for PBFFocusPosterMastheadConfiguration();
      v6 = v5;
      v7 = a1;
      v8 = sub_21B6C91A4();

      if (v8)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9 = v5;
    }

    v10 = *&v5[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterMastheadConfiguration_keyColor];
    v11 = objc_allocWithZone(sub_21B6C8A74());
    v12 = v10;

    v13 = sub_21B6C8A64();
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    [v2 addSubview_];
    v14 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21B6D8FE0;
    v16 = [v13 centerXAnchor];
    v17 = [v2 centerXAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v15 + 32) = v18;
    v19 = [v13 leadingAnchor];
    v20 = [v2 leadingAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor_];

    *(v15 + 40) = v21;
    v22 = [v13 trailingAnchor];
    v23 = [v2 trailingAnchor];
    v24 = [v22 constraintLessThanOrEqualToAnchor_];

    *(v15 + 48) = v24;
    v25 = [v13 topAnchor];
    v26 = [v2 topAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    *(v15 + 56) = v27;
    v28 = [v13 bottomAnchor];

    v29 = [v2 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-16.0];

    *(v15 + 64) = v30;
    sub_21B61785C(0, &qword_28120B2D0);
    v31 = sub_21B6C8E74();

    [v14 activateConstraints_];

    v6 = *&v2[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView];
    *&v2[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView] = v13;
LABEL_7:
  }
}

void (*PBFFocusPosterSelectionMastheadView.configuration.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21B65C064;
}

void sub_21B65C064(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(v4 + *(*a1 + 40));
  v6 = *(v4 + OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView);
  if (a2)
  {
    if (!v6)
    {
      v16 = v5;
      v17 = v3;
      goto LABEL_17;
    }

    if (v5)
    {
      v7 = *(v4 + *(*a1 + 40));
      if (v3)
      {
        type metadata accessor for PBFFocusPosterMastheadConfiguration();
        v8 = v3;
        v9 = v5;
        v10 = v6;
        v11 = sub_21B6C91A4();

        if (v11)
        {

LABEL_17:
          v22 = v2[4];
          v21 = v2[5];
          v23 = *(v22 + v21);
          *(v22 + v21) = v3;
          v24 = v3;

          sub_21B65BC18(v5);
          v5 = v2[3];
          goto LABEL_24;
        }

LABEL_16:
        [v6 removeFromSuperview];

        goto LABEL_17;
      }
    }

    else
    {
      v7 = *(*a1 + 24);
      if (!v3)
      {
        goto LABEL_17;
      }
    }

    v19 = v7;
    v20 = v6;
    goto LABEL_16;
  }

  if (!v6)
  {
    v18 = v5;
    goto LABEL_23;
  }

  if (!v5)
  {
    if (!v3)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (!v3)
  {
    v25 = v5;
LABEL_21:
    v26 = v6;
    goto LABEL_22;
  }

  type metadata accessor for PBFFocusPosterMastheadConfiguration();
  v12 = v5;
  v13 = v6;
  v14 = v3;
  v15 = sub_21B6C91A4();

  if ((v15 & 1) == 0)
  {
LABEL_22:
    [v6 removeFromSuperview];

    goto LABEL_23;
  }

LABEL_23:
  v28 = v2[4];
  v27 = v2[5];
  v29 = *(v28 + v27);
  *(v28 + v27) = v3;
  v30 = v3;

  sub_21B65BC18(v5);
LABEL_24:

  free(v2);
}

id PBFFocusPosterSelectionMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PBFFocusPosterSelectionMastheadView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadBottomMargin] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PBFFocusPosterSelectionMastheadView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PBFFocusPosterSelectionMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PBFFocusPosterSelectionMastheadView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadView] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_mastheadBottomMargin] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard35PBFFocusPosterSelectionMastheadView_configuration] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PBFFocusPosterSelectionMastheadView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_21B65C4E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_21B65C568(char *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    if (!a1)
    {
      goto LABEL_8;
    }

    if (v5 == a1)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
LABEL_18:
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = *(v12 + OBJC_IVAR___PBFPosterPair_localizedTitle + 8);
          v14 = v12;

          if (v13)
          {
            sub_21B656750();
            v15 = sub_21B6C93D4();
            v17 = v16;

            v18 = v17;
            v12 = v15;
LABEL_23:
            sub_21B65C800(v12, v18);
            return;
          }

          v12 = 0;
        }

        v18 = 0;
        goto LABEL_23;
      }

      goto LABEL_12;
    }
  }

  else if (!a1)
  {
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  [*&a1[OBJC_IVAR___PBFPosterPair_observers] removeObject_];
LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [*(v7 + OBJC_IVAR___PBFPosterPair_observers) addObject_];
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (a1)
    {
LABEL_12:
      v9 = v6;
      type metadata accessor for PosterPair();
      v10 = a1;
      v11 = sub_21B6C91A4();

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }

      return;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (a1)
  {
    goto LABEL_18;
  }
}

uint64_t sub_21B65C800(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title];
  result = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title];
  v6 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (v6)
  {
    if (!a2)
    {
      v11 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel];
      if (v11)
      {
        v9 = v11;
        v10 = 0;
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return result;
    }

    if (result == a1 && v6 == a2)
    {
      goto LABEL_15;
    }

    result = sub_21B6C96E4();
    if (result)
    {
      goto LABEL_15;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v8 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = v8;

  v10 = sub_21B6C8D74();

LABEL_14:
  [v9 setText_];

  [v2 setNeedsLayout];
LABEL_15:
}

char *sub_21B65C98C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_title];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabelSpacingFromBottomEdge] = 0x4038000000000000;
  v23.receiver = v4;
  v23.super_class = type metadata accessor for PosterSectionHeaderView();
  v10 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v12 = v10;
  v13 = [v11 initWithFrame_];
  [v13 setMaximumContentSizeCategory_];
  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setAdjustsFontSizeToFitWidth_];
  [v13 setMinimumScaleFactor_];
  [v13 setTextAlignment_];
  v14 = [objc_opt_self() whiteColor];
  [v13 setTextColor_];

  [v13 setNumberOfLines_];
  result = [objc_opt_self() _preferredFontDescriptorWithTextStyle_weight_];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() fontWithDescriptor:result size:0.0];
    [v13 setFont_];
    [v12 addSubview_];
    v18 = *&v12[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel];
    *&v12[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel] = v13;
    v19 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C88);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21B6D7FE0;
    v21 = sub_21B6C8B54();
    v22 = MEMORY[0x277D74DB8];
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    MEMORY[0x21CEF6310](v20, sel_setNeedsLayout);

    swift_unknownObjectRelease();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21B65CD64()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PosterSectionHeaderView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel;
  v2 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterSectionHeaderView_titleLabel];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = [v2 text];
  if (!v3)
  {
    return;
  }

  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v0 traitCollection];
  [v12 displayScale];

  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v13 sizeThatFits_];
  BSSizeCeilForScale();
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  CGRectGetMidX(v17);
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  CGRectGetMaxY(v18);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v14 = *&v0[v1];
    if (v14)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  v14 = *&v0[v1];
  if (!v14)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
  v15 = v14;
  BSPointRoundForScale();
  [v15 setFrame_];
}

id sub_21B65D010()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterSectionHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B65D0D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD938A8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B30);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = sub_21B6C9364();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PosterRackTopButton();
  v24.receiver = v0;
  v24.super_class = v14;
  objc_msgSendSuper2(&v24, sel_layoutSubviews);
  sub_21B6C9384();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_21B65D6C0(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_21B6C9324();
  if (v16)
  {
    [v0 bounds];
    if (*&v0[OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont] == v17)
    {
      (*(v11 + 8))(v13, v10);
    }

    *&v0[OBJC_IVAR____TtC11PosterBoard19PosterRackTopButton_contentWidthForCalculatedFittingFont] = v17;
    v18 = v17;
    v19 = objc_opt_self();
    v20 = sub_21B6C8D74();

    v21 = [v19 bestFontForTitle:v20 fittingInWidth:v18];

    *(swift_allocObject() + 16) = v21;
    v22 = v21;
    sub_21B6C8B74();
    v23 = sub_21B6C8B64();
    (*(*(v23 - 8) + 56))(v3, 0, 1, v23);
    sub_21B6C92E4();
    (*(v11 + 16))(v7, v13, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    sub_21B6C9394();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21B65D480@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21B6C8734();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_21B617808();
  v7 = a2;
  return sub_21B6C8744();
}

id sub_21B65D668()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterRackTopButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B65D6C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21B65D73C(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v38 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD938A8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v33 - v5;
  v6 = sub_21B6C9264();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21B6C9204();
  v9 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B6C92F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B6C9364();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C9214();
  if ((PUIFeatureEnabled() & 1) == 0)
  {
    sub_21B6C9354();
    (*(v17 + 8))(a3, v16);
    (*(v17 + 32))(a3, v19, v16);
    v20 = [objc_opt_self() clearColor];
    sub_21B6C92B4();
    v21 = [objc_opt_self() effectWithStyle_];
    v22 = sub_21B6C91D4();
    sub_21B6C8B34();
    v22(v40, 0);
  }

  (*(v13 + 104))(v15, *MEMORY[0x277D75030], v12);
  sub_21B6C91F4();
  (*(v9 + 104))(v11, *MEMORY[0x277D74FD8], v34);
  sub_21B6C9224();
  (*(v35 + 104))(v8, *MEMORY[0x277D74FF0], v36);
  sub_21B6C9284();
  sub_21B6C9274();
  sub_21B6C9244();
  sub_21B6C9254();
  v23 = [objc_opt_self() labelColor];
  sub_21B6C92C4();
  v24 = swift_allocObject();
  v25 = (v38 & 1) == 0;
  *(v24 + 16) = v38 & 1;
  if (v25)
  {
    v26 = MEMORY[0x277D74410];
  }

  else
  {
    v26 = MEMORY[0x277D74420];
  }

  v27 = v39;
  sub_21B6C8B74();
  v28 = sub_21B6C8B64();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = *MEMORY[0x277D76918];
  sub_21B6C92E4();
  v30 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() configurationWithFont:v30 scale:2];
    sub_21B6C91C4();
    sub_21B6C9234();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21B65DCB8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_21B6C8734();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  if (a2)
  {
    v7 = MEMORY[0x277D74420];
  }

  else
  {
    v7 = MEMORY[0x277D74410];
  }

  [objc_opt_self() _preferredFontForTextStyle_weight_];
  sub_21B617808();
  return sub_21B6C8744();
}

id sub_21B65DECC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B65DF38()
{
  result = qword_28120B270;
  if (!qword_28120B270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120B270);
  }

  return result;
}

unint64_t sub_21B65DF84()
{
  result = qword_28120B260;
  if (!qword_28120B260)
  {
    sub_21B65DF38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B260);
  }

  return result;
}

uint64_t sub_21B65E010()
{
  *(v1 + 24) = v0;

  return MEMORY[0x2822009F8](sub_21B65E0A0, 0);
}

uint64_t sub_21B65E0A0()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  v1 = [*(v0 + 24) hasActivelyConfiguredModes:v0 + 32 error:v0 + 16];
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 32);
    v9 = *(v0 + 8);
    v4 = v2;
    v5 = v3;
    v6 = v9;
  }

  else
  {
    v7 = v2;
    sub_21B6C8764();

    swift_willThrow();
    v6 = *(v0 + 8);
    v5 = 0;
  }

  return v6(v5);
}

uint64_t sub_21B65E1B8(uint64_t a1, void *a2)
{
  v29 = a2;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v25 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v28 = *(v6 + 16);
  v28(&v25 - v8, a1, v5, v7);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v26 = *(v6 + 32);
  v26(v11 + v10, v9, v5);
  v12 = _s8ListenerCMa();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtCE11PosterBoardCSo27DNDModeConfigurationServiceP33_810B7575001E280934AD3AE501DC549F8Listener_onUpdate];
  *v14 = sub_21B65EB2C;
  v14[1] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  v16 = swift_allocObject();
  v17 = v29;
  *(v16 + 16) = v29;
  *(v16 + 24) = v15;
  v18 = v15;
  v29 = v17;
  v19 = v27;
  sub_21B6C8F44();
  (v28)(v9, v19, v5);
  v20 = swift_allocObject();
  v26(v20 + v10, v9, v5);
  aBlock[4] = sub_21B65EC3C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B66FFFC;
  aBlock[3] = &block_descriptor_8;
  v21 = _Block_copy(aBlock);
  v22 = v18;

  [v29 addListener:v22 withCompletionHandler:v21];
  _Block_release(v21);

  v23 = v30;
  sub_21B6C8F54();

  return (*(v31 + 8))(v23, v32);
}

uint64_t sub_21B65E528()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);
  sub_21B6C8F54();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21B65E60C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);
    return sub_21B6C8F64();
  }

  return result;
}

uint64_t sub_21B65E668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  return MEMORY[0x2822009F8](sub_21B65E688, 0);
}

uint64_t sub_21B65E688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_21B65E7B0;

    return sub_21B65E010();
  }

  else
  {
    sub_21B6C8EC4();
    sub_21B65EAD4();
    swift_allocError();
    sub_21B6C8D04();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_21B65E7B0(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_21B65E94C;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v5 = sub_21B65E8DC;
  }

  return MEMORY[0x2822009F8](v5, 0);
}

uint64_t sub_21B65E8DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21B65E94C()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_21B65EA64()
{
  v2.receiver = v0;
  v2.super_class = _s8ListenerCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21B65EAD4()
{
  result = qword_27CD93998;
  if (!qword_27CD93998)
  {
    sub_21B6C8EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD93998);
  }

  return result;
}

uint64_t sub_21B65EB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);

  return sub_21B65E528();
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21B65EC3C(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD939A8);

  return sub_21B65E60C(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21B65ECE0(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumVerticalRevealFraction] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView] = 0;
  v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFloatingLayerInlined] = 0;
  v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isComplicationContainerHiddenInFullscreenLayout] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayedComplicationLocation] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_lockVibrancyConfiguration] = 0;
  v9 = &v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_activePosterSalientContentRect];
  v11 = *(MEMORY[0x277CBF398] + 16);
  *v10 = *MEMORY[0x277CBF398];
  v10[1] = v11;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
  v13 = sub_21B6C8854();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shouldShowFocusButton] = 1;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_defaultScrollAnimationDuration] = 0x3FD3333333333333;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_maximumRevealProgressWhenRevealingDisallowed] = 0x3FD0000000000000;
  v14 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_descriptorProvider;
  *&v4[v14] = PRSharedWidgetExtensionProvider();
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_apSubjectMonitorSubscription] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_titleStyleConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_complicationLayout] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_models] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotImage] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton] = 0;
  v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for LockScreenPosterCollectionViewCell();
  return objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_21B65EFA4()
{
  sub_21B6178E4(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_delegate);

  MEMORY[0x21CEF8220](v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_editingSceneViewController);
  sub_21B62AA8C(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate, &qword_27CD93190);

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton);
}

id sub_21B65F114()
{
  sub_21B65F374(1);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockScreenPosterCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LockScreenPosterCollectionViewCell()
{
  result = qword_28120B9D0;
  if (!qword_28120B9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B65F374(uint64_t result)
{
  v2 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup;
  if ((*(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup) & 1) == 0 && (result & 1) == 0)
  {
    return result;
  }

  sub_21B664ABC(0);
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController;
  v4 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 complicationContainerViewController];
    if (v6)
    {
      v7 = v6;
      v8 = swift_dynamicCastObjCProtocolConditional();
      if (v8)
      {
        [v8 invalidate];
      }
    }

    [v5 setComplicationContainerViewController_];

    v9 = *(v1 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 complicationSidebarViewController];
      if (v11)
      {
        v12 = v11;
        v13 = swift_dynamicCastObjCProtocolConditional();
        if (v13)
        {
          [v13 invalidate];
        }
      }

      [v10 setComplicationSidebarViewController_];
    }
  }

  v14 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_models;
  result = swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15 >> 62)
  {
    result = sub_21B6C9454();
    v16 = result;
    if (result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_16:
      if (v16 < 1)
      {
        __break(1u);
        return result;
      }

      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x21CEF66E0](i, v15);
        }

        else
        {
          v18 = *(v15 + 8 * i + 32);
        }

        v19 = v18;
        [v18 invalidate];
      }
    }
  }

  *(v1 + v14) = MEMORY[0x277D84F90];

  [*(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_descriptorProvider) unregisterObserver_];
  result = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_apSubjectMonitorSubscription);
  if (result)
  {
    result = [result invalidate];
  }

  *(v1 + v2) = 0;
  return result;
}

void sub_21B65F5C0()
{
  v1 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup;
  if ((v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isSetup] & 1) == 0 && *&v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair])
  {
    v2 = [v0 window];
    if (v2)
    {

      [*&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_descriptorProvider] registerObserver_];
      v3 = [objc_msgSend(objc_opt_self() subjectMonitorRegistry)];
      swift_unknownObjectRelease();
      *&v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_apSubjectMonitorSubscription] = v3;
      swift_unknownObjectRelease();
      sub_21B664C64();
      v0[v1] = 1;
    }
  }
}

id sub_21B65F6BC(uint64_t a1)
{
  result = *(a1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollView);
  if (result)
  {
    return [result setContentOffset_];
  }

  __break(1u);
  return result;
}

void sub_21B65F6E4(void *a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView;
  v4 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (v6)
    {
LABEL_9:
      v19 = v6;
      v8 = [a1 superview];
      if (v8 && (v9 = v8, v8, v9 == v19))
      {
        [a1 removeFromSuperview];
        v7 = *&v1[v3];
        if (v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = *&v1[v3];
        if (v7)
        {
          goto LABEL_12;
        }
      }

LABEL_23:
      v18 = v19;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v4 == a1)
  {
    return;
  }

  v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v6)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    goto LABEL_9;
  }

  v19 = v6;
  v7 = *&v1[v3];
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_12:
  if ((v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v7;
  [v11 setAlpha_];
  [v1 bounds];
  [v11 setFrame_];
  v12 = *v5;
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
  if (!v13)
  {
    v15 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
    if (v15)
    {
      v14 = v15;
      v13 = 0;
      goto LABEL_21;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v14 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
LABEL_21:
  v16 = v11;
  v17 = v13;
  [v12 insertSubview:v16 aboveSubview:v14];

  v18 = v14;
LABEL_24:
}

void sub_21B65F8F0(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 5u)
  {
    if (a2 > 8u)
    {
      if (a2 != 9)
      {
        if (a2 != 10)
        {
          v10 = sel_addSubview_;
          v9 = v4;
LABEL_44:
          v11 = a1;

          goto LABEL_42;
        }

        v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
        if (!v9)
        {
          __break(1u);
          goto LABEL_22;
        }

LABEL_30:
        v10 = sel_addSubview_;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (a2 == 6)
    {
      v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (!v9)
      {
        __break(1u);
        goto LABEL_58;
      }

      a4 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
      if (a4)
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_26:
      v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (v9)
      {
        a4 = *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView];
        if (a4)
        {
          goto LABEL_38;
        }

        __break(1u);
LABEL_29:
        v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
        if (v9)
        {
          goto LABEL_30;
        }

        goto LABEL_59;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (a2 == 7)
    {
      v6 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (!v6)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v7 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
      if (!v7)
      {
        v8 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
        if (!v8)
        {
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v16 = v8;
        goto LABEL_52;
      }
    }

    else
    {
      v6 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (!v6)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v7 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView];
      if (!v7)
      {
        v12 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
        if (v12)
        {
          v16 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
        }

        else
        {
          v13 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
          if (!v13)
          {
LABEL_68:
            __break(1u);
            return;
          }

          v16 = v13;
          v12 = 0;
        }

        v14 = v12;
LABEL_52:
        v7 = 0;
        goto LABEL_53;
      }
    }

    v16 = v7;
LABEL_53:
    v15 = v7;
    [v6 insertSubview:a1 aboveSubview:v16];
    goto LABEL_54;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
        if (v9)
        {
          a4 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
          if (!a4)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v10 = sel_insertSubview_belowSubview_;
LABEL_39:
          v11 = a1;
LABEL_40:

LABEL_42:
          [v9 v10];
          return;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
      if (!v9)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      a4 = *&v4[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView];
      if (!a4)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

LABEL_38:
      v10 = sel_insertSubview_aboveSubview_;
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (!a2)
  {
LABEL_22:
    v16 = [v4 contentView];
    [v16 insertSubview:a1 atIndex:0];
    goto LABEL_54;
  }

  if (a2 != 1)
  {
    v9 = *&v4[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (v9)
    {
      v10 = sel_insertSubview_atIndex_;
      v11 = a1;
      a4 = 0;
      goto LABEL_40;
    }

    goto LABEL_62;
  }

  v16 = [v4 contentView];
  [v16 addSubview_];
LABEL_54:
}

void sub_21B65FC2C(void *a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView;
  v4 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView];
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }

    v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (!v6)
    {
      goto LABEL_26;
    }

    if (!a1)
    {
      v7 = v6;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  v26 = v6;
  v8 = [a1 superview];
  if (v8)
  {
    v9 = v8;

    v7 = v26;
    if (v9 != v26)
    {
      goto LABEL_12;
    }

    [a1 removeFromSuperview];
  }

  v7 = v26;
LABEL_12:
  v10 = *&v1[v3];
  if (v10)
  {
    v27 = v7;
    if ((v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode])
    {
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_21B668840;
      *(v13 + 24) = v12;
      v32 = sub_21B668834;
      v33 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B647820;
      v31 = &block_descriptor_234_0;
      v14 = _Block_copy(&aBlock);
      v15 = v10;
      v16 = v1;

      [v11 performWithoutAnimation_];
      _Block_release(v14);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_21B668850;
      *(v22 + 24) = v21;
      v32 = sub_21B668834;
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B647820;
      v31 = &block_descriptor_245;
      v23 = _Block_copy(&aBlock);
      v24 = v10;
      v25 = v1;

      [v20 performWithoutAnimation_];
      _Block_release(v23);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if ((v20 & 1) == 0)
      {
LABEL_16:
        [v1 bounds];
        [v10 setFrame_];
        if (*v5)
        {
          v17 = *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_lockPosterSnapshotView];
          if (v17)
          {
            v18 = *v5;
            v19 = v17;
            [v18 insertSubview:v10 aboveSubview:v19];

            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_21B660044(unsigned __int8 a1)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_10;
    }

    v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView);
    if (v3)
    {
      [v3 setAlpha_];
    }

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = isEscapingClosureAtFileLocation;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21B668850;
    *(v6 + 24) = v5;
    v42 = sub_21B668834;
    v43 = v6;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21B647820;
    v41 = &block_descriptor_217;
    v7 = _Block_copy(&v38);
    v8 = isEscapingClosureAtFileLocation;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (v2 != 2)
  {
LABEL_16:
    if ((*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) != 0 || *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode))
    {
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 16) = isEscapingClosureAtFileLocation;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_21B668840;
      *(v28 + 24) = v27;
      v42 = sub_21B668834;
      v43 = v28;
      v38 = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = sub_21B647820;
      v41 = &block_descriptor_163_0;
      v29 = _Block_copy(&v38);
      v30 = isEscapingClosureAtFileLocation;

      [v26 performWithoutAnimation_];
      _Block_release(v29);
      v31 = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        return result;
      }

LABEL_23:
      __break(1u);
      return result;
    }

    v32 = objc_opt_self();
    v33 = swift_allocObject();
    *(v33 + 16) = isEscapingClosureAtFileLocation;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_21B6687C8;
    *(v34 + 24) = v33;
    v42 = sub_21B668834;
    v43 = v34;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21B647820;
    v41 = &block_descriptor_173;
    v35 = _Block_copy(&v38);
    v36 = isEscapingClosureAtFileLocation;

    [v32 performWithoutAnimation_];
    _Block_release(v35);
    v37 = swift_isEscapingClosureAtFileLocation();

    if (v37)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    return result;
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = isEscapingClosureAtFileLocation;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21B668840;
  *(v12 + 24) = v11;
  v42 = sub_21B668834;
  v43 = v12;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_21B647820;
  v41 = &block_descriptor_184;
  v13 = _Block_copy(&v38);
  v14 = isEscapingClosureAtFileLocation;

  [v10 performWithoutAnimation_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_10:
  v15 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveContentView);
  v16 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_overlayView);
  if (v16)
  {
    [v16 setAlpha_];
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = isEscapingClosureAtFileLocation;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21B668850;
  *(v19 + 24) = v18;
  v42 = sub_21B668834;
  v43 = v19;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_21B647820;
  v41 = &block_descriptor_195;
  v20 = _Block_copy(&v38);
  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

  [v17 performWithoutAnimation_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    goto LABEL_22;
  }

  if (!v15)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = isEscapingClosureAtFileLocation;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_21B668840;
    *(v22 + 24) = v21;
    v42 = sub_21B668834;
    v43 = v22;
    v38 = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21B647820;
    v41 = &block_descriptor_206;
    v23 = _Block_copy(&v38);
    v24 = isEscapingClosureAtFileLocation;

    [v17 performWithoutAnimation_];
    _Block_release(v23);
    v25 = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
      goto LABEL_16;
    }
  }

  return result;
}

void sub_21B660800(void *a1)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView;
  v4 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_liveFloatingView];
  if (v4)
  {
    if (v4 == a1)
    {
      return;
    }

    v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (!v6)
    {
      goto LABEL_26;
    }

    if (!a1)
    {
      v7 = v6;
      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = &v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    v6 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  v26 = v6;
  v8 = [a1 superview];
  if (v8)
  {
    v9 = v8;

    v7 = v26;
    if (v9 != v26)
    {
      goto LABEL_12;
    }

    [a1 removeFromSuperview];
  }

  v7 = v26;
LABEL_12:
  v10 = *&v1[v3];
  if (v10)
  {
    v27 = v7;
    if ((v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode])
    {
      v11 = objc_opt_self();
      v12 = swift_allocObject();
      *(v12 + 16) = v1;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_21B668840;
      *(v13 + 24) = v12;
      v32 = sub_21B668834;
      v33 = v13;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B647820;
      v31 = &block_descriptor_262;
      v14 = _Block_copy(&aBlock);
      v15 = v10;
      v16 = v1;

      [v11 performWithoutAnimation_];
      _Block_release(v14);
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_21B668850;
      *(v22 + 24) = v21;
      v32 = sub_21B668834;
      v33 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B647820;
      v31 = &block_descriptor_273;
      v23 = _Block_copy(&aBlock);
      v24 = v10;
      v25 = v1;

      [v20 performWithoutAnimation_];
      _Block_release(v23);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if ((v20 & 1) == 0)
      {
LABEL_16:
        [v1 bounds];
        [v10 setFrame_];
        if (*v5)
        {
          v17 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingLayerSnapshotView];
          if (v17)
          {
            v18 = *v5;
            v19 = v17;
            [v18 insertSubview:v10 aboveSubview:v19];

            return;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

id sub_21B660C14(id result, double a2)
{
  v3 = v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration;
  if (*(v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration) != result || *(v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_adaptiveTimeConfiguration + 8) != a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = [Strong interfaceOrientation];
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0;
    }

    IsPortrait = UIInterfaceOrientationIsPortrait(v6);
    v8 = *v3;
    if (IsPortrait == UIInterfaceOrientationIsPortrait(*v3) || (IsLandscape = UIInterfaceOrientationIsLandscape(v6), result = UIInterfaceOrientationIsLandscape(v8), IsLandscape == result))
    {
      v10 = *(v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
      if (v10)
      {
        [v10 setAdaptiveTimeTextHeight_];
      }

      result = *(v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
      if (result)
      {
        v11 = *(v3 + 8);

        return [result setAdaptiveTimeTextHeight_];
      }
    }
  }

  return result;
}

uint64_t sub_21B660D30()
{
  v1 = sub_21B6C88C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28120B5D0 != -1)
  {
    swift_once();
  }

  v5 = sub_21B61F3A0();
  v7 = v6;

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v0 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_posterPair);
  if (!v8)
  {
LABEL_10:

LABEL_11:
    v17 = 0;
    return v17 & 1;
  }

  v9 = *&v8[OBJC_IVAR___PBFPosterPair_configuration];
  v10 = v8;
  v11 = [v9 _path];
  v12 = [v11 serverIdentity];

  if (!v12)
  {

    goto LABEL_10;
  }

  v13 = [v12 posterUUID];

  sub_21B6C88A4();
  v14 = sub_21B6C8874();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  if (v5 == v14 && v7 == v16)
  {

    v17 = 1;
  }

  else
  {
    v17 = sub_21B6C96E4();
  }

  return v17 & 1;
}

void sub_21B660F64(void *a1, id a2)
{
  v3 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView;
  if (!*(v2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView))
  {
    __break(1u);
    goto LABEL_8;
  }

  [a2 bs:a1 addChildViewController:? withSuperview:?];
  v5 = [a1 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = *(v2 + v3);
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v7 bounds];
  [v6 setFrame_];

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_21B66104C(Strong);
}

void sub_21B66104C(id a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (a1)
  {
    if (Strong)
    {

      if (v4 == a1)
      {
        return;
      }
    }

    v4 = a1;
    [v4 removeObserver_];
    v5 = [v4 parentViewController];
    if (v5)
    {
      v6 = v5;
      [v5 bs:v4 removeChildViewController:?];
    }

    [v4 invalidate];
    v7 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing);
    *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) = 0;
    if (v7 == 1)
    {
      sub_21B666B28();
    }
  }

  else if (!Strong)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = [v10 view];
      if (v12)
      {
        if (*(v1 + OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView))
        {
          v13 = v12;
          [v11 insertSubview:v12 belowSubview:?];

          goto LABEL_14;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_14:
  if ((*(v1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode) == 5)
  {
    sub_21B661E6C();
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v14 addObserver_];
  }
}

void sub_21B66122C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if ((v0[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8] & 1) == 0 && *&v0[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode] == 5)
    {
      v2 = v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing];
      v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing] = 1;
      if ((v2 & 1) == 0)
      {
        sub_21B666B28();
      }
    }
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    if (((v0[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8] & 1) != 0 || *&v0[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode] != 5) && (v0[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot] & 1) == 0)
    {
      v11 = v3;
      if (![v3 isContentHidden])
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v0;
        *(v7 + 24) = v11;
        aBlock[4] = sub_21B6687D0;
        aBlock[5] = v7;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21B647848;
        aBlock[3] = &block_descriptor_223;
        v8 = _Block_copy(aBlock);
        v9 = v0;
        v10 = v11;

        [v10 setContentHidden:1 animated:1 completion:v8];

        _Block_release(v8);
        return;
      }

      [v11 removeObserver_];
      v4 = [v11 parentViewController];
      if (v4)
      {
        v5 = v4;
        [v4 bs:v11 removeChildViewController:?];
      }

      [v11 invalidate];
      v6 = v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing];
      v0[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing] = 0;
      if (v6 == 1)
      {
        sub_21B666B28();
      }

      v3 = v11;
    }
  }
}

void sub_21B661460(int a1, uint64_t a2, id a3)
{
  [a3 removeObserver_];
  v5 = [a3 parentViewController];
  if (v5)
  {
    v6 = v5;
    [v5 bs:a3 removeChildViewController:?];
  }

  [a3 invalidate];
  v7 = *(a2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing);
  *(a2 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing) = 0;
  if (v7 == 1)
  {
    sub_21B666B28();
  }
}

void sub_21B6615D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93190);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v21[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
    swift_beginAccess();
    sub_21B63D2BC(v0 + v8, v6, &qword_27CD93190);
    v9 = sub_21B6C8854();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v6, 1, v9);
    v12 = v7;
    v13 = 0;
    if (v11 != 1)
    {
      v13 = sub_21B6C87F4();
      (*(v10 + 8))(v6, v9);
    }

    [v12 setDisplayDate_];
  }

  v14 = *(v0 + OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_displayDate;
    swift_beginAccess();
    sub_21B63D2BC(v0 + v15, v4, &qword_27CD93190);
    v16 = sub_21B6C8854();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v4, 1, v16);
    v19 = v14;
    v20 = 0;
    if (v18 != 1)
    {
      v20 = sub_21B6C87F4();
      (*(v17 + 8))(v4, v16);
    }

    [v19 setDisplayDate_];
  }
}

void sub_21B66186C(double a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius;
  *&v1[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_posterCornerRadius] = a1;
  v3 = [v1 layer];
  [v3 setCornerRadius_];

  v4 = *&v1[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_keyLineView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 _setContinuousCornerRadius_];
  v5 = *&v1[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = [v5 layer];
  [v6 setCornerRadius_];
}

void sub_21B661950(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode];
  v6 = *&v2[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode];
  if (a2)
  {
    if (v2[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8])
    {
      return;
    }
  }

  else
  {
    v7 = 0.0;
    if (v2[OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8])
    {
      goto LABEL_10;
    }

    if (v6 == a1)
    {
      return;
    }
  }

  v7 = 1.0;
  v8 = 0.0;
  if (v6 == 4)
  {
    v8 = 1.0;
  }

  if (v6 != 1)
  {
    v7 = v8;
  }

LABEL_10:
  v9 = *&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_focusButton];
  if (v9)
  {
    [v9 setAlpha_];
  }

  if ((a2 & 1) == 0 && !a1 || (v5[8] & 1) == 0 && !*v5)
  {
    sub_21B666B28();
    v10 = (v5[8] & 1) != 0 || *v5;
    sub_21B660044(v10);
    v11 = *&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController];
    v12 = v11;
    sub_21B6644F4(v11);

    v13 = *&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController];
    v14 = v13;
    sub_21B6644F4(v13);
  }

  v15 = *&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_shadowView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_49;
  }

  v16 = [v15 layer];
  if (v5[8])
  {
    v17 = 0;
  }

  else
  {
    v17 = *v5;
  }

  v18 = sub_21B66A7FC(v17);
  v19 = 0.0;
  if (v18)
  {
    *&v19 = 0.75;
  }

  [v16 setShadowOpacity_];

  v20 = (v5[8] & 1) == 0 && *v5 == 1;
  sub_21B663160(v20);
  v21 = (v5[8] & 1) == 0 && *v5 == 5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    [Strong setSceneUserInteractionEnabled_];
    if (!v21)
    {
      v24 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
      if (v2[OBJC_IVAR____TtC11PosterBoard28PosterPairCollectionViewCell_isReloadingLockPosterSnapshot] == 1)
      {
        [v23 setControlsHidden:1 animated:v24];
      }

      else
      {
        [v23 setContentHidden:1 animated:v24 completion:0];
      }

      [v23 setUsesEditingLayout:0 animated:v24];
    }
  }

  [*&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_prominentController] setUsesEditingLayout_];
  [*&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_floatingProminentController] setUsesEditingLayout_];
  v25 = [v2 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  if (v26 != 1)
  {
    goto LABEL_43;
  }

  v31 = &type metadata for PosterRackFeatures;
  v32 = sub_21B62C9EC();
  v30[0] = 3;
  v27 = sub_21B6C8A54();
  __swift_destroy_boxed_opaque_existential_0(v30);
  if ((v27 & 1) == 0)
  {
    goto LABEL_43;
  }

  v28 = *&v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_scrollableContentView];
  if (!v28)
  {
LABEL_49:
    __break(1u);
    return;
  }

  [v28 setClipsToBounds_];
LABEL_43:
  if (!v21)
  {
    v29 = v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing];
    v2[OBJC_IVAR____TtC11PosterBoard34LockScreenPosterCollectionViewCell_isFullyTransitionedToLockConfiguringAndEditing] = 0;
    if (v29 == 1)
    {
      sub_21B666B28();
    }
  }
}

void sub_21B661CC0(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode;
  v4 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode);
  v5 = *(v2 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  if (v5)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_21B661E6C();
    goto LABEL_7;
  }

  if ((a2 & 1) != 0 || v4 != a1)
  {
    goto LABEL_6;
  }

LABEL_7:

  sub_21B661950(v4, v5);
}

uint64_t sub_21B661D3C()
{
  v1 = (v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode);
  if (*(v0 + OBJC_IVAR____TtC11PosterBoard24PosterCollectionViewCell_layoutMode + 8))
  {
    return 0;
  }

  v2 = *v1;
  result = 1;
  if (*v1 > 4)
  {
    if (v2 != 6)
    {
      if (v2 != 5)
      {
        goto LABEL_11;
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {

        return 1;
      }
    }
  }

  else
  {
    if ((v2 - 1) < 4)
    {
      return 0;
    }

    if (v2)
    {
LABEL_11:
      sub_21B6C9524();

      v4 = sub_21B6C9654();
      MEMORY[0x21CEF5FA0](v4);

      result = sub_21B6C95D4();
      __break(1u);
    }
  }

  return result;
}