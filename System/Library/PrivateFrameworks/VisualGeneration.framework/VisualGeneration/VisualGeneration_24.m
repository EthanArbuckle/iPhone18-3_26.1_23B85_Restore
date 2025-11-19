uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_19A4F7C88(uint64_t a1)
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
  v10[1] = sub_19A2F759C;

  return sub_19A4F30B0(a1, v4, v5, v6, v7, v9, v8);
}

id sub_19A4F7D5C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_19A4F7D68(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_19A4F7D80(a1, a2 & 1);
  }
}

void sub_19A4F7D80(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_19A4F7D98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A4F7DE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void sub_19A4F7E64(uint64_t a1)
{
  if (!MEMORY[0x1E6985FA8])
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000019A59B780;
  v3 = sub_19A570E4C();
  v4 = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x800000019A59B7A0;
  v6 = sub_19A57313C();
  type metadata accessor for CFBoolean(0);
  *(inited + 120) = v7;
  *(inited + 96) = v6;
  sub_19A330370(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
  swift_arrayDestroy();
  v8 = sub_19A572CCC();
  v9 = sub_19A572ADC();

  v10 = sendAneSessionSignal();

  if (!v10)
  {
    return;
  }

  v11 = sub_19A572AFC();

  v39 = 0xD000000000000016;
  v40 = 0x800000019A59B7F0;
  sub_19A5738EC();
  if (!*(v11 + 16) || (v12 = sub_19A31F918(v41), (v13 & 1) == 0))
  {

    sub_19A3345C4(v41);
    return;
  }

  sub_19A334618(*(v11 + 56) + 32 * v12, v42);
  sub_19A3345C4(v41);
  sub_19A4B0D60();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v14 = [v39 integerValue];

  v39 = 0xD000000000000013;
  v40 = 0x800000019A59B810;
  sub_19A5738EC();
  if (!*(v11 + 16) || (v15 = sub_19A31F918(v41), (v16 & 1) == 0))
  {

    sub_19A3345C4(v41);
    goto LABEL_14;
  }

  sub_19A334618(*(v11 + 56) + 32 * v15, v42);
  sub_19A3345C4(v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v19 = 0xE500000000000000;
    v38 = 0x3E6C696E3CLL;
    goto LABEL_15;
  }

  v17 = [v39 integerValue];

  v41[0] = v17;
  v38 = sub_19A573EDC();
  v19 = v18;
LABEL_15:
  if (qword_1ED824D40 != -1)
  {
    swift_once();
  }

  v20 = sub_19A5723FC();
  __swift_project_value_buffer(v20, qword_1ED82BD48);
  v21 = sub_19A570EAC();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, a1, v21);

  v25 = sub_19A5723DC();
  v26 = sub_19A57356C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v14;
    v28 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41[0] = v36;
    *v28 = 134218498;
    *(v28 + 4) = v27;
    v37 = &v35;
    *(v28 + 12) = 2082;
    v29 = sub_19A31F114(v38, v19, v41);

    *(v28 + 14) = v29;
    *(v28 + 22) = 2082;
    v30 = sub_19A570E4C();
    v32 = v31;
    (*(v22 + 8))(v24, v21);
    v33 = sub_19A31F114(v30, v32, v41);

    *(v28 + 24) = v33;
    _os_log_impl(&dword_19A2DE000, v25, v26, "ANE Session resident pages: %ld / %{public}s for asset at %{public}s", v28, 0x20u);
    v34 = v36;
    swift_arrayDestroy();
    MEMORY[0x19A902C50](v34, -1, -1);
    MEMORY[0x19A902C50](v28, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v24, v21);
  }
}

__n128 DiffusionBasePipeline.init(textEncoder:unet:decoder:encoder:controlNet:safetyChecker:reduceMemory:useMultilingualTextEncoder:script:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12, char a13, char a14, char a15)
{
  sub_19A2EA460(a1, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  result = a10;
  *(a9 + 96) = a10;
  *(a9 + 112) = a12;
  *(a9 + 120) = a11;
  *(a9 + 128) = a13;
  *(a9 + 129) = a14;
  *(a9 + 130) = a15;
  return result;
}

__n128 DiffusionBasePipeline.init(textEncoder:unet:decoder:encoder:controlNet:safetyChecker:reduceMemory:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10, uint64_t a11, uint64_t a12, char a13)
{
  *(a9 + 129) = 768;
  sub_19A2EA460(a1, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  result = a10;
  *(a9 + 96) = a10;
  *(a9 + 112) = a12;
  *(a9 + 120) = a11;
  *(a9 + 128) = a13;
  return result;
}

uint64_t DiffusionBaseScheduler.hash(into:)(uint64_t a1, unsigned __int16 a2)
{
  v2 = a2;
  if ((a2 >> 14) > 1u)
  {
    if (a2 >> 14 != 2)
    {
      v3 = 0;
      return MEMORY[0x19A901C40](v3);
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (a2 >> 14)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x19A901C40](v4);
    v3 = v2;
    return MEMORY[0x19A901C40](v3);
  }

  v3 = HIBYTE(a2);
  MEMORY[0x19A901C40](1);
  MEMORY[0x19A901C40](v2);
  return MEMORY[0x19A901C40](v3);
}

uint64_t DiffusionBaseScheduler.hashValue.getter(unsigned __int16 a1)
{
  sub_19A5740BC();
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 != 2)
    {
      v2 = 0;
      goto LABEL_9;
    }

    v3 = 3;
    goto LABEL_7;
  }

  if (a1 >> 14)
  {
    v3 = 2;
LABEL_7:
    MEMORY[0x19A901C40](v3);
    v2 = a1;
    goto LABEL_9;
  }

  v2 = HIBYTE(a1);
  MEMORY[0x19A901C40](1);
  MEMORY[0x19A901C40](a1);
LABEL_9:
  MEMORY[0x19A901C40](v2);
  return sub_19A57410C();
}

uint64_t sub_19A4F8714()
{
  v1 = *v0;
  v2 = v1 >> 14;
  if (v1 >> 14 > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      return MEMORY[0x19A901C40](v3);
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v2)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x19A901C40](v4);
    v3 = v1;
    return MEMORY[0x19A901C40](v3);
  }

  v3 = v1 >> 8;
  MEMORY[0x19A901C40](1);
  MEMORY[0x19A901C40](v1);
  return MEMORY[0x19A901C40](v3);
}

uint64_t sub_19A4F8798()
{
  v1 = *v0;
  sub_19A5740BC();
  v2 = v1 >> 14;
  if (v1 >> 14 > 1)
  {
    if (v2 != 2)
    {
      v3 = 0;
      goto LABEL_9;
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v2)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x19A901C40](v4);
    v3 = v1;
    goto LABEL_9;
  }

  v3 = v1 >> 8;
  MEMORY[0x19A901C40](1);
  MEMORY[0x19A901C40](v1);
LABEL_9:
  MEMORY[0x19A901C40](v3);
  return sub_19A57410C();
}

uint64_t DiffusionBaseRNG.hashValue.getter(unsigned __int8 a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1);
  return sub_19A57410C();
}

unint64_t PipelineError.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  v2 = 0xD000000000000022;
  if (a1 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (a1)
  {
    v1 = 0xD000000000000023;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A4F8944()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4F89FC()
{
  sub_19A572E4C();
}

uint64_t sub_19A4F8AA0()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A4F8B54@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase13PipelineErrorO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A4F8B84(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "noise_predictorN";
  v4 = "videdWithoutEncoder";
  v5 = 0xD000000000000022;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000014;
    v4 = "WithoutTextEncoder";
  }

  if (*v1)
  {
    v2 = 0xD000000000000023;
    v3 = "missingUnetInputs";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiffusionBasePipeline.loadResources()()
{
  v2 = v1;
  if (*(v0 + 128) == 1)
  {
    DiffusionBasePipeline.prewarmResources()();
    return;
  }

  v3 = *(v0 + 40);
  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v0;
  if (v4)
  {
LABEL_5:
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v48 = v3 & 0xFFFFFFFFFFFFFF8;
    v44 = v3 & 0xC000000000000001;
    v46 = v4;
    while (1)
    {
      if (v6)
      {
        v7 = MEMORY[0x19A901520](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *(v48 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v4 = sub_19A573B4C();
          v43 = v0;
          if (!v4)
          {
            goto LABEL_21;
          }

          goto LABEL_5;
        }
      }

      v50 = v8;
      if (qword_1ED824D40 != -1)
      {
        swift_once();
      }

      v9 = sub_19A5723FC();
      __swift_project_value_buffer(v9, qword_1ED82BD48);

      v10 = sub_19A5723DC();
      v11 = sub_19A57354C();

      v49 = v11;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v52 = v13;
        *v12 = 136446210;
        v14 = sub_19A57397C();
        v16 = v3;
        v17 = v7;
        v18 = v2;
        v19 = sub_19A31F114(v14, v15, &v52);
        v6 = v44;

        *(v12 + 4) = v19;
        v2 = v18;
        v7 = v17;
        v3 = v16;
        _os_log_impl(&dword_19A2DE000, v10, v49, "Loading resources for %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v13);
        MEMORY[0x19A902C50](v13, -1, -1);
        v20 = v12;
        v4 = v46;
        MEMORY[0x19A902C50](v20, -1, -1);
      }

      v0 = *(v7 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
      sub_19A5735DC();
      if (v2)
      {
        break;
      }

      ++v5;
      if (v50 == v4)
      {
        goto LABEL_21;
      }
    }

LABEL_46:
  }

  else
  {
LABEL_21:
    v22 = v43[3];
    v21 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v22);
    (*(*(v21 + 8) + 8))(v22);
    if (!v2)
    {
      v23 = v43[7];
      ManagedMLModel.loadResources()();
      v25 = v24;
      if (!v24)
      {
        sub_19A4E3544();
        if (v23)
        {
          ManagedMLModel.loadResources()();
          v25 = v26;
          if (v26)
          {

            v25 = 0;
          }

          sub_19A4E3544();
        }

        if (!v43[10] || (ManagedMLModel.loadResources()(), (v25 = v27) == 0))
        {
          v28 = v43[15];
          if (!v28)
          {
            goto LABEL_51;
          }

          v29 = v28 & 0xFFFFFFFFFFFFFF8;
          if (v28 >> 62)
          {
            goto LABEL_50;
          }

          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v30)
          {
LABEL_51:
            if (v43[14])
            {
              ManagedMLModel.loadResources()();
            }

            return;
          }

LABEL_32:
          v31 = 0;
          v45 = v30;
          v47 = v29;
          while (1)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              MEMORY[0x19A901520](v31, v28);
              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
                goto LABEL_48;
              }
            }

            else
            {
              if (v31 >= *(v29 + 16))
              {
                goto LABEL_49;
              }

              v32 = v31 + 1;
              if (__OFADD__(v31, 1))
              {
LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
LABEL_50:
                v30 = sub_19A573B4C();
                if (!v30)
                {
                  goto LABEL_51;
                }

                goto LABEL_32;
              }
            }

            v51 = v32;
            if (qword_1ED824D40 != -1)
            {
              swift_once();
            }

            v33 = sub_19A5723FC();
            __swift_project_value_buffer(v33, qword_1ED82BD48);

            v34 = sub_19A5723DC();
            v35 = sub_19A57354C();

            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v37 = swift_slowAlloc();
              v52 = v37;
              *v36 = 136446210;
              v38 = sub_19A57397C();
              v40 = v25;
              v41 = sub_19A31F114(v38, v39, &v52);
              v30 = v45;

              *(v36 + 4) = v41;
              v25 = v40;
              _os_log_impl(&dword_19A2DE000, v34, v35, "Loading resources for %{public}s", v36, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v37);
              MEMORY[0x19A902C50](v37, -1, -1);
              v42 = v36;
              v29 = v47;
              MEMORY[0x19A902C50](v42, -1, -1);
            }

            sub_19A5735DC();
            if (v25)
            {
              goto LABEL_46;
            }

            ++v31;
            if (v51 == v30)
            {
              goto LABEL_51;
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DiffusionBasePipeline.prewarmResources()()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  sub_19A5667D0(v3, *(v4 + 8));
  if (!v1)
  {
    v5 = v2[5];
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v6; i = v2)
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v43 = v6;
      while (v8)
      {
        v2 = MEMORY[0x19A901520](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v47 = v9;
        if (qword_1ED824D40 != -1)
        {
          swift_once();
        }

        v10 = sub_19A5723FC();
        __swift_project_value_buffer(v10, qword_1ED82BD48);

        v11 = sub_19A5723DC();
        v12 = sub_19A57354C();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v49 = v14;
          *v13 = 136446210;
          v15 = sub_19A57397C();
          v17 = sub_19A31F114(v15, v16, &v49);
          v8 = v5 & 0xC000000000000001;

          *(v13 + 4) = v17;
          _os_log_impl(&dword_19A2DE000, v11, v12, "Loading resources for %{public}s", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v14);
          MEMORY[0x19A902C50](v14, -1, -1);
          v18 = v13;
          v6 = v43;
          MEMORY[0x19A902C50](v18, -1, -1);
        }

        sub_19A5735DC();
        ManagedMLModel.unloadResources()();

        ++v7;
        if (v47 == v6)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v2 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v6 = sub_19A573B4C();
    }

LABEL_19:
    v19 = i[7];
    ManagedMLModel.loadResources()();
    v21 = v20;
    if (!v20)
    {
      sub_19A4E3544();
      if (v19)
      {
        ManagedMLModel.loadResources()();
        v21 = v22;
        if (v22)
        {

          v21 = 0;
        }

        sub_19A4E3544();
        ManagedMLModel.unloadResources()();
      }

      ManagedMLModel.unloadResources()();
      if (i[10])
      {
        ManagedMLModel.loadResources()();
        v21 = v23;
        if (v23)
        {
          return;
        }

        ManagedMLModel.unloadResources()();
      }

      v24 = i[15];
      if (v24)
      {
        v25 = v24 & 0xFFFFFFFFFFFFFF8;
        if (v24 >> 62)
        {
          goto LABEL_48;
        }

        for (j = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_19A573B4C())
        {
          v27 = 0;
          v45 = v24 & 0xC000000000000001;
          v42 = j;
          v44 = v25;
          while (v45)
          {
            MEMORY[0x19A901520](v27, v24);
            v28 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_46;
            }

LABEL_34:
            v48 = v28;
            if (qword_1ED824D40 != -1)
            {
              swift_once();
            }

            v29 = sub_19A5723FC();
            __swift_project_value_buffer(v29, qword_1ED82BD48);

            v30 = sub_19A5723DC();
            v31 = sub_19A57354C();

            v46 = v31;
            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v49 = v33;
              *v32 = 136446210;
              v34 = sub_19A57397C();
              v36 = v24;
              v37 = v21;
              v38 = sub_19A31F114(v34, v35, &v49);
              j = v42;

              *(v32 + 4) = v38;
              v21 = v37;
              v24 = v36;
              _os_log_impl(&dword_19A2DE000, v30, v46, "Loading resources for %{public}s", v32, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v33);
              MEMORY[0x19A902C50](v33, -1, -1);
              v39 = v32;
              v25 = v44;
              MEMORY[0x19A902C50](v39, -1, -1);
            }

            sub_19A5735DC();
            if (v21)
            {

              return;
            }

            ManagedMLModel.unloadResources()();

            ++v27;
            if (v48 == j)
            {
              goto LABEL_49;
            }
          }

          if (v27 >= *(v25 + 16))
          {
            goto LABEL_47;
          }

          v28 = v27 + 1;
          if (!__OFADD__(v27, 1))
          {
            goto LABEL_34;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          ;
        }
      }

LABEL_49:
      if (i[14])
      {
        ManagedMLModel.loadResources()();
        if (!v40)
        {
          ManagedMLModel.unloadResources()();
        }
      }
    }
  }
}

Swift::Void __swiftcall DiffusionBasePipeline.unloadResources()()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(*(v2 + 8) + 16))(v3);
  v4 = v1[5];
  if (v4 >> 62)
  {
    v5 = sub_19A573B4C();
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
    goto LABEL_24;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](i, v4);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_10:
  v7 = v1[7];
  ManagedMLModel.unloadResources()();
  if (v7)
  {
    ManagedMLModel.unloadResources()();
  }

  if (v1[10])
  {
    ManagedMLModel.unloadResources()();
  }

  v4 = v1[15];
  if (!v4)
  {
    goto LABEL_25;
  }

  if (v4 >> 62)
  {
LABEL_24:
    v8 = sub_19A573B4C();
    if (!v8)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_17:
  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (j = 0; j != v8; ++j)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](j, v4);
    }

    else
    {
    }

    ManagedMLModel.unloadResources()();
  }

LABEL_25:
  if (v1[14])
  {
    ManagedMLModel.unloadResources()();
  }
}

uint64_t DiffusionBasePipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[37] = a6;
  v7[38] = v6;
  v7[35] = a1;
  v7[36] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  v7[39] = swift_task_alloc();
  v7[40] = type metadata accessor for PipelineProgress();
  v7[41] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v7[42] = v8;
  v7[43] = *(v8 - 8);
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4F9B50, 0, 0);
}

uint64_t sub_19A4F9B50()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v167 = *(v2 + 3);
  v5 = v2[3];
  v6 = __swift_project_boxed_opaque_existential_1(v2, v5);
  *(v0 + 5) = v167;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  (*(v4 + 16))(v0 + 2, v3, v4);
  v141 = v2;
  v8 = v0[38];
  v9 = v0[35];
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  v10 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v168 = *(v9 + 64);
  v12 = *(v9 + 64);
  v13 = __swift_project_boxed_opaque_existential_1((v9 + 40), v12);
  *(v0 + 5) = v168;
  v14 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  (*(v11 + 16))(v0 + 7, v10, v11);
  v15 = v0[38];
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 7));
  v136 = *(v15 + 128);
  if (v136 == 1)
  {
    v17 = v1[3];
    v16 = v1[4];
    __swift_project_boxed_opaque_existential_1(v0[38], v17);
    (*(*(v16 + 8) + 16))(v17);
  }

  v19 = v0[57];
  v18 = v0[58];
  v20 = v0[42];
  v21 = v0[43];
  v166 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1060);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_19A576E20;
  v165 = v23;
  v25 = v24 + v23;
  v26 = *(v21 + 16);
  v26(v25, v19, v20);
  v164 = v22;
  v26(v25 + v22, v18, v20);
  v0[32] = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C50);
  sub_19A2F12E4(&qword_1ED823F50, &unk_1EAFA2C50);
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  sub_19A5725EC();
  if (*(v166 + 129) == 1)
  {
    v26(v0[55], v0[56], v0[42]);
  }

  else
  {
    sub_19A4FB6FC();
  }

  v28 = v0[35];
  v139 = type metadata accessor for PipelineConfiguration(0);
  v29 = *(v28 + v139[19]);
  v30 = v165;
  if (v29 < 0)
  {
    goto LABEL_97;
  }

  v31 = v0[38];
  v32 = swift_task_alloc();
  *(v32 + 16) = v28;
  *(v32 + 24) = v31;
  v27 = 0;
  v33 = sub_19A4DAA34(sub_19A4FCEA0, v32, 0, v29);

  if (!*(v33 + 16))
  {
    goto LABEL_98;
  }

  v34 = v0[35];
  sub_19A2F3EF0(v33 + 32, (v0 + 12));
  v28 = sub_19A4FBED8(v34, v0 + 12);
  v135 = v33 + 32;
  v146 = v33;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 12));
  v27 = *(v28 + 16);
  v166 = v26;
  v145 = v29;
  v140 = v28;
  if (v27)
  {
    v35 = v0[43];
    v169 = MEMORY[0x1E69E7CC0];

    sub_19A4E436C(0, v27, 0);
    v36 = v28 + v165;
    v157 = (v35 + 32);
    v159 = (v35 + 8);
    do
    {
      v37 = v0[53];
      v38 = v0[52];
      v39 = v0[42];
      v26(v37, v36, v39);
      v26(v38, v37, v39);
      sub_19A5726BC();
      (*v159)(v37, v39);
      v41 = *(v169 + 2);
      v40 = *(v169 + 3);
      if (v41 >= v40 >> 1)
      {
        sub_19A4E436C(v40 > 1, v41 + 1, 1);
      }

      v42 = v0[54];
      v43 = v0[42];
      *(v169 + 2) = v41 + 1;
      (*v157)(&v169[v165 + v41 * v164], v42, v43);
      v36 += v164;
      --v27;
    }

    while (v27);
    v152 = v169;

    v30 = v165;
    if ((v136 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v152 = MEMORY[0x1E69E7CC0];
  if (v136)
  {
LABEL_16:
    if (*(v0[38] + 80))
    {
      ManagedMLModel.unloadResources()();
    }
  }

LABEL_18:
  v44 = v0[35];
  if (*(v44 + v139[14]))
  {
    v45 = *(v44 + v139[16]);
    v46 = LODWORD(v45);
    if (v45 >= 1.0)
    {
      v46 = 0;
    }

    v134 = v46;
    v47 = v45 >= 1.0;
  }

  else
  {
    v134 = 0;
    v47 = 1;
  }

  LOBYTE(v133) = v47;
  v20 = *(v44 + v139[23]);
  if (v20 >> 62)
  {
    goto LABEL_100;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v170 = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      goto LABEL_102;
    }

    v49 = 0;
    v50 = v0[43];
    v149 = v20;
    v151 = v170;
    v137 = v20 & 0xFFFFFFFFFFFFFF8;
    v153 = (v50 + 8);
    v155 = v20 & 0xC000000000000001;
    v143 = (v50 + 32);
    v147 = i;
    while (1)
    {
      v28 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      v160 = v49;
      if (v155)
      {
        v51 = MEMORY[0x19A901520]();
      }

      else
      {
        if (v49 >= *(v137 + 16))
        {
          goto LABEL_95;
        }

        v51 = *(v20 + 8 * v49 + 32);
      }

      v52.i32[0] = 1.0;
      v53 = v51;
      CGImageRef.planarRGBShapedArray(minValue:maxValue:)(0, v52);
      v54 = v0[50];
      v55 = v0[42];
      v56 = v26;
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_19A576E20;
      v56(v57 + v30, v54, v55);
      v56(v57 + v30 + v164, v54, v55);
      v0[33] = v57;
      sub_19A5725EC();

      (*v153)(v54, v55);
      v58 = v151;
      v60 = *(v151 + 16);
      v59 = *(v151 + 24);
      v27 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        sub_19A4E436C(v59 > 1, v60 + 1, 1);
        v58 = v151;
      }

      v61 = v0[51];
      v62 = v0[42];
      *(v58 + 16) = v27;
      v151 = v58;
      (*v143)(v58 + v30 + v60 * v164, v61, v62);
      v49 = v160 + 1;
      v20 = v149;
      v26 = v166;
      if (v28 == v147)
      {
        v28 = v140;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    ;
  }

  v151 = MEMORY[0x1E69E7CC0];
LABEL_38:
  sub_19A2F3EF0(v135, (v0 + 17));
  v63 = v0[20];
  v64 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v63);
  v65 = (*(v64 + 32))(v134 | (v133 << 32), v63, v64);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 17));
  v130 = *(v65 + 16);
  if (v130)
  {
    v27 = 0;
    v66 = v0[43];
    v128 = v0[40];
    v129 = v0[41];
    v131 = v0[38];
    v132 = v65 + 32;
    v133 = *(v131 + 120);
    v154 = (v66 + 32);
    v156 = (v66 + 8);
    v150 = (v66 + 40);
    v67 = v152;
    v138 = v65;
    v142 = v0;
    while (v27 < *(v65 + 16))
    {
      v152 = v67;
      v134 = v27;
      v68 = *(v132 + 4 * v27);
      v69 = *(v28 + 16);
      v140 = v28;
      if (v69)
      {
        v171 = MEMORY[0x1E69E7CC0];
        sub_19A4E436C(0, v69, 0);
        v70 = v28 + v30;
        do
        {
          v161 = v69;
          v71 = v0[53];
          v72 = v0[42];
          v166(v71, v70, v72);
          v73 = swift_allocObject();
          v74 = v30;
          v75 = v73;
          *(v73 + 16) = xmmword_19A576E20;
          v76 = v73 + v74;
          v166(v73 + v74, v71, v72);
          v166(v76 + v164, v71, v72);
          v0[34] = v75;
          sub_19A5725EC();
          (*v156)(v71, v72);
          v78 = *(v171 + 16);
          v77 = *(v171 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_19A4E436C(v77 > 1, v78 + 1, 1);
          }

          v79 = v0[49];
          v80 = v0[42];
          *(v171 + 16) = v78 + 1;
          v30 = v165;
          (*v154)(v171 + v165 + v78 * v164, v79, v80);
          v70 += v164;
          v69 = v161 - 1;
        }

        while (v161 != 1);
        v81 = v171;
      }

      else
      {
        v81 = MEMORY[0x1E69E7CC0];
      }

      v26 = v166;
      v27 = 0;
      if (v133)
      {
        v82 = sub_19A517A7C(v81, v0[55], v151, v133, v68);
      }

      else
      {
        v82 = 0;
      }

      sub_19A507BE0(v81, v0[55], v82, *(v131 + 40), v68);
      v20 = v83;
      v162 = v0[38];
      v84 = v0[35];

      v85 = *(v84 + v139[22]);
      v86 = swift_task_alloc();
      *(v86 + 16) = v162;
      *(v86 + 24) = v85;
      v28 = sub_19A4DABB0(sub_19A4E7910, v86, v20);

      v144 = v28;
      if (v145)
      {
        v87 = 0;
        v88 = v135;
        v89 = v30;
        v90 = v152;
        v30 = v140;
        while (v87 < *(v146 + 16))
        {
          v163 = v89;
          v152 = v90;
          v0 = v142;
          v158 = v88;
          sub_19A2F3EF0(v88, (v142 + 22));
          v91 = v142[25];
          v20 = v142[26];
          __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
          if (v87 >= *(v28 + 16))
          {
            goto LABEL_91;
          }

          v92 = v28;
          v28 = v87;
          v26(v142[47], v92 + v163, v142[42]);
          v148 = v87;
          if (v87 >= *(v30 + 16))
          {
            goto LABEL_92;
          }

          v93 = v26;
          v94 = v30;
          v95 = v142[47];
          v96 = v142[46];
          v93(v96, &v94[v163], v142[42]);
          (*(v20 + 80))(v95, v96, v91, v20, v68);
          v97 = v142[47];
          v28 = v142[42];
          v27 = *v156;
          (*v156)(v142[46], v28);
          (v27)(v97, v28);
          v30 = v94;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_19A4E52B8(v94);
          }

          v26 = v166;
          v98 = v163;
          if (v87 >= *(v30 + 16))
          {
            goto LABEL_93;
          }

          v20 = *v150;
          (*v150)(v30 + v163, v142[48], v142[42]);
          __swift_destroy_boxed_opaque_existential_0Tm((v142 + 22));
          sub_19A2F3EF0(v158, (v142 + 27));
          v28 = v142[30];
          v27 = v142[31];
          __swift_project_boxed_opaque_existential_1(v142 + 27, v28);
          v99 = (*(v27 + 72))(v28, v27);
          v100 = *(v99 + 16);
          if (v100)
          {
            v101 = v142[44];
            v102 = v142[45];
            v27 = v142[42];
            v166(v101, v99 + v165 + (v100 - 1) * v164, v27);
            v98 = v163;

            (*v154)(v102, v101, v27);
          }

          else
          {

            if (v87 >= *(v30 + 16))
            {
              goto LABEL_96;
            }

            v166(v142[45], v30 + v163, v142[42]);
          }

          v90 = v152;
          v28 = v145;
          __swift_destroy_boxed_opaque_existential_0Tm((v142 + 27));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_19A4E52B8(v152);
          }

          if (v87 >= *(v90 + 16))
          {
            goto LABEL_94;
          }

          ++v87;
          (v20)(v90 + v98, v142[45], v142[42]);
          v27 = 0;
          v89 = v98 + v164;
          v88 = v158 + 40;
          v28 = v144;
          if (v145 == v148 + 1)
          {
            v152 = v90;
            goto LABEL_69;
          }
        }

        goto LABEL_90;
      }

      v30 = v140;
LABEL_69:
      v0 = v142;
      v103 = v142[41];
      v104 = v142[36];
      v105 = v142[35];

      v140 = v30;
      if (*(v105 + v139[25]))
      {
        v20 = v152;
      }

      else
      {
        v20 = v30;
      }

      __swift_project_boxed_opaque_existential_1(v105, v141[3]);
      v106 = sub_19A3687E0();
      v108 = v107;
      v26 = *(v138 + 16);
      sub_19A4FCEC0(v105, v103 + *(v128 + 32));
      *v103 = v106;
      v129[1] = v108;
      v129[2] = v134;
      v129[3] = v26;
      v129[4] = v20;
      if ((v104(v103) & 1) == 0)
      {
        v112 = v142[41];

        sub_19A4FCF24(v112);
        v114 = v142[57];
        v113 = v142[58];
        v115 = v142[56];
        v116 = v142[42];
        v117 = *v156;
        (*v156)(v142[55], v116);
        v117(v115, v116);
        v117(v114, v116);
        v117(v113, v116);

        v118 = v142[1];
        v119 = MEMORY[0x1E69E7CC0];

        return v118(v119);
      }

      v27 = v134 + 1;
      sub_19A4FCF24(v142[41]);
      v67 = v152;
      v28 = v140;
      v30 = v165;
      v65 = v138;
      if (v134 + 1 == v130)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_99;
  }

  v67 = v152;
LABEL_76:
  v30 = v67;
  v0[59] = v28;
  v0[60] = v67;

  if (!v136)
  {
    goto LABEL_112;
  }

  v27 = *(v0[38] + 120);
  if (!v27)
  {
    goto LABEL_103;
  }

  if (v27 >> 62)
  {
LABEL_102:
    result = sub_19A573B4C();
    v110 = result;
    if (!result)
    {
      goto LABEL_103;
    }

LABEL_80:
    if (v110 >= 1)
    {
      for (j = 0; j != v110; ++j)
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A901520](j, v27);
        }

        else
        {
        }

        ManagedMLModel.unloadResources()();
      }

      goto LABEL_103;
    }

    goto LABEL_116;
  }

  v110 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v110)
  {
    goto LABEL_80;
  }

LABEL_103:
  v120 = *(v0[38] + 40);
  if (v120 >> 62)
  {
    result = sub_19A573B4C();
    v121 = result;
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_105:
    if (v121 >= 1)
    {
      for (k = 0; k != v121; ++k)
      {
        if ((v120 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A901520](k, v120);
        }

        else
        {
        }

        ManagedMLModel.unloadResources()();
      }

      goto LABEL_112;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    return result;
  }

  v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v121)
  {
    goto LABEL_105;
  }

LABEL_112:
  v123 = v0[39];
  v124 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v124 - 8) + 56))(v123, 1, 1, v124);
  v125 = swift_task_alloc();
  v0[61] = v125;
  *v125 = v0;
  v125[1] = sub_19A4FB238;
  v126 = v0[39];
  v127 = v0[35];

  return DiffusionBasePipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(v30, v127, v126);
}

uint64_t sub_19A4FB238(uint64_t a1)
{
  v4 = *v2;
  v4[62] = v1;

  v5 = v4[39];
  if (v1)
  {
    sub_19A4FCF80(v5);

    v6 = sub_19A4FB554;
  }

  else
  {
    v4[63] = a1;
    sub_19A4FCF80(v5);

    v6 = sub_19A4FB3A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_19A4FB3A4()
{
  v8 = v0[63];
  v1 = v0[58];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[42];
  v5 = *(v0[43] + 8);
  v5(v0[55], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6(v8);
}

uint64_t sub_19A4FB554()
{
  v1 = v0[58];
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[42];
  v5 = *(v0[43] + 8);
  v5(v0[55], v4);
  v5(v3, v4);
  v5(v2, v4);
  v5(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_19A4FB6FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v0 = sub_19A57263C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
  result = swift_allocObject();
  *(result + 16) = xmmword_19A57A9D0;
  v2 = v0[2];
  if (!v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(result + 32) = v0[4];
  if (v2 < 3)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(result + 40) = v0[6];
  *(result + 48) = 1;
  *(result + 56) = v0[5];
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  result = sub_19A57271C();
  v3 = v0[4];
  if ((v3 & 0x8000000000000000) == 0)
  {
    if (!v3)
    {
    }

    v12 = v0[4];
    v4 = 0;
    v13 = v0;
    while (1)
    {
      v5 = v0[5];
      if (v5 < 0)
      {
        break;
      }

      v15 = v4;
      if (v5)
      {
        v6 = 0;
        v14 = v0[5];
        while (1)
        {
          v8 = v0[6];
          if (v8 < 0)
          {
            break;
          }

          if (v8)
          {
            v9 = 0;
            v16 = v0[6];
            do
            {
              v10 = swift_allocObject();
              *(v10 + 16) = xmmword_19A57A9D0;
              *(v10 + 32) = v15;
              *(v10 + 40) = v9;
              *(v10 + 48) = 0;
              *(v10 + 56) = v6;
              v11 = swift_allocObject();
              *(v11 + 16) = xmmword_19A5792A0;
              *(v11 + 32) = v15;
              *(v11 + 40) = v6;
              *(v11 + 48) = v9;
              sub_19A5726FC();

              result = sub_19A57270C();
              ++v9;
            }

            while (v16 != v9);
          }

          v7 = ++v6 == v14;
          v0 = v13;
          if (v7)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:
      v4 = v15 + 1;
      if (v15 + 1 == v12)
      {
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

int64_t sub_19A4FB980@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for PipelineConfiguration(0);
  v5 = *(a1 + v4[26]);
  v6 = v5 >> 14;
  if (v5 >> 14 <= 1)
  {
    if (!v6)
    {
      v7 = *(a1 + v4[20]);
      v8 = type metadata accessor for DPMSolverMultistepScheduler();
      swift_allocObject();
      result = DPMSolverMultistepScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:timeStepSpacing:predictionType:)(v7, 1000, 1, v5 >> 8, v5, 0.00085, 0.012);
      v10 = &protocol witness table for DPMSolverMultistepScheduler;
      a2[3] = v8;
LABEL_12:
      a2[4] = v10;
      *a2 = result;
      return result;
    }

    v21 = *(a1 + v4[21]);
    if (*(a1 + v4[27]))
    {
      if (*(a1 + v4[27]) != 1)
      {
        v70 = &type metadata for NvRandomSource;
        v71 = &off_1F0DB8000;
        v68 = v21;
        v69 = 0;
        goto LABEL_34;
      }

      v22 = v4;
      sub_19A4EB8FC(*(a1 + v4[21]));
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v70 = &type metadata for TorchRandomSource;
      v71 = &off_1F0DB7820;
    }

    else
    {
      v22 = v4;
      sub_19A4EB8FC(*(a1 + v4[21]));
      v24 = v38;
      v26 = v39;
      v28 = v40;
      v30 = v41;
      v70 = &type metadata for NumPyRandomSource;
      v71 = &off_1F0DB7940;
    }

    v42 = swift_allocObject();
    v4 = v22;
    v68 = v42;
    *(v42 + 16) = v24;
    *(v42 + 24) = v26;
    *(v42 + 32) = v28;
    *(v42 + 40) = v30 & 1;
LABEL_34:
    v62 = *(a1 + v4[20]);
    sub_19A2F3EF0(&v68, v67);
    v63 = type metadata accessor for LCMScheduler();
    swift_allocObject();
    v64 = LCMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:predictionType:generator:)(v62, 0x3E8uLL, 1, 0, v67, 0.00085, 0.012);
    a2[3] = v63;
    a2[4] = &protocol witness table for LCMScheduler;
    *a2 = v64;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
  }

  if (v6 != 2)
  {
    v31 = *(a1 + v4[20]);
    v32 = type metadata accessor for PNDMScheduler();
    swift_allocObject();
    result = PNDMScheduler.init(stepCount:trainStepCount:betaSchedule:betaStart:betaEnd:)(v31, 1000, 1, 0.00085, 0.012);
    v10 = &protocol witness table for PNDMScheduler;
    a2[3] = v32;
    goto LABEL_12;
  }

  v11 = *(a1 + v4[21]);
  if (!*(a1 + v4[27]))
  {
    v12 = v4;
    sub_19A4EB8FC(*(a1 + v4[21]));
    v14 = v33;
    v16 = v34;
    v18 = v35;
    v20 = v36;
    v70 = &type metadata for NumPyRandomSource;
    v71 = &off_1F0DB7940;
    goto LABEL_14;
  }

  if (*(a1 + v4[27]) == 1)
  {
    v12 = v4;
    sub_19A4EB8FC(*(a1 + v4[21]));
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v70 = &type metadata for TorchRandomSource;
    v71 = &off_1F0DB7820;
LABEL_14:
    v37 = swift_allocObject();
    v4 = v12;
    v68 = v37;
    *(v37 + 16) = v14;
    *(v37 + 24) = v16;
    *(v37 + 32) = v18;
    *(v37 + 40) = v20 & 1;
    goto LABEL_18;
  }

  v70 = &type metadata for NvRandomSource;
  v71 = &off_1F0DB8000;
  v68 = v11;
  v69 = 0;
LABEL_18:
  v43 = *(a1 + v4[20]);
  sub_19A2F3EF0(&v68, v67);
  result = v43 + 1;
  if (__OFADD__(v43, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v44 = sub_19A51B9CC(result, 1.0, 0.0);
  result = sub_19A5253A8(1uLL, v44);
  v48 = v47 >> 1;
  v49 = (v47 >> 1) - v46;
  if (__OFSUB__(v47 >> 1, v46))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v50 = MEMORY[0x1E69E7CC0];
  if (v49)
  {
    v51 = v45;
    v52 = v46;
    v65 = result;
    v66[0] = MEMORY[0x1E69E7CC0];
    result = sub_19A4E44CC(0, v49 & ~(v49 >> 63), 0);
    if (v49 < 0)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v53 = v66[0];
    if (v52 <= v48)
    {
      v54 = v48;
    }

    else
    {
      v54 = v52;
    }

    v55 = v54 - v52;
    v56 = (v51 + 4 * v52);
    result = v65;
    while (v55)
    {
      v57 = *v56;
      v66[0] = v53;
      v59 = *(v53 + 16);
      v58 = *(v53 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_19A4E44CC((v58 > 1), v59 + 1, 1);
        result = v65;
        v53 = v66[0];
      }

      *(v53 + 16) = v59 + 1;
      *(v53 + 4 * v59 + 32) = (v57 * 3.0) / ((v57 + v57) + 1.0);
      --v55;
      ++v56;
      if (!--v49)
      {
        swift_unknownObjectRelease();
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  swift_unknownObjectRelease();
  v53 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_19A2F3EF0(v67, v66);
  v60 = type metadata accessor for RectifiedFlowLCMScheduler();
  v61 = swift_allocObject();
  *(v61 + 32) = v50;
  *(v61 + 48) = v50;
  *(v61 + 56) = 0;
  *(v61 + 120) = v50;
  *(v61 + 128) = 1092616192;
  *(v61 + 16) = 1000;
  *(v61 + 24) = *(v53 + 16);
  *(v61 + 112) = 0;
  sub_19A2F3EF0(v66, v61 + 72);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_destroy_boxed_opaque_existential_0Tm(v67);
  *(v61 + 40) = &unk_1F0DB5D80;
  *(v61 + 64) = v53;
  a2[3] = v60;
  a2[4] = &protocol witness table for RectifiedFlowLCMScheduler;
  *a2 = v61;
  return __swift_destroy_boxed_opaque_existential_0Tm(&v68);
}

uint64_t sub_19A4FBED8(uint64_t a1, void *a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v60 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F28);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v60 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v71 = *(v67 - 8);
  v10 = MEMORY[0x1EEE9AC00](v67);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v60 - v12;
  v66 = v2;
  Unet.latentSampleShape.getter(v2[5]);
  v14 = v13;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if (*(v14 + 16))
    {
      goto LABEL_3;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_19A4E527C(v14);
  v14 = result;
  if (!*(result + 16))
  {
    goto LABEL_25;
  }

LABEL_3:
  *(v14 + 32) = 1;
  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 64))(v16, v17);
  v19 = type metadata accessor for PipelineConfiguration(0);
  result = *(a1 + v19[21]);
  if (!*(a1 + v19[27]))
  {
    v20 = v19;
    sub_19A4EB8FC(result);
    v22 = v29;
    v24 = v30;
    v26 = v31;
    v28 = v32;
    v76 = &type metadata for NumPyRandomSource;
    v77 = &off_1F0DB7940;
    goto LABEL_7;
  }

  if (*(a1 + v19[27]) == 1)
  {
    v20 = v19;
    sub_19A4EB8FC(result);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v76 = &type metadata for TorchRandomSource;
    v77 = &off_1F0DB7820;
LABEL_7:
    result = swift_allocObject();
    v19 = v20;
    v74 = result;
    *(result + 16) = v22;
    *(result + 24) = v24;
    *(result + 32) = v26;
    *(result + 40) = v28 & 1;
    goto LABEL_9;
  }

  v76 = &type metadata for NvRandomSource;
  v77 = &off_1F0DB8000;
  v74 = result;
  v75 = 0;
LABEL_9:
  v33 = *(a1 + v19[19]);
  if (v33 < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v60 = a2;
  v72 = v14;
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v63 = v19;
    v64 = a1;
    v65 = v3;
    v78 = MEMORY[0x1E69E7CC0];
    sub_19A4E436C(0, v33, 0);
    v34 = v78;
    v68 = v71 + 32;
    v35 = v18;
    v36 = v67;
    v37 = v73;
    do
    {
      v73 = v34;
      v39 = v76;
      v38 = v77;
      __swift_mutable_project_boxed_opaque_existential_1(&v74, v76);
      v40 = v38[2];

      v40(v41, v39, v38, 0.0, v35);

      sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
      sub_19A2F12E4(&qword_1EAF9E950, &unk_1EAFA2F28);
      sub_19A5726BC();
      v34 = v73;
      v78 = v73;
      v43 = *(v73 + 2);
      v42 = *(v73 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_19A4E436C(v42 > 1, v43 + 1, 1);
        v34 = v78;
      }

      *(v34 + 16) = v43 + 1;
      (*(v71 + 32))(v34 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v43, v37, v36);
      --v33;
    }

    while (v33);
    a1 = v64;
    v4 = v65;
    v19 = v63;
  }

  v44 = *(a1 + v19[14]);
  if (v44)
  {
    v45 = *(a1 + v19[16]);
    if (v45 < 1.0)
    {
      v46 = v66[10];
      if (v46)
      {
        v47 = v34;
        v49 = v66[12];
        v48 = v66[13];
        v34 = v66[11];
        v50 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
        v51 = v62;
        (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
        v52 = v44;
        v53 = v51;
        v54 = v52;
        sub_19A4E92AC(v46, v34, v49, v48);
        v55 = v61;
        Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(v54, &v74, v53, v46, v34, v49);
        sub_19A4FCF80(v53);
        if (v4)
        {
        }

        else
        {
          v73 = v49;
          v59 = v60[3];
          v58 = v60[4];
          __swift_project_boxed_opaque_existential_1(v60, v59);
          v34 = (*(v58 + 88))(v55, v47, v59, v58, v45);

          (*(v71 + 8))(v55, v67);
        }
      }

      else
      {
        v56 = v44;

        sub_19A4FD554();
        swift_allocError();
        *v57 = 1;
        swift_willThrow();
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v74);

  return v34;
}

uint64_t DiffusionBasePipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_19A4FC5B0, 0, 0);
}

uint64_t sub_19A4FC5B0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v1[6];
  v0[6] = v3;
  v4 = v1[7];
  v0[7] = v4;
  v5 = v1[8];
  v6 = v1[9];
  v7 = type metadata accessor for PipelineConfiguration(0);
  v0[8] = v7;
  v8 = *(v2 + *(v7 + 116));
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_19A4FC6AC;
  v10 = v0[4];
  v11 = v0[2];

  return Decoder.decode(_:scaleFactor:outputRange:inferAlpha:inferenceDiagnostics:)(v11, 0, v10, v3, v4, v5, v6, v8, -1.0, 1.0);
}

uint64_t sub_19A4FC6AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return MEMORY[0x1EEE6DFA0](sub_19A4FC7FC, 0, 0);
  }
}

void sub_19A4FC7FC()
{
  v1 = v0[5];
  v2 = sub_19A4E2E58(v0[11]);

  v3 = *(v1 + 128);
  if (v3 == 1)
  {
    v4 = v0[7];
    ManagedMLModel.unloadResources()();
    if (v4)
    {
      ManagedMLModel.unloadResources()();
    }
  }

  if ((*(v0[3] + *(v0[8] + 96)) & 1) == 0 && *(v0[5] + 112))
  {
    if (*(v2 + 16))
    {
      v22 = v3;
      v25 = MEMORY[0x1E69E7CC0];
      v23 = *(v2 + 16);

      sub_19A4E44EC(0, v23, 0);
      v5 = v23;
      v6 = 0;
      v7 = v0[10];
      v8 = (v2 + 40);
      v24 = v2;
      do
      {
        if (v6 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v8 - 1);
        v10 = *v8;
        if (v9)
        {
          v11 = v9;
          v12 = sub_19A54295C(v11);
          if (v7)
          {
            goto LABEL_29;
          }

          v13 = v12;
          v14 = SafetyChecker.isSafe(_:)(v12);
          if (v15)
          {

LABEL_29:

            v21 = v0[1];

            v21();
            return;
          }

          v16 = v14;

          if (v16)
          {
            v7 = 0;
          }

          else
          {

            v7 = 0;
            v9 = 0;
            v10 = 0;
          }

          v5 = v23;
        }

        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_19A4E44EC((v17 > 1), v18 + 1, 1);
          v5 = v23;
        }

        ++v6;
        *(v25 + 16) = v18 + 1;
        v19 = v25 + 16 * v18;
        *(v19 + 32) = v9;
        *(v19 + 40) = v10;
        v8 += 16;
        v2 = v24;
      }

      while (v5 != v6);

      v2 = v25;
      if (v22)
      {
        goto LABEL_21;
      }
    }

    else
    {

      v2 = MEMORY[0x1E69E7CC0];
      if (v3)
      {
LABEL_21:
        ManagedMLModel.unloadResources()();
      }
    }
  }

  v20 = v0[1];

  v20(v2);
}

uint64_t sub_19A4FCAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_19A34F28C;

  return DiffusionBasePipeline.generateImages(configuration:requestIdentifier:generationID:diagnosticsAccessor:progressHandler:)(a1, v11, v12, v13, a5, a6);
}

uint64_t sub_19A4FCB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_19A34B5BC;

  return DiffusionBasePipeline.decodeToImages(_:configuration:inferenceDiagnostics:)(a1, a2, a3);
}

uint64_t PipelineProgress.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PipelineProgress.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PipelineProgress() + 32);

  return sub_19A4FCEC0(v3, a1);
}

uint64_t sub_19A4FCD30(uint64_t result, float a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a6[1];
  if (v6 < 0)
  {
    goto LABEL_9;
  }

  if (v6)
  {
    if (!*(a5 + 16))
    {
LABEL_10:
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = *(a5 + 32);
    while (!__OFADD__(v8, v7))
    {
      *(*a6 + 4 * v7) = *(result + 4 * v7) + ((*(result + 4 * (v8 + v7)) - *(result + 4 * v7)) * a2);
      if (v6 == ++v7)
      {
        return result;
      }
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t _s13DiffusionBase0aB9SchedulerO21__derived_enum_equalsySbAC_ACtFZ_0(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 == 2)
    {
      if ((a2 & 0xC000) == 0x8000)
      {
        return (a2 ^ a1) == 0;
      }
    }

    else if (a2 == 49152)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 14))
    {
      if (a2 < 0x4000u)
      {
        return a1 == a2;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x4000)
    {
      return (a2 ^ a1) == 0;
    }
  }

  return 0;
}

uint64_t _s13DiffusionBase13PipelineErrorO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for PipelineProgress()
{
  result = qword_1EAF9EE70;
  if (!qword_1EAF9EE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A4FCEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PipelineConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A4FCF24(uint64_t a1)
{
  v2 = type metadata accessor for PipelineProgress();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A4FCF80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A4FCFEC()
{
  result = qword_1EAFA3140;
  if (!qword_1EAFA3140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3140);
  }

  return result;
}

unint64_t sub_19A4FD044()
{
  result = qword_1EAFA3148;
  if (!qword_1EAFA3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3148);
  }

  return result;
}

unint64_t sub_19A4FD09C()
{
  result = qword_1EAFA3150;
  if (!qword_1EAFA3150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiffusionBaseScheduler(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFFD)
  {
    goto LABEL_17;
  }

  if (a2 + 61443 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 61443 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 61443;
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

      return (*a1 | (v4 << 16)) - 61443;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 61443;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 2) & 0xF00) ^ 0xFFF;
  if (v6 >= 0xFFC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for DiffusionBaseScheduler(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61443 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 61443 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFFC)
  {
    v5 = ((a2 - 4093) >> 16) + 1;
    *result = a2 - 4093;
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
    v6 = ((-a2 >> 2) & 0x3FF) - (a2 << 10);
    *result = (16 * v6) & 0xFC00 | (4 * (v6 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_19A4FD260(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 3 | (4 * ((v1 >> 8) & 3))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_19A4FD294(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x303 | (a2 << 14);
  }

  else
  {
    *result = ((a2 - 3) << 6) & 0x300 | (a2 - 3) & 3 | 0xC000;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13DiffusionBase7EncoderVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy131_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 127) = *(a2 + 127);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_19A4FD344(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 131))
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

uint64_t sub_19A4FD38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 130) = 0;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 131) = 1;
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

    *(result + 131) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_19A4FD42C()
{
  sub_19A4FD4D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PipelineConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4FD4D0()
{
  if (!qword_1EAF9E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA2C30);
    v0 = sub_19A57312C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9E890);
    }
  }
}

unint64_t sub_19A4FD554()
{
  result = qword_1EAFA3158;
  if (!qword_1EAFA3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3158);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NvRandomSource(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NvRandomSource(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_19A4FD618(unint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A57A9D0;
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = inited;
  v9 = *(v3 + 2);
  v10 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    *(inited + 40) = v10;
    v14 = v10;
    *(inited + 48) = v10;
    goto LABEL_13;
  }

  v11 = sub_19A5730DC();
  *(v11 + 16) = a1;
  v12 = (v11 + 32);
  if (a1 > 7)
  {
    v13 = a1 & 0x7FFFFFFFFFFFFFF8;
    v12 += a1 & 0x7FFFFFFFFFFFFFF8;
    v15 = vdupq_n_s32(v9);
    v16 = (v11 + 48);
    v17 = a1 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v16[-1] = v15;
      *v16 = v15;
      v16 += 2;
      v17 -= 8;
    }

    while (v17);
    if (v13 == a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = a1 - v13;
  do
  {
    *v12++ = v9;
    --v18;
  }

  while (v18);
LABEL_11:
  v8[4] = v11;
  v19 = sub_19A5730DC();
  *(v19 + 16) = a1;
  bzero((v19 + 32), 4 * a1);
  v8[5] = v19;
  if (a1 > 0xFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v8[6] = sub_19A4FDC08(a1 << 32);
  v14 = sub_19A5730DC();
  *(v14 + 16) = a1;
  bzero((v14 + 32), 4 * a1);
LABEL_13:
  v8[7] = v14;
  v76[0] = v8;
  if (v9 == -1)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *(v3 + 2) = v9 + 1;
  v20 = swift_initStackObject();
  v21 = v20;
  *(v20 + 16) = xmmword_19A576E20;
  if (!a1)
  {
    *(v20 + 32) = v10;
    v26 = v10;
    goto LABEL_30;
  }

  v22 = *v3;
  v23 = sub_19A5730DC();
  *(v23 + 16) = a1;
  v24 = (v23 + 32);
  if (a1 <= 7)
  {
    v25 = 0;
LABEL_21:
    v30 = a1 - v25;
    do
    {
      *v24++ = v22;
      --v30;
    }

    while (v30);
    goto LABEL_23;
  }

  v25 = a1 & 0x7FFFFFFFFFFFFFF8;
  v24 += a1 & 0x7FFFFFFFFFFFFFF8;
  v27 = vdupq_n_s32(v22);
  v28 = (v23 + 48);
  v29 = a1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v28[-1] = v27;
    *v28 = v27;
    v28 += 2;
    v29 -= 8;
  }

  while (v29);
  if (v25 != a1)
  {
    goto LABEL_21;
  }

LABEL_23:
  *(v21 + 32) = v23;
  v31 = HIDWORD(v22);
  v26 = sub_19A5730DC();
  *(v26 + 16) = a1;
  v32 = (v26 + 32);
  if (a1 <= 7)
  {
    v33 = 0;
LABEL_28:
    v37 = a1 - v33;
    do
    {
      *v32++ = v31;
      --v37;
    }

    while (v37);
    goto LABEL_30;
  }

  v33 = a1 & 0x7FFFFFFFFFFFFFF8;
  v32 += a1 & 0x7FFFFFFFFFFFFFF8;
  v34 = vdupq_n_s32(v31);
  v35 = (v26 + 48);
  v36 = a1 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v35[-1] = v34;
    *v35 = v34;
    v35 += 2;
    v36 -= 8;
  }

  while (v36);
  if (v33 != a1)
  {
    goto LABEL_28;
  }

LABEL_30:
  *(v21 + 40) = v26;
  v75 = v21;
  sub_19A4FDD90(v76, v21);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);
  sub_19A4FE070(&v75);
  sub_19A4FDD90(v76, v75);

  v38 = *(v76[0] + 16);
  if (!v38)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v38 != 1)
  {
    v69[0] = v69;
    v69[1] = v76[0];
    v39 = *(v76[0] + 32);
    v40 = *(v76[0] + 40);
    v41 = *(v39 + 16);
    v42 = *(v40 + 16);
    if (v42 >= v41)
    {
      v43 = *(v39 + 16);
    }

    else
    {
      v43 = *(v40 + 16);
    }

    v74 = v10;

    sub_19A4E456C(0, v43, 0);
    v44 = v74;
    v72 = v39;
    v73 = v41;
    v70 = v42;
    v71 = v40;
    if (v43)
    {
      v45 = (v39 + 32);
      v46 = (v40 + 32);
      v47 = v43;
      while (v41)
      {
        if (!v42)
        {
          goto LABEL_52;
        }

        HIDWORD(v48) = 1038090240;
        LODWORD(v48) = *v46;
        v49 = v48 * 0.00000000146291808 + 7.3145904e-10;
        v50 = log(vcvtd_n_f64_u32(*v45, 0x20uLL) + 1.16415322e-10);
        v51 = sqrt(v50 * -2.0);
        v52 = sin(v49);
        v74 = v44;
        v54 = *(v44 + 16);
        v53 = *(v44 + 24);
        if (v54 >= v53 >> 1)
        {
          v55 = v52;
          sub_19A4E456C((v53 > 1), v54 + 1, 1);
          v52 = v55;
          v44 = v74;
        }

        --v42;
        *(v44 + 16) = v54 + 1;
        *(v44 + 8 * v54 + 32) = v51 * a3 * v52 + a2;
        --v41;
        ++v46;
        ++v45;
        if (!--v47)
        {
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
    }

    else
    {
LABEL_42:
      v56 = v73;
      v57 = v70;
      if (v73 <= v70)
      {
LABEL_50:

        return;
      }

      v58 = v72 + 32;
      v59 = v71 + 32;
      while (v43 < v56)
      {
        v60 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_54;
        }

        if (v57 != v43)
        {
          HIDWORD(v61) = 1038090240;
          LODWORD(v61) = *(v59 + 4 * v43);
          v62 = v61 * 0.00000000146291808 + 7.3145904e-10;
          v63 = log(vcvtd_n_f64_u32(*(v58 + 4 * v43), 0x20uLL) + 1.16415322e-10);
          v64 = sqrt(v63 * -2.0);
          v65 = sin(v62);
          v74 = v44;
          v67 = *(v44 + 16);
          v66 = *(v44 + 24);
          if (v67 >= v66 >> 1)
          {
            v68 = v65;
            sub_19A4E456C((v66 > 1), v67 + 1, 1);
            v65 = v68;
            v44 = v74;
          }

          *(v44 + 16) = v67 + 1;
          *(v44 + 8 * v67 + 32) = v64 * a3 * v65 + a2;
          ++v43;
          v56 = v73;
          if (v60 != v73)
          {
            continue;
          }
        }

        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_59:
  __break(1u);
}

void *sub_19A4FDC08(unint64_t a1)
{
  if (HIDWORD(a1) < a1)
  {
    v2 = -(a1 - HIDWORD(a1));
  }

  else
  {
    v2 = (HIDWORD(a1) - a1);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_19A544E50(v2, 0);
  if (sub_19A568930(v5, (v3 + 4), v2, a1) != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_19A4FDC8C(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 1;
    while (1)
    {
      v6 = *v4++;
      result = v5 * v6;
      if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
      {
        break;
      }

      v5 = result;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    result = 1;
LABEL_7:
    sub_19A4FD618(result, a2, a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090);
    sub_19A4EB9A0();
    return sub_19A57264C();
  }

  return result;
}

void sub_19A4FDD50(double a1, double a2)
{
  sub_19A4FD618(1uLL, a1, a2);
  if (*(v2 + 16))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19A4FDD90(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v23 = *(v3[4] + 16);
    if (!v23)
    {
      return result;
    }

    v2 = a2;
    if (*(a2 + 16) >= 2uLL)
    {
      v22 = result;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_5;
      }

      goto LABEL_49;
    }
  }

  else
  {
LABEL_47:
    __break(1u);
  }

  __break(1u);
LABEL_49:
  v3 = sub_19A4E5290(v3);
LABEL_5:
  v4 = 0;
  v5 = *(v2 + 4);
  v6 = *(v2 + 5);
  do
  {
    v7 = v3[2];
    if (!v7)
    {
      __break(1u);
LABEL_33:
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
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v2 = v3[4];
    if (v4 >= *(v2 + 2))
    {
      goto LABEL_33;
    }

    if (v7 < 3)
    {
      goto LABEL_34;
    }

    v8 = v3[6];
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_35;
    }

    v9 = v3[5];
    if (v4 >= *(v9 + 16))
    {
      goto LABEL_36;
    }

    if (v4 >= *(v5 + 16))
    {
      goto LABEL_37;
    }

    v10 = *&v2[4 * v4 + 32];
    v11 = *(v8 + 4 * v4 + 32);
    v12 = *(v9 + 4 * v4 + 32);
    v13 = *(v5 + 32 + 4 * v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_19A4E5268(v2);
      v3[4] = v2;
    }

    if (v4 >= *(v2 + 2))
    {
      goto LABEL_38;
    }

    v15 = 3449720151 * v11;
    *&v2[4 * v4 + 32] = v12 ^ v13 ^ HIDWORD(v15);
    if (v3[2] < 2uLL)
    {
      goto LABEL_39;
    }

    v2 = v3[5];
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v3[5] = v2;
    if ((v16 & 1) == 0)
    {
      v2 = sub_19A4E5268(v2);
      v3[5] = v2;
    }

    if (v4 >= *(v2 + 2))
    {
      goto LABEL_40;
    }

    *&v2[4 * v4 + 32] = v15;
    if (v3[2] < 4uLL)
    {
      goto LABEL_41;
    }

    v17 = v3[7];
    if (v4 >= *(v17 + 16))
    {
      goto LABEL_42;
    }

    if (v4 >= *(v6 + 16))
    {
      goto LABEL_43;
    }

    v18 = *(v17 + 4 * v4 + 32);
    v19 = *(v6 + 32 + 4 * v4);
    v2 = v3[6];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v3[6] = v2;
    if ((v20 & 1) == 0)
    {
      v2 = sub_19A4E5268(v2);
      v3[6] = v2;
    }

    if (v4 >= *(v2 + 2))
    {
      goto LABEL_44;
    }

    v21 = 3528531795 * v10;
    *&v2[4 * v4 + 32] = v18 ^ v19 ^ HIDWORD(v21);
    if (v3[2] < 4uLL)
    {
      goto LABEL_45;
    }

    v2 = v3[7];
    result = swift_isUniquelyReferenced_nonNull_native();
    v3[7] = v2;
    if ((result & 1) == 0)
    {
      result = sub_19A4E5268(v2);
      v2 = result;
      v3[7] = result;
    }

    if (v4 >= *(v2 + 2))
    {
      goto LABEL_46;
    }

    *&v2[4 * v4++ + 32] = v21;
  }

  while (v23 != v4);
  *v22 = v3;
  return result;
}

uint64_t sub_19A4FE070(uint64_t result)
{
  v4 = *result;
  v5 = *(*result + 16);
  if (!v5)
  {
    goto LABEL_27;
  }

  v1 = result;
  v2 = v4[4];
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v6 = 8;
    do
    {
      if (!v4[2])
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v7 = *(v2 + 4 * v6);
      v8 = v4[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[4] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_19A4E5268(v8);
        v4[4] = v8;
      }

      if ((v6 - 8) >= *(v8 + 2))
      {
        goto LABEL_24;
      }

      *&v8[4 * v6++] = v7 - 1640531527;
      --v3;
    }

    while (v3);

    *v1 = v4;
    v5 = v4[2];
LABEL_11:
    if (v5 >= 2)
    {
      break;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v4 = sub_19A4E5290(v4);
  }

  v2 = v4[5];
  v3 = *(v2 + 16);
  if (v3)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_19A4E5290(v4);
    }

    v10 = 8;
    while (v4[2] >= 2uLL)
    {
      v11 = *(v2 + 4 * v10);
      v12 = v4[5];
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v4[5] = v12;
      if ((v13 & 1) == 0)
      {
        v12 = sub_19A4E5268(v12);
        v4[5] = v12;
      }

      if ((v10 - 8) >= *(v12 + 2))
      {
        goto LABEL_26;
      }

      *&v12[4 * v10++] = v11 - 1150833019;
      if (!--v3)
      {

        *v1 = v4;
        return result;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  return result;
}

uint64_t SampleTimer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 48) = 0;
  *(result + 56) = v1;
  return result;
}

uint64_t SampleTimer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = 0;
  *(v0 + 56) = v2;
  return result;
}

Swift::Double __swiftcall SampleTimer.stop()()
{
  result = 0.0;
  if (*(v1 + 24))
  {
    return result;
  }

  v3 = *(v1 + 16);
  v4 = CFAbsoluteTimeGetCurrent() - v3;
  v5.f64[0] = v4;
  v5.f64[1] = v4 * v4;
  *(v1 + 32) = vaddq_f64(*(v1 + 32), v5);
  v6 = *(v1 + 48);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v4;
  *(v1 + 48) = v8;
  v0 = *(v1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v0 = sub_19A514A0C(0, *(v0 + 2) + 1, 1, v0);
    *(v1 + 56) = v0;
  }

  v11 = *(v0 + 2);
  v10 = *(v0 + 3);
  result = v13;
  if (v11 >= v10 >> 1)
  {
    v12 = sub_19A514A0C((v10 > 1), v11 + 1, 1, v0);
    result = v13;
    v0 = v12;
  }

  *(v0 + 2) = v11 + 1;
  *&v0[8 * v11 + 32] = result;
  *(v1 + 56) = v0;
  return result;
}

double SampleTimer.variance.getter()
{
  v1 = *(v0 + 48);
  result = 0.0;
  if (v1 >= 2)
  {
    return *(v0 + 40) / (v1 - 1) - *(v0 + 32) / v1 * (*(v0 + 32) / v1);
  }

  return result;
}

double SampleTimer.stdev.getter()
{
  v1 = *(v0 + 48);
  v2 = 0.0;
  if (v1 >= 2)
  {
    v2 = *(v0 + 40) / (v1 - 1) - *(v0 + 32) / v1 * (*(v0 + 32) / v1);
  }

  return sqrt(v2);
}

uint64_t SampleTimer.median.getter()
{
  v3 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  sub_19A4FEC48(&v3);

  v1 = *(v3 + 2);
  if ((v1 & 1) != 0 || v1)
  {
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_19A4FE4E4()
{
  v1 = *v0;
  v2 = 0x6D69547472617473;
  v3 = 0x757153664F6D7573;
  v4 = 0x746E756F63;
  if (v1 != 3)
  {
    v4 = 0x73656C706D6173;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7173491;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_19A4FE580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A4FF704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A4FE5A8(uint64_t a1)
{
  v2 = sub_19A4FED7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4FE5E4(uint64_t a1)
{
  v2 = sub_19A4FED7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleTimer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SampleTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4FED7C();
  sub_19A5741AC();
  v15 = 0;
  sub_19A573DEC();
  if (!v2)
  {
    v14 = 1;
    sub_19A573E4C();
    v13 = 2;
    sub_19A573E4C();
    v12 = 3;
    sub_19A573E6C();
    v11 = *(v3 + 56);
    v10[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090);
    sub_19A4FEDD0(&qword_1EAFA3178);
    sub_19A573E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SampleTimer.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SampleTimer.init(from:)(a1);
  return v2;
}

uint64_t SampleTimer.init(from:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3180);
  v4 = *(v13[0] - 8);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A4FED7C();
  sub_19A57417C();
  if (v2)
  {
  }

  else
  {
    v7 = v4;
    v18 = 0;
    v8 = v13[0];
    *(v1 + 16) = sub_19A573CAC();
    *(v1 + 24) = v9 & 1;
    v17 = 1;
    sub_19A573D1C();
    *(v1 + 32) = v10;
    v16 = 2;
    sub_19A573D1C();
    *(v1 + 40) = v12;
    v15 = 3;
    *(v1 + 48) = sub_19A573D3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3090);
    v14 = 4;
    sub_19A4FEDD0(&qword_1EAFA3188);
    sub_19A573D4C();
    (*(v7 + 8))(v6, v8);
    *(v1 + 56) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_19A4FEBCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SampleTimer.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_19A4FEC48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A4FF6F0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_19A5730DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_19A4FEF78(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_19A4FED7C()
{
  result = qword_1EAFA3170;
  if (!qword_1EAFA3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3170);
  }

  return result;
}

uint64_t sub_19A4FEDD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAFA3090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19A4FEE74()
{
  result = qword_1EAFA3190;
  if (!qword_1EAFA3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3190);
  }

  return result;
}

unint64_t sub_19A4FEECC()
{
  result = qword_1EAFA3198;
  if (!qword_1EAFA3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3198);
  }

  return result;
}

unint64_t sub_19A4FEF24()
{
  result = qword_1EAFA31A0;
  if (!qword_1EAFA31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA31A0);
  }

  return result;
}

uint64_t sub_19A4FEF78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_19A34DDAC(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_19A4FF4D4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_19A31CF2C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_19A4FF4D4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_19A4FF4D4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_19A4FF704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x757153664F6D7573 && a2 == 0xEC00000073657261 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_19A573F1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73656C706D6173 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t static AppleDiffusionPipeline.supportedImageResolutions()()
{
  v1 = sub_19A570EAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v8 = off_1ED824FA0;

  os_unfair_lock_lock(v8 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
  }

  else
  {
    type metadata accessor for AppleDiffusionResourceFactory(0);
    swift_allocObject();
    v13 = sub_19A561E50();
    if (v0)
    {
      os_unfair_lock_unlock(v8 + 6);
    }

    v10 = v13;
    swift_weakAssign();
  }

  os_unfair_lock_unlock(v8 + 6);

  sub_19A3406DC(v10 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_resourceURLs, v7);

  (*(v2 + 16))(v4, &v7[*(v5 + 20)], v1);
  sub_19A340740(v7);
  v11 = sub_19A4FFB30(v4);
  if (v0)
  {
    return (*(v2 + 8))(v4, v1);
  }

  v14 = v11;
  (*(v2 + 8))(v4, v1);
  return v14;
}

id sub_19A4FFB30(uint64_t a1)
{
  v3 = sub_19A570EAC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = type metadata accessor for AppleDiffusionPipeline.ResourceURLs(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v11, a1, v3);
  AppleDiffusionPipeline.ResourceURLs.init(resourcesAt:)(v11, v15);
  v16 = v15 + *(v13 + 32);
  v17 = *v16;
  v43 = *(v16 + 1);
  v44 = v17;
  v17(0);
  sub_19A52C5EC(v9, v52);
  memcpy(v53, v52, sizeof(v53));
  v18 = sub_19A4E6F10(v53);
  v56 = v1;
  v49 = v4;
  v50 = v3;
  v47 = v15;
  v48 = v9;
  if (v18 == 1 || (memcpy(v54, v53, sizeof(v54)), sub_19A500010(v54, v51), sub_19A2F3FA0(v52, &unk_1EAFA2C10), memcpy(v55, v54, 0x168uLL), sub_19A489468(v55) == 1))
  {
    v51[0] = MEMORY[0x1E69E7CC0];
LABEL_4:
    v19 = sub_19A4E8368(MEMORY[0x1E69E7CC0]);
    v20 = 0;
    goto LABEL_5;
  }

  v39 = v55[30];

  sub_19A2F3FA0(v54, &qword_1EAFA2510);
  v20 = v39;
  v51[0] = MEMORY[0x1E69E7CC0];
  v19 = v39;
  if (!v39)
  {
    goto LABEL_4;
  }

LABEL_5:
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v45 = v20;

  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
LABEL_12:
    while (1)
    {
      v26 = *(*(v19 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v23)))));
      if (*(v26 + 16) < 3uLL)
      {
        break;
      }

      v29 = *(v26 + 40);
      v28 = *(v26 + 48);
      v30 = objc_allocWithZone(MEMORY[0x1E695FE80]);

      result = [v30 initWithPixelsWide:v28 pixelsHigh:v29];
      if (!result)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x19A900BE0](v32);
      if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_19A5730AC();
      }

      v23 &= v23 - 1;
      sub_19A5730FC();
      v26 = v51[0];
      if (!v23)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    v40 = sub_19A573B4C();
    v33 = v56;
    v35 = v49;
    v34 = v50;
    v37 = v47;
    v36 = v48;
    v38 = v46;
    if (v40)
    {
      goto LABEL_20;
    }
  }

  else
  {
    while (1)
    {
LABEL_8:
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v27 >= v24)
      {
        break;
      }

      v23 = *(v19 + 64 + 8 * v27);
      ++v25;
      if (v23)
      {
        v25 = v27;
        goto LABEL_12;
      }
    }

    if (v26 >> 62)
    {
      goto LABEL_26;
    }

    v33 = v56;
    v35 = v49;
    v34 = v50;
    v37 = v47;
    v36 = v48;
    v38 = v46;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      (*(v35 + 8))(v36, v34);
      goto LABEL_21;
    }
  }

  v44(5);
  sub_19A5152B0(v38);
  if (v33)
  {
    v26 = *(v35 + 8);
    (v26)(v38, v34);
    (v26)(v36, v34);
    sub_19A340740(v37);
    return v26;
  }

  v26 = v41;
  v42 = *(v35 + 8);
  v42(v38, v34);
  v42(v36, v34);
LABEL_21:
  sub_19A340740(v37);
  return v26;
}

uint64_t sub_19A500010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A500080(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A330D28(&unk_1F0DB5B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2688);
  swift_arrayDestroy();
  if (Unet.usePORParameters()() && *(v4 + 16) && (v5 = sub_19A31F6BC(a1, a2), (v6 & 1) != 0))
  {
    a1 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_19A50014C(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A330D28(&unk_1F0DB5DA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2688);
  swift_arrayDestroy();
  if (TextEncoderXL.usePORParameters()() && *(v4 + 16) && (v5 = sub_19A31F6BC(a1, a2), (v6 & 1) != 0))
  {
    a1 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
  }

  return a1;
}

Swift::String __swiftcall ModelKeyRemapping._remapKey(_:)(Swift::String a1)
{
  v3 = v2;
  v4 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v7 = sub_19A330D28(&unk_1F0DB5EA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2688);
  swift_arrayDestroy();
  if ((*(v3 + 8))(v4, v3) & 1) != 0 && *(v7 + 16) && (v8 = sub_19A31F6BC(countAndFlagsBits, object), (v9))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    countAndFlagsBits = *v10;
    object = v10[1];
  }

  else
  {
  }

  v11 = countAndFlagsBits;
  v12 = object;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t SafetyChecker.init(modelAt:configuration:)(uint64_t a1, void *a2)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v8 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v7, a2, MEMORY[0x1E69E7CC0], "SafetyChecker", 13, 2);
  (*(v5 + 8))(a1, v4);
  return v8;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SafetyChecker.isSafe(_:)(CGImageRef a1)
{
  v3 = v2;
  v4 = v1;
  v79 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v80 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31A8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v67 - v13;
  v15 = *(v4 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v83 = 0;
  v81 = v4;
  v82 = 0;
  v84 = sub_19A50103C;
  v85 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31B0);
  sub_19A5735DC();
  if (v2)
  {
    goto LABEL_13;
  }

  v72 = v15;
  v77 = v10;
  v78 = v14;
  v17 = v86;
  if (!v86[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v14 = 0;
  v10 = 0x706E695F70696C63;
  v18 = sub_19A31F6BC(0x706E695F70696C63, 0xEA00000000007475);
  if ((v19 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    v25 = MEMORY[0x19A901520](3, v17);
    v24 = v8;
    goto LABEL_8;
  }

  v76 = v5;
  v75 = v12;
  v20 = [*(*(v17 + 56) + 8 * v18) multiArrayConstraint];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    return v20;
  }

  v21 = v20;

  v22 = [v21 shape];

  v23 = sub_19A2F1600(0, &qword_1ED823EA8);
  v17 = sub_19A57308C();

  v3 = v17 & 0xC000000000000001;
  v74 = v11;
  v71 = v4;
  v73 = v23;
  if ((v17 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v24 = v8;
  v25 = *(v17 + 56);
LABEL_8:
  v26 = [v25 integerValue];

  v27 = v79;
  if (v3)
  {
    v28 = MEMORY[0x19A901520](2, v17);
    goto LABEL_12;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
    goto LABEL_29;
  }

  v28 = *(v17 + 48);
LABEL_12:
  v29 = v28;
  v30 = v80;

  v31 = [v29 integerValue];

  v32 = sub_19A502088(v27, v26, v31);
  if (!v14)
  {
    v33 = v78;
    v70 = v32;
    sub_19A5010E0(v32, v78);
    v79 = 0;
    v34 = v77;
    sub_19A501518(v33, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A5792A0;
    *(inited + 32) = v10;
    v69 = inited + 32;
    *(inited + 40) = 0xEA00000000007475;
    v36 = sub_19A2F1600(0, &qword_1ED823EE0);
    v37 = *(v30 + 16);
    v38 = v76;
    v37(v24, v34, v76);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
    v39 = sub_19A57351C();
    *(inited + 72) = v36;
    *(inited + 80) = 0x656D7473756A6461;
    v68 = inited + 80;
    *(inited + 48) = v39;
    *(inited + 88) = 0xEA0000000000746ELL;
    v86 = &unk_1F0DB5D30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
    v40 = v38;
    sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
    sub_19A57264C();
    *(inited + 96) = sub_19A57351C();
    *(inited + 120) = v36;
    *(inited + 128) = 0x736567616D69;
    *(inited + 136) = 0xE600000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_19A590570;
    *(v41 + 32) = sub_19A57372C();
    *(v41 + 40) = sub_19A57372C();
    *(v41 + 48) = sub_19A57372C();
    *(v41 + 56) = sub_19A57372C();
    v42 = objc_allocWithZone(MEMORY[0x1E695FED0]);
    v43 = v79;
    v44 = sub_19A52A8D8(v41, 65552);
    if (v43)
    {

      sub_19A2F3FA0(v68, &qword_1EAFA2F00);
      sub_19A2F3FA0(v69, &qword_1EAFA2F00);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
      swift_arrayDestroy();
      v45 = v74;
    }

    else
    {
      *(inited + 168) = v36;
      *(inited + 144) = v44;
      sub_19A330370(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
      swift_arrayDestroy();
      v46 = objc_allocWithZone(MEMORY[0x1E695FE48]);
      v47 = sub_19A544CF4();
      v45 = v74;
      if (v47)
      {
        v49 = MEMORY[0x1EEE9AC00](v47);
        *(&v67 - 2) = v49;
        v50 = MEMORY[0x1EEE9AC00](v49);
        *(&v67 - 4) = sub_19A4EAD64;
        *(&v67 - 3) = v51;
        *(&v67 - 2) = v71;
        MEMORY[0x1EEE9AC00](v50);
        *(&v67 - 5) = 0;
        *(&v67 - 4) = 0;
        *(&v67 - 6) = v52;
        *(&v67 - 3) = sub_19A4EAD80;
        *(&v67 - 2) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC0);
        sub_19A5735DC();
        v54 = sub_19A56D50C(v86);

        v55 = v45;
        v56 = v78;
        v57 = v77;
        if (*(v54 + 16) && (v58 = sub_19A31F6BC(0xD000000000000011, 0x800000019A59CDD0), (v59 & 1) != 0))
        {
          v60 = *(*(v54 + 56) + 8 * v58);

          v61 = [v60 multiArrayValue];
          v62 = v75;
          if (v61)
          {
            v63 = v61;
            v64 = [v61 objectAtIndexedSubscript_];

            LOBYTE(v63) = [v64 BOOLValue];
            (*(v80 + 8))(v57, v76);
            (*(v62 + 8))(v56, v55);
            v16 = v63 ^ 1;
            goto LABEL_13;
          }
        }

        else
        {

          v60 = 0;
          v62 = v75;
        }

        sub_19A5021C0();
        swift_allocError();
        *v65 = 3;
        swift_willThrow();

        (*(v80 + 8))(v57, v76);
        (*(v62 + 8))(v56, v55);
        goto LABEL_13;
      }
    }

    sub_19A5021C0();
    swift_allocError();
    *v48 = 2;
    swift_willThrow();

    (*(v80 + 8))(v77, v40);
    (*(v75 + 8))(v33, v45);
  }

LABEL_13:
  LOBYTE(v20) = v16 & 1;
  return v20;
}

void sub_19A50103C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v5 = sub_19A572AFC();

  *a2 = v5;
}

uint64_t sub_19A5010E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_19A57072C();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31D0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31E0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  sub_19A57071C();
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v18 = a1;
  v19 = v35;
  sub_19A5706DC();
  if (v19)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_19A2F3FA0(v13, &qword_1EAFA31D8);
    sub_19A5021C0();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }

  else
  {
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v17, v13, v14);
    CGImageGetWidth(v18);
    CGImageGetHeight(v18);
    sub_19A57070C();
    sub_19A5706CC();
    v23 = v29;
    v22 = v30;
    (*(v29 + 104))(v5, *MEMORY[0x1E69E5B30], v30);
    sub_19A5706EC();
    (*(v23 + 8))(v5, v22);
    v24 = v27;
    v25 = v28;
    (*(v27 + 16))(v26, v10, v28);
    sub_19A5706FC();
    (*(v24 + 8))(v10, v25);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_19A501518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3110);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31A8);
  v30 = a1;
  v13 = sub_19A57064C();
  v14 = sub_19A57065C();
  v52 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19A57A9D0;
  *(v15 + 32) = xmmword_19A576E00;
  *(v15 + 48) = v13;
  *(v15 + 56) = v14;
  v31 = v13;
  v32 = v14;
  sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  v25 = v12;
  v26 = v10;
  sub_19A57271C();
  sub_19A57266C();
  v33 = sub_19A2F12E4(&qword_1EAF9E930, &qword_1EAFA3110);
  v16 = v9;
  sub_19A57273C();
  v17 = *(v4 + 8);
  v17(v9, v3);
  v46 = v13;
  v47 = v14;
  v18 = v30;
  v48 = v30;
  v49 = 0;
  v50 = &unk_1F0DB5D00;
  v51 = &unk_1F0DB5CD0;
  v29 = sub_19A5022B8;
  sub_19A57269C();
  v19 = v7;
  v24 = v17;
  v17(v7, v3);
  v20 = v26;
  v21 = v25;
  sub_19A57266C();
  sub_19A57273C();
  v17(v16, v3);
  v40 = v31;
  v41 = v32;
  v42 = v18;
  v43 = 1;
  v44 = &unk_1F0DB5D00;
  v45 = &unk_1F0DB5CD0;
  sub_19A57269C();
  v22 = v24;
  v24(v19, v3);
  sub_19A57266C();
  sub_19A57273C();
  v22(v16, v3);
  v34 = v31;
  v35 = v32;
  v36 = v30;
  v37 = 2;
  v38 = &unk_1F0DB5D00;
  v39 = &unk_1F0DB5CD0;
  sub_19A57269C();
  v22(v19, v3);
  return (*(v27 + 32))(v28, v21, v20);
}

uint64_t sub_19A501A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
  v15 = *(v14 - 8);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  if (a1)
  {
    if (*(a4 + 16))
    {
      if ((*(a4 + 32) - 0x2000000000000000) >> 62 == 3)
      {
        v20 = a7;
        v21 = result;
        sub_19A5707AC();
        v19 = sub_19A5706BC();
        MEMORY[0x1EEE9AC00](v19);
        *(&v20 - 4) = v18;
        *(&v20 - 3) = a9;
        *(&v20 - 2) = a8;
        *(&v20 - 1) = a10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31A8);
        sub_19A57069C();
        return (*(v15 + 8))(v18, v21);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

vImage_Error sub_19A501C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v33 = a5;
  v34 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v8 = sub_19A57074C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32[-v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31C8);
  v35 = a1;
  sub_19A57063C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2D48);
  v36 = a2;
  sub_19A57063C();
  LOBYTE(a1) = sub_19A57073C();
  v15 = *(v9 + 8);
  v15(v12, v8);
  v15(v14, v8);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  src.data = sub_19A57066C();
  src.height = v16;
  src.width = v17;
  src.rowBytes = v18;
  dest.data = sub_19A57066C();
  dest.height = v19;
  dest.width = v20;
  dest.rowBytes = v21;
  vImageConvert_Planar8toPlanarF(&src, &dest, 1.0, 0.0, 0);
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v34 + 16) <= a4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v33 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v22 = *(v34 + 4 * a4 + 32);
  v23 = *(v33 + 4 * a4 + 32);
  sub_19A57063C();
  sub_19A57063C();
  v24 = sub_19A57073C();
  v15(v12, v8);
  v15(v14, v8);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  pre_bias = -v23;
  post_bias = 0.0;
  src.data = sub_19A57066C();
  src.height = v25;
  src.width = v26;
  src.rowBytes = v27;
  dest.data = sub_19A57066C();
  dest.height = v28;
  dest.width = v29;
  dest.rowBytes = v30;
  srcs = &src;
  dests = &dest;
  v39 = 1.0 / v22;
  return vImageMatrixMultiply_PlanarF(&srcs, &dests, 1u, 1u, &v39, &pre_bias, &post_bias, 0);
}

void sub_19A501FC0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A5499C0(a1, a2, a3, a4, a5);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    *a6 = v15;
  }
}

CGColorSpace *sub_19A502088(CGColorSpace *result, size_t a2, size_t a3)
{
  if ((a2 - 0x2000000000000000) >> 62 != 3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = __CGBitmapContextCreate_0(a2, a3, 4 * a2, result);

  if (v7)
  {
    CGContextSetInterpolationQuality(v7, kCGInterpolationHigh);
    sub_19A5734CC();
    Image = CGBitmapContextCreateImage(v7);
    if (Image)
    {
      v5 = Image;
    }

    else
    {
      sub_19A5021C0();
      swift_allocError();
      *v10 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_19A5021C0();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
  }

  return v5;
}

unint64_t sub_19A5021C0()
{
  result = qword_1EAFA31B8;
  if (!qword_1EAFA31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA31B8);
  }

  return result;
}

unint64_t sub_19A502264()
{
  result = qword_1EAFA31C0;
  if (!qword_1EAFA31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA31C0);
  }

  return result;
}

void sub_19A502328(uint64_t a1@<X8>)
{
  v32 = a1;
  v34[2] = *MEMORY[0x1E69E9840];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v30 = &v28 - v2;
  v33 = sub_19A572D6C();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_19A570EAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = objc_opt_self();
  v10 = [v29 defaultManager];
  v11 = [v10 temporaryDirectory];
  sub_19A570E3C();

  v12 = sub_19A570E4C();
  v14 = v13;
  v15 = *(v7 + 8);
  v31 = v6;
  v16 = v6;
  v17 = v15;
  v15(v9, v16);
  v34[0] = v12;
  v34[1] = v14;

  MEMORY[0x19A900A50](0xD00000000000001DLL, 0x800000019A59CE30);

  sub_19A572D4C();
  sub_19A2F4450();
  v18 = sub_19A57383C();
  (*(v3 + 8))(v5, v33);

  if (v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_19A5146BC(0, *(v18 + 16), 0, v18);
    }

    mkdtemp((v18 + 32));
    v19 = v30;
    v20 = v31;
    (*(v7 + 56))(v30, 1, 1, v31);
    v21 = v32;
    sub_19A570E2C();
    sub_19A2F3FA0(v19, &qword_1EAFA02E8);

    v22 = [v29 defaultManager];
    v23 = sub_19A570DEC();
    v34[0] = 0;
    v24 = [v22 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v34];

    if (v24)
    {
      v25 = v34[0];
    }

    else
    {
      v27 = v34[0];
      sub_19A570D1C();

      swift_willThrow();
      v17(v21, v20);
    }
  }

  else
  {
    sub_19A503CFC();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
  }
}

uint64_t InferenceDiagnosticsAccessor.Error.hashValue.getter(char a1)
{
  sub_19A5740BC();
  MEMORY[0x19A901C40](a1 & 1);
  return sub_19A57410C();
}

uint64_t sub_19A5027D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_19A572D6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_19A570E4C();
  v19[1] = v8;
  sub_19A572D4C();
  sub_19A2F4450();
  sub_19A57383C();
  (*(v5 + 8))(v7, v4);

  v9 = sandbox_extension_issue_file();

  if (v9)
  {
    v10 = sub_19A570EAC();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, a1, v10);
    v12 = sub_19A572EEC();
    v14 = v13;
    v15 = (a2 + *(type metadata accessor for InferenceDiagnosticsAccessor() + 20));
    *v15 = v12;
    v15[1] = v14;
    free(v9);
    return (*(v11 + 8))(a1, v10);
  }

  else
  {
    sub_19A503CFC();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    v18 = sub_19A570EAC();
    return (*(*(v18 - 8) + 8))(a1, v18);
  }
}

uint64_t InferenceDiagnosticsAccessor.moveInferenceFrameData(using:)(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v59 = sub_19A570DCC();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA02E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_19A570EAC();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v49 = v15;
  v16 = *(v15 + 16);
  v60 = a1;
  v16(&v48 - v13, a1, v6);
  v17 = [objc_opt_self() defaultManager];
  type metadata accessor for InferenceDiagnosticsAccessor();
  sub_19A572DEC();
  v48 = sandbox_extension_consume();

  sub_19A570E4C();
  v18 = sub_19A572CCC();

  v19 = [v17 fileExistsAtPath_];

  v63 = v17;
  if ((v19 & 1) == 0)
  {
    sub_19A570E4C();
    v36 = sub_19A572CCC();

    v62 = v14;
    sub_19A570E4C();
    v37 = sub_19A572CCC();

    *&v66 = 0;
    v38 = [v17 moveItemAtPath:v36 toPath:v37 error:&v66];

    if (!v38)
    {
      v41 = v66;
      v42 = sub_19A570D1C();

      v50 = v42;
      swift_willThrow();
      sandbox_extension_release();

      return (*(v49 + 8))(v62, v6);
    }

    v39 = v66;
    v14 = v62;
    v40 = v49;
    goto LABEL_23;
  }

  v61 = sub_19A57352C();
  if (!v61)
  {
    v66 = 0u;
    v67 = 0u;
LABEL_20:
    sub_19A2F3FA0(&v66, &qword_1EAFA0228);
    v40 = v49;
    (*(v49 + 56))(v5, 1, 1, v6);
LABEL_22:
    sub_19A2F3FA0(v5, &qword_1EAFA02E8);
LABEL_23:
    sandbox_extension_release();

    return (*(v40 + 8))(v14, v6);
  }

  v62 = v14;
  v56 = (v49 + 48);
  v57 = (v49 + 56);
  v54 = (v49 + 32);
  v53 = *MEMORY[0x1E6968F70];
  v52 = (v55 + 13);
  v51 = v55 + 1;
  v55 = (v49 + 8);
  while (1)
  {
    v20 = [v61 nextObject];
    v21 = v63;
    if (v20)
    {
      sub_19A57384C();
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0u;
      v65 = 0u;
    }

    v66 = v64;
    v67 = v65;
    if (!*(&v65 + 1))
    {

      v14 = v62;
      goto LABEL_20;
    }

    v22 = swift_dynamicCast();
    (*v57)(v5, v22 ^ 1u, 1, v6);
    if ((*v56)(v5, 1, v6) == 1)
    {

      v14 = v62;
      v40 = v49;
      goto LABEL_22;
    }

    (*v54)(v12, v5, v6);
    *&v66 = sub_19A570DDC();
    *(&v66 + 1) = v23;
    v24 = v58;
    v25 = v59;
    (*v52)(v58, v53, v59);
    sub_19A2F4450();
    sub_19A570E9C();
    (*v51)(v24, v25);

    if (*(v60 + *(type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0) + 24)) == 1)
    {
      sub_19A570E4C();
      v26 = sub_19A572CCC();

      v27 = [v21 fileExistsAtPath_];

      if (v27)
      {
        break;
      }
    }

LABEL_13:
    v31 = sub_19A570DEC();
    v32 = sub_19A570DEC();
    *&v66 = 0;
    v33 = [v21 moveItemAtURL:v31 toURL:v32 error:&v66];

    if (!v33)
    {
      v44 = v66;
      v50 = sub_19A570D1C();

      swift_willThrow();
      v45 = *v55;
      (*v55)(v9, v6);
      v45(v12, v6);
      sandbox_extension_release();

      return (v45)(v62, v6);
    }

    v34 = *v55;
    v35 = v66;
    v34(v9, v6);
    v34(v12, v6);
  }

  v28 = sub_19A570DEC();
  *&v66 = 0;
  v29 = [v21 removeItemAtURL:v28 error:&v66];

  if (v29)
  {
    v30 = v66;
    goto LABEL_13;
  }

  v46 = v66;
  v50 = sub_19A570D1C();

  swift_willThrow();
  v47 = *v55;
  (*v55)(v9, v6);
  v47(v12, v6);
  sandbox_extension_release();

  return (v47)(v62, v6);
}

uint64_t type metadata accessor for InferenceDiagnosticsAccessor()
{
  result = qword_1ED824DD0;
  if (!qword_1ED824DD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A503334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000019A59CDF0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000019A59CE10 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_19A573F1C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_19A50341C(uint64_t a1)
{
  v2 = sub_19A50363C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A503458(uint64_t a1)
{
  v2 = sub_19A50363C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceDiagnosticsAccessor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA31E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A50363C();
  sub_19A5741AC();
  v8[15] = 0;
  sub_19A570EAC();
  sub_19A5039AC(&qword_1EAFA31F8);
  sub_19A573E7C();
  if (!v1)
  {
    type metadata accessor for InferenceDiagnosticsAccessor();
    v8[14] = 1;
    sub_19A573E2C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_19A50363C()
{
  result = qword_1EAFA31F0;
  if (!qword_1EAFA31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA31F0);
  }

  return result;
}

uint64_t InferenceDiagnosticsAccessor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_19A570EAC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3200);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for InferenceDiagnosticsAccessor();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A50363C();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_19A5039AC(&qword_1EAFA3208);
  v14 = v26;
  sub_19A573D4C();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_19A573CFC();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_19A5039F0(v19, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_19A503A54(v19);
}

uint64_t sub_19A5039AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_19A570EAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19A5039F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceDiagnosticsAccessor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A503A54(uint64_t a1)
{
  v2 = type metadata accessor for InferenceDiagnosticsAccessor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A503AB4()
{
  result = qword_1EAFA3210;
  if (!qword_1EAFA3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3210);
  }

  return result;
}

uint64_t sub_19A503B60()
{
  result = sub_19A570EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_19A503BF8()
{
  result = qword_1EAFA3218;
  if (!qword_1EAFA3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3218);
  }

  return result;
}

unint64_t sub_19A503C50()
{
  result = qword_1EAFA3220;
  if (!qword_1EAFA3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3220);
  }

  return result;
}

unint64_t sub_19A503CA8()
{
  result = qword_1EAFA3228;
  if (!qword_1EAFA3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3228);
  }

  return result;
}

unint64_t sub_19A503CFC()
{
  result = qword_1EAFA3230;
  if (!qword_1EAFA3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3230);
  }

  return result;
}

void Encoder.encode(_:scaleFactor:random:inferenceDiagnostics:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = *MEMORY[0x1E69E9840];
  v11 = *(a4 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v92 = a4;
  v93 = a5;
  v94 = a6;
  v95 = sub_19A505988;
  v96 = 0;
  type metadata accessor for MLFeatureType(0);
  sub_19A5735DC();
  if (v6)
  {
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_44;
  }

  if (v90 == 4)
  {
    v89 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_19A576E10;
    MEMORY[0x1EEE9AC00](inited);
    v87 = v58;
    sub_19A5735DC();
    v59 = v91;
    *(inited + 32) = v90;
    *(inited + 40) = v59;
    type metadata accessor for CVBuffer(0);
    *(inited + 72) = v60;
    *(inited + 48) = a1;
    v61 = a1;
    sub_19A330370(inited);
    swift_setDeallocating();
    sub_19A2F3FA0(inited + 32, &qword_1EAFA2F00);
LABEL_26:
    v62 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v63 = sub_19A544CF4();
    v77 = MEMORY[0x1EEE9AC00](v63);
    MEMORY[0x1EEE9AC00](v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
    sub_19A5735DC();

    return;
  }

  if (v90 != 5)
  {
    sub_19A5062C0();
    swift_allocError();
    *v64 = 1;
    swift_willThrow();
    return;
  }

  v12 = sub_19A566830();
  v83 = 0;
  v89 = a3;
  v87 = a5;
  v84 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v13 = swift_allocObject();
  v86 = xmmword_19A590570;
  *(v13 + 16) = xmmword_19A590570;
  sub_19A2F1600(0, &qword_1ED823EA8);
  *(v13 + 32) = sub_19A57372C();
  *(v13 + 40) = sub_19A57372C();
  v14 = [v12 shape];
  v15 = sub_19A57308C();

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x19A901520](2, v15);
  }

  else
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
      __break(1u);
      goto LABEL_40;
    }

    v16 = *(v15 + 48);
  }

  v17 = v16;

  *(v13 + 48) = v17;
  v18 = [v12 shape];
  v19 = sub_19A57308C();

  v88 = a4;
  if ((v19 & 0xC000000000000001) == 0)
  {
    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v20 = *(v19 + 56);
      goto LABEL_10;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = MEMORY[0x19A901520](3, v19);
LABEL_10:
  v21 = v20;

  *(v13 + 56) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v86;
  *(v22 + 32) = sub_19A57372C();
  *(v22 + 40) = sub_19A57372C();
  *(v22 + 48) = sub_19A57372C();
  *(v22 + 56) = sub_19A57372C();
  v23 = sub_19A57307C();

  v24 = sub_19A57307C();
  v90 = 0;
  v25 = [v12 sliceAtOrigin:v23 shape:v24 squeeze:0 error:&v90];

  v26 = v90;
  if (!v25)
  {
    v65 = v90;

    sub_19A570D1C();

    swift_willThrow();
    return;
  }

  v85 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v86;
  v28 = v26;
  *(v27 + 32) = sub_19A57372C();
  *(v27 + 40) = sub_19A57372C();
  *(v27 + 48) = sub_19A57372C();
  *(v27 + 56) = sub_19A57372C();
  v29 = sub_19A57307C();

  v30 = sub_19A57307C();
  v90 = 0;
  v31 = v12;
  v32 = [v12 sliceAtOrigin:v29 shape:v30 squeeze:0 error:&v90];

  v33 = v90;
  if (!v32)
  {
    v66 = v90;

    sub_19A570D1C();

    swift_willThrow();
    v67 = &v98;
LABEL_36:

    return;
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v86;
  v35 = v33;
  *(v34 + 32) = sub_19A57372C();
  *(v34 + 40) = sub_19A57372C();
  *(v34 + 48) = sub_19A57372C();
  *(v34 + 56) = sub_19A57372C();
  v36 = sub_19A57307C();

  v37 = sub_19A57307C();

  v90 = 0;
  v38 = [v31 sliceAtOrigin:v36 shape:v37 squeeze:0 error:&v90];

  v39 = v90;
  if (!v38)
  {
    v69 = v90;
    sub_19A570D1C();

    swift_willThrow();
    return;
  }

  v82 = v31;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_19A590950;
  v41 = v85;
  *(v40 + 32) = v85;
  *(v40 + 40) = v32;
  *(v40 + 48) = v38;
  v42 = sub_19A2F1600(0, &qword_1ED823EE0);
  v43 = v39;
  v85 = v41;
  v12 = v32;
  v80 = v38;
  v78 = v42;
  v44 = sub_19A57307C();

  v45 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v44 alongAxis:1 dataType:65568];

  v79 = v45;
  v46 = [v45 shape];
  v13 = sub_19A57308C();

  if (!(v13 >> 62))
  {
    v47 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_15;
  }

LABEL_41:
  v47 = sub_19A573B4C();
LABEL_15:
  v81 = v12;
  if (v47)
  {
    v90 = MEMORY[0x1E69E7CC0];
    sub_19A3225A0(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
    }

    v48 = 0;
    v49 = v90;
    v50 = v13;
    *&v86 = v13 & 0xC000000000000001;
    v51 = v47;
    do
    {
      if (v86)
      {
        v52 = MEMORY[0x19A901520](v48);
      }

      else
      {
        v52 = *(v50 + 8 * v48 + 32);
      }

      v53 = v52;
      v54 = [v52 integerValue];

      v90 = v49;
      v56 = v49[2];
      v55 = v49[3];
      if (v56 >= v55 >> 1)
      {
        sub_19A3225A0((v55 > 1), v56 + 1, 1);
        v49 = v90;
      }

      ++v48;
      v49[2] = v56 + 1;
      v49[v56 + 4] = v54;
      v50 = v13;
    }

    while (v51 != v48);
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DD8);
  sub_19A5735DC();
  if (!v83)
  {
    v70 = sub_19A505568(v49, v90);

    if (v70)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
      v71 = swift_initStackObject();
      *(v71 + 16) = xmmword_19A576E10;
      MEMORY[0x1EEE9AC00](v71);
      sub_19A5735DC();
      v72 = v82;
      v73 = v91;
      *(v71 + 32) = v90;
      *(v71 + 72) = v78;
      v74 = v79;
      *(v71 + 40) = v73;
      *(v71 + 48) = v74;
      v75 = v74;
      sub_19A330370(v71);
      swift_setDeallocating();
      sub_19A2F3FA0(v71 + 32, &qword_1EAFA2F00);

      goto LABEL_26;
    }

    sub_19A5062C0();
    swift_allocError();
    *v76 = 0;
    swift_willThrow();

    v67 = &v97;
    goto LABEL_36;
  }

LABEL_44:
  swift_unexpectedError();
  __break(1u);
}

unint64_t Encoder.Error.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ELL;
  if (a1 != 2)
  {
    v1 = 0xD000000000000024;
  }

  v2 = 0xD000000000000016;
  if (!a1)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_19A504B78()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A504C44()
{
  sub_19A572E4C();
}

uint64_t sub_19A504CFC()
{
  sub_19A5740BC();
  sub_19A572E4C();

  return sub_19A57410C();
}

uint64_t sub_19A504DC4@<X0>(_BYTE *a1@<X8>)
{
  result = _s13DiffusionBase7EncoderV5ErrorO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_19A504DF4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "unsupportedInputFormat";
  v4 = 0xD00000000000001ELL;
  v5 = "missingImageEncoderDescription";
  if (v2 != 3)
  {
    v5 = "tDescriptionNotFound";
  }

  if (v2 != 2)
  {
    v4 = 0xD000000000000024;
    v3 = v5;
  }

  v6 = 0xD000000000000016;
  if (*v1)
  {
    v7 = "sampleInputShapeNotCorrect";
  }

  else
  {
    v6 = 0xD00000000000001ALL;
    v7 = "pooled_embedding";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v6 = v4;
    v8 = v3;
  }

  *a1 = v6;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t sub_19A504E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_19A573F1C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_19A504F10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v4 = 0;
  v25 = a2;
  while (1)
  {
    v6 = *(a1 + v4 + 32);
    v8 = *(a1 + v4 + 40);
    v7 = *(a1 + v4 + 48);
    v9 = *(a1 + v4 + 56);
    v10 = *(a1 + v4 + 60);
    v11 = *(a2 + v4 + 32);
    v12 = *(a2 + v4 + 40);
    v13 = *(a2 + v4 + 48);
    v14 = *(a2 + v4 + 56);
    v15 = *(a2 + v4 + 60);
    if (v6 != 10)
    {
      break;
    }

    if (v11 != 10)
    {
      return 0;
    }

LABEL_64:
    if (v7)
    {
      if (!v13)
      {
        goto LABEL_78;
      }

      if (v8 == v12 && v7 == v13)
      {
      }

      else
      {
        v21 = sub_19A573F1C();

        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_78;
    }

    if (v10)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v9 == v14)
      {
        v5 = v15;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    v4 += 32;
    --v2;
    a2 = v25;
    if (!v2)
    {
      return 1;
    }
  }

  if (v11 == 10)
  {
    return 0;
  }

  v24 = *(a1 + v4 + 60);
  if (*(a1 + v4 + 32) > 4u)
  {
    if (*(a1 + v4 + 32) <= 6u)
    {
      if (v6 == 5)
      {
        v17 = 0x61727473756C6C69;
        v16 = 0xEC0000006E6F6974;
      }

      else
      {
        v16 = 0xE600000000000000;
        v17 = 0x686374656B73;
      }
    }

    else if (v6 == 7)
    {
      v17 = 0x63735F656C797473;
      v16 = 0xEE00656C62626972;
    }

    else if (v6 == 8)
    {
      v16 = 0xE800000000000000;
      v17 = 0x737265705F6D636CLL;
    }

    else
    {
      v17 = 0xD000000000000014;
      v16 = 0x800000019A596540;
    }
  }

  else if (*(a1 + v4 + 32) <= 1u)
  {
    if (*(a1 + v4 + 32))
    {
      v16 = 0xE90000000000006ELL;
      v17 = 0x6F6974616D696E61;
    }

    else
    {
      v16 = 0xE400000000000000;
      v17 = 1936876912;
    }
  }

  else if (v6 == 2)
  {
    v16 = 0xE800000000000000;
    v17 = 0x7472615F656E696CLL;
  }

  else if (v6 == 3)
  {
    v16 = 0xE500000000000000;
    v17 = 0x696A6F6D65;
  }

  else
  {
    v16 = 0xE300000000000000;
    v17 = 7168876;
  }

  v23 = *(a1 + v4 + 40);
  v18 = *(a2 + v4 + 60);
  if (*(a2 + v4 + 32) > 4u)
  {
    if (*(a2 + v4 + 32) <= 6u)
    {
      if (v11 == 5)
      {
        v19 = 0xEC0000006E6F6974;
        if (v17 != 0x61727473756C6C69)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v17 != 0x686374656B73)
        {
          goto LABEL_63;
        }
      }
    }

    else if (v11 == 7)
    {
      v19 = 0xEE00656C62626972;
      if (v17 != 0x63735F656C797473)
      {
        goto LABEL_63;
      }
    }

    else if (v11 == 8)
    {
      v19 = 0xE800000000000000;
      if (v17 != 0x737265705F6D636CLL)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v19 = 0x800000019A596540;
      if (v17 != 0xD000000000000014)
      {
        goto LABEL_63;
      }
    }
  }

  else if (*(a2 + v4 + 32) <= 1u)
  {
    if (*(a2 + v4 + 32))
    {
      v19 = 0xE90000000000006ELL;
      if (v17 != 0x6F6974616D696E61)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v19 = 0xE400000000000000;
      if (v17 != 1936876912)
      {
        goto LABEL_63;
      }
    }
  }

  else if (v11 == 2)
  {
    v19 = 0xE800000000000000;
    if (v17 != 0x7472615F656E696CLL)
    {
      goto LABEL_63;
    }
  }

  else if (v11 == 3)
  {
    v19 = 0xE500000000000000;
    if (v17 != 0x696A6F6D65)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v19 = 0xE300000000000000;
    if (v17 != 7168876)
    {
      goto LABEL_63;
    }
  }

  if (v16 == v19)
  {

    v10 = v24;
    v15 = v18;
    v8 = v23;
    goto LABEL_64;
  }

LABEL_63:
  v20 = sub_19A573F1C();

  v10 = v24;
  v15 = v18;
  v8 = v23;
  if (v20)
  {
    goto LABEL_64;
  }

LABEL_78:

  return 0;
}

uint64_t sub_19A5053D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A505430(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 68);
    v4 = a1 + 40;
    do
    {
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      v8 = *(v4 + 24);
      v9 = *(v4 + 28);
      v10 = *(v3 - 7);
      v11 = *(v3 - 5);
      v12 = *(v3 - 3);
      v13 = *(v3 - 1);
      v14 = *v3;
      if (*v4)
      {
        if (!v10 || (*(v4 - 8) != *(v3 - 9) || *v4 != v10) && (sub_19A573F1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v7)
      {
        if (!v12 || (v6 != v11 || v7 != v12) && (sub_19A573F1C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v12)
      {
        return 0;
      }

      if (v9)
      {
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
        if (v8 == v13)
        {
          v5 = v14;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v4 += 40;
      v3 += 10;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_19A505568(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_19A5055C4(void *a1, uint64_t a2, uint64_t a3)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3300);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  sub_19A4D04E4(a3, &v30 - v8);
  v10 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10) == 1)
  {
    sub_19A2F3FA0(v9, &qword_1EAFA3300);
    v11 = [objc_opt_self() defaultOptions];
  }

  else
  {
    v11 = [objc_opt_self() defaultOptions];
    v12 = v10[6];
    v33 = a2;
    v34 = v3;
    v13 = v9[v12];
    v14 = v10[8];
    v15 = v9[v10[7]];
    v31 = v9[v14];
    v32 = v13;
    v16 = objc_allocWithZone(MEMORY[0x1E695FE88]);
    v17 = sub_19A570DEC();
    v18 = sub_19A572CCC();
    v19 = [v16 initWithOutputDirectory:v17 prefix:v18 shouldOverwrite:v32 modelIOFrameData:v15 segmentIOFrameData:v31];

    [v11 setInferenceFrameDataSerialization_];
    a2 = v33;
    sub_19A5068AC(v9);
  }

  v35[0] = 0;
  v20 = [a1 predictionFromFeatures:a2 options:v11 error:v35];

  if (!v20)
  {
    v29 = v35[0];
    sub_19A570D1C();

    swift_willThrow();
    return;
  }

  v21 = v35[0];
  v22 = [v20 featureNames];
  v23 = sub_19A57337C();
  sub_19A506A1C(v23);
  v25 = v24;

  if (v25)
  {

    v26 = sub_19A572CCC();
    v27 = [v20 featureValueForName_];

    if (v27)
    {
      v28 = [v27 multiArrayValue];

      if (v28)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
        sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
        sub_19A5726AC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_19A505988(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v5 = sub_19A572AFC();
  sub_19A506920(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {

    v10 = [v9 type];

    *a2 = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_19A505A70(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v5 = sub_19A572AFC();
  sub_19A506920(v5);
  v7 = v6;
  v9 = v8;

  if (v7)
  {

    v10 = [v9 name];

    v11 = sub_19A572CFC();
    v13 = v12;

    *a2 = v11;
    a2[1] = v13;
  }

  else
  {
    __break(1u);
  }
}

void sub_19A505B74(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 modelDescription];
  v5 = [v4 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v6 = sub_19A572AFC();
  sub_19A506920(v6);
  v8 = v7;
  v10 = v9;

  if (!v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = [v10 multiArrayConstraint];

  if (v11)
  {

    v12 = [v11 shape];

    sub_19A2F1600(0, &qword_1ED823EA8);
    v13 = sub_19A57308C();

    if (v13 >> 62)
    {
      v14 = sub_19A573B4C();
      v23 = a2;
      if (v14)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = a2;
      if (v14)
      {
LABEL_5:
        v24 = MEMORY[0x1E69E7CC0];
        sub_19A3225A0(0, v14 & ~(v14 >> 63), 0);
        if ((v14 & 0x8000000000000000) == 0)
        {
          v22 = v2;
          v15 = 0;
          v16 = v24;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x19A901520](v15, v13);
            }

            else
            {
              v17 = *(v13 + 8 * v15 + 32);
            }

            v18 = v17;
            v19 = [v17 integerValue];

            v21 = *(v24 + 16);
            v20 = *(v24 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_19A3225A0((v20 > 1), v21 + 1, 1);
            }

            ++v15;
            *(v24 + 16) = v21 + 1;
            *(v24 + 8 * v21 + 32) = v19;
          }

          while (v14 != v15);

          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_16:
    *v23 = v16;
    return;
  }

LABEL_19:
  __break(1u);
}

void *static Encoder.getInputImageDimensions()()
{
  if (qword_1ED824F98 != -1)
  {
    swift_once();
  }

  v2 = off_1ED824FA0;

  os_unfair_lock_lock(v2 + 6);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
  }

  else
  {
    type metadata accessor for AppleDiffusionResourceFactory(0);
    swift_allocObject();
    v19 = sub_19A561E50();
    if (v0)
    {
      os_unfair_lock_unlock(v2 + 6);

      return v1;
    }

    v4 = v19;
    swift_weakAssign();
  }

  os_unfair_lock_unlock(v2 + 6);

  v5 = *(v4 + OBJC_IVAR____TtC13DiffusionBase29AppleDiffusionResourceFactory_modelDescription);

  if (!*(v5 + 16) || (v6 = sub_19A31FCAC(4), (v7 & 1) == 0))
  {

    sub_19A5062C0();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    return v1;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = [v8 inputDescriptionsByName];
  sub_19A2F1600(0, &unk_1ED823EB0);
  v10 = sub_19A572AFC();

  if (!*(v10 + 16) || (v11 = sub_19A31F6BC(0x6567616D69, 0xE500000000000000), (v12 & 1) == 0))
  {

    sub_19A5062C0();
    swift_allocError();
    *v20 = 3;
    swift_willThrow();

    return v1;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = [v13 valueConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32C0);
  v1 = sub_19A572AFC();

  if (!v1[2] || (sub_19A31F6BC(0xD000000000000011, 0x800000019A59CE70), (v15 & 1) == 0))
  {

LABEL_19:
    sub_19A5062C0();
    swift_allocError();
    *v21 = 4;
    swift_willThrow();

    return v1;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v17 = v16;
  v1 = [v16 pixelsWide];
  [v17 pixelsHigh];

  swift_unknownObjectRelease();
  return v1;
}

void sub_19A506178(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void *)@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = MEMORY[0x19A902330]();
  sub_19A548268(a1, a2, a3, a4, a5, a6);
  objc_autoreleasePoolPop(v12);
}

void sub_19A506200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v13 = MEMORY[0x19A902330]();
  sub_19A547AEC(a1, a2, a3, a4, a5);
  if (v6)
  {
    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v15 = v14;
    objc_autoreleasePoolPop(v13);
    *a6 = v15;
  }
}

unint64_t sub_19A5062C0()
{
  result = qword_1EAFA3240;
  if (!qword_1EAFA3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3240);
  }

  return result;
}

uint64_t _s13DiffusionBase7EncoderV7modelAt13configuration17encoderEntryPointAC10Foundation3URLV_So20MLModelConfigurationCSSSgtcfC_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v29 = a1;
  v30 = a3;
  v27 = a2;
  v28 = sub_19A570EAC();
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_19A5735CC();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A5735BC();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_19A57298C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v22[1] = sub_19A2F1600(0, &unk_1EAF9E7A0);
  sub_19A57297C();
  v10 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_19A4EADE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2C60);
  sub_19A2F12E4(&unk_1EAF9E840, &unk_1EAFA2C60);
  sub_19A57388C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v23);
  v11 = v24;
  sub_19A5735FC();
  if (v11)
  {

    v10 = sub_19A31CE20(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_19A31CE20((v12 > 1), v13 + 1, 1, v10);
    }

    v14 = v30;
    *(v10 + 2) = v13 + 1;
    v15 = &v10[16 * v13];
    *(v15 + 4) = v14;
    *(v15 + 5) = v11;
  }

  v16 = v25;
  v17 = v26;
  v19 = v28;
  v18 = v29;
  (*(v26 + 16))(v25, v29, v28);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v20 = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v16, v27, v10, "latent image encoder", 20, 2);
  (*(v17 + 8))(v18, v19);
  return v20;
}

uint64_t _s13DiffusionBase7EncoderV5ErrorO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_19A573C2C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_19A5067B0()
{
  result = qword_1EAFA3260;
  if (!qword_1EAFA3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA3260);
  }

  return result;
}

uint64_t sub_19A506804(uint64_t *a1, int a2)
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

uint64_t sub_19A50684C(uint64_t result, int a2, int a3)
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

uint64_t sub_19A5068AC(uint64_t a1)
{
  v2 = type metadata accessor for PipelineConfiguration.InferenceFrameDiagnosticsConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_19A506920(uint64_t a1)
{
  v2 = sub_19A57389C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_19A50B0D4(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_19A5069A0(uint64_t a1)
{
  v2 = sub_19A57389C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_19A50B164(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_19A506A1C(uint64_t a1)
{
  v2 = sub_19A57389C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_19A50B1B8(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t Unet.init(modelAt:configuration:)(uint64_t a1, void *a2)
{
  v4 = sub_19A570EAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_19A576E00;
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for ManagedMLModel(0);
  swift_allocObject();
  v9 = a2;
  *(v8 + 32) = ManagedMLModel.init(modelAt:configuration:entryPoints:name:)(v7, v9, MEMORY[0x1E69E7CC0], "noise_predictor", 15, 2);

  (*(v5 + 8))(a1, v4);
  return v8;
}

uint64_t sub_19A506C14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v88 = a2;
  v87 = a1;
  v75 = sub_19A57274C();
  v86 = *(v75 - 8);
  v7 = MEMORY[0x1EEE9AC00](v75);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  v12 = type metadata accessor for ManagedMLModel.SendableMLFeatureValue(0);
  v84 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  v96 = a3;
  v97 = a4;
  v98 = v4;
  v18 = *(v4 + OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_queue);
  v90 = v4;
  v91 = v87;
  v92 = v88;
  v93 = sub_19A50B814;
  v94 = &v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3288);
  v19 = v18;
  v20 = v89;
  sub_19A5735DC();
  if (v20)
  {
    return v19;
  }

  v21 = v86;
  v88 = v15;
  v83 = v12;
  v80 = v11;
  v74 = v9;
  v79 = v17;
  v22 = v99;
  v23 = *(v99 + 16);
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v78 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  sub_19A4E43AC(0, v23, 0);
  v19 = v101;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3290);
  v70 = result;
  v25 = 0;
  v69 = v22 + 32;
  v73 = (v21 + 32);
  v72 = (v21 + 16);
  v71 = (v21 + 8);
  v26 = v79;
  v27 = v80;
  v68 = v22;
  v67 = v23;
  while (v25 < *(v22 + 16))
  {
    v77 = v19;
    v76 = v25 + 1;
    v28 = *(v69 + 8 * v25);
    v29 = sub_19A573BBC();
    v30 = v29;
    v31 = v28 + 64;
    v32 = 1 << *(v28 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v28 + 64);
    v35 = (v32 + 63) >> 6;
    v81 = v29 + 64;
    v85 = v28;

    v36 = 0;
    v37 = v84;
    v82 = v30;
    while (v34)
    {
      v38 = __clz(__rbit64(v34));
      v86 = (v34 - 1) & v34;
LABEL_16:
      v41 = v38 | (v36 << 6);
      v42 = *(v85 + 56);
      v43 = (*(v85 + 48) + 16 * v41);
      v44 = *v43;
      v89 = v43[1];
      sub_19A50B848(v42 + *(v37 + 72) * v41, v26);
      sub_19A50B848(v26, v88);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v87 = v44;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v46 = v75;
          (*v73)(v27, v88, v75);
          sub_19A2F1600(0, &unk_1EAF9E7B8);
          (*v72)(v74, v27, v46);
          v47 = v89;

          v48 = sub_19A57359C();
          v49 = v27;
          v26 = v79;
          v50 = v48;
          (*v71)(v49, v46);
        }

        else
        {
          v58 = *v88;
          v59 = objc_opt_self();
          v47 = v89;

          v50 = [v59 featureValueWithPixelBuffer_];
        }

        result = sub_19A50B8AC(v26);
        v30 = v82;
      }

      else
      {
        v51 = v88[1];
        v53 = v88[2];
        v52 = v88[3];
        v54 = v88[4];
        v99 = *v88;
        v19 = v99;
        v100 = v51;

        sub_19A356EC8(v19, v51);
        v55 = v78;
        v56 = sub_19A56CFB0(&v99, v53, v52, v54);
        v78 = v55;
        if (v55)
        {

          sub_19A33EFC4(v19, v51);

          sub_19A50B8AC(v79);
          sub_19A33EFC4(v99, v100);

          return v19;
        }

        v57 = v56;
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        v50 = [objc_opt_self() featureValueWithMultiArray_];

        sub_19A33EFC4(v19, v51);
        v26 = v79;
        sub_19A50B8AC(v79);
        result = sub_19A33EFC4(v99, v100);
        v30 = v82;
        v47 = v89;
      }

      *(v81 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v60 = (v30[6] + 16 * v41);
      *v60 = v87;
      v60[1] = v47;
      *(v30[7] + 8 * v41) = v50;
      v61 = v30[2];
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      v37 = v84;
      if (v62)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v30[2] = v63;
      v27 = v80;
      v34 = v86;
    }

    v39 = v36;
    while (1)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v36 >= v35)
      {
        break;
      }

      v40 = *(v31 + 8 * v36);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v86 = (v40 - 1) & v40;
        goto LABEL_16;
      }
    }

    v19 = v77;
    v101 = v77;
    v65 = *(v77 + 16);
    v64 = *(v77 + 24);
    if (v65 >= v64 >> 1)
    {
      result = sub_19A4E43AC((v64 > 1), v65 + 1, 1);
      v19 = v101;
    }

    *(v19 + 16) = v65 + 1;
    *(v19 + 8 * v65 + 32) = v30;
    v25 = v76;
    v22 = v68;
    if (v76 == v67)
    {

      return v19;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

int64_t sub_19A5073B4()
{
  result = [v0 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v9 = MEMORY[0x1E69E7CC0];
      sub_19A4E43AC(0, result, 0);
      v4 = 0;
      v3 = v9;
      do
      {
        v5 = [v0 featuresAtIndex_];
        swift_getObjectType();
        v6 = sub_19A50ACC8();
        swift_unknownObjectRelease();
        v8 = *(v9 + 16);
        v7 = *(v9 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19A4E43AC((v7 > 1), v8 + 1, 1);
        }

        ++v4;
        *(v9 + 16) = v8 + 1;
        *(v9 + 8 * v8 + 32) = v6;
      }

      while (v2 != v4);
    }

    return v3;
  }

  return result;
}

int64_t sub_19A5074CC()
{
  v1 = v0;
  result = [v0 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v11 = MEMORY[0x1E69E7CC0];
      sub_19A4E43AC(0, result, 0);
      v5 = 0;
      v4 = v11;
      do
      {
        v9 = v5;
        sub_19A50AEE4(v1, &v9, &v10);
        v6 = v10;
        v11 = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_19A4E43AC((v7 > 1), v8 + 1, 1);
          v4 = v11;
        }

        ++v5;
        *(v4 + 16) = v8 + 1;
        *(v4 + 8 * v8 + 32) = v6;
      }

      while (v3 != v5);
    }

    return v4;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Unet.loadResources()()
{
  v2 = v1;
  v19 = v0;
  if (v0 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v4 = 0;
    v5 = &qword_1ED824000;
    v18 = i;
    while ((v19 & 0xC000000000000001) != 0)
    {
      MEMORY[0x19A901520](v4, v19);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v20 = v6;
      if (v5[424] != -1)
      {
        swift_once();
      }

      v7 = sub_19A5723FC();
      __swift_project_value_buffer(v7, qword_1ED82BD48);

      v8 = sub_19A5723DC();
      v9 = sub_19A57354C();

      v10 = v9;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v21 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v2;
        v16 = sub_19A31F114(v13, v14, &v21);
        i = v18;

        *(v11 + 4) = v16;
        v2 = v15;
        _os_log_impl(&dword_19A2DE000, v8, v10, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v17 = v11;
        v5 = &qword_1ED824000;
        MEMORY[0x19A902C50](v17, -1, -1);
      }

      sub_19A5735DC();

      if (!v2)
      {
        ++v4;
        if (v20 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v4 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

Swift::Void __swiftcall Unet.unloadResources()()
{
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_19A573B4C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A901520](i, v1);
      }

      else
      {
      }

      ManagedMLModel.unloadResources()();
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Unet.prewarmResources()()
{
  v2 = v1;
  v3 = v0;
  if (v0 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A573B4C())
  {
    v5 = 0;
    v20 = v3 & 0xFFFFFFFFFFFFFF8;
    v21 = v3 & 0xC000000000000001;
    v6 = &qword_1ED824000;
    v19 = i;
    while (v21)
    {
      MEMORY[0x19A901520](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

LABEL_7:
      v23 = v7;
      if (v6[424] != -1)
      {
        swift_once();
      }

      v8 = sub_19A5723FC();
      __swift_project_value_buffer(v8, qword_1ED82BD48);

      v9 = sub_19A5723DC();
      v10 = sub_19A57354C();

      v22 = v10;
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v24 = v12;
        *v11 = 136446210;
        v13 = sub_19A57397C();
        v15 = v3;
        v16 = v2;
        v17 = sub_19A31F114(v13, v14, &v24);
        i = v19;

        *(v11 + 4) = v17;
        v2 = v16;
        v3 = v15;
        _os_log_impl(&dword_19A2DE000, v9, v22, "Loading resources for %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
        MEMORY[0x19A902C50](v12, -1, -1);
        v18 = v11;
        v6 = &qword_1ED824000;
        MEMORY[0x19A902C50](v18, -1, -1);
      }

      sub_19A5735DC();
      if (v2)
      {

        return;
      }

      ManagedMLModel.unloadResources()();

      ++v5;
      if (v23 == i)
      {
        return;
      }
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_20;
    }

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

void sub_19A507BE0(uint64_t a1, void *a2, void *a3, void *a4, float a5)
{
  v61 = a2;
  v62 = a3;
  *&v66 = a1;
  v7 = LODWORD(a5);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0);
  v63 = *(v65 - 8);
  v8 = MEMORY[0x1EEE9AC00](v65);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v13 = *(v12 - 8);
  v71 = v12;
  v72 = v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v60 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
  v22 = swift_allocObject();
  v68 = xmmword_19A576E20;
  *(v22 + 16) = xmmword_19A576E20;
  *(v22 + 32) = a5;
  *(v22 + 36) = a5;
  v73 = v22;
  v23 = &unk_19A5905B0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
  v64 = v21;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3268);
  v25 = swift_allocObject();
  *(v25 + 16) = v68;
  if ((v7 & 0x7FFFFFFF) > 0x7F7FFFFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a5 <= -2147500000.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a5 >= 2147500000.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v25 + 32) = a5;
  *(v25 + 36) = a5;
  v73 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3270);
  sub_19A2F12E4(&qword_1EAFA3278, &qword_1EAFA3270);
  v26 = v70;
  sub_19A57264C();
  v27 = Unet.usePORParameters()();
  v21 = sub_19A2F1600(0, &qword_1ED823EE0);
  if (v27)
  {
    v24 = v63;
    (*(v63 + 16))(v10, v26, v65);
    sub_19A2F12E4(&qword_1EAFA3280, &qword_1EAFA30F0);
    v28 = sub_19A57351C();
  }

  else
  {
    (*(v72 + 16))(v19, v64, v71);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
    v28 = sub_19A57351C();
    v24 = v63;
  }

  v29 = v67;
  v30 = v66;
  v31 = MEMORY[0x1EEE9AC00](v28);
  *(&v60 - 4) = a4;
  *(&v60 - 3) = v31;
  v32 = v62;
  *(&v60 - 2) = v61;
  *(&v60 - 1) = v32;
  v7 = v31;
  v33 = v29;
  v34 = sub_19A4DAFD8(sub_19A50BC34, (&v60 - 6), v30);

  v23 = v33;
  if (v33)
  {

LABEL_13:
    (*(v24 + 8))(v70, v65);
    (*(v72 + 8))(v64, v71);
    return;
  }

  *&v68 = a4;
  if (!(v34 >> 62))
  {

    sub_19A573FEC();
    goto LABEL_11;
  }

LABEL_37:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
  sub_19A573B8C();

LABEL_11:

  v35 = objc_allocWithZone(MEMORY[0x1E695FE30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
  v36 = sub_19A57307C();

  v37 = [v35 initWithFeatureProviderArray_];

  v38 = v37;
  v39 = sub_19A5096E8(v38, v68);
  if (v23)
  {

    goto LABEL_13;
  }

  v40 = v39;

  v41 = [v40 count];
  if ((v41 & 0x8000000000000000) == 0)
  {
    if (!v41)
    {

      swift_unknownObjectRelease();
      (*(v24 + 8))(v70, v65);
      (*(v72 + 8))(v64, v71);
      return;
    }

    v60 = v38;
    v61 = v7;
    v62 = 0;
    v73 = MEMORY[0x1E69E7CC0];
    *&v68 = v41;
    sub_19A4E436C(0, v41, 0);
    v42 = 0;
    v43 = v73;
    v67 = (v72 + 32);
    v66 = xmmword_19A576E00;
    v69 = v16;
    while (1)
    {
      v16 = v21;
      v44 = v42++;
      v7 = [v40 featuresAtIndex_];
      v21 = [v7 featureNames];
      v45 = sub_19A57337C();
      v24 = v45;
      v46 = 0;
      v47 = 0;
      v48 = 1 << *(v45 + 32);
      while (1)
      {
        v49 = *(v45 + 8 * v47 + 56);
        if (v49)
        {
          break;
        }

        ++v47;
        v46 -= 64;
        if ((v48 + 63) >> 6 == v47)
        {
          goto LABEL_38;
        }
      }

      v50 = __clz(__rbit64(v49));
      if (v50 - v48 == v46)
      {
        break;
      }

      if (-v46 < 0 || (v50 - v46) >= v48)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (((*(v45 + 56 + 8 * (v47 & 0x3FFFFFFFFFFFFFFLL)) >> v50) & 1) == 0)
      {
        goto LABEL_33;
      }

      v51 = sub_19A572CCC();
      v52 = [v7 featureValueForName_];

      if (!v52)
      {
        goto LABEL_41;
      }

      v53 = [v52 multiArrayValue];

      if (!v53)
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
      v54 = swift_allocObject();
      *(v54 + 16) = v66;
      *(v54 + 32) = v53;
      v55 = v53;
      v21 = v16;
      v23 = sub_19A57307C();

      v56 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v23 alongAxis:0 dataType:65568];

      v57 = v69;
      sub_19A57267C();
      swift_unknownObjectRelease();

      v73 = v43;
      v59 = *(v43 + 16);
      v58 = *(v43 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_19A4E436C(v58 > 1, v59 + 1, 1);
        v43 = v73;
      }

      *(v43 + 16) = v59 + 1;
      (*(v72 + 32))(v43 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v59, v57, v71);
      if (v42 == v68)
      {

        swift_unknownObjectRelease();
        (*(v63 + 8))(v70, v65);
        (*(v72 + 8))(v64, v71);
        return;
      }
    }

LABEL_38:

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

Swift::Bool __swiftcall Unet.usePORParameters()()
{
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_18:
    v2 = sub_19A573B4C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = &OBJC_IVAR____TtC13DiffusionBase14ManagedMLModel_loadedModel;
      do
      {
        if (v5)
        {
          v8 = MEMORY[0x19A901520](v3, v1);
          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return 1;
          }
        }

        else
        {
          if (v3 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v1 + 8 * v3 + 32);

          v9 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_15;
          }
        }

        v10 = v8 + *v7;
        os_unfair_lock_lock(v10);
        sub_19A569948((v10 + 8), &v23);
        os_unfair_lock_unlock(v10);
        v11 = v23;
        v12 = sub_19A57389C();
        if (v12 != 1 << *(v11 + 32))
        {
          v22 = v4;
          v13 = v2;
          v14 = v6;
          v15 = v5;
          v16 = v7;
          sub_19A50B0D4(&v23, v12, v11[9], 0, v11);

          v17 = v23;
          v18 = [v23 inputDescriptionsByName];

          sub_19A2F1600(0, &unk_1ED823EB0);
          v19 = sub_19A572AFC();

          if (*(v19 + 16))
          {
            sub_19A31F6BC(0x746E6574616CLL, 0xE600000000000000);
            if (v20)
            {
              goto LABEL_16;
            }
          }

          v7 = v16;
          v5 = v15;
          v6 = v14;
          v2 = v13;
          v4 = v22;
        }

        ++v3;
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t sub_19A50880C(unint64_t a1)
{
  sub_19A500080(0x656C706D6173, 0xE600000000000000);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!sub_19A573B4C())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v2 = MEMORY[0x19A901520](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    v3 = MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v3);
    sub_19A2F1600(0, &unk_1ED823EB0);
    sub_19A5735DC();

    return v5;
  }

  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_19A5089D0(unint64_t a1)
{
  sub_19A500080(0x7364695F656D6974, 0xE800000000000000);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!sub_19A573B4C())
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v2 = MEMORY[0x19A901520](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    v3 = MEMORY[0x1EEE9AC00](v2);
    MEMORY[0x1EEE9AC00](v3);
    sub_19A2F1600(0, &unk_1ED823EB0);
    sub_19A5735DC();

    return v5;
  }

  __break(1u);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_19A508B98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = [a1 modelDescription];
  v8 = [v7 inputDescriptionsByName];

  sub_19A2F1600(0, &unk_1ED823EB0);
  v9 = sub_19A572AFC();
  if (*(v9 + 16) && (v10 = sub_19A31F6BC(a2, a3), (v11 & 1) != 0))
  {
    v12 = v10;

    v13 = *(*(v9 + 56) + 8 * v12);

    *a4 = v13;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void sub_19A508CA8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = [v2 multiArrayConstraint];

  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = [v3 shape];

  sub_19A2F1600(0, &qword_1ED823EA8);
  v5 = sub_19A57308C();

  if (v5 >> 62)
  {
    v6 = sub_19A573B4C();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_4:
  v13 = MEMORY[0x1E69E7CC0];
  sub_19A3225A0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A901520](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      v10 = [v8 integerValue];

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19A3225A0((v11 > 1), v12 + 1, 1);
      }

      *(v13 + 16) = v12 + 1;
      *(v13 + 8 * v12 + 32) = v10;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_19A508E70@<X0>(uint64_t a1@<X0>, void (**a2)(id, char *, uint64_t)@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v81 = a6;
  v95 = a5;
  v94 = a4;
  v92 = a2;
  v80 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32A0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v91 = (&v79 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v88 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DC8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A5792A0;
  v93 = a3;
  *(inited + 32) = sub_19A500080(0x656C706D6173, 0xE600000000000000);
  *(inited + 40) = v21;
  v22 = sub_19A2F1600(0, &qword_1ED823EE0);
  v87 = a1;
  sub_19A50BBA8(a1, v19);
  v23 = sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
  v24 = sub_19A57351C();
  *(inited + 72) = v22;
  *(inited + 48) = v24;
  *(inited + 80) = sub_19A500080(0x70657473656D6974, 0xE800000000000000);
  *(inited + 88) = v25;
  *(inited + 120) = v22;
  *(inited + 96) = v93;
  *(inited + 128) = sub_19A500080(0xD000000000000015, 0x800000019A59C520);
  *(inited + 136) = v26;
  v27 = *(v88 + 16);
  v86 = v88 + 16;
  v85 = v27;
  v27(v16, v94, v14);
  v93 = v16;
  v94 = v14;
  v89 = v23;
  v28 = sub_19A57351C();
  v90 = v22;
  *(inited + 168) = v22;
  *(inited + 144) = v28;
  v29 = sub_19A330370(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2F00);
  swift_arrayDestroy();
  if (v95)
  {
    v30 = *v87;
    if ((*v87 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    if (v30 < *(v95 + 16))
    {
      v31 = *(v95 + 8 * v30 + 32);
      v32 = *(v31 + 64);
      v83 = v31 + 64;
      v33 = 1 << *(v31 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & v32;
      v82 = (v33 + 63) >> 6;
      v92 = (v88 + 32);
      v87 = v31;

      v36 = 0;
      v84 = v12;
      while (1)
      {
        if (!v35)
        {
          if (v82 <= v36 + 1)
          {
            v39 = v36 + 1;
          }

          else
          {
            v39 = v82;
          }

          v40 = v39 - 1;
          while (1)
          {
            v38 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              break;
            }

            if (v38 >= v82)
            {
              v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32A8);
              (*(*(v73 - 8) + 56))(v12, 1, 1, v73);
              v35 = 0;
              goto LABEL_19;
            }

            v35 = *(v83 + 8 * v38);
            ++v36;
            if (v35)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          break;
        }

        v38 = v36;
LABEL_18:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = v41 | (v38 << 6);
        v43 = (v87[6] + 16 * v42);
        v45 = *v43;
        v44 = v43[1];
        v46 = v88;
        v47 = v93;
        v48 = v94;
        v85(v93, v87[7] + *(v88 + 72) * v42, v94);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32A8);
        v50 = *(v49 + 48);
        v51 = v84;
        *v84 = v45;
        *(v51 + 1) = v44;
        v52 = v47;
        v12 = v51;
        (*(v46 + 32))(&v51[v50], v52, v48);
        (*(*(v49 - 8) + 56))(v12, 0, 1, v49);

        v40 = v38;
LABEL_19:
        v53 = v91;
        sub_19A50BC58(v12, v91);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA32A8);
        if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
        {

          goto LABEL_33;
        }

        v95 = v40;
        v55 = v12;
        v56 = *v53;
        v57 = v53[1];
        (*v92)(v93, v53 + *(v54 + 48), v94);
        v58 = v90;
        v59 = sub_19A57351C();
        v98 = v58;
        *&v97 = v59;
        sub_19A3355EC(&v97, v96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v29;
        v62 = sub_19A31F6BC(v56, v57);
        v63 = v29[2];
        v64 = (v61 & 1) == 0;
        v65 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          goto LABEL_38;
        }

        v66 = v61;
        if (v29[3] >= v65)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v12 = v55;
            if (v61)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_19A32CE60();
            v12 = v55;
            if (v66)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          sub_19A32A8A4(v65, isUniquelyReferenced_nonNull_native);
          v67 = sub_19A31F6BC(v56, v57);
          if ((v66 & 1) != (v68 & 1))
          {
            goto LABEL_42;
          }

          v62 = v67;
          v12 = v55;
          if (v66)
          {
LABEL_7:

            v29 = v99;
            v37 = (v99[7] + 32 * v62);
            __swift_destroy_boxed_opaque_existential_0Tm(v37);
            sub_19A3355EC(v96, v37);
            goto LABEL_8;
          }
        }

        v29 = v99;
        v99[(v62 >> 6) + 8] |= 1 << v62;
        v69 = (v29[6] + 16 * v62);
        *v69 = v56;
        v69[1] = v57;
        sub_19A3355EC(v96, (v29[7] + 32 * v62));
        v70 = v29[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_39;
        }

        v29[2] = v72;
LABEL_8:
        v36 = v95;
      }
    }

    __break(1u);
LABEL_42:
    result = sub_19A57404C();
    __break(1u);
  }

  else
  {
LABEL_33:
    v74 = v81;
    v75 = v80;
    v76 = objc_allocWithZone(MEMORY[0x1E695FE48]);
    v77 = v79;
    result = sub_19A544CF4();
    if (v77)
    {
      *v74 = v77;
    }

    else
    {
      *v75 = result;
    }
  }

  return result;
}

uint64_t sub_19A5096E8(void *a1, unint64_t a2)
{
  v5 = v2;
  v6 = a2;
  v8 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_60;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_3:
  v4 = v9;
  v3 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v6 + 32);

      goto LABEL_6;
    }

    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  while (1)
  {
    v11 = MEMORY[0x19A901520](0, v6);
    v10 = v11;
LABEL_6:
    MEMORY[0x1EEE9AC00](v11);
    v41 = a1;
    v12 = sub_19A506C14(0, 0, sub_19A50BD30, v40);
    if (v5)
    {

      return v10;
    }

    v13 = v12;

    if (v8)
    {
      break;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    v16 = *(v13 + 16);
    if (!v16)
    {
      goto LABEL_36;
    }

    v48 = MEMORY[0x1E69E7CC0];
    sub_19A573A5C();
    v8 = 0;
    v3 = 0x1E695F000uLL;
    while (v8 < *(v13 + 16))
    {

      sub_19A543CFC(v17);
      objc_allocWithZone(MEMORY[0x1E695FE48]);
      a1 = sub_19A544CF4();

      ++v8;
      sub_19A573A2C();
      v6 = *(v48 + 16);
      sub_19A573A6C();
      sub_19A573A7C();
      sub_19A573A3C();
      if (v16 == v8)
      {
        goto LABEL_36;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v9 = sub_19A573B4C();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_61:
    __break(1u);
  }

  if (sub_19A573B4C() == 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  swift_getObjectType();
  v14 = sub_19A5074CC();
  if (v4 < 0)
  {
    goto LABEL_68;
  }

  a1 = v14;
  if (v8)
  {
    if (sub_19A573B4C() < 1)
    {
      goto LABEL_66;
    }

    v15 = sub_19A573B4C();
  }

  else
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_66;
    }
  }

  if (v15 >= v4)
  {
    if (!v3 || v4 == 1)
    {

      v19 = v4;
      if (!v8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      type metadata accessor for ManagedMLModel(0);

      v18 = 1;
      v19 = v4;
      do
      {
        v20 = v18 + 1;
        sub_19A57398C();
        v18 = v20;
      }

      while (v4 != v20);
      if (!v8)
      {
LABEL_28:
        v21 = v6 & 0xFFFFFFFFFFFFFF8;
        v22 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
        v4 = 1;
        if (v19 != 1)
        {
          goto LABEL_37;
        }

LABEL_32:

        swift_unknownObjectRelease();
        v25 = *(v13 + 16);
        if (v25)
        {
          v48 = MEMORY[0x1E69E7CC0];
          sub_19A573A5C();
          v26 = 0;
          while (v26 < *(v13 + 16))
          {

            sub_19A543CFC(v27);
            objc_allocWithZone(MEMORY[0x1E695FE48]);
            sub_19A544CF4();

            ++v26;
            sub_19A573A2C();
            sub_19A573A6C();
            sub_19A573A7C();
            sub_19A573A3C();
            if (v25 == v26)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_64;
        }

LABEL_36:

        v28 = objc_allocWithZone(MEMORY[0x1E695FE30]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
        v29 = sub_19A57307C();

        v10 = [v28 initWithFeatureProviderArray_];

        return v10;
      }
    }

    v21 = sub_19A573BAC();
    v4 = v23;
    v19 = v24 >> 1;
    if (v23 == v24 >> 1)
    {
      goto LABEL_32;
    }

LABEL_37:
    v42 = v19;
    v44 = v22;
    v45 = v21;
    while (v4 < v19)
    {
      v6 = *(v13 + 16);
      v46 = *(v22 + 8 * v4);
      if (v6)
      {
        v43 = v4;
        v48 = MEMORY[0x1E69E7CC0];

        sub_19A573A5C();
        if (*(v13 + 16) >= v6)
        {
          v3 = v6;
        }

        else
        {
          v3 = *(v13 + 16);
        }

        v30 = 4;
        while (v3)
        {
          if ((v30 - 4) >= *(v13 + 16))
          {
            goto LABEL_57;
          }

          if ((v30 - 4) >= a1[2])
          {
            goto LABEL_58;
          }

          v31 = *(v13 + 8 * v30);
          v32 = a1[v30];
          swift_bridgeObjectRetain_n();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v31;
          sub_19A50B55C(v32, sub_19A4F56D8, 0, isUniquelyReferenced_nonNull_native, &v47);
          v5 = 0;

          sub_19A543CFC(v47);

          objc_allocWithZone(MEMORY[0x1E695FE48]);
          v4 = sub_19A544CF4();

          sub_19A573A2C();
          v8 = *(v48 + 16);
          sub_19A573A6C();
          sub_19A573A7C();
          sub_19A573A3C();
          --v3;
          ++v30;
          if (!--v6)
          {

            v34 = v48;
            v19 = v42;
            v4 = v43;
            goto LABEL_50;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v34 = MEMORY[0x1E69E7CC0];
LABEL_50:

      if (v34 >> 62)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
        sub_19A573B8C();
      }

      else
      {
        sub_19A573FEC();
      }

      v35 = objc_allocWithZone(MEMORY[0x1E695FE30]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
      v36 = sub_19A57307C();

      v37 = [v35 initWithFeatureProviderArray_];

      MEMORY[0x1EEE9AC00](v38);
      v41 = v37;
      v8 = v46;
      v13 = sub_19A506C14(0, 0, sub_19A50B7F8, v40);
      ++v4;

      v22 = v44;
      if (v4 == v19)
      {
        goto LABEL_32;
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);

  __break(1u);
  return result;
}

void sub_19A509E70(uint64_t a1, void *a2, void *a3, uint64_t a4, id a5, float a6)
{
  v65 = a3;
  v66 = a4;
  v64 = a2;
  *&v70 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30F0);
  v69 = *(v67 - 8);
  v9 = MEMORY[0x1EEE9AC00](v67);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2C30);
  v14 = *(v13 - 8);
  v75 = v13;
  v76 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v64 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32F0);
  v23 = swift_allocObject();
  v72 = xmmword_19A576E20;
  *(v23 + 16) = xmmword_19A576E20;
  *(v23 + 32) = a6;
  *(v23 + 36) = a6;
  v77 = v23;
  v24 = &unk_19A5905B0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA32E0);
  sub_19A2F12E4(&qword_1EAF9E868, &unk_1EAFA32E0);
  v68 = v22;
  sub_19A57264C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3268);
  v26 = swift_allocObject();
  *(v26 + 16) = v72;
  if ((LODWORD(a6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a6 <= -2147500000.0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (a6 >= 2147500000.0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v26 + 32) = a6;
  *(v26 + 36) = a6;
  v77 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA3270);
  sub_19A2F12E4(&qword_1EAFA3278, &qword_1EAFA3270);
  v27 = v74;
  sub_19A57264C();
  v28 = Unet.usePORParameters()();
  v25 = sub_19A2F1600(0, &qword_1ED823EE0);
  if (v28)
  {
    v20 = v67;
    (*(v69 + 16))(v11, v27, v67);
    sub_19A2F12E4(&qword_1EAFA3280, &qword_1EAFA30F0);
    v29 = sub_19A57351C();
  }

  else
  {
    (*(v76 + 16))(v20, v68, v75);
    sub_19A2F12E4(&qword_1ED823FD0, &qword_1EAFA2C30);
    v29 = sub_19A57351C();
    v20 = v67;
  }

  v30 = v71;
  v31 = v70;
  v32 = MEMORY[0x1EEE9AC00](v29);
  *(&v64 - 6) = a5;
  *(&v64 - 5) = v32;
  *(&v64 - 4) = v34;
  *(&v64 - 3) = v33;
  *(&v64 - 2) = v35;
  v24 = a5;
  a5 = v32;
  v36 = v30;
  v37 = sub_19A4DAFD8(sub_19A50B534, (&v64 - 8), v31);
  v22 = v36;

  if (v36)
  {

LABEL_13:
    (*(v69 + 8))(v74, v20);
    (*(v76 + 8))(v68, v75);
    return;
  }

  if (!(v37 >> 62))
  {

    sub_19A573FEC();
    goto LABEL_11;
  }

LABEL_37:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
  sub_19A573B8C();

LABEL_11:

  v38 = objc_allocWithZone(MEMORY[0x1E695FE30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA30C8);
  v39 = sub_19A57307C();

  v40 = [v38 initWithFeatureProviderArray_];

  v41 = v40;
  v42 = sub_19A5096E8(v41, v24);
  if (v22)
  {

    goto LABEL_13;
  }

  v24 = v42;

  v43 = [v24 count];
  v44 = v74;
  if ((v43 & 0x8000000000000000) == 0)
  {
    if (!v43)
    {

      swift_unknownObjectRelease();
      (*(v69 + 8))(v44, v20);
      (*(v76 + 8))(v68, v75);
      return;
    }

    v64 = v41;
    v65 = a5;
    v66 = 0;
    v77 = MEMORY[0x1E69E7CC0];
    *&v72 = v43;
    sub_19A4E436C(0, v43, 0);
    v45 = 0;
    v46 = v77;
    v71 = (v76 + 32);
    v70 = xmmword_19A576E00;
    v73 = v17;
    while (1)
    {
      v17 = v25;
      v47 = v45++;
      v22 = [v24 featuresAtIndex_];
      v25 = [v22 featureNames];
      v48 = sub_19A57337C();
      v20 = v48;
      v49 = 0;
      v50 = 0;
      v51 = 1 << *(v48 + 32);
      while (1)
      {
        v52 = *(v48 + 8 * v50 + 56);
        if (v52)
        {
          break;
        }

        ++v50;
        v49 -= 64;
        if ((v51 + 63) >> 6 == v50)
        {
          goto LABEL_38;
        }
      }

      v53 = __clz(__rbit64(v52));
      if (v53 - v51 == v49)
      {
        break;
      }

      if (-v49 < 0 || (v53 - v49) >= v51)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (((*(v48 + 56 + 8 * (v50 & 0x3FFFFFFFFFFFFFFLL)) >> v53) & 1) == 0)
      {
        goto LABEL_33;
      }

      a5 = v24;

      v54 = sub_19A572CCC();
      v55 = [v22 featureValueForName_];

      if (!v55)
      {
        goto LABEL_41;
      }

      v56 = [v55 multiArrayValue];

      if (!v56)
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA3250);
      v57 = swift_allocObject();
      *(v57 + 16) = v70;
      *(v57 + 32) = v56;
      v58 = v56;
      v25 = v17;
      v59 = sub_19A57307C();

      v60 = [objc_opt_self() multiArrayByConcatenatingMultiArrays:v59 alongAxis:0 dataType:65568];

      v61 = v73;
      sub_19A57267C();
      swift_unknownObjectRelease();

      v77 = v46;
      v63 = *(v46 + 16);
      v62 = *(v46 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_19A4E436C(v62 > 1, v63 + 1, 1);
        v46 = v77;
      }

      *(v46 + 16) = v63 + 1;
      (*(v76 + 32))(v46 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v63, v61, v75);
      v24 = a5;
      if (v45 == v72)
      {

        swift_unknownObjectRelease();
        (*(v69 + 8))(v74, v67);
        (*(v76 + 8))(v68, v75);
        return;
      }
    }

LABEL_38:

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}