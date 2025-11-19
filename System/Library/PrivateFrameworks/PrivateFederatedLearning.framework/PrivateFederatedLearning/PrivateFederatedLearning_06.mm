void sub_21A43CF24(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v6 setOptimizationLevel_];
  v7 = a1[18];
  v8 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v9 = v7[2];

  if (v9)
  {
    v10 = 0;
    v11 = v7 + 5;
    v27 = v6;
    v28 = a2;
    while (1)
    {
      a2 = v3;
      v6 = &v11[2 * v10];
      v12 = v10;
      while (1)
      {
        if (v12 >= v7[2])
        {
          __break(1u);
          goto LABEL_22;
        }

        v13 = a1[16];
        if (*(v13 + 16))
        {
          break;
        }

LABEL_4:
        ++v12;
        v6 += 2;
        if (v9 == v12)
        {
          v6 = v27;
          a2 = v28;
          goto LABEL_15;
        }
      }

      v14 = *(v6 - 1);
      v15 = *v6;

      v16 = sub_21A3DCA2C(v14, v15);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(*(v13 + 56) + 8 * v16);

      MEMORY[0x21CED99D0](v19);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21A451314();
      }

      v10 = v12 + 1;
      sub_21A451364();
      v8 = v29;
      v11 = v7 + 5;
      v20 = v9 - 1 == v12;
      v3 = a2;
      v6 = v27;
      a2 = v28;
      if (v20)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_4;
  }

LABEL_15:

  v7 = a1[15];
  sub_21A3ED284(0, &unk_27CD28CE0, 0x277CD7838);
  v22 = a1[10];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  a1 = [ObjCClassFromMetadata deviceWithMTLDevice_];
  swift_unknownObjectRelease();
  if (v8 >> 62)
  {
LABEL_22:
    sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);

    sub_21A451824();
  }

  else
  {

    sub_21A451A24();
    sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);
  }

  sub_21A3ED284(0, &qword_27CD28CF8, 0x277CD7898);
  v24 = sub_21A4512D4();

  v25 = [v7 getOutputTypesWithDevice:a1 inputTypes:v24 compilationDescriptor:v6];

  if (v25)
  {
    sub_21A3ED284(0, &qword_27CD28CC8, 0x277CD7880);
    v26 = sub_21A4512E4();
  }

  else
  {

    v26 = 0;
  }

  *a2 = v26;
}

uint64_t sub_21A43D260(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = v4;
  v69[4] = *MEMORY[0x277D85DE8];
  if ((a3 & 1) == 0)
  {
    swift_beginAccess();
    v20 = v4[7];
    if (*(v20 + 16))
    {
      v21 = v7[7];

      v22 = sub_21A3DCA2C(a1, a2);
      if (v23)
      {
        v15 = *(*(v20 + 56) + 8 * v22);

        v24 = v7[17];
        if (*(v24 + 16))
        {
          v25 = v7[17];

          v26 = sub_21A3DCA2C(a1, a2);
          if (v27)
          {
            v19 = *(*(v24 + 56) + 8 * v26);

            goto LABEL_12;
          }
        }

LABEL_22:
        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v38 = sub_21A450F24();
        __swift_project_value_buffer(v38, qword_27CD28C90);

        v39 = sub_21A450F04();
        v40 = sub_21A451584();

        if (os_log_type_enabled(v39, v40))
        {
          v6 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v69[0] = v41;
          *v6 = 136315138;
          *(v6 + 4) = sub_21A3E2554(a1, a2, v69);
          _os_log_impl(&dword_21A3C2000, v39, v40, "Unable to get mps shape for %s", v6, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x21CEDB220](v41, -1, -1);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v42 = 43;
        swift_willThrow();
        goto LABEL_27;
      }

      goto LABEL_15;
    }

LABEL_16:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v33 = sub_21A450F24();
    __swift_project_value_buffer(v33, qword_27CD28C90);

    v34 = sub_21A450F04();
    v35 = sub_21A451584();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v69[0] = v6;
      *v36 = 136315138;
      *(v36 + 4) = sub_21A3E2554(a1, a2, v69);
      _os_log_impl(&dword_21A3C2000, v34, v35, "io port not bounded for %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x21CEDB220](v6, -1, -1);
      MEMORY[0x21CEDB220](v36, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v37 = 43;
    swift_willThrow();
    goto LABEL_28;
  }

  swift_beginAccess();
  v11 = v4[6];
  if (!*(v11 + 16))
  {
    goto LABEL_16;
  }

  v12 = v7[6];

  v13 = sub_21A3DCA2C(a1, a2);
  if ((v14 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = *(*(v11 + 56) + 8 * v13);

  v16 = v7[16];
  if (!*(v16 + 16))
  {
    goto LABEL_22;
  }

  v17 = sub_21A3DCA2C(a1, a2);
  if ((v18 & 1) == 0)
  {
    goto LABEL_22;
  }

  v19 = *(*(v16 + 56) + 8 * v17);
LABEL_12:
  v28 = [v19 shape];
  if (v28)
  {
    v29 = v28;
    v68 = v19;
    v6 = sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
    v30 = sub_21A4512E4();

    v31 = *(v15 + 24);

    sub_21A43F67C(v32, v30);
    if (v5)
    {
    }

    else
    {

      v50 = *(v15 + 32);
      if (*(v50 + 40))
      {
        if (*(v50 + 40) != 1)
        {
          v58 = *(v50 + 16);
          v69[0] = 0;

          mtlbuffer = e5rt_buffer_object_get_mtlbuffer();
          swift_unknownObjectRetain();
          sub_21A3DCF54(mtlbuffer);
          sub_21A3DCAF8();
          swift_allocError();
          *v66 = 6;
          swift_willThrow();

          goto LABEL_28;
        }

        v51 = *(v15 + 32);

        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v52 = sub_21A450F24();
        __swift_project_value_buffer(v52, qword_27CD28C90);
        v53 = sub_21A450F04();
        v54 = sub_21A451584();
        if (os_log_type_enabled(v53, v54))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_21A3C2000, v53, v54, "Creating MLT buffer from HEAPALLOCATED buffer not supported.", v6, 2u);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAF8();
        swift_allocError();
        *v55 = 3;
        swift_willThrow();
      }

      else
      {
        v56 = *(v15 + 32);

        if ([a4 metalDevice])
        {
          if (swift_dynamicCastObjCProtocolConditional())
          {
            if (*(v50 + 40))
            {

              sub_21A3DCAA4();
              swift_allocError();
              *v57 = 41;
              swift_willThrow();

              swift_unknownObjectRelease();

              goto LABEL_28;
            }

            v69[0] = 0;
            v64 = *(v50 + 16);
            iosurface = e5rt_buffer_object_get_iosurface();
            sub_21A3DCF54(iosurface);
            sub_21A3DCAF8();
            swift_allocError();
            *v67 = 6;
            swift_willThrow();

            swift_unknownObjectRelease();

            goto LABEL_27;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        if (qword_27CD28170 != -1)
        {
          swift_once();
        }

        v60 = sub_21A450F24();
        __swift_project_value_buffer(v60, qword_27CD28C90);
        v61 = sub_21A450F04();
        v62 = sub_21A451584();
        if (os_log_type_enabled(v61, v62))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_21A3C2000, v61, v62, "Unsupported non-metal target", v6, 2u);
          MEMORY[0x21CEDB220](v6, -1, -1);
        }

        sub_21A3DCAA4();
        swift_allocError();
        *v63 = 43;
        swift_willThrow();
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v45 = sub_21A450F24();
  __swift_project_value_buffer(v45, qword_27CD28C90);

  v46 = sub_21A450F04();
  v6 = sub_21A451584();

  if (os_log_type_enabled(v46, v6))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v69[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_21A3E2554(a1, a2, v69);
    _os_log_impl(&dword_21A3C2000, v46, v6, "Unable to get mpsShape for %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x21CEDB220](v48, -1, -1);
    MEMORY[0x21CEDB220](v47, -1, -1);
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v49 = 43;
  swift_willThrow();

LABEL_28:
  v43 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_21A43E030()
{
  v2 = v1;
  v3 = v0;
  sub_21A3ED284(0, &unk_27CD28CE0, 0x277CD7838);
  v4 = v0[10];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  v27 = [ObjCClassFromMetadata deviceWithMTLDevice_];
  swift_unknownObjectRelease();
  swift_beginAccess();
  v6 = v3[20];
  v7 = MEMORY[0x277D84F90];
  v3[20] = MEMORY[0x277D84F90];

  swift_beginAccess();
  v8 = v3[21];
  v3[21] = v7;

  v9 = v3[18];
  v10 = *(v9 + 16);

  if (v10)
  {
    v12 = 0;
    v13 = (v9 + 40);
    while (v12 < *(v9 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_21A43D260(v14, v15, 1, v27);

      if (v2)
      {
        goto LABEL_15;
      }

      v16 = swift_beginAccess();
      MEMORY[0x21CED99D0](v16);
      if (*((v3[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((v3[20] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21A451314();
      }

      ++v12;
      sub_21A451364();
      result = swift_endAccess();
      v13 += 2;
      if (v10 == v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_8:

  v18 = v3[19];
  v19 = *(v18 + 16);

  if (v19)
  {
    v20 = 0;
    v21 = (v18 + 40);
    while (v20 < *(v18 + 16))
    {
      v22 = *(v21 - 1);
      v23 = *v21;

      sub_21A43D260(v22, v23, 0, v27);
      if (v2)
      {
      }

      v24 = swift_beginAccess();
      MEMORY[0x21CED99D0](v24);
      if (*((v3[21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = v19;
        v26 = *((v3[21] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_21A451314();
        v19 = v25;
      }

      ++v20;
      sub_21A451364();
      result = swift_endAccess();
      v21 += 2;
      if (v19 == v20)
      {
        goto LABEL_15;
      }
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_15:
}

uint64_t sub_21A43E324()
{
  v1 = *(v0 + 120);
  [v1 setOptions_];
  v2 = [*(v0 + 88) commandBuffer];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD7208]) initWithCommandBuffer_];
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = sub_21A451054();
    [v3 setLabel_];

    swift_beginAccess();
    v7 = *(v0 + 160);
    sub_21A3ED284(0, &qword_27CD28CD8, 0x277CD7890);

    v8 = sub_21A4512D4();

    swift_beginAccess();
    v9 = *(v0 + 168);

    v10 = sub_21A4512D4();

    [objc_msgSend(v3 rootCommandBuffer)];
    swift_unknownObjectRelease();
    [objc_msgSend(v3 rootCommandBuffer)];
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v12 = sub_21A450F24();
    __swift_project_value_buffer(v12, qword_27CD28C90);
    v13 = sub_21A450F04();
    v14 = sub_21A451584();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21A3C2000, v13, v14, "Failed to make MTL command buffer", v15, 2u);
      MEMORY[0x21CEDB220](v15, -1, -1);
    }

    sub_21A3DCAA4();
    swift_allocError();
    *v16 = 43;
    return swift_willThrow();
  }
}

uint64_t sub_21A43E5EC()
{
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v0 = sub_21A450F24();
  __swift_project_value_buffer(v0, qword_27CD28C90);
  v1 = sub_21A450F04();
  v2 = sub_21A451584();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21A3C2000, v1, v2, "Reshape not implemented for E5MBackgroundMPSFunction", v3, 2u);
    MEMORY[0x21CEDB220](v3, -1, -1);
  }

  sub_21A3DCAF8();
  swift_allocError();
  *v4 = 2;
  return swift_willThrow();
}

void sub_21A43E6F8(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x21CEDA420]();
  sub_21A43E778(v2, a1, &v5, &v6);
  objc_autoreleasePoolPop(v4);
}

uint64_t sub_21A43E778@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v95 = *MEMORY[0x277D85DE8];
  result = sub_21A407184();
  if (v4)
  {
    v10 = v4;
LABEL_86:
    *a3 = v10;
    goto LABEL_87;
  }

  v82 = a3;
  v81 = a4;
  v84 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);

  swift_beginAccess();
  v14 = 0;
  v15 = (v11 + 63) >> 6;
  v85 = a1;
  v86 = a2;
LABEL_6:
  if (v13)
  {
    v16 = v13;
    goto LABEL_12;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v17 >= v15)
    {
      break;
    }

    v16 = *(v84 + 8 * v17);
    ++v14;
    if (v16)
    {
      v14 = v17;
LABEL_12:
      v13 = (v16 - 1) & v16;
      v18 = a1[6];
      if (!*(v18 + 16))
      {
        goto LABEL_6;
      }

      v88 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v14 << 6);
      v20 = *(a2 + 48);
      v21 = (*(a2 + 56) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = (v20 + 16 * v19);
      v25 = *v24;
      v26 = v24[1];

      sub_21A3E700C(v22, v23);

      v27 = sub_21A3DCA2C(v25, v26);
      v29 = v28;

      if (v29)
      {
        v87 = v22;
        v30 = *(*(v18 + 56) + 8 * v27);

        v83 = *(v30 + 32);
        sub_21A3DCAA4();
        v10 = swift_allocError();
        *v31 = 23;
        v32 = v23 >> 62;
        if ((v23 >> 62) > 1)
        {
          v33 = 0;
          if (v32 == 2)
          {
            v35 = *(v22 + 16);
            v34 = *(v22 + 24);
            v36 = __OFSUB__(v34, v35);
            v33 = v34 - v35;
            if (v36)
            {
              goto LABEL_109;
            }
          }
        }

        else if (v32)
        {
          LODWORD(v33) = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_108;
          }

          v33 = v33;
        }

        else
        {
          v33 = BYTE6(v23);
        }

        v37 = *(v83 + 32);
        if (v33 < v37)
        {
          swift_willThrow();

          sub_21A3E759C(v22, v23);

          a3 = v82;
          goto LABEL_86;
        }

        if (v37 < 0)
        {
          goto LABEL_104;
        }

        if (v37)
        {
          v38 = v23;
          if (v32 > 1)
          {
            v39 = 0;
            if (v32 == 2)
            {
              v39 = *(v22 + 16);
            }
          }

          else if (v32)
          {
            v39 = v22;
          }

          else
          {
            v39 = 0;
          }

          v36 = __OFADD__(v39, v37);
          v40 = v39 + v37;
          if (v36)
          {
            goto LABEL_105;
          }

          v41 = v40 - v39;
          if (v40 < v39)
          {
            goto LABEL_106;
          }

          if (v40 == v39)
          {
            goto LABEL_37;
          }

          v42 = *(v83 + 24);
          if (v32 <= 1)
          {
            if (!v32)
            {
              if (v39 > BYTE6(v23) || v40 > BYTE6(v23))
              {
                goto LABEL_112;
              }

              v89 = v87;
              v90 = v23;
              v91 = BYTE2(v23);
              v92 = BYTE3(v23);
              v93 = BYTE4(v23);
              v94 = BYTE5(v23);
              if (v41 > 13)
              {
                v41 = 14;
                v13 = v88;
              }

              else
              {
                v13 = v88;
                if (v41 < 1)
                {
LABEL_81:
                  sub_21A3E759C(v87, v38);

                  goto LABEL_84;
                }
              }

              memcpy(v42, &v89 + v39, v41);
              v38 = v23;
              goto LABEL_81;
            }

            if (v87 >> 32 < v40 || v39 < v87 || v87 >> 32 < v39 || v40 < v87)
            {
              goto LABEL_113;
            }

            v51 = sub_21A4509F4();
            v13 = v88;
            if (v51)
            {
              v52 = v51;
              v53 = sub_21A450A24();
              if (__OFSUB__(v39, v53))
              {
                goto LABEL_116;
              }

              v54 = (v39 - v53 + v52);
              v55 = sub_21A450A14();
              if (v54)
              {
                if (v55 >= v41)
                {
                  v56 = v41;
                }

                else
                {
                  v56 = v55;
                }

                memmove(v42, v54, v56);
              }
            }

            else
            {
              sub_21A450A14();
            }

            sub_21A3E759C(v87, v23);

LABEL_84:

            a1 = v85;
            a2 = v86;
            goto LABEL_6;
          }

          if (v32 != 2)
          {
            sub_21A3E759C(v87, v23);

            v57 = v40 | v39;
            a1 = v85;
            a2 = v86;
            v13 = v88;
            if (v57)
            {
              goto LABEL_111;
            }

            goto LABEL_6;
          }

          if (v39 < *(v87 + 16))
          {
            goto LABEL_110;
          }

          if (*(v87 + 24) < v40)
          {
            goto LABEL_114;
          }

          v43 = sub_21A4509F4();
          if (v43)
          {
            v44 = sub_21A450A24();
            if (__OFSUB__(v39, v44))
            {
              goto LABEL_117;
            }

            v43 += v39 - v44;
          }

          v36 = __OFSUB__(v40, v39);
          v45 = v40 - v39;
          if (v36)
          {
            goto LABEL_115;
          }

          v46 = sub_21A450A14();
          if (v43)
          {
            if (v46 >= v45)
            {
              v47 = v45;
            }

            else
            {
              v47 = v46;
            }

            memmove(v42, v43, v47);
          }

          sub_21A3E759C(v87, v23);
        }

        else
        {
LABEL_37:
          sub_21A3E759C(v22, v23);
        }
      }

      else
      {
        sub_21A3E759C(v22, v23);
      }

      a1 = v85;
      a2 = v86;
      v13 = v88;
      goto LABEL_6;
    }
  }

  sub_21A43E030();
  sub_21A43E324();
  swift_beginAccess();
  v59 = a1[20];
  v60 = MEMORY[0x277D84F90];
  a1[20] = MEMORY[0x277D84F90];

  swift_beginAccess();
  v61 = a1[21];
  a1[21] = v60;

  swift_beginAccess();
  v62 = a1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28CF0, &unk_21A459110);
  result = sub_21A451854();
  v63 = result;
  v64 = 0;
  v65 = 1 << *(v62 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v62 + 64);
  v68 = (v65 + 63) >> 6;
  v69 = result + 64;
  if (v67)
  {
    goto LABEL_91;
  }

LABEL_92:
  v71 = v64;
  while (1)
  {
    v64 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      goto LABEL_103;
    }

    if (v64 >= v68)
    {
      break;
    }

    v72 = *(v62 + 64 + 8 * v64);
    ++v71;
    if (v72)
    {
      v70 = __clz(__rbit64(v72));
      v67 = (v72 - 1) & v72;
      while (2)
      {
        v73 = v70 | (v64 << 6);
        v74 = (*(v62 + 48) + 16 * v73);
        v76 = *v74;
        v75 = v74[1];
        v77 = *(*(*(v62 + 56) + 8 * v73) + 32);
        *(v69 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
        v78 = (v63[6] + 16 * v73);
        *v78 = v76;
        v78[1] = v75;
        *(v63[7] + 8 * v73) = v77;
        v79 = v63[2];
        v36 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (!v36)
        {
          v63[2] = v80;

          if (!v67)
          {
            goto LABEL_92;
          }

LABEL_91:
          v70 = __clz(__rbit64(v67));
          v67 &= v67 - 1;
          continue;
        }

        break;
      }

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
    }
  }

  *v81 = v63;
LABEL_87:
  v58 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A43EF1C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = *(v0 + 112);

  v4 = *(v0 + 128);

  v5 = *(v0 + 136);

  v6 = *(v0 + 144);

  v7 = *(v0 + 152);

  v8 = *(v0 + 160);

  v9 = *(v0 + 168);

  v10 = *(v0 + 176);

  v11 = *(v0 + 184);
}

void *E5MBackgroundMPSFunction.deinit()
{
  v0 = BaseE5Function.deinit();
  v1 = v0[10];
  v2 = v0[11];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v3 = v0[14];

  v4 = v0[16];

  v5 = v0[17];

  v6 = v0[18];

  v7 = v0[19];

  v8 = v0[20];

  v9 = v0[21];

  v10 = v0[22];

  v11 = v0[23];

  return v0;
}

uint64_t E5MBackgroundMPSFunction.__deallocating_deinit()
{
  E5MBackgroundMPSFunction.deinit();

  return swift_deallocClassInstance();
}

void sub_21A43F084(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v7 = *(a1 + 16);

  v36 = a2;

  if (!v7)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v8 = 0;
  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a1 + 40);
  v33 = a2 & 0xC000000000000001;
  v34 = a2 >> 62;
  v32 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v8 >= v7)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      sub_21A451A94();
      __break(1u);
      goto LABEL_31;
    }

    v11 = *(v10 - 1);
    v12 = *v10;
    if (v34)
    {
      if (v8 == sub_21A451844())
      {
        goto LABEL_25;
      }
    }

    else if (v8 == *(v9 + 16))
    {
      goto LABEL_25;
    }

    if (v33)
    {

      v14 = MEMORY[0x21CED9EA0](v8, v36);
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_28;
      }

      v13 = *(v36 + 8 * v8 + 32);

      v14 = v13;
    }

    v37 = v14;
    v15 = *a4;
    v17 = sub_21A3DCA2C(v11, v12);
    v18 = v15[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_27;
    }

    v21 = v16;
    if (v15[3] < v20)
    {
      break;
    }

    if (a3)
    {
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_21A3E4750();
      if (v21)
      {
        goto LABEL_23;
      }
    }

LABEL_16:
    v25 = *a4;
    *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v26 = (v25[6] + 16 * v17);
    *v26 = v11;
    v26[1] = v12;
    *(v25[7] + 8 * v17) = v37;
    v27 = v25[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_29;
    }

    ++v8;
    v25[2] = v29;
    v7 = *(a1 + 16);
    v10 += 2;
    a3 = 1;
    v9 = v32;
    if (v8 == v7)
    {
      goto LABEL_25;
    }
  }

  sub_21A3E3B34(v20, a3 & 1);
  v22 = *a4;
  v23 = sub_21A3DCA2C(v11, v12);
  if ((v21 & 1) != (v24 & 1))
  {
    goto LABEL_30;
  }

  v17 = v23;
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_23:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_31:
  sub_21A451754();
  MEMORY[0x21CED98B0](0xD00000000000001BLL, 0x800000021A45CE30);
  sub_21A451804();
  MEMORY[0x21CED98B0](39, 0xE100000000000000);
  sub_21A451814();
  __break(1u);
}

uint64_t sub_21A43F43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A43F4A4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_21A451844();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D00, &qword_21A4561E8);
    v6 = sub_21A451874();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_21A43F084(a1, a2, 1, &v8);
  return v8;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21A43F5A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21A43F5EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_21A43F67C(unint64_t a1, unint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84F90];

  v8 = a1;
  isUniquelyReferenced_nonNull_bridgeObject = sub_21A409348();
  if (isUniquelyReferenced_nonNull_bridgeObject)
  {
    v10 = *(a1 + 32);
    if (v10 < 0)
    {
LABEL_68:
      __break(1u);
    }

    else
    {
      v39 = a2;
      a2 = 0x277CCA000uLL;
      v2 = &off_278253000;
      if (v10)
      {
        v3 = *(a1 + 24);
        v40 = -v10;
        v4 = 4;
        while (1)
        {
          a2 = v4 - 4;
          v11 = sub_21A40956C();
          if ((v4 - 4) >= *(v11 + 16))
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
            goto LABEL_68;
          }

          v12 = v2;
          v2 = *(v11 + 8 * v4);

          v13 = sub_21A440DA4();
          if (!v13)
          {
            goto LABEL_63;
          }

          if (v2 == 0x8000000000000000 && v13 == -1)
          {
            goto LABEL_66;
          }

          if (v2 % v13)
          {
            break;
          }

          v15 = *(a1 + 72);
          if (a2 >= *(v15 + 16))
          {
            goto LABEL_64;
          }

          v16 = *(v3 + 24);
          if (!v16)
          {
            goto LABEL_65;
          }

          v17 = *(v15 + 8 * v4);
          if (v17 == 0x8000000000000000 && v16 == -1)
          {
            goto LABEL_67;
          }

          a2 = 0x277CCA000uLL;
          v2 = v12;
          [objc_allocWithZone(MEMORY[0x277CCABB0]) (v12 + 3448)];
          MEMORY[0x21CED99D0]();
          if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v18 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21A451314();
            a2 = 0x277CCA000;
          }

          sub_21A451364();
          if (v4 == 4)
          {
            [objc_allocWithZone(*(a2 + 2992)) (v12 + 3448)];
          }

          else
          {
            [objc_allocWithZone(*(a2 + 2992)) (v12 + 3448)];
          }

          MEMORY[0x21CED99D0]();
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v19 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_21A451314();
            a2 = 0x277CCA000;
          }

          v8 = &v41;
          isUniquelyReferenced_nonNull_bridgeObject = sub_21A451364();
          v7 = v41;
          ++v4;
          if (v40 + v4 == 4)
          {
            goto LABEL_26;
          }
        }

        if (qword_27CD28170 != -1)
        {
          goto LABEL_81;
        }

        goto LABEL_42;
      }

LABEL_26:
      v40 = v39 & 0xC000000000000001;
      if ((v39 & 0xC000000000000001) == 0)
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v20 = *(v39 + 32);
LABEL_29:
        v3 = v20;
        v4 = &selRef_encodeToIndex_error_;
        v8 = [v20 integerValue];

        if ((v7 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x21CED9EA0](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v21 = *(v7 + 32);
        }

        v22 = v21;
        v4 = [v21 integerValue];

        v3 = v8 * v4;
        if ((v8 * v4) >> 64 == (v8 * v4) >> 63)
        {
          v3 = [objc_allocWithZone(*(a2 + 2992)) *(v2 + 3208)];
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v39 & 0x8000000000000000) != 0 || (v8 = v39, (v39 & 0x4000000000000000) != 0))
          {
            isUniquelyReferenced_nonNull_bridgeObject = sub_21A4131E4(v39);
            v8 = isUniquelyReferenced_nonNull_bridgeObject;
          }

          v23 = v8 & 0xFFFFFFFFFFFFFF8;
          v4 = &selRef_encodeToIndex_error_;
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v24 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x20);
            *((v8 & 0xFFFFFFFFFFFFFF8) + 0x20) = v3;

            v25 = *(a1 + 32);
            a1 = v25 - 1;
            if (!__OFSUB__(v25, 1))
            {
              if (v40)
              {
                v26 = MEMORY[0x21CED9EA0](a1, v39);
              }

              else
              {
                if ((a1 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

                if (a1 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_84:
                  __break(1u);
LABEL_85:
                  __break(1u);
                  return;
                }

                v26 = *(v39 + 8 * a1 + 32);
              }

              v33 = v26;
              a2 = [v26 integerValue];

              if ((v7 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x21CED9EA0](0, v7);
                goto LABEL_52;
              }

              if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v34 = *(v7 + 32);
LABEL_52:
                v4 = v34;
                v3 = [v34 integerValue];

                if (v3)
                {
                  if (a2 == 0x8000000000000000 && v3 == -1)
                  {
LABEL_80:
                    __break(1u);
LABEL_81:
                    swift_once();
LABEL_42:
                    v27 = sub_21A450F24();
                    __swift_project_value_buffer(v27, qword_27CD28C90);
                    swift_retain_n();
                    v28 = sub_21A450F04();
                    v29 = sub_21A451584();
                    if (!os_log_type_enabled(v28, v29))
                    {

                      goto LABEL_61;
                    }

                    v30 = swift_slowAlloc();
                    *v30 = 134218240;
                    v31 = sub_21A40956C();
                    if (a2 < *(v31 + 16))
                    {
                      v32 = *(v31 + 8 * v4);

                      *(v30 + 4) = v32;

                      *(v30 + 12) = 2048;
                      *(v30 + 14) = *(v3 + 24);

                      _os_log_impl(&dword_21A3C2000, v28, v29, "Invalid stride=%ld, and componentSize= %ld.", v30, 0x16u);
                      MEMORY[0x21CEDB220](v30, -1, -1);

LABEL_61:
                      sub_21A3DCAA4();
                      swift_allocError();
                      *v37 = 43;
                      swift_willThrow();

                      return;
                    }

                    goto LABEL_85;
                  }

                  isUniquelyReferenced_nonNull_bridgeObject = [objc_allocWithZone(MEMORY[0x277CCABB0]) *(v2 + 3208)];
                  if ((v8 & 0x8000000000000000) == 0 && (v8 & 0x4000000000000000) == 0)
                  {
                    a2 = v8;
                    if ((a1 & 0x8000000000000000) == 0)
                    {
                      goto LABEL_58;
                    }

                    goto LABEL_78;
                  }

LABEL_77:
                  v38 = isUniquelyReferenced_nonNull_bridgeObject;
                  a2 = sub_21A4131E4(v8);
                  isUniquelyReferenced_nonNull_bridgeObject = v38;
                  v23 = a2 & 0xFFFFFFFFFFFFFF8;
                  if ((a1 & 0x8000000000000000) == 0)
                  {
LABEL_58:
                    if (a1 < *(v23 + 16))
                    {
                      v35 = v23 + 8 * a1;
                      v36 = *(v35 + 32);
                      *(v35 + 32) = isUniquelyReferenced_nonNull_bridgeObject;

                      return;
                    }

                    goto LABEL_79;
                  }

LABEL_78:
                  __break(1u);
LABEL_79:
                  __break(1u);
                  goto LABEL_80;
                }

LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              goto LABEL_83;
            }

LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    v20 = MEMORY[0x21CED9EA0](0);
    goto LABEL_29;
  }
}

uint64_t sub_21A43FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    MEMORY[0x28223BE20](a1);
    return sub_21A44004C(v3, v4, sub_21A440D4C);
  }

  else
  {
    sub_21A3D3C88();
    swift_allocError();
    *v6 = 14;
    return swift_willThrow();
  }
}

uint64_t sub_21A43FD8C(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a3 < 0)
  {
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = a3;
    if (a3)
    {
      v11 = result;
      do
      {
        v13 = *a4++;
        v12 = v13;
        if (v13)
        {
          v14 = v12 <= a6;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          result = v12 - 1;
          v15 = *a7;
          if ((*a7 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x21CED9EA0](result);
          }

          else
          {
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
            {
              __break(1u);
              goto LABEL_21;
            }

            v16 = *(v15 + 8 * result + 32);
          }

          v17 = *v11;
          swift_beginAccess();
          v18 = *(v16 + 40);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v16 + 40) = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v18 = sub_21A407D80(0, *(v18 + 2) + 1, 1, v18);
            *(v16 + 40) = v18;
          }

          v21 = *(v18 + 2);
          v20 = *(v18 + 3);
          if (v21 >= v20 >> 1)
          {
            v18 = sub_21A407D80((v20 > 1), v21 + 1, 1, v18);
          }

          *(v18 + 2) = v21 + 1;
          *&v18[4 * v21 + 32] = v17;
          *(v16 + 40) = v18;
        }

        ++v11;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_21A43FF1C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v10, 0, 14);
      v5 = 0;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      v4 = a2 >> 40;
      BYTE4(v10[1]) = BYTE4(a2);
      v5 = BYTE6(a2);
      BYTE5(v10[1]) = v4;
LABEL_9:
      result = a3(v10, v5);
      goto LABEL_10;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_21A44017C(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A44004C(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v10, 0, 14);
      v5 = 0;
      goto LABEL_9;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      v4 = a2 >> 40;
      BYTE4(v10[1]) = BYTE4(a2);
      v5 = (a2 >> 50) & 0x3F;
      BYTE5(v10[1]) = v4;
LABEL_9:
      result = a3(v10, v5);
      goto LABEL_10;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_21A440224(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A44017C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_21A4509F4();
  v8 = result;
  if (result)
  {
    result = sub_21A450A24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_21A450A14();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a4(v8, v13);
}

uint64_t sub_21A440224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  result = sub_21A4509F4();
  v8 = result;
  if (result)
  {
    result = sub_21A450A24();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_21A450A14();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 / 4;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return a4(v8, v14);
}

id sub_21A4402DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v78 = a4;
  v81 = a2;
  v80 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD287D8, &qword_21A456BD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - v7;
  v9 = sub_21A450AB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21A450BE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a3 + 32);
  if (!*(v19 + 16))
  {
    goto LABEL_17;
  }

  v20 = *(a3 + 32);

  v21 = sub_21A3DCA2C(0x6966697372617073, 0xEE006E6F69746163);
  if ((v22 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_21A3D3B94(*(v19 + 56) + 32 * v21, &v83);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_21A3D3C88();
    swift_allocError();
    v36 = 9;
LABEL_18:
    *v35 = v36;
    return swift_willThrow();
  }

  v23 = v82[0];
  if (!*(v82[0] + 2))
  {
    goto LABEL_19;
  }

  v24 = sub_21A3DCA2C(0x6B6E7568436D756ELL, 0xE900000000000073);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(v23[7] + 32 * v24, &v83);
  sub_21A3D3CDC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v77 = v82[0];
  v76 = [v82[0] integerValue];

  if (!v23[2])
  {
    goto LABEL_19;
  }

  v26 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45CF20);
  if ((v27 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(v23[7] + 32 * v26, &v83);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v77 = v82[0];
  if (!v23[2] || (v28 = sub_21A3DCA2C(0xD000000000000015, 0x800000021A45CF40), (v29 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_21A3D3B94(v23[7] + 32 * v28, &v83);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:

    sub_21A3D3C88();
    swift_allocError();
    v36 = 10;
    goto LABEL_18;
  }

  result = v82[0];
  v31 = v82[1];
  v32 = v81 >> 62;
  v33 = v77;
  if ((v81 >> 62) <= 1)
  {
    if (!v32)
    {
      v34 = BYTE6(v81);
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v32 != 2)
  {
    v34 = 0;
    goto LABEL_29;
  }

  v38 = *(v80 + 16);
  v37 = *(v80 + 24);
  v39 = __OFSUB__(v37, v38);
  v34 = v37 - v38;
  if (v39)
  {
    __break(1u);
LABEL_26:
    LODWORD(v34) = HIDWORD(v80) - v80;
    if (__OFSUB__(HIDWORD(v80), v80))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v34 = v34;
  }

LABEL_29:
  if (v34 >= 0)
  {
    v40 = v34;
  }

  else
  {
    v40 = v34 + 3;
  }

  if (v33 >> 62)
  {
    v74 = result;
    v75 = v31;
    v71 = sub_21A451844();
    v31 = v75;
    v41 = v71;
    result = v74;
  }

  else
  {
    v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76 != v41 || v40 >> 2 < v76)
  {

    sub_21A3D3C88();
    swift_allocError();
    v36 = 11;
    goto LABEL_18;
  }

  v74 = v40 >> 2;
  v75 = v31;
  sub_21A441588(result, v31);
  v43 = v42;

  if (!v43)
  {

    sub_21A3D3C88();
    swift_allocError();
    v36 = 12;
    goto LABEL_18;
  }

  (*(v10 + 104))(v13, *MEMORY[0x277CC91D0], v9);
  (*(v15 + 56))(v8, 1, 1, v14);
  sub_21A450BA4();
  v44 = v79;
  v45 = sub_21A450C04();
  if (v44)
  {

    (*(v15 + 8))(v18, v14);
    sub_21A3D3C88();
    swift_allocError();
    v36 = 13;
    goto LABEL_18;
  }

  v72 = v45;
  v73 = v46;
  v75 = 0;
  result = (*(v15 + 8))(v18, v14);
  v82[0] = MEMORY[0x277D84F90];
  if (v76 < 0)
  {
    goto LABEL_57;
  }

  if (v76)
  {
    v79 = v77 & 0xC000000000000001;
    if ((v77 & 0xC000000000000001) != 0 || v76 <= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = 0;
      v48 = *v78;
      v49 = *(v78 + 8);
      v50 = *(v78 + 16);
      v84 = *(v78 + 32);
      v85 = v50;
      v78 = xmmword_21A456280;
      do
      {
        v51 = v47 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
        inited = swift_initStackObject();
        *(inited + 16) = v78;
        *(inited + 32) = 7104112;
        *(inited + 40) = 0xE300000000000000;
        *(inited + 48) = v48;
        *(inited + 56) = v49;
        *(inited + 64) = 0x73746C75736572;
        *(inited + 72) = 0xE700000000000000;
        v83 = v47 + 1;

        *(inited + 80) = sub_21A451974();
        *(inited + 88) = v53;
        v54 = v84;
        *(inited + 96) = v85;
        *(inited + 112) = v54;
        sub_21A440CC4(&v85, &v83);
        sub_21A440CC4(&v84, &v83);
        v55 = sub_21A40A794(inited);
        v57 = v56;
        swift_setDeallocating();
        swift_arrayDestroy();
        if (v79)
        {
          v58 = MEMORY[0x21CED9EA0](v47, v77);
        }

        else
        {
          v58 = *(v77 + 8 * v47 + 32);
        }

        v59 = v58;
        [v58 doubleValue];
        v61 = v60;

        type metadata accessor for PFLChunk();
        v62 = swift_allocObject();
        v62[2] = v55;
        v62[3] = v57;
        v62[4] = v61;
        v62[5] = MEMORY[0x277D84F90];

        MEMORY[0x21CED99D0](v63);
        if (*((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v64 = *((v82[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21A451314();
        }

        sub_21A451364();

        v47 = v51;
      }

      while (v76 != v51);
      goto LABEL_52;
    }

LABEL_58:
    __break(1u);
    return result;
  }

LABEL_52:

  MEMORY[0x28223BE20](v65);
  v66 = v80;
  *(&v72 - 6) = v74;
  *(&v72 - 5) = v66;
  v67 = v76;
  *(&v72 - 4) = v81;
  *(&v72 - 3) = v67;
  *(&v72 - 2) = v82;
  v68 = v72;
  v69 = v73;
  v70 = v75;
  sub_21A43FF1C(v72, v73, sub_21A440D20);
  if (v70)
  {
    sub_21A3E759C(v68, v69);
  }

  else
  {
    sub_21A3F67DC();
    sub_21A3E759C(v68, v69);
    return v82[0];
  }
}

uint64_t sub_21A440DA4()
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 16);
    component_size = e5rt_tensor_desc_dtype_get_component_size();
    sub_21A3DCF54(component_size);
    result = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
  }

  else
  {
    result = *(v0 + 24);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A440E40(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 0;
  return result;
}

void *(*sub_21A440E4C(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_21A440DA4();
  return sub_21A440E94;
}

void *sub_21A440E94(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t sub_21A440EA4()
{
  v6 = *MEMORY[0x277D85DE8];
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v2 = e5rt_tensor_desc_retain_dtype();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for TensorDescriptorDType();
  swift_deallocPartialClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t sub_21A440F84@<X0>(_BYTE *a1@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(v1 + 16);
  component_dtype = e5rt_tensor_desc_dtype_get_component_dtype();
  result = sub_21A3DCF54(component_dtype);
  if (!v2)
  {
    result = sub_21A440DA4();
    if (result == 2)
    {
      *a1 = 1;
    }

    else if (*(v1 + 24) == 4)
    {
      *a1 = 2;
    }

    else
    {
      sub_21A3DCAF8();
      swift_allocError();
      *v8 = 2;
      result = swift_willThrow();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t TensorDescriptorDType.deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_tensor_desc_dtype_release();
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t TensorDescriptorDType.__deallocating_deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_tensor_desc_dtype_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A4412B8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_21A441364(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_21A4413C4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_21A441410(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

uint64_t sub_21A441470()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

void *PFLTask.__allocating_init(recipeId:recipe:attachments:taskPreferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PFLTask();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v13[5] = a4;
  v13[6] = 0;
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  sub_21A40BADC(a5, v13 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  v13[6] = 0;
  return v13;
}

uint64_t type metadata accessor for PFLTask()
{
  result = qword_27CD28D10;
  if (!qword_27CD28D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A441588(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v15[2] = a2;
  v3 = sub_21A450BE4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v2 + 40);
  v9 = *(v8 + 16);

  if (v9)
  {
    v11 = 0;
    v12 = (v4 + 8);
    while (v11 < *(v8 + 16))
    {
      (*(v4 + 16))(v7, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v3);
      sub_21A450B84();
      v13 = sub_21A451234();

      if (v13)
      {

        v14 = sub_21A450B84();
        (*v12)(v7, v3);
        return v14;
      }

      ++v11;
      result = (*v12)(v7, v3);
      if (v9 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_21A441760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v11 = *(v5 + 32);

  Dictionary<>.parameter<A>(for:default:)(a1, a2, a3, v11, a4, a5);
}

uint64_t sub_21A4417EC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {

    v2 = sub_21A3DCA2C(0x6966697372617073, 0xEE006E6F69746163);
    if (v3)
    {
      sub_21A3D3B94(*(v1 + 56) + 32 * v2, v5);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {

        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_21A4418CC(uint64_t a1)
{
  v2 = v1;
  v149 = *MEMORY[0x277D85DE8];
  v134 = sub_21A4510B4();
  v133 = *(v134 - 8);
  v4 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v132 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21A450AB4();
  v7 = *(v6 - 8);
  v140 = v6;
  v141 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v139 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21A450BE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v135 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v136 = &v118 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v118 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v118 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v118 - v23;
  swift_beginAccess();
  v25 = v1[5];

  v137 = sub_21A443CE4(v26);
  v28 = v27;

  if (!v28)
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v50 = sub_21A450F24();
    __swift_project_value_buffer(v50, qword_27CD28C90);
    v51 = sub_21A450F04();
    v52 = sub_21A451574();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_21A3C2000, v51, v52, "Failed to compute common prefix path for task's attachments.", v53, 2u);
      MEMORY[0x21CEDB220](v53, -1, -1);
    }

    sub_21A3EC940();
    swift_allocError();
    *v54 = 53;
    goto LABEL_14;
  }

  v142 = v28;
  v129 = v19;
  v128 = objc_opt_self();
  v29 = [v128 defaultManager];
  v131 = a1;
  v30 = sub_21A450B34();
  v145 = 0;
  v31 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v145];

  v32 = v145;
  if (!v31)
  {
    v55 = v145;

    sub_21A450A84();

LABEL_14:
    result = swift_willThrow();
    goto LABEL_15;
  }

  v130 = v10;
  v33 = objc_opt_self();
  swift_beginAccess();
  v34 = v2[4];

  v35 = v32;
  v36 = sub_21A450F54();

  v145 = 0;
  v37 = [v33 dataWithJSONObject:v36 options:4 error:&v145];

  v38 = v145;
  if (!v37)
  {
    v56 = v38;

    sub_21A450A84();

    goto LABEL_14;
  }

  v127 = v11;
  v39 = sub_21A450C64();
  v41 = v40;

  v145 = 0x6A2E657069636572;
  v146 = 0xEB000000006E6F73;
  v42 = v141;
  v43 = *(v141 + 104);
  v44 = v139;
  v125 = *MEMORY[0x277CC91D8];
  v45 = v140;
  v122 = v141 + 104;
  v124 = v43;
  v43(v139);
  v121 = sub_21A3ED2CC();
  sub_21A450BD4();
  v47 = *(v42 + 8);
  v46 = v42 + 8;
  v123 = v47;
  v47(v44, v45);
  v48 = v138;
  sub_21A450C74();
  v138 = v48;
  if (v48)
  {
    (*(v127 + 8))(v24, v130);
    sub_21A3E759C(v39, v41);
LABEL_6:

    goto LABEL_15;
  }

  v119 = v39;
  v120 = v41;
  v58 = v127 + 8;
  v126 = *(v127 + 8);
  v126(v24, v130);
  swift_beginAccess();
  v59 = v2[3];
  v145 = v2[2];
  v146 = v59;
  v143 = 0xD000000000000013;
  v144 = 0x800000021A45BA80;
  v124(v44, v125, v45);

  sub_21A450BD4();
  v123(v44, v45);
  v60 = v132;
  sub_21A4510A4();
  v61 = v138;
  sub_21A451674();
  v62 = v61;
  if (v61)
  {
    sub_21A3E759C(v119, v120);

    (*(v133 + 8))(v60, v134);
    v126(v22, v130);

    goto LABEL_15;
  }

  v138 = 0;
  v141 = v46;
  (*(v133 + 8))(v60, v134);
  v63 = v130;
  v126(v22, v130);

  v64 = v2[5];
  v65 = *(v64 + 2);

  v121 = v65;
  if (!v65)
  {
LABEL_28:
    sub_21A3E759C(v119, v120);

    goto LABEL_6;
  }

  v134 = v58;
  v66 = 0;
  v67 = v127;
  v133 = v127 + 16;
  v68 = v129;
  v132 = v64;
  while (1)
  {
    if (v66 >= *(v64 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    (*(v67 + 16))(v68, &v64[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66], v63);
    v62 = sub_21A450B84();
    v22 = v69;
    if ((sub_21A451224() & 1) == 0)
    {
      break;
    }

    v70 = sub_21A451154();
    v71 = sub_21A443C34(v70, v62, v22);
    v73 = v72;
    v75 = v74;
    v77 = v76;

    v145 = v71;
    v146 = v73;
    v147 = v75;
    v148 = v77;
    v79 = v139;
    v78 = v140;
    v124(v139, v125, v140);
    sub_21A4442E4();
    v80 = v136;
    sub_21A450BC4();
    v123(v79, v78);

    v81 = v128;
    v82 = [v128 defaultManager];
    v83 = sub_21A450B34();
    v145 = 0;
    LODWORD(v79) = [v82 removeItemAtURL:v83 error:&v145];

    if (v79)
    {
      v84 = v145;
    }

    else
    {
      v85 = v145;
      v86 = sub_21A450A84();

      swift_willThrow();
      v138 = 0;
    }

    v87 = v130;
    v88 = [v81 defaultManager];
    v89 = v81;
    v90 = v135;
    sub_21A450B64();
    sub_21A450B84();
    v126(v90, v87);
    v91 = sub_21A451054();

    v145 = 0;
    v92 = [v88 createDirectoryAtPath:v91 withIntermediateDirectories:1 attributes:0 error:&v145];

    if (!v92)
    {
      v112 = v145;

      sub_21A450A84();

      swift_willThrow();
      sub_21A3E759C(v119, v120);
      v113 = v126;
      v126(v80, v87);
      result = v113(v129, v87);
      goto LABEL_15;
    }

    v93 = v145;
    v22 = [v89 byte_27825363B];
    v62 = v129;
    v94 = sub_21A450B34();
    v95 = sub_21A450B34();
    v145 = 0;
    v96 = [v22 copyItemAtURL:v94 toURL:v95 error:&v145];

    if (!v96)
    {
      v114 = v145;

      sub_21A450A84();

      swift_willThrow();
      sub_21A3E759C(v119, v120);
      v115 = v130;
      v116 = v126;
      v126(v80, v130);
      result = v116(v62, v115);
      goto LABEL_15;
    }

    ++v66;
    v97 = v145;
    v63 = v130;
    v98 = v126;
    v126(v80, v130);
    v98(v62, v63);
    v68 = v62;
    v67 = v127;
    v64 = v132;
    if (v121 == v66)
    {
      goto LABEL_28;
    }
  }

  if (qword_27CD28170 == -1)
  {
    goto LABEL_30;
  }

LABEL_37:
  swift_once();
LABEL_30:
  v99 = sub_21A450F24();
  __swift_project_value_buffer(v99, qword_27CD28C90);

  v100 = v142;

  v101 = sub_21A450F04();
  v102 = sub_21A451574();

  v103 = os_log_type_enabled(v101, v102);
  v104 = v137;
  if (v103)
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v145 = v106;
    *v105 = 136315394;
    v107 = sub_21A3E2554(v62, v22, &v145);
    v108 = v100;
    v109 = v107;

    *(v105 + 4) = v109;
    *(v105 + 12) = 2080;
    v110 = sub_21A3E2554(v104, v108, &v145);

    *(v105 + 14) = v110;
    _os_log_impl(&dword_21A3C2000, v101, v102, "%s do not have common prefix of %s", v105, 0x16u);
    swift_arrayDestroy();
    v111 = v106;
    v68 = v129;
    MEMORY[0x21CEDB220](v111, -1, -1);
    MEMORY[0x21CEDB220](v105, -1, -1);
  }

  else
  {
  }

  sub_21A3EC940();
  swift_allocError();
  *v117 = 53;
  swift_willThrow();
  sub_21A3E759C(v119, v120);
  result = (v126)(v68, v63);
LABEL_15:
  v57 = *MEMORY[0x277D85DE8];
  return result;
}

void *static PFLTask.load(from:taskPreferences:excludedFilePostfixes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v111 = a2;
  v131[4] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for PFLTaskPreferences(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v112 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A4510B4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_21A450AB4();
  v114 = *(v115 - 1);
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A450BE4();
  v121 = *(v13 - 8);
  v14 = v121[8];
  v15 = MEMORY[0x28223BE20](v13);
  v118 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v105 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v105 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v105 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v105 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v105 - v32;
  v34 = v129;
  v35 = sub_21A443404(a1);
  if (v34)
  {
    goto LABEL_32;
  }

  v36 = v35;
  v128 = v25;
  v129 = v31;
  v124 = v28;
  v108 = v22;
  v116 = 0;
  v109 = v19;
  v110 = v33;
  v37 = *(v35 + 2);
  v120 = v13;
  v125 = v37;
  if (!v37)
  {
    v40 = MEMORY[0x277D84F90];
    v39 = v121;
    v41 = v124;
LABEL_17:
    if (v40[2])
    {
      v51 = v39[2];
      v127 = ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v52 = v41;
      v129 = v51;
      (v51)(v41, &v127[v40], v13);

      v53 = v110;
      v54 = v52;
      v55 = v39[4];
      v55(v110, v54, v13);
      v56 = v116;
      v57 = sub_21A450C04();
      if (v56)
      {

        (v39[1])(v53, v13);
      }

      else
      {
        v122 = v55;
        v124 = (v39 + 4);
        v126 = (v39 + 2);
        v128 = v36;
        v119 = 0;
        v59 = v57;
        v60 = v58;
        v61 = objc_opt_self();
        v62 = sub_21A450C54();
        v131[0] = 0;
        v63 = [v61 JSONObjectWithData:v62 options:0 error:v131];

        if (v63)
        {
          v107 = v59;
          v64 = v131[0];
          sub_21A451694();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
          if (swift_dynamicCast())
          {
            v106 = v60;
            v65 = v130;
            v131[0] = 0xD000000000000013;
            v131[1] = 0x800000021A45BA80;
            v66 = v114;
            v67 = v113;
            v68 = v115;
            (*(v114 + 104))(v113, *MEMORY[0x277CC91D8], v115);
            sub_21A3ED2CC();
            v69 = v108;
            sub_21A450BC4();
            (*(v66 + 8))(v67, v68);
            sub_21A4510A4();
            v70 = v119;
            v71 = sub_21A451044();
            v73 = v110;
            if (v70)
            {

              sub_21A3E759C(v107, v106);

              v3 = v121 + 1;
              v74 = v121[1];
              v74(v69, v13);
              v74(v73, v13);
            }

            else
            {
              v116 = 0;
              v114 = v72;
              v113 = v71;
              v83 = v121[1];
              v119 = (v121 + 1);
              v115 = v83;
              (v83)(v69, v13);
              v84 = v128;
              if (v125)
              {
                v85 = 0;
                v123 = &v127[v128];
                v86 = MEMORY[0x277D84F90];
                v87 = v109;
                v88 = v129;
                do
                {
                  if (v85 >= *(v84 + 2))
                  {
                    __break(1u);
                  }

                  v89 = v121[9];
                  (v88)(v87, &v123[v89 * v85], v13);
                  v130 = &unk_282B3FF30;

                  v91 = sub_21A443A20(v90);
                  v92 = v130;
                  MEMORY[0x28223BE20](v91);
                  *(&v105 - 2) = v87;
                  v93 = v116;
                  v94 = sub_21A4412B8(sub_21A444338, (&v105 - 4), v92);
                  v116 = v93;

                  if (v94)
                  {
                    (v115)(v87, v13);
                    v84 = v128;
                  }

                  else
                  {
                    v122(v118, v87, v13);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v131[0] = v86;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_21A3E49DC(0, *(v86 + 2) + 1, 1);
                      v86 = v131[0];
                    }

                    v96 = v127;
                    v84 = v128;
                    v98 = *(v86 + 2);
                    v97 = *(v86 + 3);
                    if (v98 >= v97 >> 1)
                    {
                      sub_21A3E49DC(v97 > 1, v98 + 1, 1);
                      v84 = v128;
                      v86 = v131[0];
                    }

                    *(v86 + 2) = v98 + 1;
                    v99 = &v96[v86 + v98 * v89];
                    v13 = v120;
                    v122(v99, v118, v120);
                    v87 = v109;
                  }

                  ++v85;
                  v88 = v129;
                }

                while (v125 != v85);
              }

              else
              {
                v86 = MEMORY[0x277D84F90];
              }

              (v115)(v110, v13);

              sub_21A3E759C(v107, v106);
              v100 = v112;
              sub_21A3D83D8(v111, v112);
              v101 = type metadata accessor for PFLTask();
              v102 = *(v101 + 48);
              v103 = *(v101 + 52);
              v3 = swift_allocObject();
              v3[5] = v86;
              v3[6] = 0;
              v104 = v114;
              v3[2] = v113;
              v3[3] = v104;
              v3[4] = v65;
              sub_21A40BADC(v100, v3 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
              v3[6] = 0;
            }

            goto LABEL_32;
          }

          sub_21A3E759C(v107, v60);
        }

        else
        {
          v75 = v131[0];

          v76 = sub_21A450A84();

          swift_willThrow();
          sub_21A3E759C(v59, v60);
        }

        (v121[1])(v110, v13);
      }
    }

    else
    {
    }

    if (qword_27CD28170 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_29;
  }

  v38 = 0;
  v39 = v121;
  v122 = (v121 + 2);
  v119 = (v121 + 1);
  v127 = (v121 + 4);
  v40 = MEMORY[0x277D84F90];
  v123 = a1;
  while (v38 < *(v36 + 2))
  {
    v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v43 = v39[9];
    (v39[2])(v129, &v36[v42 + v43 * v38], v13);
    if (sub_21A450B14() == 0x6A2E657069636572 && v44 == 0xEB000000006E6F73)
    {

LABEL_11:
      v46 = *v127;
      (*v127)(v128, v129, v13);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v131[0] = v40;
      if ((v47 & 1) == 0)
      {
        sub_21A3E49DC(0, v40[2] + 1, 1);
        v40 = v131[0];
      }

      v49 = v40[2];
      v48 = v40[3];
      if (v49 >= v48 >> 1)
      {
        sub_21A3E49DC(v48 > 1, v49 + 1, 1);
        v40 = v131[0];
      }

      v40[2] = v49 + 1;
      v50 = v40 + v42 + v49 * v43;
      v13 = v120;
      v46(v50, v128, v120);
      v39 = v121;
      goto LABEL_5;
    }

    v45 = sub_21A4519B4();

    if (v45)
    {
      goto LABEL_11;
    }

    (*v119)(v129, v13);
LABEL_5:
    ++v38;
    v41 = v124;
    if (v125 == v38)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  swift_once();
LABEL_29:
  v77 = sub_21A450F24();
  __swift_project_value_buffer(v77, qword_27CD28C90);
  v78 = sub_21A450F04();
  v3 = sub_21A451574();
  if (os_log_type_enabled(v78, v3))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_21A3C2000, v78, v3, "Failed to load task due to recipe file missing or malformed.", v79, 2u);
    MEMORY[0x21CEDB220](v79, -1, -1);
  }

  sub_21A3EC940();
  swift_allocError();
  *v80 = 54;
  swift_willThrow();
LABEL_32:
  v81 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_21A443404(uint64_t a1)
{
  v2 = v1;
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v45 = v40 - v10;
  LOBYTE(v47[0]) = 0;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  sub_21A450B94();
  v13 = sub_21A451054();

  v14 = [v12 fileExistsAtPath:v13 isDirectory:v47];

  if (!v14 || (v47[0] & 1) == 0)
  {
    (*(v5 + 16))(v9, a1, v4);
    v21 = sub_21A408668(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = v21[2];
    v23 = v21[3];
    v17 = (v22 + 1);
    if (v22 < v23 >> 1)
    {
LABEL_7:
      v21[2] = v17;
      v24 = v21;
      (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v9, v4);
      goto LABEL_8;
    }

LABEL_33:
    v21 = sub_21A408668(v23 > 1, v17, 1, v21);
    goto LABEL_7;
  }

  v15 = [v11 defaultManager];
  v16 = sub_21A450B34();
  v47[0] = 0;
  v17 = [v15 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:4 error:v47];

  v18 = v47[0];
  if (!v17)
  {
    v24 = v47[0];
    sub_21A450A84();

    swift_willThrow();
    goto LABEL_8;
  }

  v19 = sub_21A4512E4();
  v20 = v18;

  v42 = *(v19 + 16);
  if (v42)
  {
    v22 = 0;
    v40[1] = v5 + 16;
    v41 = (v5 + 8);
    v9 = MEMORY[0x277D84F90];
    v40[0] = v19;
    while (1)
    {
      v23 = *(v19 + 16);
      if (v22 >= v23)
      {
        break;
      }

      v27 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v44 = *(v5 + 72);
      v28 = v45;
      (*(v5 + 16))(v45, v19 + v27 + v44 * v22, v4);
      v24 = v46;
      v29 = sub_21A443404(v28);
      if (v2)
      {
        (*v41)(v28, v4);

        goto LABEL_8;
      }

      v17 = v29;
      v43 = v27;
      v30 = v5;
      v5 = 0;
      v31 = v28;
      v32 = v4;
      (*v41)(v31, v4);
      v33 = v17[2];
      v4 = v9[2];
      v34 = v4 + v33;
      if (__OFADD__(v4, v33))
      {
        goto LABEL_30;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v34 > v9[3] >> 1)
      {
        if (v4 <= v34)
        {
          v36 = v4 + v33;
        }

        else
        {
          v36 = v4;
        }

        v9 = sub_21A408668(isUniquelyReferenced_nonNull_native, v36, 1, v9);
      }

      v2 = 0;
      v4 = v32;
      v5 = v30;
      if (v17[2])
      {
        v23 = v9[2];
        if (((v9[3] >> 1) - v23) < v33)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v37 = v9[2];
          v38 = __OFADD__(v37, v33);
          v39 = v37 + v33;
          if (v38)
          {
            __break(1u);
          }

          v9[2] = v39;
        }
      }

      else
      {

        if (v33)
        {
          goto LABEL_31;
        }
      }

      ++v22;
      v19 = v40[0];
      if (v42 == v22)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_27:
  v24 = v9;

LABEL_8:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_21A4438B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A450B84();
  LOBYTE(v1) = sub_21A451234();

  return v1 & 1;
}

void *sub_21A443918(void *result)
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
  v7 = *v1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_21A40840C(result, v11, 1, v3);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28588, &qword_21A456488);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21A443A20(uint64_t result)
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
  v7 = *v1;
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

  result = sub_21A408CB8(result, v11, 1, v3);
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

void *PFLTask.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  return v0;
}

uint64_t PFLTask.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_21A3D843C(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning7PFLTask_taskPreferences);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21A443BE0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_21A443C34(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_21A451184();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_21A451284();
}

uint64_t sub_21A443CE4(uint64_t a1)
{
  v2 = sub_21A450BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v76 = MEMORY[0x277D84F90];
  sub_21A3E49BC(0, v7, 0);
  v8 = v76;
  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
  v70 = *(v9 + 56);
  v71 = v10;
  v12 = (v9 - 8);
  do
  {
    v13 = v9;
    (v71)(v6, v11, v2);
    v14 = sub_21A450AD4();
    (*v12)(v6, v2);
    v76 = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      sub_21A3E49BC((v15 > 1), v17, 1);
      v17 = v16 + 1;
      v8 = v76;
    }

    *(v8 + 16) = v17;
    *(v8 + 8 * v16 + 32) = v14;
    v11 += v70;
    --v7;
    v9 = v13;
  }

  while (v7);
  v76 = MEMORY[0x277D84F90];
  v69 = v17;
  sub_21A3E499C(0, v17, 0);
  v18 = 0;
  v19 = v76;
  v20 = *(v76 + 16);
  do
  {
    v21 = *(*(v8 + 32 + 8 * v18) + 16);
    v76 = v19;
    v22 = v19[3];
    if (v20 + v18 >= v22 >> 1)
    {
      sub_21A3E499C((v22 > 1), v20 + v18 + 1, 1);
      v19 = v76;
    }

    v23 = v18 + 1;
    v19[2] = v20 + v18 + 1;
    v19[v20 + 4 + v18] = v21;
    v18 = v23;
  }

  while (v16 + 1 != v23);
  v24 = v19[4];
  if (v20 + v23 != 1)
  {
    v25 = v20 + v16;
    if (v20 + v16 >= 4)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v27 = vdupq_n_s64(v24);
      v28 = (v19 + 7);
      v29 = v25 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = v27;
      do
      {
        v27 = vbslq_s8(vcgtq_s64(v27, v28[-1]), v28[-1], v27);
        v30 = vbslq_s8(vcgtq_s64(v30, *v28), *v28, v30);
        v28 += 2;
        v29 -= 4;
      }

      while (v29);
      v31 = vbslq_s8(vcgtq_s64(v30, v27), v27, v30);
      v32 = vextq_s8(v31, v31, 8uLL).u64[0];
      v24 = vbsl_s8(vcgtd_s64(v32, v31.i64[0]), *v31.i8, v32);
      if (v25 == (v25 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 1;
    }

    v33 = v20 - v26 + v23;
    v34 = &v19[v26 + 4];
    do
    {
      v36 = *v34++;
      v35 = v36;
      if (v36 < v24)
      {
        v24 = v35;
      }

      --v33;
    }

    while (v33);
  }

LABEL_20:

  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v38 = 0;
      v68 = v16 + 1;
      v39 = MEMORY[0x277D84F90];
      v40 = v69;
      v67 = v24;
      do
      {
        v70 = v38 + 1;
        v71 = v39;
        v76 = MEMORY[0x277D84F90];
        result = sub_21A3E48DC(0, v40, 0);
        v41 = v76;
        v42 = 32;
        v43 = v68;
        do
        {
          v44 = *(v8 + v42);
          if (v38 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_46;
          }

          v45 = v44 + 16 * v38;
          v47 = *(v45 + 32);
          v46 = *(v45 + 40);
          v76 = v41;
          v48 = *(v41 + 16);
          v49 = *(v41 + 24);

          if (v48 >= v49 >> 1)
          {
            result = sub_21A3E48DC((v49 > 1), v48 + 1, 1);
            v41 = v76;
          }

          *(v41 + 16) = v48 + 1;
          v50 = v41 + 16 * v48;
          *(v50 + 32) = v47;
          *(v50 + 40) = v46;
          v42 += 8;
          --v43;
        }

        while (v43);
        v51 = sub_21A3D9D50(v41);

        if (*(v51 + 16) != 1)
        {

          v39 = v71;
          if (*(v71 + 2))
          {
            goto LABEL_41;
          }

          goto LABEL_43;
        }

        v52 = -1 << *(v51 + 32);
        v53 = sub_21A4516B4();
        v39 = v71;
        if (v53 == 1 << *(v51 + 32))
        {

          if (!*(v39 + 2))
          {
            goto LABEL_43;
          }

          goto LABEL_41;
        }

        v54 = sub_21A443BE0(v53, *(v51 + 36), 0, v51);
        v56 = v55;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_21A408CB8(0, *(v39 + 2) + 1, 1, v39);
        }

        v57 = v67;
        v40 = v69;
        v38 = v70;
        v59 = *(v39 + 2);
        v58 = *(v39 + 3);
        if (v59 >= v58 >> 1)
        {
          v61 = sub_21A408CB8((v58 > 1), v59 + 1, 1, v39);
          v40 = v69;
          v39 = v61;
        }

        *(v39 + 2) = v59 + 1;
        v60 = &v39[16 * v59];
        *(v60 + 4) = v54;
        *(v60 + 5) = v56;
      }

      while (v38 != v57);

      if (*(v39 + 2))
      {
        goto LABEL_41;
      }
    }

    else
    {

      v39 = MEMORY[0x277D84F90];
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_41:
        v76 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
        sub_21A402B04();
        v62 = sub_21A450FD4();
        v64 = v63;

        v76 = 47;
        v77 = 0xE100000000000000;
        MEMORY[0x21CED98B0](v62, v64);

        v74 = 2830174;
        v75 = 0xE300000000000000;
        v72 = 47;
        v73 = 0xE100000000000000;
        sub_21A3ED2CC();
        v65 = sub_21A451654();

        return v65;
      }
    }

LABEL_43:

    return 0;
  }

LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_21A4442E4()
{
  result = qword_27CD28D08;
  if (!qword_27CD28D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28D08);
  }

  return result;
}

uint64_t sub_21A444360()
{
  result = type metadata accessor for PFLTaskPreferences(319);
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

void sub_21A444584()
{
  sub_21A450D14();
  if (v0 <= 0x3F)
  {
    sub_21A444684(319, &qword_27CD28D58);
    if (v1 <= 0x3F)
    {
      sub_21A444684(319, &unk_27CD28D60);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A444684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21A4513B4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_21A4446D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21A450D14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21A444738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21A450D14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21A4447B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 68));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21A4447F0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_21A444828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v233 - v9;
  v11 = sub_21A450D14();
  v250 = *(v11 - 8);
  v251 = v11;
  v12 = *(v250 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v245 = &v233 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v246 = &v233 - v15;
  v16 = type metadata accessor for CKRecipeDescriptorRecord(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v19[7];
  *&v21[v22] = &unk_282B3FBA0;
  v243 = v19[9];
  *&v21[v243] = &unk_282B3FBD0;
  v244 = v19[10];
  *&v21[v244] = &unk_282B3FC00;
  v242 = v19[12];
  *&v21[v242] = &unk_282B3FC30;
  v23 = v19[14];
  *&v21[v23] = &unk_282B3FC60;
  v252 = a1;
  if (sub_21A4515C4() == *aPolicy_1 && v24 == unk_27CD28D28)
  {
  }

  else
  {
    v25 = sub_21A4519B4();

    if ((v25 & 1) == 0)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v63 = sub_21A450F24();
      __swift_project_value_buffer(v63, qword_27CD28C90);
      v64 = v252;
      v65 = sub_21A450F04();
      v66 = sub_21A451574();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = v17;
        v68 = swift_slowAlloc();
        v69 = v16;
        v70 = swift_slowAlloc();
        v253 = v70;
        *v68 = 136315138;
        v71 = sub_21A4515C4();
        v73 = sub_21A3E2554(v71, v72, &v253);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_21A3C2000, v65, v66, "Invalid recordType: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        v74 = v70;
        v16 = v69;
        MEMORY[0x21CEDB220](v74, -1, -1);
        v75 = v68;
        v17 = v67;
        MEMORY[0x21CEDB220](v75, -1, -1);
      }

      else
      {
      }

      goto LABEL_24;
    }
  }

  v247 = v16;
  v248 = v17;
  v249 = a2;
  v26 = [v252 values];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D70, &qword_21A459288);
  v28 = sub_21A450F64();

  if (!*(v28 + 16) || (v29 = sub_21A3DCA2C(0x61645F7472617473, 0xEE00656D69746574), (v30 & 1) == 0))
  {

    (*(v250 + 56))(v10, 1, 1, v251);
    goto LABEL_19;
  }

  v240 = v23;
  v241 = v21;
  v31 = *(*(v28 + 56) + 8 * v29);
  swift_unknownObjectRetain();

  v253 = v31;
  v32 = v251;
  v33 = swift_dynamicCast();
  v34 = v250;
  v35 = *(v250 + 56);
  v35(v10, v33 ^ 1u, 1, v32);
  v36 = *(v34 + 48);
  if (v36(v10, 1, v32) == 1)
  {
LABEL_19:
    sub_21A44715C(v10);
    v17 = v248;
    a2 = v249;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v57 = sub_21A450F24();
    __swift_project_value_buffer(v57, qword_27CD28C90);
    v58 = sub_21A450F04();
    v59 = sub_21A451574();
    v60 = os_log_type_enabled(v58, v59);
    v16 = v247;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_21A3C2000, v58, v59, "Failed at parsing start_datetime", v61, 2u);
      MEMORY[0x21CEDB220](v61, -1, -1);
    }

    goto LABEL_24;
  }

  v238 = *(v34 + 32);
  v238(v246, v10, v32);
  v37 = [v252 values];
  v239 = v27;
  v38 = sub_21A450F64();

  if (!*(v38 + 16) || (v39 = sub_21A3DCA2C(0x657461645F646E65, 0xEC000000656D6974), (v40 & 1) == 0))
  {

    v35(v8, 1, 1, v251);
    v17 = v248;
    a2 = v249;
    goto LABEL_31;
  }

  v41 = *(*(v38 + 56) + 8 * v39);
  swift_unknownObjectRetain();

  v253 = v41;
  v42 = v251;
  v43 = swift_dynamicCast();
  v35(v8, v43 ^ 1u, 1, v42);
  v44 = v36(v8, 1, v42);
  v17 = v248;
  a2 = v249;
  if (v44 == 1)
  {
LABEL_31:
    sub_21A44715C(v8);
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v76 = sub_21A450F24();
    __swift_project_value_buffer(v76, qword_27CD28C90);
    v77 = sub_21A450F04();
    v78 = sub_21A451574();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v250;
    if (v79)
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_21A3C2000, v77, v78, "Failed at parsing end_datetime", v81, 2u);
      MEMORY[0x21CEDB220](v81, -1, -1);
    }

    else
    {
    }

    (*(v80 + 8))(v246, v251);
    goto LABEL_37;
  }

  v45 = v245;
  v238(v245, v8, v42);
  v46 = [v252 values];
  v47 = sub_21A450F64();

  if (!*(v47 + 16) || (v48 = sub_21A3DCA2C(0x74726F686F63, 0xE600000000000000), (v49 & 1) == 0))
  {

    goto LABEL_39;
  }

  v50 = *(*(v47 + 56) + 8 * v48);
  swift_unknownObjectRetain();

  v253 = v50;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v82 = v250;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v83 = sub_21A450F24();
    __swift_project_value_buffer(v83, qword_27CD28C90);
    v84 = sub_21A450F04();
    v85 = sub_21A451574();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_21A3C2000, v84, v85, "Failed at parsing cohort", v86, 2u);
      MEMORY[0x21CEDB220](v86, -1, -1);
    }

    v87 = *(v82 + 8);
    v88 = v251;
    v87(v45, v251);
    v87(v246, v88);
    goto LABEL_37;
  }

  v51 = v255;
  v52 = [v252 values];
  v53 = sub_21A450F64();

  if (*(v53 + 16) && (v54 = sub_21A3DCA2C(0x73656369766564, 0xE700000000000000), (v55 & 1) != 0))
  {
    v56 = *(*(v53 + 56) + 8 * v54);
    swift_unknownObjectRetain();

    v253 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v241[v22] = v255;
      goto LABEL_50;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v89 = sub_21A450F24();
  __swift_project_value_buffer(v89, qword_27CD28C90);
  v90 = sub_21A450F04();
  v91 = sub_21A451574();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_21A3C2000, v90, v91, "devices not set in the CK record. Interpreting this as all device types.", v92, 2u);
    MEMORY[0x21CEDB220](v92, -1, -1);
  }

LABEL_50:
  v93 = [v252 values];
  v94 = sub_21A450F64();

  if (!*(v94 + 16))
  {

LABEL_60:
    v106 = v250;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v107 = sub_21A450F24();
    __swift_project_value_buffer(v107, qword_27CD28C90);
    v108 = sub_21A450F04();
    v109 = sub_21A451574();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_21A3C2000, v108, v109, "Failed at parsing iteration", v110, 2u);
      MEMORY[0x21CEDB220](v110, -1, -1);
    }

    v111 = *(v106 + 8);
    v112 = v251;
    v111(v45, v251);
    v111(v246, v112);
    goto LABEL_65;
  }

  v95 = sub_21A3DCA2C(0x6F69746172657469, 0xE90000000000006ELL);
  if ((v96 & 1) == 0)
  {

    goto LABEL_59;
  }

  v97 = *(*(v94 + 56) + 8 * v95);
  swift_unknownObjectRetain();

  v253 = v97;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_59:
    a2 = v249;
    goto LABEL_60;
  }

  v98 = v255;
  v99 = [v252 values];
  v100 = sub_21A450F64();

  v101 = *(v100 + 16);
  v237 = v51;
  v236 = v98;
  if (v101 && (v102 = sub_21A3DCA2C(0x65676175676E616CLL, 0xE900000000000073), (v103 & 1) != 0))
  {
    v104 = *(*(v100 + 56) + 8 * v102);
    swift_unknownObjectRetain();

    v253 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    v105 = swift_dynamicCast();
    a2 = v249;
    if (v105)
    {
      *&v241[v243] = v255;
      goto LABEL_72;
    }
  }

  else
  {

    a2 = v249;
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v113 = sub_21A450F24();
  __swift_project_value_buffer(v113, qword_27CD28C90);
  v114 = sub_21A450F04();
  v115 = sub_21A451574();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 0;
    _os_log_impl(&dword_21A3C2000, v114, v115, "languages not set in the CK record. Interpreting this as all languages.", v116, 2u);
    MEMORY[0x21CEDB220](v116, -1, -1);
  }

LABEL_72:
  v117 = [v252 values];
  v118 = sub_21A450F64();

  if (*(v118 + 16) && (v119 = sub_21A3DCA2C(0x73656C61636F6CLL, 0xE700000000000000), (v120 & 1) != 0))
  {
    v121 = *(*(v118 + 56) + 8 * v119);
    swift_unknownObjectRetain();

    v253 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v241[v244] = v255;
      goto LABEL_82;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v122 = sub_21A450F24();
  __swift_project_value_buffer(v122, qword_27CD28C90);
  v123 = sub_21A450F04();
  v124 = sub_21A451574();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&dword_21A3C2000, v123, v124, "locales not set in the CK record. Interpreting this as all locales.", v125, 2u);
    MEMORY[0x21CEDB220](v125, -1, -1);
  }

LABEL_82:
  v126 = [v252 values];
  v127 = sub_21A450F64();

  if (!*(v127 + 16) || (v128 = sub_21A3DCA2C(0x695F6E6967756C70, 0xE900000000000064), (v129 & 1) == 0))
  {

    goto LABEL_90;
  }

  v130 = *(*(v127 + 56) + 8 * v128);
  swift_unknownObjectRetain();

  v255 = v130;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_90:
    v137 = v250;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v138 = sub_21A450F24();
    __swift_project_value_buffer(v138, qword_27CD28C90);
    v139 = sub_21A450F04();
    v140 = sub_21A451574();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&dword_21A3C2000, v139, v140, "Failed at parsing plugin_id", v141, 2u);
      MEMORY[0x21CEDB220](v141, -1, -1);

      v142 = *(v137 + 8);
      v143 = v251;
      v142(v45, v251);
      v142(v246, v143);
    }

    else
    {

      v144 = *(v137 + 8);
      v145 = v251;
      v144(v45, v251);
      v144(v246, v145);
    }

LABEL_65:

LABEL_37:
    v16 = v247;
LABEL_24:

    return (*(v17 + 56))(a2, 1, 1, v16);
  }

  v131 = v254;
  v244 = v253;
  v132 = [v252 values];
  v133 = sub_21A450F64();

  if (*(v133 + 16) && (v134 = sub_21A3DCA2C(0xD000000000000013, 0x800000021A45BF00), (v135 & 1) != 0))
  {
    v136 = *(*(v133 + 56) + 8 * v134);
    swift_unknownObjectRetain();

    v253 = v136;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v241[v242] = v255;
      goto LABEL_102;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v146 = sub_21A450F24();
  __swift_project_value_buffer(v146, qword_27CD28C90);
  v147 = sub_21A450F04();
  v148 = sub_21A451574();
  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    *v149 = 0;
    _os_log_impl(&dword_21A3C2000, v147, v148, "population_category not set in the CK record. Interpreting this as $all.", v149, 2u);
    MEMORY[0x21CEDB220](v149, -1, -1);
  }

LABEL_102:
  v150 = [v252 values];
  v151 = sub_21A450F64();

  if (!*(v151 + 16) || (v152 = sub_21A3DCA2C(0x695F657069636572, 0xE900000000000064), (v153 & 1) == 0))
  {

    goto LABEL_110;
  }

  v154 = *(*(v151 + 56) + 8 * v152);
  swift_unknownObjectRetain();

  v255 = v154;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_110:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v161 = sub_21A450F24();
    __swift_project_value_buffer(v161, qword_27CD28C90);
    v162 = sub_21A450F04();
    v163 = sub_21A451574();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&dword_21A3C2000, v162, v163, "Failed at parsing recipe_id", v164, 2u);
      MEMORY[0x21CEDB220](v164, -1, -1);
    }

    goto LABEL_114;
  }

  v155 = v253;
  v243 = v254;
  v156 = [v252 values];
  v157 = sub_21A450F64();

  if (*(v157 + 16) && (v158 = sub_21A3DCA2C(0x736E6F69676572, 0xE700000000000000), (v159 & 1) != 0))
  {
    v160 = *(*(v157 + 56) + 8 * v158);
    swift_unknownObjectRetain();

    v253 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    if (swift_dynamicCast())
    {
      *&v241[v240] = v255;
      goto LABEL_121;
    }
  }

  else
  {
  }

  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v167 = sub_21A450F24();
  __swift_project_value_buffer(v167, qword_27CD28C90);
  v168 = sub_21A450F04();
  v169 = sub_21A451574();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    _os_log_impl(&dword_21A3C2000, v168, v169, "regions not set in the CK record. Interpreting this as all regions.", v170, 2u);
    MEMORY[0x21CEDB220](v170, -1, -1);
  }

LABEL_121:
  v171 = [v252 values];
  v172 = sub_21A450F64();

  if (!*(v172 + 16) || (v173 = sub_21A3DCA2C(0x676E696C706D6173, 0xED0000657461725FLL), (v174 & 1) == 0))
  {

LABEL_138:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v201 = sub_21A450F24();
    __swift_project_value_buffer(v201, qword_27CD28C90);
    v162 = sub_21A450F04();
    v202 = sub_21A451574();
    if (!os_log_type_enabled(v162, v202))
    {
      goto LABEL_114;
    }

    v203 = swift_slowAlloc();
    *v203 = 0;
    v204 = "Failed at parsing sampling_rate";
    goto LABEL_142;
  }

  v175 = *(*(v172 + 56) + 8 * v173);
  swift_unknownObjectRetain();

  v253 = v175;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_138;
  }

  v176 = v255;
  v177 = [v252 values];
  v178 = sub_21A450F64();

  if (!*(v178 + 16) || (v179 = sub_21A3DCA2C(0x737574617473, 0xE600000000000000), (v180 & 1) == 0))
  {

LABEL_146:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v205 = sub_21A450F24();
    __swift_project_value_buffer(v205, qword_27CD28C90);
    v162 = sub_21A450F04();
    v202 = sub_21A451574();
    if (!os_log_type_enabled(v162, v202))
    {
      goto LABEL_114;
    }

    v203 = swift_slowAlloc();
    *v203 = 0;
    v204 = "Failed at parsing status";
    goto LABEL_142;
  }

  v181 = *(*(v178 + 56) + 8 * v179);
  swift_unknownObjectRetain();

  v255 = v181;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_146;
  }

  v240 = v253;
  v242 = v254;
  v182 = [v252 values];
  v183 = sub_21A450F64();

  if (!*(v183 + 16) || (v184 = sub_21A3DCA2C(0x635F746567726174, 0xEF61697265746972), (v185 & 1) == 0))
  {

LABEL_152:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v206 = sub_21A450F24();
    __swift_project_value_buffer(v206, qword_27CD28C90);
    v162 = sub_21A450F04();
    v202 = sub_21A451574();
    if (!os_log_type_enabled(v162, v202))
    {
      goto LABEL_114;
    }

    v203 = swift_slowAlloc();
    *v203 = 0;
    v204 = "Failed at reading target_criteria_str from CK record.";
    goto LABEL_142;
  }

  v186 = *(*(v183 + 56) + 8 * v184);
  swift_unknownObjectRetain();

  v255 = v186;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_152;
  }

  v234 = v253;
  v235 = v254;
  v187 = [v252 values];
  v188 = sub_21A450F64();

  if (!*(v188 + 16) || (v189 = sub_21A3DCA2C(0x64695F6B736174, 0xE700000000000000), (v190 & 1) == 0))
  {

LABEL_158:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v207 = sub_21A450F24();
    __swift_project_value_buffer(v207, qword_27CD28C90);
    v162 = sub_21A450F04();
    v202 = sub_21A451574();
    if (!os_log_type_enabled(v162, v202))
    {
      goto LABEL_114;
    }

    v203 = swift_slowAlloc();
    *v203 = 0;
    v204 = "Failed at parsing task_id";
LABEL_142:
    _os_log_impl(&dword_21A3C2000, v162, v202, v204, v203, 2u);
    MEMORY[0x21CEDB220](v203, -1, -1);
LABEL_114:

    v165 = v251;
    v166 = *(v250 + 8);
    v166(v245, v251);
    v166(v246, v165);

    v17 = v248;
    a2 = v249;
    v16 = v247;
    goto LABEL_24;
  }

  v191 = *(*(v188 + 56) + 8 * v189);
  swift_unknownObjectRetain();

  v255 = v191;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_158;
  }

  v192 = v253;
  v193 = v254;
  v194 = [v252 values];
  v195 = sub_21A450F64();

  if (*(v195 + 16) && (v196 = sub_21A3DCA2C(0xD000000000000015, 0x800000021A45B9A0), (v197 & 1) != 0))
  {
    v198 = *(*(v195 + 56) + 8 * v196);
    swift_unknownObjectRetain();

    v255 = v198;
    if (swift_dynamicCast())
    {
      v199 = v254;
      v200 = &v241[v247[20]];
      *v200 = v253;
      *(v200 + 1) = v199;
      goto LABEL_169;
    }
  }

  else
  {
  }

  v208 = &v241[v247[20]];
  *v208 = v244;
  v208[1] = v131;
  v209 = qword_27CD28170;

  if (v209 != -1)
  {
    swift_once();
  }

  v210 = sub_21A450F24();
  __swift_project_value_buffer(v210, qword_27CD28C90);
  v211 = sub_21A450F04();
  v212 = sub_21A451574();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    *v213 = 0;
    _os_log_impl(&dword_21A3C2000, v211, v212, "privacy_budget_prefix not set in the CK record, it is default to plugin bundle id", v213, 2u);
    MEMORY[0x21CEDB220](v213, -1, -1);
  }

LABEL_169:
  v214 = [v252 values];
  v215 = sub_21A450F64();

  if (!*(v215 + 16) || (v216 = sub_21A3DCA2C(0x7364656573, 0xE500000000000000), (v217 & 1) == 0))
  {

    goto LABEL_174;
  }

  v218 = *(*(v215 + 56) + 8 * v216);
  swift_unknownObjectRetain();

  v253 = v218;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D80, &unk_21A459298);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_174:

    v219 = MEMORY[0x277D84F90];
    goto LABEL_175;
  }

  v219 = v255;

LABEL_175:
  v220 = v241;
  v221 = v251;
  v222 = v238;
  v238(v241, v246, v251);
  v223 = v247;
  v222(v220 + v247[5], v245, v221);
  *(v220 + v223[6]) = v237;
  *(v220 + v223[8]) = v236;
  v224 = (v220 + v223[11]);
  v225 = v243;
  *v224 = v244;
  v224[1] = v131;
  v226 = (v220 + v223[13]);
  *v226 = v155;
  v226[1] = v225;
  *(v220 + v223[15]) = v176;
  v227 = (v220 + v223[16]);
  v228 = v242;
  *v227 = v240;
  v227[1] = v228;
  v229 = (v220 + v223[17]);
  v230 = v235;
  *v229 = v234;
  v229[1] = v230;
  v231 = (v220 + v223[18]);
  *v231 = v192;
  v231[1] = v193;
  *(v220 + v223[19]) = v219;
  v232 = v249;
  sub_21A41310C(v220, v249);
  (*(v248 + 56))(v232, 0, 1, v223);
  return sub_21A4471C4(v220);
}

uint64_t sub_21A446940@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A450BE4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CKPayloadRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21A4515C4() == *aPayload && v14 == unk_27CD28D38)
  {
  }

  else
  {
    v16 = sub_21A4519B4();

    if ((v16 & 1) == 0)
    {
      if (qword_27CD28170 != -1)
      {
        swift_once();
      }

      v17 = sub_21A450F24();
      __swift_project_value_buffer(v17, qword_27CD28C90);
      a1 = a1;
      v18 = sub_21A450F04();
      v19 = sub_21A451574();

      if (!os_log_type_enabled(v18, v19))
      {

        goto LABEL_30;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62 = v21;
      *v20 = 136315138;
      v22 = sub_21A4515C4();
      v24 = sub_21A3E2554(v22, v23, &v62);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_21A3C2000, v18, v19, "Invalid recordType: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x21CEDB220](v21, -1, -1);
      MEMORY[0x21CEDB220](v20, -1, -1);

LABEL_29:
LABEL_30:
      v46 = 1;
      return (*(v10 + 56))(a2, v46, 1, v9);
    }
  }

  v61 = v5;
  v25 = [a1 values];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D70, &qword_21A459288);
  v26 = sub_21A450F64();

  if (!*(v26 + 16) || (v27 = sub_21A3DCA2C(0x695F6E6967756C70, 0xE900000000000064), (v28 & 1) == 0))
  {

    goto LABEL_23;
  }

  v29 = *(*(v26 + 56) + 8 * v27);
  swift_unknownObjectRetain();

  v64 = v29;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v47 = sub_21A450F24();
    __swift_project_value_buffer(v47, qword_27CD28C90);
    v48 = sub_21A450F04();
    v49 = sub_21A451574();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_28;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Failed at parsing plugin_id";
LABEL_27:
    _os_log_impl(&dword_21A3C2000, v48, v49, v51, v50, 2u);
    MEMORY[0x21CEDB220](v50, -1, -1);
LABEL_28:

    goto LABEL_29;
  }

  v59 = v62;
  v60 = v63;
  v30 = [a1 values];
  v31 = sub_21A450F64();

  if (!*(v31 + 16) || (v32 = sub_21A3DCA2C(0x657069636572, 0xE600000000000000), (v33 & 1) == 0))
  {

    goto LABEL_34;
  }

  v34 = *(*(v31 + 56) + 8 * v32);
  swift_unknownObjectRetain();

  v64 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v53 = sub_21A450F24();
    __swift_project_value_buffer(v53, qword_27CD28C90);
    v48 = sub_21A450F04();
    v49 = sub_21A451574();
    if (!os_log_type_enabled(v48, v49))
    {
      goto LABEL_28;
    }

    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = "Failed at parsing recipe";
    goto LABEL_27;
  }

  v35 = v62;
  v58 = v63;
  v36 = [a1 values];
  v37 = sub_21A450F64();

  if (!*(v37 + 16) || (v38 = sub_21A3DCA2C(0x656D686361747461, 0xEA0000000000746ELL), (v39 & 1) == 0))
  {

LABEL_39:

LABEL_40:
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v54 = sub_21A450F24();
    __swift_project_value_buffer(v54, qword_27CD28C90);
    v48 = sub_21A450F04();
    v55 = sub_21A451574();
    if (os_log_type_enabled(v48, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_21A3C2000, v48, v55, "Failed at parsing attachment", v56, 2u);
      MEMORY[0x21CEDB220](v56, -1, -1);
    }

    sub_21A3E759C(v35, v58);
    goto LABEL_28;
  }

  v40 = *(*(v37 + 56) + 8 * v38);
  swift_unknownObjectRetain();

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {

    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  v42 = [v41 fileURL];
  if (!v42)
  {
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v43 = v42;
  sub_21A450B74();
  swift_unknownObjectRelease();

  v44 = v60;
  *v13 = v59;
  v13[1] = v44;
  v45 = v58;
  v13[2] = v35;
  v13[3] = v45;
  (*(v61 + 32))(v13 + *(v9 + 24), v8, v4);
  sub_21A4470F8(v13, a2);
  v46 = 0;
  return (*(v10 + 56))(a2, v46, 1, v9);
}

uint64_t sub_21A4470F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKPayloadRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A44715C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A4471C4(uint64_t a1)
{
  v2 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A447248()
{
  result = sub_21A450BE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

PrivateFederatedLearning::DediscoError_optional __swiftcall DediscoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 0x80;
  if ((rawValue - 9600) >= 0x12)
  {
    v2 = 18;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_21A4472FC()
{
  result = qword_27CD28D98;
  if (!qword_27CD28D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28D98);
  }

  return result;
}

uint64_t sub_21A447350()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9600);
  return sub_21A451B24();
}

uint64_t sub_21A4473D0()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9600);
  return sub_21A451B24();
}

unint64_t sub_21A447434(uint64_t a1)
{
  result = sub_21A3D3C88();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A44745C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A447604();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for DediscoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DediscoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A447604()
{
  result = qword_27CD28DA0;
  if (!qword_27CD28DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DA0);
  }

  return result;
}

uint64_t sub_21A44767C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_21A413278(a3, 0);
  v4 = sub_21A3DAD38(v3);

  return v4;
}

uint64_t sub_21A4476CC(unint64_t a1, float a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21A455E00;
  *(inited + 32) = a2;
  sub_21A4477F8(inited, a1);
  v6 = v5;
  swift_setDeallocating();
  return v6;
}

uint64_t sub_21A447758(uint64_t a1, uint64_t a2)
{
  v2 = sub_21A413278(a2, 0);
  v3 = sub_21A3DAD38(v2);

  return v3;
}

uint64_t sub_21A4477AC(uint64_t a1)
{
  v1 = sub_21A413278(a1, 0);
  v2 = sub_21A3DAD38(v1);

  return v2;
}

void sub_21A4477F8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = sub_21A451344();
      *(v4 + 16) = a2;
      bzero((v4 + 32), 4 * a2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = *(a1 + 16);
    if (v5 >= a2)
    {
      v5 = a2;
    }

    if (!v5)
    {
      goto LABEL_16;
    }

    if (v5 <= *(v4 + 16))
    {
      v6 = 0;
      if (v5 < 8)
      {
        goto LABEL_14;
      }

      if ((v4 - a1) < 0x20)
      {
        goto LABEL_14;
      }

      v6 = v5 & 0x7FFFFFFFFFFFFFF8;
      v7 = (a1 + 48);
      v8 = (v4 + 48);
      v9 = v5 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v10 = *v7;
        *(v8 - 1) = *(v7 - 1);
        *v8 = v10;
        v7 += 2;
        v8 += 2;
        v9 -= 8;
      }

      while (v9);
      if (v5 != v6)
      {
LABEL_14:
        v11 = v5 - v6;
        v12 = 4 * v6 + 32;
        v13 = (v4 + v12);
        v14 = (a1 + v12);
        do
        {
          v15 = *v14++;
          *v13++ = v15;
          --v11;
        }

        while (v11);
      }

LABEL_16:
      sub_21A3DAD38(v4);

      return;
    }
  }

  __break(1u);
}

uint64_t Dictionary<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_21A4515F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v52 = a1;
  v53 = a2;
  v50 = 46;
  v51 = 0xE100000000000000;
  sub_21A3ED2CC();
  v19 = sub_21A451644();
  v20 = v19[2];
  if (!v20)
  {

    goto LABEL_6;
  }

  v47 = v13;
  v48 = v9;
  v21 = v20 - 1;
  if (v20 == 1)
  {
    v22 = v19[4];
    v23 = v19[5];

    v52 = v22;
    v53 = v23;
    sub_21A450FA4();

    v24 = *(a3 - 8);
    if ((*(v24 + 48))(v18, 1, a3) != 1)
    {
      *(a4 + 24) = a3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      return (*(v24 + 32))(boxed_opaque_existential_1, v18, a3);
    }

    result = (*(v48 + 8))(v18, v8);
LABEL_6:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v43 = v19 + 2;
  v44 = v8;
  v45 = a4;
  v49 = a3 - 8;
  v26 = v19;

  v46 = v26;
  v27 = v26 + 5;
  do
  {
    if (!v21)
    {
      __break(1u);
      goto LABEL_23;
    }

    v28 = *v27;
    v52 = *(v27 - 1);
    v53 = v28;

    sub_21A450FA4();

    v29 = *(a3 - 8);
    v30 = *(v29 + 48);
    if (v30(v16, 1, a3) == 1)
    {
      swift_unknownObjectRelease();

      result = (*(v48 + 8))(v16, v44);
      goto LABEL_19;
    }

    sub_21A450F94();
    result = swift_dynamicCast();
    if (!result)
    {
      swift_unknownObjectRelease();

      goto LABEL_19;
    }

    v27 += 2;
    --v21;
  }

  while (v21);
  v31 = v46;
  result = swift_unknownObjectRelease();
  v32 = v31[2];
  v33 = v44;
  if (!v32)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v34 = &v43[2 * v32];
  v35 = *v34;
  v36 = v34[1];

  v52 = v35;
  v53 = v36;
  v37 = v47;
  sub_21A450FA4();

  if (v30(v37, 1, a3) == 1)
  {
    result = (*(v48 + 8))(v37, v33);
LABEL_19:
    v39 = v45;
    *v45 = 0u;
    *(v39 + 1) = 0u;
    return result;
  }

  v40 = v45;
  v45[3] = a3;
  v41 = __swift_allocate_boxed_opaque_existential_1(v40);
  return (*(v29 + 32))(v41, v37, a3);
}

unint64_t sub_21A447D80(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_21A447DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v37[0] = a1;
  *(&v37[0] + 1) = a2;
  v38 = 46;
  v39 = 0xE100000000000000;
  sub_21A3ED2CC();
  v6 = sub_21A451644();
  v8 = v6 + 2;
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_25;
  }

  if (v7 == 1)
  {
    v9 = v6[4];
    v10 = v6[5];

    if (*(a3 + 16))
    {
      v11 = sub_21A3DCA2C(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_21A3D3B94(*(a3 + 56) + 32 * v11, v37);
LABEL_11:
        *(a4 + 24) = MEMORY[0x277D84F70] + 8;
        v28 = swift_allocObject();
        *a4 = v28;
        return sub_21A3D3B38(v37, (v28 + 16));
      }

      goto LABEL_26;
    }

LABEL_25:

LABEL_26:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  sub_21A447D80(1uLL, v6);
  v16 = v15;
  v18 = v17;
  v20 = v19 >> 1;

  v21 = v20 - v18;
  if (v20 == v18)
  {
LABEL_7:
    result = swift_unknownObjectRelease();
    if (*v8)
    {
      v22 = &v8[2 * *v8];
      v23 = *v22;
      v24 = v22[1];

      if (*(a3 + 16))
      {
        v25 = sub_21A3DCA2C(v23, v24);
        v27 = v26;

        if (v27)
        {
          sub_21A3D3B94(*(a3 + 56) + 32 * v25, v37);

          goto LABEL_11;
        }
      }

      else
      {
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (v18 <= v20)
    {
      v29 = v20;
    }

    else
    {
      v29 = v18;
    }

    v30 = v29 - v18;
    v31 = (v16 + 16 * v18 + 8);
    while (v30)
    {
      if (!*(a3 + 16) || (v32 = *(v31 - 1), v33 = *v31, , v34 = sub_21A3DCA2C(v32, v33), v36 = v35, , (v36 & 1) == 0))
      {

        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      sub_21A3D3B94(*(a3 + 56) + 32 * v34, v37);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {

        result = swift_unknownObjectRelease();
        goto LABEL_26;
      }

      a3 = v38;
      --v30;
      v31 += 2;
      if (!--v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_21A4480BC(void *result, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v25 = result;
    v26 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      sub_21A3D3B94(*(a4 + 56) + 32 * v16, &v28);
      *&v27 = v19;
      *(&v27 + 1) = v20;
      v22 = v28;
      v21 = v29;
      v31 = v28;
      v32 = v29;
      v30 = v27;
      *v9 = v27;
      v9[1] = v22;
      v9[2] = v21;
      if (v12 == v8)
      {

        v5 = v26;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 3;

      result = v12;
      v23 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v24 = v10 + 1;
    }

    else
    {
      v24 = v11;
    }

    v10 = v24 - 1;
    v8 = result;
    v5 = v26;
LABEL_23:
    result = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21A44825C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_21A4497A4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_21A448388(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_21A451B04();

    sub_21A451144();
    v24 = sub_21A451B24();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_21A449B18(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_21A451B04();

            sub_21A451144();
            v43 = sub_21A451B24();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_21A4519B4() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_21A4498E0(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x21CEDB220](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_21A3C5104();
    goto LABEL_53;
  }

  result = MEMORY[0x21CEDB220](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_21A4488F8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21A3F6A50(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21A448964(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21A448964(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21A451964();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28590, &qword_21A4564A0);
        v5 = sub_21A451344();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21A448BD4(v7, v8, a1, v4);
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
    return sub_21A448A6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21A448A6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
LABEL_6:
    v20 = a3;
    v7 = v6;
    v8 = v5;
    while (1)
    {
      sub_21A3E7060(v8, v19, &qword_27CD28590, &qword_21A4564A0);
      v9 = v8 - 3;
      sub_21A3E7060((v8 - 3), v18, &qword_27CD28590, &qword_21A4564A0);
      if (v19[0] == v18[0] && v19[1] == v18[1])
      {
        sub_21A3D3BF0(v18, &qword_27CD28590, &qword_21A4564A0);
        result = sub_21A3D3BF0(v19, &qword_27CD28590, &qword_21A4564A0);
LABEL_5:
        a3 = v20 + 1;
        v5 += 48;
        --v6;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = sub_21A4519B4();
      sub_21A3D3BF0(v18, &qword_27CD28590, &qword_21A4564A0);
      result = sub_21A3D3BF0(v19, &qword_27CD28590, &qword_21A4564A0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = v8[1];
      v12 = v8[2];
      v14 = *v8;
      v15 = *(v8 - 2);
      *v8 = *v9;
      v8[1] = v15;
      v8[2] = *(v8 - 1);
      *v9 = v14;
      *(v8 - 2) = v13;
      v8 -= 3;
      v9[2] = v12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21A448BD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_103:
    v10 = v6;
    v6 = *v102;
    if (!*v102)
    {
      goto LABEL_144;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_106:
      v116 = result;
      v94 = *(result + 16);
      if (v94 >= 2)
      {
        v4 = 48;
        while (*a3)
        {
          v95 = *(result + 16 * v94);
          v96 = result;
          v97 = *(result + 16 * (v94 - 1) + 40);
          sub_21A44938C((*a3 + 48 * v95), (*a3 + 48 * *(result + 16 * (v94 - 1) + 32)), (*a3 + 48 * v97), v6);
          if (v10)
          {
          }

          if (v97 < v95)
          {
            goto LABEL_131;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_21A449790(v96);
          }

          if (v94 - 2 >= *(v96 + 2))
          {
            goto LABEL_132;
          }

          v98 = &v96[16 * v94];
          *v98 = v95;
          *(v98 + 1) = v97;
          v116 = v96;
          sub_21A449704(v94 - 1);
          result = v116;
          v94 = *(v116 + 16);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_142;
      }
    }

LABEL_138:
    result = sub_21A449790(v4);
    goto LABEL_106;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &qword_21A4564A0;
  while (1)
  {
    v11 = v8++;
    v106 = v9;
    if (v8 < v7)
    {
      v12 = v7;
      v13 = v8;
      v14 = *a3;
      v15 = v13;
      sub_21A3E7060(*a3 + 48 * v13, &v114, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3E7060(v14 + 48 * v11, &v112, &qword_27CD28590, &qword_21A4564A0);
      v109 = v6;
      if (v114 == v112 && v115 == v113)
      {
        v104 = 0;
      }

      else
      {
        v104 = sub_21A4519B4();
      }

      sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
      result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
      v16 = (v11 + 2);
      v100 = v11;
      v4 = 48 * v11;
      v17 = v14 + 48 * v11 + 96;
      v18 = v4 + 48;
      v19 = v15;
      v20 = v12;
      do
      {
        v6 = v16;
        v22 = v19;
        v23 = v18;
        if (v16 >= v20)
        {
          break;
        }

        sub_21A3E7060(v17, &v114, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3E7060(v17 - 48, &v112, &qword_27CD28590, &qword_21A4564A0);
        v24 = v114 == v112 && v115 == v113;
        v21 = v24 ? 0 : sub_21A4519B4();
        sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
        result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
        v16 = v6 + 1;
        v17 += 48;
        v19 = (v22 + 1);
        v18 = v23 + 48;
      }

      while (((v104 ^ v21) & 1) == 0);
      if (v104)
      {
        v11 = v100;
        if (v6 < v100)
        {
          goto LABEL_135;
        }

        if (v100 < v6)
        {
          v25 = v100;
          do
          {
            if (v25 != v22)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v28 = (v27 + v4);
              v29 = (v27 + v23);
              v30 = *v28;
              v31 = v28[1];
              v32 = v28[2];
              v34 = v29[1];
              v33 = v29[2];
              *v28 = *v29;
              v28[1] = v34;
              v28[2] = v33;
              v29[1] = v31;
              v29[2] = v32;
              *v29 = v30;
            }

            ++v25;
            v23 -= 48;
            v4 += 48;
          }

          while (v25 < v22--);
        }

        v8 = v6;
        v6 = v109;
      }

      else
      {
        v8 = v6;
        v6 = v109;
        v11 = v100;
      }
    }

    v35 = a3[1];
    if (v8 < v35)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_134;
      }

      if (v8 - v11 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v8 < v11)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v111 = v6;
    if (result)
    {
      v9 = v106;
    }

    else
    {
      result = sub_21A4089A0(0, v106[2] + 1, 1, v106);
      v9 = result;
    }

    v4 = v9[2];
    v49 = v9[3];
    v50 = v4 + 1;
    if (v4 >= v49 >> 1)
    {
      result = sub_21A4089A0((v49 > 1), v4 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v50;
    v51 = &v9[2 * v4];
    v51[4] = v11;
    v51[5] = v8;
    v107 = *v102;
    if (!*v102)
    {
      goto LABEL_143;
    }

    if (v4)
    {
      while (1)
      {
        v52 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = v9[4];
          v54 = v9[5];
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_71:
          if (v56)
          {
            goto LABEL_122;
          }

          v69 = &v9[2 * v50];
          v71 = *v69;
          v70 = v69[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_125;
          }

          v75 = &v9[2 * v52 + 4];
          v77 = *v75;
          v76 = v75[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_129;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v50 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v79 = &v9[2 * v50];
        v81 = *v79;
        v80 = v79[1];
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_85:
        if (v74)
        {
          goto LABEL_124;
        }

        v82 = &v9[2 * v52];
        v84 = v82[4];
        v83 = v82[5];
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_127;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v52 - 1;
        if (v52 - 1 >= v50)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v6 = v8;
        v90 = v9;
        v91 = v9[2 * v4 + 4];
        v92 = v9[2 * v52 + 5];
        sub_21A44938C((*a3 + 48 * v91), (*a3 + 48 * v9[2 * v52 + 4]), (*a3 + 48 * v92), v107);
        if (v111)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_21A449790(v90);
        }

        if (v4 >= *(v90 + 2))
        {
          goto LABEL_119;
        }

        v111 = 0;
        v93 = &v90[16 * v4];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v116 = v90;
        result = sub_21A449704(v52);
        v9 = v116;
        v50 = *(v116 + 16);
        v8 = v6;
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[2 * v50 + 4];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_120;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_121;
      }

      v64 = &v9[2 * v50];
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_123;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_126;
      }

      if (v68 >= v60)
      {
        v86 = &v9[2 * v52 + 4];
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_130;
        }

        if (v55 < v89)
        {
          v52 = v50 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = v111;
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_103;
    }
  }

  v36 = (v11 + a4);
  if (__OFADD__(v11, a4))
  {
    goto LABEL_136;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v11)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v36)
  {
    goto LABEL_51;
  }

  v110 = v6;
  v37 = *a3;
  v38 = *a3 + 48 * v8;
  v103 = v36;
  v105 = v8;
  v101 = v11;
  v39 = v11 - v8;
LABEL_40:
  v4 = v39;
  v40 = v38;
  while (1)
  {
    sub_21A3E7060(v40, &v114, &qword_27CD28590, &qword_21A4564A0);
    v41 = v40 - 3;
    sub_21A3E7060((v40 - 3), &v112, &qword_27CD28590, &qword_21A4564A0);
    if (v114 == v112 && v115 == v113)
    {
      sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
LABEL_39:
      v38 += 48;
      --v39;
      if (++v105 == v103)
      {
        v8 = v103;
        v6 = v110;
        v11 = v101;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v43 = sub_21A4519B4();
    sub_21A3D3BF0(&v112, &qword_27CD28590, &qword_21A4564A0);
    result = sub_21A3D3BF0(&v114, &qword_27CD28590, &qword_21A4564A0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v37)
    {
      break;
    }

    v45 = v40[1];
    v44 = v40[2];
    v46 = *v40;
    v47 = *(v40 - 2);
    *v40 = *v41;
    v40[1] = v47;
    v40[2] = *(v40 - 1);
    *v41 = v46;
    *(v40 - 2) = v45;
    v40 -= 3;
    v41[2] = v44;
    if (__CFADD__(v4++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_21A44938C(char *__dst, char *__src, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 48;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 48;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[48 * v12] <= a4)
    {
      memmove(a4, __src, 48 * v12);
    }

    v13 = &v5[48 * v12];
    if (v11 < 48 || v7 <= v8)
    {
      v19 = v7;
    }

    else
    {
      v20 = v13;
      v36 = v4;
      do
      {
        v19 = v7 - 48;
        v21 = (v20 - 3);
        v6 -= 48;
        while (1)
        {
          sub_21A3E7060(v21, &v34, &qword_27CD28590, &qword_21A4564A0);
          sub_21A3E7060((v7 - 48), &v32, &qword_27CD28590, &qword_21A4564A0);
          v24 = v34 == v32 && v35 == v33;
          v25 = v24 ? 0 : sub_21A4519B4();
          sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
          sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
          if (v25)
          {
            break;
          }

          if (v6 + 48 != v21 + 48)
          {
            v26 = *v21;
            v27 = *(v21 + 2);
            *(v6 + 1) = *(v21 + 1);
            *(v6 + 2) = v27;
            *v6 = v26;
          }

          v22 = v21 - 48;
          v6 -= 48;
          v23 = v21 > v5;
          v21 -= 48;
          if (!v23)
          {
            v13 = v22 + 48;
            v19 = v7;
            goto LABEL_45;
          }
        }

        if (v6 + 48 != v7)
        {
          v28 = *v19;
          v29 = *(v7 - 1);
          *(v6 + 1) = *(v7 - 2);
          *(v6 + 2) = v29;
          *v6 = v28;
        }

        if (v21 + 48 <= v5)
        {
          break;
        }

        v20 = v21 + 48;
        v7 -= 48;
      }

      while (v19 > v8);
      v13 = v21 + 48;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[48 * v10] <= a4)
    {
      memmove(a4, __dst, 48 * v10);
    }

    v13 = &v5[48 * v10];
    if (v9 >= 48 && v7 < v6)
    {
      while (1)
      {
        sub_21A3E7060(v7, &v34, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3E7060(v5, &v32, &qword_27CD28590, &qword_21A4564A0);
        v14 = v34 == v32 && v35 == v33;
        if (v14)
        {
          break;
        }

        v15 = sub_21A4519B4();
        sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
        sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
        if ((v15 & 1) == 0)
        {
          goto LABEL_16;
        }

        v16 = v7;
        v14 = v8 == v7;
        v7 += 48;
        if (!v14)
        {
          goto LABEL_17;
        }

LABEL_18:
        v8 += 48;
        if (v5 >= v13 || v7 >= v6)
        {
          goto LABEL_20;
        }
      }

      sub_21A3D3BF0(&v32, &qword_27CD28590, &qword_21A4564A0);
      sub_21A3D3BF0(&v34, &qword_27CD28590, &qword_21A4564A0);
LABEL_16:
      v16 = v5;
      v14 = v8 == v5;
      v5 += 48;
      if (v14)
      {
        goto LABEL_18;
      }

LABEL_17:
      v17 = *v16;
      v18 = *(v16 + 2);
      *(v8 + 1) = *(v16 + 1);
      *(v8 + 2) = v18;
      *v8 = v17;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v8;
  }

LABEL_45:
  v30 = (v13 - v5) / 48;
  if (v19 != v5 || v19 >= &v5[48 * v30])
  {
    memmove(v19, v5, 48 * v30);
  }

  return 1;
}

uint64_t sub_21A449704(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21A449790(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21A4497A4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21A451B04();
  sub_21A451144();
  v7 = sub_21A451B24();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_21A3D8BA4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_21A449D3C(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_21A4498E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_21A449B18(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_21A451B04();

        sub_21A451144();
        v20 = sub_21A451B24();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_21A4519B4() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t sub_21A449B18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
  result = sub_21A451704();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_21A451B04();

    sub_21A451144();
    result = sub_21A451B24();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21A449D3C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_21A4516C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_21A451B04();

        sub_21A451144();
        v15 = sub_21A451B24();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_21A449F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v120 = xmmword_21A458F20;
  v121 = xmmword_21A458F20;
  if (!*(a1 + 16))
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v8 = sub_21A3DCA2C(0xD000000000000010, 0x800000021A45D0A0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a2 + 56) + 32 * v8, &v117);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v10 = v114;

  v12 = sub_21A3D5FE8(v11);

  v14 = sub_21A3D5FE8(v13);
  if (*(v14 + 16) <= *(v12 + 16) >> 3)
  {
    *&v117 = v12;
    sub_21A44825C(v14);

    v15 = v117;
  }

  else
  {
    v15 = sub_21A448388(v14, v12);
  }

  v17 = &off_21A455000;
  v102 = a3;
  v105 = a1;
  if (*(v15 + 16))
  {
    if (qword_27CD28170 != -1)
    {
LABEL_97:
      swift_once();
    }

    v18 = sub_21A450F24();
    __swift_project_value_buffer(v18, qword_27CD28C90);

    v19 = sub_21A450F04();
    v20 = sub_21A451584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v117 = v22;
      *v21 = *(v17 + 451);
      v23 = sub_21A4514C4();
      v25 = sub_21A3E2554(v23, v24, &v117);
      a3 = v102;

      *(v21 + 4) = v25;
      v17 = &off_21A455000;
      _os_log_impl(&dword_21A3C2000, v19, v20, "Those keys are provided in your PFL result, but not in Dedisco metadata schema. %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x21CEDB220](v22, -1, -1);
      MEMORY[0x21CEDB220](v21, -1, -1);
    }
  }

  v27 = sub_21A3D5FE8(v26);

  v29 = sub_21A3D5FE8(v28);
  if (*(v29 + 16) <= *(v27 + 16) >> 3)
  {
    *&v117 = v27;
    sub_21A44825C(v29);

    v30 = v117;
  }

  else
  {
    v30 = sub_21A448388(v29, v27);
  }

  if (*(v30 + 16))
  {
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v31 = sub_21A450F24();
    __swift_project_value_buffer(v31, qword_27CD28C90);

    v32 = sub_21A450F04();
    v33 = sub_21A451584();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v117 = v103;
      *v34 = *(v17 + 451);
      v35 = sub_21A4514C4();
      v37 = sub_21A3E2554(v35, v36, &v117);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_21A3C2000, v32, v33, "Those keys are needed per Dedisco metadata schema, but not in your PFL result. %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x21CEDB220](v103, -1, -1);
      v38 = v34;
      a3 = v102;
      MEMORY[0x21CEDB220](v38, -1, -1);
    }
  }

  v39 = v10[2];
  v40 = MEMORY[0x277D84F90];
  if (v39)
  {
    v40 = sub_21A44FC20(v39, 0);
    v41 = sub_21A4480BC(&v117, v40 + 2, v39, v10);
    v17 = v118;
    v42 = v119;

    sub_21A3C5104();
    if (v41 != v39)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      swift_once();
LABEL_91:
      v92 = sub_21A450F24();
      __swift_project_value_buffer(v92, qword_27CD28C90);

      v93 = sub_21A450F04();
      v94 = sub_21A451584();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v114 = v96;
        *v95 = v100;
        v97 = sub_21A3E2554(v42, v17, &v114);

        *(v95 + 4) = v97;
        _os_log_impl(&dword_21A3C2000, v93, v94, "Metadata schema for %s is not type of [String: Any]", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x21CEDB220](v96, -1, -1);
        MEMORY[0x21CEDB220](v95, -1, -1);
      }

      else
      {
      }

      sub_21A3D3C88();
      swift_allocError();
      *v98 = 2;
      swift_willThrow();
      sub_21A3E759C(v120, *(&v120 + 1));
      return sub_21A3E759C(v121, *(&v121 + 1));
    }

    a3 = v102;
    v17 = &off_21A455000;
  }

  *&v117 = v40;
  sub_21A4488F8(&v117);
  if (!v4)
  {

    v43 = 0;
    v101 = v117 + 32;
    v104 = v117;
    v44 = *(v117 + 16);
    v100 = *(v17 + 451);
    v45 = v105;
    for (i = v44; ; v44 = i)
    {
      if (v43 == v44)
      {
        v115 = 0u;
        v116 = 0u;
        v46 = v44;
        v114 = 0u;
      }

      else
      {
        if ((v43 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        if (v43 >= *(v104 + 16))
        {
          goto LABEL_96;
        }

        sub_21A3E7060(v101 + 48 * v43, &v114, &qword_27CD28590, &qword_21A4564A0);
        v46 = v43 + 1;
      }

      v117 = v114;
      v118 = v115;
      v119 = v116;
      v17 = *(&v114 + 1);
      if (!*(&v114 + 1))
      {

        return v120;
      }

      v42 = v117;
      sub_21A3D3B38(&v118, &v114);
      if (!swift_dynamicCast())
      {

        if (qword_27CD28170 != -1)
        {
          goto LABEL_102;
        }

        goto LABEL_91;
      }

      v107 = v46;
      v47 = v113[0];
      type metadata accessor for DediscoMetadataSchema();
      swift_allocObject();

      v48 = sub_21A44C580(v47, a3);
      sub_21A447DC4(v42, v17, v45, v113);
      v10 = &unk_21A455FB0;
      sub_21A3E7060(v113, v111, &qword_27CD28468, &unk_21A455FB0);
      if (!v112)
      {
        goto LABEL_59;
      }

      sub_21A3E7060(v111, v110, &qword_27CD28468, &unk_21A455FB0);
      if (swift_dynamicCast())
      {

        sub_21A3F939C(v48 + 48, &v114);
        v49 = *(&v115 + 1);
        v50 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        v51 = (*(v50 + 8))(v108, v109, *(v48 + 24), v49, v50);
      }

      else
      {
        sub_21A3D3CDC();
        if (swift_dynamicCast())
        {

          sub_21A3F939C(v48 + 48, &v114);
          v53 = *(&v115 + 1);
          v54 = v116;
          __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
          [v108 floatValue];
          v17 = (*(v54 + 16))(*(v48 + 24), v53, v54);
          v42 = v55;

          goto LABEL_43;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
        if (!swift_dynamicCast())
        {
          if (swift_dynamicCast())
          {

            sub_21A3F939C(v48 + 48, &v114);
            v58 = *(&v115 + 1);
            v10 = v116;
            __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
            v59 = MEMORY[0x277D84F90];
            if (v108 >> 62)
            {
              v60 = sub_21A451844();
              if (!v60)
              {
                goto LABEL_87;
              }

LABEL_49:
              sub_21A3E48BC(0, v60 & ~(v60 >> 63), 0);
              if (v60 < 0)
              {
                __break(1u);
                break;
              }

              for (j = 0; j != v60; ++j)
              {
                if ((v108 & 0xC000000000000001) != 0)
                {
                  v62 = MEMORY[0x21CED9EA0](j);
                }

                else
                {
                  v62 = *(v108 + 8 * j + 32);
                }

                v63 = v62;
                [v62 floatValue];
                v65 = v64;

                v67 = *(v59 + 16);
                v66 = *(v59 + 24);
                if (v67 >= v66 >> 1)
                {
                  sub_21A3E48BC((v66 > 1), v67 + 1, 1);
                }

                *(v59 + 16) = v67 + 1;
                *(v59 + 4 * v67 + 32) = v65;
              }

              v4 = 0;
              a3 = v102;
            }

            else
            {
              v60 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v60)
              {
                goto LABEL_49;
              }

LABEL_87:
            }

            v17 = (v10[4])(v59, *(v48 + 24), v58, v10);
            v42 = v91;

            __swift_destroy_boxed_opaque_existential_0(&v114);
            v78 = v110;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v110);
LABEL_59:
            if (qword_27CD28170 != -1)
            {
              swift_once();
            }

            v68 = sub_21A450F24();
            __swift_project_value_buffer(v68, qword_27CD28C90);

            v69 = sub_21A450F04();
            v70 = sub_21A451584();

            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              *&v114 = v72;
              *v71 = v100;
              v73 = sub_21A3E2554(v42, v17, &v114);

              *(v71 + 4) = v73;
              _os_log_impl(&dword_21A3C2000, v69, v70, "Dedisco metadata schema for %s is provided, but value is not found in your PFL result, or it can't be converted to String, NSNumber, [String] or [NSNumber]", v71, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v72);
              v74 = v72;
              a3 = v102;
              MEMORY[0x21CEDB220](v74, -1, -1);
              MEMORY[0x21CEDB220](v71, -1, -1);
            }

            else
            {
            }

            sub_21A3F939C(v48 + 48, &v114);
            v75 = *(&v115 + 1);
            v76 = v116;
            __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
            v17 = (*(v76 + 40))(*(v48 + 24), v75, v76);
            v42 = v77;
            v78 = &v114;
          }

          __swift_destroy_boxed_opaque_existential_0(v78);
          v45 = v105;
          goto LABEL_66;
        }

        sub_21A3F939C(v48 + 48, &v114);
        v56 = *(&v115 + 1);
        v57 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, *(&v115 + 1));
        v51 = (*(v57 + 24))(v108, *(v48 + 24), v56, v57);
      }

      v17 = v51;
      v42 = v52;

LABEL_43:
      __swift_destroy_boxed_opaque_existential_0(&v114);
      __swift_destroy_boxed_opaque_existential_0(v110);
LABEL_66:
      sub_21A3D3BF0(v111, &qword_27CD28468, &unk_21A455FB0);
      if (*(v48 + 16) != 1 || *(v48 + 88) != 1)
      {
        sub_21A450C84();
        goto LABEL_29;
      }

      v79 = v42 >> 62;
      if ((v42 >> 62) > 1)
      {
        if (v79 == 2)
        {
          v82 = *(v17 + 2);
          v81 = *(v17 + 3);
          v80 = v81 - v82;
          if (__OFSUB__(v81, v82))
          {
            goto LABEL_99;
          }

          if (v80)
          {
            goto LABEL_76;
          }
        }
      }

      else if (v79)
      {
        v90 = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
          goto LABEL_100;
        }

        v80 = v90;
        if (v90)
        {
LABEL_76:
          if (v80 <= 14)
          {
            if (v80 < 0)
            {
              goto LABEL_101;
            }

            v88 = 0;
            v99 = v99 & 0xF00000000000000 | (v80 << 48);
            v89 = v99;
          }

          else
          {
            v83 = sub_21A450A44();
            v84 = *(v83 + 48);
            v85 = *(v83 + 52);
            swift_allocObject();
            v86 = sub_21A450A04();
            v87 = v86;
            if (v80 >= 0x7FFFFFFF)
            {
              sub_21A450C34();
              v88 = swift_allocObject();
              *(v88 + 16) = 0;
              *(v88 + 24) = v80;
              v89 = v87 | 0x8000000000000000;
            }

            else
            {
              v88 = v80 << 32;
              v89 = v86 | 0x4000000000000000;
            }
          }

          goto LABEL_85;
        }
      }

      else
      {
        v80 = BYTE6(v42);
        if (BYTE6(v42))
        {
          goto LABEL_76;
        }
      }

      v88 = 0;
      v89 = 0xC000000000000000;
LABEL_85:
      sub_21A450C84();
      sub_21A450C84();
      sub_21A3E759C(v88, v89);
      a3 = v102;
      v45 = v105;
LABEL_29:
      sub_21A3E759C(v17, v42);

      sub_21A3D3BF0(v113, &qword_27CD28468, &unk_21A455FB0);
      v43 = v107;
    }
  }

  __break(1u);
  return result;
}

uint64_t E5Library.__allocating_init(modelPath:devices:cachePath:functions:)()
{
  v0 = swift_allocObject();
  E5Library.init(modelPath:devices:cachePath:functions:)();
  return v0;
}

PrivateFederatedLearning::CPUBackend_optional __swiftcall CPUBackend.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21A4518A4();

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

  *v2 = v5;
  return result;
}

uint64_t CPUBackend.rawValue.getter()
{
  if (*v0)
  {
    result = 1936617058;
  }

  else
  {
    result = 0x5F63697373616C63;
  }

  *v0;
  return result;
}

uint64_t sub_21A44AF70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1936617058;
  }

  else
  {
    v4 = 0x5F63697373616C63;
  }

  if (v3)
  {
    v5 = 0xEB00000000757063;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1936617058;
  }

  else
  {
    v6 = 0x5F63697373616C63;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xEB00000000757063;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21A4519B4();
  }

  return v9 & 1;
}

uint64_t sub_21A44B018()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44B09C()
{
  *v0;
  sub_21A451144();
}

uint64_t sub_21A44B10C()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44B18C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21A4518A4();

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

void sub_21A44B1EC(uint64_t *a1@<X8>)
{
  v2 = 1936617058;
  if (!*v1)
  {
    v2 = 0x5F63697373616C63;
  }

  v3 = 0xEB00000000757063;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t E5Library.init(modelPath:devices:cachePath:functions:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = e5rt_e5_compiler_config_options_create();
  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Library();
  swift_deallocPartialClassInstance();
  v4 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t E5Library.__allocating_init(bundlePath:)()
{
  v0 = swift_allocObject();
  E5Library.init(bundlePath:)();
  return v0;
}

uint64_t E5Library.init(bundlePath:)()
{
  v6 = *MEMORY[0x277D85DE8];
  sub_21A4510E4();
  v2 = e5rt_program_library_create();

  sub_21A3DCF54(v2);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
  }

  type metadata accessor for E5Library();
  swift_deallocPartialClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t E5Library.deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_program_library_release();
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t E5Library.__deallocating_deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_program_library_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A44BF20()
{
  v5 = *MEMORY[0x277D85DE8];
  type metadata accessor for E5Function();
  swift_allocObject();
  v1 = e5rt_execution_stream_create();
  sub_21A3DCF54(v1);
  if (!v0)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v4 = 6;
    swift_willThrow();
  }

  result = swift_deallocPartialClassInstance();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21A44C050()
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 16);
  e5_bundle_path = e5rt_program_library_get_e5_bundle_path();
  result = sub_21A3DCF54(e5_bundle_path);
  if (!v1)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v6 = 6;
    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_21A44C138()
{
  result = qword_27CD28DB0;
  if (!qword_27CD28DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24PrivateFederatedLearning17ComputeDeviceTypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21A44C29C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69726F6765746163;
  }

  else
  {
    v4 = 0x636972656D756ELL;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB000000006C6163;
  }

  if (*a2)
  {
    v6 = 0x69726F6765746163;
  }

  else
  {
    v6 = 0x636972656D756ELL;
  }

  if (*a2)
  {
    v7 = 0xEB000000006C6163;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21A4519B4();
  }

  return v9 & 1;
}

uint64_t sub_21A44C34C()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44C3D8()
{
  *v0;
  sub_21A451144();
}

uint64_t sub_21A44C450()
{
  v1 = *v0;
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

uint64_t sub_21A44C4D8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21A4518A4();

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

void sub_21A44C538(uint64_t *a1@<X8>)
{
  v2 = 0x636972656D756ELL;
  if (*v1)
  {
    v2 = 0x69726F6765746163;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C6163;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21A44C580(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v7 = sub_21A3DCA2C(1701869940, 0xE400000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = sub_21A4518A4();

  if (!v9)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if (v9 != 1)
  {
LABEL_7:

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v11 = sub_21A450F24();
    __swift_project_value_buffer(v11, qword_27CD28C90);

    v12 = sub_21A450F04();
    v13 = sub_21A451584();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v49 = v15;
      *v14 = 136315138;
      v16 = sub_21A450F74();
      v18 = v17;

      v19 = sub_21A3E2554(v16, v18, &v49);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21A3C2000, v12, v13, "Invalid metadata type in %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x21CEDB220](v15, -1, -1);
      MEMORY[0x21CEDB220](v14, -1, -1);
    }

    else
    {
    }

    sub_21A3D3C88();
    swift_allocError();
    v21 = 3;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_17:
  *(v4 + 16) = v10;
  if (!*(a1 + 16) || (v24 = sub_21A3DCA2C(0x7374656B637562, 0xE700000000000000), (v25 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v24, &v49), (swift_dynamicCast() & 1) == 0) || v52 < 1)
  {

    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v31 = sub_21A450F24();
    __swift_project_value_buffer(v31, qword_27CD28C90);

    v32 = sub_21A450F04();
    v33 = sub_21A451584();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v49 = v35;
      *v34 = 136315138;
      v36 = sub_21A450F74();
      v38 = v37;

      v39 = sub_21A3E2554(v36, v38, &v49);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_21A3C2000, v32, v33, "Metadata buckets not found or <= 0 in %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x21CEDB220](v35, -1, -1);
      MEMORY[0x21CEDB220](v34, -1, -1);
    }

    else
    {
    }

    sub_21A3D3C88();
    swift_allocError();
    v21 = 4;
LABEL_13:
    *v20 = v21;
    swift_willThrow();
LABEL_14:
    v22 = *(v4 + 40);

    type metadata accessor for DediscoMetadataSchema();
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + 24) = v52;
  v26 = *(a1 + 16);
  if (!v26)
  {
LABEL_32:
    v30 = 0;
    goto LABEL_33;
  }

  v27 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
  if ((v28 & 1) == 0)
  {
    v26 = 0;
    goto LABEL_32;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v27, &v49);
  v29 = swift_dynamicCast();
  v26 = v52;
  v30 = v53;
  if (!v29)
  {
    v26 = 0;
    v30 = 0;
  }

LABEL_33:
  v40 = *(v4 + 40);
  *(v4 + 32) = v26;
  *(v4 + 40) = v30;

  if (*(v4 + 16))
  {
    v41 = sub_21A44CCF4(a1, a2);
    if (v3)
    {

      goto LABEL_14;
    }

    v48 = v41;

    v42 = type metadata accessor for DediscoCategoricalMetadataEncoder();
    swift_allocObject();
    v43 = sub_21A3DAE00(v48);
    v44 = &off_282B40248;
  }

  else
  {

    v42 = type metadata accessor for DediscoNumericMetadataEncoder();
    v43 = swift_allocObject();
    v44 = &off_282B422B0;
  }

  v50 = v42;
  v51 = v44;
  *&v49 = v43;
  sub_21A3C50DC(&v49, v4 + 48);
  *(v4 + 88) = 0;
  if (*(a1 + 16) && (v45 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45D1B0), (v46 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v45, &v49);

    if (swift_dynamicCast())
    {
      if (v52 == 0x6375735F6B736174 && v53 == 0xEE00646564656563)
      {

        v47 = 1;
      }

      else
      {
        v47 = sub_21A4519B4();
      }

      *(v4 + 88) = v47 & 1;
    }
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21A44CC28()
{
  v1 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t sub_21A44CCA0()
{
  result = qword_27CD28DB8;
  if (!qword_27CD28DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28DB8);
  }

  return result;
}

uint64_t sub_21A44CCF4(uint64_t a1, uint64_t a2)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21A450BE4();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v15 = &v57 - v14;
  if (*(a1 + 16))
  {
    v65 = v13;
    v16 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
    if (v17)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v16, v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
      if (swift_dynamicCast())
      {
        goto LABEL_4;
      }
    }

    if (*(a1 + 16))
    {
      v19 = sub_21A3DCA2C(0x616E6F6974636964, 0xEF687461705F7972);
      if (v20)
      {
        sub_21A3D3B94(*(a1 + 56) + 32 * v19, v68);
        if (swift_dynamicCast())
        {
          v58 = v12;
          v59 = v2;
          v60 = v15;
          v21 = v67;
          v22 = *(a2 + 16);
          if (!v22)
          {
LABEL_14:

            goto LABEL_28;
          }

          v23 = v66;
          v24 = *(v65 + 16);
          v62 = (v65 + 8);
          v63 = v24;
          v25 = a2 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v64 = v65 + 16;
          v61 = *(v65 + 72);
          while (1)
          {
            v63(v9, v25, v5);
            if (sub_21A450B14() == v23 && v26 == v21)
            {
              break;
            }

            v27 = v21;
            v28 = sub_21A4519B4();

            if (v28)
            {
              goto LABEL_16;
            }

            (*v62)(v9, v5);
            v25 += v61;
            --v22;
            v21 = v27;
            if (!v22)
            {
              goto LABEL_14;
            }
          }

LABEL_16:

          v29 = *(v65 + 32);
          v30 = v58;
          v29(v58, v9, v5);
          v31 = v60;
          v29(v60, v30, v5);
          v32 = v59;
          v33 = sub_21A450C04();
          if (v32)
          {

            (*v62)(v31, v5);
            goto LABEL_28;
          }

          v35 = v33;
          v36 = v34;
          v37 = v5;
          v38 = objc_opt_self();
          v39 = sub_21A450C54();
          v68[0] = 0;
          v40 = [v38 JSONObjectWithData:v39 options:4 error:v68];

          if (v40)
          {
            v41 = v68[0];
            sub_21A451694();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
            if ((swift_dynamicCast() & 1) == 0)
            {
              (*v62)(v60, v37);
              sub_21A3E759C(v35, v36);
              goto LABEL_28;
            }

            v42 = v66;
            if (*(v66 + 16))
            {
              v43 = sub_21A3DCA2C(0x616E6F6974636964, 0xEA00000000007972);
              if (v44)
              {
                sub_21A3D3B94(*(v42 + 56) + 32 * v43, v68);
                sub_21A3E759C(v35, v36);
                (*v62)(v60, v37);

                if (swift_dynamicCast())
                {
LABEL_4:
                  result = v66;
                  goto LABEL_33;
                }

                goto LABEL_28;
              }
            }

            sub_21A3E759C(v35, v36);
          }

          else
          {
            v45 = v68[0];
            v46 = sub_21A450A84();

            swift_willThrow();
            sub_21A3E759C(v35, v36);
          }

          (*v62)(v60, v37);
        }
      }
    }
  }

LABEL_28:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v47 = sub_21A450F24();
  __swift_project_value_buffer(v47, qword_27CD28C90);

  v48 = sub_21A450F04();
  v49 = sub_21A451584();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v68[0] = v51;
    *v50 = 136315138;
    v52 = sub_21A450F74();
    v54 = sub_21A3E2554(v52, v53, v68);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_21A3C2000, v48, v49, "Failed to locate categorical dictionary in %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x21CEDB220](v51, -1, -1);
    MEMORY[0x21CEDB220](v50, -1, -1);
  }

  sub_21A3D3C88();
  swift_allocError();
  *v55 = 5;
  result = swift_willThrow();
LABEL_33:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OperandDescriptor.__allocating_init(tensorDescriptor:)(uint64_t a1)
{
  v2 = swift_allocObject();
  OperandDescriptor.init(tensorDescriptor:)(a1);
  return v2;
}

uint64_t OperandDescriptor.init(tensorDescriptor:)(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = e5rt_operand_desc_retain_from_tensor_desc();
  sub_21A3DCF54(v4);
  if (!v2)
  {
    sub_21A3DCAF8();
    swift_allocError();
    *v7 = 6;
    swift_willThrow();
  }

  type metadata accessor for OperandDescriptor();
  swift_deallocPartialClassInstance();
  v5 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t OperandDescriptor.deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_operand_desc_release();
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t OperandDescriptor.__deallocating_deinit()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 16);
  e5rt_operand_desc_release();
  result = swift_deallocClassInstance();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A44D62C(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_26;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = sub_21A4509F4();
    v8 = a1;
    if (a1)
    {
      a1 = sub_21A450A24();
      if (__OFSUB__(v6, a1))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v8 += v6 - a1;
    }

    v9 = __OFSUB__(v7, v6);
    v10 = v7 - v6;
    if (!v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v2)
  {
    __src = a1;
    v21 = a2;
    v22 = BYTE2(a2);
    v23 = BYTE3(a2);
    v24 = BYTE4(a2);
    v3 = (a2 >> 50) & 0x3F;
    v25 = BYTE5(a2);
    if (v3)
    {
      v4 = sub_21A44FAA4((a2 >> 50) & 0x3F, 0);
      memcpy(v4 + 4, &__src, 4 * v3);
      result = v4;
      goto LABEL_27;
    }

LABEL_26:
    result = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v11 = a1;
  v10 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = sub_21A4509F4();
  if (!v12)
  {
    sub_21A450A14();
    goto LABEL_26;
  }

  v13 = v12;
  v14 = sub_21A450A24();
  if (__OFSUB__(v11, v14))
  {
LABEL_30:
    __break(1u);
  }

  v8 = (v11 - v14 + v13);
LABEL_16:
  v15 = sub_21A450A14();
  if (!v8)
  {
    goto LABEL_26;
  }

  v16 = v15 >= v10 ? v10 : v15;
  if ((v16 + 3) < 7)
  {
    goto LABEL_26;
  }

  if (v16 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 3;
  }

  v18 = sub_21A44FAA4(v17 >> 2, 0);
  memcpy(v18 + 4, v8, v17 & 0xFFFFFFFFFFFFFFFCLL);
  result = v18;
LABEL_27:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_21A44D814(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v18 = a1;
      v19 = a2;
      v20 = BYTE2(a2);
      v21 = BYTE3(a2);
      v22 = BYTE4(a2);
      v3 = BYTE6(a2);
      v23 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v4 = sub_21A44FBAC(BYTE6(a2), 0);
        v5 = v4 + 4;
        v6 = &v18;
LABEL_23:
        memcpy(v5, v6, v3);
        result = v4;
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    v14 = a1;
    v12 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = sub_21A4509F4();
      if (!v9)
      {
        goto LABEL_17;
      }

      v15 = sub_21A450A24();
      if (!__OFSUB__(v14, v15))
      {
        v9 += v14 - v15;
        goto LABEL_17;
      }

LABEL_27:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v2 != 2)
  {
LABEL_12:
    result = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = sub_21A4509F4();
  if (v9)
  {
    v10 = sub_21A450A24();
    if (__OFSUB__(v7, v10))
    {
      goto LABEL_26;
    }

    v9 += v7 - v10;
  }

  v11 = __OFSUB__(v8, v7);
  v12 = v8 - v7;
  if (v11)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_17:
  v16 = sub_21A450A14();
  if (v16 >= v12)
  {
    v3 = v12;
  }

  else
  {
    v3 = v16;
  }

  result = MEMORY[0x277D84F90];
  if (v9 && v3)
  {
    v4 = sub_21A44FBAC(v3, 0);
    v5 = v4 + 4;
    v6 = v9;
    goto LABEL_23;
  }

LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static DediscoUploader.upload(binaryResult:jsonResult:task:privacyBudgetPrefix:taskSucceeded:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v15[3] = type metadata accessor for DediscoRecorderImpl();
  v15[4] = &off_282B42308;
  v15[0] = swift_allocObject();
  sub_21A44DD68(a1, a2, a3, a4, a5, a6, v15, a7);
  return __swift_destroy_boxed_opaque_existential_0(v15);
}

BOOL sub_21A44DABC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_21A3DCA2C(0xD000000000000012, 0x800000021A45BC40);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(v1 + 56) + 32 * v2, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = *MEMORY[0x277D053E8];
  v5 = sub_21A451084();
  if (!*(v12 + 16))
  {

    goto LABEL_10;
  }

  v7 = sub_21A3DCA2C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_21A3D3B94(*(v12 + 56) + 32 * v7, v14);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v12 == 3157554 && v13 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v11 = sub_21A4519B4();

    return (v11 & 1) != 0;
  }
}

unint64_t sub_21A44DC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_21A44DABC())
  {
    v4 = type metadata accessor for DediscoMetadataV2();
    v5 = swift_allocObject();
    __asm { FMOV            V0.2D, #-1.0 }

    *(v5 + 24) = _Q0;
    v11 = MEMORY[0x277D84F90];
    *(v5 + 40) = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    *(v5 + 48) = sub_21A3E4F6C(v11);
    *(v5 + 16) = a1;

    v13 = &off_282B40180;
  }

  else
  {
    v4 = type metadata accessor for DediscoMetadataV1();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v5 + 24) = _Q0;

    result = sub_21A3E4F6C(MEMORY[0x277D84F90]);
    *(v5 + 40) = result;
    v13 = &off_282B40148;
  }

  a2[3] = v4;
  a2[4] = v13;
  *a2 = v5;
  return result;
}

uint64_t sub_21A44DD68(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  LODWORD(v104) = a8;
  v102 = a1;
  v103 = a2;
  v15 = sub_21A450D14();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  MEMORY[0x28223BE20](v15);
  v97 = &v92[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A3F939C(a7, v119);
  v18 = v120;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v92[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22);
  v24 = *v22;
  v117 = type metadata accessor for DediscoRecorderImpl();
  v118 = &off_282B42308;
  v116[0] = v24;
  type metadata accessor for DediscoUploader();
  inited = swift_initStackObject();
  v26 = v117;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v92[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v31 + 16))(v30);
  v32 = *v30;

  v100 = a6;
  v101 = a5;
  v33 = sub_21A44FCB0(a5, a6, a4, v32, inited);
  __swift_destroy_boxed_opaque_existential_0(v116);
  __swift_destroy_boxed_opaque_existential_0(v119);
  sub_21A44DC7C(a4, v115);
  v34 = a4[6];
  v105 = v33;
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28430, &unk_21A455FC0);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_21A455F00;
    *(v35 + 32) = 0xD000000000000015;
    *(v35 + 40) = 0x800000021A45D280;
    v36 = MEMORY[0x277D83B88];
    *(v35 + 48) = *(v34 + 56);
    *(v35 + 72) = v36;
    *(v35 + 80) = 0xD000000000000015;
    *(v35 + 88) = 0x800000021A45D2A0;
    v37 = *(v34 + 40);
    *(v35 + 120) = MEMORY[0x277D83A90];
    *(v35 + 96) = v37;

    v38 = sub_21A3E4F6C(v35);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28438, &unk_21A455EA0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114[0] = a3;
    sub_21A3D3D28(v38, sub_21A3EC9F8, 0, isUniquelyReferenced_nonNull_native, v114);

    a3 = v114[0];
  }

  else
  {
  }

  swift_beginAccess();
  v40 = a4[4];
  swift_beginAccess();
  v41 = a4[5];

  v42 = sub_21A449F00(a3, v40, v41);
  if (v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  v47 = v42;
  v48 = a4;
  v49 = v43;
  v50 = v44;
  v51 = v45;
  v94 = v48;

  v96 = v47;
  sub_21A3E700C(v47, v49);
  sub_21A3E700C(v50, v51);
  v104 = v50;
  sub_21A3E759C(v50, v51);
  v52 = v49 >> 62;
  v53 = v51;
  v95 = v51;
  if ((v49 >> 62) > 1)
  {
    if (v52 != 2)
    {
      v54 = v96;
      v55 = v49;
      sub_21A3E759C(v96, v49);
      goto LABEL_20;
    }

    v54 = v96;
    v56 = *(v96 + 16);
    v57 = *(v96 + 24);
    v55 = v49;
    sub_21A3E759C(v96, v49);
    if (v56 == v57)
    {
      goto LABEL_20;
    }
  }

  else if (v52)
  {
    v54 = v96;
    v55 = v49;
    sub_21A3E759C(v96, v49);
    if (v54 == v54 >> 32)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v54 = v96;
    v55 = v49;
    sub_21A3E759C(v96, v49);
    if ((v49 & 0xFF000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  v58 = sub_21A44D814(v54, v55);
  v59 = v58[2];
  v60 = (v58 + 4);
  while (v59)
  {
    v61 = *v60++;
    --v59;
    if (v61)
    {

      sub_21A44F2A4(v54, v55, v115);
      v93 = 1;
      goto LABEL_25;
    }
  }

LABEL_20:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v62 = sub_21A450F24();
  __swift_project_value_buffer(v62, qword_27CD28C90);
  v63 = sub_21A450F04();
  v64 = sub_21A451574();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_21A3C2000, v63, v64, "No numeric metadata or all zeros, skip Dedisco donating", v65, 2u);
    v66 = v65;
    v53 = v95;
    MEMORY[0x21CEDB220](v66, -1, -1);
  }

  v93 = 0;
LABEL_25:
  sub_21A3E700C(v54, v55);
  v67 = v104;
  sub_21A3E700C(v104, v53);
  sub_21A3E759C(v54, v55);
  v68 = v53 >> 62;
  if ((v53 >> 62) > 1)
  {
    if (v68 != 2)
    {
      sub_21A3E759C(v67, v53);
      goto LABEL_39;
    }

    v69 = v67;
    v67 = *(v67 + 16);
    v70 = *(v69 + 24);
    sub_21A3E759C(v69, v53);
LABEL_32:
    v72 = v67 == v70;
    v67 = v104;
    if (v72)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v68)
  {
    sub_21A3E759C(v67, v53);
    v71 = v67;
    v67 = v67;
    v70 = v71 >> 32;
    goto LABEL_32;
  }

  sub_21A3E759C(v67, v53);
  if ((v53 & 0xFF000000000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v73 = sub_21A44D814(v67, v53);
  v74 = v73[2];
  v75 = (v73 + 4);
  while (v74)
  {
    v76 = *v75++;
    --v74;
    if (v76)
    {

      sub_21A44F638(v67, v53, v115);
      v54 = v96;
      goto LABEL_44;
    }
  }

LABEL_39:
  if (qword_27CD28170 != -1)
  {
    swift_once();
  }

  v77 = sub_21A450F24();
  __swift_project_value_buffer(v77, qword_27CD28C90);
  v78 = sub_21A450F04();
  v79 = sub_21A451574();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_21A3C2000, v78, v79, "No categorical metadata or all zeros, skip Dedisco donating", v80, 2u);
    MEMORY[0x21CEDB220](v80, -1, -1);
  }

LABEL_44:
  v82 = v102;
  v81 = v103;
  if (v103 >> 60 == 15)
  {

    if (!v93)
    {
      __swift_destroy_boxed_opaque_existential_0(v115);

      sub_21A3E759C(v54, v55);
      return sub_21A3E759C(v104, v95);
    }
  }

  else
  {
    sub_21A3E700C(v102, v103);
    sub_21A44E848(v82, v81, v115);
    sub_21A3ECC34(v82, v81);
  }

  v83 = [objc_opt_self() standardUserDefaults];
  v84 = v97;
  sub_21A450D04();
  sub_21A450CE4();
  (*(v98 + 8))(v84, v99);
  v85 = sub_21A451494();
  v106 = 0xD00000000000001FLL;
  v107 = 0x800000021A45D260;
  v86 = v100;
  v112 = v101;
  v113 = v100;
  v110 = 46;
  v111 = 0xE100000000000000;
  v108 = 95;
  v109 = 0xE100000000000000;
  sub_21A3ED2CC();
  v87 = sub_21A451654();
  MEMORY[0x21CED98B0](v87);

  v88 = sub_21A451054();

  [v83 setValue:v85 forKey:v88];

  v89 = v94;
  swift_beginAccess();
  v91 = v89[2];
  v90 = v89[3];

  sub_21A404008(v101, v86, v91, v90);

  sub_21A3E759C(v54, v55);
  sub_21A3E759C(v104, v95);
  return __swift_destroy_boxed_opaque_existential_0(v115);
}

void sub_21A44E848(unint64_t a1, unint64_t a2, void *a3)
{
  v5 = v3;
  v97 = *MEMORY[0x277D85DE8];
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 24))(v9, v10);
  if (v4)
  {
    goto LABEL_2;
  }

  v12 = 0;
  v13 = a3[3];
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v13);
  v15 = (*(v14 + 16))(v13, v14);
  v16 = v3[4];
  if ((sub_21A4417EC() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(v5 + 56);
  v95[0] = *(v5 + 40);
  v95[1] = v17;
  v95[2] = *(v5 + 72);
  v18 = sub_21A4402DC(a1, a2, v16, v95);
  v5 = v18;
  v12 = (v18 >> 62);
  if (v18 >> 62)
  {
LABEL_71:
    a2 = sub_21A451844();
  }

  else
  {
    a2 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = v16;
  if (a2)
  {
    v16 = 0;
    a1 = v5 & 0xC000000000000001;
    v19 = 0.0;
    while (1)
    {
      if (a1)
      {
        v21 = MEMORY[0x21CED9EA0](v16, v5);
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v24 = a2 >> 62;
          if ((a2 >> 62) > 1)
          {
            if (v24 == 2)
            {
              v27 = *(a1 + 16);
              v26 = *(a1 + 24);
              v28 = __OFSUB__(v26, v27);
              v25 = v26 - v27;
              if (v28)
              {
                goto LABEL_73;
              }

LABEL_22:
              if (v25 > 950000)
              {
                sub_21A3D3C88();
                swift_allocError();
                v30 = 16;
                goto LABEL_34;
              }
            }
          }

          else if (v24)
          {
            LODWORD(v25) = HIDWORD(a1) - a1;
            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v25 = v25;
              goto LABEL_22;
            }

            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
          }

          v31 = sub_21A44D62C(a1, a2);
          v32 = v31;
          v33 = v15;
          __B[0] = v33;
          v34 = *(v16 + 48);
          if (v34)
          {
            __B[0] = *(v34 + 64) * v33;
          }

          v35 = v31[2];

          v36 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_21A407D80(0, v35, 0, v32);
          }

          vDSP_vsdiv(v32 + 8, 1, __B, v36 + 8, 1, v35);

          v37 = a3[3];
          v38 = a3[4];
          __swift_project_boxed_opaque_existential_1(a3, v37);
          v39 = (*(v38 + 32))(1, v37, v38, v15);
          if (!v12)
          {
            v92 = v39;
            sub_21A3D3C88();
            v89 = swift_allocError();
            *v40 = 1;
            v41 = *(v5 + 40);
            v42 = *(v5 + 48);
            v43 = *(v5 + 56);
            v44 = *(v5 + 64);
            v45 = *(v5 + 72);
            v46 = *(v5 + 80);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28458, &qword_21A457210);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21A455F10;
            *(inited + 32) = 7104112;
            *(inited + 40) = 0xE300000000000000;
            *(inited + 48) = v41;
            *(inited + 56) = v42;
            *(inited + 64) = 0x73746C75736572;
            *(inited + 72) = 0xE700000000000000;
            *(inited + 80) = v43;
            *(inited + 88) = v44;
            *(inited + 96) = v45;
            *(inited + 104) = v46;

            sub_21A40A794(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            v48 = sub_21A3DAD38(v36);
            v50 = v49;
            v51 = objc_allocWithZone(MEMORY[0x277D052F8]);
            v52 = sub_21A451054();

            v53 = [v51 initWithKey_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_21A455E00;
            *(v54 + 32) = v48;
            *(v54 + 40) = v50;
            sub_21A3E700C(v48, v50);
            v55 = sub_21A4512D4();

            sub_21A3D36A8(v92);

            v56 = sub_21A450F54();

            LODWORD(v41) = [v53 recordFloatVectors:v55 metadata:v56];

            sub_21A3E759C(v48, v50);
            if (v41)
            {

              goto LABEL_2;
            }

LABEL_46:
            swift_willThrow();
          }

LABEL_66:

          goto LABEL_2;
        }
      }

      else
      {
        if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v20 = *(v5 + 8 * v16 + 32);

        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_15;
        }
      }

      v23 = *(v21 + 32);

      v19 = v19 + v23 * v23;
      ++v16;
      if (v22 == a2)
      {
        goto LABEL_32;
      }
    }
  }

  v19 = 0.0;
LABEL_32:
  if (vabdd_f64(sqrt(v19), v15) <= 0.0001)
  {
    if (!a2)
    {
      goto LABEL_66;
    }

    v16 = 0;
    v93 = v5 & 0xC000000000000001;
    do
    {
      if (v93)
      {
        v57 = MEMORY[0x21CED9EA0](v16, v5);
        v58 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v16 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v57 = *(v5 + 8 * v16 + 32);

        v58 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      swift_beginAccess();
      if (*(*(v57 + 40) + 16) > 0x39FBCuLL)
      {

        sub_21A3D3C88();
        swift_allocError();
        *v59 = 16;
        swift_willThrow();

        goto LABEL_2;
      }

      ++v16;
    }

    while (v58 != a2);
    if (v12)
    {
      v84 = sub_21A451844();
    }

    else
    {
      v84 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v85;
    v60 = 0;
    while (1)
    {
      if (v93)
      {
        v61 = MEMORY[0x21CED9EA0](v60, v5);
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v60 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v61 = *(v5 + 8 * v60 + 32);

        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_70;
        }
      }

      v63 = *(v61 + 32);
      v64 = *(v16 + 48);
      v88 = v62;
      if (v64)
      {
        v63 = *(v64 + 64) * v63;
      }

      v94 = v63;
      swift_beginAccess();
      v65 = *(v61 + 40);
      v66 = *(v65 + 16);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v61 + 40) = v65;
      v68 = v65;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = sub_21A407D80(0, v66, 0, v65);
      }

      *(v61 + 40) = v68;

      vDSP_vsdiv((v65 + 32), 1, &v94, v68 + 8, 1, v66);
      swift_endAccess();

      v69 = a3[3];
      v70 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v69);
      v71 = (*(v70 + 32))(v84, v69, v70, *(v61 + 32));
      v86 = v60;
      sub_21A3D3C88();
      v90 = swift_allocError();
      *v72 = 1;
      v74 = *(v61 + 16);
      v73 = *(v61 + 24);
      v75 = *(v61 + 40);

      v87 = sub_21A3DAD38(v76);
      v91 = v77;

      v78 = objc_allocWithZone(MEMORY[0x277D052F8]);
      v79 = sub_21A451054();

      v80 = [v78 initWithKey_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_21A455E00;
      *(v81 + 32) = v87;
      *(v81 + 40) = v91;
      sub_21A3E700C(v87, v91);
      v82 = sub_21A4512D4();

      sub_21A3D36A8(v71);

      v12 = sub_21A450F54();

      LODWORD(v73) = [v80 recordFloatVectors:v82 metadata:v12];

      sub_21A3E759C(v87, v91);
      if (!v73)
      {
        break;
      }

      v16 = v85;
      v60 = v86 + 1;
      if (v88 == a2)
      {
        goto LABEL_66;
      }
    }

    swift_willThrow();
    v83 = v90;
  }

  else
  {

    sub_21A3D3C88();
    swift_allocError();
    v30 = 15;
LABEL_34:
    *v29 = v30;
    swift_willThrow();
  }

LABEL_2:
  v11 = *MEMORY[0x277D85DE8];
}

void sub_21A44F2A4(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 40))(v7, v8);
  if (!v4)
  {
    v40 = v9;
    sub_21A3D3C88();
    v39 = swift_allocError();
    *v10 = 7;
    v12 = v3[5];
    v11 = v3[6];
    v13 = v3[7];
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v42;
    v41 = 7104112;
    v42[0] = 0xE300000000000000;
    v42[1] = v12;
    v42[2] = v11;
    v42[3] = 0x7363697274656DLL;
    v42[4] = 0xE700000000000000;
    v42[5] = v13;
    v42[6] = v14;
    v42[7] = v15;
    v42[8] = v16;

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_3:
    if (v18 <= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 + 1;
    v22 = &v17[2 * v18];
    while (v18 != 5)
    {
      if (v21 == ++v18)
      {
        __break(1u);
        return;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 2;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v38 = v17;
        v26 = a1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v19;
        v28 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A3E48DC(0, *(v19 + 16) + 1, 1);
          v19 = v43;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21A3E48DC((v29 > 1), v30 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        a2 = v28;
        a1 = v26;
        v17 = v38;
        goto LABEL_3;
      }
    }

    swift_arrayDestroy();
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    sub_21A402B04();
    sub_21A450FD4();

    v32 = objc_allocWithZone(MEMORY[0x277D052F8]);
    v33 = sub_21A451054();

    v34 = [v32 initWithKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A455E00;
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;
    sub_21A3E700C(a1, a2);
    v36 = sub_21A4512D4();

    sub_21A3D36A8(v40);

    v37 = sub_21A450F54();

    LOBYTE(v32) = [v34 recordFloatVectors:v36 metadata:v37];

    if (v32)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

void sub_21A44F638(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = (*(v8 + 48))(v7, v8);
  if (!v4)
  {
    v40 = v9;
    sub_21A3D3C88();
    v39 = swift_allocError();
    *v10 = 8;
    v12 = v3[5];
    v11 = v3[6];
    v13 = v3[7];
    v14 = v3[8];
    v15 = v3[9];
    v16 = v3[10];
    v17 = v42;
    v41 = 7104112;
    v42[0] = 0xE300000000000000;
    v42[1] = v12;
    v42[2] = v11;
    v42[3] = 0x617461646174656DLL;
    v42[4] = 0xE800000000000000;
    v42[5] = v13;
    v42[6] = v14;
    v42[7] = v15;
    v42[8] = v16;

    v18 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_3:
    if (v18 <= 5)
    {
      v20 = 5;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 + 1;
    v22 = &v17[2 * v18];
    while (v18 != 5)
    {
      if (v21 == ++v18)
      {
        __break(1u);
        return;
      }

      v24 = *(v22 - 1);
      v23 = *v22;
      v22 += 2;
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        v38 = v17;
        v26 = a1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v19;
        v28 = a2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21A3E48DC(0, *(v19 + 16) + 1, 1);
          v19 = v43;
        }

        v30 = *(v19 + 16);
        v29 = *(v19 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21A3E48DC((v29 > 1), v30 + 1, 1);
          v19 = v43;
        }

        *(v19 + 16) = v30 + 1;
        v31 = v19 + 16 * v30;
        *(v31 + 32) = v24;
        *(v31 + 40) = v23;
        a2 = v28;
        a1 = v26;
        v17 = v38;
        goto LABEL_3;
      }
    }

    swift_arrayDestroy();
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
    sub_21A402B04();
    sub_21A450FD4();

    v32 = objc_allocWithZone(MEMORY[0x277D052E8]);
    v33 = sub_21A451054();

    v34 = [v32 initWithKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD28DC0, &qword_21A4597F8);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21A455E00;
    *(v35 + 32) = a1;
    *(v35 + 40) = a2;
    sub_21A3E700C(a1, a2);
    v36 = sub_21A4512D4();

    sub_21A3D36A8(v40);

    v37 = sub_21A450F54();

    LOBYTE(v32) = [v34 recordBitVectors:v36 metadata:v37];

    if (v32)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

void *DediscoUploader.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[8];
  v5 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);
  return v0;
}

uint64_t DediscoUploader.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  v4 = v0[8];
  v5 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 11);

  return swift_deallocClassInstance();
}

void *sub_21A44FAA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28548, &qword_21A459460);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_21A44FB28(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_21A44FBAC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28908, &qword_21A457248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_21A44FC20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28698, &unk_21A459800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_21A44FCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30[3] = type metadata accessor for DediscoRecorderImpl();
  v30[4] = &off_282B42308;
  v30[0] = a4;
  a5[2] = a1;
  a5[3] = a2;
  a5[4] = a3;
  sub_21A3F939C(v30, (a5 + 11));

  has_internal_content = os_variant_has_internal_content();
  v11 = a5[4];
  swift_beginAccess();
  v12 = *(v11 + 32);
  if (!*(v12 + 16))
  {
    goto LABEL_6;
  }

  v13 = sub_21A3DCA2C(0xD000000000000014, 0x800000021A45D2C0);
  if ((v14 & 1) == 0)
  {

LABEL_6:

    __swift_destroy_boxed_opaque_existential_0(v30);
    goto LABEL_7;
  }

  sub_21A3D3B94(*(v12 + 56) + 32 * v13, &v28);

  if (swift_dynamicCast())
  {
    v15 = a5[3];
    v28 = a5[2];
    v29 = v15;

    MEMORY[0x21CED98B0](46, 0xE100000000000000);
    MEMORY[0x21CED98B0]();

    v17 = v28;
    v16 = v29;
    __swift_destroy_boxed_opaque_existential_0(v30);
    goto LABEL_8;
  }

  __swift_destroy_boxed_opaque_existential_0(v30);

LABEL_7:
  v17 = a5[2];
  v16 = a5[3];

LABEL_8:
  v18 = a5[4];
  v19 = v18[6];
  if (v19)
  {
    v20 = (v19 + 72);
    v21 = (v19 + 80);
  }

  else
  {
    v20 = v18 + 2;
    swift_beginAccess();
    v21 = v18 + 3;
  }

  v22 = *v20;
  v23 = *v21;

  v25 = 0xEA00000000006E6FLL;
  if (has_internal_content)
  {
    v25 = 0xE500000000000000;
  }

  v26 = 0x69746375646F7270;
  a5[5] = v17;
  a5[6] = v16;
  if (has_internal_content)
  {
    v26 = 0x7972726163;
  }

  a5[7] = v26;
  a5[8] = v25;
  a5[9] = v22;
  a5[10] = v24;
  return a5;
}

uint64_t sub_21A44FED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A450E84();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A450E94();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28D78, &qword_21A459290);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_21A450D14();
  v39 = *(v16 - 8);
  v17 = *(v39 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v38 = &v36 - v21;
  v22 = [objc_opt_self() standardUserDefaults];
  *&v43 = 0xD00000000000001FLL;
  *(&v43 + 1) = 0x800000021A45D260;
  v49 = a1;
  v50 = a2;
  v47 = 46;
  v48 = 0xE100000000000000;
  v45 = 95;
  v46 = 0xE100000000000000;
  sub_21A3ED2CC();
  v23 = sub_21A451654();
  MEMORY[0x21CED98B0](v23);

  v24 = sub_21A451054();

  v25 = [v22 valueForKey_];

  if (v25)
  {
    sub_21A451694();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v51[0] = v43;
  v51[1] = v44;
  if (!*(&v44 + 1))
  {
    v29 = &qword_27CD28468;
    v30 = &unk_21A455FB0;
    v31 = v51;
    return sub_21A3D3BF0(v31, v29, v30);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_21A450E64();
  v27 = v42;
  (*(v42 + 104))(v7, *MEMORY[0x277CC9968], v4);
  sub_21A450CD4();
  sub_21A450E54();
  v28 = v39;
  v37 = *(v39 + 8);
  v37(v20, v16);
  (*(v27 + 8))(v7, v4);
  (*(v40 + 8))(v11, v41);
  if ((*(v28 + 48))(v15, 1, v16) == 1)
  {
    v29 = &qword_27CD28D78;
    v30 = &qword_21A459290;
    v31 = v15;
    return sub_21A3D3BF0(v31, v29, v30);
  }

  v32 = v38;
  (*(v28 + 32))(v38, v15, v16);
  sub_21A450D04();
  sub_21A450464();
  v33 = sub_21A450FE4();
  v34 = v37;
  v37(v20, v16);
  if (v33)
  {
    sub_21A3EC940();
    swift_allocError();
    *v35 = 14;
    swift_willThrow();
  }

  return v34(v32, v16);
}

unint64_t sub_21A450464()
{
  result = qword_27CD28578;
  if (!qword_27CD28578)
  {
    sub_21A450D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28578);
  }

  return result;
}