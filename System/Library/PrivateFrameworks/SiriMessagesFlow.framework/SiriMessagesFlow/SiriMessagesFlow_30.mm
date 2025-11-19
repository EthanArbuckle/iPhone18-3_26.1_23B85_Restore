uint64_t sub_267E0D820(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v3)
        {
          if (--v3)
          {
            v7 = 0;
            v15 = v22 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                break;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                break;
              }

              v10 = __CFADD__(10 * v7, v16);
              v7 = 10 * v7 + v16;
              if (v10)
              {
                break;
              }

              ++v15;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          v18 = v22;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = __CFADD__(10 * v7, v19);
            v7 = 10 * v7 + v19;
            if (v10)
            {
              break;
            }

            ++v18;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

      if (v3)
      {
        if (--v3)
        {
          v7 = 0;
          v11 = v22 + 1;
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              break;
            }

            if (!is_mul_ok(v7, 0xAuLL))
            {
              break;
            }

            v10 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v10)
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_267EF9BC8();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          v3 = v4 - 1;
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v7, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v10 = __CFADD__(10 * v7, v14);
                v7 = 10 * v7 + v14;
                if (v10)
                {
                  goto LABEL_63;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_55;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v17 = *result - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = __CFADD__(10 * v7, v17);
              v7 = 10 * v7 + v17;
              if (v10)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_55;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_63:
        v7 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            v8 = (result + 1);
            while (1)
            {
              v9 = *v8 - 48;
              if (v9 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_63;
              }

              v10 = 10 * v7 >= v9;
              v7 = 10 * v7 - v9;
              if (!v10)
              {
                goto LABEL_63;
              }

              ++v8;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_55:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v20 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v7 = sub_267E0E9C4(result, a2, 10);
  v20 = v21;
LABEL_65:

  if (v20)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

id sub_267E0DB18(uint64_t a1)
{
  v2 = sub_267EF2AF8();
  v3 = [swift_getObjCClassFromMetadata() assetWithURL_];

  v4 = sub_267EF2BA8();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v3;
}

id sub_267E0DBB0(uint64_t a1)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = sub_267EF2BA8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  (*(v6 + 16))(v5, a1);
  v7 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v8 = sub_267E0E810(v5, 3, 1);
  v9 = [v8 processingFormat];
  v10 = [v8 length];

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:v10];

  if (!v11)
  {
    if (qword_280228818 == -1)
    {
LABEL_9:
      v22 = sub_267EF8A08();
      __swift_project_value_buffer(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95E8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_267B93000, v23, v24, "Failed to initializes a PCM audio buffer", v25, 2u);
        MEMORY[0x26D60A7B0](v25, -1, -1);
      }

      sub_267C266B0();
      v15 = swift_allocError();
      *v26 = 0xD000000000000015;
      v26[1] = 0x8000000267F1B1A0;
      goto LABEL_17;
    }

LABEL_25:
    swift_once();
    goto LABEL_9;
  }

  v45[0] = 0;
  if (([v8 readIntoBuffer:v11 error:v45] & 1) == 0)
  {
    v27 = v45[0];
    v15 = sub_267EF2A78();

    swift_willThrow();
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v28 = sub_267EF8A08();
    __swift_project_value_buffer(v28, qword_280240FB0);
    v29 = v15;
    v30 = sub_267EF89F8();
    v31 = sub_267EF95E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45[0] = v33;
      *v32 = 136315138;
      swift_getErrorValue();
      v34 = sub_267EF9F68();
      v36 = sub_267BA33E8(v34, v35, v45);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_267B93000, v30, v31, "Failed to read AVAudioFile %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D60A7B0](v33, -1, -1);
      MEMORY[0x26D60A7B0](v32, -1, -1);
    }

LABEL_17:
    goto LABEL_18;
  }

  v12 = v45[0];
  v13 = [v11 int16ChannelData];
  if (v13)
  {
    v14 = *v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D47A08]) init];
    v16 = [v8 length];
    v17 = [v8 processingFormat];
    v18 = [v17 streamDescription];

    if ((v16 * v18[6]) >> 64 == (v16 * v18[6]) >> 63)
    {
      v19 = MEMORY[0x26D6028C0](v14);
      sub_267E0F3C0(v19, v20, v15);
      sub_267BA9F38(0, &qword_28022C5F0, 0x277D47A10);
      v21 = sub_267E0CCC0([v8 processingFormat]);
      [v15 setDecoderStreamDescription_];
      [v15 setPlayerStreamDescription_];

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_280228818 != -1)
  {
LABEL_27:
    swift_once();
  }

  v39 = sub_267EF8A08();
  __swift_project_value_buffer(v39, qword_280240FB0);
  v40 = sub_267EF89F8();
  v41 = sub_267EF95E8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_267B93000, v40, v41, "Failed to read PCM audio buffer contents", v42, 2u);
    MEMORY[0x26D60A7B0](v42, -1, -1);
  }

  sub_267C266B0();
  v15 = swift_allocError();
  *v43 = 0xD00000000000001FLL;
  v43[1] = 0x8000000267F1B1C0;

LABEL_18:
  v37 = *MEMORY[0x277D85DE8];
  return v15;
}

void *sub_267E0E360()
{
  OUTLINED_FUNCTION_101();
  v2 = sub_267EF2BA8();
  v3 = OUTLINED_FUNCTION_58(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v45 - v11;
  v13 = [v0 fileURL];
  if (v13)
  {
    v14 = v13;
    sub_267EF2B48();

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v15 = sub_267EF8A08();
    __swift_project_value_buffer(v15, qword_280240FB0);
    (*(v5 + 16))(v10, v12, v2);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95D8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v45[1] = v1;
      v19 = v18;
      v20 = swift_slowAlloc();
      v46 = v5;
      v47 = v2;
      v21 = v20;
      v48 = v20;
      *v19 = 136315138;
      v22 = sub_267EF2AC8();
      v24 = v23;
      v25 = v10;
      v26 = *(v46 + 8);
      v26(v25, v47);
      v27 = sub_267BA33E8(v22, v24, &v48);

      *(v19 + 4) = v27;
      _os_log_impl(&dword_267B93000, v16, v17, "#AudioMessageUtils attempting to create SayIt for audioMessageURL: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v2 = v47;
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
      OUTLINED_FUNCTION_11_19();
      MEMORY[0x26D60A7B0]();
    }

    else
    {

      v34 = v10;
      v26 = *(v5 + 8);
      v26(v34, v2);
    }

    if (sub_267EF2B58())
    {
      v35 = sub_267EF89F8();
      v36 = sub_267EF95D8();
      v37 = OUTLINED_FUNCTION_13_0();
      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_14_0();
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_267B93000, v35, v36, "#AudioMessageUtils audioMessageURL has security scope", v39, 2u);
        OUTLINED_FUNCTION_11_19();
        MEMORY[0x26D60A7B0]();
      }

      v32 = sub_267E0C910();
      v41 = v40;
      sub_267E0F454(v32);
      sub_267EF2B38();
      if ((v41 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v32 = sub_267E0C910();
      v43 = v42;
      sub_267E0F454(v32);
      if ((v43 & 1) == 0)
      {
LABEL_16:
        sub_267C095E0(v32);
        v26(v12, v2);
        return v32;
      }
    }

    v48 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
    swift_willThrowTypedImpl();
    sub_267C095E0(v32);
    v26(v12, v2);
    return v32;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = sub_267EF89F8();
  v30 = sub_267EF95E8();
  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_14_0();
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_267B93000, v29, v30, "#AudioMessageUtils INFile does not have fileURL, cannot create SayIt", v31, 2u);
    OUTLINED_FUNCTION_11_19();
    MEMORY[0x26D60A7B0]();
  }

  sub_267C266B0();
  v32 = swift_allocError();
  *v33 = 0xD00000000000002FLL;
  v33[1] = 0x8000000267F1B120;
  swift_willThrow();
  return v32;
}

id sub_267E0E810(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_267EF2AF8();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_267EF2BA8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_267EF2A78();

    swift_willThrow();
    v15 = sub_267EF2BA8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_267E0E96C()
{
  result = qword_28022AE70;
  if (!qword_28022AE70)
  {
    sub_267EF2BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AE70);
  }

  return result;
}

unsigned __int8 *sub_267E0E9C4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_267EF9268();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_267E0EF4C();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_267EF9BC8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_267E0EF4C()
{
  v0 = sub_267E0EFB8();
  v4 = sub_267E0EFEC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_267E0EFEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_267EF9108();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_267EF9898();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_267BBAFA8(v9, 0);
  v12 = sub_267E0F14C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_267EF9108();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_267EF9BC8();
LABEL_4:

  return sub_267EF9108();
}

unint64_t sub_267E0F14C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_267C95954(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_267EF91E8();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_267EF9BC8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_267C95954(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_267EF91C8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_267E0F35C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();

  [a3 setFormat_];
}

void sub_267E0F3C0(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_267EF2BB8();
  sub_267BBE0DC(a1, a2);
  [a3 setAudioBuffer_];
}

uint64_t sub_267E0F498(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_267C72264(0, v1, 0);
    v2 = v11;
    v4 = *(sub_267EF6868() - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      v7 = sub_267EF6828();
      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_267C72264((v8 > 1), v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 4 * v9 + 32) = v7;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_267E0F5C4()
{
  OUTLINED_FUNCTION_11_22();
  v20 = v0;
  v2 = v1;
  v19 = sub_267EF6A08();
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    if (!i)
    {
LABEL_14:
      OUTLINED_FUNCTION_10_4();
      return;
    }

    v21 = MEMORY[0x277D84F90];
    sub_267C72284();
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v17 = v2;
    v18 = v2 & 0xC000000000000001;
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v18)
      {
        MEMORY[0x26D609870](v12, v2);
      }

      else
      {
        if (v12 >= *(v16 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v2 + 8 * v12 + 32);
      }

      v20();

      v15 = *(v21 + 16);
      if (v15 >= *(v21 + 24) >> 1)
      {
        sub_267C72284();
      }

      *(v21 + 16) = v15 + 1;
      (*(v4 + 32))(v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15, v10, v19);
      ++v12;
      v2 = v17;
      if (v13 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
}

char *sub_267E0F7D0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_267EF9A68())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v3;
    }

    v15 = MEMORY[0x277D84F90];
    result = sub_267C72264(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v15;
    v14 = v1 & 0xC000000000000001;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v1;
    while (1)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14)
      {
        v8 = MEMORY[0x26D609870](v5, v1);
      }

      else
      {
        if (v5 >= *(v13 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = sub_267DEB048();

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_267C72264((v11 > 1), v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      *(v15 + 4 * v12 + 32) = v10;
      ++v5;
      v1 = v6;
      if (v7 == i)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267E0F940(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v9 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  result = a2();
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return v9;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D609870](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    sub_267EF5988();
    if (v11)
    {
      sub_267EF56B8();
    }

    a3(0);
    sub_267EF5E08();

    ++v6;
    if (v11)
    {
      MEMORY[0x26D608F90](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      result = sub_267EF9368();
      v9 = v12;
      v6 = v8;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_267E0FAD0(uint64_t a1)
{
  v2 = sub_267EF6868();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v34 = v3 + 16;
  v35 = v11;
  v30 = (v3 + 32);
  v33 = (v3 + 8);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v35 == v10)
    {

      return v32;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = *(v3 + 72);
    v14 = a1;
    v15 = v2;
    (*(v3 + 16))(v9, a1 + v12 + v13 * v10, v2);
    v16 = sub_267EF6858();
    v17 = sub_267DEB2B8();

    if (v17)
    {
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v18 = sub_267EF8A08();
      __swift_project_value_buffer(v18, qword_280240FB0);
      v19 = sub_267EF89F8();
      v20 = sub_267EF95D8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_267B93000, v19, v20, "#SendMessageNLv4IntentConverter filtering out empty recipient", v21, 2u);
        MEMORY[0x26D60A7B0](v21, -1, -1);
      }

      v2 = v15;
      result = (*v33)(v9, v15);
      ++v10;
      a1 = v14;
    }

    else
    {
      v22 = *v30;
      (*v30)(v31, v9, v15);
      v23 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v23;
      v29 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = *(v23 + 16);
        sub_267C726EC();
        v23 = v36;
      }

      v26 = *(v23 + 16);
      v27 = v26 + 1;
      if (v26 >= *(v23 + 24) >> 1)
      {
        v32 = v26 + 1;
        sub_267C726EC();
        v27 = v32;
        v23 = v36;
      }

      ++v10;
      *(v23 + 16) = v27;
      v32 = v23;
      v28 = v23 + v12 + v26 * v13;
      v2 = v15;
      result = v29(v28, v31, v15);
      a1 = v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_267E0FE08(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_267E19028(a1, sub_267E19614, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_267E0FE8C()
{
  OUTLINED_FUNCTION_11_22();
  v1 = v0;
  v3 = v2;
  v4 = sub_267EF6288();
  OUTLINED_FUNCTION_23();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_0();
  v38 = v11 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C110, &unk_267F0AC80);
  v12 = OUTLINED_FUNCTION_22(v47);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF08, &unk_267F09620);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v44 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v36 - v24;
  v26 = sub_267BAF0DC(v3);
  v27 = 0;
  v49 = v3;
  v50 = v3 & 0xC000000000000001;
  v48 = v3 & 0xFFFFFFFFFFFFFF8;
  v46 = *v1;
  v45 = (v6 + 104);
  v37 = (v6 + 32);
  v41 = (v6 + 8);
  v42 = v25;
  v28 = v26;
  v51 = v23;
  v43 = v26;
  while (1)
  {
    if (v28 == v27)
    {
      goto LABEL_22;
    }

    if (v50)
    {
      MEMORY[0x26D609870](v27, v49);
    }

    else
    {
      if (v27 >= *(v48 + 16))
      {
        goto LABEL_24;
      }

      v29 = *(v49 + 8 * v27 + 32);
    }

    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (sub_267EF5EA8())
    {
      sub_267EF6278();
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v25, 1, 1, v4);
    }

    (*v45)(v23, v46, v4);
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v4);
    v30 = *(v47 + 48);
    sub_267C2FB6C(v25, v16, &qword_28022AF08, &unk_267F09620);
    sub_267C2FB6C(v23, &v16[v30], &qword_28022AF08, &unk_267F09620);
    OUTLINED_FUNCTION_7_0(v16);
    if (v32)
    {
      OUTLINED_FUNCTION_3_64();
      sub_267B9F98C(v25, &qword_28022AF08, &unk_267F09620);
      OUTLINED_FUNCTION_7_0(&v16[v30]);
      if (v32)
      {
        sub_267B9F98C(v16, &qword_28022AF08, &unk_267F09620);

LABEL_22:
        OUTLINED_FUNCTION_10_4();
        return;
      }

      goto LABEL_18;
    }

    v31 = v44;
    sub_267C2FB6C(v16, v44, &qword_28022AF08, &unk_267F09620);
    OUTLINED_FUNCTION_7_0(&v16[v30]);
    if (v32)
    {
      sub_267B9F98C(v51, &qword_28022AF08, &unk_267F09620);
      v25 = v42;
      OUTLINED_FUNCTION_3_64();
      (*v41)(v31, v4);
      v28 = v43;
LABEL_18:
      sub_267B9F98C(v16, &qword_28022C110, &unk_267F0AC80);

      v23 = v51;
      goto LABEL_20;
    }

    v33 = v38;
    (*v37)(v38, &v16[v30], v4);
    sub_267E195CC(&qword_28022C118, MEMORY[0x277D5EF80]);
    v40 = sub_267EF8FE8();
    v39 = *v41;
    v39(v33, v4);
    v34 = v51;
    OUTLINED_FUNCTION_3_64();
    v35 = v42;
    sub_267B9F98C(v42, &qword_28022AF08, &unk_267F09620);
    v39(v31, v4);
    v23 = v34;
    v25 = v35;
    sub_267B9F98C(v16, &qword_28022AF08, &unk_267F09620);

    v28 = v43;
    if (v40)
    {
      goto LABEL_22;
    }

LABEL_20:
    ++v27;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_267E10344(uint64_t result, void *a2, _BYTE *a3, uint64_t *a4)
{
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(sub_267EF6868() - 8);
    result = sub_267E17EC0(v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
  return result;
}

uint64_t sub_267E1041C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_267EF57C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v20 = a1;
  v9 = *(a1 + 16);
  v19 = v4 + 16;
  while (1)
  {
    if (v9 == v8)
    {
      v14 = 1;
      v15 = v18;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v3);
    }

    (*(v4 + 16))(v7, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8, v3);
    v10 = sub_267EF57B8();
    if (!v11)
    {
      goto LABEL_9;
    }

    if (v10 == 0xD000000000000016 && v11 == 0x8000000267F0FDD0)
    {
      break;
    }

    v13 = sub_267EF9EA8();

    if (v13)
    {
      goto LABEL_12;
    }

LABEL_9:
    (*(v4 + 8))(v7, v3);
    ++v8;
  }

LABEL_12:
  v15 = v18;
  (*(v4 + 32))(v18, v7, v3);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_267E1062C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_267E10680()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_28022C600);
  swift_endAccess();
  if (v1)
  {
    sub_267EF99B8();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_267B9F98C(v6, &qword_28022AEF0, &qword_267EFCDE0);
    return 0;
  }
}

uint64_t sub_267E1076C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_267EF8FF8();
  }

  else
  {
    v3 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, &unk_28022C600, v3, 1);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t *sub_267E107F8(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C608, &qword_267F0AC48);
  v75 = *(v6 - 8);
  v7 = *(v75 + 8);
  MEMORY[0x28223BE20](v6);
  v77 = (&v70 - v8);
  v9 = sub_267EF5318();
  v83 = *(v9 - 8);
  v10 = *(v83 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v70 - v17;
  if (sub_267E112A0())
  {
    v76 = v2;
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v19 = sub_267EF8A08();
    __swift_project_value_buffer(v19, qword_280240FB0);
    v20 = v83;
    v21 = *(v83 + 16);
    v21(v18, a1, v9);
    v22 = sub_267EF89F8();
    v23 = sub_267EF95D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v75 = v24;
      v77 = swift_slowAlloc();
      *&v79[0] = v77;
      *v24 = 136315138;
      v21(v16, v18, v9);
      sub_267EF5458();
      LODWORD(v74) = v23;
      v81 = v9;
      v82 = sub_267E195CC(&qword_28022C3E0, MEMORY[0x277D5DB80]);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
      v21(boxed_opaque_existential_0, v16, v9);
      v26 = sub_267EF5448();
      v28 = v27;
      v29 = *(v20 + 8);
      v29(v16, v9);
      v29(v18, v9);
      __swift_destroy_boxed_opaque_existential_0(&v80);
      v30 = sub_267BA33E8(v26, v28, v79);

      v31 = v75;
      *(v75 + 1) = v30;
      v32 = v31;
      _os_log_impl(&dword_267B93000, v22, v74, "#SendMessageUserDialogActTransformer userDialogAct: %s is a confirmation act, returning default INSendMessageIntent", v31, 0xCu);
      v33 = v77;
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x26D60A7B0](v33, -1, -1);
      MEMORY[0x26D60A7B0](v32, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v18, v9);
    }

    return [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  }

  else
  {
    v34 = sub_267EF52F8();
    if (sub_267BAF0DC(v34))
    {
      v74 = v6;
      sub_267BBD0EC(0, (v34 & 0xC000000000000001) == 0, v34);
      v73 = v16;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D609870](0, v34);
      }

      else
      {
        v35 = *(v34 + 32);
      }

      sub_267B9AFEC((v1 + 2), &v80);
      sub_267B9AFEC((v1 + 7), v79);
      sub_267B9AFEC((v1 + 12), v78);
      v36 = swift_allocObject();
      sub_267B9A5E8(&v80, v36 + 16);
      sub_267B9A5E8(v79, v36 + 56);
      sub_267B9A5E8(v78, v36 + 96);
      sub_267EF66D8();
      sub_267BB7170();
      sub_267EF7058();
      v37 = sub_267EF7068();
      *&v80 = v35;
      v37(v79, &v80);
      if (v2)
      {
        v72 = v35;
        v76 = v2;

        if (qword_280228818 != -1)
        {
          swift_once();
        }

        v38 = sub_267EF8A08();
        __swift_project_value_buffer(v38, qword_280240FB0);
        v39 = v83;
        v3 = (v83 + 16);
        v40 = *(v83 + 16);
        v40(v13, a1, v9);
        v41 = sub_267EF89F8();
        v42 = sub_267EF95E8();
        v43 = os_log_type_enabled(v41, v42);
        v45 = v73;
        v44 = v74;
        if (v43)
        {
          v46 = swift_slowAlloc();
          v71 = v42;
          v47 = v46;
          v70 = swift_slowAlloc();
          *&v79[0] = v70;
          *v47 = 136315138;
          v40(v45, v13, v9);
          sub_267EF5458();
          v81 = v9;
          v82 = sub_267E195CC(&qword_28022C3E0, MEMORY[0x277D5DB80]);
          v48 = __swift_allocate_boxed_opaque_existential_0(&v80);
          v40(v48, v45, v9);
          v49 = sub_267EF5448();
          v3 = v50;
          v51 = *(v39 + 8);
          v51(v45, v9);
          v51(v13, v9);
          __swift_destroy_boxed_opaque_existential_0(&v80);
          v52 = sub_267BA33E8(v49, v3, v79);

          *(v47 + 4) = v52;
          v44 = v74;
          _os_log_impl(&dword_267B93000, v41, v71, "#SendMessageUserDialogActTransformer error transforming %s to sendMessageIntent", v47, 0xCu);
          v53 = v70;
          __swift_destroy_boxed_opaque_existential_0(v70);
          MEMORY[0x26D60A7B0](v53, -1, -1);
          MEMORY[0x26D60A7B0](v47, -1, -1);
        }

        else
        {

          (*(v39 + 8))(v13, v9);
        }

        swift_willThrow();

        (*(v75 + 1))(v77, v44);
      }

      else
      {

        v60 = *&v79[0];
        v61 = v1[21];
        __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
        v3 = v60;
        sub_267EF45B8();
        __swift_project_boxed_opaque_existential_0(&v80, v81);
        sub_267EF42B8();
        if (v62)
        {
          v63 = sub_267EF8FF8();
        }

        else
        {
          v63 = 0;
        }

        v64 = v74;
        __swift_destroy_boxed_opaque_existential_0(&v80);
        [v3 _setOriginatingDeviceIdsIdentifier_];

        v65 = [v3 _metadata];
        if (v65)
        {
          sub_267EF6FF8();
          v66 = sub_267EF6FC8();
          if (v66)
          {
            sub_267EF6F98();

            sub_267EF37B8();
            v68 = v67;

            if (v68)
            {
              v66 = sub_267EF8FF8();
            }

            else
            {
              v66 = 0;
            }
          }

          [v65 setIntentId_];
        }

        else
        {
        }

        (*(v75 + 1))(v77, v64);
      }
    }

    else
    {

      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v54 = sub_267EF8A08();
      __swift_project_value_buffer(v54, qword_280240FB0);
      v55 = sub_267EF89F8();
      v56 = sub_267EF95E8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_267B93000, v55, v56, "#SendMessageUserDialogActTransformer UserStatedTask has no tasks -- this should not happen", v57, 2u);
        MEMORY[0x26D60A7B0](v57, -1, -1);
      }

      v58 = sub_267EF71B8();
      sub_267E195CC(&qword_2802299D8, MEMORY[0x277D61E08]);
      swift_allocError();
      *v59 = 0xD00000000000005ALL;
      v59[1] = 0x8000000267F1B2B0;
      (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D61E00], v58);
      swift_willThrow();
    }
  }

  return v3;
}

uint64_t sub_267E112A0()
{
  if (sub_267EF5258())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v0 = sub_267EF8A08();
    __swift_project_value_buffer(v0, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserAccepted";
LABEL_26:
    _os_log_impl(&dword_267B93000, v1, v2, v4, v3, 2u);
    MEMORY[0x26D60A7B0](v3, -1, -1);
LABEL_27:

    return 1;
  }

  if (sub_267EF5268())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v5 = sub_267EF8A08();
    __swift_project_value_buffer(v5, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserRejected";
    goto LABEL_26;
  }

  if (sub_267EF5278())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v6 = sub_267EF8A08();
    __swift_project_value_buffer(v6, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserCancelled";
    goto LABEL_26;
  }

  if (sub_267EF52B8())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v7 = sub_267EF8A08();
    __swift_project_value_buffer(v7, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserWantedToPause";
    goto LABEL_26;
  }

  if (sub_267EF52D8())
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v8 = sub_267EF8A08();
    __swift_project_value_buffer(v8, qword_280240FB0);
    v1 = sub_267EF89F8();
    v2 = sub_267EF95D8();
    if (!os_log_type_enabled(v1, v2))
    {
      goto LABEL_27;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "#SendMessageNLv4IntentConverter UserWantedToProceed";
    goto LABEL_26;
  }

  return 0;
}

void sub_267E11614()
{
  OUTLINED_FUNCTION_11_22();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v34 = v7;
  sub_267B9AFEC(v8, v41);
  sub_267B9AFEC(v4, v40);
  v9 = v2[3];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v9);
  (*(v10 + 8))(v39, v9, v10);
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v11);
  (*(v12 + 24))(v38, v11, v12);
  __swift_mutable_project_boxed_opaque_existential_1(v41, v41[3]);
  OUTLINED_FUNCTION_23();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0_0();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = sub_267EF68A8();
  v36 = v20;
  v37 = &off_2878D54D8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
  v22 = *(*(v20 - 8) + 32);
  v22(boxed_opaque_existential_0, v18, v20);
  type metadata accessor for SendMessageUserDialogActTransformer();
  inited = swift_initStackObject();
  __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
  OUTLINED_FUNCTION_23();
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_0_0();
  v29 = v28 - v27;
  (*(v30 + 16))(v28 - v27);
  inited[5] = v20;
  inited[6] = &off_2878D54D8;
  v31 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  v22(v31, v29, v20);
  sub_267B9A5E8(v40, (inited + 7));
  sub_267B9A5E8(v39, (inited + 12));
  sub_267B9A5E8(v38, (inited + 17));
  __swift_destroy_boxed_opaque_existential_0(v35);
  __swift_destroy_boxed_opaque_existential_0(v41);
  v32 = sub_267E107F8(v6);
  if (v0)
  {
    swift_setDeallocating();
    sub_267C4AB10();
    swift_deallocClassInstance();
  }

  else
  {
    v33 = v32;
    swift_setDeallocating();
    sub_267C4AB10();
    swift_deallocClassInstance();
    *v34 = v33;
  }

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267E11904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C610, &unk_267F0AC50);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = *a1;
  sub_267EF5CF8();
  if (v34)
  {
    sub_267C2FB6C(&v33, v32, &qword_28022AEF0, &qword_267EFCDE0);
    sub_267EF5F68();
    v17 = swift_dynamicCast();
    v30 = a5;
    if (v17)
    {
      goto LABEL_3;
    }

    sub_267EF5FE8();
    if (swift_dynamicCast())
    {
      v29 = a4;
      v22 = a3;

      sub_267EF6348();
      if (v35 && (v23 = sub_267EF5C58(), , v23))
      {

        a3 = v22;
      }

      else
      {
        sub_267EF6358();
        a3 = v22;
        if (v35)
        {

          sub_267EF6358();

          v18 = v35;
          a4 = v29;
LABEL_5:

          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_267B9F98C(&v33, &qword_28022AEF0, &qword_267EFCDE0);
          sub_267B9AFEC(a2, &v33);
          sub_267B9AFEC(a4, v32);
          sub_267B9AFEC(a3, v31);
          v19 = swift_allocObject();
          sub_267B9A5E8(&v33, v19 + 16);
          sub_267B9A5E8(v32, v19 + 56);
          sub_267B9A5E8(v31, v19 + 96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A880, &unk_267F01F80);
          sub_267BB7170();
          sub_267EF7058();
          v20 = sub_267EF7068();
          (*(v12 + 8))(v15, v11);
          *&v33 = v18;
          v20(v32, &v33);

          if (!v5)
          {
            *v30 = *&v32[0];
          }

          return result;
        }
      }

      a4 = v29;
      sub_267EF6348();
LABEL_4:

      v18 = v35;
      goto LABEL_5;
    }

    sub_267EF6128();
    if (swift_dynamicCast())
    {

      sub_267EF6348();
      goto LABEL_4;
    }

    sub_267EF5FF8();
    if (swift_dynamicCast())
    {
LABEL_3:

      sub_267EF5C38();
      goto LABEL_4;
    }

    sub_267EF6108();
    if (swift_dynamicCast())
    {

      sub_267EF54D8();
      goto LABEL_4;
    }

    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v24 = sub_267EF8A08();
  __swift_project_value_buffer(v24, qword_280240FB0);
  v25 = sub_267EF89F8();
  v26 = sub_267EF95C8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_267B93000, v25, v26, "#SendMessageUserDialogActTransformer UsoTask was not a known common_Message sending task, returning empty INSendMessageIntent", v27, 2u);
    MEMORY[0x26D60A7B0](v27, -1, -1);
  }

  *a5 = [objc_allocWithZone(MEMORY[0x277CD4078]) init];
  return sub_267B9F98C(&v33, &qword_28022AEF0, &qword_267EFCDE0);
}

uint64_t sub_267E11E10@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, NSObject *a4@<X3>, NSObject **a5@<X8>)
{
  v687 = a4;
  v657 = a3;
  v644 = a5;
  v679 = sub_267EF5778();
  v8 = *(v679 - 8);
  isa = v8[8].isa;
  MEMORY[0x28223BE20](v679);
  v665 = &v618 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEF8, &qword_267F042B8);
  v11 = *(*(v683 - 8) + 64);
  MEMORY[0x28223BE20](v683);
  v695 = &v618 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AF00, &unk_267F042C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v670 = &v618 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v674 = &v618 - v18;
  MEMORY[0x28223BE20](v17);
  v675 = &v618 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AF10, &unk_267F001E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v638 = (&v618 - v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8C0, &unk_267F0AC60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v633 = &v618 - v25;
  *&v640 = sub_267EF5518();
  v637 = *(v640 - 8);
  v26 = v637[8];
  v27 = MEMORY[0x28223BE20](v640);
  v630 = &v618 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v692 = &v618 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v628 = &v618 - v32;
  v629 = v33;
  MEMORY[0x28223BE20](v31);
  v635 = &v618 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C158, &unk_267F09680);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v645 = (&v618 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AEE0, &qword_267F01FA0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v646 = &v618 - v40;
  v684 = sub_267EF57C8();
  v652 = *(v684 - 8);
  v41 = *(v652 + 64);
  v42 = MEMORY[0x28223BE20](v684);
  v694 = (&v618 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v639 = &v618 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v631 = &v618 - v47;
  v632 = v48;
  MEMORY[0x28223BE20](v46);
  v641 = &v618 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v650 = *(v50 - 8);
  v51 = *(v650 + 64);
  MEMORY[0x28223BE20](v50);
  v653 = &v618 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229428, &unk_267F00E50);
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v618 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8);
  v658 = &v618 - v59;
  v60 = sub_267EF6B18();
  v655 = *(v60 - 8);
  v656 = v60;
  v61 = *(v655 + 64);
  MEMORY[0x28223BE20](v60);
  v689 = &v618 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_267EF2D28();
  v663 = *(v63 - 8);
  v664 = v63;
  v64 = *(v663 + 64);
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v618 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65);
  v642 = &v618 - v69;
  v643 = v70;
  MEMORY[0x28223BE20](v68);
  v71 = *a1;
  v73 = &v618 - v72;
  sub_267EF2D18();
  v74 = a2[3];
  v636 = a2;
  v693 = __swift_project_boxed_opaque_existential_0(a2, v74);
  v662 = v71;
  v686 = v5;
  v651 = v50;
  v647 = v67;
  v634 = v8;
  if (v71)
  {
    if (sub_267EF59F8())
    {
      sub_267EABD04();
      v76 = v75;
      v71 = v77;
    }

    else
    {
      v76 = 0;
      v71 = 0;
    }
  }

  else
  {
    v76 = 0;
  }

  v78 = sub_267BB7170();
  v79 = *(v663 + 16);
  v80 = v658;
  v660 = v73;
  v81 = v73;
  v82 = v664;
  v648 = v79;
  v649 = v663 + 16;
  v79(v658, v81, v664);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v82);
  v83 = sub_267EF6C28();
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v83);
  sub_267EF6FF8();
  v84 = sub_267EF6FC8();
  sub_267DA7298(v76, v71, v78, v657, v84, 1, v80, v56, v689);

  sub_267B9F98C(v56, &qword_280229428, &unk_267F00E50);
  sub_267B9F98C(v80, &qword_280229430, &qword_267EFD2C0);
  if (sub_267EF6FC8())
  {
    sub_267EF6FA8();

    sub_267EF8678();
  }

  v85 = v689;
  sub_267EF6B08();
  v86 = MEMORY[0x277D84F90];
  v711 = MEMORY[0x277D84F90];
  v709 = MEMORY[0x277D84F90];
  v710 = MEMORY[0x277D84F90];
  v707 = MEMORY[0x277D84F90];
  v708 = MEMORY[0x277D84F90];
  v705 = MEMORY[0x277D84F90];
  v706 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022B0D8, &unk_267F0AC70);
  v654 = sub_267EF8F28();
  v704 = v654;
  v703 = 0;
  v87 = v686;
  v88 = v692;
  if (v662)
  {
    v89 = sub_267EF5CE8();
    if (v89)
    {
      v86 = v89;
      sub_267EF56B8();
      sub_267EF5C28();
      sub_267EF5E08();

      if (v699)
      {
        if (sub_267EAC378())
        {
          MEMORY[0x26D608F90]();
          v90 = v707;
        }

        else
        {
          MEMORY[0x26D608F90]();
          v90 = v710;
        }

        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_377;
        }

        goto LABEL_88;
      }
    }

    v91 = sub_267EF5C58();
    if (v91)
    {
      v92 = v91;
      v93 = sub_267BAF0DC(v91);
      if (!v93)
      {

        goto LABEL_90;
      }

      v94 = v93;
      sub_267EF5C28();
      if (v94 >= 1)
      {
        v84 = 0;
        v693 = (v92 & 0xC000000000000001);
        v677 = MEMORY[0x277D84F90];
        v661 = MEMORY[0x277D84F90];
        v659 = MEMORY[0x277D84F90];
        v691 = v94;
        while (1)
        {
          if (v693)
          {
            MEMORY[0x26D609870](v84, v92);
          }

          else
          {
            v95 = *(v92 + 8 * v84 + 32);
          }

          sub_267EF5988();
          if (v698)
          {
            sub_267EF56B8();
          }

          sub_267EF5E08();

          if (!v699)
          {
            goto LABEL_29;
          }

          sub_267EF56B8();

          v96 = sub_267EF6768();

          v97 = *(v96 + 16);

          if (!v97)
          {
            break;
          }

          if (sub_267EAC378())
          {
            MEMORY[0x26D608F90]();
            v98 = v707;
          }

          else
          {
            MEMORY[0x26D608F90]();
            v98 = v710;
          }

          if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
LABEL_48:

LABEL_76:
          ++v84;
          v88 = v692;
          if (v94 == v84)
          {

            v87 = v686;
            goto LABEL_91;
          }
        }

LABEL_29:
        sub_267EF5988();
        if (v698)
        {
          sub_267EF56B8();
        }

        sub_267EF5BC8();
        sub_267EF5E08();

        if (v699)
        {
          if (sub_267EAC390())
          {
            MEMORY[0x26D608F90]();
            if (*((v706 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v706 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v659 = v706;
          }

          else
          {
            MEMORY[0x26D608F90]();
            if (*((v708 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v708 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v677 = v708;
          }

          goto LABEL_76;
        }

        if (!sub_267EF5978())
        {
LABEL_59:
          sub_267EF5988();
          if (v698)
          {
            sub_267EF56B8();
          }

          sub_267EF5B98();
          sub_267EF5E08();

          if (v699)
          {
            MEMORY[0x26D608F90](v105);
            if (*((v709 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v709 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

            v661 = v709;
            goto LABEL_76;
          }

          goto LABEL_48;
        }

        v99 = sub_267EF59B8();
        if (!v100)
        {

          goto LABEL_59;
        }

        if (v99 == 0x7465536F54646461 && v100 == 0xE800000000000000)
        {
        }

        else
        {
          v102 = sub_267EF9EA8();

          if ((v102 & 1) == 0)
          {
LABEL_58:

            v94 = v691;
            goto LABEL_59;
          }
        }

        sub_267EF59C8();
        if (v699)
        {
          v103 = sub_267EF56B8();

          sub_267EF5E08();
          v690 = v103;
          if (v699)
          {

            if (sub_267EAC378())
            {
              MEMORY[0x26D608F90]();
              v104 = v707;
            }

            else
            {
              MEMORY[0x26D608F90]();
              v104 = v710;
            }

            if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();

LABEL_74:
          }

          else
          {
            sub_267EF5E08();
            if (v699)
            {

              if (sub_267EAC390())
              {
                MEMORY[0x26D608F90]();
                if (*((v706 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v706 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v659 = v706;
              }

              else
              {
                MEMORY[0x26D608F90]();
                if (*((v708 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v708 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_267EF9328();
                }

                sub_267EF9368();

                v677 = v708;
              }
            }

            else
            {
              sub_267EF5B98();
              sub_267EF5E08();

              if (!v699)
              {

                goto LABEL_74;
              }

              MEMORY[0x26D608F90](v106);
              if (*((v709 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v709 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_267EF9328();
              }

              sub_267EF9368();

              v661 = v709;
            }
          }

          v94 = v691;
          goto LABEL_76;
        }

        goto LABEL_58;
      }

      __break(1u);
LABEL_379:
      swift_once();
LABEL_353:
      v538 = sub_267EF8A08();
      v539 = __swift_project_value_buffer(v538, qword_280240FB0);
      v540 = swift_allocObject();
      *(v540 + 16) = v86;
      v541 = v86;
      v695 = v539;
      v542 = sub_267EF89F8();
      v543 = sub_267EF95D8();
      v544 = swift_allocObject();
      *(v544 + 16) = 64;
      v545 = swift_allocObject();
      *(v545 + 16) = 8;
      v546 = swift_allocObject();
      *(v546 + 16) = sub_267E19664;
      *(v546 + 24) = v540;
      v547 = swift_allocObject();
      *(v547 + 16) = sub_267CD9BB8;
      *(v547 + 24) = v546;
      v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      inited = swift_initStackObject();
      sub_267EF0E68(inited, 3);
      *v549 = sub_267CD9CCC;
      v549[1] = v544;
      v549[2] = sub_267CD9CCC;
      v549[3] = v545;
      v549[4] = sub_267CD9BC0;
      v549[5] = v547;

      if (os_log_type_enabled(v542, v543))
      {
        v550 = swift_slowAlloc();
        LODWORD(v688) = v543;
        v551 = v550;
        v552 = swift_slowAlloc();
        v693 = v542;
        v553 = v552;
        *v551 = 258;
        *(v551 + 2) = 64;

        *(v551 + 3) = 8;

        *(v551 + 4) = v541;
        *v553 = v541;

        _os_log_impl(&dword_267B93000, v693, v688, "#SendMessageNLv4IntentConverter transformed to: %@", v551, 0xCu);
        sub_267B9F98C(v553, &unk_280229E30, &unk_267EFC270);
        v554 = v553;
        v542 = v693;
        MEMORY[0x26D60A7B0](v554, -1, -1);
        MEMORY[0x26D60A7B0](v551, -1, -1);
      }

      else
      {
      }

      v555 = swift_allocObject();
      *(v555 + 16) = v541;
      v556 = v541;
      v557 = sub_267EF89F8();
      v558 = sub_267EF95D8();
      v559 = swift_allocObject();
      *(v559 + 16) = 32;
      v560 = swift_allocObject();
      *(v560 + 16) = 8;
      v561 = swift_allocObject();
      *(v561 + 16) = sub_267E193C4;
      *(v561 + 24) = v555;
      v562 = swift_allocObject();
      *(v562 + 16) = sub_267CD9CC4;
      *(v562 + 24) = v561;
      v563 = swift_initStackObject();
      sub_267EF0E68(v563, 3);
      *v564 = sub_267CD9CCC;
      v564[1] = v559;
      v564[2] = sub_267CD9CCC;
      v564[3] = v560;
      v564[4] = sub_267CD9CB4;
      v564[5] = v562;

      if (os_log_type_enabled(v557, v558))
      {
        v565 = swift_slowAlloc();
        v693 = v557;
        v566 = v565;
        v567 = swift_slowAlloc();
        LODWORD(v688) = v558;
        v568 = v567;
        v696[0] = v567;
        *v566 = 258;
        *(v566 + 2) = 32;

        *(v566 + 3) = 8;

        v569 = sub_267D2904C();
        if (v570)
        {
          v571 = v570;
        }

        else
        {
          v569 = 7104878;
          v571 = 0xE300000000000000;
        }

        v572 = sub_267BA33E8(v569, v571, v696);

        *(v566 + 4) = v572;

        v573 = v693;
        _os_log_impl(&dword_267B93000, v693, v688, "#SendMessageNLv4IntentConverter group app bundle ID to: %s", v566, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v568);
        MEMORY[0x26D60A7B0](v568, -1, -1);
        MEMORY[0x26D60A7B0](v566, -1, -1);
      }

      else
      {
      }

      v574 = swift_allocObject();
      *(v574 + 16) = v556;
      v575 = v556;
      v576 = sub_267EF89F8();
      v577 = sub_267EF95D8();
      v578 = swift_allocObject();
      *(v578 + 16) = 32;
      v579 = swift_allocObject();
      *(v579 + 16) = 8;
      v580 = swift_allocObject();
      *(v580 + 16) = sub_267E193CC;
      *(v580 + 24) = v574;
      v581 = swift_allocObject();
      *(v581 + 16) = sub_267CD9CC4;
      *(v581 + 24) = v580;
      v582 = swift_initStackObject();
      sub_267EF0E68(v582, 3);
      *v583 = sub_267CD9CCC;
      v583[1] = v578;
      v583[2] = sub_267CD9CCC;
      v583[3] = v579;
      v583[4] = sub_267CD9CB4;
      v583[5] = v581;

      v584 = os_log_type_enabled(v576, v577);
      v693 = v575;
      if (v584)
      {
        LODWORD(v687) = v577;
        v688 = v576;
        v585 = swift_slowAlloc();
        v586 = swift_slowAlloc();
        v696[0] = v586;
        *v585 = 258;
        *(v585 + 2) = 32;

        *(v585 + 3) = 8;

        if (sub_267D29108())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
          v587 = sub_267EF8F18();
          v589 = v588;
        }

        else
        {
          v589 = 0xE300000000000000;
          v587 = 7104878;
        }

        v590 = sub_267BA33E8(v587, v589, v696);

        *(v585 + 4) = v590;

        v576 = v688;
        _os_log_impl(&dword_267B93000, v688, v687, "#SendMessageNLv4IntentConverter recipients can be found in apps: %s", v585, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v586);
        MEMORY[0x26D60A7B0](v586, -1, -1);
        MEMORY[0x26D60A7B0](v585, -1, -1);
      }

      else
      {
      }

      v591 = v642;
      v592 = v664;
      v593 = v648;
      v648(v642, v660, v664);
      v593(v647, v591, v592);
      v594 = v663;
      v595 = (*(v663 + 80) + 16) & ~*(v663 + 80);
      v596 = swift_allocObject();
      (*(v594 + 32))(v596 + v595, v591, v592);
      v597 = swift_allocObject();
      *(v597 + 16) = sub_267E193D4;
      *(v597 + 24) = v596;

      v598 = sub_267EF89F8();
      LODWORD(v594) = sub_267EF95D8();
      v599 = swift_allocObject();
      *(v599 + 16) = 32;
      v600 = swift_allocObject();
      *(v600 + 16) = 8;
      v601 = swift_allocObject();
      *(v601 + 16) = sub_267E19444;
      *(v601 + 24) = v597;
      v602 = swift_allocObject();
      *(v602 + 16) = sub_267CD9CC4;
      *(v602 + 24) = v601;
      v603 = swift_allocObject();
      sub_267EF0E68(v603, 3);
      *v604 = sub_267CD9CCC;
      v604[1] = v599;
      v604[2] = sub_267CD9CCC;
      v604[3] = v600;
      v604[4] = sub_267CD9CB4;
      v604[5] = v602;

      LODWORD(v695) = v594;
      if (os_log_type_enabled(v598, v594))
      {
        v605 = swift_slowAlloc();
        v694 = v598;
        v606 = v605;
        v688 = swift_slowAlloc();
        v696[0] = v688;
        *v606 = 258;
        *(v606 + 2) = 32;

        *(v606 + 3) = 8;

        sub_267E195CC(&qword_28022C618, MEMORY[0x277CC95F0]);
        v607 = v647;
        v608 = sub_267EF9E58();
        v610 = sub_267BA33E8(v608, v609, v696);

        *(v606 + 4) = v610;

        v611 = v664;
        v612 = *(v663 + 8);
        v612(v607, v664);
        v613 = v694;
        _os_log_impl(&dword_267B93000, v694, v695, "#SendMessageNLv4IntentConverter crrCommsAppSelectionJointId:%s", v606, 0xCu);
        v614 = v688;
        __swift_destroy_boxed_opaque_existential_0(v688);
        MEMORY[0x26D60A7B0](v614, -1, -1);
        MEMORY[0x26D60A7B0](v606, -1, -1);

        (*(v655 + 8))(v689, v656);
        v612(v660, v611);
      }

      else
      {

        v615 = v664;
        v616 = *(v663 + 8);
        v616(v647, v664);

        (*(v655 + 8))(v689, v656);
        v616(v660, v615);
      }

      *v644 = v693;
      (*(v650 + 8))(v653, v651);
    }

LABEL_90:
    v677 = MEMORY[0x277D84F90];
    v661 = MEMORY[0x277D84F90];
    v659 = MEMORY[0x277D84F90];
LABEL_91:
    v85 = v689;
  }

  else
  {
    v677 = v86;
    v661 = v86;
    v659 = v86;
  }

  v107 = v707;
  v108 = sub_267BAF0DC(v707);
  v685 = v107;
  v681 = v108;
  if (v108)
  {
    v110 = 0;
    v680 = v107 & 0xC000000000000001;
    v666 = v107 & 0xFFFFFFFFFFFFFF8;
    *&v109 = 136315138;
    v673 = v109;
    v667 = xmmword_267EFCE30;
    v669 = MEMORY[0x277D84F90];
    v682 = MEMORY[0x277D84F90];
    v111 = v107;
    while (1)
    {
      if (v680)
      {
        v112 = MEMORY[0x26D609870](v110, v111);
      }

      else
      {
        if (v110 >= *(v666 + 16))
        {
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          __break(1u);
LABEL_377:
          sub_267EF9328();
LABEL_88:
          sub_267EF9368();

          goto LABEL_90;
        }

        v112 = *(v111 + 8 * v110 + 32);
      }

      if (__OFADD__(v110, 1))
      {
        __break(1u);
LABEL_254:

        v87(v635, v84);
        v639 = 2;
        goto LABEL_255;
      }

      v690 = (&v110->isa + 1);
      v691 = v110;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v113 = sub_267EF8A08();
      v114 = __swift_project_value_buffer(v113, qword_280240FB0);

      v688 = v114;
      v115 = sub_267EF89F8();
      v116 = sub_267EF95D8();

      v117 = os_log_type_enabled(v115, v116);
      v693 = v112;
      if (v117)
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v699 = v119;
        *v118 = v673;
        sub_267EF56B8();
        v120 = v87;
        v121 = sub_267EF6758();
        v123 = v122;

        v124 = v121;
        v87 = v120;
        v88 = v692;
        v125 = sub_267BA33E8(v124, v123, &v699);

        *(v118 + 4) = v125;
        _os_log_impl(&dword_267B93000, v115, v116, "#SendMessageNLv4IntentConverter calling SRR for common_Person: %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v119);
        MEMORY[0x26D60A7B0](v119, -1, -1);
        v126 = v118;
        v85 = v689;
        MEMORY[0x26D60A7B0](v126, -1, -1);
      }

      v107 = sub_267EF56B8();

      v127 = sub_267D270C4(v107, v687);
      if (v87)
      {
LABEL_183:

        (*(v655 + 8))(v85, v656);
        (*(v663 + 8))(v660, v664);
      }

      v130 = v127;
      v84 = v128;
      v131 = v129;

      if (v130)
      {
        if (v130 == 1)
        {
          v132 = sub_267EF89F8();
          v133 = sub_267EF95D8();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 0;
            _os_log_impl(&dword_267B93000, v132, v133, "#SendMessageNLv4IntentConverter SRR did not resolve common_Person, will attempt to resolve with CRR", v134, 2u);
            MEMORY[0x26D60A7B0](v134, -1, -1);
          }

          v107 = &v710;
          MEMORY[0x26D608F90]();
          if (*((v710 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v710 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_267EF9328();
          }

          sub_267EF9368();
          goto LABEL_137;
        }

        v148 = v130;
        MEMORY[0x26D608F90]();
        if (*((v711 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v711 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v149 = v711;
        v150 = v705;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v669 = v149;
        v678 = v131;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v200 = v150[2].isa;
          sub_267C71CDC();
          v150 = v201;
        }

        v153 = v150[2].isa;
        v152 = v150[3].isa;
        v686 = 0;
        v676 = v84;
        if (v153 >= v152 >> 1)
        {
          sub_267C71CDC();
          v150 = v202;
        }

        v150[2].isa = (v153 + 1);
        *(&v150[4].isa + v153) = 11;
        v682 = v150;
        v705 = v150;
        v154 = swift_allocObject();
        *(v154 + 16) = v148;
        *&v672 = v148;
        v688 = sub_267EF89F8();
        v155 = sub_267EF95D8();
        v84 = swift_allocObject();
        *(v84 + 16) = 64;
        v156 = swift_allocObject();
        *(v156 + 16) = 8;
        v157 = swift_allocObject();
        *(v157 + 16) = sub_267CD9BB0;
        *(v157 + 24) = v154;
        v158 = swift_allocObject();
        *(v158 + 16) = sub_267E19660;
        *(v158 + 24) = v157;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
        v159 = swift_allocObject();
        *(v159 + 16) = v667;
        *(v159 + 32) = sub_267CD9CCC;
        *(v159 + 40) = v84;
        *(v159 + 48) = sub_267CD9CCC;
        *(v159 + 56) = v156;
        *(v159 + 64) = sub_267E19658;
        *(v159 + 72) = v158;
        swift_setDeallocating();
        v671 = v154;

        sub_267DB6FAC();
        LODWORD(v668) = v155;
        if (os_log_type_enabled(v688, v155))
        {
          v107 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v161 = v672;
          v162 = v160;
          *v107 = 258;
          *(v107 + 2) = 64;

          *(v107 + 3) = 8;

          *(v107 + 4) = v161;
          *v162 = v130;

          v163 = v688;
          _os_log_impl(&dword_267B93000, v688, v668, "#SendMessageNLv4IntentConverter SRR resolved common_Person to INPerson: %@", v107, 0xCu);
          sub_267B9F98C(v162, &unk_280229E30, &unk_267EFC270);
          MEMORY[0x26D60A7B0](v162, -1, -1);
          MEMORY[0x26D60A7B0](v107, -1, -1);
        }

        else
        {

          v107 = v672;
        }

        v87 = v686;
        goto LABEL_127;
      }

      if (v84)
      {
        v135 = swift_retain_n();
        MEMORY[0x26D608F90](v135);
        if (*((v710 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v710 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        swift_retain_n();
        v107 = v688;
        v136 = sub_267EF89F8();
        v137 = sub_267EF95D8();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v678 = v131;
          v140 = v139;
          v699 = v139;
          *v138 = v673;
          sub_267EF56B8();
          v141 = sub_267EF6758();
          v676 = v84;
          v84 = 0;
          v142 = v141;
          v144 = v143;

          v145 = v142;
          v87 = 0;
          v146 = sub_267BA33E8(v145, v144, &v699);
          v88 = v692;

          *(v138 + 4) = v146;
          v107 = v676;

          _os_log_impl(&dword_267B93000, v136, v137, "#SendMessageNLv4IntentConverter SRR resolved common_Person to common_Person: %s", v138, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v140);
          MEMORY[0x26D60A7B0](v140, -1, -1);
          v147 = v138;
          v85 = v689;
          MEMORY[0x26D60A7B0](v147, -1, -1);
        }

LABEL_136:

        goto LABEL_137;
      }

      if (!v131)
      {
        goto LABEL_136;
      }

      v164 = swift_retain_n();
      MEMORY[0x26D608F90](v164);
      if (*((v708 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v708 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
      v165 = v708;
      v166 = sub_267C8F28C();
      v677 = v165;
      if (v166)
      {
        v678 = v131;
        v167 = sub_267EF5BB8();

        if (v167)
        {
          v168 = sub_267E0F940(v167, sub_267BAF0DC, MEMORY[0x277D5E850]);
          v169 = sub_267BAF0DC(v168);
          if (v169 == sub_267BAF0DC(v167))
          {

            sub_267C9B700(v168);
          }

          else
          {
            v170 = swift_allocObject();
            *(v170 + 16) = v168;
            v171 = v170;
            *&v672 = v170;
            v686 = swift_allocObject();
            *(v686 + 16) = v167;
            v627 = v168;
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();
            v676 = sub_267EF89F8();
            LODWORD(v668) = sub_267EF95E8();
            v622 = swift_allocObject();
            *(v622 + 16) = 0;
            v621 = swift_allocObject();
            *(v621 + 16) = 8;
            v172 = swift_allocObject();
            *(v172 + 16) = sub_267E195B0;
            *(v172 + 24) = v171;
            v173 = swift_allocObject();
            *(v173 + 16) = sub_267CD9B94;
            *(v173 + 24) = v172;
            v174 = swift_allocObject();
            *(v174 + 16) = 0;
            v175 = v174;
            v671 = v174;
            v619 = swift_allocObject();
            *(v619 + 16) = 8;
            v176 = swift_allocObject();
            v177 = v686;
            *(v176 + 16) = sub_267E19668;
            *(v176 + 24) = v177;
            v178 = swift_allocObject();
            *(v178 + 16) = sub_267E1966C;
            *(v178 + 24) = v176;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
            v179 = swift_allocObject();
            v620 = sub_267EF0E68(v179, 6);
            v181 = v621;
            v180 = v622;
            *v182 = sub_267CD9CCC;
            v182[1] = v180;
            v182[2] = sub_267CD9CCC;
            v182[3] = v181;
            v182[4] = sub_267CD9B9C;
            v182[5] = v173;
            v182[6] = sub_267CD9CCC;
            v182[7] = v175;
            v183 = v619;
            v182[8] = sub_267CD9CCC;
            v182[9] = v183;
            v182[10] = sub_267E1965C;
            v182[11] = v178;

            v625 = v172;

            v626 = v176;

            v624 = v173;

            v623 = v178;

            if (!os_log_type_enabled(v676, v668))
            {

              swift_bridgeObjectRelease_n();

              swift_bridgeObjectRelease_n();

              v131 = v678;
              goto LABEL_142;
            }

            v184 = swift_slowAlloc();
            *v184 = 512;
            *(v184 + 2) = 0;

            *(v184 + 3) = 8;

            v185 = sub_267BAF0DC(v627);

            *(v184 + 4) = v185;
            v87 = 0;

            *(v184 + 12) = 0;

            *(v184 + 13) = 8;

            v186 = sub_267BAF0DC(v167);

            *(v184 + 14) = v186;

            v187 = v676;
            _os_log_impl(&dword_267B93000, v676, v668, "#SendMessageNLv4IntentConverter unable to convert entity to common_Person, count mismatch: persons=%ld, groupMembers=%ld", v184, 0x16u);
            MEMORY[0x26D60A7B0](v184, -1, -1);
          }
        }

        v131 = v678;
      }

LABEL_142:
      swift_retain_n();
      v688 = sub_267EF89F8();
      v188 = sub_267EF95D8();
      v189 = swift_allocObject();
      *(v189 + 16) = 32;
      v84 = swift_allocObject();
      *(v84 + 16) = 8;
      v190 = swift_allocObject();
      *(v190 + 16) = sub_267CD9BEC;
      *(v190 + 24) = v131;
      v191 = swift_allocObject();
      *(v191 + 16) = sub_267CD9CC4;
      *(v191 + 24) = v190;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      v192 = swift_allocObject();
      *(v192 + 16) = v667;
      *(v192 + 32) = sub_267CD9CCC;
      *(v192 + 40) = v189;
      *(v192 + 48) = sub_267CD9CCC;
      *(v192 + 56) = v84;
      *(v192 + 64) = sub_267CD9CB4;
      *(v192 + 72) = v191;
      swift_setDeallocating();

      sub_267DB6FAC();
      LODWORD(v676) = v188;
      v107 = v688;
      if (os_log_type_enabled(v688, v188))
      {
        v193 = swift_slowAlloc();
        v686 = v87;
        v194 = v193;
        v195 = swift_slowAlloc();
        v699 = v195;
        *v194 = 258;
        *(v194 + 2) = 32;

        *(v194 + 3) = 8;

        sub_267EF56B8();
        v196 = sub_267EF6758();
        v84 = v197;

        v198 = sub_267BA33E8(v196, v84, &v699);

        *(v194 + 4) = v198;

        v107 = v688;
        _os_log_impl(&dword_267B93000, v688, v676, "#SendMessageNLv4IntentConverter SRR resolved common_Person to common_Group: %s", v194, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v195);
        MEMORY[0x26D60A7B0](v195, -1, -1);
        v199 = v194;
        v87 = v686;
        MEMORY[0x26D60A7B0](v199, -1, -1);
      }

      else
      {
      }

LABEL_127:
      v85 = v689;
      v88 = v692;
LABEL_137:
      v110 = (&v691->isa + 1);
      v111 = v685;
      if (v690 == v681)
      {
        goto LABEL_148;
      }
    }
  }

  v669 = MEMORY[0x277D84F90];
  v682 = MEMORY[0x277D84F90];
LABEL_148:
  v203 = v706;
  v204 = sub_267BAF0DC(v706);
  v678 = v203;
  v681 = v204;
  if (v204)
  {
    v206 = 0;
    v680 = v203 & 0xC000000000000001;
    v671 = (v203 & 0xFFFFFFFFFFFFFF8);
    *&v205 = 136315138;
    v672 = v205;
    v668 = xmmword_267EFCE30;
    do
    {
      if (v680)
      {
        v88 = MEMORY[0x26D609870](v206, v203);
      }

      else
      {
        if (v206 >= v671[2].isa)
        {
          goto LABEL_374;
        }

        v88 = *(v203 + 8 * v206 + 32);
      }

      v84 = &v206->isa + 1;
      if (__OFADD__(v206, 1))
      {
        __break(1u);
        goto LABEL_373;
      }

      v691 = v206;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v207 = sub_267EF8A08();
      v208 = __swift_project_value_buffer(v207, qword_280240FB0);

      v690 = v208;
      v209 = sub_267EF89F8();
      v210 = sub_267EF95D8();

      v211 = os_log_type_enabled(v209, v210);
      v693 = v88;
      if (v211)
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        v699 = v213;
        *v212 = v672;
        sub_267EF56B8();
        v214 = sub_267EF6758();
        v688 = v84;
        v215 = v87;
        v217 = v216;

        v218 = v214;
        v85 = v689;
        v219 = sub_267BA33E8(v218, v217, &v699);
        v87 = v215;
        v84 = v688;

        *(v212 + 4) = v219;
        _os_log_impl(&dword_267B93000, v209, v210, "#SendMessageNLv4IntentConverter calling SRR for common_Group: %s", v212, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v213);
        MEMORY[0x26D60A7B0](v213, -1, -1);
        v220 = v212;
        v203 = v678;
        MEMORY[0x26D60A7B0](v220, -1, -1);
      }

      v221 = sub_267EF56B8();

      v222 = sub_267D270C4(v221, v687);
      if (v87)
      {
        goto LABEL_183;
      }

      v225 = v222;
      v226 = v223;
      v227 = v224;

      if (v225 == 1)
      {
        v228 = sub_267EF89F8();
        v229 = sub_267EF95D8();
        if (os_log_type_enabled(v228, v229))
        {
          v230 = swift_slowAlloc();
          *v230 = 0;
          _os_log_impl(&dword_267B93000, v228, v229, "#SendMessageNLv4IntentConverter SRR did not resolve common_Group, will treat as common_Group with no reference", v230, 2u);
          MEMORY[0x26D60A7B0](v230, -1, -1);
        }

        MEMORY[0x26D608F90]();
        v88 = v692;
        if (*((v708 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v708 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v677 = v708;
      }

      else if (v227)
      {
        *&v673 = v226;
        v231 = swift_retain_n();
        MEMORY[0x26D608F90](v231);
        if (*((v708 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v708 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_267EF9328();
        }

        sub_267EF9368();
        v232 = v708;
        v682 = v705;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v252 = v682[2].isa;
          sub_267C71CDC();
          v682 = v253;
        }

        v234 = v682[2].isa;
        v233 = v682[3].isa;
        v677 = v232;
        v686 = 0;
        if (v234 >= v233 >> 1)
        {
          sub_267C71CDC();
          v682 = v254;
        }

        v235 = v682;
        v682[2].isa = (v234 + 1);
        *(&v235[4].isa + v234) = 11;
        v705 = v235;
        swift_retain_n();
        v690 = sub_267EF89F8();
        LODWORD(v676) = sub_267EF95D8();
        v236 = swift_allocObject();
        *(v236 + 16) = 32;
        v237 = swift_allocObject();
        *(v237 + 16) = 8;
        v238 = swift_allocObject();
        *(v238 + 16) = sub_267CD9CBC;
        *(v238 + 24) = v227;
        v239 = swift_allocObject();
        *(v239 + 16) = sub_267CD9CC4;
        *(v239 + 24) = v238;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
        v240 = swift_allocObject();
        *(v240 + 16) = v668;
        *(v240 + 32) = sub_267CD9CCC;
        *(v240 + 40) = v236;
        *(v240 + 48) = sub_267CD9CCC;
        *(v240 + 56) = v237;
        *(v240 + 64) = sub_267CD9CB4;
        *(v240 + 72) = v239;
        swift_setDeallocating();

        v688 = v236;

        sub_267DB6FAC();
        if (!os_log_type_enabled(v690, v676))
        {

          v85 = v689;
          v88 = v692;
          v203 = v678;
          v251 = v691;
          v87 = v686;
          goto LABEL_177;
        }

        v241 = swift_slowAlloc();
        v242 = swift_slowAlloc();
        v666 = v241;
        *&v667 = v242;
        v699 = v242;
        *v241 = 258;
        *(v241 + 2) = 32;

        *(v241 + 3) = 8;

        sub_267EF56B8();
        v243 = sub_267EF6758();
        v688 = v84;
        v245 = v244;

        v246 = sub_267BA33E8(v243, v245, &v699);
        v87 = v686;
        v84 = v688;

        v247 = v666;
        *(v666 + 4) = v246;

        v248 = v690;
        v249 = v247;
        _os_log_impl(&dword_267B93000, v690, v676, "#SendMessageNLv4IntentConverter SRR resolved common_Group to common_Group: %s", v247, 0xCu);
        v250 = v667;
        __swift_destroy_boxed_opaque_existential_0(v667);
        MEMORY[0x26D60A7B0](v250, -1, -1);
        MEMORY[0x26D60A7B0](v249, -1, -1);

        v85 = v689;
        v88 = v692;
        v203 = v678;
      }

      else
      {

        v88 = v692;
      }

      v251 = v691;
LABEL_177:
      v206 = (&v251->isa + 1);
    }

    while (v84 != v681);
  }

  v255 = v662;
  if (v662)
  {
    if (sub_267EF59F8())
    {
      sub_267EABD04();
      v255 = v256;
      v258 = v257;

      goto LABEL_186;
    }

    v255 = 0;
  }

  v258 = 0;
LABEL_186:
  v259 = swift_allocObject();
  *(v259 + 16) = v255;
  *(v259 + 24) = v258;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A8, &qword_267F01FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
  v260 = v653;
  v261 = sub_267EF7048();
  v262 = v708;
  MEMORY[0x28223BE20](v261);
  v617[2] = v260;
  v263 = sub_267D2EA6C(sub_267E19374, v617, v262);
  if (v87)
  {

    (*(v655 + 8))(v689, v656);
    (*(v663 + 8))(v660, v664);

    (*(v650 + 8))(v260, v651);
    goto LABEL_188;
  }

  v265 = v263;
  v627 = v262;
  if (!sub_267C8F28C())
  {
    v267 = v646;
    __swift_storeEnumTagSinglePayload(v646, 1, 1, v684);
    goto LABEL_200;
  }

  v266 = sub_267EF5688();

  v267 = v646;
  sub_267E1041C(v266, v646);

  v268 = v684;
  if (__swift_getEnumTagSinglePayload(v267, 1, v684) == 1)
  {
LABEL_200:
    sub_267B9F98C(v267, &qword_28022AEE0, &qword_267F01FA0);
    goto LABEL_201;
  }

  v686 = 0;
  v269 = v652;
  v270 = *(v652 + 32);
  v271 = v267;
  v272 = v641;
  v270(v641, v271, v268);
  v273 = sub_267EF57A8();
  v275 = v274;

  v276 = HIBYTE(v275) & 0xF;
  if ((v275 & 0x2000000000000000) == 0)
  {
    v276 = v273 & 0xFFFFFFFFFFFFLL;
  }

  if (v276)
  {
    v277 = v270;

    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v278 = sub_267EF8A08();
    __swift_project_value_buffer(v278, qword_280240FB0);
    v279 = v652 + 16;
    v280 = *(v652 + 16);
    v281 = v631;
    v282 = v684;
    v280(v631, v641, v684);
    v280(v639, v281, v282);
    v283 = (*(v279 + 64) + 16) & ~*(v279 + 64);
    v284 = swift_allocObject();
    v277(v284 + v283, v281, v282);
    v285 = sub_267EF89F8();
    v286 = sub_267EF95D8();
    v287 = swift_allocObject();
    *(v287 + 16) = 32;
    v288 = swift_allocObject();
    *(v288 + 16) = 8;
    v289 = swift_allocObject();
    *(v289 + 16) = sub_267E19518;
    *(v289 + 24) = v284;
    v290 = swift_allocObject();
    *(v290 + 16) = sub_267CD9CC4;
    *(v290 + 24) = v289;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
    v291 = swift_allocObject();
    sub_267EF0E68(v291, 3);
    *v292 = sub_267CD9CCC;
    v292[1] = v287;
    v292[2] = sub_267CD9CCC;
    v292[3] = v288;
    v292[4] = sub_267CD9CB4;
    v292[5] = v290;

    if (os_log_type_enabled(v285, v286))
    {
      v293 = swift_slowAlloc();
      v294 = swift_slowAlloc();
      LODWORD(v693) = v286;
      v295 = v294;
      v699 = v294;
      *v293 = 258;
      *(v293 + 2) = 32;

      *(v293 + 3) = 8;

      v691 = v285;
      v296 = v639;
      v297 = sub_267EF57A8();
      v299 = sub_267BA33E8(v297, v298, &v699);

      *(v293 + 4) = v299;

      v300 = *(v652 + 8);
      v301 = v296;
      v302 = v684;
      v300(v301, v684);
      v303 = v691;
      _os_log_impl(&dword_267B93000, v691, v693, "#SendMessageNLv4IntentConverter setting conversationIdentifier: %s", v293, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v295);
      MEMORY[0x26D60A7B0](v295, -1, -1);
      MEMORY[0x26D60A7B0](v293, -1, -1);

      v282 = v302;
    }

    else
    {

      v300 = *(v652 + 8);
      v300(v639, v282);
    }

    v361 = v641;
    v636 = sub_267EF57A8();
    v631 = v362;
    v300(v361, v282);

    v632 = 0;
    v711 = MEMORY[0x277D84F90];
    v310 = v686;
    v359 = v664;
    v360 = v662;
LABEL_224:
    v88 = v692;
LABEL_225:
    v702 = 0;
    if (!v360)
    {
      v366 = sub_267EF5FA8();
      v367 = v645;
      __swift_storeEnumTagSinglePayload(v645, 1, 1, v366);
      sub_267B9F98C(v367, &qword_28022C158, &unk_267F09680);
      v641 = 0;
      v645 = 0;
      v635 = 0;
      v637 = 0;
      v639 = 0;
      v368 = v675;
      goto LABEL_301;
    }

    if (sub_267EF5CC8())
    {
      v363 = v645;
      sub_267EF5F98();

      v364 = sub_267EF5FA8();
      if (__swift_getEnumTagSinglePayload(v363, 1, v364) != 1)
      {
        v371 = *(v364 - 8);
        v639 = (*(v371 + 88))(v363, v364) == *MEMORY[0x277D5EAE0];
        (*(v371 + 8))(v363, v364);
LABEL_233:
        v372 = sub_267EF5C48();
        if (v372)
        {
          v373 = sub_267E0F940(v372, sub_267BAF0DC, MEMORY[0x277D5E390]);

          v374 = sub_267C8F28C();
          if (v374)
          {
            v375 = v374;
            v641 = v373;
            v376 = v633;
            sub_267EF54F8();
            v377 = v640;
            if (__swift_getEnumTagSinglePayload(v376, 1, v640) == 1)
            {
              v373 = v641;

              sub_267B9F98C(v376, &qword_28022A8C0, &unk_267F0AC60);
            }

            else
            {
              v693 = v375;
              v686 = v310;
              v378 = v637;
              v379 = v635;
              v691 = v637[4];
              (v691)(v635, v376, v377);
              v380 = v377;
              if (qword_280228818 != -1)
              {
                swift_once();
              }

              v381 = sub_267EF8A08();
              v382 = __swift_project_value_buffer(v381, qword_280240FB0);
              v383 = (v378 + 2);
              v384 = v378[2];
              v385 = v628;
              (v384)(v628, v379, v380);
              v688 = v384;
              (v384)(v88, v385, v380);
              v690 = v383;
              v386 = (v383[64] + 16) & ~v383[64];
              v387 = swift_allocObject();
              (v691)(v387 + v386, v385, v380);
              v691 = v382;
              v388 = sub_267EF89F8();
              LODWORD(v386) = sub_267EF95D8();
              v389 = swift_allocObject();
              *(v389 + 16) = 32;
              v390 = swift_allocObject();
              *(v390 + 16) = 8;
              v391 = swift_allocObject();
              *(v391 + 16) = sub_267E19454;
              *(v391 + 24) = v387;
              v392 = swift_allocObject();
              v393 = v637;
              v394 = v392;
              *(v392 + 16) = sub_267CD9CC4;
              *(v392 + 24) = v391;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
              v395 = swift_allocObject();
              sub_267EF0E68(v395, 3);
              *v396 = sub_267CD9CCC;
              v396[1] = v389;
              v396[2] = sub_267CD9CCC;
              v396[3] = v390;
              v396[4] = sub_267CD9CB4;
              v396[5] = v394;

              LODWORD(v682) = v386;
              v687 = v388;
              v397 = os_log_type_enabled(v388, v386);
              v398 = v640;
              if (v397)
              {
                v399 = swift_slowAlloc();
                v400 = swift_slowAlloc();
                v699 = v400;
                *v399 = 258;
                *(v399 + 2) = 32;

                *(v399 + 3) = 8;

                v401 = v692;
                v402 = sub_267EF5508();
                v404 = sub_267BA33E8(v402, v403, &v699);

                *(v399 + 4) = v404;

                v405 = v637;
                v87 = v637[1];
                v87(v401, v640);
                v406 = v687;
                _os_log_impl(&dword_267B93000, v687, v682, "#SendMessageNLv4IntentConverter NLv4 message attribute is %s", v399, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v400);
                MEMORY[0x26D60A7B0](v400, -1, -1);
                v84 = v640;
                MEMORY[0x26D60A7B0](v399, -1, -1);

                v407 = v405;
              }

              else
              {

                v87 = v393[1];
                v87(v692, v398);
                v407 = v393;
                v84 = v398;
              }

              v408 = v630;
              (v688)(v630, v635, v84);
              v409 = (v407[11])(v408, v84);
              if (v409 == *MEMORY[0x277D5E368])
              {
                v107 = sub_267EF89F8();
                v410 = sub_267EF95D8();
                if (!os_log_type_enabled(v107, v410))
                {
                  goto LABEL_254;
                }

                v639 = 2;
                v411 = swift_slowAlloc();
                *v411 = 0;
                _os_log_impl(&dword_267B93000, v107, v410, "#SendMessageNLv4IntentConverter setting outgoingMessageType to audio", v411, 2u);
                MEMORY[0x26D60A7B0](v411, -1, -1);

                v87(v635, v84);
LABEL_255:
                v310 = v686;
              }

              else
              {
                v412 = v409;
                v413 = *MEMORY[0x277D5E360];
                v414 = sub_267EF89F8();
                v415 = sub_267EF95D8();
                v416 = os_log_type_enabled(v414, v415);
                if (v412 == v413)
                {
                  if (v416)
                  {
                    v417 = swift_slowAlloc();
                    *v417 = 0;
                    _os_log_impl(&dword_267B93000, v414, v415, "#SendMessageNLv4IntentConverter adding location attachment", v417, 2u);
                    MEMORY[0x26D60A7B0](v417, -1, -1);
                  }

                  v702 = MEMORY[0x277D84F90];
                  v418 = [objc_opt_self() attachmentWithCurrentLocation];
                  MEMORY[0x26D608F90]();
                  if (*((v702 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v702 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_267EF9328();
                  }

                  sub_267EF9368();

                  v87(v635, v84);
                }

                else
                {
                  if (v416)
                  {
                    v419 = swift_slowAlloc();
                    *v419 = 0;
                    _os_log_impl(&dword_267B93000, v414, v415, "#SendMessageNLv4IntentConverter not using messageAttribute in intent conversion", v419, 2u);
                    MEMORY[0x26D60A7B0](v419, -1, -1);
                  }

                  v87(v635, v84);
                  v87(v408, v84);
                }

                v310 = v686;
              }

              v373 = v641;
            }
          }

          else
          {
          }
        }

        else
        {
          v373 = 0;
        }

        v420 = sub_267EF5C68();
        v641 = v373;
        if (v420)
        {
          sub_267E0F940(v420, sub_267BAF0DC, MEMORY[0x277D5EA18]);

          sub_267E0FE8C();
          if (v421)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v422 = sub_267EF8A08();
            __swift_project_value_buffer(v422, qword_280240FB0);
            v423 = sub_267EF89F8();
            v424 = sub_267EF95D8();
            if (os_log_type_enabled(v423, v424))
            {
              v425 = swift_slowAlloc();
              *v425 = 0;
              _os_log_impl(&dword_267B93000, v423, v424, "#SendMessageNLv4IntentConverter setting outgoingMessageType to audio based on common_Attachment", v425, 2u);
              MEMORY[0x26D60A7B0](v425, -1, -1);
            }

            v639 = 2;
          }

          sub_267E0FE8C();
          v427 = v426;

          v686 = v310;
          if (v427)
          {
            if (qword_280228818 != -1)
            {
              swift_once();
            }

            v428 = sub_267EF8A08();
            __swift_project_value_buffer(v428, qword_280240FB0);
            v429 = sub_267EF89F8();
            v430 = sub_267EF95D8();
            if (os_log_type_enabled(v429, v430))
            {
              v431 = swift_slowAlloc();
              *v431 = 0;
              _os_log_impl(&dword_267B93000, v429, v430, "#SendMessageNLv4IntentConverter adding location attachment based on common_Attachment", v431, 2u);
              MEMORY[0x26D60A7B0](v431, -1, -1);
            }

            v432 = v702;
            if (!v702)
            {
              v432 = MEMORY[0x277D84F90];
            }

            v702 = v432;
            v433 = [objc_opt_self() attachmentWithCurrentLocation];
            MEMORY[0x26D608F90]();
            if (*((v702 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v702 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_267EF9328();
            }

            sub_267EF9368();
          }
        }

        else
        {
          v686 = v310;
        }

        v645 = sub_267EF5C88();
        v88 = v434;
        v435 = sub_267EF5CB8();
        v368 = v675;
        v637 = v435;
        if (!v435)
        {
          goto LABEL_298;
        }

        v436 = sub_267EF59B8();
        v438 = v437;

        if (!v438)
        {
          goto LABEL_298;
        }

        sub_267EF59C8();

        if (v700)
        {
          v692 = v700;
          v693 = v88;
          v688 = v699;
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v439 = sub_267EF8A08();
          v440 = __swift_project_value_buffer(v439, qword_280240FB0);
          v441 = swift_allocObject();
          *(v441 + 16) = v436;
          *(v441 + 24) = v438;
          swift_bridgeObjectRetain_n();
          v690 = v440;
          v442 = sub_267EF89F8();
          v443 = sub_267EF95D8();
          v444 = swift_allocObject();
          *(v444 + 16) = 32;
          v445 = swift_allocObject();
          v691 = v436;
          v446 = v445;
          *(v445 + 16) = 8;
          v447 = swift_allocObject();
          *(v447 + 16) = sub_267E1944C;
          *(v447 + 24) = v441;
          v448 = swift_allocObject();
          *(v448 + 16) = sub_267CD9CC4;
          *(v448 + 24) = v447;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
          v449 = swift_allocObject();
          sub_267EF0E68(v449, 3);
          *v450 = sub_267CD9CCC;
          v450[1] = v444;
          v450[2] = sub_267CD9CCC;
          v450[3] = v446;
          v450[4] = sub_267CD9CB4;
          v450[5] = v448;

          LODWORD(v687) = v443;
          if (os_log_type_enabled(v442, v443))
          {
            v451 = swift_slowAlloc();
            v682 = v442;
            v452 = v451;
            v453 = swift_slowAlloc();
            v699 = v453;
            *v452 = 258;
            *(v452 + 2) = 32;

            *(v452 + 3) = 8;

            v454 = v691;
            v455 = sub_267BA33E8(v691, v438, &v699);

            *(v452 + 4) = v455;

            v456 = v682;
            _os_log_impl(&dword_267B93000, v682, v687, "#SendMessageNLv4IntentConverter processing operator %s on stringContent", v452, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v453);
            MEMORY[0x26D60A7B0](v453, -1, -1);
            MEMORY[0x26D60A7B0](v452, -1, -1);

            v457 = v454;
          }

          else
          {

            v457 = v691;
          }

          v458 = v457 == 0x646E65707061 && v438 == 0xE600000000000000;
          v88 = v693;
          v459 = v692;
          if (v458)
          {
          }

          else
          {
            v460 = sub_267EF9EA8();

            if ((v460 & 1) == 0)
            {

              v461 = sub_267EF89F8();
              v462 = sub_267EF95D8();
              if (os_log_type_enabled(v461, v462))
              {
                v463 = swift_slowAlloc();
                *v463 = 0;
                _os_log_impl(&dword_267B93000, v461, v462, "#SendMessageNLv4IntentConverter unknown operand on stringContent, this should not happen", v463, 2u);
                MEMORY[0x26D60A7B0](v463, -1, -1);
              }

              goto LABEL_297;
            }
          }

          v465 = sub_267EF89F8();
          v466 = sub_267EF95D8();
          if (os_log_type_enabled(v465, v466))
          {
            v467 = swift_slowAlloc();
            *v467 = 0;
            _os_log_impl(&dword_267B93000, v465, v466, "#SendMessageNLv4IntentConverter append operand on stringContent, updating stringContent", v467, 2u);
            MEMORY[0x26D60A7B0](v467, -1, -1);
          }

          v310 = v686;
          v359 = v664;
          v464 = v688;
          goto LABEL_306;
        }

LABEL_297:
        v368 = v675;
LABEL_298:
        if (v88)
        {
          v464 = v645;
          v459 = v88;
          v310 = v686;
          v359 = v664;
LABEL_306:
          v468 = v657[4];
          __swift_project_boxed_opaque_existential_0(v657, v657[3]);
          v88 = v638;
          sub_267EF3B68();
          v469 = sub_267EF2E38();
          __swift_storeEnumTagSinglePayload(v88, 0, 1, v469);
          v645 = sub_267D5EBA4(v88, v464, v459);
          v635 = v470;

          sub_267B9F98C(v88, &unk_28022AF10, &unk_267F001E0);
          v87 = v679;
          v368 = v675;
          goto LABEL_307;
        }

        v635 = 0;
        v310 = v686;
        v359 = v664;
LABEL_301:
        v87 = v679;
LABEL_307:
        v638 = v711;
        v646 = sub_267ECEE14(v711);
        if (sub_267E61530(v646))
        {

          *&v667 = 0;
          v471 = v310;
          goto LABEL_349;
        }

        v686 = v310;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
        v472 = sub_267EF8F28();
        v84 = v710;
        v669 = sub_267BAF0DC(v710);
        if (!v669)
        {
LABEL_348:
          *&v667 = v472;

          v471 = v686;
          v359 = v664;
LABEL_349:
          v529 = v646;
          v530 = sub_267E8D860(v646);
          v531 = v702;
          v532 = objc_allocWithZone(MEMORY[0x277CD4078]);

          v533 = v632;
          v534 = v632;
          v692 = v531;
          v86 = sub_267E8F82C(v530, v639, v645, v635, v533, v636, v631, 0, 0, 0, v531);
          sub_267C7A414();

          sub_267E0F7D0(v529);

          sub_267D2952C();

          sub_267D29264();
          if (v533)
          {
            v535 = sub_267E10680();
          }

          else
          {
            v535 = 0;
            v536 = 0;
          }

          v690 = v534;
          v686 = v471;
          sub_267D294C0(v535, v536);
          sub_267D291CC(v667);
          v537 = v658;
          v648(v658, v660, v359);
          __swift_storeEnumTagSinglePayload(v537, 0, 1, v359);
          sub_267D295F8(v537);
          sub_267D295A8();
          if (qword_280228818 == -1)
          {
            goto LABEL_353;
          }

          goto LABEL_379;
        }

        v474 = 0;
        *&v668 = v84 & 0xC000000000000001;
        v657 = (v84 & 0xFFFFFFFFFFFFFF8);
        v654 = v84 + 32;
        v690 = (v652 + 16);
        LODWORD(v688) = *MEMORY[0x277D5E4B0];
        v687 = v634 + 13;
        *&v673 = v634 + 4;
        v681 = v634 + 1;
        v682 = (v652 + 8);
        v677 = "numberOfSendersMinusTwo";
        *&v473 = 136315394;
        v640 = v473;
        v475 = v684;
        v659 = v84;
        while (1)
        {
          if (v668)
          {
            v476 = MEMORY[0x26D609870](v474, v84);
          }

          else
          {
            if (v474 >= v657[2])
            {
              goto LABEL_376;
            }

            v477 = *(v654 + 8 * v474);
          }

          v478 = __OFADD__(v474, 1);
          v479 = (&v474->isa + 1);
          if (v478)
          {
            goto LABEL_375;
          }

          v480 = v475;
          v676 = v479;
          v481 = v476;
          v482 = sub_267EF5C18();
          *&v672 = v483;
          if (!v483)
          {
            goto LABEL_339;
          }

          v671 = v482;
          v484 = sub_267EF5A38();
          if (!v484)
          {
            break;
          }

          v666 = v481;
          *&v667 = v472;
          v701 = MEMORY[0x277D84FA0];
          v485 = *(v484 + 16);
          v662 = v484;
          if (v485)
          {
            v486 = v484 + ((*(v652 + 80) + 32) & ~*(v652 + 80));
            v692 = *(v652 + 72);
            v691 = *(v652 + 16);
            v487 = v674;
            v475 = v480;
            while (1)
            {
              v693 = v485;
              (v691)(v694, v486, v475);
              sub_267EF5788();
              (v687->isa)(v487, v688, v87);
              __swift_storeEnumTagSinglePayload(v487, 0, 1, v87);
              v488 = *(v683 + 48);
              v489 = v695;
              sub_267C2FB6C(v368, v695, &qword_28022AF00, &unk_267F042C0);
              sub_267C2FB6C(v487, v489 + v488, &qword_28022AF00, &unk_267F042C0);
              if (__swift_getEnumTagSinglePayload(v489, 1, v87) == 1)
              {
                v490 = v487;
                sub_267B9F98C(v487, &qword_28022AF00, &unk_267F042C0);
                v491 = v368;
                sub_267B9F98C(v368, &qword_28022AF00, &unk_267F042C0);
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v695 + v488, 1, v87);
                v475 = v684;
                if (EnumTagSinglePayload != 1)
                {
                  goto LABEL_325;
                }

                sub_267B9F98C(v695, &qword_28022AF00, &unk_267F042C0);
                v487 = v490;
              }

              else
              {
                v493 = v695;
                v494 = v670;
                sub_267C2FB6C(v695, v670, &qword_28022AF00, &unk_267F042C0);
                if (__swift_getEnumTagSinglePayload(v493 + v488, 1, v87) == 1)
                {
                  v490 = v674;
                  sub_267B9F98C(v674, &qword_28022AF00, &unk_267F042C0);
                  v495 = v675;
                  sub_267B9F98C(v675, &qword_28022AF00, &unk_267F042C0);
                  v496 = v494;
                  v491 = v495;
                  (v681->isa)(v496, v87);
                  v475 = v684;
LABEL_325:
                  sub_267B9F98C(v695, &qword_28022AEF8, &qword_267F042B8);
                  v368 = v491;
                  v487 = v490;
                  goto LABEL_335;
                }

                v497 = v665;
                (*v673)(v665, v695 + v488, v87);
                sub_267E195CC(&unk_28022AF20, MEMORY[0x277D5E4D8]);
                LODWORD(v680) = sub_267EF8FE8();
                v498 = v681->isa;
                (v681->isa)(v497, v679);
                v499 = v498;
                v500 = v674;
                sub_267B9F98C(v674, &qword_28022AF00, &unk_267F042C0);
                v368 = v675;
                sub_267B9F98C(v675, &qword_28022AF00, &unk_267F042C0);
                v501 = v494;
                v487 = v500;
                v499(v501, v679);
                v87 = v679;
                sub_267B9F98C(v695, &qword_28022AF00, &unk_267F042C0);
                v475 = v684;
                if ((v680 & 1) == 0)
                {
                  goto LABEL_335;
                }
              }

              if (sub_267EF5768() == 0x73746361746E6F43 && v502 == 0xE800000000000000)
              {

LABEL_334:
                swift_beginAccess();
                sub_267D302A8(v697, 0xD000000000000013, v677 | 0x8000000000000000);
                swift_endAccess();

LABEL_335:
                (v682->isa)(v694, v475);
                goto LABEL_336;
              }

              v504 = sub_267EF9EA8();

              if (v504)
              {
                goto LABEL_334;
              }

              v505 = v694;
              v506 = sub_267EF5768();
              v507 = v475;
              v509 = v508;
              swift_beginAccess();
              v87 = v679;
              sub_267D302A8(v697, v506, v509);
              swift_endAccess();

              v510 = v505;
              v475 = v507;
              v368 = v675;
              (v682->isa)(v510, v507);
LABEL_336:
              v486 += v692;
              v485 = (v693 - 1);
              if (v693 == 1)
              {
                goto LABEL_341;
              }
            }
          }

          v475 = v480;
LABEL_341:
          if (qword_280228818 != -1)
          {
            swift_once();
          }

          v511 = sub_267EF8A08();
          __swift_project_value_buffer(v511, qword_280240FB0);
          v512 = v672;
          swift_bridgeObjectRetain_n();
          v513 = sub_267EF89F8();
          v514 = sub_267EF95D8();
          v515 = os_log_type_enabled(v513, v514);
          v84 = v659;
          if (v515)
          {
            v516 = swift_slowAlloc();
            LODWORD(v692) = v514;
            v517 = v516;
            v693 = swift_slowAlloc();
            v696[0] = v693;
            *v517 = v640;

            v518 = sub_267BA33E8(v671, v512, v696);

            *(v517 + 4) = v518;
            swift_bridgeObjectRelease_n();
            *(v517 + 12) = 2080;
            swift_beginAccess();

            v519 = v84;
            v520 = sub_267EF94E8();
            v522 = v521;

            v523 = v520;
            v84 = v519;
            v524 = sub_267BA33E8(v523, v522, v696);

            *(v517 + 14) = v524;
            v475 = v684;
            v87 = v679;

            _os_log_impl(&dword_267B93000, v513, v692, "#SendMessageNLv4IntentConverter recipient %s can be found in apps: %s", v517, 0x16u);
            v525 = v693;
            swift_arrayDestroy();
            MEMORY[0x26D60A7B0](v525, -1, -1);
            MEMORY[0x26D60A7B0](v517, -1, -1);
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          v88 = v671;
          swift_beginAccess();
          v526 = v701;

          v527 = v667;
          v528 = swift_isUniquelyReferenced_nonNull_native();
          v696[0] = v527;
          sub_267E870F8(v526, v88, v512, v528);

          v472 = v696[0];
          v474 = v676;
LABEL_347:
          if (v474 == v669)
          {
            goto LABEL_348;
          }
        }

LABEL_339:

        v474 = v676;
        v475 = v480;
        goto LABEL_347;
      }

      v365 = v363;
    }

    else
    {
      v369 = sub_267EF5FA8();
      v370 = v645;
      __swift_storeEnumTagSinglePayload(v645, 1, 1, v369);
      v365 = v370;
    }

    sub_267B9F98C(v365, &qword_28022C158, &unk_267F09680);
    v639 = 0;
    goto LABEL_233;
  }

  (*(v269 + 8))(v272, v268);
  v87 = v686;
  v88 = v692;
LABEL_201:
  v304 = sub_267C8F5C4(v265);

  if (v304 >= 2)
  {
    if (!sub_267EB8F8C())
    {
      v686 = v87;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v334 = sub_267EF8A08();
      __swift_project_value_buffer(v334, qword_280240FB0);
      v335 = swift_allocObject();
      *(v335 + 16) = v304;
      sub_267E19480(v304);
      v691 = v304;
      v336 = sub_267EF89F8();
      v337 = sub_267EF95D8();
      v338 = swift_allocObject();
      *(v338 + 16) = 64;
      v339 = swift_allocObject();
      *(v339 + 16) = 8;
      v340 = swift_allocObject();
      *(v340 + 16) = sub_267E19664;
      *(v340 + 24) = v335;
      v341 = swift_allocObject();
      *(v341 + 16) = sub_267E19660;
      *(v341 + 24) = v340;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
      v342 = swift_allocObject();
      sub_267EF0E68(v342, 3);
      *v343 = sub_267CD9CCC;
      v343[1] = v338;
      v343[2] = sub_267CD9CCC;
      v343[3] = v339;
      v343[4] = sub_267E19658;
      v343[5] = v341;

      v693 = v336;
      v344 = os_log_type_enabled(v336, v337);
      v632 = v304;
      if (v344)
      {
        v345 = swift_slowAlloc();
        LODWORD(v690) = v337;
        v346 = v304;
        v347 = v345;
        v348 = swift_slowAlloc();
        *v347 = 258;
        *(v347 + 2) = 64;

        *(v347 + 3) = 8;

        v349 = v691;
        *(v347 + 4) = v691;
        *v348 = v346;
        v350 = v349;

        sub_267C77344(v346);
        v351 = v693;
        _os_log_impl(&dword_267B93000, v693, v690, "#SendMessageNLv4IntentConverter setting speakableGroupName=%@", v347, 0xCu);
        sub_267B9F98C(v348, &unk_280229E30, &unk_267EFC270);
        MEMORY[0x26D60A7B0](v348, -1, -1);
        MEMORY[0x26D60A7B0](v347, -1, -1);
      }

      else
      {

        sub_267C77344(v304);
      }

      v360 = v662;

      v636 = 0;
      v631 = 0;
      v711 = MEMORY[0x277D84F90];
      v310 = v686;
      v359 = v664;
      goto LABEL_224;
    }

    sub_267C77344(v304);
  }

  v305 = v710;
  v306 = v87;
  sub_267E0F5C4();
  v308 = v307;
  v309 = v709;
  sub_267E0F5C4();
  v310 = v306;
  sub_267E1062C(v308, v311, sub_267C9B718);

  v312 = sub_267E61574(v308);
  v661 = v309;
  if (v312)
  {

LABEL_219:
    v636 = 0;
    v631 = 0;
    v632 = 0;
    v359 = v664;
    v360 = v662;
    goto LABEL_225;
  }

  v693 = v305;
  v686 = v306;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v313 = sub_267EF8A08();
  __swift_project_value_buffer(v313, qword_280240FB0);
  v314 = swift_allocObject();
  v314[2].isa = v308;
  v315 = swift_allocObject();
  *(v315 + 16) = sub_267CD9BA4;
  *(v315 + 24) = v314;
  swift_bridgeObjectRetain_n();
  v691 = v314;

  v316 = sub_267EF89F8();
  v317 = sub_267EF95D8();
  v318 = swift_allocObject();
  *(v318 + 16) = 32;
  v319 = swift_allocObject();
  *(v319 + 16) = 8;
  v320 = swift_allocObject();
  *(v320 + 16) = sub_267E19394;
  *(v320 + 24) = v315;
  v321 = swift_allocObject();
  *(v321 + 16) = sub_267CD9B60;
  *(v321 + 24) = v320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8A0, &qword_267F01FC0);
  v322 = swift_initStackObject();
  sub_267EF0E68(v322, 3);
  *v323 = sub_267CD9B58;
  v323[1] = v318;
  v323[2] = sub_267CD9CCC;
  v323[3] = v319;
  v323[4] = sub_267CD9B68;
  v323[5] = v321;

  LODWORD(v690) = v317;
  if (os_log_type_enabled(v316, v317))
  {
    v324 = swift_slowAlloc();
    v688 = v316;
    v325 = v324;
    v326 = swift_slowAlloc();
    v699 = v326;
    *v325 = 258;
    *(v325 + 2) = 32;

    *(v325 + 3) = 8;

    v327 = sub_267EF6A08();

    v329 = MEMORY[0x26D608FD0](v328, v327);
    v331 = v330;

    v332 = sub_267BA33E8(v329, v331, &v699);

    *(v325 + 4) = v332;

    v333 = v688;
    _os_log_impl(&dword_267B93000, v688, v690, "#SendMessageNLv4IntentConverter calling CRR for recipients: %s", v325, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v326);
    MEMORY[0x26D60A7B0](v326, -1, -1);
    MEMORY[0x26D60A7B0](v325, -1, -1);
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_0(v636, v636[3]);
  v352 = v689;
  v353 = v686;
  v354 = sub_267EF6878();
  v355 = v653;
  v88 = v692;
  if (!v353)
  {
    v356 = v354;

    v357 = sub_267E0FAD0(v356);
    sub_267E10344(v357, &v711, &v703, &v704);
    v358 = sub_267E0F498(v357);
    v310 = 0;

    sub_267C9BB60(v358);
    goto LABEL_219;
  }

  (*(v655 + 8))(v352, v656);
  (*(v663 + 8))(v660, v664);

  (*(v650 + 8))(v355, v651);
LABEL_188:
}

uint64_t sub_267E17E10@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A898, &qword_267F01FA8);
  v7 = sub_267EF7068();
  v10 = v6;
  v7(&v9, &v10);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    *a3 = v9;
  }

  return result;
}

uint64_t sub_267E17EC0(uint64_t a1, void *a2, _BYTE *a3, uint64_t *a4)
{
  v66 = a4;
  v67 = a3;
  v6 = sub_267EF6868();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v57 - v10;
  v11 = sub_267EF6A78();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v57 - v17;
  sub_267EF6858();
  MEMORY[0x26D608F90]();
  sub_267BDECD0(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_267EF9368();
  v19 = sub_267EF6858();
  sub_267EF6828();
  sub_267DEB128();

  if ((*v67 & 1) == 0)
  {
    sub_267EF6838();
    v20 = v12[13];
    v20(v16, *MEMORY[0x277D560A8], v11);
    v21 = sub_267C28FC8(v18, v16);
    v22 = v12[1];
    v22(v16, v11);
    v22(v18, v11);
    if (v21 & 1) != 0 || (sub_267EF6838(), v20(v16, *MEMORY[0x277D560B0], v11), v23 = sub_267C28FC8(v18, v16), v22(v16, v11), v22(v18, v11), (v23))
    {
      v61 = a1;
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v24 = sub_267EF8A08();
      __swift_project_value_buffer(v24, qword_280240FB0);
      v25 = v64;
      v26 = v65;
      v27 = *(v64 + 16);
      v28 = v61;
      v29 = v62;
      v27(v62, v61, v65);
      v30 = v63;
      v27(v63, v28, v26);
      v31 = sub_267EF89F8();
      v32 = sub_267EF95D8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v68 = v60;
        *v33 = 136315394;
        v59 = v32;
        v34 = sub_267EF6858();
        v58 = v31;
        v35 = v34;
        v36 = [v34 displayName];

        v37 = sub_267EF9028();
        v38 = v30;
        v40 = v39;

        v41 = *(v25 + 8);
        v41(v29, v26);
        v42 = sub_267BA33E8(v37, v40, &v68);

        *(v33 + 4) = v42;
        *(v33 + 12) = 2080;
        v43 = sub_267EF6858();
        v44 = sub_267BBDEAC();
        v46 = v45;

        v41(v38, v26);
        v47 = sub_267BA33E8(v44, v46, &v68);

        *(v33 + 14) = v47;
        v48 = v58;
        _os_log_impl(&dword_267B93000, v58, v59, "#SendMessageNLv4IntentConverter found at least one CRR recipient from 'random' force prompt - name:%s identifier:%s", v33, 0x16u);
        v49 = v60;
        swift_arrayDestroy();
        MEMORY[0x26D60A7B0](v49, -1, -1);
        MEMORY[0x26D60A7B0](v33, -1, -1);
      }

      else
      {

        v50 = *(v25 + 8);
        v50(v30, v26);
        v50(v29, v26);
      }

      *v67 = 1;
    }
  }

  result = sub_267EF6848();
  if (result)
  {
    v52 = result;
    v53 = v66;
    v54 = *v66;

    v55 = sub_267E0FE08(v52, v54);
    v56 = *v53;
    *v53 = v55;
  }

  return result;
}

uint64_t sub_267E18470()
{
  result = sub_267D2904C();
  if (!v1)
  {
    return 7104878;
  }

  return result;
}

uint64_t sub_267E184AC()
{
  if (!sub_267D29108())
  {
    return 7104878;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295D0, &unk_267EFDD30);
  v0 = sub_267EF8F18();

  return v0;
}

uint64_t sub_267E18538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_267EF2D28();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_267E185A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_11_22();
  a19 = v21;
  a20 = v22;
  v96 = v23;
  v93 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_267EF57C8();
  OUTLINED_FUNCTION_23();
  v31 = v30;
  v33 = *(v32 + 64);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v81 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v81 - v41;
  if (!*v26 || (v43 = sub_267EF5BA8(), (v89 = v44) == 0))
  {
    v47 = 0;
    goto LABEL_59;
  }

  v45 = v43;
  v86 = v37;
  v90 = [objc_allocWithZone(MEMORY[0x277CD4338]) init];
  if (v90)
  {
    sub_267E192D4(v45, v89, v90);
  }

  v88 = v42;
  v87 = INIntentSlotValueTransformFromDataString();
  v85 = 0xD000000000000013;
  v82 = 0x8000000267F10280;
  if (!v96)
  {
    goto LABEL_13;
  }

  if (v93 == 0xD000000000000013 && 0x8000000267F10280 == v96)
  {
    v96 = 0xE800000000000000;
    v93 = 0x736567617373654DLL;
    goto LABEL_15;
  }

  if (sub_267EF9EA8())
  {
    v96 = 0xE800000000000000;
    v93 = 0x736567617373654DLL;
  }

  else
  {
LABEL_13:
  }

LABEL_15:
  v48 = sub_267EF5A38();
  if (!v48)
  {

LABEL_39:
    v47 = v87;
    goto LABEL_59;
  }

  v49 = v48;
  v83 = v28;
  v84 = v20;
  v50 = 0;
  v51 = *(v48 + 16);
  v92 = 0x8000000267F1B270;
  v52 = HIBYTE(v96) & 0xF;
  if ((v96 & 0x2000000000000000) == 0)
  {
    v52 = v93 & 0xFFFFFFFFFFFFLL;
  }

  v91 = v52;
  v94 = v31 + 16;
  v95 = (v31 + 8);
  while (1)
  {
    if (v51 == v50)
    {

      v28 = v83;
      goto LABEL_39;
    }

    if (v50 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v37 = *(v31 + 16);
    v53 = v29;
    (v37)(v40, v49 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v50, v29);
    v54 = sub_267EF57B8();
    if (v55)
    {
      if (v54 == 0xD000000000000014 && v55 == v92)
      {
      }

      else
      {
        v57 = sub_267EF9EA8();

        if ((v57 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v58 = v96;
      if (!v96)
      {
        goto LABEL_44;
      }

      if (!v91)
      {
        break;
      }

      if (sub_267EF5768() == v93 && v58 == v59)
      {

        goto LABEL_45;
      }

      v61 = sub_267EF9EA8();

      if (v61)
      {
        break;
      }
    }

LABEL_36:
    v29 = v53;
    (*v95)(v40, v53);
    ++v50;
  }

LABEL_44:

LABEL_45:

  v51 = v88;
  v29 = v53;
  (*(v31 + 32))(v88, v40, v53);
  if (qword_280228818 == -1)
  {
    goto LABEL_46;
  }

LABEL_61:
  swift_once();
LABEL_46:
  v62 = sub_267EF8A08();
  __swift_project_value_buffer(v62, qword_280240FB0);
  (v37)(v86, v51, v29);
  v63 = sub_267EF89F8();
  v64 = sub_267EF95D8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    a10 = v66;
    *v65 = 136315138;
    v67 = sub_267EF57A8();
    v69 = v68;
    v70 = OUTLINED_FUNCTION_6_44();
    (v37)(v70);
    v71 = sub_267BA33E8(v67, v69, &a10);

    *(v65 + 4) = v71;
    _os_log_impl(&dword_267B93000, v63, v64, "#SendMessageNLv4IntentConverter adding vocabularyIdentifier: %s to INSpeakableString", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v66);
    MEMORY[0x26D60A7B0](v66, -1, -1);
    MEMORY[0x26D60A7B0](v65, -1, -1);
  }

  else
  {

    v72 = OUTLINED_FUNCTION_6_44();
    (v37)(v72);
  }

  v28 = v83;
  v47 = v87;
  if (v87)
  {
    v73 = v87;
    sub_267EF57A8();
    v74 = sub_267EF8FF8();

    v75 = sub_267EF8FF8();
    [v73 setValue:v74 forKey:v75];

    v76 = v73;
    if (sub_267EF5768() == 0x736567617373654DLL && v77 == 0xE800000000000000)
    {

      v80 = v82;
    }

    else
    {
      v79 = sub_267EF9EA8();

      v80 = v82;
      if ((v79 & 1) == 0)
      {
        v85 = sub_267EF5768();
      }
    }

    sub_267E1076C(v85, v80);

    (v37)(v88, v29);
  }

  else
  {
    (v37)(v88, v29);
  }

LABEL_59:
  *v28 = v47;
  OUTLINED_FUNCTION_10_4();
}

void sub_267E18C68()
{
  OUTLINED_FUNCTION_11_22();
  v1 = v0;
  v2 = sub_267EF57C8();
  OUTLINED_FUNCTION_23();
  v17 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_0();
  v9 = v8 - v7;
  v10 = *v1;
  v11 = sub_267EF6058();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_267EF6048();
  if (v10)
  {
    v15 = [v10 spokenPhrase];
    sub_267EF9028();

    sub_267EF6038();

    sub_267EB91D8(v10);
    if (v16)
    {
      if (sub_267EF6028())
      {
        sub_267EF5798();
        sub_267EF5668();

        (*(v17 + 8))(v9, v2);
      }

      else
      {
      }
    }
  }

  MEMORY[0x26D6059D0](v14);
  sub_267EF5BC8();
  sub_267EF5E08();

  OUTLINED_FUNCTION_10_4();
}

uint64_t sub_267E18E8C(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t (*a3)(void))
{
  a1(&v8);
  v4 = v8;
  v5 = a3(0);
  v6 = MEMORY[0x26D608FD0](v4, v5);

  return v6;
}

uint64_t sub_267E18F00(void (*a1)(uint64_t))
{
  v2 = sub_267EF2D28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v5);
  sub_267E195CC(&qword_28022C618, MEMORY[0x277CC95F0]);
  v8 = sub_267EF9E58();
  (*(v3 + 8))(v7, v2);
  return v8;
}

uint64_t sub_267E19028(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  sub_267EDB728(v43);
  v6 = v43[1];
  v7 = v43[3];
  v8 = v43[4];
  v38 = v43[5];
  v39 = v43[0];
  v9 = (v43[2] + 64) >> 6;

  v37 = v6;
  if (v8)
  {
    while (1)
    {
      v40 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v39 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v39 + 56) + 8 * v12);
      v42[0] = *v13;
      v42[1] = v14;
      v42[2] = v15;

      v38(v41, v42);

      v16 = v41[0];
      v17 = v41[1];
      v18 = v41[2];
      v19 = *v44;
      v21 = sub_267BA9948();
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v24 = v20;
      if (*(v19 + 24) >= v22 + v23)
      {
        if ((v40 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A978, &unk_267F0AC90);
          sub_267EF9C78();
        }
      }

      else
      {
        v25 = v44;
        sub_267CFA760();
        v26 = *v25;
        v27 = sub_267BA9948();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v21 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v44;
      if (v24)
      {

        v30 = v29[7];
        v31 = *(v30 + 8 * v21);
        *(v30 + 8 * v21) = v18;
      }

      else
      {
        v29[(v21 >> 6) + 8] |= 1 << v21;
        v32 = (v29[6] + 16 * v21);
        *v32 = v16;
        v32[1] = v17;
        *(v29[7] + 8 * v21) = v18;
        v33 = v29[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_23;
        }

        v29[2] = v35;
      }

      a4 = 1;
      v7 = v10;
      v6 = v37;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_267C095D8();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v40 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267E192D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_267EF8FF8();
  [a3 setLocalizedValue_];
}

uint64_t sub_267E193D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_267EF2D28() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267E18538(v4, a1);
}

id sub_267E19480(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_84Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_267E195CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267E19614@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267EDB734(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

void sub_267E196CC(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v4 = sub_267EF8A08();
  __swift_project_value_buffer(v4, qword_280240FB0);
  v5 = sub_267EF89F8();
  v6 = sub_267EF95C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136446210;
    v9 = sub_267EF3438();
    v11 = sub_267BA33E8(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_267B93000, v5, v6, "#SendMessageUnlockCheckFlow pushing unlock flow completed with %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x26D60A7B0](v8, -1, -1);
    MEMORY[0x26D60A7B0](v7, -1, -1);
  }

  *(a2 + 56) = v3;
}

unsigned __int8 *getEnumTagSinglePayload for SendMessageUnlockCheckFlow.State(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 3)
    {
      return (v7 - 2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SendMessageUnlockCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_267E199F0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE50, &unk_267EFD130);
  v6 = OUTLINED_FUNCTION_18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = sub_267EF93F8();
  OUTLINED_FUNCTION_79_5(v10, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = &unk_267F0B0E0;
  v14[7] = v2;

  sub_267E8FA18();
}

uint64_t sub_267E19AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BBD07C;

  return sub_267BC5358();
}

uint64_t sub_267E19B90()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_14();
  v4 = v3;
  OUTLINED_FUNCTION_9_1();
  *v5 = v4;
  v7 = *(v6 + 2224);
  v8 = *v1;
  OUTLINED_FUNCTION_5();
  *v9 = v8;
  v4[279] = v0;

  OUTLINED_FUNCTION_111_6();
  if (v0)
  {
    v10 = *(v2 + 8);
    v11 = OUTLINED_FUNCTION_108();
    v12(v11);
    __swift_destroy_boxed_opaque_existential_0(v4 + 159);
  }

  else
  {
    v13 = *(v2 + 8);
    v14 = OUTLINED_FUNCTION_108();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_0(v4 + 159);
    __swift_destroy_boxed_opaque_existential_0(v4 + 169);
    __swift_destroy_boxed_opaque_existential_0(v4 + 164);
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_267E19CE0()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2184);
  v3 = *(v0 + 2032);
  v4 = *(v3 + 112);
  sub_267B9B050(v3 + 16, v0 + 1472);
  v5 = type metadata accessor for SiriKitFlowFactoryImpl();
  v6 = OUTLINED_FUNCTION_49();
  *(v0 + 1536) = v5;
  *(v0 + 1544) = &off_2878CFE90;
  *(v0 + 1512) = v6;
  v7 = qword_2802286F0;
  v8 = v1;
  v84 = v4;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v80 = *(v0 + 2216);
  v81 = *(v0 + 2184);
  v9 = *(v0 + 2040);
  type metadata accessor for SendMessageCATs();
  sub_267EF7B68();
  v83 = sub_267EF78E8();
  __swift_project_boxed_opaque_existential_0(qword_2802405A0, qword_2802405B8);
  v82 = sub_267BB4A3C();
  v10 = type metadata accessor for ShareSheetProvider();
  v11 = OUTLINED_FUNCTION_49();
  *(v0 + 1576) = v10;
  *(v0 + 1584) = &off_2878D0D48;
  *(v0 + 1552) = v11;
  v12 = *(v0 + 1536);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1512, v12);
  OUTLINED_FUNCTION_23();
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v18, v13, v12);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1552, v10);
  OUTLINED_FUNCTION_23();
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2();
  (*(v21 + 16))(v24, v19, v10);
  v25 = *v18;
  v26 = *v24;
  *(v0 + 1616) = v5;
  *(v0 + 1624) = &off_2878CFE90;
  *(v0 + 1592) = v25;
  *(v0 + 1656) = v10;
  *(v0 + 1664) = &off_2878D0D48;
  *(v0 + 1632) = v26;
  *(v0 + 1696) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 1704) = off_2878D1228;
  v27 = type metadata accessor for SendMessageFlow(0);
  OUTLINED_FUNCTION_27_4(v27);
  v28 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1592, v5);
  OUTLINED_FUNCTION_23();
  v30 = v29;
  v32 = *(v31 + 64);
  v33 = OUTLINED_FUNCTION_2();
  v34 = *(v30 + 16);
  OUTLINED_FUNCTION_74();
  v35();
  v36 = *(v0 + 1656);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 1632, v36);
  OUTLINED_FUNCTION_23();
  v39 = v38;
  v41 = *(v40 + 64);
  v42 = OUTLINED_FUNCTION_2();
  (*(v39 + 16))(v42, v37, v36);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 1672, *(v0 + 1696));
  v43 = *v33;
  v44 = *v42;
  *(v0 + 416) = v5;
  *(v0 + 424) = &off_2878CFE90;
  *(v0 + 392) = v43;
  *(v0 + 1416) = v10;
  *(v0 + 1424) = &off_2878D0D48;
  *(v0 + 1392) = v44;
  *(v0 + 936) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 944) = off_2878D1228;
  sub_267BCE788(v80);
  if (![v80 outgoingMessageType])
  {
    v45 = *(v0 + 2208);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95D8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v48);
      _os_log_impl(&dword_267B93000, v46, v47, "#SendMessageFlow outgoingMessageType is unknown, defaulting to text", off_2878D1228, 2u);
      OUTLINED_FUNCTION_26();
    }

    v49 = *(v0 + 2216);

    *(v0 + 1776) = MEMORY[0x277D83B88];
    *(v0 + 1752) = 1;
    sub_267ECE290();
    sub_267B9FED8(v0 + 1752, &qword_28022AEF0, &qword_267EFCDE0);
  }

  if (*(*(v0 + 2184) + 16) != 5)
  {
    v50 = *(v0 + 2208);
    v51 = sub_267EF89F8();
    v52 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v52))
    {
      v53 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v53);
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v54, v55, "#SendMessageFlow non-shim intent request, marking as app selected by user");
      OUTLINED_FUNCTION_26();
    }

    v56 = *(v0 + 2184);

    *(v56 + 96) = 1;
  }

  v57 = *(v0 + 2216);
  v58 = *(v0 + 1504);
  __swift_project_boxed_opaque_existential_0((v0 + 1472), *(v0 + 1496));
  v59 = *(v58 + 24);
  v60 = v57;
  v61 = OUTLINED_FUNCTION_26_0();
  v59(v61);
  v62 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_0((v0 + 352), *(v0 + 376));
  OUTLINED_FUNCTION_26_0();
  sub_267EF45B8();
  v63 = *(v0 + 1464);
  __swift_project_boxed_opaque_existential_0((v0 + 1432), *(v0 + 1456));
  OUTLINED_FUNCTION_26_0();
  sub_267EF42B8();
  if (v64)
  {
    v65 = sub_267EF8FF8();
  }

  else
  {
    v65 = 0;
  }

  v66 = *(v0 + 2216);
  v67 = *(v0 + 2184);
  v68 = *(v0 + 2136);
  v69 = *(v0 + 2128);
  v70 = *(v0 + 2120);
  v71 = *(v0 + 2024);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  [v66 _setOriginatingDeviceIdsIdentifier_];

  v72 = v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_state;
  *v72 = v84;
  *(v72 + 8) = v66;
  *(v72 + 16) = v67;
  *(v72 + 40) = 1;
  type metadata accessor for SendMessageFlow.State(0);
  swift_storeEnumTagMultiPayload();
  sub_267B9A5E8((v0 + 392), v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_siriKitFlowFactory);
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_sendMessageCATs) = v83;
  *(v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_labelCATs) = v82;
  sub_267B9A5E8((v0 + 912), v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_featureFlags);
  sub_267B9A5E8((v0 + 1392), v28 + OBJC_IVAR____TtC16SiriMessagesFlow15SendMessageFlow_shareSheetProvider);
  sub_267B9A5E8((v0 + 1472), v28 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1632));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1592));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1552));

  __swift_destroy_boxed_opaque_existential_0((v0 + 1512));

  *(v0 + 1984) = v28;
  OUTLINED_FUNCTION_40_18();
  sub_267BC41E0(v73, v74);
  sub_267EF3FF8();

  v75 = *(v69 + 8);
  v76 = OUTLINED_FUNCTION_66();
  v77(v76);
  sub_267B9FED8(v0 + 1712, &unk_28022BBF0, &unk_267F01C60);

  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();

  return v78();
}

uint64_t sub_267E1A440()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2240);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E1A524()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2248);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E1A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  sub_267B9FED8(v12 + 1232, &qword_280229938, &unk_267EFEB90);
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267E1A6CC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2256);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E1A7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();

  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_267E1A85C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2264);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E1A940()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 2272);
  v3 = *v0;
  OUTLINED_FUNCTION_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_267E1AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_28_1();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_53();
  a18 = v20;
  v23 = v20[279];
  v24 = v20[276];
  __swift_destroy_boxed_opaque_existential_0(v20 + 169);
  __swift_destroy_boxed_opaque_existential_0(v20 + 164);
  v25 = v23;
  v26 = sub_267EF89F8();
  v27 = sub_267EF95E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[279];
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_69_11();
    *v23 = 136315138;
    swift_getErrorValue();
    v29 = v20[230];
    v30 = v20[231];
    v31 = v20[232];
    v32 = sub_267EF9F68();
    v34 = sub_267BA33E8(v32, v33, &a9);

    *(v23 + 1) = v34;
    OUTLINED_FUNCTION_17_3(&dword_267B93000, v35, v36, "#Gatekeeper Failed to populate audio message data: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v37 = v20[279];
  v38 = v20[277];
  v39 = v20[273];
  v40 = v20[267];
  v41 = v20[266];
  v42 = v20[265];
  v43 = v20[253];
  sub_267EF3FB8();

  (*(v41 + 8))(v40, v42);
  sub_267B9FED8((v20 + 214), &unk_28022BBF0, &unk_267F01C60);
  __swift_destroy_boxed_opaque_existential_0(v20 + 54);
  OUTLINED_FUNCTION_1_69();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_40();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
}

uint64_t sub_267E1ABF8()
{
  OUTLINED_FUNCTION_62();
  if ([*(v0 + 432) code] != 3 || (v1 = sub_267C86CD0(*(v0 + 432))) == 0)
  {
    v14 = *(v0 + 408);
    v15 = *(v0 + 432);
    v16 = sub_267EF89F8();
    v17 = sub_267EF95E8();

    v18 = os_log_type_enabled(v16, v17);
    v4 = *(v0 + 432);
    if (!v18)
    {
      v3 = 0;
      goto LABEL_10;
    }

    v19 = OUTLINED_FUNCTION_48();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v4;
    *v20 = v4;
    v7 = v4;
    _os_log_impl(&dword_267B93000, v16, v17, "Gatekeeper# new message search failed: %@", v19, 0xCu);
    sub_267B9FED8(v20, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    v3 = 0;
    v4 = v16;
    goto LABEL_7;
  }

  v2 = *(v0 + 408);
  v3 = sub_267BAF0DC(v1);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95C8();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  v7 = *(v0 + 432);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_48();
    *v8 = 134349056;
    *(v8 + 4) = v3;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
LABEL_7:
    OUTLINED_FUNCTION_29_1();
  }

  v16 = v7;
LABEL_10:

  v21 = *(v0 + 360);
  if ((*(v21 + 120) & 1) != 0 || v3 >= 1)
  {
    v22 = 2;
  }

  else
  {
    type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_89_1();
    v3 = sub_267BC963C(2);
    OUTLINED_FUNCTION_53_17();
    v21 = *(v0 + 360);
    v22 = 1;
  }

  v23 = *(v0 + 416);
  v24 = *(v0 + 352);
  *(v0 + 128) = v3;
  *(v0 + 176) = v22;
  OUTLINED_FUNCTION_66_3();
  sub_267BE9CA0(v0 + 128, v21 + 56);
  swift_endAccess();
  OUTLINED_FUNCTION_101_8();

  v26 = *(v0 + 392);
  v25 = *(v0 + 400);
  v27 = *(v0 + 368);

  OUTLINED_FUNCTION_17();

  return v28();
}

uint64_t sub_267E1AE50()
{
  OUTLINED_FUNCTION_12();
  v1[29] = v2;
  v1[30] = v0;
  v1[28] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C630, &qword_267F0B0B0);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  v1[31] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF3DE8();
  v1[32] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[33] = v8;
  v10 = *(v9 + 64);
  v1[34] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E1AF24()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v19 = *(v0 + 224);
  v5 = *(v4 + 168);
  v18 = v4;
  sub_267B9B050(v4 + 16, v0 + 16);
  v6 = type metadata accessor for CommonTemplateProvider();
  v7 = OUTLINED_FUNCTION_49();
  v8 = type metadata accessor for TCCTemplateProvider();
  v9 = OUTLINED_FUNCTION_49();

  sub_267EF3DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C638, &qword_267F0B0B8);
  v10 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v0 + 80) = v6;
  *(v0 + 88) = &off_2878D2530;
  *(v0 + 120) = v8;
  *(v0 + 128) = &off_2878D0E48;
  *(v0 + 96) = v9;
  *(v0 + 160) = v3;
  *(v0 + 168) = &off_2878D0D80;
  __swift_allocate_boxed_opaque_existential_0((v0 + 136));
  v11 = *(v2 + 16);
  OUTLINED_FUNCTION_74();
  v12();
  *(v0 + 200) = &type metadata for MessagesFeatureFlagsImpl;
  *(v0 + 208) = off_2878D1228;
  (*(v2 + 8))(v1, v3);
  *(v10 + 224) = 0;
  *(v10 + 56) = v5;
  sub_267B9A5E8((v0 + 56), v10 + 64);
  sub_267B9A5E8((v0 + 96), v10 + 104);
  sub_267B9A5E8((v0 + 136), v10 + 144);
  sub_267B9A5E8((v0 + 176), v10 + 184);
  sub_267B9A5E8((v0 + 16), v10 + 16);
  *(v0 + 216) = v10;
  sub_267BA9F38(0, &qword_28022C640, 0x277CD3D48);
  sub_267BC1E20(&qword_28022C648, &qword_28022C638, &qword_267F0B0B8);
  v13 = sub_267EF35C8();
  sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
  sub_267EF36C8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C650, &qword_267F0B0C0);
  OUTLINED_FUNCTION_27_4(v14);
  swift_allocObject();
  sub_267EF36D8();
  v15 = *(v18 + 112);
  v13();

  sub_267EF3FD8();

  OUTLINED_FUNCTION_17();

  return v16();
}

uint64_t sub_267E1B234(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_267EF44F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C658, &unk_267F0B0C8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v49 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  v17 = __swift_project_value_buffer(v16, qword_280240FB0);
  v18 = *(v10 + 16);
  v50 = a1;
  v48 = v18;
  v18(v15, a1, v9);
  v46 = v17;
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = v3;
    v22 = v21;
    v41 = swift_slowAlloc();
    *&v51[0] = v41;
    *v22 = 136315138;
    sub_267BC1E20(&qword_28022C660, &qword_28022C658, &unk_267F0B0C8);
    v23 = sub_267EF9E58();
    v42 = v4;
    v25 = v24;
    v26 = *(v10 + 8);
    v26(v15, v9);
    v27 = sub_267BA33E8(v23, v25, v51);
    v4 = v42;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_267B93000, v19, v20, "Gatekeeper# Returned from TCC flow with %s", v22, 0xCu);
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x26D60A7B0](v28, -1, -1);
    v29 = v22;
    v3 = v43;
    MEMORY[0x26D60A7B0](v29, -1, -1);
  }

  else
  {

    v26 = *(v10 + 8);
    v26(v15, v9);
  }

  v30 = v49;
  v48(v49, v50, v9);
  if ((*(v10 + 88))(v30, v9) == *MEMORY[0x277D5BC38])
  {
    (*(v10 + 96))(v30, v9);
    v31 = v44;
    (*(v4 + 32))(v44, v30, v3);
    v32 = v45;
    (*(v4 + 104))(v45, *MEMORY[0x277D5BED8], v3);
    v33 = sub_267EF44E8();
    v34 = *(v4 + 8);
    v34(v32, v3);
    v34(v31, v3);
    if (v33)
    {
      memset(v51, 0, sizeof(v51));
      goto LABEL_13;
    }
  }

  else
  {
    v26(v30, v9);
  }

  v35 = sub_267EF89F8();
  v36 = sub_267EF95C8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_267B93000, v35, v36, "Gatekeeper# TCC was not confirmed, bye", v37, 2u);
    MEMORY[0x26D60A7B0](v37, -1, -1);
  }

  *&v51[0] = 4;
  memset(v51 + 8, 0, 40);
LABEL_13:
  v52 = 5;
  v38 = v47;
  swift_beginAccess();
  sub_267BE9CA0(v51, v38 + 56);
  return swift_endAccess();
}

uint64_t sub_267E1B770()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 272) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E1B86C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[28];
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
  sub_267EF3FB8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267E1BBA4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[17] = v1;
  v2[18] = v4;
  v2[19] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 352);
  *v7 = *v1;
  *(v8 + 360) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 344);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E1BCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[18];
  v12[52] = v14;
  v15 = qword_280228818;
  v16 = v14;
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = sub_267EF8A08();
  v12[53] = __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95C8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    a10 = OUTLINED_FUNCTION_55_0();
    *v13 = 136446210;
    v20 = [v18 patternId];
    sub_267EF9028();

    v21 = OUTLINED_FUNCTION_61_4();
    sub_267BA33E8(v21, v22, v23);
    OUTLINED_FUNCTION_102_0();
    *(v13 + 4) = v20;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_60_12();
  OUTLINED_FUNCTION_10_39();
  sub_267EF47F8();
  sub_267EF4858();
  OUTLINED_FUNCTION_80_10();
  sub_267EF4158();
  OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_267EF4818();
  v33 = sub_267EF4198();
  OUTLINED_FUNCTION_27_4(v33);
  swift_allocObject();
  v12[54] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v46 = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[55] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_3_65(v35);
  OUTLINED_FUNCTION_46();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, v46, a10, a11, a12);
}

uint64_t sub_267E1BE94()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_57_15();
  v1(v2);
  v3 = OUTLINED_FUNCTION_66();
  v1(v3);
  v4 = *(v0 + 360);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E1BF44()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_57_15();
  v1(v2);
  v3 = OUTLINED_FUNCTION_66();
  v1(v3);
  v4 = *(v0 + 384);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E1BFF4()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_20_14();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v2[23] = v1;
  v2[24] = v4;
  v2[25] = v0;
  OUTLINED_FUNCTION_22_2();
  v6 = *(v5 + 400);
  *v7 = *v1;
  *(v8 + 408) = v0;

  OUTLINED_FUNCTION_22_2();
  v10 = *(v9 + 392);

  OUTLINED_FUNCTION_26_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267E1C110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_53();
  v14 = v12[24];
  v12[52] = v14;
  v15 = qword_280228818;
  v16 = v14;
  if (v15 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = sub_267EF8A08();
  v12[53] = __swift_project_value_buffer(v17, qword_280240FB0);
  v18 = v16;
  v19 = sub_267EF89F8();
  sub_267EF95C8();

  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    a10 = OUTLINED_FUNCTION_55_0();
    *v13 = 136446210;
    v20 = [v18 patternId];
    sub_267EF9028();

    v21 = OUTLINED_FUNCTION_61_4();
    sub_267BA33E8(v21, v22, v23);
    OUTLINED_FUNCTION_102_0();
    *(v13 + 4) = v20;
    OUTLINED_FUNCTION_14_2();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  OUTLINED_FUNCTION_60_12();
  OUTLINED_FUNCTION_10_39();
  sub_267EF47F8();
  sub_267EF4858();
  OUTLINED_FUNCTION_80_10();
  sub_267EF4158();
  OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_9();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_267EF4818();
  v33 = sub_267EF4198();
  OUTLINED_FUNCTION_27_4(v33);
  swift_allocObject();
  v12[54] = sub_267EF4188();
  OUTLINED_FUNCTION_10(MEMORY[0x277D5BD48]);
  v46 = v34;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v12[55] = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_3_65(v35);
  OUTLINED_FUNCTION_46();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, v46, a10, a11, a12);
}

uint64_t sub_267E1C2E4()
{
  OUTLINED_FUNCTION_62();
  v2 = OUTLINED_FUNCTION_57_15();
  v1(v2);
  v3 = OUTLINED_FUNCTION_66();
  v1(v3);
  v4 = *(v0 + 408);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_267E1C394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 328);
  v12 = *(v10 + 336);
  v13 = *(v10 + 312);
  v14 = *(v10 + 320);
  v16 = *(v10 + 272);
  v15 = *(v10 + 280);
  v17 = *(v10 + 264);

  v18 = *(v16 + 8);
  v19 = OUTLINED_FUNCTION_44_0();
  v20(v19);
  v21 = *(v14 + 8);
  v22 = OUTLINED_FUNCTION_26_0();
  v21(v22);
  v23 = OUTLINED_FUNCTION_108();
  v21(v23);
  v24 = *(v10 + 448);
  OUTLINED_FUNCTION_49_19();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_36_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_267E1C46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_267EF8228();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_267EF8168();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E1C5D4, 0, 0);
}

uint64_t sub_267E1C5D4()
{
  v0[7] = v0[10];
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_267EF9E58();
  sub_267EF8158();
  OUTLINED_FUNCTION_112_7();
  if (v2)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    v24 = v0[16];
  }

  else
  {
    v4 = v0[21];
    v47 = v0[20];
    v5 = v0[16];
    v7 = v0[14];
    v6 = v0[15];
    v8 = v0[11];
    v9 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    sub_267EF79B8();
    OUTLINED_FUNCTION_9();
    v46 = v10;
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    v45 = type metadata accessor for GatekeeperReadSendCallParameters(0);
    sub_267BD3DDC(v4, v9 + v45[7]);
    (*(v6 + 104))(v5, *MEMORY[0x277D5D448], v7);
    v15 = v8[5];
    v14 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v15);
    OUTLINED_FUNCTION_14_4();
    v16(v15, v14);
    v17 = sub_267BEA714(v5, v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v18 = *(v6 + 8);
    v19 = OUTLINED_FUNCTION_61_4();
    v20(v19);
    v0[8] = v17;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v27 = v0[20];
    v43 = v0[21];
    v44 = v0[19];
    v48 = v0[16];
    v28 = v0[12];
    v42 = v0[13];
    v29 = v0[9];

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v46);
    sub_267BD3DDC(v27, v29 + v45[8]);
    v33 = v45[5];
    sub_267B9FED8(v29 + v33, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_5_0(v46);
    v35 = *(v34 + 16);
    v35(v29 + v33, v28, v46);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v46);
    sub_267B9FED8(v29, &unk_28022AE30, &qword_267EFC0B0);
    v35(v29, v42, v46);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v46);
  }

  OUTLINED_FUNCTION_17();

  return v25();
}

uint64_t sub_267E1C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_267EF8228();
  v4[13] = v5;
  v6 = *(v5 - 8);
  v4[14] = v6;
  v7 = *(v6 + 64) + 15;
  v4[15] = swift_task_alloc();
  v8 = sub_267EF8168();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v10 = *(v9 + 64) + 15;
  v4[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267E1CA6C, 0, 0);
}

void sub_267E1CA6C()
{
  v0[7] = v0[10];
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  sub_267EF9E58();
  sub_267EF8158();
  OUTLINED_FUNCTION_112_7();
  if (v2)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[18];
    v24 = v0[15];
  }

  else
  {
    v4 = v0[20];
    v43 = v0[19];
    v5 = v0[15];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_267EF79B8();
    OUTLINED_FUNCTION_9();
    v42 = v10;
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    Parameters = type metadata accessor for GatekeeperSendReadParameters(0);
    sub_267BD3DDC(v4, v9 + Parameters[7]);
    (*(v6 + 104))(v5, *MEMORY[0x277D5D448], v7);
    v15 = v8[5];
    v14 = v8[6];
    __swift_project_boxed_opaque_existential_0(v8 + 2, v15);
    OUTLINED_FUNCTION_14_4();
    v16(v15, v14);
    v17 = sub_267BEA714(v5, v0 + 2);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v18 = *(v6 + 8);
    v19 = OUTLINED_FUNCTION_61_4();
    v20(v19);
    v0[8] = v17;
    sub_267BA9F38(0, &qword_280228FC0, 0x277D47438);
    sub_267EF8348();
    v28 = v0[19];
    v27 = v0[20];
    v29 = v0[18];
    v30 = v0[15];
    v31 = v0[12];
    v32 = v0[9];

    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v42);
    sub_267BD3DDC(v28, v32 + Parameters[8]);
    v36 = Parameters[5];
    sub_267B9FED8(v32 + v36, &unk_28022AE30, &qword_267EFC0B0);
    OUTLINED_FUNCTION_5_0(v42);
    (*(v37 + 16))(v32 + v36, v31, v42);
    OUTLINED_FUNCTION_9();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v42);
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267E1CD48()
{
  OUTLINED_FUNCTION_12();
  v1[102] = v0;
  v1[101] = v2;
  v1[100] = v3;
  v1[99] = v4;
  v5 = sub_267EF8428();
  v1[103] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[104] = v6;
  v8 = *(v7 + 64);
  v1[105] = OUTLINED_FUNCTION_2();
  v9 = sub_267EF4BE8();
  v1[106] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[107] = v10;
  v12 = *(v11 + 64);
  v1[108] = OUTLINED_FUNCTION_50();
  v1[109] = swift_task_alloc();
  v13 = sub_267EF6718();
  v1[110] = v13;
  OUTLINED_FUNCTION_30_0(v13);
  v1[111] = v14;
  v16 = *(v15 + 64);
  v1[112] = OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_267E1CE9C()
{
  v90 = v0;
  v1 = *(v0 + 816);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229BF0, &qword_267F01650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  *(inited + 32) = 0x6449707061;
  *(inited + 40) = 0xE500000000000000;
  v3 = *(v1 + 112);
  result = sub_267EF7C18();
  if (!v5)
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = *(v0 + 808);
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = result;
  *(inited + 56) = v5;
  OUTLINED_FUNCTION_61_0();
  v8 = sub_267EF8F28();
  v9 = MEMORY[0x277CC9318];
  if (v6)
  {
    v10 = *(v0 + 808);
    v11 = [v10 typeName];
    v12 = sub_267EF9028();
    v14 = v13;

    *(v0 + 592) = v7;
    *(v0 + 568) = v12;
    *(v0 + 576) = v14;
    sub_267BA7F4C((v0 + 568), (v0 + 600));
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_110_8();
    sub_267E8710C((v0 + 600), 0x7954746E65746E69, 0xEE00656D614E6570);
    v8 = v89;
    v15 = sub_267DEC238([v10 backingStore]);
    if (v16 >> 60 == 15)
    {
      v17 = sub_267BA9948();
      if (v18)
      {
        v19 = v17;
        swift_isUniquelyReferenced_nonNull_native();
        v20 = v89[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
        OUTLINED_FUNCTION_113_7();
        v8 = v89;
        v21 = *(v89[6] + 16 * v19 + 8);

        sub_267BA7F4C((v89[7] + 32 * v19), (v0 + 664));
        sub_267EF9C88();
      }

      else
      {
        *(v0 + 664) = 0u;
        *(v0 + 680) = 0u;
      }

      sub_267B9FED8(v0 + 664, &qword_28022AEF0, &qword_267EFCDE0);
    }

    else
    {
      *(v0 + 656) = v9;
      *(v0 + 632) = v15;
      *(v0 + 640) = v16;
      sub_267BA7F4C((v0 + 632), (v0 + 696));
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_110_8();
      sub_267E8710C((v0 + 696), 0x6144746E65746E69, 0xEA00000000006174);

      v8 = v89;
    }
  }

  sub_267BF6CEC(*(v0 + 800), v0 + 208, &qword_280229938, &unk_267EFEB90);
  if (*(v0 + 232))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C628, &qword_267F0B070);
    type metadata accessor for PhoneCallNLv3Intent();
    if (swift_dynamicCast())
    {
      v22 = *(v0 + 888);
      (*(v22 + 16))(*(v0 + 896), *(v0 + 784) + OBJC_IVAR____TtC16SiriMessagesFlow19PhoneCallNLv3Intent_intent, *(v0 + 880));
      v23 = sub_267EF66F8();
      v25 = v24;
      v26 = *(v22 + 8);
      v27 = OUTLINED_FUNCTION_108();
      v28(v27);
      *(v0 + 528) = v9;
      *(v0 + 504) = v23;
      *(v0 + 512) = v25;
      sub_267BA7F4C((v0 + 504), (v0 + 536));
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_110_8();
      sub_267E8710C((v0 + 536), 0x746E65746E496C6ELL, 0xE800000000000000);
LABEL_17:

      goto LABEL_28;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 208, &qword_280229938, &unk_267EFEB90);
  }

  sub_267BF6CEC(*(v0 + 800), v0 + 248, &qword_280229938, &unk_267EFEB90);
  if (!*(v0 + 272))
  {
    sub_267B9FED8(v0 + 248, &qword_280229938, &unk_267EFEB90);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C628, &qword_267F0B070);
  type metadata accessor for PhoneCallNLv4Intent();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v30 = *(v0 + 800);
    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    sub_267BF6CEC(v30, v0 + 288, &qword_280229938, &unk_267EFEB90);
    v32 = sub_267EF89F8();
    v33 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_5_2(v33))
    {
      v34 = OUTLINED_FUNCTION_48();
      v89 = OUTLINED_FUNCTION_52();
      *v34 = 136315138;
      sub_267BF6CEC(v0 + 288, v0 + 368, &qword_280229938, &unk_267EFEB90);
      v35 = OUTLINED_FUNCTION_68_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
      v37 = sub_267EF9098();
      v39 = v38;
      sub_267B9FED8(v0 + 288, &qword_280229938, &unk_267EFEB90);
      v40 = sub_267BA33E8(v37, v39, &v89);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_267B93000, v32, v33, "#Gatekeeper Not supported NL intent: %s", v34, 0xCu);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_26();
    }

    else
    {

      sub_267B9FED8(v0 + 288, &qword_280229938, &unk_267EFEB90);
    }

    goto LABEL_28;
  }

  v29 = *(*(v0 + 776) + 16);
  if (v29)
  {
    *(v0 + 432) = swift_getObjectType();
    *(v0 + 408) = v29;
    sub_267BA7F4C((v0 + 408), (v0 + 472));
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_110_8();
    sub_267E8710C((v0 + 472), 0x6C61694472657375, 0xED0000746341676FLL);
    goto LABEL_17;
  }

  *(v0 + 408) = 0u;
  *(v0 + 424) = 0u;
  sub_267B9FED8(v0 + 408, &qword_28022AEF0, &qword_267EFCDE0);
  v41 = sub_267BA9948();
  if (v42)
  {
    v43 = v41;
    swift_isUniquelyReferenced_nonNull_native();
    v89 = v8;
    v44 = v8[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB98, &qword_267F09470);
    OUTLINED_FUNCTION_113_7();
    v45 = *(v89[6] + 16 * v43 + 8);

    sub_267BA7F4C((v89[7] + 32 * v43), (v0 + 440));
    sub_267EF9C88();
  }

  else
  {
    *(v0 + 440) = 0u;
    *(v0 + 456) = 0u;
  }

  sub_267B9FED8(v0 + 440, &qword_28022AEF0, &qword_267EFCDE0);

LABEL_28:
  v46 = *(v0 + 872);
  v47 = *(v0 + 832);
  (*(v47 + 104))(*(v0 + 840), *MEMORY[0x277D5D710], *(v0 + 824));
  sub_267EF8418();
  v48 = *(v47 + 8);
  v49 = OUTLINED_FUNCTION_65_5();
  v50(v49);

  sub_267EF4BB8();
  if (!sub_267EF3808())
  {

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v57 = *(v0 + 872);
    v58 = *(v0 + 864);
    v59 = *(v0 + 856);
    v60 = *(v0 + 848);
    v61 = sub_267EF8A08();
    v62 = __swift_project_value_buffer(v61, qword_280240FB0);
    v63 = *(v59 + 16);
    v64 = OUTLINED_FUNCTION_61_0();
    v65(v64);
    v66 = sub_267EF89F8();
    v67 = sub_267EF95E8();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 864);
    v70 = *(v0 + 856);
    v71 = *(v0 + 848);
    if (v68)
    {
      OUTLINED_FUNCTION_48();
      v72 = OUTLINED_FUNCTION_55_0();
      v89 = v72;
      *v62 = 136315138;
      v88 = sub_267EF4BC8();
      v74 = v73;
      v56 = *(v70 + 8);
      v75 = OUTLINED_FUNCTION_100_0();
      v56(v75);
      v76 = sub_267BA33E8(v88, v74, &v89);

      *(v62 + 4) = v76;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v77, v78, "Gatekeeper# Phone flow not found for direct invocation %s");
      __swift_destroy_boxed_opaque_existential_0(v72);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {

      v56 = *(v70 + 8);
      v79 = OUTLINED_FUNCTION_100_0();
      v56(v79);
    }

    v80 = *(v0 + 816);
    v81 = *(v0 + 792);
    *(v0 + 96) = 3;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    *(v0 + 144) = 5;
    OUTLINED_FUNCTION_66_3();
    sub_267BE9CA0(v0 + 96, v80 + 56);
    swift_endAccess();
    OUTLINED_FUNCTION_101_8();
    goto LABEL_37;
  }

  sub_267B9B050(*(v0 + 816) + 352, v0 + 328);
  v51 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_0((v0 + 328), *(v0 + 352));
  sub_267BA9F38(0, &qword_28022C620, 0x277CD41A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = sub_267BB41B0(ObjCClassFromMetadata);
  if (!v53)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v87 = *(v0 + 856);
  v54 = *(v0 + 816);
  v55 = *(v0 + 792);

  sub_267EF3B18();

  LOBYTE(v89) = 0;
  sub_267EF3B08();
  OUTLINED_FUNCTION_74();
  sub_267EF3848();

  __swift_destroy_boxed_opaque_existential_0((v0 + 328));
  *(v0 + 152) = 4;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 200) = 5;
  OUTLINED_FUNCTION_66_3();
  sub_267BE9CA0(v0 + 152, v54 + 56);
  swift_endAccess();
  sub_267EF4008();

  v56 = *(v87 + 8);
LABEL_37:
  v82 = *(v0 + 896);
  v83 = *(v0 + 864);
  v84 = *(v0 + 840);
  v85 = *(v0 + 856) + 8;
  (v56)(*(v0 + 872), *(v0 + 848));

  OUTLINED_FUNCTION_17();

  return v86();
}

uint64_t sub_267E1D940(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 112);

  return sub_267EF3AD8();
}

uint64_t sub_267E1D96C()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4CC8();
  v1[31] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[32] = v7;
  v9 = *(v8 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF4228();
  v1[34] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[35] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_2();
  v1[36] = v14;
  v15 = *(MEMORY[0x277D5BDA8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[37] = v16;
  *v16 = v17;
  v16[1] = sub_267E1DAC8;

  return MEMORY[0x2821BB3B0](v14);
}

uint64_t sub_267E1DAC8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E1DBC4()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  OUTLINED_FUNCTION_1_8();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_1_8();
  v9 = OUTLINED_FUNCTION_4_1();
  v10(v9);
  v11 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v11);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  sub_267EF4158();
  v12 = OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_79_5(v12, v13, v14, v15);
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_62_10();
  sub_267EF3F48();
  sub_267B9FED8(v11, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v5, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v16 = *(v6 + 40);
  v17 = *(v6 + 48);
  OUTLINED_FUNCTION_117_8();
  v19 = *(v18 + 40);
  v20 = OUTLINED_FUNCTION_10_3();
  v21(v20);
  v22 = v0[20];
  v23 = v0[21];
  OUTLINED_FUNCTION_74_10(v0 + 17);
  v24 = MEMORY[0x277D5C1D8];
  v0[25] = v4;
  v0[26] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  (*(v3 + 16))(boxed_opaque_existential_0, v2, v4);
  v26 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v27;
  *v27 = v28;
  v27[1] = sub_267E1DD78;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821BB5D0](v29, v30, v31);
}

uint64_t sub_267E1DD78()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E1E144()
{
  OUTLINED_FUNCTION_12();
  v1[28] = v2;
  v1[29] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v4 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4CC8();
  v1[31] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[32] = v7;
  v9 = *(v8 + 64);
  v1[33] = OUTLINED_FUNCTION_2();
  v10 = sub_267EF4228();
  v1[34] = v10;
  OUTLINED_FUNCTION_30_0(v10);
  v1[35] = v11;
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_2();
  v1[36] = v14;
  v15 = *(MEMORY[0x277D5BCC8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v1[37] = v16;
  *v16 = v17;
  v16[1] = sub_267E1E2A0;

  return MEMORY[0x2821BAEC8](v14);
}

uint64_t sub_267E1E2A0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E1E39C()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_53();
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  OUTLINED_FUNCTION_1_8();
  v7 = OUTLINED_FUNCTION_4_1();
  v8(v7);
  OUTLINED_FUNCTION_1_8();
  v9 = OUTLINED_FUNCTION_4_1();
  v10(v9);
  v11 = v0[10];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v11);
  OUTLINED_FUNCTION_4_1();
  sub_267EF3BC8();
  sub_267EF4158();
  v12 = OUTLINED_FUNCTION_94_9();
  OUTLINED_FUNCTION_79_5(v12, v13, v14, v15);
  OUTLINED_FUNCTION_84_10();
  OUTLINED_FUNCTION_62_10();
  sub_267EF3F98();
  sub_267B9FED8(v11, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FED8(v5, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v16 = *(v6 + 40);
  v17 = *(v6 + 48);
  OUTLINED_FUNCTION_117_8();
  v19 = *(v18 + 40);
  v20 = OUTLINED_FUNCTION_10_3();
  v21(v20);
  v22 = v0[20];
  v23 = v0[21];
  OUTLINED_FUNCTION_74_10(v0 + 17);
  v24 = MEMORY[0x277D5C1D8];
  v0[25] = v4;
  v0[26] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
  (*(v3 + 16))(boxed_opaque_existential_0, v2, v4);
  v26 = *(MEMORY[0x277D5BF40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v27;
  *v27 = v28;
  v27[1] = sub_267E1E550;
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_40();

  return MEMORY[0x2821BB5D0](v29, v30, v31);
}

uint64_t sub_267E1E550()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 176));
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267E1E79C()
{
  OUTLINED_FUNCTION_56();
  v2 = OUTLINED_FUNCTION_51_15();
  v3(v2);
  v4 = *(v0 + 8);
  v5 = OUTLINED_FUNCTION_66();
  v6(v5);
  __swift_destroy_boxed_opaque_existential_0((v1 + 136));
  OUTLINED_FUNCTION_31_22();

  OUTLINED_FUNCTION_17();

  return v7();
}

uint64_t sub_267E1E9BC(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_72();
  swift_beginAccess();
  sub_267BB5E24(v2 + 56, &v25);
  if (v28 == 5)
  {
    v4 = vorrq_s8(v26, v27);
    if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *(&v25 + 1) | v25))
    {
      sub_267B9B9EC(&v25);
LABEL_17:
      v18 = 1;
      return v18 & 1;
    }
  }

  sub_267B9B9EC(&v25);
  sub_267BB5E24(v2 + 56, &v25);
  if (v28 != 2)
  {
    sub_267B9B9EC(&v25);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v9, qword_280240FB0);
    v10 = sub_267EF89F8();
    v11 = sub_267EF95E8();
    if (!OUTLINED_FUNCTION_36(v11))
    {
      goto LABEL_15;
    }

    v12 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v12);
    goto LABEL_14;
  }

  sub_267EBC978(a1, &v25);
  if (v26.i64[1])
  {
    sub_267B9A5E8(&v25, &v23);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v5 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v5, qword_280240FB0);
    v6 = sub_267EF89F8();
    v7 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_5_2(v7))
    {
      v8 = OUTLINED_FUNCTION_32();
      *v8 = 0;
      _os_log_impl(&dword_267B93000, v6, v7, "Gatekeeper# User asked to call", v8, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    sub_267B9A5E8(&v23, &v25);
    v27.i64[1] = 0;
    v28 = 3;
    OUTLINED_FUNCTION_66_3();
    sub_267BE9CA0(&v25, v2 + 56);
    swift_endAccess();
    goto LABEL_17;
  }

  sub_267B9FED8(&v25, &qword_280229938, &unk_267EFEB90);
  sub_267E57DFC(a1, &v23);
  if (v24)
  {
    sub_267B9A5E8(&v23, &v25);
    v18 = sub_267E1ECA8(&v25);
    __swift_destroy_boxed_opaque_existential_0(&v25);
    return v18 & 1;
  }

  sub_267B9FED8(&v23, &unk_28022BBF0, &unk_267F01C60);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v20, qword_280240FB0);
  v10 = sub_267EF89F8();
  v21 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_36(v21))
  {
    v22 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v22);
LABEL_14:
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_26();
  }

LABEL_15:

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_267E1ECA8(void *a1)
{
  v2 = v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *(v4 + 216);
  v6 = OUTLINED_FUNCTION_4_39();
  if (v7(v6))
  {
    v8 = 1;
    v33 = 1;
    OUTLINED_FUNCTION_93_8();
LABEL_8:
    OUTLINED_FUNCTION_66_3();
    sub_267BE9CA0(&v33, v2 + 56);
    swift_endAccess();
    return v8;
  }

  OUTLINED_FUNCTION_95_11();
  v10 = *(v9 + 208);
  v11 = OUTLINED_FUNCTION_4_39();
  if (v12(v11))
  {
    OUTLINED_FUNCTION_95_11();
    v14 = *(v13 + 144);
    v15 = OUTLINED_FUNCTION_4_39();
    v17 = v16(v15);
    type metadata accessor for SendMessageState();
    OUTLINED_FUNCTION_89_1();
    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    v33 = sub_267BC963C(v18);
    sub_267B9B050(a1, v34);
    v8 = 1;
    v34[40] = 1;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_95_11();
  v21 = *(v20 + 96);
  v22 = OUTLINED_FUNCTION_4_39();
  if (v23(v22))
  {
    v33 = 2;
    OUTLINED_FUNCTION_93_8();
    OUTLINED_FUNCTION_66_3();
    sub_267BE9CA0(&v33, v1 + 56);
    swift_endAccess();
    return 1;
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v24 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v24, qword_280240FB0);
    v25 = sub_267EF89F8();
    v26 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_36(v26))
    {
      v27 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v27);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_26();
    }

    return 0;
  }
}

uint64_t sub_267E1EE84()
{
  sub_267B9B9EC((v0 + 7));
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v2 = v0[21];

  v3 = v0[22];

  v4 = v0[23];

  return OUTLINED_FUNCTION_67_11();
}

uint64_t sub_267E1EEF0()
{
  type metadata accessor for CarPlayClarificationFlow();

  return sub_267EF3748();
}

uint64_t sub_267E1EF28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267E1EF64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_267E1EFB4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_267E1EFF4()
{
  OUTLINED_FUNCTION_56();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_60_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_71_5(v5);

  return sub_267E1C908(v7, v8, v2, v3);
}

uint64_t sub_267E1F090()
{
  OUTLINED_FUNCTION_62();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_60_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_71_5(v6);

  return sub_267E1C46C(v8, v9, v2, v4, v3);
}

uint64_t sub_267E1F140()
{
  OUTLINED_FUNCTION_12();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_267BAEBEC;

  return sub_267E19AF4();
}

double sub_267E1F1E0@<D0>(_OWORD *a1@<X8>)
{
  sub_267EF5988();
  if (v3)
  {
    sub_267EF56B8();
    sub_267EF5DF8();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_267E1F24C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_267EF51F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267EF4C48();
  v9 = sub_267EF5488();
  (*(v5 + 8))(v8, v4);
  *(v2 + 16) = v9;
  sub_267CB79F8(&v23);
  if (v24)
  {
    sub_267C71FB8(&v23, v22);
    sub_267EF60E8();
    if (OUTLINED_FUNCTION_1_70())
    {

      sub_267EF5C38();
LABEL_7:

      v10 = sub_267EF4C68();
      OUTLINED_FUNCTION_0_9(v10);
      (*(v11 + 8))(a1);
      *(v2 + 24) = v21;
      __swift_destroy_boxed_opaque_existential_0(v22);
      sub_267C0BFFC(&v23);
      return v2;
    }

    sub_267EF63D8();
    if (OUTLINED_FUNCTION_1_70() || (sub_267EF62B8(), OUTLINED_FUNCTION_1_70()))
    {

      sub_267EF6348();
      goto LABEL_7;
    }

    sub_267EF62A8();
    if (OUTLINED_FUNCTION_1_70())
    {

      sub_267EF54D8();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v12 = sub_267EF8A08();
  __swift_project_value_buffer(v12, qword_280240FB0);
  v13 = sub_267EF89F8();
  v14 = sub_267EF95D8();
  if (os_log_type_enabled(v13, v14))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_1_1(&dword_267B93000, v15, v16, "#PhoneCallNLv4Intent parse is not a phone call intent");
    OUTLINED_FUNCTION_32_0();
  }

  v17 = sub_267EF4C68();
  OUTLINED_FUNCTION_0_9(v17);
  (*(v18 + 8))(a1);
  sub_267C0BFFC(&v23);
  v19 = *(v2 + 16);
  swift_unknownObjectRelease();
  type metadata accessor for PhoneCallNLv4Intent();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_267E1F52C()
{
  if (*(v0 + 24) && (v1 = sub_267EF5E18()) != 0)
  {
    v2 = v1;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  if (sub_267BAF0DC(v2) <= 1)
  {
    if (sub_267BAF0DC(v2))
    {
      sub_267BBD0EC(0, (v2 & 0xC000000000000001) == 0, v2);
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D609870](0, v2);
      }

      else
      {
        v8 = *(v2 + 32);
      }

      sub_267E1F1E0(&v24);
      if (v25)
      {
        sub_267EF5C28();
        if (swift_dynamicCast())
        {
          if (sub_267EAC378())
          {
            if (qword_280228818 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            v9 = sub_267EF8A08();
            __swift_project_value_buffer(v9, qword_280240FB0);
            v10 = sub_267EF89F8();
            v11 = sub_267EF95D8();
            if (os_log_type_enabled(v10, v11))
            {
              *OUTLINED_FUNCTION_32() = 0;
              OUTLINED_FUNCTION_1_1(&dword_267B93000, v12, v13, "#PhoneCallNLv4Intent a single specified recipient with a reference, a valid followup");
              OUTLINED_FUNCTION_32_0();
            }

            return 1;
          }
        }
      }

      else
      {
        sub_267C0BFFC(&v24);
      }

      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v20 = sub_267EF8A08();
      __swift_project_value_buffer(v20, qword_280240FB0);
      v21 = sub_267EF89F8();
      v22 = sub_267EF95D8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_32();
        *v23 = 0;
        _os_log_impl(&dword_267B93000, v21, v22, "#PhoneCallNLv4Intent a single specified recipient with no reference, not a valid followup", v23, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      return 0;
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v14 = sub_267EF8A08();
    __swift_project_value_buffer(v14, qword_280240FB0);
    v15 = sub_267EF89F8();
    v16 = sub_267EF95D8();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_17_0(&dword_267B93000, v17, v18, "#PhoneCallNLv4Intent no recipients specified, a valid followup");
      OUTLINED_FUNCTION_32_0();
    }

    return 1;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);
  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();
  if (os_log_type_enabled(v4, v5))
  {
    *OUTLINED_FUNCTION_32() = 0;
    OUTLINED_FUNCTION_17_0(&dword_267B93000, v6, v7, "#PhoneCallNLv4Intent more than one recipient specified, not a valid followup");
    OUTLINED_FUNCTION_32_0();
  }

  return 0;
}

uint64_t sub_267E1F8A4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_267E1F8CC()
{
  sub_267E1F8A4();

  return swift_deallocClassInstance();
}

uint64_t sub_267E1FB2C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  v5 = OUTLINED_FUNCTION_18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1(&v214 - v8);
  v219 = sub_267EF8228();
  OUTLINED_FUNCTION_23();
  v221 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v15);
  v226 = sub_267EF4BE8();
  OUTLINED_FUNCTION_23();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_3_1(v22);
  v230 = sub_267EF4C08();
  OUTLINED_FUNCTION_23();
  v232 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  v28 = MEMORY[0x28223BE20](v27);
  v228 = &v214 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_45_0();
  v229 = v30;
  v31 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  v32 = OUTLINED_FUNCTION_22(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6();
  v233 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_45_0();
  v235 = v37;
  v38 = sub_267EF4BA8();
  OUTLINED_FUNCTION_23();
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_0_0();
  v46 = v45 - v44;
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v47 = sub_267EF8A08();
  v48 = __swift_project_value_buffer(v47, qword_280240FB0);
  v49 = *(v40 + 16);
  v231 = a1;
  v49(v46, a1, v38);
  v50 = sub_267EF89F8();
  v51 = sub_267EF95C8();
  v52 = os_log_type_enabled(v50, v51);
  v225 = v17;
  if (v52)
  {
    v53 = OUTLINED_FUNCTION_48();
    v216 = OUTLINED_FUNCTION_52();
    v238[0] = v216;
    *v53 = 136315138;
    sub_267E282FC(&qword_28022AF50, MEMORY[0x277D5C118]);
    v54 = sub_267EF9E58();
    v234 = v48;
    v55 = v31;
    v56 = v2;
    v58 = v57;
    v60 = *(v40 + 8);
    v59 = v40 + 8;
    v61 = OUTLINED_FUNCTION_5_29();
    v62(v61);
    v63 = sub_267BA33E8(v54, v58, v238);
    v2 = v56;
    v31 = v55;
    v48 = v234;

    *(v53 + 4) = v63;
    _os_log_impl(&dword_267B93000, v50, v51, "#SendMessageConfirmIntentFlow received input: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v216);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {

    v64 = *(v40 + 8);
    v59 = v40 + 8;
    v65 = OUTLINED_FUNCTION_5_29();
    v66(v65);
  }

  v67 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  swift_beginAccess();
  v68 = v235;
  sub_267E28344(v2 + v67, v235);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_71();
    sub_267E28EE0(v68, v69);

    v70 = sub_267EF89F8();
    v71 = sub_267EF95E8();

    if (!os_log_type_enabled(v70, v71))
    {
LABEL_10:

      return 0;
    }

    OUTLINED_FUNCTION_48();
    v72 = OUTLINED_FUNCTION_64_2();
    v238[0] = v72;
    *v59 = 136315138;
    sub_267E28344(v2 + v67, v233);
    OUTLINED_FUNCTION_44_0();
    v73 = sub_267EF9098();
    v75 = sub_267BA33E8(v73, v74, v238);

    *(v59 + 4) = v75;
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v76, v77, v78, v79, v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    OUTLINED_FUNCTION_32_0();
LABEL_9:
    OUTLINED_FUNCTION_26();
    goto LABEL_10;
  }

  v215 = v67;
  v234 = v48;
  v216 = v31;
  LODWORD(v235) = *v68;
  v83 = v229;
  sub_267EF4B88();
  v84 = v232;
  v85 = *(v232 + 88);
  v86 = v230;
  v87 = v85(v83, v230);
  v88 = *MEMORY[0x277D5C168];
  v91 = *(v84 + 8);
  v89 = (v84 + 8);
  v90 = v91;
  (v91)(v83, v86);
  if (v87 != v88)
  {
    v102 = v228;
    sub_267EF4B88();
    v103 = OUTLINED_FUNCTION_5_29();
    if ((v85)(v103) == *MEMORY[0x277D5C150])
    {
      v104 = *(v232 + 96);
      v105 = OUTLINED_FUNCTION_5_29();
      v106(v105);
      v107 = v225;
      v108 = v227;
      v109 = v226;
      (*(v225 + 32))(v227, v102, v226);
      v110 = v223;
      sub_267B9CC04(v108, v223);
      v111 = type metadata accessor for DirectInvocationUseCases();
      OUTLINED_FUNCTION_5_1(v110, 1, v111);
      if (v112)
      {
        sub_267B9F98C(v110, &unk_28022BBE0, qword_267EFD030);
        v113 = v224;
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v113 = v224;
        if (EnumCaseMultiPayload == 1)
        {
          v131 = v221;
          v132 = v220;
          v133 = v219;
          (*(v221 + 32))(v220, v110, v219);
          v134 = *(v131 + 16);
          v135 = v218;
          OUTLINED_FUNCTION_92_10();
          v137 = v136;
          v136();
          v138 = (*(v131 + 88))(v135, v133);
          v139 = *MEMORY[0x277D5D508];
          v140 = *(v131 + 8);
          v221 = v131 + 8;
          v235 = v140;
          (v140)(v135, v133);
          if (v138 != v139)
          {
            v187 = v217;
            OUTLINED_FUNCTION_92_10();
            v137();
            v188 = sub_267EF89F8();
            v189 = sub_267EF95C8();
            if (os_log_type_enabled(v188, v189))
            {
              OUTLINED_FUNCTION_48();
              v190 = OUTLINED_FUNCTION_64_2();
              v191 = v235;
              v238[0] = v190;
              *v135 = 136446210;
              v192 = sub_267EF8218();
              v193 = v187;
              v194 = v107;
              v196 = v195;
              v191(v193, v133);
              v197 = sub_267BA33E8(v192, v196, v238);

              *(v135 + 4) = v197;
              OUTLINED_FUNCTION_121_0(&dword_267B93000, v198, v199, "#SendMessageConfirmIntentFlow Unsupported button %{public}s -> ignore");
              OUTLINED_FUNCTION_11_42();
              OUTLINED_FUNCTION_26();

              v191(v220, v133);
              v200 = *(v194 + 8);
            }

            else
            {

              v203 = v235;
              (v235)(v187, v133);
              v203(v132, v133);
              v204 = *(v107 + 8);
            }

            v201 = OUTLINED_FUNCTION_49_20();
            v202(v201);
            return 0;
          }

          v141 = v233;
          swift_storeEnumTagMultiPayload();
          v142 = v215;
          OUTLINED_FUNCTION_66_3();
          sub_267E283A8(v141, v2 + v142);
          swift_endAccess();
          v143 = sub_267EF89F8();
          v144 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_36(v144))
          {
            v145 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v145);
            OUTLINED_FUNCTION_64_1();
            _os_log_impl(v146, v147, v148, v149, v150, 2u);
            OUTLINED_FUNCTION_26();
          }

          (v235)(v220, v219);
          v151 = *(v107 + 8);
          v152 = OUTLINED_FUNCTION_49_20();
          v153(v152);
          return 1;
        }

        sub_267E28EE0(v110, type metadata accessor for DirectInvocationUseCases);
      }

      (*(v107 + 16))(v113, v108, v109);
      v176 = sub_267EF89F8();
      v177 = sub_267EF95C8();
      if (os_log_type_enabled(v176, v177))
      {
        OUTLINED_FUNCTION_48();
        v238[0] = OUTLINED_FUNCTION_64_2();
        *v108 = 136446210;
        v178 = sub_267EF4BC8();
        v179 = v107;
        v181 = v180;
        v182 = *(v179 + 8);
        v182(v113, v109);
        v183 = sub_267BA33E8(v178, v181, v238);

        *(v108 + 4) = v183;
        OUTLINED_FUNCTION_121_0(&dword_267B93000, v184, v185, "#SendMessageConfirmIntentFlow Unsupported direct invocation %{public}s -> ignore");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_26();

        v182(v227, v109);
      }

      else
      {

        v186 = *(v107 + 8);
        v186(v113, v109);
        v186(v108, v109);
      }

      return 0;
    }

    v114 = OUTLINED_FUNCTION_5_29();
    v90(v114);
    v115 = v222;
    sub_267EF4B88();
    sub_267E57DFC(v115, &v236);
    v116 = OUTLINED_FUNCTION_5_29();
    v90(v116);
    if (!v237)
    {
      sub_267B9F98C(&v236, &unk_28022BBF0, &unk_267F01C60);
      v70 = sub_267EF89F8();
      v169 = sub_267EF95C8();
      if (!OUTLINED_FUNCTION_36(v169))
      {
        goto LABEL_10;
      }

      v170 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v170);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v171, v172, v173, v174, v175, 2u);
      goto LABEL_9;
    }

    sub_267B9A5E8(&v236, v238);
    OUTLINED_FUNCTION_88_5();
    v117 = v89[36];
    v118 = OUTLINED_FUNCTION_38_0();
    if (v119(v118) & 1) != 0 && (__swift_project_boxed_opaque_existential_0(v238, v238[3]), v120 = OUTLINED_FUNCTION_61_0(), (sub_267E59B14(v120, v121)))
    {
      v122 = sub_267EF89F8();
      v123 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v123))
      {
        v124 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v124);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v125, v126, v127, v128, v129, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      v154 = *(v2 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
      if (sub_267EF96E8() & 1) == 0 || (OUTLINED_FUNCTION_88_5(), v155 = v89[20], v156 = OUTLINED_FUNCTION_38_0(), (v157(v156) & 1) == 0) || (OUTLINED_FUNCTION_88_5(), v158 = v89[37], v159 = OUTLINED_FUNCTION_38_0(), (v160(v159)))
      {
        v161 = sub_267EF89F8();
        v162 = sub_267EF95C8();
        if (OUTLINED_FUNCTION_36(v162))
        {
          v163 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v163);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v164, v165, v166, v167, v168, 2u);
          OUTLINED_FUNCTION_26();
        }

        __swift_destroy_boxed_opaque_existential_0(v238);
        return 0;
      }

      v122 = sub_267EF89F8();
      v205 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_36(v205))
      {
        v206 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v206);
        OUTLINED_FUNCTION_64_1();
        _os_log_impl(v207, v208, v209, v210, v211, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    v212 = v233;
    swift_storeEnumTagMultiPayload();
    v213 = v215;
    OUTLINED_FUNCTION_66_3();
    sub_267E283A8(v212, v2 + v213);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v238);
    return 1;
  }

  v92 = sub_267EF89F8();
  v93 = sub_267EF95C8();
  if (OUTLINED_FUNCTION_36(v93))
  {
    v94 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v94);
    OUTLINED_FUNCTION_64_1();
    _os_log_impl(v95, v96, v97, v98, v99, 2u);
    OUTLINED_FUNCTION_26();
  }

  v100 = v233;
  *v233 = v235;
  v81 = 1;
  swift_storeEnumTagMultiPayload();
  v101 = v215;
  OUTLINED_FUNCTION_66_3();
  sub_267E283A8(v100, v2 + v101);
  swift_endAccess();
  return v81;
}

uint64_t sub_267E20A10()
{
  OUTLINED_FUNCTION_12();
  v1[26] = v2;
  v1[27] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C750, qword_267F0B260);
  v1[28] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[29] = v4;
  v6 = *(v5 + 64);
  v1[30] = OUTLINED_FUNCTION_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022C778, &unk_267F0B310);
  v1[31] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[32] = v8;
  v10 = *(v9 + 64);
  v1[33] = OUTLINED_FUNCTION_89_12();
  v1[34] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229310, &unk_267EFCF70);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  v1[35] = OUTLINED_FUNCTION_89_12();
  v1[36] = swift_task_alloc();
  v14 = sub_267EF70D8();
  v1[37] = v14;
  OUTLINED_FUNCTION_30_0(v14);
  v1[38] = v15;
  v17 = *(v16 + 64);
  v1[39] = OUTLINED_FUNCTION_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022BB78, &unk_267F08340);
  v1[40] = v18;
  OUTLINED_FUNCTION_18(v18);
  v20 = *(v19 + 64);
  v1[41] = OUTLINED_FUNCTION_89_12();
  v1[42] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B0, &unk_267EFDCA0);
  OUTLINED_FUNCTION_18(v21);
  v23 = *(v22 + 64);
  v1[43] = OUTLINED_FUNCTION_89_12();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BD40, &unk_267F003E0);
  OUTLINED_FUNCTION_18(v24);
  v26 = *(v25 + 64);
  v1[49] = OUTLINED_FUNCTION_2();
  v27 = sub_267EF6EA8();
  v1[50] = v27;
  OUTLINED_FUNCTION_30_0(v27);
  v1[51] = v28;
  v30 = *(v29 + 64);
  v1[52] = OUTLINED_FUNCTION_2();
  v31 = type metadata accessor for SendMessageConfirmIntentFlow.State(0);
  v1[53] = v31;
  OUTLINED_FUNCTION_18(v31);
  v33 = *(v32 + 64);
  v1[54] = OUTLINED_FUNCTION_89_12();
  v1[55] = swift_task_alloc();
  v34 = swift_task_alloc();
  v1[56] = v34;
  *v34 = v1;
  v34[1] = sub_267E20D28;

  return sub_267E23BC8();
}

uint64_t sub_267E20D28()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 448);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 456) = v0;

  if (v0)
  {
    v9 = sub_267E22A30;
  }

  else
  {
    v9 = sub_267E20E28;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_267E20E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_47_0();
  a27 = v31;
  a28 = v32;
  OUTLINED_FUNCTION_66_1();
  a26 = v29;
  *(v29 + 464) = *(v29 + 456);
  v33 = *(v29 + 440);
  v34 = *(v29 + 424);
  v35 = *(v29 + 216);
  v36 = OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_state;
  OUTLINED_FUNCTION_85_12();
  sub_267E28344(v35 + v36, v33);
  OUTLINED_FUNCTION_66();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v37 = **(v29 + 440);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v38 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v38, qword_280240FB0);
      v39 = sub_267EF89F8();
      sub_267EF95C8();
      OUTLINED_FUNCTION_12_3();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = OUTLINED_FUNCTION_48();
        a17 = OUTLINED_FUNCTION_52();
        *v41 = 136446210;
        if (v37)
        {
          v42 = 0x74756F68746977;
        }

        else
        {
          v42 = 1752459639;
        }

        if (v37)
        {
          v43 = 0xE700000000000000;
        }

        else
        {
          v43 = 0xE400000000000000;
        }

        sub_267BA33E8(v42, v43, &a17);
        OUTLINED_FUNCTION_105_11();
        *(v41 + 4) = v30;
        OUTLINED_FUNCTION_87_3(&dword_267B93000, v44, v28, "#SendMessageConfirmIntentFlow empty input, pushing confirmation flow %{public}s prompt");
        OUTLINED_FUNCTION_11_42();
        OUTLINED_FUNCTION_32_0();
      }

      v45 = *(*(v29 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v45 + 42) = 2;
      *(v45 + 72) = v37;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 512) = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_30_29();
      goto LABEL_37;
    case 2u:
      v75 = *(v29 + 264);
      v76 = *(v29 + 256);
      (*(v76 + 32))(*(v29 + 272), *(v29 + 440), *(v29 + 248));
      v77 = *(v76 + 16);
      v78 = OUTLINED_FUNCTION_61_0();
      a16 = v79;
      (v79)(v78);
      v80 = *(v76 + 88);
      v81 = OUTLINED_FUNCTION_26_0();
      if (v82(v81) != *MEMORY[0x277D5BC38])
      {
        (*(*(v29 + 256) + 8))(*(v29 + 264), *(v29 + 248));
        goto LABEL_48;
      }

      v83 = *(v29 + 280);
      v84 = *(v29 + 240);
      v85 = *(v29 + 224);
      v86 = *(v29 + 232);
      (*(*(v29 + 256) + 96))(*(v29 + 264), *(v29 + 248));
      v87 = *(v86 + 32);
      v88 = OUTLINED_FUNCTION_19();
      v89(v88);
      sub_267EF4478();
      v90 = sub_267EF44F8();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v90);
      v92 = *(v29 + 280);
      if (EnumTagSinglePayload == 1)
      {
        v93 = OUTLINED_FUNCTION_22_26();
        v94(v93);
        sub_267B9F98C(v92, &qword_280229310, &unk_267EFCF70);
LABEL_48:
        v141 = *(*(*(v29 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 216);

        sub_267D0F73C();

        goto LABEL_49;
      }

      OUTLINED_FUNCTION_23();
      v153 = v152;
      v155 = *(v154 + 88);
      v156 = OUTLINED_FUNCTION_61_0();
      v158 = v157(v156);
      v159 = *(v29 + 280);
      if (v158 != *MEMORY[0x277D5BED8])
      {
        v172 = OUTLINED_FUNCTION_22_26();
        v173(v172);
        v174 = *(v153 + 8);
        v175 = OUTLINED_FUNCTION_61_0();
        v176(v175);
        goto LABEL_48;
      }

      v160 = *(v29 + 216);
      v161 = *(v153 + 8);
      v162 = OUTLINED_FUNCTION_61_0();
      v163(v162);
      v164 = v160[6];
      __swift_project_boxed_opaque_existential_0(v160 + 2, v160[5]);
      v165 = *(v164 + 8);
      v166 = OUTLINED_FUNCTION_38_0();
      v167(v166);
      v168 = *(v29 + 48);
      __swift_project_boxed_opaque_existential_0((v29 + 16), *(v29 + 40));
      OUTLINED_FUNCTION_66();
      v169 = OUTLINED_FUNCTION_28_3();
      __swift_destroy_boxed_opaque_existential_0((v29 + 16));
      if ((v169 & 1) == 0)
      {
        goto LABEL_88;
      }

      sub_267EF6FF8();
      if (sub_267EF6FC8())
      {
        v170 = *(v29 + 360);
        sub_267EF6FA8();

        sub_267EF8698();

        v171 = 0;
      }

      else
      {
        v171 = 1;
      }

      v244 = *(v29 + 352);
      v243 = *(v29 + 360);
      v245 = *(v29 + 320);
      v246 = *(v29 + 328);
      v247 = *(v29 + 296);
      __swift_storeEnumTagSinglePayload(v243, v171, 1, v247);
      sub_267EF70C8();
      OUTLINED_FUNCTION_9();
      __swift_storeEnumTagSinglePayload(v248, v249, v250, v247);
      v251 = *(v245 + 48);
      sub_267BB170C(v243, v246, &qword_2802295B0, &unk_267EFDCA0);
      a15 = v251;
      v252 = v246 + v251;
      v253 = v246;
      sub_267BB170C(v244, v252, &qword_2802295B0, &unk_267EFDCA0);
      OUTLINED_FUNCTION_7_0(v246);
      if (v194)
      {
        v254 = *(v29 + 360);
        v255 = *(v29 + 296);
        sub_267B9F98C(*(v29 + 352), &qword_2802295B0, &unk_267EFDCA0);
        sub_267B9F98C(v254, &qword_2802295B0, &unk_267EFDCA0);
        OUTLINED_FUNCTION_5_1(v246 + a15, 1, v255);
        if (v194)
        {
          sub_267B9F98C(*(v29 + 328), &qword_2802295B0, &unk_267EFDCA0);
          goto LABEL_88;
        }

        goto LABEL_82;
      }

      v256 = *(v29 + 296);
      sub_267BB170C(*(v29 + 328), *(v29 + 344), &qword_2802295B0, &unk_267EFDCA0);
      v257 = __swift_getEnumTagSinglePayload(v246 + a15, 1, v256);
      a14 = *(v29 + 360);
      v258 = *(v29 + 344);
      if (v257 == 1)
      {
        v260 = *(v29 + 296);
        v259 = *(v29 + 304);
        OUTLINED_FUNCTION_288();
        sub_267B9F98C(v261, v262, v263);
        OUTLINED_FUNCTION_288();
        sub_267B9F98C(v264, v265, v266);
        (*(v259 + 8))(v258, v260);
LABEL_82:
        sub_267B9F98C(*(v29 + 328), &qword_28022BB78, &unk_267F08340);
        goto LABEL_83;
      }

      a12 = *(v29 + 352);
      a13 = *(v29 + 328);
      v278 = *(v29 + 304);
      v279 = *(v29 + 312);
      v280 = *(v29 + 296);
      (*(v278 + 32))(v279, v253 + a15, v280);
      OUTLINED_FUNCTION_2_57();
      sub_267E282FC(v281, v282);
      LODWORD(a15) = sub_267EF8FE8();
      v283 = *(v278 + 8);
      v283(v279, v280);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v284, v285, v286);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v287, v288, v289);
      v290 = OUTLINED_FUNCTION_89_0();
      (v283)(v290);
      OUTLINED_FUNCTION_136();
      sub_267B9F98C(v291, v292, v293);
      if (a15)
      {
        goto LABEL_88;
      }

LABEL_83:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v267 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v267, qword_280240FB0);
      v268 = sub_267EF89F8();
      v269 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v269))
      {
        v270 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v270);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v271, v272, v273, v274, v275, 2u);
        OUTLINED_FUNCTION_26();
      }

LABEL_88:
      v276 = OUTLINED_FUNCTION_22_26();
      v277(v276);
LABEL_49:
      v142 = *(v29 + 424);
      v143 = *(v29 + 432);
      v144 = *(v29 + 272);
      v145 = *(v29 + 248);
      v146 = *(v29 + 256);
      v147 = *(v29 + 208);
      v148 = OUTLINED_FUNCTION_108();
      (a16)(v148);
      OUTLINED_FUNCTION_66();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_66_3();
      sub_267E283A8(v143, v35 + v36);
      swift_endAccess();
      sub_267EF4018();
      v149 = *(v146 + 8);
      v150 = OUTLINED_FUNCTION_37_1();
      v151(v150);
LABEL_69:
      OUTLINED_FUNCTION_4_57();
      OUTLINED_FUNCTION_61_14();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_46_0();

      return v221(v220, v221, v222, v223, v224, v225, v226, v227, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    case 4u:
      v68 = *(v29 + 216);
      if ((sub_267E242A8() & 1) == 0)
      {
        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0();
        }

        v120 = sub_267EF8A08();
        v121 = __swift_project_value_buffer(v120, qword_280240FB0);
        v122 = sub_267EF89F8();
        sub_267EF95C8();
        OUTLINED_FUNCTION_12_3();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_4_2(v124);
          OUTLINED_FUNCTION_14_2();
          _os_log_impl(v125, v126, v127, v128, v129, 2u);
          OUTLINED_FUNCTION_29_1();
        }

        v130 = *(v29 + 216);

        v131 = *(v130 + 40);
        v132 = *(v130 + 48);
        OUTLINED_FUNCTION_69_12((v130 + 16));
        v133 = OUTLINED_FUNCTION_54();
        v134(v133, v132);
        v135 = *(v29 + 80);
        v136 = *(v29 + 88);
        OUTLINED_FUNCTION_13_37((v29 + 56));
        v137 = OUTLINED_FUNCTION_28_3();
        __swift_destroy_boxed_opaque_existential_0((v29 + 56));
        if ((v137 & 1) == 0)
        {
          goto LABEL_68;
        }

        sub_267EF6FF8();
        v138 = sub_267EF6FC8();
        a16 = v121;
        if (v138)
        {
          v139 = *(v29 + 384);
          sub_267EF6FA8();

          sub_267EF8698();

          v140 = 0;
        }

        else
        {
          v140 = 1;
        }

        v132 = *(v29 + 376);
        v177 = *(v29 + 384);
        v137 = *(v29 + 336);
        v178 = *(v29 + 320);
        OUTLINED_FUNCTION_57_16(v138, v140);
        v179 = OUTLINED_FUNCTION_3_19();
        __swift_storeEnumTagSinglePayload(v179, v180, v181, v121);
        v130 = *(v178 + 48);
        OUTLINED_FUNCTION_19();
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v182, v183, v184, v185);
        OUTLINED_FUNCTION_117_0();
        sub_267BB170C(v186, v187, v188, v189);
        v190 = OUTLINED_FUNCTION_221();
        OUTLINED_FUNCTION_5_1(v190, v191, v121);
        if (v194)
        {
          v136 = *(v29 + 384);
          v132 = *(v29 + 296);
          v121 = &qword_2802295B0;
          sub_267B9F98C(*(v29 + 376), &qword_2802295B0, &unk_267EFDCA0);
          v192 = OUTLINED_FUNCTION_14_1();
          sub_267B9F98C(v192, v193, &unk_267EFDCA0);
          OUTLINED_FUNCTION_7_0(v137 + v130);
          if (v194)
          {
            sub_267B9F98C(*(v29 + 336), &qword_2802295B0, &unk_267EFDCA0);
LABEL_68:
            OUTLINED_FUNCTION_84_11();
            v212 = *MEMORY[0x277D5BED8];
            v213 = sub_267EF44F8();
            OUTLINED_FUNCTION_22(v213);
            (*(v214 + 104))(v121, v212, v213);
            OUTLINED_FUNCTION_9();
            __swift_storeEnumTagSinglePayload(v215, v216, v217, v213);
            v218 = *(v136 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
            sub_267BA9F38(0, &qword_28022AE60, 0x277CD4078);
            v219 = v218;
            OUTLINED_FUNCTION_102_8();
            (*(v137 + 104))(v130, *MEMORY[0x277D5BC38], v132);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_66_3();
            sub_267E283A8(v130, v35 + v36);
            swift_endAccess();
            sub_267EF4018();
            goto LABEL_69;
          }
        }

        else
        {
          v136 = *(v29 + 296);
          sub_267BB170C(*(v29 + 336), *(v29 + 368), &qword_2802295B0, &unk_267EFDCA0);
          OUTLINED_FUNCTION_107_9();
          if (!v194)
          {
            v228 = OUTLINED_FUNCTION_48_24();
            v229(v228);
            OUTLINED_FUNCTION_2_57();
            sub_267E282FC(v230, v231);
            OUTLINED_FUNCTION_86_11();
            v232 = OUTLINED_FUNCTION_91_11();
            (v137)(v232);
            v130 = &unk_267EFDCA0;
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v233, v234, v235);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v236, v237, v238);
            v239 = OUTLINED_FUNCTION_37_1();
            (v137)(v239);
            OUTLINED_FUNCTION_56_17();
            sub_267B9F98C(v240, v241, v242);
            v137 = v121;
            if (a13)
            {
              goto LABEL_68;
            }

LABEL_65:
            v137 = sub_267EF89F8();
            v205 = sub_267EF95D8();
            if (OUTLINED_FUNCTION_10_2(v205))
            {
              v206 = OUTLINED_FUNCTION_32();
              OUTLINED_FUNCTION_42(v206);
              OUTLINED_FUNCTION_21();
              _os_log_impl(v207, v208, v209, v210, v211, 2u);
              OUTLINED_FUNCTION_26();
            }

            goto LABEL_68;
          }

          v196 = *(v29 + 296);
          v195 = *(v29 + 304);
          v121 = &qword_2802295B0;
          v197 = OUTLINED_FUNCTION_76_11();
          sub_267B9F98C(v197, v198, v199);
          v200 = OUTLINED_FUNCTION_44_0();
          sub_267B9F98C(v200, v201, &unk_267EFDCA0);
          v202 = *(v195 + 8);
          v130 = v195 + 8;
          v203 = OUTLINED_FUNCTION_19();
          v204(v203);
        }

        sub_267B9F98C(*(v29 + 336), &qword_28022BB78, &unk_267F08340);
        goto LABEL_65;
      }

      v69 = *(v29 + 216);
      v70 = OUTLINED_FUNCTION_71_8(OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState);
      *(v29 + 536) = v70 & 1;
      if (v70)
      {
        v71 = *(v29 + 216);
        sub_267C99228();
      }

      v72 = swift_task_alloc();
      *(v29 + 480) = v72;
      *v72 = v29;
      OUTLINED_FUNCTION_26_28(v72);
      OUTLINED_FUNCTION_46_0();

      return sub_267E25C70();
    case 5u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v95 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v95, qword_280240FB0);
      v96 = sub_267EF89F8();
      v97 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v97))
      {
        v98 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v98);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v99, v100, v101, v102, v103, 2u);
        OUTLINED_FUNCTION_26();
      }

      v104 = *(v29 + 216);

      *(*(v104 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 1;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 520) = v105;
      *v105 = v106;
      OUTLINED_FUNCTION_31_23();
      goto LABEL_37;
    case 6u:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v107 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v107, qword_280240FB0);
      v108 = sub_267EF89F8();
      v109 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v109))
      {
        v110 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v110);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v111, v112, v113, v114, v115, 2u);
        OUTLINED_FUNCTION_26();
      }

      v116 = *(v29 + 216);

      *(*(v116 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_sendMessageState) + 42) = 0;
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v29 + 528) = v117;
      *v117 = v118;
      OUTLINED_FUNCTION_32_20();
LABEL_37:
      *(v48 + 8) = v49;
      OUTLINED_FUNCTION_74_11();
      OUTLINED_FUNCTION_46_0();

      return sub_267E24418();
    default:
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v50 = *(v29 + 216);
      v51 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v51, qword_280240FB0);

      v52 = sub_267EF89F8();
      v53 = sub_267EF95E8();

      if (os_log_type_enabled(v52, v53))
      {
        v55 = *(v29 + 424);
        v54 = *(v29 + 432);
        OUTLINED_FUNCTION_48();
        v56 = OUTLINED_FUNCTION_64_2();
        a17 = v56;
        *v50 = 136315138;
        sub_267E28344(v35 + v36, v54);
        OUTLINED_FUNCTION_44_0();
        v57 = sub_267EF9098();
        v59 = sub_267BA33E8(v57, v58, &a17);

        *(v50 + 4) = v59;
        OUTLINED_FUNCTION_21();
        _os_log_impl(v60, v61, v62, v63, v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        OUTLINED_FUNCTION_45_2();
        OUTLINED_FUNCTION_26();
      }

      v65 = *(v29 + 440);
      v66 = *(v29 + 208);
      sub_267EF4018();
      OUTLINED_FUNCTION_1_71();
      sub_267E28EE0(v65, v67);
      goto LABEL_69;
  }
}

uint64_t sub_267E21DCC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v2 = v1;
  v4 = *(v3 + 480);
  *v2 = *v0;
  *(v1 + 537) = v5;

  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267E21EB8()
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = sub_267EF8A08();
  __swift_project_value_buffer(v2, qword_280240FB0);
  v3 = sub_267EF89F8();
  sub_267EF95C8();
  OUTLINED_FUNCTION_12_3();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v1 + 537);
    v6 = swift_slowAlloc();
    *v6 = 67240192;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_267B93000, v3, v0, "#SendMessageConfirmIntentFlow isAutoSendable=%{BOOL,public}d", v6, 8u);
    OUTLINED_FUNCTION_29_1();
  }

  v7 = *(v1 + 537);
  v8 = *(v1 + 536);
  v9 = *(v1 + 472);
  v10 = *(v1 + 216);

  sub_267E27B5C(v8);
  *(*(*(v9 + 216) + 16) + 32) = (v7 ^ 1) & 1;
  if (v8 & 1) == 0 && ((v7 ^ 1) & 1) == 0 && (sub_267C9810C(*(v1 + 216) + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_conversationEventStore, v11, v12, v13, v14, v15, v16, v17, v18, v19))
  {
    v20 = *(v1 + 464);
    v21 = *(v1 + 392);
    sub_267EF6E98();
    if (v20)
    {
      v23 = *(v1 + 392);
      v22 = *(v1 + 400);

      __swift_storeEnumTagSinglePayload(v23, 1, 1, v22);
      sub_267B9F98C(v23, &unk_28022BD40, &unk_267F003E0);
      v24 = sub_267EF89F8();
      v25 = sub_267EF95E8();
      if (OUTLINED_FUNCTION_10_2(v25))
      {
        v26 = OUTLINED_FUNCTION_32();
        OUTLINED_FUNCTION_42(v26);
        OUTLINED_FUNCTION_21();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      *(v1 + 496) = v32;
      *v32 = v33;
      v34 = sub_267E224D4;
LABEL_12:
      v32[1] = v34;
      OUTLINED_FUNCTION_74_11();
      goto LABEL_20;
    }

    v36 = *(v1 + 408);
    v35 = *(v1 + 416);
    v38 = *(v1 + 392);
    v37 = *(v1 + 400);
    v39 = *(v1 + 216);
    v40 = OUTLINED_FUNCTION_3_19();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v37);
    v43 = *(v36 + 32);
    OUTLINED_FUNCTION_288();
    v44();
    v45 = *(v39 + OBJC_IVAR____TtC16SiriMessagesFlow28SendMessageConfirmIntentFlow_intent);
    if ((sub_267EF96E8() & 1) == 0)
    {
      v46 = [v45 content];
      if (v46)
      {
        v47 = v46;
        sub_267EF9028();

        OUTLINED_FUNCTION_37_1();
        sub_267C9DA84();
        v49 = v48;

        if (v49 >= 4.0)
        {
          v71 = sub_267EF89F8();
          v72 = sub_267EF95C8();
          if (OUTLINED_FUNCTION_10_2(v72))
          {
            v73 = OUTLINED_FUNCTION_32();
            OUTLINED_FUNCTION_42(v73);
            OUTLINED_FUNCTION_21();
            _os_log_impl(v74, v75, v76, v77, v78, 2u);
            OUTLINED_FUNCTION_26();
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v1 + 488) = v32;
          *v32 = v79;
          v34 = sub_267E222F0;
          goto LABEL_12;
        }
      }
    }

    v50 = *(v1 + 416);
    v51 = *(v1 + 216);
    v52 = v51[5];
    v53 = v51[6];
    OUTLINED_FUNCTION_69_12(v51 + 2);
    v54 = OUTLINED_FUNCTION_54();
    v55(v54, v53);
    v56 = sub_267E28B54((v1 + 96), v50);
    __swift_destroy_boxed_opaque_existential_0((v1 + 96));
    if (v56)
    {
      v57 = *(v1 + 472);
      v59 = *(v1 + 408);
      v58 = *(v1 + 416);
      v60 = *(v1 + 400);
      v61 = *(v1 + 216);
      sub_267C98ECC();
      v62 = *(v59 + 8);
      v63 = OUTLINED_FUNCTION_66();
      v64(v63);
      *(v57 + 280) = 1;
    }

    else
    {
      (*(*(v1 + 408) + 8))(*(v1 + 416), *(v1 + 400));
    }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 504) = v65;
  *v65 = v66;
  v65[1] = sub_267E225B8;
  v67 = *(v1 + 537);
  v68 = *(v1 + 208);
  v69 = *(v1 + 216);
LABEL_20:

  return sub_267E24418();
}