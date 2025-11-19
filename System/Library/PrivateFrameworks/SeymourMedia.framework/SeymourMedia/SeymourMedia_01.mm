void sub_20C490CCC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_20C59D1BC();
  if (v12)
  {
    sub_20C49148C();
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = v10;
        v7 = sub_20C5A09BC();

        if (v7)
        {
          v8 = a3[3];
          v9 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, v8);
          (*(v9 + 8))(v6, v8, v9);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_20C491424(v11);
  }
}

void sub_20C490DE0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_20C59D1BC();
  if (!v16[3])
  {
    sub_20C491424(v16);
    return;
  }

  sub_20C49148C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v5 = Strong;
  v6 = v17;
  v7 = sub_20C5A09BC();

  if (v7)
  {
    v8 = a3[3];
    v9 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v8);
    v10 = sub_20C59D1CC();
    if (v10)
    {
      v11 = v10;
      *&v17 = sub_20C5A039C();
      *(&v17 + 1) = v12;
      sub_20C5A0B9C();
      if (*(v11 + 16))
      {
        v13 = sub_20C495C20(v16);
        if (v14)
        {
          sub_20C479AA8(*(v11 + 56) + 32 * v13, &v17);
          sub_20C4914D8(v16);

          if (*(&v18 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
            if (swift_dynamicCast())
            {
              v15 = v16[0];
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_17;
          }

LABEL_16:
          sub_20C491424(&v17);
          v15 = 0;
LABEL_17:
          (*(v9 + 16))(v15, v8, v9);

          goto LABEL_18;
        }
      }

      sub_20C4914D8(v16);
    }

    v17 = 0u;
    v18 = 0u;
    goto LABEL_16;
  }

LABEL_18:
}

uint64_t sub_20C490FE8(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  return (*(v5 + 24))(v3, v4, v5);
}

uint64_t sub_20C491044(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a3[3];
  v5 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v4);
  return (*(v5 + 32))(v3, v4, v5);
}

uint64_t PlayerItemObserver.deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver_];

  v3 = [v1 defaultCenter];
  [v3 removeObserver_];

  v4 = *(v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  return v0;
}

Swift::Void __swiftcall PlayerItemObserver.deactivate()()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver_];

  v3 = [v1 defaultCenter];
  [v3 removeObserver_];
}

uint64_t PlayerItemObserver.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver_];

  v3 = [v1 defaultCenter];
  [v3 removeObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

Swift::Void __swiftcall PlayerItemObserver.handleMediaSelectionChanged(for:)(AVPlayerItem a1)
{
  isa = a1.super.isa;
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  (*(v4 + 32))(isa, v3, v4);
}

uint64_t sub_20C491360(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 80);
  __swift_project_boxed_opaque_existential_1((*v1 + 48), v3);
  return (*(v4 + 32))(a1, v3, v4);
}

uint64_t sub_20C491424(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C49148C()
{
  result = qword_27C7C5FF0;
  if (!qword_27C7C5FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5FF0);
  }

  return result;
}

uint64_t MarketingMetricFieldsProvider.__allocating_init(eventHub:metricClient:platform:privacyPreferenceClient:serviceSubscriptionCache:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_20C477580(a3, v12 + 16);
  *(v12 + 56) = a4;
  sub_20C477580(a5, v12 + 64);
  sub_20C477580(a6, v12 + 104);
  type metadata accessor for MarketingMetricsAccumulator();
  swift_allocObject();
  v13 = sub_20C478BF8(a1, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a6);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v12 + 144) = v13;
  return v12;
}

uint64_t MarketingMetricFieldsProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);

  return v0;
}

uint64_t sub_20C491668()
{
  v10 = v0;
  v1 = v0[487];
  v2 = v0[481];
  v3 = v0[463];
  v0[379] = v0[488];
  sub_20C5A0B9C();
  v4 = v0[367];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  sub_20C483290(&v8, v2, v1, isUniquelyReferenced_nonNull_native);

  v0[367] = v9;
  v0[489] = sub_20C59E07C();
  v0[490] = v6;

  return MEMORY[0x2822009F8](sub_20C49174C, v3, 0);
}

uint64_t sub_20C491780()
{
  v17 = v0;
  v1 = *(v0 + 3920);
  v2 = *(v0 + 3912);
  *(v0 + 3080) = *(v0 + 3928);
  sub_20C5A0B9C();
  v3 = *(v0 + 2936);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  sub_20C483290(&v15, v2, v1, isUniquelyReferenced_nonNull_native);

  v5 = v16;
  *(v0 + 2936) = v16;
  *(v0 + 3936) = v5;
  v6 = *(v0 + 2934);
  v7 = *(v0 + 2933);
  v8 = *(v0 + 3176);
  v9 = swift_allocObject();
  *(v0 + 3944) = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E8);
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v0 + 3952) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 25) = v6;

  swift_asyncLet_begin();
  v11 = swift_allocObject();
  *(v0 + 3960) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44F0);
  swift_asyncLet_begin();
  v12 = swift_allocObject();
  *(v0 + 3968) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v6;

  swift_asyncLet_begin();
  v13 = *(v0 + 3464);

  return MEMORY[0x282200930](v0 + 1936, v13, sub_20C491A08, v0 + 3040);
}

uint64_t sub_20C491A08()
{
  *(v1 + 3976) = v0;
  if (v0)
  {

    v2 = sub_20C492330;
  }

  else
  {
    v2 = sub_20C491A88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C491A88()
{
  v19 = v0;
  v1 = *(v0 + 3416);
  v2 = *(v0 + 3272);
  v3 = *(v0 + 3224);
  sub_20C4775E4(*(v0 + 3464), v1, &qword_27C7C44D8);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    sub_20C477B50(*(v0 + 3416), &qword_27C7C44D8);
  }

  else
  {
    (*(*(v0 + 3272) + 32))(*(v0 + 3320), *(v0 + 3416), *(v0 + 3224));
    *(v0 + 2920) = sub_20C59E5FC();
    *(v0 + 2928) = v4 & 1;
    *(v0 + 2929) = 1;
    sub_20C494594();
    sub_20C4945E8();
    v5 = sub_20C59DA7C();
    v6 = *(v0 + 3320);
    v7 = *(v0 + 3272);
    v8 = *(v0 + 3224);
    if (v5)
    {
      v9 = sub_20C59DFDC();
      v11 = v10;
      *(v0 + 2888) = 0x65766F72706D69;
      *(v0 + 2896) = 0xE700000000000000;
      sub_20C5A0B9C();
      v12 = *(v0 + 2936);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v12;
      sub_20C483290(&v17, v9, v11, isUniquelyReferenced_nonNull_native);

      (*(v7 + 8))(v6, v8);
      v14 = v18;
      *(v0 + 2936) = v18;
      goto LABEL_7;
    }

    (*(v7 + 8))(*(v0 + 3320), *(v0 + 3224));
  }

  v14 = *(v0 + 3936);
LABEL_7:
  *(v0 + 3984) = v14;
  *(v0 + 3992) = sub_20C59E03C();
  *(v0 + 4000) = v15;

  return MEMORY[0x282200930](v0 + 1296, v0 + 2872, sub_20C491CA4, v0 + 3280);
}

uint64_t sub_20C491CA4()
{
  *(v1 + 4008) = v0;
  if (v0)
  {

    v2 = sub_20C492504;
  }

  else
  {
    v2 = sub_20C491D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C491D30()
{
  v10 = v0;
  v1 = v0[360];
  if (v1)
  {
    v2 = v0[500];
    v3 = v0[499];
    v0[355] = v0[359];
    v0[356] = v1;

    sub_20C5A0B9C();
    v4 = v0[367];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v4;
    sub_20C483290(v8, v3, v2, isUniquelyReferenced_nonNull_native);

    v0[367] = v9;
  }

  else
  {
    sub_20C493724(v0[499], v0[500], (v0 + 327));

    sub_20C477B50((v0 + 327), &qword_27C7C55A0);
  }

  v0[502] = sub_20C59E04C();
  v0[503] = v6;

  return MEMORY[0x282200930](v0 + 82, v0 + 357, sub_20C491E58, v0 + 440);
}

uint64_t sub_20C491E58()
{
  *(v1 + 4032) = v0;
  if (v0)
  {

    v2 = sub_20C4926D8;
  }

  else
  {
    v2 = sub_20C491EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C491EE4()
{
  v9 = v0;
  v1 = v0[358];
  if (v1)
  {
    v2 = v0[503];
    v3 = v0[502];
    v0[363] = v0[357];
    v0[364] = v1;

    sub_20C5A0B9C();
    v4 = v0[367];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v4;
    sub_20C483290(v7, v3, v2, isUniquelyReferenced_nonNull_native);

    v0[367] = v8;
  }

  else
  {
    sub_20C493724(v0[502], v0[503], (v0 + 337));

    sub_20C477B50((v0 + 337), &qword_27C7C55A0);
  }

  return MEMORY[0x282200930](v0 + 2, v0 + 373, sub_20C492000, v0 + 470);
}

uint64_t sub_20C492000()
{
  *(v1 + 4040) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 2856, sub_20C4928AC, v1 + 3808);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_20C4920AC, 0, 0);
  }
}

uint64_t sub_20C4920AC()
{
  v7 = v0;
  v1 = v0[373];
  if (v1)
  {

    v2 = v0[367];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2;
    sub_20C483728(v1, sub_20C484034, 0, isUniquelyReferenced_nonNull_native, &v6);

    v4 = v6;
    v0[367] = v6;
  }

  else
  {
    v4 = v0[367];
  }

  v0[506] = v4;

  return MEMORY[0x282200920](v0 + 82, v0 + 357, sub_20C492180, v0 + 368);
}

uint64_t sub_20C492250()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 4048);

  return v1(v2);
}

uint64_t sub_20C492420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C4925F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C4927C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C49297C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C492A60(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_20C492BAC;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_20C492B88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_20C492BC4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_20C492E14;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_20C492D14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C492D14()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_20C59D45C();
  v4 = sub_20C59E45C();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = sub_20C59E44C();
    v6 = sub_20C507B24(v5);
  }

  else
  {
    v6 = 0;
  }

  (*(v0[10] + 8))(v0[11], v0[9]);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_20C492E14()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C492EB0()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C492FE4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_20C492FFC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_20C4931EC;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20C49314C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C49314C()
{
  (*(*(v0[9] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C4931EC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C49326C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  if (v0)
  {

    v4 = sub_20C493440;
  }

  else
  {
    v5 = v2[8];
    v6 = v2[6];
    v7 = v2[3];
    v2[12] = v2[2];
    v2[13] = v7;

    (*(v3 + 8))(v5, v6);
    v4 = sub_20C4933D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C4933D0()
{
  v1 = v0[13];
  v2 = v0[4];
  *v2 = v0[12];
  v2[1] = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_20C493440()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20C4934C0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  if (v0)
  {

    v4 = sub_20C494A44;
  }

  else
  {
    v5 = v2[8];
    v6 = v2[6];
    v7 = v2[3];
    v2[12] = v2[2];
    v2[13] = v7;

    (*(v3 + 8))(v5, v6);
    v4 = sub_20C494A40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20C493624(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

double sub_20C493724@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_20C4820C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20C4BAB1C();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_20C54E584(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_20C4937D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_20C4820C8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20C4BACD0();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    v19 = *(started - 8);
    sub_20C4948B4(v11 + *(v19 + 72) * v8, a3);
    sub_20C54E740(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = started;
  }

  else
  {
    v17 = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_20C493930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_20C4820C8(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20C4BAF00();
      v10 = v13;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    *(a3 + 16) = v12;
    result = sub_20C54F000(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
  }

  return result;
}

uint64_t sub_20C4939D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_20C4820C8(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_20C4BA9A4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_20C4B8394(v18, a5 & 1);
    v13 = sub_20C4820C8(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_20C4BA628(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_20C493B28(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_20C4820C8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_20C4BACD0();
      goto LABEL_7;
    }

    sub_20C4B8654(v15, a4 & 1);
    v22 = sub_20C4820C8(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_20C5A0EDC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0) - 8) + 72) * v12;

    return sub_20C494850(a1, v20);
  }

LABEL_13:
  sub_20C4BA678(v12, a2, a3, a1, v18);
}

_OWORD *sub_20C493C8C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20C4820C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20C4BB0B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20C4B8990(v16, a4 & 1);
    v11 = sub_20C4820C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);

    return sub_20C4947E4(a1, v22);
  }

  else
  {
    sub_20C4BA710(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_20C493DDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20C4820C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20C4BB41C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20C4B94D0(v16, a4 & 1);
    v11 = sub_20C4820C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_20C4BA77C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_20C493F24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_20C495E94(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_20C4BB58C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_20C4B9778(v14, a3 & 1);
    v9 = sub_20C495E94(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_20C4BA7C4(v9, a2, a1, v19);
    return sub_20C494988(a2, v21);
  }
}

void sub_20C494054(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_20C495F5C(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_20C4BB8CC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_20C4B9DD8(v13, a3 & 1);
    v8 = sub_20C495F5C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_20C494804();
      sub_20C5A0EDC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    sub_20C4947F4(v20);
  }

  else
  {
    sub_20C4BA82C(v8, a2, a1, v18);

    v21 = a2;
  }
}

unint64_t sub_20C49418C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_20C495CEC(a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_20C4BBA30();
      goto LABEL_7;
    }

    sub_20C4BA048(v19, a6 & 1);
    v25 = sub_20C495CEC(a5);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C494788(a5, v27);
      return sub_20C4BA870(v16, v27, a1, a2, a3, a4, v22);
    }

LABEL_15:
    result = sub_20C5A0EDC();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v23[3] = a4;
}

uint64_t sub_20C494304(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_20C4820C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_20C4BAF00();
      v11 = v19;
      goto LABEL_8;
    }

    sub_20C4B8C48(v16, a4 & 1);
    v11 = sub_20C4820C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_20C5A0EDC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 32 * v11;

    return sub_20C494918(a1, v22);
  }

  else
  {
    sub_20C4BA8D8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_20C494448(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20C495C20(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_20C4BBBF4();
      goto LABEL_7;
    }

    sub_20C4BA370(v13, a3 & 1);
    v19 = sub_20C495C20(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C483FD8(a2, v21);
      return sub_20C4BA928(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_20C5A0EDC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_20C4947E4(a1, v17);
}

unint64_t sub_20C494594()
{
  result = qword_2810F5A08;
  if (!qword_2810F5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F5A08);
  }

  return result;
}

unint64_t sub_20C4945E8()
{
  result = qword_2810F5A00;
  if (!qword_2810F5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F5A00);
  }

  return result;
}

uint64_t sub_20C49463C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

_OWORD *sub_20C4947E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_20C4947F4(id a1)
{
  if (a1 >= 2)
  {
  }
}

unint64_t sub_20C494804()
{
  result = qword_27C7C44F8;
  if (!qword_27C7C44F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C44F8);
  }

  return result;
}

uint64_t sub_20C494850(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_20C4948B4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for MetricPlaybackTracker.MusicStartPlaybackInfo(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_20C494918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ArtworkScaleDecorator.cacheKey.getter()
{
  v0 = sub_20C5A0E6C();
  MEMORY[0x20F2FE9A0](v0);

  MEMORY[0x20F2FE9A0](95, 0xE100000000000000);
  v1 = sub_20C5A075C();
  MEMORY[0x20F2FE9A0](v1);

  return 0x5F656C616373;
}

uint64_t ArtworkScaleDecorator.init(sizeDimension:cornerRadius:contentMode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(result + 16);
  *a3 = *result;
  *(a3 + 16) = v4;
  *(a3 + 24) = a4;
  *(a3 + 32) = a2;
  return result;
}

uint64_t ArtworkScaleDecorator.decorate(image:loadRequest:)(void *a1, __int128 *a2)
{
  v5 = sub_20C5A021C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a2[3];
  v25 = a2[2];
  v26[0] = v9;
  *(v26 + 9) = *(a2 + 57);
  v10 = a2[1];
  v23 = *a2;
  v24 = v10;
  v11 = v2[1];
  v20 = *v2;
  v21 = v11;
  v22 = *(v2 + 4);
  LODWORD(a2) = [objc_opt_self() smu_canDecodeOnRenderThread];
  sub_20C479154(0, &qword_2810F3D90);
  if (a2)
  {
    v12 = sub_20C5A08EC();
  }

  else
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D851C0], v5);
    v12 = sub_20C5A090C();
    (*(v6 + 8))(v8, v5);
  }

  v13 = swift_allocObject();
  v14 = v21;
  *(v13 + 16) = v20;
  *(v13 + 32) = v14;
  v15 = v23;
  *(v13 + 72) = v24;
  v16 = v26[0];
  *(v13 + 88) = v25;
  *(v13 + 104) = v16;
  *(v13 + 113) = *(v26 + 9);
  *(v13 + 48) = v22;
  *(v13 + 56) = v15;
  *(v13 + 136) = v12;
  *(v13 + 144) = a1;
  sub_20C49508C(&v23, v19);
  sub_20C479154(0, &qword_2810F3D80);
  v17 = a1;
  return sub_20C59EA9C();
}

uint64_t sub_20C494D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32 = a5;
  v11 = sub_20C5A020C();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C5A023C();
  v14 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = (a3 + 8);
  if (*(a3 + 16))
  {
    v19 = (a4 + 16);
  }

  else
  {
    v19 = a3;
  }

  if (*(a3 + 16))
  {
    v18 = (a4 + 24);
  }

  v20 = *v18;
  v21 = *v19;
  v22 = objc_opt_self();

  v23 = [v22 smu_preferredRendererFormat];
  [v23 setOpaque_];
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v20;
  *(v24 + 32) = v23;
  v25 = *(a3 + 16);
  *(v24 + 40) = *a3;
  *(v24 + 56) = v25;
  *(v24 + 72) = *(a3 + 32);
  *(v24 + 80) = a6;
  *(v24 + 88) = sub_20C4959AC;
  *(v24 + 96) = v17;
  aBlock[4] = sub_20C4959B8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor;
  v26 = _Block_copy(aBlock);
  v27 = v23;
  v28 = a6;
  sub_20C5A022C();
  v33 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v16, v13, v26);
  _Block_release(v26);

  (*(v31 + 8))(v13, v11);
  (*(v14 + 8))(v16, v30);
}

uint64_t sub_20C4950E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v32 = a4;
  v33 = a5;
  v12 = sub_20C5A020C();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C5A023C();
  v34 = *(v15 - 8);
  v35 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:a1 format:{a6, a7}];
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = *(a2 + 16);
  *(v19 + 32) = *a2;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 72) = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20C495ADC;
  *(v21 + 24) = v19;
  v41 = sub_20C495AEC;
  v42 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_20C50FFCC;
  v40 = &block_descriptor_23;
  v22 = _Block_copy(&aBlock);
  v23 = a3;

  v24 = [v18 imageWithActions_];

  _Block_release(v22);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else
  {
    sub_20C479154(0, &qword_2810F3D90);
    v26 = sub_20C5A08EC();
    v27 = swift_allocObject();
    v28 = v33;
    v27[2] = v32;
    v27[3] = v28;
    v27[4] = v24;
    v41 = sub_20C495AF4;
    v42 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_20C4F8F74;
    v40 = &block_descriptor_29;
    v29 = _Block_copy(&aBlock);

    v30 = v24;

    sub_20C5A022C();
    aBlock = MEMORY[0x277D84F90];
    sub_20C4959D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v17, v14, v29);
    _Block_release(v29);

    (*(v36 + 8))(v14, v12);
    (*(v34 + 8))(v17, v35);
  }

  return result;
}

void sub_20C495508(void *a1, uint64_t a2, void *a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_20C59ED2C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 CGContext];
  CGContextSetInterpolationQuality(v14, kCGInterpolationHigh);
  CGContextTranslateCTM(v14, 0.0, a5);
  CGContextScaleCTM(v14, 1.0, -1.0);
  v15 = *(a2 + 24);
  if (v15 > 0.0)
  {
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = a4;
    v28.size.height = a5;
    MinX = CGRectGetMinX(v28);
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = a4;
    v29.size.height = a5;
    MinY = CGRectGetMinY(v29);
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = a4;
    v30.size.height = a5;
    MaxX = CGRectGetMaxX(v30);
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = a4;
    v31.size.height = a5;
    v19 = MaxX - CGRectGetMinX(v31);
    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = a4;
    v32.size.height = a5;
    MaxY = CGRectGetMaxY(v32);
    v33.origin.x = 0.0;
    v33.origin.y = 0.0;
    v33.size.width = a4;
    v33.size.height = a5;
    v21 = MaxY - CGRectGetMinY(v33);
    v22 = [objc_opt_self() bezierPathWithRoundedRect:MinX cornerRadius:{MinY, v19, v21, v15}];
    v23 = [v22 CGPath];
    CGContextAddPath(v14, v23);

    (*(v11 + 104))(v13, *MEMORY[0x277CBF258], v10);
    sub_20C5A086C();

    (*(v11 + 8))(v13, v10);
  }

  v24 = [a3 CGImage];
  if (v24)
  {
    v25 = v24;
    v26 = *(a2 + 32);
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = a4;
    v34.size.height = a5;
    CGRectGetWidth(v34);
    [a3 size];
    v35.origin.x = 0.0;
    v35.origin.y = 0.0;
    v35.size.width = a4;
    v35.size.height = a5;
    CGRectGetHeight(v35);
    [a3 size];
    [a3 size];
    [a3 size];
    sub_20C5839AC(v26, 0.0, 0.0, a4, a5);
    sub_20C583B00(v26, 0.0, 0.0, a4, a5);
    sub_20C5A087C();
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkScaleSizeDimension(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ArtworkScaleSizeDimension(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_20C4958E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C495904(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C495948(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C495968(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_20C4959D8()
{
  result = qword_2810F3E00;
  if (!qword_2810F3E00)
  {
    sub_20C5A020C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F3E00);
  }

  return result;
}

unint64_t sub_20C495A30()
{
  result = qword_2810F3DC0;
  if (!qword_2810F3DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C7C60D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F3DC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t static MarketingItemConstants.clientVersion.getter()
{
  if (qword_2810F4FD0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810F4FD8;

  return v0;
}

unint64_t sub_20C495C20(uint64_t a1)
{
  v2 = sub_20C5A0B6C();

  return sub_20C495FA0(a1, v2);
}

unint64_t sub_20C495C64(uint64_t a1)
{
  sub_20C5A0FBC();
  sub_20C59E41C();
  sub_20C5A049C();

  v2 = sub_20C5A0FFC();

  return sub_20C496068(a1, v2);
}

unint64_t sub_20C495CEC(uint64_t a1)
{
  sub_20C5A0FBC();
  sub_20C5A0B8C();
  sub_20C4FACE0(*(a1 + 40), *(a1 + 48));
  v2 = sub_20C5A0FFC();

  return sub_20C49616C(a1, v2);
}

unint64_t sub_20C495D64(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20C5A0FBC();
  sub_20C5A02FC();
  v8 = sub_20C5A0FFC();
  return sub_20C496250(a1, a2, a3, a4, v8);
}

unint64_t sub_20C495E04(uint64_t a1)
{
  sub_20C5A039C();
  sub_20C5A0FBC();
  sub_20C5A049C();
  v2 = sub_20C5A0FFC();

  return sub_20C49633C(a1, v2);
}

unint64_t sub_20C495E94(uint64_t a1)
{
  sub_20C5A0FBC();
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*(a1 + 80))
  {
    MEMORY[0x20F2FF470](1);
    ArtworkImageCacheKey.hash(into:)();
  }

  else
  {
    MEMORY[0x20F2FF470](0);
    sub_20C4FACE0(v3, v2);
  }

  v4 = sub_20C5A0FFC();

  return sub_20C496440(a1, v4);
}

unint64_t sub_20C495F5C(uint64_t a1)
{
  v2 = sub_20C5A09AC();

  return sub_20C4967D0(a1, v2);
}

unint64_t sub_20C495FA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20C483FD8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F2FF020](v9, a1);
      sub_20C4914D8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20C496068(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C59E41C();
      v8 = v7;
      if (v6 == sub_20C59E41C() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C5A0E9C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20C49616C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20C494788(*(v2 + 48) + 56 * v4, v11);
      if (MEMORY[0x20F2FF020](v11, a1))
      {
        v7 = v12;
        v8 = v13;
        sub_20C496894(v11);
        if (v7 == *(a1 + 40) && v8 == *(a1 + 48))
        {
          return v4;
        }
      }

      else
      {
        sub_20C496894(v11);
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_20C496250(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    v11 = a1 >> 16;
    v12 = a2 >> 16;
    do
    {
      v13 = (*(v5 + 48) + 32 * v7);
      if (v13[2] == a3 && v13[3] == a4 && *v13 >> 16 == v11 && v13[1] >> 16 == v12)
      {
        break;
      }

      if (sub_20C5A0E5C())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_20C49633C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C5A039C();
      v8 = v7;
      if (v6 == sub_20C5A039C() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C5A0E9C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_20C496440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v59 = *(a1 + 32);
  v60 = v3;
  v61 = *(a1 + 64);
  v62 = *(a1 + 80);
  v4 = *(a1 + 16);
  v57 = *a1;
  v58 = v4;
  v5 = -1 << *(v2 + 32);
  v6 = a2 & ~v5;
  if ((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    do
    {
      v11 = (*(v2 + 48) + 88 * v6);
      v12 = v11[1];
      *v45 = *v11;
      *&v45[16] = v12;
      v14 = v11[3];
      v13 = v11[4];
      v15 = v11[2];
      v49 = *(v11 + 80);
      v47 = v14;
      v48 = v13;
      v46 = v15;
      memmove(__dst, v11, 0x51uLL);
      v53 = v59;
      v54 = v60;
      v55 = v61;
      v51 = v57;
      v56 = v62;
      v52 = v58;
      v16 = *v45;
      if (v49)
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          v41 = v46;
          v42 = v47;
          v43 = v48;
          v44 = v49;
          v9 = *v45;
          v10 = *&v45[16];
          goto LABEL_4;
        }

        if (*v45 != *a1)
        {
          goto LABEL_34;
        }

        v17 = *&v45[24];
        v37 = *(&v46 + 1);
        v38 = v46;
        v34 = *(&v47 + 1);
        v35 = v47;
        v18 = *(a1 + 24);
        v19 = *(a1 + 32);
        v36 = *(a1 + 40);
        v33 = *(a1 + 48);
        v31 = v48;
        v32 = *(a1 + 56);
        v29 = *(&v48 + 1);
        v30 = *(a1 + 64);
        v28 = *(a1 + 72);
        if (*&v45[8] != *(a1 + 8) && (sub_20C5A0E9C() & 1) == 0)
        {
          goto LABEL_26;
        }

        v20 = *(v17 + 16);
        if (v20 != *(v18 + 16))
        {
          goto LABEL_26;
        }

        if (v20 && v17 != v18)
        {
          v21 = (v17 + 40);
          v22 = (v18 + 40);
          while (1)
          {
            v25 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
            if (!v25 && (sub_20C5A0E9C() & 1) == 0)
            {
              break;
            }

            v21 += 2;
            v22 += 2;
            if (!--v20)
            {
              goto LABEL_28;
            }
          }

LABEL_26:
          sub_20C494988(a1, v40);
          sub_20C494988(v45, v40);
          sub_20C496958(__dst);
          goto LABEL_6;
        }

LABEL_28:
        if ((v38 != v19 || v37 != v36) && (sub_20C5A0E9C() & 1) == 0)
        {
LABEL_34:
          sub_20C494988(a1, v40);
          sub_20C494988(v45, v40);
          goto LABEL_5;
        }

        if (v35 == v33 && v34 == v32)
        {
          sub_20C494988(a1, v40);
          sub_20C494988(v45, v40);
          sub_20C496958(__dst);
        }

        else
        {
          v26 = sub_20C5A0E9C();
          sub_20C494988(a1, v40);
          sub_20C494988(v45, v40);
          sub_20C496958(__dst);
          if ((v26 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        if (v31 == v30 && v29 == v28)
        {
          return v6;
        }
      }

      else
      {
        if (*(a1 + 80))
        {
          v41 = v59;
          v42 = v60;
          v43 = v61;
          v44 = v62;
          v9 = v57;
          v10 = v58;
LABEL_4:
          v40[0] = v9;
          v40[1] = v10;
          sub_20C4968E8(v40, v39);
LABEL_5:
          sub_20C496958(__dst);
          goto LABEL_6;
        }

        v24 = *a1;
        v23 = *(a1 + 8);
        sub_20C496958(__dst);
        if (*&v16 == v24 && v23 == *(&v16 + 1))
        {
          return v6;
        }
      }

LABEL_6:
      v6 = (v6 + 1) & v8;
    }

    while (((*(v2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_20C4967D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_20C494804();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_20C5A09BC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_20C4968E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C496958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioFocusPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59E47C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static AudioFocusPreferenceUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C496AA0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for AudioFocusPreferenceUpdated()
{
  result = qword_27C7C4520;
  if (!qword_27C7C4520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C496B8C()
{
  result = sub_20C59E47C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t MarketingOffer.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MarketingOffer.subtitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MarketingOffer.supportingText.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MarketingOffer.init(from:template:parserType:)@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  type metadata accessor for MarketingOfferTemplateDefaultParser();
  *(swift_initStackObject() + 16) = v5;
  sub_20C497094(v5);
  v6 = [a1 itemActions];
  if (v6)
  {
    v7 = v6;
    sub_20C479154(0, &qword_27C7C4550);
    v8 = sub_20C5A061C();
  }

  else
  {
    v8 = 0;
  }

  v38 = sub_20C57EE14(v8);

  v9 = [a1 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_20C5A039C();
    v34 = v12;
    v36 = v11;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v13 = [a1 subtitle];
  if (v13)
  {
    v14 = v13;
    v15 = sub_20C5A039C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = a1;
  v19 = [v18 artworkDictionary];
  if (v19)
  {
    v20 = v19;
    sub_20C479154(0, &qword_27C7C4548);
    v21 = sub_20C5A02BC();
  }

  else
  {
    v21 = sub_20C589150(MEMORY[0x277D84F90]);
  }

  v22 = [v18 rawValues];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4530);
  v23 = sub_20C5A02BC();

  if (!*(v23 + 16))
  {
    goto LABEL_25;
  }

  v24 = sub_20C4820C8(0x7475626972747461, 0xEA00000000007365);
  if ((v25 & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_unknownObjectRetain();

  v41[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v39 + 16))
  {
    goto LABEL_26;
  }

  v27 = sub_20C4820C8(0x73726566666FLL, 0xE600000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_20C479AA8(*(v39 + 56) + 32 * v27, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4540);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  if (!*(v39 + 16))
  {
LABEL_26:

    goto LABEL_27;
  }

  sub_20C479AA8(v39 + 32, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (!*(v39 + 16) || (v29 = sub_20C4820C8(0x656C746974627573, 0xE800000000000000), (v30 & 1) == 0))
  {
LABEL_25:

    goto LABEL_28;
  }

  sub_20C479AA8(*(v39 + 56) + 32 * v29, v41);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_28:
    v32 = 0;
    v33 = 0;
    goto LABEL_29;
  }

  v32 = v39;
  v33 = v40;
LABEL_29:
  *a3 = v38;
  a3[1] = v37;
  a3[2] = v35;
  a3[3] = v15;
  a3[4] = v17;
  a3[5] = v32;
  a3[6] = v33;
  a3[7] = v18;
  a3[8] = v21;
  a3[9] = v5;
  return result;
}

unint64_t sub_20C497094(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

void MarketingOffer.artwork(for:)(void *a1@<X8>)
{
  v3 = *(v1 + 64);
  if (*(v3 + 16) && (v4 = sub_20C4820C8(0x666C656853706F74, 0xE800000000000000), (v5 & 1) != 0))
  {
    v6 = *MEMORY[0x277CEE210];
    v7 = *(*(v3 + 56) + 8 * v4);
    [v7 colorWithKind_];
    v8 = [v7 colorWithKind_];
    v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    if (!v9)
    {
      v9 = [objc_opt_self() clearColor];
    }

    *a1 = v9;
    a1[1] = v7;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t MarketingOffer.hash(into:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[6];
  v7 = v1[8];
  v6 = v1[9];
  sub_20C497880(a1, *v1);
  if (v3)
  {
    sub_20C5A0FDC();
    sub_20C5A049C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_20C5A0FDC();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_20C5A0FDC();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_20C5A0FDC();
  sub_20C5A049C();
  if (v5)
  {
LABEL_4:
    sub_20C5A0FDC();
    sub_20C5A049C();
    goto LABEL_8;
  }

LABEL_7:
  sub_20C5A0FDC();
LABEL_8:
  sub_20C5A09CC();
  sub_20C49755C(a1, v7);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 3;
      goto LABEL_18;
    }

    if (v6 == 3)
    {
      v8 = 4;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v6)
    {
      v8 = 0;
      goto LABEL_18;
    }

    if (v6 == 1)
    {
      v8 = 1;
LABEL_18:
      MEMORY[0x20F2FF470](v8);
      return MEMORY[0x20F2FF470](0);
    }
  }

  MEMORY[0x20F2FF470](2);
  sub_20C4976B4(a1, v6);
  return MEMORY[0x20F2FF470](0);
}

uint64_t MarketingOffer.hashValue.getter()
{
  sub_20C5A0FBC();
  MarketingOffer.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C497358()
{
  sub_20C5A0FBC();
  MarketingOffer.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C49739C()
{
  sub_20C5A0FBC();
  MarketingOffer.hash(into:)(v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C4973DC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      sub_20C483FD8(*(a2 + 56) + 40 * v13, &v20);
      v18 = v20;
      v19 = v21;
      v15 = v22;

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v25[0] = v18;
      v25[1] = v19;
      v26 = v15;
      v16 = a1[3];
      v22 = a1[2];
      v23 = v16;
      v24 = *(a1 + 8);
      v17 = a1[1];
      v20 = *a1;
      v21 = v17;
      sub_20C5A049C();

      sub_20C5A0B8C();
      sub_20C4914D8(v25);
      result = sub_20C5A0FFC();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x20F2FF470](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C49755C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    v13 = v12;
    sub_20C5A049C();

    sub_20C5A09CC();

    result = sub_20C5A0FFC();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x20F2FF470](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C4976B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2FF470](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v7 = *(v5 - 16);
      v8 = *(v5 - 1);
      v9 = *v5;
      if (v9 < 0)
      {
        MEMORY[0x20F2FF470](1);
        MEMORY[0x20F2FF470](v7);
        v6 = 1;
        if (v9)
        {
          goto LABEL_4;
        }
      }

      else
      {
        MEMORY[0x20F2FF470](0);
        MEMORY[0x20F2FF470](v7);
        if (v9)
        {
          v6 = 1;
          goto LABEL_4;
        }
      }

      MEMORY[0x20F2FF470](0);
      v6 = v8;
LABEL_4:
      v5 += 24;
      result = MEMORY[0x20F2FF470](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20C497764(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x20F2FF470](v3);
  if (v3)
  {
    v5 = (a2 + 80);
    do
    {
      v8 = *(v5 - 6);
      v9 = *(v5 - 5);
      v10 = *(v5 - 4);
      v11 = *(v5 - 3);
      v12 = *(v5 - 2);
      v13 = *(v5 - 1);
      v14 = *v5;
      if (*v5)
      {
        if (v14 == 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        MEMORY[0x20F2FF470](v15);
      }

      else
      {
        MEMORY[0x20F2FF470](0);

        sub_20C5A049C();
        if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v6 = v10;
        }

        else
        {
          v6 = 0;
        }

        MEMORY[0x20F2FF490](v6);
        if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v7 = v11;
        }

        else
        {
          v7 = 0;
        }

        MEMORY[0x20F2FF490](v7);
      }

      sub_20C5A049C();
      v5 += 56;
      result = sub_20C497EF0(v8, v9, v10, v11, v12, v13, v14);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_20C497880(uint64_t a1, uint64_t a2)
{
  v24 = sub_20C59D37C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MarketingAction();
  MEMORY[0x28223BE20](v28);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MarketingActionItem();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x20F2FF470](v11);
  if (v11)
  {
    v13 = v7[6];
    v27 = &v10[v7[5]];
    v14 = &v10[v13];
    v15 = v7[8];
    v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = *(v8 + 72);
    v26 = v15;
    v21 = (v3 + 8);
    v22 = (v3 + 32);
    do
    {
      sub_20C497F58(v16, v10, type metadata accessor for MarketingActionItem);
      sub_20C497F58(v10, v6, type metadata accessor for MarketingAction);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = v23;
        v19 = v24;
        (*v22)(v23, v6, v24);
        MEMORY[0x20F2FF470](1);
        sub_20C497FC0();
        sub_20C5A02FC();
        (*v21)(v18, v19);
      }

      else
      {
        v20 = *v6;
        MEMORY[0x20F2FF470](0);
        sub_20C5A09CC();
      }

      if (*(v27 + 1))
      {
        sub_20C5A0FDC();
        sub_20C5A049C();
        if (!*(v14 + 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_20C5A0FDC();
        if (!*(v14 + 1))
        {
LABEL_12:
          sub_20C5A0FDC();
          goto LABEL_4;
        }
      }

      sub_20C5A0FDC();
      sub_20C5A049C();
LABEL_4:
      sub_20C5A049C();
      v17 = v10[v26];
      MEMORY[0x20F2FF470](v17 >> 7);
      MEMORY[0x20F2FF470](v17 & 0x7F);
      result = sub_20C498018(v10);
      v16 += v25;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t _s12SeymourMedia14MarketingOfferV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v18 = a1[8];
  v16 = a1[9];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v19 = a2[5];
  v20 = a1[5];
  v11 = a2[6];
  v17 = a2[8];
  v15 = a2[9];
  if ((sub_20C567C60(*a1, *a2) & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v4)
  {
    if (!v9 || (v2 != v7 || v4 != v9) && (sub_20C5A0E9C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  if (v5)
  {
    if (!v10 || (v3 != v8 || v5 != v10) && (sub_20C5A0E9C() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v10)
  {
    goto LABEL_26;
  }

  if (!v6)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_26:
    v13 = 0;
    return v13 & 1;
  }

  if (!v11 || (v20 != v19 || v6 != v11) && (sub_20C5A0E9C() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  sub_20C479154(0, &qword_27C7C4568);
  if ((sub_20C5A09BC() & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_20C59314C(v18, v17);
  if ((v12 & 1) == 0)
  {
    goto LABEL_26;
  }

  v21 = v15;
  v22 = v16;
  sub_20C497094(v16);
  sub_20C497094(v15);
  v13 = _s12SeymourMedia22MarketingOfferTemplateO2eeoiySbAC_ACtFZ_0(&v22, &v21);
  sub_20C498074(v21);
  sub_20C498074(v22);
  return v13 & 1;
}

unint64_t sub_20C497DBC()
{
  result = qword_27C7C4558;
  if (!qword_27C7C4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4558);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SeymourMedia22MarketingOfferTemplateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_20C497E44(uint64_t *a1, int a2)
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

uint64_t sub_20C497E8C(uint64_t result, int a2, int a3)
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

uint64_t sub_20C497EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 - 1 < 2)
  {
  }

  if (!a7)
  {
  }

  return result;
}

uint64_t sub_20C497F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C497FC0()
{
  result = qword_27C7C4560;
  if (!qword_27C7C4560)
  {
    sub_20C59D37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4560);
  }

  return result;
}

uint64_t sub_20C498018(uint64_t a1)
{
  v2 = type metadata accessor for MarketingActionItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C498074(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

SeymourMedia::CountdownStep_optional __swiftcall CountdownStep.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 0x2010003u >> (8 * rawValue);
  if (rawValue >= 4)
  {
    LOBYTE(v2) = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_20C4980C8()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1 + 1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C498140()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1 + 1);
  return sub_20C5A0FFC();
}

uint64_t CountdownStep.description.getter()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

unint64_t sub_20C4981E8()
{
  result = qword_27C7C4570;
  if (!qword_27C7C4570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4570);
  }

  return result;
}

uint64_t sub_20C49823C()
{
  v1 = 0x6565726854;
  if (*v0 == 1)
  {
    v1 = 7305044;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6647375;
  }
}

uint64_t getEnumTagSinglePayload for MarketingItemActionFootnotePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingItemActionFootnotePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t MusicLibrary.__allocating_init(queue:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t MusicLibrary.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t MusicLibrary.requestSubscriptionCapabilities()()
{
  type metadata accessor for MusicSubscriptionCapabilities(0);

  return sub_20C59EA9C();
}

uint64_t MusicLibrary.queryForTracksAddedToLibrary(identifiers:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4578);

  return sub_20C59EA9C();
}

uint64_t sub_20C498560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = sub_20C5A020C();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C5A023C();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A021C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_20C479154(0, &qword_2810F3D90);
  (*(v13 + 104))(v15, *MEMORY[0x277D851B8], v12);

  v17 = sub_20C5A090C();
  (*(v13 + 8))(v15, v12);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v23;
  v18[3] = sub_20C49B62C;
  v18[4] = v16;
  v18[5] = v19;
  aBlock[4] = sub_20C49B630;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_76;
  v20 = _Block_copy(aBlock);

  sub_20C5A022C();
  v27 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v11, v8, v20);
  _Block_release(v20);

  (*(v26 + 8))(v8, v6);
  (*(v9 + 8))(v11, v25);
}

void sub_20C498904(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v65 = a2;
  v66 = a3;
  v6 = sub_20C5A020C();
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v63 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A023C();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = 0;
  while (v13)
  {
LABEL_11:
    v18 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
    v20 = *v18;
    v19 = v18[1];
    aBlock = v20;
    v69 = v19;
    v21 = sub_20C4990DC(&aBlock, &v74);
    if (v74)
    {
      v4 = &v75;
      MEMORY[0x20F2FEAA0](v21);
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C5A065C();
      }

      sub_20C5A068C();
      v10 = v75;
    }

    v13 &= v13 - 1;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(a1 + 56 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  v4 = objc_opt_self();
  sub_20C557F08(v10);

  sub_20C479154(0, &qword_27C7C5580);
  sub_20C49B63C(&qword_27C7C5BD0, &qword_27C7C5580);
  v22 = sub_20C5A078C();

  v23 = [v4 predicateForTracksWithAdamIdentifiers_];

  if (v23)
  {
    v58 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C5A3A10;
    *(inited + 32) = v23;
    v57 = v23;
    sub_20C4DEDF0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    sub_20C479154(0, &qword_27C7C4590);
    sub_20C49B63C(&qword_27C7C4598, &qword_27C7C4590);
    v26 = sub_20C5A078C();

    v27 = [v25 initWithFilterPredicates_];

    v56 = v27;
    v28 = [v27 items];
    if (v28)
    {
      v29 = v28;
      sub_20C479154(0, &qword_27C7C45A0);
      v6 = sub_20C5A061C();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v15 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      goto LABEL_45;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20C5A0B3C())
    {
      v33 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v54[1] = v16;
      v16 = 0;
      v67 = MEMORY[0x277D84F90];
LABEL_25:
      v34 = v16;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x20F2FF0E0](v34, v6);
        }

        else
        {
          if (v34 >= *(v15 + 16))
          {
            goto LABEL_44;
          }

          v35 = *(v6 + 8 * v34 + 32);
        }

        v36 = v35;
        v16 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v37 = [v4 identifierForItem_];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 stringValue];

          v40 = sub_20C5A039C();
          v55 = v41;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_20C4EC62C(0, *(v67 + 2) + 1, 1, v67);
          }

          v43 = *(v67 + 2);
          v42 = *(v67 + 3);
          if (v43 >= v42 >> 1)
          {
            v67 = sub_20C4EC62C((v42 > 1), v43 + 1, 1, v67);
          }

          v44 = v67;
          *(v67 + 2) = v43 + 1;
          v45 = &v44[16 * v43];
          v46 = v55;
          *(v45 + 4) = v40;
          *(v45 + 5) = v46;
          v33 = MEMORY[0x277D84F90];
          if (v16 != i)
          {
            goto LABEL_25;
          }

          goto LABEL_41;
        }

        ++v34;
        if (v16 == i)
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      ;
    }

    v67 = MEMORY[0x277D84F90];
LABEL_41:

    v47 = sub_20C558048(v67);

    v48 = swift_allocObject();
    v49 = v66;
    v48[2] = v65;
    v48[3] = v49;
    v48[4] = v47;
    v72 = sub_20C495AF4;
    v73 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_20C4F8F74;
    v71 = &block_descriptor_82;
    v50 = _Block_copy(&aBlock);

    v51 = v60;
    sub_20C5A022C();
    v75 = v33;
    sub_20C4959D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    v52 = v63;
    v53 = v58;
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v51, v52, v50);
    _Block_release(v50);

    (*(v64 + 8))(v52, v53);
    (*(v61 + 8))(v51, v62);
  }

  else
  {
    sub_20C49B484();
    v30 = swift_allocError();
    *v31 = 0;
    v65(v30, 1);
  }
}

unsigned __int8 *sub_20C4990DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = HIBYTE(v10) & 0xF;
  v12 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v10 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
LABEL_63:
    sub_20C59FE2C();

    v33 = sub_20C5A01BC();
    v34 = sub_20C5A089C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v44 = v8;
      v36 = v9;
      v37 = v5;
      v38 = v35;
      v39 = swift_slowAlloc();
      v43 = v4;
      v40 = v39;
      v45[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_20C479640(v36, v10, v45);
      _os_log_impl(&dword_20C472000, v33, v34, "Track had a non-numeric identifier: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x20F2FFF90](v40, -1, -1);
      MEMORY[0x20F2FFF90](v38, -1, -1);

      (*(v37 + 8))(v44, v43);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    result = 0;
    goto LABEL_69;
  }

  if ((v10 & 0x1000000000000000) != 0)
  {

    v15 = sub_20C49AEF8(v9, v10, 10);
    v42 = v41;

    if (v42)
    {
      goto LABEL_63;
    }

    goto LABEL_68;
  }

  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      result = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_20C5A0C7C();
    }

    v14 = *result;
    if (v14 == 43)
    {
      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          v15 = 0;
          if (result)
          {
            v22 = result + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_61;
              }

              v24 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_61;
              }

              v15 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                goto LABEL_61;
              }

              ++v22;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_73;
    }

    if (v14 != 45)
    {
      if (v12)
      {
        v15 = 0;
        if (result)
        {
          while (1)
          {
            v28 = *result - 48;
            if (v28 > 9)
            {
              goto LABEL_61;
            }

            v29 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_61;
            }

            v15 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v12)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v15 = 0;
      LOBYTE(v11) = 1;
LABEL_62:
      v46 = v11;
      if (v11)
      {
        goto LABEL_63;
      }

LABEL_68:
      result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
LABEL_69:
      *a2 = result;
      return result;
    }

    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v15 = 0;
        if (result)
        {
          v16 = result + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              goto LABEL_61;
            }

            v18 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              goto LABEL_61;
            }

            v15 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v11) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v45[0] = v9;
  v45[1] = v10 & 0xFFFFFFFFFFFFFFLL;
  if (v9 != 43)
  {
    if (v9 != 45)
    {
      if (v11)
      {
        v15 = 0;
        v30 = v45;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          v32 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            break;
          }

          v30 = (v30 + 1);
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v11)
    {
      if (--v11)
      {
        v15 = 0;
        v19 = v45 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v15;
          if ((v15 * 10) >> 64 != (10 * v15) >> 63)
          {
            break;
          }

          v15 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          ++v19;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if (v11)
  {
    if (--v11)
    {
      v15 = 0;
      v25 = v45 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v15;
        if ((v15 * 10) >> 64 != (10 * v15) >> 63)
        {
          break;
        }

        v15 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++v25;
        if (!--v11)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_74:
  __break(1u);
  return result;
}

void sub_20C4995D8(void (*a1)(id *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &aBlock - v9;
  v11 = sub_20C59D4CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59D47C();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20C49B528(v10);
    sub_20C49B484();
    v15 = swift_allocError();
    *v16 = 2;
    aBlock = v15;
    LOBYTE(v22) = 1;
    a1(&aBlock);
    sub_20C48685C(aBlock, v22);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = [objc_opt_self() defaultMediaLibrary];
    v18 = sub_20C59D49C();
    v19 = swift_allocObject();
    v19[2] = a5;
    v19[3] = a1;
    v19[4] = a2;
    v25 = sub_20C49B5D8;
    v26 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_20C499B34;
    v24 = &block_descriptor_61;
    v20 = _Block_copy(&aBlock);

    [v17 getPlaylistWithUUID:v18 creationMetadata:0 completionHandler:v20];
    _Block_release(v20);

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20C4998B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_20C5A020C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C5A023C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a5;
  aBlock[4] = sub_20C49B5E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_67;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  sub_20C5A022C();
  v20[1] = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v15, v11, v17);
  _Block_release(v17);
  (*(v9 + 8))(v11, v8);
  (*(v13 + 8))(v15, v12);
}

void sub_20C499B34(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_20C499BEC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = HIBYTE(a4) & 0xF;
  v12 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_63;
  }

  if ((a4 & 0x1000000000000000) != 0)
  {

    v16 = sub_20C49AEF8(a3, a4, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_63;
    }

LABEL_66:
    v39 = objc_opt_self();
    v40 = swift_allocObject();
    v40[2] = a5;
    v40[3] = sub_20C49B7B4;
    v40[4] = v10;
    v46 = sub_20C49B4D8;
    v47 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_20C49A0E8;
    v45 = &block_descriptor_49;
    v41 = _Block_copy(&aBlock);

    [v39 addTrackWithIdentifier:v16 completion:v41];
    _Block_release(v41);
    return;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v14 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v14 = sub_20C5A0C7C();
    }

    v15 = *v14;
    if (v15 == 43)
    {
      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          v16 = 0;
          if (v14)
          {
            v23 = v14 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_61;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v23;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v15 != 45)
    {
      if (v12)
      {
        v16 = 0;
        if (v14)
        {
          while (1)
          {
            v29 = *v14 - 48;
            if (v29 > 9)
            {
              goto LABEL_61;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_61;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v16 = 0;
      LOBYTE(v11) = 1;
LABEL_62:
      v48 = v11;
      v34 = v11;

      if (v34)
      {
LABEL_63:

        sub_20C49B484();
        v35 = swift_allocError();
        *v36 = 3;
        aBlock = v35;
        LOBYTE(v43) = 1;
        a1(&aBlock);

        return;
      }

      goto LABEL_66;
    }

    if (v12 >= 1)
    {
      v11 = v12 - 1;
      if (v12 != 1)
      {
        v16 = 0;
        if (v14)
        {
          v17 = v14 + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v11)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v11) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  aBlock = a3;
  v43 = a4 & 0xFFFFFFFFFFFFFFLL;
  if (a3 != 43)
  {
    if (a3 != 45)
    {
      if (v11)
      {
        v16 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v32 = *p_aBlock - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v11)
    {
      if (--v11)
      {
        v16 = 0;
        v20 = &aBlock + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v11)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v11)
  {
    if (--v11)
    {
      v16 = 0;
      v26 = &aBlock + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v11)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
}

void sub_20C49A058(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    a2(a1, 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
    sub_20C5A101C();
    a2(v3, v4);
    sub_20C48685C(v3, v4);
  }
}

void sub_20C49A0E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_20C49A180(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  return sub_20C59EA9C();
}

void sub_20C49A214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();

  v10 = sub_20C5A036C();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_20C4959AC;
  v11[4] = v8;
  v13[4] = sub_20C49AEA0;
  v13[5] = v11;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20C49A0E8;
  v13[3] = &block_descriptor_0;
  v12 = _Block_copy(v13);

  [v9 addGlobalPlaylistWithIdentifier:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_20C49A368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v22 = a7;
  v10 = sub_20C5A020C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_20C5A023C();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  aBlock[4] = v21;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = v22;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_20C5A022C();
  v24 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);
}

void sub_20C49A5E4(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
    sub_20C5A101C();
    a2(v5, v6);
    sub_20C48685C(v5, v6);
  }
}

uint64_t sub_20C49A6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C5A020C();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C5A023C();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A021C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_20C479154(0, &qword_2810F3D90);
  (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);

  v15 = sub_20C5A090C();
  (*(v11 + 8))(v13, v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20C49B7B8;
  *(v16 + 24) = v14;
  aBlock[4] = sub_20C49B724;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_91;
  v17 = _Block_copy(aBlock);
  sub_20C5A022C();
  v22 = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v21 + 8))(v6, v4);
  (*(v7 + 8))(v9, v20);
}

void sub_20C49AA58(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_20C49B72C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_20C49AB48;
  v7[3] = &block_descriptor_97;
  v6 = _Block_copy(v7);

  [v4 requestSubscriptionCapabilitiesWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_20C49AB48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_20C49AB9C()
{
  type metadata accessor for MusicSubscriptionCapabilities(0);

  return sub_20C59EA9C();
}

uint64_t sub_20C49ABF4(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4578);

  return sub_20C59EA9C();
}

uint64_t sub_20C49AD14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v5;

  return sub_20C59EA9C();
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unsigned __int8 *sub_20C49AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_20C5A058C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_20C4A4644();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_20C5A0C7C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_20C49B484()
{
  result = qword_27C7C4580;
  if (!qword_27C7C4580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4580);
  }

  return result;
}

uint64_t sub_20C49B528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_32Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_20C49B5E4()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 16) != 0;
  v4 = 0;
  return v1(&v3);
}

uint64_t sub_20C49B63C(unint64_t *a1, unint64_t *a2)
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

uint64_t objectdestroy_2Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

uint64_t sub_20C49B6E4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t static MediaPlayerFinished.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for MediaPlayerFinished(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlayerFinished(uint64_t result, int a2, int a3)
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

uint64_t static MetricBackNavigationOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for MetricBackNavigationOccurred(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricBackNavigationOccurred(uint64_t result, unsigned int a2, unsigned int a3)
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

double CGPoint.roundToScale(_:)(double a1, double a2, double a3)
{
  v6 = objc_opt_self();
  [v6 roundValue:a2 toScale:a1];
  v8 = v7;
  [v6 roundValue:a3 toScale:a1];
  return v8;
}

CGPoint __swiftcall CGPoint.roundToViewScale(_:)(UIView *a1)
{
  v3 = sub_20C49BAF4(a1, &selRef_roundValue_toScaleOfView_, v1, v2);
  result.y = v4;
  result.x = v3;
  return result;
}

CGPoint __swiftcall CGPoint.roundToScreenScale(_:)(UIScreen a1)
{
  v3 = sub_20C49BAF4(a1.super.isa, &selRef_roundValue_toScaleOfScreen_, v1, v2);
  result.y = v4;
  result.x = v3;
  return result;
}

double sub_20C49BAF4(uint64_t a1, SEL *a2, double a3, double a4)
{
  v8 = objc_opt_self();
  [v8 *a2];
  v10 = v9;
  [v8 *a2];
  return v10;
}

uint64_t SiriError.hashValue.getter()
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](0);
  return sub_20C5A0FFC();
}

unint64_t sub_20C49BBF4()
{
  result = qword_27C7C45A8;
  if (!qword_27C7C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C45A8);
  }

  return result;
}

unint64_t sub_20C49BCD0()
{
  result = qword_27C7C45B0;
  if (!qword_27C7C45B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C45B0);
  }

  return result;
}

uint64_t sub_20C49BD24()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

uint64_t sub_20C49BD6C()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

uint64_t Playback.State.init(timeControlStatus:)(unint64_t a1)
{
  if (a1 < 3)
  {
    return 0x201u >> (8 * a1);
  }

  result = sub_20C5A0D1C();
  __break(1u);
  return result;
}

uint64_t sub_20C49BE24()
{
  result = sub_20C5A074C();
  qword_27C7C45B8 = v1;
  return result;
}

uint64_t sub_20C49BE6C()
{
  result = sub_20C5A074C();
  qword_27C7C45C0 = v1;
  return result;
}

uint64_t sub_20C49BEB4()
{
  result = sub_20C5A074C();
  qword_27C7C45C8 = v1;
  return result;
}

double sub_20C49BF00(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t static SiriPauseSessionRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static PlaybackTimelineEventEnded.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C49C0C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C49C138(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

char *sub_20C49C278(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_20C49C4C8()
{
  result = sub_20C47EB60(&unk_28236AD38);
  qword_27C7C4650 = result;
  return result;
}

unint64_t MarketingEngagementPlacement.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000016;
  v2 = 0xD000000000000018;
  if (a1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  if (a1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = v2;
  }

  if (a1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C49C5A0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = MarketingEngagementPlacement.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MarketingEngagementPlacement.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_20C5A0E9C();
  }

  return v8 & 1;
}

uint64_t sub_20C49C628@<X0>(_BYTE *a1@<X8>)
{
  result = _s12SeymourMedia28MarketingEngagementPlacementO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_20C49C658@<X0>(unint64_t *a1@<X8>)
{
  result = MarketingEngagementPlacement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_20C49C684()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MarketingEngagementPlacement.rawValue.getter(v1);
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C49C6E8()
{
  MarketingEngagementPlacement.rawValue.getter(*v0);
  sub_20C5A049C();
}

uint64_t sub_20C49C73C()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MarketingEngagementPlacement.rawValue.getter(v1);
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t _s12SeymourMedia28MarketingEngagementPlacementO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C5A0D9C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for MarketingEngagementPlacement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingEngagementPlacement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20C49C928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C59ECDC();
  if ((v2 & 0x100000000) == 0)
  {
    v3 = MEMORY[0x277D52BA8];
LABEL_3:
    v4 = *v3;
    v5 = sub_20C59E78C();
    v12 = *(v5 - 8);
    (*(v12 + 104))(a1, v4, v5);
    v6 = *(v12 + 56);
    v7 = a1;
    v8 = 0;
    v9 = v5;
    goto LABEL_4;
  }

  if (v2 > 1u)
  {
    if (v2 == 2)
    {
      v3 = MEMORY[0x277D52BB8];
    }

    else
    {
      v3 = MEMORY[0x277D52BB0];
    }

    goto LABEL_3;
  }

  if (v2)
  {
    v3 = MEMORY[0x277D52BA0];
    goto LABEL_3;
  }

  v11 = sub_20C59E78C();
  v6 = *(*(v11 - 8) + 56);
  v9 = v11;
  v7 = a1;
  v8 = 1;
LABEL_4:

  return v6(v7, v8, 1, v9);
}

uint64_t MarketingItemError.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C49CB08()
{
  result = qword_27C7C4658;
  if (!qword_27C7C4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingItemError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingItemError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FairPlayError.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  swift_getErrorValue();
  if (sub_20C5A0F1C() == 0xD000000000000014 && 0x800000020C5AB9C0 == v7)
  {
  }

  else
  {
    v9 = sub_20C5A0E9C();

    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  swift_getErrorValue();
  v10 = sub_20C5A0EFC();
  if (!v10)
  {
LABEL_12:
    v16 = a1;
LABEL_13:

    goto LABEL_17;
  }

  v11 = v10;
  swift_getErrorValue();
  v12 = sub_20C5A0F1C();
  v14 = v13;
  if (v12 == sub_20C5A039C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_20C5A0E9C();

    if ((v17 & 1) == 0)
    {

      v16 = v11;
      goto LABEL_13;
    }
  }

  swift_getErrorValue();
  sub_20C5A0F0C();
  sub_20C59DB4C();

  v18 = sub_20C59DB5C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) != 1)
  {
    (*(v19 + 32))(a2, v6, v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }

  sub_20C49CF90(v6);
LABEL_17:
  v20 = sub_20C59DB5C();
  return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
}

uint64_t sub_20C49CF90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static MediaPlayerStatusUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C49D08C(void *a1)
{
  v2 = [a1 vocabularyIdentifier];
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = sub_20C5A039C();
  v6 = v5;
  if (v4 == sub_20C5A039C() && v6 == v7)
  {

    return 11;
  }

  v9 = sub_20C5A0E9C();
  v10 = v3;

  if (v9)
  {

    return 11;
  }

  v12 = sub_20C5A039C();
  v14 = v13;
  if (v12 == sub_20C5A039C() && v14 == v15)
  {
    goto LABEL_20;
  }

  v17 = sub_20C5A0E9C();

  if (v17)
  {
LABEL_17:

    return 13;
  }

  v18 = sub_20C5A039C();
  v20 = v19;
  if (v18 == sub_20C5A039C() && v20 == v21)
  {
LABEL_20:

    return 13;
  }

  v22 = sub_20C5A0E9C();

  if (v22)
  {
    goto LABEL_17;
  }

  v23 = sub_20C5A039C();
  v25 = v24;
  if (v23 == sub_20C5A039C() && v25 == v26)
  {

    return 77;
  }

  v27 = sub_20C5A0E9C();

  if (v27)
  {

    return 77;
  }

  v28 = sub_20C5A039C();
  v30 = v29;
  if (v28 == sub_20C5A039C() && v30 == v31)
  {

    return 16;
  }

  v32 = sub_20C5A0E9C();

  if (v32)
  {

    return 16;
  }

  v33 = sub_20C5A039C();
  v35 = v34;
  if (v33 == sub_20C5A039C() && v35 == v36)
  {

    return 63;
  }

  v37 = sub_20C5A0E9C();

  if (v37)
  {

    return 63;
  }

  v38 = sub_20C5A039C();
  v40 = v39;
  if (v38 == sub_20C5A039C() && v40 == v41)
  {

    return 24;
  }

  v42 = sub_20C5A0E9C();

  if (v42)
  {

    return 24;
  }

  v43 = sub_20C5A039C();
  v45 = v44;
  if (v43 == sub_20C5A039C() && v45 == v46)
  {

    return 35;
  }

  v47 = sub_20C5A0E9C();

  if (v47)
  {

    return 35;
  }

  v48 = sub_20C5A039C();
  v50 = v49;
  if (v48 == sub_20C5A039C() && v50 == v51)
  {
    goto LABEL_55;
  }

  v52 = sub_20C5A0E9C();

  if (v52)
  {
    goto LABEL_57;
  }

  v53 = sub_20C5A039C();
  v55 = v54;
  if (v53 == sub_20C5A039C() && v55 == v56)
  {
LABEL_55:

    return 37;
  }

  v57 = sub_20C5A0E9C();

  if (v57)
  {
LABEL_57:

    return 37;
  }

  v58 = sub_20C5A039C();
  v60 = v59;
  if (v58 == sub_20C5A039C() && v60 == v61)
  {

    return 46;
  }

  v62 = sub_20C5A0E9C();

  if (v62)
  {

    return 46;
  }

  v63 = sub_20C5A039C();
  v65 = v64;
  if (v63 == sub_20C5A039C() && v65 == v66)
  {

    return 44;
  }

  v67 = sub_20C5A0E9C();

  if (v67)
  {

    return 44;
  }

  v68 = sub_20C5A039C();
  v70 = v69;
  if (v68 == sub_20C5A039C() && v70 == v71)
  {
    goto LABEL_76;
  }

  v72 = sub_20C5A0E9C();

  if (v72)
  {
    goto LABEL_78;
  }

  v73 = sub_20C5A039C();
  v75 = v74;
  if (v73 == sub_20C5A039C() && v75 == v76)
  {
LABEL_76:

    return 52;
  }

  v77 = sub_20C5A0E9C();

  if (v77)
  {
LABEL_78:

    return 52;
  }

  v78 = sub_20C5A039C();
  v80 = v79;
  if (v78 == sub_20C5A039C() && v80 == v81)
  {

    return 57;
  }

  v82 = sub_20C5A0E9C();

  if (v82)
  {

    return 57;
  }

  v83 = sub_20C5A039C();
  v85 = v84;
  v86 = sub_20C5A039C();
  v88 = v87;

  if (v83 != v86 || v85 != v88)
  {
    v89 = sub_20C5A0E9C();

    if (v89)
    {
      return 3000;
    }

    return 0;
  }

  return 3000;
}

void sub_20C49D9F8()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  sub_20C59FE5C();
  sub_20C5A01AC();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = sub_20C59D1CC();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v43 = *MEMORY[0x277CE6058];
  v12 = v43;
  type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey(0);
  sub_20C4A0800(&unk_27C7C5570, type metadata accessor for AVPlaybackCoordinatorDidIssueCommandToPlaybackObjectKey);
  v13 = v12;
  sub_20C5A0B9C();
  if (!*(v11 + 16) || (v14 = sub_20C495C20(&v44), (v15 & 1) == 0))
  {

    sub_20C4914D8(&v44);
LABEL_9:
    v45 = 0u;
    v46 = 0u;
    goto LABEL_10;
  }

  sub_20C479AA8(*(v11 + 56) + 32 * v14, &v45);
  sub_20C4914D8(&v44);

  if (!*(&v46 + 1))
  {
LABEL_10:
    sub_20C477B50(&v45, &qword_27C7C44D0);
    return;
  }

  sub_20C479154(0, &qword_27C7C4668);
  if (swift_dynamicCast())
  {
    value = v44.value;
    CMTimeMakeFromDictionary(&v44, v44.value);
    timescale = v44.timescale;
    v42 = v44.value;
    flags = v44.flags;
    epoch = v44.epoch;
    sub_20C59FE5C();
    v18 = value;
    v19 = sub_20C5A01BC();
    v20 = sub_20C5A08AC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = epoch;
      v22 = v21;
      v23 = swift_slowAlloc();
      v37 = v23;
      v38 = swift_slowAlloc();
      *&v45 = v38;
      *v22 = 138543618;
      *(v22 + 4) = v18;
      *v23 = v18;
      *(v22 + 12) = 2082;
      v44.value = v42;
      v44.timescale = timescale;
      v44.flags = flags;
      v44.epoch = v39;
      type metadata accessor for CMTime(0);
      v24 = v18;
      v25 = sub_20C5A041C();
      v27 = sub_20C479640(v25, v26, &v45);
      v36 = v19;
      v28 = v18;
      v29 = v27;

      *(v22 + 14) = v29;
      v18 = v28;
      v30 = v20;
      v31 = v36;
      _os_log_impl(&dword_20C472000, v36, v30, "[TimeJump] Transforming %{public}@ to %{public}s", v22, 0x16u);
      v32 = v37;
      sub_20C477B50(v37, &qword_27C7C60F0);
      MEMORY[0x20F2FFF90](v32, -1, -1);
      v33 = v38;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x20F2FFF90](v33, -1, -1);
      v34 = v22;
      epoch = v39;
      MEMORY[0x20F2FFF90](v34, -1, -1);
    }

    else
    {
    }

    v9(v6, v2);
    v35 = *(v1 + 32);
    os_unfair_lock_lock(v35 + 25);
    LOBYTE(v44.value) = 1;
    sub_20C49E678(&v35[4], v42, timescale | (flags << 32), epoch, 0x100000000);
    os_unfair_lock_unlock(v35 + 25);
  }
}

uint64_t sub_20C49DF40()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = *(v0 + 32);
  os_unfair_lock_lock(v2 + 25);
  sub_20C49E4B4(&v2[4]);
  os_unfair_lock_unlock(v2 + 25);
  v3 = *(v0 + 24);

  return v0;
}

uint64_t sub_20C49DFD8()
{
  sub_20C49DF40();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_12SeymourMedia0B25PlayerTimeJumpCoordinatorC5StateO(uint64_t a1)
{
  if ((*(a1 + 80) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 80) & 3;
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20C49E070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C49E0AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_20C49E100(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_20C49E13C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C4A0728(a1, v21);
  if (v22 != 3)
  {
    return sub_20C4A0760(v21);
  }

  v10 = vorrq_s8(vorrq_s8(v21[1], v21[3]), vorrq_s8(v21[2], v21[4]));
  if (*&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *(&v21[0] + 1) | *&v21[0])
  {
    return sub_20C4A0760(v21);
  }

  sub_20C4A0760(a1);
  sub_20C4A0760(v21);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v7 + 8))(v9, v6);
  v23 = sub_20C5A098C();
  v19 = v13;
  v20 = v12;
  ObjectType = swift_getObjectType();
  sub_20C479154(0, &qword_2810F3D90);
  v14 = sub_20C5A08EC();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = a3;
  v17 = *(a3 + 112);

  swift_unknownObjectRetain();
  v17(v21, v23, v20, v19, v14, sub_20C4A0790, v16, ObjectType, a3);

  *a1 = a2;
  *(a1 + 8) = a3;
  sub_20C4947E4(v21, (a1 + 16));
  *(a1 + 80) = 0;
  return swift_unknownObjectRetain();
}

uint64_t sub_20C49E3EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v1 + 25);
    sub_20C4A079C(&v1[4]);
    os_unfair_lock_unlock(v1 + 25);
  }

  return result;
}

uint64_t sub_20C49E4B4(uint64_t a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_20C4A0728(a1, v11);
  if (v15 > 1u)
  {
    if (v15 != 2)
    {
      return result;
    }

    v7 = &v14;
  }

  else if (v15)
  {
    v7 = &v13;
  }

  else
  {
    v7 = &v12;
  }

  sub_20C4A0760(a1);
  v8 = v11[1];
  sub_20C4947E4(v7, v16);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v3 + 8))(v5, v2);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 3;
  ObjectType = swift_getObjectType();
  (*(v8 + 128))(v16, ObjectType, v8);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

_OWORD *sub_20C49E678(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a5;
  v95 = HIDWORD(a3);
  v10 = sub_20C5A01CC();
  v96 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v90 = &v81[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v81[-v16];
  sub_20C4A0728(a1, &v97);
  v94 = a3;
  if (v101 == 1)
  {
    v92 = v10;
    v93 = v5;
    v19 = v97;
    v18 = v98;
    sub_20C4947E4(&v100, v102);
    ObjectType = swift_getObjectType();
    v21 = *(v18 + 64);
    v86 = ObjectType;
    v87 = v18;
    v85 = v21;
    v22 = v21(ObjectType, v18);
    v24 = v23;
    v26 = v25;
    v84 = v22;
    v88 = a2;
    v89 = a4;
    if (sub_20C5A097C())
    {
      sub_20C4A0760(a1);
      v27 = v17;
      sub_20C59FE5C();
      swift_unknownObjectRetain();
      v28 = sub_20C5A01BC();
      v29 = sub_20C5A08AC();
      swift_unknownObjectRelease();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v95;
      v32 = v19;
      if (v30)
      {
        v33 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v103 = v84;
        *v33 = 136446466;
        v90 = v27;
        v34 = v88;
        v97 = v88;
        v35 = v94;
        v98 = __PAIR64__(v31, v94);
        v99 = v89;
        type metadata accessor for CMTime(0);
        v83 = v28;
        v36 = sub_20C5A041C();
        v38 = sub_20C479640(v36, v37, &v103);
        v82 = v29;
        v39 = v38;

        *(v33 + 4) = v39;
        *(v33 + 12) = 2082;
        v40 = v87;
        v97 = v85(v86, v87);
        v98 = v41;
        v99 = v42;
        v43 = sub_20C5A041C();
        v45 = sub_20C479640(v43, v44, &v103);
        v46 = v35;

        *(v33 + 14) = v45;
        v31 = v95;
        v47 = v83;
        _os_log_impl(&dword_20C472000, v83, v82, "[TimeJump] Expecting time correction to %{public}s from %{public}s", v33, 0x16u);
        v48 = v84;
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v48, -1, -1);
        MEMORY[0x20F2FFF90](v33, -1, -1);

        (*(v96 + 8))(v90, v92);
        v49 = v89;
      }

      else
      {

        (*(v96 + 8))(v17, v92);
        v46 = v94;
        v49 = v89;
        v34 = v88;
        v40 = v87;
      }

      *a1 = v32;
      *(a1 + 8) = v40;
      *(a1 + 16) = v34;
      *(a1 + 24) = v46;
      *(a1 + 28) = v31;
      *(a1 + 32) = v49;
      v80 = BYTE4(v91);
      *(a1 + 40) = v91;
      *(a1 + 44) = v80 & 1;
      result = sub_20C4947E4(v102, (a1 + 48));
      *(a1 + 80) = 2;
    }

    else
    {
      v65 = v26;
      v91 = v19;
      v66 = v90;
      sub_20C59FE5C();
      v67 = sub_20C5A01BC();
      v68 = sub_20C5A08AC();
      v69 = os_log_type_enabled(v67, v68);
      v70 = v95;
      if (v69)
      {
        v86 = HIDWORD(v24);
        v71 = swift_slowAlloc();
        LODWORD(v87) = v68;
        v72 = v71;
        v73 = swift_slowAlloc();
        v103 = v73;
        *v72 = 136446466;
        v97 = v88;
        v98 = __PAIR64__(v70, v94);
        v99 = v89;
        type metadata accessor for CMTime(0);
        v74 = sub_20C5A041C();
        v76 = sub_20C479640(v74, v75, &v103);

        *(v72 + 4) = v76;
        *(v72 + 12) = 2082;
        v97 = v84;
        v98 = __PAIR64__(v86, v24);
        v99 = v65;
        v77 = sub_20C5A041C();
        v79 = sub_20C479640(v77, v78, &v103);

        *(v72 + 14) = v79;
        _os_log_impl(&dword_20C472000, v67, v87, "[TimeJump] We are expecting to be corrected to %{public}s but we are already at %{public}s", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v73, -1, -1);
        MEMORY[0x20F2FFF90](v72, -1, -1);
      }

      swift_unknownObjectRelease();

      (*(v96 + 8))(v66, v92);
      return __swift_destroy_boxed_opaque_existential_1Tm(v102);
    }
  }

  else
  {
    v50 = a2;
    sub_20C4A0760(&v97);
    sub_20C4A0728(a1, &v97);
    v51 = sub_20C5A041C();
    v53 = v52;
    sub_20C59FE5C();

    v54 = sub_20C5A01BC();
    v55 = sub_20C5A08AC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v93 = v5;
      v57 = v56;
      v58 = swift_slowAlloc();
      v92 = v10;
      v59 = v58;
      *&v102[0] = v58;
      *v57 = 136446466;
      v97 = v50;
      v98 = __PAIR64__(v95, v94);
      v99 = a4;
      type metadata accessor for CMTime(0);
      v60 = sub_20C5A041C();
      v62 = sub_20C479640(v60, v61, v102);

      *(v57 + 4) = v62;
      *(v57 + 12) = 2082;
      v63 = sub_20C479640(v51, v53, v102);

      *(v57 + 14) = v63;
      _os_log_impl(&dword_20C472000, v54, v55, "[TimeJump] Expecting time correction to %{public}s but not in an activated state: %{public}s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v59, -1, -1);
      MEMORY[0x20F2FFF90](v57, -1, -1);

      return (*(v96 + 8))(v13, v92);
    }

    else
    {

      return (*(v96 + 8))(v13, v10);
    }
  }

  return result;
}

_OWORD *sub_20C49EE30(uint64_t a1)
{
  sub_20C4A0728(a1, v12);
  if (v14 != 2)
  {
    return sub_20C4A0760(v12);
  }

  sub_20C4A0760(a1);
  v2 = v12[0];
  v3 = v12[1];
  sub_20C4947E4(&v13, v15);
  *a1 = v2;
  *(a1 + 8) = v3;
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 64);
  swift_unknownObjectRetain();
  v6 = v5(ObjectType, v3);
  v8 = v7;
  v10 = v9;
  swift_unknownObjectRelease();
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  result = sub_20C4947E4(v15, (a1 + 40));
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_20C49EF18(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = *(result + 32);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock(v2 + 25);
    sub_20C4A09A4();
    os_unfair_lock_unlock(v2 + 25);
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v3 = *(result + 32);
    os_unfair_lock_lock(v3 + 25);
    sub_20C49EE30(&v3[4]);
    os_unfair_lock_unlock(v3 + 25);
  }
}

uint64_t sub_20C49F034(uint64_t a1, CMTimeValue a2, CMTimeValue a3, unint64_t a4, CMTimeEpoch a5)
{
  v178 = a5;
  v179 = a3;
  v174 = a2;
  v177 = HIDWORD(a4);
  v7 = sub_20C5A020C();
  v173 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v171 = &v158[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v172 = sub_20C5A023C();
  v170 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v169 = &v158[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = sub_20C5A01CC();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v11 = &v158[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v158[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v158[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v158[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v158[-v22];
  MEMORY[0x28223BE20](v24);
  v26 = &v158[-v25];
  result = sub_20C4A0728(a1, &v184);
  if (v189 > 1u)
  {
    if (v189 != 2)
    {
      return result;
    }

    v174 = v184;
    v171 = v185;
    v48 = v186;
    v50 = DWORD2(v186);
    v49 = HIDWORD(v186);
    v51 = v187;
    v52 = *&v188;
    LODWORD(v170) = BYTE4(v188);
    sub_20C4947E4((&v188 + 8), &v183);
    v173 = v49;
    v172 = v51;
    v53 = v178;
    if ((sub_20C5A096C() & 1) == 0)
    {
      sub_20C59FE5C();
      v83 = sub_20C5A01BC();
      v84 = sub_20C5A08AC();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v171 = swift_slowAlloc();
        *&v182 = v171;
        *v85 = 136446466;
        start.start.value = v48;
        start.start.timescale = v50;
        start.start.flags = v173;
        start.start.epoch = v172;
        type metadata accessor for CMTime(0);
        v86 = sub_20C5A041C();
        v88 = v53;
        v89 = sub_20C479640(v86, v87, &v182);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2082;
        start.start.value = v179;
        start.start.timescale = a4;
        start.start.flags = v177;
        start.start.epoch = v88;
        v90 = sub_20C5A041C();
        v92 = sub_20C479640(v90, v91, &v182);

        *(v85 + 14) = v92;
        _os_log_impl(&dword_20C472000, v83, v84, "[TimeJump] Expected %{public}s but got %{public}s", v85, 0x16u);
        v93 = v171;
        swift_arrayDestroy();
        MEMORY[0x20F2FFF90](v93, -1, -1);
        MEMORY[0x20F2FFF90](v85, -1, -1);
      }

      swift_unknownObjectRelease();

      (*(v175 + 8))(v11, v176);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v183);
    }

    sub_20C4A0760(a1);
    sub_20C59FE5C();
    v54 = sub_20C5A01BC();
    v55 = sub_20C5A08AC();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v182 = v57;
      *v56 = 136446210;
      start.start.value = v48;
      start.start.timescale = v50;
      start.start.flags = v173;
      start.start.epoch = v172;
      type metadata accessor for CMTime(0);
      v58 = sub_20C5A041C();
      v179 = v48;
      v60 = sub_20C479640(v58, v59, &v182);
      v178 = v50;
      v61 = v60;

      *(v56 + 4) = v61;
      _os_log_impl(&dword_20C472000, v54, v55, "[TimeJump] Time Correction to %{public}s complete", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v62 = v57;
      v63 = v178;
      MEMORY[0x20F2FFF90](v62, -1, -1);
      MEMORY[0x20F2FFF90](v56, -1, -1);

      v64 = v179;
      v65 = *(v175 + 8);
      v66 = v176;
      v65(v17, v176);
      v67 = v172;
      v68 = v173;
    }

    else
    {

      v63 = v50;
      v65 = *(v175 + 8);
      v64 = v48;
      v66 = v176;
      v65(v17, v176);
      v68 = v173;
      v67 = v172;
    }

    v129 = v171;
    *a1 = v174;
    *(a1 + 8) = v129;
    *(a1 + 16) = v64;
    *(a1 + 24) = v63;
    *(a1 + 28) = v68;
    *(a1 + 32) = v67;
    sub_20C479AA8(&v183, a1 + 40);
    *(a1 + 80) = 1;
    if (v170)
    {
      return __swift_destroy_boxed_opaque_existential_1Tm(&v183);
    }

    swift_unknownObjectRetain();
    sub_20C59FE5C();
    v130 = sub_20C5A01BC();
    v131 = sub_20C5A08AC();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 134217984;
      *(v132 + 4) = v52;
      _os_log_impl(&dword_20C472000, v130, v131, "[TimeJump] Restoring rate to %f", v132, 0xCu);
      MEMORY[0x20F2FFF90](v132, -1, -1);
    }

    v65(v14, v66);
    ObjectType = swift_getObjectType();
    v171[10](ObjectType, v52);
LABEL_28:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(&v183);
  }

  if (!v189)
  {
    v28 = v184;
    v29 = v185;
    sub_20C4947E4(&v186, &v183);
    v30 = swift_getObjectType();
    v31 = (v29[7])(v30, v29);
    v32 = (v29[2])(v30, v29);
    if (v32)
    {
      v33 = v32;
      v34 = [v32 status];

      if (v31 == 2 && v34 == 1)
      {
        sub_20C4A0760(a1);
        v35 = (v29[8])(v30, v29);
        v37 = v36;
        v39 = v38;
        *a1 = v28;
        *(a1 + 8) = v29;
        v40 = HIDWORD(v36);
        *(a1 + 16) = v35;
        *(a1 + 24) = v36;
        *(a1 + 32) = v38;
        sub_20C479AA8(&v183, a1 + 40);
        *(a1 + 80) = 1;
        swift_unknownObjectRetain();
        sub_20C59FE5C();
        v41 = sub_20C5A01BC();
        v42 = sub_20C5A08AC();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          *&v182 = v179;
          *v43 = 136446210;
          start.start.value = v35;
          start.start.timescale = v37;
          start.start.flags = v40;
          start.start.epoch = v39;
          type metadata accessor for CMTime(0);
          v44 = sub_20C5A041C();
          v46 = sub_20C479640(v44, v45, &v182);

          *(v43 + 4) = v46;
          _os_log_impl(&dword_20C472000, v41, v42, "[TimeJump] Setting up initial state for time jump detection: %{public}s", v43, 0xCu);
          v47 = v179;
          __swift_destroy_boxed_opaque_existential_1Tm(v179);
          MEMORY[0x20F2FFF90](v47, -1, -1);
          MEMORY[0x20F2FFF90](v43, -1, -1);
        }

        swift_unknownObjectRelease();

        (*(v175 + 8))(v26, v176);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v183);
      }
    }

    goto LABEL_28;
  }

  v163 = v20;
  v164 = v23;
  v165 = v7;
  sub_20C4A0760(a1);
  v69 = a4;
  v168 = v184;
  v167 = v185;
  v70 = v186;
  v71 = DWORD2(v186);
  v72 = HIDWORD(v186);
  v73 = v187;
  sub_20C4947E4(&v188, &v182);
  sub_20C5A098C();
  v74 = sub_20C5A094C();
  v166 = v70;
  start.start.value = v70;
  start.start.timescale = v71;
  start.start.flags = v72;
  start.start.epoch = v73;
  end.value = v74;
  end.timescale = v75;
  end.flags = v76;
  end.epoch = v77;
  CMTimeRangeFromTimeToTime(&v183, &start.start, &end);
  start = v183;
  v78 = v179;
  end.value = v179;
  v79 = v69;
  end.timescale = v69;
  v80 = v177;
  end.flags = v177;
  v81 = v178;
  end.epoch = v178;
  if (CMTimeRangeContainsTime(&start, &end))
  {
    v82 = v167;
    *a1 = v168;
    *(a1 + 8) = v82;
    *(a1 + 16) = v78;
    *(a1 + 24) = v79;
    *(a1 + 28) = v80;
    *(a1 + 32) = v81;
LABEL_34:
    result = sub_20C4947E4(&v182, (a1 + 40));
    *(a1 + 80) = 1;
    return result;
  }

  v162 = v72;
  v160 = v71;
  v94 = v166;
  start.start.value = sub_20C5A095C();
  start.start.timescale = v95;
  start.start.flags = v96;
  start.start.epoch = v97;
  Seconds = CMTimeGetSeconds(&start.start);
  v99 = *(v174 + 16);
  v100 = v79;
  v101 = v94;
  v161 = v79;
  if (v99 >= fabs(Seconds))
  {
    v134 = v163;
    sub_20C59FE5C();

    v135 = sub_20C5A01BC();
    v136 = sub_20C5A08AC();

    v137 = os_log_type_enabled(v135, v136);
    v138 = v160;
    v139 = v162;
    if (v137)
    {
      v140 = swift_slowAlloc();
      v173 = v135;
      v141 = v140;
      v174 = swift_slowAlloc();
      end.value = v174;
      *v141 = 136315650;
      start.start.value = v101;
      start.start.timescale = v138;
      start.start.flags = v139;
      start.start.epoch = v73;
      type metadata accessor for CMTime(0);
      v142 = sub_20C5A041C();
      v144 = sub_20C479640(v142, v143, &end.value);
      LODWORD(v172) = v136;
      v145 = v144;

      *(v141 + 4) = v145;
      *(v141 + 12) = 2080;
      v146 = v179;
      start.start.value = v179;
      v147 = v161;
      start.start.timescale = v161;
      v148 = v177;
      start.start.flags = v177;
      v149 = v178;
      start.start.epoch = v178;
      v150 = sub_20C5A041C();
      v152 = sub_20C479640(v150, v151, &end.value);
      v153 = v148;
      v154 = v146;

      *(v141 + 14) = v152;
      *(v141 + 22) = 2048;
      *(v141 + 24) = v99;
      v155 = v173;
      _os_log_impl(&dword_20C472000, v173, v172, "[TimeJump] Time jump from %s to %s doesn't meet %f correct threshold", v141, 0x20u);
      v156 = v174;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v156, -1, -1);
      MEMORY[0x20F2FFF90](v141, -1, -1);

      (*(v175 + 8))(v134, v176);
      v157 = v167;
    }

    else
    {

      (*(v175 + 8))(v134, v176);
      v149 = v178;
      v153 = v177;
      v154 = v179;
      v157 = v167;
      v147 = v161;
    }

    *a1 = v168;
    *(a1 + 8) = v157;
    *(a1 + 16) = v154;
    *(a1 + 24) = v147;
    *(a1 + 28) = v153;
    *(a1 + 32) = v149;
    goto LABEL_34;
  }

  v163 = v73;
  v102 = v168;
  v103 = swift_getObjectType();
  v104 = v167;
  v105 = (v167[3])(v103, v167);
  v106 = v164;
  sub_20C59FE5C();
  v107 = sub_20C5A01BC();
  v108 = sub_20C5A08AC();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v159 = v108;
    v110 = v109;
    v111 = swift_slowAlloc();
    end.value = v111;
    *v110 = 136446466;
    start.start.value = v179;
    start.start.timescale = v100;
    start.start.flags = v177;
    start.start.epoch = v178;
    type metadata accessor for CMTime(0);
    v112 = sub_20C5A041C();
    v114 = sub_20C479640(v112, v113, &end.value);

    *(v110 + 4) = v114;
    *(v110 + 12) = 2082;
    start = v183;
    type metadata accessor for CMTimeRange(0);
    v115 = sub_20C5A041C();
    v117 = sub_20C479640(v115, v116, &end.value);
    v102 = v168;

    *(v110 + 14) = v117;
    v104 = v167;
    _os_log_impl(&dword_20C472000, v107, v159, "[TimeJump] PlayerTime %{public}s is not within allowed range %{public}s", v110, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v111, -1, -1);
    MEMORY[0x20F2FFF90](v110, -1, -1);
  }

  (*(v175 + 8))(v106, v176);
  *a1 = v102;
  *(a1 + 8) = v104;
  *(a1 + 16) = v101;
  v118 = v160;
  v119 = v162;
  *(a1 + 24) = v160;
  *(a1 + 28) = v119;
  v120 = v163;
  *(a1 + 32) = v163;
  *(a1 + 40) = v105;
  *(a1 + 44) = 0;
  sub_20C479AA8(&v182, a1 + 48);
  *(a1 + 80) = 2;
  v121 = v104;
  v122 = swift_allocObject();
  swift_weakInit();
  v123 = swift_allocObject();
  *(v123 + 16) = v179;
  v124 = v177;
  *(v123 + 24) = v161;
  *(v123 + 28) = v124;
  *(v123 + 32) = v178;
  *(v123 + 40) = v105;
  *(v123 + 48) = v122;
  *(v123 + 56) = v102;
  *(v123 + 64) = v121;
  *(v123 + 72) = v101;
  *(v123 + 80) = v118;
  *(v123 + 84) = v119;
  *(v123 + 88) = v120;
  *&start.duration.timescale = sub_20C4A07BC;
  start.duration.epoch = v123;
  start.start.value = MEMORY[0x277D85DD0];
  *&start.start.timescale = 1107296256;
  start.start.epoch = sub_20C4F8F74;
  start.duration.value = &block_descriptor_1;
  v125 = _Block_copy(&start);
  swift_unknownObjectRetain_n();

  v126 = v169;
  sub_20C5A022C();
  end.value = MEMORY[0x277D84F90];
  sub_20C4A0800(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v127 = v171;
  v128 = v165;
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v126, v127, v125);
  _Block_release(v125);
  swift_unknownObjectRelease();
  (v173[1].isa)(v127, v128);
  (*(v170 + 8))(v126, v172);
  __swift_destroy_boxed_opaque_existential_1Tm(&v182);
}

uint64_t sub_20C4A03A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, float a9, uint64_t a10)
{
  v43 = a8;
  v44 = a6;
  v45 = a7;
  v46 = a5;
  v15 = sub_20C5A01CC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  v19 = sub_20C5A01BC();
  v20 = sub_20C5A08AC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v24 = a3;
    v25 = v23;
    v47[0] = v23;
    v47[1] = a1;
    *v22 = 136446466;
    v47[2] = a2;
    v47[3] = v24;
    type metadata accessor for CMTime(0);
    v26 = sub_20C5A041C();
    v28 = sub_20C479640(v26, v27, v47);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2048;
    *(v22 + 14) = a9;
    _os_log_impl(&dword_20C472000, v19, v20, "[TimeJump] Correcting time jump by seeking back to %{public}s. Current Rate: %f", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x20F2FFF90](v25, -1, -1);
    MEMORY[0x20F2FFF90](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    v31 = v43;
    v32 = HIDWORD(v43);
    v33 = v46;
    ObjectType = swift_getObjectType();
    v35 = v44;
    (*(v44 + 32))(ObjectType, v44, 0.0);
    v36 = (*(v35 + 16))(ObjectType, v35);
    [v36 cancelPendingSeeks];

    v37 = *MEMORY[0x277CC08F0];
    v41[2] = *(MEMORY[0x277CC08F0] + 16);
    v42 = v37;
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v41[1] = v30;
    *(v39 + 16) = v38;
    *(v39 + 24) = v33;
    v40 = v45;
    *(v39 + 32) = v35;
    *(v39 + 40) = v40;
    *(v39 + 48) = v31;
    *(v39 + 52) = v32;
    *(v39 + 56) = a10;
    v41[0] = *(v35 + 104);

    swift_unknownObjectRetain();
    (v41[0])(v40, v31, a10);
  }

  return result;
}

uint64_t sub_20C4A0800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20C4A08A4(void *a1, double a2, double a3)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  LOBYTE(v17) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4670);
  v7 = swift_allocObject();
  *(v7 + 100) = 0;
  sub_20C4A0728(&v12, v7 + 16);
  sub_20C4A0760(&v12);
  *(v3 + 40) = a2;
  *(v3 + 16) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = v7;
  v8 = objc_opt_self();
  v9 = a1;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v3 selector:sel_onCoordinatorTimeJumpCommandIssued_ name:*MEMORY[0x277CE6060] object:0];

  return v3;
}

uint64_t PlaylistLibraryStatus.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4A0A4C()
{
  result = qword_27C7C4678;
  if (!qword_27C7C4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4678);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistLibraryStatus(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaylistLibraryStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t StandaloneMindfulSessionJobService.__allocating_init(accumulator:healthDataClient:eventHub:standaloneWorkoutTimeProvider:platform:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  sub_20C477580(a1, v12 + 16);
  sub_20C477580(a5, v26);
  type metadata accessor for SessionArchivalServiceCoordinator(0);
  swift_allocObject();
  v13 = sub_20C47E230(a3, a4, v26);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v12 + 56) = v13;
  sub_20C4780E8(a2, v12 + 64);
  *(v12 + 104) = a6;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = (v13 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onShouldTrackSession);
  swift_beginAccess();
  v16 = *v15;
  *v15 = sub_20C4A239C;
  v15[1] = v14;

  sub_20C47E6BC(v16);

  v17 = *(v12 + 56);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = (v17 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onPlaybackUpdated);
  swift_beginAccess();
  v20 = *v19;
  *v19 = sub_20C4A23A4;
  v19[1] = v18;

  sub_20C47E6BC(v20);

  v21 = *(v12 + 56);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = (v21 + OBJC_IVAR____TtC12SeymourMedia33SessionArchivalServiceCoordinator_onArchiveSession);
  swift_beginAccess();
  v24 = *v23;
  *v23 = sub_20C4A23AC;
  v23[1] = v22;

  sub_20C47E6BC(v24);

  return v12;
}

uint64_t sub_20C4A0E74()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v0 = sub_20C4A0FA4();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_20C4A0EE4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C4A12F8();
  }

  return result;
}

uint64_t sub_20C4A0F44(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C4A1540(a1);
  }

  return result;
}

uint64_t sub_20C4A0FA4()
{
  v1 = v0;
  v27 = sub_20C5A01CC();
  v2 = *(v27 - 8);
  v3 = MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = sub_20C59DE3C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59EB2C();
  v12 = sub_20C59DE2C();
  v14 = v13;
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v30 = v12;
  v31 = v14;
  v32 = v16 & 1;
  v28 = xmmword_20C5A42D0;
  v29 = 1;
  sub_20C4A2548();
  sub_20C4A259C();
  v17 = sub_20C59DA6C();
  sub_20C481884(v12, v14, v16 & 1);
  if (v17)
  {
    sub_20C59FE0C();
    sub_20C5A01AC();
    v18 = *(v2 + 8);
    v19 = v27;
    v18(v7, v27);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v20 = sub_20C59FB4C();
    sub_20C59FE0C();

    v21 = sub_20C5A01BC();
    v22 = sub_20C5A08AC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      v24 = *(v20 + 16);

      *(v23 + 4) = v24;

      _os_log_impl(&dword_20C472000, v21, v22, "Starting a new mindful session, purging existing %ld sample(s)", v23, 0xCu);
      MEMORY[0x20F2FFF90](v23, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v18(v5, v19);
  }

  return v17 & 1;
}

uint64_t sub_20C4A12F8()
{
  v1 = v0;
  v2 = sub_20C59D46C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE0C();
  sub_20C5A01AC();
  (*(v7 + 8))(v9, v6);
  v10 = sub_20C59ECDC();
  v14 = v10;
  v15 = BYTE4(v10) & 1;
  v12 = 0;
  v13 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  LOBYTE(v6) = sub_20C59DA6C();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_20C59D45C();
  if (v6)
  {
    sub_20C59FB3C();
  }

  else
  {
    sub_20C59FB2C();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20C4A1540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v119 = *(v2 - 8);
  v120 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v116 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v117 = &v104 - v6;
  v115 = v7;
  MEMORY[0x28223BE20](v5);
  v118 = &v104 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4680);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v104 - v10;
  v11 = sub_20C59DE3C();
  v109 = *(v11 - 8);
  v110 = v11;
  MEMORY[0x28223BE20](v11);
  v108 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_20C59E9DC();
  v114 = *(v122 - 8);
  v13 = MEMORY[0x28223BE20](v122);
  v112 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v104 - v15;
  v16 = sub_20C59FEBC();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_20C5A01CC();
  v123 = *(v125 - 8);
  v20 = MEMORY[0x28223BE20](v125);
  v107 = (&v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v104 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v104 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v104 - v31;
  v113 = a1;
  sub_20C59EB7C();
  v33 = sub_20C59E73C();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_20C4A23E0(v32);
    v35 = v123;
    goto LABEL_4;
  }

  v105 = v29;
  v36 = sub_20C59E71C();
  v106 = v17;
  v37 = v16;
  v38 = v27;
  v39 = v24;
  v40 = v36;
  v42 = v41;
  v44 = v43;
  (*(v34 + 8))(v32, v33);
  v126[0] = v40;
  v126[1] = v42;
  v127 = v44 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4698);
  sub_20C59DA5C();
  v45 = v40;
  v24 = v39;
  v27 = v38;
  v16 = v37;
  v17 = v106;
  sub_20C481884(v45, v42, v44 & 1);
  v35 = v123;
  if (v128 == 5)
  {
LABEL_4:
    v46 = v124;
    v47 = *(v124 + 104);
    v48 = sub_20C59EC3C();
    (*(v17 + 104))(v19, *MEMORY[0x277D4F940], v16);
    v49 = sub_20C510018(v19, v48);

    (*(v17 + 8))(v19, v16);
    if (v49)
    {
      sub_20C59FE0C();
      sub_20C5A01AC();
      v107 = v35[1];
      v107(v27, v125);
      __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
      sub_20C59FB4C();
      sub_20C59EAFC();
      v50 = v108;
      sub_20C59EB2C();
      sub_20C59DD5C();
      (*(v109 + 8))(v50, v110);
      sub_20C59EB4C();
      v51 = v121;
      sub_20C59E9CC();
      sub_20C59FE0C();
      v52 = v114;
      v53 = v112;
      v54 = v122;
      (*(v114 + 16))(v112, v51, v122);
      v55 = sub_20C5A01BC();
      v56 = sub_20C5A08AC();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = v52;
        v58 = swift_slowAlloc();
        v59 = v53;
        v60 = swift_slowAlloc();
        v126[0] = v60;
        *v58 = 141558274;
        *(v58 + 4) = 1752392040;
        *(v58 + 12) = 2080;
        sub_20C4A2448();
        v61 = v24;
        v62 = sub_20C5A0E6C();
        v63 = v54;
        v65 = v64;
        v66 = *(v57 + 8);
        v114 = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v123 = v66;
        (v66)(v59, v63);
        v67 = sub_20C479640(v62, v65, v126);

        *(v58 + 14) = v67;
        _os_log_impl(&dword_20C472000, v55, v56, "Adding a standalone mindful session job -> %{mask.hash}s", v58, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        MEMORY[0x20F2FFF90](v60, -1, -1);
        MEMORY[0x20F2FFF90](v58, -1, -1);

        v68 = v61;
      }

      else
      {

        v84 = *(v52 + 8);
        v114 = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v123 = v84;
        (v84)(v53, v54);
        v68 = v24;
      }

      v107(v68, v125);
      __swift_project_boxed_opaque_existential_1((v124 + 64), *(v124 + 88));
      v85 = v117;
      v86 = v121;
      sub_20C59EDEC();
      v87 = swift_allocObject();
      *(v87 + 16) = sub_20C4A2190;
      *(v87 + 24) = 0;
      v89 = v119;
      v88 = v120;
      v90 = v116;
      (*(v119 + 16))(v116, v85, v120);
      v91 = (*(v89 + 80) + 16) & ~*(v89 + 80);
      v92 = (v115 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      (*(v89 + 32))(v93 + v91, v90, v88);
      v94 = (v93 + v92);
      *v94 = sub_20C4907C8;
      v94[1] = v87;
      v95 = v118;
      sub_20C59EA9C();
      v96 = *(v89 + 8);
      v96(v85, v88);
      v97 = sub_20C59EABC();
      v98 = swift_allocObject();
      *(v98 + 16) = 0;
      *(v98 + 24) = 0;
      v97(sub_20C4907D4, v98);

      v96(v95, v88);
      return (v123)(v86, v122);
    }

    else
    {
      v69 = v107;
      sub_20C59FE0C();

      v70 = sub_20C5A01BC();
      v71 = sub_20C5A08AC();

      v72 = os_log_type_enabled(v70, v71);
      v73 = v125;
      if (v72)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v126[0] = v75;
        *v74 = 136446210;
        v128 = v47;
        v76 = MEMORY[0x20F2FD1C0](MEMORY[0x277D53BF8], MEMORY[0x277D53BF0]);
        v78 = sub_20C479640(v76, v77, v126);

        *(v74 + 4) = v78;
        _os_log_impl(&dword_20C472000, v70, v71, "Not adding a standalone mindful session: Not supported on platform: %{public}s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x20F2FFF90](v75, -1, -1);
        MEMORY[0x20F2FFF90](v74, -1, -1);
      }

      return (v35[1])(v69, v73);
    }
  }

  v80 = sub_20C59E70C();
  v82 = v81;
  if (v80 == sub_20C59E70C() && v82 == v83)
  {
  }

  else
  {
    v99 = sub_20C5A0E9C();

    if ((v99 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v100 = v105;
  sub_20C59FE0C();
  v101 = sub_20C5A01BC();
  v102 = sub_20C5A08AC();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_20C472000, v101, v102, "Not adding a standalone mindful session: Not a standalone session.", v103, 2u);
    MEMORY[0x20F2FFF90](v103, -1, -1);
  }

  return (v35[1])(v100, v125);
}

uint64_t sub_20C4A2190(void *a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE0C();
  v7 = a1;
  v8 = sub_20C5A01BC();
  v9 = sub_20C5A089C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2FF3F0](v17[3], v17[4]);
    v15 = sub_20C479640(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20C472000, v8, v9, "Error adding standalone mindful session job: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x20F2FFF90](v12, -1, -1);
    MEMORY[0x20F2FFF90](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StandaloneMindfulSessionJobService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  return v0;
}

uint64_t sub_20C4A23E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C4A2448()
{
  result = qword_27C7C4690;
  if (!qword_27C7C4690)
  {
    sub_20C59E9DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4690);
  }

  return result;
}

unint64_t sub_20C4A24A0()
{
  result = qword_27C7C5A80;
  if (!qword_27C7C5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5A80);
  }

  return result;
}

unint64_t sub_20C4A24F4()
{
  result = qword_27C7C46A0;
  if (!qword_27C7C46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46A0);
  }

  return result;
}

unint64_t sub_20C4A2548()
{
  result = qword_27C7C46A8;
  if (!qword_27C7C46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46A8);
  }

  return result;
}

unint64_t sub_20C4A259C()
{
  result = qword_27C7C60B0;
  if (!qword_27C7C60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C60B0);
  }

  return result;
}

uint64_t MetricPageChangeOccurred.page.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59D79C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricPageChangeOccurred.metadata.getter()
{
  type metadata accessor for MetricPageChangeOccurred();
}

uint64_t MetricPageChangeOccurred.init(_:topicRoutingBehavior:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_20C59D79C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = sub_20C589164(MEMORY[0x277D84F90]);
  (*(v7 + 8))(a1, v6);
  result = type metadata accessor for MetricPageChangeOccurred();
  *(a3 + *(result + 20)) = v8;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t MetricPageChangeOccurred.init(_:topicRoutingBehavior:metadata:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_20C59D79C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for MetricPageChangeOccurred();
  *(a4 + *(result + 20)) = a3;
  *(a4 + *(result + 24)) = a2;
  return result;
}

uint64_t static MetricPageChangeOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_20C4A28E0()
{
  if (!qword_2810F3DF8)
  {
    sub_20C4A2944();
    v0 = sub_20C5A02DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2810F3DF8);
    }
  }
}

unint64_t sub_20C4A2944()
{
  result = qword_2810F5A10;
  if (!qword_2810F5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F5A10);
  }

  return result;
}

uint64_t sub_20C4A2998@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_20C5A044C();
  v4 = v3;
  sub_20C4A29EC();
  result = sub_20C5A063C();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = result;
  return result;
}

unint64_t sub_20C4A29EC()
{
  result = qword_27C7C46B0;
  if (!qword_27C7C46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46B0);
  }

  return result;
}

uint64_t ArtworkImageCacheBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](v1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4A2AD0()
{
  result = qword_27C7C46B8;
  if (!qword_27C7C46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46B8);
  }

  return result;
}

uint64_t ArtworkImageCacheKey.cropCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ArtworkImageCacheKey.fileType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArtworkImageCacheKey.template.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArtworkImageCacheKey.init(aspectRatio:cropCode:decoratorCacheKeys:fileType:template:widthBucket:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  *a9 = a10;
  *(a9 + 8) = result;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a11;
  return result;
}

uint64_t sub_20C4A2BFC()
{
  v1 = *v0;
  v2 = 0x6152746365707361;
  v3 = 0x65707954656C6966;
  v4 = 0x6574616C706D6574;
  if (v1 != 4)
  {
    v4 = 0x6375426874646977;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65646F43706F7263;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_20C4A2CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C4A3D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C4A2D0C(uint64_t a1)
{
  v2 = sub_20C4A30D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4A2D48(uint64_t a1)
{
  v2 = sub_20C4A30D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkImageCacheKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  v7 = *v1;
  v8 = v1[1];
  v24 = v1[2];
  v25 = v8;
  v9 = v1[3];
  v22 = v1[4];
  v23 = v9;
  v10 = v1[5];
  v12 = v1[7];
  v11 = v1[8];
  v19[0] = v1[6];
  v19[1] = v12;
  v20 = v11;
  v21 = v10;
  v13 = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4A30D0();
  sub_20C5A104C();
  v27 = v7;
  v29 = 0;
  sub_20C4A3124();
  v14 = v3;
  v15 = v26;
  sub_20C5A0E3C();
  if (v15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = v23;
  v26 = v13;
  v18 = v20;
  LOBYTE(v27) = 1;
  sub_20C5A0E2C();
  v27 = v17;
  v29 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);
  sub_20C4A3718(&qword_27C7C46E0);
  sub_20C5A0E3C();
  LOBYTE(v27) = 3;
  sub_20C5A0E2C();
  LOBYTE(v27) = 4;
  sub_20C5A0E2C();
  v27 = v18;
  v28 = v26;
  v29 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46E8);
  sub_20C4A3178(&qword_27C7C46F0);
  sub_20C5A0E3C();
  return (*(v4 + 8))(v6, v14);
}

unint64_t sub_20C4A30D0()
{
  result = qword_27C7C46C8;
  if (!qword_27C7C46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46C8);
  }

  return result;
}

unint64_t sub_20C4A3124()
{
  result = qword_27C7C46D0;
  if (!qword_27C7C46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C46D0);
  }

  return result;
}

uint64_t sub_20C4A3178(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C46E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArtworkImageCacheKey.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4A30D0();
  sub_20C5A103C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v28) = 0;
  sub_20C4A36C4();
  sub_20C5A0DEC();
  v9 = v33[0];
  LOBYTE(v33[0]) = 1;
  v10 = sub_20C5A0DDC();
  v27 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);
  LOBYTE(v28) = 2;
  sub_20C4A3718(&qword_27C7C4708);
  sub_20C5A0DEC();
  v26 = v33[0];
  LOBYTE(v33[0]) = 3;
  *&v25 = sub_20C5A0DDC();
  *(&v25 + 1) = v12;
  LOBYTE(v33[0]) = 4;
  v24 = sub_20C5A0DDC();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46E8);
  v39 = 5;
  sub_20C4A3178(&qword_27C7C4710);
  sub_20C5A0DEC();
  (*(v6 + 8))(v8, v5);
  v22 = *(&v40 + 1);
  v23 = v40;
  *&v28 = v9;
  *(&v28 + 1) = v10;
  v15 = v27;
  v16 = v26;
  *&v29 = v27;
  *(&v29 + 1) = v26;
  v17 = v25;
  v30 = v25;
  *&v31 = v24;
  *(&v31 + 1) = v14;
  v32 = v40;
  v18 = v31;
  a2[2] = v25;
  a2[3] = v18;
  v19 = v29;
  *a2 = v28;
  a2[1] = v19;
  a2[4] = v32;
  sub_20C4A3784(&v28, v33);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v33[0] = v9;
  v33[1] = v10;
  v33[2] = v15;
  v33[3] = v16;
  v34 = v17;
  v35 = v24;
  v36 = v14;
  v37 = v23;
  v38 = v22;
  return sub_20C4A37BC(v33);
}

unint64_t sub_20C4A36C4()
{
  result = qword_27C7C4700;
  if (!qword_27C7C4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4700);
  }

  return result;
}

uint64_t sub_20C4A3718(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C46D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ArtworkImageCacheKey.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v7 = *(v0 + 72);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2FF490](*&v1);
  sub_20C5A049C();
  MEMORY[0x20F2FF470](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2 + 40;
    do
    {

      sub_20C5A049C();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_20C5A049C();
  sub_20C5A049C();
  MEMORY[0x20F2FF470](v3);
  return MEMORY[0x20F2FF470](v7);
}

uint64_t ArtworkImageCacheKey.hashValue.getter()
{
  sub_20C5A0FBC();
  ArtworkImageCacheKey.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4A3964()
{
  sub_20C5A0FBC();
  ArtworkImageCacheKey.hash(into:)();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4A39A8()
{
  sub_20C5A0FBC();
  ArtworkImageCacheKey.hash(into:)();
  return sub_20C5A0FFC();
}

BOOL _s12SeymourMedia20ArtworkImageCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a1 + 64);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v14 = *(a2 + 72);
  v15 = *(a2 + 64);
  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_20C5A0E9C() & 1) == 0 || (sub_20C567A70(v2, v8) & 1) == 0 || (v3 != v7 || v4 != v10) && (sub_20C5A0E9C() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_20C5A0E9C() & 1) == 0)
  {
    return 0;
  }

  return v17 == v15 && v16 == v14;
}

unint64_t sub_20C4A3B24()
{
  result = qword_27C7C4718;
  if (!qword_27C7C4718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4718);
  }

  return result;
}

uint64_t sub_20C4A3B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_20C4A3BC0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_20C4A3C38()
{
  result = qword_27C7C4720;
  if (!qword_27C7C4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4720);
  }

  return result;
}

unint64_t sub_20C4A3C90()
{
  result = qword_27C7C4728;
  if (!qword_27C7C4728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4728);
  }

  return result;
}

unint64_t sub_20C4A3CE8()
{
  result = qword_27C7C4730;
  if (!qword_27C7C4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4730);
  }

  return result;
}

uint64_t sub_20C4A3D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974;
  if (v4 || (sub_20C5A0E9C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C5A0E9C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C5ABBD0 == a2 || (sub_20C5A0E9C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_20C5A0E9C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000 || (sub_20C5A0E9C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6375426874646977 && a2 == 0xEB0000000074656BLL)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C5A0E9C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ArtworkImageCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  [v1 setCountLimit_];
  [v1 smm:0 setEvictsObjectsWhenApplicationEntersBackground:?];
  return v0;
}

uint64_t ArtworkImageCache.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  [v1 setCountLimit_];
  [*(v0 + 16) smm:0 setEvictsObjectsWhenApplicationEntersBackground:?];
  return v0;
}

uint64_t ArtworkImageCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

id ArtworkImageCache.queryImage<A>(for:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = *(v1 + 16);
  (*(v4 + 16))(&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v3;
  sub_20C5A0B9C();
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4738));
  v7 = sub_20C5A001C();
  v8 = [v5 objectForKey_];

  return v8;
}

void ArtworkImageCache.insert<A>(_:for:)(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = *(v1 + 16);
  (*(v5 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v4;
  sub_20C5A0B9C();
  v7 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4738));
  v8 = sub_20C5A001C();
  [v6 setObject:a1 forKey:v8];
}

UIColor_optional __swiftcall UIColor.init(hex:)(Swift::String_optional hex)
{
  if (!hex.value._object)
  {
    goto LABEL_26;
  }

  object = hex.value._object;
  countAndFlagsBits = hex.value._countAndFlagsBits;
  if (sub_20C5A04AC() != 6)
  {
LABEL_25:

LABEL_26:
    hex.value._countAndFlagsBits = 0;
    return *&hex.value._countAndFlagsBits;
  }

  v3 = sub_20C5A04EC();
  v4 = sub_20C5A04EC();
  v8 = sub_20C5A059C();
  if (v4 >> 14 < v3 >> 14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = sub_20C5A059C();
  v32 = v15;
  v33 = v12;
  v16 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v16 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v4 >> 14 > 4 * v16)
  {
    goto LABEL_22;
  }

  v17 = v13;
  v18 = v14;
  v19 = sub_20C5A059C();
  v30 = v21;
  v31 = v20;
  v23 = v22;

  if (!((v8 ^ v9) >> 14))
  {
LABEL_23:

LABEL_24:

    goto LABEL_25;
  }

  v24 = sub_20C4A5040(v8, v9, v10, v11, 16);
  if ((v24 & 0x10000000000) != 0)
  {
    v24 = sub_20C4A4AB8(v8, v9, v10, v11, 16);
  }

  v25 = v24;

  if ((v25 & 0x100000000) != 0 || !((v33 ^ v17) >> 14))
  {
    goto LABEL_24;
  }

  v26 = sub_20C4A5040(v33, v17, v32, v18, 16);
  if ((v26 & 0x10000000000) != 0)
  {
    v26 = sub_20C4A4AB8(v33, v17, v32, v18, 16);
  }

  v27 = v26;

  if ((v27 & 0x100000000) != 0 || !((v19 ^ v31) >> 14))
  {
    goto LABEL_25;
  }

  v28 = sub_20C4A5040(v19, v31, v30, v23, 16);
  if ((v28 & 0x10000000000) != 0)
  {
    v28 = sub_20C4A4AB8(v19, v31, v30, v23, 16);
  }

  v29 = v28;

  if ((v29 & 0x100000000) != 0)
  {
    goto LABEL_26;
  }

  hex.value._countAndFlagsBits = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v25 / 255.0 green:v27 / 255.0 blue:v29 / 255.0 alpha:1.0];
  return *&hex.value._countAndFlagsBits;
}

uint64_t sub_20C4A4644()
{
  v0 = sub_20C5A059C();
  v4 = sub_20C4A46C4(v0, v1, v2, v3);

  return v4;
}