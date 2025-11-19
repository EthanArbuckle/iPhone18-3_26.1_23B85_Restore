id sub_1CA304C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CA304CF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CA304D34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1CA304D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = @"Label";
  v8 = @"Key";
  sub_1CA94C218();
  v9 = @"Label";
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v10, v12, v13, v15, 0, 0, v19, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v26;
  *(inited + 104) = v27;
  *(inited + 112) = @"AllowsNegativeNumbers";
  v28 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v28;
  *(inited + 152) = @"FallbackToAllSupportedUnits";
  *(inited + 160) = 1;
  *(inited + 184) = v28;
  *(inited + 192) = @"WFUnitType";
  v29 = *MEMORY[0x1E69E11B8];
  type metadata accessor for WFMeasurementUnitType(0);
  *(inited + 224) = v30;
  *(inited + 200) = v29;
  _s3__C3KeyVMa_0(0);
  sub_1CA2A7470();
  v31 = @"AllowsNegativeNumbers";
  v32 = @"FallbackToAllSupportedUnits";
  v33 = @"WFUnitType";
  v34 = v29;
  sub_1CA94C1E8();
  v35 = sub_1CA2F864C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446D90, &unk_1CA981540);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA981310;
  v37 = v43;
  *(v36 + 32) = v42;
  *(v36 + 40) = v37;
  v38 = objc_allocWithZone(WFUnitQuantityFieldParameter);
  sub_1CA94C218();
  *(v36 + 48) = [v38 initWithDefinition_];
  sub_1CA25B3D0(0, &qword_1EC441AA0, off_1E836EDB8);
  v39 = sub_1CA94C1E8();

  return v39;
}

uint64_t sub_1CA305128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA30514C, 0, 0);
}

uint64_t sub_1CA30514C()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = v0[5], v3 = sub_1CA271BF8(), (v4 & 1) != 0) && (v0[6] = *(*(v0[2] + 56) + 8 * v3), objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_1CA305290;
    v6 = v0[3];

    return sub_1CA32B3B4(v6);
  }

  else
  {
    OUTLINED_FUNCTION_2_4();

    return v8(0);
  }
}

uint64_t sub_1CA305290()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 56);
  *v3 = *v1;
  *(v2 + 64) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1CA2A630C;
  }

  else
  {
    v7 = sub_1CA305398;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1CA305398()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[8];
  if (!v1)
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[6];
  if (v2)
  {
    v4 = v2;
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[6];
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_1CA305554(v4);
    v9 = v8;
    swift_unknownObjectRelease();
    if (v9)
    {
LABEL_4:
      v10 = v0[6];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_9_2();

      __asm { BRAA            X2, X16 }
    }

    sub_1CA2A741C();
    OUTLINED_FUNCTION_127();
    v16 = v15;
    *(v15 + 24) = sub_1CA25B3D0(0, &qword_1EC443820, 0x1E6996F28);
    *v16 = v4;
    *(v16 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    sub_1CA2A741C();
    OUTLINED_FUNCTION_127();
    v14 = v13;
    *(v13 + 24) = swift_getObjectType();
    *v14 = v1;
    *(v14 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  v17 = v0[6];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X1, X16 }
}

void sub_1CA305554(void *a1)
{
  if (a1 && (sub_1CA677620(a1), v2))
  {
    v3 = sub_1CA94C368();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() unitFromString_];

  if (v4)
  {
    sub_1CA25B3D0(0, &qword_1EDB9F110, 0x1E69E58C0);
    v5 = objc_opt_self();
    v6 = [v5 kilobytes];
    v7 = sub_1CA94CFD8();

    if (v7)
    {
      v8 = 1000;
    }

    else
    {
      v9 = [v5 megabytes];
      v10 = sub_1CA94CFD8();

      if (v10)
      {
        v8 = 1000000;
      }

      else
      {
        v11 = [v5 gigabytes];
        v12 = sub_1CA94CFD8();

        if (v12)
        {
          v8 = 1000000000;
        }

        else
        {
          v13 = [v5 terabytes];
          v14 = sub_1CA94CFD8();

          if (v14)
          {
            v8 = 1000000000000;
          }

          else
          {
            v15 = [v5 petabytes];
            v16 = sub_1CA94CFD8();

            if (v16)
            {
              v8 = 1000000000000000;
            }

            else
            {
              v17 = [v5 exabytes];
              v18 = sub_1CA94CFD8();

              if (v18)
              {
                v8 = 1000000000000000000;
              }

              else
              {
                v19 = [v5 zettabytes];
                v20 = sub_1CA94CFD8();

                if (v20)
                {
LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }

                v21 = [v5 yottabytes];
                v22 = sub_1CA94CFD8();

                if (v22)
                {
LABEL_29:
                  __break(1u);
                  return;
                }

                v8 = 1;
              }
            }
          }
        }
      }
    }

    if (a1)
    {
      v23 = [a1 magnitude];
      v24 = [v23 longLongValue];
    }

    else
    {
      v24 = 0;
    }

    if ((v24 * v8) >> 64 == (v24 * v8) >> 63)
    {
      [objc_allocWithZone(MEMORY[0x1E6996E28]) initWithByteCount_];

      return;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_1CA305884()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 40) = *v4;
  v5 = sub_1CA25B3D0(0, &qword_1EC4442E0, 0x1E6996E28);
  *(v0 + 56) = v5;
  v6 = *(MEMORY[0x1E6996C50] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1CA305948;

  return MEMORY[0x1EEDF81A0](v5);
}

uint64_t sub_1CA305948()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X2, X16 }
  }

  *(v5 + 72) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA305A8C()
{
  OUTLINED_FUNCTION_6();
  if (v0[9])
  {
    v1 = v0[9];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[10] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[11] = v3;
      *v3 = v0;
      v3[1] = sub_1CA305BEC;
      v5 = v0[5];
      v4 = v0[6];
      v6 = v0[3];
      v7 = v0[4];

      return sub_1CA305128(v5, v4, v6, v7);
    }

    swift_unknownObjectRelease();
  }

  v9 = v0[2];
  sub_1CA2A741C();
  OUTLINED_FUNCTION_127();
  v10 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_6_12(v10);
  v11 = v9;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v12(0);
}

uint64_t sub_1CA305BEC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 88);
  *v4 = *v1;
  v3[12] = v7;
  v3[13] = v0;

  if (v0)
  {
    v8 = sub_1CA305DA4;
  }

  else
  {
    v9 = v3[9];
    swift_unknownObjectRelease();
    v8 = sub_1CA305CFC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA305CFC()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = v0[7];
    swift_unknownObjectRetain();
    v5 = sub_1CA94CFD8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[9];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_4();

  return v7(v5 & 1);
}

uint64_t sub_1CA305DA4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_2_4();

  return v3(0);
}

uint64_t sub_1CA305E08()
{
  OUTLINED_FUNCTION_0();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_1CA25B3D0(0, &qword_1EC4442E0, 0x1E6996E28);
  v7 = *(MEMORY[0x1E6996C50] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_1CA305EC4;

  return MEMORY[0x1EEDF81A0](v6);
}

uint64_t sub_1CA305EC4()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);
    OUTLINED_FUNCTION_9_2();

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 64) = v3;

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA306004()
{
  OUTLINED_FUNCTION_6();
  if (v0[8])
  {
    v1 = v0[8];
    swift_unknownObjectRetain();
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    v0[9] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[10] = v3;
      *v3 = v0;
      v3[1] = sub_1CA306164;
      v4 = v0[5];
      v5 = v0[6];
      v6 = v0[4];
      v7 = v0[2];

      return sub_1CA305128(v7, v6, v4, v5);
    }

    swift_unknownObjectRelease();
  }

  v9 = v0[3];
  sub_1CA2A741C();
  OUTLINED_FUNCTION_127();
  v10 = sub_1CA25B3D0(0, &qword_1EC441960, 0x1E6996D40);
  OUTLINED_FUNCTION_6_12(v10);
  v11 = v9;
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA306164()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  *v3 = *v1;
  *(v2 + 88) = v6;
  *(v2 + 96) = v0;

  if (v0)
  {
    v7 = sub_1CA306374;
  }

  else
  {
    v7 = sub_1CA30626C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA30626C()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = [*(v0 + 72) compare_];

    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_2_4();

    return v4(v3);
  }

  else
  {
    v6 = *(v0 + 64);
    sub_1CA2A741C();
    OUTLINED_FUNCTION_127();
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_5();

    return v8();
  }
}

uint64_t sub_1CA306374()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 64);
  swift_unknownObjectRelease_n();
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA3063D4()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2A715C;

  return sub_1CA305884();
}

uint64_t sub_1CA306484()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CA2A731C;

  return sub_1CA305E08();
}

id sub_1CA306580()
{
  v0 = sub_1CA949D18();
  v152 = *(v0 - 8);
  v153 = v0;
  v1 = *(v152 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v151 = v142 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v150 = v142 - v4;
  v154 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v6 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A2690;
  *(inited + 64) = v6;
  *(inited + 72) = @"ActionKeywords";
  v7 = @"ActionClass";
  v8 = @"ActionKeywords";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v160 = v17;
  v161 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = v142 - v161;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v159 = qword_1EDB9F690;
  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v158 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v157 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = v142 - v157;
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v22);
  v25 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v156 = v25;
  *(inited + 80) = v24;
  *(inited + 104) = v25;
  *(inited + 112) = @"Description";
  v155 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1CA9813C0;
  *(v26 + 32) = @"DescriptionInput";
  v27 = @"Description";
  v28 = @"DescriptionInput";
  v148 = sub_1CA94C438();
  *&v147 = v29;
  v146 = sub_1CA94C438();
  v31 = v30;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v32 = v142 - v161;
  sub_1CA948D98();
  v33 = v159;
  v34 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v142 - v157;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v26 + 40) = sub_1CA2F9F14(v148, v147, v146, v31, 0, 0, v32, v35);
  *(v26 + 64) = v156;
  *(v26 + 72) = @"DescriptionResult";
  v37 = @"DescriptionResult";
  v148 = sub_1CA94C438();
  *&v147 = v38;
  v146 = sub_1CA94C438();
  v40 = v39;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v41 = v142 - v161;
  sub_1CA948D98();
  v42 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v42);
  v43 = v157;
  sub_1CA948B68();

  v44 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v26 + 80) = sub_1CA2F9F14(v148, v147, v146, v40, 0, 0, v41, v142 - v43);
  v45 = v156;
  *(v26 + 104) = v156;
  *(v26 + 112) = @"DescriptionSummary";
  v46 = @"DescriptionSummary";
  v148 = sub_1CA94C438();
  *&v147 = v47;
  v146 = sub_1CA94C438();
  v49 = v48;
  v149 = v142;
  MEMORY[0x1EEE9AC00](v146);
  v50 = v142 - v161;
  sub_1CA948D98();
  v51 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v53 = sub_1CA2F9F14(v148, v147, v146, v49, 0, 0, v50, v142 - v43);
  *(v26 + 144) = v45;
  *(v26 + 120) = v53;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v54 = v155;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v54;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 0x656C70727550;
  *(inited + 168) = 0xE600000000000000;
  v55 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0xD000000000000027;
  *(inited + 208) = 0x80000001CA99BB90;
  *(inited + 224) = v55;
  *(inited + 232) = @"Input";
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v147 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 0;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 96) = 0x6567616D494657;
  *(v56 + 104) = 0xE700000000000000;
  *(v56 + 120) = v55;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  v58 = v57;
  *(v56 + 184) = 0xE500000000000000;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v155;
  *(v56 + 192) = &unk_1F49F3BE8;
  v59 = @"IconColor";
  v60 = @"IconSymbol";
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v149 = v63;
  *(inited + 240) = v62;
  *(inited + 264) = v63;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 280) = 0;
  *(inited + 304) = v58;
  *(inited + 312) = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438();
  v144 = v67;
  v145 = v66;
  v68 = sub_1CA94C438();
  v70 = v69;
  v146 = v142;
  MEMORY[0x1EEE9AC00](v68);
  v71 = v161;
  sub_1CA948D98();
  v72 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  v73 = v142 - v157;
  sub_1CA948B68();

  v74 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 320) = sub_1CA2F9F14(v145, v144, v68, v70, 0, 0, v142 - v71, v73);
  v75 = v156;
  *(inited + 344) = v156;
  *(inited + 352) = @"Output";
  v76 = swift_allocObject();
  *(v76 + 16) = v147;
  *(v76 + 32) = 0x75736F6C63736944;
  *(v76 + 40) = 0xEF6C6576654C6572;
  *(v76 + 48) = 0x63696C627550;
  *(v76 + 56) = 0xE600000000000000;
  *(v76 + 72) = MEMORY[0x1E69E6158];
  *(v76 + 80) = 0x656C7069746C754DLL;
  *(v76 + 88) = 0xE800000000000000;
  *(v76 + 96) = 1;
  *(v76 + 120) = MEMORY[0x1E69E6370];
  *(v76 + 128) = 0x614E74757074754FLL;
  *(v76 + 136) = 0xEA0000000000656DLL;
  v77 = @"Output";
  v78 = sub_1CA94C438();
  v146 = v79;
  *&v147 = v78;
  v80 = sub_1CA94C438();
  v145 = v81;
  v148 = v142;
  MEMORY[0x1EEE9AC00](v80);
  sub_1CA948D98();
  v82 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v82);
  v83 = v142 - v157;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 144) = sub_1CA2F9F14(v147, v146, v80, v145, 0, 0, v142 - v71, v83);
  *(v76 + 168) = v75;
  *(v76 + 176) = 0x7365707954;
  *(v76 + 216) = v155;
  *(v76 + 184) = 0xE500000000000000;
  *(v76 + 192) = &unk_1F49F3C18;
  v85 = MEMORY[0x1E69E6158];
  *(inited + 360) = sub_1CA94C1E8();
  *(inited + 384) = v149;
  *(inited + 392) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v149 = swift_allocObject();
  *(v149 + 1) = xmmword_1CA9813B0;
  v148 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1CA981370;
  *(v86 + 32) = @"Class";
  *(v86 + 40) = 0xD000000000000019;
  *(v86 + 48) = 0x80000001CA99B030;
  *(v86 + 64) = v85;
  *(v86 + 72) = @"Key";
  *(v86 + 80) = 0x6567616D494657;
  *(v86 + 88) = 0xE700000000000000;
  *(v86 + 104) = v85;
  *(v86 + 112) = @"Label";
  v87 = @"Parameters";
  v88 = @"Class";
  v89 = @"Key";
  v90 = @"Label";
  v91 = sub_1CA94C438();
  v144 = v92;
  v145 = v91;
  v93 = sub_1CA94C438();
  v143 = v94;
  v146 = v142;
  *&v147 = inited;
  MEMORY[0x1EEE9AC00](v93);
  v95 = v142 - v161;
  sub_1CA948D98();
  v96 = v159;
  v97 = [v159 bundleURL];
  v142[1] = v142;
  MEMORY[0x1EEE9AC00](v97);
  v98 = v157;
  sub_1CA948B68();

  v99 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 120) = sub_1CA2F9F14(v145, v144, v93, v143, 0, 0, v95, v142 - v98);
  v100 = v156;
  *(v86 + 144) = v156;
  *(v86 + 152) = @"Placeholder";
  v101 = @"Placeholder";
  v102 = sub_1CA94C438();
  v144 = v103;
  v145 = v102;
  v143 = sub_1CA94C438();
  v105 = v104;
  v146 = v142;
  MEMORY[0x1EEE9AC00](v143);
  v106 = v142 - v161;
  sub_1CA948D98();
  v107 = [v96 bundleURL];
  MEMORY[0x1EEE9AC00](v107);
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 160) = sub_1CA2F9F14(v145, v144, v143, v105, 0, 0, v106, v142 - v98);
  *(v86 + 184) = v100;
  *(v86 + 192) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_1CA97EDF0;
  v110 = @"PreferredTypes";
  v111 = v150;
  sub_1CA949C88();
  v112 = sub_1CA949C68();
  v114 = v113;
  v115 = *(v152 + 8);
  v116 = v111;
  v117 = v153;
  v115(v116, v153);
  *(v109 + 32) = v112;
  *(v109 + 40) = v114;
  v118 = v151;
  sub_1CA949D08();
  v119 = sub_1CA949C68();
  v121 = v120;
  v115(v118, v117);
  *(v109 + 48) = v119;
  *(v109 + 56) = v121;
  *(v86 + 224) = v155;
  *(v86 + 200) = v109;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v122 = sub_1CA2F864C();
  v123 = v149;
  v149[4] = v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v125 = v147;
  *(v147 + 400) = v123;
  *(v125 + 424) = v124;
  *(v125 + 432) = @"ParameterSummary";
  v126 = @"ParameterSummary";
  v127 = sub_1CA94C438();
  v129 = v128;
  v130 = sub_1CA94C438();
  v132 = v131;
  v156 = v142;
  MEMORY[0x1EEE9AC00](v130);
  v133 = v142 - v161;
  sub_1CA948D98();
  v134 = [v159 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = v142 - v157;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v137 = sub_1CA2F9F14(v127, v129, v130, v132, 0, 0, v133, v135);
  v138 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v139 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v125 + 440) = v138;
  *(v125 + 464) = v139;
  *(v125 + 472) = @"ResidentCompatible";
  *(v125 + 504) = MEMORY[0x1E69E6370];
  *(v125 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v140 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA3077F4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  return sub_1CA94C218();
}

uint64_t sub_1CA30782C()
{
  OUTLINED_FUNCTION_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = *v0;
  v1[10] = *v0;
  v1[11] = *(v4 + 80);
  OUTLINED_FUNCTION_4_12();
  v1[12] = v5;
  v1[13] = *(v6 + 64);
  v1[14] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA307958, v0, 0);
}

uint64_t sub_1CA307958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12[10];
  v14 = v12[11];
  v16 = v12[8];
  v15 = v12[9];
  sub_1CA3077F4();
  v17 = *(v13 + 88);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443898, &unk_1CA9855B0);
  sub_1CA94C888();
  v19 = *(v13 + 96);
  sub_1CA94C268();

  v20 = v12[5];
  v12[16] = v20;
  if (v20)
  {
    v21 = *(MEMORY[0x1E69E86A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v12[17] = v25;
    *v25 = v26;
    v25[1] = sub_1CA307CA8;
    v27 = v12[7];
    v28 = MEMORY[0x1E69E7288];
    v29 = v20;
    v30 = v17;
    v31 = v18;
  }

  else
  {
    v33 = v12[14];
    v32 = v12[15];
    v34 = v12[12];
    v46 = v12[13];
    v35 = v12[11];
    v36 = v12[8];
    v47 = v12[9];
    v49 = v36;
    v37 = sub_1CA94C858();
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v37);
    v48 = *(v34 + 16);
    v48(v33, v36, v35);
    type metadata accessor for ConcurrentCache();
    WitnessTable = swift_getWitnessTable();
    v50 = v18;
    v39 = (*(v34 + 80) + 64) & ~*(v34 + 80);
    v40 = swift_allocObject();
    *(v40 + 2) = v47;
    *(v40 + 3) = WitnessTable;
    *(v40 + 4) = v35;
    *(v40 + 5) = v17;
    *(v40 + 6) = v19;
    *(v40 + 7) = v47;
    (*(v34 + 32))(&v40[v39], v33, v35);
    swift_retain_n();
    v41 = sub_1CA308818(0, 0, v32, &unk_1CA982EC0, v40);
    v12[19] = v41;
    v48(v33, v49, v35);
    v12[6] = v41;
    swift_beginAccess();
    sub_1CA94C248();

    sub_1CA94C278();
    swift_endAccess();
    v42 = *(MEMORY[0x1E69E86A8] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_77();
    v12[20] = v43;
    *v43 = v44;
    v43[1] = sub_1CA307E34;
    v27 = v12[7];
    v28 = MEMORY[0x1E69E7288];
    v29 = v41;
    v30 = v17;
    v31 = v50;
  }

  return MEMORY[0x1EEE6DA10](v27, v29, v30, v31, v28, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1CA307CA8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 136);
  *v4 = *v1;
  *(v3 + 144) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1CA307FC0;
  }

  else
  {
    v7 = sub_1CA307DCC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1CA307DCC()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[16];

  v3 = v0[14];
  v2 = v0[15];

  OUTLINED_FUNCTION_3_6();

  return v4();
}

uint64_t sub_1CA307E34()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1CA30802C;
  }

  else
  {
    v7 = sub_1CA307F58;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1CA307F58()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[19];

  v3 = v0[14];
  v2 = v0[15];

  OUTLINED_FUNCTION_3_6();

  return v4();
}

uint64_t sub_1CA307FC0()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[16];

  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA30802C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[19];

  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA308098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v7 = *a4;
  v5[9] = *a4;
  v8 = *(v7 + 88);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = *(v7 + 80);
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA30823C, a4, 0);
}

uint64_t sub_1CA30823C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[7];
  v2 = *(v1 + 128);
  v9 = (*(v1 + 120) + **(v1 + 120));
  v3 = *(*(v1 + 120) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  v0[18] = v4;
  *v4 = v5;
  v4[1] = sub_1CA30832C;
  v6 = v0[8];
  v7 = v0[6];

  return v9(v7, v6);
}

uint64_t sub_1CA30832C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v3 = v2;
  v5 = *(v4 + 144);
  v13 = *v1;

  if (v0)
  {
    v6 = v2[17];
    v9 = v2 + 13;
    v7 = v2[13];
    v8 = v9[1];

    OUTLINED_FUNCTION_5();

    return v10();
  }

  else
  {
    v12 = v2[7];

    return MEMORY[0x1EEE6DFA0](sub_1CA308478, v12, 0);
  }
}

uint64_t sub_1CA308478()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[6];
  v16 = v0[7];
  v17 = v0[17];
  (*(v0[16] + 16))();
  v10 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v10);
  v11 = v3;
  (*(v6 + 16))(v3, v9, v5);
  v12 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v1;
  *(v13 + 5) = v5;
  *(v13 + 6) = *(v8 + 96);
  (*(v6 + 32))(&v13[v12], v11, v5);
  v0[5] = sub_1CA308818(0, 0, v2, &unk_1CA982F58, v13);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443898, &unk_1CA9855B0);
  sub_1CA94C888();
  sub_1CA94C248();
  sub_1CA94C278();
  swift_endAccess();

  OUTLINED_FUNCTION_3_6();

  return v14();
}

uint64_t sub_1CA308688(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1CA308FE0;

  return sub_1CA308098(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1CA308774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v6[4] = a6;
  v6[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA308798, 0, 0);
}

uint64_t sub_1CA308798()
{
  OUTLINED_FUNCTION_0();
  (*(*(v0[4] - 8) + 16))(v0[2], v0[3]);
  OUTLINED_FUNCTION_3_6();

  return v1();
}

uint64_t sub_1CA308818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25[-1] - v11;
  v26[0] = a4;
  v26[1] = a5;
  sub_1CA308D4C(a3, &v25[-1] - v11);
  v13 = sub_1CA94C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1CA308DBC(v12);
  }

  else
  {
    sub_1CA94C848();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1CA94C7C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1CA94C418();
      v21 = *(v20 + 16);
      sub_1CA308E24(v20 + 32, v26, v25);

      v22 = v25[0];
      sub_1CA308DBC(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1CA308DBC(a3);
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t ConcurrentCache.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConcurrentCache.__deallocating_deinit()
{
  ConcurrentCache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of ConcurrentCache.value(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v11 = (v6 + *v6);
  v7 = v6[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v3 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1CA308C60;

  return v11(a1, a2);
}

uint64_t sub_1CA308C60()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA308D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CA308DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA308E24@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CA308EE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  swift_task_alloc();
  OUTLINED_FUNCTION_77();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_1CA308FE0;

  return sub_1CA308774(a1, v8, v9, v1 + v7, v4, v5);
}

uint64_t static ShazamActionMigration.workflowNeedsMigration(_:fromClientVersion:)()
{
  v0 = sub_1CA94C368();
  v1 = sub_1CA94C368();
  v2 = WFBundleVersionLessThan(v0, v1);

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C368();
  v4 = sub_1CA94C1A8();
  HasActionsWithIdentifier = WFWorkflowHasActionsWithIdentifier(v3, v4);

  return HasActionsWithIdentifier;
}

Swift::Void __swiftcall ShazamActionMigration.migrateWorkflow()()
{
  v1 = v0;
  v2 = [v0 actions];
  if (v2)
  {
    v3 = v2;
    v46 = &v44;
    v45 = sub_1CA948AF8();
    v44 = *(v45 - 8);
    v4 = *(v44 + 64);
    MEMORY[0x1EEE9AC00](v45);
    v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v3;
    sub_1CA94CF68();
    v7 = 0x80000001CA99E4A0;
    v53 = 0x80000001CA9A2890;
    v50 = 0x80000001CA99E690;
    v51 = "${WFImage}";
    v48 = 0x80000001CA9A28B0;
    v49 = "WFSwitchParameter";
    v52 = 0x80000001CA99E4A0;
    while (1)
    {
      do
      {
        sub_1CA948AE8();
        if (!v61)
        {
          (*(v44 + 8))(v6, v45);
          [v1 finish];

          return;
        }

        sub_1CA2C0A20(&v60, &v58);
        sub_1CA2C0A30();
      }

      while ((OUTLINED_FUNCTION_2_14() & 1) == 0);
      v8 = v56;
      v9 = [v1 actionIdentifierKey];
      v10 = sub_1CA94C3A8();
      v12 = v11;

      *&v56 = v10;
      *(&v56 + 1) = v12;
      sub_1CA94D848();
      v13 = OUTLINED_FUNCTION_1_13();
      v15 = [v13 v14];
      swift_unknownObjectRelease();
      if (v15)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v58 = v56;
      v59 = v57;
      if (!*(&v57 + 1))
      {
        sub_1CA2C0A74(&v58);
        goto LABEL_28;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_28;
      }

      if (v54 == 0xD00000000000001FLL && v7 == v55)
      {
      }

      else
      {
        v17 = sub_1CA94D7F8();

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v18 = [v1 actionIdentifierKey];
      v19 = sub_1CA94C3A8();
      v21 = v20;

      v22 = sub_1CA94C368();
      *&v58 = v19;
      *(&v58 + 1) = v21;
      OUTLINED_FUNCTION_3_10();
      v23 = OUTLINED_FUNCTION_1_13();
      [v23 v24];

      swift_unknownObjectRelease();
      *&v56 = 0xD00000000000001ALL;
      *(&v56 + 1) = v53;
      sub_1CA94D848();
      v25 = OUTLINED_FUNCTION_1_13();
      v27 = [v25 v26];
      swift_unknownObjectRelease();
      if (v27)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
      }

      else
      {
        v56 = 0u;
        v57 = 0u;
      }

      v58 = v56;
      v59 = v57;
      v7 = v52;
      if (!*(&v57 + 1))
      {
        sub_1CA2C0A74(&v58);
LABEL_27:
        sub_1CA94C1E8();
        v41 = sub_1CA94C1A8();

        *&v58 = 0xD00000000000001ALL;
        *(&v58 + 1) = v53;
        OUTLINED_FUNCTION_3_10();
        v42 = OUTLINED_FUNCTION_1_13();
        [v42 v43];

        swift_unknownObjectRelease();
        goto LABEL_28;
      }

      if ((OUTLINED_FUNCTION_2_14() & 1) == 0)
      {
        goto LABEL_27;
      }

      v28 = v54;
      v29 = sub_1CA94C7A8();
      strcpy(&v58, "addToLibrary");
      BYTE13(v58) = 0;
      HIWORD(v58) = -5120;
      OUTLINED_FUNCTION_3_10();
      v30 = OUTLINED_FUNCTION_0_14();
      [v30 v31];

      swift_unknownObjectRelease();
      v32 = sub_1CA94C368();
      v33 = OUTLINED_FUNCTION_0_14();
      [v33 v34];

      *&v58 = 0xD000000000000027;
      *(&v58 + 1) = v50;
      OUTLINED_FUNCTION_3_10();
      v35 = OUTLINED_FUNCTION_0_14();
      v37 = [v35 v36];
      swift_unknownObjectRelease();
      if (v37)
      {
        sub_1CA94D258();
        swift_unknownObjectRelease();
        __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
        v37 = sub_1CA94D7D8();
        __swift_destroy_boxed_opaque_existential_0(&v58);
      }

      v7 = v52;
      *&v56 = 0xD000000000000014;
      *(&v56 + 1) = v48;
      [v28 __swift_setObject_forKeyedSubscript_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v38 = sub_1CA94C368();
      v39 = OUTLINED_FUNCTION_0_14();
      [v39 v40];

LABEL_28:
    }
  }
}

id ShazamActionMigration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ShazamActionMigration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ShazamActionMigration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA309888()
{
  OUTLINED_FUNCTION_0();
  v0[2] = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00) - 8) + 64);
  v0[3] = OUTLINED_FUNCTION_45();
  v3 = sub_1CA94AA48();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA30996C, 0, 0);
}

uint64_t sub_1CA30996C()
{
  v29 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  sub_1CA94AA68();
  v6 = sub_1CA2F0A90();
  (*(v2 + 8))(v1, v3);
  sub_1CA94AA38();
  v7 = sub_1CA94B458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v7);
  v9 = v0[3];
  if (EnumTagSinglePayload == 1)
  {
    sub_1CA30A3DC(v0[3]);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = sub_1CA94B378();
    v11 = v12;
    (*(*(v7 - 8) + 8))(v9, v7);
  }

  v13 = v0[6];
  v14 = v0[2];
  v15 = v0[3];
  v16 = sub_1CA94AA28();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x1E696E938]);
  v20 = sub_1CA470FE4(v6, v10, v11, v16, v18, 0);
  v28[3] = sub_1CA30A444();
  v28[0] = v20;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 paymentMethodValueType];
  v24 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
  v25 = sub_1CA320AB4(v28, v23);

  v26 = v0[1];

  return v26(v25);
}

uint64_t sub_1CA309B68()
{
  OUTLINED_FUNCTION_0();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00) - 8) + 64);
  v0[11] = OUTLINED_FUNCTION_45();
  v5 = sub_1CA94AA48();
  v0[12] = v5;
  v6 = *(v5 - 8);
  v0[13] = v6;
  v7 = *(v6 + 64);
  v0[14] = OUTLINED_FUNCTION_45();

  return MEMORY[0x1EEE6DFA0](sub_1CA309C50, 0, 0);
}

uint64_t sub_1CA309C50()
{
  v3 = [*(v0 + 72) value];
  sub_1CA94D258();
  swift_unknownObjectRelease();
  v4 = sub_1CA55BBA4(v0 + 16);
  *(v0 + 120) = v4;
  v6 = v4;
  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_1CA2F0A08([v6 type], v7);
  *(v0 + 48) = sub_1CA5EF41C(v6);
  *(v0 + 56) = v9;
  *(v0 + 128) = v9;
  v10 = [v8 displayRepresentation];
  *(v0 + 136) = v10;
  if (v10)
  {
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1CA309E48;
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);

    return sub_1CA3BC4F4();
  }

  else
  {
    OUTLINED_FUNCTION_1_14();
    v14 = sub_1CA94B458();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v14);
    OUTLINED_FUNCTION_4_13();

    OUTLINED_FUNCTION_5();

    return v15();
  }
}

uint64_t sub_1CA309E48()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = v2[18];
  *v4 = *v1;
  v3[19] = v0;

  v6 = v2[17];
  if (v0)
  {
    v7 = v3[16];
    (*(v3[13] + 8))(v3[14], v3[12]);

    v8 = sub_1CA30A03C;
  }

  else
  {

    v8 = sub_1CA309F9C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CA309F9C()
{
  OUTLINED_FUNCTION_1_14();
  v2 = sub_1CA94B458();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v2);
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t sub_1CA30A03C()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA30A0AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CA30A15C;

  return sub_1CA309B68();
}

uint64_t sub_1CA30A15C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_13();
  *v3 = v2;

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA30A240()
{
  OUTLINED_FUNCTION_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1CA30A2D4;

  return sub_1CA309888();
}

uint64_t sub_1CA30A2D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1CA30A3DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CA30A444()
{
  result = qword_1EC4442E8;
  if (!qword_1EC4442E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4442E8);
  }

  return result;
}

id sub_1CA30A4BC()
{
  v40 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Input";
  v6 = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v7 = sub_1CA94C1E8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4442F0, &qword_1CA982FA8);
  *(inited + 120) = v7;
  *(inited + 144) = v8;
  *(inited + 152) = @"LocallyProcessesData";
  v9 = MEMORY[0x1E69E6370];
  *(inited + 160) = 1;
  *(inited + 184) = v9;
  *(inited + 192) = @"Name";
  v10 = @"LocallyProcessesData";
  v11 = @"Name";
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA94C438();
  v17 = v16;
  v18 = sub_1CA948E58();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v39 = 0x80000001CA993B60;
  v22 = [qword_1EDB9F690 bundleURL];
  v23 = sub_1CA948BA8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v27 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v28 = sub_1CA2F9F14(v12, v14, v15, v17, 0, 0, v21, v26);
  v29 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 200) = v28;
  *(inited + 224) = v29;
  *(inited + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CA9813B0;
  v41 = 2;
  v42 = 0;
  v31 = objc_allocWithZone(type metadata accessor for WFDeviceIdiomResource());
  v32 = @"RequiredResources";
  WFDeviceIdiomResource.init(requirement:)(&v41);
  *(v30 + 32) = v33;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438B0, &qword_1CA981658);
  *(inited + 240) = v30;
  v34 = sub_1CA94C368();
  v35 = MEMORY[0x1E69E6158];
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v34;
  *(inited + 280) = 0xD000000000000013;
  *(inited + 288) = v39;
  v36 = sub_1CA94C368();
  *(inited + 344) = v35;
  *(inited + 312) = v36;
  *(inited + 320) = 0x656D614E20707041;
  *(inited + 328) = 0xE800000000000000;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA30A990()
{
  v104 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9A2980;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v109 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = v12;
  v13 = &v98 - v109;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v108 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v106 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v107 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v98 - v107;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v105 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v103 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v101 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v102 = &v98;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v98 - v109;
  sub_1CA948D98();
  v33 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v98 - v107;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v101, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v105;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v103;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v103;
  *(v38 + 192) = &unk_1F49F3D78;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v42;
  *(inited + 224) = v43;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v102 = &v98;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v98 - v109;
  sub_1CA948D98();
  v53 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v98 - v107;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v100 = @"Parameters";
  *(inited + 304) = v105;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v102 = swift_allocObject();
  *(v102 + 1) = xmmword_1CA9813B0;
  v101 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1CA981300;
  *(v56 + 32) = @"AllowsMultipleValues";
  *(v56 + 40) = 1;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 64) = MEMORY[0x1E69E6370];
  *(v56 + 72) = @"AutocapitalizationType";
  *(v56 + 80) = 1701736270;
  *(v56 + 88) = 0xE400000000000000;
  v58 = MEMORY[0x1E69E6158];
  *(v56 + 104) = MEMORY[0x1E69E6158];
  *(v56 + 112) = @"Class";
  *(v56 + 120) = 0xD000000000000014;
  *(v56 + 128) = 0x80000001CA99B500;
  *(v56 + 144) = v58;
  *(v56 + 152) = @"DisableAutocorrection";
  *(v56 + 160) = 1;
  *(v56 + 184) = v57;
  *(v56 + 192) = @"Key";
  *(v56 + 200) = 0x7475706E494657;
  *(v56 + 208) = 0xE700000000000000;
  *(v56 + 224) = v58;
  *(v56 + 232) = @"KeyboardType";
  *(v56 + 240) = 5001813;
  *(v56 + 248) = 0xE300000000000000;
  *(v56 + 264) = v58;
  *(v56 + 272) = @"Label";
  v59 = v100;
  v60 = @"AllowsMultipleValues";
  v61 = @"AutocapitalizationType";
  v62 = @"Class";
  v63 = @"DisableAutocorrection";
  v64 = @"Key";
  v65 = @"KeyboardType";
  v66 = @"Label";
  v67 = sub_1CA94C438();
  v99 = v68;
  v69 = sub_1CA94C438();
  v71 = v70;
  v100 = &v98;
  MEMORY[0x1EEE9AC00](v69);
  v72 = &v98 - v109;
  sub_1CA948D98();
  v73 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v98 - v107;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 280) = sub_1CA2F9F14(v67, v99, v69, v71, 0, 0, v72, v74);
  *(v56 + 304) = v105;
  *(v56 + 312) = @"TextContentType";
  *(v56 + 344) = MEMORY[0x1E69E6158];
  *(v56 + 320) = 5001813;
  *(v56 + 328) = 0xE300000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v76 = @"TextContentType";
  sub_1CA94C1E8();
  v77 = sub_1CA2F864C();
  v78 = v102;
  v102[4] = v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v78;
  *(inited + 344) = v79;
  *(inited + 352) = @"ParameterSummary";
  v80 = @"ParameterSummary";
  v81 = sub_1CA94C438();
  v83 = v82;
  v84 = sub_1CA94C438();
  v86 = v85;
  v105 = &v98;
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v98 - v109;
  sub_1CA948D98();
  v88 = [v108 bundleURL];
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v98 - v107;
  sub_1CA948B68();

  v90 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v91 = sub_1CA2F9F14(v81, v83, v84, v86, 0, 0, v87, v89);
  v92 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v93 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v92;
  *(inited + 384) = v93;
  *(inited + 392) = @"RemoteExecuteOnPlatforms";
  *(inited + 400) = &unk_1F49F3DB8;
  v94 = v103;
  *(inited + 424) = v103;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v94;
  *(inited + 440) = &unk_1F49F3DE8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v95 = @"RemoteExecuteOnPlatforms";
  v96 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA30B668()
{
  v132 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9A2AC0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v133 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v137 = v11;
  v138 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v125 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDB9F690;
  v134 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v135 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v136 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v136;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v133, v5, v6, v8, 0, 0, v12, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v133 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v131 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v129 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v130 = &v125;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v125 - v138;
  sub_1CA948D98();
  v30 = [v13 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v125 - v136;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v129, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v133;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v131;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 2036429383;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  *(inited + 200) = 0x746165706572;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v35;
  *(inited + 232) = @"Input";
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1CA9813C0;
  *(v36 + 32) = 0x656C7069746C754DLL;
  *(v36 + 40) = 0xE800000000000000;
  v37 = MEMORY[0x1E69E6370];
  *(v36 + 48) = 1;
  *(v36 + 72) = v37;
  *(v36 + 80) = 0x6465726975716552;
  *(v36 + 88) = 0xE800000000000000;
  *(v36 + 96) = 0;
  *(v36 + 120) = v37;
  *(v36 + 128) = 0x7365707954;
  *(v36 + 136) = 0xE500000000000000;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v36 + 168) = v131;
  *(v36 + 144) = &unk_1F49F3E18;
  v38 = @"IconColor";
  v39 = @"IconSymbol";
  v40 = @"Input";
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v130 = v42;
  *(inited + 240) = v41;
  *(inited + 264) = v42;
  *(inited + 272) = @"Name";
  v43 = @"Name";
  v127 = sub_1CA94C438();
  v45 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v128 = &v125;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v125 - v138;
  sub_1CA948D98();
  v50 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v125 - v136;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v127, v45, v46, v48, 0, 0, v49, v51);
  v53 = v133;
  *(inited + 304) = v133;
  *(inited + 312) = @"Output";
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1CA981350;
  *(v54 + 32) = 0x75736F6C63736944;
  *(v54 + 40) = 0xEF6C6576654C6572;
  *(v54 + 48) = 0x63696C627550;
  *(v54 + 56) = 0xE600000000000000;
  *(v54 + 72) = MEMORY[0x1E69E6158];
  *(v54 + 80) = 0x656C7069746C754DLL;
  *(v54 + 88) = 0xE800000000000000;
  *(v54 + 96) = 1;
  *(v54 + 120) = MEMORY[0x1E69E6370];
  *(v54 + 128) = 0x614E74757074754FLL;
  *(v54 + 136) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v127 = v57;
  v128 = v56;
  v126 = sub_1CA94C438();
  v59 = v58;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v126);
  v60 = &v125 - v138;
  sub_1CA948D98();
  v61 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v125 - v136;
  sub_1CA948B68();

  v63 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 144) = sub_1CA2F9F14(v128, v127, v126, v59, 0, 0, v60, v62);
  *(v54 + 168) = v53;
  *(v54 + 176) = 0x7365707954;
  *(v54 + 216) = v131;
  *(v54 + 184) = 0xE500000000000000;
  *(v54 + 192) = &unk_1F49F3E48;
  v64 = MEMORY[0x1E69E6158];
  *(inited + 320) = sub_1CA94C1E8();
  *(inited + 344) = v130;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1CA9813B0;
  v130 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1CA981400;
  *(v65 + 32) = @"Class";
  *(v65 + 40) = 0xD000000000000012;
  *(v65 + 48) = 0x80000001CA99B980;
  *(v65 + 64) = v64;
  *(v65 + 72) = @"DefaultValue";
  v66 = MEMORY[0x1E69E6530];
  *(v65 + 80) = 1;
  *(v65 + 104) = v66;
  *(v65 + 112) = @"Key";
  strcpy((v65 + 120), "WFRepeatCount");
  *(v65 + 134) = -4864;
  *(v65 + 144) = v64;
  *(v65 + 152) = @"MinimumValue";
  *(v65 + 160) = 0;
  *(v65 + 184) = v66;
  *(v65 + 192) = @"StepperDescription";
  v67 = @"Parameters";
  v68 = @"Class";
  v69 = @"DefaultValue";
  v70 = @"Key";
  v71 = @"MinimumValue";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438();
  v128 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v125 - v138;
  sub_1CA948D98();
  v79 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v125 - v136;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 200) = sub_1CA2F9F14(v73, v128, v75, v77, 0, 0, v78, v80);
  *(v65 + 224) = v133;
  *(v65 + 232) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438();
  v128 = v84;
  v129 = v83;
  v85 = v84;
  v143 = 0;
  v144 = 0xE000000000000000;
  sub_1CA94D408();

  v143 = v83;
  v144 = v85;
  v141 = 10;
  v142 = 0xE100000000000000;
  v139 = 32;
  v140 = 0xE100000000000000;
  sub_1CA27BAF0();
  v143 = sub_1CA94D1B8();
  v144 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v127 = &v125;
  v88 = v143;
  v126 = v144;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v125 - v138;
  sub_1CA948D98();
  v90 = v134;
  v91 = [v134 bundleURL];
  v125 = &v125;
  MEMORY[0x1EEE9AC00](v91);
  v92 = v136;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v65 + 240) = sub_1CA2F9F14(v88, v126, v129, v128, 0, 0, v89, &v125 - v92);
  v94 = v133;
  *(v65 + 264) = v133;
  *(v65 + 272) = @"StepperPrefix";
  v95 = @"StepperPrefix";
  v96 = sub_1CA94C438();
  v127 = v97;
  v128 = v96;
  v98 = sub_1CA94C438();
  v126 = v99;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v125 - v138;
  sub_1CA948D98();
  v101 = [v90 bundleURL];
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v128, v127, v98, v126, 0, 0, v100, &v125 - v92);
  *(v65 + 304) = v94;
  *(v65 + 280) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v104 = sub_1CA2F864C();
  v105 = v131;
  *(v131 + 32) = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v105;
  *(inited + 384) = v106;
  *(inited + 392) = @"ParameterSummary";
  v107 = @"ParameterSummary";
  v108 = sub_1CA94C438();
  v110 = v109;
  v111 = sub_1CA94C438();
  v113 = v112;
  v133 = &v125;
  MEMORY[0x1EEE9AC00](v111);
  v114 = &v125 - v138;
  sub_1CA948D98();
  v115 = [v134 bundleURL];
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v125 - v136;
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v108, v110, v111, v113, 0, 0, v114, v116);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v120 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v119;
  *(inited + 424) = v120;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 440) = 1;
  v121 = MEMORY[0x1E69E6370];
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 472) = @"SnappingPassthrough";
  *(inited + 504) = v121;
  *(inited + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v122 = @"ResidentCompatible";
  v123 = @"SnappingPassthrough";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA30C708()
{
  OUTLINED_FUNCTION_10_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13_7(v9, v18);
  v10 = sub_1CA94C858();
  OUTLINED_FUNCTION_15_4(v10);
  if (v6 == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_14_8();
    (*(v11 + 8))(v1, v5);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);
    OUTLINED_FUNCTION_11_1();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1CA94C7C8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1CA94C418();
  OUTLINED_FUNCTION_11_1();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_18_8(v14);
  v16 = swift_task_create();

  sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);

  return v16;
}

uint64_t sub_1CA30C978()
{
  OUTLINED_FUNCTION_10_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13_7(v9, v18);
  v10 = sub_1CA94C858();
  OUTLINED_FUNCTION_15_4(v10);
  if (v6 == 1)
  {
    sub_1CA30F7DC(v1, &qword_1EC443880, &qword_1CA982FB0);
  }

  else
  {
    sub_1CA94C848();
    OUTLINED_FUNCTION_14_8();
    (*(v11 + 8))(v1, v5);
  }

  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v13)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);
    OUTLINED_FUNCTION_11_1();
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = v0;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_1CA94C7C8();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1CA94C418();
  OUTLINED_FUNCTION_11_1();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_18_8(v14);
  v16 = swift_task_create();

  sub_1CA30F7DC(v3, &qword_1EC443880, &qword_1CA982FB0);

  return v16;
}

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFPhotosMemoryCreationAvailabilityResource.init()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443880, &qword_1CA982FB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v11, sel_initWithDefinition_enableDistributedNotifications_, 0, 1);
  v7 = sub_1CA94C858();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v9 = v6;
  sub_1CA30C708();

  return v9;
}

uint64_t sub_1CA30CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1CA949F78();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_1CA9494F8();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443888, &unk_1CA981640) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_1CA949568();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = sub_1CA949558();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v18 = sub_1CA949578();
  v4[18] = v18;
  v19 = *(v18 - 8);
  v4[19] = v19;
  v20 = *(v19 + 64) + 15;
  v4[20] = swift_task_alloc();
  v21 = sub_1CA949528();
  v4[21] = v21;
  v22 = *(v21 - 8);
  v4[22] = v22;
  v23 = *(v22 + 64) + 15;
  v4[23] = swift_task_alloc();
  v24 = sub_1CA9495A8();
  v4[24] = v24;
  v25 = *(v24 - 8);
  v4[25] = v25;
  v26 = *(v25 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA30D058, 0, 0);
}

uint64_t sub_1CA30D058()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[19];
  v16 = v0[21];
  v17 = v0[17];
  v7 = v0[13];
  v8 = v0[14];
  v18 = v0[12];
  v9 = v0[3];
  sub_1CA30D764();
  (*(v6 + 104))(v4, *MEMORY[0x1E69A12A0], v5);
  sub_1CA949518();
  sub_1CA949598();
  (*(v3 + 8))(v2, v16);
  sub_1CA949588();
  sub_1CA949548();
  (*(v7 + 8))(v8, v18);
  v0[27] = *MEMORY[0x1E69E1078];
  OUTLINED_FUNCTION_5_14();
  sub_1CA30F8CC(v10, v11);
  v12 = *(MEMORY[0x1E69E85A8] + 4);
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_2_15(v13);

  return MEMORY[0x1EEE6D8C8](v14);
}

uint64_t sub_1CA30D1E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = *(v2 + 224);
  v4 = *v1;
  OUTLINED_FUNCTION_13();
  *v5 = v4;
  *(v6 + 232) = v0;

  if (v0)
  {
    v7 = sub_1CA2AA31C;
  }

  else
  {
    v7 = sub_1CA30D2E4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA30D300()
{
  v47 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v7 = *(v0 + 160);
    v8 = *(v0 + 112);
    v9 = *(v0 + 72);
    v44 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    (*(v4 + 8))(v3, v5);

    OUTLINED_FUNCTION_5();

    return v10();
  }

  else
  {
    v12 = *(v0 + 216);
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
    v15 = *(v0 + 64);
    v16 = *(v0 + 48);
    (*(v15 + 32))(v13, v1, v2);
    sub_1CA949C58();
    (*(v15 + 16))(v14, v13, v2);
    v17 = sub_1CA949F68();
    v18 = sub_1CA94CC08();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    if (v19)
    {
      v45 = *(v0 + 32);
      v26 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v26 = 136315138;
      sub_1CA30F8CC(&unk_1EC4438A0, MEMORY[0x1E69A11A8]);
      v27 = sub_1CA94D798();
      v42 = v22;
      v29 = v28;
      v41 = v18;
      v30 = *(v21 + 8);
      v30(v20, v23);
      v31 = sub_1CA26B54C(v27, v29, &v46);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1CA256000, v17, v41, "Memory Creation availability changed: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1CCAA4BF0](v43, -1, -1);
      MEMORY[0x1CCAA4BF0](v26, -1, -1);

      (*(v24 + 8))(v42, v45);
    }

    else
    {

      v30 = *(v21 + 8);
      v30(v20, v23);
      (*(v24 + 8))(v22, v25);
    }

    v32 = *(v0 + 80);
    v33 = *(v0 + 56);
    v34 = *(v0 + 64) + 8;
    [*(v0 + 24) refreshAvailabilityWithNotification];
    v35 = OUTLINED_FUNCTION_3_3();
    (v30)(v35);
    OUTLINED_FUNCTION_5_14();
    sub_1CA30F8CC(v36, v37);
    v38 = *(MEMORY[0x1E69E85A8] + 4);
    v39 = swift_task_alloc();
    *(v0 + 224) = v39;
    *v39 = v0;
    v40 = OUTLINED_FUNCTION_2_15();

    return MEMORY[0x1EEE6D8C8](v40);
  }
}

uint64_t sub_1CA30D6BC()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_4_4(v6);
  *v7 = v8;
  v7[1] = sub_1CA2DF78C;

  return sub_1CA30CD2C(v2, v3, v4, v5);
}

uint64_t sub_1CA30D764()
{
  v0 = sub_1CA9493B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v35 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CA981370;
  sub_1CA9493A8();
  v17 = sub_1CA949398();
  v19 = v18;
  v20 = *(v1 + 8);
  v20(v15, v0);
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_1CA949378();
  v21 = sub_1CA949398();
  v23 = v22;
  v20(v13, v0);
  *(v16 + 48) = v21;
  *(v16 + 56) = v23;
  sub_1CA949368();
  v24 = sub_1CA949398();
  v26 = v25;
  v20(v10, v0);
  *(v16 + 64) = v24;
  *(v16 + 72) = v26;
  sub_1CA949388();
  v27 = sub_1CA949398();
  v29 = v28;
  v20(v7, v0);
  *(v16 + 80) = v27;
  *(v16 + 88) = v29;
  v30 = v36;
  sub_1CA949358();
  v31 = sub_1CA949398();
  v33 = v32;
  v20(v30, v0);
  *(v16 + 96) = v31;
  *(v16 + 104) = v33;
  return v16;
}

uint64_t WFPhotosMemoryCreationAvailabilityResource.name.getter()
{
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3();
  v0 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v1 = sub_1CA94C368();

  v3 = OUTLINED_FUNCTION_2(v2, sel_localizedStringForKey_value_table_);

  v4 = sub_1CA94C3A8();
  return v4;
}

Swift::Void __swiftcall WFPhotosMemoryCreationAvailabilityResource.refreshAvailability()()
{
  v1 = v0;
  if (sub_1CA30DDE8())
  {

    [v0 updateAvailability:1 withError:0];
  }

  else
  {
    v2 = sub_1CA94C3A8();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1CA97EDF0;
    v6 = *MEMORY[0x1E696A578];
    *(inited + 32) = sub_1CA94C3A8();
    *(inited + 40) = v7;
    sub_1CA94C438();
    if (qword_1EDB9F5F0 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = qword_1EDB9F690;
    v9 = sub_1CA94C368();
    v10 = sub_1CA94C368();

    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = sub_1CA94C3A8();
    v14 = v13;

    v15 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    v16 = *MEMORY[0x1E696A588];
    *(inited + 80) = sub_1CA94C3A8();
    *(inited + 88) = v17;
    sub_1CA94C438();
    v18 = sub_1CA94C368();
    v19 = sub_1CA94C368();

    v20 = [v8 localizedStringForKey:v18 value:v19 table:0];

    v21 = sub_1CA94C3A8();
    v23 = v22;

    *(inited + 120) = v15;
    *(inited + 96) = v21;
    *(inited + 104) = v23;
    v24 = sub_1CA94C1E8();
    v25 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v26 = sub_1CA298568(v2, v4, 1, v24);
    v27 = sub_1CA948AC8();

    [v1 updateAvailability:0 withError:v27];
  }
}

uint64_t sub_1CA30DDE8()
{
  v146 = sub_1CA9494E8();
  v143 = *(v146 - 8);
  v0 = *(v143 + 64);
  v1 = MEMORY[0x1EEE9AC00](v146);
  v142 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v145 = &v135 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443860, &qword_1CA981600);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v149 = &v135 - v6;
  v153 = sub_1CA949498();
  v150 = *(v153 - 8);
  v7 = *(v150 + 64);
  v8 = MEMORY[0x1EEE9AC00](v153);
  v139 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v147 = &v135 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v148 = &v135 - v12;
  v13 = sub_1CA9494B8();
  v14 = *(v13 - 8);
  v151 = v13;
  v152 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v154 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CA949F78();
  v18 = *(v17 - 8);
  v158 = v17;
  v159 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v140 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v144 = &v135 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v141 = &v135 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v138 = &v135 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v137 = &v135 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v135 - v30;
  v160 = sub_1CA949578();
  v31 = *(v160 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v34 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1CA949528();
  v35 = *(v157 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1CA9495A8();
  v39 = *(v156 - 1);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v42 = &v135 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1CA9494F8();
  v155 = *(v43 - 8);
  v44 = *(v155 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v135 = &v135 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v135 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v135 - v50;
  sub_1CA30D764();
  (*(v31 + 104))(v34, *MEMORY[0x1E69A12A0], v160);
  sub_1CA949518();
  sub_1CA949598();
  (*(v35 + 8))(v38, v157);
  sub_1CA949538();
  v52 = v42;
  v53 = v155;
  (*(v39 + 8))(v52, v156);
  v54 = *(v53 + 16);
  v54(v49, v51, v43);
  v55 = *(v53 + 88);
  v160 = v43;
  v56 = v55(v49, v43);
  if (v56 == *MEMORY[0x1E69A0EF8])
  {
    (*(v53 + 96))(v49, v160);
    v58 = v151;
    v57 = v152;
    v59 = v154;
    (*(v152 + 32))(v154, v49, v151);
    v60 = sub_1CA9494A8();
    v61 = v149;
    sub_1CA2ECCA8(v60, v149);

    v62 = v153;
    if (__swift_getEnumTagSinglePayload(v61, 1, v153) == 1)
    {
      v63 = v59;
      sub_1CA30F7DC(v61, &qword_1EC443860, &qword_1CA981600);
      v64 = *MEMORY[0x1E69E1078];
      v65 = v141;
      sub_1CA949C58();
      v66 = sub_1CA949F68();
      v67 = sub_1CA94CBF8();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1CA256000, v66, v67, "Memory Creation restricted with no reason", v68, 2u);
        MEMORY[0x1CCAA4BF0](v68, -1, -1);
      }

      (*(v159 + 8))(v65, v158);
      (*(v57 + 8))(v63, v58);
      goto LABEL_17;
    }

    v86 = v150;
    v87 = v148;
    (*(v150 + 32))(v148, v61, v62);
    v88 = *(v86 + 16);
    v89 = v147;
    v88(v147, v87, v62);
    v90 = (*(v86 + 88))(v89, v62);
    v91 = *MEMORY[0x1E69E1078];
    if (v90 != *MEMORY[0x1E69A0F38])
    {
      v105 = v138;
      sub_1CA949C58();
      v106 = v139;
      v88(v139, v87, v62);
      v107 = sub_1CA949F68();
      v108 = sub_1CA94CC08();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v161[0] = v110;
        *v109 = 136315138;
        sub_1CA30F8CC(&qword_1EC444300, MEMORY[0x1E69A0F90]);
        LODWORD(v156) = v108;
        v111 = sub_1CA94D798();
        v157 = v51;
        v113 = v112;
        v114 = *(v150 + 8);
        v114(v106, v153);
        v115 = sub_1CA26B54C(v111, v113, v161);

        *(v109 + 4) = v115;
        _os_log_impl(&dword_1CA256000, v107, v156, "Memory Creation: restricted with reason %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v110);
        MEMORY[0x1CCAA4BF0](v110, -1, -1);
        v116 = v109;
        v62 = v153;
        MEMORY[0x1CCAA4BF0](v116, -1, -1);

        (*(v159 + 8))(v105, v158);
        v114(v148, v62);
        (*(v152 + 8))(v154, v151);
        (*(v53 + 8))(v157, v160);
      }

      else
      {

        v114 = *(v150 + 8);
        v114(v106, v62);
        (*(v159 + 8))(v105, v158);
        v114(v87, v62);
        (*(v152 + 8))(v154, v151);
        (*(v53 + 8))(v51, v160);
      }

      v114(v147, v62);
      return 0;
    }

    v92 = v137;
    sub_1CA949C58();
    v93 = sub_1CA949F68();
    v94 = sub_1CA94CC08();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v62;
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_1CA256000, v93, v94, "Memory Creation: assetIsNotReady, but still returning available", v96, 2u);
      MEMORY[0x1CCAA4BF0](v96, -1, -1);

      (*(v159 + 8))(v92, v158);
      (*(v150 + 8))(v148, v95);
    }

    else
    {

      (*(v159 + 8))(v92, v158);
      (*(v150 + 8))(v148, v62);
    }

    (*(v57 + 8))(v154, v58);
  }

  else
  {
    if (v56 == *MEMORY[0x1E69A0F00])
    {
      (*(v53 + 96))(v49, v160);
      v69 = v143;
      v70 = v145;
      v71 = v49;
      v72 = v146;
      (*(v143 + 32))(v145, v71, v146);
      v73 = *MEMORY[0x1E69E1078];
      v74 = v144;
      sub_1CA949C58();
      v75 = v142;
      (*(v69 + 16))(v142, v70, v72);
      v76 = sub_1CA949F68();
      v77 = sub_1CA94CC18();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = v75;
        v80 = swift_slowAlloc();
        v161[0] = v80;
        *v78 = 136315138;
        sub_1CA30F8CC(&qword_1EC4442F8, MEMORY[0x1E69A1188]);
        v81 = sub_1CA94D798();
        v157 = v51;
        v83 = v82;
        v84 = *(v69 + 8);
        v84(v79, v72);
        v85 = sub_1CA26B54C(v81, v83, v161);

        *(v78 + 4) = v85;
        _os_log_impl(&dword_1CA256000, v76, v77, "Memory Creation unavailable with info: %s", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x1CCAA4BF0](v80, -1, -1);
        MEMORY[0x1CCAA4BF0](v78, -1, -1);

        (*(v159 + 8))(v144, v158);
        v84(v145, v146);
        (*(v53 + 8))(v157, v160);
        return 0;
      }

      v103 = *(v69 + 8);
      v103(v75, v72);
      (*(v159 + 8))(v74, v158);
      v103(v70, v72);
LABEL_17:
      (*(v53 + 8))(v51, v160);
      return 0;
    }

    v97 = *MEMORY[0x1E69E1078];
    if (v56 != *MEMORY[0x1E69A11A0])
    {
      v117 = v140;
      v118 = *MEMORY[0x1E69E1078];
      sub_1CA949C58();
      v119 = v135;
      v54(v135, v51, v160);
      v120 = sub_1CA949F68();
      v121 = sub_1CA94CC18();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        v157 = v51;
        v161[0] = v156;
        *v122 = 136315138;
        sub_1CA30F8CC(&unk_1EC4438A0, MEMORY[0x1E69A11A8]);
        v123 = v160;
        v124 = sub_1CA94D798();
        v125 = v119;
        v126 = v49;
        v128 = v127;
        v129 = *(v53 + 8);
        v129(v125, v123);
        v130 = sub_1CA26B54C(v124, v128, v161);
        v49 = v126;

        *(v122 + 4) = v130;
        _os_log_impl(&dword_1CA256000, v120, v121, "Memory Creation unavailable, unhandled enum case: %s", v122, 0xCu);
        v131 = v156;
        __swift_destroy_boxed_opaque_existential_0(v156);
        MEMORY[0x1CCAA4BF0](v131, -1, -1);
        MEMORY[0x1CCAA4BF0](v122, -1, -1);

        (*(v159 + 8))(v140, v158);
        v132 = v157;
        v133 = v123;
      }

      else
      {

        v129 = *(v53 + 8);
        v134 = v160;
        v129(v119, v160);
        (*(v159 + 8))(v117, v158);
        v132 = v51;
        v133 = v134;
      }

      v129(v132, v133);
      v129(v49, v160);
      return 0;
    }

    v98 = v136;
    v99 = *MEMORY[0x1E69E1078];
    sub_1CA949C58();
    v100 = sub_1CA949F68();
    v101 = sub_1CA94CC08();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_1CA256000, v100, v101, "Memory Creation available", v102, 2u);
      MEMORY[0x1CCAA4BF0](v102, -1, -1);
    }

    (*(v159 + 8))(v98, v158);
  }

  (*(v53 + 8))(v51, v160);
  return 1;
}

uint64_t WFPhotosMemoryCreationAvailabilityResource.localizedErrorReason(for:)(uint64_t a1)
{
  if (a1 == 1 || a1 == 4)
  {
    return 0;
  }

  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3();
  v3 = sub_1CA94C368();
  OUTLINED_FUNCTION_3_3();
  v4 = sub_1CA94C368();

  v6 = OUTLINED_FUNCTION_2(v5, sel_localizedStringForKey_value_table_);

  v2 = sub_1CA94C3A8();
  return v2;
}

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init(definition:enableDistributedNotifications:)(uint64_t a1, char a2)
{
  if (a1)
  {
    v4 = sub_1CA94C1A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithDefinition:v4 enableDistributedNotifications:a2 & 1];

  return v5;
}

id WFPhotosMemoryCreationAvailabilityResource.__allocating_init(definition:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1CA94C1A8();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithDefinition_];

  return v3;
}

id WFPhotosMemoryCreationAvailabilityResource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1CA30F2EC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CA30F3E4;

  return v7(a1);
}

uint64_t sub_1CA30F3E4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_13();
  *v4 = v3;

  OUTLINED_FUNCTION_5();

  return v5();
}

uint64_t sub_1CA30F4C8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1CA30F5BC;

  return v6(v2 + 32);
}

uint64_t sub_1CA30F5BC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t sub_1CA30F6BC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F74C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F7DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CA30F83C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_16_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_2(v1);

  return v4(v3);
}

uint64_t sub_1CA30F8CC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1CA30F948()
{
  v238 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000015;
  *(inited + 48) = 0x80000001CA9A2D50;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v255 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v256 = v12;
  v13 = &v223 - v255;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v252 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v253 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v254 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v223 - v254;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v251 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v249 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v250 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionInput";
  v25 = @"Description";
  v26 = @"DescriptionInput";
  v27 = sub_1CA94C438();
  v245 = v28;
  v246 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v248 = &v223;
  MEMORY[0x1EEE9AC00](v29);
  v247 = inited;
  v32 = &v223 - v255;
  sub_1CA948D98();
  v33 = v252;
  v34 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v223 - v254;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v246, v245, v29, v31, 0, 0, v32, v35);
  v37 = v251;
  *(v24 + 64) = v251;
  *(v24 + 72) = @"DescriptionSummary";
  v38 = @"DescriptionSummary";
  v39 = sub_1CA94C438();
  v245 = v40;
  v246 = v39;
  v41 = sub_1CA94C438();
  v43 = v42;
  v248 = &v223;
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v223 - v255;
  sub_1CA948D98();
  v45 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v45);
  v46 = &v223 - v254;
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v246, v245, v41, v43, 0, 0, v44, v46);
  *(v24 + 104) = v37;
  *(v24 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v250;
  v50 = sub_1CA6B3784();
  v51 = v247;
  v247[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v242 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 0;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  strcpy((v52 + 96), "WFDestination");
  *(v52 + 110) = -4864;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  v54 = v53;
  *(v52 + 184) = 0xE500000000000000;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v250;
  *(v52 + 192) = &unk_1F49F3EB8;
  v55 = @"Input";
  v56 = sub_1CA94C1E8();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v51[25] = v56;
  v51[28] = v57;
  v51[29] = @"InputPassthrough";
  *(v51 + 240) = 1;
  v51[33] = v54;
  v51[34] = @"Name";
  v58 = v51;
  v59 = @"InputPassthrough";
  v60 = @"Name";
  v61 = sub_1CA94C438();
  v63 = v62;
  v64 = sub_1CA94C438();
  v66 = v65;
  v248 = &v223;
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v223 - v255;
  sub_1CA948D98();
  v68 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v223 - v254;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58[35] = sub_1CA2F9F14(v61, v63, v64, v66, 0, 0, v67, v69);
  v58[38] = v251;
  v58[39] = @"Output";
  v71 = @"Output";
  v72 = MEMORY[0x1E69E6158];
  v58[40] = sub_1CA94C1E8();
  v58[43] = v249;
  v58[44] = @"Parameters";
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_1CA981570;
  v248 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1CA981400;
  v240 = "App (IntentAppDefinition)";
  v74 = @"Parameters";
  v239 = 0xD000000000000014;
  *(v73 + 32) = sub_1CA94C368();
  *(v73 + 40) = 1;
  v75 = MEMORY[0x1E69E6370];
  *(v73 + 64) = MEMORY[0x1E69E6370];
  *(v73 + 72) = @"Class";
  *&v227 = 0x80000001CA99B730;
  *(v73 + 104) = v72;
  v223 = 0xD000000000000013;
  *(v73 + 80) = 0xD000000000000013;
  *(v73 + 88) = 0x80000001CA99B730;
  v226 = @"Class";
  *(v73 + 112) = sub_1CA94C368();
  *(v73 + 120) = 1;
  *(v73 + 144) = v75;
  *(v73 + 152) = @"Key";
  *(v73 + 160) = 0x697461636F4C4657;
  *(v73 + 168) = 0xEA00000000006E6FLL;
  *(v73 + 184) = v72;
  *(v73 + 192) = @"Label";
  v76 = @"Key";
  v77 = @"Label";
  v78 = v76;
  v79 = v77;
  v224 = v78;
  v225 = v79;
  v80 = sub_1CA94C438();
  v82 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  v245 = &v223;
  MEMORY[0x1EEE9AC00](v83);
  v86 = &v223 - v255;
  sub_1CA948D98();
  v87 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v223 - v254;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v73 + 200) = sub_1CA2F9F14(v80, v82, v83, v85, 0, 0, v86, v88);
  *(v73 + 224) = v251;
  *(v73 + 232) = @"RequiredResources";
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v90 = swift_allocObject();
  v235 = xmmword_1CA981310;
  *(v90 + 16) = xmmword_1CA981310;
  v91 = swift_allocObject();
  *(v91 + 16) = v242;
  strcpy((v91 + 32), "WFParameterKey");
  *(v91 + 47) = -18;
  v241 = 0x80000001CA9A2F10;
  *(v91 + 48) = 0xD000000000000018;
  *(v91 + 56) = 0x80000001CA9A2F10;
  v92 = MEMORY[0x1E69E6158];
  v93 = v223;
  *(v91 + 72) = MEMORY[0x1E69E6158];
  *(v91 + 80) = v93;
  *(v91 + 88) = 0x80000001CA9939F0;
  *(v91 + 96) = 15649;
  *(v91 + 104) = 0xE200000000000000;
  v233 = 0xD000000000000011;
  v234 = 0x80000001CA9A2F30;
  *(v91 + 120) = v92;
  *(v91 + 128) = 0xD000000000000011;
  *(v91 + 136) = 0x80000001CA9A2F30;
  *(v91 + 144) = &unk_1F49F3F48;
  *(v91 + 168) = v250;
  *(v91 + 176) = 0x72756F7365524657;
  *(v91 + 216) = v92;
  v231 = 0xD00000000000001BLL;
  v232 = 0x80000001CA993590;
  *(v91 + 184) = 0xEF7373616C436563;
  *(v91 + 192) = 0xD00000000000001BLL;
  *(v91 + 200) = 0x80000001CA993590;
  v229 = @"RequiredResources";
  *(v90 + 32) = sub_1CA94C1E8();
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v73 + 264) = v230;
  *(v73 + 240) = v90;
  v228 = 0xD00000000000001DLL;
  *(v73 + 272) = sub_1CA94C368();
  v94 = MEMORY[0x1E69E6370];
  *(v73 + 304) = MEMORY[0x1E69E6370];
  *(v73 + 280) = 1;
  _s3__C3KeyVMa_0(0);
  v245 = v95;
  v244 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v249 + 32) = sub_1CA2F864C();
  v96 = swift_allocObject();
  *(v96 + 16) = v242;
  *(v96 + 32) = sub_1CA94C368();
  *(v96 + 40) = 1;
  v98 = v226;
  v97 = v227;
  *(v96 + 64) = v94;
  *(v96 + 72) = v98;
  *(v96 + 80) = v93;
  *(v96 + 88) = v97;
  v99 = v224;
  v100 = v225;
  *(v96 + 104) = v92;
  *(v96 + 112) = v99;
  strcpy((v96 + 120), "WFDestination");
  *(v96 + 134) = -4864;
  *(v96 + 144) = v92;
  *(v96 + 152) = v100;
  v239 = v98;
  v240 = v99;
  *&v242 = v100;
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  *&v227 = &v223;
  MEMORY[0x1EEE9AC00](v104);
  v107 = &v223 - v255;
  sub_1CA948D98();
  v108 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v223 - v254;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  *(v96 + 184) = v251;
  *(v96 + 160) = v111;
  sub_1CA94C1E8();
  *(v249 + 40) = sub_1CA2F864C();
  v112 = swift_allocObject();
  v227 = xmmword_1CA981370;
  *(v112 + 16) = xmmword_1CA981370;
  *(v112 + 32) = v239;
  *(v112 + 40) = 0xD000000000000018;
  *(v112 + 48) = 0x80000001CA9A2F80;
  v113 = MEMORY[0x1E69E6158];
  *(v112 + 64) = MEMORY[0x1E69E6158];
  *(v112 + 72) = @"DefaultValue";
  *(v112 + 80) = 1936744781;
  *(v112 + 88) = 0xE400000000000000;
  v115 = v240;
  v114 = v241;
  *(v112 + 104) = v113;
  *(v112 + 112) = v115;
  *(v112 + 120) = 0xD000000000000018;
  *(v112 + 128) = v114;
  v116 = v242;
  *(v112 + 144) = v113;
  *(v112 + 152) = v116;
  v226 = @"DefaultValue";
  v117 = sub_1CA94C438();
  v119 = v118;
  v120 = sub_1CA94C438();
  v122 = v121;
  v225 = &v223;
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v223 - v255;
  sub_1CA948D98();
  v124 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v223 - v254;
  sub_1CA948B68();

  v126 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v127 = sub_1CA2F9F14(v117, v119, v120, v122, 0, 0, v123, v125);
  *(v112 + 184) = v251;
  *(v112 + 160) = v127;
  v128 = sub_1CA94C368();
  *(v112 + 224) = v250;
  *(v112 + 192) = v128;
  *(v112 + 200) = &unk_1F49F3F78;
  sub_1CA94C1E8();
  *(v249 + 48) = sub_1CA2F864C();
  v129 = swift_allocObject();
  *(v129 + 16) = v227;
  v130 = v228;
  *(v129 + 32) = v239;
  *(v129 + 40) = v130;
  *(v129 + 48) = 0x80000001CA99FB10;
  v131 = MEMORY[0x1E69E6158];
  v132 = v226;
  *(v129 + 64) = MEMORY[0x1E69E6158];
  *(v129 + 72) = v132;
  *(v129 + 80) = 0x676E6976697244;
  *(v129 + 88) = 0xE700000000000000;
  v133 = v240;
  *(v129 + 104) = v131;
  *(v129 + 112) = v133;
  *(v129 + 120) = 0xD000000000000019;
  *(v129 + 128) = 0x80000001CA99C580;
  v134 = v242;
  *(v129 + 144) = v131;
  *(v129 + 152) = v134;
  v135 = sub_1CA94C438();
  v137 = v136;
  v138 = sub_1CA94C438();
  v140 = v139;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v138);
  v141 = &v223 - v255;
  sub_1CA948D98();
  v142 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v223 - v254;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v129 + 160) = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  v145 = v229;
  *(v129 + 184) = v251;
  *(v129 + 192) = v145;
  v146 = swift_allocObject();
  *(v146 + 16) = v235;
  v147 = swift_initStackObject();
  *(v147 + 16) = xmmword_1CA9813C0;
  strcpy((v147 + 32), "WFParameterKey");
  *(v147 + 47) = -18;
  *(v147 + 48) = 0xD000000000000018;
  *(v147 + 56) = v241;
  v148 = MEMORY[0x1E69E6158];
  v149 = v233;
  v150 = v234;
  *(v147 + 72) = MEMORY[0x1E69E6158];
  *(v147 + 80) = v149;
  *(v147 + 88) = v150;
  *(v147 + 96) = &unk_1F49F3FF8;
  *(v147 + 120) = v250;
  *(v147 + 128) = 0x72756F7365524657;
  *(v147 + 168) = v148;
  *(v147 + 136) = 0xEF7373616C436563;
  v151 = v232;
  *(v147 + 144) = v231;
  *(v147 + 152) = v151;
  *(v146 + 32) = sub_1CA94C1E8();
  *(v129 + 224) = v230;
  *(v129 + 200) = v146;
  sub_1CA94C1E8();
  v152 = sub_1CA2F864C();
  v153 = v249;
  *(v249 + 56) = v152;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v155 = v247;
  v247[45] = v153;
  v155[48] = v154;
  v155[49] = @"ParameterSummary";
  v249 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v251 = swift_allocObject();
  *(v251 + 16) = xmmword_1CA981560;
  v248 = "tionsActionMode)";
  v156 = @"ParameterSummary";
  v157 = sub_1CA94C438();
  v244 = v158;
  v245 = v157;
  v159 = sub_1CA94C438();
  v161 = v160;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v159);
  v162 = v255;
  sub_1CA948D98();
  v163 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v163);
  v164 = v254;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v166 = sub_1CA2F9F14(v245, v244, v159, v161, 0, 0, &v223 - v162, &v223 - v164);
  v167 = objc_allocWithZone(WFActionParameterSummaryValue);
  v168 = sub_1CA65DD78(0xD000000000000026, v248 | 0x8000000000000000, v166);
  *(v251 + 32) = v168;
  v248 = "tDirectionsActionApp}";
  v169 = sub_1CA94C438();
  v244 = v170;
  v245 = v169;
  v171 = sub_1CA94C438();
  v173 = v172;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v171);
  v174 = &v223 - v162;
  sub_1CA948D98();
  v175 = v252;
  v176 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v245, v244, v171, v173, 0, 0, v174, &v223 - v164);
  v179 = objc_allocWithZone(WFActionParameterSummaryValue);
  v180 = sub_1CA65DD78(0xD000000000000018, v248 | 0x8000000000000000, v178);
  *(v251 + 40) = v180;
  v248 = "n} to ${WFDestination}";
  v181 = sub_1CA94C438();
  v244 = v182;
  v245 = v181;
  v183 = sub_1CA94C438();
  v185 = v184;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v183);
  v186 = v255;
  sub_1CA948D98();
  v187 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v187);
  v188 = v254;
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v245, v244, v183, v185, 0, 0, &v223 - v186, &v223 - v188);
  v191 = objc_allocWithZone(WFActionParameterSummaryValue);
  v192 = sub_1CA65DD78(0xD000000000000031, v248 | 0x8000000000000000, v190);
  *(v251 + 48) = v192;
  v248 = "FGetDirectionsActionApp}";
  v193 = sub_1CA94C438();
  v244 = v194;
  v245 = v193;
  v195 = sub_1CA94C438();
  v197 = v196;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v195);
  sub_1CA948D98();
  v198 = [v175 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v200 = sub_1CA2F9F14(v245, v244, v195, v197, 0, 0, &v223 - v186, &v223 - v188);
  v201 = objc_allocWithZone(WFActionParameterSummaryValue);
  v202 = sub_1CA65DD78(0xD000000000000032, v248 | 0x8000000000000000, v200);
  v203 = v251;
  *(v251 + 56) = v202;
  v248 = "to ${WFDestination}";
  v204 = sub_1CA94C438();
  v206 = v205;
  v207 = sub_1CA94C438();
  v209 = v208;
  v246 = &v223;
  MEMORY[0x1EEE9AC00](v207);
  v210 = &v223 - v255;
  sub_1CA948D98();
  v211 = [v252 bundleURL];
  MEMORY[0x1EEE9AC00](v211);
  v212 = &v223 - v254;
  sub_1CA948B68();

  v213 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v214 = sub_1CA2F9F14(v204, v206, v207, v209, 0, 0, v210, v212);
  v215 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v203 + 64) = sub_1CA65DD78(0xD00000000000004BLL, v248 | 0x8000000000000000, v214);
  v216 = v249;
  v217 = sub_1CA65AF90();
  v218 = v247;
  v247[50] = v217;
  v218[53] = v216;
  v218[54] = @"RequiredResources";
  v218[55] = &unk_1F49F4048;
  v219 = v250;
  v218[58] = v250;
  v218[59] = @"UserInterfaces";
  v218[63] = v219;
  v218[60] = &unk_1F49F4078;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v220 = @"RequiredResources";
  v221 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA3114F4()
{
  sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981350;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000018;
  *(inited + 48) = 0x80000001CA9A3320;
  *(inited + 64) = v1;
  *(inited + 72) = @"Discoverable";
  v2 = MEMORY[0x1E69E6370];
  *(inited + 80) = 0;
  *(inited + 104) = v2;
  *(inited + 112) = @"InputPassthrough";
  *(inited + 120) = 1;
  *(inited + 144) = v2;
  *(inited + 152) = @"Name";
  v3 = @"ActionClass";
  v4 = @"Discoverable";
  v5 = @"InputPassthrough";
  v6 = @"Name";
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA94C438();
  v12 = v11;
  v13 = sub_1CA948E58();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v17 = [qword_1EDB9F690 bundleURL];
  v18 = sub_1CA948BA8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v7, v9, v10, v12, 0, 0, v16, v21);
  *(inited + 184) = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v23;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA311800(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1CA320F08();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CA311864(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
}

uint64_t sub_1CA3118E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1CA271BF8();
    if (v4)
    {
      OUTLINED_FUNCTION_205_0(v3);
    }
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA31194C@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  if (*(a1 + 16) && (v6 = sub_1CA271BF8(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = a2(0);
    OUTLINED_FUNCTION_52(v10);
    (*(v11 + 16))(a3, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_200_0();
  }

  else
  {
    a2(0);
    OUTLINED_FUNCTION_46();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_1CA311A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  v3 = sub_1CA271BF8();
  if (v4)
  {
    return OUTLINED_FUNCTION_88_0(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1CA311A58@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (sub_1CA320F08(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_155_1(v3);

    sub_1CA25B374(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_1CA311AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1CA271BF8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void *sub_1CA311B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1CA311B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v5 = *(a3 + 56);
    v6 = type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_52(v6);
    v8 = *(v7 + 72);
    sub_1CA323CB4();
    v9 = OUTLINED_FUNCTION_200_0();
  }

  else
  {
    type metadata accessor for DrawerAction(0);
    OUTLINED_FUNCTION_46();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

double sub_1CA311C0C@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1CA271BF8(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_155_1(v3);

    sub_1CA25B374(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA311C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1CA271BF8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CA311CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1CA271BF8();
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1CA311D00(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  v2 = sub_1CA320E94();
  if (v3)
  {
    return OUTLINED_FUNCTION_88_0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA311D4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_213();
  }

  sub_1CA3210F0();
  if (v3)
  {
    return OUTLINED_FUNCTION_88_0(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA311D98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_1CA3210B4();
    if (v3)
    {
      OUTLINED_FUNCTION_205_0(v2);
    }
  }

  return OUTLINED_FUNCTION_23();
}

uint64_t sub_1CA311DDC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1CA321184(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v2);
  return sub_1CA94C218();
}

double sub_1CA311E28@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1CA320ECC(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_155_1(v3);

    sub_1CA25B374(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1CA311EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return sub_1CA94C218();
}

uint64_t sub_1CA311F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1CA271BF8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_88_0(v3);
  return sub_1CA94C218();
}

uint64_t sub_1CA311F50(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  sub_1CA32127C();
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t ToolInvocationOptionsBox.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_locale);
  v2 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_locale + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

id sub_1CA312038(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_1CA94C368();
    OUTLINED_FUNCTION_87();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

uint64_t ToolInvocationOptionsBox.requestIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_requestIdentifier);
  v2 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_requestIdentifier + 8);
  sub_1CA94C218();
  return OUTLINED_FUNCTION_23();
}

void *ToolInvocationOptionsBox.lnInterfaceIdiom.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFToolInvocationOptions_lnInterfaceIdiom);
  v2 = v1;
  return v1;
}

void ToolInvocationOptionsBox.__allocating_init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_77_1();
  objc_allocWithZone(OUTLINED_FUNCTION_104_1());
  ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)();
  OUTLINED_FUNCTION_76_0();
}

id ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)()
{
  OUTLINED_FUNCTION_104_1();
  ObjectType = swift_getObjectType();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  *&v1[OBJC_IVAR___WFToolInvocationOptions_lnInteractionMode] = v9;
  v10 = &v1[OBJC_IVAR___WFToolInvocationOptions_locale];
  *v10 = v5;
  *(v10 + 1) = v4;
  v11 = &v1[OBJC_IVAR___WFToolInvocationOptions_requestIdentifier];
  *v11 = v3;
  *(v11 + 1) = v2;
  *&v1[OBJC_IVAR___WFToolInvocationOptions_lnInterfaceIdiom] = v0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

void static ToolInvocationOptionsBox.from(options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_77_1();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_81_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444338, &qword_1CA983040);
  OUTLINED_FUNCTION_18_0(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444340, &qword_1CA983048);
  OUTLINED_FUNCTION_18_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_134_0();
  sub_1CA94A568();
  v32 = sub_1CA94A558();
  if (__swift_getEnumTagSinglePayload(v19, 1, v32) != 1)
  {
    OUTLINED_FUNCTION_192_0();
    v34 = v33;
    v36 = (*(v35 + 88))(v19, v32);
    if (v36 != *MEMORY[0x1E69DAB88] && v36 != *MEMORY[0x1E69DAB80] && v36 != *MEMORY[0x1E69DAB70] && v36 != *MEMORY[0x1E69DAB90] && v36 != *MEMORY[0x1E69DAB78])
    {
      (*(v34 + 8))(v19, v32);
    }
  }

  sub_1CA94A548();
  v37 = sub_1CA94A538();
  if (__swift_getEnumTagSinglePayload(v27, 1, v37) == 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_192_0();
  v39 = v38;
  v41 = *(v40 + 88);
  v42 = OUTLINED_FUNCTION_70();
  v44 = v43(v42);
  if (v44 == *MEMORY[0x1E69DAB60])
  {
    goto LABEL_10;
  }

  if (v44 == *MEMORY[0x1E69DAB50])
  {
    v46 = MEMORY[0x1E69ACBB8];
LABEL_31:
    v45 = *v46;
    v47 = *v46;
    goto LABEL_32;
  }

  if (v44 == *MEMORY[0x1E69DAB68])
  {
    v46 = MEMORY[0x1E69ACBC8];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB58])
  {
    v46 = MEMORY[0x1E69ACBD8];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB20])
  {
    v46 = MEMORY[0x1E69ACBE8];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB48])
  {
    v46 = MEMORY[0x1E69ACBB0];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB30])
  {
    v46 = MEMORY[0x1E69ACC08];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB28])
  {
    v46 = MEMORY[0x1E69ACC00];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB38])
  {
    v46 = MEMORY[0x1E69ACC40];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB18])
  {
    v46 = MEMORY[0x1E69ACC20];
    goto LABEL_31;
  }

  if (v44 == *MEMORY[0x1E69DAB40])
  {
    v46 = MEMORY[0x1E69ACC28];
    goto LABEL_31;
  }

  v48 = *(v39 + 8);
  v49 = OUTLINED_FUNCTION_70();
  v50(v49);
LABEL_10:
  v45 = 0;
LABEL_32:
  sub_1CA94A588();
  OUTLINED_FUNCTION_194();
  sub_1CA94A578();
  objc_allocWithZone(v18);
  ToolInvocationOptionsBox.init(lnInteractionMode:locale:requestIdentifier:lnInterfaceIdiom:)();

  OUTLINED_FUNCTION_76_0();
}

uint64_t ToolInvocationBox.ErrorCode.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1CA312798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ToolInvocationBox.ErrorCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t static ToolInvocationBox.Error.errorDomain.getter()
{
  swift_beginAccess();
  sub_1CA94C218();
  return OUTLINED_FUNCTION_3_3();
}

uint64_t static ToolInvocationBox.Error.errorDomain.setter()
{
  OUTLINED_FUNCTION_170_0();
  swift_beginAccess();
  qword_1EC444308 = v1;
  off_1EC444310 = v0;
}

uint64_t (*static ToolInvocationBox.Error.errorDomain.modify())()
{
  OUTLINED_FUNCTION_3_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1CA3128CC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EC444310;
  *a1 = qword_1EC444308;
  a1[1] = v2;
  return sub_1CA94C218();
}

uint64_t sub_1CA31291C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EC444308 = v2;
  off_1EC444310 = v1;
  sub_1CA94C218();
}

uint64_t ToolInvocationBox.Error.errorCode.getter()
{
  if (!*(v0 + 16))
  {
    return 1;
  }

  if (*(v0 + 16) == 1)
  {
    return 3;
  }

  if (*v0 == 0)
  {
    return 2;
  }

  return 4;
}

uint64_t ToolInvocationBox.toolInvocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  v4 = sub_1CA94A2F8();
  v5 = OUTLINED_FUNCTION_52(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

objc_class *ToolInvocationBox.__allocating_init(toolInvocation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  v5 = sub_1CA94A2F8();
  (*(*(v5 - 8) + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  objc_msgSendSuper2(&v9, sel_init);
  v6 = OUTLINED_FUNCTION_198_0();
  v7(v6);
  return v1;
}

char *ToolInvocationBox.init(toolInvocation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  v5 = sub_1CA94A2F8();
  (*(*(v5 - 8) + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_init);
  v6 = OUTLINED_FUNCTION_198_0();
  v7(v6);
  return v1;
}

id ToolInvocationBox.init(encodedToolInvocation:)(id a1, unint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1CA94A2F8();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19();
  v15 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = sub_1CA9489C8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1CA9489B8();
  OUTLINED_FUNCTION_79_1();
  sub_1CA323D64(v22, v23);
  OUTLINED_FUNCTION_126();
  sub_1CA9489A8();
  if (v3)
  {
    sub_1CA266F2C(a1, a2);
  }

  else
  {

    v34 = a1;
    v35 = a2;
    v26 = *(v10 + 16);
    v26(v15, v18, v7);
    v36 = 0;
    v27 = v10;
    v28 = ObjectType;
    v29 = objc_allocWithZone(ObjectType);
    v26(&v29[OBJC_IVAR___WFToolInvocation_toolInvocation], v15, v7);
    v37.receiver = v29;
    v37.super_class = v28;
    a1 = objc_msgSendSuper2(&v37, sel_init);
    v30 = *(v27 + 8);
    v30(v15, v7);
    sub_1CA266F2C(v34, v35);
    v31 = OUTLINED_FUNCTION_137();
    (v30)(v31);
  }

  swift_getObjectType();
  v24 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x30);
  v25 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x34);
  swift_deallocPartialClassInstance();
  return a1;
}

uint64_t ToolInvocationBox.__allocating_init(action:bundleIdentifier:deviceIdentifier:)()
{
  OUTLINED_FUNCTION_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v7 = sub_1CA94A2F8();
  v1[10] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[11] = v8;
  v10 = *(v9 + 64);
  v1[12] = OUTLINED_FUNCTION_13_5();
  v1[13] = swift_task_alloc();
  v11 = sub_1CA94B168();
  v1[14] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[15] = v12;
  v14 = *(v13 + 64);
  v1[16] = OUTLINED_FUNCTION_13_5();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1CA31310C()
{
  OUTLINED_FUNCTION_59_0();
  sub_1CA94A138();
  sub_1CA94A118();
  v0[19] = sub_1CA94A128();

  v1 = v0[8];
  if (v1)
  {
    v2 = v0[17];
    v3 = v0[14];
    v4 = v0[15];
    *v2 = v0[7];
    v2[1] = v1;
    (*(v4 + 104))(v2, *MEMORY[0x1E69DB2E8], v3);
    v5 = *(v4 + 32);
    v6 = OUTLINED_FUNCTION_20_0();
    v7(v6);
  }

  else
  {
    (*(v0[15] + 104))(v0[18], *MEMORY[0x1E69DB2E0], v0[14]);
  }

  v8 = v0[4];
  (*(v0[15] + 16))(v0[16], v0[18], v0[14]);
  v9 = v8;

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1CA313330;
  v11 = v0[16];
  v12 = v0[13];
  v13 = v0[5];
  v14 = v0[6];
  v15 = v0[4];

  return ToolInvocation.init(action:bundleIdentifier:device:database:)();
}

uint64_t sub_1CA313330()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1CA313428()
{
  receiver = v0[9].receiver;
  super_class = v0[8].super_class;
  v19 = v0[8].receiver;
  v1 = v0[7].super_class;
  v15 = v0[9].super_class;
  v16 = v0[7].receiver;
  v3 = v0[6].receiver;
  v2 = v0[6].super_class;
  v5 = v0[5].receiver;
  v4 = v0[5].super_class;
  v6 = v0[4].super_class;
  v14 = v0[2].receiver;
  v7 = *(v4 + 2);
  v8 = OUTLINED_FUNCTION_3_3();
  v7(v8);
  v9 = objc_allocWithZone(v6);
  (v7)(&v9[OBJC_IVAR___WFToolInvocation_toolInvocation], v3, v5);
  v0[1].receiver = v9;
  v0[1].super_class = v6;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);
  v11 = *(v4 + 1);
  v11(v3, v5);

  v11(v2, v5);
  (*(v1 + 1))(receiver, v16);

  OUTLINED_FUNCTION_2_4();

  return v12(v10);
}

void sub_1CA3135B0()
{
  OUTLINED_FUNCTION_6();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[4];

  v6 = OUTLINED_FUNCTION_43_4();
  v7(v6);
  v8 = v0[21];
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v13 = v0[12];
  v12 = v0[13];

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_2();

  __asm { BRAA            X1, X16 }
}

uint64_t ToolInvocation.init(action:bundleIdentifier:device:database:)()
{
  OUTLINED_FUNCTION_0();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[7] = v5;
  v0[8] = v6;
  v7 = sub_1CA949F78();
  v0[13] = v7;
  OUTLINED_FUNCTION_12(v7);
  v0[14] = v8;
  v10 = *(v9 + 64);
  v0[15] = OUTLINED_FUNCTION_45();
  v11 = sub_1CA94AC88();
  v0[16] = v11;
  OUTLINED_FUNCTION_12(v11);
  v0[17] = v12;
  v14 = *(v13 + 64);
  v0[18] = OUTLINED_FUNCTION_13_5();
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_183(v15);
  v17 = type metadata accessor for LinkValueTransformContext(v16);
  v0[20] = v17;
  OUTLINED_FUNCTION_18_0(v17);
  v19 = *(v18 + 64);
  v0[21] = OUTLINED_FUNCTION_45();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CB0, &unk_1CA983060);
  OUTLINED_FUNCTION_18_0(v20);
  v22 = *(v21 + 64);
  v0[22] = OUTLINED_FUNCTION_45();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444348, &qword_1CA985B20);
  v0[23] = v23;
  OUTLINED_FUNCTION_12(v23);
  v0[24] = v24;
  v26 = *(v25 + 64);
  v0[25] = OUTLINED_FUNCTION_45();
  v27 = sub_1CA94A408();
  v0[26] = v27;
  OUTLINED_FUNCTION_12(v27);
  v0[27] = v28;
  v30 = *(v29 + 64);
  v0[28] = OUTLINED_FUNCTION_13_5();
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4454B0, &unk_1CA983070);
  OUTLINED_FUNCTION_18_0(v31);
  v33 = *(v32 + 64);
  v0[31] = OUTLINED_FUNCTION_45();
  v34 = sub_1CA94A288();
  v0[32] = v34;
  OUTLINED_FUNCTION_12(v34);
  v0[33] = v35;
  v37 = *(v36 + 64);
  v0[34] = OUTLINED_FUNCTION_13_5();
  v0[35] = swift_task_alloc();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444CC0, &unk_1CA9867F0);
  v0[36] = v38;
  OUTLINED_FUNCTION_12(v38);
  v0[37] = v39;
  v41 = *(v40 + 64);
  v0[38] = OUTLINED_FUNCTION_45();
  v42 = sub_1CA94B508();
  v0[39] = v42;
  OUTLINED_FUNCTION_12(v42);
  v0[40] = v43;
  v45 = *(v44 + 64);
  v0[41] = OUTLINED_FUNCTION_13_5();
  v0[42] = swift_task_alloc();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v46);
  v48 = *(v47 + 64);
  v0[43] = OUTLINED_FUNCTION_45();
  v49 = sub_1CA94B1C8();
  v0[44] = v49;
  OUTLINED_FUNCTION_12(v49);
  v0[45] = v50;
  v52 = *(v51 + 64);
  v0[46] = OUTLINED_FUNCTION_45();
  v53 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v53, v54, v55);
}

uint64_t sub_1CA313A1C()
{
  v159 = v0[43];
  v147 = v0[42];
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v161 = v0[39];
  v4 = v0[37];
  v151 = v0[36];
  v5 = v0[11];
  v156 = v0[12];
  v6 = v0[9];
  v7 = v0[10];
  sub_1CA94B4F8();
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  *v3 = v8;
  v144 = *MEMORY[0x1E69DA9C0];
  v141 = *(v4 + 104);
  v141(v3);
  sub_1CA323D64(&unk_1EC441CD8, MEMORY[0x1E69DB418]);
  OUTLINED_FUNCTION_100_1(&qword_1EDB9F7C0, &unk_1EC444CC0);
  sub_1CA94A838();

  v9 = *(v4 + 8);
  v9(v3, v151);
  v152 = *(v2 + 8);
  v152(v1, v161);
  v10 = sub_1CA948E58();
  OUTLINED_FUNCTION_1_0(v10);
  v12 = v11;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  sub_1CA948D98();
  sub_1CA94A808();
  v137 = v9;
  v17 = v0[43];
  v16 = v0[44];
  v18 = v0[42];
  v19 = v0[39];
  v148 = *(v12 + 8);
  v148(v15, v10);
  v152(v18, v19);

  if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
  {
    v20 = v0[11];
    v21 = v0[12];
    v22 = v0[8];
    sub_1CA323C64(v0[43], &qword_1EC4445D0);
    v23 = [v22 identifier];
    v24 = sub_1CA94C3A8();
    v26 = v25;

    sub_1CA322384();
    OUTLINED_FUNCTION_127();
    *v27 = v24;
    *(v27 + 8) = v26;
    *(v27 + 16) = 1;
    swift_willThrow();

    v28 = sub_1CA94B168();
    OUTLINED_FUNCTION_7_2(v28);
    (*(v29 + 8))(v20);
LABEL_3:
    OUTLINED_FUNCTION_67_2();
    v31 = v0[30];
    v30 = v0[31];
    v32 = v0[29];
    v139 = v0[28];
    v142 = v0[25];
    v145 = v0[22];
    v149 = v0[21];
    v153 = v0[19];
    v157 = v0[18];
    v162 = v0[15];

    OUTLINED_FUNCTION_5();
LABEL_4:

    return v33();
  }

  v35 = v0[8];
  (*(v0[45] + 32))(v0[46], v0[43], v0[44]);
  v165 = sub_1CA94B0F8();
  v166 = v36;
  MEMORY[0x1CCAA1300](46, 0xE100000000000000);
  v37 = [v35 identifier];
  sub_1CA94C3A8();

  v38 = OUTLINED_FUNCTION_69_0();
  MEMORY[0x1CCAA1300](v38);

  v39 = WFLinkActionIdentifierOverrides();
  v40 = sub_1CA94C1C8();

  v41 = OUTLINED_FUNCTION_204();
  v43 = sub_1CA3118E4(v41, v42, v40);
  v45 = v44;

  v134 = v10;
  if (v45)
  {

    v129 = v43;
    v163 = v45;
  }

  else
  {
    v163 = v166;
    v129 = v165;
  }

  v46 = v0[45];
  v47 = v0[44];
  v126 = v0[38];
  v127 = v0[36];
  v154 = v0[31];
  v128 = v0[30];
  v48 = v0[28];
  v123 = v0[46];
  v124 = v0[29];
  v49 = v0[27];
  v125 = v0[26];
  v51 = v0[24];
  v50 = v0[25];
  v52 = v0[23];
  v53 = v0[11];
  v131 = v0[12];
  sub_1CA94A3D8();
  swift_getKeyPath();
  v54 = swift_allocBox();
  (*(v46 + 16))(v55, v123, v47);
  *v50 = v54;
  (*(v51 + 104))(v50, v144, v52);
  sub_1CA323D64(&qword_1EC441D50, MEMORY[0x1E69DAAB8]);
  OUTLINED_FUNCTION_100_1(&qword_1EC444358, &unk_1EC444348);
  sub_1CA94A838();

  (*(v51 + 8))(v50, v52);
  v56 = *(v49 + 8);
  v56(v48, v125);
  swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v129;
  *(v57 + 24) = v163;
  *v126 = v57;
  (v141)(v126, v144, v127);
  sub_1CA94A838();

  v137(v126, v127);
  v56(v124, v125);
  v58 = swift_task_alloc();
  sub_1CA948D98();
  OUTLINED_FUNCTION_104();
  sub_1CA94A6E8();
  v59 = v0[30];
  v60 = v0[26];
  v62 = v0[31];
  v61 = v0[32];
  v148(v58, v134);
  v63 = OUTLINED_FUNCTION_106_1();
  (v56)(v63);

  if (__swift_getEnumTagSinglePayload(v62, 1, v61) == 1)
  {
    v64 = v0[8];
    sub_1CA323C64(v0[31], &unk_1EC4454B0);
    sub_1CA32059C();
    v65 = v0[46];
    if ((v66 & 1) == 0)
    {
      v91 = v0[44];
      v92 = v0[45];
      v93 = v0[11];
      v94 = v0[12];
      v95 = v0[8];
      v96 = [v95 identifier];
      v97 = sub_1CA94C3A8();
      v99 = v98;

      sub_1CA322384();
      OUTLINED_FUNCTION_127();
      *v100 = v97;
      *(v100 + 8) = v99;
      *(v100 + 16) = 1;
      swift_willThrow();

      v101 = sub_1CA94B168();
      OUTLINED_FUNCTION_7_2(v101);
      (*(v102 + 8))(v93);
      (*(v92 + 8))(v65, v91);
      goto LABEL_3;
    }

    v67 = v0[35];
    v68 = v0[46];
    sub_1CA31FA6C();
  }

  else
  {
    (*(v0[33] + 32))(v0[35], v0[31], v0[32]);
  }

  v69 = v0[16];
  v70 = v0[8];
  v71 = sub_1CA94C1E8();
  v72 = [v70 parameters];
  sub_1CA25B3D0(0, &qword_1EDB9FB20, 0x1E69AC950);
  OUTLINED_FUNCTION_186_0();
  v73 = sub_1CA94C658();
  v0[47] = v73;

  result = sub_1CA25B410(v73);
  v0[48] = result;
  if (!result)
  {
LABEL_24:

    v82 = OUTLINED_FUNCTION_130_0();
    v83(v82);
    sub_1CA2F54CC(v71);

    sub_1CA94A598();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
    OUTLINED_FUNCTION_106_1();
    sub_1CA94A298();
    v89 = v0[45];
    v88 = v0[46];
    v90 = v0[44];
    v108 = v0[43];
    v130 = v0[42];
    v132 = v0[41];
    v109 = v0[35];
    v133 = v0[38];
    v135 = v0[34];
    v110 = v0[32];
    v111 = v0[33];
    v136 = v0[31];
    v138 = v0[30];
    v140 = v0[29];
    v143 = v0[28];
    v146 = v0[25];
    v150 = v0[22];
    v155 = v0[21];
    v158 = v0[19];
    v160 = v0[18];
    v164 = v0[15];
    v113 = v0[11];
    v112 = v0[12];
    v114 = v0[8];

    v115 = sub_1CA94B168();
    OUTLINED_FUNCTION_7_2(v115);
    (*(v116 + 8))(v113);
    v117 = *(v111 + 8);
    v118 = OUTLINED_FUNCTION_137();
    v119(v118);
    v120 = *(v89 + 8);
    v121 = OUTLINED_FUNCTION_20_0();
    v122(v121);

    OUTLINED_FUNCTION_5();
    goto LABEL_4;
  }

  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v74 = 0;
    v0[49] = *MEMORY[0x1E69E10F8];
    while (1)
    {
      v75 = OUTLINED_FUNCTION_188_0(v74);
      v78 = v77 ? *(v76 + 8 * v75 + 32) : MEMORY[0x1CCAA22D0](v75);
      v79 = v78;
      v0[53] = v78;
      v80 = [v78 value];
      v0[54] = v80;
      if (v80)
      {
        break;
      }

      v74 = OUTLINED_FUNCTION_96_2();
      if (v77)
      {
        v81 = v0[47];
        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_174_0(v80);
    sub_1CA94A1E8();
    v103 = &selRef_temporaryDirectoryURL + *(v58 + 24);
    _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
    v104 = [objc_opt_self() defaultContext];
    OUTLINED_FUNCTION_62_0(v104);
    v105 = swift_task_alloc();
    v106 = OUTLINED_FUNCTION_153_1(v105);
    *v106 = v107;
    OUTLINED_FUNCTION_18_9(v106);

    return TypedValueTransformer.transform(input:with:)();
  }

  return result;
}

uint64_t sub_1CA31477C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 440);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v3 + 448) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1CA314880()
{
  v1 = *(v0 + 400);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = [*(v0 + 424) identifier];
  v7 = sub_1CA94C3A8();
  v9 = v8;

  v10 = *(v5 + 16);
  v11 = OUTLINED_FUNCTION_104();
  v12(v11);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 48) = v1;
  OUTLINED_FUNCTION_116();
  v13 = sub_1CA271BF8();
  OUTLINED_FUNCTION_7_0(v13, v14);
  if (v15)
  {
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444360, &qword_1CA983118);
  if (sub_1CA94D588())
  {
    v16 = *(v0 + 48);
    OUTLINED_FUNCTION_116();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_35_3();
    if (!v18)
    {
      OUTLINED_FUNCTION_27_0();

      sub_1CA94D878();
      return;
    }

    v2 = v17;
  }

  v20 = *(v0 + 48);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 128);
  if (v3)
  {
    (*(v22 + 40))(v20[7] + *(v22 + 72) * v2, v21, v23);

    goto LABEL_12;
  }

  v20[(v2 >> 6) + 8] |= 1 << v2;
  v24 = (v20[6] + 16 * v2);
  *v24 = v7;
  v24[1] = v9;
  (*(v22 + 32))(v20[7] + *(v22 + 72) * v2, v21, v23);
  v25 = v20[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v20[2] = v26;
LABEL_12:
  v27 = *(v0 + 168);
  v28 = *(v0 + 152);
  v29 = *(v0 + 128);
  v30 = *(v0 + 136);

  v31 = *(v30 + 8);
  v32 = OUTLINED_FUNCTION_69_0();
  v33(v32);
  OUTLINED_FUNCTION_23_5();
  sub_1CA323DA8(v27, v34);
  v35 = *(v0 + 448);
  while (1)
  {
    v36 = OUTLINED_FUNCTION_96_2();
    if (v18)
    {
      v42 = *(v0 + 376);

      v43 = *(v0 + 176);
      v44 = *(v0 + 56);
      (*(*(v0 + 264) + 16))(*(v0 + 272), *(v0 + 280), *(v0 + 256));
      sub_1CA2F54CC(v20);

      sub_1CA94A598();
      OUTLINED_FUNCTION_46();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
      sub_1CA94A298();
      v50 = *(v0 + 360);
      v49 = *(v0 + 368);
      v51 = *(v0 + 352);
      if (v35)
      {
        v52 = *(v0 + 280);
        v54 = *(v0 + 256);
        v53 = *(v0 + 264);
        v56 = *(v0 + 88);
        v55 = *(v0 + 96);
        v57 = *(v0 + 64);

        v58 = sub_1CA94B168();
        OUTLINED_FUNCTION_7_2(v58);
        (*(v59 + 8))(v56);
        v60 = *(v53 + 8);
        v61 = OUTLINED_FUNCTION_106_1();
        v62(v61);
        v63 = OUTLINED_FUNCTION_95_1();
        v64(v63);
        OUTLINED_FUNCTION_67_2();
        v66 = *(v0 + 240);
        v65 = *(v0 + 248);
        v67 = *(v0 + 232);
        v95 = *(v0 + 224);
        v97 = *(v0 + 200);
        v99 = *(v0 + 176);
        v101 = *(v0 + 168);
        v103 = *(v0 + 152);
        v105 = *(v0 + 144);
        v107 = *(v0 + 120);
      }

      else
      {
        v73 = *(v0 + 344);
        v89 = *(v0 + 336);
        v90 = *(v0 + 328);
        v74 = *(v0 + 280);
        v91 = *(v0 + 304);
        v92 = *(v0 + 272);
        v75 = *(v0 + 256);
        v76 = *(v0 + 264);
        v93 = *(v0 + 248);
        v94 = *(v0 + 240);
        v96 = *(v0 + 232);
        v98 = *(v0 + 224);
        v100 = *(v0 + 200);
        v102 = *(v0 + 176);
        v104 = *(v0 + 168);
        v106 = *(v0 + 152);
        v108 = *(v0 + 144);
        v109 = *(v0 + 120);
        v78 = *(v0 + 88);
        v77 = *(v0 + 96);
        v79 = *(v0 + 64);

        v80 = sub_1CA94B168();
        OUTLINED_FUNCTION_7_2(v80);
        (*(v81 + 8))(v78);
        v82 = *(v76 + 8);
        v83 = OUTLINED_FUNCTION_137();
        v84(v83);
        v85 = OUTLINED_FUNCTION_95_1();
        v86(v85);
      }

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_27_0();

      __asm { BRAA            X1, X16 }
    }

    v37 = OUTLINED_FUNCTION_188_0(v36);
    v39 = v18 ? *(v38 + 8 * v37 + 32) : MEMORY[0x1CCAA22D0](v37);
    v40 = v39;
    *(v0 + 424) = v39;
    v41 = [v39 value];
    *(v0 + 432) = v41;
    if (v41)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_174_0(v41);
  sub_1CA94A1E8();
  _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
  v68 = [objc_opt_self() defaultContext];
  OUTLINED_FUNCTION_62_0(v68);
  v69 = swift_task_alloc();
  v70 = OUTLINED_FUNCTION_153_1(v69);
  *v70 = v71;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_27_0();

  TypedValueTransformer.transform(input:with:)();
}

uint64_t sub_1CA314E50()
{
  v92 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v3 = *(v0 + 392);
  v4 = *(v0 + 120);
  sub_1CA949C58();
  v5 = v2;
  v6 = v1;
  v7 = sub_1CA949F68();
  v8 = sub_1CA94CC18();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 432);
    v81 = *(v0 + 448);
    v83 = *(v0 + 424);
    v89 = *(v0 + 168);
    v10 = *(v0 + 112);
    v85 = *(v0 + 104);
    v87 = *(v0 + 120);
    v11 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v9 debugDescription];
    sub_1CA94C3A8();

    v13 = OUTLINED_FUNCTION_70();
    v16 = sub_1CA26B54C(v13, v14, v15);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v18 = *(v0 + 16);
    v17 = *(v0 + 24);
    v19 = *(v0 + 32);
    v20 = sub_1CA94D8B8();
    v22 = sub_1CA26B54C(v20, v21, &v91);

    *(v11 + 14) = v22;
    _os_log_impl(&dword_1CA256000, v7, v8, "Failed to convert link value: (%s) to typed value due to error: %s.", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    (*(v10 + 8))(v87, v85);
    OUTLINED_FUNCTION_23_5();
    v24 = v89;
  }

  else
  {
    v25 = *(v0 + 448);
    v26 = *(v0 + 424);
    v27 = *(v0 + 168);
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 104);

    v31 = *(v29 + 8);
    v32 = OUTLINED_FUNCTION_70();
    v33(v32);
    OUTLINED_FUNCTION_23_5();
    v24 = v27;
  }

  sub_1CA323DA8(v24, v23);
  v34 = *(v0 + 416);
  v35 = *(v0 + 400);
  while (1)
  {
    v36 = OUTLINED_FUNCTION_96_2();
    if (v37)
    {
      break;
    }

    *(v0 + 408) = v36;
    *(v0 + 416) = v34;
    *(v0 + 400) = v35;
    v38 = *(v0 + 376);
    if ((v38 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1CCAA22D0]();
    }

    else
    {
      v39 = *(v38 + 8 * v36 + 32);
    }

    v40 = v39;
    *(v0 + 424) = v39;
    v41 = [v39 value];
    *(v0 + 432) = v41;
    if (v41)
    {
      OUTLINED_FUNCTION_174_0(v41);
      sub_1CA94A1E8();
      _sSo13WFContentItemC11WorkflowKitE04ToolD21TypeResolutionContextV015measurementUnitF8Provider011outputValueF027displayRepresentationConfig012localizationH0AE0eD0011MeasurementjfK0_pSg_So07LNValueF0CSgAJ07DisplayO13ConfigurationVSo014WFLocalizationH0CtcfcfA1__0();
      v52 = [objc_opt_self() defaultContext];
      OUTLINED_FUNCTION_62_0(v52);
      v53 = swift_task_alloc();
      v54 = OUTLINED_FUNCTION_153_1(v53);
      *v54 = v55;
      OUTLINED_FUNCTION_18_9();

      return TypedValueTransformer.transform(input:with:)();
    }
  }

  v42 = *(v0 + 376);

  v43 = OUTLINED_FUNCTION_130_0();
  v44(v43);
  sub_1CA2F54CC(v34);

  sub_1CA94A598();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_106_1();
  sub_1CA94A298();
  v50 = *(v0 + 360);
  v49 = *(v0 + 368);
  v51 = *(v0 + 352);
  v57 = *(v0 + 344);
  v72 = *(v0 + 336);
  v73 = *(v0 + 328);
  v58 = *(v0 + 280);
  v74 = *(v0 + 304);
  v75 = *(v0 + 272);
  v59 = *(v0 + 256);
  v60 = *(v0 + 264);
  v76 = *(v0 + 248);
  v77 = *(v0 + 240);
  v78 = *(v0 + 232);
  v79 = *(v0 + 224);
  v80 = *(v0 + 200);
  v82 = *(v0 + 176);
  v84 = *(v0 + 168);
  v86 = *(v0 + 152);
  v88 = *(v0 + 144);
  v90 = *(v0 + 120);
  v62 = *(v0 + 88);
  v61 = *(v0 + 96);
  v63 = *(v0 + 64);

  v64 = sub_1CA94B168();
  OUTLINED_FUNCTION_7_2(v64);
  (*(v65 + 8))(v62);
  v66 = *(v60 + 8);
  v67 = OUTLINED_FUNCTION_137();
  v68(v67);
  v69 = OUTLINED_FUNCTION_95_1();
  v70(v69);

  OUTLINED_FUNCTION_5();

  return v71();
}

uint64_t static ToolInvocationBox.invocation(from:bundleIdentifier:deviceIdentifier:)()
{
  OUTLINED_FUNCTION_59_0();
  v1 = v0;
  sub_1CA94C218();
  sub_1CA94C218();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20(v2);
  *v3 = v4;
  v3[1] = sub_1CA31555C;
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169_0();

  return ToolInvocationBox.__allocating_init(action:bundleIdentifier:deviceIdentifier:)();
}

uint64_t sub_1CA31555C()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_13();
  *v7 = v6;

  OUTLINED_FUNCTION_2_4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1CA3156E8(void *a1, int a2, uint64_t a3, void *aBlock)
{
  v4[2] = a1;
  v4[3] = _Block_copy(aBlock);
  sub_1CA94C3A8();
  v4[4] = v7;
  if (a3)
  {
    sub_1CA94C3A8();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v4[5] = v9;
  swift_getObjCClassMetadata();
  v10 = a1;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1CA315810;

  return static ToolInvocationBox.invocation(from:bundleIdentifier:deviceIdentifier:)();
}

uint64_t sub_1CA315810()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_48_1();
  v4 = v3[6];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  OUTLINED_FUNCTION_195_0();
  v10 = *(v9 + 40);
  v11 = v3[3];

  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v12();

    _Block_release(v11);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v13();
    _Block_release(v11);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_217();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

Swift::Bool __swiftcall ToolInvocationBox.containsParameterValueForKey(_:)(Swift::String a1)
{
  v1 = OUTLINED_FUNCTION_20_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = sub_1CA94A2C8();
  OUTLINED_FUNCTION_5_15();
  sub_1CA31194C(v9, v10, v8);

  v11 = sub_1CA94AFA8();
  LOBYTE(v9) = __swift_getEnumTagSinglePayload(v8, 1, v11) != 1;
  sub_1CA323C64(v8, &unk_1EC444C80);
  return v9;
}

uint64_t ToolInvocationBox.valueTypeForParameterWithKey(_:)()
{
  OUTLINED_FUNCTION_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v7 = sub_1CA94AD08();
  v1[6] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_13_5();
  v1[9] = swift_task_alloc();
  v11 = sub_1CA94AC68();
  v1[10] = v11;
  OUTLINED_FUNCTION_12(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94AC88();
  v1[13] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_13_5();
  v1[16] = swift_task_alloc();
  v19 = sub_1CA94ADC8();
  v1[17] = v19;
  OUTLINED_FUNCTION_12(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = OUTLINED_FUNCTION_13_5();
  v1[20] = swift_task_alloc();
  v23 = type metadata accessor for TypedValueConversionContext(0);
  v1[21] = v23;
  OUTLINED_FUNCTION_18_0(v23);
  v25 = *(v24 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  v1[23] = OUTLINED_FUNCTION_45();
  v29 = sub_1CA94AFA8();
  v1[24] = v29;
  OUTLINED_FUNCTION_12(v29);
  v1[25] = v30;
  v32 = *(v31 + 64);
  v1[26] = OUTLINED_FUNCTION_13_5();
  v1[27] = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1CA315D6C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32) + OBJC_IVAR___WFToolInvocation_toolInvocation;
  v6 = sub_1CA94A2C8();
  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_104();
  sub_1CA31194C(v6, v7, v8);

  OUTLINED_FUNCTION_41(v2);
  if (v9)
  {
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    sub_1CA323C64(*(v0 + 184), &unk_1EC444C80);
    sub_1CA322384();
    OUTLINED_FUNCTION_127();
    *v12 = v11;
    *(v12 + 8) = v10;
    *(v12 + 16) = 0;
    swift_willThrow();
    sub_1CA94C218();
    goto LABEL_4;
  }

  v16 = *(v0 + 176);
  (*(*(v0 + 200) + 32))(*(v0 + 216), *(v0 + 184), *(v0 + 192));
  v17 = *MEMORY[0x1E69DB2E0];
  v18 = sub_1CA94B168();
  OUTLINED_FUNCTION_52(v18);
  (*(v19 + 104))(v16, v17);
  if (qword_1EC4420F0 != -1)
  {
    OUTLINED_FUNCTION_97_1();
  }

  v20 = *(v0 + 208);
  v21 = *(v0 + 216);
  v22 = *(v0 + 192);
  v23 = *(v0 + 200);
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = qword_1EC4420F8;
  v27 = (v24 + v25[5]);
  v27[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v27[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v27 = v26;
  v28 = objc_opt_self();

  *(v24 + v25[6]) = [v28 defaultContext];
  *(v24 + v25[7]) = 0;
  v29 = *(v23 + 16);
  v30 = OUTLINED_FUNCTION_52_0();
  v31(v30);
  v32 = *(v23 + 88);
  v33 = OUTLINED_FUNCTION_3_3();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x1E69DB120])
  {
    v36 = *(v0 + 208);
    v37 = *(v0 + 192);
    v38 = *(v0 + 160);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v41 = *(v0 + 104);
    v42 = *(v0 + 112);
    v43 = OUTLINED_FUNCTION_14_1(*(v0 + 200));
    v44(v43);
    v45 = v42[4];
    v46 = OUTLINED_FUNCTION_134();
    v47(v46);
    v48 = v42[2];
    v49 = OUTLINED_FUNCTION_188();
    v50(v49);
    v51 = v42[11];
    v52 = OUTLINED_FUNCTION_70();
    v54 = v53(v52) == *MEMORY[0x1E69DAE18];
    v55 = v42[1];
    v56 = OUTLINED_FUNCTION_70();
    v55(v56);
    sub_1CA94AC28();
    (v55)(v39, v41);
LABEL_11:
    *(v0 + 248) = v54;
    v57 = swift_task_alloc();
    *(v0 + 224) = v57;
    *v57 = v0;
    v57[1] = sub_1CA316354;
    v58 = *(v0 + 176);
    OUTLINED_FUNCTION_73_0(*(v0 + 160));
    OUTLINED_FUNCTION_99();

    return sub_1CA2FD878();
  }

  if (v35 == *MEMORY[0x1E69DB128])
  {
    v61 = *(v0 + 208);
    v62 = *(v0 + 192);
    v63 = *(v0 + 136);
    v65 = *(v0 + 88);
    v64 = *(v0 + 96);
    v67 = *(v0 + 72);
    v66 = *(v0 + 80);
    v68 = *(v0 + 48);
    v69 = *(v0 + 56);
    v70 = *(v0 + 40);
    v71 = OUTLINED_FUNCTION_14_1(*(v0 + 200));
    v72(v71);
    v73 = *(v65 + 32);
    v74 = OUTLINED_FUNCTION_134();
    v75(v74);
    sub_1CA94AC48();
    v76 = sub_1CA94ACE8();
    v77 = *(v69 + 8);
    v78 = OUTLINED_FUNCTION_126();
    v77(v78);
    sub_1CA2ECEE4(v76, v70);

    OUTLINED_FUNCTION_41(v70);
    if (!v9)
    {
      v105 = *(v0 + 152);
      v106 = *(v0 + 160);
      v94 = *(v0 + 88);
      v93 = *(v0 + 96);
      v95 = *(v0 + 80);
      v101 = v95;
      v103 = *(v0 + 136);
      v96 = *(v0 + 56);
      v97 = *(v0 + 64);
      v98 = *(v0 + 40);
      v99 = *(v0 + 48);
      v100 = *(*(v0 + 144) + 32);
      v100();
      sub_1CA94AC48();
      (*(v94 + 8))(v93, v101);
      v54 = (*(v96 + 88))(v97, v99) == *MEMORY[0x1E69DAF18];
      (v77)(v97, v99);
      (v100)(v106, v105, v103);
      goto LABEL_11;
    }

    v79 = *(v0 + 216);
    v81 = *(v0 + 192);
    v80 = *(v0 + 200);
    v82 = *(v0 + 176);
    v84 = *(v0 + 88);
    v83 = *(v0 + 96);
    v85 = *(v0 + 80);
    v86 = *(v0 + 16);
    v87 = *(v0 + 24);
    sub_1CA323C64(*(v0 + 40), &qword_1EC444368);
    sub_1CA322384();
    OUTLINED_FUNCTION_127();
    *v88 = v86;
    *(v88 + 8) = v87;
    *(v88 + 16) = 0;
    swift_willThrow();
    v89 = *(v84 + 8);
    sub_1CA94C218();
    v89(v83, v85);
    OUTLINED_FUNCTION_4_14();
    sub_1CA323DA8(v82, v90);
    (*(v80 + 8))(v79, v81);
LABEL_4:
    OUTLINED_FUNCTION_168_0();
    v13 = *(v0 + 72);
    v102 = *(v0 + 64);
    v104 = *(v0 + 40);

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X1, X16 }
  }

  v91 = *(v0 + 192);
  OUTLINED_FUNCTION_99();

  return sub_1CA94D7E8();
}

uint64_t sub_1CA316354()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v1;
  *(v2 + 232) = v6;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA316454()
{
  v1 = *(v0 + 232);
  if (*(v0 + 248) == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69AC6C0]) initWithMemberValueType_];

    v19 = v2;
  }

  else
  {
    v19 = *(v0 + 232);
  }

  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 176);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 128);
  v14 = *(v0 + 120);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v7, v11);
  (*(v5 + 8))(v3, v6);

  OUTLINED_FUNCTION_2_4();

  return v12(v19);
}

uint64_t sub_1CA3165D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = v14[27];
  v16 = v14[24];
  v17 = v14[25];
  v18 = v14[22];
  (*(v14[18] + 8))(v14[20], v14[17]);
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v18, v19);
  v20 = *(v17 + 8);
  v21 = OUTLINED_FUNCTION_3_3();
  v22(v21);
  v23 = v14[30];
  OUTLINED_FUNCTION_168_0();
  v24 = v14[9];
  v35 = v14[8];
  v36 = v14[5];
  v37 = v25;

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_1CA316774(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1CA94C3A8();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1CA316848;

  return ToolInvocationBox.valueTypeForParameterWithKey(_:)();
}

uint64_t sub_1CA316848()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_48_1();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v2;
  OUTLINED_FUNCTION_13();
  *v8 = v7;

  OUTLINED_FUNCTION_195_0();
  v10 = *(v9 + 24);
  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v11();

    _Block_release(v10);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v12();
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_217();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

NSData __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolInvocationBox.encode()()
{
  v1 = sub_1CA9489F8();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1CA9489E8();
  sub_1CA94A2F8();
  OUTLINED_FUNCTION_79_1();
  sub_1CA323D64(v4, v5);
  v6 = sub_1CA9489D8();
  v8 = v7;

  if (!v0)
  {
    v10 = sub_1CA948BF8();
    sub_1CA266F2C(v6, v8);
    return v10;
  }

  return result;
}

uint64_t ToolInvocationBox.createAction(given:fetchingDefaultValues:)()
{
  OUTLINED_FUNCTION_0();
  *(v1 + 596) = v2;
  *(v1 + 216) = v3;
  *(v1 + 224) = v0;
  v4 = sub_1CA949F78();
  *(v1 + 232) = v4;
  OUTLINED_FUNCTION_12(v4);
  *(v1 + 240) = v5;
  v7 = *(v6 + 64);
  *(v1 + 248) = OUTLINED_FUNCTION_13_5();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v8 = sub_1CA94B258();
  *(v1 + 272) = v8;
  OUTLINED_FUNCTION_12(v8);
  *(v1 + 280) = v9;
  v11 = *(v10 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  *(v1 + 296) = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for ParameterStateValueTransformContext(0);
  *(v1 + 312) = v18;
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  *(v1 + 320) = OUTLINED_FUNCTION_45();
  v21 = sub_1CA94AC88();
  *(v1 + 328) = v21;
  OUTLINED_FUNCTION_12(v21);
  *(v1 + 336) = v22;
  v24 = *(v23 + 64);
  *(v1 + 344) = OUTLINED_FUNCTION_45();
  v25 = sub_1CA94AFA8();
  *(v1 + 352) = v25;
  OUTLINED_FUNCTION_12(v25);
  *(v1 + 360) = v26;
  v28 = *(v27 + 64);
  *(v1 + 368) = OUTLINED_FUNCTION_13_5();
  *(v1 + 376) = swift_task_alloc();
  v29 = sub_1CA94B168();
  *(v1 + 384) = v29;
  OUTLINED_FUNCTION_12(v29);
  *(v1 + 392) = v30;
  v32 = *(v31 + 64);
  *(v1 + 400) = OUTLINED_FUNCTION_45();
  v33 = sub_1CA94A288();
  *(v1 + 408) = v33;
  OUTLINED_FUNCTION_12(v33);
  *(v1 + 416) = v34;
  v36 = *(v35 + 64);
  *(v1 + 424) = OUTLINED_FUNCTION_13_5();
  *(v1 + 432) = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v37, v38, v39);
}

uint64_t sub_1CA3178DC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 528) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA3180F0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 544);
  *v3 = *v1;
  *(v2 + 552) = v6;
  *(v2 + 560) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3189A4()
{
  v148 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 456);
  v4 = *(v0 + 264);
  sub_1CA949C58();
  v5 = v2;
  OUTLINED_FUNCTION_105_1();
  sub_1CA94C218();
  v6 = sub_1CA949F68();
  v7 = sub_1CA94CC28();

  v8 = os_log_type_enabled(v6, v7);
  v143 = *(v0 + 560);
  v140 = *(v0 + 536);
  v9 = *(v0 + 512);
  v10 = MEMORY[0x1E69E7CA0];
  if (v8)
  {
    v124 = *(v0 + 448);
    v125 = *(v0 + 456);
    v132 = *(v0 + 352);
    v134 = *(v0 + 376);
    v130 = *(v0 + 344);
    v131 = *(v0 + 360);
    v128 = *(v0 + 336);
    v129 = *(v0 + 328);
    v137 = *(v0 + 320);
    v11 = *(v0 + 240);
    v126 = *(v0 + 232);
    v127 = *(v0 + 264);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v147 = v13;
    *v12 = 136315394;
    v14 = [v9 key];

    v15 = sub_1CA94C3A8();
    v17 = v16;

    v18 = &selRef_isInputParameter;
    v9 = sub_1CA26B54C(v15, v17, &v147);

    *(v12 + 4) = v9;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1CA26B54C(v124, v125, &v147);
    _os_log_impl(&dword_1CA256000, v6, v7, "Failed to set a parameter state for %s to action %s", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    swift_unknownObjectRelease();

    v19 = (*(v11 + 8))(v127, v126);
    v27 = OUTLINED_FUNCTION_89_0(v19, v20, v21, v22, v23, v24, v25, v26, v123, v124, v125, v126, v127, v128, v129, v130);
    v28(v27);
    (*(v131 + 8))(v134, v132);
  }

  else
  {
    v29 = *(v0 + 360);
    v133 = *(v0 + 352);
    v135 = *(v0 + 376);
    v30 = *(v0 + 336);
    v17 = *(v0 + 344);
    v31 = *(v0 + 328);
    v137 = *(v0 + 320);
    v13 = *(v0 + 264);
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);

    swift_unknownObjectRelease();
    v34 = *(v33 + 8);
    v12 = v33 + 8;
    v35 = OUTLINED_FUNCTION_106_1();
    v36(v35);
    v37 = *(v30 + 8);
    v7 = (v30 + 8);
    v38 = v31;
    v18 = &selRef_isInputParameter;
    v37(v17, v38);
    v39 = *(v29 + 8);
    v10 = (v29 + 8);
    v39(v135, v133);
  }

  OUTLINED_FUNCTION_82_1();
  sub_1CA323DA8(v137, v40);
  while (1)
  {
    OUTLINED_FUNCTION_91_1();
    if (v106)
    {

      v67 = *(v0 + 504);
      OUTLINED_FUNCTION_56_2();
      v68 = v9;
      OUTLINED_FUNCTION_105_1();
      sub_1CA94C218();
      v69 = v7;
      v70 = sub_1CA949F68();
      sub_1CA94CC08();
      OUTLINED_FUNCTION_206_0();

      if (OUTLINED_FUNCTION_178_0())
      {
        v71 = *(v0 + 480);
        v73 = *(v0 + 448);
        v72 = *(v0 + 456);
        v144 = *(v0 + 256);
        v138 = *(v0 + 240);
        v141 = *(v0 + 232);
        v74 = *(v0 + 216);
        OUTLINED_FUNCTION_113_0();
        swift_slowAlloc();
        OUTLINED_FUNCTION_131();
        v147 = OUTLINED_FUNCTION_138_0();
        *v69 = 136315650;
        sub_1CA26B54C(v73, v72, &v147);
        OUTLINED_FUNCTION_212();
        OUTLINED_FUNCTION_90_2();
        v75 = OUTLINED_FUNCTION_140_1([v74 state]);
        type metadata accessor for WFActionRegistryState(v75);
        v76 = OUTLINED_FUNCTION_207_0();
        sub_1CA26B54C(v76, v77, &v147);
        OUTLINED_FUNCTION_210();
        OUTLINED_FUNCTION_55_3();
        OUTLINED_FUNCTION_85_1(&dword_1CA256000, v78, v79, "Produced action %s from registry (status = %s = %@");
        sub_1CA323C64(v10, &qword_1EC444AE0);
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_139_2();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();
        OUTLINED_FUNCTION_154();
        MEMORY[0x1CCAA4BF0]();

        (*(v138 + 8))(v144, v141);
      }

      else
      {
        OUTLINED_FUNCTION_109_1();

        v86 = OUTLINED_FUNCTION_41_1();
        v87(v86);
      }

      OUTLINED_FUNCTION_13_8();
      v136 = *(v0 + 288);
      v139 = *(v0 + 264);
      v142 = *(v0 + 256);
      v145 = *(v0 + 248);
      v88 = *(v0 + 224);
      OUTLINED_FUNCTION_112_1(v89);

      OUTLINED_FUNCTION_1_3();
      OUTLINED_FUNCTION_27_0();

      __asm { BRAA            X2, X16 }
    }

    if ((v42 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1CCAA22D0](v6);
    }

    else
    {
      OUTLINED_FUNCTION_61_2(v41, v42);
      if (v46)
      {
        goto LABEL_54;
      }

      v43 = OUTLINED_FUNCTION_179_0(v44, v45);
    }

    OUTLINED_FUNCTION_98_1(v43);
    *(v0 + 520) = v47;
    if (v48)
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      OUTLINED_FUNCTION_12_0();
LABEL_50:
      OUTLINED_FUNCTION_60_3();
      v116 = OUTLINED_FUNCTION_111_1();
      OUTLINED_FUNCTION_34_4(v116, &protocol witness table for DatabaseContainerDefinitionProvider);
      OUTLINED_FUNCTION_180_0();
      v117 = v9;

      v118 = swift_task_alloc();
      v119 = OUTLINED_FUNCTION_160_0(v118);
      *v119 = v120;
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_27_0();

      return sub_1CA6337C0();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_93();
    v49 = swift_dynamicCastObjCClass();
    if (v49)
    {
      break;
    }

LABEL_14:
    v51 = [*(v0 + 512) v18[126]];
    if (!v51)
    {
      sub_1CA94C3A8();
      v13 = v52;
      sub_1CA94C368();
      OUTLINED_FUNCTION_87();
    }

    v53 = [OUTLINED_FUNCTION_101_1() defaultParameterStateForKey_];
    OUTLINED_FUNCTION_209(v53);
    v54 = [v9 v18[126]];
    if (!v54)
    {
      sub_1CA94C3A8();
      v9 = v55;
      sub_1CA94C368();
      OUTLINED_FUNCTION_171();
    }

    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_103_0();
    [v56 v57];

    v6 = sub_1CA94A2C8();
    v58 = [v9 v18[126]];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_208();
    if (!v6[2].isa)
    {

      swift_unknownObjectRelease();

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_188();
    sub_1CA271BF8();
    OUTLINED_FUNCTION_115();

    if (v58)
    {
      v59 = *(v0 + 592);
      v60 = OUTLINED_FUNCTION_92_0();
      v10(v60);

      v61 = OUTLINED_FUNCTION_94_1();
      v10(v61);
      v62 = *(v17 + 88);
      v17 += 88;
      v63 = OUTLINED_FUNCTION_126();
      if (v64(v63) == v59)
      {
        v92 = *(v0 + 464);
        v146 = *(v0 + 472);
        v93 = OUTLINED_FUNCTION_16_7();
        v94(v93);
        v95 = OUTLINED_FUNCTION_47_2();
        v96(v95);
        OUTLINED_FUNCTION_214();
        v97 = sub_1CA94A1A8();
        v98 = OUTLINED_FUNCTION_69_0();
        v92(v98);
        v99 = 0;
        v100 = *(v97 + 16);
        while (1)
        {
          if (v100 == v99)
          {

            v110 = 1;
            goto LABEL_46;
          }

          if (v99 >= *(v97 + 16))
          {
            goto LABEL_55;
          }

          v101 = *(v0 + 512);
          OUTLINED_FUNCTION_9_6();
          v104(v9, v102 + v103 * v99);
          sub_1CA94B228();
          OUTLINED_FUNCTION_12_1();
          v105 = [v101 key];
          sub_1CA94C3A8();
          OUTLINED_FUNCTION_164_0();

          v106 = v9 == v58 && v9 == v101;
          if (v106)
          {
            break;
          }

          OUTLINED_FUNCTION_57_2();
          OUTLINED_FUNCTION_211();

          if (v9)
          {
            goto LABEL_45;
          }

          v107 = OUTLINED_FUNCTION_71_2();
          v108(v107);
          ++v99;
        }

LABEL_45:

        v111 = OUTLINED_FUNCTION_70_4();
        v109 = v112(v111);
        v110 = 0;
LABEL_46:
        OUTLINED_FUNCTION_10_5(v109, v110);
        if (v106)
        {
          sub_1CA323C64(*(v0 + 296), &unk_1EC444D00);
        }

        else
        {
          OUTLINED_FUNCTION_182_0();
          v113 = OUTLINED_FUNCTION_43_4();
          v114(v113);
        }

        v115 = OUTLINED_FUNCTION_181_0();
        OUTLINED_FUNCTION_69_2(v115);
        if (qword_1EC442008 == -1)
        {
          goto LABEL_50;
        }

        goto LABEL_56;
      }

      v65 = OUTLINED_FUNCTION_30_3();
      (v12)(v65);

      swift_unknownObjectRelease();
      v66 = OUTLINED_FUNCTION_52_0();
      (v12)(v66);
      v18 = &selRef_isInputParameter;
    }

    else
    {

      swift_unknownObjectRelease();
LABEL_24:
    }
  }

  v50 = v49;
  v13 = v13;
  if (![v50 loadsDefaultStateAsynchronously])
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_159_1();
  *(v0 + 16) = v80;
  OUTLINED_FUNCTION_77_3(v0 + 176);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444378, &unk_1CA983160);
  OUTLINED_FUNCTION_1_15(v81);
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_3_11(&block_descriptor_1);
  v82 = OUTLINED_FUNCTION_141();
  [v82 v83];
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x1EEE6DEC8](v84);
}

uint64_t sub_1CA31932C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[56];
  v3 = v0[57];

  v5 = OUTLINED_FUNCTION_116();
  v0[73] = sub_1CA3C0538(v5, v6, 0, 0);
  v7 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA3193AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_162_0();
  v29 = v28[73];
  v30 = v28[57];
  if (v29)
  {
    v31 = v28[31];
    v32 = *MEMORY[0x1E69E10F8];
    v96 = v29;
    sub_1CA949C58();
    sub_1CA94C218();
    v33 = sub_1CA949F68();
    v34 = sub_1CA94CC08();

    v35 = OUTLINED_FUNCTION_178_0();
    v36 = v28[57];
    if (v35)
    {
      v37 = v28[56];
      v38 = v28[30];
      v39 = v28[31];
      v40 = v28[29];
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_113_0();
      a16 = swift_slowAlloc();
      *v41 = 136315138;
      v42 = OUTLINED_FUNCTION_204();
      v45 = sub_1CA26B54C(v42, v43, v44);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1CA256000, v33, v34, "Produced remote action %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a16);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
    }

    else
    {
      v38 = v28[30];
      v63 = v28[31];
      v64 = v28[29];
      v65 = v28[57];
    }

    v66 = *(v38 + 8);
    v67 = OUTLINED_FUNCTION_69_0();
    v68(v67);
    v70 = v28[53];
    v69 = v28[54];
    v71 = v28[50];
    v73 = v28[46];
    v72 = v28[47];
    v74 = v28[43];
    v75 = v28[40];
    v76 = v28[38];
    v87 = v28[37];
    v89 = v28[36];
    v91 = v28[33];
    v93 = v28[32];
    v95 = v28[31];
    [v96 setToolInvocation_];

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_53();

    return v79(v77, v78, v79, v80, v81, v82, v83, v84, a9, v87, v89, v91, v93, v95, v96, a16, a17, a18, a19, a20);
  }

  else
  {
    v46 = v28[56];
    v47 = v28[53];
    v48 = v28[54];
    v49 = v28[50];
    v51 = v28[46];
    v50 = v28[47];
    v52 = v28[43];
    v85 = v28[40];
    v86 = v28[38];
    v88 = v28[37];
    v90 = v28[36];
    v92 = v28[33];
    v94 = v28[32];
    v97 = v28[31];
    sub_1CA322384();
    OUTLINED_FUNCTION_127();
    *v53 = v46;
    *(v53 + 8) = v30;
    *(v53 + 16) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_53();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, v85, v86, v88, v90, v92, v94, v97, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1CA3196E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_162_0();
  a26 = v28;
  v33 = *(v28 + 528);
  v34 = *(v28 + 512);
  v35 = v33;
  swift_willThrow();

  *(v28 + 144) = 0u;
  *(v28 + 160) = 0u;
  sub_1CA323C64(v28 + 144, &unk_1EC444650);
  OUTLINED_FUNCTION_190_0();
  while (1)
  {
    v36 = [*(v28 + 512) v34 + 632];
    if (!v36)
    {
      sub_1CA94C3A8();
      v36 = sub_1CA94C368();
    }

    v37 = *(v28 + 512);
    v38 = [*(v28 + 480) v35 + 2577];
    *(v28 + 536) = v38;

    v39 = [v37 v34 + 632];
    if (!v39)
    {
      sub_1CA94C3A8();
      v39 = sub_1CA94C368();
    }

    v40 = *(v28 + 512);
    v41 = *(v28 + 440);
    v42 = *(v28 + 224);
    [*(v28 + 480) (v29 + 3690)];

    v43 = sub_1CA94A2C8();
    v44 = [v40 v34 + 632];
    sub_1CA94C3A8();

    if (!*(v43 + 16))
    {

      swift_unknownObjectRelease();

LABEL_12:

      goto LABEL_13;
    }

    v45 = sub_1CA271BF8();
    v47 = v46;

    if ((v47 & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v48 = *(v28 + 592);
    v49 = *(v28 + 368);
    v29 = *(v28 + 352);
    v50 = *(v28 + 360);
    v30 = *(v50 + 16);
    (v30)(*(v28 + 376), *(v43 + 56) + *(v50 + 72) * v45, v29);

    v51 = OUTLINED_FUNCTION_137();
    (v30)(v51);
    if ((*(v50 + 88))(v49, v29) == v48)
    {
      v107 = *(v28 + 464);
      v164 = *(v28 + 472);
      v108 = *(v28 + 440);
      v109 = *(v28 + 424);
      v110 = *(v28 + 408);
      v111 = *(v28 + 368);
      v113 = *(v28 + 344);
      v112 = *(v28 + 352);
      v114 = *(v28 + 328);
      v115 = *(v28 + 336);
      v116 = *(v28 + 224);
      v117 = OUTLINED_FUNCTION_14_1(*(v28 + 360));
      v118(v117);
      v119 = *(v115 + 32);
      v120 = OUTLINED_FUNCTION_23();
      v121(v120);
      sub_1CA94A2A8();
      v122 = v109;
      v123 = sub_1CA94A1A8();
      v124 = OUTLINED_FUNCTION_70();
      v107(v124);
      v35 = 0;
      v125 = *(v123 + 16);
      while (1)
      {
        if (v125 == v35)
        {

          v141 = 1;
          goto LABEL_43;
        }

        if (v35 >= *(v123 + 16))
        {
          goto LABEL_52;
        }

        v126 = *(v28 + 512);
        OUTLINED_FUNCTION_9_6();
        v129(v122, v127 + v128 * v35);
        v130 = sub_1CA94B228();
        v122 = v131;
        v132 = [v126 key];
        v133 = sub_1CA94C3A8();
        v135 = v134;

        v136 = v130 == v133 && v122 == v135;
        if (v136)
        {
          break;
        }

        v137 = sub_1CA94D7F8();

        if (v137)
        {
          goto LABEL_42;
        }

        v138 = OUTLINED_FUNCTION_71_2();
        v139(v138);
        ++v35;
      }

LABEL_42:

      v142 = OUTLINED_FUNCTION_70_4();
      v140 = v143(v142);
      v141 = 0;
LABEL_43:
      OUTLINED_FUNCTION_10_5(v140, v141);
      if (v136)
      {
        sub_1CA323C64(*(v28 + 296), &unk_1EC444D00);
      }

      else
      {
        OUTLINED_FUNCTION_182_0();
        v144 = OUTLINED_FUNCTION_43_4();
        v145(v144);
      }

      v146 = OUTLINED_FUNCTION_181_0();
      OUTLINED_FUNCTION_69_2(v146);
      if (qword_1EC442008 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_47;
    }

    v34 = *(v28 + 512);
    v43 = *(v28 + 368);
    v53 = *(v28 + 352);
    v52 = *(v28 + 360);
    v54 = *(v52 + 8);
    v35 = (v52 + 8);
    v54(*(v28 + 376), v53);

    swift_unknownObjectRelease();
    v54(v43, v53);
    OUTLINED_FUNCTION_190_0();
LABEL_13:
    OUTLINED_FUNCTION_91_1();
    if (v136)
    {
      break;
    }

    if ((v56 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1CCAA22D0](v43);
    }

    else
    {
      OUTLINED_FUNCTION_61_2(v55, v56);
      if (v60)
      {
        goto LABEL_51;
      }

      v57 = OUTLINED_FUNCTION_179_0(v58, v59);
    }

    v61 = v57;
    *(v28 + 512) = v57;
    *(v28 + 520) = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      OUTLINED_FUNCTION_12_0();
LABEL_47:
      OUTLINED_FUNCTION_60_3();
      v147 = OUTLINED_FUNCTION_111_1();
      OUTLINED_FUNCTION_34_4(v147, &protocol witness table for DatabaseContainerDefinitionProvider);
      OUTLINED_FUNCTION_180_0();
      v148 = v35;

      v149 = swift_task_alloc();
      v150 = OUTLINED_FUNCTION_160_0(v149);
      *v150 = v151;
      OUTLINED_FUNCTION_2_16();
      OUTLINED_FUNCTION_53();

      return sub_1CA6337C0();
    }

    v62 = *(v30 + 696);
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();
    if (v63)
    {
      v64 = v63;
      v65 = v61;
      if ([v64 loadsDefaultStateAsynchronously])
      {
        OUTLINED_FUNCTION_159_1();
        *(v28 + 16) = v86;
        OUTLINED_FUNCTION_24_5();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444378, &unk_1CA983160);
        OUTLINED_FUNCTION_1_15(v87);
        *(v28 + 88) = 1107296256;
        OUTLINED_FUNCTION_3_11(&block_descriptor_1);
        v88 = OUTLINED_FUNCTION_141();
        [v88 v89];
        OUTLINED_FUNCTION_53();

        return MEMORY[0x1EEE6DEC8](v90);
      }
    }
  }

  v66 = *(v28 + 504);
  v67 = *(v28 + 480);
  v68 = *(v28 + 456);
  v69 = *(v28 + 256);
  v70 = *(v28 + 216);
  sub_1CA949C58();
  v71 = v67;
  sub_1CA94C218();
  v72 = v70;
  v73 = sub_1CA949F68();
  v74 = sub_1CA94CC08();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = *(v28 + 480);
    v76 = *(v28 + 448);
    v77 = *(v28 + 456);
    v162 = *(v28 + 256);
    v157 = *(v28 + 240);
    v159 = *(v28 + 232);
    v78 = *(v28 + 216);
    OUTLINED_FUNCTION_113_0();
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    a16 = swift_slowAlloc();
    *v79 = 136315650;
    v81 = sub_1CA26B54C(v76, v77, &a16);

    *(v79 + 4) = v81;
    *(v79 + 12) = 2080;
    v82 = OUTLINED_FUNCTION_140_1([v78 state]);
    type metadata accessor for WFActionRegistryState(v82);
    v83 = sub_1CA94C408();
    sub_1CA26B54C(v83, v84, &a16);
    OUTLINED_FUNCTION_105_1();

    *(v79 + 14) = v81;
    *(v79 + 22) = 2112;
    *(v79 + 24) = v75;
    *v80 = v75;
    v85 = v75;
    _os_log_impl(&dword_1CA256000, v73, v74, "Produced action %s from registry (status = %s = %@", v79, 0x20u);
    sub_1CA323C64(v80, &qword_1EC444AE0);
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();
    OUTLINED_FUNCTION_154();
    MEMORY[0x1CCAA4BF0]();

    (*(v157 + 8))(v162, v159);
  }

  else
  {
    OUTLINED_FUNCTION_109_1();

    v92 = OUTLINED_FUNCTION_41_1();
    v93(v92);
  }

  OUTLINED_FUNCTION_13_8();
  v154 = v94;
  v155 = v95;
  v156 = v96;
  v158 = *(v28 + 288);
  v160 = *(v28 + 264);
  v161 = *(v28 + 256);
  v163 = *(v28 + 248);
  v97 = *(v28 + 224);
  OUTLINED_FUNCTION_112_1(v98);

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_53();

  return v101(v99, v100, v101, v102, v103, v104, v105, v106, v154, v155, v156, v158, v160, v161, v163, a16, a17, a18, a19, a20);
}

uint64_t sub_1CA319F94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1CA35FF80(v5, v6);
  }

  else
  {
    if (a2)
    {
      *(&v11 + 1) = swift_getObjectType();
      *&v10 = a2;
      sub_1CA2C0A20(&v10, &v8);
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10 = v8;
    v11 = v9;
    swift_unknownObjectRetain();
    return sub_1CA35E710(v5, &v10);
  }
}

uint64_t sub_1CA31A054@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = a2;
  v48 = a1;
  v3 = sub_1CA94B258();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CA94A288();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v42 = &v41 - v15;
  sub_1CA94A2A8();
  v16 = sub_1CA94A1A8();
  (*(v9 + 8))(v12, v8);
  v17 = 0;
  v18 = *(v16 + 16);
  v45 = v4 + 16;
  v46 = v18;
  v47 = v4;
  v19 = (v4 + 8);
  while (1)
  {
    if (v46 == v17)
    {

      v31 = 1;
      v32 = v42;
      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v20 = v3;
    (*(v47 + 16))(v7, v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v17, v3);
    v21 = v7;
    v22 = sub_1CA94B228();
    v24 = v23;
    v25 = [v48 key];
    v26 = sub_1CA94C3A8();
    v28 = v27;

    if (v22 == v26 && v24 == v28)
    {
      break;
    }

    v30 = sub_1CA94D7F8();

    if (v30)
    {
      goto LABEL_12;
    }

    v7 = v21;
    v3 = v20;
    (*v19)(v21, v20);
    ++v17;
  }

LABEL_12:

  v3 = v20;
  v32 = v42;
  (*(v47 + 32))(v42, v21, v20);
  v31 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v32, v31, 1, v3);
  if (qword_1EC442008 == -1)
  {
    goto LABEL_14;
  }

LABEL_16:
  swift_once();
LABEL_14:
  v33 = qword_1EC442010;
  v34 = type metadata accessor for DatabaseContainerDefinitionProvider();
  v36 = v43;
  v35 = v44;
  v43[3] = v34;
  v36[4] = &protocol witness table for DatabaseContainerDefinitionProvider;
  *v36 = v33;
  v37 = v48;
  v36[5] = v48;
  v36[6] = v35;
  v38 = *(type metadata accessor for ContentGraphRepresentationContext(0) + 24);
  sub_1CA323BCC();

  v39 = v37;
  return swift_unknownObjectRetain();
}

uint64_t ToolInvocationBox.processUnion(parameter:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[20] = v2;
  v1[21] = v0;
  OUTLINED_FUNCTION_183(v3);
  v4 = sub_1CA94B1C8();
  v1[22] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[23] = v5;
  v7 = *(v6 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v8 = sub_1CA94A288();
  v1[25] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for TypedValueConversionContext(0);
  v1[28] = v12;
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[29] = OUTLINED_FUNCTION_45();
  v15 = sub_1CA94AC88();
  v1[30] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[31] = v16;
  v18 = *(v17 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v19 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v19);
  v21 = *(v20 + 64);
  v1[33] = OUTLINED_FUNCTION_45();
  v22 = sub_1CA94AC68();
  v1[34] = v22;
  OUTLINED_FUNCTION_12(v22);
  v1[35] = v23;
  v25 = *(v24 + 64);
  v1[36] = OUTLINED_FUNCTION_45();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  v1[37] = OUTLINED_FUNCTION_45();
  v29 = sub_1CA94AFA8();
  v1[38] = v29;
  OUTLINED_FUNCTION_12(v29);
  v1[39] = v30;
  v32 = *(v31 + 64);
  v1[40] = OUTLINED_FUNCTION_13_5();
  v1[41] = swift_task_alloc();
  v33 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1CA31A684()
{
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[19];
  v5 = v0[21] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v6 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_126();
  sub_1CA31194C(v5, v7, v8);

  OUTLINED_FUNCTION_41(v3);
  if (v9)
  {
    v10 = v0[19];
    sub_1CA323C64(v0[37], &unk_1EC444C80);
    v11 = [v10 (v1 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    sub_1CA322384();
    v12 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_127_0(v12, v13);
    v15 = v0[40];
    v14 = v0[41];
    OUTLINED_FUNCTION_31_4();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_99();

    __asm { BRAA            X1, X16 }
  }

  v18 = v0[40];
  v19 = v0[41];
  v20 = v0[39];
  v21 = v0[37];
  v22 = v20[4];
  v23 = OUTLINED_FUNCTION_141();
  v24(v23);
  v25 = v20[2];
  v26 = OUTLINED_FUNCTION_23();
  v27(v26);
  v28 = v20[11];
  v29 = OUTLINED_FUNCTION_20_0();
  v31 = v30(v29);
  if (v31 == *MEMORY[0x1E69DB120])
  {
    v32 = v0[40];
    v33 = v0[38];
    v34 = v0[31];
    v35 = v0[30];
    v37 = v0[26];
    v36 = v0[27];
    v38 = v0[24];
    v73 = v0[32];
    v74 = v0[25];
    v39 = v0[23];
    v75 = v0[29];
    v76 = v0[22];
    v40 = OUTLINED_FUNCTION_14_1(v0[39]);
    v41(v40);
    (*(v34 + 32))(v73, v32, v35);
    sub_1CA94A2A8();
    sub_1CA94A1E8();
    v42 = (*(v37 + 8))(v36, v74);
    MEMORY[0x1CCA9FFE0](v42);
    (*(v39 + 8))(v38, v76);
    if (qword_1EC4420F0 != -1)
    {
      OUTLINED_FUNCTION_97_1();
    }

    v44 = v0[28];
    v43 = v0[29];
    v45 = qword_1EC4420F8;
    v46 = (v43 + v44[5]);
    v46[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
    v46[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
    *v46 = v45;
    v47 = objc_opt_self();

    *(v43 + v44[6]) = [v47 defaultContext];
    *(v43 + v44[7]) = 0;
    v48 = swift_task_alloc();
    v0[44] = v48;
    *v48 = v0;
    v48[1] = sub_1CA31B0AC;
    v49 = v0[29];
    OUTLINED_FUNCTION_73_0(v0[32]);
    OUTLINED_FUNCTION_99();

    return TypedValueTransformer.transform(input:with:)();
  }

  else if (v31 == *MEMORY[0x1E69DB128])
  {
    v53 = v0[35];
    v52 = v0[36];
    v55 = v0[33];
    v54 = v0[34];
    v57 = v0[20];
    v56 = v0[21];
    v58 = v0[19];
    (*(v0[39] + 96))(v0[40], v0[38]);
    v59 = *(v53 + 32);
    v60 = OUTLINED_FUNCTION_106_1();
    v61(v60);
    v62 = OUTLINED_FUNCTION_204();
    sub_1CA31A054(v62, v63, v64);
    v0[42] = TypedValue.ID.variable.getter();
    v67 = *(v0[33] + 48);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1CA31ABB8;
    swift_continuation_init();
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v68);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v69 v70];
    OUTLINED_FUNCTION_99();

    return MEMORY[0x1EEE6DEC8](v71);
  }

  else
  {
    v65 = v0[38];
    OUTLINED_FUNCTION_99();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31ABB8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31ACB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  v15 = *(v14 + 144);

  v16 = [v15 items];
  sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
  OUTLINED_FUNCTION_186_0();
  v17 = sub_1CA94C658();

  if (sub_1CA25B410(v17))
  {
    v18 = (v17 & 0xC000000000000001);
    sub_1CA275D70(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1CCAA22D0](0, v17);
    }

    else
    {
      v19 = *(v17 + 32);
    }

    OUTLINED_FUNCTION_105_1();

    v20 = [v17 & 0xC000000000000001 internalRepresentation];
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v59 = *(v14 + 328);
      v23 = *(v14 + 304);
      v22 = *(v14 + 312);
      v24 = *(v14 + 280);
      v25 = *(v14 + 288);
      v27 = *(v14 + 264);
      v26 = *(v14 + 272);
      v60 = [v21 object];

      OUTLINED_FUNCTION_0_15();
      sub_1CA323DA8(v27, v28);
      (*(v24 + 8))(v25, v26);
      (*(v22 + 8))(v59, v23);
      v30 = *(v14 + 320);
      v29 = *(v14 + 328);
      OUTLINED_FUNCTION_31_4();

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_24();

      return v33(v31, v32, v33, v34, v35, v36, v37, v38, v59, v60, a11, a12, a13, a14);
    }

    v40 = v15;
  }

  else
  {
    v40 = v15;
  }

  v61 = *(v14 + 328);
  v41 = *(v14 + 304);
  v42 = *(v14 + 312);
  v43 = *(v14 + 280);
  v44 = *(v14 + 288);
  v46 = *(v14 + 264);
  v45 = *(v14 + 272);
  sub_1CA322384();
  OUTLINED_FUNCTION_127();
  *v47 = xmmword_1CA982010;
  *(v47 + 16) = 2;
  swift_willThrow();

  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v46, v48);
  (*(v43 + 8))(v44, v45);
  (*(v42 + 8))(v61, v41);
  v50 = *(v14 + 320);
  v49 = *(v14 + 328);
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, v61, a11, a12, a13, a14);
}

uint64_t sub_1CA31AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[42];
  v14 = v12[43];
  swift_willThrow();

  v15 = v12[43];
  v16 = v12[41];
  v17 = v12[38];
  v18 = v12[39];
  v20 = v12[35];
  v19 = v12[36];
  v21 = v12[33];
  v22 = v12[34];
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v23, v24);
  v25 = *(v20 + 8);
  v26 = OUTLINED_FUNCTION_70();
  v27(v26);
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_20_0();
  v30(v29);
  v32 = v12[40];
  v31 = v12[41];
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
}

uint64_t sub_1CA31B0AC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 352);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 360) = v0;

  if (!v0)
  {
    *(v5 + 368) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[46];
  v14 = v12[41];
  v15 = v12[38];
  v16 = v12[39];
  v18 = v12[31];
  v17 = v12[32];
  v20 = v12[29];
  v19 = v12[30];
  [v13 value];

  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v20, v21);
  v22 = *(v18 + 8);
  v23 = OUTLINED_FUNCTION_126();
  v24(v23);
  v25 = *(v16 + 8);
  v26 = OUTLINED_FUNCTION_69_0();
  v27(v26);
  v29 = v12[40];
  v28 = v12[41];
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_23_0();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_1CA31B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_39_1();
  v13 = v12[41];
  v14 = v12[38];
  v15 = v12[39];
  v17 = v12[31];
  v16 = v12[32];
  v18 = v12[29];
  v19 = v12[30];
  OUTLINED_FUNCTION_4_14();
  sub_1CA323DA8(v20, v21);
  v22 = *(v17 + 8);
  v23 = OUTLINED_FUNCTION_69_0();
  v24(v23);
  v25 = *(v15 + 8);
  v26 = OUTLINED_FUNCTION_3_3();
  v27(v26);
  v28 = v12[45];
  v30 = v12[40];
  v29 = v12[41];
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_23_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_1CA31B444(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  swift_unknownObjectRetain();
  a4;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_1CA31B51C;

  return ToolInvocationBox.processUnion(parameter:variableSource:)();
}

uint64_t sub_1CA31B51C()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_48_1();
  v4 = v3[6];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_195_0();
  v11 = *(v10 + 40);
  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v12();

    _Block_release(v11);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v13();
    _Block_release(v11);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_65_2();

  return v14();
}

uint64_t ToolInvocationBox.value(parameter:ofClass:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1CA94ADC8();
  v1[6] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94A908();
  v1[9] = v9;
  OUTLINED_FUNCTION_12(v9);
  v1[10] = v10;
  v12 = *(v11 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v13 = sub_1CA94AC88();
  v1[12] = v13;
  OUTLINED_FUNCTION_12(v13);
  v1[13] = v14;
  v16 = *(v15 + 64);
  v1[14] = OUTLINED_FUNCTION_13_5();
  v1[15] = swift_task_alloc();
  v17 = sub_1CA94B0E8();
  v1[16] = v17;
  OUTLINED_FUNCTION_12(v17);
  v1[17] = v18;
  v20 = *(v19 + 64);
  v1[18] = OUTLINED_FUNCTION_13_5();
  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_183(v21);
  v22 = sub_1CA94B1C8();
  v1[20] = v22;
  OUTLINED_FUNCTION_12(v22);
  v1[21] = v23;
  v25 = *(v24 + 64);
  v1[22] = OUTLINED_FUNCTION_45();
  v26 = sub_1CA94A288();
  v1[23] = v26;
  OUTLINED_FUNCTION_12(v26);
  v1[24] = v27;
  v29 = *(v28 + 64);
  v1[25] = OUTLINED_FUNCTION_45();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v30);
  v32 = *(v31 + 64);
  v33 = OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_140_1(v33);
  v34 = sub_1CA94AFA8();
  v1[27] = v34;
  OUTLINED_FUNCTION_12(v34);
  v1[28] = v35;
  v37 = *(v36 + 64);
  v1[29] = OUTLINED_FUNCTION_13_5();
  v1[30] = swift_task_alloc();
  v38 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v38, v39, v40);
}

uint64_t sub_1CA31B974()
{
  v115 = v0;
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[2];
  v5 = v0[5] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v6 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_126();
  sub_1CA31194C(v5, v7, v8);

  OUTLINED_FUNCTION_41(v3);
  if (v9)
  {
    v10 = v0[2];
    sub_1CA323C64(v0[26], &unk_1EC444C80);
    v11 = [v10 (v1 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    sub_1CA322384();
    v12 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_127_0(v12, v13);
    OUTLINED_FUNCTION_29_5();
    v107 = v0[11];
    v110 = v0[8];

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_202();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[25];
  v17 = v0[23];
  v18 = v0[24];
  v20 = v0[21];
  v19 = v0[22];
  v108 = v17;
  v111 = v0[20];
  v105 = v0[19];
  v22 = v0[17];
  v21 = v0[18];
  v23 = v0[16];
  (*(v0[28] + 32))(v0[30], v0[26], v0[27]);
  sub_1CA94A2A8();
  sub_1CA94A1E8();
  (*(v18 + 8))(v16, v108);
  sub_1CA94B118();
  (*(v20 + 8))(v19, v111);
  (*(v22 + 104))(v21, *MEMORY[0x1E69DB2D0], v23);
  OUTLINED_FUNCTION_104();
  v24 = sub_1CA94B0D8();
  v25 = *(v22 + 8);
  v26 = OUTLINED_FUNCTION_188();
  v25(v26);
  (v25)(v105, v23);
  if (v24)
  {
    v27 = v0[28];
    (*(v27 + 16))(v0[29], v0[30], v0[27]);
    v28 = *(v27 + 88);
    v29 = OUTLINED_FUNCTION_3_3();
    v31 = v30(v29);
    v32 = v0[28];
    if (v31 == *MEMORY[0x1E69DB120])
    {
      v34 = v0[14];
      v33 = v0[15];
      v35 = v0[12];
      v36 = v0[13];
      v37 = OUTLINED_FUNCTION_14_1(v32);
      v38(v37);
      v39 = v36[4];
      v40 = OUTLINED_FUNCTION_23();
      v41(v40);
      v42 = v36[2];
      v43 = OUTLINED_FUNCTION_116();
      v44(v43);
      v45 = v36[11];
      v46 = OUTLINED_FUNCTION_69_0();
      if (v47(v46) == *MEMORY[0x1E69DAE28])
      {
        v48 = v0[14];
        v50 = v0[11];
        v49 = v0[12];
        v51 = v0[9];
        v52 = v0[10];
        v54 = v0[7];
        v53 = v0[8];
        v55 = v0[6];
        v56 = OUTLINED_FUNCTION_14_1(v0[13]);
        v57(v56);
        v58 = *v48;
        v59 = swift_projectBox();
        (*(v52 + 16))(v50, v59, v51);

        sub_1CA94A8B8();
        v60 = *(v54 + 88);
        v61 = OUTLINED_FUNCTION_70();
        if (v62(v61) == *MEMORY[0x1E69DB098])
        {
          v63 = v0[28];
          v109 = v0[27];
          v112 = v0[30];
          v64 = v0[13];
          v104 = v0[12];
          v106 = v0[15];
          v66 = v0[10];
          v65 = v0[11];
          v67 = v0[8];
          v103 = v0[9];
          v68 = v0[6];
          v69 = OUTLINED_FUNCTION_14_1(v0[7]);
          v70(v69);
          v71 = *v67;
          v72 = *(v71 + 32);
          v73 = *(v71 + 40);
          sub_1CA94C218();

          sub_1CA94A898();
          v74 = objc_allocWithZone(MEMORY[0x1E69AC7D8]);
          v75 = sub_1CA320B2C();
          v114[3] = sub_1CA25B3D0(0, &qword_1EC445B70, 0x1E69AC7D8);
          v114[0] = v75;
          v76 = [objc_allocWithZone(MEMORY[0x1E69AC7F0]) init];
          v77 = objc_allocWithZone(MEMORY[0x1E69ACA90]);
          sub_1CA320AB4(v114, v76);
          (*(v66 + 8))(v65, v103);
          (*(v64 + 8))(v106, v104);
          (*(v63 + 8))(v112, v109);
          OUTLINED_FUNCTION_29_5();
          v78 = v0[11];
          v113 = v0[8];

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_202();

          __asm { BRAA            X2, X16 }
        }

        v84 = v0[15];
        v85 = v0[12];
        v86 = v0[13];
        v87 = v0[8];
        v88 = v0[6];
        v89 = v0[7];
        (*(v0[10] + 8))(v0[11], v0[9]);
        v90 = *(v86 + 8);
        v91 = OUTLINED_FUNCTION_3_3();
        v92(v91);
        v93 = *(v89 + 8);
        v94 = OUTLINED_FUNCTION_69_0();
        v95(v94);
      }

      else
      {
        v81 = v0[14];
        v82 = *(v0[13] + 8);
        (v82)(v0[15], v0[12]);
        v83 = OUTLINED_FUNCTION_3_3();
        v82(v83);
      }
    }

    else
    {
      (*(v32 + 8))(v0[29], v0[27]);
    }
  }

  v96 = swift_task_alloc();
  v0[31] = v96;
  *v96 = v0;
  v96[1] = sub_1CA31C018;
  v97 = v0[4];
  v98 = v0[5];
  v99 = v0[2];
  v100 = v0[3];
  OUTLINED_FUNCTION_73_0(v0[30]);
  OUTLINED_FUNCTION_202();

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31C018()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 248);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  (*(v14[28] + 8))(v14[30], v14[27]);
  v15 = v14[33];
  OUTLINED_FUNCTION_29_5();
  v16 = v14[11];
  v27 = v14[8];
  v28 = v17;

  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_24();

  return v20(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_1CA31C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_189();
  (*(v14[28] + 8))(v14[30], v14[27]);
  v15 = v14[32];
  OUTLINED_FUNCTION_29_5();
  v16 = v14[11];
  v27 = v14[8];
  v28 = v17;

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[28] = v2;
  v1[29] = v0;
  v1[26] = v3;
  v1[27] = v4;
  v1[25] = v5;
  v6 = sub_1CA94AC88();
  v1[30] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[31] = v7;
  v9 = *(v8 + 64);
  v1[32] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AC68();
  v1[33] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[34] = v11;
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA94AFA8();
  v1[36] = v14;
  OUTLINED_FUNCTION_12(v14);
  v1[37] = v15;
  v17 = *(v16 + 64);
  v1[38] = OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  v1[39] = OUTLINED_FUNCTION_45();
  v21 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

{
  OUTLINED_FUNCTION_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_1CA94AFA8();
  v1[7] = v6;
  OUTLINED_FUNCTION_12(v6);
  v1[8] = v7;
  v9 = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_45();
  v10 = sub_1CA94AC88();
  v1[10] = v10;
  OUTLINED_FUNCTION_12(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v14 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1CA31C448()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 296);
  v4 = *(v0 + 232);
  v5 = *(v0 + 200);
  sub_1CA31A054(*(v0 + 208), *(v0 + 224), *(v0 + 312));
  (*(v3 + 16))(v1, v5, v2);
  v6 = *(v3 + 88);
  v7 = OUTLINED_FUNCTION_20_0();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E69DB120])
  {
    v10 = *(v0 + 304);
    v11 = *(v0 + 288);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);
    v15 = OUTLINED_FUNCTION_14_1(*(v0 + 296));
    v16(v15);
    v17 = OUTLINED_FUNCTION_46_0();
    v18(v17);
    v19 = swift_task_alloc();
    *(v0 + 360) = v19;
    *v19 = v0;
    v19[1] = sub_1CA31CBD4;
    v20 = *(v0 + 312);
    v21 = *(v0 + 256);
    OUTLINED_FUNCTION_73_0(*(v0 + 216));
    OUTLINED_FUNCTION_9_2();

    return TypedValue.resolve(to:in:)();
  }

  else if (v9 == *MEMORY[0x1E69DB128])
  {
    v24 = *(v0 + 304);
    v26 = *(v0 + 280);
    v25 = *(v0 + 288);
    v27 = *(v0 + 264);
    v28 = *(v0 + 272);
    v29 = OUTLINED_FUNCTION_14_1(*(v0 + 296));
    v30(v29);
    v31 = OUTLINED_FUNCTION_46_0();
    v32(v31);
    *(v0 + 320) = TypedValue.ID.variable.getter();
    v35 = *(*(v0 + 312) + 48);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_1CA31C740;
    swift_continuation_init();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v36);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v37 v38];
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DEC8](v39);
  }

  else
  {
    v33 = *(v0 + 288);
    OUTLINED_FUNCTION_9_2();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31C740()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31C83C()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[40];
  v0[42] = v0[24];

  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_1CA31C8E0;
  v3 = v0[39];
  OUTLINED_FUNCTION_73_0(v0[27]);

  return WFContentCollection.resolve(to:in:)();
}

uint64_t sub_1CA31C8E0()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[18] = v1;
  v2[19] = v4;
  v2[20] = v0;
  v6 = *(v5 + 344);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA31C9E0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[40];
  v2 = v0[41];
  swift_willThrow();

  v3 = v0[41];
  v4 = v0[39];
  v5 = OUTLINED_FUNCTION_152_1();
  v6(v5);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v4, v7);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v8();
}

uint64_t sub_1CA31CA8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 312);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);

  v5 = OUTLINED_FUNCTION_41_1();
  v6(v5);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v7);
  v8 = *(v0 + 152);
  OUTLINED_FUNCTION_110_0();

  v9 = OUTLINED_FUNCTION_1_3();

  return v10(v9);
}

uint64_t sub_1CA31CB34()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = OUTLINED_FUNCTION_152_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v2, v5);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA31CBD4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  v6 = *(v5 + 360);
  v7 = *v1;
  OUTLINED_FUNCTION_13();
  *v8 = v7;
  *(v9 + 368) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA31CCD4()
{
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_197_0();
  v3(v2);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v4);
  v5 = *(v1 + 176);
  OUTLINED_FUNCTION_110_0();

  v6 = OUTLINED_FUNCTION_1_3();

  return v7(v6);
}

uint64_t sub_1CA31CD68()
{
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_197_0();
  v3(v2);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v4);
  v5 = *(v1 + 368);
  OUTLINED_FUNCTION_110_0();

  OUTLINED_FUNCTION_5();

  return v6();
}

uint64_t sub_1CA31CEA0(void *a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v8 = a1;
  swift_unknownObjectRetain();
  a5;
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = sub_1CA323E14;

  return ToolInvocationBox.value(parameter:ofClass:variableSource:)();
}

uint64_t sub_1CA31D090()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[12];
  v2 = v0[2];
  sub_1CA94CE48();
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  (*(v0[11] + 16))(v3, v0[12], v0[10]);
  (*(v4 + 104))(v3, *MEMORY[0x1E69DB120], v5);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1CA31D1D0;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  OUTLINED_FUNCTION_73_0(v0[9]);

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31D1D0()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;
  v7 = v4[13];
  *v6 = *v1;
  v5[14] = v0;

  v8 = v4[9];
  v9 = v4[8];
  v10 = v4[7];
  if (!v0)
  {
    v5[15] = v3;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31D344()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_2_4();
  v3 = v0[15];

  return v2(v3);
}

uint64_t sub_1CA31D3C8()
{
  OUTLINED_FUNCTION_0();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t sub_1CA31D4FC(void *a1, void *a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v6[6] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v10 = a1;
  v11 = a2;
  swift_unknownObjectRetain();
  a6;
  v12 = swift_task_alloc();
  v6[7] = v12;
  *v12 = v6;
  v12[1] = sub_1CA31D604;

  return ToolInvocationBox.processedValue(from:for:ofClass:variableSource:)();
}

uint64_t sub_1CA31D604()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_48_1();
  v4 = v3[7];
  v5 = v3[5];
  v6 = v3[4];
  v7 = v3[3];
  v8 = v3[2];
  v9 = *v2;
  OUTLINED_FUNCTION_13();
  *v10 = v9;

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_195_0();
  v12 = *(v11 + 48);
  if (v0)
  {
    sub_1CA948AC8();

    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_185_0();
    v13();

    _Block_release(v12);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_199_0();
    v14();
    _Block_release(v12);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_65_2();

  return v15();
}

uint64_t sub_1CA31D7BC()
{
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v0[2] = v3;
  v0[3] = v1;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1CA31D854;

  return TypedValue.ID.resolve(in:)(v2);
}

uint64_t sub_1CA31D854()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[5] = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_65_2();

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[6] = v13;
    *v13 = v9;
    v13[1] = sub_1CA31D9B8;
    v14 = v5[3];
    OUTLINED_FUNCTION_73_0(v5[2]);

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA31D9B8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 56) = v0;

  if (!v0)
  {
    *(v5 + 64) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31DAC8()
{
  OUTLINED_FUNCTION_0();

  OUTLINED_FUNCTION_2_4();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1CA31DB28()
{
  OUTLINED_FUNCTION_0();

  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t ToolInvocationBox.contentCollection(for:variableSource:)()
{
  OUTLINED_FUNCTION_0();
  v1[20] = v2;
  v1[21] = v0;
  OUTLINED_FUNCTION_183(v3);
  v4 = sub_1CA94AC88();
  v1[22] = v4;
  OUTLINED_FUNCTION_12(v4);
  v1[23] = v5;
  v7 = *(v6 + 64);
  v1[24] = OUTLINED_FUNCTION_45();
  v8 = sub_1CA94AC68();
  v1[25] = v8;
  OUTLINED_FUNCTION_12(v8);
  v1[26] = v9;
  v11 = *(v10 + 64);
  v1[27] = OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for ContentGraphRepresentationContext(0);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v1[28] = OUTLINED_FUNCTION_45();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444C80, &qword_1CA983128);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  v1[29] = OUTLINED_FUNCTION_45();
  v18 = sub_1CA94AFA8();
  v1[30] = v18;
  OUTLINED_FUNCTION_12(v18);
  v1[31] = v19;
  v21 = *(v20 + 64);
  v1[32] = OUTLINED_FUNCTION_13_5();
  v1[33] = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1CA31DD18()
{
  OUTLINED_FUNCTION_39_1();
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[19];
  v5 = v0[21] + OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2C8();
  v6 = OUTLINED_FUNCTION_126_1();
  sub_1CA94C3A8();
  OUTLINED_FUNCTION_194();

  OUTLINED_FUNCTION_5_15();
  OUTLINED_FUNCTION_126();
  sub_1CA31194C(v5, v7, v8);

  OUTLINED_FUNCTION_41(v3);
  if (v9)
  {
    v10 = v0[19];
    sub_1CA323C64(v0[29], &unk_1EC444C80);
    v11 = [v10 (v1 + 632)];
    sub_1CA94C3A8();
    OUTLINED_FUNCTION_191();

    sub_1CA322384();
    v12 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_127_0(v12, v13);
    OUTLINED_FUNCTION_68_2();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_156_1();

    __asm { BRAA            X1, X16 }
  }

  v16 = v0[32];
  v17 = v0[31];
  v18 = v0[28];
  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  (*(v17 + 32))(v0[33], v0[29], v0[30]);
  v22 = OUTLINED_FUNCTION_204();
  sub_1CA31A054(v22, v23, v24);
  v25 = *(v17 + 16);
  v26 = OUTLINED_FUNCTION_116();
  v27(v26);
  v28 = *(v17 + 88);
  v29 = OUTLINED_FUNCTION_69_0();
  v31 = v30(v29);
  if (v31 == *MEMORY[0x1E69DB120])
  {
    v32 = v0[32];
    v33 = v0[30];
    v35 = v0[23];
    v34 = v0[24];
    v36 = v0[22];
    v37 = OUTLINED_FUNCTION_14_1(v0[31]);
    v38(v37);
    v39 = OUTLINED_FUNCTION_46_0();
    v40(v39);
    v41 = swift_task_alloc();
    v0[36] = v41;
    *v41 = v0;
    v41[1] = sub_1CA31E3C4;
    v42 = v0[24];
    OUTLINED_FUNCTION_73_0(v0[28]);
    OUTLINED_FUNCTION_156_1();

    return TypedValue.resolve(in:)();
  }

  else if (v31 == *MEMORY[0x1E69DB128])
  {
    v45 = v0[32];
    v46 = v0[30];
    v48 = v0[26];
    v47 = v0[27];
    v49 = v0[25];
    v50 = OUTLINED_FUNCTION_14_1(v0[31]);
    v51(v50);
    v52 = OUTLINED_FUNCTION_46_0();
    v53(v52);
    v0[34] = TypedValue.ID.variable.getter();
    v56 = *(v0[28] + 48);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1CA31E114;
    swift_continuation_init();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
    OUTLINED_FUNCTION_1_15(v57);
    v0[11] = 1107296256;
    OUTLINED_FUNCTION_22_5();
    OUTLINED_FUNCTION_169_0();
    [v58 v59];
    OUTLINED_FUNCTION_156_1();

    return MEMORY[0x1EEE6DEC8](v60);
  }

  else
  {
    v54 = v0[30];
    OUTLINED_FUNCTION_156_1();

    return sub_1CA94D7E8();
  }
}

uint64_t sub_1CA31E114()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 280) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA31E210()
{
  OUTLINED_FUNCTION_59_0();
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  v8 = *(v0 + 144);

  v9 = *(v7 + 8);
  v10 = OUTLINED_FUNCTION_126();
  v11(v10);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v4, v12);
  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_20_0();
  v15(v14);
  OUTLINED_FUNCTION_68_2();

  v16 = OUTLINED_FUNCTION_1_3();

  return v17(v16);
}

uint64_t sub_1CA31E2F0()
{
  OUTLINED_FUNCTION_59_0();
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  swift_willThrow();

  v5 = *(v0 + 280);
  v6 = OUTLINED_FUNCTION_166_0();
  v7(v6);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v1, v8);
  v9 = *(v2 + 8);
  v10 = OUTLINED_FUNCTION_20_0();
  v11(v10);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_5();

  return v12();
}

uint64_t sub_1CA31E3C4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 288);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 304) = v3;
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA31E4D4()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_135_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v5);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_3_3();
  v8(v7);
  v9 = *(v1 + 304);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_217();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1CA31E58C()
{
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_135_1();
  v4(v3);
  OUTLINED_FUNCTION_0_15();
  sub_1CA323DA8(v0, v5);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_3_3();
  v8(v7);
  v9 = *(v1 + 296);
  OUTLINED_FUNCTION_68_2();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_217();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

id ToolInvocationBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA31E71C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v76 = sub_1CA949E58();
  v81 = *(v76 - 8);
  v2 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_1CA94AFA8();
  v78 = *(v80 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443E8, &qword_1CA983490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v60 - v8;
  v10 = sub_1CA949E18();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CA94A288();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___WFToolInvocation_toolInvocation;
  sub_1CA94A2A8();
  sub_1CA323D64(&unk_1EC441D60, MEMORY[0x1E69DA9F8]);
  sub_1CA323D64(&qword_1EC441D18, MEMORY[0x1E69DAC70]);
  v20 = v83;
  v21 = sub_1CA949C48();
  if (v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v64 = v10;
  v65 = v9;
  v73 = v19;
  v70 = v1;
  v24 = v21;
  v25 = v22;
  (*(v15 + 8))(v18, v14);
  sub_1CA949E08();
  v61 = v24;
  v62 = v25;
  v63 = v13;
  v83 = 0;
  v26 = sub_1CA94A2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4443F0, &qword_1CA983498);
  result = sub_1CA94D668();
  v27 = 0;
  v29 = v26 + 64;
  v28 = *(v26 + 64);
  v71 = result;
  v72 = v26;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v33 = (v30 + 63) >> 6;
  v34 = v78;
  v68 = v78 + 16;
  v69 = (v78 + 8);
  v35 = v82;
  v66 = v81 + 32;
  v67 = result + 64;
  while (1)
  {
    v37 = v79;
    v36 = v80;
    if (!v32)
    {
      break;
    }

    v38 = __clz(__rbit64(v32));
    v74 = (v32 - 1) & v32;
LABEL_13:
    v42 = v38 | (v27 << 6);
    v43 = (*(v72 + 48) + 16 * v42);
    v45 = *v43;
    v44 = v43[1];
    (*(v34 + 16))(v79, *(v72 + 56) + *(v34 + 72) * v42, v80);
    sub_1CA94C218();
    v46 = v77;
    v47 = v83;
    sub_1CA31EE1C(v37, v77);
    v83 = v47;
    if (v47)
    {
      sub_1CA266F2C(v61, v62);

      (*v69)(v37, v36);
      return (*(v82 + 8))(v63, v64);
    }

    (*v69)(v37, v36);
    *(v67 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v48 = v71;
    v49 = (*(v71 + 48) + 16 * v42);
    *v49 = v45;
    v49[1] = v44;
    result = (*(v81 + 32))(*(v48 + 56) + *(v81 + 72) * v42, v46, v76);
    v50 = *(v48 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_19;
    }

    *(v48 + 16) = v52;
    v35 = v82;
    v34 = v78;
    v32 = v74;
  }

  v39 = v27;
  v40 = v65;
  while (1)
  {
    v27 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v27 >= v33)
    {

      sub_1CA949E98();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443BC8, &qword_1CA9834A0);
      v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x1EEE9AC00](v53 - 8);
      v56 = &v60 - v55;
      sub_1CA94A2B8();
      v57 = sub_1CA948D28();
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v57);
      sub_1CA949E88();
      v59 = v63;
      v58 = v64;
      (*(v35 + 16))(v40, v63, v64);
      __swift_storeEnumTagSinglePayload(v40, 0, 1, v58);
      sub_1CA949E68();
      sub_1CA949E78();
      sub_1CA266F2C(v61, v62);
      return (*(v35 + 8))(v59, v58);
    }

    v41 = *(v29 + 8 * v27);
    ++v39;
    if (v41)
    {
      v38 = __clz(__rbit64(v41));
      v74 = (v41 - 1) & v41;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1CA31EE1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v3 = sub_1CA949DE8();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CA94AC68();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA949DF8();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CA94AC88();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CA94AFA8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, a1, v18);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == *MEMORY[0x1E69DB120])
  {
    (*(v19 + 96))(v22, v18);
    (*(v14 + 32))(v17, v22, v13);
    sub_1CA323D64(&qword_1EC441D10, MEMORY[0x1E69DAE88]);
    sub_1CA323D64(&unk_1EC441D20, MEMORY[0x1E69DAC48]);
    v24 = v55;
    v25 = sub_1CA949C48();
    if (v24)
    {
      return (*(v14 + 8))(v17, v13);
    }

    v32 = v25;
    v33 = v26;
    v34 = v52;
    sub_1CA949DC8();
    (*(v14 + 8))(v17, v13);
    sub_1CA266F2C(v32, v33);
    v38 = v48;
    v39 = swift_allocBox();
    (*(v47 + 32))(v40, v34, v38);
    v41 = MEMORY[0x1E69AA310];
  }

  else
  {
    v28 = v55;
    if (v23 != *MEMORY[0x1E69DB128])
    {
      result = sub_1CA94D7E8();
      __break(1u);
      return result;
    }

    (*(v19 + 96))(v22, v18);
    v29 = v54;
    (*(v54 + 32))(v9, v22, v6);
    sub_1CA323D64(&qword_1EC4443F8, MEMORY[0x1E69DAE40]);
    sub_1CA323D64(&qword_1EC444400, MEMORY[0x1E69DAC40]);
    v30 = sub_1CA949C48();
    if (v28)
    {
      return (*(v29 + 8))(v9, v6);
    }

    v35 = v30;
    v36 = v31;
    v37 = v53;
    sub_1CA949DD8();
    (*(v29 + 8))(v9, v6);
    sub_1CA266F2C(v35, v36);
    v42 = v50;
    v39 = swift_allocBox();
    (*(v49 + 32))(v43, v37, v42);
    v41 = MEMORY[0x1E69AA318];
  }

  v44 = v51;
  *v51 = v39;
  v45 = *v41;
  v46 = sub_1CA949E58();
  return (*(*(v46 - 8) + 104))(v44, v45, v46);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ToolInvocationBox.donateToBiome()()
{
  v1 = sub_1CA949F78();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v69 = v3;
  v70 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_0();
  v72 = v7 - v6;
  OUTLINED_FUNCTION_25_0();
  v8 = sub_1CA949EA8();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v15 = v14 - v13;
  v16 = sub_1CA94A3B8();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19();
  v24 = v22 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v26 = sub_1CA94A288();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v71 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19();
  v67 = v31 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64 - v34;
  v68 = v0;
  sub_1CA94A2A8();
  sub_1CA94A208();
  sub_1CA94A3A8();
  OUTLINED_FUNCTION_80_1();
  sub_1CA323D64(v36, v37);
  v38 = sub_1CA94D268();
  v39 = *(v19 + 8);
  v39(v24, v16);
  v40 = OUTLINED_FUNCTION_106();
  (v39)(v40);
  if (v38)
  {
    v41 = v71;
    v42 = v73[6];
    sub_1CA31E71C(v15);
    if (v42)
    {
      v58 = *(v41 + 8);
      v59 = OUTLINED_FUNCTION_204();
      v60(v59);
    }

    else
    {
      sub_1CA949E28();
      sub_1CA323D64(&qword_1EC441D88, MEMORY[0x1E69AA2E8]);
      sub_1CA949E48();
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      sub_1CA949EB8();
      (*(v65 + 8))(v15, v66);
      v61 = *(v41 + 8);
      v62 = OUTLINED_FUNCTION_204();
      v63(v62);
      __swift_destroy_boxed_opaque_existential_0(v73);
    }
  }

  else
  {
    v43 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v44 = v71;
    v45 = v67;
    (*(v71 + 16))(v67, v35, v26);
    v46 = sub_1CA949F68();
    v47 = sub_1CA94CBF8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      OUTLINED_FUNCTION_113_0();
      v49 = swift_slowAlloc();
      v68 = v35;
      v50 = v49;
      v73[0] = v49;
      *v48 = 136315138;
      v51 = sub_1CA94A248();
      v52 = v45;
      v54 = v53;
      v55 = *(v44 + 8);
      v55(v52, v26);
      v56 = sub_1CA26B54C(v51, v54, v73);

      *(v48 + 4) = v56;
      _os_log_impl(&dword_1CA256000, v46, v47, "Ignoring %s because it is not visible in Spotlight", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v50);
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();
      OUTLINED_FUNCTION_154();
      MEMORY[0x1CCAA4BF0]();

      (*(v69 + 8))(v72, v70);
      v55(v68, v26);
    }

    else
    {

      v57 = *(v44 + 8);
      v57(v45, v26);
      (*(v69 + 8))(v72, v70);
      v57(v35, v26);
    }
  }
}

void sub_1CA31FA6C()
{
  OUTLINED_FUNCTION_37_0();
  v117 = v0;
  v125 = sub_1CA94A3B8();
  v1 = OUTLINED_FUNCTION_52(v125);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_25_0();
  v4 = sub_1CA94A5D8();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v123 = v6;
  v124 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v122 = v10 - v9;
  OUTLINED_FUNCTION_25_0();
  v121 = sub_1CA94A628();
  v11 = OUTLINED_FUNCTION_52(v121);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444418, &qword_1CA9834B0);
  OUTLINED_FUNCTION_18_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_43();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445110, &dword_1CA9834B8);
  OUTLINED_FUNCTION_18_0(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_25_0();
  v22 = sub_1CA94A368();
  v23 = OUTLINED_FUNCTION_18_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4445D0, &qword_1CA983080);
  OUTLINED_FUNCTION_18_0(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_25_0();
  v30 = sub_1CA94B1C8();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v119 = v32;
  v120 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v126 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4468F0, &qword_1CA9834C0);
  OUTLINED_FUNCTION_18_0(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_43();
  v118 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444420, &qword_1CA98BF00);
  OUTLINED_FUNCTION_18_0(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_43();
  v116 = v46;
  OUTLINED_FUNCTION_25_0();
  v115 = sub_1CA94AD08();
  v47 = OUTLINED_FUNCTION_1_0(v115);
  v127 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_6_0();
  v53 = (v52 - v51);
  v54 = sub_1CA94B1E8();
  v55 = OUTLINED_FUNCTION_52(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_134_0();
  v58 = sub_1CA94A378();
  v59 = OUTLINED_FUNCTION_1_0(v58);
  v61 = v60;
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_6_0();
  v66 = v65 - v64;
  sub_1CA94B0F8();
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](0x494C52556E65704FLL, 0xED0000746E65746ELL);

  (*(v61 + 104))(v66, *MEMORY[0x1E69DAA50], v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F90, &qword_1CA9825E0);
  v67 = sub_1CA94B258();
  OUTLINED_FUNCTION_12(v67);
  v69 = *(v68 + 72);
  v114 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  sub_1CA323D64(&unk_1EC446900, MEMORY[0x1E69DB338]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444428, &qword_1CA9834C8);
  sub_1CA323C24(&unk_1EC446910, &qword_1EC444428);
  sub_1CA94D2A8();
  v71 = sub_1CA94ADC8();
  v72 = swift_allocBox();
  v74 = v73;
  v75 = sub_1CA94AD98();
  v76 = swift_allocBox();
  v113 = *(*(v75 - 8) + 104);
  v113(v77, *MEMORY[0x1E69DB028], v75);
  *v74 = v76;
  v112 = *MEMORY[0x1E69DB0B0];
  v111 = *(*(v71 - 8) + 104);
  v111(v74);
  v78 = v53;
  *v53 = v72;
  v79 = *MEMORY[0x1E69DAF30];
  v80 = *(v127 + 104);
  v80(v78, v79, v115);
  sub_1CA94B1D8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  sub_1CA94B208();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  sub_1CA94B218();
  swift_allocBox();
  OUTLINED_FUNCTION_191();
  v89 = swift_allocBox();
  v113(v90, *MEMORY[0x1E69DB048], v75);
  *v116 = v89;
  (v111)(v116, v112, v71);
  *v78 = v118;
  v80(v78, v79, v115);
  (*(v119 + 16))(v126, v117, v120);
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v120);
  OUTLINED_FUNCTION_90();
  sub_1CA94A338();
  sub_1CA94A648();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  sub_1CA94A5F8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F20, &qword_1CA9834D0);
  v102 = sub_1CA94A158();
  OUTLINED_FUNCTION_1_0(v102);
  v104 = v103;
  v106 = *(v105 + 72);
  v107 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1CA981310;
  *(v108 + v107) = &unk_1F49F40B8;
  (*(v104 + 104))(v108 + v107, *MEMORY[0x1E69DA958], v102);
  sub_1CA323D64(&unk_1EC441D40, MEMORY[0x1E69DABD0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444430, &qword_1CA9834D8);
  sub_1CA323C24(&qword_1EC444438, &qword_1EC444430);
  sub_1CA94D2A8();
  (*(v123 + 104))(v122, *MEMORY[0x1E69DABC0], v124);
  OUTLINED_FUNCTION_80_1();
  sub_1CA323D64(v109, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444440, &unk_1CA9834E0);
  sub_1CA323C24(&qword_1EC444448, &qword_1EC444440);
  sub_1CA94D2A8();
  sub_1CA94A238();
  OUTLINED_FUNCTION_36();
}

void sub_1CA32059C()
{
  OUTLINED_FUNCTION_77_1();
  v1 = v0;
  v2 = [v0 identifier];
  v3 = sub_1CA94C3A8();
  v5 = v4;

  if (v3 == 0x494C52556E65704FLL && v5 == 0xED0000746E65746ELL)
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = OUTLINED_FUNCTION_176_1();

  if ((v7 & 1) == 0)
  {
    v8 = [v1 identifier];
    v9 = sub_1CA94C3A8();
    v11 = v10;

    if (v9 != 0x4C52556E65704F5FLL || v11 != 0xEE00746E65746E49)
    {
      v13 = OUTLINED_FUNCTION_176_1();

      if ((v13 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  v14 = sub_1CA3233C8(v1);
  if (v15)
  {
    v40 = v14;
    v41 = v15;
    v38 = 0x6E65746E49707041;
    v39 = 0xEA00000000007374;
    sub_1CA27BAF0();
    v16 = sub_1CA94D238();

    if (v16)
    {
      v17 = [v1 metadata];
      if (v17)
      {
      }

      else
      {
        v18 = [v1 url];
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
        OUTLINED_FUNCTION_18_0(v19);
        v21 = *(v20 + 64);
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v22);
        v24 = &v38 - v23;
        if (v18)
        {
          v25 = sub_1CA948BA8();
          v26 = OUTLINED_FUNCTION_1_0(v25);
          v28 = v27;
          v30 = *(v29 + 64);
          MEMORY[0x1EEE9AC00](v26);
          OUTLINED_FUNCTION_6_0();
          v33 = v32 - v31;
          sub_1CA948B68();

          (*(v28 + 32))(v24, v33, v25);
          __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
        }

        else
        {
          sub_1CA948BA8();
          OUTLINED_FUNCTION_46();
          __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
        }

        sub_1CA323C64(v24, &qword_1EC444A90);
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_76_0();
}

uint64_t sub_1CA320974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_134_0();
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_69();
  v16(v15);
  return a7(v7);
}

uint64_t *sub_1CA320A2C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;
    v8 = OUTLINED_FUNCTION_93();

    return sub_1CA35FF80(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;
    v11 = OUTLINED_FUNCTION_93();

    return sub_1CA35FF84(v11, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA320AB4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_1CA94D7D8() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}