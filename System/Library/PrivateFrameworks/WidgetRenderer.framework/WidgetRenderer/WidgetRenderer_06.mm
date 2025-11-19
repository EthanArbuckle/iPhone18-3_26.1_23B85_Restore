void sub_1DADFBE74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v48 = &v40 - v2;
  v49 = sub_1DAED12CC();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 connectedScenes];

  v8 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70);
  v9 = sub_1DAED1F6C();

  v51 = v8;
  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_1DAED242C();
    sub_1DAED1F9C();
    v9 = v59;
    v10 = v60;
    v11 = v61;
    v12 = v62;
    v13 = v63;
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(v9 + 32);
    v10 = v9 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v9 + 56);
  }

  v50 = v11;
  v17 = (v11 + 64) >> 6;
  v47 = (v3 + 48);
  v45 = (v3 + 32);
  v44 = (v3 + 8);
  while (1)
  {
    if (v9 < 0)
    {
      v23 = sub_1DAED24BC();
      if (!v23 || (*&v53 = v23, swift_dynamicCast(), v22 = v56[0], v20 = v12, v21 = v13, !v56[0]))
      {
LABEL_40:
        sub_1DAD70B20();
        return;
      }

      goto LABEL_18;
    }

    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_14:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_40;
    }

LABEL_18:
    if ([v22 delegate])
    {
      v52 = v21;
      type metadata accessor for WidgetSceneDelegate();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {

        goto LABEL_38;
      }

      v25 = v24;
      BSDispatchQueueAssertMain();
      v26 = *(v25 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection);
      if (!v26)
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      v27 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      v13 = v52;
      if (v27 && (v28 = *(v27 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator)) != 0)
      {
        v29 = v28 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
        swift_beginAccess();
        if (*(v29 + 24))
        {
          sub_1DAD648F8(v29, &v53);
          if (*(&v54 + 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v31 = *v29;
          v32 = *(v29 + 16);
          v55 = *(v29 + 32);
          v53 = v31;
          v54 = v32;
          if (*(&v32 + 1))
          {
LABEL_25:
            sub_1DAD657D8(&v53, v56);
            v30 = v28[6];
            *(&v42 + 1) = v28[5];
            v41 = v30;
            __swift_project_boxed_opaque_existential_1(v28 + 2, *(&v42 + 1));
            *&v42 = *(v30 + 8);
            v43 = v28;

            (v42)(&v53, *(&v42 + 1), v41);
            if (v55)
            {
            }

            else
            {
              v42 = v54;
              v34 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
              v35 = v43;
              swift_beginAccess();
              v36 = v35 + v34;
              v37 = v48;
              sub_1DAD6495C(v36, v48, &qword_1ECC08850, &qword_1DAED7280);
              v38 = v49;
              if ((*v47)(v37, 1, v49) == 1)
              {

                sub_1DAD64398(v37, &qword_1ECC08850, &qword_1DAED7280);
              }

              else
              {
                v39 = v46;
                (*v45)(v46, v37, v38);
                v41 = v58;
                __swift_project_boxed_opaque_existential_1(v56, v57);
                sub_1DAED117C();
                v41 = v58;
                __swift_project_boxed_opaque_existential_1(v56, v57);
                sub_1DAED118C();
                v41 = v58;
                __swift_project_boxed_opaque_existential_1(v56, v57);
                sub_1DAED116C();
                *&v42 = v58;
                __swift_project_boxed_opaque_existential_1(v56, v57);
                sub_1DAED119C();

                (*v44)(v39, v49);
              }
            }

            v33 = v56;
            goto LABEL_37;
          }
        }

        if (*(&v54 + 1))
        {
          v33 = &v53;
LABEL_37:
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
        }

LABEL_38:
        swift_unknownObjectRelease();
LABEL_39:
        v12 = v20;
        v13 = v52;
      }

      else
      {
        swift_unknownObjectRelease();

        v12 = v20;
      }
    }

    else
    {

      v12 = v20;
      v13 = v21;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_40;
    }

    v19 = *(v10 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_1DADFC580()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_17Tm()
{
  v1 = sub_1DAED18CC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1DADFCB1C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_1DAED18CC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1DADFCBBC()
{
  result = qword_1EE005418;
  if (!qword_1EE005418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005418);
  }

  return result;
}

uint64_t sub_1DADFCC28(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
  if (v10)
  {
    if (v10 == a1)
    {
      return result;
    }

    v11 = result;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
    sub_1DAECEF0C();
    swift_endAccess();

    swift_allocObject();
    swift_weakInit();
    sub_1DAD64B94(&qword_1ECC08938, &qword_1ECC08928, &qword_1DAED73A0);
    v12 = sub_1DAECF00C();

    (*(v5 + 8))(v9, v11);
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v12 = 0;
  }

  v13 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription) = v12;
}

uint64_t sub_1DADFCE10(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *(result + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
    *(result + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters) = v1;

    v5 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
    swift_beginAccess();
    v6 = *(v3 + v5);
    *(v3 + v5) = v1;
    v7 = v1;

    (*(*v3 + 448))();
  }

  return result;
}

void sub_1DADFCEF0()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata))
  {
    v2 = v0;
    v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher);
    sub_1DAECEEBC();
    v4 = *(v2 + v1);
    *(v2 + v1) = 0;
  }
}

uint64_t WatchComplicationsLiveWidgetViewModel.__allocating_init(widgetViewModel:metrics:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return WatchComplicationsLiveWidgetViewModel.init(widgetViewModel:metrics:)(a1, a2);
}

uint64_t WatchComplicationsLiveWidgetViewModel.init(widgetViewModel:metrics:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - v8;
  v9 = sub_1DAED0DDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__subscriptions) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata) = 0;
  v14 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher;
  v15 = sub_1DAECEEDC();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v2 + v14) = sub_1DAECEECC();
  v18 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v19 = *(v44 - 8);
  v43 = *(v19 + 56);
  v45 = v19 + 56;
  v43(v3 + v18, 1, 1, v44);
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel) = a1;

  v42 = a2;
  v20 = WatchComplicationsWidgetViewModel.init(metrics:)(v42);
  sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v48);
  v22 = v49;
  v21 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v23 = *(v21 + 16);
  swift_retain_n();
  v24 = v23(v22, v21);
  sub_1DAED0C3C();

  v25 = sub_1DAED0DBC();
  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  v26 = [v25 family];

  v27 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
  v28 = swift_beginAccess();
  *(v20 + v27) = v26;
  sub_1DAEAFEE0(v28);

  v29 = v42;
  [v42 size];
  v31 = v30;
  v33 = v32;
  v34 = (v20 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_contentSize);
  v35 = swift_beginAccess();
  *v34 = v31;
  v34[1] = v33;
  sub_1DAEAFEE0(v35);

  v47 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
  v36 = swift_allocObject();
  swift_weakInit();

  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
  sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  v39 = v46;
  sub_1DAD6495C(a1 + v38, v46, &unk_1ECC07D30, &unk_1DAED57E0);
  v43(v39, 0, 1, v44);
  v40 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  swift_beginAccess();
  sub_1DAE000F0(v39, v20 + v40);
  swift_endAccess();
  sub_1DADFDCDC();

  return v20;
}

uint64_t sub_1DADFD4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(a3 + v10, v7, &unk_1ECC07D30, &unk_1DAED57E0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v12 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
    swift_beginAccess();
    sub_1DAE000F0(v7, v9 + v12);
    swift_endAccess();
    sub_1DADFDCDC();
  }

  return result;
}

void sub_1DADFD638(void (**a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v69 = a1;
  v2 = sub_1DAECEB5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088C0, &qword_1DAED72A8);
  v68 = *(v7 - 8);
  v8 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = (&v56 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088C8, &unk_1DAED72B0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v59 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
  v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  v70 = v24;
  sub_1DAD6495C(v25 + v26, v24, &qword_1ECC07CE8, &qword_1DAED6F60);
  v27 = 0;
  v28 = v68;
  v29 = *v69;
  v56 = v3 + 16;
  v30 = *(v29 + 2);
  v68 += 48;
  v69 = (v28 + 56);
  v58 = v3;
  v65 = (v3 + 8);
  v66 = (v3 + 32);
  v31 = v29;
  v63 = v16;
  v64 = v13;
  v61 = v2;
  v62 = v29;
  for (i = v30; ; v30 = i)
  {
    if (v27 == v30)
    {
      v34 = 1;
      v27 = v30;
      goto LABEL_10;
    }

    if ((v27 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v27 >= *(v31 + 2))
    {
      goto LABEL_21;
    }

    v36 = v57;
    v35 = v58;
    v37 = v31 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v27;
    v38 = *(v7 + 48);
    *v57 = v27;
    (*(v35 + 16))(v36 + v38, v37, v2);
    sub_1DAD7C48C(v36, v13, &qword_1ECC088C0, &qword_1DAED72A8);
    v34 = 0;
    ++v27;
LABEL_10:
    (*v69)(v13, v34, 1, v7);
    sub_1DAD7C48C(v13, v16, &qword_1ECC088C8, &unk_1DAED72B0);
    if ((*v68)(v16, 1, v7) == 1)
    {
      sub_1DAD64398(v70, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }

    (*v66)(v6, &v16[*(v7 + 48)], v2);
    v39 = sub_1DAECEB2C();
    if (v39)
    {
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
        v42 = v59;
        sub_1DAD6495C(v70, v59, &qword_1ECC07CE8, &qword_1DAED6F60);
        v43 = sub_1DAECDCEC();
        v44 = *(v43 - 8);
        LODWORD(v42) = (*(v44 + 48))(v42, 1, v43);
        v45 = v39;
        v46 = 0;
        if (v42 != 1)
        {
          v47 = v59;
          v46 = sub_1DAECDC5C();
          (*(v44 + 8))(v47, v43);
        }

        [v41 setRelativeToDate_];

        v16 = v63;
        v13 = v64;
        v31 = v62;
      }

      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = v48;
        v50 = v60;
        sub_1DAD6495C(v70, v60, &qword_1ECC07CE8, &qword_1DAED6F60);
        v51 = sub_1DAECDCEC();
        v52 = *(v51 - 8);
        LODWORD(v50) = (*(v52 + 48))(v50, 1, v51);
        v53 = v39;
        v54 = 0;
        if (v50 != 1)
        {
          v55 = v60;
          v54 = sub_1DAECDC5C();
          (*(v52 + 8))(v55, v51);
        }

        [v49 setOverrideDate_];

        v16 = v63;
        v13 = v64;
        v31 = v62;
      }

      v32 = sub_1DAECDCEC();
      [v39 setPaused_];
      v2 = v61;
    }

    v33 = sub_1DAECEB3C();

    (*v65)(v6, v2);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1DADFDCDC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v157 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v164 = &v145 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v163 = &v145 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v155 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v145 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = &v145 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v145 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v165 = &v145 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v154 = &v145 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = &v145 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v150 = &v145 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v145 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v148 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v145 - v34;
  v158 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v146 = *(v158 - 8);
  v35 = *(v146 + 64);
  v36 = MEMORY[0x1EEE9AC00](v158);
  v159 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v160 = &v145 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v161 = &v145 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v145 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v145 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E0, &qword_1DAED72D8);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v156 = (&v145 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = MEMORY[0x1EEE9AC00](v52);
  v56 = &v145 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v145 - v57;
  v59 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v59, v44, &qword_1ECC088A8, &qword_1DAED72A0);
  v60 = *(v46 + 48);
  if (v60(v44, 1, v45) == 1)
  {
    v61 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
    v62 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v61 + v62, v49, &unk_1ECC07D30, &unk_1DAED57E0);
    if (v60(v44, 1, v45) != 1)
    {
      sub_1DAD64398(v44, &qword_1ECC088A8, &qword_1DAED72A0);
    }
  }

  else
  {
    sub_1DAD7C48C(v44, v49, &unk_1ECC07D30, &unk_1DAED57E0);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v64 = v58;
  v65 = v56;
  v66 = v163;
  if (EnumCaseMultiPayload)
  {
    v67 = v164;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1DAE00290(v49, v64, type metadata accessor for DefaultWidgetLiveViewEntry);
      v68 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      (*(*(v68 - 8) + 56))(v64, 0, 1, v68);
    }

    else
    {
      v68 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      (*(*(v68 - 8) + 56))(v64, 1, 1, v68);
      sub_1DAD64398(v49, &unk_1ECC07D30, &unk_1DAED57E0);
    }
  }

  else
  {
    sub_1DAE00290(v49, v58, type metadata accessor for DefaultWidgetLiveViewEntry);
    v68 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    (*(*(v68 - 8) + 56))(v58, 0, 1, v68);
    v67 = v164;
  }

  sub_1DAD6495C(v64, v56, &qword_1ECC088E0, &qword_1DAED72D8);
  type metadata accessor for DefaultWidgetLiveViewEntry(0);
  if ((*(*(v68 - 8) + 48))(v56, 1, v68) == 1)
  {
    v69 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
    sub_1DADFCC28(v69);

    v70 = sub_1DAECFF0C();
    v71 = *(*(v70 - 8) + 56);
    v72 = v157;
    v71(v157, 1, 1, v70);
    v73 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAE00160(v72, v1 + v73);
    v74 = swift_endAccess();
    sub_1DAEAFEE0(v74);
    sub_1DAD64398(v72, &unk_1ECC0A680, &unk_1DAED72C0);
    v71(v72, 1, 1, v70);
    v75 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
    swift_beginAccess();
    sub_1DAE00160(v72, v1 + v75);
    v76 = swift_endAccess();
    sub_1DAEAFEE0(v76);
    sub_1DAD64398(v72, &unk_1ECC0A680, &unk_1DAED72C0);
    v77 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
    v78 = swift_beginAccess();
    *(v1 + v77) = 2;
    sub_1DAEAFEE0(v78);
    goto LABEL_40;
  }

  v79 = v156;
  sub_1DAD6495C(v56, v156, &qword_1ECC088E0, &qword_1DAED72D8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v90 = *v79;
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v92 = *(v91 + 64);
    v93 = v161;
    sub_1DAE00290(v79 + *(v91 + 48), v161, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v94 = v79 + v92;
    v95 = v162;
    sub_1DAD7C48C(v94, v162, &qword_1ECC088D8, &qword_1DAED72D0);
    v96 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = v90;
    swift_retain_n();
    sub_1DADFCC28(v96);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v97 = v167;
    [v167 fraction];
    v99 = v98;

    if (v99 <= 0.5)
    {
      v100 = v148;
      sub_1DAD6495C(v95, v148, &qword_1ECC088D8, &qword_1DAED72D0);
      v107 = *(v146 + 48);
      v101 = v158;
      v108 = v107(v100, 1, v158);
      v102 = v160;
      if (v108 == 1)
      {
        sub_1DAE0022C(v93, v160);
        if (v107(v100, 1, v101) != 1)
        {
          sub_1DAD64398(v100, &qword_1ECC088D8, &qword_1DAED72D0);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v100 = v148;
      sub_1DAE0022C(v93, v148);
      v101 = v158;
      (*(v146 + 56))(v100, 0, 1, v158);
      v102 = v160;
    }

    sub_1DAE00290(v100, v102, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
LABEL_24:
    v109 = v102 + *(v101 + 20);
    v110 = v166;
    sub_1DAED194C();
    v111 = v150;
    sub_1DAD6495C(v110, v150, &qword_1ECC088D0, &qword_1DAEDE260);
    v112 = sub_1DAED165C();
    v113 = *(v112 - 8);
    v114 = *(v113 + 48);
    if (v114(v111, 1, v112) == 1)
    {
      sub_1DAD64398(v111, &qword_1ECC088D0, &qword_1DAEDE260);
      v115 = sub_1DAECFF0C();
      v116 = v153;
      (*(*(v115 - 8) + 56))(v153, 1, 1, v115);
    }

    else
    {
      v116 = v153;
      sub_1DAED160C();
      (*(v113 + 8))(v111, v112);
    }

    v121 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAE00160(v116, v1 + v121);
    v122 = swift_endAccess();
    sub_1DAEAFEE0(v122);
    sub_1DAD64398(v116, &unk_1ECC0A680, &unk_1DAED72C0);
    v123 = v152;
    sub_1DAD6495C(v166, v152, &qword_1ECC088D0, &qword_1DAEDE260);
    if (v114(v123, 1, v112) == 1)
    {
      sub_1DAD64398(v123, &qword_1ECC088D0, &qword_1DAEDE260);
      v124 = sub_1DAECFF0C();
      v125 = v155;
      (*(*(v124 - 8) + 56))(v155, 1, 1, v124);
    }

    else
    {
      v125 = v155;
      sub_1DAED15FC();
      (*(v113 + 8))(v123, v112);
    }

    v129 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
    swift_beginAccess();
    sub_1DAE00160(v125, v1 + v129);
    v130 = swift_endAccess();
    sub_1DAEAFEE0(v130);
    sub_1DAD64398(v125, &unk_1ECC0A680, &unk_1DAED72C0);
    v131 = v154;
    sub_1DAD6495C(v166, v154, &qword_1ECC088D0, &qword_1DAEDE260);
    if (v114(v131, 1, v112) == 1)
    {
      sub_1DAD64398(v131, &qword_1ECC088D0, &qword_1DAEDE260);
      v132 = 2;
    }

    else
    {
      v132 = sub_1DAED161C();
      (*(v113 + 8))(v131, v112);
    }

    v133 = v162;
    v134 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
    v135 = swift_beginAccess();
    *(v1 + v134) = v132;
    sub_1DAEAFEE0(v135);

    sub_1DAD64398(v166, &qword_1ECC088D0, &qword_1DAEDE260);
    sub_1DAE001D0(v160);
    sub_1DAD64398(v133, &qword_1ECC088D8, &qword_1DAED72D0);
    v128 = &v169;
    goto LABEL_39;
  }

  v80 = v79;
  v81 = v159;
  sub_1DAE00290(v80, v159, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
  v82 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel) = 0;
  sub_1DADFCC28(v82);

  v83 = v81 + *(v158 + 20);
  v84 = v165;
  sub_1DAED194C();
  v85 = v147;
  sub_1DAD6495C(v84, v147, &qword_1ECC088D0, &qword_1DAEDE260);
  v86 = sub_1DAED165C();
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  if (v88(v85, 1, v86) == 1)
  {
    sub_1DAD64398(v85, &qword_1ECC088D0, &qword_1DAEDE260);
    v89 = sub_1DAECFF0C();
    (*(*(v89 - 8) + 56))(v66, 1, 1, v89);
  }

  else
  {
    sub_1DAED160C();
    (*(v87 + 8))(v85, v86);
  }

  v103 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
  swift_beginAccess();
  sub_1DAE00160(v66, v1 + v103);
  v104 = swift_endAccess();
  sub_1DAEAFEE0(v104);
  sub_1DAD64398(v66, &unk_1ECC0A680, &unk_1DAED72C0);
  v105 = v149;
  sub_1DAD6495C(v165, v149, &qword_1ECC088D0, &qword_1DAEDE260);
  if (v88(v105, 1, v86) == 1)
  {
    sub_1DAD64398(v105, &qword_1ECC088D0, &qword_1DAEDE260);
    v106 = sub_1DAECFF0C();
    (*(*(v106 - 8) + 56))(v67, 1, 1, v106);
  }

  else
  {
    sub_1DAED15FC();
    (*(v87 + 8))(v105, v86);
  }

  v117 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText;
  swift_beginAccess();
  sub_1DAE00160(v67, v1 + v117);
  v118 = swift_endAccess();
  sub_1DAEAFEE0(v118);
  sub_1DAD64398(v67, &unk_1ECC0A680, &unk_1DAED72C0);
  v119 = v151;
  sub_1DAD6495C(v165, v151, &qword_1ECC088D0, &qword_1DAEDE260);
  if (v88(v119, 1, v86) == 1)
  {
    sub_1DAD64398(v119, &qword_1ECC088D0, &qword_1DAEDE260);
    v120 = 2;
  }

  else
  {
    v120 = sub_1DAED161C();
    (*(v87 + 8))(v119, v86);
  }

  v126 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerGaugeSegmented;
  v127 = swift_beginAccess();
  *(v1 + v126) = v120;
  sub_1DAEAFEE0(v127);
  sub_1DAD64398(v165, &qword_1ECC088D0, &qword_1DAEDE260);
  v128 = &v168;
LABEL_39:
  sub_1DAE001D0(*(v128 - 32));
LABEL_40:
  sub_1DAD64398(v65, &qword_1ECC088E0, &qword_1DAED72D8);
  v136 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
  v137 = v136;
  if (!v136)
  {
    v138 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);
    v139 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
    swift_beginAccess();
    v137 = *(v138 + v139);
    v140 = v137;
  }

  v141 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_tintParameters;
  swift_beginAccess();
  v142 = *(v1 + v141);
  *(v1 + v141) = v137;
  v143 = v136;

  sub_1DAEA9F94();
  sub_1DAEA8A68();
  return sub_1DAD64398(v64, &qword_1ECC088E0, &qword_1DAED72D8);
}

uint64_t sub_1DADFF0CC()
{
  v75[7] = *MEMORY[0x1E69E9840];
  v1 = sub_1DAECEBCC();
  v69 = *(v1 - 8);
  v2 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1DAECEBEC();
  v6 = *(v5 - 8);
  v70 = v5;
  v71 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECFF0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = [objc_allocWithZone(MEMORY[0x1E69944E0]) init];
  sub_1DAEA888C(v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 2)
  {
    v25 = sub_1DAECEC4C();
    (*(*(v25 - 8) + 8))(v23, v25);
    v26 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v26, v19, &unk_1ECC0A680, &unk_1DAED72C0);
    if ((*(v10 + 48))(v19, 1, v9))
    {
      sub_1DAD64398(v19, &unk_1ECC0A680, &unk_1DAED72C0);
      v27 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v40 = v68;
      (*(v10 + 16))(v68, v19, v9);
      sub_1DAD64398(v19, &unk_1ECC0A680, &unk_1DAED72C0);
      v27 = sub_1DAEAB598();
      (*(v10 + 8))(v40, v9);
    }

    v36 = v73;
LABEL_13:
    v75[0] = v27;
    sub_1DADFD638(v75);
    v41 = sub_1DADFFAB4(v27);

    if (v41)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v42 = sub_1DAED1E6C();
    }

    else
    {
      v42 = 0;
    }

    [v36 setLabelData_];

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v38 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_family;
    swift_beginAccess();
    v36 = v73;
    if (*(v0 + v38) != 12)
    {
      goto LABEL_17;
    }

    v39 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v39, v16, &unk_1ECC0A680, &unk_1DAED72C0);
    if ((*(v10 + 48))(v16, 1, v9))
    {
      sub_1DAD64398(v16, &unk_1ECC0A680, &unk_1DAED72C0);
      v27 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v53 = v68;
      (*(v10 + 16))(v68, v16, v9);
      sub_1DAD64398(v16, &unk_1ECC0A680, &unk_1DAED72C0);
      v27 = sub_1DAEAB598();
      (*(v10 + 8))(v53, v9);
    }

    goto LABEL_13;
  }

  v29 = v71;
  v28 = v72;
  v30 = v70;
  (*(v71 + 32))(v72, v23, v70);
  sub_1DAEAA1E8(v4);
  v31 = v69;
  v32 = (*(v69 + 88))(v4, v1);
  if (v32 == *MEMORY[0x1E6996050])
  {
    (*(v31 + 96))(v4, v1);
    v33 = *v4;
    v34 = sub_1DAECEBDC();
    v35 = sub_1DADFFAB4(v34);

    v36 = v73;
    if (v35)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v37 = sub_1DAED1E6C();
    }

    else
    {
      v37 = 0;
    }

    [v36 setOuterLabelData_];

    v51 = sub_1DADFFAB4(v33);

    if (v51)
    {
      sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
      v52 = sub_1DAED1E6C();
    }

    else
    {
      v52 = 0;
    }

    v54 = v72;
    [v36 setLabelData_];

    (*(v29 + 8))(v54, v30);
  }

  else
  {
    v36 = v73;
    if (v32 == *MEMORY[0x1E6996048])
    {
      (*(v31 + 96))(v4, v1);
      v45 = *v4;
      v46 = v4[1];
      v47 = v4[2];
      v48 = sub_1DAECEBDC();
      v49 = sub_1DADFFAB4(v48);

      if (v49)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v50 = sub_1DAED1E6C();
      }

      else
      {
        v50 = 0;
      }

      [v36 setOuterLabelData_];

      v55 = objc_opt_self();
      v75[0] = 0;
      v56 = [v55 archivedDataWithRootObject:v45 requiringSecureCoding:1 error:v75];
      v57 = v75[0];
      if (v56)
      {
        v58 = sub_1DAECDC1C();
        v60 = v59;

        v61 = sub_1DAECDC0C();
        sub_1DAD70BB4(v58, v60);
      }

      else
      {
        v62 = v57;
        v63 = sub_1DAECDB1C();

        swift_willThrow();
        v61 = 0;
      }

      [v36 setGaugeProviderData_];

      v64 = sub_1DADFFAB4(v46);

      if (v64)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v65 = sub_1DAED1E6C();
      }

      else
      {
        v65 = 0;
      }

      [v36 setGaugeMinimumLabelData_];

      v66 = sub_1DADFFAB4(v47);

      if (v66)
      {
        sub_1DAD674D4(0, &qword_1ECC08920, 0x1E6994528);
        v67 = sub_1DAED1E6C();
      }

      else
      {
        v67 = 0;
      }

      [v36 setGaugeMaximumLabelData_];

      (*(v71 + 8))(v28, v30);
    }

    else
    {
      (*(v29 + 8))(v28, v30);
      (*(v31 + 8))(v4, v1);
    }
  }

LABEL_17:
  [v36 copy];
  sub_1DAED238C();

  swift_unknownObjectRelease();
  sub_1DAD674D4(0, &qword_1ECC08918, 0x1E6994520);
  swift_dynamicCast();
  result = v74;
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DADFFAB4(uint64_t a1)
{
  v2 = sub_1DAECEB5C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1E69E7CC0];
  v8 = *(a1 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v10 = v3 + 16;
    v9 = v11;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v13 = *(v10 + 56);
    v14 = (v10 - 8);
    v32 = MEMORY[0x1E69E7CC0];
    v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = (v10 - 8);
    v11(v7, v12, v2, v6);
    while (1)
    {
      v16 = sub_1DAECEB4C();
      if (v17 >> 60 == 15)
      {
        (*v14)(v7, v2);
      }

      else
      {
        v18 = v16;
        v19 = v17;
        v20 = objc_allocWithZone(MEMORY[0x1E6994528]);
        v21 = v13;
        v22 = v2;
        v23 = v9;
        v24 = v10;
        v25 = sub_1DAECDC0C();
        v26 = [v20 initWithData_];

        v10 = v24;
        v9 = v23;
        v2 = v22;
        v13 = v21;
        v27 = v19;
        v7 = v33;
        v14 = v34;
        sub_1DADAF698(v18, v27);
        v28 = (*v14)(v7, v2);
        if (v26)
        {
          MEMORY[0x1E127DAD0](v28);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DAED1E9C();
            v14 = v34;
          }

          sub_1DAED1EBC();
          v32 = v35;
        }
      }

      v12 += v13;
      if (!--v8)
      {
        break;
      }

      v9(v7, v12, v2, v15);
    }
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v30 = v32;
  if (v32 >> 62)
  {
    if (sub_1DAED247C())
    {
      return v30;
    }

    goto LABEL_14;
  }

  if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:

    return 0;
  }

  return v30;
}

void sub_1DADFFD68()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__subscriptions);

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription);

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);

  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry, &qword_1ECC088A8, &qword_1DAED72A0);
  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintParameters);
}

uint64_t WatchComplicationsLiveWidgetViewModel.deinit()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel__style, &qword_1ECC088F0, qword_1DAED7330);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_metadata, &unk_1ECC0A680, &unk_1DAED72C0);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerMetadataText, &unk_1ECC0A680, &unk_1DAED72C0);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration, &qword_1ECC088F8, &qword_1DAEDE860);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_widgetViewModel);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__subscriptions);

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__tintedViewModelSubscription);

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_tintedViewModel);

  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__currentViewEntry, &qword_1ECC088A8, &qword_1DAED72A0);

  return v0;
}

uint64_t WatchComplicationsLiveWidgetViewModel.__deallocating_deinit()
{
  WatchComplicationsLiveWidgetViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADFFFF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE00070(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_1DAECEF4C();
}

uint64_t sub_1DAE000F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088A8, &qword_1DAED72A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE00160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE001D0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE0022C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE00290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for WatchComplicationsLiveWidgetViewModel()
{
  result = qword_1ECC08900;
  if (!qword_1ECC08900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE0034C()
{
  sub_1DAE00434();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAE00434()
{
  if (!qword_1ECC08910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC07D30, &unk_1DAED57E0);
    v0 = sub_1DAED233C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC08910);
    }
  }
}

id sub_1DAE006B8(void *a1)
{
  v2 = v1;
  v4 = [a1 _appearState];
  [a1 willMoveToParentViewController_];
  if (v4 == 2)
  {
    [a1 beginAppearanceTransition:0 animated:0];
  }

  result = [a1 view];
  if (result)
  {
    v6 = result;
    [result removeFromSuperview];

    if (v4 == 2)
    {
      [a1 endAppearanceTransition];
    }

    return [a1 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAE007E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1DAE00870()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAD690DC();
  }
}

id sub_1DAE0097C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UserInterfaceStyleSceneComponentProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DAE00A48()
{
  result = qword_1EE00ABA8;
  if (!qword_1EE00ABA8)
  {
    sub_1DAECF0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00ABA8);
  }

  return result;
}

uint64_t sub_1DAE00AA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene);
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__scene) = 0;

  v2 = OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer41_UserInterfaceStyleSceneComponentProvider__environmentSubscriber))
  {

    sub_1DAECEE2C();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
}

void sub_1DAE00B8C(uint64_t a1)
{
  v1 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    sub_1DAD7CAF4();
    sub_1DAED1F9C();
    v1 = v14;
    v2 = v15;
    v3 = v16;
    v4 = v17;
    v5 = v18;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_1DAED24BC() || (sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70), swift_dynamicCast(), (v11 = v13) == 0))
    {
LABEL_21:
      sub_1DAD70B20();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x1E127DAD0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_1DAE00DF8()
{
  result = [objc_opt_self() chs_isWatchFacesWidgetRendererProcess];
  byte_1ECC08A90 = result;
  return result;
}

uint64_t sub_1DAE00E2C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAE00E8C(a1);
  }

  return result;
}

void *sub_1DAE00E8C(void *a1)
{
  v2 = sub_1DAED1F2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v58 = v6;
    v59 = v3;
    v60 = v2;
    v56 = result;
    v8 = objc_opt_self();
    v57 = a1;
    v9 = [v8 sharedApplication];
    v10 = [v9 connectedScenes];

    sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    sub_1DAD7CAF4();
    v11 = sub_1DAED1F6C();

    sub_1DAE00B8C(v11);
    v13 = v12;

    v64 = MEMORY[0x1E69E7CC0];
    if (v13 >> 62)
    {
      goto LABEL_17;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v61; v14; i = v61)
    {
      v16 = 0;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E127E1F0](v16, v13);
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v17 _FBSScene];
        v21 = [v20 settings];

        LOBYTE(v20) = [v21 isForeground];
        if (v20)
        {
          sub_1DAED25CC();
          v22 = v64[2];
          sub_1DAED25FC();
          sub_1DAED260C();
          sub_1DAED25DC();
        }

        else
        {
        }

        ++v16;
        if (v19 == v14)
        {
          v23 = v64;
          i = v61;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v14 = sub_1DAED247C();
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_19:

    if (qword_1EE00AC60 != -1)
    {
LABEL_46:
      swift_once();
    }

    v24 = sub_1DAECEDEC();
    __swift_project_value_buffer(v24, qword_1EE011B88);

    v25 = sub_1DAECEDCC();
    v26 = sub_1DAED203C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v64 = v28;
      *v27 = 136446210;
      v29 = sub_1DAE015F4();
      v31 = sub_1DAD6482C(v29, v30, &v64);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DAD61000, v25, v26, "%{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    swift_beginAccess();
    v32 = 0;
    v33 = i[5];
    v34 = 1 << *(v33 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v33 + 64);
    v37 = (v34 + 63) >> 6;
    v38 = 0.0;
    if (v36)
    {
      while (1)
      {
        v39 = v32;
LABEL_30:
        v40 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v38 = v38 + *(*(v33 + 56) + ((v39 << 9) | (8 * v40)));
        if (!v36)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v39 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v39 >= v37)
      {
        break;
      }

      v36 = *(v33 + 64 + 8 * v39);
      ++v32;
      if (v36)
      {
        v32 = v39;
        goto LABEL_30;
      }
    }

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v24, qword_1EE011748);
    swift_retain_n();
    swift_retain_n();
    v41 = v57;
    v42 = sub_1DAECEDCC();
    v43 = sub_1DAED202C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v63[0] = v45;
      *v44 = 136447234;
      v46 = sub_1DAD8CE78(v56);
      v48 = sub_1DAD6482C(v46, v47, v63);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2050;
      v49 = v23 & 0x4000000000000000;
      if (v23 < 0 || v49)
      {
        v50 = sub_1DAED247C();
      }

      else
      {
        v50 = *(v23 + 16);
      }

      *(v44 + 14) = v50;

      *(v44 + 22) = 2050;
      *(v44 + 24) = i[6];
      *(v44 + 32) = 2050;
      *(v44 + 34) = v38;
      *(v44 + 42) = 2050;
      v51 = i[7];

      *(v44 + 44) = v51;

      _os_log_impl(&dword_1DAD61000, v42, v43, "BUG IN CLIENT OF CHRONO. Please verify your scene lifecyles. %{public}s Foreground scenes exceed area limit: scenes: %{public}ld (area limit=%{public}f, in use=%{public}f) (count limit=%{public}ld)", v44, 0x34u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1E127F100](v45, -1, -1);
      MEMORY[0x1E127F100](v44, -1, -1);
    }

    else
    {

      v49 = v23 & 0x4000000000000000;
    }

    v63[0] = 0x3A746E756F43;
    v63[1] = 0xE600000000000000;
    v52 = v58;
    if (v23 < 0 || v49)
    {
      v53 = sub_1DAED247C();
    }

    else
    {
      v53 = *(v23 + 16);
    }

    sub_1DAED0ABC();
    v62 = v53;
    v54 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v54);

    sub_1DAED0AAC();
    sub_1DAED0A9C();

    return (*(v59 + 8))(v52, v60);
  }

  return result;
}

uint64_t sub_1DAE015F4()
{
  v81 = sub_1DAECDB3C();
  v77[0] = *(v81 - 8);
  v0 = *(v77[0] + 64);
  MEMORY[0x1EEE9AC00]();
  v80 = v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v87 = 10;
  v88 = 0xE100000000000000;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
  sub_1DAD7CAF4();
  v4 = sub_1DAED1F6C();

  v5 = 0;
  sub_1DAE00B8C(v4);
  v7 = v6;
  v78 = 0;

  *&v84 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DAED247C())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v5 = &off_1E85EB000;
    do
    {
      if (v10)
      {
        v11 = MEMORY[0x1E127E1F0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v14 = [v11 _FBSScene];
      v15 = [v14 settings];

      LOBYTE(v14) = [v15 isForeground];
      if (v14)
      {
        sub_1DAED25CC();
        v16 = *(v84 + 16);
        sub_1DAED25FC();
        sub_1DAED260C();
        sub_1DAED25DC();
      }

      else
      {
      }

      ++v9;
    }

    while (v13 != i);
    v17 = 0;
    v5 = v84;
    *&v84 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10)
      {
        v19 = MEMORY[0x1E127E1F0](v17, v7);
      }

      else
      {
        if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v22 = [v19 _FBSScene];
      v23 = [v22 settings];

      LOBYTE(v22) = [v23 isForeground];
      if (v22)
      {
      }

      else
      {
        sub_1DAED25CC();
        v18 = *(v84 + 16);
        sub_1DAED25FC();
        sub_1DAED260C();
        sub_1DAED25DC();
      }

      ++v17;
      if (v21 == i)
      {
        v24 = v5;
        v25 = v84;
        goto LABEL_30;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
LABEL_30:

  *&v84 = 0;
  *(&v84 + 1) = 0xE000000000000000;
  sub_1DAED256C();

  *&v84 = 0xD000000000000013;
  *(&v84 + 1) = 0x80000001DAEE2130;
  if ((v24 & 0x8000000000000000) != 0 || (v24 & 0x4000000000000000) != 0)
  {
    v26 = sub_1DAED247C();
  }

  else
  {
    v26 = *(v24 + 16);
  }

  *&v82[0] = v26;
  v27 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v27);

  MEMORY[0x1E127DA50](670249, 0xE300000000000000);
  if (v26)
  {
    *&v82[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE02204(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      goto LABEL_84;
    }

    v28 = 0;
    v29 = *&v82[0];
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E127E1F0](v28, v24);
      }

      else
      {
        v30 = *(v24 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = sub_1DAD8CE78(v30);
      v34 = v33;

      *&v82[0] = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1DAE02204((v35 > 1), v36 + 1, 1);
        v29 = *&v82[0];
      }

      ++v28;
      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v26 != v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  *&v82[0] = v29;

  v5 = v78;
  sub_1DADF9D80(v82);
  if (!v5)
  {

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
    v77[1] = sub_1DAE02284();
    v78 = v38;
    v39 = sub_1DAED1C8C();
    v41 = v40;

    MEMORY[0x1E127DA50](v39, v41);

    MEMORY[0x1E127DA50](2570, 0xE200000000000000);
    MEMORY[0x1E127DA50](v84, *(&v84 + 1));

    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_1DAED256C();

    *&v84 = 0xD000000000000013;
    *(&v84 + 1) = 0x80000001DAEE2150;
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      v42 = sub_1DAED247C();
    }

    else
    {
      v42 = *(v25 + 16);
    }

    *&v82[0] = v42;
    v43 = sub_1DAED287C();
    MEMORY[0x1E127DA50](v43);

    MEMORY[0x1E127DA50](670249, 0xE300000000000000);
    if (!v42)
    {

      v45 = MEMORY[0x1E69E7CC0];
      goto LABEL_59;
    }

    *&v82[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE02204(0, v42 & ~(v42 >> 63), 0);
    if ((v42 & 0x8000000000000000) == 0)
    {
      v44 = 0;
      v45 = *&v82[0];
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1E127E1F0](v44, v25);
        }

        else
        {
          v46 = *(v25 + 8 * v44 + 32);
        }

        v47 = v46;
        v48 = sub_1DAD8CE78(v46);
        v50 = v49;

        *&v82[0] = v45;
        v52 = *(v45 + 16);
        v51 = *(v45 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1DAE02204((v51 > 1), v52 + 1, 1);
          v45 = *&v82[0];
        }

        ++v44;
        *(v45 + 16) = v52 + 1;
        v53 = v45 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
      }

      while (v42 != v44);

LABEL_59:
      *&v82[0] = v45;

      sub_1DADF9D80(v82);
      v54 = MEMORY[0x1E69E7CC0];

      v55 = sub_1DAED1C8C();
      v57 = v56;

      MEMORY[0x1E127DA50](v55, v57);

      MEMORY[0x1E127DA50](2570, 0xE200000000000000);
      MEMORY[0x1E127DA50](v84, *(&v84 + 1));

      v58 = *(v79 + 24);
      v86 = v54;
      v59 = v58;
      sub_1DAED1FEC();
      sub_1DAD66158(&qword_1EE00BD18, 255, MEMORY[0x1E6968EB0]);
      sub_1DAED234C();
      while (v85)
      {
        sub_1DADDC968(&v84, v82);
        sub_1DAD674D4(0, &qword_1EE005628, 0x1E6994548);
        if ((swift_dynamicCast() & 1) != 0 && v83)
        {
          MEMORY[0x1E127DAD0]();
          if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v60 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1DAED1E9C();
          }

          sub_1DAED1EBC();
          v54 = v86;
        }

        sub_1DAED234C();
      }

      (*(v77[0] + 8))(v80, v81);
      if (v54 >> 62)
      {
        v61 = sub_1DAED247C();
        if (v61)
        {
LABEL_69:
          *&v84 = MEMORY[0x1E69E7CC0];
          sub_1DAE02204(0, v61 & ~(v61 >> 63), 0);
          if ((v61 & 0x8000000000000000) == 0)
          {
            v62 = 0;
            v63 = v84;
            do
            {
              if ((v54 & 0xC000000000000001) != 0)
              {
                v64 = MEMORY[0x1E127E1F0](v62, v54);
              }

              else
              {
                v64 = *(v54 + 8 * v62 + 32);
              }

              v65 = v64;
              v66 = sub_1DAD8CE78(v64);
              v68 = v67;

              *&v84 = v63;
              v70 = *(v63 + 16);
              v69 = *(v63 + 24);
              if (v70 >= v69 >> 1)
              {
                sub_1DAE02204((v69 > 1), v70 + 1, 1);
                v63 = v84;
              }

              ++v62;
              *(v63 + 16) = v70 + 1;
              v71 = v63 + 16 * v70;
              *(v71 + 32) = v66;
              *(v71 + 40) = v68;
            }

            while (v61 != v62);

            goto LABEL_82;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v61 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_69;
        }
      }

      v63 = MEMORY[0x1E69E7CC0];
LABEL_82:
      *&v84 = v63;

      sub_1DADF9D80(&v84);

      v72 = sub_1DAED1C8C();
      v74 = v73;

      *&v84 = 0;
      *(&v84 + 1) = 0xE000000000000000;
      sub_1DAED256C();

      *&v84 = 0xD000000000000023;
      *(&v84 + 1) = 0x80000001DAEE2170;
      *&v82[0] = [*(v79 + 24) count];
      v75 = sub_1DAED287C();
      MEMORY[0x1E127DA50](v75);

      MEMORY[0x1E127DA50](670249, 0xE300000000000000);
      MEMORY[0x1E127DA50](v72, v74);

      MEMORY[0x1E127DA50](2570, 0xE200000000000000);
      MEMORY[0x1E127DA50](v84, *(&v84 + 1));

      return v87;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DAE02128()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);
  sub_1DAD660D8(*(v0 + 64));

  return swift_deallocClassInstance();
}

size_t sub_1DAE021A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1DADF9534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DAE021C4(void *a1, int64_t a2, char a3)
{
  result = sub_1DADF955C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAE021E4(char *a1, int64_t a2, char a3)
{
  result = sub_1DADF96A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DAE02204(char *a1, int64_t a2, char a3)
{
  result = sub_1DADF97B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAE02224(size_t a1, int64_t a2, char a3)
{
  result = sub_1DADF98C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAE02244(size_t a1, int64_t a2, char a3)
{
  result = sub_1DADF9AB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DAE02264(size_t a1, int64_t a2, char a3)
{
  result = sub_1DADF9AD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1DAE02284()
{
  result = qword_1EE00BE10;
  if (!qword_1EE00BE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08768, &qword_1DAEDCB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE10);
  }

  return result;
}

uint64_t sub_1DAE022F0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel();
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel);

  sub_1DAECEE4C();
  sub_1DAECEEBC();

  v5 = *(v3 + 16);
  *(v3 + 16) = v2;

  sub_1DAE023DC(v4);
}

uint64_t sub_1DAE023DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18[-v5];
  result = swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    v8 = (v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v10 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
    v11 = sub_1DAECE55C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);

    v12 = v9;
    v13 = v1;
    sub_1DAEBFFF4(v12, v10, v6);

    sub_1DAE03300(v6);
    v14 = *(v1 + 16);
    v15 = *v8;
    v16 = v8[1];
    v17 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
    swift_beginAccess();
    sub_1DAD6E2C8(v13 + v17, v6);

    sub_1DAEBFFF4(v15, v16, v6);

    sub_1DAE03300(v6);
    return sub_1DAE0308C();
  }

  return result;
}

uint64_t sub_1DAE02570()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1DAE025A8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel();
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel);

  sub_1DAECEE4C();
  sub_1DAECEEBC();

  v5 = *(v1 + 16);
  *(v2 + 16) = a1;

  sub_1DAE023DC(v4);
}

uint64_t type metadata accessor for InProcessWidgetInstanceViewModel()
{
  result = qword_1ECC08AB8;
  if (!qword_1ECC08AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1DAE026E8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + 16);

  return sub_1DAE0277C;
}

void sub_1DAE0277C(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v6 = *(*a1 + 32);
  v7 = *(v6 + 16);
  type metadata accessor for InProcessWidgetInstanceViewModel();
  sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel);

  if (a2)
  {

    sub_1DAECEE4C();
    sub_1DAECEEBC();

    v8 = *(v6 + 16);
    *(v6 + 16) = v4;

    sub_1DAE023DC(v7);

    v9 = *v5;
  }

  else
  {
    sub_1DAECEE4C();
    sub_1DAECEEBC();

    v10 = *(v6 + 16);
    *(v6 + 16) = v4;

    sub_1DAE023DC(v7);
  }

  free(v3);
}

uint64_t sub_1DAE028EC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DAD6E2C8(a1, &v10 - v6);
  v8 = *a2;
  return sub_1DAE029D8(v7);
}

uint64_t sub_1DAE02980@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  return sub_1DAD6E2C8(v1 + v3, a1);
}

uint64_t sub_1DAE029D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  swift_beginAccess();
  sub_1DAD6EA48(a1, v1 + v7);
  swift_endAccess();
  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  v10 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
  sub_1DAD6E2C8(v1 + v7, v6);

  sub_1DAEBFFF4(v9, v10, v6);

  sub_1DAE03300(a1);
  return sub_1DAE03300(v6);
}

void (*sub_1DAE02B0C(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  *(v5 + 56) = v7;
  *(v5 + 64) = v8;
  swift_beginAccess();
  return sub_1DAE02BD8;
}

void sub_1DAE02BD8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[7];
  if ((a2 & 1) == 0)
  {
    v5 = v3[8];
    v6 = v3[6];
    swift_beginAccess();
    v7 = *(v6 + 16);
    v8 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
    v9 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);
    sub_1DAD6E2C8(v6 + v5, v4);

    sub_1DAEBFFF4(v8, v9, v4);

    sub_1DAE03300(v4);
  }

  free(v4);

  free(v3);
}

uint64_t InProcessWidgetInstanceViewModel.__allocating_init(widgetInstance:)(uint64_t a1)
{
  v3 = sub_1DAECDD3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  v12 = sub_1DAECE55C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = (v10 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  sub_1DAECDD2C();
  v14 = sub_1DAECDCFC();
  v16 = v15;
  (*(v4 + 8))(v7, v3);
  *v13 = v14;
  v13[1] = v16;
  *(v10 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver) = 0;
  *(v10 + 16) = a1;

  sub_1DAE0308C();

  return v10;
}

uint64_t InProcessWidgetInstanceViewModel.init(widgetInstance:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility;
  v10 = sub_1DAECE55C();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = (v2 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity);
  sub_1DAECDD2C();
  v12 = sub_1DAECDCFC();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  *v11 = v12;
  v11[1] = v14;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver) = 0;
  *(v2 + 16) = a1;

  sub_1DAE0308C();

  return v2;
}

uint64_t InProcessWidgetInstanceViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver))
  {

    sub_1DAECEE2C();

    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;

  v3 = *(v0 + 16);

  sub_1DAE03300(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel_visibility);
  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__viewModelIdentity + 8);

  v5 = *(v0 + v1);

  return v0;
}

uint64_t InProcessWidgetInstanceViewModel.__deallocating_deinit()
{
  InProcessWidgetInstanceViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE0308C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer32InProcessWidgetInstanceViewModel__widgetInstanceObserver))
  {

    sub_1DAECEE2C();
  }

  swift_beginAccess();
  v3 = *(v0 + 16);
  type metadata accessor for InProcessWidgetInstance();
  sub_1DAE03528(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance);

  sub_1DAECEE4C();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DAE03570;
  *(v5 + 24) = v4;
  sub_1DAECEEDC();
  v6 = sub_1DAECF00C();

  v7 = *(v1 + v2);
  *(v1 + v2) = v6;
}

uint64_t sub_1DAE0320C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for InProcessWidgetInstanceViewModel();
    sub_1DAE03528(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel);
    sub_1DAECEE4C();

    sub_1DAECEEBC();
  }

  return result;
}

uint64_t sub_1DAE032C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InProcessWidgetInstanceViewModel();
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE03300(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAE03370()
{
  sub_1DAD8D568();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DAE03528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE035C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAE0396C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1DAE03724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DAE03864;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1DAE03864()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t InProcessWidgetInstanceView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECDD3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = 0;
  sub_1DAED076C();
  v9 = v17;
  *(a2 + 40) = v16[0];
  *(a2 + 48) = v9;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  sub_1DAECDD2C();
  v10 = sub_1DAECDCFC();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = 0;
  type metadata accessor for InProcessWidgetInstanceViewModel();
  sub_1DAE05F8C(&qword_1ECC08AA0, type metadata accessor for InProcessWidgetInstanceViewModel);

  *a2 = sub_1DAECF21C();
  *(a2 + 8) = v13;
  swift_beginAccess();
  v14 = *(a1 + 16);

  *(a2 + 56) = v14;
  return result;
}

void InProcessWidgetInstanceView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v139 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AD0, &qword_1DAED76A0);
  v3 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v138 = &v106 - v4;
  v5 = sub_1DAECF90C();
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AD8, &qword_1DAED76A8);
  v8 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v110 = &v106 - v9;
  v114 = type metadata accessor for LiveWidgetEntryView();
  v10 = *(*(v114 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v114);
  v140 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v116 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v117 = &v106 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AE0, &qword_1DAED76B0);
  v16 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v106 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AE8, &qword_1DAED76B8);
  v18 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v143 = &v106 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AF0, &qword_1DAED76C0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v120 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v119 = &v106 - v24;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08AF8, &qword_1DAED76C8);
  v25 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v122 = &v106 - v26;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B00, &qword_1DAED76D0);
  v127 = *(v131 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v125 = &v106 - v28;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B08, &qword_1DAED76D8);
  v129 = *(v133 - 8);
  v29 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v126 = &v106 - v30;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B10, &qword_1DAED76E0);
  v31 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v132 = &v106 - v32;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B18, &qword_1DAED76E8);
  v33 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v137 = &v106 - v34;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B20, &qword_1DAED76F0);
  v35 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v136);
  v135 = &v106 - v36;
  v37 = sub_1DAECE4EC();
  v38 = *(v37 - 8);
  v39 = v38[8];
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2[1];
  v148 = *v2;
  v149 = v42;
  v43 = v2[3];
  v150 = v2[2];
  v151 = v43;
  v152 = v2[4];
  v44 = *(&v148 + 1);
  swift_beginAccess();
  v45 = *(v44 + 16);
  v46 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  v47 = v38[2];
  v47(v41, v45 + v46, v37);

  v48 = sub_1DAECE4DC();
  v142 = v38[1];
  v142(v41, v37);
  [v48 _rawEffectiveSize];

  v141 = v44;
  if (!*(*(v44 + 16) + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
  {
    __break(1u);
    goto LABEL_15;
  }

  v113 = v47;
  v47(v41, v45 + v46, v37);

  v49 = sub_1DAECE4BC();
  v50 = v37;
  v142(v41, v37);
  v51 = [v49 family];

  v52 = sub_1DAE9BAB0(v51);

  v53 = v152;
  v112 = v50;
  if (v152)
  {
    v54 = 1;
  }

  else
  {
    if (!*(v45 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
    {
LABEL_16:
      __break(1u);
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v54 = LOBYTE(v144[0]);
  }

  LODWORD(v142) = v52;
  v111 = v45;
  v55 = v140;
  v56 = v141;
  v57 = *(*(v141 + 16) + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
  if (!v57)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v58 = *(&v152 + 1);
  *&v145 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(v55 + 16) = v144[0];
  *&v145 = 0;
  sub_1DAED076C();
  *(v55 + 32) = v144[0];
  *(v55 + 48) = 0;
  *(v55 + 56) = 0;
  v59 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v60 = *(v114 + 36);
  v61 = sub_1DAECEDEC();
  (*(*(v61 - 8) + 16))(v55 + v60, v57 + v59, v61);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE05F8C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
  *v55 = sub_1DAECF21C();
  *(v55 + 8) = v62;
  v114 = v58;
  v63 = v116;
  if (v58)
  {
    sub_1DAD76078(v55, v116);
    sub_1DAE04A14(&v148, v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B58, &qword_1DAEDA160);
    sub_1DAD78E78();
    v64 = sub_1DAED087C();
    sub_1DAE06038(v55);
    v65 = *(v63 + 56);

    *(v63 + 56) = v64;
  }

  else
  {
    sub_1DAE05FD4(v55, v116);
  }

  v66 = v117;
  LODWORD(v140) = v54;
  sub_1DAD76078(v63, v117);
  *(v66 + 48) = v53;
  sub_1DAE06038(v63);
  v67 = *(v56 + 16);
  v68 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  v69 = v118;
  v113(&v118[*(v115 + 52)], v67 + v68, v112);
  sub_1DAE05FD4(v66, v69);
  sub_1DAED091C();
  sub_1DAECF15C();
  v70 = v143;
  sub_1DAD7C48C(v69, v143, &qword_1ECC08AE0, &qword_1DAED76B0);
  v71 = (v70 + *(v121 + 36));
  v72 = v146;
  *v71 = v145;
  v71[1] = v72;
  v71[2] = v147;
  if (v142)
  {
    sub_1DAD6495C(v70, v138, &qword_1ECC08AE8, &qword_1DAED76B8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06094();
    sub_1DAE06120();
    v73 = v120;
    sub_1DAECFB1C();
  }

  else
  {
    (*(v108 + 104))(v107, *MEMORY[0x1E697F3A0], v109);
    v74 = *(v128 + 36);
    v75 = v110;
    sub_1DAECFB4C();
    sub_1DAECFB3C();
    sub_1DAD6495C(v70, v75, &qword_1ECC08AE8, &qword_1DAED76B8);
    sub_1DAD6495C(v75, v138, &qword_1ECC08AD8, &qword_1DAED76A8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06094();
    sub_1DAE06120();
    v73 = v120;
    sub_1DAECFB1C();
    v70 = v143;
    sub_1DAD64398(v75, &qword_1ECC08AD8, &qword_1DAED76A8);
  }

  v76 = v137;
  v77 = v135;
  v78 = v133;
  v79 = v114 == 0;
  sub_1DAD64398(v70, &qword_1ECC08AE8, &qword_1DAED76B8);
  v80 = v119;
  sub_1DAD7C48C(v73, v119, &qword_1ECC08AF0, &qword_1DAED76C0);
  v81 = v80;
  v82 = v122;
  sub_1DAD7C48C(v81, v122, &qword_1ECC08AF0, &qword_1DAED76C0);
  v83 = v124;
  v84 = v82 + *(v124 + 36);
  *v84 = v111;
  *(v84 + 8) = v140;
  *(v84 + 9) = v79;
  v85 = sub_1DAE061D8();

  v86 = v125;
  sub_1DAED054C();
  sub_1DAD64398(v82, &qword_1ECC08AF8, &qword_1DAED76C8);
  v87 = swift_allocObject();
  v88 = v151;
  v87[3] = v150;
  v87[4] = v88;
  v87[5] = v152;
  v89 = v149;
  v87[1] = v148;
  v87[2] = v89;
  sub_1DAE0634C(&v148, v144);
  *&v144[0] = v83;
  *(&v144[0] + 1) = v85;
  swift_getOpaqueTypeConformance2();
  v90 = v126;
  v91 = v131;
  sub_1DAED045C();

  (*(v127 + 8))(v86, v91);
  v92 = swift_allocObject();
  v93 = v151;
  *(v92 + 3) = v150;
  *(v92 + 4) = v93;
  *(v92 + 5) = v152;
  v94 = v149;
  *(v92 + 1) = v148;
  *(v92 + 2) = v94;
  v95 = v132;
  (*(v129 + 32))(v132, v90, v78);
  v96 = (v95 + *(v123 + 36));
  *v96 = sub_1DAE06384;
  v96[1] = v92;
  v96[2] = 0;
  v96[3] = 0;
  v97 = swift_allocObject();
  v98 = v151;
  v97[3] = v150;
  v97[4] = v98;
  v97[5] = v152;
  v99 = v149;
  v97[1] = v148;
  v97[2] = v99;
  sub_1DAD7C48C(v95, v76, &qword_1ECC08B10, &qword_1DAED76E0);
  v100 = (v76 + *(v130 + 36));
  *v100 = 0;
  v100[1] = 0;
  v100[2] = sub_1DAE063B8;
  v100[3] = v97;
  v101 = *(&v151 + 1);
  v102 = swift_allocObject();
  *(v102 + 16) = v101;
  v103 = v148;
  *(v102 + 40) = v149;
  v104 = v151;
  *(v102 + 56) = v150;
  *(v102 + 72) = v104;
  *(v102 + 88) = v152;
  *(v102 + 24) = v103;
  sub_1DAD7C48C(v76, v77, &qword_1ECC08B18, &qword_1DAED76E8);
  v105 = (v77 + *(v136 + 36));
  *v105 = v101;
  v105[1] = sub_1DAE063EC;
  v105[2] = v102;
  sub_1DAD7C48C(v77, v139, &qword_1ECC08B20, &qword_1DAED76F0);
  sub_1DAE0634C(&v148, v144);
  sub_1DAE0634C(&v148, v144);

  sub_1DAE0634C(&v148, v144);
}

uint64_t sub_1DAE04A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECE4EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005DC0 != -1)
  {
    swift_once();
  }

  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, qword_1EE011658);
  sub_1DAE0634C(a1, v30);
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();
  sub_1DAE06858(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v12 = 136446210;
    v13 = *(a1 + 8);
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    (*(v5 + 16))(v8, v14 + v15, v4);
    v16 = sub_1DAECE4BC();
    (*(v5 + 8))(v8, v4);
    v17 = [v16 extensionBundleIdentifier];

    v18 = sub_1DAED1CEC();
    v20 = v19;

    v21 = sub_1DAD6482C(v18, v20, &v28);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1DAD61000, v10, v11, "Invoking background block on LiveWidgetEntryView for %{public}s", v12, 0xCu);
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v12, -1, -1);
  }

  if (*(a1 + 72))
  {
    v26 = *(a1 + 72);
    v27 = 0;
  }

  else
  {
    v26 = sub_1DAED064C();
    v27 = 1;
  }

  result = sub_1DAECFB1C();
  v24 = v29;
  *a2 = v28;
  *(a2 + 8) = v24;
  return result;
}

uint64_t sub_1DAE04D0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE011730);
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DAD61000, v7, v8, "Tap gesture received, firing unspecified launch request.", v9, 2u);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  v10 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = sub_1DAECDBFC();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);

  sub_1DAEBE4E8(v5);

  return sub_1DAD64398(v5, &unk_1ECC09EC0, &qword_1DAED7970);
}

uint64_t sub_1DAE04ED0(uint64_t a1, uint64_t a2, void (*a3)())
{
  v10 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED078C();
  v5 = *(a1 + 8);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  a3();
}

uint64_t sub_1DAE04FAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v8 = *(a3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  if (v6 == 1)
  {
    v9 = *(a3 + 16);
    v11 = *(a3 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
    sub_1DAED077C();
    sub_1DAEBF184(v6, v7);
  }

  v10 = *(a3 + 16);
  v12 = *(a3 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08720, &qword_1DAED6E70);
  sub_1DAED077C();
  sub_1DAEBF8E4(v6, v7);
}

uint64_t InProcessWidgetInstanceView.customBackgroundView<A>(isEnabled:background:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(*(a4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v4[3];
  v18[2] = v4[2];
  v18[3] = v9;
  v18[4] = v4[4];
  v10 = v4[1];
  v18[0] = *v4;
  v18[1] = v10;
  v11 = v4[3];
  v8[2] = v4[2];
  v8[3] = v11;
  v8[4] = v4[4];
  v12 = v4[1];
  *v8 = *v4;
  v8[1] = v12;
  if ((v7 & 1) == 0)
  {
    return sub_1DAE0634C(v18, v17);
  }

  v13 = v8;
  v14 = sub_1DAE0634C(v18, v17);
  a2(v14);
  v15 = sub_1DAED087C();

  *(v13 + 9) = v15;
  return result;
}

uint64_t InProcessWidgetInstanceView.clippedToShape(_:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v11 = v2[2];
  v3 = v11;
  v12 = v4;
  v13 = v2[4];
  v5 = v13;
  v6 = v2[1];
  v10[0] = *v2;
  v7 = v10[0];
  v10[1] = v6;
  a2[3] = v4;
  a2[4] = v5;
  a2[1] = v6;
  a2[2] = v3;
  *a2 = v7;
  *(a2 + 64) = a1;
  return sub_1DAE0634C(v10, &v9);
}

uint64_t sub_1DAE05230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = a3;
  v49 = a1;
  v52 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B88, &qword_1DAED7938);
  v48 = *(v53 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v47 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B90, &qword_1DAED7940);
  v7 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v9 = (&v45 - v8);
  v45 = sub_1DAECE4EC();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B98, &qword_1DAED7948);
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v45 - v16;
  v18 = sub_1DAECE69C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  (*(v19 + 16))(v22, a2 + v23, v18);
  v24 = sub_1DAECE59C();
  (*(v19 + 8))(v22, v18);
  v25 = [v24 renderingMode];

  if (v25 == 1)
  {
    v26 = v50;
    (*(v14 + 16))(v17, v49, v50);
    v27 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948);
    v28 = sub_1DAED087C();
    v29 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    v30 = v45;
    (*(v10 + 16))(v13, a2 + v29, v45);
    v31 = sub_1DAECE4DC();
    (*(v10 + 8))(v13, v30);
    [v31 _rawEffectiveSize];
    v33 = v32;
    v35 = v34;

    *v9 = v28;
    v9[1] = v33;
    v9[2] = v35;
    v9[3] = 0x3FE0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_1DAE06804();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    v54 = v26;
    v55 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = v36;
    v55 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    return sub_1DAECFB1C();
  }

  else
  {
    v39 = v47;
    sub_1DAE05808(v49, a2, v46 & 0x101, v47);
    v40 = v48;
    v41 = v53;
    (*(v48 + 16))(v9, v39, v53);
    swift_storeEnumTagMultiPayload();
    sub_1DAE06804();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    v43 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948);
    v56 = v50;
    v57 = v43;
    v44 = swift_getOpaqueTypeConformance2();
    v56 = v42;
    v57 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1DAECFB1C();
    return (*(v40 + 8))(v39, v41);
  }
}

uint64_t sub_1DAE05808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v69 = a1;
  v76 = a4;
  v5 = sub_1DAECE4EC();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v61 - v12;
  v14 = sub_1DAECE69C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v68 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v67 = &v61 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v61 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BA8, &unk_1DAED7950);
  v70 = *(v71 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v77 = &v61 - v27;
  v28 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v29 = v15[2];
  v29(v25, a2 + v28, v14);
  v62 = sub_1DAECE5AC();
  v30 = v15[1];
  v30(v25, v14);
  v78 = a2;
  v66 = v29;
  v29(v23, a2 + v28, v14);
  v31 = v13;
  sub_1DAECE66C();
  v63 = v30;
  v30(v23, v14);
  v32 = v65;
  if (v65)
  {
    v33 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    v34 = v78;
    swift_beginAccess();
    v35 = v73;
    v36 = *(v73 + 16);
    v37 = v34 + v33;
    v38 = v72;
    v64 = v13;
    v39 = v74;
    v36(v72, v37, v74);
    v40 = sub_1DAECE4DC();
    v31 = v64;
    (*(v35 + 8))(v38, v39);
    [v40 _effectiveCornerRadius];
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08B98, &qword_1DAED7948);
  v42 = sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948);
  v43 = v62;
  v64 = v41;
  v61 = v42;
  sub_1DAED037C();

  sub_1DAD64398(v31, &qword_1ECC08370, &unk_1DAED6580);
  v44 = v78;
  v45 = v67;
  v46 = v66;
  v66(v67, v78 + v28, v14);
  v47 = sub_1DAECE5AC();
  v48 = v63;
  v63(v45, v14);
  v49 = v68;
  v46(v68, v44 + v28, v14);
  v50 = v75;
  sub_1DAECE66C();
  v48(v49, v14);
  if (v32)
  {
    v51 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    v52 = v78;
    swift_beginAccess();
    v54 = v73;
    v53 = v74;
    v55 = v52 + v51;
    v56 = v72;
    (*(v73 + 16))(v72, v55, v74);
    v57 = sub_1DAECE4DC();
    (*(v54 + 8))(v56, v53);
    [v57 _effectiveCornerRadius];
  }

  v79 = v64;
  v80 = v61;
  swift_getOpaqueTypeConformance2();
  v58 = v77;
  v59 = v71;
  sub_1DAED038C();

  sub_1DAD64398(v50, &qword_1ECC08370, &unk_1DAED6580);
  return (*(v70 + 8))(v58, v59);
}

uint64_t sub_1DAE05E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DAE05230(a1, *v2, v3 | *(v2 + 8), a2);
}

uint64_t sub_1DAE05E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE05F18(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE05F8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE05FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE06038(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE06094()
{
  result = qword_1ECC08B28;
  if (!qword_1ECC08B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AD8, &qword_1DAED76A8);
    sub_1DAE06120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B28);
  }

  return result;
}

unint64_t sub_1DAE06120()
{
  result = qword_1ECC08B30;
  if (!qword_1ECC08B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AE8, &qword_1DAED76B8);
    sub_1DAD64B94(&qword_1ECC08B38, &qword_1ECC08AE0, &qword_1DAED76B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B30);
  }

  return result;
}

unint64_t sub_1DAE061D8()
{
  result = qword_1ECC08B40;
  if (!qword_1ECC08B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF8, &qword_1DAED76C8);
    sub_1DAE06264();
    sub_1DAE062F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B40);
  }

  return result;
}

unint64_t sub_1DAE06264()
{
  result = qword_1ECC08B48;
  if (!qword_1ECC08B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF0, &qword_1DAED76C0);
    sub_1DAE06094();
    sub_1DAE06120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B48);
  }

  return result;
}

unint64_t sub_1DAE062F0()
{
  result = qword_1ECC08B50;
  if (!qword_1ECC08B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B50);
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

uint64_t sub_1DAE06430(uint64_t a1, int a2)
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

uint64_t sub_1DAE06478(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAE064DC()
{
  result = qword_1ECC08B60;
  if (!qword_1ECC08B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B20, &qword_1DAED76F0);
    sub_1DAE06594();
    sub_1DAD64B94(&qword_1ECC08B78, &qword_1ECC08B80, &qword_1DAED7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B60);
  }

  return result;
}

unint64_t sub_1DAE06594()
{
  result = qword_1ECC08B68;
  if (!qword_1ECC08B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B18, &qword_1DAED76E8);
    sub_1DAE06620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B68);
  }

  return result;
}

unint64_t sub_1DAE06620()
{
  result = qword_1ECC08B70;
  if (!qword_1ECC08B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B10, &qword_1DAED76E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B00, &qword_1DAED76D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08AF8, &qword_1DAED76C8);
    sub_1DAE061D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08B70);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1DAE06750(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1DAE06798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAE06804()
{
  result = qword_1ECC08BA0;
  if (!qword_1ECC08BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _RenderEffectsContext(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for _RenderEffectsContext(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAE069F8()
{
  result = qword_1ECC08BC0;
  if (!qword_1ECC08BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BC8, &qword_1DAED79A8);
    sub_1DAE06804();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08BA8, &unk_1DAED7950);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08B98, &qword_1DAED7948);
    sub_1DAD64B94(&qword_1ECC08BB0, &qword_1ECC08B98, &qword_1DAED7948);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08BC0);
  }

  return result;
}

uint64_t static ActivityRendererSessionKey.mock(extensionBundleIdentifier:containerBundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECDD3C();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  (*(v22 + 16))(&v35 - v21, a1);
  sub_1DAE070F0(a2, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v16, 1, v23) == 1)
  {
    sub_1DAECE24C();
    if (v25(v16, 1, v23) != 1)
    {
      sub_1DAE07160(v16);
    }
  }

  else
  {
    (*(v24 + 32))(v18, v16, v23);
  }

  sub_1DAED21EC();
  (*(v24 + 56))(v18, 0, 1, v23);
  v26 = sub_1DAED21DC();
  sub_1DAED0E6C();
  v27 = type metadata accessor for ActivityRendererSessionKey();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  sub_1DAECDD2C();
  v31 = sub_1DAECDCFC();
  v33 = v32;

  (*(v37 + 8))(v7, v38);
  *(v30 + 16) = v31;
  *(v30 + 24) = v33;
  (*(v8 + 32))(v30 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v11, v36);
  return v30;
}

uint64_t static ActivityRendererSessionKey.mock(extensionIdentity:)()
{
  v0 = sub_1DAECDD3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  sub_1DAED0E6C();
  v10 = type metadata accessor for ActivityRendererSessionKey();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_1DAECDD2C();
  v14 = sub_1DAECDCFC();
  v16 = v15;
  (*(v1 + 8))(v4, v0);
  *(v13 + 16) = v14;
  *(v13 + 24) = v16;
  (*(v6 + 32))(v13 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v9, v5);
  return v13;
}

uint64_t sub_1DAE070F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE07160(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for WidgetRendererServiceXPCDefinition(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WidgetRendererServiceXPCDefinition(_WORD *result, int a2, int a3)
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

uint64_t sub_1DAE072E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE85C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v14 = v1;
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
  sub_1DAECDEFC();

  v9 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_1DAE091A0(&qword_1ECC08C50, MEMORY[0x1E6989BC0]);
  v10 = sub_1DAED1CAC();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    v11 = sub_1DAE4B018();
    sub_1DADEC9C4(v11);
  }

  swift_beginAccess();
  (*(v5 + 40))(v2 + v9, a1, v4);
  return swift_endAccess();
}

void (*sub_1DAE074FC(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1DAECE85C();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[5] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[7] = v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[8] = v13;
  v5[9] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1DAE07654;
}

void sub_1DAE07654(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 72);
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    v6 = *(v2 + 32);
    v7 = *(v2 + 40);
    v8 = *(v2 + 24);
    (*(v2 + 64))(v5, v4, v6);
    sub_1DAE072E0(v5);
    (*(v7 + 8))(v4, v6);
  }

  else
  {
    v5 = *(v2 + 48);
    v4 = *(v2 + 56);
    v9 = *(v2 + 24);
    sub_1DAE072E0(v4);
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_1DAE07700@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v5 = sub_1DAECE85C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAE077F8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECE85C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_1DAE07A08(v7);
}

uint64_t sub_1DAE078C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
  sub_1DAECDEFC();

  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v4 = sub_1DAECE85C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t type metadata accessor for InProcessJindoActivityInstance()
{
  result = qword_1ECC08C60;
  if (!qword_1ECC08C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE07A08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE85C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v10 = v5[2];
  v10(v8, v2 + v9, v4);
  sub_1DAE091A0(&qword_1ECC08C50, MEMORY[0x1E6989BC0]);
  LOBYTE(v9) = sub_1DAED1CAC();
  v11 = v5[1];
  v11(v8, v4);
  if (v9)
  {
    v10(v8, a1, v4);
    sub_1DAE072E0(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v2;
    v14[-1] = a1;
    v14[2] = v2;
    sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
    sub_1DAECDEEC();
  }

  return (v11)(a1, v4);
}

uint64_t sub_1DAE07C70(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAECE85C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  return sub_1DAE072E0(v6);
}

void (*sub_1DAE07D60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v4[5] = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
  sub_1DAECDEFC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DAECDF1C();

  v4[7] = sub_1DAE074FC(v4);
  return sub_1DAE07E98;
}

void sub_1DAE07E98(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1DAECDF0C();

  free(v1);
}

uint64_t InProcessJindoActivityInstance.__allocating_init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_1DAE0848C(a1, a2, a3);

  return v9;
}

uint64_t InProcessJindoActivityInstance.init(identity:metricsRequest:contentConfiguration:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1DAE0848C(a1, a2, a3);

  return v4;
}

uint64_t InProcessJindoActivityInstance.__allocating_init(identity:jindoState:metricsRequest:contentConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_1DAE08B74(a1, a2, a3, a4);

  return v11;
}

uint64_t InProcessJindoActivityInstance.init(identity:jindoState:metricsRequest:contentConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_1DAE08B74(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_1DAE0805C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v4 = sub_1DAECDF3C();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t InProcessJindoActivityInstance.deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v4 = sub_1DAECDF3C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InProcessJindoActivityInstance.__deallocating_deinit()
{
  v0 = InProcessActivityInstanceBase.deinit();
  v1 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v2 = sub_1DAECE85C();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v5 = sub_1DAECDF3C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE082B4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1DAE091A0(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);
  sub_1DAECDEFC();

  v4 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v5 = sub_1DAECE85C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void (*sub_1DAE083D0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_1DAE07D60(v3);
  return sub_1DAE08444;
}

void sub_1DAE08444(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1DAE0848C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v69 = a3;
  v70 = a1;
  v5 = *v3;
  v59 = a2;
  v60 = v5;
  v6 = sub_1DAECDE4C();
  v63 = *(v6 - 8);
  v64 = v6;
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DAECE83C();
  v62 = *(v68 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1DAECEDEC();
  v66 = *(v71 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDF2C();
  v17 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v18 = *MEMORY[0x1E6989BA0];
  v19 = sub_1DAECE85C();
  (*(*(v19 - 8) + 104))(v4 + v17, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
  v20 = sub_1DAED182C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DAED7A10;
  v58 = v24;
  v25 = (v24 + v23);
  *v25 = 1;
  v26 = *MEMORY[0x1E6985910];
  v27 = *(v21 + 104);
  v27(v25, v26, v20);
  v25[v22] = 2;
  v27(&v25[v22], v26, v20);
  v25[2 * v22] = 3;
  v27(&v25[2 * v22], v26, v20);
  v25[3 * v22] = 0;
  v27(&v25[3 * v22], v26, v20);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v28 = v71;
  v29 = __swift_project_value_buffer(v71, qword_1EE011700);
  v30 = *(v66 + 16);
  v31 = v16;
  v57 = v16;
  v30(v16, v29, v28);
  v32 = v62;
  v33 = *(v62 + 16);
  v34 = v68;
  v33(v67, v70, v68);
  v35 = v65;
  sub_1DADEAD64(v69, v65);
  v36 = v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  *v36 = 0;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = 0;
  v37 = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters) = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = sub_1DAECEE7C();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = 0;
  sub_1DAECDF2C();
  v30((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger), v31, v71);
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = v58;
  v41 = v67;
  v33((v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity), v67, v34);
  v42 = v59;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest) = v59;
  sub_1DADEAD64(v35, v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v43 = (v4 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v43 = 0x796D6D7564;
  v43[1] = 0xE500000000000000;
  v72 = v4;
  v44 = v42;
  v45 = sub_1DAED29CC();
  v47 = v46;
  v72 = v60;
  swift_getMetatypeMetadata();
  v72 = sub_1DAED1D4C();
  v73 = v48;
  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  v49 = v61;
  sub_1DAECE81C();
  v50 = sub_1DAECDE3C();
  v52 = v51;
  (*(v63 + 8))(v49, v64);
  MEMORY[0x1E127DA50](v50, v52);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v45, v47);

  sub_1DADEC6F8(v72, v73);
  sub_1DADEAF80(v69);
  v53 = *(v32 + 8);
  v54 = v68;
  v53(v70, v68);
  sub_1DADEAF80(v35);
  v53(v41, v54);
  (*(v66 + 8))(v57, v71);
  return v4;
}

uint64_t sub_1DAE08B74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v67 = a4;
  v68 = a1;
  v7 = *v4;
  v61 = a3;
  v62 = v7;
  v8 = sub_1DAECDE4C();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1DAECE83C();
  v14 = *(v58 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAECEDEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAECDF2C();
  v23 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  v24 = sub_1DAECE85C();
  v59 = *(v24 - 8);
  v60 = v24;
  (*(v59 + 16))(v5 + v23, a2);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v18, qword_1EE011700);
  v26 = *(v19 + 16);
  v54 = v18;
  v26(v22, v25, v18);
  v27 = sub_1DAE4B018();
  v55 = v14;
  v56 = a2;
  v51 = v27;
  v52 = v17;
  v53 = v22;
  v57 = v19;
  v28 = *(v14 + 16);
  v29 = v58;
  v28(v17, v68, v58);
  v30 = v66;
  sub_1DADEAD64(v67, v66);
  v31 = v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentSize;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__backgroundTintColor) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__textColor) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___foregroundAssertion) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___invalidated) = 0;
  v32 = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___cancellables) = MEMORY[0x1E69E7CD0];
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___activeRequesters) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08658, &qword_1DAED6B20);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoadedPublisher) = sub_1DAECEE7C();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___isLoaded) = 0;
  sub_1DAECDF2C();
  v26((v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__logger), v22, v18);
  v36 = v52;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___viewTags) = v51;
  v28((v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_identity), v36, v29);
  v37 = v61;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase_metricsRequest) = v61;
  sub_1DADEAD64(v30, v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration);
  v38 = (v5 + OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase___logIdentifier);
  *v38 = 0x796D6D7564;
  v38[1] = 0xE500000000000000;
  v69 = v5;
  v39 = v37;
  v40 = sub_1DAED29CC();
  v42 = v41;
  v69 = v62;
  swift_getMetatypeMetadata();
  v69 = sub_1DAED1D4C();
  v70 = v43;
  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  v44 = v63;
  sub_1DAECE81C();
  v45 = sub_1DAECDE3C();
  v47 = v46;
  (*(v64 + 8))(v44, v65);
  MEMORY[0x1E127DA50](v45, v47);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v40, v42);

  sub_1DADEC6F8(v69, v70);
  sub_1DADEAF80(v67);
  (*(v59 + 8))(v56, v60);
  v48 = *(v55 + 8);
  v48(v68, v29);
  sub_1DADEAF80(v30);
  v48(v36, v29);
  (*(v57 + 8))(v53, v54);
  return v5;
}

uint64_t sub_1DAE091A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE091F0()
{
  result = sub_1DAECE85C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DAECDF3C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DAE093BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1DAE09410()
{
  BSDispatchQueueAssertMain();
  v1 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) _FBSScene];
  v2 = [v1 settings];

  LODWORD(v1) = [v2 isForeground];
  if (v1)
  {
    if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild) & 1) != 0 || !*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController))
    {
      sub_1DAE0A220(0xD00000000000001DLL, 0x80000001DAEE25A0);
    }

    sub_1DAD7CBB4();
  }

  else
  {

    sub_1DAE0A4F0();
  }
}

uint64_t sub_1DAE09500()
{
  v1 = v0;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE24D0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v2 = 0xE300000000000000;
    v3 = 7366009;
  }

  else
  {
    v3 = 1701867374;
    v2 = 0xE400000000000000;
  }

  MEMORY[0x1E127DA50](v3, v2);

  MEMORY[0x1E127DA50](0x61736E617274202CLL, 0xEF203A6E6F697463);
  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction);
  if (v4)
  {
    v5 = 7366009;
  }

  else
  {
    v5 = 1701867374;
  }

  v6 = 0xE300000000000000;
  if (v4)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  MEMORY[0x1E127DA50](v5, v7);

  MEMORY[0x1E127DA50](0x696C61766E69202CLL, 0xEF203A6465746164);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1E127DA50](v8, v9);

  MEMORY[0x1E127DA50](0x776F646E6977202CLL, 0xEA0000000000203ALL);
  v10 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_window) description];
  v11 = sub_1DAED1CEC();
  v13 = v12;

  MEMORY[0x1E127DA50](v11, v13);

  MEMORY[0x1E127DA50](0xD000000000000018, 0x80000001DAEE24F0);
  v14 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if (v14)
  {
    v15 = [v14 description];
    v16 = sub_1DAED1CEC();
    v6 = v17;
  }

  else
  {
    v16 = 7104878;
  }

  MEMORY[0x1E127DA50](v16, v6);

  MEMORY[0x1E127DA50](62, 0xE100000000000000);
  return 0;
}

id sub_1DAE09798()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = v0;
  v3 = v1;
  v4 = v0;
  sub_1DAED22FC();

  v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__invalidated] = 1;
  v5 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber])
  {
    v6 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__contentTransparencyDidChangeSubscriber];

    sub_1DAECEE2C();

    v7 = *&v4[v5];
  }

  *&v4[v5] = 0;

  v8 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription])
  {
    v9 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__descriptorDidChangeSubscription];

    sub_1DAECEE2C();

    v10 = *&v4[v8];
  }

  *&v4[v8] = 0;

  v11 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener])
  {
    v12 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__dataProtectionListener];

    sub_1DAECEE2C();

    v13 = *&v4[v11];
  }

  *&v4[v11] = 0;

  v14 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener;
  if (*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener])
  {
    v15 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__entryContentTypeChangedListener];

    sub_1DAECEE2C();

    v16 = *&v4[v14];
  }

  *&v4[v14] = 0;

  v17 = &v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(v4, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  v20 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction];
  *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction] = 0;

  v21 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v22 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v22)
  {
    v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x288);
    v24 = v22;
    v23();

    v25 = *&v4[v21];
  }

  else
  {
    v25 = 0;
  }

  *&v4[v21] = 0;
  sub_1DAD7AFA0(v25);

  v26 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector];

  return [v26 removeAllObservers];
}

void sub_1DAE09A30()
{
  v1 = v0;
  v2 = sub_1DAED09DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v13)
  {
    v43 = v6;
    v44 = v10;
    v45 = v9;
    v46 = v3;
    v47 = v2;
    v14 = *&v1[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene];
    v15 = v13;
    v16 = [v14 widget];
    v17 = [v16 family];

    v18 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
    v19 = *&v15[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
    v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    v21 = *(v19 + v20);
    v22 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
    swift_beginAccess();
    v23 = v15[v22];
    v24 = v15;

    LODWORD(v17) = sub_1DAE9BAB0(v17);

    if (v17 == v24[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine])
    {
      if (v21 == v23)
      {
      }

      else
      {
        v40 = *&v15[v18];

        v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
        swift_beginAccess();
        LOBYTE(v41) = *(v40 + v41);

        sub_1DADB4574(v41);
      }
    }

    else
    {

      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v25 = sub_1DAECEDEC();
      __swift_project_value_buffer(v25, qword_1EE011748);
      v26 = v1;
      v27 = sub_1DAECEDCC();
      v28 = sub_1DAED203C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136446210;
        v32 = *&v26[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v31 = *&v26[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

        v33 = sub_1DAD6482C(v32, v31, aBlock);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] Will invalidate and rebuild view controller due to rendering engine change.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x1E127F100](v30, -1, -1);
        MEMORY[0x1E127F100](v29, -1, -1);
      }

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v34 = sub_1DAED20EC();
      v35 = swift_allocObject();
      *(v35 + 16) = v26;
      aBlock[4] = sub_1DAE0C91C;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_132_0;
      v36 = _Block_copy(aBlock);
      v37 = v26;

      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAE0C958(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
      v38 = v43;
      v39 = v47;
      sub_1DAED23CC();
      MEMORY[0x1E127DD70](0, v12, v38, v36);
      _Block_release(v36);

      (*(v46 + 8))(v38, v39);
      (*(v44 + 8))(v12, v45);
    }
  }
}

void sub_1DAE09FA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
    swift_beginAccess();
    sub_1DADB4574(*(v5 + v6));
  }
}

id sub_1DAE0A0A0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DAE0A220(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
  v7 = *&v2[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v7)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x288);
    v9 = v7;
    v8();
  }

  if (*&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_transaction])
  {
    v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 0;
    v10 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      v13 = (*(v11 + 8))(v3, *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene], a1, a2, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    oslog = *&v3[v6];
    *&v3[v6] = v13;
    v23 = v13;
    sub_1DAD7AFA0(oslog);
  }

  else
  {
    v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection__needsVCRebuild] = 1;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE011748);
    v15 = v3;

    oslog = sub_1DAECEDCC();
    v16 = sub_1DAED203C();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136446466;
      v19 = &v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v20 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v21 = *(v19 + 1);

      v22 = sub_1DAD6482C(v20, v21, &v25);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1DAD6482C(a1, a2, &v25);
      _os_log_impl(&dword_1DAD61000, oslog, v16, "[%{public}s] Invalidate view controller for reason: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }
  }
}

void sub_1DAE0A4F0()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v1)
  {
    v12 = v1;
    if ([v12 _appearState])
    {
      if (qword_1EE005E48 != -1)
      {
        swift_once();
      }

      v2 = sub_1DAECEDEC();
      __swift_project_value_buffer(v2, qword_1EE011748);
      v3 = v0;
      v4 = sub_1DAECEDCC();
      v5 = sub_1DAED203C();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v13 = v7;
        *v6 = 136446210;
        v8 = &v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
        v10 = *(v8 + 1);

        v11 = sub_1DAD6482C(v9, v10, &v13);

        *(v6 + 4) = v11;
        _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] Will disappear", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x1E127F100](v7, -1, -1);
        MEMORY[0x1E127F100](v6, -1, -1);
      }

      [v12 beginAppearanceTransition:0 animated:0];
      [v12 endAppearanceTransition];
    }
  }
}

uint64_t sub_1DAE0A6D0(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = [a1 _FBSScene];
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3 & 1;
  *(v8 + 32) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DAE0C9B8;
  *(v9 + 24) = v8;
  v13[4] = sub_1DAE0CA08;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DADB8220;
  v13[3] = &block_descriptor_148;
  v10 = _Block_copy(v13);
  v11 = a4;

  [v7 updateClientSettings_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1DAE0A854(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v15 = *(a5 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
      if (v15)
      {
        v16 = *&v15[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
        v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
        swift_beginAccess();
        sub_1DADC62DC(v16 + v17, v12);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v19 = a1;
        if (!EnumCaseMultiPayload)
        {
          v20 = 2;
LABEL_10:
          v23 = v15;
          sub_1DADC9838();
          v25 = v24;

          sub_1DAD64398(v12, &unk_1ECC07D30, &unk_1DAED57E0);
          [v14 setEntryContentType_];
          if (v25)
          {
            v26 = sub_1DAED1CBC();

LABEL_16:
            [v14 setEntryContentID_];

            return;
          }

LABEL_15:
          v26 = 0;
          goto LABEL_16;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v20 = 1;
          goto LABEL_10;
        }

        sub_1DAD64398(v12, &unk_1ECC07D30, &unk_1DAED57E0);
      }

      else
      {
        v22 = a1;
      }

      a3 = 0;
    }

    else
    {
      v21 = a1;
    }

    [v14 setEntryContentType_];
    goto LABEL_15;
  }
}

void sub_1DAE0AA58(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    v11 = &off_1E85EB000;
    if (os_log_type_enabled(v9, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136446466;
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v15 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v16 = sub_1DAD6482C(v14, v15, &v39);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = [v8 _FBSScene];
      v18 = [v17 property descriptor for LiveWidgetEntryViewModel.idealizedDateComponentsDidChangePublisher];

      [v18 frame];
      type metadata accessor for CGRect(0);
      v19 = sub_1DAED1D4C();
      v21 = sub_1DAD6482C(v19, v20, &v39);

      *(v12 + 14) = v21;
      v11 = &off_1E85EB000;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget frame changed to: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    v22 = OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController;
    v23 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (!v23)
    {
      goto LABEL_11;
    }

    v24 = [v23 view];
    if (v24)
    {
      v25 = v24;
      v26 = [v8 v11[429]];
      v27 = [v26 settings];

      [v27 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      [v25 setFrame_];
      v36 = *&v7[v22];
      if (!v36)
      {
LABEL_11:

        return;
      }

      v37 = [v36 view];
      if (v37)
      {
        v38 = v37;
        [v37 setNeedsLayout];

        v7 = v38;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1DAE0ADB0(uint64_t a1, uint64_t a2, void *a3, void (*a4)(unint64_t, unint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011748);
    v9 = v7;
    v10 = a3;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136446466;
      v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v16 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v17 = sub_1DAD6482C(v15, v16, &v25);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      [v10 contentType];
      sub_1DAE0C8C0();
      v18 = sub_1DAED237C();
      v20 = sub_1DAD6482C(v18, v19, &v25);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Widget content type changed to: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    v21 = sub_1DAD8CE78(v10);
    v22 = &v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v23 = *&v9[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];
    *v22 = v21;
    v22[1] = v24;

    a4(0xD000000000000014, 0x80000001DAEE2580);
  }
}

void sub_1DAE0B010(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5, SEL *a6, const char *a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v36 = a7;
    v16 = a9;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v17 = sub_1DAECEDEC();
    __swift_project_value_buffer(v17, qword_1EE011748);
    v18 = v15;
    v19 = a3;
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136446466;
      v35 = a8;
      v24 = a4;
      v25 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v26 = *&v18[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v27 = sub_1DAD6482C(v25, v26, &v37);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2082;
      v28 = [v19 *a6];
      v29 = [v28 description];

      v30 = sub_1DAED1CEC();
      v32 = v31;

      a4 = v24;
      v33 = sub_1DAD6482C(v30, v32, &v37);

      *(v22 + 14) = v33;
      a8 = v35;
      _os_log_impl(&dword_1DAD61000, v20, v21, v36, v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v23, -1, -1);
      v34 = v22;
      v16 = a9;
      MEMORY[0x1E127F100](v34, -1, -1);
    }

    a4(a8, v16);
  }
}

void sub_1DAE0B284()
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v0 = sub_1DAECEDEC();
  __swift_project_value_buffer(v0, qword_1EE011748);

  oslog = sub_1DAECEDCC();
  v1 = sub_1DAED202C();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v10 = v3;
    *v2 = 136446210;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v5 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8);
      v7 = Strong;
    }

    else
    {
      v5 = 0x80000001DAEE2560;
      v6 = 0xD000000000000017;
    }

    v8 = sub_1DAD6482C(v6, v5, &v10);

    *(v2 + 4) = v8;
    _os_log_impl(&dword_1DAD61000, oslog, v1, "[%{public}s] Widget configuration identifier changed unexpectedly.", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E127F100](v3, -1, -1);
    MEMORY[0x1E127F100](v2, -1, -1);
  }

  else
  {
  }
}

void sub_1DAE0B460(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v19);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 shouldVisibleEntrySnapshot];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget shouldVisibleEntrySnapshot changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v8 shouldVisibleEntrySnapshot];

      v17[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot] = v18;
      v7 = v17;
    }
  }
}

void sub_1DAE0B678(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 isContentPaused];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget content paused changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v18 = [v8 isContentPaused];
      v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
      swift_beginAccess();
      v20 = *(v17 + v19);
      *(v17 + v19) = v18;
      BSDispatchQueueAssertMain();
      if (v20 != *(v17 + v19))
      {
        v21 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
        swift_beginAccess();
        sub_1DAE9C79C(*(v17 + v21) & v20 & 1);
      }
    }

    else
    {
    }
  }
}

void sub_1DAE0B900(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, v29);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = [v8 inlineTextParameters];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 description];

        v19 = sub_1DAED1CEC();
        v21 = v20;
      }

      else
      {
        v21 = 0xE300000000000000;
        v19 = 7104878;
      }

      v22 = sub_1DAD6482C(v19, v21, v29);

      *(v11 + 14) = v22;
      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Widget inline text parameters changed to: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    v23 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v23)
    {
      v24 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v25 = [v8 inlineTextParameters];
      v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
      swift_beginAccess();
      v27 = *(v24 + v26);
      *(v24 + v26) = v25;
      v28 = v25;
      sub_1DAD95EE8(v27);

      v7 = v27;
    }
  }
}

void sub_1DAE0BBD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DADB48A4();
  }
}

void sub_1DAE0BC28(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011748);
    v7 = v5;
    v8 = a3;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136446466;
      v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
      v14 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

      v15 = sub_1DAD6482C(v13, v14, &v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 1026;
      *(v11 + 14) = [v8 prefersUnredactedContentInLowLuminanceEnvironment];

      _os_log_impl(&dword_1DAD61000, v9, v10, "[%{public}s] Show data when locked changed to: %{BOOL,public}d", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v16 = *&v7[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

      v18 = [v8 prefersUnredactedContentInLowLuminanceEnvironment];
      v19 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
      swift_beginAccess();
      v20 = *(v17 + v19);
      *(v17 + v19) = v18;
      sub_1DAD95AA0(v20);
    }
  }
}

void sub_1DAE0BE6C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    if ([a3 wantsBaseContentTouchEvents])
    {
      v6 = [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) _FBSScene];
      v7 = swift_allocObject();
      *(v7 + 16) = isEscapingClosureAtFileLocation;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1DAE0C8B8;
      *(v8 + 24) = v7;
      aBlock[4] = sub_1DADB8C1C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DADB8220;
      aBlock[3] = &block_descriptor_97;
      v9 = _Block_copy(aBlock);
      v10 = isEscapingClosureAtFileLocation;

      [v6 updateClientSettings_];

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

void sub_1DAE0C030(void *a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = a1;

      sub_1DAECEF3C();

      v10 = v12;
    }

    else
    {
      v11 = a1;
      v10 = 0;
    }

    [v6 setBaseContentTouchedDown_];
  }
}

void sub_1DAE0C124(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 renderingScale];
    v6 = *&v5[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
    if (v7 >= 0.0)
    {
      if (v6)
      {
        v9 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);

        [a3 renderingScale];
        swift_getKeyPath();
        swift_getKeyPath();
        goto LABEL_7;
      }
    }

    else if (v6)
    {
      v8 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
      swift_getKeyPath();
      swift_getKeyPath();

LABEL_7:
      sub_1DAECEF4C();
    }
  }
}

void sub_1DAE0C37C(void *a1, void *a2, void *a3, id a4)
{
  if (a4)
  {
    v9 = [a4 actions];
    if (v9)
    {
      v10 = v9;
      sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
      sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
      v11 = sub_1DAED1F6C();

      v12 = sub_1DADAF3F0(v11);

      if (v12)
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();

        if (v13)
        {
          if (qword_1EE005E48 != -1)
          {
            swift_once();
          }

          v14 = sub_1DAECEDEC();
          __swift_project_value_buffer(v14, qword_1EE011748);
          v31 = v4;
          v15 = v4;
          v16 = sub_1DAECEDCC();
          v17 = sub_1DAED203C();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v33 = v19;
            *v18 = 136446210;
            v30 = v15;
            v21 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
            v20 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

            v22 = sub_1DAD6482C(v21, v20, &v33);
            v15 = v30;

            *(v18 + 4) = v22;
            _os_log_impl(&dword_1DAD61000, v16, v17, "[%{public}s] Received launch request", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v19);
            MEMORY[0x1E127F100](v19, -1, -1);
            MEMORY[0x1E127F100](v18, -1, -1);
          }

          v23 = *&v15[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
          v4 = v31;
          if (v23)
          {
            v24 = *&v23[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
            v25 = v23;
            sub_1DAEA0A10();
            v4 = v31;
          }
        }
      }
    }
  }

  if (a2)
  {
    if (a3)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = a3;
      }
    }

    else
    {
      v26 = 0;
    }

    if (a1)
    {
      v28 = a2;
      v29 = [a1 settings];
      objc_opt_self();
      v32 = [objc_allocWithZone(MEMORY[0x1E6994558]) initWithPreviousSettings:v26 currentSettings:swift_dynamicCastObjCClassUnconditional() transitionContext:a4];

      [*&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_sceneSettingsDiffInspector] inspectDiff:v28 withContext:v32];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1DAE0C73C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  sub_1DAE0A220(a1, a2);
  sub_1DAE09410();
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1DAE0C8C0()
{
  result = qword_1ECC08D00;
  if (!qword_1ECC08D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC08D00);
  }

  return result;
}

uint64_t sub_1DAE0C958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE0CAB4()
{
  BSDispatchQueueAssertMain();
  v1 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
  [*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility, &qword_1ECC07CD0, &qword_1DAED6560);
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator);

  v4 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__timelineReloadedNotificationCancellable);

  swift_weakDestroy();
  v5 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logger;
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

  return v0;
}

uint64_t sub_1DAE0CBA8()
{
  sub_1DAE0CAB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DAE0CC08()
{
  v1 = v0;
  BSDispatchQueueAssertMain();
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) = 1;
  v2 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator))
  {

    sub_1DAE3A984();

    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;

  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer;
  [*(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) invalidate];
  v5 = *(v1 + v4);
  *(v1 + v4) = 0;

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE011778);

  oslog = sub_1DAECEDCC();
  v7 = sub_1DAED203C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier;
    v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v12 = *(v10 + 8);

    v13 = sub_1DAD6482C(v11, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DAD61000, oslog, v7, "[%{public}s] Visibility controller invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }
}

id sub_1DAE0CDF4(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return [a1 invalidate];
  }

  v3 = Strong;
  if (*(Strong + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated))
  {

    return [a1 invalidate];
  }

  if (qword_1EE005E60 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE011778);

  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED203C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
    v11 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier + 8);

    v12 = sub_1DAD6482C(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] Staleness timer fired. Evaluating staleness.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  sub_1DAD6CF04(v13);
}

char *sub_1DAE0CFD0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D50, &unk_1DAED7DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_1DAECEB5C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v17 = *(sub_1DAECFF0C() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_1DAD64398(v9, &qword_1ECC08D50, &unk_1DAED7DC0);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1DAEB2070(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_1DAEB2070(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_1DAE0D2FC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1E127DAD0](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      result = sub_1DAED1EBC();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

id sub_1DAE0D440(uint64_t a1, uint64_t a2, char a3)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setBaseContentTouchedDown_];
  }

  return result;
}

uint64_t sub_1DAE0D4A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20[-v7];
  if (a1[1])
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = sub_1DAECDCEC();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    goto LABEL_10;
  }

  v12 = *a1;
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v13 = sub_1DAECEDEC();
  __swift_project_value_buffer(v13, qword_1EE011748);
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED203C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = v12;
    _os_log_impl(&dword_1DAD61000, v14, v15, "New value set for 'overrideDate': %{public}f", v16, 0xCu);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    sub_1DAECDC9C();
    v17 = sub_1DAECDCEC();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
LABEL_10:
    v18 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue;
    swift_beginAccess();
    sub_1DAE101FC(v8, v10 + v18);
    swift_endAccess();
    sub_1DAD6495C(v10 + v18, v6, &qword_1ECC07CE8, &qword_1DAED6F60);
    v19 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
    swift_beginAccess();
    sub_1DAE101FC(v6, v10 + v19);
    swift_endAccess();
    sub_1DAE0FC40();

    sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
    return sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  return result;
}

uint64_t sub_1DAE0D85C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion, &qword_1ECC08D38, &qword_1DAED7D98);
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator);

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__cancellables);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue, &qword_1ECC07CE8, &qword_1DAED6F60);
}

id sub_1DAE0D924()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__cancellables;
  swift_beginAccess();
  v18 = v0;
  v2 = *&v0[v1];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *&v0[v1];
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAD900A4(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    result = sub_1DAED1F9C();
    v6 = v21;
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v6 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_20:
      sub_1DAD70B20();

      v20.receiver = v18;
      v20.super_class = type metadata accessor for WidgetSceneContentViewController();
      return objc_msgSendSuper2(&v20, sel_dealloc);
    }

    while (1)
    {
      sub_1DAECEE2C();

      v8 = v15;
      v9 = v16;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v15 = v8;
        v16 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE0DC6C()
{
  v1 = v0;
  v2 = sub_1DAED087C();
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *&v12 = v2;
  v5 = v4;

  sub_1DAECFABC();

  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAEA1304();
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated) = 1;
  v7 = v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion;
  swift_beginAccess();
  if (*(v7 + 24))
  {
    sub_1DAD648F8(v7, &v12);
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1DAED144C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  swift_beginAccess();
  sub_1DAE102DC(&v12, v7);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator))
  {
    v9 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator);

    sub_1DAE3A984();

    v10 = *(v1 + v8);
  }

  *(v1 + v8) = 0;
}

uint64_t sub_1DAE0DDF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED192C();
  v101 = *(v4 - 8);
  v102 = v4;
  v5 = *(v101 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v100 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v93[-v8];
  v98 = sub_1DAECDCEC();
  v97 = *(v98 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v93[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1DAECDA2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  BSDispatchQueueAssertMain();
  v16 = sub_1DADBC424(&unk_1F56AFA18);
  swift_arrayDestroy();
  v21 = [*&v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] extensionIdentity];
  v17 = *MEMORY[0x1E69941B8];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v18 = sub_1DAECE26C();
  v20 = v19;
  swift_endAccess();

  LODWORD(v21) = sub_1DADB410C(v18, v20, v16);

  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v22 = sub_1DAECEDEC();
  v23 = __swift_project_value_buffer(v22, qword_1EE011640);
  v24 = *(v12 + 16);
  v103 = a1;
  v24(v15, a1, v11);
  v25 = v2;
  v26 = sub_1DAECEDCC();
  v27 = sub_1DAED200C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v95 = v23;
    v29 = v28;
    v30 = swift_slowAlloc();
    v94 = v21;
    v21 = v30;
    v110[0] = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1DAD6482C(*&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v110);
    *(v29 + 12) = 2082;
    sub_1DAD900A4(&qword_1ECC08D48, MEMORY[0x1E6968130]);
    v31 = sub_1DAED287C();
    v33 = v32;
    (*(v12 + 8))(v15, v11);
    v34 = sub_1DAD6482C(v31, v33, v110);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] AoD timeline request with dateInterval: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v35 = v21;
    LOBYTE(v21) = v94;
    MEMORY[0x1E127F100](v35, -1, -1);
    MEMORY[0x1E127F100](v29, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  sub_1DAD648F8(*&v25[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v105);
  v36 = v106;
  v37 = v107;
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v38 = (*(v37 + 16))(v36, v37);
  sub_1DAED0C5C();

  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  v39 = v103;
  if (v109)
  {
    sub_1DAD657D8(&v108, v110);
    if (v21)
    {
      v40 = objc_opt_self();
      v41 = *&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];
      v102 = *&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
      v42 = sub_1DAED1CBC();
      v43 = [v40 everyMinuteTimelineWithIdentifier:v42 configure:0];
LABEL_18:

      v65 = v43;
      v66 = v25;
      v67 = v65;
      v68 = sub_1DAECEDCC();
      v69 = sub_1DAED200C();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v108 = v72;
        *v70 = 136446466;
        *(v70 + 4) = sub_1DAD6482C(v102, v41, &v108);
        *(v70 + 12) = 2114;
        *(v70 + 14) = v67;
        *v71 = v67;
        v73 = v67;
        _os_log_impl(&dword_1DAD61000, v68, v69, "[%{public}s] AoD timeline result: %{public}@", v70, 0x16u);
        sub_1DAD64398(v71, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v71, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x1E127F100](v72, -1, -1);
        MEMORY[0x1E127F100](v70, -1, -1);
      }

      BSDispatchQueueAssertMain();
      v74 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v75 = *&v66[v74];
      v76 = sub_1DAECD9DC();
      v77 = [v75 _timelinesForDateInterval_];

      v78 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
      v79 = sub_1DAED1E7C();

      v104 = v79;
      v80 = v66;
      v81 = sub_1DAECEDCC();
      v82 = sub_1DAED200C();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v105[0] = v84;
        *v83 = 136446466;
        *(v83 + 4) = sub_1DAD6482C(v102, v41, v105);
        *(v83 + 12) = 2082;

        v86 = MEMORY[0x1E127DB00](v85, v78);
        v88 = v87;

        v89 = sub_1DAD6482C(v86, v88, v105);

        *(v83 + 14) = v89;
        _os_log_impl(&dword_1DAD61000, v81, v82, "[%{public}s] AoD timeline result from UIHostingController base: %{public}s", v83, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v84, -1, -1);
        MEMORY[0x1E127F100](v83, -1, -1);
      }

      v90 = swift_beginAccess();
      MEMORY[0x1E127DAD0](v90);
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v92 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DAED1E9C();
      }

      sub_1DAED1EBC();
      v49 = v104;
      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm(v110);
      return v49;
    }

    v50 = v96;
    sub_1DAECDA0C();
    v51 = sub_1DAECDC5C();
    v52 = [objc_opt_self() entryForPresentationTime:v51 withRequestedFidelity:1];

    (*(v97 + 8))(v50, v98);
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v53 = v99;
    sub_1DAED1A1C();
    v54 = v100;
    sub_1DAED191C();
    v55 = MEMORY[0x1E127D580](v53, v54);
    v56 = *(v101 + 8);
    v57 = v54;
    v58 = v102;
    v56(v57, v102);
    v56(v53, v58);
    __swift_project_boxed_opaque_existential_1(v110, v111);
    v59 = *(sub_1DAED1A2C() + 16);

    if (v59 != 1)
    {
      __swift_project_boxed_opaque_existential_1(v110, v111);
      v60 = sub_1DAED1A2C();
      MEMORY[0x1EEE9AC00](v60);
      *&v93[-32] = v39;
      *&v93[-24] = v25;
      *&v93[-16] = (v55 & 1) == 0;
      v61 = sub_1DAE0D2FC(sub_1DAE10360, &v93[-48], v60);

      if (v61 >> 62)
      {
        if (sub_1DAED247C())
        {
          goto LABEL_17;
        }
      }

      else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_17:
        v41 = *&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8];
        v102 = *&v25[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier];
        v42 = sub_1DAED1CBC();
        sub_1DAD674D4(0, &qword_1ECC08D40, 0x1E698E510);
        v64 = sub_1DAED1E6C();

        v43 = [objc_opt_self() timelineWithEntries:v64 identifier:v42 configure:0];

        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1DAED64D0;
    *(v62 + 32) = v52;
    v63 = v52;
    goto LABEL_17;
  }

  sub_1DAD64398(&v108, &unk_1ECC08880, &unk_1DAED6F50);
  v44 = v25;
  v45 = sub_1DAECEDCC();
  v46 = sub_1DAED200C();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v110[0] = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_1DAD6482C(*&v44[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v44[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v110);
    _os_log_impl(&dword_1DAD61000, v45, v46, "[%{public}s] AoD timeline result: nil", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x1E127F100](v48, -1, -1);
    MEMORY[0x1E127F100](v47, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAE0EA88@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v37 = a4;
  v36 = a3;
  v6 = sub_1DAECDCEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAED177C();
  v12 = sub_1DAECDA1C();
  v13 = *(v7 + 8);
  result = v13(v10, v6);
  v15 = 0;
  if (v12)
  {
    if (qword_1EE005DB8 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011640);
    sub_1DAD648F8(a1, v38);
    v17 = a2;
    v18 = sub_1DAECEDCC();
    v19 = sub_1DAED200C();

    if (os_log_type_enabled(v18, v19))
    {
      v34 = v19;
      v35 = v18;
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v20 = 136446466;
      *(v20 + 4) = sub_1DAD6482C(*&v17[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v17[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], &v39);
      *(v20 + 12) = 2082;
      __swift_project_boxed_opaque_existential_1(v38, v38[3]);
      sub_1DAED177C();
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v21 = qword_1EE00A708;
      v22 = sub_1DAECDC5C();
      v23 = [v21 stringFromDate_];

      v24 = sub_1DAED1CEC();
      v26 = v25;

      v13(v10, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v27 = sub_1DAD6482C(v24, v26, &v39);

      *(v20 + 14) = v27;
      v28 = v35;
      _os_log_impl(&dword_1DAD61000, v35, v34, "[%{public}s] Including date in timeline: %{public}s", v20, 0x16u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v29, -1, -1);
      MEMORY[0x1E127F100](v20, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAED177C();
    v31 = sub_1DAECDC5C();
    v15 = [objc_opt_self() entryForPresentationTime:v31 withRequestedFidelity:v36];

    result = v13(v10, v6);
  }

  *v37 = v15;
  return result;
}

uint64_t sub_1DAE0EF98(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v95 = a3;
  v96 = a2;
  v4 = sub_1DAECDCEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v98 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECDA2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v87 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v87 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = v87 - v23;
  BSDispatchQueueAssertMain();
  v97 = v24;
  v93 = v4;
  if (a1)
  {
    v25 = a1;
    v26 = [a1 presentationInterval];
    sub_1DAECD9EC();

    v24 = v97;
    sub_1DAECDA0C();
    (*(v9 + 8))(v12, v8);
    (*(v5 + 56))(v24, 0, 1, v4);
  }

  else
  {
    v25 = 0;
    (*(v5 + 56))(v24, 1, 1, v4);
  }

  v27 = v5;
  v28 = v96;
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v29 = sub_1DAECEDEC();
  v30 = __swift_project_value_buffer(v29, qword_1EE011640);
  sub_1DAD6495C(v24, v22, &qword_1ECC07CE8, &qword_1DAED6F60);
  v31 = v25;
  v32 = v25;
  v33 = v92;
  v34 = sub_1DAECEDCC();
  v35 = sub_1DAED203C();
  v92 = v32;

  if (os_log_type_enabled(v34, v35))
  {
    LODWORD(v90) = v35;
    v91 = v30;
    v36 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v103[0] = v89;
    *v36 = 136446722;
    *(v36 + 4) = sub_1DAD6482C(*(&v33->isa + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier), *(&v33[1].isa + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier), v103);
    *(v36 + 12) = 2082;
    sub_1DAD6495C(v22, v19, &qword_1ECC07CE8, &qword_1DAED6F60);
    v37 = v27;
    v38 = *(v27 + 48);
    v39 = v93;
    if (v38(v19, 1, v93) == 1)
    {
      sub_1DAD64398(v19, &qword_1ECC07CE8, &qword_1DAED6F60);
      v40 = 0xE300000000000000;
      v41 = 7104878;
    }

    else
    {
      v88 = v31;
      v42 = v39;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v43 = qword_1EE00A708;
      v44 = sub_1DAECDC5C();
      v45 = [v43 stringFromDate_];

      v41 = sub_1DAED1CEC();
      v40 = v46;

      v39 = v42;
      (*(v37 + 8))(v19, v42);
      v31 = v88;
    }

    sub_1DAD64398(v22, &qword_1ECC07CE8, &qword_1DAED6F60);
    v47 = sub_1DAD6482C(v41, v40, v103);

    *(v36 + 14) = v47;
    *(v36 + 22) = 2082;
    if (v31)
    {
      v48 = [v92 description];
      v49 = sub_1DAED1CEC();
      v51 = v50;
    }

    else
    {
      v51 = 0xE300000000000000;
      v49 = 7104878;
    }

    v52 = sub_1DAD6482C(v49, v51, v103);

    *(v36 + 24) = v52;
    _os_log_impl(&dword_1DAD61000, v34, v90, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v36, 0x20u);
    v53 = v89;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v53, -1, -1);
    MEMORY[0x1E127F100](v36, -1, -1);

    v28 = v96;
  }

  else
  {

    sub_1DAD64398(v22, &qword_1ECC07CE8, &qword_1DAED6F60);
    v37 = v27;
    v39 = v93;
  }

  v54 = v33;
  v55 = sub_1DAECEDCC();
  v56 = sub_1DAED200C();

  v57 = os_log_type_enabled(v55, v56);
  v58 = v97;
  if (v57)
  {
    LODWORD(v92) = v56;
    v59 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v105[0] = v91;
    *v59 = 136446466;
    *(v59 + 4) = sub_1DAD6482C(*&v54[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v54[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v105);
    *(v59 + 12) = 2080;
    sub_1DAD648F8(*&v54[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v100);
    v60 = v101;
    v61 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v62 = (*(v61 + 16))(v60, v61);
    sub_1DAED0C5C();

    __swift_destroy_boxed_opaque_existential_1Tm(v100);
    if (v104)
    {
      v90 = v59;
      __swift_project_boxed_opaque_existential_1(v103, v104);
      v63 = sub_1DAED1A2C();
      v64 = *(v63 + 16);
      if (v64)
      {
        v88 = v55;
        v89 = v54;
        v65 = v39;
        v99 = MEMORY[0x1E69E7CC0];
        sub_1DAE02204(0, v64, 0);
        v66 = v99;
        v87[1] = v63;
        v67 = v63 + 32;
        v68 = (v37 + 8);
        do
        {
          sub_1DAD648F8(v67, v100);
          __swift_project_boxed_opaque_existential_1(v100, v101);
          v69 = v98;
          sub_1DAED177C();
          v70 = sub_1DAECDC2C();
          v72 = v71;
          (*v68)(v69, v65);
          __swift_destroy_boxed_opaque_existential_1Tm(v100);
          v99 = v66;
          v74 = *(v66 + 16);
          v73 = *(v66 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_1DAE02204((v73 > 1), v74 + 1, 1);
            v66 = v99;
          }

          *(v66 + 16) = v74 + 1;
          v75 = v66 + 16 * v74;
          *(v75 + 32) = v70;
          *(v75 + 40) = v72;
          v67 += 40;
          --v64;
        }

        while (v64);

        v77 = v95;
        v28 = v96;
        v54 = v89;
        v55 = v88;
      }

      else
      {

        v66 = MEMORY[0x1E69E7CC0];
        v77 = v95;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v103);
      v103[0] = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
      v78 = sub_1DAED1C8C();
      v79 = v80;

      v58 = v97;
      v76 = v94;
      v59 = v90;
    }

    else
    {
      v78 = 7104878;
      sub_1DAD64398(v103, &unk_1ECC08880, &unk_1DAED6F50);
      v79 = 0xE300000000000000;
      v76 = v94;
      v77 = v95;
    }

    v81 = sub_1DAD6482C(v78, v79, v105);

    *(v59 + 14) = v81;
    _os_log_impl(&dword_1DAD61000, v55, v92, "[%{public}s] Content entries:\n %s", v59, 0x16u);
    v82 = v91;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v82, -1, -1);
    MEMORY[0x1E127F100](v59, -1, -1);
  }

  else
  {

    v76 = v94;
    v77 = v95;
  }

  sub_1DAD6495C(v58, v76, &qword_1ECC07CE8, &qword_1DAED6F60);
  v83 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
  swift_beginAccess();
  sub_1DAE101FC(v76, &v54[v83]);
  swift_endAccess();
  sub_1DAE0FC40();
  sub_1DAD64398(v76, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v84 = swift_allocObject();
  v84[2] = v54;
  v84[3] = v28;
  v84[4] = v77;
  v85 = v54;

  sub_1DAED22FC();

  return sub_1DAD64398(v58, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE0FA38(void *a1, uint64_t (*a2)(void))
{
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE011640);
  v5 = a1;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED200C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1DAD6482C(*&v5[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v5[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], &v11);
    _os_log_impl(&dword_1DAD61000, v6, v7, "[%{public}s] AoD performAfterSwiftUILayout completion fired", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  return a2();
}

uint64_t sub_1DAE0FC40()
{
  v1 = v0;
  v2 = sub_1DAECDCEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v14, v11, &qword_1ECC07CE8, &qword_1DAED6F60);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
    v15 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v15, v13, &qword_1ECC07CE8, &qword_1DAED6F60);
  }

  else
  {
    v16 = *(v3 + 32);
    v16(v6, v11, v2);
    v16(v13, v6, v2);
    (*(v3 + 56))(v13, 0, 1, v2);
  }

  v17 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v18 = *(v1 + v17);
  type metadata accessor for SecureHostingController();
  sub_1DAD900A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v19 = v18;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20)
    {

      v21 = swift_unknownObjectRelease();
      goto LABEL_9;
    }

    [v20 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_9:
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  MEMORY[0x1EEE9AC00](v21);
  *(&v24 - 2) = v13;
  *(&v24 - 1) = v1;
  sub_1DAEA1A98(sub_1DAE102CC);
  return sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE0FFB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = sub_1DAECDCEC();
  v12 = *(*(v11 - 8) + 48);
  if (v12(a1, 1, v11) != 1)
  {
    v13 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    v15 = *(v13 + v14);
    *(v13 + v14) = 1;
    sub_1DAE9D5F0(v15);
  }

  v16 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  sub_1DAD6495C(a1, v10, &qword_1ECC07CE8, &qword_1DAED6F60);
  v17 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v16 + v17, v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_beginAccess();
  sub_1DAE101FC(v10, v16 + v17);
  swift_endAccess();
  sub_1DAE9DF48(v8);
  sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v12(a1, 1, v11) == 1)
  {
    v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inLowLuminanceEnvironment;
    swift_beginAccess();
    v19 = *(v16 + v18);
    *(v16 + v18) = 0;
    sub_1DAE9D5F0(v19);
  }
}

uint64_t sub_1DAE101FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DAE10294(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1DAE102DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D38, &qword_1DAED7D98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE10380()
{
  if (v0[6])
  {

    sub_1DAECEE2C();
  }

  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

id sub_1DAE1048C()
{
  result = [objc_opt_self() userInteractive];
  qword_1EE00B9C8 = result;
  return result;
}

uint64_t sub_1DAE10578()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_logger;
  v5 = sub_1DAECEDEC();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_reason + 8);

  v7 = *(v1 + v2);

  v8 = *(*v1 + 48);
  v9 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE106C4()
{
  if (*(*v0 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion))
  {

    sub_1DAED0D4C();
  }

  return result;
}

uint64_t sub_1DAE10720()
{
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE10814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAE108C0(uint64_t a1)
{
  v2 = sub_1DAED18CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    (*(v3 + 16))(v6, a1, v2);
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED200C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v21 = a1;
      v12 = v11;
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v14 = sub_1DAED287C();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
      v17 = sub_1DAD6482C(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v9, v10, "Protection Type changed to %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      v18 = v12;
      a1 = v21;
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v19 = *(v8 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v20 = *(v19 + 16);

    os_unfair_lock_lock(v20);
    sub_1DAE10B80(v8, a1);
    os_unfair_lock_unlock(*(v19 + 16));
  }

  return result;
}

uint64_t sub_1DAE10B80(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D80, qword_1DAED8048);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - v11;
  v12 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v49 = a1;
  v13 = *(a1 + v12);
  v14 = *(v13 + 64);
  v44 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v43 = (v15 + 63) >> 6;
  v45 = v3 + 16;
  v53 = (v3 + 32);
  v47 = v3;
  v48 = v13;
  v50 = (v3 + 8);

  v19 = 0;
  v46 = v10;
  v20 = &unk_1ECC08D78;
  if (v17)
  {
    while (1)
    {
      v21 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v21 << 6);
      v27 = v47;
      v26 = v48;
      v28 = v54;
      v29 = v55;
      (*(v47 + 16))(v54, *(v48 + 48) + *(v47 + 72) * v25, v55);
      v30 = *(*(v26 + 56) + 8 * v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_1DAED8040);
      v32 = *(v31 + 48);
      v33 = *(v27 + 32);
      v10 = v46;
      v33(v46, v28, v29);
      *&v10[v32] = v30;
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);

      v23 = v21;
      v34 = v20;
LABEL_13:
      v35 = v52;
      sub_1DAD7C48C(v10, v52, &qword_1ECC08D80, qword_1DAED8048);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_1DAED8040);
      if ((*(*(v36 - 8) + 48))(v35, 1, v36) == 1)
      {
      }

      v37 = *(v35 + *(v36 + 48));
      v38 = v54;
      v39 = v35;
      v40 = v55;
      (*v53)(v54, v39, v55);
      sub_1DAE12A64(v38, v37, v51);

      result = (*v50)(v38, v40);
      v19 = v23;
      v20 = v34;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v43 <= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v43;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v43)
      {
        v34 = v20;
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, &qword_1DAED8040);
        (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v44 + 8 * v21);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DAE10FC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v97 = a4;
  v89 = a3;
  v91 = a5;
  v88 = sub_1DAECEDEC();
  v87 = *(v88 - 8);
  v8 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v84 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v17 = *(v16 - 8);
  v85 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v82 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v82 - v22;
  v99 = sub_1DAED18CC();
  v93 = *(v99 - 8);
  v24 = *(v93 + 64);
  v25 = MEMORY[0x1EEE9AC00](v99);
  v82 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v82 - v27;
  v28 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v29 = *&a1[v28];
  v30 = *(v29 + 16);
  v95 = v17;
  v96 = v16;
  v94 = v19;
  if (v30)
  {

    v31 = sub_1DAECB0A8(a2);
    if (v32)
    {
      v90 = v5;
      v33 = *(*(v29 + 56) + 8 * v31);
      swift_retain_n();

      v34 = _serverStartupToken + 3568;
      goto LABEL_10;
    }
  }

  v90 = a1;
  v35 = &a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider];
  v36 = *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider], *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 24]);
  v92 = a2;
  v37 = sub_1DAED0E5C();
  sub_1DAED134C();
  if (v5)
  {

    v38 = v93;
    v39 = v99;
    (*(v93 + 56))(v23, 1, 1, v99);
    v40 = *(v35 + 4);
    __swift_project_boxed_opaque_existential_1(v35, *(v35 + 3));
    sub_1DAED133C();
    if ((*(v38 + 48))(v23, 1, v39) != 1)
    {
      sub_1DAD64398(v23, &qword_1ECC087A0, &unk_1DAED71E0);
    }
  }

  else
  {

    v41 = v93;
    v42 = v99;
    (*(v93 + 56))(v23, 0, 1, v99);
    (*(v41 + 32))(v98, v23, v42);
  }

  a1 = v90;
  v43 = v94;
  v90 = 0;
  v44 = *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory], *&a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__environmentFactory + 24]);
  v45 = sub_1DAED0E5C();
  sub_1DAED12FC();

  a2 = v92;
  sub_1DAED0D1C();
  (*(v95 + 16))(v43, a2, v96);
  v46 = sub_1DAED1BEC();
  (*(*(v46 - 8) + 56))(v83, 1, 1, v46);
  v47 = v93;
  (*(v93 + 16))(v82, v98, v99);
  sub_1DAD648F8(v101, v100);
  v48 = sub_1DAED0CCC();
  v49 = type metadata accessor for ActivityArchiveEntry(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v52 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
  v53 = sub_1DAECDCEC();
  (*(*(v53 - 8) + 56))(v33 + v52, 1, 1, v53);
  *(v33 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions) = MEMORY[0x1E69E7CC0];
  v34 = &_serverStartupToken[892];
  *(v33 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry) = v48;
  swift_beginAccess();
  swift_retain_n();

  v54 = *&a1[v28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *&a1[v28];
  *&a1[v28] = 0x8000000000000000;
  sub_1DADDAD78(v33, a2, isUniquelyReferenced_nonNull_native);
  *&a1[v28] = v102;
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  (*(v47 + 8))(v98, v99);
LABEL_10:
  v56 = type metadata accessor for ActivityContentDidChangeEvent();
  v57 = v84;
  (*(*(v56 - 8) + 56))(v84, 1, 1, v56);
  sub_1DAE13360(a2, v57);
  sub_1DAD64398(v57, &qword_1ECC08D68, &unk_1DAED8020);
  v58 = *(v33 + *(v34 + 274));
  v93 = v58;
  v59 = v87;
  v60 = v86;
  v61 = v88;
  (*(v87 + 16))(v86, &a1[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__logger], v88);
  v62 = type metadata accessor for ActivityArchiveEntryAssertion(0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  v99 = v62;
  v65 = swift_allocObject();
  v98 = OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion;
  *(v65 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_assertion) = 0;
  *(v65 + 16) = v58;
  (*(v59 + 32))(v65 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_logger, v60, v61);
  v66 = (v65 + OBJC_IVAR____TtC14WidgetRendererP33_AAAF5E0B91342CB37DBE996ED544FA1C29ActivityArchiveEntryAssertion_reason);
  v67 = v97;
  *v66 = v89;
  v66[1] = v67;
  v92 = sub_1DAED0D5C();
  v68 = a2;
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = v94;
  v71 = v95;
  v72 = v96;
  (*(v95 + 16))(v94, v68, v96);
  v73 = (*(v71 + 80) + 40) & ~*(v71 + 80);
  v74 = swift_allocObject();
  *(v74 + 2) = a1;
  *(v74 + 3) = v33;
  *(v74 + 4) = v69;
  (*(v71 + 32))(&v74[v73], v70, v72);

  v75 = sub_1DAED0D6C();
  v76 = *&v98[v65];
  *&v98[v65] = v75;

  v77 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v78);
  if (*((*(v33 + v77) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v33 + v77) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v81 = *((*(v33 + v77) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  v79 = v91;
  v91[3] = v99;
  v79[4] = sub_1DAE167B4(&qword_1EE0062E8, type metadata accessor for ActivityArchiveEntryAssertion);

  *v79 = v65;
  return result;
}

uint64_t sub_1DAE119CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
  v13 = *(v12 + 16);

  os_unfair_lock_lock(v13);
  v14 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_assertions;
  swift_beginAccess();

  v15 = sub_1DAE167FC((a2 + v14));

  v16 = *(a2 + v14);
  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17 >= v15)
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    if (sub_1DAED247C())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v16 < 0)
  {
    v20 = *(a2 + v14);
  }

  v17 = sub_1DAED247C();
  if (v17 < v15)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_1DADFAEFC(v15, v17);
  swift_endAccess();
  v18 = *(a2 + v14);
  if (v18 >> 62)
  {
    goto LABEL_11;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    (*(v8 + 16))(v11, a4, v7);
    swift_beginAccess();
    sub_1DADD8448(0, v11);
    swift_endAccess();
  }

LABEL_6:
  os_unfair_lock_unlock(*(v12 + 16));
}

uint64_t sub_1DAE11BE0(uint64_t a1)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D78, &qword_1DAED8040);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(*(v1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock) + 16);
  v22 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);

  os_unfair_lock_lock(v6);
  v7 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = sub_1DAD64398(v5, &qword_1ECC08D78, &qword_1DAED8040))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v8 + 48);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
    (*(*(v19 - 8) + 16))(v5, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(*(v8 + 56) + 8 * v17);
    *&v5[*(v2 + 48)] = v20;

    sub_1DAE11E00(v5, v20, v23, v1);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      os_unfair_lock_unlock(*(v22 + 16));
    }

    v11 = *(v8 + 64 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1DAE11E00(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v48 = &v44 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087A0, &unk_1DAED71E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v44 - v17;
  v19 = sub_1DAED18CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v44 - v25;
  v26 = sub_1DAED0E5C();
  LOBYTE(a3) = sub_1DAD93D58(v26, a3, MEMORY[0x1E69941C0]);

  if (a3)
  {
    v44 = v11;
    v45 = a2;
    v47 = a4;
    v27 = *(a4 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider), *(a4 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionProvider + 24));
    v46 = a1;
    v28 = sub_1DAED0E5C();
    sub_1DAED134C();

    (*(v20 + 56))(v18, 0, 1, v19);
    (*(v20 + 32))(v49, v18, v19);
    v29 = v45;
    v30 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
    v31 = *&v45[OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry];

    sub_1DAED0C8C();

    sub_1DAE167B4(&qword_1EE00AAE8, MEMORY[0x1E69859A8]);
    v32 = sub_1DAED1CAC();
    v33 = *(v20 + 8);
    v33(v24, v19);
    v34 = v47;
    if ((v32 & 1) == 0)
    {
      v35 = *&v29[v30];
      v36 = *(v20 + 16);
      v36(v24, v49, v19);

      sub_1DAED0C9C();

      v37 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_currentDataProtectionLevel;
      swift_beginAccess();
      v36(v24, (v34 + v37), v19);
      sub_1DAE12A64(v46, v29, v24);
      v33(v24, v19);
    }

    v38 = *&v29[v30];

    v39 = v48;
    sub_1DAED0CDC();

    v40 = sub_1DAED1BEC();
    v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
    sub_1DAD64398(v39, &qword_1ECC08D70, &unk_1DAED8710);
    if (v41 == 1)
    {
      v42 = type metadata accessor for ActivityContentDidChangeEvent();
      v43 = v44;
      (*(*(v42 - 8) + 56))(v44, 1, 1, v42);
      sub_1DAE13360(v46, v43);
      sub_1DAD64398(v43, &qword_1ECC08D68, &unk_1DAED8020);
    }

    v33(v49, v19);
  }
}

uint64_t sub_1DAE12374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - v13;
  v15 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v16 = *(a1 + v15);
  v27 = a2;

  v17 = sub_1DAE126E8(sub_1DAE16C20, v26, v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v24[1] = v3;
    v24[2] = v17;
    v19 = v11 + 16;
    v28 = *(v11 + 16);
    v20 = v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v25 = *(v19 + 56);
    v21 = (v19 - 8);
    do
    {
      v28(v14, v20, v10);
      sub_1DAE16C40(a2, v9);
      v22 = type metadata accessor for ActivityContentDidChangeEvent();
      (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
      sub_1DAE13360(v14, v9);
      (*v21)(v14, v10);
      sub_1DAD64398(v9, &qword_1ECC08D68, &unk_1DAED8020);
      v20 += v25;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_1DAE125E8()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  MEMORY[0x1E127CAC0](v5);
  v6 = sub_1DAED0B0C();
  (*(v1 + 8))(v4, v0);
  return v6 & 1;
}

uint64_t sub_1DAE126E8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v51 = a3;
  v52 = &v41 - v14;
  v15 = 0;
  v18 = *(a3 + 64);
  v17 = a3 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v49 = v13;
  v50 = v13 + 32;
  v44 = (v13 + 8);
  v45 = v13 + 16;
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v23 = v15;
    if (!v21)
    {
      break;
    }

    v24 = v4;
LABEL_10:
    v25 = *(v51 + 48);
    v26 = v49;
    v43 = *(v49 + 72);
    v27 = v46;
    (*(v49 + 16))(v46, v25 + v43 * (__clz(__rbit64(v21)) | (v15 << 6)), v6);
    v28 = *(v26 + 32);
    v29 = v6;
    v30 = v52;
    v31 = v29;
    v28(v52, v27);
    v32 = v47(v30);
    v4 = v24;
    if (v24)
    {
      (*v44)(v52, v31);
      v40 = v42;

      return v40;
    }

    v21 &= v21 - 1;
    if (v32)
    {
      v6 = v31;
      (v28)(v41, v52, v31);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DAE02224(0, *(v33 + 16) + 1, 1);
        v6 = v31;
        v33 = v53;
      }

      v36 = *(v33 + 16);
      v35 = *(v33 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v39 = v36 + 1;
        v42 = v36;
        sub_1DAE02224(v35 > 1, v36 + 1, 1);
        v37 = v39;
        v36 = v42;
        v6 = v31;
        v33 = v53;
      }

      *(v33 + 16) = v37;
      v38 = *(v49 + 80);
      v42 = v33;
      result = (v28)(v33 + ((v38 + 32) & ~v38) + v36 * v43, v41, v6);
    }

    else
    {
      v6 = v31;
      result = (*v44)(v52, v31);
    }
  }

  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v22)
    {

      return v42;
    }

    v21 = *(v17 + 8 * v15);
    ++v23;
    if (v21)
    {
      v24 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE12A64(uint64_t a1, char *a2, uint64_t a3)
{
  v83 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v77 = &v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v84 = *(v14 - 8);
  v15 = *(v84 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v75 - v18;
  v19 = sub_1DAED18CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v76 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v79 = &v75 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v75 - v26;
  v28 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
  v29 = a2;
  v30 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry];

  sub_1DAED0C8C();

  sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
  v31 = a3;
  LOBYTE(v30) = sub_1DAED1C9C();
  v81 = *(v20 + 8);
  v82 = v20 + 8;
  v81(v27, v19);
  if (v30)
  {
    v76 = v29;
    v77 = v28;
    v32 = v84;
    v33 = v78;
    (*(v84 + 16))(v78, v83, v14);
    v34 = v79;
    (*(v20 + 16))(v79, v31, v19);
    v35 = sub_1DAECEDCC();
    v36 = sub_1DAED203C();
    v37 = v32;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v86 = v39;
      *v38 = 136446466;
      LODWORD(v85) = v36;
      v40 = sub_1DAED0E1C();
      v42 = v41;
      (*(v37 + 8))(v33, v14);
      v43 = sub_1DAD6482C(v40, v42, &v86);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2082;
      sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
      v44 = sub_1DAED287C();
      v46 = v45;
      v81(v34, v19);
      v47 = sub_1DAD6482C(v44, v46, &v86);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_1DAD61000, v35, v85, "[%{public}s] Discarding content due to data protection level changing to: %{public}s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v39, -1, -1);
      MEMORY[0x1E127F100](v38, -1, -1);
    }

    else
    {

      v81(v34, v19);
      (*(v32 + 8))(v33, v14);
    }

    v69 = v76;
    v68 = v77;
    v70 = *&v77[v76];
    v71 = sub_1DAED1BEC();
    (*(*(v71 - 8) + 56))(v80, 1, 1, v71);

    sub_1DAED0CEC();

    v72 = *&v68[v69];

    sub_1DAED0CAC();
  }

  else
  {
    v48 = v84;
    v49 = *&v29[v28];

    sub_1DAED0CDC();

    v50 = sub_1DAED1BEC();
    LODWORD(v49) = (*(*(v50 - 8) + 48))(v12, 1, v50);
    result = sub_1DAD64398(v12, &qword_1ECC08D70, &unk_1DAED8710);
    if (v49 == 1)
    {
      v52 = v75;
      v53 = v83;
      (*(v48 + 16))(v75, v83, v14);
      v54 = v76;
      (*(v20 + 16))(v76, a3, v19);
      v55 = sub_1DAECEDCC();
      v56 = sub_1DAED203C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v86 = v80;
        *v57 = 136446466;
        v58 = sub_1DAED0E1C();
        v60 = v59;
        (*(v48 + 8))(v52, v14);
        v61 = sub_1DAD6482C(v58, v60, &v86);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2082;
        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v62 = sub_1DAED287C();
        v64 = v63;
        v81(v54, v19);
        v65 = sub_1DAD6482C(v62, v64, &v86);

        *(v57 + 14) = v65;
        _os_log_impl(&dword_1DAD61000, v55, v56, "[%{public}s] Loading content again due to data protection level being available: %{public}s", v57, 0x16u);
        v66 = v80;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v66, -1, -1);
        v67 = v57;
        v53 = v83;
        MEMORY[0x1E127F100](v67, -1, -1);
      }

      else
      {

        v81(v54, v19);
        (*(v48 + 8))(v52, v14);
      }

      v73 = type metadata accessor for ActivityContentDidChangeEvent();
      v74 = v77;
      (*(*(v73 - 8) + 56))(v77, 1, 1, v73);
      sub_1DAE13360(v53, v74);
      return sub_1DAD64398(v74, &qword_1ECC08D68, &unk_1DAED8020);
    }
  }

  return result;
}

uint64_t sub_1DAE13360(uint64_t a1, id a2)
{
  v5 = sub_1DAED09DC();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v48 = *(v11 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v43 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v46 = v17;
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - v18;
  os_unfair_lock_assert_owner(*(*(v2 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock) + 16));
  v20 = *(v14 + 16);
  v51 = a1;
  v20(v19, a1, v13);
  v52 = v2;
  v21 = sub_1DAECEDCC();
  v22 = sub_1DAED200C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = a2;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = sub_1DAED0E1C();
    v44 = v20;
    v28 = v27;
    (*(v14 + 8))(v19, v13);
    v29 = sub_1DAD6482C(v26, v28, aBlock);
    v20 = v44;

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1DAD61000, v21, v22, "Attempting to load content for key: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v30 = v25;
    a2 = v45;
    MEMORY[0x1E127F100](v30, -1, -1);
    MEMORY[0x1E127F100](v23, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  v31 = v52;
  v45 = *(v52 + 16);
  v32 = v47;
  v20(v47, v51, v13);
  v33 = v50;
  sub_1DAD6495C(a2, v50, &qword_1ECC08D68, &unk_1DAED8020);
  v34 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v35 = (v46 + *(v48 + 80) + v34) & ~*(v48 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  (*(v14 + 32))(v36 + v34, v32, v13);
  sub_1DAD7C48C(v33, v36 + v35, &qword_1ECC08D68, &unk_1DAED8020);
  aBlock[4] = sub_1DAE16A78;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_9;
  v37 = _Block_copy(aBlock);
  v38 = v45;

  v39 = v53;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v59 = MEMORY[0x1E69E7CC0];
  sub_1DAE167B4(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v40 = v56;
  v41 = v58;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v39, v40, v37);
  _Block_release(v37);

  (*(v57 + 8))(v40, v41);
  (*(v54 + 8))(v39, v55);
}

void sub_1DAE13994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v271 = a3;
  v281 = a2;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v273 = *(v264 - 8);
  v4 = *(v273 + 64);
  v5 = MEMORY[0x1EEE9AC00](v264);
  v256 = &v238 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v263 = &v238 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v240 = &v238 - v9;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v10 = *(*(v244 - 8) + 64);
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v238 - v11;
  v12 = sub_1DAECDCEC();
  v279 = *(v12 - 8);
  v13 = *(v279 + 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v243 = &v238 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v239 = &v238 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v250 = &v238 - v18;
  v261 = sub_1DAECDBFC();
  v260 = *(v261 - 8);
  v19 = *(v260 + 64);
  v20 = MEMORY[0x1EEE9AC00](v261);
  v262 = &v238 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v242 = &v238 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v266 = &v238 - v24;
  v275 = sub_1DAED18CC();
  v277 = *(v275 - 1);
  v25 = *(v277 + 64);
  v26 = MEMORY[0x1EEE9AC00](v275);
  v272 = &v238 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v276 = &v238 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v270 = (&v238 - v31);
  v269 = type metadata accessor for ActivityContentDidChangeEvent();
  v267 = *(v269 - 8);
  v32 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v259 = &v238 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v241 = &v238 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v248 = &v238 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v249 = &v238 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v255 = &v238 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v238 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v238 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v252 = &v238 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v254 = &v238 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v268 = &v238 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v238 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v238 - v60;
  v62 = sub_1DAED1BEC();
  v253 = *(v62 - 8);
  v64 = v253 + 56;
  v63 = *(v253 + 56);
  v65 = 1;
  v280 = v61;
  v63(v61, 1, 1, v62);
  v278 = v59;
  v258 = v62;
  v247 = v64;
  v246 = v63;
  v63(v59, 1, 1, v62);
  v66 = *(v279 + 7);
  v287 = 0;
  v288 = 0;
  v283 = v48;
  v66(v48, 1, 1, v12);
  v265 = v12;
  v66(v46, 1, 1, v12);
  v274 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock;
  v67 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
  v68 = *(v67 + 16);

  os_unfair_lock_lock(v68);
  v69 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  swift_beginAccess();
  v282 = a1;
  v70 = *(a1 + v69);
  if (*(v70 + 16))
  {
    v71 = *(a1 + v69);

    v72 = v281;
    v73 = sub_1DAECB0A8(v281);
    if (v74)
    {
      v251 = v69;
      v75 = *(*(v70 + 56) + 8 * v73);

      v76 = v270;
      sub_1DAD6495C(v271, v270, &qword_1ECC08D68, &unk_1DAED8020);
      v77 = v269;
      v78 = (*(v267 + 48))(v76, 1, v269);
      v257 = v66;
      if (v78 == 1)
      {
        sub_1DAD64398(v46, &qword_1ECC07CE8, &qword_1DAED6F60);
        v79 = &qword_1ECC08D68;
        v80 = &unk_1DAED8020;
        v81 = v76;
      }

      else
      {
        v85 = v259;
        sub_1DAE16B60(v76, v259);
        v86 = *(v75 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry);
        v87 = v46;
        v88 = *(v85 + *(v77 + 20));

        v46 = v87;
        sub_1DAED0D0C();

        sub_1DAE16BC4(v85);
        v79 = &qword_1ECC07CE8;
        v80 = &qword_1DAED6F60;
        v81 = v87;
      }

      sub_1DAD64398(v81, v79, v80);
      v89 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
      swift_beginAccess();
      v271 = v46;
      sub_1DAD6495C(v75 + v89, v46, &qword_1ECC07CE8, &qword_1DAED6F60);
      v90 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
      v91 = *(v75 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry);

      v92 = v268;
      sub_1DAED0CDC();

      v93 = v280;
      sub_1DAD64398(v280, &qword_1ECC08D70, &unk_1DAED8710);
      sub_1DAD7C48C(v92, v93, &qword_1ECC08D70, &unk_1DAED8710);
      v84 = v282;
      v94 = *(v282 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 32);
      __swift_project_boxed_opaque_existential_1((v282 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor), *(v282 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24));
      v95 = v276;
      sub_1DAED127C();
      v96 = *(v75 + v90);

      v97 = v272;
      sub_1DAED0C8C();

      sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
      v98 = v275;
      LOBYTE(v96) = sub_1DAED1C9C();
      v99 = v277 + 8;
      v270 = *(v277 + 8);
      (v270)(v97, v98);
      if (v96)
      {
        v284 = 0;
        v285 = 0xE000000000000000;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](0xD00000000000003BLL, 0x80000001DAEE2A80);
        v100 = *(v75 + v90);

        sub_1DAED0C8C();

        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v101 = sub_1DAED287C();
        v269 = v90;
        MEMORY[0x1E127DA50](v101);

        v277 = v99;
        (v270)(v97, v98);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v102 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v102);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v104 = v284;
        v103 = v285;
        v105 = *(v75 + v269);

        sub_1DAED0CAC();

        v106 = sub_1DAECEDCC();
        v107 = sub_1DAED201C();

        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v284 = v109;
          *v108 = 136446210;
          v110 = sub_1DAD6482C(v104, v103, &v284);

          *(v108 + 4) = v110;
          _os_log_impl(&dword_1DAD61000, v106, v107, "%{public}s", v108, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v109);
          v111 = v109;
          v84 = v282;
          MEMORY[0x1E127F100](v111, -1, -1);
          MEMORY[0x1E127F100](v108, -1, -1);
        }

        else
        {
        }

        (v270)(v276, v275);
        v65 = 0;
        v82 = 1;
        v83 = v283;
        v72 = v281;
        v46 = v271;
        v66 = v257;
        v69 = v251;
      }

      else
      {
        (v270)(v95, v98);

        v65 = 1;
        v82 = 1;
        v83 = v283;
        v46 = v271;
        v66 = v257;
        v69 = v251;
        v72 = v281;
      }
    }

    else
    {

      v82 = 0;
      v84 = v282;
      v83 = v283;
    }
  }

  else
  {
    v82 = 0;
    v84 = v282;
    v83 = v283;
    v72 = v281;
  }

  os_unfair_lock_unlock(*(v67 + 16));

  if (!v82 || !v65)
  {
    sub_1DAD64398(v46, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v278, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD64398(v280, &qword_1ECC08D70, &unk_1DAED8710);
    v122 = v83;
LABEL_47:
    sub_1DAD64398(v122, &qword_1ECC07CE8, &qword_1DAED6F60);
    return;
  }

  v251 = v69;
  v257 = v66;
  v271 = v46;
  v112 = (v84 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader);
  v113 = *(v84 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader + 32);
  __swift_project_boxed_opaque_existential_1((v84 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader), *(v84 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__cacheReader + 24));
  v114 = v266;
  sub_1DAED0FCC();
  v277 = 0;
  v115 = v255;
  sub_1DAECDBEC();
  sub_1DAD84E40(v115, v283);
  v116 = v254;
  sub_1DAD6495C(v280, v254, &qword_1ECC08D70, &unk_1DAED8710);
  v117 = (*(v253 + 48))(v116, 1, v258);
  sub_1DAD64398(v116, &qword_1ECC08D70, &unk_1DAED8710);
  if (v117 != 1)
  {
    v118 = v249;
    sub_1DAD6495C(v271, v249, &qword_1ECC07CE8, &qword_1DAED6F60);
    v119 = v279;
    v120 = *(v279 + 6);
    v121 = v265;
    if (v120(v118, 1, v265) == 1)
    {
      sub_1DAD64398(v118, &qword_1ECC07CE8, &qword_1DAED6F60);
LABEL_27:
      v114 = v266;
      goto LABEL_28;
    }

    v123 = v119;
    v124 = *(v119 + 32);
    v125 = v250;
    v272 = v124;
    (v124)(v250, v118, v121);
    v126 = *(v123 + 16);
    v127 = v120;
    v128 = v248;
    v276 = (v123 + 16);
    v275 = v126;
    (v126)(v248, v125, v121);
    v257(v128, 0, 1, v121);
    v129 = *(v244 + 48);
    v130 = v245;
    sub_1DAD6495C(v128, v245, &qword_1ECC07CE8, &qword_1DAED6F60);
    v131 = v265;
    sub_1DAD6495C(v283, v130 + v129, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((v127)(v130, 1, v131) == 1)
    {
      sub_1DAD64398(v128, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((v127)(v130 + v129, 1, v131) == 1)
      {
        v132 = v127;
        sub_1DAD64398(v130, &qword_1ECC07CE8, &qword_1DAED6F60);
        v133 = v250;
LABEL_50:
        v270 = v132;
        v196 = v273;
        v197 = v240;
        v198 = v133;
        (*(v273 + 16))(v240, v281, v264);
        (v275)(v243, v198, v131);
        v199 = v260;
        v200 = v242;
        v201 = v266;
        v202 = v131;
        v203 = v261;
        (*(v260 + 16))(v242, v266, v261);
        v204 = sub_1DAECEDCC();
        v205 = sub_1DAED203C();
        if (os_log_type_enabled(v204, v205))
        {
          LODWORD(v282) = v205;
          v206 = swift_slowAlloc();
          v281 = swift_slowAlloc();
          v286[0] = v281;
          *v206 = 136446978;
          v207 = v264;
          v208 = sub_1DAED0E1C();
          v210 = v209;
          (*(v196 + 8))(v197, v207);
          v211 = sub_1DAD6482C(v208, v210, v286);

          *(v206 + 4) = v211;
          *(v206 + 12) = 2082;
          sub_1DAE167B4(&qword_1EE00BCF0, MEMORY[0x1E6969530]);
          v212 = v243;
          v213 = sub_1DAED287C();
          v215 = v214;
          v216 = *(v279 + 1);
          v216(v212, v202);
          v217 = sub_1DAD6482C(v213, v215, v286);

          *(v206 + 14) = v217;
          *(v206 + 22) = 2082;
          v218 = v283;
          swift_beginAccess();
          v219 = (v270)(v218, 1, v202);
          v279 = v216;
          if (v219)
          {
            v220 = 0xE300000000000000;
            v221 = 7104878;
          }

          else
          {
            v224 = v202;
            v225 = v239;
            (v275)(v239, v218, v202);
            v226 = sub_1DAECDC2C();
            v220 = v227;
            v216(v225, v224);
            v221 = v226;
          }

          v228 = v250;
          v229 = v242;
          v230 = sub_1DAD6482C(v221, v220, v286);

          *(v206 + 24) = v230;
          *(v206 + 32) = 2082;
          sub_1DAE167B4(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
          v231 = v261;
          v232 = sub_1DAED287C();
          v234 = v233;
          v235 = *(v260 + 8);
          v235(v229, v231);
          v236 = sub_1DAD6482C(v232, v234, v286);

          *(v206 + 34) = v236;
          _os_log_impl(&dword_1DAD61000, v204, v282, "Ignoring reloading contents for key because it's the exact same as we already have loaded: %{public}s (cachedLastModifiedDate: %{public}s, lastModifiedDate: %{public}s, url: %{public}s", v206, 0x2Au);
          v237 = v281;
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v237, -1, -1);
          MEMORY[0x1E127F100](v206, -1, -1);

          v279(v228, v265);
          v235(v266, v231);
        }

        else
        {

          v222 = *(v199 + 8);
          v222(v200, v203);
          v223 = *(v279 + 1);
          v223(v243, v202);
          (*(v196 + 8))(v197, v264);
          v223(v250, v202);
          v222(v201, v203);
        }

        sub_1DAD64398(v271, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v278, &qword_1ECC08D70, &unk_1DAED8710);
        sub_1DAD64398(v280, &qword_1ECC08D70, &unk_1DAED8710);
        v122 = v283;
        goto LABEL_47;
      }
    }

    else
    {
      v134 = v241;
      sub_1DAD6495C(v130, v241, &qword_1ECC07CE8, &qword_1DAED6F60);
      if ((v127)(v130 + v129, 1, v131) != 1)
      {
        v132 = v127;
        v192 = v130 + v129;
        v193 = v239;
        (v272)(v239, v192, v131);
        sub_1DAE167B4(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
        v194 = v134;
        v195 = sub_1DAED1CAC();
        v135 = *(v279 + 1);
        v135(v193, v131);
        sub_1DAD64398(v248, &qword_1ECC07CE8, &qword_1DAED6F60);
        v135(v194, v265);
        v131 = v265;
        sub_1DAD64398(v245, &qword_1ECC07CE8, &qword_1DAED6F60);
        v133 = v250;
        if (v195)
        {
          goto LABEL_50;
        }

LABEL_26:
        v135(v133, v131);
        v72 = v281;
        v84 = v282;
        goto LABEL_27;
      }

      sub_1DAD64398(v248, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v279 + 1))(v134, v131);
    }

    sub_1DAD64398(v130, &qword_1ECC087B0, qword_1DAEDCBF0);
    v135 = *(v279 + 1);
    v133 = v250;
    goto LABEL_26;
  }

LABEL_28:
  v136 = v112[4];
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  v137 = v252;
  v138 = v277;
  sub_1DAED0FDC();
  if (!v138)
  {
    (*(v260 + 8))(v114, v261);
    sub_1DAD64398(v271, &qword_1ECC07CE8, &qword_1DAED6F60);
    v175 = v278;
    sub_1DAD64398(v278, &qword_1ECC08D70, &unk_1DAED8710);
    v246(v137, 0, 1, v258);
    sub_1DAD7C48C(v137, v175, &qword_1ECC08D70, &unk_1DAED8710);
    goto LABEL_45;
  }

  (*(v260 + 8))(v114, v261);
  v139 = v138;
  v138 = 0;
  v140 = v257;
  sub_1DAD64398(v271, &qword_1ECC07CE8, &qword_1DAED6F60);
  v141 = v283;
  sub_1DAD64398(v283, &qword_1ECC07CE8, &qword_1DAED6F60);
  v140(v141, 1, 1, v265);
  v142 = *(v84 + v274);
  v143 = *(v142 + 16);

  os_unfair_lock_lock(v143);
  v144 = *(v84 + v251);
  if (!*(v144 + 16))
  {
    v147 = v72;
LABEL_34:
    v150 = 0;
    goto LABEL_35;
  }

  v145 = *(v84 + v251);

  v146 = sub_1DAECB0A8(v72);
  v147 = v72;
  if ((v148 & 1) == 0)
  {

    goto LABEL_34;
  }

  v149 = *(*(v144 + 56) + 8 * v146);

  v150 = *(v149 + 16);

LABEL_35:
  os_unfair_lock_unlock(*(v142 + 16));

  swift_getErrorValue();
  v151 = sub_1DADBBC8C(v286[2]);
  v153 = v152;
  v154 = v112[4];
  __swift_project_boxed_opaque_existential_1(v112, v112[3]);
  v155 = v262;
  sub_1DAED0FCC();
  v284 = 0;
  v285 = 0xE000000000000000;
  sub_1DAED256C();

  v284 = 0x727520676E697355;
  v285 = 0xEB0000000060206CLL;
  sub_1DAE167B4(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
  v156 = v261;
  v157 = sub_1DAED287C();
  v158 = v155;
  MEMORY[0x1E127DA50](v157);

  MEMORY[0x1E127DA50](0x202E2E2E2060, 0xE600000000000000);
  MEMORY[0x1E127DA50](v151, v153);

  v159 = v285;
  v279 = v284;
  (*(v260 + 8))(v158, v156);
  v160 = *(v273 + 16);
  v72 = v147;
  v161 = v263;
  if (v150)
  {
    v162 = v256;
    v163 = v264;
    v160(v256, v72, v264);

    v164 = sub_1DAECEDCC();
    v165 = sub_1DAED201C();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v284 = v277;
      *v166 = 136446466;
      sub_1DAD64B94(&qword_1EE0057A0, &unk_1ECC0A9C0, &unk_1DAED8030);
      v167 = sub_1DAED287C();
      v168 = v139;
      v170 = v169;
      (*(v273 + 8))(v162, v163);
      v171 = sub_1DAD6482C(v167, v170, &v284);
      v139 = v168;
      v138 = 0;

      *(v166 + 4) = v171;
      *(v166 + 12) = 2082;
      v172 = v279;
      *(v166 + 14) = sub_1DAD6482C(v279, v159, &v284);
      _os_log_impl(&dword_1DAD61000, v164, v165, "Content load failed: unable to find or unarchive file for key: %{public}s. The session may still produce one shortly. Error: %{public}s", v166, 0x16u);
      v173 = v277;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v173, -1, -1);
      v174 = v166;
      v72 = v281;
      MEMORY[0x1E127F100](v174, -1, -1);

      v175 = v278;
    }

    else
    {

      (*(v273 + 8))(v162, v163);
      v175 = v278;
      v172 = v279;
    }

    v284 = 0;
    v285 = 0xE000000000000000;
    sub_1DAED256C();

    v284 = 0xD000000000000030;
    v285 = 0x80000001DAEE18B0;
  }

  else
  {
    v176 = v264;
    v160(v263, v147, v264);

    v177 = sub_1DAECEDCC();
    v178 = sub_1DAED203C();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v277 = 0;
      v181 = v180;
      v284 = v180;
      *v179 = 136446466;
      v182 = sub_1DAED0E1C();
      v183 = v139;
      v185 = v184;
      (*(v273 + 8))(v161, v176);
      v186 = sub_1DAD6482C(v182, v185, &v284);
      v139 = v183;

      *(v179 + 4) = v186;
      *(v179 + 12) = 2082;
      v172 = v279;
      *(v179 + 14) = sub_1DAD6482C(v279, v159, &v284);
      _os_log_impl(&dword_1DAD61000, v177, v178, "Content load failed: initial search for an existing archive was not found; session will be creating the content on demand: %{public}s: %{public}s", v179, 0x16u);
      swift_arrayDestroy();
      v187 = v181;
      v138 = v277;
      MEMORY[0x1E127F100](v187, -1, -1);
      v188 = v179;
      v72 = v281;
      MEMORY[0x1E127F100](v188, -1, -1);

      v175 = v278;
    }

    else
    {

      (*(v273 + 8))(v161, v176);
      v175 = v278;
      v172 = v279;
    }

    v284 = 0;
    v285 = 0xE000000000000000;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000031, 0x80000001DAEE1870);
  }

  MEMORY[0x1E127DA50](v172, v159);

  v287 = v284;
  v288 = v285;
  v84 = v282;
LABEL_45:
  v189 = *(v84 + v274);
  v190 = *(v189 + 16);

  os_unfair_lock_lock(v190);
  v191 = v283;
  sub_1DAE15B04(v84, v72, v175, v283, &v287);
  if (!v138)
  {

    os_unfair_lock_unlock(*(v189 + 16));

    sub_1DAD64398(v175, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD64398(v280, &qword_1ECC08D70, &unk_1DAED8710);
    v122 = v191;
    goto LABEL_47;
  }

  os_unfair_lock_unlock(*(v189 + 16));
  __break(1u);
}

uint64_t sub_1DAE15B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v91 = a4;
  v92 = a5;
  v93 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v89 = *(v11 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v81 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v81 - v19;
  v98 = sub_1DAED18CC();
  v20 = *(v98 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v98);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v95 = &v81 - v25;
  v26 = OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock_storage;
  result = swift_beginAccess();
  v28 = *(a1 + v26);
  if (*(v28 + 16))
  {
    v29 = *(a1 + v26);

    v30 = sub_1DAECB0A8(a2);
    if (v31)
    {
      v82 = a2;
      v83 = v11;
      v84 = v5;
      v32 = *(*(v28 + 56) + 8 * v30);

      v33 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 32);
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor), *(a1 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__dataProtectionMonitor + 24));
      v34 = v95;
      sub_1DAED127C();
      v35 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry;
      v87 = v32;
      v36 = *(v32 + OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_entry);

      sub_1DAED0C8C();

      sub_1DAE167B4(&qword_1EE00AAF0, MEMORY[0x1E69859A8]);
      v37 = v98;
      v38 = sub_1DAED1C9C();
      v39 = *(v20 + 8);
      v86 = v20 + 8;
      v39(v24, v37);
      v85 = v39;
      if (v38)
      {
        v96 = 0;
        v97 = 0xE000000000000000;
        v40 = v39;
        sub_1DAED256C();
        MEMORY[0x1E127DA50](0xD000000000000041, 0x80000001DAEE2AC0);
        v41 = *(v87 + v35);

        sub_1DAED0C8C();

        sub_1DAE167B4(&unk_1EE00AAD0, MEMORY[0x1E69859A8]);
        v42 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v42);

        v40(v24, v37);
        MEMORY[0x1E127DA50](0xD00000000000004CLL, 0x80000001DAEE1930);
        v43 = v34;
        v44 = sub_1DAED287C();
        MEMORY[0x1E127DA50](v44);

        MEMORY[0x1E127DA50](41, 0xE100000000000000);
        v46 = v96;
        v45 = v97;
        v47 = v87;
        v48 = *(v87 + v35);
        v49 = sub_1DAED1BEC();
        (*(*(v49 - 8) + 56))(v94, 1, 1, v49);

        sub_1DAED0CEC();

        v50 = *(v47 + v35);

        sub_1DAED0CAC();

        v51 = sub_1DAECEDCC();
        v52 = sub_1DAED201C();

        v53 = os_log_type_enabled(v51, v52);
        v54 = v37;
        v55 = v43;
        v56 = v85;
        if (v53)
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v96 = v58;
          *v57 = 136446210;
          v59 = sub_1DAD6482C(v46, v45, &v96);

          *(v57 + 4) = v59;
          _os_log_impl(&dword_1DAD61000, v51, v52, "%{public}s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v58);
          MEMORY[0x1E127F100](v58, -1, -1);
          MEMORY[0x1E127F100](v57, -1, -1);

          return (v85)(v55, v54);
        }

        else
        {

          return v56(v43, v54);
        }
      }

      else
      {
        v81 = v35;
        *(v87 + 16) = 1;
        sub_1DAD6495C(v93, v18, &qword_1ECC08D70, &unk_1DAED8710);
        v60 = sub_1DAED1BEC();
        v61 = (*(*(v60 - 8) + 48))(v18, 1, v60);
        sub_1DAD64398(v18, &qword_1ECC08D70, &unk_1DAED8710);
        if (v61 != 1)
        {
          v63 = v88;
          v62 = v89;
          v64 = v83;
          (*(v89 + 16))(v88, v82, v83);
          v65 = sub_1DAECEDCC();
          v66 = sub_1DAED203C();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v96 = v68;
            *v67 = 136446210;
            v69 = sub_1DAED0E1C();
            v71 = v70;
            (*(v62 + 8))(v63, v64);
            v72 = sub_1DAD6482C(v69, v71, &v96);

            *(v67 + 4) = v72;
            _os_log_impl(&dword_1DAD61000, v65, v66, "Content load successful for key: %{public}s", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v68);
            MEMORY[0x1E127F100](v68, -1, -1);
            MEMORY[0x1E127F100](v67, -1, -1);
          }

          else
          {

            (*(v62 + 8))(v63, v64);
          }
        }

        v73 = v87;
        v74 = v81;
        v75 = *(v87 + v81);
        sub_1DAD6495C(v93, v94, &qword_1ECC08D70, &unk_1DAED8710);

        sub_1DAED0CEC();

        v76 = v90;
        sub_1DAD6495C(v91, v90, &qword_1ECC07CE8, &qword_1DAED6F60);
        v77 = OBJC_IVAR____TtC14WidgetRenderer20ActivityArchiveEntry_archiveLastModifiedDate;
        swift_beginAccess();
        sub_1DAD84E40(v76, v73 + v77);
        swift_endAccess();
        v78 = *(v73 + v74);
        v80 = *v92;
        v79 = v92[1];

        sub_1DAED0CAC();

        return (v85)(v95, v98);
      }
    }

    else
    {
    }
  }

  return result;
}