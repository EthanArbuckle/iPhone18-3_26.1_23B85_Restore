void ActivityPickerDataSource.topItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 32;
  v68 = *(v1 + 16);
  v69 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections);
  while (v3 < *(v1 + 16))
  {
    v5 = *(v4 + v3);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v25 = v70;
        if (v70 >> 62)
        {
          v26 = __CocoaSet.count.getter();
          if (v26)
          {
LABEL_30:
            v73 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
            if (v26 < 0)
            {
              goto LABEL_82;
            }

            v8 = v73;
            if ((v25 & 0xC000000000000001) != 0)
            {
              v27 = 0;
              do
              {
                v28 = MEMORY[0x20F2E7A20](v27, v25);
                v70 = v8;
                v30 = *(v8 + 16);
                v29 = *(v8 + 24);
                if (v30 >= v29 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
                }

                ++v27;
                v31 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem);
                *(v8 + 16) = v30 + 1;
                v32 = v8 + 16 * v30;
                *(v32 + 32) = v28;
                *(v32 + 40) = v31;
              }

              while (v26 != v27);
            }

            else
            {
              v42 = 32;
              do
              {
                v70 = v8;
                v44 = *(v8 + 16);
                v43 = *(v8 + 24);
                v45 = *(v25 + v42);
                if (v44 >= v43 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
                }

                v46 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem);
                *(v8 + 16) = v44 + 1;
                v47 = v8 + 16 * v44;
                *(v47 + 32) = v45;
                *(v47 + 40) = v46;
                v42 += 8;
                --v26;
              }

              while (v26);
            }

            goto LABEL_68;
          }
        }

        else
        {
          v26 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v5 == 4)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v15 = v70;
        if (v70 >> 62)
        {
          v16 = __CocoaSet.count.getter();
          if (v16)
          {
LABEL_20:
            v72 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
            if (v16 < 0)
            {
              goto LABEL_85;
            }

            v8 = v72;
            if ((v15 & 0xC000000000000001) != 0)
            {
              v17 = 0;
              do
              {
                v18 = MEMORY[0x20F2E7A20](v17, v15);
                v70 = v8;
                v20 = *(v8 + 16);
                v19 = *(v8 + 24);
                if (v20 >= v19 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
                }

                ++v17;
                v21 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem);
                *(v8 + 16) = v20 + 1;
                v22 = v8 + 16 * v20;
                *(v22 + 32) = v18;
                *(v22 + 40) = v21;
              }

              while (v16 != v17);
            }

            else
            {
              v54 = 32;
              do
              {
                v70 = v8;
                v56 = *(v8 + 16);
                v55 = *(v8 + 24);
                v57 = *(v15 + v54);
                if (v56 >= v55 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
                }

                v58 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem);
                *(v8 + 16) = v56 + 1;
                v59 = v8 + 16 * v56;
                *(v59 + 32) = v57;
                *(v59 + 40) = v58;
                v54 += 8;
                --v16;
              }

              while (v16);
            }

            goto LABEL_68;
          }
        }

        else
        {
          v16 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v34 = v70;
        if (v70 >> 62)
        {
          v35 = __CocoaSet.count.getter();
          if (v35)
          {
LABEL_42:
            v74 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
            if (v35 < 0)
            {
              goto LABEL_84;
            }

            v8 = v74;
            if ((v34 & 0xC000000000000001) != 0)
            {
              v36 = 0;
              do
              {
                v37 = MEMORY[0x20F2E7A20](v36, v34);
                v70 = v8;
                v39 = *(v8 + 16);
                v38 = *(v8 + 24);
                if (v39 >= v38 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
                }

                ++v36;
                v40 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
                *(v8 + 16) = v39 + 1;
                v41 = v8 + 16 * v39;
                *(v41 + 32) = v37;
                *(v41 + 40) = v40;
              }

              while (v35 != v36);
            }

            else
            {
              v60 = 32;
              do
              {
                v70 = v8;
                v62 = *(v8 + 16);
                v61 = *(v8 + 24);
                v63 = *(v34 + v60);
                if (v62 >= v61 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1);
                }

                v64 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
                *(v8 + 16) = v62 + 1;
                v65 = v8 + 16 * v62;
                *(v65 + 32) = v63;
                *(v65 + 40) = v64;
                v60 += 8;
                --v35;
              }

              while (v35);
            }

LABEL_68:

            v2 = v68;
            v1 = v69;
            v4 = v67;
            if (*(v8 + 16))
            {
              goto LABEL_80;
            }

            goto LABEL_78;
          }
        }

        else
        {
          v35 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      if (!*(v4 + v3))
      {
        v23 = ActivityPickerDataSource.standardItems.getter();
        v24 = specialized _arrayForceCast<A, B>(_:)(v23);
        goto LABEL_38;
      }

      if (v5 != 1)
      {
        v33 = ActivityPickerDataSource.guidedItems.getter();
        v24 = specialized _arrayForceCast<A, B>(_:)(v33);
LABEL_38:
        v8 = v24;

        if (*(v8 + 16))
        {
          goto LABEL_80;
        }

        goto LABEL_78;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = v70;
      if (v70 >> 62)
      {
        v7 = __CocoaSet.count.getter();
        if (v7)
        {
LABEL_9:
          v71 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
          if (v7 < 0)
          {
            goto LABEL_83;
          }

          v8 = v71;
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = 0;
            do
            {
              v10 = MEMORY[0x20F2E7A20](v9, v6);
              v70 = v8;
              v12 = *(v8 + 16);
              v11 = *(v8 + 24);
              if (v12 >= v11 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
              }

              ++v9;
              v13 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem);
              *(v8 + 16) = v12 + 1;
              v14 = v8 + 16 * v12;
              *(v14 + 32) = v10;
              *(v14 + 40) = v13;
            }

            while (v7 != v9);
          }

          else
          {
            v48 = 32;
            do
            {
              v70 = v8;
              v50 = *(v8 + 16);
              v49 = *(v8 + 24);
              v51 = *(v6 + v48);
              if (v50 >= v49 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
              }

              v52 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem);
              *(v8 + 16) = v50 + 1;
              v53 = v8 + 16 * v50;
              *(v53 + 32) = v51;
              *(v53 + 40) = v52;
              v48 += 8;
              --v7;
            }

            while (v7);
          }

          goto LABEL_68;
        }
      }

      else
      {
        v7 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_80:
      v66 = *(v8 + 40);
      *(v8 + 32);

      return;
    }

LABEL_78:
    ++v3;

    if (v3 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t ActivityPickerDataSource.__allocating_init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v105 = a5;
  v106 = a2;
  v107 = a4;
  v91 = a3;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v102 = *(v7 - 8);
  v103 = v7;
  v8 = *(v102 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v101 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v78 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v12 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v92 = &v78 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v14 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v87 = &v78 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  v16 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v86 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v19 = *(v18 - 8);
  v94 = v18;
  v95 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v89 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v23 = *(v22 - 8);
  v97 = v22;
  v98 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v90 = &v78 - v25;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  v85 = *(v104 - 8);
  v26 = *(v85 + 64);
  MEMORY[0x28223BE20](v104);
  v84 = &v78 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  v82 = *(v83 - 8);
  v28 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v78 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  v30 = *(v80 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v80);
  v33 = &v78 - v32;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  v34 = *(v79 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v79);
  v37 = &v78 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v78 - v41;
  v43 = *(v6 + 48);
  v44 = *(v6 + 52);
  v45 = swift_allocObject();
  v46 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v47 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v39 + 32))(v45 + v46, v42, v38);
  v48 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v108 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v34 + 32))(v45 + v48, v37, v79);
  v49 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v108 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
  Published.init(initialValue:)();
  (*(v30 + 32))(v45 + v49, v33, v80);
  v50 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v108 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
  v51 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(v45 + v50, v51, v83);
  v52 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v108 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
  v53 = v84;
  Published.init(initialValue:)();
  (*(v85 + 32))(v45 + v52, v53, v104);
  *(v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections) = &outlined read-only object #0 of ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:);
  v54 = v88;
  *(v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_standardActivityItemsDataSource) = v88;
  outlined init with copy of ActivityItemsDataSourceSync(v106, v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource);
  outlined init with copy of ActivityItemsDataSourceSync(v107, v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource);
  v55 = v91;
  *(v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) = v91;
  *(v45 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityTypesProvider) = v105;
  swift_beginAccess();
  v88 = v54;
  v91 = v55;
  swift_unknownObjectRetain();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ButtonActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v56 = v89;
  Publishers.CombineLatest3.init(_:_:_:)();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher> and conformance Publishers.CombineLatest3<A, B, C>, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v57 = v90;
  v58 = v94;
  Publisher.map<A>(_:)();
  (*(v95 + 8))(v56, v58);
  swift_beginAccess();
  v59 = v100;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher>, [AnyActivityPickerItem]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v60 = v97;
  Publisher<>.assign(to:)();
  (*(v98 + 8))(v57, v60);
  v61 = v102;
  v62 = v103;
  (*(v102 + 16))(v101, v59, v103);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v61 + 8))(v59, v62);
  v63 = v106;
  v64 = v106[3];
  v65 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v64);
  v66 = *(v65 + 8);
  v67 = *(v66 + 16);

  v67(v68, &protocol witness table for ActivityPickerDataSource, v64, v66);

  v69 = v107;
  v70 = v107[3];
  v71 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v70);
  v72 = *(v71 + 8);
  v73 = *(v72 + 16);

  v73(v74, &protocol witness table for ActivityPickerDataSource, v70, v72);

  v75 = v91;
  [*&v91[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers] addObject_];
  v76 = [objc_opt_self() defaultCenter];
  [v76 addObserver:v45 selector:sel_handleHKUserPreferenceDidChangeWithNotification_ name:*MEMORY[0x277CCCE80] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_4(v69);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v63);

  swift_unknownObjectRelease();
  return v45;
}

uint64_t ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v7 = specialized ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v7;
}

char *closure #1 in ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a1 >> 62)
  {
    v58 = a3;
    v59 = __CocoaSet.count.getter();
    a3 = v58;
    v5 = v59;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = a3;
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v61 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v6 = v61;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x20F2E7A20](v8, a1);
        v10 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem);
        v62 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v14;
          v6 = v62;
        }

        ++v8;
        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v10;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem);
      do
      {
        v18 = *(v61 + 16);
        v17 = *(v61 + 24);
        v19 = *v15;
        if (v18 >= v17 >> 1)
        {
          v21 = v17 > 1;
          v22 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v18 + 1, 1);
          v19 = v22;
        }

        *(v61 + 16) = v18 + 1;
        v20 = v61 + 16 * v18;
        *(v20 + 32) = v19;
        *(v20 + 40) = v16;
        ++v15;
        --v5;
      }

      while (v5);
    }
  }

  if (a2 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v63 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v63;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        v26 = v60;
        do
        {
          v27 = MEMORY[0x20F2E7A20](v25, a2);
          v28 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
          v64 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            v32 = v28;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v26 = v60;
            v28 = v32;
            v24 = v64;
          }

          ++v25;
          *(v24 + 16) = v30 + 1;
          v31 = v24 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
        }

        while (v23 != v25);
      }

      else
      {
        v43 = (a2 + 32);
        v44 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
        v26 = v60;
        do
        {
          v46 = *(v63 + 16);
          v45 = *(v63 + 24);
          v47 = *v43;
          if (v46 >= v45 >> 1)
          {
            v49 = v45 > 1;
            v50 = v47;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v46 + 1, 1);
            v26 = v60;
            v47 = v50;
          }

          *(v63 + 16) = v46 + 1;
          v48 = v63 + 16 * v46;
          *(v48 + 32) = v47;
          *(v48 + 40) = v44;
          ++v43;
          --v23;
        }

        while (v23);
      }

      goto LABEL_26;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = v60;
LABEL_26:
  if (v26 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
LABEL_45:
    specialized Array.append<A>(contentsOf:)(v24);
    specialized Array.append<A>(contentsOf:)(v34);
    return v6;
  }

  v65 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = v65;
    v35 = v60;
    if ((v60 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      do
      {
        v37 = MEMORY[0x20F2E7A20](v36, v35);
        v38 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem);
        v66 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          v42 = v38;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v35 = v60;
          v38 = v42;
          v34 = v66;
        }

        ++v36;
        *(v34 + 16) = v40 + 1;
        v41 = v34 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
      }

      while (v33 != v36);
    }

    else
    {
      v51 = (v60 + 32);
      v52 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem);
      do
      {
        v67 = v34;
        v54 = *(v34 + 16);
        v53 = *(v34 + 24);
        v55 = *v51;
        if (v54 >= v53 >> 1)
        {
          v57 = v55;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
          v55 = v57;
          v34 = v67;
        }

        *(v34 + 16) = v54 + 1;
        v56 = v34 + 16 * v54;
        *(v56 + 32) = v55;
        *(v56 + 40) = v52;
        ++v51;
        --v33;
      }

      while (v33);
    }

    goto LABEL_45;
  }

LABEL_51:
  __break(1u);
  return result;
}

char *specialized thunk for @escaping @callee_guaranteed (@guaranteed [ManagedConfigurationSourcePickerItem], @guaranteed [CompoundActivityPickerItem], @guaranteed [ButtonActivityPickerItem]) -> (@owned [AnyActivityPickerItem])@<X0>(unint64_t *a1@<X0>, char **a2@<X8>)
{
  result = closure #1 in ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t ActivityPickerDataSource.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
  outlined init with copy of ActivityItemsDataSourceSync(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource, v23);
  v3 = v24;
  v4 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(*(v4 + 8) + 24))(v0, &protocol witness table for ActivityPickerDataSource, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v23);
  v5 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;
  outlined init with copy of ActivityItemsDataSourceSync(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource, v23);
  v6 = v24;
  v7 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(*(v7 + 8) + 24))(v0, &protocol witness table for ActivityPickerDataSource, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v23);
  v8 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource;
  [*(*(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) + OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers) removeObject_];
  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver_];

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  __swift_destroy_boxed_opaque_existential_1Tm_4((v1 + v2));
  __swift_destroy_boxed_opaque_existential_1Tm_4((v1 + v5));

  v20 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityTypesProvider);
  swift_unknownObjectRelease();
  v21 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections);

  return v1;
}

uint64_t ActivityPickerDataSource.__deallocating_deinit()
{
  ActivityPickerDataSource.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ActivityPickerDataSource.reloadData()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = static NLActivityPickerSection.allCases;
  v3 = *(static NLActivityPickerSection.allCases + 2);
  v4 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource;
  v5 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
  v6 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;

  if (!v3)
  {
LABEL_14:

    return;
  }

  v7 = 0;
  v8 = (v1 + v5);
  v9 = (v1 + v6);
  while (v7 < v2[2])
  {
    v13 = v2[v7 + 4];
    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_5;
      }

      if (v13 != 1)
      {
        goto LABEL_16;
      }

      v11 = v9[3];
      v10 = v9[4];
      v12 = v9;
      goto LABEL_4;
    }

    if (v13 == 2)
    {
      v11 = v8[3];
      v10 = v8[4];
      v12 = v8;
LABEL_4:
      __swift_project_boxed_opaque_existential_1(v12, v11);
      (*(*(v10 + 8) + 32))(v11);
      goto LABEL_5;
    }

    if (v13 != 3)
    {
      goto LABEL_16;
    }

    v14 = *(v1 + v4);
    CompoundActivityItemsDataSource.updateObservers()();
LABEL_5:
    if (v3 == ++v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ActivityPickerDataSource.reload(section:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
      goto LABEL_7;
    }

    if (a1 != 3)
    {
      goto LABEL_11;
    }

    v6 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource);
    CompoundActivityItemsDataSource.updateObservers()();
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;
LABEL_7:
      v3 = (v1 + v2);
      v4 = *(v1 + v2 + 24);
      v5 = *(v1 + v2 + 32);
      __swift_project_boxed_opaque_existential_1(v3, v4);
      (*(*(v5 + 8) + 32))(v4);
      return;
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivityPickerDataSource@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPickerDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static NLActivityPickerSection.allCases.setter(void *a1)
{
  swift_beginAccess();
  static NLActivityPickerSection.allCases = a1;
}

uint64_t protocol witness for static CaseIterable.allCases.getter in conformance NLActivityPickerSection@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static NLActivityPickerSection.allCases;
}

uint64_t ActivityPickerDataSource.compoundItemsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t protocol witness for ActivityPickerDataSourceObserving.compoundItemsPublisher.getter in conformance ActivityPickerDataSource()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t protocol witness for ActivityPickerDataSourceObserving.compoundItems.getter in conformance ActivityPickerDataSource()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

void ActivityPickerDataSource.checkForUpdatedSelectedActivityPickerItem(selectedItem:)(void **a1@<X0>, unint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_89;
  }

  v7 = type metadata accessor for CompoundActivityPickerItem();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    v133 = swift_dynamicCastClass();
    if (!v133)
    {
LABEL_89:
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    v26 = one-time initialization token for activityPicker;
    v27 = v6;
    if (v26 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    v29 = __swift_project_value_buffer(v28, static WOLog.activityPicker);
    v30 = v27;
    v125 = v29;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v126 = a2;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v3 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v138[0] = v7;
      *v33 = 136315394;
      v34 = _typeName(_:qualified:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, v138);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v133;
      *v3 = v133;
      v37 = v30;
      _os_log_impl(&dword_20AEA4000, v31, v32, "[%s]: current selected managed item: %@", v33, 0x16u);
      outlined destroy of NSObject?(v3);
      MEMORY[0x20F2E9420](v3, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    static Published.subscript.getter();

    v38 = v138[0];
    v128 = v30;
    if (v138[0] >> 62)
    {
      v39 = __CocoaSet.count.getter();
      if (v39)
      {
LABEL_17:
        a2 = 0;
        v130 = OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider;
        v11 = v38 & 0xC000000000000001;
        do
        {
          if (v11)
          {
            v40 = MEMORY[0x20F2E7A20](a2, v38);
          }

          else
          {
            if (a2 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v40 = *(v38 + 8 * a2 + 32);
          }

          KeyPath = v40;
          v41 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_79;
          }

          v42 = *&v40[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider];
          v43 = *(v133 + v130);
          swift_beginAccess();
          v7 = *(v42 + 32);
          v3 = *(v42 + 40);
          swift_beginAccess();
          v44 = v7 == *(v43 + 32) && v3 == *(v43 + 40);
          if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v71 = KeyPath;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v137 = v76;
              *v74 = 136315394;
              v77 = _typeName(_:qualified:)();
              v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v137);

              *(v74 + 4) = v79;
              *(v74 + 12) = 2112;
              *(v74 + 14) = v71;
              *v75 = v71;
              v80 = v71;
              _os_log_impl(&dword_20AEA4000, v72, v73, "[%s]: updated selected managed item: %@", v74, 0x16u);
              outlined destroy of NSObject?(v75);
              MEMORY[0x20F2E9420](v75, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm_4(v76);
              MEMORY[0x20F2E9420](v76, -1, -1);
              MEMORY[0x20F2E9420](v74, -1, -1);
            }

            v81 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem);
            *v126 = v71;
            v126[1] = v81;
            return;
          }

          ++a2;
        }

        while (v41 != v39);
      }
    }

    else
    {
      v39 = *((v138[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_17;
      }
    }

LABEL_88:

    a2 = v126;
    goto LABEL_89;
  }

  v3 = *(v8 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
  if ((v3 & 0x8000000000000000) == 0)
  {
    _sSo17OS_dispatch_queueCMaTm_9(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    v9 = *(v3 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
    v10 = one-time initialization token for multiSport;
    v11 = v3;
    v125 = v6;
    KeyPath = v9;
    if (v10 != -1)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v13 = static FIUIWorkoutActivityType.multiSport;
      v14 = static NSObject.== infix(_:_:)();

      v132 = v13;
      if ((v14 & 1) == 0)
      {
        break;
      }

      if (one-time initialization token for activityPicker != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static WOLog.activityPicker);
      v16 = v11;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      v122 = v16;
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v16;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v138[0] = v127;
        *v20 = 136315394;
        v22 = _typeName(_:qualified:)();
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v138);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v19;
        *v21 = v3;
        v25 = v19;
        _os_log_impl(&dword_20AEA4000, v17, v18, "[%s]: current selected multiSport item: %@", v20, 0x16u);
        outlined destroy of NSObject?(v21);
        MEMORY[0x20F2E9420](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_4(v127);
        MEMORY[0x20F2E9420](v127, -1, -1);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }

      v126 = a2;
      v82 = ActivityPickerDataSource.standardItems.getter();
      v11 = v82;
      v124 = v7;
      if (v82 >> 62)
      {
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
LABEL_87:

          goto LABEL_88;
        }
      }

      else
      {
        a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a2)
        {
          goto LABEL_87;
        }
      }

      KeyPath = 0;
      v7 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v83 = MEMORY[0x20F2E7A20](KeyPath, v11);
        }

        else
        {
          if (KeyPath >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v83 = *(v11 + 8 * KeyPath + 32);
        }

        v84 = v83;
        v3 = KeyPath + 1;
        if (__OFADD__(KeyPath, 1))
        {
          break;
        }

        v85 = OBJC_IVAR___NLStandardActivityPickerItem_activityType;
        v86 = *&v83[OBJC_IVAR___NLStandardActivityPickerItem_activityType];
        v87 = v132;
        v88 = v86;
        LOBYTE(v86) = static NSObject.== infix(_:_:)();

        if (v86)
        {

          v89 = v84;
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v94 = swift_slowAlloc();
            v138[0] = v94;
            *v92 = 136315394;
            v95 = _typeName(_:qualified:)();
            v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v138);

            *(v92 + 4) = v97;
            *(v92 + 12) = 2112;
            *(v92 + 14) = v89;
            *v93 = v89;
            v98 = v89;
            _os_log_impl(&dword_20AEA4000, v90, v91, "[%s]: updated selected multiSport item: %@", v92, 0x16u);
            outlined destroy of NSObject?(v93);
            MEMORY[0x20F2E9420](v93, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm_4(v94);
            MEMORY[0x20F2E9420](v94, -1, -1);
            MEMORY[0x20F2E9420](v92, -1, -1);
          }

          v99 = *&v84[v85];
          v100 = objc_allocWithZone(v124);
          v100[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
          *&v100[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v99;
          *&v100[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v89;
          v136.receiver = v100;
          v136.super_class = v124;
          v101 = v89;
          v102 = v99;
          v103 = objc_msgSendSuper2(&v136, sel_init);

          v104 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
          *v126 = v103;
          v126[1] = v104;
          return;
        }

        ++KeyPath;
        if (v3 == a2)
        {
          goto LABEL_87;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
    }

LABEL_53:

    goto LABEL_89;
  }

  v45 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  v46 = one-time initialization token for activityPicker;
  v47 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
  v129 = v6;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  v49 = __swift_project_value_buffer(v48, static WOLog.activityPicker);
  v11 = v47;
  v125 = v49;
  v50 = Logger.logObject.getter();
  KeyPath = static os_log_type_t.default.getter();

  v131 = v11;
  v126 = a2;
  v123 = v7;
  if (os_log_type_enabled(v50, KeyPath))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v138[0] = v53;
    *v51 = 136315394;
    v54 = _typeName(_:qualified:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v138);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2112;
    *(v51 + 14) = v131;
    *v52 = v45;
    v57 = v131;
    _os_log_impl(&dword_20AEA4000, v50, KeyPath, "[%s]: current selected guided item: %@", v51, 0x16u);
    outlined destroy of NSObject?(v52);
    v58 = v52;
    v11 = v131;
    MEMORY[0x20F2E9420](v58, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v53);
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v51, -1, -1);
  }

  v59 = ActivityPickerDataSource.guidedItems.getter();
  v60 = v59;
  if (v59 >> 62)
  {
    a2 = __CocoaSet.count.getter();
    if (a2)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

  a2 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a2)
  {
LABEL_85:

    goto LABEL_88;
  }

LABEL_36:
  v7 = 0;
  v134 = OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType;
  v3 = v60 & 0xC000000000000001;
  while (1)
  {
    if (v3)
    {
      v61 = MEMORY[0x20F2E7A20](v7, v60);
      v62 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v7 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_77;
      }

      v61 = *(v60 + 8 * v7 + 32);
      v62 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    KeyPath = *(v11 + v134);
    if (v61[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] != 4)
    {
      break;
    }

    if (KeyPath == 4)
    {
      v63 = v61;
      goto LABEL_73;
    }

LABEL_38:

    ++v7;
    if (v62 == a2)
    {
      goto LABEL_85;
    }
  }

  if (KeyPath == 4)
  {
    goto LABEL_38;
  }

  v63 = v61;
  v64 = MEMORY[0x20F2E5300](v61[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType]);
  v66 = v65;
  v67 = MEMORY[0x20F2E5300](KeyPath);
  KeyPath = v68;
  if (v64 != v67 || v66 != v68)
  {
    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v61 = v63;
    v11 = v131;
    if (v70)
    {
      goto LABEL_73;
    }

    goto LABEL_38;
  }

  v11 = v131;
LABEL_73:

  v105 = v63;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v138[0] = v110;
    *v108 = 136315394;
    v111 = _typeName(_:qualified:)();
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, v138);

    *(v108 + 4) = v113;
    *(v108 + 12) = 2112;
    *(v108 + 14) = v105;
    *v109 = v105;
    v114 = v105;
    _os_log_impl(&dword_20AEA4000, v106, v107, "[%s]: updated selected guided item: %@", v108, 0x16u);
    outlined destroy of NSObject?(v109);
    v115 = v109;
    v11 = v131;
    MEMORY[0x20F2E9420](v115, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v110);
    MEMORY[0x20F2E9420](v110, -1, -1);
    MEMORY[0x20F2E9420](v108, -1, -1);
  }

  v116 = *(v105 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v117 = objc_allocWithZone(v123);
  v117[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v117[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v116;
  *&v117[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v105 | 0x8000000000000000;
  v135.receiver = v117;
  v135.super_class = v123;
  v118 = v105;
  v119 = v116;
  v120 = objc_msgSendSuper2(&v135, sel_init);

  v121 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem);
  *v126 = v120;
  v126[1] = v121;
}

uint64_t specialized ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v91 = a3;
  v92 = a5;
  v106 = a2;
  v107 = a4;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v103 = *(v7 - 8);
  v104 = v7;
  v8 = *(v103 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v102 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v101 = &v78 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v12 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v93 = &v78 - v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v14 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v87 = &v78 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  v16 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v86 = &v78 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v19 = *(v18 - 8);
  v95 = v18;
  v96 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v89 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v23 = *(v22 - 8);
  v98 = v22;
  v99 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v90 = &v78 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  v85 = *(v105 - 8);
  v26 = *(v85 + 64);
  MEMORY[0x28223BE20](v105);
  v84 = &v78 - v27;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  v82 = *(v83 - 8);
  v28 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v78 - v29;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  v30 = *(v79 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v79);
  v33 = &v78 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  v81 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v78 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = &v78 - v42;
  v44 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v108 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v40 + 32))(v6 + v44, v43, v39);
  v45 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v46 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v35 + 32))(v6 + v45, v38, v34);
  v47 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v108 = v46;
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
  Published.init(initialValue:)();
  (*(v30 + 32))(v6 + v47, v33, v79);
  v49 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v108 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
  v50 = v80;
  Published.init(initialValue:)();
  (*(v82 + 32))(v6 + v49, v50, v83);
  v51 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v108 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
  v52 = v84;
  Published.init(initialValue:)();
  (*(v85 + 32))(v6 + v51, v52, v105);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections) = &outlined read-only object #0 of ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:);
  v53 = v88;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_standardActivityItemsDataSource) = v88;
  outlined init with copy of ActivityItemsDataSourceSync(v106, v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource);
  outlined init with copy of ActivityItemsDataSourceSync(v107, v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource);
  v55 = v91;
  v54 = v92;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) = v91;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityTypesProvider) = v54;
  swift_beginAccess();
  v56 = v53;
  v91 = v55;
  swift_unknownObjectRetain();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ButtonActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v57 = v89;
  Publishers.CombineLatest3.init(_:_:_:)();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher> and conformance Publishers.CombineLatest3<A, B, C>, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v58 = v90;
  v59 = v95;
  Publisher.map<A>(_:)();
  (*(v96 + 8))(v57, v59);
  swift_beginAccess();
  v60 = v101;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher>, [AnyActivityPickerItem]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v61 = v98;
  Publisher<>.assign(to:)();
  (*(v99 + 8))(v58, v61);
  v62 = v103;
  v63 = v104;
  (*(v103 + 16))(v102, v60, v104);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v62 + 8))(v60, v63);
  v64 = v106;
  v65 = v106[3];
  v66 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v65);
  v67 = *(v66 + 8);
  v68 = *(v67 + 16);

  v68(v69, &protocol witness table for ActivityPickerDataSource, v65, v67);

  v70 = v107;
  v71 = v107[3];
  v72 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v71);
  v73 = *(v72 + 8);
  v74 = *(v73 + 16);

  v74(v75, &protocol witness table for ActivityPickerDataSource, v71, v73);

  [*&v91[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers] addObject_];
  v76 = [objc_opt_self() defaultCenter];
  [v76 addObserver:v6 selector:sel_handleHKUserPreferenceDidChangeWithNotification_ name:*MEMORY[0x277CCCE80] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_4(v70);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v64);
  return v6;
}

uint64_t outlined init with copy of ActivityItemsDataSourceSync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ActivityPickerDataSource()
{
  result = type metadata singleton initialization cache for ActivityPickerDataSource;
  if (!type metadata singleton initialization cache for ActivityPickerDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivityPickerDataSource()
{
  type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[PredictedActivityPickerItem]>, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[ButtonActivityPickerItem]>, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[ManagedConfigurationSourcePickerItem]>, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[CompoundActivityPickerItem]>, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[AnyActivityPickerItem]>, &_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<[PredictedActivityPickerItem]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t specialized ActivityPickerDataSource.handleHKUserPreferenceDidChange(notification:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  if ([v12 isMainThread])
  {
    v13 = *(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource);
    CompoundActivityItemsDataSource.updateObservers()();
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_9(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v21 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = partial apply for closure #1 in ActivityPickerDataSource.handleHKUserPreferenceDidChange(notification:);
    *(v15 + 24) = v1;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_52_0;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v19 = v7;
    lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v20;
    v16 = v21;
    MEMORY[0x20F2E7580](0, v11, v6, v20);
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v19);
  }
}

id FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(id a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v11 = [v5 metadata];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((a4 & 1) == 0)
  {
    v12 = *MEMORY[0x277CCC510];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v27 = type metadata accessor for NSNumber();
    *&v26 = v16;
    outlined init with take of Any(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  v18 = [v5 identifier];
  if (a2)
  {
    a1 = [v5 location];
  }

  if (a5 == 2)
  {
    a5 = [v5 isPartOfMultiSport];
  }

  if (a4)
  {

    v19 = [v5 metadata];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = [v5 auxiliaryTypeIdentifier];
  v21 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v21 initWithActivityTypeIdentifier:v18 location:a1 isPartOfMultiSport:a5 & 1 metadata:isa auxiliaryTypeIdentifier:v20];

  return v23;
}

Swift::OpaquePointer_optional __swiftcall WorkoutConfiguration.metadata()()
{
  v1 = [v0 serialize];
  v2 = [v1 jsonObject];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static WKPrivateMetadataKeys.workoutConfiguration.getter();
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = v7;
    *(inited + 48) = v3;
    *(inited + 56) = v5;
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_0(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "Cannot serialize workout configuration to json object", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v8 = 0;
  }

  v14 = v8;
  result.value._rawValue = v14;
  result.is_nil = v9;
  return result;
}

uint64_t static WorkoutConfiguration.deserialize(from:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static WorkoutConfigurationValidator.shared;

  return specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(a1, 0, v2);
}

uint64_t specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(uint64_t a1, char a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v6 = static WKPrivateMetadataKeys.workoutConfiguration.getter();
  if (!*(a1 + 16))
  {

LABEL_10:
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.app);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315138;
      v20 = static WKPrivateMetadataKeys.workoutConfiguration.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Cannot deserialize workout configuration from metadata, missing key or cannot cast: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    return 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v8, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D7E7E8]);
  outlined copy of Data._Representation(v31, v32);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithJsonObject_];

  outlined consume of Data._Representation(v31, v32);
  if (v13)
  {
    type metadata accessor for WorkoutConfiguration();
    static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v13, a2 & 1, a3, v33);
    if (v33[3])
    {
      if (swift_dynamicCast())
      {

        outlined consume of Data._Representation(v31, v32);
        return v31;
      }
    }

    else
    {
      _sSS_yptWOhTm_0(v33, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.app);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Cannot deserialize workout configuration from persistence object", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    outlined consume of Data._Representation(v31, v32);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.app);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Cannot deserialize workout configuration from json object", v26, 2u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    outlined consume of Data._Representation(v31, v32);
  }

  return 0;
}

uint64_t _sSS_yptWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem)
  {
    type metadata accessor for MediaPlaybackConfigurationItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);
  }

  return result;
}

uint64_t type metadata accessor for MediaPlaybackConfigurationItem()
{
  result = type metadata singleton initialization cache for MediaPlaybackConfigurationItem;
  if (!type metadata singleton initialization cache for MediaPlaybackConfigurationItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*MediaPlaybackConfigurationItem.autoPlayEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._autoPlayEnabled.modify();
  return MediaPlaybackConfigurationItem.autoPlayEnabled.modify;
}

void MediaPlaybackConfigurationItem.autoPlayEnabled.modify(void *a1)
{
  MediaPlaybackConfigurationItem.autoPlayEnabled.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t key path getter for MediaPlaybackConfigurationItem.autoPlayEnabled : MediaPlaybackConfigurationItem@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

uint64_t MediaPlaybackConfigurationItem.autoPlayEnabled.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t MediaPlaybackConfigurationItem.autoPlayEnabled.setter(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t partial apply for closure #1 in MediaPlaybackConfigurationItem.autoPlayEnabled.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

void (*MediaPlaybackConfigurationItem.smartStationEnabled.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._smartStationEnabled.modify();
  return MediaPlaybackConfigurationItem.smartStationEnabled.modify;
}

id key path getter for MediaPlaybackConfigurationItem.mediaSuggestion : MediaPlaybackConfigurationItem@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for MediaPlaybackConfigurationItem.mediaSuggestion : MediaPlaybackConfigurationItem(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  MediaPlaybackConfigurationItem.mediaSuggestion.setter(v2);
}

void *MediaPlaybackConfigurationItem.mediaSuggestion.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void MediaPlaybackConfigurationItem.mediaSuggestion.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MSSuggestion();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void closure #1 in MediaPlaybackConfigurationItem.mediaSuggestion.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

void (*MediaPlaybackConfigurationItem.mediaSuggestion.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._mediaSuggestion.modify();
  return MediaPlaybackConfigurationItem.mediaSuggestion.modify;
}

id MediaPlaybackConfigurationItem.__allocating_init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)(char a1, char a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = a1;
  v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = a2;
  v9 = *&v7[v8];
  v10 = a3;

  *&v7[v8] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id MediaPlaybackConfigurationItem.init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)(char a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = a1;
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = a2;
  v8 = *&v3[v7];
  v9 = a3;

  *&v3[v7] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for MediaPlaybackConfigurationItem();
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MediaPlaybackConfigurationItem.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x79616C506F747561;
  v4 = 0xEF6E6F6974736567;
  v5 = 0x677553616964656DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000019;
    v4 = 0x800000020B454810;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000020B4547E0;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  v1 = 0x79616C506F747561;
  v2 = 0x677553616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MediaPlaybackConfigurationItem.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaPlaybackConfigurationItem.encode(to:)(void *a1)
{
  v3 = v1;
  v56 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  v55 = v3;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  v12 = *(v3 + v11);
  LOBYTE(v54) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  v54 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  v14 = *(v3 + v13);
  LOBYTE(v53) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  v53 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (!v17)
  {
    goto LABEL_3;
  }

  v18 = objc_opt_self();
  v51 = 0;
  v19 = v17;
  v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v51];
  v21 = v51;
  if (!v20)
  {
    v26 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_3:
    (*(v6 + 8))(v9, v5);
LABEL_4:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
  {
    v25 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
    static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v25 & 1) == 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    v51 = v22;
    v52 = v24;
    v50 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);

    v27 = v22;
    v28 = v24;
LABEL_39:
    outlined consume of Data._Representation(v27, v28);
    goto LABEL_4;
  }

  if ((static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v48 = Data.compressed(using:)();
  v49 = v29;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WOLog.mediaPlayback);
  outlined copy of Data._Representation(v22, v24);
  v31 = v48;
  outlined copy of Data._Representation(v48, v49);
  v32 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v32, v47))
  {
    outlined consume of Data._Representation(v31, v49);
    outlined consume of Data._Representation(v22, v24);
LABEL_38:

    v51 = v31;
    v52 = v49;
    v50 = 3;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);

    outlined consume of Data._Representation(v22, v24);
    v27 = v31;
    v28 = v49;
    goto LABEL_39;
  }

  v33 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v51 = v46;
  *v33 = 136315650;
  *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573667A6CLL, 0xE500000000000000, &v51);
  *(v33 + 12) = 2048;
  v34 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    if (v34 != 2)
    {
      v35 = 0;
      goto LABEL_27;
    }

    v37 = v22[2];
    v36 = v22[3];
    v38 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v38)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v35 = BYTE6(v24);
    goto LABEL_27;
  }

  LODWORD(v35) = HIDWORD(v22) - v22;
  if (__OFSUB__(HIDWORD(v22), v22))
  {
    __break(1u);
    goto LABEL_41;
  }

  v35 = v35;
LABEL_27:
  *(v33 + 14) = v35;
  outlined consume of Data._Representation(v22, v24);
  *(v33 + 22) = 2048;
  v39 = v49;
  v40 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v40 != 2)
    {
      v41 = 0;
      goto LABEL_37;
    }

    v43 = v48[2];
    v42 = v48[3];
    v38 = __OFSUB__(v42, v43);
    v41 = v42 - v43;
    if (!v38)
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  else if (!v40)
  {
    v41 = BYTE6(v49);
LABEL_37:
    *(v33 + 24) = v41;
    v45 = v33;
    outlined consume of Data._Representation(v48, v39);
    _os_log_impl(&dword_20AEA4000, v32, v47, "Compressed media suggestion data using %s: %ld bytes --> %ld bytes", v33, 0x20u);
    v44 = v46;
    __swift_destroy_boxed_opaque_existential_0Tm_2(v46);
    MEMORY[0x20F2E9420](v44, -1, -1);
    v31 = v48;
    MEMORY[0x20F2E9420](v45, -1, -1);
    goto LABEL_38;
  }

  LODWORD(v41) = HIDWORD(v48) - v48;
  if (!__OFSUB__(HIDWORD(v48), v48))
  {
    v41 = v41;
    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

uint64_t MediaPlaybackConfigurationItem.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v65 - v8;
  v72 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion) = 0;
  v71 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  ObservationRegistrar.init()();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm_2(a1);

    v12 = type metadata accessor for ObservationRegistrar();
    (*(*(v12 - 8) + 8))(v1 + v71, v12);
    type metadata accessor for MediaPlaybackConfigurationItem();
    v13 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v11 = v6;
  LOBYTE(v75[0].receiver) = 0;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v75[0].receiver) = 1;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v73) = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  super_class = v75[0].super_class;
  if (v75[0].super_class >> 60 != 15)
  {
    receiver = v75[0].receiver;
    v18 = Data.decompressed(using:)();
    v69 = v19;
    v70 = v18;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.mediaPlayback);
    outlined copy of Data?(receiver, super_class);
    v68 = super_class;
    outlined copy of Data._Representation(v70, v69);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      outlined consume of Data._Representation(v70, v69);
      v28 = receiver;
      v29 = receiver;
      v30 = v68;
      outlined consume of Data?(v28, v68);
      outlined consume of Data?(v29, v30);

      goto LABEL_33;
    }

    HIDWORD(v65) = v22;
    v66 = v21;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v75[0].receiver = v24;
    *v23 = 136315650;
    result = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573667A6CLL, 0xE500000000000000, v75);
    *(v23 + 4) = result;
    v67 = v23;
    *(v23 + 12) = 2048;
    v25 = v68;
    v26 = v68 >> 62;
    if ((v68 >> 62) > 1)
    {
      if (v26 != 2)
      {
        v27 = 0;
        goto LABEL_22;
      }

      v32 = receiver[2];
      v31 = receiver[3];
      v33 = __OFSUB__(v31, v32);
      v27 = v31 - v32;
      if (!v33)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v26)
    {
      v27 = BYTE6(v68);
      goto LABEL_22;
    }

    LODWORD(v27) = HIDWORD(receiver) - receiver;
    if (__OFSUB__(HIDWORD(receiver), receiver))
    {
      __break(1u);
      goto LABEL_56;
    }

    v27 = v27;
LABEL_22:
    v34 = v24;
    v35 = v67;
    *(v67 + 14) = v27;
    result = outlined consume of Data?(receiver, v25);
    *(v35 + 11) = 2048;
    v36 = v69;
    v37 = v69 >> 62;
    if ((v69 >> 62) > 1)
    {
      v38 = v70;
      if (v37 != 2)
      {
        v39 = 0;
        goto LABEL_32;
      }

      v41 = v70[2];
      v40 = v70[3];
      v33 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (!v33)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else
    {
      v38 = v70;
      if (!v37)
      {
        v39 = BYTE6(v69);
LABEL_32:
        v42 = v67;
        *(v67 + 3) = v39;
        outlined consume of Data._Representation(v38, v36);
        _os_log_impl(&dword_20AEA4000, v66, BYTE4(v65), "Decompressed media suggestion data using %s: %ld --> %ld bytes", v42, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm_2(v34);
        MEMORY[0x20F2E9420](v34, -1, -1);
        MEMORY[0x20F2E9420](v42, -1, -1);
        outlined consume of Data?(receiver, v68);

        goto LABEL_33;
      }
    }

    LODWORD(v39) = HIDWORD(v38) - v38;
    if (!__OFSUB__(HIDWORD(v38), v38))
    {
      v39 = v39;
      goto LABEL_32;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  LOBYTE(v73) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v75[0].super_class >> 60 == 15)
  {
LABEL_43:
    (*(v11 + 8))(v9, v5);
    goto LABEL_54;
  }

  v69 = v75[0].super_class;
  v70 = v75[0].receiver;
LABEL_33:
  _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20B4238A0;
  *(v43 + 32) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  *(v43 + 40) = type metadata accessor for MSUnifiedMediaIntent();
  *(v43 + 48) = type metadata accessor for MSIntentWrapper();
  *(v43 + 56) = type metadata accessor for MSPlayMediaAppIntent();
  *(v43 + 64) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v43 + 72) = type metadata accessor for MSSuggestion();
  *(v43 + 80) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  *(v43 + 88) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v44 = v69;

  if (!v74)
  {
    (*(v11 + 8))(v9, v5);
    outlined consume of Data._Representation(v70, v44);
    _sypSgWOhTm_1(&v73, &_sypSgMd, &_sypSgMR);
LABEL_54:
    v64 = type metadata accessor for MediaPlaybackConfigurationItem();
    v76.receiver = v3;
    v76.super_class = v64;
    v3 = objc_msgSendSuper2(&v76, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm_2(a1);
    return v3;
  }

  outlined init with take of Any(&v73, v75);
  outlined init with copy of Any(v75, &v73);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data._Representation(v70, v44);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v75);
    goto LABEL_43;
  }

  v71 = v5;
  v45 = v77;
  v46 = v72;
  v47 = *(&v72->isa + v3);
  v48 = v77;

  v68 = v45;
  *(&v46->isa + v3) = v45;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static WOLog.mediaPlayback);
  v50 = v48;
  v51 = v69;
  outlined copy of Data._Representation(v70, v69);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v52, v53))
  {

    v59 = v70;
    outlined consume of Data._Representation(v70, v51);
LABEL_53:
    outlined consume of Data._Representation(v59, v51);

    __swift_destroy_boxed_opaque_existential_0Tm_2(v75);
    (*(v11 + 8))(v9, v71);
    goto LABEL_54;
  }

  v72 = v52;
  LODWORD(v66) = v53;
  v67 = v50;
  v54 = swift_slowAlloc();
  result = swift_slowAlloc();
  *v54 = 134218242;
  v55 = v51 >> 62;
  v56 = result;
  if ((v51 >> 62) > 1)
  {
    v57 = v70;
    if (v55 != 2)
    {
      v58 = 0;
      goto LABEL_52;
    }

    v61 = v70[2];
    v60 = v70[3];
    v33 = __OFSUB__(v60, v61);
    v58 = v60 - v61;
    if (!v33)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
    v57 = v70;
    if (!v55)
    {
      v58 = BYTE6(v69);
LABEL_52:
      *(v54 + 4) = v58;
      v70 = v57;
      v51 = v69;
      outlined consume of Data._Representation(v57, v69);
      *(v54 + 12) = 2112;
      v50 = v67;
      v62 = v68;
      *(v54 + 14) = v67;
      *v56 = v62;
      v63 = v50;
      _os_log_impl(&dword_20AEA4000, v72, v66, "Decoded media suggestion of size (%ld): %@", v54, 0x16u);
      _sypSgWOhTm_1(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v56, -1, -1);
      MEMORY[0x20F2E9420](v54, -1, -1);

      v59 = v70;
      goto LABEL_53;
    }
  }

  LODWORD(v58) = HIDWORD(v57) - v57;
  if (!__OFSUB__(HIDWORD(v57), v57))
  {
    v58 = v58;
    goto LABEL_52;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t MediaPlaybackConfigurationItem.debugDescription.getter()
{
  v1 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    _StringGuts.grow(_:)(104);
    MEMORY[0x20F2E6D80](0xD000000000000030, 0x800000020B45C210);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
    swift_beginAccess();
    if (*(v1 + v5))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    v7 = 0xE400000000000000;
    if (*(v1 + v5))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v6, v8);

    MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45C250);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v1 + v9))
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (*(v1 + v9))
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v10, v11);

    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C290);
    v12 = [v4 title];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v15;
    }

    else
    {
      v14 = 1701736302;
    }

    MEMORY[0x20F2E6D80](v14, v7);

    MEMORY[0x20F2E6D80](0x206D6F726620, 0xE600000000000000);
    v22 = [v4 bundleID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    MEMORY[0x20F2E6D80](v23, v25);
  }

  else
  {
    _StringGuts.grow(_:)(99);
    MEMORY[0x20F2E6D80](0xD000000000000030, 0x800000020B45C210);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
    swift_beginAccess();
    if (*(v1 + v16))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + v16))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v17, v18);

    MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45C250);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v1 + v19))
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (*(v1 + v19))
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v20, v21);

    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45C270);
  }

  return 0;
}

id MediaPlaybackConfigurationItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaPlaybackConfigurationItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlaybackConfigurationItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MediaPlaybackConfigurationItem@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MediaPlaybackConfigurationItem());
  result = MediaPlaybackConfigurationItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

unint64_t specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static MediaPlaybackConfigurationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  v5 = *(a1 + v4);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (v5 != *(a2 + v6))
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  v8 = *(a1 + v7);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v8 != *(a2 + v9))
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (v12)
  {
    v13 = [v12 bundleID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v14;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if (!v16)
  {
    if (!v38)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v17 = v11;
  v18 = v15;
  v19 = [v16 bundleID];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!v38)
  {
    v15 = v18;
    v11 = v17;
    if (v22)
    {
LABEL_26:
      v10 = 0;
      goto LABEL_34;
    }

LABEL_18:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(a1 + v11);
    if (v24 && (v25 = [v24 title]) != 0)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(a2 + v15);
    if (v30 && (v31 = [v30 title]) != 0)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (!v29)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v33 = 0;
      v35 = 0;
      if (!v29)
      {
LABEL_25:
        if (!v35)
        {
          v10 = 1;
          return v10 & 1;
        }

        goto LABEL_26;
      }
    }

    if (v35)
    {
      if (v27 == v33 && v29 == v35)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_34;
  }

  if (!v22)
  {
LABEL_14:
    v10 = 0;
LABEL_34:

    return v10 & 1;
  }

  v15 = v18;
  v11 = v17;
  if (v37 == v20 && v38 == v22)
  {

    goto LABEL_18;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

uint64_t type metadata completion function for MediaPlaybackConfigurationItem()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaPlaybackConfigurationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlaybackConfigurationItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MirroredHostMachTimestampRequest.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(a1);
  *a2 = v3;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostMachTimestampRequest.protobuf.getter()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest();
  return static Message.with(_:)();
}

double _s11WorkoutCore32MirroredHostMachTimestampRequestV8protobufAA06Apple_a1_b1_cdefG0VvgyAFzXEfU_TA_0(double *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest);
  }

  return result;
}

uint64_t MirroredHostMachTimestampRequest.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(21);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  _StringGuts.grow(_:)(21);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostMachTimestampRequest@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(a1);
  *a2 = v3;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest();
  return static Message.with(_:)();
}

uint64_t MirroredHostMachTimestampRequest.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2E8020](*&v1);
}

Swift::Int MirroredHostMachTimestampRequest.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x20F2E8020](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x20F2E8020](*&v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2E8020](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x20F2E8020](*&v2);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostMachTimestampRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostMachTimestampRequest(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MirroredHostMachTimestampRequest(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset;

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t WorkoutBuddyDisplayStateHandler.determineState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.determineState(), v1, 0);
}

{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 64) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.determineState(), v6, 0);
}

uint64_t WorkoutBuddyDisplayStateHandler.determineState()()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  if (v2 == 2)
  {
    if (*(v1 + 115))
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

LABEL_9:
    **(v0 + 16) = v3;
    v4 = *(v0 + 8);

    return v4();
  }

  if ((v2 & 1) == 0)
  {
    v3 = 5;
    goto LABEL_9;
  }

  if (*(v1 + 115))
  {
    v3 = 4;
    goto LABEL_9;
  }

  if (*(v1 + 113))
  {
    v3 = 0;
    goto LABEL_9;
  }

  v6 = *(v1 + 114);
  if (v6 != 2 && (v6 & 1) == 0)
  {
    v3 = 3;
    goto LABEL_9;
  }

  v7 = *(v1 + 160);
  *(v0 + 32) = v7;
  v8 = *(v1 + 168);
  __swift_project_boxed_opaque_existential_1((v1 + 136), v7);
  v9 = *(v7 - 8);
  v10 = v9;
  *(v0 + 40) = v9;
  v11 = *(v9 + 64) + 15;
  *(v0 + 48) = swift_task_alloc();
  (*(v10 + 16))();
  v12 = *(v8 + 8);
  v15 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = WorkoutBuddyDisplayStateHandler.determineState();

  return v15(v7, v8);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  if (v1 == 1)
  {
    v3 = 2;
  }

  else
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 64));
    v3 = 3;
  }

  **(v0 + 16) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:);

  return WorkoutBuddyDisplayStateHandler.determineState()(v2 + 40);
}

uint64_t WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:), v2, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 116);
  if (v2 == 6)
  {
    v4 = v3 == 6;
  }

  else
  {
    v4 = v2 == v3;
  }

  v5 = !v4;
  if ((v5 | *(v0 + 41)))
  {
    *(v1 + 116) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(v0 + 24);
      v9 = *(*(v0 + 16) + 117);
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      *(v12 + 16) = v11;
      *(v12 + 24) = v13;
      *(v12 + 32) = v2;
      *(v12 + 33) = (v9 & 1) == 0;
      *(v12 + 40) = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:), v12);
      swift_unknownObjectRelease();
    }
  }

  v14 = *(v0 + 24);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t WorkoutBuddyDisplayStateHandler.__deallocating_deinit()
{
  outlined destroy of weak WorkoutBuddyDisplayStateHandlerDelegate?(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 33);
  v7 = *(v1 + 40);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:);

  return closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(a1, v4, v5, v8, v6, v7);
}

uint64_t partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices18SnippetEnvironmentVSgMd, &_s18AppIntentsServices18SnippetEnvironmentVSgMR) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for AppIntentPerformOptions();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0A19IntentSuccessResultVySSGMd, &_s18AppIntentsServices0A19IntentSuccessResultVySSGMR);
  v4[17] = v10;
  v11 = *(v10 - 8);
  v4[18] = v11;
  v12 = *(v11 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:), 0, 0);
}

uint64_t MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Starting music siri representation ID playback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  v0[2] = v6;
  v0[3] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices15IntentParameterCySSGMd, &_s18AppIntentsServices15IntentParameterCySSGMR);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = IntentParameter.init(wrappedValue:)();
  v0[22] = v10;
  v0[4] = 1769105779;
  v0[5] = 0xE400000000000000;
  v11 = *(v7 + 48);
  v12 = *(v7 + 52);
  swift_allocObject();
  v13 = IntentParameter.init(wrappedValue:)();
  v0[23] = v13;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = v0[16];
  v16 = v0[12];
  v15 = v0[13];
  v17 = v0[10];
  v0[24] = static WorkoutSignposter.shared;
  WorkoutSignposter.emit(signpost:)(13);
  ObjectType = swift_getObjectType();
  v0[6] = v10;
  v0[7] = v13;
  v19 = type metadata accessor for UTType();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = type metadata accessor for SnippetEnvironment();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
  v21 = type metadata accessor for DefaultPerformAppIntentDelegate();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = DefaultPerformAppIntentDelegate.init()();
  v0[25] = v24;
  v25 = *(MEMORY[0x277CEB000] + 4);
  v26 = swift_task_alloc();
  v0[26] = v26;
  lazy protocol witness table accessor for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation();
  *v26 = v0;
  v26[1] = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  v27 = v0[16];
  v29 = v0[10];
  v28 = v0[11];
  v30 = MEMORY[0x277CEAFA0];
  v31 = v0[20];

  return MEMORY[0x28213DAA0](v31, v0 + 6, v27, v24, v30, ObjectType, &unk_28224B5F0, v28);
}

{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  }

  else
  {
    v7 = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v36 = v0;
  v1 = v0[24];
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  WorkoutSignposter.emit(signpost:)(14);
  (*(v5 + 16))(v4, v3, v6);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[18];
  if (v9)
  {
    v34 = v0[22];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>();
    v33 = v13;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    log = v7;
    v21 = *(v15 + 8);
    v21(v12, v14);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v35);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_20AEA4000, log, v8, "Response = %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_3(v17);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);

    v23 = v33;
  }

  else
  {
    v24 = v0[22];

    v21 = *(v15 + 8);
    v21(v12, v14);
    v23 = v13;
  }

  v21(v23, v14);
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[16];
  v29 = v0[12];
  v28 = v0[13];

  v30 = v0[1];

  return v30();
}

{
  v1 = v0[27];
  v2 = v0[21];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to perform Music AppIntent, error: %@", v10, 0xCu);
    outlined destroy of NSObject?(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
    v14 = v0[22];
  }

  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[16];
  v19 = v0[12];
  v18 = v0[13];

  v20 = v0[1];

  return v20();
}

unint64_t lazy protocol witness table accessor for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation()
{
  result = lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation;
  if (!lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>()
{
  result = lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>;
  if (!lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18AppIntentsServices0A19IntentSuccessResultVySSGMd, &_s18AppIntentsServices0A19IntentSuccessResultVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>);
  }

  return result;
}

uint64_t specialized MusicSiriRepresentationAppIntentDispatcher.init()()
{
  v0 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMd, &_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for IntentsServices.DispatcherOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultEnvironment];
  v16[3] = type metadata accessor for LNEnvironment();
  v16[4] = MEMORY[0x277CEB188];
  v16[0] = v12;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CEB068], v0);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v13 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_0Tm_3(v16);
  return v13;
}

unint64_t type metadata accessor for LNEnvironment()
{
  result = lazy cache variable for type metadata for LNEnvironment;
  if (!lazy cache variable for type metadata for LNEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnvironment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartPlaybackAppIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for StartPlaybackAppIntentRepresentation(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Playlist();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist();
    v4 = v0[5];

    return WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)(v4, v2);
  }

  else
  {
    lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
    swift_allocError();
    swift_willThrow();
    v6 = v0[5];

    v7 = v0[1];

    return v7();
  }
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[9] = v4;
    *v4 = v3;
    v4[1] = WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist();
    v5 = v3[5];

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v5);
  }
}

{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = objc_allocWithZone(MEMORY[0x277D27FB8]);
  v7 = v1;
  v8 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  v9 = [v6 initWithIntent:v7 bundleID:v8 suggestionSource:0];

  (*(v5 + 8))(v2, v4);

  v10 = v0[1];

  return v10(v9);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Failed to create MSSuggestion for legacy workout playlist", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[6];

  swift_willThrow();
  v7 = v0[8];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
}

uint64_t WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMd, &_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMR);
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMd, &_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMR);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.fetchLibraryPlaylist(with:), 0, 0);
}

uint64_t WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[5];
  v0[16] = type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  KeyPath = swift_getKeyPath();
  v5 = [v3 stringValue];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[2] = MEMORY[0x20F2E6920](v6, v8);
  v0[3] = v9;
  MEMORY[0x20F2E68E0](KeyPath, v0 + 2, v2, MEMORY[0x277CD7E80]);

  v10 = *(MEMORY[0x277CD7CF0] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[11];

  return MEMORY[0x282124698](v14, v13);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;

  if (v0)
  {

    v3 = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  }

  else
  {
    v3 = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  MusicLibraryResponse.items.getter();
  (*(v5 + 8))(v2, v4);
  specialized Collection.first.getter(v3);
  (*(v7 + 8))(v6, v8);
  v9 = *(v1 - 8);
  if ((*(v9 + 48))(v3, 1, v1) == 1)
  {
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    v13 = v0[11];
    v14 = v0[8];
    outlined destroy of Playlist?(v0[12]);
    lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
    swift_allocError();
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v16 = v0[16];
    v18 = v0[11];
    v17 = v0[12];
    v19 = v0[8];
    v20 = v0[4];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v9 + 32))(v20, v17, v16);
  }

  v15 = v0[1];

  return v15();
}

{
  (*(*(v0[16] - 8) + 56))(v0[12], 1, 1);
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  outlined destroy of Playlist?(v0[12]);
  lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
  swift_allocError();
  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t WorkoutPlaylistMigration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of Playlist?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError()
{
  result = lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlaylistMigrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlaylistMigrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for WorkoutPlaylistMigrationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutPlaylistMigrationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SessionSensorDisconnectAnalyticsEvent.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SessionSensorDisconnectAnalyticsEvent.workoutIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionSensorDisconnectAnalyticsEvent() + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SessionSensorDisconnectAnalyticsEvent()
{
  result = type metadata singleton initialization cache for SessionSensorDisconnectAnalyticsEvent;
  if (!type metadata singleton initialization cache for SessionSensorDisconnectAnalyticsEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionSensorDisconnectAnalyticsEvent.init(devices:workoutIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = 0xD00000000000002CLL;
  *(a3 + 1) = 0x800000020B45C500;
  *(a3 + 2) = a1;
  v5 = *(type metadata accessor for SessionSensorDisconnectAnalyticsEvent() + 24);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

char *SessionSensorDisconnectAnalyticsEvent.generatePayload()()
{
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v4 = v0 + *(type metadata accessor for SessionSensorDisconnectAnalyticsEvent() + 24);
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v8 = 0x277CCA000uLL;
  v9 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v10 = MEMORY[0x20F2E6C00](v5, v7);

  v11 = [v9 initWithString_];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v3;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0xD000000000000012, 0x800000020B45C530, isUniquelyReferenced_nonNull_native);
  v13 = 0;
  v14 = 0;
  v15 = *(v1 + 16);
  v16 = *(v15 + 16);
LABEL_2:
  v17 = (v15 + 104 + 80 * v13);
  while (1)
  {
    if (v16 == v13)
    {
      v34 = v2;

      specialized MutableCollection<>.sort(by:)(&v34);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v25 = BidirectionalCollection<>.joined(separator:)();
      v27 = v26;

      v28 = objc_allocWithZone(*(v8 + 3240));
      v29 = MEMORY[0x20F2E6C00](v25, v27);

      v30 = [v28 initWithString_];

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v3;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, 0x7954726F736E6573, 0xEA00000000006570, v31);
      return v34;
    }

    if (v13 >= *(v15 + 16))
    {
      break;
    }

    v18 = v17 + 10;
    ++v13;
    v19 = *v17;
    v17 += 10;
    if (v19)
    {
      v33 = v14;
      v20 = *(v18 - 11);

      v21 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v23 = *(v2 + 2);
      v22 = *(v2 + 3);
      if (v23 >= v22 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v2);
      }

      *(v2 + 2) = v23 + 1;
      v24 = &v2[16 * v23];
      *(v24 + 4) = v20;
      *(v24 + 5) = v19;
      v8 = 0x277CCA000;
      v3 = v21;
      v14 = v33;
      goto LABEL_2;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t protocol witness for CoreAnalyticsEvent.eventName.getter in conformance SessionSensorDisconnectAnalyticsEvent()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  if (a3 != a2)
  {
    v4 = 0x5F676E696C6C6F72;
    v28 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_6:
    v26 = v5;
    v27 = a3;
    v7 = *(v28 + a3);
    v25 = v6;
    while (1)
    {
      if (v7 > 3u)
      {
        if (v7 > 5u)
        {
          if (v7 == 6)
          {
            v11 = 0x5F65676172657661;
            v12 = 0xED00007265776F70;
          }

          else
          {
            v12 = 0xE400000000000000;
            v11 = 1701736302;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v11 = 0x5F65676172657661;
          }

          else
          {
            v11 = 0xD000000000000013;
          }

          if (v7 == 4)
          {
            v12 = 0xEF65636E65646163;
          }

          else
          {
            v12 = 0x800000020B4544E0;
          }
        }
      }

      else
      {
        v8 = 0xD000000000000015;
        if (v7 == 2)
        {
          v8 = 0xD000000000000012;
          v9 = 0x800000020B454490;
        }

        else
        {
          v9 = 0x800000020B4544B0;
        }

        if (v7)
        {
          v10 = 0x5F65676172657661;
        }

        else
        {
          v10 = 0x5F676E696C6C6F72;
        }

        if (v7 <= 1u)
        {
          v11 = v10;
        }

        else
        {
          v11 = v8;
        }

        if (v7 <= 1u)
        {
          v12 = 0xEC00000065636170;
        }

        else
        {
          v12 = v9;
        }
      }

      v13 = *(v5 - 1);
      v14 = 1701736302;
      if (v13 == 6)
      {
        v14 = 0x5F65676172657661;
      }

      v15 = 0xED00007265776F70;
      if (v13 != 6)
      {
        v15 = 0xE400000000000000;
      }

      if (v13 == 4)
      {
        v16 = 0x5F65676172657661;
      }

      else
      {
        v16 = 0xD000000000000013;
      }

      v17 = 0xEF65636E65646163;
      if (v13 != 4)
      {
        v17 = 0x800000020B4544E0;
      }

      if (*(v5 - 1) <= 5u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0xD000000000000015;
      if (v13 == 2)
      {
        v18 = 0xD000000000000012;
        v19 = 0x800000020B454490;
      }

      else
      {
        v19 = 0x800000020B4544B0;
      }

      if (*(v5 - 1))
      {
        v4 = 0x5F65676172657661;
      }

      if (*(v5 - 1) <= 1u)
      {
        v18 = v4;
        v19 = 0xEC00000065636170;
      }

      if (*(v5 - 1) <= 3u)
      {
        v20 = v18;
      }

      else
      {
        v20 = v14;
      }

      if (*(v5 - 1) <= 3u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v15;
      }

      if (v11 == v20 && v12 == v21)
      {

        v4 = 0x5F676E696C6C6F72;
LABEL_5:
        a3 = v27 + 1;
        v5 = v26 + 1;
        v6 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = 0x5F676E696C6C6F72;
      if ((v22 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v7 = *v5;
      *v5 = *(v5 - 1);
      *--v5 = v7;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata completion function for SessionSensorDisconnectAnalyticsEvent()
{
  type metadata accessor for [WorkoutDevice]();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [WorkoutDevice]()
{
  if (!lazy cache variable for type metadata for [WorkoutDevice])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [WorkoutDevice]);
    }
  }
}

uint64_t Apple_Workout_Core_LiveZone.zone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Apple_Workout_Core_Zone();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Zone(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_LiveZones.zones.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_LiveZones.currentZoneIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_LiveZones.currentZoneIndex.modify;
}

uint64_t Apple_Workout_Core_LiveZones.currentZoneIndex.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_LiveZones.clearCurrentZoneIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Apple_Workout_Core_LiveZones.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LiveZones.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_LiveZones.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = a1 + *(v2 + 24);
  result = UnknownStorage.init()();
  v5 = a1 + *(v2 + 28);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_LiveZone.zone : Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Apple_Workout_Core_Zone();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Zone(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v11 = a2 + *(v9 + 32);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_LiveZone.zone : Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Zone(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(a2 + v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Zone(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_LiveZone.zone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(v1 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Zone(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Workout_Core_LiveZone.zone.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_Zone();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Zone?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    v17 = v14 + *(v9 + 32);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Zone?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Zone(v8, v14);
  }

  return Apple_Workout_Core_LiveZone.zone.modify;
}

void Apple_Workout_Core_LiveZone.zone.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_Zone((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_Zone?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Zone(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_Zone(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Zone?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Zone(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Zone(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_Zone();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_LiveZone.hasZone.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Apple_Workout_Core_Zone();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Zone?(v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_LiveZone.clearZone()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  outlined destroy of Apple_Workout_Core_Zone?(v0 + v1, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Zone();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_LiveZone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LiveZone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_LiveZone.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_Zone();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Workout_Core_LiveZones.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          v3 = *(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
        case 1:
          type metadata accessor for Apple_Workout_Core_LiveZone(0);
          lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_LiveZones.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Workout_Core_LiveZone(0), lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_Core_LiveZones.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      if (v0[8] == 1)
      {
        dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
      }

      v3 = &v0[*(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 24)];
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LiveZones.traverse<A>(visitor:)(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LiveZones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  v4 = a2 + *(a1 + 24);
  result = UnknownStorage.init()();
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LiveZones@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LiveZones;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LiveZones(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LiveZones()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_LiveZones._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_LiveZone.decodeMessage<A>(decoder:)()
{
  v0 = *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 24);
  type metadata accessor for Apple_Workout_Core_Zone();
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_LiveZone.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    result = closure #1 in Apple_Workout_Core_LiveZone.traverse<A>(visitor:)(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Apple_Workout_Core_LiveZone(0) + 20);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LiveZone.traverse<A>(visitor:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Apple_Workout_Core_Zone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Zone?(v5, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Zone(v5, v10);
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_Zone(v10);
}

Swift::Int Apple_Workout_Core_LiveZones.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Workout_Core_Zone();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LiveZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LiveZone;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_LiveZones@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LiveZone(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_LiveZones()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LiveZone()
{
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone, type metadata accessor for Apple_Workout_Core_LiveZone);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_LiveZones()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_LiveZone.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v18 = *(v17 + 24);
  v19 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_Zone?(a1 + v18, v16);
  outlined init with copy of Apple_Workout_Core_Zone?(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
LABEL_10:
      v23 = *(v17 + 20);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_Core_Zone?(v16, v12);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_Zone(v12);
LABEL_7:
    outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Apple_Workout_Core_Zone(&v16[v19], v8);
  v22 = static Apple_Workout_Core_Zone.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_Zone(v8);
  outlined destroy of Apple_Workout_Core_Zone(v12);
  outlined destroy of Apple_Workout_Core_Zone?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v22)
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized static Apple_Workout_Core_LiveZones.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C9_LiveZoneV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v11 = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LiveZone and conformance Apple_Workout_Core_LiveZone(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for Apple_Workout_Core_LiveZones()
{
  type metadata accessor for [Apple_Workout_Core_LiveZone](319, &lazy cache variable for type metadata for [Apple_Workout_Core_LiveZone], type metadata accessor for Apple_Workout_Core_LiveZone, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Int32?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Int32?()
{
  if (!lazy cache variable for type metadata for Int32?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Int32?);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_LiveZone()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_LiveZone](319, &lazy cache variable for type metadata for Apple_Workout_Core_Zone?, type metadata accessor for Apple_Workout_Core_Zone, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_LiveZone](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined destroy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ActivityTypeListItem.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746144726564726FLL;
  }

  else
  {
    v4 = 0x7974697669746361;
  }

  if (v3)
  {
    v5 = 0xEC00000065707954;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x746144726564726FLL;
  }

  else
  {
    v6 = 0x7974697669746361;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xEC00000065707954;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityTypeListItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ActivityTypeListItem.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityTypeListItem.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityTypeListItem.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityTypeListItem.CodingKeys.init(rawValue:), *a1);

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

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7974697669746361;
  if (*v1)
  {
    v2 = 0x746144726564726FLL;
  }

  v3 = 0xEC00000065707954;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ActivityTypeListItem.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ActivityTypeListItem.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ActivityTypeListItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityTypeListItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore20ActivityTypeListItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ActivityTypeListItem.CodingKeys and conformance ActivityTypeListItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType);
  specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v11, &v22);

  v12 = type metadata accessor for JSONEncoder();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v20 = v22;
  v21[0] = v23[0];
  *(v21 + 9) = *(v23 + 9);
  lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
  v15 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v17 = v16;

  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    return outlined destroy of FIUIWorkoutActivityType.ActivityType(&v22);
  }

  else
  {
    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v22);
    *&v20 = v15;
    *(&v20 + 1) = v17;
    v19[15] = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v20, *(&v20 + 1));
    LOBYTE(v20) = 1;
    type metadata accessor for Date();
    _s10Foundation4DateVACSeAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v6 + 8))(v9, v5);
  }
}

id ActivityTypeListItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityTypeListItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ActivityTypeListItem()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id specialized ActivityTypeListItem.init(activityType:orderDate:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_activityType] = a1;
  _s10Foundation4DateVSgWOcTm_2(a2, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    v15 = a1;
    static Date.now.getter();
    if (v14(v8, 1, v9) != 1)
    {
      _s10Foundation4DateVSgWOhTm_4(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = a1;
  }

  (*(v10 + 32))(&v2[OBJC_IVAR____TtC11WorkoutCore20ActivityTypeListItem_orderDate], v13, v9);
  v17 = type metadata accessor for ActivityTypeListItem();
  v20.receiver = v2;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  _s10Foundation4DateVSgWOhTm_4(a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v18;
}

uint64_t _s10Foundation4DateVSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation4DateVSgWOcTm_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperature.getter()
{
  return WaterTemperatureMetricsPublisher.currentWaterTemperature.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for WaterTemperatureMetricsPublisher.currentWaterTemperature : WaterTemperatureMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperature.setter()
{
  return WaterTemperatureMetricsPublisher.currentWaterTemperature.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WaterTemperatureMetricsPublisher.currentWaterTemperature.modify;
}

uint64_t (*WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify;
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.currentWaterTemperatureStale : WaterTemperatureMetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.currentWaterTemperatureStale : WaterTemperatureMetricsPublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WaterTemperatureMetricsPublisher.currentWaterTemperatureStale.modify;
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale : WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$currentWaterTemperatureStale.modify;
}

uint64_t (*WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return WaterTemperatureMetricsPublisher.averageWaterTemperature.modify;
}

void WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperature.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WaterTemperatureMetricsPublisher.$currentWaterTemperature : WaterTemperatureMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WaterTemperatureMetricsPublisher.$currentWaterTemperature : WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t WaterTemperatureMetricsPublisher.$currentWaterTemperature.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*WaterTemperatureMetricsPublisher.$averageWaterTemperature.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WaterTemperatureMetricsPublisher.$averageWaterTemperature.modify;
}

void WaterTemperatureMetricsPublisher.$currentWaterTemperature.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t WaterTemperatureMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  WaterTemperatureMetricsPublisher.init()();
  return v3;
}

uint64_t WaterTemperatureMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v16 = 0;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  Published.init(initialValue:)();
  v12 = *(v7 + 32);
  v12(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  LOBYTE(v16) = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v13, v5, v1);
  v14 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature;
  v16 = 0;
  v17 = 1;
  Published.init(initialValue:)();
  v12(v0 + v14, v10, v6);
  return v0;
}

uint64_t WaterTemperatureMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature, v2);
  return v0;
}

uint64_t WaterTemperatureMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperature;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__currentWaterTemperatureStale;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore32WaterTemperatureMetricsPublisher__averageWaterTemperature, v2);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WaterTemperatureMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WaterTemperatureMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v3);
  return v4;
}

uint64_t WaterTemperatureMetricsPublisher.protobuf.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v3 = &a1[v2[5]];
  UnknownStorage.init()();
  v4 = &a1[v2[6]];
  *v4 = 0;
  v4[8] = 1;
  v5 = &a1[v2[7]];
  *v5 = 0;
  v5[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v8 & 1) == 0)
  {
    *v4 = v7;
    v4[8] = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v8 & 1) == 0)
  {
    *v5 = v7;
    v5[8] = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)()
{
  v1 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v2 = &v0[*(v1 + 24)];
  v3 = *v2;
  v4 = v2[8];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  LOBYTE(v3) = *v0;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v5 = &v0[*(v1 + 28)];
  v6 = *v5;
  v7 = v5[8];
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WaterTemperatureMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WaterTemperatureMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  WaterTemperatureMetricsPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v4);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static WaterTemperatureMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WaterTemperatureMetricsPublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  WaterTemperatureMetricsPublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_WaterTemperatureMetricsPublisher(v10);
  }

  return v14;
}

uint64_t type metadata accessor for WaterTemperatureMetricsPublisher()
{
  result = type metadata singleton initialization cache for WaterTemperatureMetricsPublisher;
  if (!type metadata singleton initialization cache for WaterTemperatureMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WaterTemperatureMetricsPublisher()
{
  type metadata accessor for Published<Double?>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<Bool>();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<Double?>()
{
  if (!lazy cache variable for type metadata for Published<Double?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSdSgMd, &_sSdSgMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double?>);
    }
  }
}

Swift::Void __swiftcall MetricsPublisher.activityRingsUpdated(with:)(HKActivitySummary with)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_activitySummaryMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = with.super.isa;
  static Published.subscript.setter();
  if ([(objc_class *)v4 _wheelchairUse]<= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.activitySummary : ActivitySummaryMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.activitySummary : ActivitySummaryMetricsPublisher(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for ActivitySummaryMetricsPublisher.isWheelchairUser : ActivitySummaryMetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for ActivitySummaryMetricsPublisher.isWheelchairUser : ActivitySummaryMetricsPublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Void __swiftcall MetricsPublisher.setRoutePoints(_:)(Swift::OpaquePointer a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v13 = *&v1[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher];
    v14 = specialized _arrayForceCast<A, B>(_:)(a1._rawValue);
    type metadata accessor for RaceElevationChartPointProvider();
    swift_allocObject();
    v15 = *(RaceElevationChartPointProvider.init(_:numberOfPoints:)(v14, 0, 1) + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v15;

    static Published.subscript.setter();
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_10(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v21 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    v16[2]._rawValue = v1;
    v16[3]._rawValue = a1._rawValue;
    aBlock[4] = partial apply for closure #1 in MetricsPublisher.setRoutePoints(_:);
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_26;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v21;
    MEMORY[0x20F2E7580](0, v12, v7, v17);
    _Block_release(v17);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }
}

uint64_t closure #1 in MetricsPublisher.setRoutePoints(_:)(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_raceInformationPublisher);
  v3 = specialized _arrayForceCast<A, B>(_:)(a2);
  type metadata accessor for RaceElevationChartPointProvider();
  swift_allocObject();
  v4 = *(RaceElevationChartPointProvider.init(_:numberOfPoints:)(v3, 0, 1) + 16);

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id MetricsPublisher.didUpdate(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  v4 = [a1 state];
  if (v4 > 2)
  {
    if ((v4 - 4) >= 2)
    {
      if (v4 == 3)
      {
        v5 = 1;
        v6 = 2;
        goto LABEL_11;
      }

      if (v4 == 6)
      {
        v5 = 1;
        v6 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v5 = 1;
    v6 = 3;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = 1;
      v6 = 1;
LABEL_11:
      v7 = v6;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v7 = v11;
  [a1 currentDistance_m];
  v5 = 0;
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v7;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v5 & 1) == 0)
  {
    [a1 currentDistance_m];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    [a1 referenceDistance_m];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    [a1 timeAhead_s];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  result = [a1 state];
  if (result != 3)
  {
    if (result == 1)
    {
      [a1 timeAhead_s];
      [a1 currentDistance_m];
    }

    v9 = [a1 state];
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 == 6)
        {
          v10 = 6;
          goto LABEL_30;
        }

        goto LABEL_25;
      }

      v10 = 4;
    }

    else
    {
      if (v9 != 1)
      {
        if (v9 == 2)
        {
          v10 = 3;
          goto LABEL_30;
        }

LABEL_25:
        v10 = 5;
        goto LABEL_30;
      }

      [a1 timeAhead_s];
      v13 = v12;
      [a1 currentDistance_m];
      if (v13 >= 0.0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v10 != v14)
    {
      if ([a1 state] == 1)
      {
        [a1 timeAhead_s];
        [a1 currentDistance_m];
      }

      swift_getKeyPath();
      swift_getKeyPath();

      return static Published.subscript.setter();
    }
  }

  return result;
}

Swift::Void __swiftcall MetricsPublisher.setDidWinRace(_:)(Swift::Bool a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t MetricsPublisher.updateRemainingDistance(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t @objc MetricsPublisher.updateRemainingDistance(_:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_racePositionStatePublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutDevice.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WorkoutDevice.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WorkoutDevice.systemImage.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t WorkoutDevice.productModel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutDevice@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WorkoutDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[9];
  v17 = v0[8];
  _StringGuts.grow(_:)(67);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C770);
  v9 = 0xE500000000000000;
  v10 = 0x6863746177;
  v11 = 0x800000020B45C790;
  v12 = 0x656E6F6870;
  if (v5 == 2)
  {
    v12 = 0xD000000000000010;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v5)
  {
    v10 = 0xD000000000000016;
    v9 = 0x800000020B45C7B0;
  }

  if (v5 <= 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v5 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  MEMORY[0x20F2E6D80](v13, v14);

  MEMORY[0x20F2E6D80](0x3D656D616E20, 0xE600000000000000);
  MEMORY[0x20F2E6D80](v3, v4);
  MEMORY[0x20F2E6D80](1029990688, 0xE400000000000000);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0x496D657473797320, 0xED00003D6567616DLL);
  MEMORY[0x20F2E6D80](v6, v7);
  MEMORY[0x20F2E6D80](0x746375646F727020, 0xEE003D6C65646F4DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v15 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v15);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return 0;
}

uint64_t specialized static WorkoutDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v18 = *(a1 + 72);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  v15 = *(a2 + 64);
  v16 = *(a1 + 64);
  v17 = *(a2 + 72);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v12 & 1) == 0 || v4 != v9)
    {
      return result;
    }
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v20 != v19)
    {
      return 0;
    }

LABEL_16:
    if (v18)
    {
      if (!v17 || (v16 != v15 || v18 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v17)
    {
      return 0;
    }

    return 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v14 & 1) != 0 && ((v20 ^ v19) & 1) == 0)
  {
    goto LABEL_16;
  }

  return result;
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

uint64_t getEnumTagSinglePayload for WorkoutDevice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for WorkoutDevice(uint64_t result, int a2, int a3)
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

uint64_t MetricsPublisher.didBeginNewStep(date:stepIndex:stepCount:)(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = *(v3 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, a1, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v13, v11);

  static Published.subscript.setter();
  outlined destroy of Date?(v13);
  if (a2)
  {
    v17 = [a2 integerValue];
  }

  else
  {
    v17 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v17;
  v20 = a2 == 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v19 = a3;

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.didRecover(lastStartDate:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a1, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v9, v7);

  static Published.subscript.setter();
  return outlined destroy of Date?(v9);
}

uint64_t MetricsPublisher.didUpdateIntervalData(thisStep:updateData:nextStep:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v29 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  v9 = *(a2 + 48);
  v8 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = v11;
  v31 = v12;

  static Published.subscript.setter();
  v32 = &type metadata for WorkoutFeatures;
  v33 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v30) = 3;
  v14 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v30);
  if (v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v10;

    static Published.subscript.setter();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v30;
  v16 = [v30 goalTypeIdentifier];

  if (v16 > 1)
  {
    if (v16 == 3)
    {
      goto LABEL_15;
    }

    if (v16 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23 = v30;
      v24 = [v30 value];

      if (v24)
      {
        v25 = [objc_opt_self() secondUnit];
        [v24 doubleValueForUnit_];
        v27 = v26;

        if (v27 > 0.0)
        {
          v22 = v29 / v27;
          goto LABEL_14;
        }
      }

LABEL_15:
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (!v16)
    {
      goto LABEL_15;
    }

    if (v16 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v17 = v30;
      v18 = [v30 value];

      if (v18)
      {
        v19 = [objc_opt_self() meterUnit];
        [v18 doubleValueForUnit_];
        v21 = v20;

        if (v21 > 0.0)
        {
          v22 = v3 / v21;
LABEL_14:
          swift_getKeyPath();
          swift_getKeyPath();
          v30 = *&v22;
LABEL_16:

          return static Published.subscript.setter();
        }
      }

      goto LABEL_15;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Void __swiftcall MetricsPublisher.didFinishIntervals(totalTime:)(Swift::Double totalTime)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_intervalsMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

double key path getter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for IntervalsMetricsPublisher.intervalProgress : IntervalsMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for IntervalsMetricsPublisher.intervalThisStep : IntervalsMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalStartDate : IntervalsMetricsPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalStartDate : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  outlined init with copy of Date?(a1, &v13 - v9);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v8);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return key path getter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for IntervalsMetricsPublisher.intervalCurrentStepIndex : IntervalsMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for IntervalsMetricsPublisher.intervalTotalStepCount : IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for IntervalsMetricsPublisher.intervalTotalStepCount : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.updateTimerRemainingTime(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t @objc MetricsPublisher.updateTimerRemainingTime(_:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

double key path getter for MetricsPublisher.timerRemainingTime : MetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for MetricsPublisher.timerRemainingTime : MetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for MetricsPublisher.timerRemainingTime : MetricsPublisher(uint64_t *a1, void **a2)
{
  return key path setter for MetricsPublisher.timerRemainingTime : MetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

void MetricsPublisher.didEnterNewLeg(_:date:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.multisport);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_20AEA4000, v14, v15, "Publisher has noticed that we have entered into the next leg", v16, 2u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v17 = *(v3 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  outlined init with copy of Date?(a2, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v12, v10);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_5(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v33) = 0;

  static Published.subscript.setter();
  v18 = *(a1 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v19 = LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v19;

  static Published.subscript.setter();
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v21 = v20;
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v21;

  static Published.subscript.setter();
  v22 = *(v18 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v25 = v22;
    if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v33 = 0;

      static Published.subscript.setter();
LABEL_14:

      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v33;
      if ((v33 & 0xC000000000000001) == 0)
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v26 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v33 + 8 * v26 + 32);
LABEL_13:
          v28 = v27;

          v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
          swift_beginAccess();
          v30 = *&v28[v29];

          swift_getKeyPath();
          swift_getKeyPath();
          v32 = v30;

          v31 = v30;
          static Published.subscript.setter();

          goto LABEL_14;
        }

        __break(1u);
        return;
      }
    }

    v27 = MEMORY[0x20F2E7A20](v26, v24);
    goto LABEL_13;
  }
}

uint64_t MetricsPublisher.didRestoreActivityType(_:startDate:autoTransitionStartDate:autoTransitionUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a2, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v11, v9);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_5(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  v16 = *(a1 + v15);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v22) = v16;

  static Published.subscript.setter();
  v17 = *(a1 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v18 = LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v18;

  static Published.subscript.setter();
  LiveWorkoutConfiguration.remainingMultisportLegCount.getter();
  v20 = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v20;

  return static Published.subscript.setter();
}

uint64_t MetricsPublisher.didEnterManualTransition(date:)(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - v7;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.multisport);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Publisher has noticed that we have entered into manual transition", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = 2;

  static Published.subscript.setter();
  v21 = *(v9 + 16);
  v22 = v26;
  v21(v15, v26, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v21(v13, v15, v8);

  static Published.subscript.setter();
  (*(v9 + 8))(v15, v8);
  v23 = v25;
  v21(v25, v22, v8);
  (*(v9 + 56))(v23, 0, 1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v23, v27);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_5(v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

Swift::Void __swiftcall MetricsPublisher.didCancelAutomaticTransition()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t MetricsPublisher.didUpdateLastLegValues(_:)(void *a1)
{
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.multisport);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218496;
    v9 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes];
    v10 = *(v9 + 16);
    v11 = 0;
    v12 = 0;
    if (v10)
    {
      v12 = *(v9 + 8 * v10 + 24);
    }

    *(v7 + 4) = v12;
    *(v7 + 12) = 2048;
    MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
    *(v8 + 14) = v13;
    *(v8 + 22) = 2048;
    v14 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces];
    v15 = *(v14 + 16);
    if (v15)
    {
      v11 = *(v14 + 8 * v15 + 24);
    }

    *(v8 + 24) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Publisher setting last values to T: %f D: %f P: %f", v8, 0x20u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  v17 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes];
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 8 * v18 + 24);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v20 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v20 + 8 * v21 + 24);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for LiveWorkoutConfiguration.currentMultiSportLeg : LiveWorkoutConfiguration(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t key path getter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  return key path getter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher(void **a1, uint64_t *a2)
{
  return key path setter for MultisportMetricsPublisher.currentMultisportActivity : MultisportMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

double key path getter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for MultisportMetricsPublisher.lastMultisportLegTime : MultisportMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for MultisportMetricsPublisher.multisportTransitionState : MultisportMetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for MultisportMetricsPublisher.multisportTransitionState : MultisportMetricsPublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path setter for MultisportMetricsPublisher.multisportRemainingLegCount : MultisportMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t specialized MetricsPublisher.enterAutomaticTransition(suggestedConfig:date:)(_BYTE *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-v9];
  v11 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_multisportMetricsPublisher);
  swift_getKeyPath();
  swift_getKeyPath();
  v14[15] = 1;

  static Published.subscript.setter();
  v12 = *(v4 + 16);
  v12(v10, a1, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v8, v10, v3);

  static Published.subscript.setter();
  return (*(v4 + 8))(v10, v3);
}

uint64_t _s10Foundation4DateVSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id ManagedConfigurationSourcePickerItem.__allocating_init(provider:viewModel:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ManagedConfigurationSourcePickerItem.init(provider:viewModel:)(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = a1;
  *&v2[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ManagedConfigurationSourcePickerItem();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ManagedConfigurationSourcePickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedConfigurationSourcePickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfigurationSourcePickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedConfigurationSourcePickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel);
  v5 = type metadata accessor for ManagedConfigurationSourcePickerItem();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = v3;
  *&v6[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = v4;
  v8.receiver = v6;
  v8.super_class = v5;

  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v5;
  *a1 = result;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance ManagedConfigurationSourcePickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int ManagedConfigurationSourcePickerItem.hash.getter()
{
  Hasher.init()();
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  String.hash(into:)();

  v4 = *(v0 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel);
  ManagedConfigurationsViewModel.hash(into:)(v6);
  return Hasher.finalize()();
}

BOOL ManagedConfigurationSourcePickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v10);
  if (!v11)
  {
    outlined destroy of Any?(v10);
    return 0;
  }

  type metadata accessor for ManagedConfigurationSourcePickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider);
  v3 = *&v9[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider];
  swift_beginAccess();
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_beginAccess();
  v6 = v4 == *(v3 + 32) && v5 == *(v3 + 40);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    return 0;
  }

  v7 = specialized static ManagedConfigurationsViewModel.== infix(_:_:)(*(v1 + OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel), *&v9[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel]);

  return v7;
}

unint64_t instantiation function for generic protocol witness table for ManagedConfigurationSourcePickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem()
{
  result = lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem;
  if (!lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem);
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t CompletedWorkoutStep.distanceGoalAchievedDuration.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

id CompletedWorkoutStep.init(distance:duration:step:moveMode:distanceGoalAchievedDuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v14 = objc_opt_self();
  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  result = [v14 fiui:*&a1[v15] supportedMetricsForActivityType:a2 activityMoveMode:?];
  if (result)
  {
    v17 = result;
    type metadata accessor for NSNumber();
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v25 = a1;
      v26 = a5;
      v27 = a3;
      v28 = a4;
      if (!i)
      {
        break;
      }

      v20 = 0;
      a4 = v18 & 0xF8;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x20F2E7A20](v20, v18);
        }

        else
        {
          if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v21 = *(v18 + 8 * v20 + 32);
        }

        v22 = v21;
        a3 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v23 = [v21 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
        }

        a5 = *(a1 + 2);
        v24 = *(a1 + 3);
        if (a5 >= v24 >> 1)
        {
          a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), a5 + 1, 1, a1);
        }

        *(a1 + 2) = a5 + 1;
        *&a1[8 * a5 + 32] = v23;
        ++v20;
        if (a3 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    a1 = MEMORY[0x277D84F90];
LABEL_18:

    *v26 = a6;
    *(v26 + 8) = a7;
    *(v26 + 16) = v25;
    *(v26 + 24) = a1;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CompletedWorkoutStep.metricTypeToDisplay.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  if ((*(v1 + 16) & 0xFE) == 2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = [v10 value];

  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = (v2 + 32);
  while (v4)
  {
    v6 = *v5++;
    --v4;
    if (v6 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v7 = [v10 goalTypeIdentifier];

      if (v7 != 1)
      {
        return 1;
      }

      break;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = [v10 goalTypeIdentifier];

  if (v8 == 2)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

id CompletedWorkoutStep.spokenString(formattingManager:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v5 = CompletedWorkoutStep.metricTypeToDisplay.getter();
  if (v6)
  {
    return 0;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      result = [a1 stringWithDuration:6 durationFormat:v4];
      if (!result)
      {
        return result;
      }

LABEL_9:
      v10 = result;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v11;
    }

    return 0;
  }

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v9 = *(v12 + v8);
  result = [a1 localizedNaturalScaleStringWithDistanceInMeters:FIUIDistanceTypeForActivityType() distanceType:3 unitStyle:0 usedUnit:v3];
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

id CompletedWorkoutStep.displayString(formattingManager:)(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v5 = CompletedWorkoutStep.metricTypeToDisplay.getter();
  if (v6)
  {
    return 0;
  }

  if (v5 != 1)
  {
    if (v5 == 3)
    {
      return specialized static ElapsedTimeFormatter.stringFromElapsedTime(_:trimDoubleLeadingZero:compactHours:)(0, 0, v4);
    }

    return 0;
  }

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v9 = *(v12 + v8);
  result = [a1 localizedNaturalScaleStringWithDistanceInMeters:FIUIDistanceTypeForActivityType() distanceType:2 unitStyle:0 usedUnit:v3];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

uint64_t CompletedWorkoutStep.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = WorkoutStep.description.getter();
  _StringGuts.grow(_:)(44);
  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C920);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45C940);
  Double.write<A>(to:)();

  MEMORY[0x20F2E6D80](0, 0xE000000000000000);

  return v4;
}

uint64_t getEnumTagSinglePayload for CompletedWorkoutStep(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for CompletedWorkoutStep(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in MusicMomentHandler.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[39] = v7;
  v8 = *(v7 - 8);
  v4[40] = v8;
  v9 = *(v8 + 64) + 15;
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), a4, 0);
}

uint64_t closure #1 in MusicMomentHandler.setDelegate(_:)()
{
  v1 = objc_opt_self();
  v0[42] = v1;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[43] = v3;
  v0[25] = v3;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[21] = &block_descriptor_27;
  v0[22] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), v1, 0);
}

{
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[34];
  v4 = *(v2 + 160);
  *(v2 + 160) = v3;
  v5 = v3;
  MusicMomentHandler.observedRoute.didset(v4);

  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277CD5648];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v0[44] = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type MusicMomentHandler and conformance MusicMomentHandler, v8, type metadata accessor for MusicMomentHandler);
  v9 = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, 255, MEMORY[0x277CC9D68]);
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  v0[45] = v11;
  *v11 = v0;
  v11[1] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v12 = v0[41];
  v13 = v0[38];
  v14 = v0[39];

  return MEMORY[0x282200308](v13, v14, v9);
}

{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v2;

  v6 = *(v3 + 352);
  v7 = *(v3 + 296);
  swift_getObjectType();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v10 = closure #1 in MusicMomentHandler.setDelegate(_:);
  }

  else
  {
    v10 = closure #1 in MusicMomentHandler.setDelegate(_:);
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

{
  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), *(v0 + 296), 0);
}

{
  v1 = v0[38];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[42];
    v6 = v0[43];
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = closure #1 in MusicMomentHandler.setDelegate(_:);
    v7 = swift_continuation_init();
    v0[33] = v6;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
    v0[29] = &block_descriptor_27_0;
    v0[30] = v7;
    [v5 getProactiveRouteWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }
}

{
  *(v0 + 280) = *(v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in MusicMomentHandler.setDelegate(_:), v1, 0);
}

{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = *(v2 + 160);
  *(v2 + 160) = v3;
  v5 = v3;
  MusicMomentHandler.observedRoute.didset(v4);

  outlined destroy of (String, MPPropertySet)(v1, &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v6 = lazy protocol witness table accessor for type MusicMomentHandler and conformance MusicMomentHandler(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, 255, MEMORY[0x277CC9D68]);
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v0[45] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MusicMomentHandler.setDelegate(_:);
  v9 = v0[41];
  v10 = v0[38];
  v11 = v0[39];

  return MEMORY[0x282200308](v10, v11, v6);
}

Swift::Void __swiftcall MusicMomentHandler.stopActiveTasks()()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);

    MEMORY[0x20F2E7170](v2, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

    v3 = *(v0 + 152);
  }

  *(v0 + 152) = 0;

  v4 = *(v0 + 160);
  v5 = v4;
  *(v0 + 160) = 0;
  MusicMomentHandler.observedRoute.didset(v4);
}

void MusicMomentHandler.observedRoute.didset(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 160);
  if (v4)
  {
    if (a1)
    {
      type metadata accessor for MPPropertySet(0, &lazy cache variable for type metadata for MPAVRoute, 0x277CD5D38);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.workoutVoice);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = *(v2 + 160);
    *(v11 + 4) = v13;
    *v12 = v13;
    v14 = v13;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[MusicMomentHandler] Updated observed route: %@", v11, 0xCu);
    outlined destroy of (String, MPPropertySet)(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v15 = *(v2 + 160);
  if (v15)
  {
    v16 = *(v2 + 168);
    oslog = v15;
    v17 = [v16 request];
    v18 = [objc_opt_self() pathWithRoute:oslog bundleID:0 playerID:0];
    [v17 setPlayerPath_];

    [v16 setNeedsReloadForSignificantRequestChange];

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = [v16 request];
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&dword_20AEA4000, v19, v20, "[MusicMomentHandler] Updated MPCPlayerRequest: %@", v21, 0xCu);
      outlined destroy of (String, MPPropertySet)(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    if (!a1)
    {
      [v16 setDelegate_];
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20AEA4000, v24, v25, "[MusicMomentHandler] Beginning automatic player response loading", v26, 2u);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }

      [v16 beginAutomaticResponseLoading];
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    [*(v2 + 168) endAutomaticResponseLoading];
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v27, "[MusicMomentHandler] Ended automatic player response loading", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }
  }
}

id closure #1 in closure #1 in variable initialization expression of MusicMomentHandler.controller()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
  type metadata accessor for MusicMomentHandler();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18MusicMomentHandlerCmMd, &_s11WorkoutCore18MusicMomentHandlerCmMR);
  v2 = String.init<A>(describing:)();
  v3 = MEMORY[0x20F2E6C00](v2);

  v40 = v1;
  [v1 setLabel_];

  [v1 setQualityOfService_];
  v4 = objc_opt_self();
  v39 = [v4 emptyPropertySet];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v6 = *MEMORY[0x277CD5BB0];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20B423A20;
  v9 = *MEMORY[0x277CD5B60];
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v10;
  v11 = *MEMORY[0x277CD5B38];
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v12;
  v13 = *MEMORY[0x277CD5B08];
  *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 72) = v14;
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_20B4282E0;
  v16 = *MEMORY[0x277CD5C08];
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423A90;
  v19 = *MEMORY[0x277CD5980];
  *(v18 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v18 + 40) = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v4 propertySetWithProperties_];

  *(v15 + 48) = v22;
  v23 = *MEMORY[0x277CD5C18];
  *(v15 + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 64) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20B423A90;
  v26 = *MEMORY[0x277CD5990];
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v27;
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v4 propertySetWithProperties_];

  *(v15 + 72) = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(v15);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, &_sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for MPPropertySet(0, &lazy cache variable for type metadata for MPPropertySet, 0x277CD6018);
  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  *(inited + 48) = v33;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, MPPropertySet)(inited + 32, &_sSS_So13MPPropertySetCtMd, &_sSS_So13MPPropertySetCtMR);
  v34 = objc_allocWithZone(MEMORY[0x277CD6018]);
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v34 initWithProperties:0 relationships:v35];

  v37 = [v39 propertySetByCombiningWithPropertySet_];
  [v40 setPlayingItemProperties_];

  return v40;
}

uint64_t closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:);

  return MusicMomentHandler.handle(replaceResponse:)(a5, a6);
}

uint64_t closure #1 in MusicMomentHandler.controller(_:defersResponseReplacement:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MusicMomentHandler.handle(replaceResponse:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v2, 0);
}

uint64_t MusicMomentHandler.handle(replaceResponse:)()
{
  v69 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  (*(v0 + 32))();
  v3 = [*(v1 + 168) response];
  *(v0 + 56) = v3;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 64) = __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 138412802;
    *(v8 + 4) = v5;
    *v9 = v3;
    *(v8 + 12) = 2112;
    if (v5)
    {
      v11 = v5;
      v12 = [v11 tracklist];
      v13 = [v12 playingItem];

      *(v8 + 14) = v13;
      v10[1] = v13;
      *(v8 + 22) = 2112;
      v14 = [v11 tracklist];
      v15 = [v14 playingItem];

      if (v15)
      {
        v16 = [v15 metadataObject];

        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      *(v8 + 14) = 0;
      v9[1] = 0;
      *(v8 + 22) = 2112;
    }

    *(v8 + 24) = v16;
    v10[2] = v17;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[MusicMomentHandler] Updated MPCPlayerResponse: %@ playingItem: %@ metadataObject: %@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  if (v5)
  {
    v18 = [v5 tracklist];
    v19 = [v18 playingItem];

    v20 = [v19 metadataObject];
    v21 = [v20 song];

    v22 = [v5 state] == 2;
    v23 = [v5 tracklist];
    v24 = [v23 playingItem];

    v25 = v24 == 0;
    if (v24)
    {
      [v24 duration];
      v26 = v68[4];
    }

    else
    {
      v26 = 0;
    }

    v29 = [v5 tracklist];
    v30 = [v29 playingItem];

    if (v30)
    {
      [v30 duration];
      v27 = v68[3];

      v28 = 0;
    }

    else
    {
      v27 = 0;
      v28 = 1;
    }
  }

  else
  {
    v27 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v28 = 1;
    v25 = 1;
  }

  *(v0 + 27) = v22;
  *(v0 + 80) = v26;
  *(v0 + 88) = v21;
  *(v0 + 26) = v25;
  *(v0 + 25) = v28;
  *(v0 + 72) = v27;
  v31 = v21;
  v32 = v5;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68[0] = v36;
    *v35 = 136315394;
    if (v21 && (v37 = [v31 title]) != 0)
    {
      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = v39;
    }

    else
    {
      v41 = 0x800000020B45CA10;
      v42 = 0xD000000000000013;
    }

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, v68);

    *(v35 + 4) = v43;
    *(v35 + 12) = 2080;
    if (v5)
    {
      v44 = [v32 state];
    }

    else
    {
      v44 = 0;
    }

    *(v0 + 16) = v44;
    *(v0 + 24) = v5 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v45 = Optional.description.getter();
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v68);

    *(v35 + 14) = v47;
    _os_log_impl(&dword_20AEA4000, v33, v34, "[MusicMomentHandler] Song: %s, State: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  v48 = *(v0 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v50 = Strong;
    v51 = MusicMomentHandler.handle(replaceResponse:);
LABEL_29:

    return MEMORY[0x2822009F8](v51, v50, 0);
  }

  v52 = *(v0 + 64);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_20AEA4000, v53, v54, "[MusicMomentHandler] Delivered updated workout state", v55, 2u);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

  v56 = *(v0 + 48);

  if (*(v56 + 128) == 1)
  {
    v57 = *(v0 + 48);
    Current = CFAbsoluteTimeGetCurrent();
    *(v0 + 104) = Current;
    v59 = *(v57 + 112);
    *(v0 + 112) = v59;
    *(v57 + 120) = Current - v59;
    *(v56 + 128) = 0;
    v60 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = v60;
    if (v60)
    {
      v50 = v60;
      v51 = MusicMomentHandler.handle(replaceResponse:);
      goto LABEL_29;
    }

    v61 = *(v0 + 64);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_20AEA4000, v62, v63, "[MusicMomentHandler] Delivered initial music info", v64, 2u);
      MEMORY[0x20F2E9420](v64, -1, -1);
    }
  }

  v65 = *(v0 + 88);

  v66 = *(v0 + 8);

  return v66();
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 48);
  WorkoutVoiceMomentCoordinator.updateWorkoutState(withSong:isPlaying:elapsedTime:duration:)(*(v0 + 88), *(v0 + 27), *(v0 + 80), *(v0 + 26), *(v0 + 72), *(v0 + 25));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v2, 0);
}

{
  v1 = *(v0 + 64);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[MusicMomentHandler] Delivered updated workout state", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  if (*(v5 + 128) == 1)
  {
    v6 = *(v0 + 48);
    Current = CFAbsoluteTimeGetCurrent();
    *(v0 + 104) = Current;
    v8 = *(v6 + 112);
    *(v0 + 112) = v8;
    *(v6 + 120) = Current - v8;
    *(v5 + 128) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 120) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), Strong, 0);
    }

    v10 = *(v0 + 64);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[MusicMomentHandler] Delivered initial music info", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }
  }

  v14 = *(v0 + 88);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);
  WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(*(v0 + 104) - *(v0 + 112));
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](MusicMomentHandler.handle(replaceResponse:), v2, 0);
}

{
  v1 = *(v0 + 64);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[MusicMomentHandler] Delivered initial music info", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 8);

  return v6();
}