unint64_t sub_1D223D418()
{
  result = qword_1EC6D2EA0;
  if (!qword_1EC6D2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2EA0);
  }

  return result;
}

unint64_t sub_1D223D46C()
{
  result = qword_1EC6D2EB8;
  if (!qword_1EC6D2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2EB8);
  }

  return result;
}

uint64_t sub_1D223D4E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2EA8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D223D568()
{
  result = qword_1EC6D2ED0;
  if (!qword_1EC6D2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2ED0);
  }

  return result;
}

unint64_t sub_1D223D5BC()
{
  result = qword_1EC6D2EE0;
  if (!qword_1EC6D2EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2EE0);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1D223D658()
{
  result = qword_1EC6D2EE8;
  if (!qword_1EC6D2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2EE8);
  }

  return result;
}

uint64_t sub_1D223D6AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2EF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D223D718()
{
  result = qword_1EC6D2F00;
  if (!qword_1EC6D2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F00);
  }

  return result;
}

uint64_t dispatch thunk of VUFaceRepresentation.__allocating_init(from:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

unint64_t sub_1D223D830()
{
  result = qword_1EC6D2F08;
  if (!qword_1EC6D2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F08);
  }

  return result;
}

unint64_t sub_1D223D888()
{
  result = qword_1EC6D2F10;
  if (!qword_1EC6D2F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F10);
  }

  return result;
}

unint64_t sub_1D223D8E0()
{
  result = qword_1EC6D2F18;
  if (!qword_1EC6D2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F18);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1D223D998()
{
  result = qword_1EC6D2F38;
  if (!qword_1EC6D2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F38);
  }

  return result;
}

uint64_t sub_1D223D9EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D223DA34()
{
  result = qword_1EC6D2F50;
  if (!qword_1EC6D2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F50);
  }

  return result;
}

uint64_t sub_1D223DA88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D223DAD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1D223DB20(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2F58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D223DD38();
  sub_1D225138C();
  if (!v1)
  {
    v16 = 0;
    v8 = sub_1D225117C();
    v14[1] = v9;
    v14[2] = v8;
    v15 = 1;
    v11 = COERCE_DOUBLE(sub_1D225118C());
    v13 = v12;
    (*(v5 + 8))(v7, v4);
    if (v13)
    {
      v2 = 1.76470588;
    }

    else
    {
      v2 = v11;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

unint64_t sub_1D223DD38()
{
  result = qword_1EC6D2F60;
  if (!qword_1EC6D2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F60);
  }

  return result;
}

unint64_t sub_1D223DDA0()
{
  result = qword_1EC6D2F70;
  if (!qword_1EC6D2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F70);
  }

  return result;
}

unint64_t sub_1D223DDF8()
{
  result = qword_1EC6D2F78;
  if (!qword_1EC6D2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F78);
  }

  return result;
}

unint64_t sub_1D223DE50()
{
  result = qword_1EC6D2F80;
  if (!qword_1EC6D2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F80);
  }

  return result;
}

uint64_t sub_1D223DEA8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      if (result)
      {
        if (a8)
        {
          BNNSComputeSimilarities();
          v12 = sub_1D2218A0C(0);
          v26 = v11 >> 62;
          if ((v11 >> 62) <= 1)
          {
            if (v26)
            {
              v14 = v12;
              v43 = v12 >> 32;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                goto LABEL_80;
              }

              if (v43 < v12)
              {
LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

              if (sub_1D225028C() && __OFSUB__(v12, sub_1D22502BC()))
              {
                goto LABEL_111;
              }

LABEL_79:
              sub_1D22502DC();
              swift_allocObject();
              sub_1D225027C();

LABEL_80:
              if (v43 >= v14)
              {

                result = sub_1D225028C();
                if (result)
                {
                  if (!__OFSUB__(v14, sub_1D22502BC()))
                  {
                    goto LABEL_94;
                  }

                  goto LABEL_103;
                }

                goto LABEL_129;
              }

              goto LABEL_100;
            }

            return BNNSComputeSimilarities();
          }

          goto LABEL_30;
        }

        goto LABEL_117;
      }

      goto LABEL_115;
    }

    v16 = *(a3 + 16);
    v17 = sub_1D225028C();
    if (v17)
    {
      v18 = v17;
      v19 = sub_1D22502BC();
      if (__OFSUB__(v16, v19))
      {
LABEL_96:
        __break(1u);
        goto LABEL_97;
      }

      v20 = v16 - v19 + v18;
    }

    else
    {
      v20 = 0;
    }

    result = sub_1D22502AC();
    if (!v9)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (!v20)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    if (!a8)
    {
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    BNNSComputeSimilarities();
    v12 = sub_1D2218A0C(0);
    v34 = v11 >> 62;
    if ((v11 >> 62) <= 1)
    {
      if (!v34)
      {
        return BNNSComputeSimilarities();
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v12;
      v37 = v12 >> 32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v12 >> 32;
        if (v37 < v12)
        {
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        if (sub_1D225028C() && __OFSUB__(v12, sub_1D22502BC()))
        {
          goto LABEL_112;
        }

        sub_1D22502DC();
        swift_allocObject();
        sub_1D225027C();

        v37 = v12 >> 32;
      }

      if (v37 < v12)
      {
        goto LABEL_101;
      }

      result = sub_1D225028C();
      if (!result)
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (!__OFSUB__(v12, sub_1D22502BC()))
      {
        goto LABEL_94;
      }

      __break(1u);
      goto LABEL_90;
    }

    if (v34 != 2)
    {
      goto LABEL_34;
    }

    v38 = v11;

    sub_1D21A1ED8(v12, v38);
    sub_1D225040C();
    v39 = *(v12 + 16);
    result = sub_1D225028C();
    if (!result)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (!__OFSUB__(v39, sub_1D22502BC()))
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_51;
  }

  if (!v10)
  {
    if (result)
    {
      if (a8)
      {
        BNNSComputeSimilarities();
        v12 = sub_1D2218A0C(0);
        v13 = v11 >> 62;
        if ((v11 >> 62) <= 1)
        {
          if (v13)
          {
            v14 = v12;
            v15 = v12 >> 32;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              if (v15 < v12)
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              if (sub_1D225028C() && __OFSUB__(v12, sub_1D22502BC()))
              {
                goto LABEL_110;
              }

              sub_1D22502DC();
              swift_allocObject();
              sub_1D225027C();
            }

            if (v15 >= v12)
            {

              result = sub_1D225028C();
              if (result)
              {
                v43 = result;
                if (!__OFSUB__(v12, sub_1D22502BC()))
                {
                  goto LABEL_94;
                }

                __break(1u);
                goto LABEL_79;
              }

LABEL_128:
              __break(1u);
LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
            goto LABEL_102;
          }

          return BNNSComputeSimilarities();
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v27 = v11 & 0x3FFFFFFFFFFFFFFFLL;
        v28 = v11;

        sub_1D21A1ED8(v12, v28);
        v47 = v12;
        sub_1D225040C();
        v12 = v27;
        v29 = *(v47 + 16);
        result = sub_1D225028C();
        if (result)
        {
          v30 = sub_1D22502BC();
          LODWORD(v26) = v29 - v30;
          if (!__OFSUB__(v29, v30))
          {
            goto LABEL_33;
          }

          __break(1u);
LABEL_30:
          if (v26 == 2)
          {
            v31 = v11;

            sub_1D21A1ED8(v12, v31);
            sub_1D225040C();
            v32 = *(v12 + 16);
            result = sub_1D225028C();
            if (result)
            {
              if (!__OFSUB__(v32, sub_1D22502BC()))
              {
                goto LABEL_33;
              }

LABEL_98:
              __break(1u);
              goto LABEL_99;
            }

            goto LABEL_125;
          }

LABEL_34:
          v33 = v11;
          BNNSComputeSimilarities();
          return sub_1D21A1ED8(v12, v33);
        }

LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      goto LABEL_116;
    }

    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v21 = a3;
  if (a3 > a3 >> 32)
  {
    __break(1u);
    goto LABEL_96;
  }

  v22 = sub_1D225028C();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D22502BC();
    if (!__OFSUB__(v21, v24))
    {
      v25 = v21 - v24 + v23;
      goto LABEL_52;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

LABEL_51:
  v25 = 0;
LABEL_52:
  result = sub_1D22502AC();
  if (!v9)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (!v25)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (!a8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  BNNSComputeSimilarities();
  v12 = sub_1D2218A0C(0);
  v40 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v40 == 2)
    {
      v41 = v11;

      sub_1D21A1ED8(v12, v41);
      sub_1D225040C();
      v42 = *(v12 + 16);
      result = sub_1D225028C();
      if (result)
      {
        if (__OFSUB__(v42, sub_1D22502BC()))
        {
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_33:
        sub_1D22502AC();
        BNNSComputeSimilarities();
      }

LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    goto LABEL_34;
  }

  if (!v40)
  {
    return BNNSComputeSimilarities();
  }

  v44 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v12;
  v45 = v12 >> 32;
  if ((v44 & 1) == 0)
  {
    v46 = v12 >> 32;
    if (v45 < v12)
    {
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    if (sub_1D225028C() && __OFSUB__(v12, sub_1D22502BC()))
    {
LABEL_113:
      __break(1u);
    }

LABEL_90:
    sub_1D22502DC();
    swift_allocObject();
    sub_1D225027C();

    v45 = v46;
  }

  if (v45 < v36)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  result = sub_1D225028C();
  if (result)
  {
    if (!__OFSUB__(v36, sub_1D22502BC()))
    {
LABEL_94:
      sub_1D22502AC();
      BNNSComputeSimilarities();
    }

    goto LABEL_105;
  }

LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1D223EA28(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (!result)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    if (a2 - result < 0xFFFFFFFDFFFFFFFDLL)
    {
      __break(1u);
    }

    else if (a2 - result <= 0x1FFFFFFFFLL)
    {
      cblas_snrm2_NEWLAPACK();
      return cblas_sscal_NEWLAPACK();
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!result)
  {
    return result;
  }

  v3 = a2 - result;
  if ((a2 - result + 1) < 3)
  {
    return result;
  }

  v4 = v3 / 2;
  v5 = (v3 / 2 - 1) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 < 3)
  {
    v6 = 0;
    v7 = result;
    goto LABEL_21;
  }

  v8 = v5 + 1;
  if (v5 < 0xF)
  {
    v9 = 0;
    v6 = 0;
    goto LABEL_16;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFF0;
  v10 = (result + 16);
  v6 = 0;
  v11 = v8 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v12 = *v10[-2].i8;
    v13 = vcvtq_f32_f16(*v12.i8);
    v14 = vcvt_hight_f32_f16(v12);
    v15 = vcvtq_f32_f16(*v10);
    v16 = vcvt_hight_f32_f16(*v10->i8);
    v17 = vmulq_f32(v14, v14);
    v18 = vmulq_f32(v13, v13);
    v19 = vmulq_f32(v16, v16);
    v20 = vmulq_f32(v15, v15);
    *v6.i32 = (((((((((((((((*v6.i32 + v18.f32[0]) + v18.f32[1]) + v18.f32[2]) + v18.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3]) + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3]) + v19.f32[0]) + v19.f32[1]) + v19.f32[2]) + v19.f32[3];
    v10 += 4;
    v11 -= 16;
  }

  while (v11);
  if (v8 == v9)
  {
    goto LABEL_22;
  }

  if ((v8 & 0xC) != 0)
  {
LABEL_16:
    v7 = (result + 2 * (v8 & 0xFFFFFFFFFFFFFFFCLL));
    v21 = (result + 2 * v9);
    v22 = v9 - (v8 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v23 = *v21++;
      v24 = vcvtq_f32_f16(v23);
      v25 = vmulq_f32(v24, v24);
      *v6.i32 = (((*v6.i32 + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
      v22 += 4;
    }

    while (v22);
    if (v8 == (v8 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v7 = (result + 2 * v9);
  do
  {
LABEL_21:
    v26 = *v7++;
    _H1 = v26;
    __asm { FCVT            S1, H1 }

    *v6.i32 = *v6.i32 + (_S1 * _S1);
  }

  while (v7 != (result + ((v3 + (v3 >> 63)) & 0xFFFFFFFFFFFFFFFELL)));
LABEL_22:
  if (v3 < -1)
  {
    goto LABEL_39;
  }

  *v6.i32 = sqrtf(*v6.i32);
  if (v4 < 4)
  {
    v33 = 0;
    goto LABEL_34;
  }

  if (v4 >= 0x10)
  {
    v33 = v4 & 0xFFFFFFFFFFFFFFF0;
    v34 = vdupq_lane_s32(v6, 0);
    v35 = (result + 16);
    v36 = v4 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v37 = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvtq_f32_f16(*v35), v34)), vdivq_f32(vcvt_hight_f32_f16(*v35->i8), v34));
      *v35[-2].i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vdivq_f32(vcvtq_f32_f16(v35[-2]), v34)), vdivq_f32(vcvt_hight_f32_f16(*v35[-2].i8), v34));
      *v35->i8 = v37;
      v35 += 4;
      v36 -= 16;
    }

    while (v36);
    if (v4 == v33)
    {
      return result;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_34:
      v42 = v4 - v33;
      v43 = (result + 2 * v33);
      do
      {
        _H1 = *v43;
        __asm { FCVT            S1, H1 }

        _S1 = _S1 / *v6.i32;
        __asm { FCVT            H1, S1 }

        *v43++ = LOWORD(_S1);
        --v42;
      }

      while (v42);
      return result;
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v33;
  v33 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v39 = vdupq_lane_s32(v6, 0);
  v40 = (result + 2 * v38);
  v41 = v38 - (v4 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    *v40 = vcvt_f16_f32(vdivq_f32(vcvtq_f32_f16(*v40), v39));
    ++v40;
    v41 += 4;
  }

  while (v41);
  if (v4 != v33)
  {
    goto LABEL_34;
  }

  return result;
}

unint64_t sub_1D223ED6C()
{
  result = qword_1EC6D2F88;
  if (!qword_1EC6D2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2F88);
  }

  return result;
}

void *sub_1D223EDC0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v100 = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    _VF = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!_VF)
    {
      if (!v13)
      {
        return MEMORY[0x1E69E7CC0];
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_116;
  }

  if (!v9)
  {
    if (!BYTE6(a2))
    {
      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if (HIDWORD(a1) == a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      _VF = __OFSUB__(v16, v17);
      v15 = v16 - v17;
      if (!_VF)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  if (v14)
  {
    LODWORD(v15) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v15 = v15;
  }

  else
  {
    v15 = BYTE6(a4);
  }

LABEL_22:
  v18 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v18;
  }

  if (a6)
  {
    if ((a5 - 0x2000000000000000) >> 62 != 3)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v21 = a6;
    v22 = 4 * a5;
    sub_1D2250C6C();
  }

  else
  {
    if (a5 + 0x4000000000000000 < 0)
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

    v21 = a6;
    v22 = 2 * a5;
    sub_1D2250C7C();
  }

  v23 = a1;
  if (v9 == 2)
  {
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    _VF = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (_VF)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v24 = v21;
  }

  else
  {
    v24 = v21;
    if (v9 == 1)
    {
      LODWORD(v25) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v25 = v25;
    }

    else
    {
      v25 = BYTE6(a2);
    }
  }

  if (!v22)
  {
    goto LABEL_117;
  }

  if (v14 == 2)
  {
    v30 = *(a3 + 16);
    v29 = *(a3 + 24);
    _VF = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (!_VF)
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_43:
    v28 = BYTE6(a4);
    goto LABEL_44;
  }

  if (v14 != 1)
  {
    goto LABEL_43;
  }

  LODWORD(v28) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v28 = v28;
LABEL_44:
  v31 = v25 / v22;
  v32 = v28 / v22;
  v33 = v31 * v32;
  if (v24)
  {
    if ((v31 * v32) >> 64 == (v31 * v32) >> 63)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33)
        {
          v18 = sub_1D2250B2C();
          v18[2] = v33;
          bzero(v18 + 4, 4 * v33);
          v23 = a1;
          if (!(v33 >> 61))
          {
LABEL_49:
            v34 = v18 + 4;
            if (v9 == 2)
            {
              v56 = *(v23 + 16);
              v91 = *(v23 + 24);
              sub_1D21A3B78(a3, a4);
              v57 = sub_1D225028C();
              if (v57)
              {
                v58 = sub_1D22502BC();
                if (__OFSUB__(v56, v58))
                {
LABEL_133:
                  __break(1u);
                  goto LABEL_134;
                }

                v57 += v56 - v58;
              }

              if (!__OFSUB__(v91, v56))
              {
                v59 = sub_1D22502AC();
                if (v59 >= v91 - v56)
                {
                  v60 = v91 - v56;
                }

                else
                {
                  v60 = v59;
                }

                v61 = (v60 + v57);
                if (v57)
                {
                  v43 = v61;
                }

                else
                {
                  v43 = 0;
                }

                v62 = (v18 + 4);
                v44 = v57;
                v63 = a3;
                v64 = a4;
                v65 = v31;
                v66 = v32;
                v67 = a5;
                goto LABEL_106;
              }

              goto LABEL_131;
            }

            if (v9 != 1)
            {
              v94 = v23;
              v95 = a2;
              v96 = BYTE2(a2);
              v97 = BYTE3(a2);
              v98 = BYTE4(a2);
              v99 = BYTE5(a2);
              sub_1D21A3B78(a3, a4);
              v44 = &v94;
              v43 = &v94 + BYTE6(a2);
LABEL_105:
              v63 = a3;
              v64 = a4;
              v65 = v31;
              v66 = v32;
              v67 = a5;
              v62 = v34;
LABEL_106:
              sub_1D223DEA8(v44, v43, v63, v64, v65, v66, v67, v62);
              sub_1D21A1ED8(a3, a4);
              return v18;
            }

            v35 = v23;
            v36 = v23 >> 32;
            v37 = v36 - v35;
            if (v36 >= v35)
            {
              sub_1D21A3B78(a3, a4);
              v38 = sub_1D225028C();
              if (!v38)
              {
LABEL_55:
                v34 = v18 + 4;
                v40 = sub_1D22502AC();
                if (v40 >= v37)
                {
                  v41 = v37;
                }

                else
                {
                  v41 = v40;
                }

                v42 = (v41 + v38);
                if (v38)
                {
                  v43 = v42;
                }

                else
                {
                  v43 = 0;
                }

                v44 = v38;
                goto LABEL_105;
              }

              v39 = sub_1D22502BC();
              if (!__OFSUB__(v35, v39))
              {
                v38 += v35 - v39;
                goto LABEL_55;
              }

              goto LABEL_135;
            }

            goto LABEL_129;
          }
        }

        else if (!(v18[2] >> 61))
        {
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_123;
    }

    goto LABEL_121;
  }

  if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v33)
  {
    v45 = sub_1D2250B2C();
    *(v45 + 16) = v33;
    bzero((v45 + 32), 2 * v33);
    v23 = a1;
    goto LABEL_69;
  }

LABEL_68:
  v33 = v18[2];
  v45 = v18;
LABEL_69:
  if ((v33 + 0x4000000000000000) < 0)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v46 = v45 + 32;
  if (v9 == 2)
  {
    v68 = *(v23 + 16);
    v92 = *(v23 + 24);
    sub_1D21A3B78(a3, a4);
    v69 = sub_1D225028C();
    if (v69)
    {
      v70 = sub_1D22502BC();
      if (__OFSUB__(v68, v70))
      {
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
      }

      v69 += v68 - v70;
    }

    _VF = __OFSUB__(v92, v68);
    v71 = v92 - v68;
    if (_VF)
    {
      goto LABEL_132;
    }

    v72 = sub_1D22502AC();
    if (v72 >= v71)
    {
      v73 = v71;
    }

    else
    {
      v73 = v72;
    }

    v74 = (v73 + v69);
    if (v69)
    {
      v54 = v74;
    }

    else
    {
      v54 = 0;
    }

    v75 = v45 + 32;
    v55 = v69;
    v76 = a3;
    v77 = a4;
    v78 = v31;
    v79 = v32;
    v80 = a5;
  }

  else
  {
    if (v9 == 1)
    {
      v47 = v23;
      v48 = v23 >> 32;
      v90 = v48 - v47;
      if (v48 < v47)
      {
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      sub_1D21A3B78(a3, a4);
      v49 = sub_1D225028C();
      if (v49)
      {
        v50 = sub_1D22502BC();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_136;
        }

        v49 += v47 - v50;
      }

      v46 = v45 + 32;
      v51 = sub_1D22502AC();
      v52 = v90;
      if (v51 < v90)
      {
        v52 = v51;
      }

      v53 = (v52 + v49);
      if (v49)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = v49;
    }

    else
    {
      v94 = v23;
      v95 = a2;
      v96 = BYTE2(a2);
      v97 = BYTE3(a2);
      v98 = BYTE4(a2);
      v99 = BYTE5(a2);
      sub_1D21A3B78(a3, a4);
      v55 = &v94;
      v54 = &v94 + BYTE6(a2);
    }

    v76 = a3;
    v77 = a4;
    v78 = v31;
    v79 = v32;
    v80 = a5;
    v75 = v46;
  }

  sub_1D223DEA8(v55, v54, v76, v77, v78, v79, v80, v75);
  sub_1D21A1ED8(a3, a4);
  v81 = *(v45 + 16);
  if (v81)
  {
    v94 = v18;
    sub_1D21AF75C(0, v81, 0);
    v18 = v94;
    v82 = v94[2];
    v83 = 32;
    do
    {
      _H8 = *(v45 + v83);
      v94 = v18;
      v85 = v18[3];
      if (v82 >= v85 >> 1)
      {
        sub_1D21AF75C((v85 > 1), v82 + 1, 1);
        v18 = v94;
      }

      __asm { FCVT            S0, H8 }

      v18[2] = v82 + 1;
      *(v18 + v82 + 8) = _S0;
      v83 += 2;
      ++v82;
      --v81;
    }

    while (v81);
  }

  return v18;
}

uint64_t sub_1D223F540(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a1;
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D21AFD10(0, v1, 0);
  v36 = v39;
  v4 = v3 + 64;
  result = sub_1D2250EBC();
  v6 = result;
  v7 = 0;
  v37 = *(v3 + 36);
  v29 = v3 + 72;
  v30 = v1;
  v31 = v3 + 64;
  v32 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_29;
    }

    if (v37 != *(v3 + 36))
    {
      goto LABEL_30;
    }

    v35 = v6 >> 6;
    v34 = v7;
    v10 = *(*(v3 + 48) + 8 * v6);
    v11 = *(*(v3 + 56) + 8 * v6);
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v13 = [v12 initWithInteger_];
    v14 = v13;
    v15 = *(v11 + 16);
    if (v15)
    {
      v33 = v13;
      v38 = v2;
      sub_1D22510BC();
      v16 = 32;
      do
      {
        [objc_allocWithZone(VUWGalleryObservationIdentifier) initWithValue_];
        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        v16 += 8;
        --v15;
      }

      while (v15);

      v17 = v38;
      v2 = MEMORY[0x1E69E7CC0];
      v14 = v33;
    }

    else
    {

      v17 = v2;
    }

    v18 = v36;
    v20 = *(v36 + 16);
    v19 = *(v36 + 24);
    v4 = v31;
    if (v20 >= v19 >> 1)
    {
      result = sub_1D21AFD10((v19 > 1), v20 + 1, 1);
      v18 = v36;
    }

    *(v18 + 16) = v20 + 1;
    v21 = v18 + 16 * v20;
    *(v21 + 32) = v14;
    *(v21 + 40) = v17;
    v3 = v32;
    v8 = 1 << *(v32 + 32);
    if (v6 >= v8)
    {
      goto LABEL_31;
    }

    v22 = *(v31 + 8 * v35);
    if ((v22 & (1 << v6)) == 0)
    {
      goto LABEL_32;
    }

    v36 = v18;
    if (v37 != *(v32 + 36))
    {
      goto LABEL_33;
    }

    v23 = v22 & (-2 << (v6 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v34;
    }

    else
    {
      v24 = v35 << 6;
      v25 = v35 + 1;
      v26 = (v29 + 8 * v35);
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1D217B36C(v6, v37, 0);
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_25;
        }
      }

      result = sub_1D217B36C(v6, v37, 0);
LABEL_25:
      v9 = v34;
    }

    v7 = v9 + 1;
    v6 = v8;
    if (v7 == v30)
    {
      return v36;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

char *sub_1D223F880(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D22503FC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v15 = 5;
  type metadata accessor for VUGallery(0);
  swift_allocObject();
  v10 = VUGallery.init(for:at:)(&v15, v7);
  if (v2)
  {
    v11 = (*(v9 + 8))(a1, v8);
    type metadata accessor for VUWGallery(v11);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v3[OBJC_IVAR___VUWGallery_gallery] = v10;
    v14.receiver = v3;
    v14.super_class = VUWGallery;
    v3 = objc_msgSendSuper2(&v14, sel_init);
    (*(v9 + 8))(a1, v8);
  }

  return v3;
}

uint64_t sub_1D223FC60(void *a1)
{
  v1 = a1;
  sub_1D2250D5C();

  return v3;
}

uint64_t VUWGallery.unassignedObservations.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21A0);
  sub_1D2250D5C();
  v0 = v21;
  v1 = *(v21 + 16);
  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D22510BC();
    v2 = v0 + 56;
    result = sub_1D2250EBC();
    v4 = result;
    v5 = 0;
    v19 = v0 + 64;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v0 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v2 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      v8 = *(v0 + 36);
      [objc_allocWithZone(VUWGalleryObservationIdentifier) initWithValue_];
      v9 = v0;
      sub_1D225109C();
      sub_1D22510CC();
      sub_1D22510DC();
      result = sub_1D22510AC();
      v6 = 1 << *(v0 + 32);
      if (v4 >= v6)
      {
        goto LABEL_23;
      }

      v10 = *(v2 + 8 * v7);
      if ((v10 & (1 << v4)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v0 + 36))
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v4 & 0x3F));
      if (v11)
      {
        v6 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v7 << 6;
        v13 = v7 + 1;
        v14 = (v19 + 8 * v7);
        while (v13 < (v6 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            result = sub_1D217B36C(v4, v8, 0);
            v6 = __clz(__rbit64(v15)) + v12;
            goto LABEL_17;
          }
        }

        result = sub_1D217B36C(v4, v8, 0);
LABEL_17:
        v0 = v9;
      }

      ++v5;
      v4 = v6;
      if (v5 == v20)
      {

        v17 = v22;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v18 = sub_1D2206AD4(v17);

    return v18;
  }

  return result;
}

uint64_t sub_1D224003C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21C0);
  sub_1D2250D5C();
  return v1;
}

uint64_t sub_1D224022C(objc_class *a1, objc_class *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v10 - v5);
  v7 = sub_1D22503FC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2].isa = a1;
  v8[3].isa = a2;
  v12 = 0;

  v11 = 1;
  sub_1D2184650(&unk_1F4DAE840, v6, &v12, 0, 0x100000000, sub_1D22450F0, v8);
  sub_1D2176170(v6, &qword_1EC6D2100);
}

uint64_t sub_1D224046C(uint64_t a1, uint64_t a2, objc_class *a3, objc_class *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16[-v9];
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    v11 = &unk_1F4DAE890;
  }

  else
  {
    v11 = &unk_1F4DAE868;
  }

  v12 = sub_1D22503FC();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  if (!a2)
  {
    v13 = 0;
LABEL_9:
    v17 = v13;
    v14 = swift_allocObject();
    v14[2].isa = a3;
    v14[3].isa = a4;

    v16[12] = 1;
    sub_1D2184650(v11, v10, &v17, 0, 0x100000000, sub_1D2245228, v14);
    sub_1D2176170(v10, &qword_1EC6D2100);
  }

  if (a2 == 1)
  {
    v13 = 1;
    goto LABEL_9;
  }

LABEL_10:
  result = sub_1D22510FC();
  __break(1u);
  return result;
}

uint64_t sub_1D224075C(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, objc_class *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19[-v11];
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_9;
    }

    v13 = &unk_1F4DAE890;
  }

  else
  {
    v13 = &unk_1F4DAE868;
  }

  v14 = sub_1D22503FC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a2, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = 0;
  if (!a3)
  {
LABEL_8:
    v20 = v16;
    v17 = swift_allocObject();
    v17[2].isa = a4;
    v17[3].isa = a5;

    v19[28] = 1;
    sub_1D2184650(v13, v12, &v20, 0, 0x100000000, sub_1D2245228, v17);
    sub_1D2176170(v12, &qword_1EC6D2100);
  }

  if (a3 == 1)
  {
    v16 = 1;
    goto LABEL_8;
  }

LABEL_9:
  result = sub_1D22510FC();
  __break(1u);
  return result;
}

uint64_t sub_1D2240B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = 0;
LABEL_5:
    v8 = v5;
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    *(v6 + 24) = a3;

    sub_1D2185A1C(&v8, sub_1D2245228, v6);
  }

  if (a1 == 1)
  {
    v5 = 1;
    goto LABEL_5;
  }

  result = sub_1D22510FC();
  __break(1u);
  return result;
}

uint64_t sub_1D2240E50(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_12:
      result = sub_1D22510FC();
      __break(1u);
      return result;
    }

    v1 = qword_1F4DAE8F0;
    if (qword_1F4DAE8F0)
    {
LABEL_3:
      v2 = 0;
      for (i = 32; ; ++i)
      {
        MEMORY[0x1EEE9AC00](a1);
        a1 = sub_1D2250D5C();
        v4 = __OFADD__(v2, v6);
        v2 += v6;
        if (v4)
        {
          break;
        }

        if (!--v1)
        {

          return v2;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v1 = qword_1F4DAE8C8;
    if (qword_1F4DAE8C8)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1D2240FF0(void *a1, uint64_t a2, unint64_t a3)
{
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v34 - v7;
  v36 = type metadata accessor for VUGallery.RecognitionResult(0);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v34 - v13;
  if (a2)
  {
    sub_1D21DCF54(v14);
    v15 = type metadata accessor for VUGallery.Context(0);
    (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for VUGallery.Context(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  if (a3 >= 3)
  {
    result = sub_1D22510FC();
    __break(1u);
  }

  else
  {
    v38 = a3;
    v17 = sub_1D2180798(v35, v14, &v38);
    sub_1D2176170(v14, &qword_1EC6D30C0);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v18 + 16);
    if (v19)
    {
      v34[1] = v3;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1D22510BC();
      v20 = *(v9 + 80);
      v34[0] = v18;
      v21 = v18 + ((v20 + 32) & ~v20);
      v35 = *(v9 + 72);
      do
      {
        sub_1D2245064(v21, v11, type metadata accessor for VUGallery.RecognitionResult);
        v22 = *v11;
        v23 = objc_allocWithZone(VUWGalleryEntityIdentifier);
        v24 = [v23 initWithValue_];
        v25 = v36;
        sub_1D2174DA8(v11 + *(v36 + 20), v8, &qword_1EC6D2110);
        v26 = *(v11 + *(v25 + 24));
        v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        LODWORD(v28) = v26;
        v29 = [v27 initWithFloat_];
        v30 = sub_1D225055C();
        v31 = *(v30 - 8);
        v32 = 0;
        if ((*(v31 + 48))(v8, 1, v30) != 1)
        {
          v32 = sub_1D225052C();
          (*(v31 + 8))(v8, v30);
        }

        [objc_allocWithZone(VUWGalleryRecognitionResult) initWithEntityIdentifier:v24 tag:v32 confidence:v29];

        sub_1D2244F9C(v11, type metadata accessor for VUGallery.RecognitionResult);
        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        v21 += v35;
        --v19;
      }

      while (v19);

      return v37;
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D224152C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21E8);
  sub_1D2250D5C();
  v0 = sub_1D223F540(v4);

  if (*(v0 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D30B0);
    v1 = sub_1D225114C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1D2244100(v2, 1, &v4);

  return v4;
}

id sub_1D2241700(void *a1, void *a2)
{
  [a1 value];
  [a2 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D0);
  sub_1D2250D5C();
  if (v8)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v7;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = v3;
  return [v4 initWithFloat_];
}

uint64_t sub_1D2241980(void *a1)
{
  [a1 value];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2130);
  sub_1D2250D5C();
  v1 = v20;
  v2 = *(v20 + 16);
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D21AFD30(0, v2, 0);
    v3 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D3088);
    for (i = (v1 + 40); ; i += 4)
    {
      v5 = *i;
      v6 = [objc_allocWithZone(VUWGalleryObservationIdentifier) initWithValue_];
      v7 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v8) = v5;
      v9 = [v7 initWithFloat_];
      v10 = sub_1D225114C();

      v11 = sub_1D21970E4(v6);
      v13 = v12;

      if (v13)
      {
        break;
      }

      v10[(v11 >> 6) + 8] |= 1 << v11;
      *(v10[6] + 8 * v11) = v6;
      *(v10[7] + 8 * v11) = v9;
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_12;
      }

      v10[2] = v17;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D21AFD30((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      *(v21 + 8 * v19 + 32) = v10;
      if (!--v2)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

id sub_1D2242014(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for VUGallery.RecognitionResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D3080);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  VUGallery.inferredDeviceOwner(ignoreMeGroundTruth:)(a1, &v25 - v13);
  sub_1D2174DA8(v14, v12, &qword_1EC6D3080);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_1D2176170(v14, &qword_1EC6D3080);
    sub_1D2176170(v12, &qword_1EC6D3080);
    return 0;
  }

  else
  {
    sub_1D2244F34(v12, v8, type metadata accessor for VUGallery.RecognitionResult);
    v16 = [objc_allocWithZone(VUWGalleryEntityIdentifier) initWithValue_];
    sub_1D2174DA8(v8 + *(v5 + 20), v4, &qword_1EC6D2110);
    v17 = *(v8 + *(v5 + 24));
    v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v19) = v17;
    v20 = [v18 initWithFloat_];
    v21 = sub_1D225055C();
    v22 = *(v21 - 8);
    v23 = 0;
    if ((*(v22 + 48))(v4, 1, v21) != 1)
    {
      v23 = sub_1D225052C();
      (*(v22 + 8))(v4, v21);
    }

    v24 = [objc_allocWithZone(VUWGalleryRecognitionResult) initWithEntityIdentifier:v16 tag:v23 confidence:v20];

    sub_1D2244F9C(v8, type metadata accessor for VUGallery.RecognitionResult);
    sub_1D2176170(v14, &qword_1EC6D3080);
    return v24;
  }
}

int *sub_1D224243C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for VUGalleryUpdate(0);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VUGalleryEntityUpdate(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2420);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v37 - v15;
  v17 = v45;
  v18 = sub_1D2187B54(*(a1 + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark));
  if (!v17)
  {
    v19 = v18;
    v37 = 0;

    sub_1D2186824(v16);
    v20 = *(v46 + 48);
    v46 += 48;
    v45 = v20;
    if (v20(v16, 1, v8) != 1)
    {
      v21 = v11;
      v39 = v10;
      v40 = a3 + 16;
      v42 = a3;
      v43 = v7;
      v38 = v19;
      v41 = v13;
      v44 = v16;
      do
      {
        sub_1D2244F34(v16, v10, type metadata accessor for VUGalleryUpdate);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D2244F34(v10, v13, type metadata accessor for VUGalleryEntityUpdate);
          v22 = *v13;
          v23 = [objc_allocWithZone(VUWGalleryEntityIdentifier) initWithValue_];
          sub_1D2174DA8(&v13[v21[6]], v7, &qword_1EC6D2110);
          v24 = sub_1D225055C();
          v25 = v7;
          v26 = v24;
          v27 = *(v24 - 8);
          v28 = 0;
          if ((*(v27 + 48))(v25, 1, v24) != 1)
          {
            v29 = v22;
            v30 = v8;
            v31 = v43;
            v28 = sub_1D225052C();
            v32 = v31;
            v8 = v30;
            v22 = v29;
            v19 = v38;
            v10 = v39;
            (*(v27 + 8))(v32, v26);
          }

          v33 = [objc_allocWithZone(VUWGalleryChange) initWithUpdateType:v22 entityIdentifier:v23 tag:v28];

          a3 = v42;
          v34 = (*(v42 + 2))(v42, v33);

          v13 = v41;
          sub_1D2244F9C(v41, type metadata accessor for VUGalleryEntityUpdate);
          v7 = v43;
          v16 = v44;
          if ((v34 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          sub_1D2244F9C(v10, type metadata accessor for VUGalleryUpdate);
          v16 = v44;
        }

        sub_1D2186824(v16);
      }

      while (v45(v16, 1, v8) != 1);
    }

    swift_beginAccess();
    v11 = *(v19 + 16);
    if (v11)
    {
      v11 = [objc_allocWithZone(VUWGalleryChangeBookmark) initWithBookmark_];

      _Block_release(a3);
      return v11;
    }

    sub_1D217EE2C();
    swift_allocError();
    *v36 = 7;
    swift_willThrow();
  }

  _Block_release(a3);
  return v11;
}

uint64_t VUWGalleryEntityIdentifier.hash.getter()
{
  [v0 value];

  return sub_1D2250C3C();
}

id _sSo26VUWGalleryEntityIdentifierC19VisualUnderstandingE5valueABSi_tcfC_0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithValue_];
}

id sub_1D2242CCC(uint64_t a1, void *a2, Class *a3)
{
  *(v3 + *a2) = a1;
  v5.super_class = *a3;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1D2242D1C(char *a1, uint64_t a2, uint64_t a3, void *a4, objc_class **a5)
{
  *&a1[*a4] = a3;
  v5 = *a5;
  v7.receiver = a1;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

BOOL sub_1D2242D70(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = [v2 value];
  v6 = sub_1D2174DA8(a1, v10, &unk_1EC6D2180);
  if (v11)
  {
    a2(v6);
    if (swift_dynamicCast())
    {
      v7 = [v9 value];

      return v5 == v7;
    }
  }

  else
  {
    sub_1D2176170(v10, &unk_1EC6D2180);
  }

  return 0;
}

uint64_t sub_1D2242E68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1D2250E9C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1D2176170(v10, &unk_1EC6D2180);
  return v8 & 1;
}

id VUWGalleryPersonalizationOptions.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___VUWGalleryPersonalizationOptions_seed) = 0;
  *(v1 + OBJC_IVAR___VUWGalleryPersonalizationOptions_boundingBox) = 0;
  v3 = (v1 + OBJC_IVAR___VUWGalleryPersonalizationOptions_adapterIdentifier);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR___VUWGalleryPersonalizationOptions_keyObservation) = 0;
  v6.super_class = VUWGalleryPersonalizationOptions;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

VUWGalleryProgressStatus __swiftcall VUWGalleryProgressStatus.init(progressFraction:)(Swift::Float progressFraction)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v3 = progressFraction;

  v4 = [v2 initWithProgressFraction_];
  result.super.isa = v4;
  result.progressFraction = v5;
  return result;
}

id VUWGalleryProgressStatus.init(progressFraction:)(float a1)
{
  *(v1 + OBJC_IVAR___VUWGalleryProgressStatus_progressFraction) = a1;
  v3.super_class = VUWGalleryProgressStatus;
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall VUWGalleryChangeBookmark.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___VUWGalleryChangeBookmark_bookmark);
  v4 = sub_1D225092C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id sub_1D224393C(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id VUWGalleryChangeBookmark.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for VUGallery.Bookmark();
  v4 = sub_1D2250DEC();
  if (v4)
  {
    *&v2[OBJC_IVAR___VUWGalleryChangeBookmark_bookmark] = v4;
    v8.receiver = v2;
    v8.super_class = VUWGalleryChangeBookmark;
    v5 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    type metadata accessor for VUWGalleryChangeBookmark(v6);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id sub_1D2243BE8(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  sub_1D21DC4E4(a3, v7);

  v9 = sub_1D225055C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1D225052C();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

void sub_1D2243D24(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  if (a3)
  {
    sub_1D225054C();
    v10 = sub_1D225055C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1D225055C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a1;
  sub_1D2243E40(v9, a4);
}

uint64_t sub_1D2243E40(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  sub_1D2174DA8(a1, &v13 - v6, &qword_1EC6D2110);
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D2176170(a1, &qword_1EC6D2110);
    sub_1D2176170(v7, &qword_1EC6D2110);
    v14 = 0u;
    v15 = 0u;
  }

  else
  {
    *(&v15 + 1) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
    (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
    sub_1D2176170(a1, &qword_1EC6D2110);
  }

  v11 = *a2;
  swift_beginAccess();
  sub_1D21C7088(&v14, v2 + v11);
  return swift_endAccess();
}

void sub_1D2244100(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);

  v10 = sub_1D21970A0(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    sub_1D21B5F60(v15, v6 & 1);
    v10 = sub_1D21970A0(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1D2174E10(0, &qword_1EDC876F8);
    v10 = sub_1D22512AC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1D21B9924();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v9;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D225101C();
    MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
    sub_1D2174E10(0, &qword_1EDC876F8);
    sub_1D22510EC();
    MEMORY[0x1D3898450](39, 0xE100000000000000);
    sub_1D22510FC();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v7 = *v6;
      v25 = *a3;
      v9 = *(v6 - 1);

      v26 = sub_1D21970A0(v9);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1D21B5F60(v30, 1);
        v26 = sub_1D21970A0(v9);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v9;
      *(v32[7] + 8 * v26) = v7;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v24)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_1D224452C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D218D838([a1 value], 100, 0);
  v5 = v4;
  v6 = (v4 + 40);
  v7 = -*(v4 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
LABEL_5:

      return;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = v6 + 4;
    v10 = *v6;
    v11 = [objc_allocWithZone(VUWGalleryEntityIdentifier) initWithValue_];
    v12 = (*(a3 + 16))(a3, v11, v10);

    v6 = v9;
    if ((v12 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

char *sub_1D2244638(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v57 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v58 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = v47 - v10;
  v54 = type metadata accessor for VUGallery.EntityView(0);
  v56 = *(v54 - 8);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v13 = (v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a2 + OBJC_IVAR___VUWGallery_gallery);
  v49 = v14;
  v55 = v13;
  if (!a1)
  {
    v16 = 0;
    goto LABEL_15;
  }

  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v11)
  {
    v16 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      goto LABEL_15;
    }

    v60 = MEMORY[0x1E69E7CC0];
    result = sub_1D21AF7AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v59 = v4;
    v18 = 0;
    v16 = v60;
    v19 = a1;
    v20 = a1 & 0xC000000000000001;
    v21 = a1;
    do
    {
      if (v20)
      {
        v22 = MEMORY[0x1D3898A80](v18);
      }

      else
      {
        v22 = *(v19 + 8 * v18 + 32);
      }

      v23 = v22;
      v24 = [v22 value];

      v60 = v16;
      v26 = v16[2];
      v25 = v16[3];
      if (v26 >= v25 >> 1)
      {
        v11 = sub_1D21AF7AC((v25 > 1), v26 + 1, 1);
        v16 = v60;
      }

      ++v18;
      v16[2] = v26 + 1;
      v16[v26 + 4] = v24;
      v19 = v21;
    }

    while (i != v18);
    v14 = v49;
    v13 = v55;
    v4 = v59;
LABEL_15:
    a1 = v14[3];
    MEMORY[0x1EEE9AC00](v11);
    v47[-2] = v14;
    v47[-1] = v16;
    v27 = v4;
    sub_1D2250D5C();

    v4 = v60;
    v28 = v61;
    v53 = *(v61 + 16);
    if (!v53)
    {
LABEL_35:
      type metadata accessor for VUGallery.Bookmark();
      sub_1D2250D5C();
      v45 = v60;
      v46 = [objc_allocWithZone(VUWGalleryChangeBookmark) initWithBookmark_];

      return v46;
    }

    v47[1] = v27;
    v48 = v60;
    v51 = v61 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v50 = v57 + 16;

    v29 = 0;
    v14 = &off_1E83FA000;
    v52 = v28;
    while (v29 < *(v28 + 16))
    {
      sub_1D2245064(v51 + *(v56 + 72) * v29, v13, type metadata accessor for VUGallery.EntityView);
      v30 = *v13;
      v31 = [objc_allocWithZone(VUWGalleryEntityIdentifier) initWithValue_];
      v32 = HIBYTE(v30);
      if (HIBYTE(v30) == 2)
      {
        v59 = 1;
      }

      else if (v32 == 6)
      {
        v59 = 3;
      }

      else if (v32 == 63)
      {
        v59 = 2;
      }

      else
      {
        v59 = 0;
      }

      v33 = v54;
      sub_1D2174DA8(v13 + *(v54 + 20), v62, &qword_1EC6D2110);
      v34 = *(v13 + *(v33 + 24));
      v35 = *(v34 + 16);
      if (v35)
      {
        v60 = MEMORY[0x1E69E7CC0];
        sub_1D22510BC();
        v36 = (v34 + 32);
        do
        {
          v37 = *v36++;
          [objc_allocWithZone(VUWGalleryObservationIdentifier) initWithValue_];
          sub_1D225109C();
          sub_1D22510CC();
          sub_1D22510DC();
          sub_1D22510AC();
          --v35;
        }

        while (v35);
        v4 = v60;
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      v38 = v58;
      sub_1D2174DA8(v62, v58, &qword_1EC6D2110);
      v39 = sub_1D225055C();
      v40 = *(v39 - 8);
      v41 = (*(v40 + 48))(v38, 1, v39);
      a1 = 0;
      if (v41 != 1)
      {
        v42 = v58;
        a1 = sub_1D225052C();
        v41 = (*(v40 + 8))(v42, v39);
      }

      type metadata accessor for VUWGalleryObservationIdentifier(v41);
      v43 = sub_1D2250AEC();
      v44 = (*(v57 + 16))(v57, v31, v59, a1, v43);

      sub_1D2176170(v62, &qword_1EC6D2110);
      v13 = v55;
      sub_1D2244F9C(v55, type metadata accessor for VUGallery.EntityView);
      v28 = v52;
      if (v44)
      {
        if (++v29 != v53)
        {
          continue;
        }
      }

      v4 = v48;
      goto LABEL_35;
    }

    __break(1u);
LABEL_37:
    v11 = sub_1D2250F4C();
  }

  __break(1u);
  return result;
}

id sub_1D2244C64(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = &v3[OBJC_IVAR___VUWGalleryRecognitionResult__tag];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *&v3[OBJC_IVAR___VUWGalleryRecognitionResult_entityIdentifier] = a1;
  sub_1D2174DA8(a2, &v18 - v8, &qword_1EC6D2110);
  v11 = sub_1D225055C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v13 = a1;
    sub_1D2176170(v9, &qword_1EC6D2110);
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    *(&v21 + 1) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(v12 + 32))(boxed_opaque_existential_1, v9, v11);
    v15 = a1;
  }

  swift_beginAccess();
  sub_1D21C7088(&v20, v10);
  swift_endAccess();
  *&v3[OBJC_IVAR___VUWGalleryRecognitionResult_confidence] = a3;
  v19.receiver = v3;
  v19.super_class = VUWGalleryRecognitionResult;
  v16 = objc_msgSendSuper2(&v19, sel_init);
  sub_1D2176170(a2, &qword_1EC6D2110);
  return v16;
}

id sub_1D2244E50(uint64_t a1, void *a2, void *a3)
{
  v6 = &v3[OBJC_IVAR___VUWGalleryChange__tag];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *&v3[OBJC_IVAR___VUWGalleryChange_updateType] = a1;
  *&v3[OBJC_IVAR___VUWGalleryChange_entityIdentifier] = a2;
  if (a3)
  {
    v7 = sub_1D2174E10(0, &qword_1EDC86998);
    v8 = a3;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v13[1] = 0;
    v13[2] = 0;
  }

  v13[0] = v8;
  v13[3] = v7;
  swift_beginAccess();
  v9 = a2;
  v10 = a3;
  sub_1D21C7088(v13, v6);
  swift_endAccess();
  v12.receiver = v3;
  v12.super_class = VUWGalleryChange;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_1D2244F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2244F9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2244FFC()
{
  result = qword_1EC6D30A0;
  if (!qword_1EC6D30A0)
  {
    sub_1D2174E10(255, &qword_1EDC876F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30A0);
  }

  return result;
}

uint64_t sub_1D2245064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1D2245120()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t sub_1D224515C()
{
  result = qword_1EDC869A0;
  if (!qword_1EDC869A0)
  {
    type metadata accessor for VUWGalleryObservationIdentifier(0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC869A0);
  }

  return result;
}

uint64_t VUObservation.__allocating_init(enrollmentFaceObservation:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v17 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = sub_1D22504FC();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 1, 1, v10);
  v11(v5, 1, 1, v10);
  type metadata accessor for VUObservation();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = v17;
  *(v12 + 40) = v8;
  *(v12 + 48) = 0;
  sub_1D21C75B4(v7, v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  v13 = v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
  *v13 = v9;
  *(v13 + 4) = 0;
  *(v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding) = xmmword_1D2253ED0;
  v14 = v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
  *v14 = 0;
  *(v14 + 8) = 1;
  sub_1D21C75B4(v5, v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  v15 = v12 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
  *v15 = 0;
  *(v15 + 4) = 1;
  return v12;
}

uint64_t VUObservation.__allocating_init(type:embedding:embeddingRevision:embeddingExpiration:embeddingConfidence:contextualEmbedding:contextualEmbeddingRevision:contextualEmbeddingExpiration:contextualEmbeddingConfidence:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char a14)
{
  v21 = swift_allocObject();
  *(v21 + 16) = *a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5 & 1;
  sub_1D21C75B4(a6, v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  v22 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
  *v22 = a7;
  *(v22 + 4) = BYTE4(a7) & 1;
  v23 = (v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  *v23 = a8;
  v23[1] = a9;
  v24 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
  *v24 = a10;
  *(v24 + 8) = a11 & 1;
  sub_1D21C75B4(a12, v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  v25 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
  *v25 = a13;
  *(v25 + 4) = a14 & 1;
  return v21;
}

VisualUnderstanding::VUObservationRevision_optional __swiftcall VUObservationRevision.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 3737841665)
  {
    if (rawValue > 1)
    {
      if (rawValue == 2)
      {
        *v1 = 2;
        return rawValue;
      }

      if (rawValue == 3)
      {
        *v1 = 3;
        return rawValue;
      }
    }

    else
    {
      if (!rawValue)
      {
        *v1 = 0;
        return rawValue;
      }

      if (rawValue == 1)
      {
        *v1 = 1;
        return rawValue;
      }
    }

LABEL_22:
    *v1 = 9;
    return rawValue;
  }

  if (rawValue <= 3737841668)
  {
    if (rawValue == 3737841666)
    {
      *v1 = 8;
      return rawValue;
    }

    if (rawValue == 3737841667)
    {
      *v1 = 5;
      return rawValue;
    }

    goto LABEL_22;
  }

  if (rawValue == 3737841669)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 3737841670)
  {
    *v1 = 7;
    return rawValue;
  }

  if (rawValue != 3737841672)
  {
    goto LABEL_22;
  }

  *v1 = 6;
  return rawValue;
}

VisualUnderstanding::VUAnimalObservationRevision_optional __swiftcall VUAnimalObservationRevision.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 3737841667)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_1D22456E8()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](qword_1D2256288[v1]);
  return sub_1D225137C();
}

uint64_t sub_1D2245770()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](qword_1D2256288[v1]);
  return sub_1D225137C();
}

uint64_t sub_1D2245800()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](qword_1D22562D0[v1]);
  return sub_1D225137C();
}

uint64_t sub_1D2245888()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](qword_1D22562D0[v1]);
  return sub_1D225137C();
}

VisualUnderstanding::VUObservationType_optional __swiftcall VUObservationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D225116C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VUObservationType.rawValue.getter()
{
  v1 = 0x6E6F73726570;
  v2 = 0x656E656373;
  if (*v0 != 2)
  {
    v2 = 0x6D6F74737563;
  }

  if (*v0)
  {
    v1 = 0x6C616D696E61;
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

uint64_t sub_1D2245A14()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D2245AC4()
{
  sub_1D22509EC();
}

uint64_t sub_1D2245B60()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

void sub_1D2245C18(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F73726570;
  v4 = 0xE500000000000000;
  v5 = 0x656E656373;
  if (*v1 != 2)
  {
    v5 = 0x6D6F74737563;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C616D696E61;
    v2 = 0xE600000000000000;
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

uint64_t VUObservation.embedding.getter()
{
  v1 = *(v0 + 24);
  sub_1D21A3B64(v1, *(v0 + 32));
  return v1;
}

uint64_t VUObservation.contextualEmbedding.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  sub_1D21A3B64(v1, *(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8));
  return v1;
}

uint64_t VUObservation.init(type:embedding:embeddingRevision:embeddingExpiration:embeddingConfidence:contextualEmbedding:contextualEmbeddingRevision:contextualEmbeddingExpiration:contextualEmbeddingConfidence:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, char a14)
{
  *(v14 + 16) = *a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5 & 1;
  sub_1D21C75B4(a6, v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  v17 = v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
  *v17 = a7;
  *(v17 + 4) = BYTE4(a7) & 1;
  v18 = (v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  *v18 = a8;
  v18[1] = a9;
  v19 = v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
  *v19 = a10;
  *(v19 + 8) = a11 & 1;
  sub_1D21C75B4(a12, v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  v20 = v14 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
  *v20 = a13;
  *(v20 + 4) = a14 & 1;
  return v14;
}

uint64_t VUObservation.__allocating_init(type:embedding:embeddingRevision:embeddingConfidence:contextualEmbedding:contextualEmbeddingRevision:contextualEmbeddingConfidence:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, int a11, int a12, char a13)
{
  v37 = a7;
  v38 = a8;
  v34 = a5;
  v33 = a4;
  v36 = a10;
  v35 = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v33 - v21;
  v23 = *a1;
  v24 = sub_1D22504FC();
  v25 = *(*(v24 - 8) + 56);
  v25(v22, 1, 1, v24);
  v25(v20, 1, 1, v24);
  type metadata accessor for VUObservation();
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = a2;
  *(v26 + 32) = a3;
  *(v26 + 40) = v33;
  *(v26 + 48) = v34 & 1;
  sub_1D21C75B4(v22, v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  v27 = v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
  *v27 = a6;
  *(v27 + 4) = BYTE4(a6) & 1;
  v28 = (v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  v30 = v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
  *v30 = v35;
  *(v30 + 8) = v36 & 1;
  sub_1D21C75B4(v20, v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  v31 = v26 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
  *v31 = a12;
  *(v31 + 4) = a13 & 1;
  return v26;
}

uint64_t type metadata accessor for VUObservation()
{
  result = qword_1EDC87208;
  if (!qword_1EDC87208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *VUObservation.__allocating_init(from:embeddingExpiration:contextualEmbeddingExpiration:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    sub_1D2246E84(a2, v11);
    sub_1D2246E84(a3, v9);
    a1 = sub_1D224639C(v13, v11, v9);
    sub_1D2246EF4(a3);
    sub_1D2246EF4(a2);
  }

  else
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = _s19VisualUnderstanding13VUObservationC17animalObservationACSo08VNAnimalE0C_tcfC_0(v14);
    }

    else
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        sub_1D217EE2C();
        swift_allocError();
        *v18 = 1;
        swift_willThrow();

        sub_1D2246EF4(a3);
        sub_1D2246EF4(a2);
        return a1;
      }

      _s19VisualUnderstanding13VUObservationC16sceneObservationACSo07VNSceneE0C_tcfC_0(v16);
    }

    a1 = v15;
    sub_1D2246EF4(a3);
    sub_1D2246EF4(a2);
  }

  return a1;
}

uint64_t VUObservation.deinit()
{
  sub_1D21A1F98(*(v0 + 24), *(v0 + 32));
  sub_1D2246EF4(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  sub_1D21A1F98(*(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding), *(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8));
  sub_1D2246EF4(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  return v0;
}

uint64_t VUObservation.__deallocating_deinit()
{
  sub_1D21A1F98(*(v0 + 24), *(v0 + 32));
  sub_1D2246EF4(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  sub_1D21A1F98(*(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding), *(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding + 8));
  sub_1D2246EF4(v0 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);

  return swift_deallocClassInstance();
}

uint64_t sub_1D224639C(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v43 - v10;
  v11 = [a1 faceTorsoprint];
  if (!v11 || (v12 = a3, v13 = v11, v14 = [v11 faceprint], v13, a3 = v12, !v14))
  {
    v14 = [a1 faceprint];
  }

  v48 = v9;
  v15 = [a1 faceTorsoprint];
  if (!v15 || (v16 = a3, v17 = v15, v18 = [v15 torsoprint], v17, a3 = v16, !v18))
  {
    v18 = [a1 torsoprint];
  }

  if (v14)
  {
    v19 = [v14 descriptorData];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D225046C();
      v45 = v22;
      v46 = v21;
    }

    else
    {
      v45 = 0xF000000000000000;
      v46 = 0;
    }

    v23 = [v14 requestRevision] & 0xFFFFFFFFFFFFFFLL;
LABEL_14:
    VUObservationRevision.init(rawValue:)(v23);
    v44 = qword_1D22562E8[v51];
    sub_1D2246E84(v50, v49);
    if (v14)
    {
      [v14 confidence];
      v25 = v24;
      v47 = v3;
      if (v18)
      {
LABEL_16:
        v26 = [v18 descriptorData];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1D225046C();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0xF000000000000000;
        }

        v32 = [v18 requestRevision];
        v31 = v48;
        sub_1D2246E84(a3, v48);
        [v18 confidence];
        v33 = v34;

        goto LABEL_22;
      }
    }

    else
    {
      v25 = 0;
      v47 = v3;
      if (v18)
      {
        goto LABEL_16;
      }
    }

    v31 = v48;
    sub_1D2246E84(a3, v48);

    v28 = 0;
    v32 = 0;
    v33 = 0;
    v30 = 0xF000000000000000;
LABEL_22:
    sub_1D2246EF4(a3);
    sub_1D2246EF4(v50);
    type metadata accessor for VUObservation();
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    v36 = v45;
    *(v35 + 24) = v46;
    *(v35 + 32) = v36;
    *(v35 + 40) = v44;
    *(v35 + 48) = 0;
    sub_1D21C75B4(v49, v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
    v37 = v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
    *v37 = v25;
    *(v37 + 4) = v14 == 0;
    v38 = (v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
    *v38 = v28;
    v38[1] = v30;
    v39 = v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
    *v39 = v32;
    *(v39 + 8) = v18 == 0;
    sub_1D21C75B4(v31, v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
    result = v35;
    v41 = v35 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
    *v41 = v33;
    *(v41 + 4) = v18 == 0;
    return result;
  }

  if (v18)
  {
    v23 = 0;
    v45 = 0xF000000000000000;
    v46 = 0;
    goto LABEL_14;
  }

  sub_1D217EE2C();
  swift_allocError();
  *v42 = 1;
  swift_willThrow();

  sub_1D2246EF4(a3);
  return sub_1D2246EF4(v50);
}

id _s19VisualUnderstanding13VUObservationC17animalObservationACSo08VNAnimalE0C_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = [a1 animalprint];
  v9 = v8;
  if (!v8)
  {

    v12 = 0;
    v16 = 0;
    v14 = 0xF000000000000000;
    v19 = 0;
LABEL_8:
    v20 = sub_1D22504FC();
    v21 = *(*(v20 - 8) + 56);
    v21(v7, 1, 1, v20);
    v21(v5, 1, 1, v20);
    type metadata accessor for VUObservation();
    v22 = swift_allocObject();
    *(v22 + 16) = 1;
    *(v22 + 24) = v12;
    *(v22 + 32) = v14;
    *(v22 + 40) = v16;
    *(v22 + 48) = 0;
    sub_1D21C75B4(v7, v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
    v23 = v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
    *v23 = v19;
    *(v23 + 4) = v9 == 0;
    *(v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding) = xmmword_1D2253ED0;
    v24 = v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
    *v24 = 0;
    *(v24 + 8) = 1;
    sub_1D21C75B4(v5, v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
    v25 = v22 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
    *v25 = 0;
    *(v25 + 4) = 1;
    return v22;
  }

  result = [v8 descriptorData];
  if (result)
  {
    v11 = result;
    v12 = sub_1D225046C();
    v14 = v13;

    v15 = [v9 requestRevision];
    if ((v15 & 0xFFFFFFFFFFFFFFLL) == 0xDECAF003)
    {
      v16 = 3737841667;
    }

    else
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFLL) == 1;
    }

    v17 = v9;
    [v17 confidence];
    v19 = v18;

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void _s19VisualUnderstanding13VUObservationC16sceneObservationACSo07VNSceneE0C_tcfC_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = [a1 sceneprints];
  if (!v8)
  {
    v15 = 0;
    v17 = 0xF000000000000000;
    goto LABEL_8;
  }

  v9 = v8;
  sub_1D2247290();
  v10 = sub_1D2250AFC();

  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1D3898A80](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = [v12 descriptorData];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D225046C();
    v17 = v16;

    v18 = v12;
    [v18 requestRevision];

LABEL_8:
    v19 = sub_1D22504FC();
    v20 = *(*(v19 - 8) + 56);
    v20(v7, 1, 1, v19);
    v20(v5, 1, 1, v19);
    type metadata accessor for VUObservation();
    v21 = swift_allocObject();
    *(v21 + 16) = 2;
    *(v21 + 24) = v15;
    *(v21 + 32) = v17;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    sub_1D21C75B4(v7, v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
    v22 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
    *v22 = 0;
    *(v22 + 4) = 1;
    *(v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding) = xmmword_1D2253ED0;
    v23 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
    *v23 = 0;
    *(v23 + 8) = 1;
    sub_1D21C75B4(v5, v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
    v24 = v21 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
    *v24 = 0;
    *(v24 + 4) = 1;
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1D2246CB4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D22504FC();
    v11 = *(*(v10 - 8) + 56);
    v11(v7, 1, 1, v10);
    v11(v5, 1, 1, v10);
    sub_1D224639C(v9, v7, v5);
  }

  else
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      _s19VisualUnderstanding13VUObservationC17animalObservationACSo08VNAnimalE0C_tcfC_0(v12);
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        _s19VisualUnderstanding13VUObservationC16sceneObservationACSo07VNSceneE0C_tcfC_0(v13);
      }

      else
      {
        sub_1D217EE2C();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1D2246E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2246EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2246F60()
{
  result = qword_1EC6D30C8;
  if (!qword_1EC6D30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30C8);
  }

  return result;
}

unint64_t sub_1D2246FB8()
{
  result = qword_1EC6D30D0;
  if (!qword_1EC6D30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30D0);
  }

  return result;
}

unint64_t sub_1D2247010()
{
  result = qword_1EC6D30D8;
  if (!qword_1EC6D30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30D8);
  }

  return result;
}

unint64_t sub_1D2247068()
{
  result = qword_1EC6D30E0;
  if (!qword_1EC6D30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30E0);
  }

  return result;
}

void sub_1D2247104()
{
  sub_1D2247238();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D2247238()
{
  if (!qword_1EDC87230)
  {
    sub_1D22504FC();
    v0 = sub_1D2250E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC87230);
    }
  }
}

unint64_t sub_1D2247290()
{
  result = qword_1EC6D2B78;
  if (!qword_1EC6D2B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6D2B78);
  }

  return result;
}

uint64_t VUGalleryTransaction.Priority.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t sub_1D2247368(NSObject *a1, NSObject *a2, char *a3, void *a4, int a5)
{
  LODWORD(v181) = a5;
  v180 = a4;
  v186 = a2;
  v8 = sub_1D225085C();
  v183 = *(v8 - 8);
  v184 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v176 = (&v168 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v168 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v171 = &v168 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v172 = &v168 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v173 = (&v168 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v175 = (&v168 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v174 = &v168 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v177 = &v168 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v178 = &v168 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v168 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v168 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v41 = MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v168 - v44;
  v46 = *(v5 + 3);
  if (!v46)
  {
    v48 = sub_1D225080C();
    v49 = sub_1D2250CDC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1D2171000, v48, v49, "Bad internal state: gallery is not available", v50, 2u);
      MEMORY[0x1D3899640](v50, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();
    return a1;
  }

  v170 = v43;
  v169 = v42;
  v179 = v5;
  v191 = *a3;
  v47 = *(&v46->isa + OBJC_IVAR____TtC19VisualUnderstanding9VUGallery_client);
  v185 = v46;
  if (v47)
  {

    goto LABEL_12;
  }

  sub_1D2174DA8(v186, v35, &qword_1EC6D30C0);
  v52 = type metadata accessor for VUGallery.Context(0);
  if ((*(*(v52 - 8) + 48))(v35, 1, v52) == 1)
  {

    sub_1D2176170(v35, &qword_1EC6D30C0);
    v53 = sub_1D225055C();
    (*(*(v53 - 8) + 56))(v45, 1, 1, v53);
LABEL_10:
    sub_1D2176170(v45, &qword_1EC6D2110);
    v191 = 1;
    goto LABEL_12;
  }

  sub_1D2174DA8(v35 + *(v52 + 20), v45, &qword_1EC6D2110);

  sub_1D224C7CC(v35);
  v54 = sub_1D225055C();
  if ((*(*(v54 - 8) + 48))(v45, 1, v54) == 1)
  {
    goto LABEL_10;
  }

  sub_1D2176170(v45, &qword_1EC6D2110);
LABEL_12:
  objc_opt_self();
  v55 = swift_dynamicCastObjCClass();
  if (!v55)
  {
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (!v69)
    {
      objc_opt_self();
      v113 = swift_dynamicCastObjCClass();
      if (v113)
      {
        v35 = v113;
        v70 = a1;
        v114 = [v35 sceneprints];
        if (v114)
        {
          v115 = v114;
          sub_1D2174E10(0, &qword_1EC6D2B78);
          v74 = sub_1D2250AFC();

          if (v74 >> 62)
          {
            goto LABEL_125;
          }

          result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_74;
          }

LABEL_126:
        }

        v164 = sub_1D225080C();
        v165 = sub_1D2250CDC();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&dword_1D2171000, v164, v165, "Unable to add observation: observation has no sceneprint", v166, 2u);
          MEMORY[0x1D3899640](v166, -1, -1);
        }

        sub_1D217EE2C();
        swift_allocError();
        *v167 = 1;
        swift_willThrow();
      }

      else
      {
        v128 = sub_1D225080C();
        v129 = sub_1D2250CDC();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          *v130 = 0;
          _os_log_impl(&dword_1D2171000, v128, v129, "Unable to add the observation: given observation is not of type VNAnimalObservation, VNFaceObservation or VNSceneObservation", v130, 2u);
          MEMORY[0x1D3899640](v130, -1, -1);
        }

        sub_1D217EE2C();
        swift_allocError();
        *v131 = 1;
        swift_willThrow();
      }

      goto LABEL_130;
    }

    v70 = v69;
    v11 = a1;
    v71 = [v70 animalprint];
    if (!v71)
    {
      v123 = sub_1D225080C();
      v124 = sub_1D2250CDC();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&dword_1D2171000, v123, v124, "Unable to add observation: observation has no animalprint", v125, 2u);
        MEMORY[0x1D3899640](v125, -1, -1);
      }

      sub_1D217EE2C();
      swift_allocError();
      *v126 = 1;
      swift_willThrow();

      goto LABEL_130;
    }

    v72 = v71;
    LODWORD(v188[0]) = 0;
    v73 = [v70 labels];
    sub_1D2174E10(0, &qword_1EDC869B8);
    v39 = sub_1D2250AFC();

    v177 = v72;
    if (v39 >> 62)
    {
      v74 = sub_1D2250F4C();
      v175 = v11;
      if (v74)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v74 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v175 = v11;
      if (v74)
      {
LABEL_27:
        if (v74 < 1)
        {
          goto LABEL_124;
        }

        v75 = 0;
        v178 = *MEMORY[0x1E6984880];
        do
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x1D3898A80](v75, v39);
          }

          else
          {
            v76 = *(v39 + 8 * v75 + 32);
          }

          a1 = v76;
          v77 = [v76 identifier];
          v78 = sub_1D225095C();
          v80 = v79;

          if (v78 == sub_1D225095C() && v80 == v81)
          {
          }

          else
          {
            v83 = sub_1D225126C();

            if (v83)
            {
            }

            else
            {
              v84 = [a1 identifier];
              v85 = sub_1D225095C();
              v87 = v86;

              if (v85 == sub_1D225095C() && v87 == v88)
              {
              }

              else
              {
                v89 = sub_1D225126C();

                if ((v89 & 1) == 0)
                {
                  goto LABEL_40;
                }
              }
            }
          }

          LODWORD(v188[0]) = 1065353216;
LABEL_40:
          ++v75;
        }

        while (v74 != v75);
      }
    }

    v11 = v185;
    v35 = v176;
    v148 = sub_1D225084C();
    MEMORY[0x1EEE9AC00](v148);
    v127 = v179;
    *(&v168 - 8) = v11;
    *(&v168 - 7) = v127;
    v19 = v177;
    v149 = v186;
    *(&v168 - 6) = v177;
    *(&v168 - 5) = v149;
    *(&v168 - 4) = v188;
    *(&v168 - 3) = &v191;
    *(&v168 - 2) = v180;
    *(&v168 - 8) = v181 & 1;
    v150 = v182;
    sub_1D2250D4C();
    if (v150)
    {
      (*(v183 + 8))(v35, v184);

      return a1;
    }

    v182 = 0;
    (*(v183 + 8))(v35, v184);
    a1 = v187[0];
    v151 = v149;
    v70 = v173;
    sub_1D2174DA8(v151, v173, &qword_1EC6D30C0);
    v39 = sub_1D225080C();
    v152 = sub_1D2250CCC();
    if (!os_log_type_enabled(v39, v152))
    {

      sub_1D2176170(v70, &qword_1EC6D30C0);
      goto LABEL_113;
    }

    v153 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v187[0] = v35;
    *v153 = 134218242;
    *(v153 + 4) = a1;
    *(v153 + 12) = 2080;
    v19 = v172;
    sub_1D2174DA8(v70, v172, &qword_1EC6D30C0);
    v154 = type metadata accessor for VUGallery.Context(0);
    v155 = (*(*(v154 - 8) + 48))(v19, 1, v154);
    v184 = a1;
    if (v155 == 1)
    {
      sub_1D2176170(v19, &qword_1EC6D30C0);
      v156 = 0xE200000000000000;
      v157 = 16718;
    }

    else
    {
      v186 = v35;
      v158 = v169;
      sub_1D2174DA8(v19 + *(v154 + 20), v169, &qword_1EC6D2110);
      sub_1D224C7CC(v19);
      v19 = sub_1D225055C();
      v159 = *(v19 - 8);
      if ((*(v159 + 48))(v158, 1, v19) == 1)
      {
        sub_1D2176170(v158, &qword_1EC6D2110);
        v156 = 0xE200000000000000;
        v157 = 16718;
      }

      else
      {
        v157 = sub_1D225051C();
        v156 = v160;
        (*(v159 + 8))(v158, v19);
      }

      v70 = v173;
      v35 = v186;
    }

    sub_1D2176170(v70, &qword_1EC6D30C0);
    v70 = sub_1D21761D0(v157, v156, v187);

    *(v153 + 14) = v70;
    _os_log_impl(&dword_1D2171000, v39, v152, "Added animal observation %ld for asset %s", v153, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1D3899640](v35, -1, -1);
    MEMORY[0x1D3899640](v153, -1, -1);

    v127 = v179;
    goto LABEL_119;
  }

  v56 = v55;
  a1 = a1;
  v57 = [v56 faceTorsoprint];
  if (!v57 || (v58 = v57, v59 = [v57 faceprint], v58, !v59))
  {
    v59 = [v56 faceprint];
  }

  v60 = [v56 faceTorsoprint];
  if (!v60 || (v61 = v60, v62 = [v60 torsoprint], v61, !v62))
  {
    v64 = [v56 torsoprint];
    v19 = v64 == 0;
    if (v59 | v64)
    {
      v63 = v64;
      LODWORD(v173) = v59 == 0;
      v176 = a1;
      goto LABEL_48;
    }

    v65 = sub_1D225080C();
    v66 = sub_1D2250CDC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D2171000, v65, v66, "Unable to add observation: observation is missing at least a faceprint or a torsoprint", v67, 2u);
      MEMORY[0x1D3899640](v67, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();

LABEL_130:

    return a1;
  }

  v176 = a1;
  v19 = 0;
  LODWORD(v173) = v59 == 0;
  v63 = v62;
LABEL_48:
  v90 = sub_1D2250D8C();
  v189 = v90;
  v190 = BYTE4(v90) & 1;
  v91 = v185;
  v92 = sub_1D225084C();
  MEMORY[0x1EEE9AC00](v92);
  a1 = v179;
  *(&v168 - 10) = v91;
  *(&v168 - 9) = a1;
  *(&v168 - 8) = v59;
  *(&v168 - 7) = v63;
  v93 = v63;
  v94 = v186;
  *(&v168 - 6) = v186;
  *(&v168 - 5) = &v189;
  *(&v168 - 4) = &v191;
  *(&v168 - 3) = v180;
  *(&v168 - 16) = v181 & 1;
  v95 = v182;
  sub_1D2250D4C();
  if (v95)
  {
    (*(v183 + 8))(v15, v184);

    return a1;
  }

  v180 = v59;
  v181 = v93;
  v182 = 0;
  v11 = 0xE900000000000079;
  (*(v183 + 8))(v15, v184);
  v184 = v187[0];
  if (v19)
  {
    v96 = 0xE900000000000079;
  }

  else
  {
    v96 = 0xEA00000000006F73;
  }

  v97 = v173;
  if (v173)
  {
    v70 = 0xEA0000000000796CLL;
  }

  else
  {
    v70 = v96;
  }

  sub_1D2174DA8(v94, v178, &qword_1EC6D30C0);
  v98 = v94;
  v39 = v177;
  sub_1D2174DA8(v98, v177, &qword_1EC6D30C0);

  v99 = sub_1D225080C();
  v100 = sub_1D2250CCC();

  if (os_log_type_enabled(v99, v100))
  {
    LODWORD(v183) = v100;
    v186 = v99;
    v101 = 0x726F742B65636166;
    if (v19)
    {
      v101 = 0x6C6E6F2D65636166;
    }

    if (v97)
    {
      v102 = 0x6E6F2D6F73726F74;
    }

    else
    {
      v102 = v101;
    }

    v103 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v188[0] = v35;
    *v103 = 136316162;
    swift_beginAccess();
    if (v191)
    {
      v104 = 0x7261646E6F636573;
    }

    else
    {
      v104 = 0x7972616D697270;
    }

    if (v191)
    {
      v105 = 0xE900000000000079;
    }

    else
    {
      v105 = 0xE700000000000000;
    }

    v106 = sub_1D21761D0(v104, v105, v188);

    *(v103 + 4) = v106;
    *(v103 + 12) = 2080;
    v107 = sub_1D21761D0(v102, v70, v188);

    *(v103 + 14) = v107;
    *(v103 + 22) = 2048;
    *(v103 + 24) = v184;
    *(v103 + 32) = 2080;
    v108 = v174;
    sub_1D2174DA8(v178, v174, &qword_1EC6D30C0);
    v109 = type metadata accessor for VUGallery.Context(0);
    v110 = *(v109 - 8);
    v19 = *(v110 + 48);
    v11 = (v110 + 48);
    if ((v19)(v108, 1, v109) == 1)
    {
      sub_1D2176170(v108, &qword_1EC6D30C0);
      v111 = 0xE200000000000000;
      v112 = 16718;
    }

    else
    {
      v173 = v35;
      v132 = v170;
      sub_1D2174DA8(v108 + *(v109 + 20), v170, &qword_1EC6D2110);
      sub_1D224C7CC(v108);
      v133 = sub_1D225055C();
      v134 = *(v133 - 8);
      if ((*(v134 + 48))(v132, 1, v133) == 1)
      {
        sub_1D2176170(v132, &qword_1EC6D2110);
        v111 = 0xE200000000000000;
        v112 = 16718;
      }

      else
      {
        v112 = sub_1D225051C();
        v111 = v135;
        (*(v134 + 8))(v132, v133);
      }

      v35 = v173;
    }

    sub_1D2176170(v178, &qword_1EC6D30C0);
    v136 = sub_1D21761D0(v112, v111, v188);

    *(v103 + 34) = v136;
    *(v103 + 42) = 2048;
    v137 = v175;
    sub_1D2174DA8(v177, v175, &qword_1EC6D30C0);
    if ((v19)(v137, 1, v109) == 1)
    {
      sub_1D2176170(v137, &qword_1EC6D30C0);
      v138 = 2;
    }

    else
    {
      LODWORD(v138) = *(&v137->isa + *(v109 + 24));
      sub_1D224C7CC(v137);
      if (v138 == 3)
      {
        v138 = 2;
      }

      else
      {
        v138 = v138;
      }
    }

    v127 = v179;
    v74 = v182;
    v70 = v176;
    sub_1D2176170(v177, &qword_1EC6D30C0);
    *(v103 + 44) = v138;
    v39 = v186;
    _os_log_impl(&dword_1D2171000, v186, v183, "Added %s %s observation %ld for asset %s, source %ld", v103, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v35, -1, -1);
    MEMORY[0x1D3899640](v103, -1, -1);

    goto LABEL_120;
  }

  v127 = a1;
  v35 = &qword_1EC6D30C0;
  sub_1D2176170(v39, &qword_1EC6D30C0);

  sub_1D2176170(v178, &qword_1EC6D30C0);
LABEL_119:
  v74 = v182;
LABEL_120:
  a1 = v184;
  while (1)
  {
    isa = v127[4].isa;
    v162 = __OFADD__(isa, 1);
    v163 = (isa + 1);
    if (!v162)
    {
      v127[4].isa = v163;
      return a1;
    }

    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    result = sub_1D2250F4C();
    if (!result)
    {
      goto LABEL_126;
    }

LABEL_74:
    v178 = v70;
    if ((v74 & 0xC000000000000001) == 0)
    {
      break;
    }

    v117 = MEMORY[0x1D3898A80](0, v74);
LABEL_77:
    v118 = v117;

    a1 = v185;
    v119 = sub_1D225084C();
    v177 = &v168;
    MEMORY[0x1EEE9AC00](v119);
    v120 = v179;
    *(&v168 - 8) = a1;
    *(&v168 - 7) = v120;
    v121 = v186;
    *(&v168 - 6) = v118;
    *(&v168 - 5) = v121;
    *(&v168 - 4) = v35;
    *(&v168 - 3) = &v191;
    *(&v168 - 2) = v180;
    *(&v168 - 8) = v181 & 1;
    v122 = v182;
    sub_1D2250D4C();
    if (v122)
    {
      (*(v183 + 8))(v11, v184);

      return a1;
    }

    v181 = v118;
    v182 = 0;
    (*(v183 + 8))(v11, v184);
    a1 = v187[0];
    v139 = v121;
    v70 = v171;
    sub_1D2174DA8(v139, v171, &qword_1EC6D30C0);
    v11 = sub_1D225080C();
    v140 = sub_1D2250CCC();
    if (os_log_type_enabled(v11, v140))
    {
      v141 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v187[0] = v35;
      *v141 = 134218242;
      *(v141 + 4) = a1;
      *(v141 + 12) = 2080;
      sub_1D2174DA8(v70, v19, &qword_1EC6D30C0);
      v142 = type metadata accessor for VUGallery.Context(0);
      if ((*(*(v142 - 8) + 48))(v19, 1, v142) == 1)
      {
        sub_1D2176170(v19, &qword_1EC6D30C0);
        v143 = 0xE200000000000000;
        v19 = 16718;
      }

      else
      {
        v186 = v35;
        v144 = a1;
        sub_1D2174DA8(v19 + *(v142 + 20), v39, &qword_1EC6D2110);
        sub_1D224C7CC(v19);
        v145 = sub_1D225055C();
        v146 = *(v145 - 8);
        if ((*(v146 + 48))(v39, 1, v145) == 1)
        {
          sub_1D2176170(v39, &qword_1EC6D2110);
          v143 = 0xE200000000000000;
          v19 = 16718;
        }

        else
        {
          v19 = sub_1D225051C();
          v143 = v147;
          (*(v146 + 8))(v39, v145);
        }

        a1 = v144;
        v70 = v171;
        v35 = v186;
      }

      sub_1D2176170(v70, &qword_1EC6D30C0);
      v39 = sub_1D21761D0(v19, v143, v187);

      *(v141 + 14) = v39;
      _os_log_impl(&dword_1D2171000, v11, v140, "Added scene observation %ld for asset %s", v141, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1D3899640](v35, -1, -1);
      MEMORY[0x1D3899640](v141, -1, -1);
    }

    else
    {

      sub_1D2176170(v70, &qword_1EC6D30C0);
    }

    v127 = v179;
LABEL_113:
    v74 = v182;
  }

  if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v117 = *(v74 + 32);
    goto LABEL_77;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2248DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v98 = a8;
  v102 = a6;
  v103 = a7;
  v96 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v95 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v109 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v95 - v26;
  v27 = *(*(a1 + 16) + 16);
  v97 = *(a2 + 16);
  v108 = v27;
  if (a3)
  {

    v28 = [a3 descriptorData];
    if (v28)
    {
      v29 = v28;
      v105 = sub_1D225046C();
      v107 = v30;
    }

    else
    {
      v105 = 0;
      v107 = 0xF000000000000000;
    }

    v101 = [a3 requestRevision];
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_5:
    v100 = 0;
    v104 = 0;
    v106 = 0xF000000000000000;
    goto LABEL_12;
  }

  v101 = 0;
  v105 = 0;
  v107 = 0xF000000000000000;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_8:
  v31 = [a4 descriptorData];
  if (v31)
  {
    v32 = v31;
    v104 = sub_1D225046C();
    v106 = v33;
  }

  else
  {
    v104 = 0;
    v106 = 0xF000000000000000;
  }

  v100 = [a4 requestRevision];
LABEL_12:
  sub_1D2174DA8(a5, v22, &qword_1EC6D30C0);
  v34 = type metadata accessor for VUGallery.Context(0);
  v35 = *(*(v34 - 8) + 48);
  if (v35(v22, 1, v34) == 1)
  {
    sub_1D2176170(v22, &qword_1EC6D30C0);
    v36 = sub_1D225055C();
    (*(*(v36 - 8) + 56))(v110, 1, 1, v36);
  }

  else
  {
    sub_1D2174DA8(v22, v110, &qword_1EC6D2110);
    sub_1D224C7CC(v22);
  }

  sub_1D2174DA8(a5, v20, &qword_1EC6D30C0);
  if (v35(v20, 1, v34) == 1)
  {
    sub_1D2176170(v20, &qword_1EC6D30C0);
    v37 = sub_1D225055C();
    (*(*(v37 - 8) + 56))(v109, 1, 1, v37);
  }

  else
  {
    sub_1D2174DA8(&v20[*(v34 + 20)], v109, &qword_1EC6D2110);
    sub_1D224C7CC(v20);
  }

  sub_1D2174DA8(a5, v17, &qword_1EC6D30C0);
  if (v35(v17, 1, v34) != 1)
  {
    v38 = v17[*(v34 + 24)];
    sub_1D224C7CC(v17);
    if (a3)
    {
      goto LABEL_20;
    }

LABEL_22:
    v40 = 0;
    goto LABEL_23;
  }

  sub_1D2176170(v17, &qword_1EC6D30C0);
  v38 = 3;
  if (!a3)
  {
    goto LABEL_22;
  }

LABEL_20:
  [a3 confidence];
  v40 = v39;
LABEL_23:
  v41 = *v102;
  v42 = *(v102 + 4);
  v43 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  v44 = v108;
  result = swift_beginAccess();
  v46 = *&v44[v43];
  if (!*(v46 + 16) || (result = sub_1D2176DFC(2u), (v47 & 1) == 0))
  {
LABEL_27:
    if (!a3 || v107 >> 60 == 15 || !*(v46 + 16) || (result = sub_1D2176DFC(2u), (v50 & 1) == 0) || ((v44 = *(*(*(v46 + 56) + 8 * result) + 24)) != 0 ? (v51 = v101 == v44) : (v51 = 1), v51))
    {
      v52 = v106;
      if (!a4 || v106 >> 60 == 15 || !*(v46 + 16) || (result = sub_1D2176DFC(2u), v52 = v106, (v53 & 1) == 0) || ((v54 = *(*(*(v46 + 56) + 8 * result) + 32)) != 0 ? (v55 = v100 == v54) : (v55 = 1), v55))
      {
        v56 = v108;
        MEMORY[0x1EEE9AC00](result);
        *(&v95 - 22) = v98;
        *(&v95 - 168) = v57 & 1;
        *(&v95 - 83) = v97;
        *(&v95 - 20) = v56;
        *(&v95 - 19) = 0;
        *(&v95 - 144) = 1;
        v58 = v105;
        v59 = v107;
        *(&v95 - 17) = v105;
        *(&v95 - 16) = v59;
        v60 = v38;
        v61 = v104;
        *(&v95 - 15) = v104;
        *(&v95 - 14) = v52;
        *(&v95 - 104) = 2;
        v62 = v109;
        *(&v95 - 12) = v110;
        *(&v95 - 11) = v62;
        *(&v95 - 10) = 0;
        *(&v95 - 9) = 0;
        *(&v95 - 64) = v60;
        *(&v95 - 15) = v40;
        *(&v95 - 56) = v63;
        *(&v95 - 13) = v41;
        *(&v95 - 48) = v42;
        *(&v95 - 47) = v64 & 1;
        v65 = v100;
        *(&v95 - 5) = v101;
        *(&v95 - 32) = v63;
        *(&v95 - 3) = v65;
        *(&v95 - 16) = v66;
        v67 = v52;
        v69 = v68;
        v70 = v99;
        sub_1D2250DBC();
        if (!v70)
        {

          v71 = v111;
          v72 = v56[2];
          sub_1D2250DBC();
          sub_1D21A1F98(v61, v67);
          sub_1D21A1F98(v58, v59);

          sub_1D2176170(v109, &qword_1EC6D2110);
          result = sub_1D2176170(v110, &qword_1EC6D2110);
          *v96 = v71;
          return result;
        }

        sub_1D21A1F98(v61, v67);
        sub_1D21A1F98(v58, v59);

        goto LABEL_93;
      }

      v82 = sub_1D225080C();
      v83 = sub_1D2250CDC();
      if (!os_log_type_enabled(v82, v83))
      {
LABEL_63:

        sub_1D217EE2C();
        swift_allocError();
        *v85 = 1;
        swift_willThrow();
        sub_1D21A1F98(v104, v106);
        sub_1D21A1F98(v105, v107);
LABEL_92:

LABEL_93:
        sub_1D2176170(v109, &qword_1EC6D2110);
        return sub_1D2176170(v110, &qword_1EC6D2110);
      }

      v80 = swift_slowAlloc();
      *v80 = 134218240;
      *(v80 + 4) = v100;
      *(v80 + 12) = 2048;
      *(v80 + 14) = v54;
      v81 = "Unable to add embedding: provided contextual embedding revision (%ld) does not match the current embedding revision (%ld)";
LABEL_62:
      _os_log_impl(&dword_1D2171000, v82, v83, v81, v80, 0x16u);
      MEMORY[0x1D3899640](v80, -1, -1);
      goto LABEL_63;
    }

LABEL_58:
    v82 = sub_1D225080C();
    v83 = sub_1D2250CDC();
    if (!os_log_type_enabled(v82, v83))
    {
      goto LABEL_63;
    }

    v80 = swift_slowAlloc();
    *v80 = 134218240;
    *(v80 + 4) = v101;
    *(v80 + 12) = 2048;
    *(v80 + 14) = v44;
    v81 = "Unable to add embedding: provided embedding revision (%ld) does not match the current embedding revision (%ld)";
    goto LABEL_62;
  }

  v48 = *(*(v46 + 56) + 8 * result);
  v49 = v106;
  if (v107 >> 60 != 15)
  {
    v73 = v107 >> 62;
    if ((v107 >> 62) <= 1)
    {
      if (!v73)
      {
        v74 = BYTE6(v107);
        goto LABEL_71;
      }

      goto LABEL_68;
    }

    if (v73 != 2)
    {
      v74 = 0;
      goto LABEL_71;
    }

    v78 = *(v105 + 16);
    v77 = *(v105 + 24);
    v79 = __OFSUB__(v77, v78);
    v74 = v77 - v78;
    if (!v79)
    {
      goto LABEL_71;
    }

    __break(1u);
    goto LABEL_58;
  }

  while (1)
  {
    while (1)
    {
      if (v49 >> 60 == 15)
      {
        goto LABEL_27;
      }

      v75 = v106 >> 62;
      if ((v106 >> 62) <= 1)
      {
        if (v75)
        {
          LODWORD(v76) = HIDWORD(v104) - v104;
          if (__OFSUB__(HIDWORD(v104), v104))
          {
            goto LABEL_99;
          }

          v76 = v76;
        }

        else
        {
          v76 = BYTE6(v106);
        }

LABEL_82:
        v93 = *(v48 + 48);
        if (*(v48 + 56))
        {
          if ((v93 - 0x2000000000000000) >> 62 != 3)
          {
            goto LABEL_96;
          }

          if (v76 == 4 * v93)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v93 + 0x4000000000000000 < 0)
          {
            goto LABEL_97;
          }

          if (v76 == 2 * v93)
          {
            goto LABEL_27;
          }
        }

        v89 = sub_1D225080C();
        v90 = sub_1D2250CDC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          v92 = "Unable to add contextual embedding: contextual embedding size does not match expected size";
LABEL_90:
          _os_log_impl(&dword_1D2171000, v89, v90, v92, v91, 2u);
          MEMORY[0x1D3899640](v91, -1, -1);
        }

        goto LABEL_91;
      }

      if (v75 != 2)
      {
        v76 = 0;
        goto LABEL_82;
      }

      v87 = *(v104 + 16);
      v86 = *(v104 + 24);
      v79 = __OFSUB__(v86, v87);
      v76 = v86 - v87;
      if (!v79)
      {
        goto LABEL_82;
      }

      __break(1u);
LABEL_68:
      LODWORD(v74) = HIDWORD(v105) - v105;
      if (__OFSUB__(HIDWORD(v105), v105))
      {
        goto LABEL_98;
      }

      v74 = v74;
LABEL_71:
      v88 = *(v48 + 48);
      if (*(v48 + 56))
      {
        break;
      }

      if (v88 + 0x4000000000000000 < 0)
      {
        goto LABEL_95;
      }

      if (v74 != 2 * v88)
      {
LABEL_77:

        v89 = sub_1D225080C();
        v90 = sub_1D2250CDC();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          *v91 = 0;
          v92 = "Unable to add embedding: embedding size does not match expected size";
          goto LABEL_90;
        }

LABEL_91:

        sub_1D217EE2C();
        swift_allocError();
        *v94 = 1;
        swift_willThrow();
        sub_1D21A1F98(v104, v106);
        sub_1D21A1F98(v105, v107);

        goto LABEL_92;
      }
    }

    if ((v88 - 0x2000000000000000) >> 62 != 3)
    {
      break;
    }

    if (v74 != 4 * v88)
    {
      goto LABEL_77;
    }
  }

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
  return result;
}

uint64_t sub_1D2249988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  v72 = a8;
  v71 = a7;
  v77 = a5;
  v78 = a6;
  v69 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - v25;
  v27 = *(*(a1 + 16) + 16);
  v70 = *(a2 + 16);

  result = [a3 descriptorData];
  if (!result)
  {
    goto LABEL_45;
  }

  v29 = result;
  v79 = sub_1D225046C();
  v76 = v30;

  v75 = a3;
  v74 = [a3 requestRevision];
  sub_1D2174DA8(a4, v21, &qword_1EC6D30C0);
  v31 = type metadata accessor for VUGallery.Context(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v21, 1, v31) == 1)
  {
    sub_1D2176170(v21, &qword_1EC6D30C0);
    v33 = sub_1D225055C();
    (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
  }

  else
  {
    sub_1D2174DA8(v21, v26, &qword_1EC6D2110);
    sub_1D224C7CC(v21);
  }

  sub_1D2174DA8(a4, v19, &qword_1EC6D30C0);
  if (v32(v19, 1, v31) == 1)
  {
    sub_1D2176170(v19, &qword_1EC6D30C0);
    v34 = sub_1D225055C();
    (*(*(v34 - 8) + 56))(v80, 1, 1, v34);
  }

  else
  {
    sub_1D2174DA8(&v19[*(v31 + 20)], v80, &qword_1EC6D2110);
    sub_1D224C7CC(v19);
  }

  sub_1D2174DA8(a4, v16, &qword_1EC6D30C0);
  if (v32(v16, 1, v31) == 1)
  {
    sub_1D2176170(v16, &qword_1EC6D30C0);
    v35 = 3;
  }

  else
  {
    v35 = v16[*(v31 + 24)];
    sub_1D224C7CC(v16);
  }

  [v75 confidence];
  v37 = v36;
  v38 = *v77;
  v39 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  v40 = *(v27 + v39);
  v41 = v76;
  if (!*(v40 + 16))
  {
    goto LABEL_38;
  }

  result = sub_1D2176DFC(0x3Fu);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = *(*(v40 + 56) + 8 * result);
  v44 = v41 >> 62;
  if ((v41 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v45 = 0;
      goto LABEL_23;
    }

    v47 = v79[2];
    v46 = v79[3];
    v48 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v48)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v44)
  {
    v45 = BYTE6(v41);
LABEL_23:
    v49 = *(v43 + 48);
    if (*(v43 + 56))
    {
      if ((v49 - 0x2000000000000000) >> 62 == 3)
      {
        if (v45 != 4 * v49)
        {
LABEL_26:

          v50 = sub_1D225080C();
          v51 = sub_1D2250CDC();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1D2171000, v50, v51, "Unable to add embedding: embedding size does not match expected size", v52, 2u);
            MEMORY[0x1D3899640](v52, -1, -1);
          }

          sub_1D217EE2C();
          swift_allocError();
          *v53 = 1;
          swift_willThrow();
          sub_1D21A1ED8(v79, v41);

LABEL_41:
          sub_1D2176170(v80, &qword_1EC6D2110);
          return sub_1D2176170(v26, &qword_1EC6D2110);
        }

        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_43;
    }

    if (v49 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v45 != 2 * v49)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (*(v40 + 16))
    {
      result = sub_1D2176DFC(0x3Fu);
      if (v54)
      {
        v55 = *(*(*(v40 + 56) + 8 * result) + 24);
        if (v55)
        {
          if (v74 != v55)
          {
            v56 = sub_1D225080C();
            v57 = sub_1D2250CDC();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 134218240;
              *(v58 + 4) = v74;
              *(v58 + 12) = 2048;
              *(v58 + 14) = v55;
              _os_log_impl(&dword_1D2171000, v56, v57, "Unable to add embedding: provided embedding revision (%ld) does not match the current embedding revision (%ld)", v58, 0x16u);
              MEMORY[0x1D3899640](v58, -1, -1);
            }

            sub_1D217EE2C();
            swift_allocError();
            *v59 = 1;
            swift_willThrow();
            sub_1D21A1ED8(v79, v41);

            goto LABEL_41;
          }
        }
      }
    }

LABEL_38:
    MEMORY[0x1EEE9AC00](result);
    *(&v69 - 22) = v71;
    *(&v69 - 168) = v72 & 1;
    *(&v69 - 83) = v70;
    *(&v69 - 20) = v27;
    *(&v69 - 19) = 0;
    *(&v69 - 144) = 1;
    v60 = v79;
    *(&v69 - 17) = v79;
    *(&v69 - 16) = v41;
    *(&v69 - 15) = xmmword_1D2253ED0;
    *(&v69 - 104) = 63;
    v61 = v80;
    *(&v69 - 12) = v26;
    *(&v69 - 11) = v61;
    *(&v69 - 10) = 0;
    *(&v69 - 9) = 0;
    *(&v69 - 64) = v35;
    *(&v69 - 15) = v37;
    *(&v69 - 56) = 0;
    *(&v69 - 13) = v38;
    *(&v69 - 48) = 0;
    *(&v69 - 47) = v62 & 1;
    *(&v69 - 5) = v74;
    *(&v69 - 32) = 0;
    *(&v69 - 3) = 0;
    *(&v69 - 16) = 1;
    v64 = v63;
    v65 = v73;
    sub_1D2250DBC();
    if (!v65)
    {

      v66 = v60;
      v67 = v81;
      v68 = *(v27 + 16);
      sub_1D2250DBC();
      sub_1D21A1ED8(v66, v41);

      sub_1D2176170(v80, &qword_1EC6D2110);
      result = sub_1D2176170(v26, &qword_1EC6D2110);
      *v69 = v67;
      return result;
    }

    sub_1D21A1ED8(v60, v41);

    goto LABEL_41;
  }

  LODWORD(v45) = HIDWORD(v79) - v79;
  if (!__OFSUB__(HIDWORD(v79), v79))
  {
    v45 = v45;
    goto LABEL_23;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1D224A23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>)
{
  v70 = a8;
  v69 = a7;
  v74 = a5;
  v75 = a6;
  v67 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v66 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v76 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v66 - v25;
  v26 = *(*(a1 + 16) + 16);
  v68 = *(a2 + 16);

  result = [a3 descriptorData];
  if (!result)
  {
    goto LABEL_45;
  }

  v28 = result;
  v73 = sub_1D225046C();
  v30 = v29;

  v72 = [a3 requestRevision];
  sub_1D2174DA8(a4, v21, &qword_1EC6D30C0);
  v31 = type metadata accessor for VUGallery.Context(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v21, 1, v31) == 1)
  {
    sub_1D2176170(v21, &qword_1EC6D30C0);
    v33 = sub_1D225055C();
    (*(*(v33 - 8) + 56))(v77, 1, 1, v33);
  }

  else
  {
    sub_1D2174DA8(v21, v77, &qword_1EC6D2110);
    sub_1D224C7CC(v21);
  }

  sub_1D2174DA8(a4, v19, &qword_1EC6D30C0);
  if (v32(v19, 1, v31) == 1)
  {
    sub_1D2176170(v19, &qword_1EC6D30C0);
    v34 = sub_1D225055C();
    (*(*(v34 - 8) + 56))(v76, 1, 1, v34);
  }

  else
  {
    sub_1D2174DA8(&v19[*(v31 + 20)], v76, &qword_1EC6D2110);
    sub_1D224C7CC(v19);
  }

  sub_1D2174DA8(a4, v16, &qword_1EC6D30C0);
  if (v32(v16, 1, v31) == 1)
  {
    sub_1D2176170(v16, &qword_1EC6D30C0);
    v35 = 3;
  }

  else
  {
    v35 = v16[*(v31 + 24)];
    sub_1D224C7CC(v16);
  }

  v36 = v30;
  [v74 confidence];
  v38 = v37;
  v39 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  result = swift_beginAccess();
  v40 = *(v26 + v39);
  v41 = v73;
  if (!*(v40 + 16))
  {
    goto LABEL_38;
  }

  result = sub_1D2176DFC(6u);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = *(*(v40 + 56) + 8 * result);
  v44 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v45 = 0;
      goto LABEL_23;
    }

    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    v48 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v48)
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v44)
  {
    v45 = BYTE6(v36);
LABEL_23:
    v49 = *(v43 + 48);
    if (*(v43 + 56))
    {
      if ((v49 - 0x2000000000000000) >> 62 == 3)
      {
        if (v45 != 4 * v49)
        {
LABEL_26:

          v50 = sub_1D225080C();
          v51 = sub_1D2250CDC();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_1D2171000, v50, v51, "Unable to add embedding: embedding size does not match expected size", v52, 2u);
            MEMORY[0x1D3899640](v52, -1, -1);
          }

          sub_1D217EE2C();
          swift_allocError();
          *v53 = 1;
          swift_willThrow();
          sub_1D21A1ED8(v41, v36);

LABEL_41:
          sub_1D2176170(v76, &qword_1EC6D2110);
          return sub_1D2176170(v77, &qword_1EC6D2110);
        }

        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_43;
    }

    if (v49 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v45 != 2 * v49)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (*(v40 + 16))
    {
      result = sub_1D2176DFC(6u);
      if (v54)
      {
        v55 = *(*(*(v40 + 56) + 8 * result) + 24);
        if (v55)
        {
          if (v72 != v55)
          {
            v56 = sub_1D225080C();
            v57 = sub_1D2250CDC();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 134218240;
              *(v58 + 4) = v72;
              *(v58 + 12) = 2048;
              *(v58 + 14) = v55;
              _os_log_impl(&dword_1D2171000, v56, v57, "Unable to add embedding: provided embedding revision (%ld) does not match the current embedding revision (%ld)", v58, 0x16u);
              MEMORY[0x1D3899640](v58, -1, -1);
            }

            sub_1D217EE2C();
            swift_allocError();
            *v59 = 1;
            swift_willThrow();
            sub_1D21A1ED8(v41, v36);

            goto LABEL_41;
          }
        }
      }
    }

LABEL_38:
    MEMORY[0x1EEE9AC00](result);
    *(&v66 - 22) = v69;
    *(&v66 - 168) = v70 & 1;
    *(&v66 - 83) = v68;
    *(&v66 - 20) = v26;
    *(&v66 - 19) = 0;
    *(&v66 - 144) = 1;
    *(&v66 - 17) = v41;
    *(&v66 - 16) = v36;
    *(&v66 - 15) = xmmword_1D2253ED0;
    *(&v66 - 104) = 6;
    *(&v66 - 12) = v77;
    *(&v66 - 11) = v76;
    *(&v66 - 10) = 0;
    *(&v66 - 9) = 0;
    *(&v66 - 64) = v35;
    *(&v66 - 15) = v38;
    *(&v66 - 56) = 0;
    *(&v66 - 13) = 1065353216;
    *(&v66 - 48) = 0;
    *(&v66 - 47) = v60 & 1;
    *(&v66 - 5) = v72;
    *(&v66 - 32) = 0;
    *(&v66 - 3) = 0;
    *(&v66 - 16) = 1;
    v62 = v61;
    v63 = v71;
    sub_1D2250DBC();
    if (!v63)
    {

      v64 = v78;
      v65 = *(v26 + 16);
      sub_1D2250DBC();
      sub_1D21A1ED8(v41, v36);

      sub_1D2176170(v76, &qword_1EC6D2110);
      result = sub_1D2176170(v77, &qword_1EC6D2110);
      *v67 = v64;
      return result;
    }

    sub_1D21A1ED8(v41, v36);

    goto LABEL_41;
  }

  LODWORD(v45) = HIDWORD(v41) - v41;
  if (!__OFSUB__(HIDWORD(v41), v41))
  {
    v45 = v45;
    goto LABEL_23;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_1D224AB1C(uint64_t a1)
{
  v4 = sub_1D225085C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  if (v8)
  {

    v9 = sub_1D225084C();
    MEMORY[0x1EEE9AC00](v9);
    v20[-2] = v8;
    v20[-1] = a1;
    sub_1D2250D4C();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v14 = *(v1 + 40);
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        *(v1 + 40) = v16;
        v17 = sub_1D225080C();
        v18 = sub_1D2250CCC();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134217984;
          *(v19 + 4) = a1;
          _os_log_impl(&dword_1D2171000, v17, v18, "Removed observation %ld", v19, 0xCu);
          MEMORY[0x1D3899640](v19, -1, -1);
        }
      }
    }
  }

  else
  {
    v10 = sub_1D225080C();
    v11 = sub_1D2250CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D2171000, v10, v11, "Bad internal state: gallery is not available", v12, 2u);
      MEMORY[0x1D3899640](v12, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224ADEC(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E6530];
  *(v4 + 16) = xmmword_1D22526E0;
  v6 = MEMORY[0x1E69E65A8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = a2;

  v9 = sub_1D2250C5C();
  v7 = *(v3 + 16);
  sub_1D2250DBC();
}

void sub_1D224AF18(uint64_t a1)
{
  v4 = sub_1D225085C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  if (v8)
  {

    v9 = sub_1D225084C();
    MEMORY[0x1EEE9AC00](v9);
    v21[-2] = v8;
    v21[-1] = a1;
    sub_1D2250D4C();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v14 = *(a1 + 16);
      v15 = *(v1 + 40);
      v16 = __OFADD__(v15, v14);
      v17 = v15 + v14;
      if (v16)
      {
        __break(1u);
      }

      else
      {
        *(v1 + 40) = v17;

        v18 = sub_1D225080C();
        v19 = sub_1D2250CCC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134217984;
          *(v20 + 4) = v14;

          _os_log_impl(&dword_1D2171000, v18, v19, "Removed %ld observations", v20, 0xCu);
          MEMORY[0x1D3899640](v20, -1, -1);
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v10 = sub_1D225080C();
    v11 = sub_1D2250CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D2171000, v10, v11, "Bad internal state: gallery is not available", v12, 2u);
      MEMORY[0x1D3899640](v12, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224B214(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 16) + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D22526E0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  *(v4 + 64) = sub_1D224CDAC();
  *(v4 + 32) = a2;

  v7 = sub_1D2250C5C();
  v5 = *(v3 + 16);
  sub_1D2250DBC();
}

uint64_t sub_1D224B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 16) + 16);
  v4 = *(a3 + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D22526F0;

  v6 = sub_1D225051C();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D217A924();
  v9 = MEMORY[0x1E69E7290];
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = MEMORY[0x1E69E72E8];
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v4;
  v13 = sub_1D2250C5C();
  v11 = *(v3 + 16);
  sub_1D2250DBC();
}

void sub_1D224B518(uint64_t a1, uint64_t a2, const char *a3)
{
  v37 = a1;
  v5 = v3;
  v6 = sub_1D225055C();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D225085C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 24);
  if (v13)
  {
    v33 = a3;
    v34 = v6;

    v14 = sub_1D225084C();
    MEMORY[0x1EEE9AC00](v14);
    v16 = v36;
    v15 = v37;
    *(&v32 - 4) = v13;
    *(&v32 - 3) = v15;
    *(&v32 - 2) = v5;
    sub_1D2250D4C();
    if (v16)
    {
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v21 = v34;
      v22 = v35;
      (*(v35 + 16))(v8, v37, v34);
      v23 = sub_1D225080C();
      v24 = sub_1D2250CBC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v25 = 136315138;
        v26 = sub_1D225051C();
        v27 = v22;
        v29 = v28;
        (*(v27 + 8))(v8, v21);
        v30 = sub_1D21761D0(v26, v29, &v38);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_1D2171000, v23, v24, v33, v25, 0xCu);
        v31 = v37;
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x1D3899640](v31, -1, -1);
        MEMORY[0x1D3899640](v25, -1, -1);
      }

      else
      {

        (*(v22 + 8))(v8, v21);
      }
    }
  }

  else
  {
    v17 = sub_1D225080C();
    v18 = sub_1D2250CDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D2171000, v17, v18, "Bad internal state: gallery is not available", v19, 2u);
      MEMORY[0x1D3899640](v19, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224B90C(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 16) + 16);

  v2 = v1;
  sub_1D2250DBC();
}

uint64_t VUGalleryTransaction.TagType.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

void sub_1D224BA30(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = *a3;
  if (*(v3 + 16))
  {
    v4 = *(v3 + 16) == 5;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  v6 = v5;
  sub_1D224BA74(a1, a2, &v7, &v6);
}

void sub_1D224BA74(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char *a4)
{
  v47 = a1;
  v8 = sub_1D225055C();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D225085C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 24);
  if (v15)
  {
    v16 = *a3;
    v17 = *a4;
    if ((*a4 & 1) != 0 || !*(v4 + 16) || *(v4 + 16) == 5)
    {
      v43 = v4;
      v49 = v16;
      if (v16)
      {
        if (v16 == 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        v51 = v18;
      }

      else
      {
        v51 = 0;
      }

      v23 = sub_1D225084C();
      MEMORY[0x1EEE9AC00](v23);
      v25 = v46;
      v24 = v47;
      *(&v43 - 6) = v15;
      *(&v43 - 5) = v24;
      *(&v43 - 4) = a2;
      *(&v43 - 3) = &v51;
      *(&v43 - 16) = v17;
      sub_1D2250D4C();
      if (v25)
      {
        (*(v12 + 8))(v14, v11);
      }

      else
      {
        (*(v12 + 8))(v14, v11);
        v26 = v44;
        v27 = v45;
        (*(v44 + 16))(v10, a2, v45);
        v28 = sub_1D225080C();
        v29 = sub_1D2250CBC();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v48 = v46;
          *v30 = 134218498;
          *(v30 + 4) = v47;
          *(v30 + 12) = 2080;
          v50 = v49;
          v31 = sub_1D22509AC();
          LODWORD(v47) = v29;
          v33 = sub_1D21761D0(v31, v32, &v48);

          *(v30 + 14) = v33;
          *(v30 + 22) = 2080;
          v34 = sub_1D225051C();
          v36 = v35;
          (*(v26 + 8))(v10, v27);
          v37 = sub_1D21761D0(v34, v36, &v48);

          *(v30 + 24) = v37;
          _os_log_impl(&dword_1D2171000, v28, v47, "Tagged observation %ld with %s tag %s", v30, 0x20u);
          v38 = v46;
          swift_arrayDestroy();
          MEMORY[0x1D3899640](v38, -1, -1);
          MEMORY[0x1D3899640](v30, -1, -1);
        }

        else
        {

          (*(v26 + 8))(v10, v27);
        }
      }
    }

    else
    {

      v39 = sub_1D225080C();
      v40 = sub_1D2250CDC();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1D2171000, v39, v40, "Unable to tag observation: primary tags are currently only supported for Photos", v41, 2u);
        MEMORY[0x1D3899640](v41, -1, -1);
      }

      sub_1D217EE2C();
      swift_allocError();
      *v42 = 6;
      swift_willThrow();
    }
  }

  else
  {
    v19 = sub_1D225080C();
    v20 = sub_1D2250CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D2171000, v19, v20, "Bad internal state: gallery is not available", v21, 2u);
      MEMORY[0x1D3899640](v21, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v22 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224BFE4(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 16) + 16);

  v2 = v1;
  sub_1D2250DBC();
}

void sub_1D224C08C(uint64_t a1)
{
  v4 = sub_1D225085C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  if (v8)
  {

    v9 = sub_1D225084C();
    MEMORY[0x1EEE9AC00](v9);
    v17[-2] = v8;
    v17[-1] = a1;
    sub_1D2250D4C();
    if (v2)
    {
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v14 = sub_1D225080C();
      v15 = sub_1D2250CBC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = a1;
        _os_log_impl(&dword_1D2171000, v14, v15, "Untagged observation %ld", v16, 0xCu);
        MEMORY[0x1D3899640](v16, -1, -1);
      }
    }
  }

  else
  {
    v10 = sub_1D225080C();
    v11 = sub_1D2250CDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D2171000, v10, v11, "Bad internal state: gallery is not available", v12, 2u);
      MEMORY[0x1D3899640](v12, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224C348(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) + 16) + 16);

  v2 = v1;
  sub_1D2250DBC();
}

void sub_1D224C3D8()
{
  v2 = sub_1D225085C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {

    sub_1D225084C();
    sub_1D2250D4C();
    if (v1)
    {
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v10 = sub_1D225080C();
      v11 = sub_1D2250CBC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1D2171000, v10, v11, "Persisted the gallery state", v12, 2u);
        MEMORY[0x1D3899640](v12, -1, -1);
      }
    }
  }

  else
  {
    v6 = sub_1D225080C();
    v7 = sub_1D2250CDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D2171000, v6, v7, "Bad internal state: gallery is not available", v8, 2u);
      MEMORY[0x1D3899640](v8, -1, -1);
    }

    sub_1D217EE2C();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D224C650()
{

  sub_1D22299E0(16);
}

uint64_t VUGalleryTransaction.deinit()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding20VUGalleryTransaction_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t VUGalleryTransaction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding20VUGalleryTransaction_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D224C7CC(uint64_t a1)
{
  v2 = type metadata accessor for VUGallery.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D224C948()
{
  result = qword_1EC6D30E8;
  if (!qword_1EC6D30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30E8);
  }

  return result;
}

unint64_t sub_1D224C9A0()
{
  result = qword_1EC6D30F0;
  if (!qword_1EC6D30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D30F0);
  }

  return result;
}

uint64_t type metadata accessor for VUGalleryTransaction()
{
  result = qword_1EDC87688;
  if (!qword_1EDC87688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D224CA48()
{
  result = sub_1D225082C();
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

uint64_t dispatch thunk of VUGalleryTransaction.remove(_:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

unint64_t sub_1D224CDAC()
{
  result = qword_1EDC869D0;
  if (!qword_1EDC869D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D21D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC869D0);
  }

  return result;
}

unint64_t sub_1D224CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a4;
  v112 = a2;
  v113 = a3;
  v126 = a1;
  v115 = sub_1D225082C();
  v105 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v101 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1D22503FC();
  v116 = *(v114 - 8);
  v5 = MEMORY[0x1EEE9AC00](v114);
  v99 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v97 - v7;
  v103 = sub_1D225071C();
  v100 = *(v103 - 8);
  v8 = MEMORY[0x1EEE9AC00](v103);
  v104 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v97 - v10;
  v108 = sub_1D2250D3C();
  v11 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v102 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_logger;
  sub_1D225081C();
  v16 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_lockQueue;
  v17 = sub_1D21799BC();
  v106 = "VectorSearchStore";
  v107 = v17;
  sub_1D225086C();
  v124 = MEMORY[0x1E69E7CC0];
  sub_1D2177EF4(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2179A60();
  v18 = v126;
  sub_1D2250EAC();
  (*(v11 + 104))(v13, *MEMORY[0x1E69E8090], v108);
  v19 = v18;
  v20 = v117;
  v21 = v114;
  v22 = sub_1D2250D7C();
  v23 = v116;
  v108 = v16;
  *(v20 + v16) = v22;
  v24 = (v20 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_defaultAssetSuffix);
  *v24 = 0x315F3130302F304CLL;
  v24[1] = 0xE800000000000000;
  isa = v23[2].isa;
  (isa)(v110, v19, v21);
  v26 = v109;
  v27 = v111;
  sub_1D22506FC();
  if (v27)
  {

    (v23[1].isa)(v19, v21);
    (*(v105 + 8))(v20 + v102, v115);

    type metadata accessor for VUVectorSearchScanner();
    swift_deallocPartialClassInstance();
    return v20;
  }

  v28 = &v23[2];
  v110 = isa;
  v29 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_vdbConfig;
  v30 = v100;
  v31 = v103;
  (*(v100 + 32))(v20 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_vdbConfig, v26, v103);
  v32 = *(v30 + 16);
  v109 = v29;
  v33 = v104;
  v107 = v32;
  v108 = v30 + 16;
  v32(v104, (v20 + v29), v31);
  v34 = sub_1D225070C();
  v36 = v35;
  (*(v30 + 8))(v33, v31);
  v122 = v34;
  v123 = v36;
  v120 = 46;
  v121 = 0xE100000000000000;
  v118 = 0;
  v119 = 0xE000000000000000;
  sub_1D224EE34();
  sub_1D224EE88();
  sub_1D2250C4C();

  result = v125;
  v38 = HIBYTE(v125) & 0xF;
  v39 = v124 & 0xFFFFFFFFFFFFLL;
  if ((v125 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v125) & 0xF;
  }

  else
  {
    v40 = v124 & 0xFFFFFFFFFFFFLL;
  }

  v41 = v112;
  v111 = 0;
  v106 = v28;
  if (!v40)
  {

    goto LABEL_65;
  }

  if ((v125 & 0x1000000000000000) != 0)
  {
    v45 = sub_1D222C190(v124, v125, 10);
    v76 = v75;

    if (v76)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  if ((v125 & 0x2000000000000000) == 0)
  {
    if ((v124 & 0x1000000000000000) != 0)
    {
      v42 = ((v125 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v96 = v125;
      v42 = sub_1D225108C();
      result = v96;
    }

    v43 = *v42;
    if (v43 == 43)
    {
      if (v39 >= 1)
      {
        v52 = v39 - 1;
        if (v39 != 1)
        {
          v45 = 0;
          if (!v42)
          {
            goto LABEL_64;
          }

          v53 = v42 + 1;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v45;
            if ((v45 * 10) >> 64 != (10 * v45) >> 63)
            {
              break;
            }

            v45 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              break;
            }

            ++v53;
            if (!--v52)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      goto LABEL_83;
    }

    if (v43 == 45)
    {
      if (v39 >= 1)
      {
        v44 = v39 - 1;
        if (v39 != 1)
        {
          v45 = 0;
          if (!v42)
          {
            goto LABEL_64;
          }

          v46 = v42 + 1;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v45;
            if ((v45 * 10) >> 64 != (10 * v45) >> 63)
            {
              break;
            }

            v45 = v48 - v47;
            if (__OFSUB__(v48, v47))
            {
              break;
            }

            ++v46;
            if (!--v44)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v39)
    {
      v45 = 0;
      if (!v42)
      {
        goto LABEL_64;
      }

      while (1)
      {
        v59 = *v42 - 48;
        if (v59 > 9)
        {
          break;
        }

        v60 = 10 * v45;
        if ((v45 * 10) >> 64 != (10 * v45) >> 63)
        {
          break;
        }

        v45 = v60 + v59;
        if (__OFADD__(v60, v59))
        {
          break;
        }

        ++v42;
        if (!--v39)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_63;
  }

  v122 = v124;
  v123 = v125 & 0xFFFFFFFFFFFFFFLL;
  if (v124 != 43)
  {
    if (v124 == 45)
    {
      if (!v38)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v42 = (v38 - 1);
      if (v38 != 1)
      {
        v45 = 0;
        v49 = &v122 + 1;
        while (1)
        {
          v50 = *v49 - 48;
          if (v50 > 9)
          {
            break;
          }

          v51 = 10 * v45;
          if ((v45 * 10) >> 64 != (10 * v45) >> 63)
          {
            break;
          }

          v45 = v51 - v50;
          if (__OFSUB__(v51, v50))
          {
            break;
          }

          ++v49;
          if (!--v42)
          {
            goto LABEL_64;
          }
        }
      }
    }

    else if (v38)
    {
      v45 = 0;
      v61 = &v122;
      while (1)
      {
        v62 = *v61 - 48;
        if (v62 > 9)
        {
          break;
        }

        v63 = 10 * v45;
        if ((v45 * 10) >> 64 != (10 * v45) >> 63)
        {
          break;
        }

        v45 = v63 + v62;
        if (__OFADD__(v63, v62))
        {
          break;
        }

        v61 = (v61 + 1);
        if (!--v38)
        {
LABEL_62:
          LOBYTE(v42) = 0;
          goto LABEL_64;
        }
      }
    }

LABEL_63:
    v45 = 0;
    LOBYTE(v42) = 1;
LABEL_64:
    LOBYTE(v120) = v42;
    v64 = v42;

    if (v64)
    {
LABEL_65:
      v65 = v126;
      v124 = sub_1D225032C();
      v125 = v66;
      v122 = 3425357;
      v123 = 0xE300000000000000;
      sub_1D2178090();
      v67 = sub_1D2250E7C();

      if (v67)
      {
        v68 = v117;
        *(v117 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision) = 4;
      }

      else
      {
        v124 = sub_1D225032C();
        v125 = v69;
        v122 = 3359821;
        v123 = 0xE300000000000000;
        v70 = sub_1D2250E7C();

        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v68 = v117;
        *(v117 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision) = v71;
        v65 = v126;
      }

      v72 = v21;
      v73 = v105;
      v74 = v98;
      v107(v104, &v109[v68], v103);
      goto LABEL_75;
    }

LABEL_74:
    v68 = v117;
    *(v117 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision) = v45;
    v74 = v98;
    v65 = v126;
    v72 = v21;
    v73 = v105;
    v107(v104, &v109[v68], v103);
LABEL_75:
    sub_1D22506EC();
    swift_allocObject();
    *(v68 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_vdbClient) = sub_1D22506BC();

    v77 = v41;
    v78 = v113;

    v20 = sub_1D21791B8(v77, v78, v74);

    v79 = v101;
    (*(v73 + 16))(v101, v20 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_logger, v115);
    v80 = v99;
    (v110)(v99, v65, v72);
    swift_retain_n();
    v81 = sub_1D225080C();
    LODWORD(v117) = sub_1D2250CBC();
    v82 = v73;
    if (os_log_type_enabled(v81, v117))
    {
      v83 = v72;
      v84 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v124 = v112;
      *v84 = 136315394;
      sub_1D2177EF4(&qword_1EDC87248, MEMORY[0x1E6968FB0]);
      v85 = sub_1D225125C();
      v87 = v86;
      v88 = v116[1].isa;
      v116 = v81;
      v89 = v80;
      v90 = v88;
      (v88)(v89, v83);
      v91 = sub_1D21761D0(v85, v87, &v124);

      *(v84 + 4) = v91;
      *(v84 + 12) = 2048;
      v92 = *(v20 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision);

      *(v84 + 14) = v92;

      v93 = v116;
      _os_log_impl(&dword_1D2171000, v116, v117, "Initialized VectorDB client at path %s with revision %ld", v84, 0x16u);
      v94 = v112;
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
      MEMORY[0x1D3899640](v94, -1, -1);
      MEMORY[0x1D3899640](v84, -1, -1);

      (*(v82 + 8))(v101, v115);
      v72 = v114;
    }

    else
    {

      v95 = v80;
      v90 = v116[1].isa;
      (v90)(v95, v72);
      (*(v73 + 8))(v79, v115);
    }

    sub_1D22506CC();

    (v90)(v126, v72);
    return v20;
  }

  if (v38)
  {
    v42 = (v38 - 1);
    if (v38 != 1)
    {
      v45 = 0;
      v56 = &v122 + 1;
      while (1)
      {
        v57 = *v56 - 48;
        if (v57 > 9)
        {
          break;
        }

        v58 = 10 * v45;
        if ((v45 * 10) >> 64 != (10 * v45) >> 63)
        {
          break;
        }

        v45 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          break;
        }

        ++v56;
        if (!--v42)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1D224DC58()
{
  v1 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_vdbConfig;
  v2 = sub_1D225071C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_logger;
  v4 = sub_1D225082C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
}

uint64_t sub_1D224DD34()
{
  v1 = v0;

  sub_1D22506DC();

  v2 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_logger;
  v3 = sub_1D225082C();
  v4 = *(*(v3 - 8) + 8);
  v4(v1 + v2, v3);

  v5 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_signposter;
  v6 = sub_1D22507AC();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_vdbConfig;
  v8 = sub_1D225071C();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);

  v4(v1 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_logger, v3);

  return v1;
}

uint64_t sub_1D224DEC8()
{
  sub_1D224DD34();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUVectorSearchScanner()
{
  result = qword_1EDC86BF0;
  if (!qword_1EDC86BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D224DF74()
{
  result = sub_1D225071C();
  if (v1 <= 0x3F)
  {
    result = sub_1D225082C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D224E070@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D225069C();
  if (!v1)
  {
    v4 = sub_1D2206C34(result);

    *a1 = v4;
  }

  return result;
}

uint64_t sub_1D224E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t), uint64_t a7)
{
  v8 = v7;
  v81 = a7;
  v80 = a6;
  v85 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  v84 = *(v85 - 8);
  v13 = MEMORY[0x1EEE9AC00](v85);
  v79 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v72 - v18;
  v20 = sub_1D225074C();
  v88 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = MEMORY[0x1E69E7CC8];
  v107 = MEMORY[0x1E69E7CC0];
  v23 = *(v8 + 16);
  v102 = v8;
  v103 = &v108;
  v104 = &v107;
  v24 = *(v23 + 16);
  v91 = a1;
  v92 = a2;
  v93 = &unk_1F4DADB90;
  v94 = a4;
  v95 = a5 & 1;
  v96 = 0;
  v97 = 1;
  v98 = v23;
  v99 = sub_1D224EBC4;
  v100 = &v101;
  v25 = v24;
  v26 = v90;
  sub_1D2250DBC();

  if (v26)
  {
  }

  v28 = MEMORY[0x1E69E7CC8];
  v78 = v20;
  v82 = v19;
  v83 = v17;
  MEMORY[0x1EEE9AC00](v27);
  *(&v72 - 2) = v8;
  *(&v72 - 1) = &v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D30F8);
  sub_1D2250D5C();
  v74 = 0;
  v30 = v106;
  v106 = v28;
  v73 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D3100);
  sub_1D22508BC();
  v90 = v30;
  v31 = v85;
  v32 = v78;
  v33 = v88;
  v89 = v30[2];
  if (!v89)
  {
LABEL_27:

    v64 = *(v73 + 16);
    v65 = v106;
    v66 = v80;
    v67 = v84;
    v68 = v79;
    if (v64)
    {
      v69 = (v73 + 32);
      do
      {
        if (v65[2])
        {
          v70 = sub_1D2176758(*v69);
          if (v71)
          {
            sub_1D224ED08(v65[7] + *(v67 + 72) * v70, v68);
            v66(v68);
            sub_1D21C2BD0(v68);
          }
        }

        ++v69;
        --v64;
      }

      while (v64);
    }
  }

  v34 = 0;
  v35 = v108;
  v87 = v90 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
  v86 = v88 + 16;
  v36 = (v88 + 8);
  v76 = xmmword_1D2253ED0;
  v75 = v108;
  v77 = (v88 + 8);
  while (v34 < v90[2])
  {
    (*(v33 + 16))(v22, v87 + *(v33 + 72) * v34, v32);
    v37 = sub_1D225072C();
    if (*(v35 + 16))
    {
      v39 = sub_1D2196C7C(v37, v38);
      v41 = v40;

      if (v41)
      {
        v42 = *(*(v35 + 56) + 8 * v39);
        v43 = sub_1D225073C();
        v44 = v82;
        if (v43[2])
        {
          v46 = v43[4];
          v45 = v43[5];
          sub_1D21A3B78(v46, v45);

          v47 = *(v31 + 28);
          v48 = sub_1D225055C();
          (*(*(v48 - 8) + 56))(v44 + v47, 1, 1, v48);
          *v44 = v42;
          *(v44 + 8) = v46;
          *(v44 + 16) = v45;
          *(v44 + 24) = v76;
          sub_1D224ED6C(v44, v83);
          sub_1D21A3B78(v46, v45);
          v49 = v106;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v49;
          v51 = v42;
          v52 = sub_1D2176758(v42);
          v54 = v49[2];
          v55 = (v53 & 1) == 0;
          v56 = __OFADD__(v54, v55);
          v57 = v54 + v55;
          if (v56)
          {
            goto LABEL_35;
          }

          v58 = v53;
          if (v49[3] >= v57)
          {
            v36 = v77;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_21;
            }

            v61 = v52;
            sub_1D21B6BE8();
            v52 = v61;
            v60 = v105;
            if ((v58 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_22:
            sub_1D224EDD0(v83, v60[7] + *(v84 + 72) * v52);
            sub_1D21A1ED8(v46, v45);
            v32 = v78;
            (*v36)(v22, v78);
          }

          else
          {
            sub_1D21B13D0(v57, isUniquelyReferenced_nonNull_native);
            v52 = sub_1D2176758(v42);
            v36 = v77;
            if ((v58 & 1) != (v59 & 1))
            {
              goto LABEL_37;
            }

LABEL_21:
            v60 = v105;
            if (v58)
            {
              goto LABEL_22;
            }

LABEL_24:
            v60[(v52 >> 6) + 8] |= 1 << v52;
            *(v60[6] + 8 * v52) = v51;
            sub_1D224ED6C(v83, v60[7] + *(v84 + 72) * v52);
            sub_1D21A1ED8(v46, v45);
            v32 = v78;
            (*v36)(v22, v78);
            v62 = v60[2];
            v56 = __OFADD__(v62, 1);
            v63 = v62 + 1;
            if (v56)
            {
              goto LABEL_36;
            }

            v60[2] = v63;
          }

          v106 = v60;
          v31 = v85;
          v33 = v88;
          v35 = v75;
          goto LABEL_8;
        }

        v36 = v77;
        (*v77)(v22, v32);
      }

      else
      {
        (*v36)(v22, v32);
      }

      v33 = v88;
    }

    else
    {
      (*v36)(v22, v32);
    }

LABEL_8:
    if (v89 == ++v34)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

id sub_1D224E8DC(void *a1, uint64_t a2, uint64_t *a3, char **a4)
{
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  result = [a1 asset];
  if (result)
  {
    v37 = a4;
    v16 = result;
    sub_1D225054C();

    (*(v9 + 32))(v14, v12, v8);
    v38 = sub_1D225051C();
    v39 = v17;

    MEMORY[0x1D3898450](47, 0xE100000000000000);

    v18 = v38;
    v19 = v39;
    v20 = [a1 assetSuffix];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D225095C();
      v24 = v23;
    }

    else
    {
      v22 = *(a2 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_defaultAssetSuffix);
      v24 = *(a2 + OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_defaultAssetSuffix + 8);
    }

    v38 = v18;
    v39 = v19;

    MEMORY[0x1D3898450](v22, v24);

    v25 = v38;
    v26 = v39;
    v27 = [a1 identifier];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a3;
    *a3 = 0x8000000000000000;
    sub_1D21BB4BC(v27, v25, v26, isUniquelyReferenced_nonNull_native);

    *a3 = v38;

    v29 = [a1 identifier];
    v30 = v37;
    v31 = *v37;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_1D2195F78(0, *(v31 + 2) + 1, 1, v31);
      *v30 = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      *v30 = sub_1D2195F78((v33 > 1), v34 + 1, 1, v31);
    }

    result = (*(v9 + 8))(v14, v8);
    v35 = *v30;
    *(v35 + 2) = v34 + 1;
    *&v35[8 * v34 + 32] = v29;
  }

  return result;
}

uint64_t sub_1D224EBD0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5)
  {
    v6 = sub_1D21F7F34(v5, 0);
    v7 = sub_1D21FA2A4(v11, v6 + 4, v5, v4);

    result = sub_1D217CF78();
    if (v7 != v5)
    {
      __break(1u);
      return result;
    }

    v2 = v11[6];
    v3 = a2;
  }

  v9 = sub_1D22506AC();

  if (!v2)
  {
    *v3 = v9;
  }

  return result;
}

uint64_t sub_1D224ED08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D224ED6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D224EDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D224EE34()
{
  result = qword_1EDC869E0;
  if (!qword_1EDC869E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC869E0);
  }

  return result;
}

unint64_t sub_1D224EE88()
{
  result = qword_1EDC869E8;
  if (!qword_1EDC869E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC869E8);
  }

  return result;
}

id VUIndexMapping.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id VUIndexMapping.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VUIndexMapping();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id VUIndexMapping.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexMapping();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static VUIndexMapping.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1D225092C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1D224F0C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VUIndexMapping();
  result = sub_1D225102C();
  *a1 = result;
  return result;
}

id VUIndexObservation.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id VUIndexObservation.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VUIndexObservation();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id VUIndexObservation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexObservation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static VUIndexObservation.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1D225092C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D224F338(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 assetSuffix];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D225095C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D224F3A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1D225092C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAssetSuffix_];
}

void sub_1D224F410(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D225046C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_1D224F474(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1D225045C();
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_1D224F4EC@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_1D225054C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1D225055C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_1D224F58C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1D21C31BC(a1, &v15 - v9);
  v11 = *a2;
  v12 = sub_1D225055C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1D225052C();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

uint64_t sub_1D224F6B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VUIndexObservation();
  result = sub_1D225102C();
  *a1 = result;
  return result;
}

id VUIndexPartition.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id VUIndexPartition.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VUIndexPartition();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id VUIndexPartition.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexPartition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static VUIndexPartition.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1D225092C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_1D224F970(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 centroid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D225046C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1D224F9D8(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8) >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D225045C();
  }

  v4 = v3;
  [v2 setCentroid_];
}

uint64_t sub_1D224FA50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VUIndexPartition();
  result = sub_1D225102C();
  *a1 = result;
  return result;
}

id VUIndexSubset.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id VUIndexSubset.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VUIndexSubset();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id VUIndexSubset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexSubset();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static VUIndexSubset.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1D225092C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1D224FC04@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 lastUpdated];
  if (v3)
  {
    v4 = v3;
    sub_1D22504DC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D22504FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1D224FCA8(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D2246E84(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1D22504FC();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1D22504BC();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLastUpdated_];
}

uint64_t sub_1D224FDD4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VUIndexSubset();
  result = sub_1D225102C();
  *a1 = result;
  return result;
}

id VUIndexTag.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id VUIndexTag.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VUIndexTag();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id VUIndexTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VUIndexTag();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static VUIndexTag.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_1D225092C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1D2250020@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    sub_1D225054C();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D225055C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1D22500C4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D21C31BC(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1D225055C();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1D225052C();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setUuid_];
}

uint64_t sub_1D22501F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VUIndexTag();
  result = sub_1D225102C();
  *a1 = result;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7378](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}