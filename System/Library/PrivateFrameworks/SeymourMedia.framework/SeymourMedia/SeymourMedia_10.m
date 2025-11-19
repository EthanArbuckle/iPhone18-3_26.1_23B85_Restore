CGSize __swiftcall CGSize.withRoundedUpHeight()()
{
  v1 = ceil(v0);
  result.height = v1;
  return result;
}

double CGSize.roundToScale(_:)(double a1, double a2, double a3)
{
  v6 = objc_opt_self();
  [v6 roundValue:a2 toScale:a1];
  v8 = v7;
  [v6 roundValue:a3 toScale:a1];
  return v8;
}

CGSize __swiftcall CGSize.roundToViewScale(_:)(UIView *a1)
{
  v3 = sub_20C49BAF4(a1, &selRef_roundValue_toScaleOfView_, v1, v2);
  result.height = v4;
  result.width = v3;
  return result;
}

CGSize __swiftcall CGSize.roundToScreenScale(_:)(UIScreen a1)
{
  v3 = sub_20C49BAF4(a1.super.isa, &selRef_roundValue_toScaleOfScreen_, v1, v2);
  result.height = v4;
  result.width = v3;
  return result;
}

uint64_t static MediaPlayerSeekFinished.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_20C5719E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20C571A44(a1);
  }
}

void sub_20C571A44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v8 = sub_20C4969C0(*MEMORY[0x277CE6038]);
    if (v9)
    {
      sub_20C479AA8(*(a1 + 56) + 32 * v8, v17);
      if (swift_dynamicCast())
      {
        sub_20C59FE5C();
        sub_20C5A01AC();
        (*(v5 + 8))(v7, v4);
        v10 = sub_20C5A098C();
        v12 = v11;
        v14 = v13;
        sub_20C477580(v2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator, v17);
        v15 = *(*__swift_project_boxed_opaque_existential_1(v17, v17[3]) + 32);
        os_unfair_lock_lock(v15 + 25);
        LOBYTE(v18) = 1;
        sub_20C49E678(&v15[4], v10, v12, v14, 0x100000000);
        os_unfair_lock_unlock(v15 + 25);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }
    }
  }
}

void sub_20C571C3C()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v0 + v1, &v13);
  if (v18)
  {
    if (v18 == 1)
    {
      v2 = v13;

      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      __swift_destroy_boxed_opaque_existential_1Tm(&v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v3 = [v2 playbackCoordinator];
      type metadata accessor for CMClock(0);
      v4 = sub_20C5A084C();
      v5 = sub_20C5A085C();
      v7 = v6;
      v9 = v8;

      v13 = v5;
      v14 = v7;
      v15[0] = v9;
      [v3 expectedItemTimeAtHostTime_];

      CMTime.elapsedTime.getter(v10, v11, v12);
    }
  }

  else
  {
    sub_20C57BBC4(&v13);
  }
}

void MediaPlaying.expectedElapsedTime.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 playbackCoordinator];
    type metadata accessor for CMClock(0);
    v5 = sub_20C5A084C();
    v6 = sub_20C5A085C();
    v8 = v7;
    v10 = v9;

    v14[0] = v6;
    v14[1] = v8;
    v14[2] = v10;
    [v4 expectedItemTimeAtHostTime_];

    CMTime.elapsedTime.getter(v11, v12, v13);
  }
}

uint64_t MediaPlayer.isReadyToPlay.getter()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20C571F18@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C561B84;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C487984(v4);
}

uint64_t sub_20C571FB8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C57C738;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_20C487984(v3);
  return sub_20C47E6BC(v8);
}

uint64_t MediaPlayer.onReadyToPlay.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v2 = *v1;
  sub_20C487984(*v1);
  return v2;
}

uint64_t MediaPlayer.onReadyToPlay.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20C47E6BC(v6);
}

id MediaPlayer.__allocating_init(dependencies:workout:startTime:sessionOrigin:playContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v38 = a5;
  v37 = a4;
  v40 = a3;
  v42 = a2;
  v44 = a1;
  v41 = sub_20C59DE3C();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C59F6AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v7;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator] = 0;
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncSuspension] = 0;
  v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay] = 0;
  v15 = &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay];
  *v15 = 0;
  v15[1] = 0;
  v16 = *(v11 + 104);
  v16(v13, *MEMORY[0x277D4EE30], v10);
  *&v47[0] = 0;
  BYTE8(v47[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F18);
  sub_20C573008(&qword_27C7C5F20);
  sub_20C573008(&qword_27C7C5F28);
  sub_20C59F3DC();
  v16(v13, *MEMORY[0x277D4EED0], v10);
  LOBYTE(v47[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F38);
  sub_20C5730C8(&qword_27C7C5F40, sub_20C573074);
  sub_20C5730C8(&unk_27C7C5F50, sub_20C5078F8);
  sub_20C59F3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F60);
  sub_20C59D9EC();
  sub_20C4780E8(v47, &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F70);
  sub_20C59D9EC();
  sub_20C4780E8(v47, &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_analyticsReporter]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F80);
  sub_20C59D9EC();
  v17 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient;
  sub_20C4780E8(v47, &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90);
  sub_20C59D9EC();
  v18 = &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub];
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub] = v47[0];
  sub_20C59D9EC();
  v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_platform] = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5FA8);
  sub_20C59D9EC();
  sub_20C4780E8(v47, &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor]);
  v19 = *(v43 + 16);
  v20 = v36;
  v19(v36, v42, v41);
  v22 = *v18;
  v21 = v18[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4C40);
  sub_20C59D9EC();
  sub_20C477580(&v14[v17], v46);
  LODWORD(v13) = sub_20C59EC4C();
  type metadata accessor for MetricPlaybackTracker(0);
  swift_allocObject();
  v23 = sub_20C4DF224(v20, v22, v21, v47, v46, v13, v37, v38, a6);
  swift_unknownObjectRelease();
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_metricPlaybackTracker] = v23;
  if (qword_27C7C40B8 != -1)
  {
    swift_once();
  }

  v24 = *&qword_27C7C45B8;
  if (qword_27C7C40C8 != -1)
  {
    swift_once();
  }

  v25 = *&qword_27C7C45C8;
  sub_20C479154(0, &qword_2810F3D90);
  v26 = sub_20C5A08EC();
  v27 = type metadata accessor for MediaPlayerTimeJumpCoordinator();
  swift_allocObject();
  v28 = sub_20C4A08A4(v26, v24, v25);

  v29 = &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator];
  v29[3] = v27;
  v29[4] = &off_28236C788;
  *v29 = v28;
  v30 = v41;
  v31 = v42;
  v19(&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_workout], v42, v41);
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_startTime] = a6;
  v32 = v40;
  sub_20C57BB1C(v40, &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_sessionOrigin]);
  v33 = &v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *(v33 + 4) = 0u;
  *(v33 + 5) = 0u;
  *(v33 + 6) = 0u;
  *(v33 + 7) = 0u;
  *(v33 + 16) = 0;
  v33[136] = 2;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v14[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_subscriptionToken] = sub_20C59F75C();
  v45.receiver = v14;
  v45.super_class = v39;
  v34 = objc_msgSendSuper2(&v45, sel_init);

  sub_20C4EE66C(v32);
  (*(v43 + 8))(v31, v30);
  return v34;
}

id MediaPlayer.init(dependencies:workout:startTime:sessionOrigin:playContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v40 = a5;
  v39 = a4;
  v42 = a3;
  v43 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v9 = sub_20C59DE3C();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  MEMORY[0x28223BE20](v9);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59F6AC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator] = 0;
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncSuspension] = 0;
  v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay] = 0;
  v17 = &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay];
  *v17 = 0;
  v17[1] = 0;
  v18 = *(v13 + 104);
  v18(v16, *MEMORY[0x277D4EE30], v12, v14);
  *&v49[0] = 0;
  BYTE8(v49[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F18);
  sub_20C573008(&qword_27C7C5F20);
  sub_20C573008(&qword_27C7C5F28);
  sub_20C59F3DC();
  (v18)(v16, *MEMORY[0x277D4EED0], v12);
  LOBYTE(v49[0]) = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F38);
  sub_20C5730C8(&qword_27C7C5F40, sub_20C573074);
  sub_20C5730C8(&unk_27C7C5F50, sub_20C5078F8);
  sub_20C59F3DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F60);
  sub_20C59D9EC();
  sub_20C4780E8(v49, &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F70);
  sub_20C59D9EC();
  sub_20C4780E8(v49, &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_analyticsReporter]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F80);
  sub_20C59D9EC();
  v19 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient;
  sub_20C4780E8(v49, &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5F90);
  sub_20C59D9EC();
  v20 = &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub];
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub] = v49[0];
  sub_20C59D9EC();
  v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_platform] = v49[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5FA8);
  sub_20C59D9EC();
  sub_20C4780E8(v49, &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor]);
  v21 = *(v45 + 16);
  v22 = v38;
  v21(v38, v43, v44);
  v24 = *v20;
  v23 = v20[1];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4C40);
  sub_20C59D9EC();
  sub_20C477580(&v7[v19], v48);
  LODWORD(v16) = sub_20C59EC4C();
  type metadata accessor for MetricPlaybackTracker(0);
  swift_allocObject();
  v25 = sub_20C4DF224(v22, v24, v23, v49, v48, v16, v39, v40, a6);
  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_metricPlaybackTracker] = v25;
  if (qword_27C7C40B8 != -1)
  {
    swift_once();
  }

  v26 = *&qword_27C7C45B8;
  if (qword_27C7C40C8 != -1)
  {
    swift_once();
  }

  v27 = *&qword_27C7C45C8;
  sub_20C479154(0, &qword_2810F3D90);
  v28 = sub_20C5A08EC();
  v29 = type metadata accessor for MediaPlayerTimeJumpCoordinator();
  swift_allocObject();
  v30 = sub_20C4A08A4(v28, v26, v27);

  v31 = &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator];
  v31[3] = v29;
  v31[4] = &off_28236C788;
  *v31 = v30;
  v33 = v43;
  v32 = v44;
  v21(&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_workout], v43, v44);
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_startTime] = a6;
  v34 = v42;
  sub_20C57BB1C(v42, &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_sessionOrigin]);
  v35 = &v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  *(v35 + 2) = 0u;
  *(v35 + 3) = 0u;
  *(v35 + 4) = 0u;
  *(v35 + 5) = 0u;
  *(v35 + 6) = 0u;
  *(v35 + 7) = 0u;
  *(v35 + 16) = 0;
  v35[136] = 2;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v7[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_subscriptionToken] = sub_20C59F75C();
  v47.receiver = v7;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, sel_init);

  sub_20C4EE66C(v34);
  (*(v45 + 8))(v33, v32);
  return v36;
}

uint64_t sub_20C573008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5F18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C573074()
{
  result = qword_27C7C5F48;
  if (!qword_27C7C5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5F48);
  }

  return result;
}

uint64_t sub_20C5730C8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5F38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20C573140(uint64_t a1, void *a2)
{
  v159 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6088);
  v166 = *(v3 - 8);
  v167 = v3;
  MEMORY[0x28223BE20](v3);
  v165 = &v154 - v4;
  v180 = sub_20C59D4CC();
  v163 = *(v180 - 1);
  MEMORY[0x28223BE20](v180);
  v162 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A01CC();
  v173 = *(v6 - 8);
  v174 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v158 = &v154 - v10;
  MEMORY[0x28223BE20](v11);
  v171 = &v154 - v12;
  MEMORY[0x28223BE20](v13);
  v160 = &v154 - v14;
  v15 = sub_20C59FD9C();
  v176 = *(v15 - 8);
  v177 = v15;
  MEMORY[0x28223BE20](v15);
  v175 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_20C59E49C();
  v172 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44C0);
  MEMORY[0x28223BE20](v19 - 8);
  v164 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v154 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v154 - v25;
  v27 = sub_20C5A026C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = (&v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = sub_20C479154(0, &qword_2810F3D90);
  *v30 = sub_20C5A08EC();
  (*(v28 + 104))(v30, *MEMORY[0x277D85200], v27);
  v31 = sub_20C5A028C();
  (*(v28 + 8))(v30, v27);
  if ((v31 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v32 = [a2 asset];
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v156 = v32;
    v34 = v33;
    v170 = a2;
    v35 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_workout;
    v36 = v179;
    sub_20C59DDFC();
    v37 = v172;
    v38 = v178;
    v168 = *(v172 + 48);
    v169 = v172 + 48;
    if (v168(v26, 1, v178) == 1)
    {
      sub_20C477B50(v26, &qword_27C7C44C0);
      v39 = sub_20C59DD5C();
      v154 = v40;
      v155 = v39;
      v41 = v36;
    }

    else
    {
      v50 = sub_20C59E48C();
      v154 = v51;
      v155 = v50;
      v41 = v36;
      (*(v37 + 8))(v26, v38);
    }

    v52 = v35;
    sub_20C477580(v159, &v181);
    sub_20C477580(v41 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_accountProvider, &v202);
    sub_20C477580(v41 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_analyticsReporter, &v198);
    sub_20C477580(v41 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient, v197);
    sub_20C59DDFC();
    v53 = v168(v23, 1, v38);
    v54 = v34;
    v157 = v52;
    if (v53 == 1)
    {
      sub_20C477B50(v23, &qword_27C7C44C0);
      v55 = 0;
      v56 = 0;
    }

    else
    {
      (*(v37 + 32))(v18, v23, v38);
      v55 = sub_20C59E48C();
      v56 = v57;
      (*(v37 + 8))(v18, v38);
    }

    v58 = v175;
    sub_20C59FD8C();
    v59 = type metadata accessor for StreamingKeyProvisioner(0);
    v60 = objc_allocWithZone(v59);
    v61 = v177;
    v196[3] = v177;
    v196[4] = MEMORY[0x277D4F7C0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v196);
    (*(v176 + 16))(boxed_opaque_existential_1, v58, v61);
    v63 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyRequests;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F8);
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    *(v64 + 16) = MEMORY[0x277D84F98];
    *&v60[v63] = v64;
    v65 = &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_onUnrecoverableError];
    *v65 = 0;
    *(v65 + 1) = 0;
    type metadata accessor for StreamingKeyProvisioner.State(0);
    swift_storeEnumTagMultiPayload();
    sub_20C477580(&v181, &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_keyDeliveryClient]);
    v66 = &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_workoutIdentifier];
    v67 = v154;
    *v66 = v155;
    v66[1] = v67;
    sub_20C477580(&v198, &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_analyticsReporter]);
    *&v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_asset] = v34;
    sub_20C477580(v197, &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_assetClient]);
    v68 = &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_deviceIdentificationBehavior];
    *v68 = v55;
    v68[1] = v56;
    sub_20C477580(v196, &v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_backoffIntervalProvider]);
    sub_20C479154(0, &qword_27C7C6100);

    v69 = v156;
    v70 = sub_20C5A091C();
    v71 = [objc_opt_self() contentKeySessionWithKeySystem_];

    *&v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_contentKeySession] = v71;
    sub_20C59FE5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6108);
    swift_allocObject();
    *&v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_certificate] = sub_20C59F91C();
    if (v56)
    {

      sub_20C59FE5C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6130);
      swift_allocObject();
      v72 = sub_20C59F91C();
    }

    else
    {
      v72 = 0;
    }

    *&v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_playbackVoucher] = v72;
    sub_20C477580(&v202, v195);
    sub_20C477580(&v198, v194);
    v73 = v162;
    sub_20C59D4BC();
    type metadata accessor for StreamingKeyFailureEventReporter();
    v74 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_20C4780E8(v195, v74 + 112);
    sub_20C4780E8(v194, v74 + 152);
    (v163)[4](v74 + OBJC_IVAR____TtC12SeymourMedia32StreamingKeyFailureEventReporter_contentKeySessionIdentifier, v73, v180);
    *&v60[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_failureEventReporter] = v74;
    v193.receiver = v60;
    v193.super_class = v59;
    v75 = objc_msgSendSuper2(&v193, sel_init);
    sub_20C477580(&v181, v195);
    v76 = swift_allocObject();
    sub_20C4780E8(v195, v76 + 16);
    v77 = v75;

    sub_20C59F92C();

    if (*&v77[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_playbackVoucher])
    {
      sub_20C477580(&v181, v195);
      v78 = swift_allocObject();
      sub_20C4780E8(v195, v78 + 16);

      sub_20C59F92C();
    }

    v79 = OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_contentKeySession;
    v80 = *&v77[OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_contentKeySession];
    v81 = v77;
    v82 = v80;
    v83 = sub_20C5A08EC();
    [v82 setDelegate:v81 queue:v83];

    v84 = *&v77[v79];
    v85 = v81;
    [v84 addContentKeyRecipient_];
    v86 = v171;
    sub_20C59FE5C();
    v87 = v69;
    v88 = sub_20C5A01BC();
    v89 = sub_20C5A08AC();

    v90 = os_log_type_enabled(v88, v89);
    v180 = v81;
    v159 = v59;
    v163 = v87;
    if (v90)
    {
      v91 = swift_slowAlloc();
      v92 = v54;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *&v195[0] = v94;
      *v91 = 138543874;
      *(v91 + 4) = v180;
      *v93 = v180;
      *(v91 + 12) = 2160;
      *(v91 + 14) = 1752392040;
      *(v91 + 22) = 2080;
      v95 = v87;
      v162 = v180;
      v96 = [v92 description];
      v97 = sub_20C5A039C();
      v99 = v98;

      v100 = sub_20C479640(v97, v99, v195);

      *(v91 + 24) = v100;
      _os_log_impl(&dword_20C472000, v88, v89, "New StreamingKeyProvisioner %{public}@ for %{mask.hash}s", v91, 0x20u);
      sub_20C477B50(v93, &qword_27C7C60F0);
      MEMORY[0x20F2FFF90](v93, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x20F2FFF90](v94, -1, -1);
      v101 = v91;
      v85 = v180;
      MEMORY[0x20F2FFF90](v101, -1, -1);

      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      __swift_destroy_boxed_opaque_existential_1Tm(&v198);
      __swift_destroy_boxed_opaque_existential_1Tm(&v202);
      __swift_destroy_boxed_opaque_existential_1Tm(&v181);
      v102 = *(v173 + 8);
      v103 = v171;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v197);
      __swift_destroy_boxed_opaque_existential_1Tm(&v198);
      __swift_destroy_boxed_opaque_existential_1Tm(&v202);
      __swift_destroy_boxed_opaque_existential_1Tm(&v181);
      v102 = *(v173 + 8);
      v103 = v86;
    }

    v104 = v174;
    v171 = v102;
    (v102)(v103, v174);
    __swift_destroy_boxed_opaque_existential_1Tm(v196);
    v105 = v179;
    (*(v176 + 8))(v175, v177);
    v106 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v107 = (v85 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_onUnrecoverableError);
    v108 = *(v85 + OBJC_IVAR____TtC12SeymourMedia23StreamingKeyProvisioner_onUnrecoverableError);
    *v107 = sub_20C57C994;
    v107[1] = v106;

    sub_20C47E6BC(v108);

    v109 = [objc_allocWithZone(MEMORY[0x277CE65F8]) init];
    v110 = sub_20C59DE2C();
    if (v112)
    {
      v113 = (v110 & 0xFE) == 0;
    }

    else
    {
      sub_20C4A25F0(v110, v111, 0);
      v113 = 0;
    }

    v114 = v164;
    sub_20C59DDFC();
    v115 = v114;
    v116 = v178;
    v117 = v168(v114, 1, v178);
    v118 = v117 == 1;
    if (v117 == 1)
    {
      sub_20C477B50(v115, &qword_27C7C44C0);
      v119 = v170;
      if (v113)
      {
LABEL_28:
        v118 = 0;
      }
    }

    else
    {
      sub_20C59E48C();
      (*(v172 + 8))(v115, v116);

      v119 = v170;
      if (v113)
      {
        goto LABEL_28;
      }
    }

    [v109 setAllowsExternalPlayback_];
    v8 = v109;
    [v8 setUsesExternalPlaybackWhileExternalScreenIsActive_];
    [v8 setMuted_];
    LODWORD(v120) = 1.0;
    [v8 setVolume_];
    [v8 insertItem:v119 afterItem:0];
    v121 = v165;
    v122 = v166;
    v123 = v167;
    (*(v166 + 16))(v165, &v105[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer__startTimeOverride], v167);
    sub_20C59F3BC();
    (*(v122 + 8))(v121, v123);
    if (v182 == 1)
    {
      v124 = *&v105[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_startTime];
      if (v124 == 0.0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v124 = v181;
      if (v181 == 0.0)
      {
        goto LABEL_36;
      }
    }

    sub_20C59FE5C();
    v125 = sub_20C5A01BC();
    v126 = sub_20C5A08AC();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 134217984;
      *(v127 + 4) = v124;
      _os_log_impl(&dword_20C472000, v125, v126, "Seeking start time to %f", v127, 0xCu);
      MEMORY[0x20F2FFF90](v127, -1, -1);
    }

    (v171)(v158, v104);
    v128 = sub_20C5A098C();
    v130 = v129;
    v132 = v131;
    v133 = HIDWORD(v129);
    v181 = COERCE_DOUBLE(sub_20C5A098C());
    v182 = v134;
    v183 = v135;
    v202 = v128;
    v203 = v130;
    v204 = v133;
    v205 = v132;
    v198 = v128;
    v199 = v130;
    v200 = v133;
    v201 = v132;
    [v8 seekToTime:&v181 toleranceBefore:&v202 toleranceAfter:&v198];
LABEL_36:
    v31 = *&v105[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub];
    v26 = *&v105[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_eventHub + 8];
    ObjectType = swift_getObjectType();
    v23 = v105;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20C50086C();

    sub_20C59F63C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v181);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_20C4B549C();
    v179 = ObjectType;
    sub_20C59F61C();

    __swift_destroy_boxed_opaque_existential_1Tm(&v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6120);
    v27 = swift_allocObject();
    *(v27 + 56) = 0;
    *(v27 + 16) = 0;
    *(v27 + 24) = 1;
    *(v27 + 28) = 0;
    *(v27 + 44) = 0;
    *(v27 + 36) = 0;
    *(v27 + 52) = 1;
    if (qword_27C7C40C0 == -1)
    {
LABEL_37:
      v137 = type metadata accessor for PlayerTimelineObserver();
      v138 = swift_allocObject();
      v139 = COERCE_DOUBLE(v8);
      swift_unknownObjectRetain();
      v140 = sub_20C57AC44(*&v139, v31, v26, v27, v138);
      v141 = type metadata accessor for PlayerItemObserver();
      v142 = swift_allocObject();
      swift_unknownObjectRetain();
      v143 = v170;
      v144 = sub_20C57C9AC(v143, v31, v26, v142);

      v145 = [*&v139 playbackCoordinator];
      v178 = v26;
      v146 = v145;
      [v145 setDelegate_];

      v181 = v139;
      v182 = v143;
      v184 = v159;
      v147 = v180;
      v183 = v180;
      v187 = v137;
      v188 = &protocol witness table for PlayerTimelineObserver;
      v185 = &off_282371918;
      v186 = v140;
      v190 = v141;
      v191 = &protocol witness table for PlayerItemObserver;
      v189 = v144;
      v192 = 1;
      v148 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
      swift_beginAccess();
      v149 = v147;
      v150 = COERCE_DOUBLE(*&v139);
      v151 = v143;

      sub_20C57BBF4(&v181, &v23[v148]);
      swift_endAccess();
      v181 = v150;
      v182 = v151;
      sub_20C57CE28();
      v152 = v151;
      sub_20C59F5FC();

      v153 = v181;

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_37;
  }

  sub_20C59FE5C();
  v42 = a2;
  v43 = sub_20C5A01BC();
  v44 = sub_20C5A089C();

  v45 = os_log_type_enabled(v43, v44);
  v46 = v174;
  if (v45)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v47 = 138412290;
    *(v47 + 4) = v42;
    *v48 = v42;
    v49 = v42;
    _os_log_impl(&dword_20C472000, v43, v44, "%@ is not an AVURLAsset", v47, 0xCu);
    sub_20C477B50(v48, &qword_27C7C60F0);
    MEMORY[0x20F2FFF90](v48, -1, -1);
    MEMORY[0x20F2FFF90](v47, -1, -1);
  }

  (*(v173 + 8))(v8, v46);
}

void sub_20C574648(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C59FE5C();
    sub_20C5A01AC();
    (*(v3 + 8))(v5, v2);
    swift_getObjectType();
    v9 = a1;
    v8 = a1;
    sub_20C4E1F24();
    sub_20C59F5FC();
  }
}

void sub_20C5747CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20C574820();
  }
}

uint64_t sub_20C574820()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = (v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {

    v4(v5);
    sub_20C47E6BC(v4);
  }

  v6 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v1 + v6, v11);
  if (v15 != 1)
  {
    return sub_20C57BBC4(v11);
  }

  v7 = v11[1];
  sub_20C4780E8(&v14, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  v8 = v17;
  v9 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  (*(v9 + 16))(v7, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_20C574970(char *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = v3;

    sub_20C574C94(sub_20C57CFFC, v6);
  }

  return result;
}

void sub_20C574A18(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_20C574A98();

    if (v7)
    {
      [a1 setMuted_];
    }
  }
}

uint64_t sub_20C574A98()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  v4 = sub_20C59EC5C();
  v5 = 0;
  if (v4 == sub_20C59EC5C())
  {
    v6 = sub_20C59DE2C();
    v8 = v7;
    v19 = v6;
    v20 = v7;
    v10 = v9 & 1;
    v21 = v9 & 1;
    HIBYTE(v18) = 0;
    sub_20C4A2548();
    sub_20C4A259C();
    v11 = sub_20C59DA7C();
    sub_20C4A25F0(v6, v8, v10);
    v5 = 1;
    if ((v11 & 1) == 0)
    {
      v12 = sub_20C59DE2C();
      v14 = v13;
      v19 = v12;
      v20 = v13;
      v16 = v15 & 1;
      v21 = v15 & 1;
      HIBYTE(v18) = 1;
      v5 = sub_20C59DA7C();
      sub_20C4A25F0(v12, v14, v16);
    }
  }

  return v5 & 1;
}

uint64_t sub_20C574C94(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61A0);
  v3 = *(v50 - 8);
  v47 = *(v3 + 64);
  MEMORY[0x28223BE20](v50);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v46 = &v41 - v15;
  *(swift_allocObject() + 16) = v2;
  v16 = v2;
  sub_20C59EA9C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_20C57E87C;
  *(v18 + 24) = v17;
  (*(v8 + 16))(v10, v13, v7);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v21 = *(v8 + 32);
  v42 = v7;
  v21(v20 + v19, v10, v7);
  v22 = (v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20C567668;
  v22[1] = v18;
  sub_20C479154(0, &qword_27C7C6140);
  v23 = v16;
  v24 = v44;
  sub_20C59EA9C();
  v43 = *(v8 + 8);
  v43(v13, v7);
  v25 = swift_allocObject();
  v26 = v49;
  *(v25 + 16) = v48;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_20C57E8AC;
  *(v27 + 24) = v25;
  v28 = v45;
  v29 = v24;
  v30 = v50;
  (*(v3 + 16))(v45, v24, v50);
  v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v32 = (v47 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v3 + 32))(v33 + v31, v28, v30);
  v34 = (v33 + v32);
  *v34 = sub_20C57E8E0;
  v34[1] = v27;

  v35 = v46;
  sub_20C59EA9C();
  (*(v3 + 8))(v29, v30);
  v36 = v42;
  v37 = v35;
  v38 = sub_20C59EABC();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  v38(sub_20C4907D4, v39);

  return (v43)(v37, v36);
}

void sub_20C575190(void (*a1)(void **), uint64_t a2, void *a3)
{
  v6 = sub_20C5A020C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A023C();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(a3 + v14, v35);
  if (v39)
  {
    if (v39 == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
      sub_20C5A101C();
      v15 = aBlock;
      v33 = aBlock;
      v34 = v28;
      a1(&v33);
      sub_20C49B78C(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(&v38);
      __swift_destroy_boxed_opaque_existential_1Tm(&v37);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    }

    else
    {

      sub_20C57C87C();
      v21 = swift_allocError();
      *v22 = 0;
      aBlock = v21;
      LOBYTE(v28) = 1;
      a1(&aBlock);
    }
  }

  else
  {
    v25 = v35[0];
    sub_20C479154(0, &qword_2810F3D90);

    v24 = sub_20C5A08EC();
    v16 = swift_allocObject();
    v16[2] = a3;
    v16[3] = sub_20C4959AC;
    v16[4] = v13;
    v31 = sub_20C57C828;
    v32 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_20C4F8F74;
    v30 = &block_descriptor_124;
    v17 = _Block_copy(&aBlock);
    v18 = a3;
    sub_20C5A022C();
    v33 = MEMORY[0x277D84F90];
    sub_20C57C834(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C47C934(&qword_2810F3DC0, &unk_27C7C60D0);
    sub_20C5A0AEC();
    v19 = v24;
    v20 = v25;
    sub_20C5A08BC();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    (*(v26 + 8))(v12, v10);
  }
}

void sub_20C575644(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(a1 + v4, &v8);
  if (v12[40] == 1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(&v11);
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
    sub_20C5A101C();
    v5 = v8;
    a2(v8, v9);
    sub_20C49B78C(v5);
  }

  else
  {
    sub_20C57BBC4(&v8);
    sub_20C57C87C();
    v6 = swift_allocError();
    *v7 = 0;
    a2(v6, 1);
  }
}

uint64_t sub_20C575770(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(a1 + v2, v7);
  if (v11)
  {
    if (v11 == 1)
    {
      v3 = v7[0];

      *(swift_allocObject() + 16) = v3;
      sub_20C479154(0, &qword_27C7C6140);
      sub_20C59EAAC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v10);
      __swift_destroy_boxed_opaque_existential_1Tm(&v9);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v8);
    }
  }

  else
  {
    sub_20C57BBC4(v7);
  }

  sub_20C57C87C();
  v5 = swift_allocError();
  *v6 = 0;
  *(swift_allocObject() + 16) = v5;
  sub_20C479154(0, &qword_27C7C6140);
  return sub_20C59EAAC();
}

uint64_t MediaPlayer.connectSyncPlayback(mediaPlayerSyncLink:)(uint64_t a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  if (*(v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator))
  {
    sub_20C59FE7C();
    v13 = sub_20C5A01BC();
    v14 = sub_20C5A08AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20C472000, v13, v14, "Client: Already configured coordinated playback", v15, 2u);
      MEMORY[0x20F2FFF90](v15, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v34 = v1;
    sub_20C59F42C();
    v17 = sub_20C59F38C();
    v19 = v18;

    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = v20 == v17 && v21 == v19;
    if (v22 || (sub_20C5A0E9C() & 1) != 0)
    {
      sub_20C59FE7C();
      v23 = sub_20C5A01BC();
      v24 = sub_20C5A08AC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_20C472000, v23, v24, "Client: Will coordinate playback after player activates.", v25, 2u);
        MEMORY[0x20F2FFF90](v25, -1, -1);
      }

      (*(v4 + 8))(v12, v3);
      v26 = swift_allocObject();
      v27 = v34;
      v26[2] = v34;
      v26[3] = v17;
      v26[4] = v19;
      v26[5] = a1;
      v28 = v27;

      sub_20C574C94(sub_20C57BB80, v26);
    }

    else
    {
      sub_20C59FE7C();

      v29 = sub_20C5A01BC();
      v30 = sub_20C5A089C();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v31 = 136315394;
        v32 = sub_20C479640(v17, v19, &v35);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_20C479640(v20, v21, &v35);
        _os_log_impl(&dword_20C472000, v29, v30, "Client: Not coordinating playback (local: %s != %s)", v31, 0x16u);
        v33 = v34;
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v33, -1, -1);
        MEMORY[0x20F2FFF90](v31, -1, -1);
      }

      else
      {
      }

      return (*(v4 + 8))(v9, v3);
    }
  }
}

uint64_t sub_20C575CF8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator;
  if (*(a2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator))
  {
    sub_20C59FE7C();
    v18 = sub_20C5A01BC();
    v19 = sub_20C5A08AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20C472000, v18, v19, "Client: Already configured coordinated playback", v20, 2u);
      MEMORY[0x20F2FFF90](v20, -1, -1);
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v36 = a3;
    sub_20C59FE7C();

    v22 = sub_20C5A01BC();
    v23 = sub_20C5A08AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v35 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v34 = a1;
      v27 = v26;
      v37[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_20C479640(v36, a4, v37);
      _os_log_impl(&dword_20C472000, v22, v23, "Client: Configuring coordinated playback for session %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v28 = v27;
      a1 = v34;
      MEMORY[0x20F2FFF90](v28, -1, -1);
      v29 = v25;
      a5 = v35;
      MEMORY[0x20F2FFF90](v29, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v30 = [a1 playbackCoordinator];

    v31 = sub_20C57EA48(v30, a5);

    *(a2 + v17) = v31;

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = *(v31 + 104);
    *(v31 + 104) = sub_20C57EC64;
    *(v31 + 112) = v32;

    sub_20C47E6BC(v33);

    MediaPlayer.suspendSyncPlayback()();
    result = swift_beginAccess();
    if ((*(a5 + 80) & 1) == 0 && *(a2 + v17))
    {

      sub_20C50A3EC();
    }
  }

  return result;
}

Swift::Void __swiftcall MediaPlayer.suspendSyncPlayback()()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v1 + v6, v15);
  if (v18[40] == 1)
  {
    v7 = v15[0];

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(&v17);
    __swift_destroy_boxed_opaque_existential_1Tm(&v16);
    sub_20C59FE7C();
    v8 = sub_20C5A01BC();
    v9 = sub_20C5A08AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20C472000, v8, v9, "PlaybackSync: suspendSyncPlayback", v10, 2u);
      MEMORY[0x20F2FFF90](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = [v7 playbackCoordinator];
    v12 = [v11 beginSuspensionForReason_];

    v13 = *(v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncSuspension);
    *(v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncSuspension) = v12;
  }

  else
  {
    sub_20C57BBC4(v15);
  }
}

id MediaPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaPlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MediaPlayer.activePlayer.getter()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v0 + v1, v4);
  if (v8)
  {
    result = 0;
    if (v8 == 1)
    {
      v3 = v4[0];

      __swift_destroy_boxed_opaque_existential_1Tm(&v7);
      __swift_destroy_boxed_opaque_existential_1Tm(&v6);
      __swift_destroy_boxed_opaque_existential_1Tm(&v5);
      return v3;
    }
  }

  else
  {
    sub_20C57BBC4(v4);
    return 0;
  }

  return result;
}

id MediaPlayer.isExternalPlaybackActive.getter()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v0 + v1, v5);
  if (v9)
  {
    if (v9 == 1)
    {
      v2 = v5[0];

      __swift_destroy_boxed_opaque_existential_1Tm(&v8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v7);
      __swift_destroy_boxed_opaque_existential_1Tm(&v6);
      v3 = [v2 isExternalPlaybackActive];

      return v3;
    }
  }

  else
  {
    sub_20C57BBC4(v5);
  }

  return 0;
}

double sub_20C576684(SEL *a1)
{
  v3 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v1 + v3, &v8);
  v4 = 0.0;
  if (v13)
  {
    if (v13 == 1)
    {

      v5 = v9;
      [v9 *a1];
      sub_20C5A099C();
      v4 = v6;

      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
      __swift_destroy_boxed_opaque_existential_1Tm(&v11);
      __swift_destroy_boxed_opaque_existential_1Tm(&v10);
    }
  }

  else
  {
    sub_20C57BBC4(&v8);
  }

  return v4;
}

uint64_t MediaPlayer.activate(keyDeliveryClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59E67C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F2FCB00](v6);
  v9 = sub_20C59E3AC();
  MediaPlayer.activate(keyDeliveryClient:languagePreference:audioFocusSelection:)(a1, v8, v9 & 1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t MediaPlayer.activate(keyDeliveryClient:languagePreference:audioFocusSelection:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v135) = a3;
  v132 = a2;
  v137 = a1;
  v6 = sub_20C59E67C();
  v133 = *(v6 - 8);
  v134 = v6;
  MEMORY[0x28223BE20](v6);
  v130 = v7;
  v131 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8);
  v128 = *(v144 - 1);
  v8 = v128[8];
  MEMORY[0x28223BE20](v144);
  v126 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v127 = &v109 - v10;
  MEMORY[0x28223BE20](v11);
  v143 = &v109 - v12;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5FE0);
  v138 = *(v140 - 8);
  v13 = *(v138 + 64);
  MEMORY[0x28223BE20](v140);
  v129 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v147 = &v109 - v15;
  MEMORY[0x28223BE20](v16);
  v148 = &v109 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v141 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v142 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v109 - v21;
  v23 = sub_20C59D37C();
  v149 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v145 = v24;
  v146 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v109 - v26;
  v28 = v4;
  v29 = &v4[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state];
  swift_beginAccess();
  sub_20C57BB8C(v29, v152);
  if (v156)
  {
    if (v156 == 1)
    {

      sub_20C59EACC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v155);
      __swift_destroy_boxed_opaque_existential_1Tm(&v154);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v153);
    }

    else
    {
      v32 = dispatch_group_create();
      v125 = v23;
      v33 = v32;
      dispatch_group_enter(v32);
      *&v150[0] = v33;
      v151 = 0;
      swift_beginAccess();
      v123 = v33;
      sub_20C57BBF4(v150, v29);
      swift_endAccess();
      v122 = a4;
      v136 = v27;
      sub_20C59DD9C();
      v124 = v28;
      v120 = v22;
      __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient], *&v28[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_assetClient + 24]);
      v34 = v127;
      sub_20C59F19C();
      v35 = swift_allocObject();
      *(v35 + 16) = v123;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_20C57BC2C;
      *(v36 + 24) = v35;
      v121 = v18;
      v37 = v128;
      v38 = v128[2];
      v114 = (v128 + 2);
      v115 = v38;
      v39 = v126;
      v40 = v34;
      v38(v126, v34, v144);
      v41 = *(v37 + 80);
      v42 = (v41 + 16) & ~v41;
      v111 = v42;
      v112 = v41;
      v43 = (v8 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v109 = v43;
      v44 = swift_allocObject();
      v110 = v37[4];
      v45 = v39;
      v46 = v144;
      v110(v44 + v42, v45, v144);
      v47 = (v44 + v43);
      *v47 = sub_20C56B094;
      v47[1] = v36;
      v126 = v123;
      v48 = v125;
      sub_20C59EA9C();
      v113 = v37[1];
      v49 = v40;
      v50 = v46;
      v113(v40, v46);
      v51 = v149;
      v118 = *(v149 + 16);
      v119 = v149 + 16;
      v52 = v146;
      v53 = v48;
      v118(v146, v136, v48);
      v54 = *(v51 + 80);
      v116 = v13;
      v117 = v54;
      v55 = (v54 + 24) & ~v54;
      v56 = swift_allocObject();
      *(v56 + 16) = v124;
      v57 = *(v51 + 32);
      v123 = (v51 + 32);
      v128 = v57;
      (v57)(v56 + v55, v52, v53);
      v58 = v143;
      v115(v49, v143, v50);
      v59 = v109;
      v60 = swift_allocObject();
      v110(v60 + v111, v49, v50);
      v61 = (v60 + v59);
      *v61 = sub_20C57BC90;
      v61[1] = v56;
      v127 = sub_20C479154(0, &qword_27C7C5FF0);
      v62 = v124;
      v124 = v62;
      v63 = v147;
      sub_20C59EA9C();
      v113(v58, v50);
      v64 = v133;
      v65 = v131;
      v66 = v134;
      (*(v133 + 16))(v131, v132, v134);
      v67 = (*(v64 + 80) + 24) & ~*(v64 + 80);
      v68 = v67 + v130;
      v69 = swift_allocObject();
      *(v69 + 16) = v62;
      (*(v64 + 32))(v69 + v67, v65, v66);
      *(v69 + v68) = v135 & 1;
      v70 = v138;
      v71 = *(v138 + 16);
      v143 = (v138 + 16);
      v144 = v71;
      v72 = v129;
      v73 = v63;
      v74 = v140;
      (v71)(v129, v63);
      v75 = *(v70 + 80);
      v76 = (v75 + 16) & ~v75;
      v134 = v76;
      v135 = v75;
      v77 = (v116 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
      v132 = v77;
      v78 = swift_allocObject();
      v133 = *(v70 + 32);
      v79 = v72;
      v80 = v74;
      (v133)(v78 + v76, v79, v74);
      v81 = (v78 + v77);
      *v81 = sub_20C57BD34;
      v81[1] = v69;
      v82 = v124;
      sub_20C59EA9C();
      v83 = *(v70 + 8);
      v84 = v80;
      v83(v73, v80);
      v85 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_20C477580(v137, v150);
      v86 = v146;
      v87 = v125;
      v118(v146, v136, v125);
      v88 = (v117 + 64) & ~v117;
      v89 = swift_allocObject();
      *(v89 + 16) = v85;
      sub_20C4780E8(v150, v89 + 24);
      (v128)(v89 + v88, v86, v87);
      v90 = swift_allocObject();
      *(v90 + 16) = sub_20C57BE00;
      *(v90 + 24) = v89;
      v91 = v147;
      v92 = v148;
      (v144)(v147, v148, v84);
      v93 = v132;
      v94 = swift_allocObject();
      (v133)(v94 + v134, v91, v84);
      v95 = (v94 + v93);
      *v95 = sub_20C57BE84;
      v95[1] = v90;
      v96 = v120;
      sub_20C59EA9C();
      v83(v92, v84);
      v97 = swift_allocObject();
      *(v97 + 16) = v126;
      v98 = swift_allocObject();
      *(v98 + 16) = sub_20C57BEE4;
      *(v98 + 24) = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = sub_20C57BEEC;
      *(v99 + 24) = v98;
      v100 = v141;
      v101 = v142;
      v102 = v96;
      v103 = v121;
      (*(v141 + 16))(v142, v96, v121);
      v104 = v100;
      v105 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v106 = (v139 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = swift_allocObject();
      (*(v104 + 32))(v107 + v105, v101, v103);
      v108 = (v107 + v106);
      *v108 = sub_20C53EAF8;
      v108[1] = v99;
      sub_20C59EA9C();
      (*(v104 + 8))(v102, v103);
      return (*(v149 + 8))(v136, v125);
    }
  }

  else
  {
    sub_20C57BBC4(v152);
    *(swift_allocObject() + 16) = v28;
    v31 = v28;
    return sub_20C59EA9C();
  }
}

void sub_20C57749C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a2;
  v56 = a1;
  v59 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6090);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = sub_20C59DD5C();
  v12 = v11;
  v13 = sub_20C59DDDC();
  v15 = v14;
  v61[0] = 1;
  sub_20C57BB1C(v4 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_sessionOrigin, v9);
  v16 = sub_20C59F43C();
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  sub_20C59EC4C();
  v17 = sub_20C4EDFA8(v10, v12, v13, v15, v61, v9);

  sub_20C477B50(v9, &qword_27C7C5200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A4FE0;
  v19 = objc_opt_self();
  v20 = [v19 smm_iTunesStoreContentHLSAssetURLStringKey];
  v21 = sub_20C5A039C();
  v23 = v22;

  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v24 = sub_20C59D2FC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v24;
  *(inited + 56) = v25;
  v26 = sub_20C5896D0(inited);
  swift_setDeallocating();
  sub_20C477B50(inited + 32, &qword_27C7C50A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6190);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_20C5A84B0;
  v28 = [v19 smm_alternativeConfigurationOptionsKey];
  v29 = sub_20C5A039C();
  v31 = v30;

  *(v27 + 32) = v29;
  *(v27 + 40) = v31;
  *(v27 + 48) = v17;
  v32 = [v19 smm_iTunesStoreContentInfoKey];
  v33 = sub_20C5A039C();
  v35 = v34;

  *(v27 + 56) = v33;
  *(v27 + 64) = v35;
  *(v27 + 72) = v26;
  v36 = sub_20C589DF0(v27);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6198);
  swift_arrayDestroy();
  sub_20C4F25AC(v36);

  v37 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v38 = sub_20C59D30C();
  v39 = sub_20C5A02AC();

  v40 = [v37 initWithURL:v38 options:v39];

  v41 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  v42 = sub_20C4A7538(4);

  v43 = sub_20C59DD6C();
  v45 = v44;
  v46.value._countAndFlagsBits = v43;
  v46.value._object = v45;
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5ED8], v46);

  v47 = sub_20C59DDEC();
  v49 = v48;
  v50.value._countAndFlagsBits = v47;
  v50.value._object = v49;
  AVPlayerItem.setMetadata(_:value:)(*MEMORY[0x277CE5EF0], v50);

  v51 = v57;
  v52 = v58;
  (*(v57 + 16))(v6, v4 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer__audioFormatMediaKind, v58);
  sub_20C59F3BC();
  (*(v51 + 8))(v6, v52);
  v60 = v61[0];
  v53 = sub_20C4A7704(&v60);

  v54 = sub_20C4A79DC(0xFFFFLL);
  *(swift_allocObject() + 16) = v54;
  sub_20C479154(0, &qword_27C7C5FF0);
  sub_20C59EAAC();
}

uint64_t sub_20C577A58@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v22[1] = a5;
  v9 = sub_20C59E67C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v12 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = *a1;
  v14 = [*a1 asset];
  v22[0] = *MEMORY[0x277CE5DE0];
  (*(v10 + 16))(v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v13;
  (*(v10 + 32))(v16 + v15, v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  *(v16 + v15 + v11) = a4 & 1;
  aBlock[4] = sub_20C57D008;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C499B34;
  aBlock[3] = &block_descriptor_195;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = v13;

  [v14 loadMediaSelectionGroupForMediaCharacteristic:v22[0] completionHandler:v17];
  _Block_release(v17);

  *(swift_allocObject() + 16) = v19;
  sub_20C479154(0, &qword_27C7C5FF0);
  v20 = v19;
  return sub_20C59EAAC();
}

void sub_20C577CC8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v14 = a1;
    sub_20C57E4A4(a4, v14, a5, a6 & 1);
    v9 = [v14 customMediaSelectionScheme];
    if (v9)
    {
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_20C5A3A10;
      *(v11 + 32) = v10;
      sub_20C479154(0, &qword_27C7C6148);
      v12 = v10;
      v13 = sub_20C5A060C();

      [a4 setPreferredCustomMediaSelectionSchemes_];
    }
  }
}

void sub_20C577DE4(void **a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_20C573140(a3, v4);
  }
}

Swift::Void __swiftcall MediaPlayer.deactivate()()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v1 + v6, &v21);
  if (v25)
  {
    if (v25 == 1)
    {
      v7 = v21;

      sub_20C4780E8(&v22[5], v18);
      sub_20C4780E8(v23, v15);
      sub_20C59FE5C();
      sub_20C5A01AC();
      (*(v3 + 8))(v5, v2);
      [v7 removeAllItems];
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v9 + 8))(v8, v9);
      v10 = v19;
      v11 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v11 + 8))(v10, v11);
      MediaPlayer.disconnectSyncPlayback()();
      swift_getObjectType();
      v14 = v7;
      sub_20C57BF4C();
      v12 = v7;
      sub_20C59F5FC();

      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }
  }

  else
  {
    sub_20C57BBC4(&v21);
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v21 = 0u;
  v25 = 2;
  swift_beginAccess();
  sub_20C57BBF4(&v21, v1 + v6);
  swift_endAccess();
}

Swift::Void __swiftcall MediaPlayer.disconnectSyncPlayback()()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v1 + v6, v13);
  if (v16[40] == 1)
  {
    v7 = v13[0];

    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    sub_20C59FE7C();
    v8 = sub_20C5A01BC();
    v9 = sub_20C5A08AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20C472000, v8, v9, "PlaybackSync: disconnectSyncPlayback - Resetting coordinator", v10, 2u);
      MEMORY[0x20F2FFF90](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v11 = [v7 playbackCoordinator];
    [v11 setCoordinationMediumDelegate_];

    *(v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator) = 0;
  }

  else
  {
    sub_20C57BBC4(v13);
  }
}

Swift::Bool __swiftcall MediaPlayer.beginPlayback()()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57BFA0, v1);

  v2 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay;
  swift_beginAccess();
  return *(v0 + v2);
}

void sub_20C5783B8(void *a1)
{
  v2 = sub_20C59F43C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_20C59FE5C();
  sub_20C5A01AC();
  v12 = *(v6 + 8);
  v12(v11, v5);
  sub_20C59FE7C();

  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();

  if (os_log_type_enabled(v13, v14))
  {
    v33 = v12;
    v34 = a1;
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v15 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_20C57BB1C(Strong + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_sessionOrigin, v4);

      sub_20C59F42C();
      sub_20C4EE66C(v4);
      v18 = sub_20C59F38C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v35[3] = v18;
    v35[4] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44F0);
    v21 = sub_20C5A0A3C();
    v23 = v22;

    v24 = sub_20C479640(v21, v23, v35);

    *(v15 + 4) = v24;
    _os_log_impl(&dword_20C472000, v13, v14, "Client: Ending sync suspension for session %s", v15, 0xCu);
    v25 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x20F2FFF90](v25, -1, -1);
    MEMORY[0x20F2FFF90](v15, -1, -1);

    v33(v8, v5);
    a1 = v34;
  }

  else
  {

    v12(v8, v5);
  }

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    MediaPlayer.resumeSyncPlayback()();
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    if (sub_20C574A98())
    {
      v30 = *&v29[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor + 24];
      v31 = *&v29[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor + 32];
      __swift_project_boxed_opaque_existential_1(&v29[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor], v30);
      [a1 setMuted_];
    }

    [a1 play];
  }
}

Swift::Void __swiftcall MediaPlayer.resumeSyncPlayback()()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE7C();
  v6 = sub_20C5A01BC();
  v7 = sub_20C5A08AC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C472000, v6, v7, "PlaybackSync: resumeSyncPlayback - Ending suspension of synchronized playback", v8, 2u);
    MEMORY[0x20F2FFF90](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncSuspension);
  if (v9)
  {
    [v9 end];
  }
}

Swift::Void __swiftcall MediaPlayer.endPlayback()()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  MediaPlayer.suspendSyncPlayback()();
  MediaPlayer.deactivate()();
}

Swift::Void __swiftcall MediaPlayer.togglePlayPause()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57BFA8, v0);
}

void sub_20C578A8C(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  v6 = *(v3 + 8);
  v6(v5, v2);
  [a1 rate];
  if (v7 == 0.0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_20C59FE5C();
      sub_20C5A01AC();
      v6(v5, v2);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_20C574C94(sub_20C57EDAC, v10);
    }
  }

  else
  {
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      sub_20C574C94(sub_20C578EE4, 0);
    }
  }
}

Swift::Void __swiftcall MediaPlayer.resume()()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57BFB0, v4);
}

void sub_20C578E18(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (sub_20C574A98())
    {
      v4 = *&v3[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor + 24];
      v5 = *&v3[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor + 32];
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_screenCaptureMonitor], v4);
      [a1 setMuted_];
    }

    [a1 play];
  }
}

id sub_20C578EE4(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v3 + 8))(v5, v2);
  return [a1 pause];
}

Swift::Void __swiftcall MediaPlayer.preciseSeekToTime(_:)(CMTime a1)
{
  epoch = a1.epoch;
  timescale = a1.timescale;
  value = a1.value;
  flags = a1.flags;
  v5 = swift_allocObject();
  *(v5 + 16) = value;
  *(v5 + 24) = timescale;
  *(v5 + 28) = flags;
  *(v5 + 32) = epoch;
  sub_20C574C94(sub_20C57BFB8, v5);
}

void sub_20C579078(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t a1, uint64_t a2))
{
  v8 = HIDWORD(a3);
  v9 = sub_20C5A01CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();
  v15 = os_log_type_enabled(v13, v14);
  v38 = a3;
  v39 = a4;
  v36 = v8;
  v37 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v35 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v9;
    v19 = v18;
    v44 = v18;
    *v17 = 136446210;
    aBlock = a2;
    v49 = __PAIR64__(v8, a3);
    v50 = a4;
    type metadata accessor for CMTime(0);
    v20 = sub_20C5A041C();
    v22 = sub_20C479640(v20, v21, &v44);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20C472000, v13, v14, "[MediaPlayer] Seeking to %{public}s seconds precisely", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x20F2FFF90](v19, -1, -1);
    v23 = v17;
    a1 = v35;
    MEMORY[0x20F2FFF90](v23, -1, -1);

    (*(v10 + 8))(v12, v34);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  [a1 setRate_];
  v24 = [a1 currentItem];
  [v24 cancelPendingSeeks];

  v25 = [a1 currentItem];
  if (v25)
  {
    v26 = v25;
    v27 = *MEMORY[0x277CC08F0];
    v28 = *(MEMORY[0x277CC08F0] + 8);
    v29 = *(MEMORY[0x277CC08F0] + 12);
    v30 = *(MEMORY[0x277CC08F0] + 16);
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    v52 = sub_20C57C80C;
    v53 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_20C4B2DD0;
    v51 = &block_descriptor_113;
    v32 = _Block_copy(&aBlock);
    v33 = a1;

    v47 = v30;
    aBlock = v37;
    v49 = __PAIR64__(v36, v38);
    v50 = v39;
    v43 = v30;
    v44 = v27;
    v45 = v28;
    v46 = v29;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    [v26 seekToTime:&aBlock toleranceBefore:&v44 toleranceAfter:&v40 completionHandler:v32];
    _Block_release(v32);
  }
}

uint64_t MediaPlayer.seekBy(_:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  sub_20C487984(a1);

  sub_20C574C94(sub_20C57BFC4, v7);
}

void sub_20C579490(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 currentItem];
  if (v15)
  {
    v16 = v15;
    sub_20C59FE5C();
    v17 = sub_20C5A01BC();
    v18 = sub_20C5A08AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = a4;
      v20 = a2;
      v21 = a3;
      v22 = v19;
      *v19 = 134349056;
      *(v19 + 4) = a5;
      _os_log_impl(&dword_20C472000, v17, v18, "[MediaPlayer] Seeking by %{public}f seconds", v19, 0xCu);
      v23 = v22;
      a3 = v21;
      a2 = v20;
      MEMORY[0x20F2FFF90](v23, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    [a1 currentTime];
    CMTime.elapsedTime.getter(time.value, *&time.timescale, time.epoch);
    v25 = v24;
    [v16 duration];
    Seconds = CMTimeGetSeconds(&time);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      if (Seconds >= v25 + a5)
      {
        v29 = v25 + a5;
      }

      else
      {
        v29 = Seconds;
      }

      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      *(v31 + 24) = v30;
      *(v31 + 32) = a2;
      *(v31 + 40) = a3;

      sub_20C487984(a2);
      sub_20C574C94(sub_20C57ED60, v31);
    }

    else
    {
    }
  }

  else if (a2)
  {
    a2(1);
  }
}

uint64_t MediaPlayer.seekToPlaybackTime(_:completion:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_20C487984(a1);
  sub_20C574C94(sub_20C57BFD4, v7);
}

void sub_20C579850(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v14 = sub_20C5A01BC();
  v15 = sub_20C5A08AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134349056;
    *(v16 + 4) = a5;
    _os_log_impl(&dword_20C472000, v14, v15, "[MediaPlayer] Seeking to %{public}f seconds", v16, 0xCu);
    MEMORY[0x20F2FFF90](v16, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  [a1 currentTime];
  CMTime.elapsedTime.getter(aBlock, v31, v32);
  v18 = v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_unknownObjectRetain();

    swift_getObjectType();
    aBlock = v18;
    sub_20C4E1A98();
    sub_20C59F5FC();
    swift_unknownObjectRelease();
  }

  v21 = sub_20C5A098C();
  v23 = v22;
  v25 = v24;
  v26 = HIDWORD(v22);
  v27 = swift_allocObject();
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v34 = sub_20C57C7A8;
  v35 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = sub_20C4B2DD0;
  v33 = &block_descriptor_16;
  v28 = _Block_copy(&aBlock);

  sub_20C487984(a3);

  aBlock = v21;
  v31 = __PAIR64__(v26, v23);
  v32 = v25;
  [a1 seekToTime:&aBlock completionHandler:v28];
  _Block_release(v28);
}

uint64_t sub_20C579B44(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_20C472000, v10, v11, "[MediaPlayer] Seek finished, seeking complete: %{BOOL}d", v12, 8u);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  result = (*(v7 + 8))(v9, v6);
  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = result;

      sub_20C574C94(sub_20C57C7BC, a2);
    }
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

uint64_t sub_20C579D18(void *a1)
{
  [a1 currentTime];
  CMTime.elapsedTime.getter(v3, v4, v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20C4E1B24();
    sub_20C59F5FC();
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall MediaPlayer.preventTimeJump()()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_state;
  swift_beginAccess();
  sub_20C57BB8C(v0 + v1, v7);
  if (v11)
  {
    if (v11 == 1)
    {
      v2 = v7[0];

      __swift_destroy_boxed_opaque_existential_1Tm(&v10);
      __swift_destroy_boxed_opaque_existential_1Tm(&v9);
      __swift_destroy_boxed_opaque_existential_1Tm(&v8);
      v3 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator), *(v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator + 24));
      v4 = sub_20C57CF98(&qword_27C7C6000, &qword_27C7C4950);
      v5 = *(*v3 + 32);
      MEMORY[0x28223BE20](v4);
      v6 = v2;
      os_unfair_lock_lock(v5 + 25);
      sub_20C57BFE4(&v5[4]);
      os_unfair_lock_unlock(v5 + 25);
    }
  }

  else
  {
    sub_20C57BBC4(v7);
  }
}

Swift::Void __swiftcall MediaPlayer.allowTimeJump()()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator), *(v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator + 24)) + 32);
  os_unfair_lock_lock(v1 + 25);
  sub_20C49E4B4(&v1[4]);

  os_unfair_lock_unlock(v1 + 25);
}

Swift::Void __swiftcall MediaPlayer.fetchSyncPlaybackPosition()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_20C574C94(sub_20C57C004, v1);
}

uint64_t sub_20C57A010(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE7C();
  v7 = sub_20C5A01BC();
  v8 = sub_20C5A08AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20C472000, v7, v8, "PlaybackSync: fetchSyncPlaybackPosition - requesting catchup", v9, 2u);
    MEMORY[0x20F2FFF90](v9, -1, -1);
  }

  result = (*(v4 + 8))(v6, v3);
  if (*(a2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_mediaSyncCoordinator))
  {

    sub_20C50A3EC();
  }

  return result;
}

uint64_t sub_20C57A17C()
{
  v1 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20C57A1CC()
{
  v1 = (v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v2 = *v1;
  sub_20C487984(*v1);
  return v2;
}

uint64_t sub_20C57A228(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_onReadyToPlay);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_20C47E6BC(v6);
}

uint64_t sub_20C57A2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59E67C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x20F2FCB00](v6);
  v9 = sub_20C59E3AC();
  MediaPlayer.activate(keyDeliveryClient:languagePreference:audioFocusSelection:)(a1, v8, v9 & 1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_20C57A3DC()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57EDB0, v1);

  v2 = OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_isReadyToPlay;
  swift_beginAccess();
  return *(v0 + v2);
}

void sub_20C57A474()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  MediaPlayer.suspendSyncPlayback()();
  MediaPlayer.deactivate()();
}

uint64_t sub_20C57A580()
{
  v0 = sub_20C5A01CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v1 + 8))(v3, v0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57EDAC, v4);
}

uint64_t sub_20C57A6E8()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C574C94(sub_20C57EDA8, v0);
}

uint64_t sub_20C57A758(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  sub_20C487984(a1);

  sub_20C574C94(sub_20C57ED64, v7);
}

uint64_t sub_20C57A82C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = v6;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_20C487984(a1);
  sub_20C574C94(sub_20C57ED60, v7);
}

uint64_t sub_20C57A900(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v4;
  *(v7 + 28) = v6;
  *(v7 + 32) = a3;
  sub_20C574C94(sub_20C57ED88, v7);
}

void sub_20C57A994()
{
  v1 = *(*__swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator), *(v0 + OBJC_IVAR____TtC12SeymourMedia11MediaPlayer_timeJumpCoordinator + 24)) + 32);
  os_unfair_lock_lock(v1 + 25);
  sub_20C49E4B4(&v1[4]);

  os_unfair_lock_unlock(v1 + 25);
}

uint64_t sub_20C57AA0C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = v0;
  sub_20C574C94(sub_20C57EDB4, v1);
}

Swift::String __swiftcall MediaPlayer.playbackCoordinator(_:identifierFor:)(AVPlayerPlaybackCoordinator _, AVPlayerItem identifierFor)
{
  v2 = sub_20C59DD5C();
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_20C57AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_20C59EA9C();
}

uint64_t sub_20C57ABB4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  a3(&v6);
  v4 = v6;
  v7 = 0;
  a1(&v6);

  return sub_20C49B78C(v4, 0);
}

uint64_t sub_20C57AC44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_20C57CF98(&qword_27C7C6138, &qword_27C7C6140);
  v48 = &type metadata for PlayerTimelineUpdatePublisher;
  v49 = &off_28236EF10;
  *&v46 = a2;
  *(&v46 + 1) = a3;
  v47 = a4;
  *(a5 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 136) = v10;
  v37 = v10;
  swift_unknownObjectWeakAssign();
  v11 = a1;
  v12 = sub_20C5A098C();
  LODWORD(a3) = v13;
  v15 = v14;
  v36 = HIDWORD(v13);
  sub_20C479154(0, &qword_2810F3D90);
  v16 = sub_20C5A08EC();
  v17 = swift_allocObject();
  *(v17 + 24) = v10;
  swift_unknownObjectWeakInit();
  sub_20C477580(&v46, v43);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  sub_20C4780E8(v43, v18 + 24);
  v41 = sub_20C57CFDC;
  v42 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v39 = sub_20C4B2F34;
  v40 = &block_descriptor_176;
  v19 = _Block_copy(&aBlock);

  *&v44 = v12;
  *(&v44 + 1) = __PAIR64__(v36, a3);
  v45 = v15;
  v20 = [v11 addPeriodicTimeObserverForInterval:&v44 queue:v16 usingBlock:v19];
  _Block_release(v19);
  sub_20C5A0ABC();
  swift_unknownObjectRelease();

  sub_20C4947E4(&v44, (a5 + 16));
  v21 = sub_20C5A098C();
  LODWORD(v16) = v22;
  v24 = v23;
  v25 = HIDWORD(v22);
  v26 = sub_20C5A08EC();
  v27 = swift_allocObject();
  *(v27 + 24) = v37;
  swift_unknownObjectWeakInit();

  sub_20C477580(&v46, v43);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  sub_20C4780E8(v43, v28 + 24);
  v41 = sub_20C57CFE8;
  v42 = v28;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v39 = sub_20C4B2F34;
  v40 = &block_descriptor_183;
  v29 = _Block_copy(&aBlock);

  *&v44 = v21;
  *(&v44 + 1) = __PAIR64__(v25, v16);
  v45 = v24;
  v30 = [v11 addPeriodicTimeObserverForInterval:&v44 queue:v26 usingBlock:v29];
  _Block_release(v29);
  sub_20C5A0ABC();
  swift_unknownObjectRelease();

  sub_20C4947E4(&v44, (a5 + 48));
  sub_20C477580(&v46, &aBlock);
  v31 = swift_allocObject();
  sub_20C4780E8(&aBlock, v31 + 16);
  v32 = *(v37 + 136);
  v33 = sub_20C479154(0, &qword_27C7C6140);
  v34 = v32(0, sub_20C57CFF4, v31, v33, v37);

  *(a5 + 80) = v34;
  sub_20C4780E8(&v46, a5 + 88);
  return a5;
}

uint64_t sub_20C57B0D4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C59EA9C();
}

uint64_t sub_20C57B164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61A8);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v7;
  v8 = sub_20C5A092C();
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61B0);
  v68 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = &v56 - v11;
  v60 = sub_20C59D4CC();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C5A01CC();
  v62 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[3] = type metadata accessor for MediaPlayerSyncLink();
  v71[4] = &protocol witness table for MediaPlayerSyncLink;
  v71[0] = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_20C589948(MEMORY[0x277D84F90]);
  sub_20C59D27C();
  swift_allocObject();
  *(a3 + 48) = sub_20C59D26C();
  sub_20C59D24C();
  swift_allocObject();
  *(a3 + 56) = sub_20C59D23C();
  sub_20C59F36C();
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  swift_allocObject();
  v18 = sub_20C59F35C();
  *(a3 + 128) = MEMORY[0x277D84FA0];
  *(a3 + 120) = v18;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  sub_20C59FE7C();
  sub_20C477580(v71, v70);
  v61 = v17;
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v57 = v15;
    v22 = v21;
    v23 = swift_slowAlloc();
    v59 = v10;
    v56 = v23;
    v69 = v23;
    *v22 = 136315138;
    v24 = *__swift_project_boxed_opaque_existential_1(v70, v70[3]);
    v58 = a1;
    v25 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionIdentifier;
    swift_beginAccess();
    v26 = v12;
    v27 = *(v12 + 16);
    v28 = v24 + v25;
    v29 = v14;
    v30 = v60;
    v27(v14, v28, v60);
    sub_20C57C834(&unk_27C7C5520, MEMORY[0x277CC95F0]);
    v31 = sub_20C5A0E6C();
    v33 = v32;
    (*(v26 + 8))(v29, v30);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    v34 = sub_20C479640(v31, v33, &v69);
    a1 = v58;

    *(v22 + 4) = v34;
    _os_log_impl(&dword_20C472000, v19, v20, "PlaybackSync: Creating playback synchronizer for group session %s", v22, 0xCu);
    v35 = v56;
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    v10 = v59;
    MEMORY[0x20F2FFF90](v35, -1, -1);
    MEMORY[0x20F2FFF90](v22, -1, -1);

    (*(v62 + 8))(v61, v57);
  }

  else
  {

    (*(v62 + 8))(v61, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
  }

  sub_20C477580(v71, a3 + 64);
  *(a3 + 32) = a1;
  *(a3 + 40) = &off_282370668;
  v36 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v37 = *(a3 + 88);
  v38 = *(a3 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(a3 + 64, v37);
  v39 = *(v38 + 32);

  v39(sub_20C57EC6C, v36, v37, v38);
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v41 = *(a3 + 88);
  v42 = *(a3 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(a3 + 64, v41);
  v43 = *(v42 + 56);

  v43(sub_20C57ECC4, v40, v41, v42);
  swift_endAccess();

  v44 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v45 = *(a3 + 88);
  v46 = *(a3 + 96);
  __swift_mutable_project_boxed_opaque_existential_1(a3 + 64, v45);
  v47 = *(v46 + 80);

  v47(sub_20C57ECCC, v44, v45, v46);
  swift_endAccess();

  v48 = [objc_opt_self() defaultCenter];
  v49 = v63;
  sub_20C5A093C();

  sub_20C479154(0, &qword_2810F3D90);
  v50 = sub_20C5A08EC();
  v70[0] = v50;
  v51 = sub_20C5A08DC();
  v52 = v66;
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  sub_20C57C834(&qword_27C7C61B8, MEMORY[0x277CC9DB0]);
  sub_20C57CF98(&qword_27C7C61C0, &qword_2810F3D90);
  v53 = v67;
  v54 = v65;
  sub_20C5A01EC();
  sub_20C477B50(v52, &qword_27C7C61A8);
  (*(v64 + 8))(v49, v54);

  swift_allocObject();
  swift_weakInit();

  sub_20C47C934(&unk_27C7C61C8, &qword_27C7C61B0);
  sub_20C5A01FC();

  (*(v68 + 8))(v53, v10);
  swift_beginAccess();
  sub_20C5A01DC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return a3;
}

uint64_t sub_20C57BB1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59F43C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_20C57BC2C(void *a1)
{
  dispatch_group_leave(*(v1 + 16));
  swift_willThrow();
  return a1;
}

uint64_t sub_20C57BD34@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C59E67C() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_20C577A58(a1, v8, v6, v7, a2);
}

unint64_t sub_20C57BF4C()
{
  result = qword_27C7C5FF8;
  if (!qword_27C7C5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5FF8);
  }

  return result;
}

uint64_t type metadata accessor for MediaPlayer()
{
  result = qword_27C7C6008;
  if (!qword_27C7C6008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C57C280()
{
  sub_20C59F43C();
  if (v0 <= 0x3F)
  {
    sub_20C59DE3C();
    if (v1 <= 0x3F)
    {
      sub_20C57C460();
      if (v2 <= 0x3F)
      {
        sub_20C57C52C();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20C57C460()
{
  if (!qword_27C7C6018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5F18);
    sub_20C573008(&qword_27C7C5F20);
    sub_20C573008(&qword_27C7C5F28);
    v0 = sub_20C59F3CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C6018);
    }
  }
}

void sub_20C57C52C()
{
  if (!qword_27C7C6020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5F38);
    sub_20C5730C8(&qword_27C7C5F40, sub_20C573074);
    sub_20C5730C8(&unk_27C7C5F50, sub_20C5078F8);
    v0 = sub_20C59F3CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C6020);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12SeymourMedia0B6PlayerC5State33_E56DBFF05AC8F72EACF772953F992F75LLO(uint64_t a1)
{
  if ((*(a1 + 136) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 136) & 3;
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_20C57C660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 137))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 136);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C57C69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 121) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 136) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C57C6F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 128) = 0;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 136) = a2;
  return result;
}

uint64_t objectdestroy_57Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_61Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

id sub_20C57C80C(id result, double a2)
{
  if (result)
  {
    LODWORD(a2) = 1.0;
    return [*(v2 + 16) playImmediatelyAtRate_];
  }

  return result;
}

uint64_t sub_20C57C834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C57C87C()
{
  result = qword_27C7C60E0;
  if (!qword_27C7C60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C60E0);
  }

  return result;
}

uint64_t sub_20C57C8F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return sub_20C526E7C(a1, v1 + 16);
}

void *sub_20C57C9AC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = &type metadata for PlayerItemUpdatePublisher;
  v37 = &off_28236FD80;
  *&v35 = a2;
  *(&v35 + 1) = a3;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = sub_20C5A036C();
  v9 = objc_opt_self();
  v10 = [v9 mainQueue];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20C477580(&v35, v34);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  sub_20C4780E8(v34, v12 + 24);
  v32 = sub_20C57CF18;
  v33 = v12;
  *&v29 = MEMORY[0x277D85DD0];
  *(&v29 + 1) = 1107296256;
  v30 = sub_20C560B50;
  v31 = &block_descriptor_150;
  v13 = _Block_copy(&v29);
  v14 = a1;

  v15 = [v7 addObserverForName:v8 object:0 queue:v10 usingBlock:v13];
  _Block_release(v13);

  v16 = a4;
  a4[4] = v15;
  v17 = [v6 defaultCenter];
  v18 = sub_20C5A036C();
  v19 = [v9 mainQueue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C477580(&v35, v34);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_20C4780E8(v34, v21 + 24);
  v32 = sub_20C57CF64;
  v33 = v21;
  *&v29 = MEMORY[0x277D85DD0];
  *(&v29 + 1) = 1107296256;
  v30 = sub_20C560B50;
  v31 = &block_descriptor_157;
  v22 = _Block_copy(&v29);

  v23 = [v17 addObserverForName:v18 object:0 queue:v19 usingBlock:v22];
  _Block_release(v22);

  v16[5] = v23;
  *&v34[0] = v14;
  swift_getKeyPath();
  sub_20C477580(&v35, &v29);
  v24 = swift_allocObject();
  sub_20C4780E8(&v29, v24 + 16);
  v25 = sub_20C59D2AC();

  v16[2] = v25;
  *&v34[0] = v14;
  swift_getKeyPath();
  sub_20C477580(&v35, &v29);
  v26 = swift_allocObject();
  sub_20C4780E8(&v29, v26 + 16);
  v27 = sub_20C59D2AC();

  v16[3] = v27;
  sub_20C4780E8(&v35, (v16 + 6));
  return v16;
}

unint64_t sub_20C57CE28()
{
  result = qword_27C7C6128;
  if (!qword_27C7C6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6128);
  }

  return result;
}

uint64_t sub_20C57CE7C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C527208(a1, v1 + 16);
}

uint64_t objectdestroy_146Tm()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20C57CF98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C479154(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20C57D008(void *a1, uint64_t a2)
{
  v5 = *(sub_20C59E67C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9 = *(v8 + *(v5 + 64));

  sub_20C577CC8(a1, a2, v6, v7, v8, v9);
}

void sub_20C57D0AC(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v104 = a2;
  v95 = a1;
  v108 = sub_20C59D61C();
  v6 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5698);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6170);
  MEMORY[0x28223BE20](v14 - 8);
  v111 = &v94 - v15;
  v16 = sub_20C5A01CC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v96 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v94 - v22;
  sub_20C59FE5C();

  v24 = sub_20C5A01BC();
  v25 = sub_20C5A08AC();

  v26 = os_log_type_enabled(v24, v25);
  v101 = a4;
  v102 = v17;
  v100 = a3;
  if (v26)
  {
    v27 = v16;
    v28 = a3;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v110 = v6;
    v31 = v30;
    v112[0] = v30;
    *v29 = 136315138;
    v32 = v28;
    v16 = v27;
    *(v29 + 4) = sub_20C479640(v32, a4, v112);
    _os_log_impl(&dword_20C472000, v24, v25, "Configuring audio language to: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v33 = v31;
    v6 = v110;
    MEMORY[0x20F2FFF90](v33, -1, -1);
    MEMORY[0x20F2FFF90](v29, -1, -1);

    v98 = *(v102 + 8);
    v98(v23, v27);
  }

  else
  {

    v98 = *(v17 + 8);
    v98(v23, v16);
  }

  v34 = [v104 options];
  v94 = sub_20C479154(0, &qword_27C7C5400);
  v35 = sub_20C5A061C();

  v36 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
LABEL_29:
    v37 = sub_20C5A0B3C();
    v99 = v16;
    if (v37)
    {
      goto LABEL_6;
    }

LABEL_30:
    v103 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v99 = v16;
  if (!v37)
  {
    goto LABEL_30;
  }

LABEL_6:
  v16 = 0;
  v110 = v35 & 0xC000000000000001;
  v105 = (v6 + 8);
  v103 = MEMORY[0x277D84F90];
  v106 = v13;
  v109 = v37;
  do
  {
    v38 = v16;
    while (1)
    {
      if (v110)
      {
        v39 = MEMORY[0x20F2FF0E0](v38, v35);
      }

      else
      {
        if (v38 >= *(v36 + 16))
        {
          goto LABEL_28;
        }

        v39 = *(v35 + 8 * v38 + 32);
      }

      v40 = v39;
      v16 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v41 = [v39 locale];
      if (v41)
      {
        v42 = v41;
        sub_20C59D58C();

        v43 = 0;
      }

      else
      {
        v43 = 1;
      }

      v6 = sub_20C59D63C();
      v44 = *(v6 - 8);
      (*(v44 + 56))(v10, v43, 1, v6);
      sub_20C57E80C(v10, v13);
      if ((*(v44 + 48))(v13, 1, v6) != 1)
      {
        break;
      }

      sub_20C477B50(v13, &qword_27C7C5698);
LABEL_9:
      ++v38;
      if (v16 == v109)
      {
        goto LABEL_31;
      }
    }

    v45 = v13;
    v46 = v10;
    v47 = v35;
    v48 = v36;
    v49 = v107;
    sub_20C59D62C();
    (*(v44 + 8))(v45, v6);
    sub_20C59D5EC();
    v50 = v49;
    v51 = v111;
    (*v105)(v50, v108);
    v6 = sub_20C59D53C();
    v52 = *(v6 - 8);
    if ((*(v52 + 48))(v51, 1, v6) == 1)
    {

      sub_20C477B50(v51, &unk_27C7C6170);
      v36 = v48;
      v35 = v47;
      v10 = v46;
      v13 = v106;
      goto LABEL_9;
    }

    v53 = sub_20C59D52C();
    v55 = v54;

    (*(v52 + 8))(v51, v6);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_20C4EC62C(0, *(v103 + 2) + 1, 1, v103);
    }

    v36 = v48;
    v57 = *(v103 + 2);
    v56 = *(v103 + 3);
    v35 = v47;
    if (v57 >= v56 >> 1)
    {
      v103 = sub_20C4EC62C((v56 > 1), v57 + 1, 1, v103);
    }

    v10 = v46;
    v58 = v103;
    *(v103 + 2) = v57 + 1;
    v59 = &v58[16 * v57];
    *(v59 + 4) = v53;
    *(v59 + 5) = v55;
    v13 = v106;
  }

  while (v16 != v109);
LABEL_31:

  v60 = sub_20C558048(v103);

  v62 = v100;
  v61 = v101;
  if ((sub_20C510360(v100, v101, v60) & 1) == 0)
  {
    v70 = v96;
    sub_20C59FE5C();

    v71 = sub_20C5A01BC();
    v72 = sub_20C5A08AC();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v112[0] = v74;
      *v73 = 136315394;
      *(v73 + 4) = sub_20C479640(v62, v61, v112);
      *(v73 + 12) = 2080;
      v75 = sub_20C5A07AC();
      v77 = v76;

      v78 = sub_20C479640(v75, v77, v112);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_20C472000, v71, v72, "Audio language %s not in available Audio Languages: %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v74, -1, -1);
      MEMORY[0x20F2FFF90](v73, -1, -1);
    }

    else
    {
    }

    v98(v70, v99);
    return;
  }

  v63 = [v104 customMediaSelectionScheme];
  if (!v63)
  {
    goto LABEL_45;
  }

  v64 = v63;
  v65 = [v63 selectors];
  sub_20C479154(0, &qword_27C7C6158);
  v66 = sub_20C5A061C();

  if (v66 >> 62)
  {
    if (!sub_20C5A0B3C())
    {
      goto LABEL_44;
    }

LABEL_35:
    if ((v66 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x20F2FF0E0](0, v66);
    }

    else
    {
      if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_60;
      }

      v67 = *(v66 + 32);
    }

    v68 = v67;

    v69 = sub_20C5A036C();
    [v95 selectMediaPresentationLanguage:v69 forMediaSelectionGroup:v104];

    return;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

LABEL_44:

LABEL_45:
  v79 = [v104 options];
  if (!v79)
  {
    sub_20C5A061C();
    v79 = sub_20C5A060C();
  }

  v80 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BA0);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_20C5A4FE0;
  *(v81 + 32) = v62;
  *(v81 + 40) = v61;

  v82 = sub_20C5A060C();

  v83 = [v80 mediaSelectionOptionsFromArray:v79 filteredAndSortedAccordingToPreferredLanguages:v82];

  v64 = sub_20C5A061C();
  if (v64 >> 62)
  {
    if (!sub_20C5A0B3C())
    {
      goto LABEL_54;
    }

LABEL_49:
    if ((v64 & 0xC000000000000001) == 0)
    {
      if (!*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v84 = *(v64 + 32);
LABEL_52:
      v85 = v84;

      goto LABEL_55;
    }

LABEL_60:
    v84 = MEMORY[0x20F2FF0E0](0, v64);
    goto LABEL_52;
  }

  if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

LABEL_54:

  v85 = 0;
LABEL_55:
  sub_20C59FE5C();
  v86 = v85;
  v87 = v104;
  v88 = sub_20C5A01BC();
  v89 = sub_20C5A08AC();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138412546;
    *(v90 + 4) = v87;
    *(v90 + 12) = 2112;
    *(v90 + 14) = v86;
    *v91 = v87;
    v91[1] = v85;
    v92 = v87;
    v93 = v86;
    _os_log_impl(&dword_20C472000, v88, v89, "No customMediaSelectionScheme for group: %@, selecting mediaSelectionOption: %@", v90, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C60F0);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v91, -1, -1);
    MEMORY[0x20F2FFF90](v90, -1, -1);
  }

  v98(v97, v99);
  [v95 selectMediaOption:v86 inMediaSelectionGroup:v87];
}

void sub_20C57DD44(void *a1, void *a2, int a3)
{
  v66 = a2;
  v62 = a1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v60 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v60 - v11;
  sub_20C59FE5C();
  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();
  v15 = os_log_type_enabled(v13, v14);
  v65 = a3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v72 = v17;
    *v16 = 136315138;
    v18 = sub_20C59E3BC();
    v20 = sub_20C479640(v18, v19, &v72);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20C472000, v13, v14, "Configuring audio focus to: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x20F2FFF90](v17, -1, -1);
    MEMORY[0x20F2FFF90](v16, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = v66;
  v23 = [v66 customMediaSelectionScheme];
  if (v23)
  {
    v64 = v23;
    v24 = [v23 selectors];
    sub_20C479154(0, &qword_27C7C6158);
    v25 = sub_20C5A061C();

    if (v25 >> 62)
    {
      goto LABEL_34;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x20F2FF0E0](0, v25);
        }

        else
        {
          if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v26 = *(v25 + 32);
        }

        v27 = v26;
        v61 = v4;

        v28 = [v27 settings];

        sub_20C479154(0, &unk_27C7C6160);
        v71 = sub_20C5A061C();

        v29 = sub_20C59E3BC();
        v31 = v30;
        if (v29 == sub_20C59E3BC() && v31 == v32)
        {

          v33 = sub_20C59F7FC();
        }

        else
        {
          v4 = sub_20C5A0E9C();

          if (v4)
          {
            v33 = sub_20C59F7FC();
          }

          else
          {
            v33 = sub_20C59F80C();
          }
        }

        v69 = v33;
        v70 = v34;
        v60[0] = v21;
        v60[1] = v5;
        if (v71 >> 62)
        {
          v21 = sub_20C5A0B3C();
          if (!v21)
          {
LABEL_41:

            v52 = v63;
            sub_20C59FE5C();
            v53 = sub_20C5A01BC();
            v54 = sub_20C5A08AC();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v72 = v56;
              *v55 = 136315138;
              v57 = sub_20C59E3BC();
              v59 = sub_20C479640(v57, v58, &v72);

              *(v55 + 4) = v59;
              _os_log_impl(&dword_20C472000, v53, v54, "No option mediaPresentationSetting for audioFocusSelection: %s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              MEMORY[0x20F2FFF90](v56, -1, -1);
              MEMORY[0x20F2FFF90](v55, -1, -1);
            }

            (v60[0])(v52, v61);
            return;
          }
        }

        else
        {
          v21 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_41;
          }
        }

        v22 = 0;
        v67 = v71 & 0xFFFFFFFFFFFFFF8;
        v68 = v71 & 0xC000000000000001;
        while (1)
        {
          if (v68)
          {
            v35 = MEMORY[0x20F2FF0E0](v22, v71);
          }

          else
          {
            if (v22 >= *(v67 + 16))
            {
              goto LABEL_33;
            }

            v35 = *(v71 + 8 * v22 + 32);
          }

          v36 = v35;
          v4 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          v37 = [v35 mediaCharacteristic];
          v38 = sub_20C5A036C();
          v39 = sub_20C5A039C();
          v7 = v40;
          v5 = sub_20C5A039C();
          v42 = v41;

          if (v39 == v5 && v7 == v42)
          {

LABEL_31:

            [v62 selectMediaPresentationSetting:v36 forMediaSelectionGroup:v66];

            return;
          }

          v25 = sub_20C5A0E9C();

          if (v25)
          {
            goto LABEL_31;
          }

          ++v22;
          if (v4 == v21)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        ;
      }

      while (sub_20C5A0B3C());
    }
  }

  sub_20C59FE5C();
  v44 = v22;
  v45 = sub_20C5A01BC();
  v46 = sub_20C5A08AC();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = v4;
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    *(v48 + 4) = v44;
    *v49 = v44;
    v50 = v44;
    _os_log_impl(&dword_20C472000, v45, v46, "No option customMediaSelectionScheme for group: %@", v48, 0xCu);
    sub_20C477B50(v49, &qword_27C7C60F0);
    MEMORY[0x20F2FFF90](v49, -1, -1);
    v51 = v48;
    v4 = v47;
    MEMORY[0x20F2FFF90](v51, -1, -1);
  }

  v21(v7, v4);
}

void sub_20C57E4A4(void *a1, void *a2, uint64_t a3, char a4)
{
  v7 = sub_20C5A01CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31[-1] - v12;
  sub_20C59FE5C();
  sub_20C5A01AC();
  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = sub_20C59F83C();
  v31[3] = v15;
  v31[4] = sub_20C57C834(&qword_27C7C6150, MEMORY[0x277D4F200]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v15);
  LOBYTE(v15) = sub_20C59ED3C();
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  if (v15)
  {
    v17 = a4;
    v18 = [a1 asset];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v19 = sub_20C59E66C();
      v21 = sub_20C4FEEE8(v19, v20, a2);
      v23 = v22;

      sub_20C57D0AC(a1, a2, v21, v23);

      sub_20C57DD44(a1, a2, v17 & 1);
    }

    else
    {

      sub_20C59FE5C();
      v24 = a1;
      v25 = sub_20C5A01BC();
      v26 = sub_20C5A089C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_20C472000, v25, v26, "%@ is not an AVURLAsset", v27, 0xCu);
        sub_20C477B50(v28, &qword_27C7C60F0);
        MEMORY[0x20F2FFF90](v28, -1, -1);
        MEMORY[0x20F2FFF90](v27, -1, -1);
      }

      v14(v10, v7);
    }
  }
}

uint64_t sub_20C57E80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C57E940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_129Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20C57EA48(void *a1, uint64_t a2)
{
  v4 = sub_20C59D4CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaPlayerSyncCoordinator();
  v8 = swift_allocObject();

  v9 = a1;
  v10 = sub_20C57B164(v9, a2, v8);
  v11 = OBJC_IVAR____TtC12SeymourMedia19MediaPlayerSyncLink_groupSessionUserIdentifier;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v7, a2 + v11, v4);
  v13 = type metadata accessor for MediaPlayerSyncCoordinator.AVCoordinatorDelegateBridge();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge_delegate];
  *&v14[OBJC_IVAR____TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12(&v14[OBJC_IVAR____TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge_localParticipantID], v7, v4);
  *(v15 + 1) = &off_282370688;
  swift_unknownObjectWeakAssign();
  v21.receiver = v14;
  v21.super_class = v13;

  v16 = objc_msgSendSuper2(&v21, sel_init);
  (*(v5 + 8))(v7, v4);
  v17 = v16;
  [v9 setCoordinationMediumDelegate_];

  v18 = *(v10 + 160);
  *(v10 + 160) = v16;

  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_20C57ECF0()
{
  result = qword_27C7C61D8;
  if (!qword_27C7C61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C61D8);
  }

  return result;
}

uint64_t sub_20C57EDB8()
{
  sub_20C498074(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void *sub_20C57EE14(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5328);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for MarketingActionItem();
  v26 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v29 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v25 = &v23 - v8;
  if (a1)
  {
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = v10;
    if (v10)
    {
      while (1)
      {
        v11 = sub_20C57F15C(v10);
        v12 = 0;
        v27 = a1 & 0xC000000000000001;
        v23 = (v26 + 56);
        v13 = (v26 + 48);
        v14 = MEMORY[0x277D84F90];
        v24 = a1;
        v15 = v9;
        while (1)
        {
          if (v27)
          {
            v17 = MEMORY[0x20F2FF0E0](v12, a1);
          }

          else
          {
            if (v12 >= *(v9 + 16))
            {
              goto LABEL_23;
            }

            v17 = *(a1 + 8 * v12 + 32);
          }

          v18 = v17;
          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v12 >= *(v11 + 2))
          {
            (*v23)(v4, 1, 1, v5);
          }

          else
          {
            v30 = v11[v12 + 32];
            MarketingActionItem.init(with:style:)(v17, &v30, v4);
          }

          if ((*v13)(v4, 1, v5) == 1)
          {
            sub_20C57F360(v4);
          }

          else
          {
            v19 = v25;
            sub_20C57F3C8(v4, v25);
            sub_20C57F3C8(v19, v29);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = sub_20C4EC604(0, v14[2] + 1, 1, v14);
            }

            v21 = v14[2];
            v20 = v14[3];
            if (v21 >= v20 >> 1)
            {
              v14 = sub_20C4EC604(v20 > 1, v21 + 1, 1, v14);
            }

            v14[2] = v21 + 1;
            sub_20C57F3C8(v29, v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21);
            a1 = v24;
          }

          ++v12;
          v16 = v9 == v28;
          v9 = v15;
          if (v16)
          {

            return v14;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        v28 = sub_20C5A0B3C();
        if (!v28)
        {
          break;
        }

        v10 = sub_20C5A0B3C();
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_20C57F15C(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      result = MEMORY[0x277D84F90];
      v5 = *(MEMORY[0x277D84F90] + 16);
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_14;
    }

    if (v3 != 3)
    {
LABEL_13:

      v5 = *(result + 2);
      if (!v5)
      {
        goto LABEL_29;
      }

      goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      result = &unk_28236ABD8;
      v5 = qword_28236ABE8;
      if (!qword_28236ABE8)
      {
        goto LABEL_29;
      }

LABEL_14:
      v7 = result + 48;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        v13 = *(v8 + 16);
        if (a1 > v13)
        {
          v14 = *(v7 - 1);
          if (*v7)
          {
            v14 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (a1 - v13 >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = a1 - v13;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }

          if (v15)
          {
            v9 = *(v7 - 16);
            v10 = *v7 & 0x80;
            v11 = sub_20C5A067C();
            *(v11 + 16) = v15;
            memset((v11 + 32), v10 | v9, v15);
          }

          else
          {
            v11 = MEMORY[0x277D84F90];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20C5A84B0;
          *(inited + 32) = v8;
          *(inited + 40) = v11;
          v8 = sub_20C57F42C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61E8);
          result = swift_arrayDestroy();
        }

        v7 += 24;
        if (!--v5)
        {

          return v8;
        }
      }
    }

    goto LABEL_13;
  }

  sub_20C59EC4C();
  v6 = sub_20C59EC5C();
  if (v6 == sub_20C59EC5C())
  {
    result = &unk_28236AC28;
  }

  else
  {
    result = &unk_28236AC60;
  }

  v5 = *(result + 2);
  if (v5)
  {
    goto LABEL_14;
  }

LABEL_29:

  return MEMORY[0x277D84F90];
}

uint64_t sub_20C57F360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C57F3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingActionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C57F42C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = (MEMORY[0x277D84F90] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C61F0);
          v16 = swift_allocObject();
          v17 = 2 * _swift_stdlib_malloc_size(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6++ = v12;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    *(v5 + 2) = v25;
    return v5;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t ArtworkDimension.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C57F6A4()
{
  result = qword_27C7C61F8;
  if (!qword_27C7C61F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C61F8);
  }

  return result;
}

uint64_t PlaybackInformationUpdated.makeNowPlayingDictionary()()
{
  v0 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v1 = sub_20C59FBAC();
  if ((v2 & 0x100) == 0)
  {
    v3 = v1;
    v4 = v2;
    v5 = sub_20C5A039C();
    v7 = v6;
    if (v4)
    {
      sub_20C493930(v5, v6, &v61);

      sub_20C57FB08(&v61);
    }

    else
    {
      *&v61 = v3;
      v62 = MEMORY[0x277D839F8];
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v8, v7, isUniquelyReferenced_nonNull_native);

      v63 = v0;
    }
  }

  v10 = sub_20C59FB6C();
  if ((v11 & 0x100) == 0)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_20C5A039C();
    v16 = v15;
    if (v13)
    {
      sub_20C493930(v14, v15, &v61);

      sub_20C57FB08(&v61);
    }

    else
    {
      *&v61 = v12;
      v62 = MEMORY[0x277D839F8];
      v17 = v63;
      v18 = v14;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v18, v16, v19);

      v63 = v17;
    }
  }

  v20 = sub_20C59FB9C();
  if (v21 != 1)
  {
    v22 = v20;
    v23 = v21;
    v24 = sub_20C5A039C();
    v26 = v24;
    v27 = v25;
    if (v23)
    {
      *&v61 = v22;
      *(&v61 + 1) = v23;
      v62 = MEMORY[0x277D837D0];
      v28 = v63;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v26, v27, v29);

      v63 = v28;
    }

    else
    {
      sub_20C493930(v24, v25, &v61);

      sub_20C57FB08(&v61);
    }
  }

  v30 = sub_20C59FB5C();
  if (v31 != 1)
  {
    v32 = v30;
    v33 = v31;
    v34 = sub_20C5A039C();
    v36 = v34;
    v37 = v35;
    if (v33)
    {
      *&v61 = v32;
      *(&v61 + 1) = v33;
      v62 = MEMORY[0x277D837D0];
      v38 = v63;
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v36, v37, v39);

      v63 = v38;
    }

    else
    {
      sub_20C493930(v34, v35, &v61);

      sub_20C57FB08(&v61);
    }
  }

  v40 = sub_20C59FBBC();
  if (v41 != 1)
  {
    v42 = v40;
    v43 = v41;
    v44 = sub_20C5A039C();
    v46 = v44;
    v47 = v45;
    if (v43)
    {
      *&v61 = v42;
      *(&v61 + 1) = v43;
      v62 = MEMORY[0x277D837D0];
      v48 = v63;
      v49 = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v46, v47, v49);

      v63 = v48;
    }

    else
    {
      sub_20C493930(v44, v45, &v61);

      sub_20C57FB08(&v61);
    }
  }

  v50 = sub_20C59FB8C();
  if ((v51 & 0x100) == 0)
  {
    v52 = v50;
    v53 = v51;
    v54 = sub_20C5A039C();
    v56 = v55;
    if (v53)
    {
      sub_20C493930(v54, v55, &v61);

      sub_20C57FB08(&v61);
    }

    else
    {
      *&v61 = v52;
      v62 = MEMORY[0x277D839F8];
      v57 = v63;
      v58 = v54;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      sub_20C494304(&v61, v58, v56, v59);

      return v57;
    }
  }

  return v63;
}

uint64_t sub_20C57FB08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C57FB88()
{
  if (*v0)
  {
    return 0x7373657270707573;
  }

  else
  {
    return 0x6873696C627570;
  }
}

uint64_t sub_20C57FBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6873696C627570 && a2 == 0xE700000000000000;
  if (v6 || (sub_20C5A0E9C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373657270707573 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C5A0E9C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C57FCA0(uint64_t a1)
{
  v2 = sub_20C5800C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C57FCDC(uint64_t a1)
{
  v2 = sub_20C5800C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C57FD24(uint64_t a1)
{
  v2 = sub_20C58016C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C57FD60(uint64_t a1)
{
  v2 = sub_20C58016C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C57FD9C(uint64_t a1)
{
  v2 = sub_20C580118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C57FDD8(uint64_t a1)
{
  v2 = sub_20C580118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricPublishingBehavior.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6208);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6210);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6218);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5800C4();
  sub_20C5A104C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20C580118();
    v14 = v18;
    sub_20C5A0E0C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20C58016C();
    sub_20C5A0E0C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_20C5800C4()
{
  result = qword_27C7C6220;
  if (!qword_27C7C6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6220);
  }

  return result;
}

unint64_t sub_20C580118()
{
  result = qword_27C7C6228;
  if (!qword_27C7C6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6228);
  }

  return result;
}

unint64_t sub_20C58016C()
{
  result = qword_27C7C6230;
  if (!qword_27C7C6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6230);
  }

  return result;
}

uint64_t MetricPublishingBehavior.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6238);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6240);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6248);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5800C4();
  v13 = v31;
  sub_20C5A103C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_20C5A0DFC();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_20C5A0C6C();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6250);
    *v21 = &type metadata for MetricPublishingBehavior;
    sub_20C5A0DBC();
    sub_20C5A0C5C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_20C580118();
    sub_20C5A0DAC();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_20C58016C();
    sub_20C5A0DAC();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t MetricPublishingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C5806BC()
{
  result = qword_27C7C6258;
  if (!qword_27C7C6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6258);
  }

  return result;
}

unint64_t sub_20C580754()
{
  result = qword_27C7C6260;
  if (!qword_27C7C6260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6260);
  }

  return result;
}

unint64_t sub_20C5807AC()
{
  result = qword_27C7C6268;
  if (!qword_27C7C6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6268);
  }

  return result;
}

unint64_t sub_20C580804()
{
  result = qword_27C7C6270;
  if (!qword_27C7C6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6270);
  }

  return result;
}

unint64_t sub_20C58085C()
{
  result = qword_27C7C6278;
  if (!qword_27C7C6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6278);
  }

  return result;
}

unint64_t sub_20C5808B4()
{
  result = qword_27C7C6280;
  if (!qword_27C7C6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6280);
  }

  return result;
}

unint64_t sub_20C58090C()
{
  result = qword_27C7C6288;
  if (!qword_27C7C6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6288);
  }

  return result;
}

unint64_t sub_20C580964()
{
  result = qword_27C7C6290;
  if (!qword_27C7C6290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6290);
  }

  return result;
}

int *static MarketingActionItem.canonical()@<X0>(uint64_t a1@<X8>)
{
  sub_20C59D2CC();
  type metadata accessor for MarketingAction();
  swift_storeEnumTagMultiPayload();
  v2 = sub_20C5A044C();
  v4 = v3;
  v5 = sub_20C5A044C();
  v7 = v6;
  v8 = sub_20C5A044C();
  v10 = v9;
  result = type metadata accessor for MarketingActionItem();
  v12 = (a1 + result[5]);
  *v12 = v2;
  v12[1] = v4;
  v13 = (a1 + result[6]);
  *v13 = v5;
  v13[1] = v7;
  v14 = (a1 + result[7]);
  *v14 = v8;
  v14[1] = v10;
  *(a1 + result[8]) = 2;
  return result;
}

uint64_t sub_20C580A70@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C59D2CC();
  type metadata accessor for MarketingAction();
  swift_storeEnumTagMultiPayload();
  v4 = sub_20C5A044C();
  v6 = v5;
  v7 = sub_20C5A044C();
  v9 = v8;
  result = sub_20C5A044C();
  v11 = a1[6];
  v12 = (a2 + a1[5]);
  *v12 = v4;
  v12[1] = v6;
  v13 = (a2 + v11);
  *v13 = v7;
  v13[1] = v9;
  v14 = a1[8];
  v15 = (a2 + a1[7]);
  *v15 = result;
  v15[1] = v16;
  *(a2 + v14) = 2;
  return result;
}

uint64_t MediaTagStringBuilder.withLocalizer(_:)(uint64_t a1)
{
  sub_20C477580(a1, v8);
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  sub_20C477580(v1 + 56, v7);
  v4 = *(v1 + 112);
  type metadata accessor for MediaTagStringBuilder();
  v5 = swift_allocObject();
  sub_20C477580(v8, v5 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  *(v5 + 96) = v3;
  *(v5 + 104) = v2;
  sub_20C4780E8(v7, v5 + 56);
  *(v5 + 112) = v4;
  return v5;
}

uint64_t static MediaPlayerSeekBegan.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MediaTagStringBuilder.__allocating_init(storefrontLocalizer:table:wheelchairStatus:platform:)(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4, char a5)
{
  v10 = swift_allocObject();
  sub_20C477580(a1, v10 + 16);
  if (!a3)
  {
    a2 = 0x617A696C61636F4CLL;
    a3 = 0xEB00000000656C62;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v10 + 96) = a2;
  *(v10 + 104) = a3;
  sub_20C4780E8(a4, v10 + 56);
  *(v10 + 112) = a5;
  return v10;
}

uint64_t MediaTagStringBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return v0;
}

uint64_t MediaTagStringBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 113, 7);
}

uint64_t MediaTagStringBuilder.isWheelchairUser.getter()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

id MediaTagStringBuilder.attributedString(for:options:)(uint64_t a1, double *a2)
{
  v2 = *(a2 + 1);
  v3 = a2[2];
  v4 = a2[3];
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  *v15 = *a2;
  v15[1] = v2;
  *&v15[2] = v3;
  *&v15[3] = v4;
  v15[4] = v5;
  v15[5] = v6;
  v15[6] = v7;
  v8 = sub_20C580F00(a1, v15);
  v9 = sub_20C582DFC(v8);

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  v11 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v11 setLineSpacing_];
  [v11 setLineHeightMultiple_];
  [v11 setAlignment_];
  [v11 setLineBreakMode_];
  v12 = [v10 length];
  [v10 addAttribute:*MEMORY[0x277D74118] value:v11 range:{0, v12}];

  v13 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  return v13;
}

unint64_t sub_20C580F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = sub_20C59EC1C();
  MEMORY[0x28223BE20](v55);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = a1;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return MEMORY[0x277D84F90];
  }

  v52 = v3;
  v19 = *(a2 + 8);
  v59 = *a2;
  v58 = v19;
  v20 = *(a2 + 16);
  v21 = *(a2 + 24);
  v22 = *(a2 + 40);
  v60 = *(a2 + 32);
  v57 = v22;
  v56 = *(a2 + 48);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = v17 + v23;
  v25 = *(v14 + 72);
  v26 = v18;
  do
  {
    sub_20C521D9C(v24, v16);
    sub_20C582FC8(v16, v12);
    v27 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
    sub_20C521E00(v12);
    if (v27 == 4)
    {
      break;
    }

    v24 += v25;
    --v26;
  }

  while (v26);
  v28 = v17 + v23;
  v54 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
  v51 = *MEMORY[0x277D740C0];
  v29 = v53;
  v50 = v25;
  while (1)
  {
    sub_20C521D9C(v28, v9);
    v62 = v59;
    *&v63 = v58;
    *(&v63 + 1) = v20;
    v64 = v21;
    v65 = v60;
    v66 = v57;
    v67 = v56;
    v30 = sub_20C58141C(v9, &v62);
    if (!v30)
    {
      sub_20C521E00(v9);
      goto LABEL_7;
    }

    v31 = v30;
    v32 = v9;
    if (v27 != 4)
    {
      goto LABEL_12;
    }

    sub_20C521D9C(v9, v29);
    if ((swift_getEnumCaseMultiPayload() & 0xFFFFFFFE) == 4)
    {
      sub_20C521E00(v9);
      v32 = v29;
LABEL_12:
      v33 = sub_20C521E00(v32);
LABEL_13:
      MEMORY[0x20F2FEAA0](v33);
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C5A065C();
      }

      sub_20C5A068C();
      v54 = v68;
      goto LABEL_7;
    }

    sub_20C521E00(v29);
    v34 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v35 = [v31 length];
    v36 = v51;
    v61[0] = v51;
    v61[4] = sub_20C479154(0, &qword_27C7C4928);
    v37 = v60;
    v61[1] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6298);
    v38 = sub_20C5A0D6C();
    v39 = v36;
    v40 = v37;
    sub_20C58302C(v61, &v62);
    v41 = v62;
    result = sub_20C4969C0(v62);
    if (v43)
    {
      break;
    }

    v38[(result >> 6) + 8] |= 1 << result;
    *(v38[6] + 8 * result) = v41;
    result = sub_20C4947E4(&v63, (v38[7] + 32 * result));
    v44 = v38[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_23;
    }

    v38[2] = v46;
    sub_20C477B50(v61, &qword_27C7C4930);
    type metadata accessor for Key(0);
    sub_20C4B26E8();
    v47 = sub_20C5A02AC();

    [v34 addAttributes:v47 range:{0, v35}];

    v48 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
    v33 = sub_20C521E00(v9);
    v29 = v53;
    v25 = v50;
    if (v48)
    {
      goto LABEL_13;
    }

LABEL_7:
    v28 += v25;
    if (!--v18)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

id sub_20C58141C(void *a1, void **a2)
{
  v171 = a1;
  v165 = sub_20C5A01CC();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v162 = &v162 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v163 = &v162 - v5;
  v6 = sub_20C59D6AC();
  v166 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v162 - v10;
  v168 = sub_20C59D46C();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v13 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C59D21C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C59EC1C();
  MEMORY[0x28223BE20](v18);
  v20 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *a2;
  v22 = a2[1];
  v169 = v21;
  sub_20C521D9C(v171, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v20;
      v80 = v170;
      v81 = v170[5];
      v82 = v170[6];
      __swift_project_boxed_opaque_existential_1(v170 + 2, v81);
      v83 = v80[12];
      v84 = v80[13];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5B60);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_20C5A4FE0;
      v86 = MEMORY[0x277D83C10];
      *(v85 + 56) = MEMORY[0x277D83B88];
      *(v85 + 64) = v86;
      *(v85 + 32) = v79;
      (*(v82 + 40))(0x4554454C504D4F43, 0xEF544E554F435F44, v83, v84, v85, v81, v82);
      goto LABEL_42;
    case 2u:
      v63 = v170;
      v64 = v20;
      v65 = v14;
      (*(v15 + 32))(v17, v64, v14);
      sub_20C59D69C();
      sub_20C59D67C();
      (*(v166 + 8))(v8, v6);
      v66 = v167;
      v67 = v168;
      if ((*(v167 + 48))(v11, 1, v168) == 1)
      {
        sub_20C477B50(v11, &qword_27C7C5820);
        v68 = v163;
        sub_20C59FE2C();
        v69 = sub_20C5A01BC();
        v70 = sub_20C5A08AC();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_20C472000, v69, v70, "MediaTagStringBuilder failed to build date from components", v71, 2u);
          MEMORY[0x20F2FFF90](v71, -1, -1);
        }

        (*(v164 + 8))(v68, v165);
        (*(v15 + 8))(v17, v65);
        return 0;
      }

      else
      {
        (*(v66 + 32))(v13, v11, v67);
        v129 = v63;
        v130 = v63[5];
        v131 = v129[6];
        __swift_project_boxed_opaque_existential_1(v129 + 2, v130);
        (*(v131 + 48))(v13, v130, v131);
        v132 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v133 = sub_20C5A036C();

        v31 = [v132 initWithString_];

        (*(v66 + 8))(v13, v67);
        (*(v15 + 8))(v17, v65);
      }

      return v31;
    case 3u:
      v73 = *v20;
      v74 = v170[5];
      v75 = v170[6];
      __swift_project_boxed_opaque_existential_1(v170 + 2, v74);
      (*(v75 + 56))(v74, v75, v73);
      if (v76)
      {
        v77 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v46 = sub_20C5A036C();

        v78 = [v77 initWithString_];
        goto LABEL_57;
      }

      v148 = v162;
      sub_20C59FE2C();
      v149 = sub_20C5A01BC();
      v150 = sub_20C5A08AC();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 134349056;
        *(v151 + 4) = v73;
        _os_log_impl(&dword_20C472000, v149, v150, "MediaTagStringBuilder failed to build localized time for duration %{public}f seconds", v151, 0xCu);
        MEMORY[0x20F2FFF90](v151, -1, -1);
      }

      (*(v164 + 8))(v148, v165);
      return 0;
    case 4u:
      v48 = v170;
      v49 = v20[1];
      v167 = *v20;
      v51 = v20[2];
      v50 = v20[3];
      v52 = v20[4];
      v53 = sub_20C479154(0, &qword_27C7C4928);
      v54.value._countAndFlagsBits = v50;
      v54.value._object = v52;
      v168 = v53;
      v55 = UIColor.init(hex:)(v54);
      if (!v55)
      {
        v55 = v22;
      }

      v56 = v169;
      v57 = v48;
      v171 = v55;
      if (v169)
      {
        v58 = v169;
      }

      else
      {
        v58 = v55;
      }

      v136 = v57[5];
      v137 = v57[6];
      __swift_project_boxed_opaque_existential_1(v57 + 2, v136);
      v139 = v57[12];
      v138 = v57[13];
      v140 = v56;
      v141 = sub_20C582C88(v51);

      (*(v137 + 40))(v167, v49, v139, v138, v141, v136, v137);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C5A4FE0;
      v143 = *MEMORY[0x277D740C0];
      *(inited + 32) = *MEMORY[0x277D740C0];
      *(inited + 64) = v168;
      *(inited + 40) = v58;
      v144 = v143;
      v145 = v58;
      sub_20C5893D4(inited);
      swift_setDeallocating();
      sub_20C477B50(inited + 32, &qword_27C7C4930);
      v146 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v147 = sub_20C5A036C();

      type metadata accessor for Key(0);
      sub_20C4B26E8();
      v46 = sub_20C5A02AC();

      v31 = [v146 initWithString:v147 attributes:v46];

      goto LABEL_75;
    case 5u:
      v90 = v20[2];
      v91 = v20[3];
      v92 = sub_20C479154(0, &qword_27C7C4928);
      v93.value._countAndFlagsBits = v90;
      v93.value._object = v91;
      v94 = UIColor.init(hex:)(v93);
      if (!v94)
      {
        v94 = v22;
      }

      v95 = v94;
      v96 = v169;
      if (v169)
      {
        v97 = v169;
      }

      else
      {
        v97 = v94;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4920);
      v152 = swift_initStackObject();
      *(v152 + 16) = xmmword_20C5A4FE0;
      v153 = *MEMORY[0x277D740C0];
      *(v152 + 32) = *MEMORY[0x277D740C0];
      *(v152 + 64) = v92;
      *(v152 + 40) = v97;
      v154 = v96;
      v155 = v153;
      v156 = v97;
      sub_20C5893D4(v152);
      swift_setDeallocating();
      sub_20C477B50(v152 + 32, &qword_27C7C4930);
      v157 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v158 = sub_20C5A036C();

      type metadata accessor for Key(0);
      sub_20C4B26E8();
      v159 = sub_20C5A02AC();

      v31 = [v157 initWithString:v158 attributes:v159];

      return v31;
    case 6u:
      v102 = *v20;
      v103 = v20[1];
      v104 = v20[2];
      v105 = v170;
      v106 = v170[5];
      v107 = v170[6];
      __swift_project_boxed_opaque_existential_1(v170 + 2, v106);
      v108 = v105[12];
      v109 = v105[13];
      v110 = sub_20C582C88(v104);

      (*(v107 + 40))(v102, v103, v108, v109, v110, v106, v107);

LABEL_42:

      goto LABEL_43;
    case 7u:
      return MediaTagSeparator.attributedString.getter();
    case 8u:
      v118 = sub_20C5A036C();

      v119 = [objc_opt_self() smm:v118 systemImageNamed:?];

      v46 = v119;
      v120 = [v46 imageWithRenderingMode_];
      if (v120)
      {
        v121 = v120;
        v122 = [objc_opt_self() textAttachmentWithImage_];
        v31 = [objc_opt_self() attributedStringWithAttachment_];
      }

      else
      {
        v31 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      }

      goto LABEL_75;
    case 9u:
LABEL_43:
      v111 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v30 = sub_20C5A036C();

      v31 = [v111 initWithString_];
      goto LABEL_44;
    case 0xAu:
      v115 = v170[10];
      v116 = v170[11];
      __swift_project_boxed_opaque_existential_1(v170 + 7, v115);
      if ((*(v116 + 8))(v115, v116))
      {

        v117 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v46 = sub_20C5A036C();

        v78 = [v117 initWithString_];
        goto LABEL_57;
      }

      v134 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v135 = sub_20C5A036C();

      v31 = [v134 initWithString_];

      return v31;
    case 0xBu:
      sub_20C5A042C();

      type metadata accessor for MediaTagStringBuilder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v43 = [objc_opt_self() bundleForClass_];
      v44 = sub_20C5A036C();

      v45 = [objc_opt_self() imageNamed:v44 inBundle:v43 withConfiguration:0];

      if (!v45)
      {
        goto LABEL_55;
      }

      v46 = [v45 imageWithRenderingMode_];

      if (v46)
      {
        v47 = [v46 imageWithRenderingMode_];
        if (v47)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_56;
    case 0xCu:
      type metadata accessor for MediaTagStringBuilder();
      v59 = swift_getObjCClassFromMetadata();
      v60 = [objc_opt_self() bundleForClass_];
      v61 = sub_20C5A036C();
      v62 = [objc_opt_self() imageNamed:v61 inBundle:v60 withConfiguration:0];

      if (!v62)
      {
        goto LABEL_55;
      }

      v46 = [v62 imageWithRenderingMode_];

      if (v46)
      {
        v47 = [v46 imageWithRenderingMode_];
        if (v47)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_56;
    case 0xDu:
      type metadata accessor for MediaTagStringBuilder();
      v98 = swift_getObjCClassFromMetadata();
      v99 = [objc_opt_self() bundleForClass_];
      v100 = sub_20C5A036C();
      v101 = [objc_opt_self() imageNamed:v100 inBundle:v99 withConfiguration:0];

      if (!v101)
      {
        goto LABEL_55;
      }

      v46 = [v101 imageWithRenderingMode_];

      if (v46)
      {
        v47 = [v46 imageWithRenderingMode_];
        if (v47)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_56;
    case 0xEu:
      v36 = sub_20C5A036C();
      v37 = [objc_opt_self() systemImageNamed_];

      if (v37 && (v38 = v37, (v39 = [v38 imageWithRenderingMode_]) != 0))
      {
        v40 = v39;
        v41 = [objc_opt_self() textAttachmentWithImage_];
        v31 = [objc_opt_self() attributedStringWithAttachment_];

        v37 = v38;
      }

      else
      {
        v31 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      }

      return v31;
    case 0xFu:
      v72 = sub_20C5A036C();
      v46 = [objc_opt_self() systemImageNamed_];

      if (v46)
      {
        v47 = [v46 imageWithRenderingMode_];
        if (v47)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_56;
    case 0x10u:
      type metadata accessor for MediaTagStringBuilder();
      v32 = swift_getObjCClassFromMetadata();
      v33 = [objc_opt_self() bundleForClass_];
      v34 = sub_20C5A036C();
      v35 = [objc_opt_self() imageNamed:v34 inBundle:v33 withConfiguration:0];

      if (v35)
      {
        goto LABEL_46;
      }

      v46 = 0;
      goto LABEL_72;
    case 0x11u:
      type metadata accessor for MediaTagStringBuilder();
      v87 = swift_getObjCClassFromMetadata();
      v88 = [objc_opt_self() bundleForClass_];
      v89 = sub_20C5A036C();
      v35 = [objc_opt_self() imageNamed:v89 inBundle:v88 withConfiguration:0];

      if (v35)
      {
        goto LABEL_46;
      }

      v46 = 0;
      goto LABEL_72;
    case 0x12u:
      type metadata accessor for MediaTagStringBuilder();
      v112 = swift_getObjCClassFromMetadata();
      v113 = [objc_opt_self() bundleForClass_];
      v114 = sub_20C5A036C();
      v35 = [objc_opt_self() imageNamed:v114 inBundle:v113 withConfiguration:0];

      if (v35)
      {
LABEL_46:
        v46 = [v35 imageWithRenderingMode_];
      }

      else
      {
        v46 = 0;
      }

LABEL_72:
      v160 = [objc_opt_self() whiteColor];
      v31 = sub_20C4B247C(v46, v160);

      goto LABEL_75;
    case 0x13u:
      type metadata accessor for MediaTagStringBuilder();
      v123 = swift_getObjCClassFromMetadata();
      v124 = [objc_opt_self() bundleForClass_];
      v125 = sub_20C5A036C();
      v126 = [objc_opt_self() imageNamed:v125 inBundle:v124 withConfiguration:0];

      if (v126)
      {
        v46 = [v126 imageWithRenderingMode_];

        if (v46)
        {
          v47 = [v46 imageWithRenderingMode_];
          if (v47)
          {
LABEL_54:
            v127 = v47;
            v128 = [objc_opt_self() textAttachmentWithImage_];
            v31 = [objc_opt_self() attributedStringWithAttachment_];

            goto LABEL_75;
          }
        }
      }

      else
      {
LABEL_55:
        v46 = 0;
      }

LABEL_56:
      v78 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
LABEL_57:
      v31 = v78;
LABEL_75:

      return v31;
    default:
      sub_20C5A043C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4920);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_20C5A4FE0;
      v24 = *MEMORY[0x277D75068];
      *(v23 + 32) = *MEMORY[0x277D75068];
      v25 = objc_allocWithZone(MEMORY[0x277D75078]);
      v26 = v24;
      v27 = [v25 init];
      *(v23 + 64) = sub_20C479154(0, &qword_27C7C62A0);
      *(v23 + 40) = v27;
      sub_20C5893D4(v23);
      swift_setDeallocating();
      sub_20C477B50(v23 + 32, &qword_27C7C4930);
      v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v29 = sub_20C5A036C();

      type metadata accessor for Key(0);
      sub_20C4B26E8();
      v30 = sub_20C5A02AC();

      v31 = [v28 initWithString:v29 attributes:v30];

LABEL_44:
      return v31;
  }
}

uint64_t sub_20C582C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_20C4C486C(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D839F8];
    v6 = MEMORY[0x277D83A80];
    do
    {
      v7 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_20C4C486C((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = v6;
      *&v11 = v7;
      *(v2 + 16) = v9 + 1;
      sub_20C4780E8(&v11, v2 + 40 * v9 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20C582D7C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

id sub_20C582DFC(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v14 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v15 = a1 & 0xC000000000000001;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = v2;
    while (1)
    {
      if (v15)
      {
        v2 = MEMORY[0x20F2FF0E0](v5, a1);
      }

      else
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v8 = v2;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = a1;
      v11 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      [v11 appendAttributedString_];
      v4 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];

      a1 = v10;
      ++v5;
      v7 = v4;
      if (v9 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v13 = v2;
    v3 = sub_20C5A0B3C();
    v2 = v13;
  }

LABEL_12:

  return v4;
}

uint64_t sub_20C582FC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59EC1C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C58302C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriUserActivityHandler.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriUserActivityHandler.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Bool __swiftcall SiriUserActivityHandler.canHandleActivity(_:)(NSUserActivity a1)
{
  v1 = [(objc_class *)a1.super.isa activityType];
  sub_20C5A039C();

  return _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0() != 4;
}

Swift::Void __swiftcall SiriUserActivityHandler.handleActivity(_:)(NSUserActivity a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_20C59FDEC();
  v9 = a1.super.isa;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_20C472000, v10, v11, "SiriUserActivityHandling %{public}@", v12, 0xCu);
    sub_20C4A7CD0(v13);
    MEMORY[0x20F2FFF90](v13, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  v15 = *(v3 + 8);
  v15(v8, v2);
  v16 = [(objc_class *)v9 activityType];
  sub_20C5A039C();

  v17 = _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0();
  if (v17 <= 1)
  {
    if (v17)
    {
      swift_getObjectType();
      sub_20C5836AC();
      goto LABEL_15;
    }

    SiriBeginSessionCriteria.init(activity:)(v9, &v25);
    v18 = v27;
    if (v27)
    {
      v19 = v28;
      v20 = v26;
      v21 = v25;
      swift_getObjectType();
      v25 = v21;
      LOBYTE(v26) = v20 & 1;
      v27 = v18;
      v28 = v19;
      sub_20C583700();
      sub_20C59F5FC();
    }
  }

  else
  {
    if (v17 == 2)
    {
      swift_getObjectType();
      sub_20C583658();
      goto LABEL_15;
    }

    if (v17 == 3)
    {
      swift_getObjectType();
      sub_20C583604();
LABEL_15:
      sub_20C59F5FC();
      return;
    }

    sub_20C59FDEC();
    v22 = sub_20C5A01BC();
    v23 = sub_20C5A089C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20C472000, v22, v23, "Invalid activity", v24, 2u);
      MEMORY[0x20F2FFF90](v24, -1, -1);
    }

    v15(v5, v2);
  }
}

BOOL sub_20C58357C(void *a1)
{
  v1 = [a1 activityType];
  sub_20C5A039C();

  return _s12SeymourMedia20SiriUserActivityTypeO8rawValueACSgSS_tcfC_0() != 4;
}

unint64_t sub_20C583604()
{
  result = qword_27C7C62A8;
  if (!qword_27C7C62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C62A8);
  }

  return result;
}

unint64_t sub_20C583658()
{
  result = qword_27C7C62B0;
  if (!qword_27C7C62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C62B0);
  }

  return result;
}

unint64_t sub_20C5836AC()
{
  result = qword_27C7C62B8;
  if (!qword_27C7C62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C62B8);
  }

  return result;
}

unint64_t sub_20C583700()
{
  result = qword_27C7C62C0;
  if (!qword_27C7C62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C62C0);
  }

  return result;
}

CGRect __swiftcall UIImage.renderRect(in:contentMode:)(CGRect in, UIViewContentMode contentMode)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v8 = CGRectGetWidth(in);
  [v2 size];
  v10 = v8 / v9;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetHeight(v23);
  [v2 size];
  if (v10 <= v11 / v12)
  {
    v10 = v11 / v12;
  }

  [v2 size];
  v14 = v13 * v10;
  [v2 size];
  v16 = v10 * v15;
  v17 = sub_20C5839AC(contentMode, x, y, width, height);
  sub_20C583B00(contentMode, x, y, width, height);
  v19 = v18;
  v20 = v17;
  v21 = v14;
  v22 = v16;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

CGRect __swiftcall UIImage.makeAspectFilledRect(in:)(CGRect in)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v6 = CGRectGetWidth(in);
  [v1 size];
  v8 = v6 / v7;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v9 = CGRectGetHeight(v18);
  [v1 size];
  if (v8 <= v9 / v10)
  {
    v8 = v9 / v10;
  }

  [v1 size];
  v12 = v11 * v8;
  [v1 size];
  v14 = v8 * v13;
  v15 = round((width - v12) * 0.5 + x);
  v16 = round((height - v8 * v13) * 0.5 + y);
  v17 = v12;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

double sub_20C5839AC(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  [v5 size];
  v13 = Width / v12;
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  Height = CGRectGetHeight(v29);
  [v5 size];
  if (v13 <= Height / v15)
  {
    v13 = Height / v15;
  }

  [v5 size];
  v17 = v16 * v13;
  [v5 size];
  v19 = a4;
  v20 = round((a4 - v17) * 0.5 + a2);
  if (a1 > 0xC)
  {
    return v20;
  }

  v21 = 0.0;
  if (((1 << a1) & 0xA80) == 0)
  {
    if (((1 << a1) & 0x1500) != 0)
    {
      v22 = a2;
      v23 = v13 * v18;
      v24 = round((a5 - v13 * v18) * 0.5 + a3);
      v25 = a3;
      v26 = a5;
      v27 = CGRectGetWidth(*(&v19 - 2));
      v30.origin.x = v20;
      v30.origin.y = v24;
      v30.size.width = v17;
      v30.size.height = v23;
      return v27 - CGRectGetWidth(v30);
    }

    return v20;
  }

  return v21;
}

void sub_20C583B00(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Width = CGRectGetWidth(*&a2);
  [v5 size];
  v13 = Width / v12;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  Height = CGRectGetHeight(v27);
  [v5 size];
  if (v13 <= Height / v15)
  {
    v13 = Height / v15;
  }

  [v5 size];
  v17 = v16;
  [v5 size];
  v18 = a5;
  v20 = v19;
  v21 = a3;
  v22 = v13 * v20;
  v23 = round((v18 - v13 * v20) * 0.5 + a3);
  if (a1 <= 0xC && ((1 << a1) & 0x620) == 0 && ((1 << a1) & 0x1840) != 0)
  {
    v24 = v17 * v13;
    v25 = a2;
    v26 = a4;
    CGRectGetHeight(*(&v21 - 1));
    v28.origin.x = round((a4 - v24) * 0.5 + a2);
    v28.origin.y = v23;
    v28.size.width = v24;
    v28.size.height = v22;
    CGRectGetHeight(v28);
  }
}

uint64_t SessionTimeline.nextCommentaryEvent()@<X0>(uint64_t a1@<X8>)
{
  sub_20C5A072C();

  return sub_20C583C94(0.0, 1, a1, v2);
}

uint64_t sub_20C583C94@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v48 = a3;
  v9 = sub_20C59DF2C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C59ECFC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v45 - v18;
  if (a2)
  {
    v20 = OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot;
    swift_beginAccess();
    sub_20C4B0A1C(v5 + v20, v19);
    if ((*(v14 + 48))(v19, 1, v13))
    {
      sub_20C477B50(v19, &qword_27C7C5E20);
      return (*(v10 + 56))(v48, 1, 1, v9);
    }

    (*(v14 + 16))(v16, v19, v13);
    sub_20C477B50(v19, &qword_27C7C5E20);
    sub_20C59EC8C();
    v22 = v21;
    v23 = sub_20C59ECDC();
    LODWORD(v49[0]) = v23;
    BYTE4(v49[0]) = BYTE4(v23) & 1;
    v50 = 0;
    sub_20C4A24A0();
    sub_20C4A24F4();
    if (sub_20C59DA7C())
    {
      sub_20C59EC7C();
      v25 = a4 - v22 + v24;
    }

    else
    {
      sub_20C59EC7C();
      v25 = v26;
    }

    (*(v14 + 8))(v16, v13);
    a1 = v25;
  }

  v47 = a1;
  v27 = *(v5 + 128);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = sub_20C4AB3B8(*(v27 + 16), 0);
    v30 = sub_20C4AE1E4(v49, &v29[(*(v10 + 80) + 32) & ~*(v10 + 80)], v28, v27);
    v45 = v49[2];
    v46 = v30;

    sub_20C483B94();
    if (v46 == v28)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v29 = MEMORY[0x277D84F90];
LABEL_12:
  v49[0] = v29;
  sub_20C584ED0(v49);
  v31 = v49[0];
  v32 = v49[0][2];
  if (!v32)
  {
LABEL_21:

    return (*(v10 + 56))(v48, 1, 1, v9);
  }

  v33 = 0;
  v34 = v47;
  v35 = v49[0] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (v33 < v31[2])
  {
    (*(v10 + 16))(v12, &v35[*(v10 + 72) * v33], v9);
    sub_20C59DF1C();
    v38 = v37;
    sub_20C59DF1C();
    v40 = v39;
    sub_20C59DF0C();
    v42 = v40 + v41;
    if (v38 > v42)
    {
      goto LABEL_25;
    }

    if (v38 > v34 || v42 <= v34)
    {
      sub_20C59DF1C();
      if (v36 > v34)
      {

        v44 = v48;
        (*(v10 + 32))(v48, v12, v9);
        return (*(v10 + 56))(v44, 0, 1, v9);
      }
    }

    ++v33;
    (*(v10 + 8))(v12, v9);
    if (v32 == v33)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t SessionTimeline.previousCommentaryEvent()@<X0>(uint64_t a1@<X8>)
{
  sub_20C5A072C();

  return sub_20C584188(0.0, 1, a1, 5.0, v2);
}

uint64_t sub_20C584188@<X0>(double a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v54) = a2;
  v53 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C62C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v51 - v10;
  v12 = sub_20C59DF2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v51 - v17;
  v18 = sub_20C59ECFC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - v23;
  if ((v54 & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot;
  swift_beginAccess();
  sub_20C4B0A1C(v5 + v25, v24);
  if (!(*(v19 + 48))(v24, 1, v18))
  {
    (*(v19 + 16))(v21, v24, v18);
    sub_20C477B50(v24, &qword_27C7C5E20);
    sub_20C59EC8C();
    v27 = v26;
    v28 = sub_20C59ECDC();
    LODWORD(v55[0]) = v28;
    BYTE4(v55[0]) = BYTE4(v28) & 1;
    v56 = 0;
    sub_20C4A24A0();
    sub_20C4A24F4();
    if (sub_20C59DA7C())
    {
      sub_20C59EC7C();
      v30 = a5 - v27 + v29;
    }

    else
    {
      sub_20C59EC7C();
      v30 = v31;
    }

    (*(v19 + 8))(v21, v18);
    a1 = v30;
LABEL_8:
    sub_20C584884(a1, 0, v11, a5);
    v32 = v5;
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_20C477B50(v11, &qword_27C7C62C8);
      v33 = v5[16];
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = sub_20C4AB3B8(*(v33 + 16), 0);
        v54 = sub_20C4AE1E4(v55, &v35[(*(v13 + 80) + 32) & ~*(v13 + 80)], v34, v33);
        v32 = v55[1];
        v11 = v55[3];
        v52 = v55[4];

        sub_20C483B94();
        if (v54 != v34)
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v55[0] = v35;
      sub_20C584ED0(v55);
      v41 = v55[0];
      v43 = v55[0][2];
      while (1)
      {
        if (!v43)
        {

          return (*(v13 + 56))(v53, 1, 1, v12);
        }

        if (v43 > v41[2])
        {
          break;
        }

        --v43;
        v44 = v41 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v43;
        v45 = *(v13 + 16);
        v45(v15, v44, v12);
        sub_20C59DF1C();
        v47 = v46;
        (*(v13 + 8))(v15, v12);
        if (v47 < a1)
        {
          v39 = v53;
          v45(v53, v44, v12);

          return (*(v13 + 56))(v39, 0, 1, v12);
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_12:
    if (a1 <= a4)
    {
      a4 = 0.0;
    }

    v36 = *(v13 + 32);
    v37 = v52;
    v36(v52, v11, v12);
    sub_20C59DF1C();
    if (a4 < a1 - v38)
    {
      v39 = v53;
      v36(v53, v37, v12);
      return (*(v13 + 56))(v39, 0, 1, v12);
    }

    v40 = v32[16];
    v41 = *(v40 + 16);
    if (!v41)
    {
      v42 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v42 = sub_20C4AB3B8(*(v40 + 16), 0);
    v54 = sub_20C4AE1E4(v55, &v42[(*(v13 + 80) + 32) & ~*(v13 + 80)], v41, v40);

    sub_20C483B94();
    if (v54 == v41)
    {
      v37 = v52;
LABEL_29:
      v55[0] = v42;
      v49 = sub_20C584ED0(v55);
      v50 = v55[0];
      MEMORY[0x28223BE20](v49);
      *(&v51 - 2) = v37;
      sub_20C584D64(sub_20C5862F4, v50, v53);

      return (*(v13 + 8))(v37, v12);
    }

LABEL_31:
    __break(1u);

    __break(1u);
    return result;
  }

  sub_20C477B50(v24, &qword_27C7C5E20);
  return (*(v13 + 56))(v53, 1, 1, v12);
}

uint64_t SessionTimeline.currentCommentaryEvent()@<X0>(char *a1@<X8>)
{
  sub_20C5A072C();

  return sub_20C584884(0.0, 1, a1, v2);
}

uint64_t sub_20C584884@<X0>(double a1@<X0>, char a2@<W1>, char *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v59 = sub_20C59DF2C();
  v10 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v53 - v14;
  v15 = sub_20C59ECFC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v53 - v20;
  if (a2)
  {
    v22 = v10;
    v23 = OBJC_IVAR____TtC12SeymourMedia15SessionTimeline_lastPlaybackSnapshot;
    swift_beginAccess();
    sub_20C4B0A1C(v5 + v23, v21);
    if ((*(v16 + 48))(v21, 1, v15))
    {
      sub_20C477B50(v21, &qword_27C7C5E20);
      return (*(v22 + 56))(a3, 1, 1, v59);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_20C477B50(v21, &qword_27C7C5E20);
    sub_20C59EC8C();
    v26 = v25;
    v27 = sub_20C59ECDC();
    v61 = v27;
    v62 = BYTE4(v27) & 1;
    v60 = 0;
    sub_20C4A24A0();
    sub_20C4A24F4();
    if (sub_20C59DA7C())
    {
      sub_20C59EC7C();
      v29 = a4 - v26 + v28;
    }

    else
    {
      sub_20C59EC7C();
      v29 = v30;
    }

    (*(v16 + 8))(v18, v15);
    a1 = v29;
    v10 = v22;
  }

  v31 = a1;
  v32 = *(v5 + 128);
  v33 = v32 + 56;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 56);
  v37 = (v34 + 63) >> 6;
  v54 = a3;
  v55 = v10 + 16;
  v56 = v10 + 32;
  v38 = (v10 + 8);
  v58 = v32;

  v39 = 0;
  while (v36)
  {
LABEL_17:
    v41 = v57;
    v42 = v59;
    (*(v10 + 16))(v57, *(v58 + 48) + *(v10 + 72) * (__clz(__rbit64(v36)) | (v39 << 6)), v59);
    v43 = v10;
    v44 = *(v10 + 32);
    v44(v12, v41, v42);
    sub_20C59DF1C();
    v46 = v45;
    sub_20C59DF1C();
    v48 = v47;
    result = sub_20C59DF0C();
    v50 = v48 + v49;
    if (v46 > v50)
    {
      goto LABEL_23;
    }

    if (v46 <= v31 && v50 > v31)
    {

      v51 = v54;
      v52 = v59;
      v44(v54, v12, v59);
      return (*(v43 + 56))(v51, 0, 1, v52);
    }

    v36 &= v36 - 1;
    result = (*v38)(v12, v59);
    v10 = v43;
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      return (*(v10 + 56))(v54, 1, 1, v59);
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      v39 = v40;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20C584D64@<X0>(uint64_t (*a1)(unint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  for (i = *(a2 + 16) - 1; i != -1; --i)
  {
    v8 = sub_20C59DF2C();
    v9 = *(v8 - 8);
    v10 = v9;
    v11 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v9 + 72) * i;
    result = a1(v11);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      (*(v10 + 16))(a3, v11, v8);
      return (*(v10 + 56))(a3, 0, 1, v8);
    }
  }

  v13 = sub_20C59DF2C();
  return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
}

uint64_t sub_20C584ED0(void **a1)
{
  v2 = *(sub_20C59DF2C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20C557D7C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_20C584F78(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_20C584F78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20C5A0E4C();
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
        sub_20C59DF2C();
        v6 = sub_20C5A067C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C59DF2C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C585344(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_20C5850A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20C5850A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C59DF2C();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_20C59DF1C();
      v28 = v27;
      sub_20C59DF1C();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v28 >= v30)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C585344(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_20C59DF2C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_20C553FB0(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_20C585D54(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_20C553FB0(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_20C553F24(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_20C59DF1C();
      v31 = v30;
      sub_20C59DF1C();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_20C59DF1C();
        v42 = v41;
        sub_20C59DF1C();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v31 < v33 == v42 >= v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v31 < v33)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_20C4EC940(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_20C4EC940((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_127;
        }

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_20C585D54(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_20C553FB0(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_20C553F24(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_20C59DF1C();
    v109 = v108;
    sub_20C59DF1C();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v109 >= v111)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_20C585D54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_20C59DF2C();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_20C59DF1C();
          v49 = v48;
          sub_20C59DF1C();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v49 < v51)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_20C59DF1C();
        v29 = v28;
        sub_20C59DF1C();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v29 >= v31)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_20C51E760(&v68, &v67, &v66);
  return 1;
}

BOOL sub_20C5862F4()
{
  sub_20C59DF1C();
  v1 = v0;
  sub_20C59DF1C();
  return v1 < v2;
}

void ImageDescriptor.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C59EA6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageDescriptor();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C586B1C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v8 + 2);
      MEMORY[0x20F2FF470](1);
      sub_20C5A049C();

      sub_20C5A09CC();
    }

    else
    {
      MEMORY[0x20F2FF470](2);
      sub_20C5A049C();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C62D0);
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x20F2FF470](0);
    sub_20C586BC8(&qword_27C7C62D8, MEMORY[0x277D53A78]);
    sub_20C5A02FC();
    sub_20C5A049C();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t ImageDescriptor.hashValue.getter()
{
  sub_20C5A0FBC();
  ImageDescriptor.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C5865E4()
{
  sub_20C5A0FBC();
  ImageDescriptor.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C586628()
{
  sub_20C5A0FBC();
  ImageDescriptor.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t _s12SeymourMedia15ImageDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59EA6C();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageDescriptor();
  MEMORY[0x28223BE20](v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v43 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C62E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  v20 = (&v43 + *(v19 + 56) - v17);
  sub_20C586B1C(a1, &v43 - v17);
  sub_20C586B1C(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v44;
    sub_20C586B1C(v18, v15);
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C62D0) + 48);
    v31 = *&v15[v29];
    v30 = *&v15[v29 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      (*(v28 + 8))(v15, v4);
LABEL_21:
      sub_20C586C10(v18);
LABEL_34:
      v41 = 0;
      return v41 & 1;
    }

    v36 = *(v20 + v29 + 8);
    v43 = *(v20 + v29);
    (*(v28 + 32))(v6, v20, v4);
    v37 = MEMORY[0x20F2FCED0](v15, v6);
    v38 = *(v28 + 8);
    v38(v15, v4);
    if ((v37 & 1) == 0)
    {
      v38(v6, v4);

      goto LABEL_33;
    }

    if (v31 == v43 && v30 == v36)
    {

      v38(v6, v4);
    }

    else
    {
      v40 = sub_20C5A0E9C();

      v38(v6, v4);
      if ((v40 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    sub_20C586C78(v18);
    v41 = 1;
    return v41 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C586B1C(v18, v9);
    v33 = *v9;
    v32 = v9[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_21;
    }

    if (v33 == *v20 && v32 == v20[1])
    {
    }

    else
    {
      v35 = sub_20C5A0E9C();

      if ((v35 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_37;
  }

  sub_20C586B1C(v18, v12);
  v23 = *v12;
  v22 = v12[1];
  v24 = v12[2];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_21;
  }

  v25 = v20[2];
  if (v23 == *v20 && v22 == v20[1])
  {
  }

  else
  {
    v27 = sub_20C5A0E9C();

    if ((v27 & 1) == 0)
    {

LABEL_33:
      sub_20C586C78(v18);
      goto LABEL_34;
    }
  }

  sub_20C479154(0, &qword_27C7C4568);
  v41 = sub_20C5A09BC();

  sub_20C586C78(v18);
  return v41 & 1;
}

uint64_t sub_20C586B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C586BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C586C10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C62E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C586C78(uint64_t a1)
{
  v2 = type metadata accessor for ImageDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ServiceSubscriptionCaching.fetch()(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  (*(v5 + 32))(v9 + v8, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = swift_allocObject();
  *(v10 + 16) = "SeymourMedia/ServiceSubscriptionCachePromising.swift";
  *(v10 + 24) = 52;
  *(v10 + 32) = 2;
  *(v10 + 40) = 14;
  *(v10 + 48) = &unk_20C5AA898;
  *(v10 + 56) = v9;
  sub_20C59E46C();
  return sub_20C59EA9C();
}

uint64_t sub_20C586E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20C47FCF0;

  return v10(a1, a3, a4);
}

uint64_t sub_20C586F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 24) + **(a4 + 24));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_20C47FCEC;

  return v10(a1, a3, a4);
}

uint64_t sub_20C5870C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C47FCEC;

  return sub_20C586F90(a1, v1 + v6, v4, v5);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20C58722C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C47FCF0;

  return sub_20C586E60(a1, v1 + v6, v4, v5);
}

uint64_t sub_20C58739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v47 = a7;
  v48 = a8;
  v49 = a10;
  v46 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_20C5A01CC();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v22 = sub_20C5A01BC();
  v23 = sub_20C5A08AC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = a1;
    v25 = v24;
    v40 = swift_slowAlloc();
    v51 = v40;
    *v25 = 134218498;
    *(v25 + 4) = v50;
    *(v25 + 12) = 2080;
    v26 = sub_20C5A0C1C();
    v43 = a6;
    v41 = v18;
    v28 = a4;
    v29 = a5;
    v30 = a2;
    v31 = sub_20C479640(v26, v27, &v51);
    v32 = a3;
    v33 = v43;

    *(v25 + 14) = v31;
    a2 = v30;
    a5 = v29;
    a4 = v28;
    *(v25 + 22) = 2048;
    a6 = v33;
    *(v25 + 24) = v33;
    a3 = v32;
    v18 = v41;
    _os_log_impl(&dword_20C472000, v22, v23, "Converting from Async-Await to Promise Main: %ld:%s:%lu", v25, 0x20u);
    v34 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x20F2FFF90](v34, -1, -1);
    v35 = v25;
    a1 = v42;
    MEMORY[0x20F2FFF90](v35, -1, -1);
  }

  (*(v44 + 8))(v21, v45);
  v36 = sub_20C5A06FC();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v47;
  v38 = v50;
  *(v37 + 40) = v48;
  *(v37 + 48) = v38;
  *(v37 + 56) = a3;
  *(v37 + 64) = a4;
  *(v37 + 72) = a5;
  *(v37 + 80) = a6;
  *(v37 + 88) = a1;
  *(v37 + 96) = a2;

  sub_20C51CFF8(0, 0, v18, v49, v37);
}

uint64_t sub_20C5876C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v19;
  *(v8 + 40) = v18;
  *(v8 + 184) = v17;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  *(v8 + 72) = swift_task_alloc();
  v10 = sub_20C5A01CC();
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_20C59E46C();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  v12 = swift_task_alloc();
  *(v8 + 128) = v12;
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  *(v8 + 136) = v13;
  *v13 = v8;
  v13[1] = sub_20C5878E4;

  return v15(v12);
}

uint64_t sub_20C5878E4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20C587D9C;
  }

  else
  {
    v2 = sub_20C5879F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C5879F8()
{
  *(v0 + 152) = sub_20C5A06DC();
  *(v0 + 160) = sub_20C5A06CC();
  v2 = sub_20C5A069C();

  return MEMORY[0x2822009F8](sub_20C587A90, v2, v1);
}

uint64_t sub_20C587A90()
{
  v20 = v0;

  sub_20C5A06CC();
  sub_20C5A069C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C59FE1C();
  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  if (v3)
  {
    v16 = v0[5];
    v18 = v0[10];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v17 = v4;
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C5A0C1C();
    v12 = sub_20C479640(v10, v11, &v19);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v16;
    _os_log_impl(&dword_20C472000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v5 + 8))(v17, v18);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[9];
  v14 = v0[6];
  (*(v0[15] + 16))(v13, v0[16], v0[14]);
  swift_storeEnumTagMultiPayload();
  v14(v13);
  sub_20C482060(v13);

  return MEMORY[0x2822009F8](sub_20C587CFC, 0, 0);
}

uint64_t sub_20C587CFC()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C587D9C()
{
  *(v0 + 168) = sub_20C5A06DC();
  *(v0 + 176) = sub_20C5A06CC();
  v2 = sub_20C5A069C();

  return MEMORY[0x2822009F8](sub_20C587E34, v2, v1);
}

uint64_t sub_20C587E34()
{
  v22 = v0;

  sub_20C5A06CC();
  sub_20C5A069C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C59FE1C();
  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  if (v3)
  {
    v18 = v0[5];
    v20 = v0[10];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v19 = v4;
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C5A0C1C();
    v12 = sub_20C479640(v10, v11, &v21);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v18;
    _os_log_impl(&dword_20C472000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v5 + 8))(v19, v20);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[18];
  v14 = v0[9];
  v15 = v0[6];
  *v14 = v13;
  swift_storeEnumTagMultiPayload();
  v16 = v13;
  v15(v14);
  sub_20C482060(v14);

  return MEMORY[0x2822009F8](sub_20C588090, 0, 0);
}

uint64_t sub_20C588090()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C588120(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v17;
  *(v8 + 48) = v16;
  *(v8 + 160) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 24) = a6;
  v10 = sub_20C5A01CC();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  *(v8 + 104) = v11;
  *v11 = v8;
  v11[1] = sub_20C5882A8;

  return v13(v8 + 16);
}

uint64_t sub_20C5882A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20C588718;
  }

  else
  {
    v2 = sub_20C5883BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C5883BC()
{
  *(v0 + 120) = sub_20C5A06DC();
  *(v0 + 128) = sub_20C5A06CC();
  v2 = sub_20C5A069C();

  return MEMORY[0x2822009F8](sub_20C588454, v2, v1);
}

uint64_t sub_20C588454()
{
  v24 = v0;

  v1 = v0[2];
  v0[17] = v1;
  sub_20C5A06CC();
  sub_20C5A069C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C59FE1C();
  v2 = sub_20C5A01BC();
  v3 = sub_20C5A08AC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  if (v4)
  {
    v18 = v0[6];
    v20 = v0[9];
    v8 = v0[3];
    v19 = v0[12];
    v9 = swift_slowAlloc();
    v21 = v1;
    v22 = swift_slowAlloc();
    v10 = v22;
    *v9 = 134218498;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    v11 = sub_20C5A0C1C();
    v13 = sub_20C479640(v11, v12, &v22);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v18;
    _os_log_impl(&dword_20C472000, v2, v3, "Finished Main A->P conversion: %ld:%s:%lu", v9, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v14 = v10;
    v1 = v21;
    MEMORY[0x20F2FFF90](v14, -1, -1);
    MEMORY[0x20F2FFF90](v9, -1, -1);

    (*(v6 + 8))(v19, v20);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v15 = v0[7];
  v22 = v1;
  v23 = 0;
  v16 = v1;
  v15(&v22);

  return MEMORY[0x2822009F8](sub_20C5886A8, 0, 0);
}

uint64_t sub_20C5886A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C588718()
{
  *(v0 + 144) = sub_20C5A06DC();
  *(v0 + 152) = sub_20C5A06CC();
  v2 = sub_20C5A069C();

  return MEMORY[0x2822009F8](sub_20C5887B0, v2, v1);
}

uint64_t sub_20C5887B0()
{
  v22 = v0;

  sub_20C5A06CC();
  sub_20C5A069C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20C59FE1C();
  v1 = sub_20C5A01BC();
  v2 = sub_20C5A08AC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  if (v3)
  {
    v17 = v0[6];
    v7 = v0[3];
    v19 = v0[9];
    v8 = swift_slowAlloc();
    v18 = v4;
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 134218498;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v10 = sub_20C5A0C1C();
    v12 = sub_20C479640(v10, v11, &v20);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v17;
    _os_log_impl(&dword_20C472000, v1, v2, "Finished Main A->P conversion: %ld:%s:%lu", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x20F2FFF90](v9, -1, -1);
    MEMORY[0x20F2FFF90](v8, -1, -1);

    (*(v5 + 8))(v18, v19);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[14];
  v14 = v0[7];
  v20 = v13;
  v21 = 1;
  v15 = v13;
  v14(&v20);

  return MEMORY[0x2822009F8](sub_20C588A04, 0, 0);
}

uint64_t sub_20C588A04()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_20C588A74()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCEC;

  JUMPOUT(0x20C588120);
}

void sub_20C588B88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20C47FCF0;

  JUMPOUT(0x20C5876C0);
}

unint64_t sub_20C588FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AD0);
    v3 = sub_20C5A0D6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20C4820C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_20C5890D4()
{
  result = qword_27C7C62F0;
  if (!qword_27C7C62F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C62F0);
  }

  return result;
}

unint64_t sub_20C589164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A18);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, v14, &qword_27C7C5758);
      v5 = v14[0];
      result = sub_20C495C64(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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

unint64_t sub_20C58929C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5AD0);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, v16, &qword_27C7C6300);
      result = sub_20C495CEC(v16);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 56 * result;
      v8 = v16[0];
      v9 = v16[1];
      v10 = v16[2];
      *(v7 + 48) = v17;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      *v7 = v8;
      v11 = (v3[7] + 32 * result);
      v12 = v19;
      *v11 = v18;
      v11[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 88;
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

unint64_t sub_20C5893D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6298);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, &v11, &qword_27C7C4930);
      v5 = v11;
      result = sub_20C4969C0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20C4947E4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_20C5894FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6328);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A90);
    v7 = sub_20C5A0D6C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20C4775E4(v9, v5, &qword_27C7C6328);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20C4820C8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
      result = sub_20C4948B4(v5 + v8, v17 + *(*(started - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20C5896D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A58);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, &v13, &qword_27C7C50A0);
      v5 = v13;
      v6 = v14;
      result = sub_20C4820C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20C4947E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_20C589800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AA8);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, &v18, &qword_27C7C6318);
      v5 = v18;
      v6 = v19;
      v7 = v20;
      v8 = v21;
      result = sub_20C495D64(v18, v19, v20, v21);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 32 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      v11[3] = v8;
      v12 = v3[7] + 40 * result;
      v13 = v22;
      v14 = v23;
      *(v12 + 32) = v24;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      v4 += 72;
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

unint64_t sub_20C58995C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A88);
    v3 = sub_20C5A0D6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_20C4BFD7C(v7, v8);
      result = sub_20C4820C8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_20C589A88(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_20C5A0D6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_20C4820C8(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_20C589B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A98);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, &v15, &qword_27C7C5C88);
      v5 = v15;
      v6 = v16;
      result = sub_20C4820C8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

unint64_t sub_20C589CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49F8);
    v3 = sub_20C5A0D6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C4775E4(v4, v13, &qword_27C7C5E10);
      result = sub_20C495C20(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_20C4947E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_20C589E04(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_20C5A0D6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_20C4820C8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

id sub_20C589F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResumeWorkoutIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C589FAC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_20C59EBBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20C48DF30())
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v15 = sub_20C5A036C();
    v16 = [v14 initWithActivityType_];

    v17 = [objc_allocWithZone(MEMORY[0x277CD3FB0]) initWithCode:2 userActivity:v16];
    a2();
  }

  else
  {
    v30 = v11;
    v31 = a3;
    v32 = a2;
    sub_20C59FDEC();
    (*(v7 + 16))(v9, a1, v6);
    v18 = sub_20C5A01BC();
    v19 = sub_20C5A089C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = v10;
      v21 = v20;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v21 = 136446210;
      sub_20C4FE818();
      v22 = sub_20C5A0E6C();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      v25 = sub_20C479640(v22, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20C472000, v18, v19, "Session is not eligible for intent control, not resuming: %{public}s", v21, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x20F2FFF90](v26, -1, -1);
      MEMORY[0x20F2FFF90](v21, -1, -1);

      (*(v30 + 8))(v13, v29);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v30 + 8))(v13, v10);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277CD3FB0]) initWithCode:3 userActivity:0];
    v32();
  }
}

void sub_20C58A33C(void *a1, void (*a2)(void), uint64_t a3)
{
  v19[2] = a3;
  v20 = a2;
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  v9 = a1;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A089C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[1] = v3;
    v14 = v13;
    v23 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2FF3F0](v21, v22);
    v17 = sub_20C479640(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20C472000, v10, v11, "Session query failed, not resuming: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F2FFF90](v14, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = [objc_allocWithZone(MEMORY[0x277CD3FB0]) initWithCode:5 userActivity:0];
  v20();
}

uint64_t sub_20C58A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);

  return sub_20C59EA9C();
}

uint64_t sub_20C58A7D4(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t *, __n128), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v21 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v20 - v17;
  v22 = a5;
  a3(&v22, v16);
  swift_storeEnumTagMultiPayload();
  sub_20C4E1800(v11, v14, a6);
  sub_20C4E1800(v14, v18, a6);
  v21(v18);
  return sub_20C477B50(v18, a6);
}

uint64_t sub_20C58A958(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  return sub_20C49B78C(v6, 0);
}

uint64_t sub_20C58A9EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v49 = *(v51 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v52 = &v45 - v16;
  v17 = sub_20C5A01CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  sub_20C5A01AC();
  (*(v18 + 8))(v20, v17);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12SeymourMedia26ResumeWorkoutIntentHandler_sessionClient), *(v3 + OBJC_IVAR____TtC12SeymourMedia26ResumeWorkoutIntentHandler_sessionClient + 24));
  sub_20C59F29C();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20C58AF84;
  *(v23 + 24) = v21;
  v24 = v47;
  (*(v6 + 16))(v8, v11, v47);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v8, v24);
  v27 = (v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20C58AFA0;
  v27[1] = v23;
  v28 = v22;

  v29 = v46;
  sub_20C59EA9C();
  (*(v6 + 8))(v11, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20C58AFEC;
  *(v31 + 24) = v30;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  (*(v49 + 16))(v50, v29, v51);
  v35 = v32;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v37 = (v48 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v36, v33, v34);
  v39 = (v38 + v37);
  *v39 = sub_20C4907C8;
  v39[1] = v31;

  v40 = v52;
  sub_20C59EA9C();
  v41 = *(v35 + 8);
  v41(v29, v34);
  v42 = sub_20C59EABC();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_20C4907D4, v43);

  return (v41)(v40, v34);
}

uint64_t objectdestroy_24Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_20C58B180@<X0>(_OWORD *a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63C0);
  *&v24 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63C8);
  MEMORY[0x28223BE20](v7 - 8);
  v23[0] = v23 - v8;
  v25 = sub_20C59DFBC();
  v26 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63D0);
  sub_20C47C934(&qword_27C7C63D8, &qword_27C7C63C0);
  sub_20C5A00BC();

  sub_20C5A059C();
  v10 = v23[0];
  sub_20C5A009C();
  v11 = v23[1];
  sub_20C5A00CC();
  if (v11)
  {

    v12 = *(v24 + 8);
    v12(v4, v1);
    v12(v6, v1);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63E0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  else
  {

    v14 = *(v24 + 8);
    v14(v4, v1);
    v14(v6, v1);
  }

  v15 = v10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63E0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    result = sub_20C477B50(v15, &qword_27C7C63C8);
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
  }

  else
  {
    swift_getKeyPath();
    sub_20C5A00DC();

    v24 = v27;
    v19 = v28;
    v20 = v29;
    result = (*(v17 + 8))(v15, v16);
    v21 = v24;
  }

  v22 = v30;
  *v30 = v21;
  *(v22 + 2) = v19;
  *(v22 + 3) = v20;
  return result;
}

uint64_t sub_20C58B5BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C589800(MEMORY[0x277D84F90]);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v39 = a1;

  v10 = 0;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {

          return v4;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }

LABEL_12:
    v12 = __clz(__rbit64(v8)) | (v10 << 6);
    v13 = (*(v39 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_20C483FD8(*(v39 + 56) + 40 * v12, &v48);
    v47[0] = v15;
    v47[1] = v14;

    sub_20C58B180(&v43);
    if (v2)
    {
      break;
    }

    if (*(&v44 + 1))
    {
      v17 = *(&v43 + 1);
      v16 = v43;
      v38 = *(&v44 + 1);
      v18 = v44;
      sub_20C58C228(v47, &v43);
      v40 = v44;
      v41 = v45;
      v42 = v46;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v4;
      v36 = v17;
      v37 = v16;
      v21 = sub_20C495D64(v16, v17, v18, v38);
      v22 = v4[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_29;
      }

      v25 = v20;
      if (v4[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v49;
          if ((v20 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_20C4BB258();
          v4 = v49;
          if ((v25 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_20C4B8F10(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_20C495D64(v37, v36, v18, v38);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_31;
        }

        v21 = v26;
        v4 = v49;
        if ((v25 & 1) == 0)
        {
LABEL_21:
          v4[(v21 >> 6) + 8] |= 1 << v21;
          v28 = (v4[6] + 32 * v21);
          *v28 = v37;
          v28[1] = v36;
          v28[2] = v18;
          v28[3] = v38;
          v29 = v4[7] + 40 * v21;
          v30 = v40;
          v31 = v41;
          *(v29 + 32) = v42;
          *v29 = v30;
          *(v29 + 16) = v31;
          v32 = v4[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_30;
          }

          v4[2] = v34;
          goto LABEL_5;
        }
      }

      sub_20C4949E4(&v40, v4[7] + 40 * v21);

LABEL_5:

      v2 = 0;
    }

    v8 &= v8 - 1;
    sub_20C477B50(v47, &unk_27C7C5BE0);
  }

  sub_20C477B50(v47, &unk_27C7C5BE0);

  return v4;
}

uint64_t sub_20C58B8C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v74 = sub_20C59ED7C();
  v76 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63F0);
  v77 = *(v75 - 8);
  v10 = MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v68 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63F8);
  v90 = *(v84 - 8);
  v13 = MEMORY[0x28223BE20](v84);
  v79 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v78 = &v68 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v17);
  v87 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63C0);
  MEMORY[0x28223BE20](v21 - 8);
  v71 = &v68 - v22;
  v23 = sub_20C5A007C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6400);
  v31 = *(v30 - 8);
  v88 = v30;
  v89 = v31;
  v32 = MEMORY[0x28223BE20](v30);
  v69 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v85 = &v68 - v34;
  v93 = a1;
  v94 = a2;
  v35 = sub_20C58C2A0();
  v36 = MEMORY[0x277D837D0];
  v70 = v35;
  MEMORY[0x20F2FD1F0](v95, &v93, MEMORY[0x277D837D0], v35);
  v91 = 46;
  v92 = 0xE100000000000000;
  MEMORY[0x20F2FD1F0](&v93, &v91, v36, v35);
  sub_20C59ED6C();
  v37 = v9;
  sub_20C5A008C();
  v38 = sub_20C5A00AC();
  (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
  sub_20C59ED6C();
  sub_20C58C2F4();
  v39 = MEMORY[0x277D83E40];
  v83 = v19;
  v40 = v7;
  v41 = v74;
  sub_20C5A006C();
  v42 = *(v24 + 8);
  v86 = v24 + 8;
  v81 = v23;
  v42(v27, v23);
  v82 = v42;
  sub_20C477B50(v40, &qword_27C7C63E8);
  (*(v76 + 8))(v37, v41);
  v43 = v72;
  MEMORY[0x20F2FD240](v19, v39);
  v44 = sub_20C47C934(&qword_27C7C6418, &qword_27C7C63F0);
  v45 = v73;
  v46 = v43;
  v47 = v75;
  MEMORY[0x20F2FD1F0](v43, v75, v44);
  v48 = *(v77 + 1);
  v48(v46, v47);
  v49 = v87;
  sub_20C59ED5C();
  v48(v45, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C63D0);
  sub_20C47C934(&qword_27C7C6420, &qword_27C7C63F8);
  v51 = v71;
  v76 = v50;
  v52 = v84;
  sub_20C5A005C();
  v53 = *(v90 + 8);
  v90 += 8;
  v74 = v53;
  (v53)(v49, v52);
  v54 = v29;
  v42(v29, v23);
  v55 = v69;
  MEMORY[0x20F2FD230](v51, v50);
  v75 = sub_20C47C934(&qword_27C7C6428, &qword_27C7C6400);
  v56 = v88;
  MEMORY[0x20F2FD1F0](v55, v88, v75);
  v57 = *(v89 + 8);
  v89 += 8;
  v77 = v57;
  v57(v55, v56);
  v91 = v95[0];
  v92 = v95[1];
  sub_20C59ED5C();

  v58 = v93;
  v59 = v94;
  sub_20C59ED6C();
  v91 = v58;
  v92 = v59;
  v60 = v78;
  v61 = v84;
  sub_20C5A004C();
  v62 = v79;
  sub_20C5A004C();

  sub_20C5A003C();
  v63 = v74;
  (v74)(v62, v61);
  v63(v60, v61);
  v82(v54, v81);
  sub_20C59ED6C();
  v64 = v60;
  sub_20C5A004C();
  v65 = v85;
  v66 = v88;
  sub_20C5A003C();
  v63(v64, v61);
  v82(v54, v81);
  v63(v83, v61);
  v63(v87, v61);
  return v77(v65, v66);
}

uint64_t sub_20C58C228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C58C2A0()
{
  result = qword_27C7C6408;
  if (!qword_27C7C6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6408);
  }

  return result;
}

unint64_t sub_20C58C2F4()
{
  result = qword_27C7C6410;
  if (!qword_27C7C6410)
  {
    sub_20C59ED7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6410);
  }

  return result;
}

uint64_t sub_20C58C34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_20C58C39C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_20C58C3F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_20C58C408(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_20C58C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20C4775E4(a3, v25 - v10, &unk_27C7C5980);
  v12 = sub_20C5A06FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20C477B50(v11, &unk_27C7C5980);
  }

  else
  {
    sub_20C5A06EC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20C5A069C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20C5A045C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20C477B50(a3, &unk_27C7C5980);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20C477B50(a3, &unk_27C7C5980);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *ArchivedSessionService.__allocating_init(archivedSessionClient:standaloneWorkoutTimeProvider:workoutPlanArchiver:eventHub:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[13] = 0;
  v10[14] = 0;
  sub_20C477580(a1, (v10 + 2));
  sub_20C477580(a2, v20);
  type metadata accessor for SessionArchivalServiceCoordinator(0);
  swift_allocObject();
  v11 = sub_20C47E230(a4, a5, v20);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v10[7] = v11;
  sub_20C4780E8(a3, (v10 + 8));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = (v11 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onShouldTrackSession);
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_20C59267C;
  v13[1] = v12;

  sub_20C47E6BC(v14);

  v15 = v10[7];
  v16 = swift_allocObject();
  swift_weakInit();

  v17 = (v15 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onArchiveSession);
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_20C592684;
  v17[1] = v16;

  sub_20C47E6BC(v18);

  return v10;
}

uint64_t sub_20C58C990(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + 104), sub_20C4C5B10(v3), , v3))
  {
    v4 = v3(a1);
    sub_20C47E6BC(v3);
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_20C58CA2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C58CAA0(a1, a2);
  }

  return result;
}

uint64_t sub_20C58CAA0(uint64_t a1, uint64_t a2)
{
  v142 = a2;
  v164 = *MEMORY[0x277D85DE8];
  v3 = sub_20C5A01CC();
  v159 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C59EBBC();
  v143 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v140 = v7;
  v141 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v111 - v9;
  v137 = sub_20C59D6DC();
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59D46C();
  v151 = *(v12 - 8);
  v152 = v12;
  MEMORY[0x28223BE20](v12);
  v138 = v13;
  v150 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_20C59DE3C();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v111 - v16;
  v149 = sub_20C59DEEC();
  v139 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v17;
  MEMORY[0x28223BE20](v18);
  v148 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6430);
  MEMORY[0x28223BE20](v20 - 8);
  v130 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v157 = &v111 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE8);
  MEMORY[0x28223BE20](v24 - 8);
  v121 = &v111 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v129 = &v111 - v27;
  MEMORY[0x28223BE20](v28);
  v160 = &v111 - v29;
  v156 = sub_20C59DF4C();
  v30 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v155 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v154 = &v111 - v33;
  v34 = sub_20C59D91C();
  v35 = *(v34 - 8);
  v161 = v34;
  v162 = v35;
  MEMORY[0x28223BE20](v34);
  v153 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v111 - v38;
  v40 = sub_20C59ECFC();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59EB9C();
  if ((*(v41 + 48))(v39, 1, v40) != 1)
  {
    (*(v41 + 32))(v43, v39, v40);
    v48 = sub_20C58DBF8();
    v118 = v6;
    v128 = v10;
    v119 = a1;
    v117 = v40;
    v116 = v41;
    v127 = v43;
    if (v48)
    {
      v49 = sub_20C59EB1C();
      v50 = v49;
      v51 = *(v49 + 32);
      v112 = ((1 << v51) + 63) >> 6;
      if ((v51 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v111 = &v111;
        MEMORY[0x28223BE20](v49);
        v113 = &v111 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v113, v52);
        v114 = 0;
        v53 = 0;
        v146 = v50;
        v55 = *(v50 + 56);
        v50 += 56;
        v54 = v55;
        v115 = v50;
        v56 = 1 << *(v50 - 24);
        v57 = -1;
        if (v56 < 64)
        {
          v57 = ~(-1 << v56);
        }

        v58 = v57 & v54;
        v59 = (v56 + 63) >> 6;
        v126 = v162 + 16;
        v125 = *MEMORY[0x277D50AA0];
        v124 = (v30 + 104);
        v123 = (v30 + 8);
        v122 = v162 + 8;
        v60 = v162;
        v61 = v156;
        while (v58)
        {
          v62 = __clz(__rbit64(v58));
          v159 = (v58 - 1) & v58;
LABEL_17:
          v65 = v62 | (v53 << 6);
          v66 = *(v146 + 48);
          v67 = *(v60 + 72);
          v120 = v65;
          v68 = v153;
          v69 = v161;
          (*(v60 + 16))(v153, v66 + v67 * v65, v161);
          v30 = v154;
          sub_20C59D90C();
          v70 = v155;
          (*v124)(v155, v125, v61);
          LODWORD(v158) = sub_20C59DF3C();
          v50 = v123;
          v71 = *v123;
          (*v123)(v70, v61);
          v71(v30, v61);
          (*(v60 + 8))(v68, v69);
          v58 = v159;
          if (v158)
          {
            *&v113[(v120 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v120;
            if (__OFADD__(v114++, 1))
            {
              __break(1u);
              goto LABEL_21;
            }
          }
        }

        v63 = v53;
        while (1)
        {
          v53 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          if (v53 >= v59)
          {
            v73 = sub_20C556944(v113, v112, v114, v146);
            goto LABEL_23;
          }

          v64 = *(v115 + 8 * v53);
          ++v63;
          if (v64)
          {
            v62 = __clz(__rbit64(v64));
            v159 = (v64 - 1) & v64;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_31:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v110 = swift_slowAlloc();
      v73 = sub_20C59257C(v110, v112, v50, sub_20C58DE40, 0);

      MEMORY[0x20F2FFF90](v110, -1, -1);
    }

    else
    {
LABEL_21:
      v73 = MEMORY[0x277D84FA0];
    }

LABEL_23:
    v163 = v73;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6438);
    sub_20C5926B8();
    v74 = v160;
    sub_20C5A05AC();

    v75 = v129;
    sub_20C4775E4(v74, v129, &qword_27C7C5CE8);
    v76 = v161;
    v77 = v162;
    v78 = *(v162 + 48);
    if (v78(v75, 1, v161) != 1)
    {
      sub_20C59D8DC();
      v80 = v79;
      v81 = *(v77 + 8);
      v81(v75, v76);
      if (v80 <= 0.0)
      {
        goto LABEL_28;
      }

      v75 = v121;
      sub_20C4775E4(v160, v121, &qword_27C7C5CE8);
      if (v78(v75, 1, v76) != 1)
      {
        sub_20C59D8EC();
        v81(v75, v76);
        v82 = 0;
LABEL_29:
        v83 = v119;
        v84 = v145;
        v85 = sub_20C59DABC();
        v86 = v157;
        (*(*(v85 - 8) + 56))(v157, v82, 1, v85);
        sub_20C59EC7C();
        sub_20C5A070C();
        sub_20C59EB2C();
        v87 = sub_20C59DD5C();
        v161 = v88;
        v162 = v87;
        v89 = *(v132 + 8);
        v90 = v133;
        v89(v84, v133);
        v158 = sub_20C59EB6C();
        v156 = sub_20C59EAFC();
        v91 = v131;
        sub_20C59EB2C();
        sub_20C59DE1C();
        v89(v91, v90);
        v92 = v150;
        v159 = *(v151 + 16);
        v93 = v142;
        v94 = v152;
        (v159)(v150, v142, v152);
        sub_20C4775E4(v86, v130, &qword_27C7C6430);
        v95 = v134;
        sub_20C59D6CC();
        sub_20C59D6BC();
        (*(v135 + 8))(v95, v137);
        v96 = v148;
        v97 = v92;
        sub_20C59DEDC();
        v98 = sub_20C5A06FC();
        (*(*(v98 - 8) + 56))(v128, 1, 1, v98);
        v99 = v143;
        v100 = v141;
        v101 = v118;
        (*(v143 + 16))(v141, v83, v118);
        (v159)(v97, v93, v94);
        v102 = v139;
        (*(v139 + 16))(v147, v96, v149);
        v103 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v104 = v151;
        v105 = (v140 + *(v151 + 80) + v103) & ~*(v151 + 80);
        v106 = (v138 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
        v107 = (*(v102 + 80) + v106 + 8) & ~*(v102 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = 0;
        *(v108 + 24) = 0;
        (*(v99 + 32))(v108 + v103, v100, v101);
        (*(v104 + 32))(v108 + v105, v150, v152);
        *(v108 + v106) = v144;
        v109 = v149;
        (*(v102 + 32))(v108 + v107, v147, v149);

        sub_20C58C49C(0, 0, v128, &unk_20C5AAB08, v108);

        (*(v102 + 8))(v148, v109);
        sub_20C477B50(v157, &qword_27C7C6430);
        sub_20C477B50(v160, &qword_27C7C5CE8);
        return (*(v116 + 8))(v127, v117);
      }
    }

    sub_20C477B50(v75, &qword_27C7C5CE8);
LABEL_28:
    v82 = 1;
    goto LABEL_29;
  }

  sub_20C477B50(v39, &qword_27C7C5E20);
  sub_20C59FE0C();
  v44 = sub_20C5A01BC();
  v45 = sub_20C5A089C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_20C472000, v44, v45, "Not Archiving Session: No active session playback", v46, 2u);
    MEMORY[0x20F2FFF90](v46, -1, -1);
  }

  return (*(v159 + 8))(v5, v3);
}

BOOL sub_20C58DBF8()
{
  v0 = sub_20C59E75C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D28);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5];
  sub_20C59EB5C();
  v7 = sub_20C59E35C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20C477B50(v6, &qword_27C7C5D28);
    v9 = 0;
    v10 = 1;
    v11 = 1;
  }

  else
  {
    sub_20C59E34C();
    (*(v8 + 8))(v6, v7);
    v10 = sub_20C59E74C();
    v9 = v12;
    v11 = v13;
    (*(v1 + 8))(v3, v0);
  }

  v18 = v10;
  v19 = v9;
  v20 = v11 & 1;
  v17[7] = 1;
  sub_20C592A1C();
  sub_20C592A70();
  v14 = sub_20C59DA7C();
  sub_20C481884(v10, v9, v11 & 1);
  return (v14 & 1) != 0 && sub_20C58F0AC();
}

uint64_t sub_20C58DE40()
{
  v0 = sub_20C59DF4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_20C59D90C();
  (*(v1 + 104))(v3, *MEMORY[0x277D50AA0], v0);
  v7 = sub_20C59DF3C();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_20C58DF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_20C59DE3C();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_20C59D46C();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();
  v11 = sub_20C59EBBC();
  v7[19] = v11;
  v7[20] = *(v11 - 8);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v12 = sub_20C5A01CC();
  v7[24] = v12;
  v7[25] = *(v12 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C58E1FC, 0, 0);
}

uint64_t sub_20C58E1FC()
{
  v46 = v0;
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v8 = v0[6];
  v7 = v0[7];
  sub_20C59FE0C();
  v9 = *(v3 + 16);
  v0[29] = v9;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  (*(v5 + 16))(v4, v7, v6);
  v10 = sub_20C5A01BC();
  v43 = sub_20C5A08AC();
  log = v10;
  v11 = os_log_type_enabled(v10, v43);
  v12 = v0[28];
  v14 = v0[24];
  v13 = v0[25];
  v15 = v0[23];
  v16 = v0[19];
  v17 = v0[20];
  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  if (v11)
  {
    v42 = v0[28];
    v21 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v21 = 136446466;
    sub_20C5929AC(&qword_27C7C53F0, MEMORY[0x277D53AE0]);
    v39 = v13;
    v40 = v14;
    v22 = sub_20C5A0E6C();
    v24 = v23;
    v38 = v20;
    v25 = v18;
    v26 = *(v17 + 8);
    v26(v15, v16);
    v27 = sub_20C479640(v22, v24, &v45);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    sub_20C5929AC(&qword_27C7C5268, MEMORY[0x277CC9578]);
    v28 = sub_20C5A0E6C();
    v30 = v29;
    (*(v19 + 8))(v25, v38);
    v31 = sub_20C479640(v28, v30, &v45);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_20C472000, log, v43, "Archiving %{public}s with startDate %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v41, -1, -1);
    MEMORY[0x20F2FFF90](v21, -1, -1);

    v32 = *(v39 + 8);
    v32(v42, v40);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v26 = *(v17 + 8);
    v26(v15, v16);
    v32 = *(v13 + 8);
    v32(v12, v14);
  }

  v0[31] = v32;
  v0[32] = v26;
  v33 = v0[15];
  __swift_project_boxed_opaque_existential_1((v0[8] + 16), *(v0[8] + 40));
  sub_20C59EFAC();
  v34 = swift_task_alloc();
  v0[33] = v34;
  *(v34 + 16) = "SeymourMedia/ArchivedSessionService.swift";
  *(v34 + 24) = 41;
  *(v34 + 32) = 2;
  *(v34 + 40) = 67;
  *(v34 + 48) = v33;
  v35 = swift_task_alloc();
  v0[34] = v35;
  *v35 = v0;
  v35[1] = sub_20C58E620;
  v36 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v35, 0, 0, 0xD000000000000013, 0x800000020C5AB7D0, sub_20C59299C, v34, v36);
}

uint64_t sub_20C58E620()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_20C58EAE4;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = sub_20C58E770;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C58E770()
{
  v39 = v0;
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[6];
  sub_20C59FE0C();
  v1(v2, v4, v3);
  v5 = sub_20C5A01BC();
  v6 = sub_20C5A08AC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[31];
  v37 = v0[32];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[22];
  v12 = v0[19];
  if (v7)
  {
    v35 = v0[27];
    v13 = swift_slowAlloc();
    v34 = v10;
    v14 = swift_slowAlloc();
    v38 = v14;
    *v13 = 136446210;
    sub_20C5929AC(&qword_27C7C53F0, MEMORY[0x277D53AE0]);
    v33 = v8;
    v15 = sub_20C5A0E6C();
    v17 = v16;
    v37(v11, v12);
    v18 = sub_20C479640(v15, v17, &v38);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20C472000, v5, v6, "Archiving Workout Plan for %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F2FFF90](v14, -1, -1);
    MEMORY[0x20F2FFF90](v13, -1, -1);

    v33(v35, v34);
  }

  else
  {

    v37(v11, v12);
    v8(v9, v10);
  }

  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[8];
  v23 = v22[11];
  v24 = v22[12];
  __swift_project_boxed_opaque_existential_1(v22 + 8, v23);
  sub_20C59EB2C();
  v25 = sub_20C59DD5C();
  v27 = v26;
  v0[36] = v26;
  (*(v19 + 8))(v20, v21);
  v28 = sub_20C59EAFC();
  v30 = v29;
  v0[37] = v29;
  v36 = (*(v24 + 8) + **(v24 + 8));
  v31 = swift_task_alloc();
  v0[38] = v31;
  *v31 = v0;
  v31[1] = sub_20C58EE2C;

  return v36(v25, v27, v28, v30, v23, v24);
}

uint64_t sub_20C58EAE4()
{
  v35 = v0;
  v1 = v0[35];
  v2 = v0[29];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);
  sub_20C59FE0C();
  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_20C5A01BC();
  v8 = sub_20C5A089C();

  if (os_log_type_enabled(v7, v8))
  {
    v29 = v0[32];
    v30 = v0[35];
    v32 = v0[26];
    v33 = v0[31];
    v31 = v0[24];
    v9 = v0[21];
    v10 = v0[19];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136446466;
    sub_20C5929AC(&qword_27C7C53F0, MEMORY[0x277D53AE0]);
    v13 = sub_20C5A0E6C();
    v15 = v14;
    v29(v9, v10);
    v16 = sub_20C479640(v13, v15, &v34);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2082;
    swift_getErrorValue();
    v17 = MEMORY[0x20F2FF3F0](v0[3], v0[4]);
    v19 = sub_20C479640(v17, v18, &v34);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_20C472000, v7, v8, "Error archiving session (%{public}s: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v12, -1, -1);
    MEMORY[0x20F2FFF90](v11, -1, -1);

    v33(v32, v31);
  }

  else
  {
    v20 = v0[35];
    v22 = v0[31];
    v21 = v0[32];
    v23 = v0[26];
    v24 = v0[24];
    v25 = v0[21];
    v26 = v0[19];

    v21(v25, v26);
    v22(v23, v24);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_20C58EE2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t ArchivedSessionService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  sub_20C47E6BC(*(v0 + 104));
  return v0;
}

BOOL sub_20C58F0AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_20C59DF8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59EB3C();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_20C59EB7C();
    v11 = sub_20C59E73C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v2, 1, v11) == 1)
    {
      sub_20C477B50(v2, &qword_27C7C4688);
    }

    else
    {
      v13 = sub_20C59E6FC();
      (*(v12 + 8))(v2, v11);
      v14 = sub_20C510458(3, v13);

      if (v14)
      {
        sub_20C59DF7C();
        v10 = v15 > 0.0;
LABEL_8:
        (*(v7 + 8))(v9, v6);
        return v10;
      }
    }

    v10 = 0;
    goto LABEL_8;
  }

  sub_20C477B50(v5, &qword_27C7C4DF0);
  return 0;
}

uint64_t sub_20C58F358(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6480);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5078);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C592BFC;
  *(v34 + 24) = v32;

  v33(sub_20C4C00E8, v34);
}

uint64_t sub_20C58F734(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6478);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59E0);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C592BD4;
  *(v34 + 24) = v32;

  v33(sub_20C48173C, v34);
}

uint64_t sub_20C58FB10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6460);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A70);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C592AC4;
  *(v34 + 24) = v32;

  v33(sub_20C48173C, v34);
}

uint64_t sub_20C58FEEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6468);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59A0);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C592AEC;
  *(v34 + 24) = v32;

  v33(sub_20C48173C, v34);
}

uint64_t sub_20C5902C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6470);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C59D0);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C592BAC;
  *(v34 + 24) = v32;

  v33(sub_20C481734, v34);
}

uint64_t sub_20C5906A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6448);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = sub_20C5A01CC();
  v43 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C485058(0x65uLL);
  sub_20C59FE1C();
  v17 = sub_20C5A01BC();
  v40 = sub_20C5A08AC();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_20C5A0C1C();
    v38 = a4;
    v22 = sub_20C479640(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(a4) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_20C472000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x20F2FFF90](v29, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = a4;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v33 = sub_20C59EABC();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20C5929F4;
  *(v34 + 24) = v32;

  v33(sub_20C4907D4, v34);
}

uint64_t sub_20C590A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C59E46C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E28);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C5A01CC();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C5A0C1C();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20C479640(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20C472000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20C4775E4(a1, v15, &qword_27C7C5E28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4788);
    return sub_20C5A06AC();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4788);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C590DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C59E60C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6498);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C5A01CC();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C5A0C1C();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20C479640(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20C472000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20C4775E4(a1, v15, &qword_27C7C6498);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6490);
    return sub_20C5A06AC();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6490);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C591168(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_20C5A0C1C();
    v23 = sub_20C479640(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_20C472000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x20F2FFF90](v24, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6480);
  if (v10)
  {
    return sub_20C5A06AC();
  }

  else
  {
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C5913C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C59E52C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A78);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C5A01CC();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C5A0C1C();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20C479640(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20C472000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20C4775E4(a1, v15, &qword_27C7C4A78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6478);
    return sub_20C5A06AC();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6478);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C591734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C59E0CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A68);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C5A01CC();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C5A0C1C();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20C479640(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20C472000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20C4775E4(a1, v15, &qword_27C7C4A68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6460);
    return sub_20C5A06AC();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6460);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C591AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v40 = a5;
  v38 = a3;
  v39 = a4;
  v10 = sub_20C59E5BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A50);
  MEMORY[0x28223BE20](v44);
  v15 = (&v34 - v14);
  v16 = sub_20C5A01CC();
  v42 = *(v16 - 8);
  v43 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v36 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = a7;
    v35 = v23;
    v45 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v24 = sub_20C5A0C1C();
    v26 = v15;
    v27 = a1;
    v28 = v11;
    v29 = v10;
    v30 = sub_20C479640(v24, v25, &v45);

    *(v22 + 14) = v30;
    v10 = v29;
    v11 = v28;
    a1 = v27;
    v15 = v26;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v41;
    _os_log_impl(&dword_20C472000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x20F2FFF90](v31, -1, -1);
    v32 = v22;
    v13 = v36;
    MEMORY[0x20F2FFF90](v32, -1, -1);
  }

  (*(v42 + 8))(v18, v43);
  sub_20C4775E4(a1, v15, &qword_27C7C4A50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = *v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6468);
    return sub_20C5A06AC();
  }

  else
  {
    (*(v11 + 32))(v13, v15, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6468);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C591E1C(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v29 = a7;
  v28[2] = a6;
  v31 = a3;
  v12 = sub_20C5A01CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v16 = sub_20C5A01BC();
  v17 = sub_20C5A08AC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28[1] = a9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28[0] = a2;
    v21 = v20;
    v32[0] = v20;
    *v19 = 134218498;
    *(v19 + 4) = a4;
    *(v19 + 12) = 2080;
    v22 = sub_20C5A0C1C();
    v24 = sub_20C479640(v22, v23, v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v30;
    _os_log_impl(&dword_20C472000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v25 = v21;
    a2 = v28[0];
    MEMORY[0x20F2FFF90](v25, -1, -1);
    MEMORY[0x20F2FFF90](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32[0] = a1;
  if (v31)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6470);
    return sub_20C5A06AC();
  }

  else
  {
    v32[1] = a2;
    sub_20C4E6460(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6470);
    return sub_20C5A06BC();
  }
}

uint64_t sub_20C592084(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v28 = a6;
  v30 = a2;
  v11 = sub_20C5A01CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE1C();
  v15 = sub_20C5A01BC();
  v16 = sub_20C5A08AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = a1;
    v20 = v19;
    v31 = v19;
    *v18 = 134218498;
    *(v18 + 4) = a3;
    *(v18 + 12) = 2080;
    v21 = sub_20C5A0C1C();
    v23 = sub_20C479640(v21, v22, &v31);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v29;
    _os_log_impl(&dword_20C472000, v15, v16, "Finished P->A conversion: %ld:%s:%lu", v18, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    a1 = v27[0];
    MEMORY[0x20F2FFF90](v24, -1, -1);
    MEMORY[0x20F2FFF90](v18, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (v30)
  {
    v31 = a1;
    v25 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6448);
    return sub_20C5A06AC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6448);
    return sub_20C5A06BC();
  }
}

void sub_20C592314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v31 = a2;
  v32 = a7;
  v38 = a4;
  v33 = a1;
  v41 = a6(0);
  v10 = MEMORY[0x28223BE20](v41);
  v39 = a3;
  v40 = &v31 - v11;
  v12 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v9 + 16;
  v37 = v9;
  v34 = 0;
  v35 = (v9 + 8);
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v12 << 6);
    v22 = v41;
    v23 = v40;
LABEL_11:
    (*(v37 + 16))(v23, *(v39 + 48) + *(v37 + 72) * v21, v22, v10);
    v26 = v38(v23);
    v27 = v23;
    if (v7)
    {
      (*v35)(v23, v22);
      return;
    }

    v28 = v26;
    (*v35)(v27, v22);
    if (v28)
    {
      *(v33 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_16:
        v30 = v39;

        v32(v33, v31, v34, v30);
        return;
      }
    }
  }

  v24 = v12;
  v22 = v41;
  v23 = v40;
  while (1)
  {
    v12 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_16;
    }

    v25 = *(v14 + 8 * v12);
    ++v24;
    if (v25)
    {
      v18 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_20C59257C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20C592314(result, a2, a3, a4, a5, MEMORY[0x277D50128], sub_20C556944);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_20C592634(uint64_t result, uint64_t (*a2)(__int128 *))
{
  v2 = *(result + 16);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

unint64_t sub_20C5926B8()
{
  result = qword_27C7C6440;
  if (!qword_27C7C6440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C6438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6440);
  }

  return result;
}

uint64_t sub_20C59271C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C59EBBC() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C59D46C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20C59DEEC() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = *(v1 + v10);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_20C47FCF0;

  return sub_20C58DF8C(a1, v13, v14, v1 + v6, v1 + v9, v15, v1 + v12);
}

uint64_t sub_20C5928E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C47FCF0;

  return sub_20C47D418(a1, v4);
}

uint64_t sub_20C5929AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20C592A1C()
{
  result = qword_27C7C6450;
  if (!qword_27C7C6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6450);
  }

  return result;
}

unint64_t sub_20C592A70()
{
  result = qword_27C7C6458;
  if (!qword_27C7C6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6458);
  }

  return result;
}

uint64_t sub_20C592B14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *(v4 + 40);
  v12 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_20C592C24(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t objectdestroy_27Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t static SiriEndSessionRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

id sub_20C592DF8()
{
  result = [objc_opt_self() systemMintColor];
  qword_27C7C64A0 = result;
  return result;
}

id sub_20C592E58()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.639215686 blue:0.705882353 alpha:1.0];
  qword_27C7C64A8 = result;
  return result;
}

id sub_20C592ECC()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.317647059 green:0.960784314 blue:0.698039216 alpha:1.0];
  qword_27C7C64B0 = result;
  return result;
}

id sub_20C592F40(void *a1, void **a2)
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

uint64_t sub_20C592FB0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_20C483FD8(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_20C4820C8(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_20C4914D8(&v24);
      return 0;
    }

    sub_20C483FD8(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x20F2FF020](v23, &v24);
    sub_20C4914D8(v23);
    result = sub_20C4914D8(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_20C59314C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_20C4820C8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_20C593534();
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_20C5A09BC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t MarketingMetricConfiguration.init(shouldAnonymize:overlay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static MarketingMetricConfiguration.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_20C592FB0(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t MarketingMetricConfiguration.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  sub_20C5A0FDC();

  return sub_20C4973DC(a1, v3);
}

uint64_t MarketingMetricConfiguration.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  sub_20C4973DC(v3, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C5933AC()
{
  v1 = *(v0 + 8);
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  sub_20C4973DC(v3, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C59340C(__int128 *a1)
{
  v3 = *(v1 + 8);
  sub_20C5A0FDC();

  return sub_20C4973DC(a1, v3);
}

uint64_t sub_20C59345C()
{
  v1 = *(v0 + 8);
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  sub_20C4973DC(v3, v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C5934B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_20C592FB0(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20C5934E0()
{
  result = qword_27C7C64B8;
  if (!qword_27C7C64B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C64B8);
  }

  return result;
}

unint64_t sub_20C593534()
{
  result = qword_27C7C4548;
  if (!qword_27C7C4548)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C4548);
  }

  return result;
}

uint64_t sub_20C5935E8()
{
  result = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C593654()
{
  result = sub_20C59D63C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Double __swiftcall Playback.playbackTime(at:)(Swift::Double at)
{
  sub_20C59EC8C();
  v3 = v2;
  sub_20C59ECDC();
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA7C())
  {
    sub_20C59EC7C();
    return at - v3 + v4;
  }

  else
  {
    sub_20C59EC7C();
  }

  return result;
}

uint64_t sub_20C593758()
{
  v0 = sub_20C59D19C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27C7CDF20);
  v5 = __swift_project_value_buffer(v0, qword_27C7CDF20);
  sub_20C4E7698();
  sub_20C5A0ADC();
  v8 = 32;
  sub_20C5A0ACC();
  v8 = 10;
  sub_20C5A0ACC();
  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t sub_20C5938AC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_20C59D19C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_20C4E7698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C64E0);
  sub_20C59394C();
  return sub_20C5A0AEC();
}

unint64_t sub_20C59394C()
{
  result = qword_27C7C64E8;
  if (!qword_27C7C64E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C64E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C64E8);
  }

  return result;
}

uint64_t sub_20C5939B0()
{
  v0 = sub_20C59D19C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, qword_27C7CDF50);
  v5 = __swift_project_value_buffer(v0, qword_27C7CDF50);
  sub_20C4E7698();
  sub_20C5A0ADC();
  v8 = 32;
  sub_20C5A0ACC();
  v8 = 9;
  sub_20C5A0ACC();
  v8 = 10;
  sub_20C5A0ACC();
  return (*(v1 + 32))(v5, v4, v0);
}

NSAttributedString __swiftcall MediaTagStringBuilding.attributedString(for:)(Swift::OpaquePointer a1)
{
  v3 = v2;
  v4 = v1;
  v6 = objc_opt_self();
  v7 = [v6 whiteColor];
  v8 = [v7 colorWithAlphaComponent_];

  v13 = 0;
  v14 = v8;
  v15 = xmmword_20C5A8050;
  v16 = [v6 whiteColor];
  v17 = xmmword_20C5A51F0;
  v9.super.isa = (*(v3 + 16))(a1._rawValue, &v13, v4, v3);
  v10 = v13;
  v11 = v14;

  return v9;
}

uint64_t sub_20C593C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59EA0C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_20C59E98C();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C59E7CC();
  if ((v10 & 1) == 0)
  {
LABEL_5:
    sub_20C481884(v8, v9, 0);
    goto LABEL_6;
  }

  if (v8)
  {
    v8 = sub_20C59E7DC();
    if (v11)
    {
      sub_20C59E9FC();
      sub_20C59E97C();
      v12 = sub_20C59E7EC();
      (*(*(v12 - 8) + 8))(a1, v12);
      (*(v17 + 32))(a2, v7, v5);
      return (*(v17 + 56))(a2, 0, 1, v5);
    }

    goto LABEL_5;
  }

LABEL_6:
  v14 = sub_20C59E7EC();
  (*(*(v14 - 8) + 8))(a1, v14);
  v15 = *(v17 + 56);

  return v15(a2, 1, 1, v5);
}

uint64_t MarketingActionItemStyle.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x20F2FF470](v1 >> 7);
  return MEMORY[0x20F2FF470](v1 & 0x7F);
}

uint64_t MarketingActionItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1 >> 7);
  MEMORY[0x20F2FF470](v1 & 0x7F);
  return sub_20C5A0FFC();
}

uint64_t sub_20C593F2C()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1 >> 7);
  MEMORY[0x20F2FF470](v1 & 0x7F);
  return sub_20C5A0FFC();
}

uint64_t sub_20C593F80()
{
  v1 = *v0;
  MEMORY[0x20F2FF470](v1 >> 7);
  return MEMORY[0x20F2FF470](v1 & 0x7F);
}

uint64_t sub_20C593FC0()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1 >> 7);
  MEMORY[0x20F2FF470](v1 & 0x7F);
  return sub_20C5A0FFC();
}

unint64_t sub_20C594014()
{
  result = qword_27C7C64F0;
  if (!qword_27C7C64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C64F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingActionItemStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for MarketingActionItemStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static PictureInPictureStarting.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MarketingOfferTemplateItem.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F2FF470](1);
    MEMORY[0x20F2FF470](v1);
    if (v3)
    {
      return MEMORY[0x20F2FF470](v4);
    }

LABEL_5:
    MEMORY[0x20F2FF470](0);
    v4 = v2;
    return MEMORY[0x20F2FF470](v4);
  }

  MEMORY[0x20F2FF470](0);
  MEMORY[0x20F2FF470](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
  return MEMORY[0x20F2FF470](v4);
}

uint64_t MarketingOfferTemplateItem.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_20C5A0FBC();
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F2FF470](1);
    MEMORY[0x20F2FF470](v1);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F2FF470](0);
    v4 = v2;
    goto LABEL_6;
  }

  MEMORY[0x20F2FF470](0);
  MEMORY[0x20F2FF470](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
LABEL_6:
  MEMORY[0x20F2FF470](v4);
  return sub_20C5A0FFC();
}

uint64_t sub_20C5943DC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  sub_20C5A0FBC();
  if (v3 < 0)
  {
    v4 = 1;
    MEMORY[0x20F2FF470](1);
    MEMORY[0x20F2FF470](v1);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x20F2FF470](0);
    v4 = v2;
    goto LABEL_6;
  }

  MEMORY[0x20F2FF470](0);
  MEMORY[0x20F2FF470](v1);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = 1;
LABEL_6:
  MEMORY[0x20F2FF470](v4);
  return sub_20C5A0FFC();
}

uint64_t _s12SeymourMedia26MarketingOfferTemplateItemO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0 && v6 == v3)
    {
      if (v4)
      {
        return (v7 & 1) != 0;
      }

      if ((v7 & 1) == 0 && v2 == v5)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((v7 & 0x80000000) == 0 || v6 != v3)
  {
    return 0;
  }

  if (v4)
  {
    return (v7 & 1) != 0;
  }

  else
  {
    return (v7 & 1) == 0 && v2 == v5;
  }
}

unint64_t sub_20C59451C()
{
  result = qword_27C7C64F8;
  if (!qword_27C7C64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C64F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingOfferTemplateItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = 4 * -a2;
      *(result + 8) = 0;
      *(result + 16) = 0;
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C594624(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 3uLL;
  *(result + 16) = v2;
  return result;
}

double AMSMarketingItem.metrics.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4530);
  v4 = sub_20C5A02BC();

  if (!*(v4 + 16))
  {
    goto LABEL_14;
  }

  v5 = sub_20C4820C8(0x7475626972747461, 0xEA00000000007365);
  if ((v6 & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  swift_unknownObjectRetain();

  *&v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(v14[0] + 16))
  {
    goto LABEL_14;
  }

  v8 = sub_20C4820C8(0x73726566666FLL, 0xE600000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_20C479AA8(*(v14[0] + 56) + 32 * v8, &v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4540);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  if (!*(v14[0] + 16))
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_20C479AA8(v14[0] + 32, &v15);

  if (swift_dynamicCast())
  {
    if (*(v14[0] + 16) && (v10 = sub_20C4820C8(0x7363697274656DLL, 0xE700000000000000), (v11 & 1) != 0))
    {
      sub_20C479AA8(*(v14[0] + 56) + 32 * v10, v14);

      if (swift_dynamicCast())
      {
        if (*(&v16 + 1))
        {
          result = *&v15;
          v13 = v16;
          *a1 = v15;
          *(a1 + 16) = v13;
          *(a1 + 32) = v17;
          return result;
        }
      }

      else
      {
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
      }
    }

    else
    {

      v15 = 0u;
      v16 = 0u;
      v17 = 0;
    }

    sub_20C477B50(&v15, &qword_27C7C55A0);
  }

LABEL_15:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void MetricClickMarketingFields.init(from:)(void *a1)
{
  v2 = [a1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4530);
  v3 = sub_20C5A02BC();

  if (!*(v3 + 16))
  {
    goto LABEL_12;
  }

  v4 = sub_20C4820C8(0x7475626972747461, 0xEA00000000007365);
  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  swift_unknownObjectRetain();

  *&v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_12;
  }

  v7 = sub_20C4820C8(0x73726566666FLL, 0xE600000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_20C479AA8(*(v38 + 56) + 32 * v7, &v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4540);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(v38 + 16))
  {
    goto LABEL_12;
  }

  sub_20C479AA8(v38 + 32, &v39);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(v38 + 16) && (v9 = sub_20C4820C8(0x6C69626967696C65, 0xEF65707954797469), (v10 & 1) != 0))
  {
    sub_20C479AA8(*(v38 + 56) + 32 * v9, &v39);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
  sub_20C5A0A3C();
  sub_20C477B50(&v39, &qword_27C7C44D0);
  if (*(v38 + 16) && (v20 = sub_20C4820C8(0x7363697274656DLL, 0xE700000000000000), (v21 & 1) != 0))
  {
    sub_20C479AA8(*(v38 + 56) + 32 * v20, &v39);

    if (swift_dynamicCast())
    {
      if (*(v38 + 16) && (v22 = sub_20C4820C8(0x6E656D6563616C70, 0xE900000000000074), (v23 & 1) != 0))
      {
        sub_20C479AA8(*(v38 + 56) + 32 * v22, &v39);
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      sub_20C5A0A3C();
      sub_20C477B50(&v39, &qword_27C7C44D0);
      if (*(v38 + 16) && (v24 = sub_20C4820C8(0x6E656D6563616C70, 0xED00006570795474), (v25 & 1) != 0))
      {
        sub_20C479AA8(*(v38 + 56) + 32 * v24, &v39);
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      sub_20C5A0A3C();
      sub_20C477B50(&v39, &qword_27C7C44D0);
      if (*(v38 + 16) && (v26 = sub_20C4820C8(0x707954726566666FLL, 0xE900000000000065), (v27 & 1) != 0))
      {
        sub_20C479AA8(*(v38 + 56) + 32 * v26, &v39);
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      sub_20C5A0A3C();
      sub_20C477B50(&v39, &qword_27C7C44D0);
      if (*(v38 + 16) && (v28 = sub_20C4820C8(0xD000000000000010, 0x800000020C5AE830), (v29 & 1) != 0))
      {
        sub_20C479AA8(*(v38 + 56) + 32 * v28, &v39);
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      sub_20C5A0A3C();
      sub_20C477B50(&v39, &qword_27C7C44D0);
      if (*(v38 + 16) && (v30 = sub_20C4820C8(0x506C656E6E616863, 0xEE0072656E747261), (v31 & 1) != 0))
      {
        sub_20C479AA8(*(v38 + 56) + 32 * v30, &v39);
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      sub_20C5A0A3C();
      sub_20C477B50(&v39, &qword_27C7C44D0);
      if (*(v38 + 16))
      {
        v32 = sub_20C4820C8(0xD000000000000019, 0x800000020C5AE850);
        if (v33)
        {
          sub_20C479AA8(*(v38 + 56) + 32 * v32, &v39);
          swift_dynamicCast();
        }
      }

      if (*(v38 + 16))
      {
        v34 = sub_20C4820C8(0xD000000000000013, 0x800000020C5AE870);
        if (v35)
        {
          sub_20C479AA8(*(v38 + 56) + 32 * v34, &v39);
          swift_dynamicCast();
        }
      }

      if (*(v38 + 16))
      {
        v36 = sub_20C4820C8(0xD000000000000019, 0x800000020C5AE890);
        if (v37)
        {
          sub_20C479AA8(*(v38 + 56) + 32 * v36, &v39);

          swift_dynamicCast();
          goto LABEL_13;
        }
      }

LABEL_12:
    }
  }

  else
  {
  }

LABEL_13:
  v11 = [a1 rawValues];
  v12 = sub_20C5A02BC();

  if (!*(v12 + 16))
  {
    goto LABEL_22;
  }

  v13 = sub_20C4820C8(1635018093, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_unknownObjectRetain();

  *&v39 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!*(v38 + 16) || (v16 = sub_20C4820C8(0x7363697274656DLL, 0xE700000000000000), (v17 & 1) == 0))
  {
LABEL_22:

    goto LABEL_23;
  }

  sub_20C479AA8(*(v38 + 56) + 32 * v16, &v39);

  if (swift_dynamicCast())
  {
    if (*(v38 + 16) && (v18 = sub_20C4820C8(0x79546C6C65737075, 0xEA00000000006570), (v19 & 1) != 0))
    {
      sub_20C479AA8(*(v38 + 56) + 32 * v18, &v39);
    }

    else
    {

      v39 = 0u;
      v40 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
    sub_20C5A0A3C();
    sub_20C477B50(&v39, &qword_27C7C44D0);
  }

LABEL_23:
  sub_20C59E89C();
}

uint64_t MarketingItemProviding.fetchMarketingItem(for:offerHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_20C59E76C();
  (*(a5 + 16))(v6);
}

uint64_t ServiceSubscriptionCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C5952F0()
{
  result = qword_27C7C6500;
  if (!qword_27C7C6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6500);
  }

  return result;
}

CGRect __swiftcall CGRect.centered(in:)(CGRect in)
{
  v3 = round((in.size.width - v1) * 0.5 + in.origin.x);
  v4 = round((in.size.height - v2) * 0.5 + in.origin.y);
  v5 = v1;
  v6 = v2;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

double CGRect.roundToScale(_:)(double a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_opt_self();
  [v10 roundValue:a2 toScale:a1];
  v12 = v11;
  [v10 roundValue:a3 toScale:a1];
  [v10 roundValue:a4 toScale:a1];
  [v10 roundValue:a5 toScale:a1];
  return v12;
}

CGRect __swiftcall CGRect.roundToViewScale(_:)(UIView *a1)
{
  v5 = sub_20C595468(a1, &selRef_roundValue_toScaleOfView_, v1, v2, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

CGRect __swiftcall CGRect.roundToScreenScale(_:)(UIScreen a1)
{
  v5 = sub_20C595468(a1.super.isa, &selRef_roundValue_toScaleOfScreen_, v1, v2, v3, v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

double sub_20C595468(uint64_t a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_opt_self();
  [v12 *a2];
  v14 = v13;
  [v12 *a2];
  [v12 *a2];
  [v12 *a2];
  return v14;
}

double CGRect.midPoint.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

uint64_t static TrainerTipsGalleryNavigationBegan.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static ScreenCaptureChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for ScreenCaptureChanged(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

Swift::String __swiftcall StorefrontLocalizing.localizedString(_:)(Swift::String a1)
{
  v2 = (*(v1 + 32))(a1._countAndFlagsBits, a1._object, 0x617A696C61636F4CLL, 0xEB00000000656C62);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t StorefrontLocalizer.__allocating_init(bundle:storefrontCache:)(void *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  StorefrontLocalizer.init(bundle:storefrontCache:)(a1, a2);
  return v4;
}

id *StorefrontLocalizer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6));
  sub_20C479328(v0 + OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state);
  return v0;
}

uint64_t StorefrontLocalizer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 6));
  sub_20C479328(v0 + OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t StorefrontLocalizer.activeLanguageCode.getter()
{
  v1 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v0 + v4, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    result = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {
    v6 = *v3;
    v7 = *(v5 + 48);
    v8 = *&v3[*(v5 + 64)];
    v9 = sub_20C59D63C();
    (*(*(v9 - 8) + 8))(&v3[v7], v9);

    return v6;
  }

  return result;
}

uint64_t StorefrontLocalizer.activeLanguageIsRTL.getter()
{
  v1 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C59D61C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v0 + v8, v3);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v9 - 8) + 48))(v3, 1, v9) == 1)
  {
    result = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {
    v10 = *(v9 + 48);
    v11 = *&v3[*(v9 + 64)];
    v12 = sub_20C59D63C();
    (*(*(v12 - 8) + 8))(&v3[v10], v12);

    sub_20C59D5DC();
    v13 = sub_20C59D5FC();
    (*(v5 + 8))(v7, v4);
    return v13 == 2;
  }

  return result;
}

uint64_t StorefrontLocalizer.wlanStandardsString.getter()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      return 1312902231;
    }

    else
    {
      return 1229343063;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall StorefrontLocalizer.localizedString(_:table:)(Swift::String _, Swift::String table)
{
  v3 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v2 + v6, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    v18 = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {

    v8 = *(v7 + 48);
    v9 = *&v5[*(v7 + 64)];
    v10 = sub_20C59D63C();
    (*(*(v10 - 8) + 8))(&v5[v8], v10);
    v11 = sub_20C5A036C();
    v12 = sub_20C5A036C();
    v13 = sub_20C5A036C();
    v14 = [v9 localizedStringForKey:v11 value:v12 table:v13];

    v15 = sub_20C5A039C();
    v17 = v16;

    v18 = v15;
    v19 = v17;
  }

  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

Swift::String __swiftcall StorefrontLocalizer.localizedString(format:table:args:)(Swift::String format, Swift::String table, Swift::OpaquePointer args)
{
  v31 = table;
  rawValue = args._rawValue;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5698);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v30 - v5;
  v6 = sub_20C5A034C();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_20C59D63C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v3 + v17, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v18 - 8) + 48))(v16, 1, v18) == 1)
  {
    v27 = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {

    v19 = *(v18 + 48);
    v20 = *&v16[*(v18 + 64)];
    (*(v8 + 32))(v13, &v16[v19], v7);

    sub_20C5A035C();
    v21 = *(v8 + 16);
    v21(v10, v13, v7);
    v22 = v20;

    sub_20C5A040C();
    v23 = v30;
    v21(v30, v13, v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    v24 = sub_20C5A03CC();
    v26 = v25;

    sub_20C477B50(v23, &qword_27C7C5698);
    (*(v8 + 8))(v13, v7);
    v27 = v24;
    v28 = v26;
  }

  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t StorefrontLocalizer.localizedDate(_:)()
{
  v1 = sub_20C59D63C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v0 + v8, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    result = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {

    v10 = *&v7[*(v9 + 64)];
    (*(v2 + 32))(v4, &v7[*(v9 + 48)], v1);
    v11 = *(v0 + 24);
    v12 = objc_opt_self();
    v13 = sub_20C5A036C();
    v14 = sub_20C59D55C();
    v15 = [v12 dateFormatFromTemplate:v13 options:0 locale:v14];

    [v11 setDateFormat_];
    v16 = sub_20C59D41C();
    v17 = [v11 stringFromDate_];

    v18 = sub_20C5A039C();
    (*(v2 + 8))(v4, v1);
    return v18;
  }

  return result;
}

Swift::String_optional __swiftcall StorefrontLocalizer.localizedInterval(_:)(Swift::Double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v45 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6518);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - v8;
  v10 = sub_20C59D21C();
  v49 = *(v10 - 8);
  v50 = v10;
  MEMORY[0x28223BE20](v10);
  v48 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  v18 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v2 + v18, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v45[1] = v20 + 48;
  v46 = v21;
  if (v21(v17, 1, v19) == 1)
  {
    goto LABEL_16;
  }

  v22 = *(v19 + 48);
  v47 = *&v17[*(v19 + 64)];
  v23 = sub_20C59D63C();
  v24 = (*(v23 - 8) + 8);
  v25 = &v17[v22];
  v26 = *v24;
  (*v24)(v25, v23);
  v27 = sub_20C59D6AC();
  (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
  v28 = sub_20C59D6DC();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  v29 = ceil(a1);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v48;
  sub_20C59D20C();
  sub_20C4792C4(v2 + v18, v14);
  if (v46(v14, 1, v19) == 1)
  {
LABEL_16:
    v42 = sub_20C5A0D1C();
    __break(1u);
    goto LABEL_17;
  }

  v31 = *&v14[*(v19 + 64)];
  v26(&v14[*(v19 + 48)], v23);
  v32 = sub_20C479570();
  [v32 setUnitsStyle_];

  v33 = sub_20C59D1FC() > 5400;
  if ((v34 | v33))
  {
    v35 = 112;
  }

  else
  {
    v35 = 64;
  }

  [*(v2 + 32) setAllowedUnits_];
  v36 = *(v2 + 32);
  v37 = sub_20C59D1EC();
  v38 = [v36 stringFromDateComponents_];

  if (v38)
  {
    v39 = sub_20C5A039C();
    v41 = v40;

    (*(v49 + 8))(v30, v50);
  }

  else
  {
    (*(v49 + 8))(v30, v50);

    v39 = 0;
    v41 = 0;
  }

  v42 = v39;
  v43 = v41;
LABEL_17:
  result.value._object = v43;
  result.value._countAndFlagsBits = v42;
  return result;
}

uint64_t StorefrontLocalizer.localizedDateComponents(_:)()
{
  v1 = v0;
  v2 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v1 + v5, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    result = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {

    v7 = *(v6 + 48);
    v8 = *&v4[*(v6 + 64)];
    v9 = sub_20C59D63C();
    (*(*(v9 - 8) + 8))(&v4[v7], v9);
    v10 = sub_20C479570();
    [v10 setUnitsStyle_];

    v11 = sub_20C59D1FC() > 5400;
    if ((v12 | v11))
    {
      v13 = 112;
    }

    else
    {
      v13 = 64;
    }

    [*(v1 + 32) setAllowedUnits_];
    v14 = *(v1 + 32);
    v15 = sub_20C59D1EC();
    v16 = [v14 stringFromDateComponents_];

    if (v16)
    {
      v17 = sub_20C5A039C();
    }

    else
    {

      return 0;
    }

    return v17;
  }

  return result;
}

uint64_t StorefrontLocalizer.localizedNumber<A>(_:decimalPlaces:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a3;
  v5 = sub_20C59D63C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StorefrontLocalizer.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC12SeymourMedia19StorefrontLocalizer_state;
  swift_beginAccess();
  sub_20C4792C4(v4 + v12, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6508);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    result = sub_20C5A0D1C();
    __break(1u);
  }

  else
  {
    v14 = *v11;
    v15 = *(v13 + 48);
    v16 = *(v11 + *(v13 + 64));
    (*(v6 + 32))(v8, v11 + v15, v5);
    sub_20C5970EC(v14, v4, v19, &v21);

    (*(v6 + 8))(v8, v5);
    return v21;
  }

  return result;
}

void sub_20C5970EC(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_20C479154(0, &qword_27C7C5580);
  if (swift_dynamicCast())
  {
    v10 = v17[1];
    v11 = *(a2 + 40);
    [v11 setMaximumFractionDigits_];
    v12 = [v11 stringFromNumber_];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20C5A039C();
      v16 = v15;
    }

    else
    {

      v14 = 0;
      v16 = 0;
    }

    *a4 = v14;
    a4[1] = v16;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }
}

uint64_t sub_20C597284()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      return 1312902231;
    }

    else
    {
      return 1229343063;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C5974EC()
{
  v1 = [v0 preferredIntervals];
  sub_20C50EAFC();
  v2 = sub_20C5A061C();

  return v2;
}

void sub_20C597544()
{
  sub_20C50EAFC();
  v1 = sub_20C5A060C();

  [v0 setPreferredIntervals_];
}

void (*sub_20C5975B4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_20C597660(v2);
  return sub_20C544D68;
}

void (*sub_20C597660(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 preferredIntervals];
  a1[2] = sub_20C50EAFC();
  v4 = sub_20C5A061C();

  *a1 = v4;
  return sub_20C5976E8;
}

void sub_20C5976E8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {

    v3 = sub_20C5A060C();

    [v2 setPreferredIntervals_];
  }

  else
  {
    v3 = sub_20C5A060C();

    [v2 setPreferredIntervals_];
  }
}

double sub_20C597798@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_20C5A044C();
  v4 = v3;
  v5 = sub_20C5A044C();
  *a1 = v2;
  *(a1 + 8) = v4;
  result = 0.0;
  *(a1 + 16) = xmmword_20C5AB2D0;
  *(a1 + 32) = v5;
  *(a1 + 40) = v7;
  *(a1 + 48) = 0;
  return result;
}

uint64_t SessionUpdate.dispatch(using:)(uint64_t a1, uint64_t a2)
{
  v669 = a1;
  v577 = sub_20C59FD1C();
  v576 = *(v577 - 8);
  MEMORY[0x28223BE20](v577);
  v575 = v447 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD0);
  MEMORY[0x28223BE20](v5 - 8);
  v651 = v447 - v6;
  v7 = sub_20C59E7AC();
  v652 = *(v7 - 8);
  v653 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v573 = v447 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v574 = v447 - v10;
  v572 = sub_20C59FCAC();
  v571 = *(v572 - 8);
  MEMORY[0x28223BE20](v572);
  v570 = v447 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v12 - 8);
  v648 = v447 - v13;
  v650 = sub_20C59E73C();
  v649 = *(v650 - 8);
  v14 = MEMORY[0x28223BE20](v650);
  v568 = v447 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v569 = v447 - v16;
  v567 = sub_20C59F53C();
  v566 = *(v567 - 8);
  MEMORY[0x28223BE20](v567);
  v565 = v447 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5840);
  MEMORY[0x28223BE20](v18 - 8);
  v645 = v447 - v19;
  v647 = sub_20C59EBEC();
  v646 = *(v647 - 8);
  v20 = MEMORY[0x28223BE20](v647);
  v563 = v447 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v564 = v447 - v22;
  v562 = sub_20C59F72C();
  v561 = *(v562 - 8);
  MEMORY[0x28223BE20](v562);
  v560 = v447 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4370);
  MEMORY[0x28223BE20](v24 - 8);
  v642 = v447 - v25;
  v644 = sub_20C59D96C();
  v643 = *(v644 - 8);
  v26 = MEMORY[0x28223BE20](v644);
  v558 = v447 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v559 = v447 - v28;
  v557 = sub_20C59FAFC();
  v556 = *(v557 - 8);
  MEMORY[0x28223BE20](v557);
  v555 = v447 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CD8);
  MEMORY[0x28223BE20](v30 - 8);
  v639 = v447 - v31;
  v641 = sub_20C59E39C();
  v640 = *(v641 - 8);
  v32 = MEMORY[0x28223BE20](v641);
  v553 = v447 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v554 = v447 - v34;
  v552 = sub_20C59FA6C();
  v551 = *(v552 - 8);
  MEMORY[0x28223BE20](v552);
  v550 = v447 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE0);
  MEMORY[0x28223BE20](v36 - 8);
  v636 = v447 - v37;
  v638 = sub_20C59E0DC();
  v637 = *(v638 - 8);
  v38 = MEMORY[0x28223BE20](v638);
  v548 = v447 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v549 = v447 - v40;
  v547 = sub_20C59F7CC();
  v546 = *(v547 - 8);
  MEMORY[0x28223BE20](v547);
  v545 = v447 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CE8);
  MEMORY[0x28223BE20](v42 - 8);
  v633 = v447 - v43;
  v635 = sub_20C59D91C();
  v634 = *(v635 - 8);
  v44 = MEMORY[0x28223BE20](v635);
  v543 = v447 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v544 = v447 - v46;
  v542 = sub_20C59FC7C();
  v541 = *(v542 - 8);
  MEMORY[0x28223BE20](v542);
  v540 = v447 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4E30);
  MEMORY[0x28223BE20](v48 - 8);
  v665 = v447 - v49;
  v632 = sub_20C59E6EC();
  v666 = *(v632 - 8);
  v50 = MEMORY[0x28223BE20](v632);
  v538 = v447 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v539 = v447 - v52;
  v537 = sub_20C59F5AC();
  v536 = *(v537 - 8);
  MEMORY[0x28223BE20](v537);
  v535 = v447 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v54 - 8);
  v629 = v447 - v55;
  v658 = sub_20C59ECFC();
  v630 = *(v658 - 8);
  v56 = MEMORY[0x28223BE20](v658);
  v534 = v447 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v533 = v447 - v59;
  MEMORY[0x28223BE20](v58);
  v631 = v447 - v60;
  v532 = sub_20C59F9DC();
  v531 = *(v532 - 8);
  MEMORY[0x28223BE20](v532);
  v530 = v447 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF0);
  MEMORY[0x28223BE20](v62 - 8);
  v625 = v447 - v63;
  v628 = sub_20C59DECC();
  v626 = *(v628 - 8);
  v64 = MEMORY[0x28223BE20](v628);
  v529 = v447 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v528 = v447 - v67;
  MEMORY[0x28223BE20](v66);
  v627 = v447 - v68;
  v527 = sub_20C59F70C();
  v526 = *(v527 - 8);
  MEMORY[0x28223BE20](v527);
  v525 = v447 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5CF8);
  MEMORY[0x28223BE20](v70 - 8);
  v663 = (v447 - v71);
  v624 = sub_20C59D7EC();
  v664 = *(v624 - 8);
  v72 = MEMORY[0x28223BE20](v624);
  v523 = v447 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v524 = v447 - v74;
  v522 = sub_20C59FD7C();
  v521 = *(v522 - 8);
  MEMORY[0x28223BE20](v522);
  v520 = v447 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4B40);
  MEMORY[0x28223BE20](v76 - 8);
  v621 = v447 - v77;
  v657 = sub_20C59E8FC();
  v622 = *(v657 - 8);
  v78 = MEMORY[0x28223BE20](v657);
  v519 = v447 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v518 = v447 - v81;
  MEMORY[0x28223BE20](v80);
  v623 = v447 - v82;
  v517 = sub_20C59FABC();
  v516 = *(v517 - 8);
  MEMORY[0x28223BE20](v517);
  v515 = v447 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DA8);
  MEMORY[0x28223BE20](v84 - 8);
  v618 = v447 - v85;
  v656 = sub_20C59E1EC();
  v619 = *(v656 - 8);
  v86 = MEMORY[0x28223BE20](v656);
  v514 = v447 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x28223BE20](v86);
  v513 = v447 - v89;
  MEMORY[0x28223BE20](v88);
  v620 = v447 - v90;
  v512 = sub_20C59FC1C();
  v511 = *(v512 - 8);
  MEMORY[0x28223BE20](v512);
  v510 = v447 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D00);
  MEMORY[0x28223BE20](v92 - 8);
  v615 = v447 - v93;
  v617 = sub_20C59E4AC();
  v616 = *(v617 - 8);
  v94 = MEMORY[0x28223BE20](v617);
  v508 = v447 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v509 = v447 - v96;
  v507 = sub_20C59F6CC();
  v506 = *(v507 - 8);
  MEMORY[0x28223BE20](v507);
  v505 = v447 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D08);
  MEMORY[0x28223BE20](v98 - 8);
  v612 = v447 - v99;
  v614 = sub_20C59D73C();
  v613 = *(v614 - 8);
  v100 = MEMORY[0x28223BE20](v614);
  v503 = v447 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v504 = v447 - v102;
  v502 = sub_20C59FA2C();
  v501 = *(v502 - 8);
  MEMORY[0x28223BE20](v502);
  v500 = v447 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DF0);
  MEMORY[0x28223BE20](v104 - 8);
  v609 = v447 - v105;
  v611 = sub_20C59DF8C();
  v610 = *(v611 - 8);
  v106 = MEMORY[0x28223BE20](v611);
  v498 = v447 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v499 = v447 - v108;
  v497 = sub_20C59FD4C();
  v496 = *(v497 - 8);
  MEMORY[0x28223BE20](v497);
  v495 = v447 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DE0);
  MEMORY[0x28223BE20](v110 - 8);
  v606 = v447 - v111;
  v608 = sub_20C59E7EC();
  v607 = *(v608 - 8);
  v112 = MEMORY[0x28223BE20](v608);
  v493 = v447 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v494 = v447 - v114;
  v492 = sub_20C59FA8C();
  v491 = *(v492 - 8);
  MEMORY[0x28223BE20](v492);
  v490 = v447 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D10);
  MEMORY[0x28223BE20](v116 - 8);
  v603 = v447 - v117;
  v605 = sub_20C59E11C();
  v604 = *(v605 - 8);
  v118 = MEMORY[0x28223BE20](v605);
  v488 = v447 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v118);
  v489 = v447 - v120;
  v487 = sub_20C59F82C();
  v486 = *(v487 - 8);
  MEMORY[0x28223BE20](v487);
  v485 = v447 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D18);
  MEMORY[0x28223BE20](v122 - 8);
  v600 = v447 - v123;
  v602 = sub_20C59DA1C();
  v601 = *(v602 - 8);
  v124 = MEMORY[0x28223BE20](v602);
  v483 = v447 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v124);
  v484 = v447 - v126;
  v482 = sub_20C59F9AC();
  v481 = *(v482 - 8);
  MEMORY[0x28223BE20](v482);
  v480 = v447 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D20);
  MEMORY[0x28223BE20](v128 - 8);
  v662 = (v447 - v129);
  v599 = sub_20C59DE4C();
  v598 = *(v599 - 8);
  v130 = MEMORY[0x28223BE20](v599);
  v478 = v447 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130);
  v479 = v447 - v132;
  v477 = sub_20C59FADC();
  v476 = *(v477 - 8);
  MEMORY[0x28223BE20](v477);
  v475 = v447 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D28);
  MEMORY[0x28223BE20](v134 - 8);
  v660 = v447 - v135;
  v597 = sub_20C59E35C();
  v661 = *(v597 - 8);
  v136 = MEMORY[0x28223BE20](v597);
  v473 = v447 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136);
  v474 = v447 - v138;
  v472 = sub_20C59F5CC();
  v471 = *(v472 - 8);
  MEMORY[0x28223BE20](v472);
  v470 = v447 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D50);
  MEMORY[0x28223BE20](v140 - 8);
  v592 = v447 - v141;
  v596 = sub_20C59ED0C();
  v594 = *(v596 - 8);
  v142 = MEMORY[0x28223BE20](v596);
  v469 = v447 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = MEMORY[0x28223BE20](v142);
  v468 = v447 - v145;
  MEMORY[0x28223BE20](v144);
  v595 = v447 - v146;
  v467 = sub_20C59F8FC();
  v466 = *(v467 - 8);
  MEMORY[0x28223BE20](v467);
  v465 = v447 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_20C5A01CC();
  v667 = *(v148 - 8);
  v668 = v148;
  v149 = MEMORY[0x28223BE20](v148);
  v580 = v447 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = MEMORY[0x28223BE20](v149);
  v579 = v447 - v152;
  v153 = MEMORY[0x28223BE20](v151);
  v655 = v447 - v154;
  v155 = MEMORY[0x28223BE20](v153);
  v654 = v447 - v156;
  v157 = MEMORY[0x28223BE20](v155);
  v593 = v447 - v158;
  MEMORY[0x28223BE20](v157);
  v578 = v447 - v159;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C6520);
  MEMORY[0x28223BE20](v160 - 8);
  v589 = v447 - v161;
  v659 = sub_20C59DF5C();
  v590 = *(v659 - 1);
  v162 = MEMORY[0x28223BE20](v659);
  v464 = v447 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = MEMORY[0x28223BE20](v162);
  v463 = v447 - v165;
  MEMORY[0x28223BE20](v164);
  v591 = v447 - v166;
  v462 = sub_20C59F8DC();
  v461 = *(v462 - 8);
  MEMORY[0x28223BE20](v462);
  v460 = v447 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4DC0);
  MEMORY[0x28223BE20](v168 - 8);
  v586 = v447 - v169;
  v588 = sub_20C59DB1C();
  v587 = *(v588 - 8);
  v170 = MEMORY[0x28223BE20](v588);
  v458 = v447 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v170);
  v459 = v447 - v172;
  v457 = sub_20C59FC4C();
  v456 = *(v457 - 8);
  MEMORY[0x28223BE20](v457);
  v455 = v447 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D30);
  MEMORY[0x28223BE20](v174 - 8);
  v583 = v447 - v175;
  v585 = sub_20C59E67C();
  v584 = *(v585 - 8);
  v176 = MEMORY[0x28223BE20](v585);
  v453 = v447 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v176);
  v454 = v447 - v178;
  v452 = type metadata accessor for AudioFocusPreferenceUpdated();
  MEMORY[0x28223BE20](v452);
  v451 = v447 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D38);
  MEMORY[0x28223BE20](v180 - 8);
  v182 = v447 - v181;
  v582 = sub_20C59E47C();
  v581 = *(v582 - 8);
  MEMORY[0x28223BE20](v582);
  v450 = v447 - ((v183 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_20C59F86C();
  v448 = *(v449 - 8);
  MEMORY[0x28223BE20](v449);
  v185 = v447 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5D40);
  MEMORY[0x28223BE20](v186 - 8);
  v188 = v447 - v187;
  v189 = sub_20C59DAFC();
  v190 = *(v189 - 8);
  v191 = MEMORY[0x28223BE20](v189);
  v193 = v447 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v191);
  v195 = v447 - v194;
  sub_20C59DBDC();
  v196 = (*(v190 + 48))(v188, 1, v189);
  v670 = a2;
  if (v196 == 1)
  {
    sub_20C477B50(v188, &qword_27C7C5D40);
  }

  else
  {
    (*(v190 + 32))(v195, v188, v189);
    v447[1] = swift_getObjectType();
    (*(v190 + 16))(v193, v195, v189);
    sub_20C59DC6C();
    sub_20C59F85C();
    v197 = v449;
    sub_20C59F5FC();
    (*(v448 + 8))(v185, v197);
    (*(v190 + 8))(v195, v189);
  }

  v671 = v2;
  sub_20C59DC8C();
  v198 = v581;
  v199 = v582;
  v200 = (*(v581 + 48))(v182, 1, v582);
  v201 = v661;
  v202 = v586;
  v203 = v583;
  if (v200 == 1)
  {
    sub_20C477B50(v182, &qword_27C7C5D38);
  }

  else
  {
    v204 = v450;
    (*(v198 + 32))(v450, v182, v199);
    swift_getObjectType();
    v205 = v451;
    (*(v198 + 16))(v451, v204, v199);
    sub_20C59D094(&unk_27C7C6540, type metadata accessor for AudioFocusPreferenceUpdated);
    sub_20C59F5FC();
    sub_20C59D0DC(v205);
    (*(v198 + 8))(v204, v199);
  }

  v206 = v585;
  sub_20C59DCAC();
  v207 = v584;
  if ((*(v584 + 48))(v203, 1, v206) == 1)
  {
    sub_20C477B50(v203, &qword_27C7C5D30);
  }

  else
  {
    v208 = v201;
    v209 = v454;
    (*(v207 + 32))(v454, v203, v206);
    swift_getObjectType();
    (*(v207 + 16))(v453, v209, v206);
    v210 = v455;
    sub_20C59FC3C();
    v211 = v457;
    sub_20C59F5FC();
    (*(v456 + 8))(v210, v211);
    v212 = v209;
    v201 = v208;
    (*(v207 + 8))(v212, v206);
  }

  v213 = v588;
  sub_20C59DBEC();
  v214 = v587;
  if ((*(v587 + 48))(v202, 1, v213) == 1)
  {
    sub_20C477B50(v202, &qword_27C7C4DC0);
  }

  else
  {
    v215 = v459;
    (*(v214 + 32))(v459, v202, v213);
    swift_getObjectType();
    (*(v214 + 16))(v458, v215, v213);
    sub_20C59DC6C();
    v216 = v460;
    sub_20C59F8CC();
    v217 = v462;
    sub_20C59F5FC();
    (*(v461 + 8))(v216, v217);
    (*(v214 + 8))(v215, v213);
  }

  v219 = v659;
  v218 = v660;
  v220 = v589;
  sub_20C59DC2C();
  v221 = v590;
  v222 = (*(v590 + 48))(v220, 1, v219);
  v223 = v662;
  if (v222 == 1)
  {
    sub_20C477B50(v220, &qword_27C7C6520);
  }

  else
  {
    v224 = v591;
    (*(v221 + 32))(v591, v220, v219);
    v225 = v578;
    sub_20C59FE7C();
    v226 = v463;
    v589 = *(v221 + 16);
    (v589)(v463, v224, v219);
    v227 = v221;
    v228 = sub_20C5A01BC();
    v229 = v226;
    v230 = sub_20C5A08AC();
    if (os_log_type_enabled(v228, v230))
    {
      v231 = swift_slowAlloc();
      v588 = swift_slowAlloc();
      v672 = v588;
      *v231 = 136446210;
      sub_20C59D094(&qword_27C7C6538, MEMORY[0x277D50AF0]);
      v232 = sub_20C5A0E6C();
      v234 = v233;
      v235 = *(v227 + 8);
      v235(v229, v219);
      v236 = v235;
      v237 = sub_20C479640(v232, v234, &v672);

      *(v231 + 4) = v237;
      _os_log_impl(&dword_20C472000, v228, v230, "SessionClient - countdownIntentFired to %{public}s", v231, 0xCu);
      v238 = v588;
      __swift_destroy_boxed_opaque_existential_1Tm(v588);
      MEMORY[0x20F2FFF90](v238, -1, -1);
      MEMORY[0x20F2FFF90](v231, -1, -1);

      (*(v667 + 8))(v578, v668);
    }

    else
    {

      v239 = *(v227 + 8);
      v239(v229, v219);
      v236 = v239;
      (*(v667 + 8))(v225, v668);
    }

    swift_getObjectType();
    v240 = v591;
    v241 = v659;
    (v589)(v464, v591, v659);
    v242 = v465;
    sub_20C59F8EC();
    v243 = v467;
    sub_20C59F5FC();
    (*(v466 + 8))(v242, v243);
    v236(v240, v241);
    v201 = v661;
    v223 = v662;
    v218 = v660;
  }

  v244 = v592;
  sub_20C59DD1C();
  v245 = v244;
  v246 = v594;
  v247 = v244;
  v248 = v596;
  if ((*(v594 + 48))(v247, 1, v596) == 1)
  {
    sub_20C477B50(v245, &qword_27C7C5D50);
  }

  else
  {
    v249 = v595;
    (*(v246 + 32))(v595, v245, v248);
    sub_20C59FE7C();
    v250 = *(v246 + 16);
    v251 = v468;
    v250(v468, v249, v248);
    v252 = sub_20C5A01BC();
    v253 = sub_20C5A08AC();
    if (os_log_type_enabled(v252, v253))
    {
      v254 = swift_slowAlloc();
      v592 = v250;
      v255 = v254;
      v256 = swift_slowAlloc();
      v672 = v256;
      *v255 = 136446210;
      sub_20C59D094(&qword_27C7C6530, MEMORY[0x277D53E28]);
      v257 = sub_20C5A0E6C();
      v259 = v258;
      v659 = *(v246 + 8);
      (v659)(v251, v248);
      v260 = sub_20C479640(v257, v259, &v672);

      *(v255 + 4) = v260;
      _os_log_impl(&dword_20C472000, v252, v253, "SessionClient - CountdownStarted to %{public}s", v255, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v256);
      MEMORY[0x20F2FFF90](v256, -1, -1);
      v261 = v255;
      v250 = v592;
      MEMORY[0x20F2FFF90](v261, -1, -1);
    }

    else
    {

      v659 = *(v246 + 8);
      (v659)(v251, v248);
    }

    (*(v667 + 8))(v593, v668);
    swift_getObjectType();
    v262 = v595;
    v250(v469, v595, v248);
    v263 = v470;
    sub_20C59F5BC();
    v264 = v472;
    sub_20C59F5FC();
    (*(v471 + 8))(v263, v264);
    (v659)(v262, v248);
    v201 = v661;
    v223 = v662;
    v218 = v660;
  }

  sub_20C59DC7C();
  v265 = v597;
  if ((*(v201 + 48))(v218, 1, v597) == 1)
  {
    sub_20C477B50(v218, &qword_27C7C5D28);
  }

  else
  {
    v267 = v474;
    (*(v201 + 32))(v474, v218, v265);
    swift_getObjectType();
    (*(v201 + 16))(v473, v267, v265);
    v268 = v475;
    sub_20C59FACC();
    v269 = v477;
    sub_20C59F5FC();
    (*(v476 + 8))(v268, v269);
    (*(v201 + 8))(v267, v265);
  }

  v266 = v599;
  sub_20C59DBFC();
  v270 = v598;
  if ((*(v598 + 48))(v223, 1, v266) == 1)
  {
    sub_20C477B50(v223, &qword_27C7C5D20);
  }

  else
  {
    v272 = v479;
    (*(v270 + 32))(v479, v223, v266);
    swift_getObjectType();
    (*(v270 + 16))(v478, v272, v266);
    sub_20C59DC6C();
    v273 = v480;
    sub_20C59F99C();
    v274 = v482;
    sub_20C59F5FC();
    (*(v481 + 8))(v273, v274);
    (*(v270 + 8))(v272, v266);
  }

  v271 = v602;
  v275 = v600;
  sub_20C59DBCC();
  v276 = v601;
  if ((*(v601 + 48))(v275, 1, v271) == 1)
  {
    sub_20C477B50(v275, &qword_27C7C5D18);
  }

  else
  {
    v277 = v484;
    (*(v276 + 32))(v484, v275, v271);
    swift_getObjectType();
    (*(v276 + 16))(v483, v277, v271);
    sub_20C59DC6C();
    v278 = v485;
    sub_20C59F81C();
    v279 = v487;
    sub_20C59F5FC();
    (*(v486 + 8))(v278, v279);
    (*(v276 + 8))(v277, v271);
  }

  v280 = v605;
  v281 = v603;
  sub_20C59DC5C();
  v282 = v604;
  if ((*(v604 + 48))(v281, 1, v280) == 1)
  {
    sub_20C477B50(v281, &qword_27C7C5D10);
  }

  else
  {
    v283 = v489;
    (*(v282 + 32))(v489, v281, v280);
    swift_getObjectType();
    (*(v282 + 16))(v488, v283, v280);
    v284 = v490;
    sub_20C59FA7C();
    v285 = v492;
    sub_20C59F5FC();
    (*(v491 + 8))(v284, v285);
    (*(v282 + 8))(v283, v280);
  }

  v286 = v608;
  v287 = v606;
  sub_20C59DCEC();
  v288 = v607;
  if ((*(v607 + 48))(v287, 1, v286) == 1)
  {
    sub_20C477B50(v287, &qword_27C7C4DE0);
  }

  else
  {
    v289 = v494;
    (*(v288 + 32))(v494, v287, v286);
    swift_getObjectType();
    (*(v288 + 16))(v493, v289, v286);
    v290 = v495;
    sub_20C59FD3C();
    v291 = v497;
    sub_20C59F5FC();
    (*(v496 + 8))(v290, v291);
    (*(v288 + 8))(v289, v286);
  }

  v292 = v611;
  v293 = v609;
  sub_20C59DC3C();
  v294 = v610;
  if ((*(v610 + 48))(v293, 1, v292) == 1)
  {
    sub_20C477B50(v293, &qword_27C7C4DF0);
  }

  else
  {
    v295 = v499;
    (*(v294 + 32))(v499, v293, v292);
    swift_getObjectType();
    (*(v294 + 16))(v498, v295, v292);
    sub_20C59DC6C();
    v296 = v500;
    sub_20C59FA1C();
    v297 = v502;
    sub_20C59F5FC();
    (*(v501 + 8))(v296, v297);
    (*(v294 + 8))(v295, v292);
  }

  v298 = v614;
  v299 = v612;
  sub_20C59DB8C();
  v300 = v613;
  if ((*(v613 + 48))(v299, 1, v298) == 1)
  {
    sub_20C477B50(v299, &qword_27C7C5D08);
  }

  else
  {
    v301 = v504;
    (*(v300 + 32))(v504, v299, v298);
    swift_getObjectType();
    (*(v300 + 16))(v503, v301, v298);
    v302 = v505;
    sub_20C59F6BC();
    v303 = v507;
    sub_20C59F5FC();
    (*(v506 + 8))(v302, v303);
    (*(v300 + 8))(v301, v298);
  }

  v304 = v617;
  v305 = v615;
  sub_20C59DC9C();
  v306 = v616;
  if ((*(v616 + 48))(v305, 1, v304) == 1)
  {
    sub_20C477B50(v305, &qword_27C7C5D00);
  }

  else
  {
    v307 = v509;
    (*(v306 + 32))(v509, v305, v304);
    swift_getObjectType();
    (*(v306 + 16))(v508, v307, v304);
    v308 = v510;
    sub_20C59FC0C();
    v309 = v512;
    sub_20C59F5FC();
    (*(v511 + 8))(v308, v309);
    (*(v306 + 8))(v307, v304);
  }

  v310 = v663;
  v311 = v664;
  v312 = v654;
  v313 = v618;
  sub_20C59DB6C();
  v314 = v619;
  v315 = v656;
  if ((*(v619 + 48))(v313, 1, v656) == 1)
  {
    sub_20C477B50(v313, &qword_27C7C4DA8);
  }

  else
  {
    v316 = v620;
    (*(v314 + 32))(v620, v313, v315);
    sub_20C59FE7C();
    v317 = *(v314 + 16);
    v318 = v513;
    v317(v513, v316, v315);
    v319 = sub_20C5A01BC();
    v320 = sub_20C5A08AC();
    if (os_log_type_enabled(v319, v320))
    {
      v321 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v672 = v322;
      *v321 = 136315138;
      sub_20C59D094(&qword_27C7C5D48, MEMORY[0x277D50FB0]);
      v323 = sub_20C5A0E6C();
      v324 = v315;
      v325 = v317;
      v327 = v326;
      v662 = *(v314 + 8);
      v662(v318, v324);
      v328 = sub_20C479640(v323, v327, &v672);
      v317 = v325;

      *(v321 + 4) = v328;
      _os_log_impl(&dword_20C472000, v319, v320, "SessionClient - MultiUserSession updated: %s", v321, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v322);
      MEMORY[0x20F2FFF90](v322, -1, -1);
      MEMORY[0x20F2FFF90](v321, -1, -1);

      (*(v667 + 8))(v654, v668);
      v315 = v656;
    }

    else
    {

      v662 = *(v314 + 8);
      v662(v318, v315);
      (*(v667 + 8))(v312, v668);
    }

    swift_getObjectType();
    v329 = v620;
    v317(v514, v620, v315);
    v330 = v515;
    sub_20C59FAAC();
    v331 = v517;
    sub_20C59F5FC();
    (*(v516 + 8))(v330, v331);
    v662(v329, v315);
    v310 = v663;
    v311 = v664;
  }

  v332 = v655;
  v333 = v621;
  sub_20C59DB7C();
  v334 = v622;
  v335 = v657;
  if ((*(v622 + 48))(v333, 1, v657) == 1)
  {
    sub_20C477B50(v333, &qword_27C7C4B40);
  }

  else
  {
    v336 = v623;
    (*(v334 + 32))(v623, v333, v335);
    sub_20C59FE7C();
    v337 = *(v334 + 16);
    v338 = v518;
    v337(v518, v336, v335);
    v339 = sub_20C5A01BC();
    v340 = sub_20C5A08AC();
    if (os_log_type_enabled(v339, v340))
    {
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      v672 = v342;
      *v341 = 136315138;
      sub_20C59D094(&qword_27C7C4B38, MEMORY[0x277D53008]);
      v343 = sub_20C5A0E6C();
      v344 = v335;
      v345 = v337;
      v347 = v346;
      v662 = *(v334 + 8);
      v662(v338, v344);
      v348 = sub_20C479640(v343, v347, &v672);
      v337 = v345;

      *(v341 + 4) = v348;
      _os_log_impl(&dword_20C472000, v339, v340, "SessionClient - MultiUserSessionIdentities updated: %s", v341, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v342);
      MEMORY[0x20F2FFF90](v342, -1, -1);
      MEMORY[0x20F2FFF90](v341, -1, -1);

      (*(v667 + 8))(v655, v668);
      v335 = v657;
    }

    else
    {

      v662 = *(v334 + 8);
      v662(v338, v335);
      (*(v667 + 8))(v332, v668);
    }

    swift_getObjectType();
    v349 = v623;
    v337(v519, v623, v335);
    v350 = v520;
    sub_20C59FD6C();
    v351 = v522;
    sub_20C59F5FC();
    (*(v521 + 8))(v350, v351);
    v662(v349, v335);
    v310 = v663;
    v311 = v664;
  }

  sub_20C59DB9C();
  v352 = v624;
  if ((v311[6])(v310, 1, v624) == 1)
  {
    sub_20C477B50(v310, &qword_27C7C5CF8);
  }

  else
  {
    v353 = v524;
    v311[4](v524, v310, v352);
    swift_getObjectType();
    v311[2](v523, v353, v352);
    sub_20C59DC6C();
    v354 = v525;
    sub_20C59F6FC();
    v355 = v527;
    sub_20C59F5FC();
    (*(v526 + 8))(v354, v355);
    (v311[1])(v353, v352);
  }

  v356 = v665;
  v357 = v666;
  v358 = v625;
  sub_20C59DC0C();
  v359 = v626;
  v360 = v628;
  if ((*(v626 + 48))(v358, 1, v628) == 1)
  {
    sub_20C477B50(v358, &qword_27C7C5CF0);
  }

  else
  {
    v361 = v627;
    (*(v359 + 32))(v627, v358, v360);
    v362 = v579;
    sub_20C59FE7C();
    v363 = v528;
    v664 = *(v359 + 16);
    (v664)(v528, v361, v360);
    v364 = v359;
    v365 = sub_20C5A01BC();
    v366 = sub_20C5A08AC();
    if (os_log_type_enabled(v365, v366))
    {
      v367 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      v672 = v368;
      *v367 = 136446210;
      sub_20C59D094(&qword_27C7C6528, MEMORY[0x277D50870]);
      v369 = sub_20C5A0E6C();
      v370 = v360;
      v372 = v371;
      v373 = v363;
      v374 = v370;
      v663 = *(v364 + 8);
      v663(v373, v370);
      v375 = sub_20C479640(v369, v372, &v672);

      *(v367 + 4) = v375;
      _os_log_impl(&dword_20C472000, v365, v366, "SessionClient - playbackIntentUpdated to %{public}s", v367, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v368);
      MEMORY[0x20F2FFF90](v368, -1, -1);
      MEMORY[0x20F2FFF90](v367, -1, -1);

      (*(v667 + 8))(v579, v668);
      v376 = v374;
    }

    else
    {

      v663 = *(v359 + 8);
      v663(v363, v360);
      (*(v667 + 8))(v362, v668);
      v376 = v360;
    }

    swift_getObjectType();
    v377 = v627;
    (v664)(v529, v627, v376);
    v378 = v530;
    sub_20C59F9CC();
    v379 = v532;
    sub_20C59F5FC();
    (*(v531 + 8))(v378, v379);
    v663(v377, v376);
    v356 = v665;
    v357 = v666;
  }

  v380 = v629;
  sub_20C59DD0C();
  v381 = v630;
  v382 = v658;
  if ((*(v630 + 48))(v380, 1, v658) == 1)
  {
    sub_20C477B50(v380, &qword_27C7C5E20);
  }

  else
  {
    v383 = v631;
    (*(v381 + 32))(v631, v380, v382);
    v384 = v580;
    sub_20C59FE7C();
    v385 = *(v381 + 16);
    v386 = v533;
    v385(v533, v383, v382);
    v387 = sub_20C5A01BC();
    v388 = sub_20C5A08AC();
    if (os_log_type_enabled(v387, v388))
    {
      v389 = swift_slowAlloc();
      v390 = swift_slowAlloc();
      v672 = v390;
      *v389 = 136446210;
      sub_20C59D094(&qword_27C7C5A90, MEMORY[0x277D53C58]);
      v391 = sub_20C5A0E6C();
      v392 = v382;
      v393 = v385;
      v395 = v394;
      v664 = *(v381 + 8);
      (v664)(v386, v392);
      v396 = sub_20C479640(v391, v395, &v672);
      v385 = v393;

      *(v389 + 4) = v396;
      _os_log_impl(&dword_20C472000, v387, v388, "SessionClient - playback updated to %{public}s", v389, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v390);
      MEMORY[0x20F2FFF90](v390, -1, -1);
      MEMORY[0x20F2FFF90](v389, -1, -1);

      (*(v667 + 8))(v580, v668);
      v382 = v658;
    }

    else
    {

      v664 = *(v381 + 8);
      (v664)(v386, v382);
      (*(v667 + 8))(v384, v668);
    }

    swift_getObjectType();
    v397 = v631;
    v385(v534, v631, v382);
    sub_20C59DC6C();
    v398 = v535;
    sub_20C59F59C();
    v399 = v537;
    sub_20C59F5FC();
    (*(v536 + 8))(v398, v399);
    (v664)(v397, v382);
    v356 = v665;
    v357 = v666;
  }

  sub_20C59DCBC();
  v400 = v632;
  if ((*(v357 + 48))(v356, 1, v632) == 1)
  {
    sub_20C477B50(v356, &qword_27C7C4E30);
  }

  else
  {
    v401 = v539;
    (*(v357 + 32))(v539, v356, v400);
    swift_getObjectType();
    (*(v357 + 16))(v538, v401, v400);
    v402 = v540;
    sub_20C59FC6C();
    v403 = v542;
    sub_20C59F5FC();
    (*(v541 + 8))(v402, v403);
    (*(v357 + 8))(v401, v400);
  }

  v404 = v635;
  v405 = v633;
  sub_20C59DBAC();
  v406 = v634;
  if ((*(v634 + 48))(v405, 1, v404) == 1)
  {
    sub_20C477B50(v405, &qword_27C7C5CE8);
  }

  else
  {
    v407 = v544;
    (*(v406 + 32))(v544, v405, v404);
    swift_getObjectType();
    (*(v406 + 16))(v543, v407, v404);
    sub_20C59DC6C();
    v408 = v545;
    sub_20C59F7BC();
    v409 = v547;
    sub_20C59F5FC();
    (*(v546 + 8))(v408, v409);
    (*(v406 + 8))(v407, v404);
  }

  v410 = v638;
  v411 = v636;
  sub_20C59DC4C();
  v412 = v637;
  if ((*(v637 + 48))(v411, 1, v410) == 1)
  {
    sub_20C477B50(v411, &qword_27C7C5CE0);
  }

  else
  {
    v413 = v549;
    (*(v412 + 32))(v549, v411, v410);
    swift_getObjectType();
    (*(v412 + 16))(v548, v413, v410);
    v414 = v550;
    sub_20C59FA5C();
    v415 = v552;
    sub_20C59F5FC();
    (*(v551 + 8))(v414, v415);
    (*(v412 + 8))(v413, v410);
  }

  v416 = v641;
  v417 = v639;
  sub_20C59DC1C();
  v418 = v640;
  if ((*(v640 + 48))(v417, 1, v416) == 1)
  {
    sub_20C477B50(v417, &qword_27C7C5CD8);
  }

  else
  {
    v419 = v554;
    (*(v418 + 32))(v554, v417, v416);
    swift_getObjectType();
    (*(v418 + 16))(v553, v419, v416);
    v420 = v555;
    sub_20C59FAEC();
    v421 = v557;
    sub_20C59F5FC();
    (*(v556 + 8))(v420, v421);
    (*(v418 + 8))(v419, v416);
  }

  v422 = v644;
  v423 = v642;
  sub_20C59DBBC();
  v424 = v643;
  if ((*(v643 + 48))(v423, 1, v422) == 1)
  {
    sub_20C477B50(v423, &qword_27C7C4370);
  }

  else
  {
    v425 = v559;
    (*(v424 + 32))(v559, v423, v422);
    swift_getObjectType();
    (*(v424 + 16))(v558, v425, v422);
    v426 = v560;
    sub_20C59F71C();
    v427 = v562;
    sub_20C59F5FC();
    (*(v561 + 8))(v426, v427);
    (*(v424 + 8))(v425, v422);
  }

  v428 = v647;
  v429 = v645;
  sub_20C59DCFC();
  v430 = v646;
  if ((*(v646 + 48))(v429, 1, v428) == 1)
  {
    sub_20C477B50(v429, &qword_27C7C5840);
  }

  else
  {
    v431 = v564;
    (*(v430 + 32))(v564, v429, v428);
    swift_getObjectType();
    (*(v430 + 16))(v563, v431, v428);
    sub_20C59DC6C();
    v432 = v565;
    sub_20C59F52C();
    v433 = v567;
    sub_20C59F5FC();
    (*(v566 + 8))(v432, v433);
    (*(v430 + 8))(v431, v428);
  }

  v434 = v650;
  v435 = v648;
  sub_20C59DCCC();
  v436 = v649;
  if ((*(v649 + 48))(v435, 1, v434) == 1)
  {
    sub_20C477B50(v435, &qword_27C7C4688);
  }

  else
  {
    v437 = v569;
    (*(v436 + 32))(v569, v435, v434);
    swift_getObjectType();
    (*(v436 + 16))(v568, v437, v434);
    v438 = v570;
    sub_20C59FC9C();
    v439 = v572;
    sub_20C59F5FC();
    (*(v571 + 8))(v438, v439);
    (*(v436 + 8))(v437, v434);
  }

  v440 = v653;
  v441 = v651;
  sub_20C59DCDC();
  v442 = v652;
  if ((*(v652 + 48))(v441, 1, v440) == 1)
  {
    return sub_20C477B50(v441, &qword_27C7C5CD0);
  }

  v444 = v574;
  (*(v442 + 32))(v574, v441, v440);
  swift_getObjectType();
  (*(v442 + 16))(v573, v444, v440);
  v445 = v575;
  sub_20C59FD0C();
  v446 = v577;
  sub_20C59F5FC();
  (*(v576 + 8))(v445, v446);
  return (*(v442 + 8))(v444, v440);
}

uint64_t sub_20C59D094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C59D0DC(uint64_t a1)
{
  v2 = type metadata accessor for AudioFocusPreferenceUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}