void *sub_22EF87B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;

  sub_22EF9B6DC(v8);
  v9 = sub_22EFA30DC(v24);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_22EF94370(*(v9 + 16), 0);
    v12 = sub_22EFAA300(&v24, v11 + 2, v10, v9);
    sub_22EFA0FD0();
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v24 = a5;

  sub_22EF9B6DC(v13);
  v14 = sub_22EFA30DC(v24);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_22EF94370(*(v14 + 16), 0);
    v17 = sub_22EFAA300(&v24, v16 + 2, v15, v14);
    sub_22EFA0FD0();
    if (v17 == v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_9:
  v24 = a6;

  sub_22EF947D0(v18);
  v19 = sub_22EFA3178(v24);

  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_12:

    return v11;
  }

  v21 = sub_22EF948BC(*(v19 + 16), 0);
  v22 = sub_22EFAA204(&v24, v21 + 32, v20, v19);
  sub_22EFA0FD0();
  if (v22 != v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_22EF87D54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a3 + 16) || (v6 = *(a3 + 40), sub_22EFB68DC(), sub_22EFB61EC(), v7 = sub_22EFB691C(), v8 = a3 + 56, v9 = -1 << *(a3 + 32), v10 = v7 & ~v9, ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0))
  {
LABEL_64:
    result = 0;
    goto LABEL_65;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v44 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v41 = v15;
  v39 = a2;
  v40 = HIDWORD(a1) - a1;
  v42 = v11;
  v43 = BYTE6(a2);
  v38 = a1;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_37;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_68;
      }

      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_69;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_34:
        v27 = v43;
        if (v14)
        {
          v27 = v40;
          if (v41)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_34;
      }
    }

LABEL_38:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_63;
      }

      goto LABEL_14;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

LABEL_40:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_63;
      }

      if (v19 <= 1)
      {
        if (!v19)
        {
          *v46 = v18;
          *&v46[8] = v17;
          v46[10] = BYTE2(v17);
          v46[11] = BYTE3(v17);
          v46[12] = BYTE4(v17);
          v46[13] = BYTE5(v17);
          sub_22EF70B68(v18, v17);
          sub_22EF92D44(v46, a1, a2, v45);
          sub_22EF708C8(v18, v17);
          if (v45[0])
          {
            goto LABEL_63;
          }

LABEL_61:
          v11 = v42;
          goto LABEL_14;
        }

        if (v18 >> 32 < v18)
        {
          goto LABEL_70;
        }

        sub_22EF70B68(v18, v17);
        v32 = sub_22EFB603C();
        if (v32)
        {
          v34 = sub_22EFB605C();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_73;
          }

          v32 += v18 - v34;
        }

LABEL_59:
        sub_22EFB604C();
        v35 = v32;
        a1 = v38;
        a2 = v39;
        sub_22EF92D44(v35, v38, v39, v46);
        sub_22EF708C8(v18, v17);
        if (v46[0])
        {
          goto LABEL_63;
        }

        v8 = a3 + 56;
        goto LABEL_61;
      }

      if (v19 == 2)
      {
        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        sub_22EF70B68(v18, v17);
        v32 = sub_22EFB603C();
        if (v32)
        {
          v33 = sub_22EFB605C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_72;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_71;
        }

        goto LABEL_59;
      }

      *&v46[6] = 0;
      *v46 = 0;
      sub_22EF70B68(v18, v17);
      sub_22EF92D44(v46, a1, a2, v45);
      sub_22EF708C8(v18, v17);
      if (v45[0])
      {
        goto LABEL_63;
      }
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v44))
  {
LABEL_37:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_38;
  }

LABEL_63:
  result = 1;
LABEL_65:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_22EF88178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a8;
  v45 = a4;
  v10 = a5;
  v14 = *(a1 + 32);
  v46 = a1;
  if ((sub_22EF6E8C0(v14, *(a1 + 40), *(a5 + 32), *(a5 + 40)) & 1) == 0)
  {
    v42 = a3;
    v43 = v10;
    v18 = *(a2 + 16);
    v19 = (a2 + 32);
    while (v18)
    {
      v20 = *v19++;
      v47 = v20;
      *&v21 = MEMORY[0x28223BE20]();
      v41 = &v47;
      v22 = v21;
      v24 = v23;
      sub_22EF70B68(v21, v23);
      v25 = sub_22EF83730(sub_22EFA8424, v40, a6);
      sub_22EF708C8(v22, v24);
      --v18;
      if (v25)
      {
        return 1;
      }
    }

    v10 = v43;
    v26 = *(v42 + 16);
    v27 = (v42 + 32);
    while (v26)
    {
      v28 = *v27++;
      v47 = v28;
      *&v29 = MEMORY[0x28223BE20]();
      v41 = &v47;
      v30 = v29;
      v32 = v31;
      sub_22EF70B68(v29, v31);
      v33 = sub_22EF83730(sub_22EFA8424, v40, a7);
      sub_22EF708C8(v30, v32);
      --v26;
      if (v33)
      {
        return 1;
      }
    }
  }

  v15 = v46;
  v16 = *(v46 + 16) == *(v10 + 16) && *(v46 + 24) == *(v10 + 24);
  if (v16 || (sub_22EFB684C()) && (*(v15 + 176) & 1) == 0)
  {
    v17 = *(v10 + 176) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  if (*(v45 + 16) && !((*(v44 + 16) == 0) | v17 & 1))
  {
    return 1;
  }

  v34 = *(v15 + 72);
  if (v34 >> 60 != 15)
  {
    v35 = *(v15 + 64);
    v37 = *(v10 + 64);
    v36 = *(v10 + 72);
    sub_22EF70CB0(v35, v34);
    sub_22EF70CB0(v37, v36);
    if (v36 >> 60 == 15)
    {
      sub_22EF708B4(v35, v34);
      sub_22EF708B4(v37, v36);
      return 0;
    }

    v38 = sub_22EF6E8C0(v35, v34, v37, v36);
    sub_22EF708B4(v37, v36);
    sub_22EF708B4(v35, v34);
    return (v38 & 1) != 0;
  }

  return 0;
}

uint64_t sub_22EF8841C(unint64_t a1)
{
  v119[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild) == 1 && [*(v1 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) BOOLForKey_])
  {
    if (qword_27DA9E058 == -1)
    {
LABEL_4:
      v3 = sub_22EFB626C();
      __swift_project_value_buffer(v3, qword_27DAA03B8);
      v4 = sub_22EFB624C();
      v5 = sub_22EFB65EC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EEF5000, v4, v5, "Forcing slow mode due to debug pref", v6, 2u);
        MEMORY[0x2318FC200](v6, -1, -1);
      }

      goto LABEL_7;
    }

LABEL_200:
    swift_once();
    goto LABEL_4;
  }

  if (a1 >> 62)
  {
    goto LABEL_193;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_11:
    result = 1;
    goto LABEL_12;
  }

LABEL_10:
  if (v8 == 1)
  {
    goto LABEL_11;
  }

  v10 = 0;
  v110 = a1 & 0xC000000000000001;
  v103 = a1 & 0xFFFFFFFFFFFFFF8;
  v104 = a1 + 32;
  v102 = v1;
  v11 = 1;
  v107 = a1;
  v105 = v8;
LABEL_15:
  v12 = v10;
  v106 = v11;
  v108 = v10;
  while (1)
  {
    if (v11 >= v8)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      v47 = sub_22EFB67CC();
      if (v47 < 0)
      {
        __break(1u);
        goto LABEL_195;
      }

LABEL_209:
      v8 = v47;
      if (!v47)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (v110)
    {
      v14 = MEMORY[0x2318FB480](v12, a1);
    }

    else
    {
      if (v12 >= *(v103 + 16))
      {
        goto LABEL_190;
      }

      v14 = *(v104 + 8 * v12);
    }

    v15 = v14[10];
    v1 = v14[11];
    v16 = v14[12];
    sub_22EFA0DA0(v15);

    v109 = v11;
    if (v110)
    {
      v17 = MEMORY[0x2318FB480](v11, a1);
    }

    else
    {
      if (v11 >= *(v103 + 16))
      {
        goto LABEL_191;
      }

      v17 = *(v104 + 8 * v11);
    }

    v18 = *(v17 + 80);
    v19 = *(v17 + 96);
    sub_22EFA0DA0(v18);

    if (v15)
    {
      break;
    }

    v12 = v108;
    switch(v18)
    {
      case 0uLL:
        goto LABEL_42;
      case 1uLL:
        goto LABEL_48;
      case 2uLL:
LABEL_42:
        v24 = v18;
LABEL_53:
        sub_22EFA0DF0(v24);
        goto LABEL_17;
    }

    if (v110)
    {
      v33 = MEMORY[0x2318FB480](v109, a1);
      v1 = MEMORY[0x2318FB480](v108, a1);
    }

    else
    {
      v33 = *(v104 + 8 * v109);
      v1 = *(v104 + 8 * v108);
    }

    v53 = *(v33 + 136);
    if (v53 >> 60 == 15)
    {

      sub_22EFA0DF0(v18);

      goto LABEL_17;
    }

    v54 = *(v33 + 128);
    v55 = sub_22EFB648C();
    a1 = v56;
    sub_22EF70B68(v54, v53);
    v47 = sub_22EF7E630(v55, a1);
    if (v57 >> 60 == 15)
    {
      goto LABEL_208;
    }

    v58 = v47;
    v59 = v57;

    v1 = sub_22EF89E34(v58, v59, v54, v53);
    sub_22EFA0DF0(v18);
    sub_22EF708B4(v58, v59);
    sub_22EF708B4(v54, v53);
    if ((v1 & 1) == 0)
    {
LABEL_133:

      v12 = v108;
      goto LABEL_17;
    }

    v1 = *(v33 + 152);
    v60 = *(v33 + 160);

    v12 = v108;
    if ((v60 & 1) == 0 && v1 == 2)
    {
      goto LABEL_7;
    }

LABEL_17:
    v11 = v109 + 1;
    v8 = v105;
    v10 = v106;
    a1 = v107;
    if (v109 + 1 == v105)
    {
      v11 = v106 + 1;
      result = 1;
      if (v106 + 1 == v105)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  v12 = v108;
  if (v15 == 2)
  {
    if (v18 != 1)
    {
      goto LABEL_42;
    }

LABEL_48:
    if (v110)
    {
      v27 = MEMORY[0x2318FB480](v109, a1);
      v22 = *(v27 + 112);
      v21 = *(v27 + 120);
      sub_22EF70B68(v22, v21);
      swift_unknownObjectRelease();
      v28 = v21 >> 62;
      if ((v21 >> 62) <= 1)
      {
        if (!v28)
        {
          goto LABEL_58;
        }

LABEL_101:
        v61 = HIDWORD(v22) - v22;
        if (__OFSUB__(HIDWORD(v22), v22))
        {
          goto LABEL_196;
        }

        v32 = v61;
        if (!v61)
        {
          goto LABEL_140;
        }

LABEL_103:
        v119[0] = MEMORY[0x277D84F90];
        v1 = v119;
        sub_22EF9AAC8(0, v32 & ~(v32 >> 63), 0);
        v111 = 0;
        v62 = v21 >> 62;
        if ((v21 >> 62) > 1)
        {
          if (v62 == 2)
          {
            v63 = *(v22 + 16);
LABEL_108:
            v111 = v63;
          }
        }

        else if (v62)
        {
          v63 = v22;
          goto LABEL_108;
        }

        if (v32 < 0)
        {
          goto LABEL_192;
        }

        a1 = 0;
        v64 = v119[0];
        while (1)
        {
          if (a1 >= v32)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v65 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_174;
          }

          v66 = v111 + a1;
          if (v62 > 1)
          {
            if (v62 != 2)
            {
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
            }

            if (v66 < *(v22 + 16))
            {
              goto LABEL_179;
            }

            if (v66 >= *(v22 + 24))
            {
              goto LABEL_181;
            }

            v67 = sub_22EFB603C();
            if (!v67)
            {
              goto LABEL_203;
            }

            v68 = v67;
            v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
            v69 = sub_22EFB605C();
            v70 = v66 - v69;
            if (__OFSUB__(v66, v69))
            {
              goto LABEL_183;
            }
          }

          else
          {
            if (!v62)
            {
              if (v66 >= BYTE6(v21))
              {
                goto LABEL_178;
              }

              v113 = v22;
              v114 = v21;
              v115 = BYTE2(v21);
              v116 = BYTE3(v21);
              v117 = BYTE4(v21);
              v118 = BYTE5(v21);
              v1 = *(&v113 + v111 + a1);
              goto LABEL_129;
            }

            if (v66 < v22 || v66 >= v22 >> 32)
            {
              goto LABEL_180;
            }

            v71 = sub_22EFB603C();
            if (!v71)
            {
              goto LABEL_202;
            }

            v68 = v71;
            v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
            v72 = sub_22EFB605C();
            v70 = v66 - v72;
            if (__OFSUB__(v66, v72))
            {
              goto LABEL_182;
            }
          }

          v1 = *(v68 + v70);
LABEL_129:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_22EFBB8C0;
          *(v73 + 56) = MEMORY[0x277D84B78];
          *(v73 + 64) = MEMORY[0x277D84BC0];
          *(v73 + 32) = v1;
          v74 = sub_22EFB649C();
          v119[0] = v64;
          v77 = *(v64 + 16);
          v76 = *(v64 + 24);
          if (v77 >= v76 >> 1)
          {
            v1 = v119;
            v100 = v74;
            v79 = v75;
            sub_22EF9AAC8((v76 > 1), v77 + 1, 1);
            v75 = v79;
            v74 = v100;
            v64 = v119[0];
          }

          *(v64 + 16) = v77 + 1;
          v78 = v64 + 16 * v77;
          *(v78 + 32) = v74;
          *(v78 + 40) = v75;
          ++a1;
          if (v65 == v32)
          {
LABEL_167:
            v12 = v108;
            goto LABEL_168;
          }
        }
      }

      if (v28 != 2)
      {
        goto LABEL_140;
      }
    }

    else
    {
      v30 = *(v104 + 8 * v109);
      v22 = *(v30 + 112);
      v21 = *(v30 + 120);
      v31 = v21 >> 62;
      if ((v21 >> 62) <= 1)
      {
        if (!v31)
        {
LABEL_58:
          v32 = BYTE6(v21);
          if (BYTE6(v21))
          {
            goto LABEL_103;
          }

          goto LABEL_140;
        }

        sub_22EF70B68(v22, v21);
        goto LABEL_101;
      }

      if (v31 != 2)
      {
        goto LABEL_140;
      }

      sub_22EF70B68(v22, v21);
    }

    v38 = *(v22 + 16);
    v37 = *(v22 + 24);
    v32 = v37 - v38;
    if (__OFSUB__(v37, v38))
    {
      goto LABEL_197;
    }

    if (v32)
    {
      goto LABEL_103;
    }

    goto LABEL_140;
  }

  if (v15 != 1)
  {
    if (v18)
    {
      if (v18 == 2)
      {
        v24 = v15;
        goto LABEL_53;
      }

      if (v18 == 1)
      {
        sub_22EFA0DF0(v15);
        goto LABEL_7;
      }

      if (v110)
      {
        v25 = MEMORY[0x2318FB480](v108, a1);
        v26 = MEMORY[0x2318FB480](v109, a1);
      }

      else
      {
        v25 = *(v104 + 8 * v108);
        v26 = *(v104 + 8 * v109);
      }

      v39 = sub_22EF89288(v25, v26, v102);

      sub_22EFA0DF0(v18);
      sub_22EFA0DF0(v15);

      v12 = v108;
      if (!v39)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v110)
      {
        v29 = MEMORY[0x2318FB480](v108, a1);
        MEMORY[0x2318FB480](v109, a1);
      }

      else
      {
        v29 = *(v104 + 8 * v108);
        v42 = *(v104 + 8 * v109);
      }

      v43 = *(v29 + 136);
      if (v43 >> 60 == 15)
      {

        sub_22EFA0DF0(v15);

        goto LABEL_17;
      }

      v44 = *(v29 + 128);
      v45 = sub_22EFB648C();
      a1 = v46;
      sub_22EF70B68(v44, v43);
      v47 = sub_22EF7E630(v45, a1);
      if (v48 >> 60 == 15)
      {
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      v49 = v47;
      v50 = v48;

      v51 = sub_22EF89E34(v49, v50, v44, v43);
      sub_22EFA0DF0(v15);
      sub_22EF708B4(v49, v50);
      sub_22EF708B4(v44, v43);
      if ((v51 & 1) == 0)
      {
        goto LABEL_133;
      }

      v52 = *(v29 + 152);
      v1 = *(v29 + 160);

      v12 = v108;
      if ((v1 & 1) == 0 && v52 == 2)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_17;
  }

  switch(v18)
  {
    case 2uLL:
      goto LABEL_33;
    case 1uLL:
      goto LABEL_17;
    case 0uLL:
LABEL_33:
      if (v110)
      {
        v20 = MEMORY[0x2318FB480](v108, v107);
        v22 = *(v20 + 112);
        v21 = *(v20 + 120);
        sub_22EF70B68(v22, v21);
        swift_unknownObjectRelease();
        v23 = v21 >> 62;
        if ((v21 >> 62) <= 1)
        {
          if (v23)
          {
            goto LABEL_135;
          }

LABEL_64:
          v36 = BYTE6(v21);
          if (BYTE6(v21))
          {
            goto LABEL_137;
          }

          goto LABEL_140;
        }

        if (v23 != 2)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v34 = *(v104 + 8 * v108);
        v22 = *(v34 + 112);
        v21 = *(v34 + 120);
        v35 = v21 >> 62;
        if ((v21 >> 62) <= 1)
        {
          if (!v35)
          {
            goto LABEL_64;
          }

          sub_22EF70B68(v22, v21);
LABEL_135:
          v80 = HIDWORD(v22) - v22;
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_198;
          }

          v36 = v80;
          if (v80)
          {
LABEL_137:
            v119[0] = MEMORY[0x277D84F90];
            v1 = v119;
            sub_22EF9AAC8(0, v36 & ~(v36 >> 63), 0);
            v112 = 0;
            v81 = v21 >> 62;
            if ((v21 >> 62) > 1)
            {
              if (v81 == 2)
              {
                v82 = *(v22 + 16);
LABEL_143:
                v112 = v82;
              }
            }

            else if (v81)
            {
              v82 = v22;
              goto LABEL_143;
            }

            if (v36 < 0)
            {
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
              goto LABEL_200;
            }

            a1 = 0;
            v64 = v119[0];
            while (2)
            {
              if (a1 >= v36)
              {
                goto LABEL_175;
              }

              v83 = a1 + 1;
              if (__OFADD__(a1, 1))
              {
                goto LABEL_176;
              }

              v84 = v112 + a1;
              if (v81 > 1)
              {
                if (v81 != 2)
                {
                  goto LABEL_204;
                }

                if (v84 < *(v22 + 16))
                {
                  goto LABEL_185;
                }

                if (v84 >= *(v22 + 24))
                {
                  goto LABEL_187;
                }

                v85 = sub_22EFB603C();
                if (!v85)
                {
                  goto LABEL_206;
                }

                v86 = v85;
                v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
                v87 = sub_22EFB605C();
                v88 = v84 - v87;
                if (__OFSUB__(v84, v87))
                {
                  goto LABEL_189;
                }
              }

              else
              {
                if (!v81)
                {
                  if (v84 >= BYTE6(v21))
                  {
                    goto LABEL_184;
                  }

                  v113 = v22;
                  v114 = v21;
                  v115 = BYTE2(v21);
                  v116 = BYTE3(v21);
                  v117 = BYTE4(v21);
                  v118 = BYTE5(v21);
                  v1 = *(&v113 + v112 + a1);
LABEL_164:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
                  v91 = swift_allocObject();
                  *(v91 + 16) = xmmword_22EFBB8C0;
                  *(v91 + 56) = MEMORY[0x277D84B78];
                  *(v91 + 64) = MEMORY[0x277D84BC0];
                  *(v91 + 32) = v1;
                  v92 = sub_22EFB649C();
                  v119[0] = v64;
                  v95 = *(v64 + 16);
                  v94 = *(v64 + 24);
                  if (v95 >= v94 >> 1)
                  {
                    v1 = v119;
                    v101 = v92;
                    v97 = v93;
                    sub_22EF9AAC8((v94 > 1), v95 + 1, 1);
                    v93 = v97;
                    v92 = v101;
                    v64 = v119[0];
                  }

                  *(v64 + 16) = v95 + 1;
                  v96 = v64 + 16 * v95;
                  *(v96 + 32) = v92;
                  *(v96 + 40) = v93;
                  ++a1;
                  if (v83 == v36)
                  {
                    goto LABEL_167;
                  }

                  continue;
                }

                if (v84 < v22 || v84 >= v22 >> 32)
                {
                  goto LABEL_186;
                }

                v89 = sub_22EFB603C();
                if (!v89)
                {
                  goto LABEL_205;
                }

                v86 = v89;
                v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
                v90 = sub_22EFB605C();
                v88 = v84 - v90;
                if (__OFSUB__(v84, v90))
                {
                  goto LABEL_188;
                }
              }

              break;
            }

            v1 = *(v86 + v88);
            goto LABEL_164;
          }

LABEL_140:
          v64 = MEMORY[0x277D84F90];
LABEL_168:
          v113 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
          sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
          v98 = sub_22EFB646C();
          v1 = v99;
          sub_22EF708C8(v22, v21);

          if (v98 == 0xD000000000000018 && 0x800000022EFC6B30 == v1)
          {
          }

          else
          {
            v13 = sub_22EFB684C();

            if ((v13 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          goto LABEL_17;
        }

        if (v35 != 2)
        {
          goto LABEL_140;
        }

        sub_22EF70B68(v22, v21);
      }

      v41 = *(v22 + 16);
      v40 = *(v22 + 24);
      v36 = v40 - v41;
      if (__OFSUB__(v40, v41))
      {
        goto LABEL_199;
      }

      if (v36)
      {
        goto LABEL_137;
      }

      goto LABEL_140;
  }

  sub_22EFA0DF0(v18);
LABEL_7:
  result = 0;
LABEL_12:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_22EF89288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_modulesRequiringSlowPath);
  v95 = *(a1 + 112);
  v94 = &v95;
  if (sub_22EF83730(sub_22EFA8424, v93, v5))
  {
    v95 = *(a2 + 112);
    MEMORY[0x28223BE20]();
    v90[2] = &v95;
    if (sub_22EF83730(sub_22EFA8424, v90, v5))
    {
      return 0;
    }
  }

  v6 = objc_opt_self();
  *&v95 = sub_22EF83154(*(a1 + 112), *(a1 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
  sub_22EFB646C();

  v7 = sub_22EFB647C();

  v8 = [v6 isEMV_];

  if (v8)
  {
    *&v95 = sub_22EF83154(*(a2 + 112), *(a2 + 120));
    sub_22EFB646C();

    v9 = sub_22EFB647C();

    v10 = [v6 isEMV_];

    if (v10)
    {
      return 0;
    }
  }

  *&v95 = sub_22EF83154(*(a1 + 112), *(a1 + 120));
  sub_22EFB646C();

  v11 = sub_22EFB647C();

  v12 = [v6 isEMV_];

  if (v12)
  {
    v14 = *(a2 + 112);
    v13 = *(a2 + 120);
    v92 = a2;
    v15 = sub_22EFB648C();
    v17 = v16;
    sub_22EF70B68(v14, v13);
    v19 = sub_22EF7E630(v15, v17);
    v20 = v18;
    if (v13 >> 60 == 15)
    {
      if (v18 >> 60 == 15)
      {
        v21 = v14;
LABEL_47:
        v64 = v13;
LABEL_48:
        sub_22EF708B4(v21, v64);
        return 0;
      }

      goto LABEL_10;
    }

    if (v18 >> 60 == 15)
    {
LABEL_10:
      sub_22EF708B4(v14, v13);
      sub_22EF708B4(v19, v20);
      a2 = v92;
      goto LABEL_11;
    }

    sub_22EF70B68(v14, v13);
    sub_22EF70CB0(v19, v20);
    v91 = sub_22EF6E8C0(v14, v13, v19, v20);
    sub_22EF708B4(v19, v20);
    sub_22EF708B4(v19, v20);
    sub_22EF708C8(v14, v13);
    sub_22EF708B4(v14, v13);
    a2 = v92;
    if (v91)
    {
      return 0;
    }
  }

LABEL_11:
  *&v95 = sub_22EF83154(*(a2 + 112), *(a2 + 120));
  sub_22EFB646C();

  v22 = sub_22EFB647C();

  v23 = [v6 isEMV_];

  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = *(a1 + 112);
  v13 = *(a1 + 120);
  v25 = sub_22EFB648C();
  v27 = v26;
  sub_22EF70B68(v24, v13);
  v29 = sub_22EF7E630(v25, v27);
  v30 = v28;
  if (v13 >> 60 == 15)
  {
    if (v28 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  if (v28 >> 60 == 15)
  {
LABEL_16:
    sub_22EF708B4(v24, v13);
    sub_22EF708B4(v29, v30);
    goto LABEL_17;
  }

  sub_22EF70B68(v24, v13);
  sub_22EF70CB0(v29, v30);
  v66 = sub_22EF6E8C0(v24, v13, v29, v30);
  sub_22EF708B4(v29, v30);
  sub_22EF708B4(v29, v30);
  sub_22EF708C8(v24, v13);
  sub_22EF708B4(v24, v13);
  if (v66)
  {
    return 0;
  }

LABEL_17:
  v24 = *(a1 + 112);
  v13 = *(a1 + 120);
  v31 = sub_22EFB648C();
  v33 = v32;
  sub_22EF70B68(v24, v13);
  v35 = sub_22EF7E630(v31, v33);
  v36 = v34;
  if (v13 >> 60 == 15)
  {
    if (v34 >> 60 != 15)
    {
      goto LABEL_28;
    }

    sub_22EF708B4(v24, v13);
  }

  else
  {
    if (v34 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_22EF70B68(v24, v13);
    sub_22EF70CB0(v35, v36);
    v37 = sub_22EF6E8C0(v24, v13, v35, v36);
    sub_22EF708B4(v35, v36);
    sub_22EF708B4(v35, v36);
    sub_22EF708C8(v24, v13);
    sub_22EF708B4(v24, v13);
    if ((v37 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v24 = *(a2 + 112);
  v13 = *(a2 + 120);
  v38 = sub_22EFB648C();
  v40 = v39;
  sub_22EF70B68(v24, v13);
  v35 = sub_22EF7E630(v38, v40);
  v36 = v41;
  if (v13 >> 60 == 15)
  {
    if (v41 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (v41 >> 60 == 15)
  {
LABEL_28:
    sub_22EF708B4(v24, v13);
    sub_22EF708B4(v35, v36);
    goto LABEL_29;
  }

  sub_22EF70B68(v24, v13);
  sub_22EF70CB0(v35, v36);
  v86 = sub_22EF6E8C0(v24, v13, v35, v36);
  sub_22EF708B4(v35, v36);
  sub_22EF708B4(v35, v36);
  sub_22EF708C8(v24, v13);
  sub_22EF708B4(v24, v13);
  if (v86)
  {
    return 0;
  }

LABEL_29:
  v24 = *(a2 + 112);
  v13 = *(a2 + 120);
  v42 = sub_22EFB648C();
  v44 = v43;
  sub_22EF70B68(v24, v13);
  v46 = sub_22EF7E630(v42, v44);
  v47 = v45;
  if (v13 >> 60 == 15)
  {
    if (v45 >> 60 != 15)
    {
      goto LABEL_38;
    }

    sub_22EF708B4(v24, v13);
  }

  else
  {
    if (v45 >> 60 == 15)
    {
      goto LABEL_38;
    }

    sub_22EF70B68(v24, v13);
    sub_22EF70CB0(v46, v47);
    v48 = sub_22EF6E8C0(v24, v13, v46, v47);
    sub_22EF708B4(v46, v47);
    sub_22EF708B4(v46, v47);
    sub_22EF708C8(v24, v13);
    sub_22EF708B4(v24, v13);
    if ((v48 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v24 = *(a1 + 112);
  v13 = *(a1 + 120);
  v49 = sub_22EFB648C();
  v51 = v50;
  sub_22EF70B68(v24, v13);
  v46 = sub_22EF7E630(v49, v51);
  v47 = v52;
  if (v13 >> 60 == 15)
  {
    if (v52 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v52 >> 60 == 15)
  {
LABEL_38:
    sub_22EF708B4(v24, v13);
    sub_22EF708B4(v46, v47);
    goto LABEL_39;
  }

  sub_22EF70B68(v24, v13);
  sub_22EF70CB0(v46, v47);
  v87 = sub_22EF6E8C0(v24, v13, v46, v47);
  sub_22EF708B4(v46, v47);
  sub_22EF708B4(v46, v47);
  sub_22EF708C8(v24, v13);
  sub_22EF708B4(v24, v13);
  if (v87)
  {
    return 0;
  }

LABEL_39:
  v24 = *(a1 + 112);
  v13 = *(a1 + 120);
  v53 = sub_22EFB648C();
  v55 = v54;
  sub_22EF70B68(v24, v13);
  v57 = sub_22EF7E630(v53, v55);
  v58 = v56;
  if (v13 >> 60 == 15)
  {
    if (v56 >> 60 != 15)
    {
      goto LABEL_53;
    }

    sub_22EF708B4(v24, v13);
  }

  else
  {
    if (v56 >> 60 == 15)
    {
      goto LABEL_53;
    }

    sub_22EF70B68(v24, v13);
    sub_22EF70CB0(v57, v58);
    v59 = sub_22EF6E8C0(v24, v13, v57, v58);
    sub_22EF708B4(v57, v58);
    sub_22EF708B4(v57, v58);
    sub_22EF708C8(v24, v13);
    sub_22EF708B4(v24, v13);
    if ((v59 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v24 = *(a2 + 112);
  v13 = *(a2 + 120);
  v60 = sub_22EFB648C();
  v62 = v61;
  sub_22EF70B68(v24, v13);
  v57 = sub_22EF7E630(v60, v62);
  v58 = v63;
  if (v13 >> 60 == 15)
  {
    if (v63 >> 60 == 15)
    {
LABEL_46:
      v21 = v24;
      goto LABEL_47;
    }

    goto LABEL_53;
  }

  if (v63 >> 60 == 15)
  {
LABEL_53:
    sub_22EF708B4(v24, v13);
    sub_22EF708B4(v57, v58);
    goto LABEL_54;
  }

  sub_22EF70B68(v24, v13);
  sub_22EF70CB0(v57, v58);
  v88 = sub_22EF6E8C0(v24, v13, v57, v58);
  sub_22EF708B4(v57, v58);
  sub_22EF708B4(v57, v58);
  sub_22EF708C8(v24, v13);
  sub_22EF708B4(v24, v13);
  if (v88)
  {
    return 0;
  }

LABEL_54:
  v68 = *(a2 + 112);
  v67 = *(a2 + 120);
  v69 = sub_22EFB648C();
  v71 = v70;
  sub_22EF70B68(v68, v67);
  v73 = sub_22EF7E630(v69, v71);
  v74 = v72;
  if (v67 >> 60 != 15)
  {
    if (v72 >> 60 != 15)
    {
      sub_22EF70B68(v68, v67);
      sub_22EF70CB0(v73, v74);
      v77 = sub_22EF6E8C0(v68, v67, v73, v74);
      sub_22EF708B4(v73, v74);
      sub_22EF708B4(v73, v74);
      sub_22EF708C8(v68, v67);
      sub_22EF708B4(v68, v67);
      if ((v77 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_60;
    }

LABEL_58:
    sub_22EF708B4(v68, v67);
    v75 = v73;
    v76 = v74;
LABEL_65:
    sub_22EF708B4(v75, v76);
    return 1;
  }

  if (v72 >> 60 != 15)
  {
    goto LABEL_58;
  }

  sub_22EF708B4(v68, v67);
LABEL_60:
  v79 = *(a1 + 112);
  v78 = *(a1 + 120);
  v80 = sub_22EFB648C();
  v82 = v81;
  sub_22EF70B68(v79, v78);
  v84 = sub_22EF7E630(v80, v82);
  v85 = v83;
  if (v78 >> 60 == 15)
  {
    if (v83 >> 60 == 15)
    {
      v21 = v79;
      v64 = v78;
      goto LABEL_48;
    }

    goto LABEL_64;
  }

  if (v83 >> 60 == 15)
  {
LABEL_64:
    sub_22EF708B4(v79, v78);
    v75 = v84;
    v76 = v85;
    goto LABEL_65;
  }

  sub_22EF70B68(v79, v78);
  sub_22EF70CB0(v84, v85);
  v89 = sub_22EF6E8C0(v79, v78, v84, v85);
  sub_22EF708B4(v84, v85);
  sub_22EF708B4(v84, v85);
  sub_22EF708C8(v79, v78);
  sub_22EF708B4(v79, v78);
  return (v89 & 1) == 0;
}

uint64_t sub_22EF89E34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22EFB622C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v23[-v14];
  if (a2 >> 62 == 2)
  {
    v16 = *(a1 + 16);
  }

  sub_22EF70B68(a1, a2);
  sub_22EFB623C();
  if (a4 >> 62 == 2)
  {
    v17 = *(a3 + 16);
  }

  sub_22EF70B68(a3, a4);
  sub_22EFB623C();
  sub_22EFA80DC(&qword_27DA9E480, MEMORY[0x277CC92E0]);
  while (1)
  {
    sub_22EFB661C();
    if (v23[15])
    {
      v21 = *(v9 + 8);
      v21(v13, v8);
      sub_22EFB661C();
      v21(v15, v8);
      return v23[13];
    }

    v18 = v23[14];
    sub_22EFB661C();
    if (v23[11])
    {
      break;
    }

    if (v18 != v23[10])
    {
      v19 = *(v9 + 8);
      v19(v13, v8);
      v19(v15, v8);
      return 0;
    }
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  v22(v15, v8);
  return 1;
}

uint64_t sub_22EF8A0E4(uint64_t a1, int a2)
{
  LODWORD(v4) = a2;
  v219 = *MEMORY[0x277D85DE8];

  *&v206 = sub_22EFA0A40(v5);
  sub_22EF8DBE4(&v206);
  v202 = v2;
  if (v2)
  {
    goto LABEL_279;
  }

  LODWORD(v6) = v206 < 0 || (v206 & 0x4000000000000000) != 0;
  *&v194 = v206;
  if (v6 == 1)
  {
    goto LABEL_273;
  }

  v199 = *(v206 + 16);
LABEL_7:
  if ((v199 * 18) >> 64 != (18 * v199) >> 63)
  {
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
  }

  v217 = sub_22EF7E58C(18 * v199);
  v218 = v7;
  v203 = MEMORY[0x277D84FA0];
  v216 = xmmword_22EFBB8D0;
  if (v6)
  {
    v6 = v194;
    v8 = sub_22EFB67CC();
  }

  else
  {
    v6 = v194;
    v8 = *(v194 + 16);
  }

  v173 = v4;
  v192 = v6 & 0xC000000000000001;
  v4 = v8;
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    v10 = 0;
    while (1)
    {
      if (v192)
      {
        v3 = MEMORY[0x2318FB480](v10, v194);
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_243;
        }
      }

      else
      {
        if (v10 >= *(v194 + 16))
        {
          goto LABEL_244;
        }

        v3 = *(v194 + 8 * v10 + 32);

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          v199 = sub_22EFB67CC();
          goto LABEL_7;
        }
      }

      v11 = *(v3 + 80);
      v12 = *(v3 + 96);
      sub_22EFA0DA0(v11);

      if (v11 >= 3)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22EF7E30C(0, v9[2] + 1, 1, v9);
        }

        v3 = v9[2];
        v13 = v9[3];
        if (v3 >= v13 >> 1)
        {
          v9 = sub_22EF7E30C((v13 > 1), v3 + 1, 1, v9);
        }

        v9[2] = v3 + 1;
        v9[v3 + 4] = v11;
        if (v6 == v4)
        {
          goto LABEL_29;
        }

        v10 = v6;
      }

      else
      {
        sub_22EFA0DF0(v11);
        ++v10;
        if (v6 == v4)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_29:
  v6 = v9[2];
  v14 = MEMORY[0x277D84F90];
  v191 = v4;
  if (v6)
  {
    v15 = 0;
    v201 = v9 + 4;
    while (v15 < v9[2])
    {
      v3 = v201[v15];
      v16 = *(v3 + 16);
      v4 = *(v14 + 16);
      v17 = v4 + v16;
      if (__OFADD__(v4, v16))
      {
        goto LABEL_246;
      }

      v18 = v9;
      v19 = v201[v15];

      v20 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v17 > *(v14 + 24) >> 1)
      {
        if (v4 <= v17)
        {
          v22 = v4 + v16;
        }

        else
        {
          v22 = v4;
        }

        v20 = sub_22EF7E200(isUniquelyReferenced_nonNull_native, v22, 1, v14);
      }

      v4 = v191;
      if (*(v3 + 16))
      {
        if ((*(v20 + 3) >> 1) - *(v20 + 2) < v16)
        {
          goto LABEL_248;
        }

        swift_arrayInitWithCopy();

        v14 = v20;
        v9 = v18;
        if (v16)
        {
          v23 = *(v14 + 16);
          v24 = __OFADD__(v23, v16);
          v25 = v23 + v16;
          if (v24)
          {
            goto LABEL_258;
          }

          *(v14 + 16) = v25;
        }
      }

      else
      {

        v14 = v20;
        v9 = v18;
        if (v16)
        {
          goto LABEL_247;
        }
      }

      if (v6 == ++v15)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_245;
  }

LABEL_46:
  v200 = v14;

  v26 = sub_22EFA0E5C();
  v27 = MEMORY[0x2318FB1B0](v199, MEMORY[0x277CC9318], MEMORY[0x277D84C58], v26);
  v28 = v4;
  v4 = v27;
  if (!v28)
  {

    v176 = 0;
    v181 = 0x100000000;
    v174 = 0;
    v175 = 1;
    v177 = 1;
    v178 = 1;
    v6 = v202;
    goto LABEL_203;
  }

  v181 = 0x100000000;
  v174 = 0;
  v176 = 0;
  v29 = 0;
  v179 = 0x800000022EFC6B10;
  v180 = v194 + 32;
  *&v196 = v205 + 2;
  v197 = v204 + 2;
  v193 = xmmword_22EFBB8C0;
  v175 = 1;
  v177 = 1;
  v178 = 1;
  v6 = v202;
  while (1)
  {
    if (v192)
    {
      v201 = MEMORY[0x2318FB480](v29, v194);
      v24 = __OFADD__(v29++, 1);
      if (v24)
      {
        goto LABEL_257;
      }
    }

    else
    {
      if (v29 >= *(v194 + 16))
      {
        goto LABEL_266;
      }

      v201 = *(v180 + 8 * v29);

      v24 = __OFADD__(v29++, 1);
      if (v24)
      {
        goto LABEL_257;
      }
    }

    v30 = *(v4 + 16);
    v189 = v29;
    if (v30)
    {
      v31 = v201[4];
      v32 = v201[5];
      sub_22EF70B68(v31, v32);
      v33 = sub_22EFA9434(v31, v32);
      if (v34)
      {
        v190 = *(*(v4 + 56) + 2 * v33);
        sub_22EF708C8(v31, v32);
        v35 = MEMORY[0x277D84F90];
        goto LABEL_104;
      }

      sub_22EF708C8(v31, v32);
    }

    v36 = v218 >> 62;
    if ((v218 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v37 = 0;
        goto LABEL_73;
      }

      v39 = *(v217 + 16);
      v38 = *(v217 + 24);
      v37 = v38 - v39;
      if (__OFSUB__(v38, v39))
      {
        goto LABEL_269;
      }
    }

    else
    {
      if (!v36)
      {
        v37 = BYTE6(v218);
        goto LABEL_73;
      }

      if (__OFSUB__(HIDWORD(v217), v217))
      {
        goto LABEL_268;
      }

      v37 = HIDWORD(v217) - v217;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_261;
    }

    if (v37 >> 16)
    {
      goto LABEL_262;
    }

LABEL_73:
    v40 = v201[4];
    v41 = v201[5];
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        LOBYTE(v3) = 0;
        goto LABEL_86;
      }

      v45 = v40 + 16;
      v43 = *(v40 + 16);
      v44 = *(v45 + 8);
      v3 = v44 - v43;
      if (__OFSUB__(v44, v43))
      {
        goto LABEL_271;
      }
    }

    else
    {
      if (!v42)
      {
        v3 = HIWORD(v41);
        goto LABEL_86;
      }

      v24 = __OFSUB__(HIDWORD(v40), v40);
      v46 = HIDWORD(v40) - v40;
      if (v24)
      {
        goto LABEL_270;
      }

      v3 = v46;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_263;
    }

    if (v3 > 0xFF)
    {
      goto LABEL_264;
    }

LABEL_86:
    v190 = v37;
    if (v36 > 1)
    {
      v48 = v4;
      v47 = v6;
      if (v36 == 2)
      {
        v49 = *(v217 + 24);
      }
    }

    else
    {
      v47 = v6;
      v48 = v4;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    *(&v207 + 1) = v35;
    v50 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0);
    *&v208 = v50;
    LOBYTE(v206) = v3;
    LOBYTE(v204[0]) = *__swift_project_boxed_opaque_existential_1(&v206, v35);
    sub_22EFB616C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v206);
    v51 = v201;
    v52 = v201[4];
    v53 = v201[5];
    sub_22EF70B68(v52, v53);
    sub_22EFB61FC();
    sub_22EF708C8(v52, v53);
    v54 = sub_22EF8BB38(v51);
    v6 = v47;
    if (v47)
    {

      sub_22EF708C8(v216, *(&v216 + 1));
      goto LABEL_221;
    }

    if (v218 >> 62 == 2)
    {
      v55 = *(v217 + 24);
    }

    *(&v207 + 1) = v35;
    *&v208 = v50;
    LOBYTE(v206) = v54;
    LOBYTE(v204[0]) = *__swift_project_boxed_opaque_existential_1(&v206, v35);
    sub_22EFB616C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v206);
    v32 = v201[4];
    v56 = v201[5];
    sub_22EF70B68(v32, v56);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v206 = v48;
    LODWORD(v4) = v48;
    v57 = sub_22EFA9434(v32, v56);
    v59 = *(v48 + 16);
    v60 = (v58 & 1) == 0;
    v24 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v24)
    {
      goto LABEL_265;
    }

    v62 = v58;
    if (*(v48 + 24) < v61)
    {
      sub_22EF755E4(v61, v3);
      v57 = sub_22EFA9434(v32, v56);
      if ((v62 & 1) != (v63 & 1))
      {
        sub_22EFB687C();
        __break(1u);
LABEL_279:

        __break(1u);
        return result;
      }

LABEL_98:
      v4 = v206;
      if ((v62 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_99;
    }

    if (v3)
    {
      goto LABEL_98;
    }

    v3 = 0;
    v64 = v57;
    sub_22EF761AC();
    v57 = v64;
    v6 = 0;
    v4 = v206;
    if ((v62 & 1) == 0)
    {
LABEL_101:
      *(v4 + 8 * (v57 >> 6) + 64) |= 1 << v57;
      v65 = (*(v4 + 48) + 16 * v57);
      *v65 = v32;
      v65[1] = v56;
      *(*(v4 + 56) + 2 * v57) = v190;
      v66 = *(v4 + 16);
      v24 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v24)
      {
        goto LABEL_267;
      }

      *(v4 + 16) = v67;
      goto LABEL_103;
    }

LABEL_99:
    *(*(v4 + 56) + 2 * v57) = v190;
    sub_22EF708C8(v32, v56);
LABEL_103:
    v35 = MEMORY[0x277D84F90];
    v29 = v189;
LABEL_104:
    v68 = v201[10];
    if (!v68)
    {

      v177 = 0;
      LODWORD(v176) = v190;
      goto LABEL_49;
    }

    if (v68 == 1)
    {
      break;
    }

    if (v68 != 2)
    {
      v182 = v4;
      v202 = v6;
      v72 = v201[11];
      v73 = v201[12];
      v74 = *(v72 + 16);
      v187 = v68;

      v198 = v73;

      v199 = v72;
      if (v74)
      {
        v76 = (v72 + 32);
        v186 = v74 - 1;
        *&v195 = MEMORY[0x277D84F90];
        v77 = 0;
        while (v77 < *(v72 + 16))
        {
          v32 = &v172;
          v35 = v77 + 1;
          v206 = *&v76[4 * v77];
          *&v78 = MEMORY[0x28223BE20](v75);
          v171[2] = &v206;
          v79 = v78;
          v3 = v80;
          sub_22EF70B68(v78, v80);
          v81 = v202;
          v82 = sub_22EF83730(sub_22EFA0EB0, v171, v200);
          v202 = v81;
          if (v82)
          {
            v75 = sub_22EF708C8(v79, v3);
            ++v77;
            v72 = v199;
            if (v74 == v35)
            {
              goto LABEL_129;
            }
          }

          else
          {
            v83 = v195;
            v75 = swift_isUniquelyReferenced_nonNull_native();
            *&v204[0] = v83;
            if ((v75 & 1) == 0)
            {
              v75 = sub_22EF9AB68(0, *(v83 + 16) + 1, 1);
              v83 = *&v204[0];
            }

            v32 = *(v83 + 16);
            v84 = *(v83 + 24);
            v85 = v32 + 1;
            if (v32 >= v84 >> 1)
            {
              *&v195 = v32 + 1;
              v75 = sub_22EF9AB68((v84 > 1), v32 + 1, 1);
              v85 = v195;
              v83 = *&v204[0];
            }

            *(v83 + 16) = v85;
            *&v195 = v83;
            v86 = v83 + 16 * v32;
            *(v86 + 32) = v79;
            *(v86 + 40) = v3;
            v72 = v199;
            if (v186 == v77)
            {
              goto LABEL_129;
            }

            ++v77;
          }
        }

        __break(1u);
        goto LABEL_228;
      }

      *&v195 = MEMORY[0x277D84F90];
LABEL_129:
      *&v206 = v187;

      sub_22EF9B6DC(v195);
      v89 = *(v206 + 16);
      v90 = bswap32(v190);
      LODWORD(v185) = v90;
      v186 = v206;
      if (!v89)
      {
LABEL_156:

        v112 = v198;
        v113 = *(v198 + 16);
        if (v113)
        {
          v114 = WORD1(v185);
          v115 = 32;
          do
          {
            if (*(&v216 + 1) >> 62 == 2)
            {
              v120 = *(v216 + 24);
            }

            v3 = *(v112 + v115);
            v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
            *(&v207 + 1) = v116;
            *&v208 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0);
            LOBYTE(v206) = v3;
            LOBYTE(v204[0]) = *__swift_project_boxed_opaque_existential_1(&v206, v116);
            sub_22EFB616C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v206);
            LOWORD(v204[0]) = v114;
            *(&v207 + 1) = MEMORY[0x277D838B0];
            *&v208 = MEMORY[0x277CC9C18];
            *&v206 = v204;
            *(&v206 + 1) = v197;
            v117 = __swift_project_boxed_opaque_existential_1(&v206, MEMORY[0x277D838B0]);
            v119 = *v117;
            v118 = v117[1];
            sub_22EFB617C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v206);
            v112 = v198;
            ++v115;
            --v113;
          }

          while (v113);
        }

        v6 = v202;
        v4 = v182;
        v29 = v189;
        goto LABEL_49;
      }

      v91 = HIWORD(v90);
      v92 = (v206 + 40);
      LODWORD(v190) = HIWORD(v90);
      while (2)
      {
        v3 = *(v92 - 1);
        v93 = *v92;
        LOWORD(v205[0]) = v91;
        *(&v207 + 1) = MEMORY[0x277D838B0];
        *&v208 = MEMORY[0x277CC9C18];
        *&v206 = v205;
        *(&v206 + 1) = v196;
        v94 = __swift_project_boxed_opaque_existential_1(&v206, MEMORY[0x277D838B0]);
        v4 = *v94;
        if (*v94)
        {
          v95 = v94[1];
          v96 = v95 - v4;
          if (v95 == v4)
          {
            sub_22EF70B68(v3, v93);
            v4 = 0;
            goto LABEL_138;
          }

          if (v96 <= 14)
          {
            *(v204 + 6) = 0;
            *&v204[0] = 0;
            BYTE14(v204[0]) = v95 - v4;
            memcpy(v204, v4, v96);
            v4 = *&v204[0];
            v97 = v188 & 0xF00000000000000 | DWORD2(v204[0]) | ((WORD6(v204[0]) | (BYTE14(v204[0]) << 16)) << 32);
            sub_22EF70B68(v3, v93);
            v188 = v97;
          }

          else
          {
            v106 = sub_22EFB607C();
            v107 = *(v106 + 48);
            v108 = *(v106 + 52);
            swift_allocObject();
            sub_22EF70B68(v3, v93);
            v109 = sub_22EFB602C();
            v110 = v109;
            if (v96 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v4 = swift_allocObject();
              *(v4 + 16) = 0;
              *(v4 + 24) = v96;
              v97 = v110 | 0x8000000000000000;
            }

            else
            {
              v4 = v96 << 32;
              v97 = v109 | 0x4000000000000000;
            }
          }
        }

        else
        {
          sub_22EF70B68(v3, v93);
LABEL_138:
          v97 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v206);
        *&v204[0] = v3;
        *(&v204[0] + 1) = v93;
        *(&v207 + 1) = MEMORY[0x277CC9318];
        *&v208 = MEMORY[0x277CC9300];
        *&v206 = v4;
        *(&v206 + 1) = v97;
        v98 = __swift_project_boxed_opaque_existential_1(&v206, MEMORY[0x277CC9318]);
        v99 = *v98;
        v100 = v98[1];
        v101 = v100 >> 62;
        if ((v100 >> 62) > 1)
        {
          if (v101 != 2)
          {
            memset(v205, 0, 14);
            sub_22EF70B68(v3, v93);
            goto LABEL_132;
          }

          *&v195 = v89;
          v102 = v93;
          v104 = *(v99 + 16);
          v103 = *(v99 + 24);
          v6 = v3;
          v105 = v3;
          v3 = v102;
          sub_22EF70B68(v105, v102);
          LODWORD(v4) = v100;
          if (sub_22EFB603C())
          {
            LODWORD(v4) = v100;
            if (__OFSUB__(v104, sub_22EFB605C()))
            {
              goto LABEL_259;
            }
          }

          if (__OFSUB__(v103, v104))
          {
            goto LABEL_250;
          }
        }

        else
        {
          if (!v101)
          {
            v205[0] = *v98;
            LOWORD(v205[1]) = v100;
            BYTE2(v205[1]) = BYTE2(v100);
            BYTE3(v205[1]) = BYTE3(v100);
            BYTE4(v205[1]) = BYTE4(v100);
            BYTE5(v205[1]) = BYTE5(v100);
            sub_22EF70B68(v3, v93);
LABEL_132:
            sub_22EFB617C();
LABEL_133:
            v92 += 2;
            __swift_destroy_boxed_opaque_existential_0Tm(&v206);
            sub_22EF9BDD0(&v206, *&v204[0], *(&v204[0] + 1));
            sub_22EF708C8(v3, v93);
            sub_22EF708C8(v206, *(&v206 + 1));
            if (!--v89)
            {
              goto LABEL_156;
            }

            continue;
          }

          *&v195 = v89;
          v6 = v3;
          v3 = v93;
          v111 = v99;
          if (v99 >> 32 < v99)
          {
            goto LABEL_249;
          }

          sub_22EF70B68(v6, v93);
          if (sub_22EFB603C())
          {
            LODWORD(v4) = v100;
            if (__OFSUB__(v111, sub_22EFB605C()))
            {
              goto LABEL_260;
            }
          }
        }

        break;
      }

      sub_22EFB604C();
      sub_22EFB617C();
      LOWORD(v91) = v190;
      v93 = v3;
      v3 = v6;
      v89 = v195;
      goto LABEL_133;
    }

    v178 = 0;
    HIDWORD(v176) = v190;
LABEL_49:
    if (v29 == v191)
    {

LABEL_203:
      v35 = v217;
      v32 = v218;
      v144 = v218 >> 62;
      if ((v218 >> 62) > 1)
      {
        if (v144 != 2 || *(v217 + 16) == *(v217 + 24))
        {
          goto LABEL_216;
        }
      }

      else if (v144)
      {
        if (v217 == v217 >> 32)
        {
LABEL_216:

          v35 = sub_22EFAB164(&unk_2843B6D10);
          sub_22EF708C8(v216, *(&v216 + 1));
          goto LABEL_221;
        }
      }

      else if ((v218 & 0xFF000000000000) == 0)
      {
        goto LABEL_216;
      }

      v145 = sub_22EF973B0(v203);

      *&v206 = v145;
      sub_22EF8DB78(&v206);
      if (v6)
      {

        sub_22EF708C8(v216, *(&v216 + 1));
        goto LABEL_221;
      }

      v202 = sub_22EFA8518(v206);
      v3 = v146;
      v147 = [objc_opt_self() getExpressModeSettings];
      v148 = sub_22EFB642C();

      *&v204[0] = sub_22EFB648C();
      *(&v204[0] + 1) = v149;
      sub_22EFB668C();
      if (*(v148 + 16) && (v150 = sub_22EFA94F4(&v206), (v151 & 1) != 0))
      {
        sub_22EF76370(*(v148 + 56) + 32 * v150, v204);
        sub_22EFA0ECC(&v206);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
        if (swift_dynamicCast())
        {
          v152 = v205[0];
LABEL_219:
          *&v206 = v152;

          sub_22EF8DB78(&v206);
          v74 = 0;

          v155 = sub_22EFA8518(v206);
          v199 = v156;
          v200 = v155;
          v157 = sub_22EFAB164(&unk_2843B6D38);
          v197 = v158;
          v198 = v157;
          if (v173)
          {
            v159 = 3840;
          }

          else
          {
            v159 = 3328;
          }

          LODWORD(v195) = v159;
          v76 = retryWithBackoff__backoffTable;
          if (v177)
          {
            sub_22EF70B68(v35, v32);
            v160 = xmmword_22EFBB8E0;
LABEL_229:
            v196 = v160;
            if (v175)
            {
              v161 = *(v76 + 142);
            }

            else
            {
              LOWORD(v204[0]) = bswap32(v174) >> 16;
              sub_22EF743A4(v204, v204 + 2, &v206);
              v161 = v206;
            }

            v194 = v161;
            v201 = v3;
            if ((v181 & 0x100000000) != 0)
            {
              *&v193 = 0;
              v162 = 0xF000000000000000;
            }

            else
            {
              LOWORD(v204[0]) = bswap32(v181) >> 16;
              sub_22EF743A4(v204, v204 + 2, &v206);
              v162 = *(&v206 + 1);
              *&v193 = v206;
            }

            v4 = *(&v216 + 1);
            v124 = v216;
            LOWORD(v204[0]) = v195;
            sub_22EF70B68(v216, *(&v216 + 1));
            sub_22EF743A4(v204, v204 + 2, &v206);
            v163 = v206;
            if (v178)
            {
              v164 = xmmword_22EFBB8E0;
            }

            else
            {
              LOWORD(v204[0]) = bswap32(HIDWORD(v176)) >> 16;
              v195 = v206;
              sub_22EF743A4(v204, v204 + 2, &v206);
              v163 = v195;
              v164 = v206;
            }

            *&v206 = v35;
            *(&v206 + 1) = v32;
            v207 = v196;
            v208 = v194;
            *&v209 = v193;
            *(&v209 + 1) = v162;
            *&v210 = v202;
            *(&v210 + 1) = v201;
            *&v211 = v124;
            *(&v211 + 1) = v4;
            v212 = v163;
            v213 = v164;
            *&v214 = v200;
            *(&v214 + 1) = v199;
            *&v215 = v198;
            *(&v215 + 1) = v197;
            v205[3] = &type metadata for SEEMConfiguration;
            v205[4] = &off_2843B8428;
            v165 = swift_allocObject();
            v205[0] = v165;
            v166 = v213;
            v165[7] = v212;
            v165[8] = v166;
            v167 = v215;
            v165[9] = v214;
            v165[10] = v167;
            v168 = v209;
            v165[3] = v208;
            v165[4] = v168;
            v169 = v211;
            v165[5] = v210;
            v165[6] = v169;
            v170 = v207;
            v165[1] = v206;
            v165[2] = v170;
            sub_22EFA0F20(&v206, v204);
            v122 = sub_22EFACDD8(v205);
            if (!v74)
            {
              goto LABEL_242;
            }

            sub_22EF708C8(v124, v4);
            sub_22EFA0F7C(&v206);
            __swift_destroy_boxed_opaque_existential_0Tm(v205);
            goto LABEL_221;
          }

LABEL_228:
          LOWORD(v204[0]) = bswap32(v176) >> 16;
          sub_22EF70B68(v35, v32);
          sub_22EF743A4(v204, v204 + 2, &v206);
          v160 = v206;
          goto LABEL_229;
        }
      }

      else
      {

        sub_22EFA0ECC(&v206);
      }

      v152 = MEMORY[0x277D84F90];
      goto LABEL_219;
    }
  }

  v182 = v4;
  v202 = v6;
  v6 = v201[14];
  v69 = v201[15];
  v70 = v69 >> 62;
  v187 = HIDWORD(v6);
  if ((v69 >> 62) > 1)
  {
    if (v70 == 2)
    {
      v88 = *(v6 + 16);
      v87 = *(v6 + 24);
      v71 = v87 - v88;
      if (__OFSUB__(v87, v88))
      {
        goto LABEL_276;
      }

      if (v71)
      {
        goto LABEL_164;
      }
    }

    goto LABEL_191;
  }

  if (!v70)
  {
    v71 = BYTE6(v69);
    if (BYTE6(v69))
    {
      goto LABEL_164;
    }

LABEL_191:
    *&v206 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v138 = sub_22EFB646C();
    v140 = v139;

    v6 = v202;
    v4 = v182;
    if (v138 == 0xD000000000000014 && v179 == v140)
    {

      v29 = v189;
      v181 = v190;
    }

    else
    {
      v141 = sub_22EFB684C();

      v29 = v189;
      if (v141)
      {
        v142 = v190;
      }

      else
      {
        v142 = v181;
      }

      LODWORD(v181) = v142;
      HIDWORD(v181) &= v141 ^ 1;
      if (v141)
      {
        v143 = v174;
      }

      else
      {
        v143 = v190;
      }

      v174 = v143;
      v175 &= v141;
    }

    goto LABEL_49;
  }

  v121 = v187 - v6;
  if (__OFSUB__(v187, v6))
  {
    goto LABEL_275;
  }

  v71 = v121;
  if (!v121)
  {
    goto LABEL_191;
  }

LABEL_164:
  *&v204[0] = v35;
  v4 = v204;
  v122 = sub_22EF9AAC8(0, v71 & ~(v71 >> 63), 0);
  v186 = v6;
  if (v70)
  {
    if (v70 == 2)
    {
      v123 = *(v6 + 16);
    }

    else
    {
      v123 = v186;
    }
  }

  else
  {
    v123 = 0;
  }

  v199 = v123;
  if (v71 < 0)
  {
    goto LABEL_272;
  }

  v124 = 0;
  v35 = *&v204[0];
  v184 = v6 >> 32;
  v185 = BYTE6(v69);
  v183 = &v206 + v199;
  v198 = v69 >> 62;
  *&v195 = v71;
  while (2)
  {
    if (v124 < v71)
    {
      v3 = v124 + 1;
      if (__OFADD__(v124, 1))
      {
        goto LABEL_241;
      }

      v125 = v199 + v124;
      if (v70 == 2)
      {
        if (v125 < *(v6 + 16))
        {
          goto LABEL_252;
        }

        if (v125 >= *(v6 + 24))
        {
          goto LABEL_254;
        }

        v130 = sub_22EFB603C();
        if (!v130)
        {
          goto LABEL_278;
        }

        v127 = v130;
        LODWORD(v4) = v69;
        v131 = sub_22EFB605C();
        v129 = v125 - v131;
        if (__OFSUB__(v125, v131))
        {
          goto LABEL_256;
        }

LABEL_185:
        v4 = *(v127 + v129);
      }

      else
      {
        if (v70 == 1)
        {
          if (v125 < v186 || v125 >= v184)
          {
            goto LABEL_253;
          }

          v126 = sub_22EFB603C();
          if (!v126)
          {
            goto LABEL_277;
          }

          v127 = v126;
          LODWORD(v4) = v69;
          v128 = sub_22EFB605C();
          v129 = v125 - v128;
          if (__OFSUB__(v125, v128))
          {
            goto LABEL_255;
          }

          goto LABEL_185;
        }

        if (v125 >= v185)
        {
          goto LABEL_251;
        }

        LOWORD(v206) = v6;
        BYTE2(v206) = BYTE2(v6);
        BYTE3(v206) = BYTE3(v6);
        BYTE4(v206) = v187;
        BYTE5(v206) = BYTE5(v6);
        BYTE6(v206) = BYTE6(v6);
        BYTE7(v206) = HIBYTE(v6);
        WORD4(v206) = v69;
        BYTE10(v206) = BYTE2(v69);
        BYTE11(v206) = BYTE3(v69);
        BYTE12(v206) = BYTE4(v69);
        BYTE13(v206) = BYTE5(v69);
        v4 = v183[v124];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v132 = swift_allocObject();
      *(v132 + 16) = v193;
      *(v132 + 56) = MEMORY[0x277D84B78];
      *(v132 + 64) = MEMORY[0x277D84BC0];
      *(v132 + 32) = v4;
      v122 = sub_22EFB649C();
      *&v204[0] = v35;
      v135 = *(v35 + 16);
      v134 = *(v35 + 24);
      if (v135 >= v134 >> 1)
      {
        v4 = v204;
        v172 = v122;
        v137 = v133;
        sub_22EF9AAC8((v134 > 1), v135 + 1, 1);
        v133 = v137;
        v122 = v172;
        v35 = *&v204[0];
      }

      *(v35 + 16) = v135 + 1;
      v136 = v35 + 16 * v135;
      *(v136 + 32) = v122;
      *(v136 + 40) = v133;
      ++v124;
      v71 = v195;
      LODWORD(v70) = v198;
      if (v3 == v195)
      {
        goto LABEL_191;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  v35 = v122;
  sub_22EF708C8(v124, v4);
  sub_22EFA0F7C(&v206);
  __swift_destroy_boxed_opaque_existential_0Tm(v205);
LABEL_221:

  sub_22EF708C8(v217, v218);
  v153 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t sub_22EF8B9E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_22EF83154(*(*a1 + 32), *(*a1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
  v3 = sub_22EFB646C();
  v5 = v4;

  sub_22EF83154(*(v2 + 32), *(v2 + 40));
  v6 = sub_22EFB646C();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_22EFB684C();
  }

  return v9 & 1;
}

uint64_t sub_22EF8BB38(uint64_t a1)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = sub_22EFB648C();
  result = sub_22EF7E630(v5, v6);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v8;
    v11 = sub_22EF6E8C0(v3, v4, result, v8);
    sub_22EF708B4(v9, v10);
    if (v11)
    {
      return 4;
    }

    v27[3] = v1;
    v12 = objc_opt_self();
    v27[0] = sub_22EF83154(*(a1 + 32), *(a1 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    sub_22EFB646C();

    v13 = sub_22EFB647C();

    LOBYTE(v12) = [v12 supportsStepUp_];

    if (v12)
    {
      return 5;
    }

    v14 = objc_opt_self();
    v27[0] = sub_22EF83154(*(a1 + 32), *(a1 + 40));
    sub_22EFB646C();

    v15 = sub_22EFB647C();

    LOBYTE(v14) = [v14 supportsStepUp_];

    if (v14)
    {
      return 5;
    }

    else
    {
      v16 = *(a1 + 80);
      v17 = v16 >= 3;
      v18 = 0x10301u >> (8 * v16);
      if (v17)
      {
        result = 2;
      }

      else
      {
        result = v18;
      }

      if (*(a1 + 177))
      {
        return result | 0xFFFFFF80;
      }

      v19 = result;
      v20 = sub_22EF8FCF4();
      if (!v20)
      {
        return v19;
      }

      v21 = v20;
      sub_22EF83154(*(a1 + 32), *(a1 + 40));
      v22 = sub_22EFB646C();
      v24 = v23;

      v27[0] = v22;
      v27[1] = v24;
      MEMORY[0x28223BE20](v25);
      v26[2] = v27;
      LOBYTE(v22) = sub_22EF837E0(sub_22EFA0E40, v26, v21);

      result = v19;
      if (v22)
      {
        return result | 0xFFFFFF80;
      }
    }
  }

  return result;
}

uint64_t sub_22EF8BE44(uint64_t *a1)
{
  v3 = v1;
  *(v1 + 177) = 0;
  sub_22EF76370(a1, &v193);
  sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v193 = 0;
    v194 = 0xE000000000000000;
    sub_22EFB66DC();

    v193 = 0xD00000000000002DLL;
    v194 = 0x800000022EFC6B70;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    sub_22EF74470(v193, v194, 8, 0);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v192[0];
  v6 = sub_22EFB648C();
  v8 = sub_22EF8391C(v6, v7);
  if (v2)
  {

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
LABEL_7:
    type metadata accessor for ExpressMode.PassConfig();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v9 = v8;

  *(v3 + 162) = v9 & 1;
  v10 = sub_22EFB648C();
  v12 = sub_22EF8391C(v10, v11);

  *(v3 + 161) = v12 & 1;
  v13 = sub_22EFB648C();
  v17 = sub_22EF82BC8(v13, v14);
  v19 = v18;

  *(v3 + 16) = v17;
  *(v3 + 24) = v19;
  v20 = sub_22EFB648C();
  v22 = sub_22EF82BC8(v20, v21);
  v24 = v23;

  v25 = sub_22EF7E630(v22, v24);
  if (v26 >> 60 == 15)
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v193 = 0;
    v194 = 0xE000000000000000;
    sub_22EFB66DC();

    v193 = 0x412074656C707041;
    v194 = 0xEB00000000204449;
    MEMORY[0x2318FB260](v22, v24);

    MEMORY[0x2318FB260](0x20746F6E20736920, 0xEB00000000786568);
    sub_22EF74470(v193, v194, 8, 0);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v27 = *(v3 + 24);

    goto LABEL_7;
  }

  v208 = v24;
  *(v3 + 32) = v25;
  *(v3 + 40) = v26;
  v28 = v25;
  v29 = v26;
  v30 = sub_22EFB648C();
  v32 = v31;
  sub_22EF70B68(v28, v29);
  v33 = sub_22EF83B50(v30, v32);
  v35 = v34;
  v189 = v28;
  v36 = v33;
  v188 = v29;

  v187 = v36;
  if (v35)
  {

    v37 = v35;
    v38 = sub_22EF7E630(v36, v35);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0xF000000000000000;
  }

  *(v3 + 48) = v38;
  *(v3 + 56) = v39;
  v40 = sub_22EFB648C();
  v42 = sub_22EF83B50(v40, v41);
  v44 = v43;
  v45 = v42;

  if (v44)
  {

    v46 = sub_22EF7E630(v45, v44);
  }

  else
  {
    v46 = 0;
    v47 = 0xF000000000000000;
  }

  *(v3 + 64) = v46;
  *(v3 + 72) = v47;
  v48 = sub_22EFB648C();
  v50 = sub_22EF82BC8(v48, v49);
  v185 = v51;

  v52 = sub_22EFB648C();
  v57 = sub_22EF83D88(v52, v53, &qword_27DA9E028, 0x277CBEAC0, &qword_27DA9E728, &qword_22EFBD240);

  v58 = v57;
  v59 = v57;

  v183 = v58;
  sub_22EFA1FE4(v50, v185, v58);
  v179 = v59;
  *(v3 + 80) = v60;
  *(v3 + 88) = v61;
  *(v3 + 96) = v62;
  v63 = sub_22EFB648C();
  v182 = v5;
  v178 = sub_22EF83D88(v63, v64, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v178)
  {
    v65 = [v178 BOOLValue];
  }

  else
  {
    v65 = 0;
  }

  *(v3 + 104) = v65;
  v66 = sub_22EFB648C();
  v177 = sub_22EF83D88(v66, v67, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v177)
  {
    v68 = [v177 BOOLValue];
  }

  else
  {
    v68 = 0;
  }

  *(v3 + 176) = v68;
  v69 = sub_22EFB648C();
  v71 = sub_22EF83B50(v69, v70);
  v73 = v72;

  if (v73)
  {
    v74 = v73;
  }

  else
  {
    v71 = 0;
    v74 = 0xE000000000000000;
  }

  v174 = sub_22EF7E630(v71, v74);
  v175 = v75;
  if (v75 >> 60 == 15)
  {

    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v193 = 0;
    v194 = 0xE000000000000000;
    sub_22EFB66DC();

    v193 = 0xD000000000000011;
    v194 = 0x800000022EFC6C00;
    MEMORY[0x2318FB260](v71, v74);

    MEMORY[0x2318FB260](0x20746F6E20736920, 0xEB00000000786568);
    sub_22EF74470(v193, v194, 8, 0);
    swift_willThrow();

    sub_22EF708B4(v189, v188);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v54 = *(v3 + 24);

    sub_22EF708C8(*(v3 + 32), *(v3 + 40));
    sub_22EF708B4(*(v3 + 48), *(v3 + 56));
    sub_22EF708B4(*(v3 + 64), *(v3 + 72));
    v55 = *(v3 + 88);
    v56 = *(v3 + 96);
    sub_22EFA0DF0(*(v3 + 80));
    goto LABEL_7;
  }

  *(v3 + 112) = v174;
  *(v3 + 120) = v75;
  v76 = sub_22EFB648C();
  v78 = v77;
  sub_22EF70B68(v174, v175);
  v79 = sub_22EF83B50(v76, v78);
  v169 = v80;
  v81 = v79;

  if (v169)
  {

    v82 = sub_22EF7E630(v81, v169);
  }

  else
  {
    v82 = 0;
    v83 = 0xF000000000000000;
  }

  *(v3 + 128) = v82;
  *(v3 + 136) = v83;
  v84 = sub_22EFB648C();
  v172 = sub_22EF83FE0(v84, v85, &qword_27DA9E400, &unk_22EFBD180, &qword_27DA9E718, &qword_22EFBD230);

  if (v172)
  {
    v171 = *(v172 + 16);
    v86 = 0;
    v168 =  + 40;
    v87 = MEMORY[0x277D84F90];
LABEL_33:
    v88 = (v168 + 16 * v86);
    while (v171 != v86)
    {
      if (v86 >= *(v172 + 16))
      {
        __break(1u);
LABEL_72:

        if (qword_27DA9E058 == -1)
        {
LABEL_73:
          v118 = sub_22EFB626C();
          __swift_project_value_buffer(v118, qword_27DAA03B8);
          v119 = sub_22EFB624C();
          v120 = sub_22EFB65CC();
          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            *v121 = 0;
            _os_log_impl(&dword_22EEF5000, v119, v120, "No ecp2 info?? skipping", v121, 2u);
            MEMORY[0x2318FC200](v121, -1, -1);

            sub_22EF708B4(v187, v37);
            sub_22EF708B4(v174, v175);
            v122 = v179;
            goto LABEL_83;
          }

          sub_22EF708B4(v189, v188);
LABEL_91:

          sub_22EF708B4(v174, v175);
          sub_22EF708B4(v187, v37);

LABEL_92:
          __swift_destroy_boxed_opaque_existential_0Tm(a1);
LABEL_56:
          *(v3 + 168) = 0;
          return v3;
        }

LABEL_142:
        swift_once();
        goto LABEL_73;
      }

      ++v86;
      v89 = v88 + 2;
      v91 = *(v88 - 1);
      v90 = *v88;

      v92 = sub_22EF7E630(v91, v90);
      v88 = v89;
      if (v93 >> 60 != 15)
      {
        v94 = v92;
        v95 = v93;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_22EF7E200(0, *(v87 + 2) + 1, 1, v87);
        }

        v97 = *(v87 + 2);
        v96 = *(v87 + 3);
        v167 = v97 + 1;
        if (v97 >= v96 >> 1)
        {
          v87 = sub_22EF7E200((v96 > 1), v167, 1, v87);
        }

        *(v87 + 2) = v167;
        v98 = &v87[16 * v97];
        *(v98 + 4) = v94;
        *(v98 + 5) = v95;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v87 = 0;
  }

  *(v3 + 144) = v87;
  v99 = sub_22EFB648C();
  v171 = sub_22EF83D88(v99, v100, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v171)
  {
    v101 = [v171 integerValue];
  }

  else
  {
    v101 = 0;
  }

  *(v3 + 152) = v101;
  *(v3 + 160) = v171 == 0;
  v102 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC60D0);
  if (v103 >> 60 == 15)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
LABEL_88:
    v131 = sub_22EFB626C();
    __swift_project_value_buffer(v131, qword_27DAA03B8);
    v119 = sub_22EFB624C();
    v127 = sub_22EFB65AC();
    if (os_log_type_enabled(v119, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      v129 = "No associated readers found for pass, skipping";
LABEL_82:
      _os_log_impl(&dword_22EEF5000, v119, v127, v129, v128, 2u);
      MEMORY[0x2318FC200](v128, -1, -1);

      sub_22EF708B4(v187, v37);
      sub_22EF708B4(v174, v175);
      v122 = v208;
LABEL_83:

      v117 = v188;
      v116 = v189;
      goto LABEL_84;
    }

    goto LABEL_90;
  }

  v104 = v102;
  v105 = v103;
  v106 = sub_22EF6E8C0(v189, v188, v102, v103);
  sub_22EF708B4(v104, v105);
  if ((v106 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v189, v188);
    sub_22EF708B4(v174, v175);

LABEL_53:

    goto LABEL_56;
  }

  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v174, v175);
    goto LABEL_55;
  }

  v187 = sub_22EF7E630(v36, v37);
  if (v107 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v174, v175);

LABEL_55:

    sub_22EF708B4(v189, v188);
    goto LABEL_56;
  }

  v37 = v107;
  v108 = v107 >> 62;
  if ((v107 >> 62) <= 1)
  {
    if (!v108)
    {
      v109 = BYTE6(v107);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v108 != 2)
  {

    sub_22EF708B4(v189, v188);

    sub_22EF708B4(v174, v175);

    v116 = v187;
    v117 = v37;
LABEL_84:
    sub_22EF708B4(v116, v117);
    goto LABEL_92;
  }

  v111 = *(v187 + 16);
  v110 = *(v187 + 24);
  v112 = __OFSUB__(v110, v111);
  v109 = v110 - v111;
  if (v112)
  {
    __break(1u);
LABEL_64:
    LODWORD(v109) = HIDWORD(v187) - v187;
    if (__OFSUB__(HIDWORD(v187), v187))
    {
      __break(1u);
      goto LABEL_142;
    }

    v109 = v109;
  }

LABEL_66:
  if (v109 != 20)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v187, v37);

    sub_22EF708B4(v174, v175);

    sub_22EF708B4(v189, v188);
    goto LABEL_53;
  }

  if (!v183)
  {
    goto LABEL_72;
  }

  v113 = v179;

  v114 = sub_22EFB648C();
  v208 = v113;
  v123 = sub_22EF83FE0(v114, v115, &qword_27DA9E460, &unk_22EFBBCD0, &qword_27DA9E710, &qword_22EFBD228);

  if (!v123)
  {
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v126 = sub_22EFB626C();
    __swift_project_value_buffer(v126, qword_27DAA03B8);
    v119 = sub_22EFB624C();
    v127 = sub_22EFB65AC();
    if (os_log_type_enabled(v119, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      v129 = "No associatedReaderIdentifers key with found for pass, skipping";
      goto LABEL_82;
    }

LABEL_90:

    sub_22EF708B4(v189, v188);
    goto LABEL_91;
  }

  v201 = v123;
  v124 = sub_22EFB648C();
  v130 = sub_22EF83FE0(v124, v125, &qword_27DA9E460, &unk_22EFBBCD0, &qword_27DA9E710, &qword_22EFBD228);

  if (!v130)
  {

    if (qword_27DA9E058 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_148;
  }

  v200 = v130;
  sub_22EF8DC60(&v200);
  sub_22EF8DC60(&v201);
  v176 = v201;
  v180 = v200;
  v164 = v200 >> 62;
  v170 = v200 & 0xFFFFFFFFFFFFFF8;
  if (v200 >> 62)
  {
    v132 = sub_22EFB67CC();
  }

  else
  {
    v132 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v173 = 0;
  v181 = MEMORY[0x277D84F90];
LABEL_96:
  v133 = v173 + 4;
  while (1)
  {
    if (v133 - v132 == 4)
    {

      goto LABEL_120;
    }

    v134 = v133 - 4;
    if ((v180 & 0xC000000000000001) != 0)
    {
      v135 = MEMORY[0x2318FB480](v133 - 4, v180);
    }

    else
    {
      if (v134 >= *(v170 + 16))
      {
        goto LABEL_144;
      }

      v135 = *(v180 + 8 * v133);
    }

    v136 = v135;
    v173 = v133 - 3;
    if (__OFADD__(v134, 1))
    {
      goto LABEL_145;
    }

    if (!(v176 >> 62))
    {
      if (v134 == *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v134 == sub_22EFB67CC())
    {
      break;
    }

LABEL_104:
    if ((v176 & 0xC000000000000001) != 0)
    {
      v137 = MEMORY[0x2318FB480](v133 - 4, v176);
    }

    else
    {
      if (v134 >= *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v137 = *(v176 + 8 * v133);
    }

    v138 = v137;
    v139 = v136;
    v140 = v138;
    sub_22EF70CB0(v187, v37);
    sub_22EF6EA28(v139, v140, v187, v37, &v202);
    v141 = v202;
    v184 = v203;
    v165 = v205;
    v166 = v204;

    ++v133;
    if (v184 >> 60 != 15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v181 = sub_22EF7E464(0, *(v181 + 2) + 1, 1, v181);
      }

      v144 = *(v181 + 2);
      v143 = *(v181 + 3);
      if (v144 >= v143 >> 1)
      {
        v181 = sub_22EF7E464((v143 > 1), v144 + 1, 1, v181);
      }

      *(v181 + 2) = v144 + 1;
      v145 = &v181[56 * v144];
      *(v145 + 4) = v141;
      *(v145 + 40) = v184;
      *(v145 + 56) = v166;
      *(v145 + 72) = v165;
      goto LABEL_96;
    }
  }

LABEL_120:
  v199 = MEMORY[0x277D84FA0];
  v146 = *(v181 + 2);
  if (v146)
  {
    v147 = 0;
    v148 = v181 + 32;
    while (v147 < *(v181 + 2))
    {
      v149 = *v148;
      v150 = *(v148 + 1);
      v151 = *(v148 + 2);
      v207 = *(v148 + 6);
      v206[1] = v150;
      v206[2] = v151;
      v206[0] = v149;
      if (v199)
      {
        sub_22EF70CC4(v206, v192);
        sub_22EF9CB1C(&v193, v206);
        v152 = v195;
        v153 = v196;
        v190 = v197;
        v186 = v198;
        sub_22EF708C8(v193, v194);
        sub_22EF708C8(v152, v153);
        sub_22EF708C8(v190, v186);
      }

      ++v147;
      v148 += 56;
      if (v146 == v147)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_126:

  v154 = v199;
  *(v3 + 168) = v199;
  if (v154)
  {
    v155 = *(v154 + 16);
  }

  else
  {
    v155 = 0;
  }

  if (v164)
  {
    v156 = sub_22EFB67CC();
  }

  else
  {
    v156 = *(v170 + 16);
  }

  if (v154 && v155 == v156)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v189, v188);
    sub_22EF708B4(v174, v175);

    sub_22EF708B4(v187, v37);
  }

  else
  {
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v157 = sub_22EFB626C();
    __swift_project_value_buffer(v157, qword_27DAA03B8);

    v158 = sub_22EFB624C();
    v159 = sub_22EFB65CC();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      v193 = v191;
      *v160 = 136315138;
      v161 = *(v3 + 16);
      v162 = *(v3 + 24);

      v163 = sub_22EF9447C(v161, v162, &v193);

      *(v160 + 4) = v163;
      _os_log_impl(&dword_22EEF5000, v158, v159, "Pass %s has conflicts within itself", v160, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v191);
      MEMORY[0x2318FC200](v191, -1, -1);
      MEMORY[0x2318FC200](v160, -1, -1);

      sub_22EF708B4(v187, v37);
      sub_22EF708B4(v174, v175);

      sub_22EF708B4(v189, v188);
    }

    else
    {

      sub_22EF708B4(v189, v188);
      sub_22EF708B4(v174, v175);

      sub_22EF708B4(v187, v37);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_22EF8DB78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EFA0D14(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EF9746C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EF8DBE4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFA0D28(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22EF97564(v6);
  return sub_22EFB674C();
}

void sub_22EF8DC60(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_22EFA0D3C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_22EF97668(v4);
  *a1 = v2;
}

uint64_t sub_22EF8DCD8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_22EFB648C();
  sub_22EF82E7C(v5, v6, &v13);

  if (!v2)
  {
    v7 = v13;
    v8 = sub_22EFB648C();
    sub_22EF82E7C(v8, v9, &v12);

    v11 = v12;
    LOBYTE(v3) = sub_22EF71F2C(v7, *(&v7 + 1), v12, *(&v12 + 1));
    sub_22EF708C8(v7, *(&v7 + 1));
    sub_22EF708C8(v11, *(&v11 + 1));
  }

  return v3 & 1;
}

uint64_t sub_22EF8DDD8(uint64_t a1)
{
  v2 = v1;
  v114 = *MEMORY[0x277D85DE8];
  v3 = sub_22EFB651C();
  v5 = v4;
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4449657571696E55, 0xEE00202020202020);
  MEMORY[0x2318FB260](*(v2 + 16), *(v2 + 24));
  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x494174656C707061, 0xEE00202020202044);
  v6 = 0;
  v104 = sub_22EF83154(*(v2 + 32), *(v2 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
  v7 = sub_22EFB646C();
  v9 = v8;

  MEMORY[0x2318FB260](v7, v9);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x202020444979656BLL, 0xEE00202020202020);
  v10 = *(v1 + 56);
  if (v10 >> 60 == 15)
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v104 = sub_22EF83154(*(v1 + 48), v10);
    v13 = sub_22EFB646C();
    v11 = v14;

    v12 = v13;
  }

  MEMORY[0x2318FB260](v12, v11);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4449726564616572, 0xEE00202020202020);
  v15 = *(v2 + 72);
  if (v15 >> 60 == 15)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v104 = sub_22EF83154(*(v2 + 64), v15);
    v18 = sub_22EFB646C();
    v16 = v19;

    v17 = v18;
  }

  MEMORY[0x2318FB260](v17, v16);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4973736572707865, 0xEE002020206F666ELL);
  if (__OFADD__(a1, 1))
  {
    goto LABEL_106;
  }

  v21 = *(v2 + 88);
  v20 = *(v2 + 96);
  v95 = v2;
  v22 = *(v2 + 80);
  sub_22EFA0DA0(v22);
  v23 = sub_22EF8EA54(a1 + 1, v22, v21, v20);
  v25 = v24;
  sub_22EFA0DF0(v22);
  MEMORY[0x2318FB260](v23, v25);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x7078456277557369, 0xEE00202073736572);
  if (*(v2 + 161))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v2 + 161))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v26, v27);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x70784563664E7369, 0xEE00202073736572);
  if (*(v2 + 162))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v2 + 162))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v28, v29);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6F69737365536E69, 0xEE0020202020206ELL);
  if (*(v2 + 104))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v2 + 104))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v30, v31);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6843726573557369, 0xEE0020206563696FLL);
  if (*(v2 + 176))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v2 + 176))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  v34 = v2;
  MEMORY[0x2318FB260](v32, v33);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4941656C75646F6DLL, 0xEE00202020202044);
  v104 = sub_22EF83154(*(v34 + 112), *(v34 + 120));
  v35 = sub_22EFB646C();
  v37 = v36;

  MEMORY[0x2318FB260](v35, v37);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  v92 = v3;
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x61654870756F7267, 0xEE00202020202064);
  v38 = *(v2 + 136);
  if (v38 >> 60 == 15)
  {
    v39 = 0xE300000000000000;
    v40 = 7104878;
  }

  else
  {
    v104 = sub_22EF83154(*(v2 + 128), v38);
    v41 = sub_22EFB646C();
    v39 = v42;

    v40 = v41;
  }

  MEMORY[0x2318FB260](v40, v39);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6D654D70756F7267, 0xEE00202073726562);
  v43 = *(v2 + 144);
  if (v43)
  {
    v44 = *(v43 + 16);
    v45 = MEMORY[0x277D84F90];
    if (!v44)
    {
      goto LABEL_83;
    }

    v111 = MEMORY[0x277D84F90];
    v96 = v44;
    sub_22EF9AAC8(0, v44, 0);
    v46 = 0;
    v45 = v111;
    v94 = v43 + 32;
    v93 = v5;
    while (1)
    {
      v47 = (v94 + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      v50 = v48 >> 62;
      v101 = HIDWORD(*v47);
      v98 = v45;
      v99 = v6;
      v97 = v46;
      if ((v48 >> 62) > 1)
      {
        break;
      }

      if (v50)
      {
        if (__OFSUB__(v101, v49))
        {
          goto LABEL_105;
        }

        v51 = v101 - v49;
LABEL_47:
        sub_22EF70B68(v49, v48);
        goto LABEL_48;
      }

      v51 = BYTE6(v48);
LABEL_48:
      v54 = MEMORY[0x277D84F90];
      if (!v51)
      {
        goto LABEL_78;
      }

      v110 = MEMORY[0x277D84F90];
      sub_22EF9AAC8(0, v51 & ~(v51 >> 63), 0);
      if (v50)
      {
        if (v50 == 2)
        {
          v55 = *(v49 + 16);
        }

        else
        {
          v55 = v49;
        }
      }

      else
      {
        v55 = 0;
      }

      v103 = v55;
      if (v51 < 0)
      {
        goto LABEL_103;
      }

      v56 = 0;
      v54 = v110;
      v100 = &v104 + v55;
      do
      {
        if (v56 >= v51)
        {
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
        }

        v57 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_96;
        }

        v58 = v103 + v56;
        if (v50 == 2)
        {
          if (v58 < *(v49 + 16))
          {
            goto LABEL_98;
          }

          if (v58 >= *(v49 + 24))
          {
            goto LABEL_100;
          }

          v63 = sub_22EFB603C();
          if (!v63)
          {
            goto LABEL_108;
          }

          v60 = v63;
          v64 = sub_22EFB605C();
          v62 = v58 - v64;
          if (__OFSUB__(v58, v64))
          {
            goto LABEL_102;
          }

          goto LABEL_71;
        }

        if (v50 == 1)
        {
          if (v58 < v49 || v58 >= v49 >> 32)
          {
            goto LABEL_99;
          }

          v59 = sub_22EFB603C();
          if (!v59)
          {
            goto LABEL_107;
          }

          v60 = v59;
          v61 = sub_22EFB605C();
          v62 = v58 - v61;
          if (__OFSUB__(v58, v61))
          {
            goto LABEL_101;
          }

LABEL_71:
          v65 = *(v60 + v62);
          goto LABEL_74;
        }

        if (v58 >= BYTE6(v48))
        {
          goto LABEL_97;
        }

        LOWORD(v104) = v49;
        BYTE2(v104) = BYTE2(v49);
        BYTE3(v104) = BYTE3(v49);
        BYTE4(v104) = v101;
        BYTE5(v104) = BYTE5(v49);
        BYTE6(v104) = BYTE6(v49);
        HIBYTE(v104) = HIBYTE(v49);
        v105 = v48;
        v106 = BYTE2(v48);
        v107 = BYTE3(v48);
        v108 = BYTE4(v48);
        v109 = BYTE5(v48);
        v65 = v100[v56];
LABEL_74:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22EFBB8C0;
        *(v66 + 56) = MEMORY[0x277D84B78];
        *(v66 + 64) = MEMORY[0x277D84BC0];
        *(v66 + 32) = v65;
        v67 = sub_22EFB649C();
        v110 = v54;
        v70 = *(v54 + 16);
        v69 = *(v54 + 24);
        if (v70 >= v69 >> 1)
        {
          v91 = v67;
          v72 = v68;
          sub_22EF9AAC8((v69 > 1), v70 + 1, 1);
          v68 = v72;
          v67 = v91;
          v54 = v110;
        }

        *(v54 + 16) = v70 + 1;
        v71 = v54 + 16 * v70;
        *(v71 + 32) = v67;
        *(v71 + 40) = v68;
        ++v56;
      }

      while (v57 != v51);
      v5 = v93;
LABEL_78:
      v104 = v54;
      v73 = sub_22EFB646C();
      v75 = v74;

      sub_22EF708C8(v49, v48);
      v45 = v98;
      v111 = v98;
      v77 = *(v98 + 16);
      v76 = *(v98 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22EF9AAC8((v76 > 1), v77 + 1, 1);
        v45 = v111;
      }

      v46 = v97 + 1;
      *(v45 + 16) = v77 + 1;
      v78 = v45 + 16 * v77;
      *(v78 + 32) = v73;
      *(v78 + 40) = v75;
      v6 = v99;
      if (v97 + 1 == v96)
      {
        v34 = v95;
        goto LABEL_83;
      }
    }

    if (v50 != 2)
    {
      v54 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

    v53 = *(v49 + 16);
    v52 = *(v49 + 24);
    v51 = v52 - v53;
    if (__OFSUB__(v52, v53))
    {
      goto LABEL_104;
    }

    goto LABEL_47;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_83:
  v79 = MEMORY[0x2318FB2C0](v45, MEMORY[0x277D837D0]);
  v81 = v80;

  MEMORY[0x2318FB260](v79, v81);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v92, v5);
  MEMORY[0x2318FB260](0x79745370756F7267, 0xEE0020202020656CLL);
  v82 = *(v34 + 152);
  if (*(v34 + 160))
  {
    v82 = -1;
  }

  v104 = v82;
  v83 = sub_22EFB683C();
  MEMORY[0x2318FB260](v83);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v92, v5);
  MEMORY[0x2318FB260](0x74634170756F7267, 0xEE00202020207669);
  if (*(v34 + 177))
  {
    v84 = 1702195828;
  }

  else
  {
    v84 = 0x65736C6166;
  }

  if (*(v34 + 177))
  {
    v85 = 0xE400000000000000;
  }

  else
  {
    v85 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v84, v85);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v92, v5);

  MEMORY[0x2318FB260](0x4B7875416E6F796CLL, 0xEE00202020737965);
  v86 = *(v34 + 168);
  if (v86)
  {
    v87 = *(v86 + 16);
  }

  else
  {
    v87 = -1;
  }

  v104 = v87;
  v88 = sub_22EFB683C();
  MEMORY[0x2318FB260](v88);

  result = v112;
  v90 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF8EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22EFB651C();
  switch(a2)
  {
    case 0:
      v11 = v8;
      MEMORY[0x2318FB260](0x6163697553, 0xE500000000000000);
      return v11;
    case 1:
      v11 = v8;
      MEMORY[0x2318FB260](0x41636972656E6547, 0xE800000000000000);
      return v11;
    case 2:
      v11 = v8;
      MEMORY[0x2318FB260](0x796168746143, 0xE600000000000000);
      return v11;
  }

  v11 = v8;
  MEMORY[0x2318FB260](0xA3A32504345, 0xE600000000000000);
  result = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    v10 = sub_22EF8EC2C(result, a2, a3, a4);
    MEMORY[0x2318FB260](v10);

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_22EF8EB70()
{
  v1 = v0[3];

  sub_22EF708C8(v0[4], v0[5]);
  sub_22EF708B4(v0[6], v0[7]);
  sub_22EF708B4(v0[8], v0[9]);
  v2 = v0[11];
  v3 = v0[12];
  sub_22EFA0DF0(v0[10]);
  sub_22EF708C8(v0[14], v0[15]);
  sub_22EF708B4(v0[16], v0[17]);
  v4 = v0[18];

  v5 = v0[21];

  return v0;
}

uint64_t sub_22EF8EBD4()
{
  sub_22EF8EB70();

  return swift_deallocClassInstance();
}

uint64_t sub_22EF8EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v123 = *MEMORY[0x277D85DE8];
  v6 = sub_22EFB651C();
  v8 = v7;
  v121 = 0;
  v122 = 0xE000000000000000;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v6, v8);
  MEMORY[0x2318FB260](0x547972616D697270, 0xED0000203A734943);
  v9 = MEMORY[0x277D84F90];
  v10 = *(a2 + 16);
  v97 = v6;
  v98 = v8;
  if (v10)
  {
    v94 = a3;
    v120 = MEMORY[0x277D84F90];
    sub_22EF9AAC8(0, v10, 0);
    v11 = 0;
    v12 = v120;
    v101 = a2 + 32;
    v13 = v9;
    v99 = v10;
    while (1)
    {
      v14 = (v101 + 16 * v11);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      v109 = HIDWORD(*v14);
      v105 = v11;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      v103 = v12;
      if (v17)
      {
        if (__OFSUB__(v109, v16))
        {
          goto LABEL_117;
        }

        v18 = v109 - v16;
LABEL_13:
        sub_22EF70B68(v16, v15);
        if (!v18)
        {
LABEL_6:
          v19 = v13;
          goto LABEL_43;
        }

        goto LABEL_14;
      }

      v18 = BYTE6(v15);
      if (!BYTE6(v15))
      {
        goto LABEL_6;
      }

LABEL_14:
      v119 = v13;
      sub_22EF9AAC8(0, v18 & ~(v18 >> 63), 0);
      if (v17)
      {
        if (v17 == 2)
        {
          v22 = *(v16 + 16);
        }

        else
        {
          v22 = v16;
        }
      }

      else
      {
        v22 = 0;
      }

      v111 = v22;
      if (v18 < 0)
      {
        goto LABEL_114;
      }

      v23 = 0;
      v19 = v119;
      v107 = &v113 + v22;
      do
      {
        if (v23 >= v18)
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_99;
        }

        v25 = v111 + v23;
        if (v17 == 2)
        {
          if (v25 < *(v16 + 16))
          {
            goto LABEL_103;
          }

          if (v25 >= *(v16 + 24))
          {
            goto LABEL_105;
          }

          v30 = sub_22EFB603C();
          if (!v30)
          {
            goto LABEL_121;
          }

          v27 = v30;
          v31 = sub_22EFB605C();
          v29 = v25 - v31;
          if (__OFSUB__(v25, v31))
          {
            goto LABEL_107;
          }

          goto LABEL_36;
        }

        if (v17 == 1)
        {
          if (v25 < v16 || v25 >= v16 >> 32)
          {
            goto LABEL_104;
          }

          v26 = sub_22EFB603C();
          if (!v26)
          {
            goto LABEL_120;
          }

          v27 = v26;
          v28 = sub_22EFB605C();
          v29 = v25 - v28;
          if (__OFSUB__(v25, v28))
          {
            goto LABEL_106;
          }

LABEL_36:
          v32 = *(v27 + v29);
          goto LABEL_39;
        }

        if (v25 >= BYTE6(v15))
        {
          goto LABEL_102;
        }

        LOWORD(v113) = v16;
        BYTE2(v113) = BYTE2(v16);
        BYTE3(v113) = BYTE3(v16);
        BYTE4(v113) = v109;
        BYTE5(v113) = BYTE5(v16);
        BYTE6(v113) = BYTE6(v16);
        HIBYTE(v113) = HIBYTE(v16);
        v114 = v15;
        v115 = BYTE2(v15);
        v116 = BYTE3(v15);
        v117 = BYTE4(v15);
        v118 = BYTE5(v15);
        v32 = v107[v23];
LABEL_39:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_22EFBB8C0;
        *(v33 + 56) = MEMORY[0x277D84B78];
        *(v33 + 64) = MEMORY[0x277D84BC0];
        *(v33 + 32) = v32;
        v34 = sub_22EFB649C();
        v119 = v19;
        v37 = *(v19 + 16);
        v36 = *(v19 + 24);
        if (v37 >= v36 >> 1)
        {
          v93 = v34;
          v39 = v35;
          sub_22EF9AAC8((v36 > 1), v37 + 1, 1);
          v35 = v39;
          v34 = v93;
          v19 = v119;
        }

        *(v19 + 16) = v37 + 1;
        v38 = v19 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        ++v23;
      }

      while (v24 != v18);
      v13 = MEMORY[0x277D84F90];
LABEL_43:
      v10 = v99;
      v12 = v103;
LABEL_44:
      v113 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v40 = sub_22EFB646C();
      v42 = v41;
      sub_22EF708C8(v16, v15);

      v120 = v12;
      v44 = *(v12 + 16);
      v43 = *(v12 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22EF9AAC8((v43 > 1), v44 + 1, 1);
        v12 = v120;
      }

      v11 = v105 + 1;
      *(v12 + 16) = v44 + 1;
      v45 = v12 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      if (v105 + 1 == v10)
      {
        v6 = v97;
        v8 = v98;
        a3 = v94;
        goto LABEL_49;
      }
    }

    if (v17 != 2)
    {
      v19 = v13;
      goto LABEL_44;
    }

    v103 = v12;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v18 = v20 - v21;
    if (__OFSUB__(v20, v21))
    {
      goto LABEL_116;
    }

    goto LABEL_13;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_49:
  v46 = MEMORY[0x2318FB2C0](v12, MEMORY[0x277D837D0]);
  v48 = v47;

  MEMORY[0x2318FB260](v46, v48);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v6, v8);
  MEMORY[0x2318FB260](0x203A494354787561, 0xED00002020202020);
  v49 = *(a3 + 16);
  v50 = MEMORY[0x277D84F90];
  if (!v49)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_97;
  }

  v120 = MEMORY[0x277D84F90];
  sub_22EF9AAC8(0, v49, 0);
  v51 = 0;
  v52 = v120;
  v102 = a3 + 32;
  v53 = v50;
  v54 = v49;
  v100 = v49;
  do
  {
    v55 = (v102 + 16 * v51);
    v57 = *v55;
    v56 = v55[1];
    v58 = v56 >> 62;
    v110 = HIDWORD(*v55);
    v104 = v51;
    v106 = v52;
    if ((v56 >> 62) > 1)
    {
      if (v58 != 2)
      {
        v60 = v53;
        goto LABEL_92;
      }

      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      v59 = v61 - v62;
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_118;
      }

      goto LABEL_61;
    }

    if (v58)
    {
      if (__OFSUB__(v110, v57))
      {
        goto LABEL_119;
      }

      v59 = v110 - v57;
LABEL_61:
      sub_22EF70B68(v57, v56);
      if (!v59)
      {
LABEL_54:
        v60 = v53;
        goto LABEL_91;
      }

      goto LABEL_62;
    }

    v59 = BYTE6(v56);
    if (!BYTE6(v56))
    {
      goto LABEL_54;
    }

LABEL_62:
    v119 = v53;
    sub_22EF9AAC8(0, v59 & ~(v59 >> 63), 0);
    if (v58)
    {
      if (v58 == 2)
      {
        v63 = *(v57 + 16);
      }

      else
      {
        v63 = v57;
      }
    }

    else
    {
      v63 = 0;
    }

    v112 = v63;
    if (v59 < 0)
    {
      goto LABEL_115;
    }

    v64 = 0;
    v60 = v119;
    v108 = &v113 + v63;
    do
    {
      if (v64 >= v59)
      {
        goto LABEL_100;
      }

      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_101;
      }

      v66 = v112 + v64;
      if (v58 == 2)
      {
        if (v66 < *(v57 + 16))
        {
          goto LABEL_109;
        }

        if (v66 >= *(v57 + 24))
        {
          goto LABEL_111;
        }

        v71 = sub_22EFB603C();
        if (!v71)
        {
          goto LABEL_123;
        }

        v68 = v71;
        v72 = sub_22EFB605C();
        v70 = v66 - v72;
        if (__OFSUB__(v66, v72))
        {
          goto LABEL_113;
        }

        goto LABEL_84;
      }

      if (v58 == 1)
      {
        if (v66 < v57 || v66 >= v57 >> 32)
        {
          goto LABEL_110;
        }

        v67 = sub_22EFB603C();
        if (!v67)
        {
          goto LABEL_122;
        }

        v68 = v67;
        v69 = sub_22EFB605C();
        v70 = v66 - v69;
        if (__OFSUB__(v66, v69))
        {
          goto LABEL_112;
        }

LABEL_84:
        v73 = *(v68 + v70);
        goto LABEL_87;
      }

      if (v66 >= BYTE6(v56))
      {
        goto LABEL_108;
      }

      LOWORD(v113) = v57;
      BYTE2(v113) = BYTE2(v57);
      BYTE3(v113) = BYTE3(v57);
      BYTE4(v113) = v110;
      BYTE5(v113) = BYTE5(v57);
      BYTE6(v113) = BYTE6(v57);
      HIBYTE(v113) = HIBYTE(v57);
      v114 = v56;
      v115 = BYTE2(v56);
      v116 = BYTE3(v56);
      v117 = BYTE4(v56);
      v118 = BYTE5(v56);
      v73 = v108[v64];
LABEL_87:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_22EFBB8C0;
      *(v74 + 56) = MEMORY[0x277D84B78];
      *(v74 + 64) = MEMORY[0x277D84BC0];
      *(v74 + 32) = v73;
      v75 = sub_22EFB649C();
      v119 = v60;
      v78 = *(v60 + 16);
      v77 = *(v60 + 24);
      if (v78 >= v77 >> 1)
      {
        v95 = v75;
        v80 = v76;
        sub_22EF9AAC8((v77 > 1), v78 + 1, 1);
        v76 = v80;
        v75 = v95;
        v60 = v119;
      }

      *(v60 + 16) = v78 + 1;
      v79 = v60 + 16 * v78;
      *(v79 + 32) = v75;
      *(v79 + 40) = v76;
      ++v64;
    }

    while (v65 != v59);
    v53 = MEMORY[0x277D84F90];
LABEL_91:
    v54 = v100;
LABEL_92:
    v113 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v81 = sub_22EFB646C();
    v83 = v82;
    sub_22EF708C8(v57, v56);

    v52 = v106;
    v120 = v106;
    v85 = *(v106 + 16);
    v84 = *(v106 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_22EF9AAC8((v84 > 1), v85 + 1, 1);
      v52 = v120;
    }

    v51 = v104 + 1;
    *(v52 + 16) = v85 + 1;
    v86 = v52 + 16 * v85;
    *(v86 + 32) = v81;
    *(v86 + 40) = v83;
  }

  while (v104 + 1 != v54);
  v6 = v97;
  v8 = v98;
LABEL_97:
  v87 = MEMORY[0x2318FB2C0](v52, MEMORY[0x277D837D0]);
  v89 = v88;

  MEMORY[0x2318FB260](v87, v89);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v6, v8);

  MEMORY[0x2318FB260](0x646F437466696873, 0xED000020203A7365);
  v90 = MEMORY[0x2318FB2C0](a4, MEMORY[0x277D84B78]);
  MEMORY[0x2318FB260](v90);

  result = v121;
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_22EF8F6AC(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return !v5;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2[2];
  v10 = a1[1];
  v9 = a1[2];
  return (sub_22EF8F768(v4, v5) & 1) != 0 && (sub_22EF8F768(v10, v8) & 1) != 0 && (sub_22EF8FB74(v9, v7) & 1) != 0;
}

uint64_t sub_22EF8F768(uint64_t a1, uint64_t a2)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2 && a1 != a2)
    {
      v3 = 0;
      v4 = (a1 + 40);
      v5 = (a2 + 40);
      while (1)
      {
        v7 = *(v4 - 1);
        v6 = *v4;
        v9 = *(v5 - 1);
        v8 = *v5;
        v10 = *v4 >> 62;
        v11 = *v5 >> 62;
        if (v10 == 3)
        {
          break;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v20 = *(v7 + 16);
            v19 = *(v7 + 24);
            v17 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

          v13 = 0;
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

        else if (v10)
        {
          LODWORD(v13) = HIDWORD(v7) - v7;
          if (__OFSUB__(HIDWORD(v7), v7))
          {
            goto LABEL_64;
          }

          v13 = v13;
          if (v11 <= 1)
          {
LABEL_29:
            if (v11)
            {
              LODWORD(v18) = HIDWORD(v9) - v9;
              if (__OFSUB__(HIDWORD(v9), v9))
              {
                __break(1u);
LABEL_62:
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
LABEL_68:
                __break(1u);
              }

              v18 = v18;
            }

            else
            {
              v18 = BYTE6(v8);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v13 = BYTE6(v6);
          if (v11 <= 1)
          {
            goto LABEL_29;
          }
        }

LABEL_22:
        if (v11 != 2)
        {
          if (v13)
          {
            goto LABEL_58;
          }

          goto LABEL_6;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v17 = __OFSUB__(v15, v16);
        v18 = v15 - v16;
        if (v17)
        {
          goto LABEL_62;
        }

LABEL_33:
        if (v13 != v18)
        {
          goto LABEL_58;
        }

        if (v13 < 1)
        {
          goto LABEL_6;
        }

        if (v10 > 1)
        {
          if (v10 == 2)
          {
            v32 = v3;
            v21 = *(v7 + 16);
            v31 = *(v7 + 24);
            sub_22EF70B68(v7, v6);
            sub_22EF70B68(v9, v8);
            v22 = sub_22EFB603C();
            if (v22)
            {
              v23 = sub_22EFB605C();
              if (__OFSUB__(v21, v23))
              {
                goto LABEL_67;
              }

              v22 += v21 - v23;
            }

            if (__OFSUB__(v31, v21))
            {
              goto LABEL_66;
            }

            sub_22EFB604C();
            v24 = v22;
            v25 = v9;
            v26 = v8;
            v3 = v32;
            goto LABEL_54;
          }

          memset(v34, 0, 14);
          sub_22EF70B68(v7, v6);
          sub_22EF70B68(v9, v8);
        }

        else
        {
          if (v10)
          {
            if (v7 >> 32 < v7)
            {
              goto LABEL_65;
            }

            sub_22EF70B68(v7, v6);
            sub_22EF70B68(v9, v8);
            v27 = sub_22EFB603C();
            if (v27)
            {
              v28 = sub_22EFB605C();
              if (__OFSUB__(v7, v28))
              {
                goto LABEL_68;
              }

              v27 += v7 - v28;
            }

            sub_22EFB604C();
            v24 = v27;
            v25 = v9;
            v26 = v8;
LABEL_54:
            sub_22EF92D44(v24, v25, v26, v34);
            sub_22EF708C8(v9, v8);
            sub_22EF708C8(v7, v6);
            if ((v34[0] & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_6;
          }

          v34[0] = *(v4 - 1);
          LOWORD(v34[1]) = v6;
          BYTE2(v34[1]) = BYTE2(v6);
          BYTE3(v34[1]) = BYTE3(v6);
          BYTE4(v34[1]) = BYTE4(v6);
          BYTE5(v34[1]) = BYTE5(v6);
          sub_22EF70B68(v7, v6);
          sub_22EF70B68(v9, v8);
        }

        sub_22EF92D44(v34, v9, v8, &v33);
        sub_22EF708C8(v9, v8);
        sub_22EF708C8(v7, v6);
        if (!v33)
        {
          goto LABEL_58;
        }

LABEL_6:
        v4 += 2;
        v5 += 2;
        if (!--v2)
        {
          goto LABEL_59;
        }
      }

      if (v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v6 == 0xC000000000000000;
      }

      v13 = 0;
      v14 = v12 && *v5 >> 62 == 3;
      if (v14 && !v9 && v8 == 0xC000000000000000)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (v11 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_22;
    }

LABEL_59:
    result = 1;
  }

  else
  {
LABEL_58:
    result = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF8FB74(uint64_t result, uint64_t a2)
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

uint64_t sub_22EF8FBE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_22EF8F768(*a1, *a2) & 1) == 0 || (sub_22EF8F768(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_22EF8FB74(v3, v5);
}

id sub_22EF8FC60()
{
  result = [objc_allocWithZone(type metadata accessor for ExpressMode()) init];
  qword_281477D70 = result;
  return result;
}

uint64_t sub_22EF8FC90()
{
  if (qword_27DA9E398 != -1)
  {
    swift_once();
  }

  qword_27DA9E698 = qword_27DA9E6A0;
}

uint64_t sub_22EF8FCF4()
{
  if (*(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild) != 1)
  {
    return 0;
  }

  if ([*(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) objectForKey_])
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_22EF7CFF8(v5, &qword_27DA9E4B0, &qword_22EFBBE60);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_22EF8FDE8(void *a1)
{
  v2 = v1;
  v46[1] = *MEMORY[0x277D85DE8];
  if ((byte_27DAA0408 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22EFBCE00;
    *(v4 + 32) = -3200;
    *(v4 + 34) = 2;
    v5 = v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild];
    if (v5 == 1 && ([*&v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_] & 1) != 0)
    {
      v6 = 90;
    }

    else
    {
      v6 = -91;
    }

    *(v4 + 35) = v6;
    v7 = sub_22EFAB164(v4);
    v9 = v8;

    v10 = sub_22EFB61BC();
    v46[0] = 0;
    v11 = [a1 transceive:v10 error:v46];

    v12 = v46[0];
    if (v11)
    {
      v13 = sub_22EFB61DC();
      sub_22EF708C8(v13, v14);
    }

    else
    {
      v15 = v12;
      v16 = sub_22EFB60EC();

      swift_willThrow();
    }

    byte_27DAA0408 = 1;
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v17 = sub_22EFB626C();
    __swift_project_value_buffer(v17, qword_27DAA03B8);
    v18 = v2;
    v19 = sub_22EFB624C();
    v20 = sub_22EFB65EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      v22 = v5 && ([*&v18[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_] & 1) != 0;
      *(v21 + 4) = v22;

      _os_log_impl(&dword_22EEF5000, v19, v20, "Configured express debug : enabled %{BOOL}d", v21, 8u);
      MEMORY[0x2318FC200](v21, -1, -1);
    }

    else
    {
    }

    sub_22EF708C8(v7, v9);
  }

  if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild] == 1 && [*&v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_])
  {
    v23 = sub_22EFAB164(&unk_2843B6D60);
    v25 = v24;
    v26 = sub_22EFB61BC();
    v46[0] = 0;
    v27 = [a1 transceive:v26 error:v46];

    v28 = v46[0];
    if (v27)
    {
      v29 = sub_22EFB61DC();
      v31 = v30;
    }

    else
    {
      v32 = v28;
      v33 = sub_22EFB60EC();

      swift_willThrow();
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v34 = sub_22EFB626C();
    __swift_project_value_buffer(v34, qword_27DAA03B8);
    sub_22EF70CB0(v29, v31);
    v35 = sub_22EFB624C();
    v36 = sub_22EFB65EC();
    sub_22EF708B4(v29, v31);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46[0] = v38;
      *v37 = 136315138;
      if (v31 >> 60 == 15)
      {
        v39 = 0xE700000000000000;
        v40 = 0x3E726F7272653CLL;
      }

      else
      {
        v45 = v25;
        sub_22EF83154(v29, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v41 = sub_22EFB646C();
        v39 = v42;

        v40 = v41;
        v25 = v45;
      }

      v43 = sub_22EF9447C(v40, v39, v46);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_22EEF5000, v35, v36, "Express Mode Debug Log: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x2318FC200](v38, -1, -1);
      MEMORY[0x2318FC200](v37, -1, -1);
      sub_22EF708C8(v23, v25);
      sub_22EF708B4(v29, v31);
    }

    else
    {
      sub_22EF708C8(v23, v25);

      sub_22EF708B4(v29, v31);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EF90388()
{
  v1 = *v0;
  sub_22EFB68DC();
  MEMORY[0x2318FB660](v1);
  return sub_22EFB691C();
}

uint64_t sub_22EF903FC()
{
  v1 = *v0;
  sub_22EFB68DC();
  MEMORY[0x2318FB660](v1);
  return sub_22EFB691C();
}

uint64_t sub_22EF90440(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EFAB164(a1);
  v6 = v5;
  v27 = *v2;
  v24 = v4;
  v25 = v5;
  v7 = MEMORY[0x277CC9318];
  v8 = MEMORY[0x277CC9300];
  v22 = MEMORY[0x277CC9318];
  v23 = MEMORY[0x277CC9300];
  *v21 = *v2;
  v9 = __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277CC9318]);
  v10 = *v9;
  v11 = v9[1];
  sub_22EF70B68(v4, v6);
  sub_22EFA8080(&v27, v26);
  sub_22EF9F87C(v10, v11);
  sub_22EF708C8(v4, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  v12 = v24;
  v13 = v25;
  v14 = sub_22EFAB164(a2);
  v16 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v22 = v7;
  v23 = v8;
  v21[0] = v14;
  v21[1] = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v21, v7);
  v18 = *v17;
  v19 = v17[1];
  sub_22EF70B68(v12, v13);
  sub_22EF70B68(v14, v16);
  sub_22EF9F87C(v18, v19);
  sub_22EF708C8(v14, v16);
  sub_22EF708C8(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  return v26[0];
}

uint64_t sub_22EF90580()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22EFB68DC();
  sub_22EFB61EC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v5);
  return sub_22EFB691C();
}

uint64_t sub_22EF90600()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22EFB61EC();
  sub_22EFB61EC();
  return MEMORY[0x2318FB660](v5);
}

uint64_t sub_22EF90654()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22EFB68DC();
  sub_22EFB61EC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v5);
  return sub_22EFB691C();
}

uint64_t sub_22EF906D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if ((sub_22EF6E8C0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  if (sub_22EF6E8C0(v2, v3, v5, v6))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

void *sub_22EF90750()
{
  type metadata accessor for ExpressMode.PTAExpressModeManager();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  result[2] = MEMORY[0x277D84FA0];
  result[3] = v1;
  result[4] = v1;
  qword_27DA9E6A0 = result;
  return result;
}

uint64_t sub_22EF90790(unint64_t a1, char a2, uint64_t a3)
{
  v3 = a1;
  v70 = *MEMORY[0x277D85DE8];
  v63 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_89;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_90:
    result = MEMORY[0x277D84FA0];
    goto LABEL_91;
  }

LABEL_3:
  v5 = 0;
  v57 = v3 & 0xC000000000000001;
  v50 = v3 + 32;
  v51 = v3 & 0xFFFFFFFFFFFFFF8;
  v54 = a3 & 1;
  v53 = v3;
  v52 = v4;
  while (1)
  {
    while (1)
    {
      if (v57)
      {
        v6 = MEMORY[0x2318FB480](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v5 >= *(v51 + 16))
        {
          goto LABEL_86;
        }

        v6 = *(v50 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_84;
        }
      }

      v8 = v6[4];
      v9 = v6[5];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          v12 = MEMORY[0x277D84F90];
          goto LABEL_51;
        }

        v58 = v6;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v11 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_87;
        }

        if (v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v58 = v6;
        if (!v10)
        {
          v11 = BYTE6(v9);
          if (BYTE6(v9))
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v16 = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_88;
        }

        v11 = v16;
        if (v16)
        {
LABEL_18:
          v61 = MEMORY[0x277D84F90];
          sub_22EF9AAC8(0, v11 & ~(v11 >> 63), 0);
          if (v10)
          {
            if (v10 == 2)
            {
              v15 = *(v8 + 16);
            }

            else
            {
              v15 = v8;
            }
          }

          else
          {
            v15 = 0;
          }

          v60 = v15;
          if (v11 < 0)
          {
            goto LABEL_85;
          }

          v56 = v5;
          v17 = 0;
          v12 = v61;
          v59 = &v64 + v15;
          while (2)
          {
            if (v17 >= v11)
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v46 = a3;
              v47 = sub_22EFB67CC();
              a3 = v46;
              v4 = v47;
              if (!v47)
              {
                goto LABEL_90;
              }

              goto LABEL_3;
            }

            v3 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_77;
            }

            v18 = v60 + v17;
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                if (v18 < v8 || v18 >= v8 >> 32)
                {
                  goto LABEL_80;
                }

                v19 = sub_22EFB603C();
                if (!v19)
                {
                  __break(1u);
LABEL_93:
                  __break(1u);
                }

                v20 = v19;
                v21 = sub_22EFB605C();
                v22 = v18 - v21;
                if (__OFSUB__(v18, v21))
                {
                  goto LABEL_82;
                }

LABEL_43:
                v25 = *(v20 + v22);
              }

              else
              {
                if (v18 >= BYTE6(v9))
                {
                  goto LABEL_78;
                }

                v64 = v8;
                LOWORD(v65) = v9;
                BYTE2(v65) = BYTE2(v9);
                BYTE3(v65) = BYTE3(v9);
                BYTE4(v65) = BYTE4(v9);
                BYTE5(v65) = BYTE5(v9);
                v25 = v59[v17];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_22EFBB8C0;
              *(v26 + 56) = MEMORY[0x277D84B78];
              *(v26 + 64) = MEMORY[0x277D84BC0];
              *(v26 + 32) = v25;
              v27 = sub_22EFB649C();
              v62 = v12;
              v30 = *(v12 + 16);
              v29 = *(v12 + 24);
              if (v30 >= v29 >> 1)
              {
                v49 = v27;
                v32 = v28;
                sub_22EF9AAC8((v29 > 1), v30 + 1, 1);
                v28 = v32;
                v27 = v49;
                v12 = v62;
              }

              *(v12 + 16) = v30 + 1;
              v31 = v12 + 16 * v30;
              *(v31 + 32) = v27;
              *(v31 + 40) = v28;
              ++v17;
              LODWORD(v10) = v9 >> 62;
              if (v3 == v11)
              {
                v4 = v52;
                v3 = v53;
                v5 = v56;
                goto LABEL_50;
              }

              continue;
            }

            break;
          }

          if (v18 < *(v8 + 16))
          {
            goto LABEL_79;
          }

          if (v18 >= *(v8 + 24))
          {
            goto LABEL_81;
          }

          v23 = sub_22EFB603C();
          if (!v23)
          {
            goto LABEL_93;
          }

          v20 = v23;
          v24 = sub_22EFB605C();
          v22 = v18 - v24;
          if (__OFSUB__(v18, v24))
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }
      }

LABEL_14:
      v12 = MEMORY[0x277D84F90];
LABEL_50:
      v6 = v58;
LABEL_51:
      v64 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      sub_22EFB646C();

      v33 = sub_22EFB680C();

      if (v33)
      {
        if (v33 == 1)
        {
          v34 = 0xD000000000000018;
          v35 = "A00000085802010100000001";
        }

        else
        {
          if (v33 != 2)
          {
            goto LABEL_4;
          }

          v34 = 0xD000000000000012;
          v35 = "A00000085801010100000001";
        }
      }

      else
      {
        v34 = 0xD000000000000018;
        v35 = "Pin Max retries exhausted";
      }

      if (a2)
      {
        if (a2 == 1)
        {
          v36 = 0xD000000000000018;
        }

        else
        {
          v36 = 0xD000000000000012;
        }

        v37 = "A00000085802010100000001";
        if (a2 != 1)
        {
          v37 = "A00000085801010100000001";
        }
      }

      else
      {
        v36 = 0xD000000000000018;
        v37 = "Pin Max retries exhausted";
      }

      if (v34 == v36 && (v35 | 0x8000000000000000) == (v37 | 0x8000000000000000))
      {

        break;
      }

      v38 = sub_22EFB684C();

      if (v38)
      {
        break;
      }

LABEL_4:

      if (v5 == v4)
      {
        goto LABEL_72;
      }
    }

    v39 = v6[7];
    if (v39 >> 60 == 15)
    {

      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EF74470(0xD00000000000002ALL, 0x800000022EFC6E60, 8, 0);
      swift_willThrow();
      goto LABEL_75;
    }

    v40 = v6[6];
    v41 = v6[9];
    if (v41 >> 60 == 15)
    {
      break;
    }

    v42 = v6[8];
    v68[0] = v6[6];
    v68[1] = v39;
    v68[2] = v42;
    v68[3] = v41;
    v69 = v54;
    sub_22EF70CB0(v40, v39);
    sub_22EF70CB0(v42, v41);
    sub_22EF70CB0(v40, v39);
    sub_22EF70CB0(v42, v41);
    sub_22EF9C258(&v64, v68);

    sub_22EF708B4(v42, v41);
    sub_22EF708B4(v40, v39);
    v43 = v66;
    v44 = v67;
    sub_22EF708C8(v64, v65);
    sub_22EF708C8(v43, v44);
    if (v5 == v4)
    {
LABEL_72:
      result = v63;
      goto LABEL_91;
    }
  }

  sub_22EF70B68(v40, v39);

  sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
  sub_22EF74470(0xD00000000000002DLL, 0x800000022EFC6E90, 8, 0);
  swift_willThrow();
  sub_22EF708B4(v40, v39);
LABEL_75:

LABEL_91:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF90F34(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_22EF708C8(v12, v13))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LOBYTE(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v15[0] = *v10;
    v15[1] = v11;
    v16 = v9;
    sub_22EFA8018(v15, v14);
    sub_22EF9C258(v14, v15);
    v12 = v14[2];
    v13 = v14[3];
    sub_22EF708C8(v14[0], v14[1]);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22EF91050(char a1, id a2)
{
  v128 = *MEMORY[0x277D85DE8];
  v4 = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 16;
    }

    else
    {
      v5 = 32;
    }

    if (a1 == 1)
    {
      v6 = "A00000085802010100000001";
    }

    else
    {
      v4 = 0xD000000000000012;
      v6 = "A00000085801010100000001";
    }
  }

  else
  {
    v6 = "Pin Max retries exhausted";
    v5 = 24;
  }

  v7 = *(v2 + v5);

  v8 = sub_22EF7E630(v4, v6 | 0x8000000000000000);
  if (v9 >> 60 == 15)
  {
    goto LABEL_97;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_22EFB61BC();
  v13 = SelectByNameCmd(v12);

  v14 = sub_22EFB61DC();
  v16 = v15;

  v17 = sub_22EFB61BC();
  sub_22EF708C8(v14, v16);
  v123 = 0;
  v18 = [a2 transceiveAndCheckSW:v17 error:&v123];

  v19 = v123;
  if (!v18)
  {
    v97 = v19;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v10, v11);
    goto LABEL_80;
  }

  v20 = sub_22EFB61DC();
  sub_22EF708C8(v20, v21);

  v22 = sub_22EFAB164(&unk_2843B6F08);
  v24 = v23;
  v25 = sub_22EFB61BC();
  v123 = 0;
  v26 = [a2 transceiveAndCheckSW:v25 error:&v123];

  v27 = v123;
  if (!v26)
  {
    v98 = v27;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v10, v11);
    sub_22EF708C8(v22, v24);
    goto LABEL_80;
  }

  v104 = v24;
  v28 = sub_22EFB61DC();
  sub_22EF708C8(v28, v29);

  v30 = 0;
  v106 = v7 + 56;
  v31 = 1 << *(v7 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v7 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v11;
  v105 = v11;
  v111 = a2;
  v112 = v10;
  v109 = v22;
  v110 = v7;
  v107 = v34;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (!v33)
        {
          do
          {
            v36 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
              goto LABEL_83;
            }

            if (v36 >= v34)
            {
              sub_22EF708B4(v10, v35);
              sub_22EF708C8(v22, v104);

              goto LABEL_80;
            }

            v33 = *(v106 + 8 * v36);
            ++v30;
          }

          while (!v33);
          v30 = v36;
        }

        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = *(v7 + 48) + 40 * (v37 | (v30 << 6));
        v40 = *v38;
        v39 = *(v38 + 16);
        v127 = *(v38 + 32);
        v126[0] = v40;
        v126[1] = v39;
        if (v127)
        {
          continue;
        }

        break;
      }

      v113 = v33;
      sub_22EFA8018(v126, &v123);
      if (qword_27DA9E058 != -1)
      {
        swift_once();
      }

      v41 = sub_22EFB626C();
      __swift_project_value_buffer(v41, qword_27DAA03B8);
      sub_22EFA8018(v126, &v123);
      v42 = sub_22EFB624C();
      v43 = sub_22EFB65EC();
      sub_22EFA8050(v126);
      v108 = v43;
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_65;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v122 = v45;
      buf = v44;
      *v44 = 136315138;
      v120 = *(&v126[0] + 1);
      v46 = *&v126[0];
      v47 = *(&v126[0] + 1) >> 62;
      log = v42;
      v101 = v45;
      if ((*(&v126[0] + 1) >> 62) > 1)
      {
        if (v47 != 2)
        {
          v54 = MEMORY[0x277D84F90];
          goto LABEL_64;
        }

        v100 = v30;
        v50 = *(*&v126[0] + 16);
        v49 = *(*&v126[0] + 24);
        v48 = v49 - v50;
        if (__OFSUB__(v49, v50))
        {
          goto LABEL_93;
        }

        if (!v48)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v100 = v30;
        if (!v47)
        {
          v48 = BYTE14(v126[0]);
          if (!BYTE14(v126[0]))
          {
            goto LABEL_36;
          }

          goto LABEL_31;
        }

        v53 = DWORD1(v126[0]) - LODWORD(v126[0]);
        if (__OFSUB__(DWORD1(v126[0]), v126[0]))
        {
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
        }

        v48 = v53;
        if (!v53)
        {
LABEL_36:
          v54 = MEMORY[0x277D84F90];
          goto LABEL_63;
        }
      }

LABEL_31:
      v121 = MEMORY[0x277D84F90];
      v118 = *(&v126[0] + 1) >> 62;
      sub_22EF9AAC8(0, v48 & ~(v48 >> 63), 0);
      v51 = v118;
      v116 = v46;
      if (v118)
      {
        if (v118 == 2)
        {
          v52 = *(v46 + 16);
        }

        else
        {
          v52 = v46;
        }
      }

      else
      {
        v52 = 0;
      }

      v119 = v52;
      if (v48 < 0)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      v55 = 0;
      v115 = v46 >> 32;
      v56 = v120;
      v54 = v121;
      v114 = &v123 + v52;
      v117 = v46;
      do
      {
        if (v55 >= v48)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_85;
        }

        v58 = v119 + v55;
        if (v51 == 2)
        {
          if (v58 < *(v46 + 16))
          {
            goto LABEL_86;
          }

          if (v58 >= *(v46 + 24))
          {
            goto LABEL_89;
          }

          v63 = sub_22EFB603C();
          if (!v63)
          {
            goto LABEL_96;
          }

          v60 = v63;
          v64 = sub_22EFB605C();
          v62 = v58 - v64;
          if (__OFSUB__(v58, v64))
          {
            goto LABEL_91;
          }

          goto LABEL_56;
        }

        if (v51 == 1)
        {
          if (v58 < v116 || v58 >= v115)
          {
            goto LABEL_88;
          }

          v59 = sub_22EFB603C();
          if (!v59)
          {
            goto LABEL_95;
          }

          v60 = v59;
          v61 = sub_22EFB605C();
          v62 = v58 - v61;
          if (__OFSUB__(v58, v61))
          {
            goto LABEL_90;
          }

LABEL_56:
          v65 = *(v60 + v62);
          goto LABEL_59;
        }

        if (v58 >= BYTE6(v120))
        {
          goto LABEL_87;
        }

        v123 = v46;
        v124 = v56;
        v125 = WORD2(v56);
        v65 = v114[v55];
LABEL_59:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22EFBB8C0;
        *(v66 + 56) = MEMORY[0x277D84B78];
        *(v66 + 64) = MEMORY[0x277D84BC0];
        *(v66 + 32) = v65;
        v67 = sub_22EFB649C();
        v69 = v68;
        v71 = v121[2];
        v70 = v121[3];
        if (v71 >= v70 >> 1)
        {
          sub_22EF9AAC8((v70 > 1), v71 + 1, 1);
        }

        v121[2] = v71 + 1;
        v72 = &v121[2 * v71];
        v72[4] = v67;
        v72[5] = v69;
        ++v55;
        v46 = v117;
        v51 = v118;
        v56 = v120;
      }

      while (v57 != v48);
      v35 = v105;
LABEL_63:
      v30 = v100;
LABEL_64:
      v123 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
      v73 = sub_22EFB646C();
      v75 = v74;

      v76 = sub_22EF9447C(v73, v75, &v122);

      *(buf + 4) = v76;
      v42 = log;
      _os_log_impl(&dword_22EEF5000, log, v108, "Setup Endpoint for persistent CL visibility over Identifier: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v101);
      MEMORY[0x2318FC200](v101, -1, -1);
      MEMORY[0x2318FC200](buf, -1, -1);
LABEL_65:

      v7 = sub_22EF90440(&unk_2843B6EB8, &unk_2843B6EE0);
      v78 = v77;
      v79 = sub_22EFB61BC();
      if (qword_27DA9E360 != -1)
      {
        swift_once();
      }

      sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
      v80 = sub_22EFB653C();
      v123 = 0;
      a2 = [v111 transceiveAndCheckSW:v79 inArray:v80 error:&v123];

      v81 = v123;
      if (a2)
      {
        v82 = sub_22EFB61DC();
        v84 = v83;
        sub_22EF708C8(v7, v78);
        sub_22EFA8050(v126);
        sub_22EF708C8(v82, v84);

        v10 = v112;
        v33 = v113;
        v22 = v109;
        v7 = v110;
        v34 = v107;
        continue;
      }

      break;
    }

    v85 = v81;
    v86 = sub_22EFB60EC();

    swift_willThrow();
    v123 = v86;
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E760, &unk_22EFBD278);
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v35 = v78;
      v88 = v86;
      a2 = v122;
      v89 = [v122 domain];
      v90 = sub_22EFB648C();
      v92 = v91;

      if (v90 == 5002305 && v92 == 0xE300000000000000)
      {

        goto LABEL_74;
      }

      v93 = sub_22EFB684C();

      if (v93)
      {
LABEL_74:

        v94 = sub_22EFB624C();
        v95 = sub_22EFB65CC();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_22EEF5000, v94, v95, "Setup Failed.. continue", v96, 2u);
          MEMORY[0x2318FC200](v96, -1, -1);
        }

        sub_22EF708C8(v7, v35);

        sub_22EFA8050(v126);
        v10 = v112;
        v33 = v113;
        v22 = v109;
        v7 = v110;
        v34 = v107;
        v35 = v105;
        continue;
      }

LABEL_83:

      sub_22EF708B4(v112, v105);
      sub_22EF708C8(v109, v104);
      sub_22EF708C8(v7, v35);

      sub_22EFA8050(v126);
    }

    else
    {

      sub_22EF708B4(v112, v35);
      sub_22EF708C8(v109, v104);
      sub_22EF708C8(v7, v78);
      sub_22EFA8050(v126);
    }

    break;
  }

LABEL_80:
  v99 = *MEMORY[0x277D85DE8];
}

void sub_22EF91B70(char a1, void *a2)
{
  v129 = *MEMORY[0x277D85DE8];
  v4 = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = "A00000085802010100000001";
    }

    else
    {
      v4 = 0xD000000000000012;
      v5 = "A00000085801010100000001";
    }
  }

  else
  {
    v5 = "Pin Max retries exhausted";
  }

  v6 = *(v2 + 32);

  v7 = sub_22EF7E630(v4, v5 | 0x8000000000000000);
  if (v8 >> 60 == 15)
  {
    goto LABEL_94;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_22EFB61BC();
  v12 = SelectByNameCmd(v11);

  v13 = sub_22EFB61DC();
  v15 = v14;

  v16 = sub_22EFB61BC();
  sub_22EF708C8(v13, v15);
  v124 = 0;
  v17 = [a2 transceiveAndCheckSW:v16 error:&v124];

  v18 = v124;
  if (!v17)
  {
    v96 = v18;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v9, v10);
    goto LABEL_76;
  }

  v19 = sub_22EFB61DC();
  sub_22EF708C8(v19, v20);

  v21 = sub_22EFAB164(&unk_2843B6F80);
  v23 = v22;
  v24 = sub_22EFB61BC();
  v124 = 0;
  v25 = [a2 transceiveAndCheckSW:v24 error:&v124];

  v26 = v124;
  if (!v25)
  {
    v97 = v26;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v9, v10);
    sub_22EF708C8(v21, v23);
    goto LABEL_76;
  }

  v102 = v10;
  v27 = sub_22EFB61DC();
  sub_22EF708C8(v27, v28);

  v29 = 0;
  v30 = v6;
  v103 = v6 + 56;
  v31 = 1 << *(v6 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v6 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v112;
  v109 = v9;
  v110 = v30;
  v107 = v23;
  v108 = a2;
  v106 = v21;
  v104 = v34;
  while (2)
  {
    while (2)
    {
      if (v33)
      {
        goto LABEL_17;
      }

      do
      {
        v36 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        if (v36 >= v34)
        {
          sub_22EF708B4(v9, v102);
          sub_22EF708C8(v21, v23);

          goto LABEL_76;
        }

        v33 = *(v103 + 8 * v36);
        ++v29;
      }

      while (!v33);
      v29 = v36;
LABEL_17:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = *(v30 + 48) + 40 * (v37 | (v29 << 6));
      v40 = *v38;
      v39 = *(v38 + 16);
      v128 = *(v38 + 32);
      v127[0] = v40;
      v127[1] = v39;
      if (v128 != 1)
      {
        continue;
      }

      break;
    }

    v111 = v33;
    sub_22EFA8018(v127, &v124);
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v41 = sub_22EFB626C();
    __swift_project_value_buffer(v41, qword_27DAA03B8);
    sub_22EFA8018(v127, &v124);
    v42 = sub_22EFB624C();
    v43 = sub_22EFB65EC();
    sub_22EFA8050(v127);
    v105 = v43;
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_60;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v123 = v45;
    buf = v44;
    log = v42;
    *v44 = 136315138;
    v46 = *&v127[0];
    v47 = *(&v127[0] + 1) >> 62;
    v99 = v45;
    if ((*(&v127[0] + 1) >> 62) > 1)
    {
      if (v47 != 2)
      {
        goto LABEL_33;
      }

      v50 = *(*&v127[0] + 16);
      v49 = *(*&v127[0] + 24);
      v48 = v49 - v50;
      if (__OFSUB__(v49, v50))
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!v47)
      {
        v48 = BYTE14(v127[0]);
        if (!BYTE14(v127[0]))
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      v53 = DWORD1(v127[0]) - LODWORD(v127[0]);
      if (__OFSUB__(DWORD1(v127[0]), v127[0]))
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
      }

      v48 = v53;
      if (!v53)
      {
LABEL_33:
        v54 = MEMORY[0x277D84F90];
        goto LABEL_59;
      }
    }

LABEL_28:
    v119 = *(&v127[0] + 1);
    v122 = MEMORY[0x277D84F90];
    v120 = *(&v127[0] + 1) >> 62;
    sub_22EF9AAC8(0, v48 & ~(v48 >> 63), 0);
    v51 = v120;
    v116 = v46;
    if (v120)
    {
      if (v120 == 2)
      {
        v52 = *(v46 + 16);
      }

      else
      {
        v52 = v46;
      }
    }

    else
    {
      v52 = 0;
    }

    v121 = v52;
    v113 = v35;
    if (v48 < 0)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v55 = 0;
    v54 = v122;
    v56 = v119;
    v115 = v46 >> 32;
    v114 = &v124 + v52;
    v117 = v48;
    v118 = v46;
    do
    {
      if (v55 >= v48)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_82;
      }

      v58 = v121 + v55;
      if (v51 == 2)
      {
        if (v58 < *(v46 + 16))
        {
          goto LABEL_83;
        }

        if (v58 >= *(v46 + 24))
        {
          goto LABEL_86;
        }

        v63 = sub_22EFB603C();
        if (!v63)
        {
          goto LABEL_93;
        }

        v60 = v63;
        v64 = sub_22EFB605C();
        v62 = v58 - v64;
        if (__OFSUB__(v58, v64))
        {
          goto LABEL_88;
        }

        goto LABEL_52;
      }

      if (v51 == 1)
      {
        if (v58 < v116 || v58 >= v115)
        {
          goto LABEL_85;
        }

        v59 = sub_22EFB603C();
        if (!v59)
        {
          goto LABEL_92;
        }

        v60 = v59;
        v61 = sub_22EFB605C();
        v62 = v58 - v61;
        if (__OFSUB__(v58, v61))
        {
          goto LABEL_87;
        }

LABEL_52:
        v65 = *(v60 + v62);
        goto LABEL_55;
      }

      if (v58 >= BYTE6(v119))
      {
        goto LABEL_84;
      }

      v124 = v46;
      v125 = v56;
      v126 = WORD2(v56);
      v65 = v114[v55];
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_22EFBB8C0;
      *(v66 + 56) = MEMORY[0x277D84B78];
      *(v66 + 64) = MEMORY[0x277D84BC0];
      *(v66 + 32) = v65;
      v67 = sub_22EFB649C();
      v69 = v68;
      v71 = v122[2];
      v70 = v122[3];
      if (v71 >= v70 >> 1)
      {
        sub_22EF9AAC8((v70 > 1), v71 + 1, 1);
      }

      v122[2] = v71 + 1;
      v72 = &v122[2 * v71];
      v72[4] = v67;
      v72[5] = v69;
      ++v55;
      v48 = v117;
      v46 = v118;
      v56 = v119;
      v51 = v120;
    }

    while (v57 != v117);
    v35 = v113;
LABEL_59:
    v124 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v73 = sub_22EFB646C();
    v75 = v74;

    v76 = sub_22EF9447C(v73, v75, &v123);

    *(buf + 4) = v76;
    v42 = log;
    _os_log_impl(&dword_22EEF5000, log, v105, "Setup Endpoint for persistent BT visibility over Identifier: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    MEMORY[0x2318FC200](v99, -1, -1);
    MEMORY[0x2318FC200](buf, -1, -1);
LABEL_60:

    a2 = sub_22EF90440(&unk_2843B6F30, &unk_2843B6F58);
    v30 = v77;
    v78 = sub_22EFB61BC();
    if (qword_27DA9E360 != -1)
    {
      swift_once();
    }

    sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
    v79 = sub_22EFB653C();
    v124 = 0;
    v80 = [v108 transceiveAndCheckSW:v78 inArray:v79 error:&v124];

    v81 = v124;
    if (v80)
    {
      v82 = sub_22EFB61DC();
      v84 = v83;
      sub_22EF708C8(a2, v30);
      sub_22EFA8050(v127);
      sub_22EF708C8(v82, v84);

      goto LABEL_72;
    }

    v85 = v81;
    v86 = sub_22EFB60EC();

    swift_willThrow();
    v124 = v86;
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E760, &unk_22EFBD278);
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v9 = v123;
      v88 = [v123 domain];
      v89 = sub_22EFB648C();
      v91 = v90;

      if (v89 == 5002305 && v91 == 0xE300000000000000)
      {

LABEL_69:

        v93 = sub_22EFB624C();
        v94 = sub_22EFB65CC();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_22EEF5000, v93, v94, "Setup Failed.. continue", v95, 2u);
          MEMORY[0x2318FC200](v95, -1, -1);
        }

        sub_22EF708C8(a2, v30);

        sub_22EFA8050(v127);
        v35 = 0;
LABEL_72:
        v9 = v109;
        v30 = v110;
        v21 = v106;
        v23 = v107;
        v34 = v104;
        v33 = v111;
        continue;
      }

      v92 = sub_22EFB684C();

      if (v92)
      {
        goto LABEL_69;
      }

LABEL_79:

      sub_22EF708B4(v109, v102);
      sub_22EF708C8(v106, v107);
      sub_22EF708C8(a2, v30);
    }

    else
    {

      sub_22EF708B4(v109, v102);
      sub_22EF708C8(v106, v107);
      sub_22EF708C8(a2, v30);
    }

    break;
  }

  sub_22EFA8050(v127);

LABEL_76:
  v98 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22EF92638()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

id sub_22EF92680()
{
  v1 = v0;
  v2 = sub_22EFB648C();
  v4 = v3;
  v50 = v2;
  v51 = v3;
  v5 = sub_22EFB648C();
  v7 = v6;
  v52 = v5;
  v53 = v6;
  v49 = MEMORY[0x277D84F90];
  sub_22EF9AB68(0, 2, 0);
  v8 = v49;
  swift_bridgeObjectRetain_n();
  result = sub_22EF7E630(v2, v4);
  if (v10 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v11 = result;
  v12 = v10;

  v14 = *(v49 + 16);
  v13 = *(v49 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_22EF9AB68((v13 > 1), v14 + 1, 1);
    v8 = v49;
  }

  *(v8 + 16) = v14 + 1;
  v15 = v8 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  swift_bridgeObjectRetain_n();
  result = sub_22EF7E630(v5, v7);
  if (v16 >> 60 == 15)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = v16;

    v49 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22EF9AB68((v19 > 1), v20 + 1, 1);
      v8 = v49;
    }

    *(v8 + 16) = v20 + 1;
    v21 = v8 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v22 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_modulesRequiringSlowPath;
    swift_arrayDestroy();
    *&v1[v22] = v8;
    v23 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBCE10;
    *(inited + 32) = sub_22EFAB164(&unk_2843B6FA8);
    *(inited + 40) = v25;
    *(inited + 48) = sub_22EFAB164(&unk_2843B6FD0);
    *(inited + 56) = v26;
    *(inited + 64) = sub_22EFAB164(&unk_2843B6FF8);
    *(inited + 72) = v27;
    *(inited + 80) = sub_22EFAB164(&unk_2843B7020);
    *(inited + 88) = v28;
    *(inited + 96) = sub_22EFAB164(&unk_2843B7048);
    *(inited + 104) = v29;
    *(inited + 112) = sub_22EFAB164(&unk_2843B7070);
    *(inited + 120) = v30;
    *(inited + 128) = sub_22EFAB164(&unk_2843B7098);
    *(inited + 136) = v31;
    *(inited + 144) = sub_22EFAB164(&unk_2843B70C0);
    *(inited + 152) = v32;
    *(inited + 160) = sub_22EFAB164(&unk_2843B70E8);
    *(inited + 168) = v33;
    *(inited + 176) = sub_22EFAB164(&unk_2843B7110);
    *(inited + 184) = v34;
    *(inited + 192) = sub_22EFAB164(&unk_2843B7138);
    *(inited + 200) = v35;
    *(inited + 208) = sub_22EFAB164(&unk_2843B7160);
    *(inited + 216) = v36;
    *(inited + 224) = sub_22EFAB164(&unk_2843B7188);
    *(inited + 232) = v37;
    *(inited + 240) = sub_22EFAB164(&unk_2843B71B0);
    *(inited + 248) = v38;
    *(inited + 256) = sub_22EFAB164(&unk_2843B71D8);
    *(inited + 264) = v39;
    *(inited + 272) = sub_22EFAB164(&unk_2843B7200);
    *(inited + 280) = v40;
    *(inited + 288) = sub_22EFAB164(&unk_2843B7228);
    *(inited + 296) = v41;
    *(inited + 304) = sub_22EFAB164(&unk_2843B7250);
    *(inited + 312) = v42;
    *(inited + 320) = sub_22EFAB164(&unk_2843B7278);
    *(inited + 328) = v43;
    *(inited + 336) = sub_22EFAB164(&unk_2843B72A0);
    *(inited + 344) = v44;
    v45 = sub_22EFA30DC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *&v1[v23] = v45;
    v46 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild;
    objc_opt_self();
    v1[v46] = +[AppletTranslator isInternalBuild];
    v47 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults;
    *&v1[v47] = +[AppletTranslator userDefaults];
    v48.receiver = v1;
    v48.super_class = type metadata accessor for ExpressMode();
    return objc_msgSendSuper2(&v48, sel_init);
  }

  return result;
}

id sub_22EF92A48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpressMode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22EF92B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22EF92B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary11ExpressModeC0D4Info33_F6A5673F67A2A086B8B4649671CBFF82LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22EF92C0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EF92C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22EF92CBC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_22EF92CF0()
{
  result = qword_27DA9E6A8;
  if (!qword_27DA9E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E6A8);
  }

  return result;
}

uint64_t sub_22EF92D44@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22EFB603C();
    if (v10)
    {
      v11 = sub_22EFB605C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22EFB604C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22EFB603C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22EFB605C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22EFB604C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22EF92F74(uint64_t a1, uint64_t a2)
{
  v190 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_301:
    result = 1;
LABEL_304:
    v146 = *MEMORY[0x277D85DE8];
    return result;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_303:
    result = 0;
    goto LABEL_304;
  }

  v3 = 0;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  v185 = a2 + 56;
  v158 = v8;
  v159 = a1 + 56;
  if (v7)
  {
LABEL_7:
    v9 = __clz(__rbit64(v7));
    v155 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
      }

      if (v3 >= v8)
      {
        goto LABEL_301;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v155 = (v11 - 1) & v11;
LABEL_13:
    v156 = v3;
    v157 = a1;
    v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v2 + 40);
    sub_22EFB68DC();
    sub_22EF70B68(v14, v13);
    sub_22EF70B68(v16, v15);
    v180 = v13;
    v181 = v14;
    sub_22EFB61EC();
    v176 = v16;
    v175 = v15;
    sub_22EFB61EC();
    v178 = v17;
    MEMORY[0x2318FB660](v17);
    v19 = sub_22EFB691C();
    v20 = -1 << *(v2 + 32);
    v21 = v19 & ~v20;
    if (((*(v185 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_302:
      sub_22EF708C8(v181, v180);
      sub_22EF708C8(v176, v175);
      goto LABEL_303;
    }

    v22 = !v181 && v13 == 0xC000000000000000;
    v23 = v13 >> 62;
    v24 = !v22;
    v184 = ~v20;
    v25 = __OFSUB__(HIDWORD(v181), v181);
    v174 = v25;
    v170 = (v181 >> 32) - v181;
    v171 = v181 >> 32;
    v182 = v15 >> 62;
    v26 = !v176 && v15 == 0xC000000000000000;
    v27 = !v26;
    v177 = v27;
    v28 = __OFSUB__(HIDWORD(v176), v176);
    v173 = v28;
    v160 = (v176 >> 32) - v176;
    v161 = v176 >> 32;
    v179 = v24;
LABEL_36:
    v29 = *(v2 + 48) + 40 * v21;
    v31 = *v29;
    v30 = *(v29 + 8);
    v32 = *(v29 + 16);
    v33 = *(v29 + 24);
    v34 = *(v29 + 32);
    v35 = v30 >> 62;
    if (v30 >> 62 == 3)
    {
      if (v31)
      {
        v36 = 0;
      }

      else
      {
        v36 = v30 == 0xC000000000000000;
      }

      v38 = !v36 || v23 < 3;
      if (((v38 | v24) & 1) == 0)
      {
        v183 = v34;
        v39 = 0;
        v40 = 0xC000000000000000;
        goto LABEL_74;
      }

LABEL_58:
      v41 = 0;
      if (v23 <= 1)
      {
        goto LABEL_55;
      }

      goto LABEL_59;
    }

    if (v35 > 1)
    {
      if (v35 != 2)
      {
        goto LABEL_58;
      }

      v43 = *(v31 + 16);
      v42 = *(v31 + 24);
      v44 = __OFSUB__(v42, v43);
      v41 = v42 - v43;
      if (v44)
      {
        goto LABEL_308;
      }

      if (v23 <= 1)
      {
        goto LABEL_55;
      }
    }

    else if (v35)
    {
      LODWORD(v41) = HIDWORD(v31) - v31;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_309;
      }

      v41 = v41;
      if (v23 <= 1)
      {
LABEL_55:
        v45 = BYTE6(v180);
        if (v23)
        {
          v45 = HIDWORD(v181) - v181;
          if (v174)
          {
            goto LABEL_306;
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      v41 = BYTE6(v30);
      if (v23 <= 1)
      {
        goto LABEL_55;
      }
    }

LABEL_59:
    if (v23 != 2)
    {
      if (v41)
      {
        goto LABEL_35;
      }

LABEL_73:
      v183 = v34;
      v39 = v31;
      v40 = v30;
LABEL_74:
      sub_22EF70B68(v39, v40);
      sub_22EF70B68(v32, v33);
      v53 = v182;
      goto LABEL_75;
    }

    v47 = *(v181 + 16);
    v46 = *(v181 + 24);
    v44 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (v44)
    {
      goto LABEL_307;
    }

LABEL_61:
    if (v41 != v45)
    {
      goto LABEL_35;
    }

    if (v41 < 1)
    {
      goto LABEL_73;
    }

    v183 = v34;
    if (v35 <= 1)
    {
      break;
    }

    if (v35 == 2)
    {
      v72 = *(v31 + 16);
      sub_22EF70B68(v31, v30);
      sub_22EF70B68(v32, v33);
      v73 = sub_22EFB603C();
      if (v73)
      {
        v74 = v73;
        v75 = sub_22EFB605C();
        if (__OFSUB__(v72, v75))
        {
          goto LABEL_315;
        }

        v162 = (v72 - v75 + v74);
      }

      else
      {
        v162 = 0;
      }

      sub_22EFB604C();
      v24 = v179;
      if (v23 == 2)
      {
        v106 = *(v181 + 16);
        v151 = *(v181 + 24);
        v94 = sub_22EFB603C();
        if (v94)
        {
          v107 = sub_22EFB605C();
          if (__OFSUB__(v106, v107))
          {
            goto LABEL_332;
          }

          v94 += v106 - v107;
        }

        if (__OFSUB__(v151, v106))
        {
          goto LABEL_325;
        }

        v138 = sub_22EFB604C();
        if (v138 >= v151 - v106)
        {
          v97 = v151 - v106;
        }

        else
        {
          v97 = v138;
        }

        v85 = v162;
        v24 = v179;
        if (!v162)
        {
          goto LABEL_357;
        }

        v2 = a2;
        v53 = v182;
        if (!v94)
        {
          goto LABEL_356;
        }

        goto LABEL_272;
      }

      if (v23 == 1)
      {
        if (v171 < v181)
        {
          goto LABEL_322;
        }

        v94 = sub_22EFB603C();
        if (v94)
        {
          v95 = sub_22EFB605C();
          if (__OFSUB__(v181, v95))
          {
            goto LABEL_333;
          }

          v94 += v181 - v95;
        }

        v24 = v179;
        v96 = sub_22EFB604C();
        v97 = (v181 >> 32) - v181;
        if (v96 < v170)
        {
          v97 = v96;
        }

        v85 = v162;
        if (!v162)
        {
          goto LABEL_362;
        }

        v53 = v182;
        if (!v94)
        {
          goto LABEL_361;
        }

LABEL_272:
        if (v85 == v94)
        {
          goto LABEL_75;
        }

        v110 = v97;
        v86 = v94;
        goto LABEL_274;
      }

      v85 = v162;
      *__s1 = v181;
      *&__s1[8] = v180;
      *&__s1[12] = WORD2(v180);
      if (!v162)
      {
        goto LABEL_353;
      }

      goto LABEL_192;
    }

    *&__s1[6] = 0;
    *__s1 = 0;
    if (v23)
    {
      if (v23 == 2)
      {
        v165 = *(v181 + 16);
        v149 = *(v181 + 24);
        sub_22EF70B68(v31, v30);
        sub_22EF70B68(v32, v33);
        v51 = sub_22EFB603C();
        if (v51)
        {
          v83 = sub_22EFB605C();
          v84 = v165;
          if (__OFSUB__(v165, v83))
          {
            goto LABEL_331;
          }

          v51 = &v165[v51 - v83];
        }

        else
        {
          v84 = v165;
        }

        v135 = v149 - v84;
        if (__OFSUB__(v149, v84))
        {
          goto LABEL_321;
        }

        v136 = sub_22EFB604C();
        if (!v51)
        {
          goto LABEL_366;
        }

        goto LABEL_255;
      }

      if (v171 < v181)
      {
        goto LABEL_319;
      }

      sub_22EF70B68(v31, v30);
      sub_22EF70B68(v32, v33);
      v102 = sub_22EFB603C();
      if (!v102)
      {
        goto LABEL_354;
      }

      v103 = v102;
      v104 = sub_22EFB605C();
      if (__OFSUB__(v181, v104))
      {
        goto LABEL_324;
      }

      v51 = (v181 - v104 + v103);
      v52 = sub_22EFB604C();
      if (!v51)
      {
        goto LABEL_355;
      }

LABEL_180:
      if (v52 >= v170)
      {
        v105 = (v181 >> 32) - v181;
      }

      else
      {
        v105 = v52;
      }

LABEL_258:
      v137 = memcmp(__s1, v51, v105);
      v24 = v179;
      goto LABEL_275;
    }

LABEL_135:
    v186 = v181;
    v187 = v180;
    v188 = WORD2(v180);
    sub_22EF70B68(v31, v30);
    sub_22EF70B68(v32, v33);
    v85 = __s1;
    v86 = &v186;
LABEL_193:
    v110 = BYTE6(v180);
LABEL_274:
    v137 = memcmp(v85, v86, v110);
LABEL_275:
    v53 = v182;
    if (v137)
    {
      goto LABEL_34;
    }

LABEL_75:
    v54 = v33 >> 62;
    if (v33 >> 62 == 3)
    {
      if (v32)
      {
        v55 = 0;
      }

      else
      {
        v55 = v33 == 0xC000000000000000;
      }

      v57 = !v55 || v53 < 3;
      if (((v57 | v177) & 1) == 0)
      {
        sub_22EF708C8(v31, v30);
        v58 = 0;
        v59 = 0xC000000000000000;
        goto LABEL_294;
      }

LABEL_98:
      v60 = 0;
      if (v53 <= 1)
      {
        goto LABEL_94;
      }

      goto LABEL_99;
    }

    if (v54 > 1)
    {
      if (v54 != 2)
      {
        goto LABEL_98;
      }

      v62 = *(v32 + 16);
      v61 = *(v32 + 24);
      v44 = __OFSUB__(v61, v62);
      v60 = v61 - v62;
      if (v44)
      {
        goto LABEL_313;
      }

      if (v53 <= 1)
      {
        goto LABEL_94;
      }
    }

    else if (v54)
    {
      LODWORD(v60) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_312;
      }

      v60 = v60;
      if (v53 <= 1)
      {
LABEL_94:
        v63 = BYTE6(v175);
        if (v53)
        {
          v63 = HIDWORD(v176) - v176;
          if (v173)
          {
            goto LABEL_310;
          }
        }

        if (v60 != v63)
        {
LABEL_34:
          sub_22EF708C8(v31, v30);
          sub_22EF708C8(v32, v33);
          goto LABEL_35;
        }

        goto LABEL_102;
      }
    }

    else
    {
      v60 = BYTE6(v33);
      if (v53 <= 1)
      {
        goto LABEL_94;
      }
    }

LABEL_99:
    if (v53 != 2)
    {
      if (v60)
      {
        goto LABEL_34;
      }

LABEL_293:
      sub_22EF708C8(v31, v30);
      v58 = v32;
      v59 = v33;
LABEL_294:
      sub_22EF708C8(v58, v59);
      if (v178 == v183)
      {
        goto LABEL_299;
      }

      goto LABEL_35;
    }

    v65 = *(v176 + 16);
    v64 = *(v176 + 24);
    v44 = __OFSUB__(v64, v65);
    v66 = v64 - v65;
    if (v44)
    {
      goto LABEL_311;
    }

    LODWORD(v53) = v182;
    if (v60 != v66)
    {
      goto LABEL_34;
    }

LABEL_102:
    if (v60 < 1)
    {
      goto LABEL_293;
    }

    if (v54 > 1)
    {
      if (v54 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (v53 == 2)
        {
          v121 = *(v176 + 16);
          v168 = *(v176 + 24);
          v70 = sub_22EFB603C();
          if (v70)
          {
            v122 = sub_22EFB605C();
            if (__OFSUB__(v121, v122))
            {
              goto LABEL_347;
            }

            v70 += v121 - v122;
          }

          v44 = __OFSUB__(v168, v121);
          v123 = &v168[-v121];
          if (v44)
          {
            goto LABEL_338;
          }

          v124 = sub_22EFB604C();
          v2 = a2;
          if (!v70)
          {
            goto LABEL_373;
          }

          goto LABEL_230;
        }

        if (v53 == 1)
        {
          if (v161 < v176)
          {
            goto LABEL_336;
          }

          v90 = sub_22EFB603C();
          if (!v90)
          {
            goto LABEL_371;
          }

          v91 = v90;
          v92 = sub_22EFB605C();
          if (__OFSUB__(v176, v92))
          {
            goto LABEL_341;
          }

          v70 = (v176 - v92 + v91);
          v71 = sub_22EFB604C();
          if (!v70)
          {
            goto LABEL_372;
          }

          goto LABEL_146;
        }

        v118 = HIDWORD(v176);
        LODWORD(v186) = v176;
        v120 = v175 >> 40;
        BYTE4(v186) = BYTE4(v176);
        v119 = v175;
        goto LABEL_236;
      }

      v76 = *(v32 + 16);
      v77 = sub_22EFB603C();
      if (v77)
      {
        v78 = v77;
        v79 = sub_22EFB605C();
        if (__OFSUB__(v76, v79))
        {
          goto LABEL_328;
        }

        v163 = (v76 - v79 + v78);
      }

      else
      {
        v163 = 0;
      }

      sub_22EFB604C();
      v24 = v179;
      if (v182 == 2)
      {
        v147 = *(v176 + 24);
        v153 = *(v176 + 16);
        v111 = sub_22EFB603C();
        if (v111)
        {
          v130 = sub_22EFB605C();
          v131 = v153;
          if (__OFSUB__(v153, v130))
          {
            goto LABEL_348;
          }

          v111 += v153 - v130;
        }

        else
        {
          v131 = v153;
        }

        v140 = v147 - v131;
        if (__OFSUB__(v147, v131))
        {
          goto LABEL_343;
        }

        v141 = sub_22EFB604C();
        if (v141 >= v140)
        {
          v114 = v140;
        }

        else
        {
          v114 = v141;
        }

        v115 = v163;
        if (!v163)
        {
          goto LABEL_377;
        }

        v2 = a2;
        if (!v111)
        {
          goto LABEL_376;
        }
      }

      else
      {
        if (v182 != 1)
        {
          v115 = v163;
          *__s1 = v176;
          *&__s1[8] = v175;
          *&__s1[12] = WORD2(v175);
          if (!v163)
          {
            goto LABEL_368;
          }

LABEL_246:
          v129 = __s1;
          goto LABEL_247;
        }

        if (v161 < v176)
        {
          goto LABEL_340;
        }

        v111 = sub_22EFB603C();
        if (v111)
        {
          v112 = sub_22EFB605C();
          if (__OFSUB__(v176, v112))
          {
            goto LABEL_350;
          }

          v111 += v176 - v112;
        }

        v24 = v179;
        v113 = sub_22EFB604C();
        v114 = (v176 >> 32) - v176;
        if (v113 < v160)
        {
          v114 = v113;
        }

        v115 = v163;
        if (!v163)
        {
          goto LABEL_375;
        }

        if (!v111)
        {
          goto LABEL_374;
        }
      }

LABEL_292:
      if (v115 == v111)
      {
        goto LABEL_293;
      }

      v134 = v114;
      v129 = v111;
LABEL_297:
      v144 = memcmp(v115, v129, v134);
      sub_22EF708C8(v31, v30);
      sub_22EF708C8(v32, v33);
      v128 = v183;
      if (!v144)
      {
        goto LABEL_298;
      }

LABEL_35:
      v21 = (v21 + 1) & v184;
      if (((*(v185 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_302;
      }

      goto LABEL_36;
    }

    if (v54)
    {
      if (v32 > v32 >> 32)
      {
        goto LABEL_317;
      }

      v87 = sub_22EFB603C();
      if (v87)
      {
        v88 = v87;
        v89 = sub_22EFB605C();
        if (__OFSUB__(v32, v89))
        {
          goto LABEL_329;
        }

        v166 = (v32 - v89 + v88);
      }

      else
      {
        v166 = 0;
      }

      sub_22EFB604C();
      v24 = v179;
      if (v182 == 2)
      {
        v148 = *(v176 + 24);
        v154 = *(v176 + 16);
        v111 = sub_22EFB603C();
        if (v111)
        {
          v132 = sub_22EFB605C();
          v133 = v154;
          if (__OFSUB__(v154, v132))
          {
            goto LABEL_349;
          }

          v111 += v154 - v132;
        }

        else
        {
          v133 = v154;
        }

        v142 = v148 - v133;
        if (__OFSUB__(v148, v133))
        {
          goto LABEL_345;
        }

        v143 = sub_22EFB604C();
        if (v143 >= v142)
        {
          v114 = v142;
        }

        else
        {
          v114 = v143;
        }

        v115 = v166;
        if (!v166)
        {
          goto LABEL_370;
        }

        v2 = a2;
        if (!v111)
        {
          goto LABEL_369;
        }

        goto LABEL_292;
      }

      if (v182 != 1)
      {
        v115 = v166;
        *__s1 = v176;
        *&__s1[8] = v175;
        *&__s1[12] = WORD2(v175);
        if (!v166)
        {
          goto LABEL_378;
        }

        goto LABEL_246;
      }

      if (v161 < v176)
      {
        goto LABEL_344;
      }

      v111 = sub_22EFB603C();
      if (v111)
      {
        v116 = sub_22EFB605C();
        if (__OFSUB__(v176, v116))
        {
          goto LABEL_351;
        }

        v111 += v176 - v116;
      }

      v24 = v179;
      v117 = sub_22EFB604C();
      v114 = (v176 >> 32) - v176;
      if (v117 < v160)
      {
        v114 = v117;
      }

      v115 = v166;
      if (!v166)
      {
        goto LABEL_380;
      }

      if (!v111)
      {
        goto LABEL_379;
      }

      goto LABEL_292;
    }

    *__s1 = v32;
    *&__s1[8] = v33;
    __s1[10] = BYTE2(v33);
    __s1[11] = BYTE3(v33);
    __s1[12] = BYTE4(v33);
    __s1[13] = BYTE5(v33);
    if (!v53)
    {
      v118 = HIDWORD(v176);
      LODWORD(v186) = v176;
      v119 = v175;
      v120 = v175 >> 40;
      BYTE4(v186) = BYTE4(v176);
LABEL_236:
      BYTE5(v186) = BYTE1(v118);
      BYTE6(v186) = BYTE2(v118);
      HIBYTE(v186) = HIBYTE(v118);
      LOWORD(v187) = v119;
      BYTE2(v187) = BYTE2(v119);
      HIBYTE(v187) = BYTE3(v119);
      LOBYTE(v188) = BYTE4(v119);
      HIBYTE(v188) = v120;
      v115 = __s1;
      v129 = &v186;
LABEL_247:
      v134 = BYTE6(v175);
      goto LABEL_297;
    }

    if (v53 == 1)
    {
      if (v161 < v176)
      {
        goto LABEL_337;
      }

      v67 = sub_22EFB603C();
      if (!v67)
      {
        goto LABEL_383;
      }

      v68 = v67;
      v69 = sub_22EFB605C();
      if (__OFSUB__(v176, v69))
      {
        goto LABEL_342;
      }

      v70 = (v176 - v69 + v68);
      v71 = sub_22EFB604C();
      if (!v70)
      {
        goto LABEL_382;
      }

LABEL_146:
      if (v71 >= v160)
      {
        v93 = (v176 >> 32) - v176;
      }

      else
      {
        v93 = v71;
      }

      goto LABEL_233;
    }

    v125 = *(v176 + 16);
    v169 = *(v176 + 24);
    v70 = sub_22EFB603C();
    if (v70)
    {
      v126 = sub_22EFB605C();
      if (__OFSUB__(v125, v126))
      {
        goto LABEL_346;
      }

      v70 += v125 - v126;
    }

    v44 = __OFSUB__(v169, v125);
    v123 = &v169[-v125];
    if (v44)
    {
      goto LABEL_339;
    }

    v124 = sub_22EFB604C();
    v2 = a2;
    if (!v70)
    {
      goto LABEL_381;
    }

LABEL_230:
    if (v124 >= v123)
    {
      v93 = v123;
    }

    else
    {
      v93 = v124;
    }

LABEL_233:
    v127 = memcmp(__s1, v70, v93);
    sub_22EF708C8(v31, v30);
    sub_22EF708C8(v32, v33);
    v24 = v179;
    v128 = v183;
    if (v127)
    {
      goto LABEL_35;
    }

LABEL_298:
    if ((v178 ^ v128))
    {
      goto LABEL_35;
    }

LABEL_299:
    sub_22EF708C8(v181, v180);
    sub_22EF708C8(v176, v175);
    v3 = v156;
    a1 = v157;
    v8 = v158;
    v4 = v159;
    v7 = v155;
    if (v155)
    {
      goto LABEL_7;
    }
  }

  if (v35)
  {
    if (v31 > v31 >> 32)
    {
      goto LABEL_314;
    }

    sub_22EF70B68(v31, v30);
    sub_22EF70B68(v32, v33);
    v80 = sub_22EFB603C();
    if (v80)
    {
      v81 = v80;
      v82 = sub_22EFB605C();
      if (__OFSUB__(v31, v82))
      {
        goto LABEL_316;
      }

      v164 = (v31 - v82 + v81);
    }

    else
    {
      v164 = 0;
    }

    sub_22EFB604C();
    v24 = v179;
    if (v23 == 2)
    {
      v108 = *(v181 + 16);
      v152 = *(v181 + 24);
      v94 = sub_22EFB603C();
      if (v94)
      {
        v109 = sub_22EFB605C();
        if (__OFSUB__(v108, v109))
        {
          goto LABEL_334;
        }

        v94 += v108 - v109;
      }

      if (__OFSUB__(v152, v108))
      {
        goto LABEL_327;
      }

      v139 = sub_22EFB604C();
      if (v139 >= v152 - v108)
      {
        v97 = v152 - v108;
      }

      else
      {
        v97 = v139;
      }

      v85 = v164;
      v24 = v179;
      if (!v164)
      {
        goto LABEL_359;
      }

      v2 = a2;
      v53 = v182;
      if (!v94)
      {
        goto LABEL_358;
      }

      goto LABEL_272;
    }

    if (v23 == 1)
    {
      if (v171 < v181)
      {
        goto LABEL_326;
      }

      v94 = sub_22EFB603C();
      if (v94)
      {
        v98 = sub_22EFB605C();
        if (__OFSUB__(v181, v98))
        {
          goto LABEL_335;
        }

        v94 += v181 - v98;
      }

      v24 = v179;
      v99 = sub_22EFB604C();
      v97 = (v181 >> 32) - v181;
      if (v99 < v170)
      {
        v97 = v99;
      }

      v85 = v164;
      if (!v164)
      {
        goto LABEL_364;
      }

      v53 = v182;
      if (!v94)
      {
        goto LABEL_363;
      }

      goto LABEL_272;
    }

    v85 = v164;
    *__s1 = v181;
    *&__s1[8] = v180;
    *&__s1[12] = WORD2(v180);
    if (!v164)
    {
      goto LABEL_365;
    }

LABEL_192:
    v86 = __s1;
    goto LABEL_193;
  }

  *__s1 = v31;
  *&__s1[8] = v30;
  __s1[10] = BYTE2(v30);
  __s1[11] = BYTE3(v30);
  __s1[12] = BYTE4(v30);
  __s1[13] = BYTE5(v30);
  if (!v23)
  {
    goto LABEL_135;
  }

  if (v23 != 1)
  {
    v167 = *(v181 + 16);
    v150 = *(v181 + 24);
    sub_22EF70B68(v31, v30);
    sub_22EF70B68(v32, v33);
    v51 = sub_22EFB603C();
    if (v51)
    {
      v100 = sub_22EFB605C();
      v101 = v167;
      if (__OFSUB__(v167, v100))
      {
        goto LABEL_330;
      }

      v51 = &v167[v51 - v100];
    }

    else
    {
      v101 = v167;
    }

    v135 = v150 - v101;
    if (__OFSUB__(v150, v101))
    {
      goto LABEL_320;
    }

    v136 = sub_22EFB604C();
    if (!v51)
    {
      goto LABEL_367;
    }

LABEL_255:
    if (v136 >= v135)
    {
      v105 = v135;
    }

    else
    {
      v105 = v136;
    }

    goto LABEL_258;
  }

  if (v171 < v181)
  {
    goto LABEL_318;
  }

  sub_22EF70B68(v31, v30);
  sub_22EF70B68(v32, v33);
  v48 = sub_22EFB603C();
  if (v48)
  {
    v49 = v48;
    v50 = sub_22EFB605C();
    if (__OFSUB__(v181, v50))
    {
      goto LABEL_323;
    }

    v51 = (v181 - v50 + v49);
    v52 = sub_22EFB604C();
    if (!v51)
    {
      goto LABEL_360;
    }

    goto LABEL_180;
  }

  sub_22EFB604C();
  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  sub_22EFB604C();
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  sub_22EFB604C();
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  __break(1u);
LABEL_383:
  result = sub_22EFB604C();
  __break(1u);
  return result;
}

void *sub_22EF94370(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22EF943F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_22EF9447C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22EF94548(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22EF76370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_22EF94548(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_22EF94654(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_22EFB672C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_22EF94654(uint64_t a1, unint64_t a2)
{
  v4 = sub_22EF946A0(a1, a2);
  sub_22EF947D0(&unk_2843B6740);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_22EF946A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_22EF948BC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_22EFB672C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22EFB650C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22EF948BC(v10, 0);
        result = sub_22EFB66CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}