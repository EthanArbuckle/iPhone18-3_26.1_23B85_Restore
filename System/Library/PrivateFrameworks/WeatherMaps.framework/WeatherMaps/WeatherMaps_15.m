uint64_t sub_220F5C610(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_keyedTextures;
  OUTLINED_FUNCTION_5_1();
  v5 = *(v2 + v4);
  if (*(v5 + 16) && (v6 = sub_220F1937C(), (v7 & 1) != 0))
  {
    return sub_220F62A20(a2, *(*(v5 + 56) + 8 * v6));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F5C688(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_keyedTextures;
  OUTLINED_FUNCTION_5_1();
  if (sub_220F629D4(a1, *(v1 + v3)))
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
    sub_220F5EDAC();
    sub_220FC2600();
    OUTLINED_FUNCTION_32_10();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_21_13();
    sub_220E97748();
    *(v1 + v3) = v5;
    swift_endAccess();
  }

  result = sub_220F629D4(a1, *(v1 + v3));
  if (result)
  {
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    sub_220E97678();
    OUTLINED_FUNCTION_32_10();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_21_13();
    sub_220E97748();
    *(v1 + v3) = v5;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_220F5C7D4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  result = sub_220FC0230();
  v7 = v6 + *(a2 + *(v4 + 28)) * a1;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 1.84467441e19)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_220F5C86C@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v6 = *(result + 56);
  v7 = v6 > 6;
  v8 = (1 << v6) & 0x4C;
  if (!v7 && v8 != 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_220F5C7D4(a3, a2);
      OUTLINED_FUNCTION_30_9(v11, v12, v13, v14, v15, v16, v17, v18, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3]);
      result = a3 + 1;
      if (!__OFADD__(a3, 1))
      {
        if ((result & 0x8000000000000000) == 0)
        {
          v19 = sub_220F5C7D4(result, a2);
          sub_220FAD910(v19, v32);
          memcpy(a4, __src, 0x51uLL);
          result = memcpy(a4 + 88, v32, 0x51uLL);
          a4[257] = 1;
          return result;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v20 = sub_220F5C7D4(0, a2);
  OUTLINED_FUNCTION_30_9(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3]);
  result = memcpy(a4, __src, 0x51uLL);
  a4[257] = 0;
  return result;
}

void sub_220F5C978()
{
  OUTLINED_FUNCTION_29_2();
  v4 = v3;
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v5 + 16);
  v10 = *(v9 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_resourceProviders);
  v11 = v10[2];
  v12 = *(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_supportedRenderResourceTypes);
  v13 = v12[2];
  if (v11 != 2)
  {
    if (v11 != 1 || v13 != 1)
    {
      goto LABEL_61;
    }

    v15 = v10[4];
    v16 = *(v15 + 56);
    v17 = v12[5];
    v46 = v2;
    v18 = v1;
    switch(v16)
    {
      case 2:
        swift_unknownObjectRetain();
        if (v17 == 2)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      case 3:
        swift_unknownObjectRetain();
        if (v17 == 3)
        {
          goto LABEL_23;
        }

        goto LABEL_29;
      case 4:
        swift_unknownObjectRetain();
        if (v17 != 4)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      case 5:
        swift_unknownObjectRetain();
        if (v17 != 5)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      case 6:
        swift_unknownObjectRetain();
        if (v17 != 6)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      default:
        if ((v17 - 2) < 5)
        {
          swift_unknownObjectRetain();
LABEL_29:
          bzero(v4, 0x100uLL);
          *(v4 + 256) = -256;
          OUTLINED_FUNCTION_22();

          swift_unknownObjectRelease();
          return;
        }

        v18 = v1;
        v43 = *(v15 + 48);
        v30 = v12[4];
        swift_unknownObjectRetain();
        if (v16 == 1)
        {
          if (v17 != 1)
          {
            goto LABEL_29;
          }

          sub_220EE8D08(v30, 1);
        }

        else
        {
          if (v17 == 1)
          {
            sub_220EE8D08(v30, 1);
            goto LABEL_29;
          }

          sub_220EE8D08(v30, v17);
          sub_220EE8D08(v43, v16);
          v42 = sub_220FC0C10();
          sub_220E5E3BC(v43, v16);
          sub_220E5E3BC(v30, v17);
          if ((v42 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

LABEL_23:
        if (v10[2])
        {
          __src[0] = v7;
          __src[1] = v6;
          LOBYTE(__src[2]) = v8;
          v22 = swift_unknownObjectRetain();
          sub_220F5C86C(v22, v18, v46, v4);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_62;
        }

        __break(1u);
        break;
    }

    goto LABEL_80;
  }

  if (v13 != 2)
  {
    goto LABEL_61;
  }

  v19 = v10[4];
  v20 = *(v19 + 56);
  v21 = v12[5];
  switch(v20)
  {
    case 2:
      if (v21 != 2)
      {
        goto LABEL_61;
      }

      goto LABEL_35;
    case 3:
      if (v21 == 3)
      {
        goto LABEL_35;
      }

      goto LABEL_61;
    case 4:
      if (v21 != 4)
      {
        goto LABEL_61;
      }

      goto LABEL_35;
    case 5:
      if (v21 != 5)
      {
        goto LABEL_61;
      }

      goto LABEL_35;
    case 6:
      if (v21 != 6)
      {
        goto LABEL_61;
      }

      goto LABEL_35;
    default:
      if ((v21 - 2) < 5)
      {
        goto LABEL_61;
      }

      v27 = v12[4];
      if (v20 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_61;
        }

        v28 = v1;
        v29 = v2;
        sub_220EA10E4(v12[4], 1);
        v1 = v28;
        v2 = v29;
      }

      else
      {
        if (v21 == 1)
        {
LABEL_76:
          sub_220EA10E4(v27, 1);
          goto LABEL_61;
        }

        v38 = *(v19 + 48);
        v44 = v1;
        v47 = v2;
        sub_220EE8D08(v12[4], v21);
        sub_220EE8D08(v38, v20);
        v41 = sub_220FC0C10();
        sub_220E5E3BC(v38, v20);
        sub_220E5E3BC(v27, v21);
        v1 = v44;
        v2 = v47;
        if ((v41 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

LABEL_35:
      if (v10[2] < 2uLL)
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v12[2] < 2uLL)
      {
        goto LABEL_81;
      }

      v24 = v10[6];
      v25 = *(v24 + 56);
      v26 = v12[7];
      switch(v25)
      {
        case 2:
          if (v26 != 2)
          {
            goto LABEL_61;
          }

          goto LABEL_54;
        case 3:
          if (v26 != 3)
          {
            goto LABEL_61;
          }

          goto LABEL_54;
        case 4:
          if (v26 != 4)
          {
            goto LABEL_61;
          }

          goto LABEL_54;
        case 5:
          if (v26 != 5)
          {
            goto LABEL_61;
          }

          goto LABEL_54;
        case 6:
          if (v26 != 6)
          {
            goto LABEL_61;
          }

          goto LABEL_54;
        default:
          if ((v26 - 2) < 5)
          {
            goto LABEL_61;
          }

          v27 = v12[6];
          if (v25 == 1)
          {
            if (v26 == 1)
            {
              v35 = v12[6];
              v36 = v1;
              v37 = v2;
              sub_220EA10E4(v35, 1);
              v1 = v36;
              v2 = v37;
              goto LABEL_54;
            }

LABEL_61:
            bzero(v4, 0x100uLL);
            *(v4 + 256) = -256;
LABEL_62:
            OUTLINED_FUNCTION_22();
            return;
          }

          if (v26 == 1)
          {
            goto LABEL_76;
          }

          v39 = *(v24 + 48);
          v45 = v1;
          v48 = v2;
          sub_220EE8D08(v27, v26);
          sub_220EE8D08(v39, v25);
          v40 = sub_220FC0C10();
          sub_220E5E3BC(v39, v25);
          sub_220E5E3BC(v27, v26);
          v1 = v45;
          v2 = v48;
          if ((v40 & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_54:
          if (!v10[2])
          {
            goto LABEL_82;
          }

          v31 = v1;
          v32 = v2;
          v52[0] = v7;
          v52[1] = v6;
          LOBYTE(v52[2]) = v8;
          v33 = swift_unknownObjectRetain();
          sub_220F5C86C(v33, v31, v32, __src);
          swift_unknownObjectRelease();
          if (v10[2] >= 2uLL)
          {
            v34 = swift_unknownObjectRetain();
            sub_220F5C86C(v34, v31, v32, v52);
            swift_unknownObjectRelease();
            memcpy(__dst, __src, 0x102uLL);
            if (BYTE1(__dst[32]) == 1)
            {
              memcpy(v51, __src, 0x51uLL);
              memcpy(v50, &__src[11], 0x51uLL);
              memcpy(__dst, v52, 0x102uLL);
              if (!BYTE1(__dst[32]))
              {
                memcpy(v4, __src, 0x51uLL);
                memcpy((v4 + 88), &__src[11], 0x51uLL);
                memcpy((v4 + 176), v52, 0x51uLL);
                *(v4 + 257) = 2;
                goto LABEL_62;
              }

              sub_220F5EE00(v50);
              sub_220F5EE00(v51);
            }

            else
            {
              sub_220E3FEB8(v52);
            }

            sub_220E3FEB8(__dst);
            goto LABEL_61;
          }

LABEL_83:
          __break(1u);
          return;
      }
  }
}

void sub_220F5CF88()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  sub_220F5EE54(v4, __src);
  if (v97)
  {
    memcpy(__dst, __src, 0x51uLL);
    memcpy(v92, v95, 0x51uLL);
    if (v97 == 1)
    {
      sub_220F5EE8C(__dst, v91);
      v5 = *(v1 + 16);
      OUTLINED_FUNCTION_2_43();
      sub_220F5D224(v6, v7, v8, v9, v5, v10);
      sub_220E3B2DC(v91, &qword_27CF9F3C8);
      sub_220F5EE8C(v92, v91);
      OUTLINED_FUNCTION_2_43();
      sub_220F5D224(v11, v12, v13, v14, v5, v15);
      sub_220E3B2DC(v91, &qword_27CF9F3C8);
      sub_220F5EE00(v92);
      sub_220F5EE00(__dst);
      v16 = v88[0];
      *v3 = v87;
      *(v3 + 16) = v16;
      *(v3 + 25) = *(v88 + 9);
      v17 = v90[0];
      *(v3 + 48) = v89;
      *(v3 + 64) = v17;
      *(v3 + 73) = *(v90 + 9);
      v18 = 1;
    }

    else
    {
      memcpy(v91, v96, sizeof(v91));
      sub_220F5EE8C(__dst, &v87);
      v26 = *(v1 + 16);
      OUTLINED_FUNCTION_2_43();
      v32 = sub_220F5D224(v27, v28, v29, v30, v26, v31);
      OUTLINED_FUNCTION_18_15(v32, v33, v34, v35, v36, v37, v38, v39, v67, v70, v74, v77, v81);
      sub_220F5EE8C(v92, &v87);
      OUTLINED_FUNCTION_2_43();
      v45 = sub_220F5D224(v40, v41, v42, v43, v26, v44);
      OUTLINED_FUNCTION_18_15(v45, v46, v47, v48, v49, v50, v51, v52, v68, v71, v75, v78, v82);
      sub_220F5EE8C(v91, &v87);
      OUTLINED_FUNCTION_2_43();
      v58 = sub_220F5D224(v53, v54, v55, v56, v26, v57);
      OUTLINED_FUNCTION_18_15(v58, v59, v60, v61, v62, v63, v64, v65, v69, v72, v76, v79, v83);
      sub_220F5EE00(v91);
      sub_220F5EE00(v92);
      sub_220F5EE00(__dst);
      v66 = v90[0];
      *v3 = v89;
      *(v3 + 16) = v66;
      *(v3 + 25) = *(v90 + 9);
      *(v3 + 48) = v85;
      *(v3 + 64) = *v86;
      *(v3 + 73) = *&v86[9];
      *(v3 + 96) = v73;
      *(v3 + 112) = v80;
      *(v3 + 121) = *&v84[-7];
      v18 = 2;
    }

    *(v3 + 137) = v18;
  }

  else
  {
    memcpy(__dst, __src, 0x51uLL);
    sub_220F5EE8C(__dst, v92);
    OUTLINED_FUNCTION_2_43();
    sub_220F5D224(v19, v20, v21, v22, v23, v24);
    sub_220E3B2DC(v92, &qword_27CF9F3C8);
    sub_220F5EE00(__dst);
    v25 = *&v91[16];
    *v3 = *v91;
    *(v3 + 16) = v25;
    *(v3 + 25) = *&v91[25];
    *(v3 + 137) = 0;
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F5D224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_220ED6038(a1, __src, &qword_27CF9F3C8);
  if (__src[80] == 255)
  {
    result = sub_220E3B2DC(__src, &qword_27CF9F3C8);
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 40) = 4;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    result = sub_220EF5194(&__dst[40], __src);
    switch(__src[40])
    {
      case 1:
        result = sub_220E3FF0C(__src);
        goto LABEL_4;
      case 2:
        sub_220F5EE00(__dst);
        OUTLINED_FUNCTION_26_15();
        *(a6 + 40) = v18;
        result = sub_220E3FF0C(__src);
        break;
      case 3:
        sub_220E1E72C(__src, v23);
        if (a4)
        {
          v13 = v24;
          v14 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          a3 = (*(v14 + 24))(v13, v14);
        }

        v15 = sub_220F62A6C(a3, a2);
        v28[0] = *__dst;
        v28[1] = *&__dst[16];
        v29 = *&__dst[32];
        v16 = sub_220F5C610(a3, v28);
        if (v16)
        {
          v17 = v16;
          sub_220F5EE00(__dst);

          *a6 = v17;
        }

        else
        {
          v19 = v24;
          v20 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v21 = (*(v20 + 24))(v19, v20);
          v22 = sub_220F5D5B0(v23, v15, v21, 0, a3, 0, a5);
          sub_220F5C688(a3);

          sub_220F5EE00(__dst);
          *a6 = v22;
        }

        *(a6 + 40) = 1;
        result = __swift_destroy_boxed_opaque_existential_0(v23);
        break;
      default:
LABEL_4:
        v12 = *&__dst[56];
        *a6 = *&__dst[40];
        *(a6 + 16) = v12;
        *(a6 + 25) = *&__dst[65];
        break;
    }
  }

  return result;
}

uint64_t sub_220F5D5B0(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a2)
  {

    v15 = sub_220F40E94();
    if (!v7)
    {
      v8 = v15;
      v18 = a1[4];
      v19 = a1;
      v20 = a1[3];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (a4 & 1) != 0 || (a6)
      {
        (*(v18 + 8))(v8, a7, v20, v18);
      }

      else
      {
        (*(v18 + 16))(v8, a3, a5, [*(a2 + 16) sampleCount], a7, v20, v18);
      }
    }
  }

  else
  {
    sub_220F43A48();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  return v8;
}

void sub_220F5D754()
{
  OUTLINED_FUNCTION_29_2();
  v20 = v0;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = v1;
    v18 = *v4;
    v17 = *(v4 + 16);
    v6 = sub_220F5C7D4(v3, v2);
    v16 = v6;
    v8 = 0;
    v9 = *(v5 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_resourceProviders);
    v22 = *(v9 + 16);
    v19 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_supportedRenderResourceTypes;
    v21 = v9;
    for (i = v9 + 32; ; i += 16)
    {
      if (v22 == v8)
      {
        goto LABEL_14;
      }

      if (v8 >= *(v21 + 16))
      {
        break;
      }

      v11 = *(v20 + v19);
      v13 = *(*i + 56);
      *&v26 = *(*i + 48);
      v12 = v26;
      *(&v26 + 1) = v13;
      MEMORY[0x28223BE20](v6, v7);
      v15[2] = &v26;
      swift_unknownObjectRetain();
      sub_220EE8D08(v12, v13);
      LOBYTE(v11) = sub_220F77960(sub_220F5ED8C, v15, v11);
      sub_220E5E3BC(v12, v13);
      if ((v11 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v24 = v18;
      v25[0] = v17;
      sub_220FAD89C(v16, &v26);
      swift_unknownObjectRelease();
      *&v25[9] = *&v27[9];
      v24 = v26;
      *v25 = *v27;
      if (v27[24] == 255)
      {
        v6 = sub_220E3B2DC(&v24, &qword_27CF9F3B0);
      }

      else
      {
        *&v23[25] = *&v27[9];
        *v23 = v26;
        *&v23[16] = *v27;
        if (v27[24] != 4 || (OUTLINED_FUNCTION_0_74(*&v23[24], *&v23[8]), v14))
        {
          sub_220E3FF0C(v23);
LABEL_14:
          OUTLINED_FUNCTION_22();
          return;
        }

        v6 = sub_220E3FF0C(v23);
      }

      ++v8;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_220F5D9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_220FC1730();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220FC16F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220FA35A8(a2, a3);
  [*(a4 + 56) endScope];
  v16 = sub_220FC1710();
  sub_220FC1740();
  v17 = sub_220FC3030();
  if (sub_220FC3360())
  {

    sub_220FC1770();

    v18 = v24;
    if ((*(v24 + 88))(v10, v7) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v10, v7);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, v16, v17, v21, "renderTile", v19, v20, 2u);
    MEMORY[0x223D9DDF0](v20, -1, -1);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_220F5DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, int a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16)
{
  HIDWORD(v123) = a7;
  v21 = *a16;
  v22 = a16[1];
  v23 = *(a16 + 16);
  v133 = sub_220F74108(a5, a6 & 1, a8);
  v24 = *(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 16);
  if (v24 < a3)
  {
    sub_220E2F868(a1, a2, a3, *(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path), *(a4 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_path + 8), v24);
  }

  *&v157 = v21;
  *(&v157 + 1) = v22;
  LOBYTE(v158) = v23;
  sub_220F5C978();
  if (__src[257] == 255)
  {
    sub_220E3B2DC(__src, &unk_27CF9EA30);
    v25 = sub_220FC1710();
    sub_220FC3050();
    if (OUTLINED_FUNCTION_17_14())
    {
      v26 = OUTLINED_FUNCTION_20_0();
      v27 = OUTLINED_FUNCTION_7_25(v26);
      OUTLINED_FUNCTION_4_41(&dword_220E15000, v28, v29, v27, "clearTile", "");
      OUTLINED_FUNCTION_14_0();
    }

    goto LABEL_69;
  }

  memcpy(__dst, __src, 0x102uLL);
  v30 = v130[6];
  __swift_project_boxed_opaque_existential_1(v130 + 2, v130[5]);
  v31 = OUTLINED_FUNCTION_14_20();
  v32(v31, v30);
  sub_220F5CF88();

  v33 = v130[6];
  __swift_project_boxed_opaque_existential_1(v130 + 2, v130[5]);
  v34 = OUTLINED_FUNCTION_14_20();
  v35(v34, v33);
  v36 = v133;
  if (*(&v158 + 1))
  {
    sub_220E1E72C(&v157, v166);
    v37 = sub_220E3FDF0(__src, &v157);
    if (!v165)
    {
      OUTLINED_FUNCTION_1_63(v37, v38, v39, v40, v41, v42, v43, v44, v123, a12, a15, v130, v133, v136, v137, *(&v137 + 1), v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], v146, v147.i64[0], v147.i64[1], v148.i64[0], v148.i64[1], v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
      sub_220EF5194(&v150, &v146);
      if (v149 == 4 && (OUTLINED_FUNCTION_0_74(v148, v147), !v75))
      {
        sub_220E3FF0C(&v146);
        v105 = sub_220FC1710();
        sub_220FC3050();
        if (OUTLINED_FUNCTION_17_14())
        {
          v106 = OUTLINED_FUNCTION_20_0();
          v107 = OUTLINED_FUNCTION_7_25(v106);
          OUTLINED_FUNCTION_4_41(&dword_220E15000, v108, v109, v107, "clearTile", "");
          OUTLINED_FUNCTION_14_0();
        }
      }

      else
      {
        sub_220E3FF0C(&v146);
        v148.i64[0] = OUTLINED_FUNCTION_8_26(v166, v167);
        v148.i64[1] = &off_283487018;
        v146 = &v146;
        if (*(v36 + 40))
        {
          OUTLINED_FUNCTION_15_13();
          v145[0] = v76;

          swift_unknownObjectRetain();

          sub_220FC13F0();

          OUTLINED_FUNCTION_13_20(&v146, v148.i64[0]);
          OUTLINED_FUNCTION_3_42();
          swift_unknownObjectRelease();
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0(&v146);
        sub_220F5E7B0();
      }

      goto LABEL_67;
    }

    if (v165 != 1)
    {
      OUTLINED_FUNCTION_1_63(v37, v38, v39, v40, v41, v42, v43, v44, v123, a12, a15, v130, v133, v136, v137, *(&v137 + 1), v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], v146, v147.i64[0], v147.i64[1], v148.i64[0], v148.i64[1], v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
      OUTLINED_FUNCTION_10_24(v77, v78, v79, v80, v81, v82, v83, v84, v125, v127, v129, v132, v135, v136, v137, *(&v137 + 1), v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], v146, v147.i64[0], v147.i64[1], v148.i64[0], v148.i64[1], v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, *(&v158 + 1), v159, v160, v161, v162);
      *v145 = v163;
      *&v145[16] = *v164;
      *&v145[25] = *&v164[9];
      v85 = sub_220FC1710();
      sub_220FC3050();
      if (sub_220FC3360())
      {
        v86 = OUTLINED_FUNCTION_20_0();
        v87 = OUTLINED_FUNCTION_7_25(v86);
        OUTLINED_FUNCTION_28_12(&dword_220E15000, v88, v89, v87, "receivedComposedResource", "");
        OUTLINED_FUNCTION_14_0();
      }

      v90 = __swift_project_boxed_opaque_existential_1(v166, v167);
      sub_220ED6038((v90 + 10), &v137, &qword_27CF9F398);
      if (v139)
      {
        sub_220E1E72C(&v137, &v141);
        v91 = a11;
        *&v136 = v91;
        *&v137 = 0x3F80000000000000;
        sub_220EF51F0();
        sub_220FC2630();
        OUTLINED_FUNCTION_13_20(&v141, v143);
        v139 = type metadata accessor for OverlayComposedTweeningShader();
        v140 = &off_283486FE8;
        *&v137 = &v136;
        v92 = *(v36 + 40);
        if (v92)
        {
          OUTLINED_FUNCTION_15_13();
          BYTE4(v136) = v93;

          swift_unknownObjectRetain();

          sub_220FC13F0();

          OUTLINED_FUNCTION_13_20(&v137, v139);
          OUTLINED_FUNCTION_25_16();
          sub_220F884F8(v94, v95, v96, v97, v92);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_0(&v137);
        v99 = sub_220FC1710();
        sub_220FC3050();
        if (OUTLINED_FUNCTION_17_14())
        {
          v100 = OUTLINED_FUNCTION_20_0();
          v101 = OUTLINED_FUNCTION_7_25(v100);
          OUTLINED_FUNCTION_4_41(&dword_220E15000, v102, v103, v101, "renderComposedTweenedResource", "");
          OUTLINED_FUNCTION_14_0();
        }

        sub_220E3FF0C(v145);
        sub_220E3FF0C(&v146);
        sub_220E3FF0C(&v150);
        sub_220E3FE4C(__src);
        sub_220E3FEB8(__dst);
        v104 = &v141;
        goto LABEL_57;
      }

      sub_220E3B2DC(&v137, &qword_27CF9F398);
      v143 = OUTLINED_FUNCTION_8_26(v166, v167);
      v144 = &off_283487018;
      *&v141 = v85;
      if (*(v36 + 40))
      {
        OUTLINED_FUNCTION_15_13();
        LOBYTE(v137) = v98;

        swift_unknownObjectRetain();

        sub_220FC13F0();

        OUTLINED_FUNCTION_13_20(&v141, v143);
        OUTLINED_FUNCTION_3_42();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0(&v141);
      sub_220F5E7B0();
      sub_220E3FF0C(v145);
      goto LABEL_66;
    }

    OUTLINED_FUNCTION_1_63(v37, v38, v39, v40, v41, v42, v43, v44, v123, a12, a15, v130, v133, v136, v137, *(&v137 + 1), v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], v146, v147.i64[0], v147.i64[1], v148.i64[0], v148.i64[1], v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
    OUTLINED_FUNCTION_10_24(v45, v46, v47, v48, v49, v50, v51, v52, v124, v126, v128, v131, v134, v136, v137, *(&v137 + 1), v138, v139, v140, v141, *(&v141 + 1), v142, v143, v144, *v145, *&v145[8], *&v145[16], *&v145[24], *&v145[32], *&v145[40], v146, v147.i64[0], v147.i64[1], v148.i64[0], v148.i64[1], v149, v150, v151, v152, v153, v154, v155, v156, v157, *(&v157 + 1), v158, *(&v158 + 1), v159, v160, v161, v162);
    v53 = sub_220FC1710();
    sub_220FC3050();
    if (sub_220FC3360())
    {
      v54 = OUTLINED_FUNCTION_20_0();
      v55 = OUTLINED_FUNCTION_7_25(v54);
      OUTLINED_FUNCTION_28_12(&dword_220E15000, v56, v57, v55, "receivedSecondaryRenderResource", "");
      OUTLINED_FUNCTION_14_0();
    }

    sub_220EF5194(&v150, v145);
    OUTLINED_FUNCTION_20_15();
    if (v58)
    {
      OUTLINED_FUNCTION_0_74(*&v145[24], *&v145[8]);
      if (!v59)
      {
        sub_220E3FF0C(v145);
        sub_220EF5194(&v146, v145);
        OUTLINED_FUNCTION_20_15();
        if (v58)
        {
          OUTLINED_FUNCTION_0_74(*&v145[24], *&v145[8]);
          if (!v60)
          {
            sub_220E3FF0C(v145);
            v118 = sub_220FC1710();
            sub_220FC3050();
            if (OUTLINED_FUNCTION_17_14())
            {
              v119 = OUTLINED_FUNCTION_20_0();
              v120 = OUTLINED_FUNCTION_7_25(v119);
              OUTLINED_FUNCTION_4_41(&dword_220E15000, v121, v122, v120, "clearTile", "");
              OUTLINED_FUNCTION_14_0();
            }

            goto LABEL_66;
          }
        }
      }
    }

    sub_220E3FF0C(v145);
    sub_220EF5194(&v150, v145);
    OUTLINED_FUNCTION_20_15();
    if (v58 && (OUTLINED_FUNCTION_0_74(*&v145[24], *&v145[8]), !v61))
    {
      sub_220E3FF0C(v145);
      *&v145[24] = OUTLINED_FUNCTION_8_26(v166, v167);
      *&v145[32] = &off_283487018;
      *v145 = v53;
      if (*(v36 + 40))
      {
        OUTLINED_FUNCTION_15_13();
        LOBYTE(v141) = v110;

        swift_unknownObjectRetain();

        sub_220FC13F0();

        OUTLINED_FUNCTION_13_20(v145, *&v145[24]);
LABEL_61:
        OUTLINED_FUNCTION_3_42();
        swift_unknownObjectRelease();
LABEL_63:
        __swift_destroy_boxed_opaque_existential_0(v145);
        sub_220F5E7B0();
LABEL_66:
        sub_220E3FF0C(&v146);
LABEL_67:
        sub_220E3FF0C(&v150);
        sub_220E3FE4C(__src);
        sub_220E3FEB8(__dst);
        goto LABEL_68;
      }
    }

    else
    {
      sub_220E3FF0C(v145);
      sub_220EF5194(&v146, v145);
      OUTLINED_FUNCTION_20_15();
      if (v58 && (OUTLINED_FUNCTION_0_74(*&v145[24], *&v145[8]), !v62))
      {
        sub_220E3FF0C(v145);
      }

      else
      {
        sub_220E3FF0C(v145);
        v63 = __swift_project_boxed_opaque_existential_1(v166, v167);
        sub_220ED6038((v63 + 5), &v141, &qword_27CF9F3A8);
        if (v143)
        {
          sub_220E1E72C(&v141, v145);
          v64 = a11;
          *(&v136 + 1) = v64;
          *&v141 = 0x3F80000000000000;
          sub_220EF51F0();
          sub_220FC2630();
          OUTLINED_FUNCTION_13_20(v145, *&v145[24]);
          v143 = type metadata accessor for OverlayTweeningShader();
          v144 = &off_283487000;
          *&v141 = &v136 + 4;
          v65 = *(v36 + 40);
          if (v65)
          {
            OUTLINED_FUNCTION_15_13();
            LOBYTE(v137) = v66;

            swift_unknownObjectRetain();

            sub_220FC13F0();

            OUTLINED_FUNCTION_13_20(&v141, v143);
            OUTLINED_FUNCTION_25_16();
            sub_220F88340(v67, v68, v69, v65);
            swift_unknownObjectRelease();
          }

          else
          {
          }

          __swift_destroy_boxed_opaque_existential_0(&v141);
          v111 = sub_220FC1710();
          sub_220FC3050();
          if (OUTLINED_FUNCTION_17_14())
          {
            v112 = OUTLINED_FUNCTION_20_0();
            v113 = OUTLINED_FUNCTION_7_25(v112);
            OUTLINED_FUNCTION_4_41(&dword_220E15000, v114, v115, v113, "renderTweenedResource", "");
            OUTLINED_FUNCTION_14_0();
          }

          sub_220E3FF0C(&v146);
          sub_220E3FF0C(&v150);
          sub_220E3FE4C(__src);
          sub_220E3FEB8(__dst);
          v104 = v145;
LABEL_57:
          __swift_destroy_boxed_opaque_existential_0(v104);
LABEL_68:
          __swift_destroy_boxed_opaque_existential_0(v166);
          goto LABEL_69;
        }

        sub_220E3B2DC(&v141, &qword_27CF9F3A8);
      }

      *&v145[24] = OUTLINED_FUNCTION_8_26(v166, v167);
      *&v145[32] = &off_283487018;
      *v145 = v53;
      if (*(v36 + 40))
      {
        OUTLINED_FUNCTION_15_13();
        LOBYTE(v141) = v116;

        swift_unknownObjectRetain();

        sub_220FC13F0();

        OUTLINED_FUNCTION_13_20(v145, *&v145[24]);
        goto LABEL_61;
      }
    }

    goto LABEL_63;
  }

  sub_220E3B2DC(&v157, &qword_27CF9E410);
  v70 = sub_220FC1710();
  sub_220FC3050();
  if (OUTLINED_FUNCTION_17_14())
  {
    v71 = OUTLINED_FUNCTION_20_0();
    v72 = OUTLINED_FUNCTION_7_25(v71);
    OUTLINED_FUNCTION_4_41(&dword_220E15000, v73, v74, v72, "clearTile", "");
    OUTLINED_FUNCTION_14_0();
  }

  sub_220E3FE4C(__src);
  sub_220E3FEB8(__dst);
LABEL_69:
  sub_220F742A0();
  OUTLINED_FUNCTION_60_2();
}

void sub_220F5E7B0()
{
  log = sub_220FC1710();
  v0 = sub_220FC3050();
  if (sub_220FC3360())
  {
    v1 = OUTLINED_FUNCTION_20_0();
    *v1 = 0;
    v2 = sub_220FC16E0();
    _os_signpost_emit_with_name_impl(&dword_220E15000, log, v0, v2, "renderSingleResource", "", v1, 2u);
    OUTLINED_FUNCTION_15();
  }
}

BOOL sub_220F5E868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if ((*(a1 + 56) & 1) == 0 && (*(a1 + 8) == a2 ? (v5 = *(a1 + 16) == a3) : (v5 = 0), v5 ? (v6 = *(a1 + 24) == a4) : (v6 = 0), v6))
  {
    return *(a1 + 32) == a5;
  }

  else
  {
    return 0;
  }
}

void sub_220F5E8A4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v9 = a1;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  v17 = a6;
  v18 = v9;
  v19 = a7;
  v20 = a2;
  if ((*(a8 + 56) & 1) == 0)
  {
    v11 = *(a8 + 16);
    v14[0] = *a8;
    v14[1] = v11;
    v14[2] = *(a8 + 32);
    v15 = *(a8 + 48);
    if (a9)
    {
      swift_unknownObjectRetain();
      sub_220EB6A28(&v16, v14, a9);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = *(Strong + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelReaderInflightSemaphore);

    sub_220FC30B0();
  }
}

uint64_t sub_220F5E980()
{
  swift_unknownObjectRelease();
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  sub_220E3FCD0(__dst);
  v1 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_signposter;
  sub_220FC1720();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_viewportManager);

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_delegate);

  return sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelDelegate);
}

uint64_t sub_220F5EA6C()
{
  sub_220F5ADAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for OverlayRenderer()
{
  result = qword_27CF9F378;
  if (!qword_27CF9F378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F5EB18()
{
  result = sub_220FC1720();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_220F5ECE4(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest;
  v3 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v3;
  *(v2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(v2 + 41) = result;
  return result;
}

uint64_t sub_220F5ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + *a5 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_220F5EDAC()
{
  result = qword_27CF9F3B8;
  if (!qword_27CF9F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F3B8);
  }

  return result;
}

uint64_t sub_220F5EF40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 138))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 137);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_220F5EF7C(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    bzero(a1, 0x8AuLL);
    *a1 = v5;
    if (a3 >= 0xFE)
    {
      *(a1 + 138) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 138) = 0;
    }

    if (a2)
    {
      *(a1 + 137) = -a2;
    }
  }
}

void sub_220F5EFF0(unsigned int *a1, unsigned int a2)
{
  if (a2 > 2)
  {
    v3 = a2 - 3;
    bzero(a1, 0x89uLL);
    *a1 = v3;
    LOBYTE(a2) = 3;
  }

  *(a1 + 137) = a2;
}

uint64_t sub_220F5F058(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 258))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 257);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_220F5F094(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    v5 = a2 - 254;
    bzero(a1, 0x102uLL);
    *a1 = v5;
    if (a3 >= 0xFE)
    {
      *(a1 + 258) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(a1 + 258) = 0;
    }

    if (a2)
    {
      *(a1 + 257) = -a2;
    }
  }
}

void sub_220F5F108(unsigned int *a1, unsigned int a2)
{
  if (a2 > 2)
  {
    v3 = a2 - 3;
    bzero(a1, 0x101uLL);
    *a1 = v3;
    LOBYTE(a2) = 3;
  }

  *(a1 + 257) = a2;
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return sub_220FC3360();
}

uint64_t OUTLINED_FUNCTION_18_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_220E3B2DC(va, v13);
}

double OUTLINED_FUNCTION_26_15()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

void OUTLINED_FUNCTION_28_12(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v8, v6, a4, a5, a6, v7, 2u);
}

void OUTLINED_FUNCTION_29_11(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6)
{

  _os_signpost_emit_with_name_impl(a1, v7, v8, a4, a5, a6, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_31_9(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + v3);
}

uint64_t OUTLINED_FUNCTION_32_10()
{

  return swift_beginAccess();
}

uint64_t sub_220F5F40C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (v3 == 5)
  {
    return 2;
  }

  if (v3 != 4 && v3 != 3)
  {
    if (a2 == 1)
    {
      if (qword_2812C7508 != -1)
      {
        OUTLINED_FUNCTION_8_17();
      }

      v6 = sub_220E1B804();

      if ((v6 & 1) != 0 && !v3)
      {
        if (qword_2812C5EC8 != -1)
        {
          OUTLINED_FUNCTION_16();
        }

        v11 = sub_220FC17A0();
        __swift_project_value_buffer(v11, qword_2812C5ED0);
        v12 = sub_220FC1780();
        v13 = sub_220FC2E10();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_220E15000, v12, v13, "Invalid precipitation kind supplied!", v14, 2u);
          MEMORY[0x223D9DDF0](v14, -1, -1);
        }
      }

      return 1;
    }

    else if (a2 == 2)
    {
      if (qword_2812C7508 != -1)
      {
        OUTLINED_FUNCTION_8_17();
      }

      v4 = sub_220E1B804();

      if (v4)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            return v3;
          }
        }

        else
        {
          if (qword_2812C5EC8 != -1)
          {
            OUTLINED_FUNCTION_16();
          }

          v7 = sub_220FC17A0();
          __swift_project_value_buffer(v7, qword_2812C5ED0);
          v8 = sub_220FC1780();
          v9 = sub_220FC2E10();
          if (os_log_type_enabled(v8, v9))
          {
            v2 = 2;
            v10 = swift_slowAlloc();
            *v10 = 0;
            _os_log_impl(&dword_220E15000, v8, v9, "Invalid precipitation kind supplied!", v10, 2u);
            MEMORY[0x223D9DDF0](v10, -1, -1);

            return v2;
          }
        }
      }

      return 2;
    }
  }

  return v2;
}

id sub_220F5F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char a9, uint64_t *a10)
{
  v11 = v10;
  v14 = sub_220FC1160();
  MEMORY[0x28223BE20](v14 - 8, v15);
  OUTLINED_FUNCTION_3();
  v33 = a10[1];
  v34 = *a10;
  v32 = *(a10 + 16);
  v16 = OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_tasks;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D900);
  sub_220E304BC();
  *&v10[v16] = sub_220FC2600();
  v17 = OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_pendingPaths;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D918);
  *&v10[v17] = sub_220FC2600();
  v18 = OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_lock;
  sub_220FC1150();
  sub_220FC1180();
  swift_allocObject();
  *&v10[v18] = sub_220FC1170();
  v19 = &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_blendMode];
  *v19 = 0;
  v19[4] = 0;
  *&v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_opacity] = 0x3FF0000000000000;
  *&v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_colorMap] = 0;
  v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_shouldRunImplicationTimer] = 0;
  sub_220E1E2A8(a1, &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_appConfigurationManager]);
  memcpy(&v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayDescriptor], a2, 0xC8uLL);
  v20 = &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer];
  *v20 = a3;
  *(v20 + 1) = a4;
  v21 = &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_layerInfo];
  *v21 = a5;
  v21[12] = BYTE4(a6);
  *(v21 + 2) = a6;
  sub_220E5ADF8(a7, &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration]);
  v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_fetchesTiles] = a8;
  v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_requiresPixelData] = a9;
  v22 = &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose];
  *v22 = v34;
  *(v22 + 1) = v33;
  v22[16] = v32;
  if ((a6 & 0x8000000000) != 0)
  {
    memcpy(v41, (a2 + 16), sizeof(v41));
    sub_220F15E3C(v39);
    memcpy(v40, v39, sizeof(v40));
    if (sub_220E6E944(v40) == 1)
    {
      swift_unknownObjectRetain();
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v24 = v40[2];
      v25 = v40[3];
      swift_unknownObjectRetain();
      sub_220F62250(v39);
    }

    v26 = &v11[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_baseZoom];
    *v26 = v24;
    v26[8] = v25 & 1;
  }

  else
  {
    v23 = &v10[OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_baseZoom];
    *v23 = 0;
    v23[8] = 1;
    swift_unknownObjectRetain();
  }

  v38.receiver = v11;
  v38.super_class = type metadata accessor for MapKitDynamicTileOverlay();
  v27 = objc_msgSendSuper2(&v38, sel_init);
  swift_unknownObjectRelease();
  sub_220E83244(a7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v27;
}

void sub_220F5FAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_220FBFFD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_220F5FB1C()
{
  v1 = sub_220FC0E70();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = sub_220FC0CA0();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  if (qword_2812CA130 != -1)
  {
    swift_once();
  }

  if (sub_220FC0A50())
  {
    sub_220FC0AB0();
    sub_220FC0A90();
    if (qword_27CF9C130 != -1)
    {
      swift_once();
    }

    sub_220FC0A80();

    return v19;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_appConfigurationManager), *(v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_appConfigurationManager + 24));
    sub_220FC0F40();
    sub_220FC0C90();
    (*(v11 + 8))(v16, v9);
    v17 = sub_220FC0DE0();
    (*(v3 + 8))(v8, v1);
  }

  return v17;
}

uint64_t sub_220F5FD48(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_blendMode;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_220F5FD74()
{
  memcpy(__dst, (v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayDescriptor + 16), sizeof(__dst));
  memcpy(v9, (v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayDescriptor + 16), sizeof(v9));
  switch(sub_220E435CC(v9))
  {
    case 1u:
      v2 = sub_220E22B0C(v9);
      memcpy(v7, __dst, sizeof(v7));
      v3 = sub_220E22B0C(v7);
      v4 = &qword_27CF9E3A0;
      goto LABEL_5;
    case 2u:
      v5 = *(sub_220E22B0C(v9) + 16);
      goto LABEL_7;
    case 4u:
      v2 = sub_220E22B0C(v9);
      memcpy(v7, __dst, sizeof(v7));
      v3 = sub_220E22B0C(v7);
      v4 = &qword_27CF9E398;
LABEL_5:
      sub_220E4D214(v3, &v6, v4);

      sub_220EC03FC(v2);
      v5 = *(v2 + 16);
LABEL_7:
      if (v5 >= 0)
      {
        result = v5;
      }

      else
      {
        result = 2;
      }

      break;
    default:
      sub_220E22B0C(v9);
      result = -1;
      break;
  }

  return result;
}

uint64_t sub_220F5FEB4()
{
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_requiresPixelData))
  {
    return 1;
  }

  memcpy(__dst, (v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayDescriptor + 16), sizeof(__dst));
  v2 = sub_220E435CC(__dst);
  return (v2 < 5) & (0x16u >> v2);
}

int64_t *sub_220F5FF20()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayDescriptor;
  memcpy(__dst, (v2 + 16), sizeof(__dst));
  memcpy(v19, (v2 + 16), 0xB8uLL);
  switch(sub_220E435CC(v19))
  {
    case 1u:
      v4 = sub_220E22B0C(v19);
      memcpy(v17, __dst, sizeof(v17));
      v5 = sub_220E22B0C(v17);
      v6 = &qword_27CF9E3A0;
      goto LABEL_5;
    case 2u:
      result = sub_220E22B0C(v19);
      v3 = *result;
      if (*result < 0)
      {
        goto LABEL_19;
      }

      goto LABEL_6;
    case 4u:
      v4 = sub_220E22B0C(v19);
      memcpy(v17, __dst, sizeof(v17));
      v5 = sub_220E22B0C(v17);
      v6 = &qword_27CF9E398;
LABEL_5:
      sub_220E4D214(v5, v16, v6);

      result = sub_220EC03FC(v4);
      v3 = *v4;
      if (*v4 < 0)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_6:
      if (!v3)
      {
        return MEMORY[0x277D84F90];
      }

LABEL_7:
      v17[0] = MEMORY[0x277D84F90];
      sub_220F0B3A8(0, v3, 0);
      v8 = v17[0];
      v9 = v1 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_timeConfiguration;
      v10 = 0;
      v11 = *(v9 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
      while (1)
      {
        result = sub_220FC0230();
        v13 = v12 + v11 * v10;
        if (COERCE__INT64(fabs(v13)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_20;
        }

        if (v13 <= -1.0)
        {
          goto LABEL_21;
        }

        if (v13 >= 1.84467441e19)
        {
          goto LABEL_22;
        }

        v17[0] = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_220F0B3A8((v14 > 1), v15 + 1, 1);
          v8 = v17[0];
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 8 * v15 + 32) = v13;
        if (v3 == v10)
        {
          break;
        }

        if (v3 == ++v10)
        {
          return v8;
        }
      }

LABEL_23:
      __break(1u);
      return result;
    default:
      sub_220E22B0C(v19);
      v3 = 1;
      goto LABEL_7;
  }
}

uint64_t sub_220F60190()
{
  OUTLINED_FUNCTION_8_27();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_19_13(v9);
  OUTLINED_FUNCTION_15_14();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v2;
  *(v10 + 48) = v4;
  *(v10 + 56) = v0;
  *(v10 + 64) = v6;
  *(v10 + 72) = v5;
  *(v10 + 80) = v3;
  v11 = v1;

  OUTLINED_FUNCTION_13_21();
  sub_220E861C4();
  OUTLINED_FUNCTION_9_22(v12, OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_lock);

  OUTLINED_FUNCTION_14_21();
}

uint64_t sub_220F602C0()
{
  OUTLINED_FUNCTION_8_27();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_19_13(v9);
  OUTLINED_FUNCTION_15_14();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v2;
  *(v10 + 40) = v4;
  *(v10 + 48) = v0;
  *(v10 + 56) = v6;
  *(v10 + 64) = v1;
  *(v10 + 72) = v5;
  *(v10 + 80) = v3;
  v11 = v1;

  v12 = OUTLINED_FUNCTION_13_21();
  v17 = sub_220F9BB1C(v12, v13, v14, v15, v16);
  OUTLINED_FUNCTION_9_22(v17, OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_lock);

  OUTLINED_FUNCTION_14_21();

  return v17;
}

void sub_220F60444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void, void), double a6)
{
  *(swift_allocObject() + 16) = a5;
  v12 = a6;
  if (*(a4 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_fetchesTiles) == 1)
  {
    _Block_copy(a5);
    sub_220F60190();
  }

  else
  {
    objc_allocWithZone(type metadata accessor for OverlayTile());
    _Block_copy(a5);
    v13 = sub_220E5E748(a1, a2, a3, MEMORY[0x277D84F90], v12);
    (a5)[2](a5, v13, 0);
  }

  _Block_release(a5);
}

uint64_t sub_220F60618(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_fetchesTiles) == 1)
  {
    MEMORY[0x28223BE20](result, a2);
    sub_220FC1180();

    sub_220FC1370();
  }

  return result;
}

uint64_t sub_220F60778(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  v11 = sub_220E97374(a3, a4, a5);
  swift_endAccess();
  *a1 = v11;

  swift_beginAccess();
  v12 = sub_220E97350(a3, a4, a5);
  swift_endAccess();
  *a6 = v12;
}

uint64_t sub_220F608E8(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a9;
  *(v9 + 88) = v11;
  *(v9 + 144) = a2;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 40) = a1;
  return MEMORY[0x2822009F8](sub_220F60920, 0, 0);
}

uint64_t sub_220F60920()
{
  OUTLINED_FUNCTION_38_0();
  v1 = *(v0 + 144);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F418);
  v12 = *(v0 + 80);
  *(v0 + 96) = swift_initStackObject();
  v6 = sub_220E86764();
  *(v0 + 104) = v6;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  *(v7 + 56) = v1;
  *(v7 + 64) = v12;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  *(v8 + 48) = v1;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *v9 = v0;
  v9[1] = sub_220F60AA4;
  v10 = *(v0 + 40);

  return MEMORY[0x282200830](v10, &unk_220FD6E90);
}

uint64_t sub_220F60AA4()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F60BB0()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_8_8();

  return v0();
}

uint64_t sub_220F60C08()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F60C78(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a8;
  *(v9 + 64) = a9;
  *(v9 + 112) = a1;
  *(v9 + 40) = a6;
  *(v9 + 48) = a7;
  *(v9 + 24) = a4;
  *(v9 + 32) = a5;
  *(v9 + 16) = a3;
  v10 = sub_220FC36E0();
  *(v9 + 72) = v10;
  *(v9 + 80) = *(v10 - 8);
  *(v9 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F60D48, 0, 0);
}

uint64_t sub_220F60D48()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_shouldRunImplicationTimer) == 1 && sub_220F5FB1C() >= 1)
  {
    sub_220FC2B50();
    v1 = sub_220F5FB1C();
    sub_220F450D8(v1);
    sub_220FC39C0();
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_220F60EC8;

    return sub_220F510BC();
  }

  else
  {
    sub_220FC2B50();
    v4 = OUTLINED_FUNCTION_12_21();
    sub_220E866BC(v4);

    OUTLINED_FUNCTION_8_8();

    return v5();
  }
}

uint64_t sub_220F60EC8()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v5 = v4[11];
  v6 = v4[10];
  v7 = v4[9];
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v10 + 104) = v0;

  (*(v6 + 8))(v5, v7);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_220F61024()
{
  v1 = *(v0 + 104);
  sub_220FC2B50();
  if (v1)
  {

    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_12_21();
    sub_220E866BC(v3);

    OUTLINED_FUNCTION_8_8();
  }

  return v2();
}

uint64_t sub_220F610B4()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F61110()
{
  sub_220FC1180();

  sub_220FC1370();

  result = sub_220E86674(v0);
  if (result)
  {
    sub_220FC2B00();
  }

  return result;
}

uint64_t sub_220F611E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_pendingPaths;
  swift_beginAccess();
  sub_220F19244(a2, a3, a4, a5);
  if (v11)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v10);
    *(a1 + v10) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D910);
    sub_220FC3710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D918);
    sub_220E304BC();
    sub_220FC3730();
    *(a1 + v10) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_220F61314(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 136) = a9;
  *(v9 + 144) = v13;
  *(v9 + 84) = a1;
  *(v9 + 120) = a7;
  *(v9 + 128) = a8;
  *(v9 + 104) = a5;
  *(v9 + 112) = a6;
  v10 = sub_220FC2A60();
  *(v9 + 152) = v10;
  *(v9 + 160) = *(v10 - 8);
  *(v9 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F613E8, 0, 0);
}

uint64_t sub_220F613E8()
{
  v28 = v0;
  v1 = *(v0 + 104);
  *(v0 + 56) = v1;
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 84);
  v5 = *(v0 + 112);
  *(v0 + 64) = v5;
  *(v0 + 72) = v2;
  *(v0 + 80) = v4;
  v6 = (v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_baseZoom);
  if ((*(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_baseZoom + 8) & 1) != 0 || *v6 >= v2)
  {
    v23 = v5;
    v24 = v1;
    v8 = v2;
    v10 = v4;
  }

  else
  {
    sub_220E2F7A0(*v6, v1, v5, v2);
    v8 = v7;
    v10 = v9;
    v23 = v12;
    v24 = v11;
    *(v0 + 56) = v11;
    *(v0 + 64) = v12;
    *(v0 + 72) = v7;
    *(v0 + 80) = v9;
    v4 = *(v0 + 84);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v1 = *(v0 + 104);
    v5 = *(v0 + 112);
  }

  v13 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_overlayRenderer + 8);
  ObjectType = swift_getObjectType();
  v22 = *(v0 + 136);
  (*(v13 + 16))(ObjectType, v13);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v15 = sub_220F5FF20();
  v16 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 8);
  v17 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose + 16);
  v25 = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_purpose);
  v26 = v16;
  v27 = v17;
  sub_220E5AFB8(v25, v16, v17);
  v18 = sub_220F0D17C(v24, v23, v8, v15, MEMORY[0x277D84F90], &v25, v10);
  *(v0 + 176) = v18;

  sub_220E5AE5C(v25, v26, v27);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v19 = swift_task_alloc();
  *(v0 + 184) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v0 + 56;
  *(v19 + 32) = v22;
  *(v19 + 48) = v3;
  *(v19 + 56) = v1;
  *(v19 + 64) = v5;
  *(v19 + 72) = v2;
  *(v19 + 80) = v4;
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_220F61654;

  return MEMORY[0x282200830](v20, &unk_220FD6E58);
}

uint64_t sub_220F61654()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F61758()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F617B8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 84);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v16 = *(v0 + 104);

  *(v0 + 88) = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_lock);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v16;
  *(v5 + 40) = v4;
  *(v5 + 48) = v2;
  sub_220FC1180();

  sub_220FC1370();

  *(v0 + 96) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 200);
  if (v7)
  {
    v10 = *(v0 + 160);
    v9 = *(v0 + 168);
    v11 = *(v0 + 152);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *(v0 + 136);
    v13 = v8;
    v12(0, v8);
  }

  OUTLINED_FUNCTION_32_0();

  return v14();
}

uint64_t sub_220F61990(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 104) = a1;
  *(v9 + 72) = a9;
  *(v9 + 80) = v17;
  *(v9 + 56) = a7;
  *(v9 + 64) = a8;
  *(v9 + 40) = a5;
  *(v9 + 48) = a6;
  *(v9 + 32) = a4;
  v11 = swift_task_alloc();
  *(v9 + 88) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
  *v11 = v9;
  v11[1] = sub_220F61A90;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v9 + 16, a3, v12, v13, v14);
}

uint64_t sub_220F61A90()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F61B8C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v16 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *v4;
  v8 = *(v4 + 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = objc_allocWithZone(type metadata accessor for OverlayTile());
  v12 = sub_220E5E748(v7, v8, v9, v6, v10);
  v5(v12, 0);
  *(v0 + 24) = *(v3 + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_lock);
  v13 = swift_task_alloc();
  *(v13 + 16) = v3;
  *(v13 + 24) = v16;
  *(v13 + 40) = v2;
  *(v13 + 48) = v1;
  sub_220FC1180();

  sub_220FC1370();

  OUTLINED_FUNCTION_8_8();

  return v14();
}

uint64_t sub_220F61D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v10 = OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_tasks;
  swift_beginAccess();
  sub_220F19244(a2, a3, a4, a5);
  if (v11)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(a1 + v10);
    *(a1 + v10) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D8F8);
    sub_220FC3710();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D900);
    sub_220E304BC();
    sub_220FC3730();
    *(a1 + v10) = v13;
  }

  return swift_endAccess();
}

uint64_t sub_220F61E2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9ED20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);

  return sub_220FC2B00();
}

uint64_t sub_220F61E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, float), float a8)
{
  v15 = *a6;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v15);
  a7(a5, a2, a3, a4, isUniquelyReferenced_nonNull_native, a8);
  *(a1 + v15) = v18;
  return swift_endAccess();
}

id sub_220F61FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapKitDynamicTileOverlay();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MapKitDynamicTileOverlay()
{
  result = qword_27CF9F408;
  if (!qword_27CF9F408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220F620FC()
{
  result = type metadata accessor for WeatherMapOverlayTimeConstraints();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_220F62250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220F622D8()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_10_25();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B0F0;
  v7 = OUTLINED_FUNCTION_0_75();

  return sub_220F61314(v1, v7, v8, v9, v10, v11, v12, v2, v3);
}

uint64_t sub_220F623C4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v14 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 80);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_43(v10);
  *v11 = v12;
  v11[1] = sub_220E5B0F0;

  return sub_220F61990(v9, a1, v14, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_220F624EC()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_10_25();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B490;
  v7 = OUTLINED_FUNCTION_0_75();

  return sub_220F608E8(v7, v2, v8, v9, v10, v11, v12, v1, v3);
}

uint64_t sub_220F62604()
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_10_25();
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_43(v4);
  *v5 = v6;
  v5[1] = sub_220E5B490;
  v7 = OUTLINED_FUNCTION_0_75();

  return sub_220F60C78(v1, v7, v8, v9, v10, v11, v12, v3, v2);
}

uint64_t OUTLINED_FUNCTION_19_13(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_16()
{

  return sub_220FC2AE0();
}

_BYTE *_s14MinutePriorityOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220F62814()
{
  v0 = sub_220FBFEE0();
  if (v1)
  {
    return 0;
  }

  switch(v0)
  {
    case 0:
      return 3;
    case 10:
      return 1;
    case 30:
      return 2;
  }

  v3 = sub_220FBFEE0();
  if ((v4 & 1) == 0 && v3 == 20)
  {
    return 1;
  }

  v5 = sub_220FBFEE0();
  if ((v6 & 1) == 0 && v5 == 40)
  {
    return 1;
  }

  v7 = sub_220FBFEE0();
  result = 0;
  if ((v8 & 1) == 0 && v7 == 50)
  {
    return 1;
  }

  return result;
}

unint64_t sub_220F62898(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_220F628D4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_220F62898(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_220F62900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F628A8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_220F62930()
{
  result = qword_27CF9F420;
  if (!qword_27CF9F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F420);
  }

  return result;
}

uint64_t sub_220F62984(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_220F1AE34(a1 & 1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v2);
}

uint64_t sub_220F629D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_220F1937C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v2);
}

uint64_t sub_220F62A20(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_220F192DC(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_220F62A6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_220F1937C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v2);
}

uint64_t sub_220F62AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_220F19244(a1, a2, a3, a5);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v5);
  return swift_unknownObjectRetain();
}

void *sub_220F62B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_220F19120(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_220F62B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_220F19120(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_220FC0760();
    OUTLINED_FUNCTION_2();
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = OUTLINED_FUNCTION_27_12();
  }

  else
  {
    sub_220FC0760();
    v12 = OUTLINED_FUNCTION_38_2();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_220F62BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (v8 = sub_220F19444(a1, a2, a3, a4), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(a5 + 56);
    type metadata accessor for SnapshotManager.Options(0);
    OUTLINED_FUNCTION_2();
    sub_220F6D9E8(v11 + *(v12 + 72) * v10, a6, type metadata accessor for SnapshotManager.Options);
    v13 = OUTLINED_FUNCTION_27_12();
  }

  else
  {
    type metadata accessor for SnapshotManager.Options(0);
    v13 = OUTLINED_FUNCTION_38_2();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

double sub_220F62C94@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_220F19514(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_220E21408(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_220F62CF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_220F19614();
    if (v2)
    {
    }
  }

  return OUTLINED_FUNCTION_9();
}

uint64_t sub_220F62D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_220F19120(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_15(v3);
}

double sub_220F62D98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_220F19704(a1, a2), (v7 & 1) != 0))
  {
    sub_220E1E2A8(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_220F62DF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v5 + 4;
    v8 = *v5;
    v9 = *(v5 + 4);
    v10 = *(v5 - 1);
    v12 = v9;
    v11 = v8;
    result = v4(&v10);
    v5 = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_220F62E68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_220F62EAC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_220F6B4F0(Strong, v18);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v1 = sub_220FC17A0();
    __swift_project_value_buffer(v1, qword_2812C5ED0);
    v2 = v20;

    v3 = sub_220FC1780();
    v4 = sub_220FC2E30();
    sub_220F6D884(v18);
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v16 = v6;
      *v5 = 136380931;
      v14 = v18[0];
      v15 = v18[1];
      type metadata accessor for MKMapRect(0);
      sub_220F6D8B4(&qword_2812C5B10, type metadata accessor for MKMapRect);
      v7 = sub_220FC38F0();
      v9 = sub_220E20FF8(v7, v8, &v16);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2050;
      *(v5 + 14) = v19;
      _os_log_impl(&dword_220E15000, v3, v4, "Refreshing active overlay container. visibleMapRect=%{private}s, zoomLevel=%{public}f", v5, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D9DDF0](v6, -1, -1);
      MEMORY[0x223D9DDF0](v5, -1, -1);
    }

    sub_220F63938(&v14);
    v16 = v14;
    v17 = v15;
    sub_220FA2190(v2, &v16);
    sub_220F6D884(v18);
    sub_220F6D884(v18);
    swift_unknownObjectRelease();
    sub_220E5AE5C(v16, *(&v16 + 1), v17);
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v10 = sub_220FC17A0();
    __swift_project_value_buffer(v10, qword_2812C5ED0);
    oslog = sub_220FC1780();
    v11 = sub_220FC2E30();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_220E15000, oslog, v11, "Not refreshing active overlay container - missing dataSource", v12, 2u);
      MEMORY[0x223D9DDF0](v12, -1, -1);
    }
  }
}

uint64_t sub_220F63218(uint64_t a1, uint64_t a2)
{
  *(v2 + 440) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F62EAC();

  return swift_unknownObjectRelease();
}

uint64_t sub_220F63260(uint64_t a1, uint64_t a2)
{
  *(v2 + 456) = a2;
  swift_unknownObjectWeakAssign();
  sub_220F62EAC();

  return swift_unknownObjectRelease();
}

void sub_220F632A8()
{
  if (*(v0 + 464))
  {
    v1 = v0;
    if (*(v0 + 464) == 1)
    {
      sub_220E44768();
    }

    else
    {
      if (qword_2812C5EC8 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v2 = sub_220FC17A0();
      OUTLINED_FUNCTION_23_0(v2, qword_2812C5ED0);
      v3 = sub_220FC1780();
      v4 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_16_15(v4))
      {
        *OUTLINED_FUNCTION_20_0() = 0;
        OUTLINED_FUNCTION_11_20();
        _os_log_impl(v5, v6, v7, v8, v9, 2u);
        OUTLINED_FUNCTION_13_22();
      }

      sub_220F62EAC();
      *(v1 + 464) = 0;
      sub_220E4479C();
    }
  }
}

void sub_220F63378(uint64_t a1)
{
  if (*(v1 + 472) != a1)
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v2 = sub_220FC17A0();
    __swift_project_value_buffer(v2, qword_2812C5ED0);

    v3 = sub_220FC1780();
    v4 = sub_220FC2E30();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 136446210;
      v10 = v6;
      type metadata accessor for UIUserInterfaceStyle(0);
      sub_220F6D8B4(&qword_2812C5C58, type metadata accessor for UIUserInterfaceStyle);
      v7 = sub_220FC38F0();
      v9 = sub_220E20FF8(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_220E15000, v3, v4, "OverlayManager is updating its userInterfaceStyle. userInterfaceStyle=%{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x223D9DDF0](v6, -1, -1);
      MEMORY[0x223D9DDF0](v5, -1, -1);
    }

    sub_220F63538();
  }
}

void sub_220F63538()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v4 - 8, v5);
  MEMORY[0x28223BE20](v6, v7);
  v10 = &v48 - v9;
  if (*(v1 + 408))
  {
    v56 = v8;
    LODWORD(v57) = v3;
    v11 = *(v1 + 416);
    swift_getObjectType();
    v12 = *(v11 + 8);
    swift_unknownObjectRetain();
    v13 = OUTLINED_FUNCTION_17_15();
    v54 = v12;
    v12(v13);
    v14 = v10[200];
    OUTLINED_FUNCTION_10_26();
    __swift_project_boxed_opaque_existential_1((v1 + 248), *(v1 + 272));
    sub_220FC0AB0();
    sub_220FC0A90();
    if (qword_2812CA238 != -1)
    {
      swift_once();
    }

    sub_220FC0A80();

    if (v60[0] == 1)
    {
      v15 = OUTLINED_FUNCTION_22_14();
      v17 = sub_220EA20A0(v15, v16);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_22_14();
      v17 = sub_220F5F40C(v26, v27);
    }

    v52 = v19;
    v53 = v17;
    v55 = v20;
    LODWORD(v49) = v18;
    HIDWORD(v49) = v18 & 0x100;
    v59 = v14;
    v28 = OUTLINED_FUNCTION_17_15();
    v29 = v54;
    v54(v28);
    v30 = *v10;
    v50 = *(v10 + 1);
    v51 = v30;
    sub_220EA10E4(v30, v50);
    HIDWORD(v48) = v14;
    sub_220E436E0(v10, type metadata accessor for WeatherMapOverlay);
    v31 = v56;
    v32 = OUTLINED_FUNCTION_17_15();
    v29(v32);
    memcpy(v60, (v31 + 16), 0xB8uLL);
    sub_220E56868(v60, v58);
    sub_220E436E0(v31, type metadata accessor for WeatherMapOverlay);
    LODWORD(v56) = *(v1 + 480);
    v33 = *(v1 + 472);
    v34 = OUTLINED_FUNCTION_17_15();
    v36 = v35(v34);
    OUTLINED_FUNCTION_2_3();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = BYTE4(v48);
    *(v38 + 25) = v57 & 1;
    v39 = HIDWORD(v49) & 0xFFFFFFFE | v49 & 1;

    LOBYTE(v46) = v36;
    v45 = v33;
    LOBYTE(v42) = v56;
    v41 = v50;
    v40 = v51;
    sub_220F640D4(&v59, v51, v50, v60, v53, v39, v52, v55, v42, v43, v44, v45, v46, sub_220F6D8FC, v38, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58[0]);
    sub_220E5E3D0(v40, v41);
    swift_unknownObjectRelease();

    sub_220E56918(v60);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v21 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v21, qword_2812C5ED0);
    v57 = sub_220FC1780();
    v22 = sub_220FC2E30();
    if (os_log_type_enabled(v57, v22))
    {
      v23 = OUTLINED_FUNCTION_20_0();
      *v23 = 0;
      _os_log_impl(&dword_220E15000, v57, v22, "Not updating render settings for current overlay as there is no active overlay container", v23, 2u);
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_22();
  }
}

void sub_220F63928(uint64_t a1)
{
  v2 = *(v1 + 472);
  *(v1 + 472) = a1;
  sub_220F63378(v2);
}

void sub_220F63938(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_220F00154();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v2 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v2, qword_2812C5ED0);
    v3 = sub_220FC1780();
    v4 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_16_15(v4))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_11_20();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_13_22();
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 2;
  }
}

uint64_t sub_220F63A30()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76480] object:0];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(v0 + 96);
  __swift_destroy_boxed_opaque_existential_0(v0 + 136);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 192);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 248);
  __swift_destroy_boxed_opaque_existential_0(v0 + 288);
  __swift_destroy_boxed_opaque_existential_0(v0 + 328);
  sub_220E3B2DC(v0 + 368, &qword_27CF9F440);
  swift_unknownObjectRelease();

  sub_220E22990(v0 + 432);
  sub_220E22990(v0 + 448);
  return v0;
}

uint64_t sub_220F63B20()
{
  sub_220F63A30();

  return MEMORY[0x2821FE8D8](v0, 481, 7);
}

void sub_220F63B54()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_220E9506C();

  sub_220F63538();
}

_BYTE *storeEnumTagSinglePayload for WeatherMapGestureInteractionState(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220F63CEC()
{
  result = qword_27CF9F428;
  if (!qword_27CF9F428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F428);
  }

  return result;
}

void sub_220F63D40()
{
  v2 = *(v0 + 408);
  if (v2)
  {
    OUTLINED_FUNCTION_12_22();
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType, v4);
    v6[2] = v0;
    v6[3] = v2;
    v6[4] = v1;
    v5 = *(v1 + 120);
    swift_unknownObjectRetain();
    v5(sub_220F6DA8C, v6, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

void sub_220F63E04(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5)
{
  if (a1)
  {
    v8 = v5;
    ObjectType = swift_getObjectType();
    v14 = ObjectType;
    if (a3)
    {
      v15 = *(a2 + 24);
      swift_unknownObjectRetain();
      v16 = v15(v14, a2);
      v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
      v26 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      v31 = sub_220F6BB80;
      v32 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_220F6DA78;
      v30 = &block_descriptor_80;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = a2;
      v21[4] = v8;
      v21[5] = v16;
      v21[6] = a4;
      v21[7] = a5;
      v31 = sub_220F6BB88;
      v32 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_220EFF6B0;
      v30 = &block_descriptor_86;
      v22 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v26 animateWithDuration:v19 animations:v22 completion:0.3];
      swift_unknownObjectRelease();
      _Block_release(v22);
      _Block_release(v19);
    }

    else
    {
      MEMORY[0x28223BE20](ObjectType, v13);
      v25[2] = v8;
      v25[3] = a1;
      v25[4] = a2;
      v23 = *(a2 + 120);
      swift_unknownObjectRetain();
      v24 = v23(sub_220F6BB74, v25, v14, a2);
      (a4)(v24);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    a4();
  }
}

void sub_220F640D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned __int8 a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_29_2();
  v119 = v27;
  v29 = v28;
  v129 = v30;
  v32 = v31;
  v128 = v33;
  v132 = v34;
  v121 = v35;
  v120 = v36;
  v38 = v37;
  v127 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v126 = v39;
  MEMORY[0x28223BE20](v40, v41);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10_13(v43 - v42);
  v125 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v123 = v44;
  MEMORY[0x28223BE20](v45, v46);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_10_13(v48 - v47);
  v49 = sub_220FC02B0();
  OUTLINED_FUNCTION_6();
  v113 = v50;
  MEMORY[0x28223BE20](v51, v52);
  OUTLINED_FUNCTION_3();
  v55 = v54 - v53;
  v56 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  v57 = OUTLINED_FUNCTION_29(v56);
  v111 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57, v61);
  OUTLINED_FUNCTION_10_13(&v103 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62, v63);
  OUTLINED_FUNCTION_10_13(&v103 - v64);
  v65 = *v38;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v118 = a27;
  v116 = a26;
  v115 = a25;
  v112 = a24;
  v66 = v32 & 0x100;
  v114 = a21;
  v67 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v67, qword_2812C5ED0);

  v68 = sub_220FC1780();
  v69 = sub_220FC2E30();

  v70 = os_log_type_enabled(v68, v69);
  v130 = v29;
  v110 = v65;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v107 = v49;
    v137[0] = v72;
    *v71 = 136446466;
    LOBYTE(v133) = v65;
    sub_220E561E0();
    v73 = sub_220FC38F0();
    v75 = sub_220E20FF8(v73, v74, v137);

    *(v71 + 4) = v75;
    *(v71 + 12) = 2082;
    v133 = v128;
    v109 = v32 & 1;
    LOBYTE(v134) = v32 & 1;
    v108 = v66 >> 8;
    BYTE1(v134) = (v32 & 0x100) >> 8;
    v135 = v129;
    v136 = v130;
    sub_220EA1EF8();
    v76 = sub_220FC38F0();
    v78 = sub_220E20FF8(v76, v77, v137);

    *(v71 + 14) = v78;
    _os_log_impl(&dword_220E15000, v68, v69, "Creating new overlay container. overlayKind=%{public}s, renderSettings=%{public}s", v71, 0x16u);
    swift_arrayDestroy();
    v49 = v107;
    OUTLINED_FUNCTION_15();
    v29 = v130;
    OUTLINED_FUNCTION_15();
  }

  else
  {

    v109 = v32 & 1;
    v108 = v66 >> 8;
  }

  OUTLINED_FUNCTION_23();
  v79 = swift_allocObject();
  v107 = v79;
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  OUTLINED_FUNCTION_23();
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  *(v80 + 24) = 0;
  v103 = v80;
  v81 = v119;
  sub_220F63938(&v133);
  v106 = v133;
  v105 = v134;
  v104 = v135;
  __swift_project_boxed_opaque_existential_1(v81 + 17, v81[20]);
  sub_220FC0670();
  v82 = v131;
  v83 = v132;
  sub_220F7AC60(v132, v55, v131);
  (*(v113 + 8))(v55, v49);
  v113 = v81[53];
  v84 = v82;
  v85 = v117;
  sub_220F6D9E8(v84, v117, type metadata accessor for WeatherMapOverlayTimeConstraints);
  v86 = (*(v111 + 80) + 264) & ~*(v111 + 80);
  v87 = (v60 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 39) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  *(v89 + 16) = v128;
  *(v89 + 24) = v109;
  *(v89 + 25) = v108;
  *(v89 + 32) = v129;
  *(v89 + 40) = v29;
  *(v89 + 48) = v80;
  *(v89 + 56) = v81;
  memcpy((v89 + 64), v83, 0xB8uLL);
  v90 = v120;
  v91 = v121;
  *(v89 + 248) = v120;
  *(v89 + 256) = v91;
  sub_220F6B9D0(v85, v89 + v86, type metadata accessor for WeatherMapOverlayTimeConstraints);
  *(v89 + v87) = v112;
  v92 = v89 + v111;
  v93 = v105;
  *v92 = v106;
  *(v92 + 8) = v93;
  *(v92 + 16) = v104;
  v94 = v89 + v88;
  *v94 = v107;
  *(v94 + 8) = v114 & 1;
  *(v94 + 9) = v110;
  *(v94 + 10) = v115;
  v95 = (v89 + ((v88 + 18) & 0xFFFFFFFFFFFFFFF8));
  v96 = v118;
  *v95 = v116;
  v95[1] = v96;
  v137[4] = sub_220F6B830;
  v137[5] = v89;
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 1107296256;
  v137[2] = sub_220F6DA78;
  v137[3] = &block_descriptor_25;
  v97 = _Block_copy(v137);

  sub_220E56868(v132, &v133);
  sub_220EA10E4(v90, v91);

  v98 = v122;
  sub_220FC2350();
  v133 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_44();
  sub_220F6D8B4(v99, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  v101 = v124;
  v102 = v127;
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v98, v101, v97);
  _Block_release(v97);
  (*(v126 + 8))(v101, v102);
  (*(v123 + 8))(v98, v125);
  sub_220E436E0(v131, type metadata accessor for WeatherMapOverlayTimeConstraints);

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F649B0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, const void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, void (*a19)(uint64_t, _UNKNOWN **), uint64_t a20)
{
  v220 = a7;
  v237 = a3;
  v238 = a1;
  LODWORD(v235) = a2;
  v233 = a20;
  v234 = a19;
  v231 = a18;
  v221 = a17;
  LODWORD(v232) = a16;
  v228 = a14;
  v222 = a13;
  v236 = a11;
  v219 = a12;
  v223 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  v25 = MEMORY[0x28223BE20](v223, v24);
  v218 = &v207 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v212 = &v207 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v209 = &v207 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v210 = &v207 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v216 = &v207 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v214 = &v207 - v40;
  v41 = type metadata accessor for WeatherMapOverlay();
  v42 = v41 - 8;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v217 = &v207 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44, v46);
  v211 = &v207 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v208 = &v207 - v51;
  v53 = MEMORY[0x28223BE20](v50, v52);
  v207 = &v207 - v54;
  v56 = MEMORY[0x28223BE20](v53, v55);
  v215 = &v207 - v57;
  v59 = MEMORY[0x28223BE20](v56, v58);
  v229 = &v207 - v60;
  v62 = MEMORY[0x28223BE20](v59, v61);
  v213 = &v207 - v63;
  MEMORY[0x28223BE20](v62, v64);
  v66 = &v207 - v65;
  v225 = a15;
  v226 = a5;
  v224 = (a5 + 2);
  v240[2] = a5 + 2;
  v240[3] = a6;
  v67 = v220;
  v240[4] = v220;
  v240[5] = a8;
  v240[6] = a9;
  v240[7] = a10;
  v240[8] = v236;
  v240[9] = v238;
  LODWORD(v230) = v235 & 1;
  v241 = v235 & 0x101;
  v227 = (v235 >> 8) & 1;
  v242 = v237;
  v243 = a4;
  v244 = v219;
  v245 = v222;
  v246 = v228;
  v222 = (a15 + 16);
  v247 = a15 + 16;
  v228 = v232 & 1;
  v248 = v232;
  v232 = a4;
  v68 = a4;
  v69 = v221;
  sub_220F62DF0(sub_220F6B958, v240, v68);
  v70 = &v66[*(v42 + 36)];
  sub_220F6D9E8(a10, v70, type metadata accessor for WeatherMapOverlayTimeConstraints);
  *v66 = a8;
  *(v66 + 1) = a9;
  memcpy(v66 + 16, v67, 0xB8uLL);
  v239 = v66;
  v66[200] = v69;
  v71 = *(a6 + 352);
  v235 = a6;
  __swift_project_boxed_opaque_existential_1((a6 + 328), v71);
  sub_220EA10E4(a8, a9);
  sub_220E56868(v67, v259);
  sub_220F7CF8C(v260);
  if ((v69 - 3) < 2)
  {
    v72 = v239;
    v73 = v217;
    sub_220F6D9E8(v239, v217, type metadata accessor for WeatherMapOverlay);
    memcpy(v259, (v72 + 16), sizeof(v259));
    LODWORD(v72) = sub_220E435CC(v259);
    v74 = sub_220E22B0C(v259);
    switch(v72)
    {
      case 1:
      case 2:
      case 4:
        v75 = v230;
        v76 = sub_220F0AB8C(*v74, v73);
        sub_220E436E0(v73, type metadata accessor for WeatherMapOverlay);
        break;
      default:
        v75 = v230;
        sub_220E436E0(v73, type metadata accessor for WeatherMapOverlay);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
        v86 = sub_220FC02B0();
        v87 = *(v86 - 8);
        v88 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_220FC8E30;
        (*(v87 + 16))(v76 + v88, v70, v86);
        break;
    }

    v89 = *(v70 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
    v90 = sub_220FC02B0();
    v91 = v218;
    (*(*(v90 - 8) + 16))(v218, v70, v90);
    v92 = v223;
    *(v91 + *(v223 + 20)) = v76;
    *(v91 + *(v92 + 24)) = v89;
    v93 = v229;
    sub_220F6D9E8(v239, v229, type metadata accessor for WeatherMapOverlay);
    sub_220ECC944(v260, &v256, &qword_27CF9D0D0);
    swift_beginAccess();
    v94 = *(v225 + 16);
    v95 = *(v225 + 24);
    swift_beginAccess();
    v96 = v226[2];
    v97 = v226[3];
    type metadata accessor for WeatherMapOverlayContainer();
    v98 = swift_allocObject();
    v99 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition);
    *v99 = 0;
    v99[1] = 0;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader) = 0;
    v100 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer) = 1;
    *(v98 + 16) = v236;
    sub_220F6B9D0(v91, v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, type metadata accessor for WeatherMapOverlayFramesMetadata);
    sub_220F6B9D0(v93, v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay, type metadata accessor for WeatherMapOverlay);
    v101 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings;
    v102 = v238;
    *v101 = v238;
    *(v101 + 8) = v75;
    *(v101 + 9) = v227;
    v103 = v232;
    *(v101 + 16) = v237;
    *(v101 + 24) = v103;
    v104 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_rendererContext;
    v105 = v257;
    *v104 = v256;
    *(v104 + 16) = v105;
    *(v104 + 32) = v258;
    v106 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
    *v106 = v94;
    v106[1] = v95;
    v107 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
    *v107 = v96;
    v107[1] = v97;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData) = v228;
    *(v100 + 8) = &off_283486100;
    swift_unknownObjectWeakAssign();
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_supportedRegion) = v231;
    *(v98 + 32) = v75;
    *(v98 + 24) = v102;
    swift_unknownObjectRetain();
    goto LABEL_28;
  }

  if (v69 == 5)
  {
    v77 = v239;
    v78 = v213;
    sub_220F6D9E8(v239, v213, type metadata accessor for WeatherMapOverlay);
    memcpy(v259, (v77 + 16), sizeof(v259));
    LODWORD(v77) = sub_220E435CC(v259);
    v79 = sub_220E22B0C(v259);
    switch(v77)
    {
      case 1:
      case 2:
      case 4:
        v80 = sub_220F0AB8C(*v79, v78);
        sub_220E436E0(v78, type metadata accessor for WeatherMapOverlay);
        break;
      default:
        sub_220E436E0(v78, type metadata accessor for WeatherMapOverlay);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
        v113 = sub_220FC02B0();
        v114 = *(v113 - 8);
        v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_220FC8E30;
        (*(v114 + 16))(v80 + v115, v70, v113);
        break;
    }

    v116 = *(v70 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
    v117 = sub_220FC02B0();
    v118 = v214;
    (*(*(v117 - 8) + 16))(v214, v70, v117);
    v119 = v223;
    *(v118 + *(v223 + 20)) = v80;
    *(v118 + *(v119 + 24)) = v116;
    v120 = v229;
    sub_220F6D9E8(v239, v229, type metadata accessor for WeatherMapOverlay);
    sub_220ECC944(v260, &v256, &qword_27CF9D0D0);
    swift_beginAccess();
    v121 = *(v225 + 24);
    v223 = *(v225 + 16);
    v225 = v121;
    swift_beginAccess();
    v122 = v226[2];
    v226 = v226[3];
    type metadata accessor for WindWeatherMapOverlayContainer();
    v123 = swift_allocObject();
    v124 = v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleRenderer;
    *v124 = 0u;
    *(v124 + 16) = 0u;
    *(v124 + 32) = 0;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_particleSimulator) = 0;
    v125 = v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_configuration;
    *v125 = 0u;
    *(v125 + 16) = 0u;
    *(v125 + 32) = 0u;
    *(v125 + 48) = 0;
    v126 = (v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_viewportSize);
    *v126 = 0;
    v126[1] = 0;
    v127 = (v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer_playbackCoordinator);
    *v127 = 0;
    v127[1] = 0;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer) = 1;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps30WindWeatherMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer) = 1;
    v128 = v216;
    sub_220F6D9E8(v118, v216, type metadata accessor for WeatherMapOverlayFramesMetadata);
    v129 = v215;
    sub_220F6D9E8(v120, v215, type metadata accessor for WeatherMapOverlay);
    sub_220ECC944(&v256, &v253, &qword_27CF9D0D0);
    v130 = (v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition);
    *v130 = 0;
    v130[1] = 0;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader) = 0;
    v131 = v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer) = 1;
    *(v123 + 16) = v236;
    sub_220F6B9D0(v128, v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, type metadata accessor for WeatherMapOverlayFramesMetadata);
    sub_220F6B9D0(v129, v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay, type metadata accessor for WeatherMapOverlay);
    v132 = v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings;
    v133 = v238;
    *v132 = v238;
    v134 = v230;
    *(v132 + 8) = v230;
    *(v132 + 9) = v227;
    v135 = v232;
    *(v132 + 16) = v237;
    *(v132 + 24) = v135;
    v136 = v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_rendererContext;
    v137 = v254;
    *v136 = v253;
    *(v136 + 16) = v137;
    *(v136 + 32) = v255;
    v138 = (v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
    v140 = v225;
    v139 = v226;
    *v138 = v223;
    v138[1] = v140;
    v141 = (v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
    *v141 = v122;
    v141[1] = v139;
    *(v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData) = v228;
    *(v131 + 8) = &off_283486100;
    swift_unknownObjectWeakAssign();
    *(v123 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_supportedRegion) = v231;
    *(v123 + 32) = v134;
    *(v123 + 24) = v133;
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    sub_220E3B2DC(&v256, &qword_27CF9D0D0);
    sub_220E436E0(v120, type metadata accessor for WeatherMapOverlay);
    sub_220E436E0(v118, type metadata accessor for WeatherMapOverlayFramesMetadata);
    v234(v123, &off_283483E58);
    goto LABEL_29;
  }

  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v81 = sub_220E1B804();

  if ((v81 & 1) == 0)
  {
    v108 = v239;
    v109 = v211;
    sub_220F6D9E8(v239, v211, type metadata accessor for WeatherMapOverlay);
    memcpy(v259, (v108 + 16), sizeof(v259));
    LODWORD(v108) = sub_220E435CC(v259);
    v110 = sub_220E22B0C(v259);
    switch(v108)
    {
      case 1:
      case 2:
      case 4:
        v111 = v230;
        v112 = sub_220F0AB8C(*v110, v109);
        sub_220E436E0(v109, type metadata accessor for WeatherMapOverlay);
        break;
      default:
        v111 = v230;
        sub_220E436E0(v109, type metadata accessor for WeatherMapOverlay);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
        v145 = sub_220FC02B0();
        v146 = *(v145 - 8);
        v147 = (*(v146 + 80) + 32) & ~*(v146 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_220FC8E30;
        (*(v146 + 16))(v112 + v147, v70, v145);
        break;
    }

    v148 = *(v70 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
    v149 = sub_220FC02B0();
    v150 = v212;
    (*(*(v149 - 8) + 16))(v212, v70, v149);
    goto LABEL_27;
  }

  if (v69 != 1)
  {
    v142 = v239;
    v143 = v208;
    sub_220F6D9E8(v239, v208, type metadata accessor for WeatherMapOverlay);
    memcpy(v259, (v142 + 16), sizeof(v259));
    LODWORD(v142) = sub_220E435CC(v259);
    v144 = sub_220E22B0C(v259);
    switch(v142)
    {
      case 1:
      case 2:
      case 4:
        v111 = v230;
        v112 = sub_220F0AB8C(*v144, v143);
        sub_220E436E0(v143, type metadata accessor for WeatherMapOverlay);
        break;
      default:
        v111 = v230;
        sub_220E436E0(v143, type metadata accessor for WeatherMapOverlay);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
        v187 = sub_220FC02B0();
        v188 = *(v187 - 8);
        v189 = (*(v188 + 80) + 32) & ~*(v188 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_220FC8E30;
        (*(v188 + 16))(v112 + v189, v70, v187);
        break;
    }

    v148 = *(v70 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
    v190 = sub_220FC02B0();
    v150 = v209;
    (*(*(v190 - 8) + 16))(v209, v70, v190);
LABEL_27:
    v191 = v223;
    *(v150 + *(v223 + 20)) = v112;
    *(v150 + *(v191 + 24)) = v148;
    v192 = v229;
    sub_220F6D9E8(v239, v229, type metadata accessor for WeatherMapOverlay);
    sub_220ECC944(v260, &v256, &qword_27CF9D0D0);
    swift_beginAccess();
    v193 = *(v225 + 16);
    v230 = *(v225 + 24);
    swift_beginAccess();
    v194 = v226[2];
    v195 = v226[3];
    type metadata accessor for WeatherMapOverlayContainer();
    v98 = swift_allocObject();
    v196 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition);
    *v196 = 0;
    v196[1] = 0;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader) = 0;
    v197 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer) = 1;
    *(v98 + 16) = v236;
    sub_220F6B9D0(v150, v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, type metadata accessor for WeatherMapOverlayFramesMetadata);
    sub_220F6B9D0(v192, v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay, type metadata accessor for WeatherMapOverlay);
    v198 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings;
    v199 = v238;
    *v198 = v238;
    *(v198 + 8) = v111;
    *(v198 + 9) = v227;
    v200 = v232;
    *(v198 + 16) = v237;
    *(v198 + 24) = v200;
    v201 = v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_rendererContext;
    v202 = v257;
    *v201 = v256;
    *(v201 + 16) = v202;
    *(v201 + 32) = v258;
    v203 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
    v204 = v230;
    *v203 = v193;
    v203[1] = v204;
    v205 = (v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
    *v205 = v194;
    v205[1] = v195;
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData) = v228;
    *(v197 + 8) = &off_283486100;
    swift_unknownObjectWeakAssign();
    *(v98 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_supportedRegion) = v231;
    *(v98 + 32) = v111;
    *(v98 + 24) = v199;
    swift_unknownObjectRetain();
LABEL_28:

    swift_unknownObjectRetain();
    v234(v98, &off_283483E58);
LABEL_29:

    goto LABEL_30;
  }

  v82 = v239;
  v83 = v207;
  sub_220F6D9E8(v239, v207, type metadata accessor for WeatherMapOverlay);
  memcpy(v259, (v82 + 16), sizeof(v259));
  LODWORD(v82) = sub_220E435CC(v259);
  v84 = sub_220E22B0C(v259);
  switch(v82)
  {
    case 1:
    case 2:
    case 4:
      v85 = sub_220F0AB8C(*v84, v83);
      sub_220E436E0(v83, type metadata accessor for WeatherMapOverlay);
      break;
    default:
      sub_220E436E0(v83, type metadata accessor for WeatherMapOverlay);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF18);
      v151 = sub_220FC02B0();
      v152 = *(v151 - 8);
      v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_220FC8E30;
      (*(v152 + 16))(v85 + v153, v70, v151);
      break;
  }

  v154 = *(v70 + *(type metadata accessor for WeatherMapOverlayTimeConstraints() + 28));
  v155 = sub_220FC02B0();
  v156 = v210;
  (*(*(v155 - 8) + 16))(v210, v70, v155);
  v157 = v223;
  *(v156 + *(v223 + 20)) = v85;
  *(v156 + *(v157 + 24)) = v154;
  v158 = v229;
  sub_220F6D9E8(v239, v229, type metadata accessor for WeatherMapOverlay);
  sub_220ECC944(v260, &v256, &qword_27CF9D0D0);
  swift_beginAccess();
  v159 = *(v225 + 24);
  v223 = *(v225 + 16);
  v225 = v159;
  swift_beginAccess();
  v160 = v226[2];
  v224 = v226[3];
  sub_220E1E2A8(v235 + 96, &v253);
  v161 = __swift_mutable_project_boxed_opaque_existential_1(&v253, *(&v254 + 1));
  v226 = &v207;
  MEMORY[0x28223BE20](v161, v161);
  v163 = (&v207 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v164 + 16))(v163);
  v165 = *v163;
  v166 = type metadata accessor for WeatherMapOverlayCoverageManager();
  v252[3] = v166;
  v252[4] = &off_283482E60;
  v252[0] = v165;
  type metadata accessor for RadarWithHashMapOverlayContainer();
  v167 = swift_allocObject();
  v168 = __swift_mutable_project_boxed_opaque_existential_1(v252, v166);
  v222 = &v207;
  MEMORY[0x28223BE20](v168, v168);
  v170 = (&v207 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v171 + 16))(v170);
  v172 = *v170;
  v251[4] = &off_283482E60;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileWeatherOverlayRenderer) = 1;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer____lazy_storage___dynamicTileEffectOverlayRenderer) = 1;
  v251[3] = v166;
  v251[0] = v172;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_dataSource) = 0;
  sub_220E1E2A8(v251, v167 + OBJC_IVAR____TtC11WeatherMaps32RadarWithHashMapOverlayContainer_coverageManager);
  v173 = v216;
  sub_220F6D9E8(v156, v216, type metadata accessor for WeatherMapOverlayFramesMetadata);
  v174 = v215;
  sub_220F6D9E8(v158, v215, type metadata accessor for WeatherMapOverlay);
  sub_220ECC944(&v256, v249, &qword_27CF9D0D0);
  v175 = (v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_animationPosition);
  *v175 = 0;
  v175[1] = 0;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReader) = 0;
  v176 = v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_pixelReaderDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer____lazy_storage___dynamicTileOverlayRenderer) = 1;
  *(v167 + 16) = v236;
  sub_220F6B9D0(v173, v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_framesMetadata, type metadata accessor for WeatherMapOverlayFramesMetadata);
  sub_220F6B9D0(v174, v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay, type metadata accessor for WeatherMapOverlay);
  v177 = v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_renderSettings;
  v178 = v238;
  *v177 = v238;
  LOBYTE(v170) = v230;
  *(v177 + 8) = v230;
  *(v177 + 9) = v227;
  v179 = v232;
  *(v177 + 16) = v237;
  *(v177 + 24) = v179;
  v180 = v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_rendererContext;
  v181 = v249[1];
  *v180 = v249[0];
  *(v180 + 16) = v181;
  *(v180 + 32) = v250;
  v182 = (v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_weatherTileOverlay);
  v183 = v224;
  v184 = v225;
  *v182 = v223;
  v182[1] = v184;
  v185 = (v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_effectTileOverlay);
  *v185 = v160;
  v185[1] = v183;
  *(v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_requiresPixelData) = v228;
  *(v176 + 8) = &off_283486100;
  swift_unknownObjectWeakAssign();
  *(v167 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_supportedRegion) = v231;
  *(v167 + 32) = v170;
  *(v167 + 24) = v178;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_220E3B2DC(&v256, &qword_27CF9D0D0);
  sub_220E436E0(v158, type metadata accessor for WeatherMapOverlay);
  sub_220E436E0(v156, type metadata accessor for WeatherMapOverlayFramesMetadata);
  __swift_destroy_boxed_opaque_existential_0(v251);
  __swift_destroy_boxed_opaque_existential_0(v252);
  __swift_destroy_boxed_opaque_existential_0(&v253);

  v234(v186, &off_283483E58);

LABEL_30:
  sub_220E3B2DC(v260, &qword_27CF9D0D0);
  return sub_220E436E0(v239, type metadata accessor for WeatherMapOverlay);
}

uint64_t sub_220F66444(uint64_t a1, void *a2, int a3, void *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, char a17)
{
  v17 = *a1;
  v18 = *(a1 + 8) | (*(a1 + 12) << 32);
  v19 = a10 & 0x101;
  if ((v18 & 0x8000000000) != 0)
  {
    a2 = a16;
    v34 = a13;
    v35 = a14;
    v36 = a15;
    v21 = sub_220F6661C(__src, a5, a6, a7, a8, v17, v18, a9, v19, a11, a12, &v34, a17 & 1);
  }

  else
  {
    v34 = a13;
    v35 = a14;
    v36 = a15;
    v21 = sub_220F6661C(__src, a5, a6, a7, a8, v17, v18, a9, v19, a11, a12, &v34, 0);
  }

  v23 = v21;
  v24 = v22;
  swift_beginAccess();
  *a2 = v23;
  a2[1] = v24;
  v25 = a2 + 1;
  swift_unknownObjectRelease();
  swift_beginAccess();
  if (*a2)
  {
    v26 = *v25;
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 48);
    swift_unknownObjectRetain();
    v28(v18 | ((HIDWORD(v18) & 1) << 32), ObjectType, v26);
    swift_unknownObjectRelease();
  }

  result = swift_beginAccess();
  if (*a2)
  {
    v30 = *&v17;
    v31 = *v25;
    v32 = swift_getObjectType();
    v33 = *(v31 + 72);
    swift_unknownObjectRetain();
    v33(v32, v31, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_220F6661C(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, uint64_t a11, uint64_t *a12, char a13)
{
  v14 = v13;
  v55 = a8;
  v56 = a7;
  v54 = a5;
  memcpy(v61, __src, sizeof(v61));
  v19 = sub_220FC23C0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a12;
  v52 = a12[1];
  v53 = v24;
  v51 = *(a12 + 16);
  sub_220E1AAEC();
  *v23 = sub_220FC2FC0();
  (*(v20 + 104))(v23, *MEMORY[0x277D851F0], v19);
  v25 = sub_220FC23E0();
  (*(v20 + 8))(v23, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v50 = a4;
  v62[0] = a2;
  v62[1] = a3;
  memcpy(&v62[2], v61, 0xB8uLL);
  memcpy(v60, v62, sizeof(v60));
  __swift_project_boxed_opaque_existential_1(v14 + 41, v14[44]);
  v26 = v56;
  LOWORD(v49) = a9 & 0x101;
  v28 = sub_220F7CFEC(v60, v27, a13 & 1, v54, v14[29], v14[30], a6, v56 & 0xFFFFFFFFFFLL, v55, v49, a10);
  v30 = v29;
  if ((v26 & 0x8000000000) != 0)
  {
    v31 = sub_220F7C110();
    v32 = sub_220F62984(0, v31);

    if (v32)
    {
      v33 = *(v32 + 16);

      if (v33)
      {
        v34 = 1;
        if (!v28)
        {
          goto LABEL_6;
        }

LABEL_11:
        __swift_project_boxed_opaque_existential_1(v14 + 36, v14[39]);
        v59[0] = v53;
        v59[1] = v52;
        LOBYTE(v59[2]) = v51;
        v47 = sub_220EDAB2C((v14 + 2), v60, v28, v30, a6, v26 & 0xFFFFFFFFFFLL, v50, v34, a13 & 1, v59);
        swift_unknownObjectRelease();
        return v47;
      }
    }
  }

  v34 = 0;
  if (v28)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (qword_27CF9BFA0 != -1)
  {
LABEL_14:
    swift_once();
  }

  v35 = sub_220FC17A0();
  __swift_project_value_buffer(v35, qword_27CF9CAF0);
  sub_220E4E4D8(v62, v59);
  v36 = sub_220FC1780();
  v37 = sub_220FC2E10();
  sub_220E3FCD0(v62);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58 = v39;
    *v38 = 136315394;
    memcpy(v57, v60, sizeof(v57));
    sub_220E4E4D8(v62, v59);
    sub_220E4E534();
    v40 = sub_220FC38F0();
    v42 = v41;
    memcpy(v59, v57, sizeof(v59));
    sub_220E3FCD0(v59);
    v43 = sub_220E20FF8(v40, v42, &v58);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    sub_220F6BA2C();
    v44 = sub_220FC38F0();
    v46 = sub_220E20FF8(v44, v45, &v58);

    *(v38 + 14) = v46;
    _os_log_impl(&dword_220E15000, v36, v37, "Cannot create renderer for dynamic overlay. Not rendering overlays. overlayDescriptor=%s, tileColorFormat=%s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D9DDF0](v39, -1, -1);
    MEMORY[0x223D9DDF0](v38, -1, -1);
  }

  return 0;
}

void sub_220F66A98(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void), uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  v9 = v8;
  LODWORD(v89) = a4;
  v90 = a3;
  v95 = a2;
  v91 = sub_220FC23B0();
  v86 = *(v91 - 8);
  v16 = MEMORY[0x28223BE20](v91, v15);
  v84 = v17;
  v85 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v87 = &v76 - v19;
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v20 = sub_220FC17A0();
  v21 = __swift_project_value_buffer(v20, qword_2812C5ED0);

  swift_unknownObjectRetain();
  v94 = v21;
  v22 = sub_220FC1780();
  v23 = sub_220FC2E30();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v93 = a6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v88 = a8;
    v92 = a5;
    v27 = v26;
    v97[0] = v26;
    *v25 = 136446722;
    v96 = *(v9 + 51);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F430);
    v28 = sub_220FC2750();
    v29 = a7;
    v31 = sub_220E20FF8(v28, v30, v97);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2082;
    v32 = v95;
    *&v96 = a1;
    *(&v96 + 1) = v95;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3E0);
    v33 = sub_220FC2750();
    v35 = sub_220E20FF8(v33, v34, v97);

    *(v25 + 14) = v35;
    a7 = v29;
    *(v25 + 22) = 1026;
    *(v25 + 24) = v90 & 1;
    _os_log_impl(&dword_220E15000, v22, v23, "Requesting transition to a new container. activeOverlayContainer=%{public}s, newContainer=%{public}s, animated=%{BOOL,public}d", v25, 0x1Cu);
    swift_arrayDestroy();
    v36 = v27;
    a5 = v92;
    a8 = v88;
    MEMORY[0x223D9DDF0](v36, -1, -1);
    v37 = v25;
    a6 = v93;
    MEMORY[0x223D9DDF0](v37, -1, -1);
  }

  else
  {

    v32 = v95;
  }

  v38 = v9[52];
  v39 = swift_unknownObjectRetain();
  LOBYTE(v38) = sub_220F672C4(v39, v38, a1, v32);
  swift_unknownObjectRelease();
  if (v38 & 1) != 0 || (v89)
  {
    v44 = v9[51];
    v45 = v9[52];
    v9[51] = a1;
    v9[52] = v32;
    Strong = swift_unknownObjectWeakLoadStrong();
    v47 = v9[57];
    swift_unknownObjectRetain();
    if (Strong)
    {
      v79 = v47;
      v80 = v45;
      v88 = a8;
      v89 = Strong;
      v81 = v44;
      v82 = a1;
      v83 = a7;
      v92 = a5;
      v93 = a6;
      sub_220F67368();
      v48 = sub_220FC1780();
      v49 = sub_220FC2E30();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_220E15000, v48, v49, "Starting transition to new overlay container.", v50, 2u);
        MEMORY[0x223D9DDF0](v50, -1, -1);
      }

      sub_220E447DC();
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      sub_220E1AAEC();
      v52 = sub_220FC2FC0();

      v77 = v51;
      sub_220E44868(v52, sub_220F6BAB8, v51);

      v53 = v85;
      sub_220FC23A0();
      v54 = v87;
      sub_220FC23D0();
      v55 = v86;
      v56 = *(v86 + 8);
      v78 = v86 + 8;
      v94 = v56;
      v57 = v91;
      v56(v53, v91);
      (*(v55 + 16))(v53, v54, v57);
      v58 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v59 = v58 + v84;
      v60 = (((v58 + v84) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v62 = v79;
      *(v61 + 2) = v89;
      *(v61 + 3) = v62;
      v63 = v82;
      *(v61 + 4) = v9;
      *(v61 + 5) = v63;
      v65 = v92;
      v64 = v93;
      *(v61 + 6) = v95;
      *(v61 + 7) = v65;
      *(v61 + 8) = v64;
      (*(v55 + 32))(&v61[v58], v53, v91);
      v61[v59] = v90 & 1;
      v66 = &v61[v59 & 0xFFFFFFFFFFFFFFF8];
      v68 = v80;
      v67 = v81;
      *(v66 + 1) = v81;
      *(v66 + 2) = v68;
      *&v61[v60] = v77;
      v69 = &v61[(v60 + 15) & 0xFFFFFFFFFFFFFFF8];
      v70 = v83;
      v71 = v88;
      *v69 = v83;
      v69[1] = v71;

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      sub_220E1AADC(v92);
      swift_unknownObjectRetain();
      sub_220E1AADC(v70);
      sub_220F63E04(v67, v68, 1, sub_220F6BAC0, v61);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v94(v87, v91);
    }

    else
    {
      v72 = sub_220FC1780();
      v73 = sub_220FC2E30();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_220E15000, v72, v73, "No transition possible as the delegate property is not set.", v74, 2u);
        MEMORY[0x223D9DDF0](v74, -1, -1);
      }

      if (a5)
      {
        v75 = swift_allocObject();
        *(v75 + 16) = a7;
        *(v75 + 24) = a8;
        sub_220E1AADC(a5);
        sub_220E1AADC(a7);
        a5(sub_220F6DA7C, v75);

        sub_220E2DD2C(a5);
      }

      else if (a7)
      {
        a7();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v40 = sub_220FC1780();
    v41 = sub_220FC2E30();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_220E15000, v40, v41, "No transition required", v42, 2u);
      MEMORY[0x223D9DDF0](v42, -1, -1);
    }

    if (a5)
    {
      v43 = swift_allocObject();
      *(v43 + 16) = a7;
      *(v43 + 24) = a8;
      sub_220E1AADC(a5);
      sub_220E1AADC(a7);
      a5(sub_220F6BAB4, v43);

      sub_220E2DD2C(a5);
    }

    else if (a7)
    {
      a7();
    }
  }
}

uint64_t sub_220F672C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1;
  if (a1 && a3)
  {
    ObjectType = swift_getObjectType();
    v8 = *(a2 + 136);
    swift_unknownObjectRetain();
    v9 = swift_unknownObjectRetain();
    LOBYTE(a2) = v8(v9, a4, ObjectType, a2);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = a2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220F67368()
{
  v1 = v0;
  if (qword_2812C5EC8 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v2 = sub_220FC17A0();
  OUTLINED_FUNCTION_23_0(v2, qword_2812C5ED0);

  v3 = sub_220FC1780();
  v4 = sub_220FC2E30();
  if (OUTLINED_FUNCTION_16_15(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    OUTLINED_FUNCTION_28_13();
    OUTLINED_FUNCTION_5_1();
    sub_220ECC944(v1 + 368, v16, &qword_27CF9F440);
    v6 = v17 != 0;
    sub_220E3B2DC(v16, &qword_27CF9F440);
    v5[1] = v6;

    OUTLINED_FUNCTION_11_20();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_13_22();
  }

  else
  {
  }

  OUTLINED_FUNCTION_5_1();
  sub_220ECC944(v1 + 368, &v13, &qword_27CF9F440);
  if (!*(&v14 + 1))
  {
    return sub_220E3B2DC(&v13, &qword_27CF9F440);
  }

  sub_220E1E72C(&v13, v16);
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_220EE9CB0();
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  sub_220F6D7D0(&v13, v1 + 368);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_220F67544(uint64_t a1)
{
  result = swift_beginAccess();
  *(a1 + 16) = 1;
  return result;
}

void sub_220F67588()
{
  sub_220E1AAEC();
  v0 = sub_220FC2FC0();
  type metadata accessor for WeatherMapOverlayManager();
  sub_220FC1560();

  v1 = sub_220FC13B0();
  sub_220FC1510();

  v2 = sub_220FC2FC0();
  sub_220FC14F0();
}

uint64_t sub_220F67698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F438);
  swift_allocObject();
  return sub_220FC1530();
}

uint64_t sub_220F67704(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_220E1AAEC();

  v5 = sub_220FC2FC0();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_220F6D674;
  *(v6 + 24) = v4;
  sub_220E44868(v5, sub_220E451F0, v6);
}

void sub_220F677E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a8;
  v60 = a6;
  v61 = a7;
  v64 = a13;
  v65 = a14;
  v62 = a12;
  v56 = a11;
  v57 = a2;
  v59 = a10;
  v55 = a9;
  v67 = sub_220FC23B0();
  v54 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v18);
  v52 = v19;
  v66 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v68 = &v51 - v22;
  v23 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a5 + 8))(ObjectType, a5);
  v69 = a3;
  v63 = a1;
  sub_220F6BC08(a3, v26, a1);
  sub_220E436E0(v26, type metadata accessor for WeatherMapOverlay);
  v28 = *(a5 + 24);
  v58 = a4;
  v29 = v28(ObjectType, a5);
  v30 = sub_220F43CDC(v29);
  for (i = 0; ; ++i)
  {
    if (v30 == i)
    {

      v34 = sub_220FC2AE0();
      __swift_storeEnumTagSinglePayload(v68, 1, 1, v34);
      v35 = v54;
      (*(v54 + 16))(v66, v53, v67);
      v36 = (*(v35 + 80) + 72) & ~*(v35 + 80);
      v37 = v36 + v52;
      v38 = (((v36 + v52) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      *(v40 + 4) = v58;
      *(v40 + 5) = a5;
      v41 = v60;
      v42 = v61;
      *(v40 + 6) = v69;
      *(v40 + 7) = v41;
      *(v40 + 8) = v42;
      (*(v35 + 32))(&v40[v36], v66, v67);
      v40[v37] = v55 & 1;
      v43 = &v40[v37 & 0xFFFFFFFFFFFFFFF8];
      v45 = v56;
      v44 = v57;
      *(v43 + 1) = v59;
      *(v43 + 2) = v45;
      v46 = &v40[v38];
      v47 = v62;
      *v46 = v63;
      v46[1] = v44;
      *&v40[v53] = v47;
      v48 = &v40[v39];
      v50 = v64;
      v49 = v65;
      *v48 = v64;
      v48[1] = v49;
      swift_unknownObjectRetain();

      sub_220E1AADC(v41);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      sub_220E1AADC(v50);
      sub_220F9BB1C(0, 0, v68, &unk_220FD71D8, v40);

      return;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x223D9CB30](i, v29);
    }

    else
    {
      if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v32 = *(v29 + 8 * i + 32);
    }

    v33 = v32;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v32 setAlpha_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_220F67BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v24;
  *(v8 + 144) = v25;
  *(v8 + 120) = v22;
  *(v8 + 128) = v23;
  *(v8 + 104) = v20;
  *(v8 + 112) = v21;
  *(v8 + 88) = v17;
  *(v8 + 96) = v19;
  *(v8 + 224) = v18;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 48) = a4;
  v10 = sub_220FC23B0();
  *(v8 + 152) = v10;
  v11 = *(v10 - 8);
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 + 64);
  *(v8 + 176) = swift_task_alloc();
  type metadata accessor for WeatherMapOverlay();
  *(v8 + 184) = swift_task_alloc();
  ObjectType = swift_getObjectType();
  *(v8 + 192) = ObjectType;
  v15 = (*(a5 + 112) + **(a5 + 112));
  v13 = swift_task_alloc();
  *(v8 + 200) = v13;
  *v13 = v8;
  v13[1] = sub_220F67DD0;

  return v15(ObjectType, a5);
}

uint64_t sub_220F67DD0(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_220F67ED0, 0, 0);
}

uint64_t sub_220F67ED0()
{
  swift_weakInit();
  sub_220FC2AB0();
  *(v0 + 216) = sub_220FC2AA0();
  v2 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220F67F70, v2, v1);
}

uint64_t sub_220F67F70()
{
  v1 = v0;

  OUTLINED_FUNCTION_5_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    result = sub_220F43CDC(v0[26]);
    v53 = result;
    v50 = v0;
    if (result)
    {
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v5 = 0;
      v6 = v0[26];
      v51 = v6 & 0xC000000000000001;
      v46 = (v0[7] + 8);
      v48 = v0[23];
      v44 = v6 + 32;
      do
      {
        if (v51)
        {
          v7 = MEMORY[0x223D9CB30](v5, v1[26]);
        }

        else
        {
          v7 = *(v44 + 8 * v5);
          swift_unknownObjectRetain();
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          v10 = *v46;

          v11 = OUTLINED_FUNCTION_17_15();
          v10(v11);
          LODWORD(v10) = *(v48 + 200);
          OUTLINED_FUNCTION_10_26();
          v1 = v50;
          if (v10 == 5)
          {
            v12 = 2;
          }

          else
          {
            v12 = *(v3 + 472);
          }

          v13 = OUTLINED_FUNCTION_17_15();
          v15 = v14(v13);
          sub_220F6BE68(v3, v7, v12, (v15 & 1), v9);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v5;
      }

      while (v53 != v5);
    }

    v16 = v1[9];

    if (v16)
    {
      v17 = v1[21];
      v39 = v1[22];
      v18 = v1[20];
      v47 = v1[17];
      v49 = v1[18];
      v41 = v1[12];
      v42 = v1[13];
      v40 = *(v1 + 224);
      v45 = v1[16];
      v19 = v1[8];
      v43 = v1[9];
      v52 = *(v1 + 7);
      v54 = *(v1 + 3);
      v20 = v1[19];
      (*(v18 + 16))();
      v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
      v38 = (v21 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v21 + v17 + 31) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      *(v25 + 16) = v19;
      (*(v18 + 32))(v25 + v21, v39, v20);
      v26 = v25 + v38;
      *v26 = v54;
      *(v26 + 16) = v40;
      v27 = (v25 + v22);
      v1 = v50;
      *v27 = v41;
      v27[1] = v42;
      *(v25 + v23) = v52;
      *(v25 + v24) = v45;
      v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v28 = v47;
      v28[1] = v49;
      sub_220E1AADC(v43);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      sub_220E1AADC(v47);
      v43(sub_220F6D59C, v25);
      sub_220E2DD2C(v43);
    }

    else
    {
      v29 = v50[18];
      v30 = v50[17];
      v31 = v50[16];
      v32 = v50[13];
      v33 = *(v50 + 224);
      v34 = v50[12];
      v35 = v50[8];
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = *(v50 + 3);
      *(v36 + 40) = v33;
      *(v36 + 48) = v34;
      *(v36 + 56) = v32;
      *(v36 + 64) = *(v50 + 7);
      *(v36 + 80) = v31;
      *(v36 + 88) = v30;
      *(v36 + 96) = v29;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v1 = v50;
      sub_220E1AADC(v30);
      sub_220F67588();
    }

    swift_weakDestroy();
  }

  else
  {
    swift_weakDestroy();
  }

  v37 = v1[1];

  return v37();
}

uint64_t sub_220F68430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a8;
  *(v17 + 72) = a9;
  *(v17 + 80) = a10;
  *(v17 + 88) = a11;
  *(v17 + 96) = a12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_220E1AADC(a11);
  sub_220F67588();
}

uint64_t sub_220F68540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a9;
  v17[8] = a10;
  v17[9] = a11;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  sub_220E1AADC(a10);
  sub_220F68C88(a2, a3, a4, a5, a6, sub_220F6D69C, v17);
}

uint64_t sub_220F68640(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(uint64_t, uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v49 = a8;
  v51 = a6;
  v52 = a7;
  v56 = a1;
  v57 = a3;
  v54 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v54, v10);
  v47 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v45 - v14;
  v16 = sub_220FC02B0();
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v45 - v26;
  ObjectType = swift_getObjectType();
  v29 = a5[1];
  v29(ObjectType, a5);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v54);
  sub_220F6C4D4(v57, v27, v56);
  sub_220E3B2DC(v27, &unk_27CF9EB80);
  a5[10](ObjectType, a5);
  v30 = *(v55 + 16);
  v54 = v19;
  v50 = v16;
  v30(v19, v23, v16);
  sub_220E436E0(v23, type metadata accessor for WeatherMapOverlayFramesMetadata);
  v53 = a4;
  v48 = ObjectType;
  v46 = v29;
  v29(ObjectType, a5);
  v31 = v15[200];
  v32 = v56[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
  if (v31 == 5)
  {
    v34 = v32 == 5;
LABEL_8:
    v33 = v57;
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v31 == 4)
  {
    v34 = v32 == 4;
    goto LABEL_8;
  }

  v33 = v57;
  if (v31 == 3)
  {
    if (v32 != 3)
    {
      goto LABEL_11;
    }

LABEL_10:

    sub_220EE4790(v54, 0);

    goto LABEL_11;
  }

  if (v31 == v32 && (v32 - 6) < 0xFFFFFFFD)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_220E436E0(v15, type metadata accessor for WeatherMapOverlay);
  (*(v55 + 8))(v54, v50);
  v35 = v51;
  swift_beginAccess();
  if (*(v35 + 16) == 1)
  {
    v36 = v48;
    a5[21](v48, a5);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v38 = result;
      v39 = v47;
      v46(v36, a5);
      sub_220F6CB08(v33, v39, v38);
      swift_unknownObjectRelease();
      result = sub_220E436E0(v39, type metadata accessor for WeatherMapOverlay);
    }
  }

  else
  {
    sub_220E1AAEC();
    v40 = sub_220FC2FC0();
    v41 = swift_allocObject();
    swift_weakInit();
    v42 = swift_allocObject();
    v43 = v53;
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = a5;

    swift_unknownObjectRetain();
    sub_220E44868(v40, sub_220F6D710, v42);
  }

  if (v52)
  {
    return v52(result);
  }

  return result;
}

uint64_t sub_220F68B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    ObjectType = swift_getObjectType();
    (*(a3 + 168))(ObjectType, a3);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(a3 + 8);

      v13(ObjectType, a3);
      sub_220F6CB08(v9, v7, v12);

      swift_unknownObjectRelease();
      return sub_220E436E0(v7, type metadata accessor for WeatherMapOverlay);
    }

    else
    {
    }
  }

  return result;
}

void sub_220F68C88(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v37 = a4;
  v36 = a5;
  v12 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  v18 = v15[200];
  sub_220E436E0(v15, type metadata accessor for WeatherMapOverlay);
  if (v18)
  {
    v35 = a6;
    v19 = (*(a2 + 24))(ObjectType, a2);
    v20 = v19;
    if (a3)
    {
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      v22[2] = v16;
      v22[3] = v20;
      v23 = v36;
      v22[4] = v37;
      v22[5] = v23;
      v22[6] = a1;
      v22[7] = a2;
      v22[8] = v38;
      v43 = sub_220F6D6B0;
      v44 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_220F6DA78;
      v42 = &block_descriptor_122;
      v24 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v25 = v16;

      v26 = swift_allocObject();
      v27 = v35;
      *(v26 + 16) = v35;
      *(v26 + 24) = a7;
      v43 = sub_220F1B1C0;
      v44 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_220EFF6B0;
      v42 = &block_descriptor_128_0;
      v28 = _Block_copy(&aBlock);
      sub_220E1AADC(v27);

      [v21 animateWithDuration:v24 animations:v28 completion:0.3];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }

    v34[1] = a7;
    v29 = sub_220F43CDC(v19);
    for (i = 0; v29 != i; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x223D9CB30](i, v20);
      }

      else
      {
        if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v31 = *(v20 + 8 * i + 32);
      }

      v32 = v31;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      [v31 setAlpha_];
    }

    v33 = sub_220F6900C(v37, v36, a1, a2, v38);
    if (v35)
    {
      v35(v33);
    }
  }
}

uint64_t sub_220F6900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_220F22204();
  if (a1)
  {
    ObjectType = swift_getObjectType();
    v11 = (*(a2 + 40))(ObjectType, a2);
  }

  else
  {
    v11 = 0;
  }

  v12 = swift_getObjectType();
  result = (*(a4 + 40))(v12, a4);
  if (v11 != result || v9 != result)
  {
    v15 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_220F6B678(a5, v15);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_220F69100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  [a1 setAlpha_];
  v11 = sub_220F43CDC(a2);
  for (i = 0; v11 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D9CB30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v13 = *(a2 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    [v13 setAlpha_];
  }

  sub_220F6900C(a3, a4, a5, a6, a7);
}

double sub_220F69204()
{
  type metadata accessor for MapKitDynamicTileOverlayRenderer();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    return *(*(v0 + OBJC_IVAR____TtC11WeatherMaps32MapKitDynamicTileOverlayRenderer_dynamicOverlay) + OBJC_IVAR____TtC11WeatherMaps24MapKitDynamicTileOverlay_opacity);
  }

  else
  {
    return 1.0;
  }
}

uint64_t sub_220F69258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    ObjectType = swift_getObjectType();
    (*(a4 + 8))(ObjectType, a4);
    v14 = v10[200];
    sub_220E436E0(v10, type metadata accessor for WeatherMapOverlay);
    sub_220F6D110(a2, a1, v14, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220F6934C(void *a1, uint64_t a2)
{
  [a1 setAlpha_];
  v3 = sub_220F43CDC(a2);
  for (i = 0; v3 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D9CB30](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a2 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    [v5 setAlpha_];
  }
}

uint64_t sub_220F69410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v10 = sub_220FC2340();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220FC2390();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_220FC23B0();
  v34 = v18;
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v33 - v25;
  ObjectType = swift_getObjectType();
  v42 = a4;
  v43 = a2;
  v44 = a3;
  (*(a3 + 120))(sub_220F6DA8C, v41, ObjectType, a3);
  sub_220FC23A0();
  sub_220FC23D0();
  v33 = *(v19 + 8);
  v33(v23, v18);
  sub_220E1AAEC();
  v28 = sub_220FC2FC0();
  v29 = swift_allocObject();
  v30 = v36;
  v29[2] = v35;
  v29[3] = v30;
  v29[4] = v37;
  aBlock[4] = sub_220F6BBFC;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220F6DA78;
  aBlock[3] = &block_descriptor_93;
  v31 = _Block_copy(aBlock);

  sub_220FC2350();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220F6D8B4(&qword_2812C5E08, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  sub_220FC3430();
  MEMORY[0x223D9C4E0](v26, v17, v13, v31);
  _Block_release(v31);

  (*(v40 + 8))(v13, v10);
  (*(v38 + 8))(v17, v39);
  return (v33)(v26, v34);
}

void sub_220F69818(uint64_t a1, void (*a2)(void))
{
  v4 = sub_220F43CDC(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      a2();
      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x223D9CB30](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v6 setAlpha_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_220F698E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v9 = sub_220FC17A0();
    __swift_project_value_buffer(v9, qword_2812C5ED0);
    v10 = sub_220FC1780();
    v11 = sub_220FC2E30();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      sub_220E561E0();
      v14 = sub_220FC38F0();
      v16 = sub_220E20FF8(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_220E15000, v10, v11, "Updating render settings for current overlay. overlayKind=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D9DDF0](v13, -1, -1);
      MEMORY[0x223D9DDF0](v12, -1, -1);
    }

    sub_220F66A98(a1, a2, 1, a5 & 1, 0, 0, 0, 0);
  }

  return result;
}

void sub_220F69AB4()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v2 = *(v1 + 176);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_6_27();
    v2(v3);

    swift_unknownObjectRelease();
  }
}

void sub_220F69B38()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v4 - 8, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_5_1();
  sub_220ECC944((v0 + 46), v33, &qword_27CF9F440);
  v9 = v34;
  sub_220E3B2DC(v33, &qword_27CF9F440);
  if (!v9 && (v20 = v0[51]) != 0 && (v21 = v0[52], swift_getObjectType(), dynamic_cast_existential_1_conditional(v20)))
  {
    v32 = v22;
    __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
    ObjectType = swift_getObjectType();
    v24 = *(v21 + 80);
    swift_unknownObjectRetain_n();
    v24(ObjectType, v21);
    sub_220F95F4C(v32, v8, v3 & 1, v33);
    OUTLINED_FUNCTION_8_28();
    sub_220E436E0(v8, v25);
    swift_beginAccess();
    sub_220F6D7D0(v33, (v0 + 46));
    v26 = v0[49];
    if (v26)
    {
      v27 = v0[50];
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 46), v0[49]);
      v28 = *(v27 + 16);
      v29 = swift_unknownObjectRetain();
      v28(v29, &off_2834860E8, v26, v27);
    }

    swift_endAccess();
    v30 = v0[49];
    if (v30)
    {
      v31 = __swift_project_boxed_opaque_existential_1(v0 + 46, v30);
      sub_220EE9730(*(*v31 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition), *(*v31 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayAnimation_currentPosition + 8));
    }

    swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v10 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v10, qword_2812C5ED0);

    v11 = sub_220FC1780();
    v12 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_16_15(v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240448;
      sub_220ECC944((v1 + 46), v33, &qword_27CF9F440);
      v14 = v34 != 0;
      sub_220E3B2DC(v33, &qword_27CF9F440);
      *(v13 + 4) = v14;
      *(v13 + 8) = 1026;
      *(v13 + 10) = v1[51] != 0;

      OUTLINED_FUNCTION_11_20();
      _os_log_impl(v15, v16, v17, v18, v19, 0xEu);
      OUTLINED_FUNCTION_13_22();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_220F69E54()
{
  OUTLINED_FUNCTION_29_2();
  v32 = v0;
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v35 = v11;
  MEMORY[0x28223BE20](v12, v13);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v34 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v18 = v17;
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_3();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_5_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_220E1AAEC();
    v31 = sub_220FC2FC0();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v9;
    *(v26 + 32) = v7;
    *(v26 + 40) = v32 & 1;
    *(v26 + 48) = v5;
    *(v26 + 56) = v3;
    *(v26 + 64) = v33;
    v36[4] = sub_220F6BA80;
    v36[5] = v26;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 1107296256;
    OUTLINED_FUNCTION_21();
    v36[2] = v27;
    v36[3] = &block_descriptor_55_0;
    v28 = _Block_copy(v36);

    swift_unknownObjectRetain();
    sub_220E1AADC(v5);

    sub_220FC2350();
    v36[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_44();
    sub_220F6D8B4(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
    sub_220E62E38();
    OUTLINED_FUNCTION_32_11();
    sub_220FC3430();
    MEMORY[0x223D9C530](0, v23, v16, v28);
    _Block_release(v28);

    (*(v35 + 8))(v16, v10);
    (*(v18 + 8))(v23, v34);
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F6A118(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  *(v14 + 32) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a7;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  sub_220E1AADC(a5);

  v16 = swift_unknownObjectRetain();
  sub_220F66A98(v16, a3, 1, a4, sub_220F6BA98, v14, sub_220F6BAA4, v15);
}

uint64_t sub_220F6A230(uint64_t (*a1)(void), uint64_t a2, void (*a3)(uint64_t, uint64_t (*)(void), uint64_t), uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return a1();
  }

  a3(a5, a1, a2);

  return sub_220E2DD2C(a3);
}

uint64_t sub_220F6A2C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    ObjectType = swift_getObjectType();
    (*(a4 + 8))(ObjectType, a4);
    v17 = *(v15 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore);
    sub_220F6D9E8(v13, v9, type metadata accessor for WeatherMapOverlay);
    v18 = __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    MEMORY[0x28223BE20](v18, v19);
    *(&v20 - 4) = v9;
    *(&v20 - 3) = v17;
    *(&v20 - 16) = 0;
    *(&v20 - 15) = a2;

    sub_220EE41AC(sub_220F6DA74);
    swift_unknownObjectRelease();

    sub_220E436E0(v13, type metadata accessor for WeatherMapOverlay);
    return sub_220E3B2DC(v9, &unk_27CF9EB80);
  }

  return result;
}

void sub_220F6A4B8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v3 = *(Strong + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isDismissing), swift_unknownObjectRelease(), (v3 & 1) == 0))
  {
    if (qword_2812C5EC8 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v4 = sub_220FC17A0();
    OUTLINED_FUNCTION_23_0(v4, qword_2812C5ED0);
    v5 = sub_220FC1780();
    v6 = sub_220FC2E30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_20_0();
      *v7 = 0;
      _os_log_impl(&dword_220E15000, v5, v6, "Reloading overlay data", v7, 2u);
      OUTLINED_FUNCTION_15();
    }

    if (a1)
    {
      sub_220F63938(&v13);
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v11[0] = v13;
      v11[1] = v14;
      v12 = v15;
      sub_220F9F91C(v11);
      sub_220E5AE5C(v8, v9, v10);
    }

    sub_220F62EAC();
  }
}

void sub_220F6A680(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (*(v16 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    v30 = v26;
    v31 = v27;
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v28 = *(v19 + 144);
    swift_unknownObjectRetain();
    v28(v18, v17, a1, a2, a3, a4, a5, a6, v30, v31, a9, a10);
    OUTLINED_FUNCTION_37_7();

    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_37_7();
  }
}

void sub_220F6A760()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v2 = *(v1 + 152);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_6_27();
    v2(v3);

    swift_unknownObjectRelease();
  }
}

void sub_220F6A7E4()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v2 = *(v1 + 160);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_6_27();
    v2(v3);

    swift_unknownObjectRelease();
  }
}

void sub_220F6A868()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v2 = *(v1 + 184);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_6_27();
    v2(v3);

    swift_unknownObjectRelease();
  }
}

void sub_220F6A908()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    swift_getObjectType();
    OUTLINED_FUNCTION_14_22();
    v2 = *(v1 + 192);
    swift_unknownObjectRetain();
    v3 = OUTLINED_FUNCTION_6_27();
    v2(v3);

    swift_unknownObjectRelease();
  }
}

id sub_220F6A98C(uint64_t a1)
{
  if (*(v1 + 408))
  {
    v3 = *(v1 + 416);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v6 = v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v6)
    {
      return v6;
    }
  }

  v8 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

  return [v8 init];
}

uint64_t sub_220F6AA58(uint64_t a1)
{
  sub_220F63938(&v7);
  v5 = v7;
  v6 = v8;
  sub_220FA1844(a1, &v5);
  v2 = v5;
  v3 = v6;

  return sub_220E5AE5C(v2, *(&v2 + 1), v3);
}

unsigned __int8 *sub_220F6AACC(unsigned __int8 *result, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t (*)(void), void), uint64_t a5)
{
  v9 = *result;
  if (a3)
  {
    goto LABEL_2;
  }

  v13 = *(*(v5 + 176) + OBJC_IVAR____TtC11WeatherMaps32WeatherMapOverlayMetadataManager_activeOverlayKind);
  switch(v9)
  {
    case 5:
      if (v13 != 5)
      {
        goto LABEL_2;
      }

      break;
    case 4:
      if (v13 != 4)
      {
        goto LABEL_2;
      }

      break;
    case 3:
      if (v13 == 3)
      {
        break;
      }

LABEL_2:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_220F6B4F0(Strong, v16);
        swift_unknownObjectRelease();
        Strong = v16[5];
      }

      v11 = *(v5 + 472);
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (v9 == 5)
        {
          v12 = 2;
        }

        else
        {
          v12 = v11;
        }

        sub_220F6B678(v5, v12);
        swift_unknownObjectRelease();
      }

      v15 = v9;
      sub_220FA1B7C(&v15, Strong, a3 & 1, a4, a5);

    default:
      if ((v13 - 6) > 0xFFFFFFFC || v9 != v13)
      {
        goto LABEL_2;
      }

      break;
  }

  if (a4)
  {
    return (a4)(3, nullsub_1, 0);
  }

  return result;
}

void sub_220F6AC30(char a1, char a2)
{
  OUTLINED_FUNCTION_5_1();
  v6 = OUTLINED_FUNCTION_28_13();
  v8 = sub_220ECC944(v6, v7, &qword_27CF9F440);
  OUTLINED_FUNCTION_33_7(v8, v9, v10, v11, v12, v13, v14, v15, v27);
  if (v3 && (a2 & 1) != 0)
  {
    OUTLINED_FUNCTION_28_13();
    swift_beginAccess();
    v16 = *(v2 + 392);
    if (v16)
    {
      v3 = *(v2 + 400);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 368, *(v2 + 392));
      (*(v3 + 64))(1, v16, v3);
    }

    swift_endAccess();
  }

  v17 = OUTLINED_FUNCTION_28_13();
  v19 = sub_220ECC944(v17, v18, &qword_27CF9F440);
  OUTLINED_FUNCTION_33_7(v19, v20, v21, v22, v23, v24, v25, v26, v28);
  if ((v3 != 0) != (a1 & 1))
  {
    if (a1)
    {
      sub_220F69B38();
    }

    else
    {
      sub_220F67368();
    }
  }
}

void sub_220F6AD50(uint64_t a1)
{
  v4 = type metadata accessor for WeatherMapOverlayFramesMetadata();
  MEMORY[0x28223BE20](v4 - 8, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  if (*(v1 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    ObjectType = swift_getObjectType();
    v10 = *(v2 + 80);
    swift_unknownObjectRetain();
    v10(ObjectType, v2);
    v11 = sub_220EED848(a1);
    v13 = v12;
    v15 = v14;
    OUTLINED_FUNCTION_8_28();
    sub_220E436E0(v8, v16);
    if ((v15 & 1) == 0)
    {
      (*(v2 + 72))(v11, ObjectType, v2, v13);
    }

    swift_unknownObjectRelease();
  }
}

void sub_220F6AE60()
{
  if (*(v0 + 408))
  {
    OUTLINED_FUNCTION_12_22();
    ObjectType = swift_getObjectType();
    (*(v1 + 200))(ObjectType, v1);
  }
}

uint64_t sub_220F6AEB0(_OWORD *a1, uint64_t a2, double a3)
{
  v6 = sub_220FC2340();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x28223BE20](v9, v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v31 = sub_220FC2390();
  OUTLINED_FUNCTION_6();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  sub_220E1AAEC();
  v21 = sub_220FC2FC0();
  OUTLINED_FUNCTION_2_3();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v24 = a1[1];
  *(v23 + 24) = *a1;
  *(v23 + 40) = v24;
  *(v23 + 56) = a1[2];
  v25 = *(a2 + 16);
  *(v23 + 72) = *a2;
  *(v23 + 16) = v22;
  *(v23 + 88) = v25;
  *(v23 + 104) = *(a2 + 32);
  *(v23 + 120) = *(a2 + 48);
  *(v23 + 128) = a3;
  aBlock[4] = sub_220F6D90C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_21();
  aBlock[2] = v26;
  aBlock[3] = &block_descriptor_158;
  v27 = _Block_copy(aBlock);

  sub_220FC2350();
  aBlock[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_44();
  sub_220F6D8B4(v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
  sub_220E62E38();
  OUTLINED_FUNCTION_32_11();
  sub_220FC3430();
  MEMORY[0x223D9C530](0, v20, v13, v27);
  _Block_release(v27);

  (*(v8 + 8))(v13, v6);
  return (*(v15 + 8))(v20, v31);
}

uint64_t sub_220F6B174(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = sub_220FC2AE0();
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
      sub_220FC2AB0();

      swift_unknownObjectRetain();
      v14 = sub_220FC2AA0();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      *(v15 + 16) = v14;
      *(v15 + 24) = v16;
      *(v15 + 32) = v12;
      v17 = *(a4 + 16);
      *(v15 + 40) = *a4;
      *(v15 + 56) = v17;
      *(v15 + 72) = *(a4 + 32);
      *(v15 + 88) = *(a4 + 48);
      *(v15 + 96) = a1;
      sub_220F9BB1C(0, 0, v9, &unk_220FD7200, v15);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220F6B310(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeatherMapOverlayContainer();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = *(v4 + OBJC_IVAR____TtC11WeatherMaps26WeatherMapOverlayContainer_overlay + 200);
  v6 = *(result + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind);
  switch(v5)
  {
    case 5:
      if (v6 != 5)
      {
        goto LABEL_18;
      }

      break;
    case 4:
      if (v6 != 4)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_18;
      }

      break;
    default:
      if ((v6 - 3) < 3 || v5 != v6)
      {
LABEL_18:

        return swift_unknownObjectRelease();
      }

      break;
  }

  swift_unknownObjectRetain();

  sub_220EE4790(a2, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_220F6B468()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_220EE46C8();

    sub_220F6AC30(0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_220F6B4F0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v28 = MEMORY[0x277D84F90];
  v3 = 5;
  sub_220F0B180(0, 5, 0);
  v4 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView;
  v5 = &unk_28347AF40;
  do
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    v8 = sub_220EF8494();
    [*(a1 + v4) bounds];
    v9 = v6 * CGRectGetWidth(v29);
    [*(a1 + v4) bounds];
    [v8 convertPoint:*(a1 + v4) toCoordinateFromView:{v9, v7 * CGRectGetHeight(v30)}];
    v11 = v10;
    v13 = v12;

    v15 = *(v28 + 16);
    v14 = *(v28 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_220F0B180((v14 > 1), v15 + 1, 1);
    }

    *(v28 + 16) = v15 + 1;
    v16 = v28 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
    v5 += 2;
    --v3;
  }

  while (v3);
  [*(a1 + v4) visibleMapRect];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = [*(a1 + v4) _zoomLevel];
  *a2 = v18;
  a2[1] = v20;
  a2[2] = v22;
  a2[3] = v24;
  a2[4] = v26;
  a2[5] = v28;
  return result;
}

void sub_220F6B678(uint64_t a1, uint64_t a2)
{
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v3 = sub_220FC17A0();
  __swift_project_value_buffer(v3, qword_2812C5ED0);
  v4 = sub_220FC1780();
  v5 = sub_220FC2E30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    type metadata accessor for UIUserInterfaceStyle(0);
    sub_220F6D8B4(&qword_2812C5C58, type metadata accessor for UIUserInterfaceStyle);
    v8 = sub_220FC38F0();
    v10 = sub_220E20FF8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_220E15000, v4, v5, "Overriding map base userInterfaceStyle. NewStyle=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D9DDF0](v7, -1, -1);
    MEMORY[0x223D9DDF0](v6, -1, -1);
  }

  v11 = sub_220EF8494();
  [v11 setOverrideUserInterfaceStyle_];
}

uint64_t sub_220F6B830()
{
  v1 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  OUTLINED_FUNCTION_29(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 264) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 25))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  return sub_220F649B0(*(v0 + 16), v10 | *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), (v0 + 64), *(v0 + 248), *(v0 + 256), v0 + v6, *(v0 + v7), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 9), HIBYTE(*(v0 + v9 + 9)), *(v0 + ((v9 + 18) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v9 + 18) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220F6B958(uint64_t a1)
{
  if (*(v1 + 81))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_220F66444(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v2 | *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136));
}

uint64_t sub_220F6B9D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

unint64_t sub_220F6BA2C()
{
  result = qword_2812C8440;
  if (!qword_2812C8440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C8440);
  }

  return result;
}

void sub_220F6BAC0()
{
  v1 = sub_220FC23B0();
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_31_10();
  sub_220F677E4(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0 + v5, *(v0 + v2), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v4), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_60Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_220F6BC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading;
  if ((*(a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading) & 1) == 0)
  {
    v10 = *(a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler);
    if (v10)
    {
      v21 = 0x9000000000000000;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;

      v10(&v21);
      sub_220E2DD2C(v10);
    }
  }

  *(a3 + v9) = 1;
  *(a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayLoadingWasInterruptedByUserInteraction) = 0;
  v11 = *(a2 + 200);
  v12 = a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay;
  swift_beginAccess();
  v13 = type metadata accessor for WeatherMapOverlay();
  result = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (!result)
  {
    v15 = *(v12 + 200);
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        if (v15 != 4)
        {
          return result;
        }
      }

      else if (v11 == 5)
      {
        if (v15 != 5)
        {
          return result;
        }
      }

      else if ((v15 - 3) < 3)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (v15 == 3)
    {
LABEL_11:
      v16 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore;

      sub_220EE46C8();

      v17 = *(a3 + v16);
      sub_220F6D9E8(a2, v8, type metadata accessor for WeatherMapOverlay);
      v18 = __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
      MEMORY[0x28223BE20](v18, v19);
      *(&v20 - 4) = v8;
      *(&v20 - 3) = v17;
      *(&v20 - 8) = 768;

      sub_220EE41AC(sub_220F6DA74);

      return sub_220E3B2DC(v8, &unk_27CF9EB80);
    }
  }

  return result;
}

uint64_t sub_220F6BE68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v57 = a3;
  v58 = a4;
  v7 = sub_220FC2340();
  v51 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_220FC2390();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v10);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_220FC23B0();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v12);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v46 - v16;
  v18 = sub_220FC02B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v23 = sub_220FC17A0();
  __swift_project_value_buffer(v23, qword_2812C5ED0);
  swift_unknownObjectRetain();
  v24 = sub_220FC1780();
  v25 = sub_220FC2E30();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v55 = v22;
    v27 = v26;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v27 = 136446210;
    swift_getObjectType();
    v28 = sub_220FC3AE0();
    v47 = a5;
    v30 = v19;
    v31 = v17;
    v32 = v18;
    v33 = v7;
    v34 = sub_220E20FF8(v28, v29, aBlock);
    a5 = v47;

    *(v27 + 4) = v34;
    v7 = v33;
    v18 = v32;
    v17 = v31;
    v19 = v30;
    _os_log_impl(&dword_220E15000, v24, v25, "Adding new overlay to map. OverlayType=%{public}s", v27, 0xCu);
    v35 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x223D9DDF0](v35, -1, -1);
    v36 = v27;
    v22 = v55;
    MEMORY[0x223D9DDF0](v36, -1, -1);
  }

  sub_220FC0670();
  sub_220F6AD50(v22);

  sub_220EE4790(v22, 0);

  v37 = sub_220EF8494();
  [v37 setOverrideUserInterfaceStyle_];

  [*(a5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView) addOverlay:a2 level:v58];
  if (*(a5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_controlsAdded) == 1 && *(a5 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind) == 5)
  {
    sub_220E1AAEC();
    v57 = sub_220FC2FC0();
    v38 = v48;
    sub_220FC23A0();
    sub_220FC23D0();
    v58 = *(v52 + 8);
    v58(v38, v56);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_220F6D71C;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_220F6DA78;
    aBlock[3] = &block_descriptor_140_0;
    v40 = _Block_copy(aBlock);

    v55 = v22;
    v41 = v53;
    sub_220FC2350();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_220F6D8B4(&qword_2812C5E08, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9DBC0);
    sub_220E62E38();
    v42 = v49;
    sub_220FC3430();
    v43 = v57;
    MEMORY[0x223D9C4E0](v17, v41, v42, v40);
    _Block_release(v40);

    (*(v51 + 8))(v42, v7);
    v44 = v41;
    v22 = v55;
    (*(v54 + 8))(v44, v50);
    v58(v17, v56);
  }

  return (*(v19 + 8))(v22, v18);
}

void sub_220F6C4D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v44 - v19;
  v21 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay;
  swift_beginAccess();
  sub_220F26628(a2, a3 + v21);
  swift_endAccess();
  sub_220ECC944(a2, v20, &unk_27CF9EB80);
  sub_220F24D30(v20);
  sub_220ECC944(a2, v16, &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_220E3B2DC(v16, &unk_27CF9EB80);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v22 = sub_220FC17A0();
    __swift_project_value_buffer(v22, qword_2812C5ED0);
    v23 = a3;
    v24 = sub_220FC1780();
    v25 = sub_220FC2E30();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47[0] = v27;
      *v26 = 136446210;
      v46 = v23[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_presentingOverlayKind];
      sub_220E561E0();
      v28 = sub_220FC38F0();
      v30 = sub_220E20FF8(v28, v29, v47);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_220E15000, v24, v25, "Moving into unsupported area for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D9DDF0](v27, -1, -1);
      MEMORY[0x223D9DDF0](v26, -1, -1);
    }

    v31 = *&v23[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_scrubberStore];
    MEMORY[0x28223BE20](v32, v33);
    *(&v44 - 4) = a2;
    *(&v44 - 3) = v31;
    *(&v44 - 8) = 0;

    sub_220EE41AC(sub_220EE5D08);
  }

  else
  {
    sub_220F6B9D0(v16, v12, type metadata accessor for WeatherMapOverlay);
    if (qword_2812C5EC8 != -1)
    {
      swift_once();
    }

    v34 = sub_220FC17A0();
    __swift_project_value_buffer(v34, qword_2812C5ED0);
    sub_220F6D9E8(v12, v8, type metadata accessor for WeatherMapOverlay);
    v35 = sub_220FC1780();
    v36 = sub_220FC2E30();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v47[0] = v38;
      *v37 = 136446210;
      v46 = v8[200];
      sub_220E561E0();
      v39 = sub_220FC38F0();
      v45 = v5;
      v41 = v40;
      sub_220E436E0(v8, type metadata accessor for WeatherMapOverlay);
      v42 = sub_220E20FF8(v39, v41, v47);
      v5 = v45;

      *(v37 + 4) = v42;
      _os_log_impl(&dword_220E15000, v35, v36, "Done presenting new overlay for kind %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223D9DDF0](v38, -1, -1);
      MEMORY[0x223D9DDF0](v37, -1, -1);
    }

    else
    {

      sub_220E436E0(v8, type metadata accessor for WeatherMapOverlay);
    }

    LOBYTE(v47[0]) = v12[200];
    sub_220EF89B0(v47);
    sub_220F6D9E8(v12, v20, type metadata accessor for WeatherMapOverlay);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v5);
    v43 = *(a3 + OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_isUserInteractionEnabled);

    sub_220EE42C0(v20, 3, v43, 0);

    sub_220E3B2DC(v20, &unk_27CF9EB80);
    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_220F31868();
      swift_unknownObjectRelease();
    }

    sub_220E436E0(v12, type metadata accessor for WeatherMapOverlay);
  }

  sub_220EFDD00();
}

id sub_220F6CB08(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F010);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v58 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v56 - v23;
  v57 = a2;
  sub_220F6D9E8(a2, &v56 - v23, type metadata accessor for WeatherMapOverlay);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v5);
  v25 = OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_activeOverlay;
  swift_beginAccess();
  v26 = *(v10 + 56);
  sub_220ECC944(v24, v13, &unk_27CF9EB80);
  sub_220ECC944(&a3[v25], &v13[v26], &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) != 1)
  {
    sub_220ECC944(v13, v20, &unk_27CF9EB80);
    if (__swift_getEnumTagSinglePayload(&v13[v26], 1, v5) != 1)
    {
      sub_220F6B9D0(&v13[v26], v8, type metadata accessor for WeatherMapOverlay);
      v28 = sub_220F0AA24(v20, v8);
      sub_220E436E0(v8, type metadata accessor for WeatherMapOverlay);
      sub_220E3B2DC(v24, &unk_27CF9EB80);
      sub_220E436E0(v20, type metadata accessor for WeatherMapOverlay);
      result = sub_220E3B2DC(v13, &unk_27CF9EB80);
      if (!v28)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_220E3B2DC(v24, &unk_27CF9EB80);
    sub_220E436E0(v20, type metadata accessor for WeatherMapOverlay);
    return sub_220E3B2DC(v13, &qword_27CF9F010);
  }

  sub_220E3B2DC(v24, &unk_27CF9EB80);
  if (__swift_getEnumTagSinglePayload(&v13[v26], 1, v5) != 1)
  {
    return sub_220E3B2DC(v13, &qword_27CF9F010);
  }

  sub_220E3B2DC(v13, &unk_27CF9EB80);
LABEL_8:
  a3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_overlayIsLoading] = 0;
  result = [a3 view];
  if (result)
  {
    v29 = result;
    v30 = [result window];

    if (v30)
    {
      v31 = [v30 screen];
      [v31 scale];
      v33 = v32;

      v34 = [v30 screen];
      [v34 nativeScale];
      v36 = v35;

      v37 = sub_220EF8494();
      [v37 frame];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      [*&a3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController____lazy_storage___mapView] visibleMapRect];
      sub_220F6A680(v39, v41, v43, v45, v46, v47, v48, v49, v33, v36);
      if (UIAccessibilityIsVoiceOverRunning())
      {
        sub_220EFFE9C();
      }
    }

    v50 = v57;
    v51 = v58;
    sub_220F6D9E8(v57, v58, type metadata accessor for WeatherMapOverlay);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v5);
    LODWORD(v50) = *(v50 + 200) - 3;

    if (v50 < 3 || UIAccessibilityIsVoiceOverRunning() || !UIAccessibilityIsVideoAutoplayEnabled() || UIAccessibilityIsReduceMotionEnabled())
    {
      v52 = 0;
    }

    else
    {
      v52 = a3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_appIsInForeground];
    }

    sub_220EE42C0(v51, 3, 0, v52);

    result = sub_220E3B2DC(v51, &unk_27CF9EB80);
    v53 = &a3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
    v54 = *&a3[OBJC_IVAR____TtC11WeatherMaps25InteractiveViewController_onMapEventHandler];
    if (v54)
    {
      v59[0] = 0x1000000000000001;

      v54(v59);
      result = sub_220E2DD2C(v54);
      v55 = *v53;
      if (*v53)
      {
        v59[0] = 1;

        v55(v59);
        return sub_220E2DD2C(v55);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220F6D110(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v7 = sub_220FC17A0();
  __swift_project_value_buffer(v7, qword_2812C5ED0);
  swift_unknownObjectRetain();
  v8 = sub_220FC1780();
  v9 = sub_220FC2E30();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    swift_getObjectType();
    v12 = sub_220FC3AE0();
    v14 = sub_220E20FF8(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_220E15000, v8, v9, "Removing overlay from map. OverlayType=%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D9DDF0](v11, -1, -1);
    MEMORY[0x223D9DDF0](v10, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a3;
  a4;
  sub_220F6A63C(1, sub_220F6D310, v15);

  v16 = sub_220EF8494();
  [v16 removeOverlay_];
}

uint64_t sub_220F6D31C(uint64_t a1)
{
  v3 = sub_220FC23B0();
  OUTLINED_FUNCTION_29(v3);
  OUTLINED_FUNCTION_31_10();
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[5];
  v10 = v1[4];
  v7 = v1[7];
  v8 = v1[6];
  v6 = v1[8];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220F6D4A4;

  return sub_220F67BDC(a1, v12, v11, v10, v9, v8, v7, v6);
}

uint64_t sub_220F6D4A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_220F6D59C()
{
  v1 = sub_220FC23B0();
  OUTLINED_FUNCTION_29(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_220F68430(*(v0 + 16), v0 + v6, *(v0 + v8), *(v0 + v8 + 8), *(v0 + v8 + 16), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_57Tm(uint64_t a1)
{
  if (*(v1 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_103Tm()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220F6D7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220F6D8B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220F6D920()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_220F6DA84;

  return sub_220F00394();
}

uint64_t sub_220F6D9E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

BOOL OUTLINED_FUNCTION_16_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_220E3B2DC(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return swift_unknownObjectRelease();
}

id sub_220F6DBDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_220FC26C0();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void sub_220F6DC4C(void *a1, uint64_t a2, double a3)
{
  v6 = a3 + a3 + 2.0;
  v9.width = v6;
  v9.height = v6;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [a1 setFill];
  v7 = [objc_opt_self() bezierPathWithRoundedRect:a2 byRoundingCorners:0.0 cornerRadii:{0.0, v6, v6, a3, a3}];
  [v7 fill];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v8)
  {
    if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (a3 > -9.22337204e18)
    {
      if (a3 < 9.22337204e18)
      {
        [(UIImage *)v8 stretchableImageWithLeftCapWidth:a3 topCapHeight:a3];

        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

id sub_220F6DD88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_220E1966C(0, &qword_2812C5B80);
  v15 = sub_220E417BC(a3, 0x8000u, 0, 1, 0, 0, a5);
  v16 = [objc_opt_self() configurationWithFont:v15 scale:a4];
  v17 = v16;
  if (a7)
  {
    v18 = [v16 configurationByApplyingConfiguration_];
  }

  else
  {
    v18 = v16;
  }

  v19 = v18;
  sub_220E1966C(0, &qword_2812C5B50);

  v20 = v19;
  v21 = sub_220F6DBDC(a1, a2, v19);
  if (v21)
  {
    v22 = v21;
    v23 = [v21 imageWithRenderingMode_];
  }

  else
  {

    return 0;
  }

  return v23;
}

id sub_220F6DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 pointSize];

  sub_220E1966C(0, &qword_2812C5B80);
  v13 = sub_220FC3160();
  v14 = [objc_opt_self() configurationWithFont:v13 scale:a4];
  v15 = v14;
  if (a6)
  {
    v16 = [v14 configurationByApplyingConfiguration_];
  }

  else
  {
    v16 = v14;
  }

  v17 = v16;
  sub_220E1966C(0, &qword_2812C5B50);

  v18 = v17;
  v19 = sub_220F6DBDC(a1, a2, v17);
  if (v19)
  {
    v20 = v19;
    v21 = [v19 imageWithRenderingMode_];
  }

  else
  {

    return 0;
  }

  return v21;
}

double sub_220F6E0C4@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  type metadata accessor for WeatherMapAnnotatedLocationData(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  sub_220EDC548(a1, v17);
  v44 = swift_getEnumCaseMultiPayload() == 1;
  sub_220F73204(v17, type metadata accessor for WeatherMapAnnotatedLocationData);
  LOBYTE(v47[0]) = v18;
  v19 = sub_220F6E34C(a1, v47);
  v42 = v20;
  v43 = v19;
  v41 = v21;
  v40 = v22;
  LOBYTE(v47[0]) = v18;
  v39 = sub_220F6F214(a4, a1, v47, a3);
  v46 = v18;
  sub_220F6F25C(&v46, a5, v47);
  __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  v46 = v18;
  v45 = v18;
  v23 = sub_220F6F4A4(&v45, a1, a3, a5);
  v24 = type metadata accessor for WeatherMapAnnotationViewModel();
  sub_220E40CD8(&v46, a5, v23, (a6 + v24[9]));

  v46 = v18;
  v38 = sub_220F6F968(&v46, a5);
  v46 = v18;
  v25 = sub_220F6FA10(a1, &v46, a3, a5);
  v46 = v18;
  v26 = sub_220F7044C(&v46, a1, a3, a5);
  v27 = sub_220F70A18();
  v29 = v28;
  v46 = v18;
  v30 = sub_220F70BFC(a1, &v46);
  v31 = v42;
  *a6 = v43;
  *(a6 + 8) = v31;
  *(a6 + 16) = v41;
  *(a6 + 24) = v40 & 1;
  *(a6 + 25) = v44;
  *(a6 + 26) = 0;
  *(a6 + 27) = v39;
  result = *v47;
  v33 = v47[1];
  *(a6 + 32) = v47[0];
  *(a6 + 48) = v33;
  *(a6 + 64) = v48;
  *(a6 + v24[10]) = v38;
  *(a6 + v24[11]) = v25;
  *(a6 + v24[12]) = v26;
  v34 = (a6 + v24[13]);
  *v34 = v27;
  v34[1] = v29;
  v35 = (a6 + v24[14]);
  *v35 = v30;
  v35[1] = v36;
  return result;
}

uint64_t sub_220F6E34C(uint64_t a1, unsigned __int8 *a2)
{
  v128 = a1;
  v3 = sub_220FC2DB0();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v114 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220FC2DA0();
  v121 = *(v6 - 8);
  v122 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v120 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v117 = &v93 - v11;
  v12 = sub_220FC0950();
  v111 = *(v12 - 8);
  v112 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v110 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_220FC08D0();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v15);
  v95 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_220FC0890();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v17);
  v98 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v104 = (&v93 - v21);
  v113 = sub_220FC07C0();
  v102 = *(v113 - 1);
  MEMORY[0x28223BE20](v113, v22);
  v101 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220FC2450();
  v126 = *(v24 - 8);
  v127 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v125 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v124 = &v93 - v29;
  v109 = sub_220FC2F60();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109, v30);
  v107 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v32);
  v103 = &v93 - v33;
  v34 = sub_220FC05E0();
  v123 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_220FC0760();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a2;
  sub_220EDC548(v128, v46);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v67 = type metadata accessor for WeatherMapAnnotatedLocationData;
    v68 = v46;
LABEL_6:
    sub_220F73204(v68, v67);
    return 11565;
  }

  sub_220F06360(v46, v50);
  v39[2](v42, &v50[*(v47 + 20)], v38);
  v52 = v42;
  if (v51 != 3)
  {
    v128 = v38;
    v113 = v50;
    v104 = v39;
    v94 = v42;
    sub_220FC0700();
    if (v51 == 5)
    {
      v53 = v110;
      sub_220FC05C0();
      (*(v123 + 8))(v37, v34);
      v54 = v117;
      sub_220FC0930();
      (*(v111 + 8))(v53, v112);
      sub_220FC2C70();
      v56 = v114;
      v55 = v115;
      v57 = v116;
      (*(v115 + 104))(v114, *MEMORY[0x277D7B490], v116);
      v58 = sub_220FC03E0();
      v59 = v124;
      __swift_storeEnumTagSinglePayload(v124, 1, 1, v58);
      v60 = v120;
      sub_220FC2420();

      sub_220E3B2DC(v59, &qword_27CF9E5D0);
      (*(v55 + 8))(v56, v57);
      v61 = v125;
      v62 = v126;
      v63 = v127;
      (*(v126 + 104))(v125, *MEMORY[0x277D7B408], v127);
      sub_220FC0C80();
      sub_220FC0C60();
      sub_220ED5FD0(&qword_27CF9E5E0, MEMORY[0x277D7B488]);
      v64 = v119;
      v65 = v122;
      v66 = sub_220FBFCB0();

      (*(v62 + 8))(v61, v63);
      (*(v121 + 8))(v60, v65);
      (*(v118 + 8))(v54, v64);
    }

    else
    {
      v71 = v103;
      sub_220FC0580();
      (*(v123 + 8))(v37, v34);
      sub_220FC2C90();
      v72 = sub_220FC03E0();
      v73 = v124;
      __swift_storeEnumTagSinglePayload(v124, 1, 1, v72);
      v74 = v107;
      sub_220FC2440();

      sub_220E3B2DC(v73, &qword_27CF9E5D0);
      v75 = v125;
      v76 = v126;
      v77 = v127;
      (*(v126 + 104))(v125, *MEMORY[0x277D7B408], v127);
      sub_220FC0C80();
      sub_220FC0C60();
      sub_220ED5FD0(&qword_27CF9D078, MEMORY[0x277D7B508]);
      v78 = v106;
      v79 = v109;
      v66 = sub_220FBFCB0();

      (*(v76 + 8))(v75, v77);
      (*(v108 + 8))(v74, v79);
      (*(v105 + 8))(v71, v78);
    }

    v104[1](v94, v128);
    v80 = v113;
LABEL_11:
    sub_220F73204(v80, type metadata accessor for WeatherMapAnnotatedLocation);
    return v66;
  }

  v69 = v104;
  sub_220FC0710();
  v70 = v113;
  if (__swift_getEnumTagSinglePayload(v69, 1, v113) == 1)
  {
    sub_220E3B2DC(v69, &qword_27CF9D058);
    (v39[1])(v42, v38);
    v67 = type metadata accessor for WeatherMapAnnotatedLocation;
    v68 = v50;
    goto LABEL_6;
  }

  v82 = v102;
  v83 = v101;
  (*(v102 + 32))(v101, v69, v70);
  v84 = v98;
  sub_220FC07B0();
  v85 = sub_220FC0870();
  (*(v99 + 8))(v84, v100);
  if (v85)
  {
    v86 = v52;
    sub_220F7325C();
    v87 = sub_220FC2F20();
    sub_220FC07A0();
    v88 = sub_220FC2CA0();
    v89 = [v87 stringFromNumber_];

    if (v89)
    {
      v66 = sub_220FC2700();
    }

    else
    {
      v129 = sub_220FC07A0();
      v66 = sub_220FC38F0();
    }

    (*(v82 + 8))(v83, v70);
    (v39[1])(v86, v38);
    v80 = v50;
    goto LABEL_11;
  }

  v90 = v95;
  sub_220FC0790();
  v66 = sub_220FC08C0();
  v92 = v91;
  (*(v96 + 8))(v90, v97);
  if (!v92)
  {
    v66 = 0x776F6C2E697161;
  }

  (*(v82 + 8))(v83, v70);
  (v39[1])(v52, v38);
  sub_220F73204(v50, type metadata accessor for WeatherMapAnnotatedLocation);
  return v66;
}

uint64_t sub_220F6F214(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  if (*a3 == 3)
  {
    if (sub_220F72A8C(a2, a4))
    {
      return a1;
    }

    else
    {
      return 2;
    }
  }

  return a1;
}

void sub_220F6F25C(unsigned __int8 *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_220FC1070();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - v13;
  if (!a2)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v15 = *a1;
  if (a2 == 1)
  {
    if (v15 == 5)
    {
      v17 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ((v15 - 3) >= 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (a2 == 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_12:
  sub_220F05E6C(&v26 - v13);
  v18 = sub_220FC1030();
  v19 = *(v7 + 8);
  v19(v14, v6);
  if (v18)
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v20 = qword_2812CE4B0;
    v21 = sub_220FBFF80();
    v23 = v22;

    v24 = xmmword_220FD7250;
  }

  else
  {
    sub_220F05E6C(v11);
    v21 = sub_220FC1040();
    v23 = v25;
    v19(v11, v6);
    v24 = 0uLL;
  }

  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = v24;
  *(a3 + 32) = v17;
}

id sub_220F6F4A4(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v43 = a2;
  v44 = a4;
  v42 = sub_220FC0950();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_220FC05E0();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v39 = *(v41 - 8);
  v13 = MEMORY[0x28223BE20](v41, v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v36 - v21;
  v23 = sub_220FC0760();
  MEMORY[0x28223BE20](v23, v24);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0;
  if (*a1 == 5)
  {
    v29 = a3[1];
    if (v29)
    {
      v30 = v25;
      v45 = *a3;
      v46 = v29;
      memcpy(v47, a3 + 2, sizeof(v47));
      sub_220F05D10(v22);
      if (__swift_getEnumTagSinglePayload(v22, 1, v23) != 1)
      {
        v36 = v30;
        (*(v30 + 32))(v27, v22, v23);
        sub_220FC0700();
        sub_220FC05C0();
        (*(v37 + 8))(v11, v38);
        sub_220FC0930();
        (*(v40 + 8))(v8, v42);
        v32 = [objc_opt_self() metersPerSecond];
        v33 = v41;
        sub_220FBFCD0();

        v34 = *(v39 + 8);
        v34(v15, v33);
        sub_220FBFC80();
        v34(v18, v33);
        v28 = sub_220E311F4();
        (*(v36 + 8))(v27, v23);
        return v28;
      }

      sub_220E3B2DC(v22, &qword_27CF9CEE8);
    }

    if (v44 == 2)
    {
      return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0392156863 green:0.517647059 blue:1.0 alpha:1.0];
    }

    else
    {
      return [objc_opt_self() whiteColor];
    }
  }

  return v28;
}

id sub_220F6F968(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if ((v2 - 3) >= 2)
  {
    if (v2 == 5)
    {
      v3 = objc_opt_self();
      v4 = &selRef_blackColor;
      if (a2 == 2)
      {
        v4 = &selRef_whiteColor;
      }
    }

    else
    {
      v3 = objc_opt_self();
      v4 = &selRef_whiteColor;
    }
  }

  else
  {
    v3 = objc_opt_self();
    v4 = &selRef_labelColor;
  }

  v6 = [v3 *v4];

  return v6;
}

id sub_220F6FA10(uint64_t a1, unsigned __int8 *a2, uint64_t *a3, void (*a4)(char *, uint64_t))
{
  v81 = a4;
  v80 = a3;
  v73 = sub_220FC0950();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v6);
  v69 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v74 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75, v8);
  v70 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v72 = &v62 - v12;
  v68 = sub_220FC0890();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v13);
  v66 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v76 = &v62 - v17;
  v77 = sub_220FC07C0();
  v65 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v18);
  v64 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  v78 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v62 - v22;
  v24 = sub_220FC05E0();
  v79 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v62 - v30;
  v32 = sub_220FC0760();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a2;
  sub_220F05D10(v31);
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
  {
    v63 = v33;
    (*(v33 + 32))(v36, v31, v32);
    if (v37 == 3)
    {
      if (sub_220F72A8C(a1, v80))
      {
        v52 = v76;
        sub_220FC0710();
        v53 = v77;
        if (__swift_getEnumTagSinglePayload(v52, 1, v77) != 1)
        {
          v57 = v65;
          v58 = v64;
          (*(v65 + 32))(v64, v52, v53);
          v59 = v66;
          sub_220FC07B0();
          v60 = sub_220FC0870();
          v61 = v68;
          v81 = *(v67 + 8);
          v81(v59, v68);
          if (v60)
          {
            sub_220FC07A0();
          }

          else
          {
            sub_220FC07B0();
            sub_220FC07A0();
            sub_220FC0840();
            v81(v59, v61);
          }

          sub_220FC07B0();
          v54 = sub_220FC0850();
          v81(v59, v61);
          (*(v57 + 8))(v58, v53);
          goto LABEL_35;
        }

        sub_220E3B2DC(v52, &qword_27CF9D058);
        LOBYTE(v82) = 3;
        v43 = v81;
        goto LABEL_31;
      }

      v55 = [objc_opt_self() secondarySystemFillColor];
    }

    else
    {
      if (v37 != 5)
      {
        v39 = v63;
        if (v37 == 4)
        {
          v40 = v80[1];
          if (v40)
          {
            v82 = *v80;
            v83 = v40;
            memcpy(v84, v80 + 2, sizeof(v84));
            sub_220FC0700();
            sub_220FC0580();
            (*(v79 + 8))(v27, v24);
            sub_220FBFC80();
            (*(v78 + 8))(v23, v20);
            v41 = sub_220E311F4();
LABEL_26:
            v54 = v41;
            (*(v39 + 8))(v36, v32);
            return v54;
          }

          LOBYTE(v82) = 4;
        }

        else
        {
          LOBYTE(v82) = v37;
        }

        v41 = sub_220F729C8(&v82, v81);
        goto LABEL_26;
      }

      v43 = v81;
      if (v81 < 2)
      {
        v44 = v80[1];
        if (v44)
        {
          v82 = *v80;
          v83 = v44;
          memcpy(v84, v80 + 2, sizeof(v84));
          sub_220FC0700();
          v45 = v69;
          sub_220FC05C0();
          (*(v79 + 8))(v27, v24);
          v46 = v70;
          sub_220FC0930();
          (*(v71 + 8))(v45, v73);
          v47 = [objc_opt_self() metersPerSecond];
          v48 = v72;
          v49 = v75;
          sub_220FBFCD0();

          v50 = *(v74 + 8);
          v50(v46, v49);
          sub_220FBFC80();
          v50(v48, v49);
          v51 = sub_220E311F4();
LABEL_32:
          v54 = v51;
LABEL_35:
          (*(v63 + 8))(v36, v32);
          return v54;
        }

        LOBYTE(v82) = 5;
LABEL_31:
        v51 = sub_220F729C8(&v82, v43);
        goto LABEL_32;
      }

      v55 = [objc_opt_self() whiteColor];
    }

    v56 = v55;
    (*(v63 + 8))(v36, v32);
    return v56;
  }

  sub_220E3B2DC(v31, &qword_27CF9CEE8);
  if ((v37 - 3) >= 2)
  {
    if (v37 == 5)
    {
      v38 = [objc_opt_self() whiteColor];
      goto LABEL_11;
    }

    LOBYTE(v82) = v37;
    return sub_220F729C8(&v82, v81);
  }

  v38 = [objc_opt_self() systemGray3Color];
LABEL_11:

  return v38;
}

id sub_220F7044C(_BYTE *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v45 = sub_220FC0950();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220FC05E0();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v42 = *(v44 - 8);
  v14 = MEMORY[0x28223BE20](v44, v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v39 - v22;
  v24 = sub_220FC0760();
  MEMORY[0x28223BE20](v24, v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 5)
  {
    if (a4 >= 2 && a4 == 2)
    {
      v32 = objc_allocWithZone(MEMORY[0x277D75348]);

      return [v32 initWithRed:0.156862745 green:0.156862745 blue:0.156862745 alpha:0.9];
    }

LABEL_11:
    v33 = [objc_opt_self() whiteColor];

    return v33;
  }

  if (a4 >= 2)
  {
    goto LABEL_11;
  }

  v29 = v47[1];
  if (!v29)
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0392156863 green:0.517647059 blue:1.0 alpha:1.0];
  }

  v30 = v26;
  v48 = *v47;
  v49 = v29;
  memcpy(v50, v47 + 2, sizeof(v50));
  sub_220F05D10(v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_220E3B2DC(v23, &qword_27CF9CEE8);
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0392156863 green:0.517647059 blue:1.0 alpha:1.0];
  }

  v40 = v30;
  (*(v30 + 32))(v28, v23, v24);
  sub_220FC0700();
  sub_220FC05C0();
  (*(v41 + 8))(v12, v9);
  sub_220FC0930();
  (*(v43 + 8))(v8, v45);
  v34 = [objc_opt_self() metersPerSecond];
  v35 = v44;
  sub_220FBFCD0();

  v36 = *(v42 + 8);
  v36(v16, v35);
  sub_220FBFC80();
  v36(v19, v35);
  v37 = sub_220E311F4();
  v38 = [v37 colorWithAlphaComponent_];

  (*(v40 + 8))(v28, v24);
  return v38;
}

uint64_t sub_220F70A18()
{
  v0 = sub_220FC1070();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v14 - v7;
  sub_220F05E6C(&v14 - v7);
  v9 = sub_220FC1030();
  v10 = *(v1 + 8);
  v10(v8, v0);
  if (v9)
  {
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v11 = qword_2812CE4B0;
    v12 = sub_220FBFF80();
  }

  else
  {
    sub_220F05E6C(v5);
    v12 = sub_220FC1040();
    v10(v5, v0);
  }

  return v12;
}

uint64_t sub_220F70BFC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v228 = a2;
  v229 = a1;
  v208 = sub_220FC2DB0();
  v206 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v2);
  v205 = v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_220FC2DA0();
  v213 = *(v215 - 8);
  v5 = MEMORY[0x28223BE20](v215, v4);
  v211 = v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v203 = v175 - v8;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D048);
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210, v9);
  v207 = v175 - v10;
  v214 = sub_220FC0950();
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v11);
  v218 = v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_220FC08D0();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v13);
  v186 = v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_220FC0890();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184, v15);
  v182 = v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v201 = v175 - v19;
  v204 = sub_220FC07C0();
  v187 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v20);
  v185 = v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E5D0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v219 = v175 - v24;
  v200 = sub_220FC04B0();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v25);
  v197 = v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_220FC02B0();
  v196 = *(v198 - 8);
  MEMORY[0x28223BE20](v198, v27);
  v195 = v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D398);
  v192 = *(v194 - 8);
  MEMORY[0x28223BE20](v194, v29);
  v191 = v175 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3A0);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v202 = v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v193 = v175 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v220 = v175 - v39;
  v226 = sub_220FC2450();
  v230 = *(v226 - 8);
  MEMORY[0x28223BE20](v226, v40);
  v42 = v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_220FC2F60();
  v225 = *(v221 - 1);
  MEMORY[0x28223BE20](v221, v43);
  v45 = v175 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D050);
  v224 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v46);
  v48 = v175 - v47;
  v223 = sub_220FC05E0();
  v227 = *(v223 - 8);
  v50 = MEMORY[0x28223BE20](v223, v49);
  v190 = v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v54 = v175 - v53;
  v231 = sub_220FC0760();
  v55 = *(v231 - 8);
  MEMORY[0x28223BE20](v231, v56);
  v58 = v175 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v59, v60);
  v62 = v175 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v63, v64);
  v66 = v175 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v228) = *v228;
  sub_220EDC548(v229, v62);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_220F73204(v62, type metadata accessor for WeatherMapAnnotatedLocationData);
    if (qword_2812C5B30 != -1)
    {
      swift_once();
    }

    v92 = qword_2812CE4B0;
    v93 = sub_220FBFF80();

    return v93;
  }

  sub_220F06360(v62, v66);
  v67 = *(v63 + 20);
  v181 = v55;
  v68 = *(v55 + 16);
  v217 = v66;
  v68(v58, &v66[v67], v231);
  sub_220FC0700();
  v216 = v54;
  sub_220FC0580();
  sub_220FC2430();
  v69 = v230;
  v70 = *(v230 + 104);
  v176 = *MEMORY[0x277D7B408];
  v71 = v226;
  v177 = v70;
  v175[2] = v230 + 104;
  v70(v42);
  v175[3] = sub_220FC0C80();
  sub_220FC0C60();
  v72 = sub_220ED5FD0(&qword_27CF9D078, MEMORY[0x277D7B508]);
  v74 = v221;
  v73 = v222;
  v175[1] = v72;
  v179 = sub_220FBFCB0();
  v180 = v75;

  v76 = *(v69 + 8);
  v178 = v42;
  v230 = v69 + 8;
  v76(v42, v71);
  v78 = (v225 + 1);
  v77 = v225[1];
  v79 = v45;
  (v77)(v45, v74);
  v80 = v224 + 8;
  v81 = v48;
  v175[0] = *(v224 + 8);
  (v175[0])(v48, v73);
  v82 = v231;
  v229 = v58;
  switch(v228)
  {
    case 3:

      v119 = v201;
      sub_220FC0710();
      v120 = v204;
      if (__swift_getEnumTagSinglePayload(v119, 1, v204) == 1)
      {
        sub_220E3B2DC(v119, &qword_27CF9D058);
        if (qword_2812C5B30 != -1)
        {
          swift_once();
        }

        v121 = qword_2812CE4B0;
        v93 = sub_220FBFF80();

        (*(v227 + 8))(v216, v223);
        (*(v181 + 8))(v229, v82);
        goto LABEL_38;
      }

      v130 = v187;
      v131 = v185;
      (*(v187 + 32))(v185, v119, v120);
      v132 = v182;
      sub_220FC07B0();
      v133 = sub_220FC0870();
      (*(v183 + 8))(v132, v184);
      if (v133)
      {
        if (qword_2812C5B30 != -1)
        {
          swift_once();
        }

        v134 = qword_2812CE4B0;
        sub_220FBFF80();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
        v135 = swift_allocObject();
        *(v135 + 16) = xmmword_220FC8E10;
        v136 = sub_220FC07A0();
        v137 = MEMORY[0x277D83C10];
        *(v135 + 56) = MEMORY[0x277D83B88];
        *(v135 + 64) = v137;
        *(v135 + 32) = v136;
        v138 = v186;
        sub_220FC0790();
        v139 = sub_220FC08A0();
        v141 = v140;
        (*(v188 + 8))(v138, v189);
        *(v135 + 96) = MEMORY[0x277D837D0];
        *(v135 + 104) = sub_220E69720();
        *(v135 + 72) = v139;
        *(v135 + 80) = v141;
      }

      else
      {
        if (qword_2812C5B30 != -1)
        {
          swift_once();
        }

        v167 = qword_2812CE4B0;
        sub_220FBFF80();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
        v168 = swift_allocObject();
        *(v168 + 16) = xmmword_220FC8E30;
        v169 = v186;
        sub_220FC0790();
        v170 = sub_220FC08A0();
        v172 = v171;
        (*(v188 + 8))(v169, v189);
        *(v168 + 56) = MEMORY[0x277D837D0];
        *(v168 + 64) = sub_220E69720();
        *(v168 + 32) = v170;
        *(v168 + 40) = v172;
      }

      v93 = sub_220FC26D0();

      (*(v130 + 8))(v131, v120);
      (*(v227 + 8))(v216, v223);
LABEL_37:
      (*(v181 + 8))(v229, v231);
LABEL_38:
      v129 = v217;
      goto LABEL_39;
    case 5:
      v228 = v76;

      v94 = v190;
      sub_220FC0700();
      sub_220FC05C0();
      v95 = *(v227 + 8);
      v227 += 8;
      v225 = v95;
      (v95)(v94, v223);
      if (qword_2812C5B30 != -1)
      {
        swift_once();
      }

      v96 = qword_2812CE4B0;
      v224 = sub_220FBFF80();
      v222 = v97;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_220FC8E10;
      v99 = v207;
      sub_220FC0930();
      v100 = v206;
      v101 = v205;
      v102 = v208;
      (*(v206 + 104))(v205, *MEMORY[0x277D7B490], v208);
      v103 = sub_220FC03E0();
      v104 = v219;
      __swift_storeEnumTagSinglePayload(v219, 1, 1, v103);
      sub_220FC2C50();
      v105 = v203;
      sub_220FC2420();

      sub_220E3B2DC(v104, &qword_27CF9E5D0);
      (*(v100 + 8))(v101, v102);
      v106 = v211;
      sub_220FC2D90();
      v221 = *(v213 + 8);
      v107 = v215;
      (v221)(v105, v215);
      v108 = v178;
      v109 = v226;
      v177(v178, v176, v226);
      sub_220FC0C60();
      sub_220ED5FD0(&qword_27CF9E5E0, MEMORY[0x277D7B488]);
      v110 = v210;
      v111 = sub_220FBFCB0();
      v220 = v112;

      v228(v108, v109);
      (v221)(v106, v107);
      (*(v209 + 8))(v99, v110);
      v113 = MEMORY[0x277D837D0];
      *(v98 + 56) = MEMORY[0x277D837D0];
      v114 = sub_220E69720();
      *(v98 + 64) = v114;
      v115 = v220;
      *(v98 + 32) = v111;
      *(v98 + 40) = v115;
      v116 = v218;
      sub_220FC0910();
      v117 = sub_220FC0900();
      *(v98 + 96) = v113;
      *(v98 + 104) = v114;
      *(v98 + 72) = v117;
      *(v98 + 80) = v118;
      v93 = sub_220FC26D0();

      (*(v212 + 8))(v116, v214);
      (v225)(v216, v223);
      goto LABEL_37;
    case 4:
      v218 = v77;
      v228 = v76;
      v224 = v80;
      v225 = v78;
      v83 = v191;
      sub_220FC0720();
      v84 = v195;
      sub_220FC05B0();
      v85 = v197;
      sub_220FC1050();
      v86 = v220;
      sub_220FC0960();
      (*(v199 + 8))(v85, v200);
      (*(v196 + 8))(v84, v198);
      (*(v192 + 8))(v83, v194);
      v87 = v193;
      sub_220E69648(v86, v193);
      v88 = sub_220FC04F0();
      if (__swift_getEnumTagSinglePayload(v87, 1, v88) == 1)
      {
        sub_220E3B2DC(v87, &qword_27CF9D3A0);
        v215 = 0;
        v89 = 0;
        v90 = v226;
        v91 = v178;
      }

      else
      {
        sub_220FC04D0();
        (*(*(v88 - 8) + 8))(v87, v88);
        sub_220FC2C90();
        v142 = sub_220FC03E0();
        v143 = v219;
        __swift_storeEnumTagSinglePayload(v219, 1, 1, v142);
        sub_220FC2440();

        sub_220E3B2DC(v143, &qword_27CF9E5D0);
        v91 = v178;
        v90 = v226;
        v177(v178, v176, v226);
        sub_220FC0C60();
        v145 = v221;
        v144 = v222;
        v215 = sub_220FBFCB0();
        v89 = v146;

        v228(v91, v90);
        (v218)(v79, v145);
        (v175[0])(v81, v144);
      }

      v147 = v202;
      sub_220E69648(v220, v202);
      if (__swift_getEnumTagSinglePayload(v147, 1, v88) == 1)
      {
        sub_220E3B2DC(v147, &qword_27CF9D3A0);
        v148 = v231;
        v149 = v227;
        v150 = v223;
        if (v89)
        {
          v151 = v229;
LABEL_44:

          v173 = v181;
          sub_220E3B2DC(v220, &qword_27CF9D3A0);
          (*(v149 + 8))(v216, v150);
          (*(v173 + 8))(v151, v148);
          sub_220F73204(v217, type metadata accessor for WeatherMapAnnotatedLocation);
          return v179;
        }

LABEL_42:
        v151 = v229;
        goto LABEL_44;
      }

      sub_220FC04C0();
      (*(*(v88 - 8) + 8))(v147, v88);
      sub_220FC2C90();
      v152 = sub_220FC03E0();
      v153 = v90;
      v154 = v219;
      __swift_storeEnumTagSinglePayload(v219, 1, 1, v152);
      sub_220FC2440();

      sub_220E3B2DC(v154, &qword_27CF9E5D0);
      v177(v91, v176, v153);
      sub_220FC0C60();
      v156 = v221;
      v155 = v222;
      v230 = sub_220FBFCB0();
      v158 = v157;

      v228(v91, v153);
      (v218)(v79, v156);
      (v175[0])(v81, v155);
      if (!v89)
      {
        v148 = v231;
        v149 = v227;
        v150 = v223;
        goto LABEL_42;
      }

      v151 = v229;
      if (!v158)
      {
        v148 = v231;
        v149 = v227;
        v150 = v223;
        goto LABEL_44;
      }

      v159 = v215;
      v160 = v89;
      v161 = v180;
      v162 = v229;
      if (qword_2812C5B30 != -1)
      {
        swift_once();
      }

      v163 = qword_2812CE4B0;
      sub_220FBFF80();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_220FC9EF0;
      v165 = MEMORY[0x277D837D0];
      *(v164 + 56) = MEMORY[0x277D837D0];
      v166 = sub_220E69720();
      *(v164 + 32) = v179;
      *(v164 + 40) = v161;
      *(v164 + 96) = v165;
      *(v164 + 104) = v166;
      *(v164 + 64) = v166;
      *(v164 + 72) = v159;
      *(v164 + 80) = v160;
      *(v164 + 136) = v165;
      *(v164 + 144) = v166;
      *(v164 + 112) = v230;
      *(v164 + 120) = v158;
      v93 = sub_220FC26D0();

      sub_220E3B2DC(v220, &qword_27CF9D3A0);
      (*(v227 + 8))(v216, v223);
      (*(v181 + 8))(v162, v231);
      goto LABEL_38;
  }

  WeatherDataModel.rainExpectation.getter(&v233);
  v122 = sub_220F72F08(&v233);
  v124 = v217;
  if (v123)
  {
    v125 = v122;
    v126 = v123;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D070);
    v127 = swift_allocObject();
    *(v127 + 16) = xmmword_220FC8E10;
    v128 = v180;
    *(v127 + 32) = v179;
    *(v127 + 40) = v128;
    *(v127 + 48) = v125;
    *(v127 + 56) = v126;
    v232 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D068);
    sub_220E56234();
    v93 = sub_220FC2670();

    (*(v227 + 8))(v216, v223);
    (*(v181 + 8))(v229, v82);
    v129 = v124;
LABEL_39:
    sub_220F73204(v129, type metadata accessor for WeatherMapAnnotatedLocation);
    return v93;
  }

  (*(v227 + 8))(v216, v223);
  (*(v181 + 8))(v229, v82);
  sub_220F73204(v124, type metadata accessor for WeatherMapAnnotatedLocation);
  return v179;
}

id sub_220F729C8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      v3 = objc_opt_self();
      v4 = &selRef_whiteColor;
      break;
    case 4:
      v3 = objc_opt_self();
      v4 = &selRef_labelColor;
      break;
    case 3:
      v3 = objc_opt_self();
      v4 = &selRef_systemGray3Color;
      break;
    default:
      v3 = objc_opt_self();
      v4 = &selRef_whiteColor;
      if (a2 == 2)
      {
        v4 = &selRef_blackColor;
      }

      break;
  }

  v6 = [v3 *v4];

  return v6;
}

uint64_t sub_220F72A8C(uint64_t a1, uint64_t *a2)
{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D058);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v41 = &v36 - v5;
  v39 = sub_220FC07C0();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeatherMapAnnotatedLocation(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherMapAnnotatedLocationData(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v36 - v18;
  v20 = sub_220FC0760();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[1];
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = *a2;
  sub_220EDC548(v40, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220F06360(v15, v11);
    (*(v21 + 16))(v19, &v11[*(v8 + 20)], v20);
    sub_220F73204(v11, type metadata accessor for WeatherMapAnnotatedLocation);
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
    sub_220F73204(v15, type metadata accessor for WeatherMapAnnotatedLocationData);
  }

  v27 = v41;
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    v28 = &qword_27CF9CEE8;
    v29 = v19;
LABEL_9:
    sub_220E3B2DC(v29, v28);
LABEL_10:
    v31 = 0;
    return v31 & 1;
  }

  (*(v21 + 32))(v24, v19, v20);
  sub_220FC0710();
  v30 = v39;
  if (__swift_getEnumTagSinglePayload(v27, 1, v39) == 1)
  {
    (*(v21 + 8))(v24, v20);
    v28 = &qword_27CF9D058;
    v29 = v27;
    goto LABEL_9;
  }

  v33 = v37;
  (*(v37 + 32))(v38, v27, v30);
  if (sub_220FC0780() == v26 && v25 == v34)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_220FC3940();
  }

  (*(v33 + 8))(v38, v30);
  (*(v21 + 8))(v24, v20);
  return v31 & 1;
}

uint64_t sub_220F72F08(_BYTE *a1)
{
  v1 = 0;
  switch(*a1)
  {
    case 1:
      if (qword_2812C5B30 != -1)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    case 2:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 3:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 4:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    case 5:
      return v1;
    default:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_11;
      }

LABEL_13:
      swift_once();
LABEL_11:
      v2 = qword_2812CE4B0;
      v1 = sub_220FBFF80();

      return v1;
  }
}

uint64_t sub_220F73204(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_220F7325C()
{
  result = qword_2812C5CC0;
  if (!qword_2812C5CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812C5CC0);
  }

  return result;
}

uint64_t WeatherMapPerformanceTestConditions.init(location:zoomLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_220F04F80(a1, a4);
  result = OUTLINED_FUNCTION_1_64();
  v9 = a4 + v8;
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t WeatherMapPerformanceTestConditions.with(location:zoomLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  sub_220ED6038(a1, v13, &unk_27CF9D6D0);
  v18 = sub_220FC1070();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_220ED6038(v4, v17, &unk_27CF9D6D0);
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      sub_220E3B2DC(v13, &unk_27CF9D6D0);
    }

    if (a3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  (*(*(v18 - 8) + 32))(v17, v13, v18);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  if ((a3 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  OUTLINED_FUNCTION_1_64();
  v20 = (v4 + v19);
  a2 = *v20;
  v21 = *(v20 + 8);
LABEL_8:
  sub_220F04F80(v17, a4);
  result = OUTLINED_FUNCTION_1_64();
  v24 = a4 + v23;
  *v24 = a2;
  *(v24 + 8) = v21;
  return result;
}

BOOL static WeatherMapPerformanceTestConditions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_220FC1070();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EC10);
  v15 = OUTLINED_FUNCTION_8_0(v14);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v30 - v17;
  v20 = *(v19 + 56);
  sub_220ED6038(a1, &v30 - v17, &unk_27CF9D6D0);
  sub_220ED6038(a2, &v18[v20], &unk_27CF9D6D0);
  OUTLINED_FUNCTION_5_32(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_5_32(&v18[v20]);
    if (v21)
    {
      sub_220E3B2DC(v18, &unk_27CF9D6D0);
      goto LABEL_12;
    }

LABEL_9:
    sub_220E3B2DC(v18, &qword_27CF9EC10);
    return 0;
  }

  sub_220ED6038(v18, v13, &unk_27CF9D6D0);
  OUTLINED_FUNCTION_5_32(&v18[v20]);
  if (v21)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v18[v20], v4);
  sub_220F73DA4(&qword_2812CA078, MEMORY[0x277D7AB60]);
  v23 = sub_220FC26B0();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v13, v4);
  sub_220E3B2DC(v18, &unk_27CF9D6D0);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  OUTLINED_FUNCTION_1_64();
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if ((v27 & 1) == 0)
  {
    if (*v26 != *v28)
    {
      v29 = 1;
    }

    return (v29 & 1) == 0;
  }

  return (v29 & 1) != 0;
}

uint64_t sub_220F73834()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  __swift_allocate_value_buffer(v0, qword_2812C7D38);
  v1 = __swift_project_value_buffer(v0, qword_2812C7D38);
  v2 = type metadata accessor for WeatherMapPerformanceTestConditions(0);

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
}

uint64_t sub_220F738B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812C7D30 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  v3 = __swift_project_value_buffer(v2, qword_2812C7D38);
  return sub_220ED6038(v3, a1, &qword_27CF9F030);
}

uint64_t sub_220F73940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_220F74054();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_220F739A4()
{
  sub_220F73F0C();

  return sub_220FC1CE0();
}

uint64_t sub_220F739EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F030);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  sub_220ED6038(a1, &v7 - v5, &qword_27CF9F030);
  sub_220F73F0C();
  sub_220FC1CF0();
  return sub_220E3B2DC(a1, &qword_27CF9F030);
}

uint64_t sub_220F73AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F460) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F468);
  sub_220ED6038(v2, v6 + *(v7 + 28), &qword_27CF9F030);
  *v6 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F470);
  OUTLINED_FUNCTION_2();
  v10 = *(v9 + 16);

  return v10(a2, a1, v8);
}

uint64_t View.performanceTestConditions(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherMapPerformanceTestConditionsModifier(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220ED6038(a1, v10, &qword_27CF9F030);
  MEMORY[0x223D9B6E0](v10, a2, v6, a3);
  return sub_220F73C80(v10);
}

uint64_t sub_220F73C80(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPerformanceTestConditionsModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220F73D04()
{
  sub_220F73E9C(319, &qword_2812CA068, MEMORY[0x277D7AB60]);
  if (v0 <= 0x3F)
  {
    sub_220F1FA08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_220F73DA4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220F73E14()
{
  sub_220F73E9C(319, qword_2812C7FA0, type metadata accessor for WeatherMapPerformanceTestConditions);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_220F73E9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_220F73F0C()
{
  result = qword_2812C7D20;
  if (!qword_2812C7D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812C7D20);
  }

  return result;
}

unint64_t sub_220F73F70()
{
  result = qword_27CF9F478;
  if (!qword_27CF9F478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F460);
    sub_220E453D4(&qword_27CF9F480, &qword_27CF9F470);
    sub_220E453D4(&qword_27CF9F488, &qword_27CF9F468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F478);
  }

  return result;
}

unint64_t sub_220F74054()
{
  result = qword_27CF9F490;
  if (!qword_27CF9F490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F030);
    sub_220F73DA4(&qword_27CF9F498, type metadata accessor for WeatherMapPerformanceTestConditions);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F490);
  }

  return result;
}

uint64_t sub_220F74108(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = v3[6];
  v9 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
  (*(v9 + 8))(v18, v8, v9);
  v10 = __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_220F745D0(*v10, a3, a1, a2 & 1);
  v12 = v11;
  __swift_destroy_boxed_opaque_existential_0(v18);
  v13 = v4[2];
  if (v13)
  {
    v14 = [v13 renderCommandEncoderWithDescriptor_];
  }

  else
  {
    v14 = 0;
  }

  _s17TileRenderContextCMa();
  v15 = swift_allocObject();

  sub_220F74220(v16, v12, v14);
  return v15;
}

void *sub_220F74220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF30);
  swift_allocObject();
  v3[2] = sub_220FC13C0();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_220F742A0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    swift_unknownObjectRetain();

    sub_220FC13E0();

    if (LOBYTE(v19[0]) == 1)
    {
      v2 = *(v0 + 24);
      v3 = v2[6];
      v4 = v2[7];
      __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
      (*(v4 + 8))(v19, v3, v4);
      v5 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
      v6 = *v5;
      v7 = *(*v5 + 80);
      v18[3] = &type metadata for MainOverlayRenderContext.Primitives;
      v18[4] = &off_283481C90;
      v8 = swift_allocObject();
      v18[0] = v8;
      v9 = *(v6 + 88);
      v10 = *(v6 + 104);
      *(v8 + 16) = v7;
      *(v8 + 40) = v10;
      *(v8 + 24) = v9;
      v11 = __swift_project_boxed_opaque_existential_1(v18, &type metadata for MainOverlayRenderContext.Primitives);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      v16 = v11[4];
      swift_unknownObjectRetain();
      [v1 setVertexBuffer:v12 offset:0 atIndex:0];
      [v1 drawPrimitives:v13 vertexStart:v15 vertexCount:v14 instanceCount:v16];
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v18);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    [v1 endEncoding];
  }
}

uint64_t sub_220F7443C()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_220F74474()
{
  sub_220F7443C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_220F744CC(uint64_t a1, id a2, char a3)
{
  v6 = type metadata accessor for MainOverlayRenderContext();
  v11[3] = v6;
  v11[4] = &off_283481CA0;
  v11[0] = a1;
  if (a3)
  {

    sub_220F748CC(a2, 1);
  }

  else
  {
    v7 = v6;
    v8 = objc_opt_self();

    v9 = [v8 texture2DDescriptorWithPixelFormat:71 width:512 height:512 mipmapped:0];
    [v9 setUsage_];
    a2 = [*(*__swift_project_boxed_opaque_existential_1(v11 v7) + 16)];
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return a2;
}

void sub_220F745D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v27 = type metadata accessor for MainOverlayRenderContext();
  v28 = &off_283481CA0;
  v26[0] = a1;
  v8 = *__swift_project_boxed_opaque_existential_1(v26, v27);

  v9 = sub_220F744CC(v8, a3, a4 & 1);
  v10 = [objc_msgSend(objc_allocWithZone(MEMORY[0x277CD6F50]) init)];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v11 setTexture_];

  v12 = OUTLINED_FUNCTION_0_76();
  v13 = OUTLINED_FUNCTION_2_45(v12);

  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v13 setLoadAction_];

  v14 = OUTLINED_FUNCTION_0_76();
  v15 = OUTLINED_FUNCTION_2_45(v14);

  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v15 setStoreAction_];

  v16 = OUTLINED_FUNCTION_0_76();
  v17 = OUTLINED_FUNCTION_2_45(v16);

  if (!v17)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_3_43(v17, sel_setClearColor_);

  if (!a2)
  {
LABEL_11:
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(v26);
    return;
  }

  v18 = OUTLINED_FUNCTION_0_76();
  v19 = [v18 objectAtIndexedSubscript_];

  if (!v19)
  {
    goto LABEL_16;
  }

  [v19 setTexture_];

  v20 = OUTLINED_FUNCTION_0_76();
  v21 = OUTLINED_FUNCTION_1_65(v20);

  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v21 setLoadAction_];

  v22 = OUTLINED_FUNCTION_0_76();
  v23 = OUTLINED_FUNCTION_1_65(v22);

  if (!v23)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v23 setStoreAction_];

  v24 = OUTLINED_FUNCTION_0_76();
  v25 = OUTLINED_FUNCTION_1_65(v24);

  if (v25)
  {
    OUTLINED_FUNCTION_3_43(v25, sel_setClearColor_);

    goto LABEL_11;
  }

LABEL_19:
  __break(1u);
}

id sub_220F748CC(void *a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

_BYTE *storeEnumTagSinglePayload for OverlayRenderDestination(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220F749C8()
{
  result = qword_27CF9F4A0;
  if (!qword_27CF9F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F4A0);
  }

  return result;
}

uint64_t sub_220F74A1C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_220FC34C0();
  }

  else
  {
    return *(a1 + 16);
  }
}

id sub_220F74A3C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77();
  sub_220F752D0();
  v6 = sub_220FC2C00();
  v19.receiver = v2;
  v19.super_class = v3;
  objc_msgSendSuper2(&v19, sel_touchesBegan_withEvent_, v6, a2);

  if (sub_220F74A1C(a1) != 1)
  {
    return [v2 setState_];
  }

  v7 = sub_220EF5670(a1);
  if (v7)
  {
    v8 = v7;
    v9 = [v2 view];
    [v8 locationInView_];
    v11 = v10;
    v13 = v12;

    v14 = &v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location];
    *v14 = v11;
    *(v14 + 1) = v13;
  }

  [v2 setState_];
  v15 = [objc_allocWithZone(MEMORY[0x277D75A10]) init];
  v16 = OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator;
  v17 = *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator];
  *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator] = v15;

  result = *&v2[v16];
  if (result)
  {
    return [result prepare];
  }

  return result;
}

id sub_220F74BBC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77();
  sub_220F752D0();
  v6 = sub_220FC2C00();
  v24.receiver = v2;
  v24.super_class = v3;
  objc_msgSendSuper2(&v24, sel_touchesMoved_withEvent_, v6, a2);

  v7 = sub_220EF5670(a1);
  if (v7)
  {
    v8 = v7;
    v9 = [v2 view];
    [v8 locationInView_];
    v22 = v11;
    v23 = v10;

    *&v12.f64[0] = v23;
    *&v12.f64[1] = v22;
    *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_lastTranslation] = vsubq_f64(v12, *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location]);
  }

  v13 = sub_220EF5670(a1);
  if (v13)
  {
    v14 = v13;
    v15 = [v2 view];
    [v14 locationInView_];
    v17 = v16;
    v19 = v18;

    v20 = &v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location];
    *v20 = v17;
    *(v20 + 1) = v19;
  }

  return [v2 setState_];
}

void sub_220F74D40(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_77();
  sub_220F752D0();
  v5 = sub_220FC2C00();
  v7.receiver = v2;
  v7.super_class = v3;
  objc_msgSendSuper2(&v7, sel_touchesEnded_withEvent_, v5, a2);

  [v2 setState_];
  v6 = *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator];
  *&v2[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator] = 0;
}

uint64_t sub_220F74E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  OUTLINED_FUNCTION_0_77();
  sub_220F752D0();
  v8 = sub_220FC2C10();
  v9 = a4;
  v10 = v5;
  a5(v8, v9);
}

void sub_220F74E98(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location);
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_lastTranslation);
  v4 = v2 + v3;
  if (v2 + v3 >= v2)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location);
  }

  else
  {
    v5 = v2 + v3;
  }

  if (v2 <= v4)
  {
    v2 = v4;
  }

  if (v5 > v2)
  {
    __break(1u);
  }

  else if (v5 <= a1 && v2 > a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator);
    if (v7)
    {
      [v7 selectionChanged];
    }
  }
}

id sub_220F74EFC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    MEMORY[0x28223BE20](v6, v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_220FC3920();
    (*(v7 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v2) initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id sub_220F75044(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_lastTranslation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_location];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC11WeatherMaps28MapScrubberGestureRecognizer_feedbackGenerator] = 0;
  sub_220E5EA18(a1, v19);
  v9 = v20;
  if (v20)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10, v10);
    v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_220FC3920();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithTarget_action_, v15, a2);
  swift_unknownObjectRelease();
  sub_220E5E9B0(a1);
  return v16;
}

unint64_t sub_220F7528C()
{
  result = qword_27CF9EA60;
  if (!qword_27CF9EA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF9EA60);
  }

  return result;
}

unint64_t sub_220F752D0()
{
  result = qword_27CF9F4C0;
  if (!qword_27CF9F4C0)
  {
    sub_220F7528C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F4C0);
  }

  return result;
}

uint64_t sub_220F75328(const void *a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), 0x61uLL);
  memcpy(v6, (v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), 0x61uLL);
  memcpy((v1 + OBJC_IVAR____TtC11WeatherMaps21MapScaleOverlayUIView_model), a1, 0x61uLL);
  sub_220E81E34(__dst, __src);
  sub_220EA7278(v6);
  memcpy(__src, __dst, 0x61uLL);
  sub_220F755E8(__src);
  return sub_220EA7278(__dst);
}