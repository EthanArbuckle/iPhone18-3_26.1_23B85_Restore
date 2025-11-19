uint64_t sub_22EF6A9E4(void *a1, uint64_t a2, unint64_t a3)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v7 = *(v3 + 24);
  if (v7 >> 60 != 15)
  {
    v8 = *(v3 + 16);
    sub_22EF70CB0(v8, *(v3 + 24));
    if (sub_22EF6E8C0(v8, v7, a2, a3))
    {
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v9 = sub_22EFB626C();
      __swift_project_value_buffer(v9, qword_27DA9E328);
      sub_22EF70B68(v8, v7);
      v10 = sub_22EFB624C();
      v11 = sub_22EFB65EC();
      sub_22EF708B4(v8, v7);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v85 = v83;
        *v12 = 136315138;
        v87[0] = sub_22EF83154(v8, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v13 = sub_22EFB646C();
        v15 = v14;

        v16 = sub_22EF9447C(v13, v15, &v85);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_22EEF5000, v10, v11, "Current lyon configuration: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
        MEMORY[0x2318FC200](v83, -1, -1);
        MEMORY[0x2318FC200](v12, -1, -1);
        sub_22EF708B4(v8, v7);

LABEL_47:
        v25 = 0;
        goto LABEL_48;
      }

      v37 = v8;
      v38 = v7;
LABEL_46:
      sub_22EF708B4(v37, v38);
      goto LABEL_47;
    }

    sub_22EF708B4(v8, v7);
  }

  if (qword_27DA9E348 != -1)
  {
    swift_once();
  }

  v17 = sub_22EFB61BC();
  v85 = 0;
  v18 = [a1 transceive:v17 error:&v85];

  v19 = v85;
  if (!v18)
  {
    v24 = v19;
    sub_22EFB60EC();

    swift_willThrow();
    goto LABEL_48;
  }

  v84 = a1;
  v20 = sub_22EFB61DC();
  v22 = v21;

  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_19;
    }

    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    v28 = __OFSUB__(v26, v27);
    v29 = v26 - v27;
    if (!v28)
    {
      if (v29 >= 2)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v23)
  {
    if (!__OFSUB__(HIDWORD(v20), v20))
    {
      if (HIDWORD(v20) - v20 >= 2)
      {
        goto LABEL_28;
      }

LABEL_19:
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v30 = sub_22EFB626C();
      __swift_project_value_buffer(v30, qword_27DA9E328);
      v31 = sub_22EFB624C();
      v32 = sub_22EFB65CC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22EEF5000, v31, v32, "Response for view configuration digest is malformed", v33, 2u);
        MEMORY[0x2318FC200](v33, -1, -1);
      }

      type metadata accessor for ATLError(0);
      sub_22EF70AE8(&qword_27DA9E410, type metadata accessor for ATLError);
      swift_allocError();
      *v34 = 5;
      swift_willThrow();
      v35 = v20;
      v36 = v22;
LABEL_24:
      sub_22EF708C8(v35, v36);
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  if (BYTE6(v22) < 2uLL)
  {
    goto LABEL_19;
  }

LABEL_28:
  v81 = v3;
  if (qword_27DA9E320 != -1)
  {
    swift_once();
  }

  v39 = sub_22EFB626C();
  __swift_project_value_buffer(v39, qword_27DA9E328);
  sub_22EF70B68(v20, v22);
  v40 = sub_22EFB624C();
  v41 = sub_22EFB65EC();
  sub_22EF708C8(v20, v22);
  v82 = v20;
  if (os_log_type_enabled(v40, v41))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v87[0] = v80;
    *v79 = 136315138;
    sub_22EF70B68(v20, v22);
    sub_22EF76410(2, v20, v22, &v85);
    v78 = v40;
    v42 = v85;
    v43 = v86;
    sub_22EF83154(v85, v86);
    v77 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v44 = sub_22EFB646C();
    v46 = v45;
    sub_22EF708C8(v42, v43);

    v47 = sub_22EF9447C(v44, v46, v87);

    *(v79 + 4) = v47;
    _os_log_impl(&dword_22EEF5000, v78, v77, "Stored configuration response sw: %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x2318FC200](v80, -1, -1);
    MEMORY[0x2318FC200](v79, -1, -1);
  }

  else
  {
  }

  if (v23 == 2)
  {
    v53 = *(v82 + 16);
    v52 = *(v82 + 24);
    v28 = __OFSUB__(v52, v53);
    v54 = v52 - v53;
    if (v28)
    {
LABEL_60:
      __break(1u);
LABEL_61:
      swift_once();
LABEL_52:
      v66 = v22;
      v67 = sub_22EFB61BC();
      if (qword_27DA9E360 != -1)
      {
        swift_once();
      }

      sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
      v68 = sub_22EFB653C();
      v85 = 0;
      v69 = [v84 transceiveAndCheckSW:v67 inArray:v68 error:&v85];

      v70 = v85;
      if (v69)
      {
        v71 = sub_22EFB61DC();
        v73 = v72;
        sub_22EF708C8(v82, v66);
        sub_22EF708C8(v71, v73);

        v74 = *(v81 + 16);
        v75 = *(v81 + 24);
        *(v81 + 16) = xmmword_22EFBB8E0;
        sub_22EF708B4(v74, v75);
        v25 = 1;
        goto LABEL_48;
      }

      v76 = v70;
      sub_22EFB60EC();

      swift_willThrow();
      v35 = v82;
      v36 = v66;
      goto LABEL_24;
    }

    if (v54 != 34)
    {
      goto LABEL_37;
    }

LABEL_44:
    v55 = sub_22EFB618C();
    v57 = v56;
    v58 = sub_22EF6E8C0(v55, v56, a2, a3);
    sub_22EF708C8(v55, v57);
    if (v58)
    {
      sub_22EF708C8(v82, v22);
      v59 = *(v81 + 16);
      v60 = *(v81 + 24);
      *(v81 + 16) = a2;
      *(v81 + 24) = a3;
      sub_22EF70B68(a2, a3);
      v37 = v59;
      v38 = v60;
      goto LABEL_46;
    }

    v63 = sub_22EFB624C();
    v64 = sub_22EFB65EC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_22EEF5000, v63, v64, "Applet configuration needs to be changed", v65, 2u);
      MEMORY[0x2318FC200](v65, -1, -1);
    }

    if (qword_27DA9E340 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_61;
  }

  if (v23 != 1)
  {
    if (BYTE6(v22) != 34)
    {
      goto LABEL_37;
    }

    goto LABEL_44;
  }

  if (__OFSUB__(HIDWORD(v82), v82))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (HIDWORD(v82) - v82 == 34)
  {
    goto LABEL_44;
  }

LABEL_37:
  v48 = v22;
  v49 = sub_22EFB624C();
  v50 = sub_22EFB65EC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_22EEF5000, v49, v50, "Stored configuration is not present", v51, 2u);
    MEMORY[0x2318FC200](v51, -1, -1);
  }

  sub_22EF708C8(v82, v48);

  v25 = 1;
LABEL_48:
  v61 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

uint64_t LyonSystemConfiguration.__deallocating_deinit()
{
  sub_22EF708B4(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_22EF6B444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EFA0D00(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EF6B944(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EF6B4B0()
{
  v2 = *v0;
  sub_22EFB68DC();
  sub_22EFB644C();
  return sub_22EFB691C();
}

uint64_t sub_22EF6B514(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EF70AE8(&qword_27DA9E3E8, type metadata accessor for ATLError);

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_22EF6B590()
{
  v2 = *v0;
  sub_22EFB68DC();
  sub_22EFB644C();
  return sub_22EFB691C();
}

uint64_t sub_22EF6B5F0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22EF6E808(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22EF708C8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_22EF92D44(v14, a3, a4, &v13);
  v10 = v4;
  sub_22EF708C8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

void *sub_22EF6B780(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    MEMORY[0x28223BE20]();
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_22EF9560C((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v9 = v8;
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_22EF9557C(v12, v6, a2, a1);

    MEMORY[0x2318FC200](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_22EF6B944(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EFB682C();
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
        v5 = sub_22EFB656C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EF6C1FC(v7, v8, a1, v4);
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
    return sub_22EF6BA3C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EF6BA3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v85[2] = *MEMORY[0x277D85DE8];
  if (a3 == a2)
  {
LABEL_2:
    v4 = *MEMORY[0x277D85DE8];
    return result;
  }

  v72 = *a4;
  v5 = (*a4 + 56 * a3);
  v6 = result - a3;
LABEL_5:
  v67 = v5;
  v68 = a3;
  v7 = (v72 + 56 * a3);
  v9 = *v7;
  v8 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v13 = v7[4];
  v12 = v7[5];
  v14 = v7[6];
  v66 = v6;
  while (1)
  {
    v17 = *(v5 - 7);
    v15 = *(v5 - 6);
    v16 = v5 - 7;
    v18 = *(v5 - 5);
    v80 = *(v5 - 4);
    v81 = *(v5 - 3);
    v82 = *(v5 - 2);
    v83 = *(v5 - 1);
    v19 = v8 >> 62;
    v20 = v15 >> 62;
    if (v8 >> 62 == 3)
    {
      v21 = 0;
      if (!v9 && v8 == 0xC000000000000000 && v15 >> 62 == 3)
      {
        v21 = 0;
        if (!v17 && v15 == 0xC000000000000000)
        {
          goto LABEL_63;
        }
      }

LABEL_23:
      if (v20 <= 1)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        v21 = BYTE6(v8);
        if (v20 <= 1)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      LODWORD(v21) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_70;
      }

      v21 = v21;
      goto LABEL_23;
    }

    if (v19 == 2)
    {
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        goto LABEL_71;
      }

      goto LABEL_23;
    }

    v21 = 0;
    if (v20 <= 1)
    {
LABEL_24:
      if (v20)
      {
        LODWORD(v25) = HIDWORD(v17) - v17;
        if (__OFSUB__(HIDWORD(v17), v17))
        {
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
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }

        v25 = v25;
      }

      else
      {
        v25 = BYTE6(v15);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v20 != 2)
    {
      if (!v21)
      {
        goto LABEL_63;
      }

LABEL_39:
      v74 = v9;
      v76 = v6;
      v31 = v12;
      v32 = *(v5 - 7);
      v33 = v9;
      v34 = v11;
      v35 = v14;
      v36 = v13;
      v37 = *(v5 - 6);
      v30 = v8;
      sub_22EF70B68(v33, v8);
      sub_22EF70B68(v34, v36);
      sub_22EF70B68(v31, v35);
      v78 = v32;
      v79 = v37;
      v38 = v32;
      v12 = v31;
      v39 = v37;
      v13 = v36;
      v14 = v35;
      v11 = v34;
      v9 = v74;
      sub_22EF70B68(v38, v39);
      sub_22EF70B68(v80, v81);
      sub_22EF70B68(v82, v83);
      goto LABEL_40;
    }

    v27 = *(v17 + 16);
    v26 = *(v17 + 24);
    v24 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v24)
    {
      goto LABEL_69;
    }

LABEL_31:
    if (v21 != v25)
    {
      goto LABEL_39;
    }

    if (v21 < 1)
    {
      goto LABEL_63;
    }

    v76 = v6;
    v70 = *(v5 - 5);
    v71 = v10;
    v78 = *(v5 - 7);
    v79 = *(v5 - 6);
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        memset(v85, 0, 14);
        v69 = v8;
        sub_22EF70B68(v9, v8);
        sub_22EF70B68(v11, v13);
        sub_22EF70B68(v12, v14);
        sub_22EF70B68(v17, v79);
        sub_22EF70B68(v80, v81);
        sub_22EF70B68(v82, v83);
        sub_22EF70B68(v17, v79);
        sub_22EF92D44(v85, v17, v79, &v84);
        if (v77)
        {
          goto LABEL_78;
        }

        sub_22EF708C8(v17, v79);
        v59 = v84;
        goto LABEL_61;
      }

      v64 = *(v9 + 24);
      v65 = *(v9 + 16);
      v45 = v8;
      sub_22EF70B68(v9, v8);
      v63 = v11;
      sub_22EF70B68(v11, v13);
      v46 = v14;
      sub_22EF70B68(v12, v14);
      sub_22EF70B68(v78, v79);
      sub_22EF70B68(v80, v81);
      sub_22EF70B68(v82, v83);
      sub_22EF70B68(v78, v79);
      v47 = sub_22EFB603C();
      if (v47)
      {
        v48 = v47;
        v49 = v45;
        v50 = sub_22EFB605C();
        v51 = v65;
        if (__OFSUB__(v65, v50))
        {
          goto LABEL_74;
        }

        v52 = v65 - v50 + v48;
      }

      else
      {
        v49 = v45;
        v52 = 0;
        v51 = v65;
      }

      if (__OFSUB__(v64, v51))
      {
        goto LABEL_73;
      }

      sub_22EFB604C();
      sub_22EF92D44(v52, v78, v79, v85);
      if (v77)
      {
        goto LABEL_78;
      }

      sub_22EF708C8(v78, v79);
      v14 = v46;
      v11 = v63;
      v30 = v49;
      if (v85[0])
      {
LABEL_62:
        sub_22EF708C8(v78, v79);
        sub_22EF708C8(v80, v81);
        sub_22EF708C8(v82, v83);
        sub_22EF708C8(v9, v30);
        sub_22EF708C8(v11, v13);
        result = sub_22EF708C8(v12, v14);
        v18 = v70;
        v10 = v71;
        v6 = v76;
LABEL_63:
        if (v10 >= v18)
        {
          goto LABEL_4;
        }

        goto LABEL_64;
      }
    }

    else
    {
      v73 = v12;
      if (v19)
      {
        if (v9 >> 32 < v9)
        {
          goto LABEL_72;
        }

        v53 = *(v5 - 6);
        v54 = v8;
        sub_22EF70B68(v9, v8);
        sub_22EF70B68(v11, v13);
        sub_22EF70B68(v73, v14);
        sub_22EF70B68(v17, v53);
        sub_22EF70B68(v80, v81);
        sub_22EF70B68(v82, v83);
        sub_22EF70B68(v17, v53);
        v55 = sub_22EFB603C();
        v69 = v54;
        if (v55)
        {
          v56 = v55;
          v57 = sub_22EFB605C();
          if (__OFSUB__(v9, v57))
          {
            goto LABEL_75;
          }

          v58 = v9 - v57 + v56;
        }

        else
        {
          v58 = 0;
        }

        sub_22EFB604C();
        sub_22EF92D44(v58, v78, v79, v85);
        if (v77)
        {
          goto LABEL_78;
        }

        sub_22EF708C8(v78, v79);
        v59 = v85[0];
        v12 = v73;
LABEL_61:
        v30 = v69;
        if (v59)
        {
          goto LABEL_62;
        }

        goto LABEL_40;
      }

      v85[0] = v9;
      LOWORD(v85[1]) = v8;
      BYTE2(v85[1]) = BYTE2(v8);
      BYTE3(v85[1]) = BYTE3(v8);
      BYTE4(v85[1]) = BYTE4(v8);
      BYTE5(v85[1]) = BYTE5(v8);
      v28 = v15;
      v29 = v8;
      sub_22EF70B68(v9, v8);
      sub_22EF70B68(v11, v13);
      sub_22EF70B68(v73, v14);
      sub_22EF70B68(v17, v28);
      sub_22EF70B68(v80, v81);
      sub_22EF70B68(v82, v83);
      sub_22EF70B68(v17, v28);
      sub_22EF92D44(v85, v17, v28, &v84);
      if (v77)
      {
        goto LABEL_78;
      }

      sub_22EF708C8(v17, v79);
      v12 = v73;
      v30 = v29;
      if (v84)
      {
        goto LABEL_62;
      }
    }

LABEL_40:
    v75 = v5;
    v40 = v5 - 7;
    v41 = v14;
    v42 = v12;
    v43 = sub_22EF71F2C(v9, v30, v78, v79);
    if (v77)
    {
      break;
    }

    v44 = v43;
    sub_22EF708C8(v78, v79);
    sub_22EF708C8(v80, v81);
    sub_22EF708C8(v82, v83);
    sub_22EF708C8(v9, v30);
    sub_22EF708C8(v11, v13);
    result = sub_22EF708C8(v42, v41);
    v6 = v76;
    v16 = v40;
    v5 = v75;
    if ((v44 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_64:
    if (!v72)
    {
      goto LABEL_76;
    }

    v9 = *v5;
    v8 = v5[1];
    v10 = v5[2];
    v11 = v5[3];
    v13 = v5[4];
    v12 = v5[5];
    v14 = v5[6];
    v60 = *(v16 + 1);
    *v5 = *v16;
    *(v5 + 1) = v60;
    *(v5 + 2) = *(v16 + 2);
    v5[6] = v16[6];
    *(v5 - 6) = v8;
    *(v5 - 5) = v10;
    *(v5 - 4) = v11;
    *(v5 - 3) = v13;
    *(v5 - 2) = v12;
    *(v5 - 1) = v14;
    *(v5 - 7) = v9;
    v5 -= 7;
    if (__CFADD__(v6++, 1))
    {
LABEL_4:
      a3 = v68 + 1;
      v5 = v67 + 7;
      v6 = v66 - 1;
      if (v68 + 1 == a2)
      {
        goto LABEL_2;
      }

      goto LABEL_5;
    }
  }

  sub_22EFB67BC();
  __break(1u);
LABEL_78:
  result = sub_22EF708C8(v78, v79);
  __break(1u);
  return result;
}

uint64_t sub_22EF6C1FC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v232 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_224:
    v10 = *a1;
    if (!*a1)
    {
      __break(1u);
LABEL_286:
      for (i = v202; ; i = v4)
      {

        sub_22EFB67BC();
        __break(1u);
LABEL_288:
        sub_22EF708C8(v10, v5);
        __break(1u);
LABEL_289:
        ;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_276;
    }

    goto LABEL_226;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  if (v8 >= v7)
  {
    goto LABEL_83;
  }

  v190 = v8;
  v193 = v7;
  v169 = v9;
  v11 = (*v6 + 56 * v8);
  v12 = *v11;
  v13 = v11[1];
  v5 = v11[3];
  v203 = v11[2];
  v14 = v11[5];
  v218 = v11[4];
  v221 = v11[6];
  v172 = v10;
  v215 = *v6;
  v15 = (*v6 + 56 * v10);
  v16 = *v15;
  v4 = v15[1];
  v199 = v15[2];
  v206 = v15[3];
  v18 = v15[4];
  v17 = v15[5];
  v19 = v15[6];
  sub_22EF70B68(v12, v13);
  v209 = v5;
  sub_22EF70B68(v5, v218);
  v212 = v14;
  v20 = v14;
  v21 = v17;
  v10 = v19;
  sub_22EF70B68(v20, v221);
  sub_22EF70B68(v16, v4);
  sub_22EF70B68(v206, v18);
  sub_22EF70B68(v21, v19);
  if (sub_22EF6E8C0(v12, v13, v16, v4))
  {
    sub_22EF708C8(v16, v4);
    sub_22EF708C8(v206, v18);
    sub_22EF708C8(v21, v19);
    sub_22EF708C8(v12, v13);
    sub_22EF708C8(v5, v218);
    sub_22EF708C8(v212, v221);
    v195 = v203 < v199;
  }

  else
  {
    v5 = v18;
    v195 = sub_22EF71F2C(v12, v13, v16, v4);
    if (v202)
    {
      goto LABEL_286;
    }

    sub_22EF708C8(v16, v4);
    sub_22EF708C8(v206, v18);
    sub_22EF708C8(v21, v19);
    sub_22EF708C8(v12, v13);
    sub_22EF708C8(v209, v218);
    sub_22EF708C8(v212, v221);
  }

  v22 = 0;
  v23 = v172 + 2;
  v9 = (v215 + 56 * v172 + 80);
  v24 = v190;
  v25 = v193;
  do
  {
    v26 = v23;
    v30 = v24;
    v222 = v22;
    if (v23 >= v25)
    {
      break;
    }

    v31 = *(v9 + 5);
    v27 = *(v9 + 6);
    v32 = *(v9 + 7);
    v5 = *(v9 + 8);
    v6 = *(v9 + 9);
    v10 = *(v9 + 10);
    v33 = *(v9 - 3);
    v28 = *(v9 - 1);
    v210 = *v9;
    v213 = *(v9 + 1);
    v219 = *(v9 + 2);
    v34 = v31 >> 62;
    v204 = *(v9 - 2);
    v35 = v204 >> 62;
    v36 = *(v9 + 4);
    v216 = *(v9 + 3);
    if (v31 >> 62 == 3)
    {
      v37 = 0;
      if (!v36 && v31 == 0xC000000000000000 && v204 >> 62 == 3)
      {
        v37 = 0;
        if (!v33 && v204 == 0xC000000000000000)
        {
          goto LABEL_11;
        }
      }

LABEL_31:
      if (v35 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_37;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
        v37 = BYTE6(v31);
        if (v35 <= 1)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      LODWORD(v37) = HIDWORD(v36) - v36;
      if (__OFSUB__(HIDWORD(v36), v36))
      {
        goto LABEL_262;
      }

      v37 = v37;
      goto LABEL_31;
    }

    if (v34 == 2)
    {
      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      v127 = __OFSUB__(v38, v39);
      v37 = v38 - v39;
      if (v127)
      {
        goto LABEL_261;
      }

      goto LABEL_31;
    }

    v37 = 0;
    if (v35 <= 1)
    {
LABEL_32:
      if (v35)
      {
        LODWORD(v40) = HIDWORD(v33) - v33;
        if (__OFSUB__(HIDWORD(v33), v33))
        {
          goto LABEL_256;
        }

        v40 = v40;
      }

      else
      {
        v40 = BYTE6(v204);
      }

LABEL_39:
      if (v37 != v40)
      {
        goto LABEL_47;
      }

      if (v37 >= 1)
      {
        v197 = *(v9 + 4);
        v200 = v26;
        v188 = *(v9 + 7);
        v191 = *(v9 + 10);
        v181 = *(v9 + 9);
        v186 = *(v9 + 8);
        v207 = *(v9 - 3);
        v174 = *(v9 - 1);
        v175 = *(v9 + 6);
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v164 = v30;
            v48 = *(v36 + 16);
            v49 = *(v36 + 24);
            v50 = *(v9 + 5);
            sub_22EF70B68(v36, v31);
            sub_22EF70B68(v188, v5);
            sub_22EF70B68(v6, v10);
            sub_22EF70B68(v33, v204);
            sub_22EF70B68(v210, v213);
            sub_22EF70B68(v219, v216);
            v6 = v33;
            sub_22EF70B68(v33, v204);
            v51 = sub_22EFB603C();
            if (v51)
            {
              v52 = v51;
              v10 = v50;
              v53 = sub_22EFB605C();
              if (__OFSUB__(v48, v53))
              {
                goto LABEL_271;
              }

              v54 = v48 - v53 + v52;
            }

            else
            {
              v10 = v50;
              v54 = 0;
            }

            v127 = __OFSUB__(v49, v48);
            v30 = v164;
            if (v127)
            {
              goto LABEL_270;
            }

            sub_22EFB604C();
            v4 = v204;
            sub_22EF92D44(v54, v33, v204, __s1);
            if (v202)
            {
              goto LABEL_290;
            }

            sub_22EF708C8(v33, v204);
            v32 = v188;
            v44 = v191;
            v6 = v181;
            v5 = v186;
            v43 = v10;
            if ((__s1[0] & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            memset(__s1, 0, 14);
            v43 = v31;
            sub_22EF70B68(v36, v31);
            sub_22EF70B68(v32, v5);
            sub_22EF70B68(v6, v10);
            v4 = v204;
            sub_22EF70B68(v33, v204);
            sub_22EF70B68(v210, v213);
            sub_22EF70B68(v219, v216);
            sub_22EF70B68(v33, v204);
            sub_22EF92D44(__s1, v33, v204, &__s2);
            if (v202)
            {
              goto LABEL_290;
            }

            sub_22EF708C8(v33, v204);
            v44 = v10;
            if ((__s2 & 1) == 0)
            {
              goto LABEL_48;
            }
          }
        }

        else if (v34)
        {
          if (v36 >> 32 < v36)
          {
            goto LABEL_269;
          }

          v165 = v36;
          v10 = *(v9 + 5);
          sub_22EF70B68(v36, v31);
          sub_22EF70B68(v32, v5);
          sub_22EF70B68(v6, v191);
          sub_22EF70B68(v33, v204);
          sub_22EF70B68(v210, v213);
          sub_22EF70B68(v219, v216);
          sub_22EF70B68(v33, v204);
          v55 = sub_22EFB603C();
          v168 = v10;
          if (v55)
          {
            v56 = v55;
            v57 = sub_22EFB605C();
            if (__OFSUB__(v165, v57))
            {
              goto LABEL_272;
            }

            v58 = v165 - v57 + v56;
          }

          else
          {
            v58 = 0;
          }

          sub_22EFB604C();
          v4 = v204;
          sub_22EF92D44(v58, v33, v204, __s1);
          if (v202)
          {
LABEL_290:
            result = sub_22EF708C8(v33, v4);
            __break(1u);
            return result;
          }

          sub_22EF708C8(v33, v204);
          v44 = v191;
          v5 = v186;
          v43 = v168;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          __s1[0] = *(v9 + 4);
          LOWORD(__s1[1]) = v31;
          BYTE2(__s1[1]) = BYTE2(v31);
          BYTE3(__s1[1]) = BYTE3(v31);
          BYTE4(__s1[1]) = BYTE4(v31);
          BYTE5(__s1[1]) = BYTE5(v31);
          v43 = v31;
          sub_22EF70B68(v36, v31);
          sub_22EF70B68(v32, v5);
          sub_22EF70B68(v6, v10);
          v4 = v204;
          sub_22EF70B68(v33, v204);
          sub_22EF70B68(v210, v213);
          sub_22EF70B68(v219, v216);
          sub_22EF70B68(v33, v204);
          sub_22EF92D44(__s1, v33, v204, &__s2);
          if (v202)
          {
            goto LABEL_290;
          }

          sub_22EF708C8(v33, v204);
          v44 = v10;
          if ((__s2 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        v10 = v44;
        sub_22EF708C8(v33, v4);
        sub_22EF708C8(v210, v213);
        sub_22EF708C8(v219, v216);
        sub_22EF708C8(v197, v43);
        sub_22EF708C8(v32, v5);
        sub_22EF708C8(v6, v10);
        v25 = v193;
        v26 = v200;
        v28 = v174;
        v27 = v175;
      }

      goto LABEL_11;
    }

LABEL_37:
    if (v35 == 2)
    {
      v42 = *(v33 + 16);
      v41 = *(v33 + 24);
      v127 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v127)
      {
        goto LABEL_255;
      }

      goto LABEL_39;
    }

    if (v37)
    {
LABEL_47:
      v197 = *(v9 + 4);
      v200 = v26;
      v43 = *(v9 + 5);
      sub_22EF70B68(v36, v31);
      sub_22EF70B68(v32, v5);
      sub_22EF70B68(v6, v10);
      v207 = v33;
      v4 = v204;
      sub_22EF70B68(v33, v204);
      sub_22EF70B68(v210, v213);
      sub_22EF70B68(v219, v216);
      v44 = v10;
LABEL_48:
      v10 = v43;
      v45 = v44;
      v46 = sub_22EF71F2C(v197, v10, v207, v4);
      v47 = v4;
      v4 = v202;
      if (v202)
      {
        goto LABEL_289;
      }

      v29 = v46;
      sub_22EF708C8(v207, v47);
      sub_22EF708C8(v210, v213);
      sub_22EF708C8(v219, v216);
      sub_22EF708C8(v197, v10);
      sub_22EF708C8(v32, v5);
      sub_22EF708C8(v6, v45);
      v25 = v193;
      v26 = v200;
      v202 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v29 = v27 < v28;
LABEL_12:
    v23 = v26 + 1;
    v9 += 56;
    v24 = v30 + 1;
    v22 = v222 + 56;
  }

  while (((v195 ^ v29) & 1) == 0);
  if ((v195 & 1) == 0)
  {
    v8 = v26;
    v6 = a3;
    v9 = v169;
    goto LABEL_82;
  }

  v59 = v172;
  v6 = a3;
  v9 = v169;
  if (v26 < v172)
  {
    goto LABEL_275;
  }

  if (v172 >= v26)
  {
    v8 = v26;
    v10 = v172;
  }

  else
  {
    v60 = 0;
    do
    {
      if (v59 != v30)
      {
        if (!*a3)
        {
          goto LABEL_279;
        }

        v61 = *a3 + 56 * v172;
        v62 = (v61 + v60);
        v63 = *(v61 + v60 + 48);
        v64 = v61 + v222;
        v65 = *v62;
        v66 = v62[1];
        v67 = v62[2];
        v68 = *(v64 + 72);
        v69 = *(v64 + 88);
        v70 = *(v64 + 56);
        *(v62 + 6) = *(v64 + 104);
        v62[1] = v68;
        v62[2] = v69;
        *v62 = v70;
        *(v64 + 56) = v65;
        *(v64 + 72) = v66;
        *(v64 + 88) = v67;
        *(v64 + 104) = v63;
      }

      ++v59;
      v222 -= 56;
      v60 += 56;
    }

    while (v59 < v30--);
    v8 = v26;
LABEL_82:
    v10 = v172;
  }

LABEL_83:
  v72 = *(v6 + 8);
  if (v8 >= v72)
  {
    goto LABEL_173;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_268;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_173;
  }

  v73 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_273;
  }

  if (v73 >= v72)
  {
    v73 = *(v6 + 8);
  }

  if (v73 >= v10)
  {
    if (v8 == v73)
    {
      goto LABEL_173;
    }

    v170 = v9;
    v198 = *v6;
    v74 = *v6 + 56 * v8;
    v173 = v10;
    v75 = v10 - v8;
    v176 = v73;
    while (2)
    {
      v192 = v8;
      v76 = (v198 + 56 * v8);
      v6 = *v76;
      v77 = v76[1];
      v78 = v76[2];
      v79 = v76[5];
      v217 = v76[4];
      v220 = v76[3];
      v223 = v76[6];
      v187 = v75;
      v189 = v74;
      v80 = v74;
      while (2)
      {
        v10 = *(v80 - 7);
        v5 = *(v80 - 6);
        v9 = (v80 - 7);
        v81 = *(v80 - 5);
        v205 = *(v80 - 4);
        v208 = *(v80 - 3);
        v211 = *(v80 - 2);
        v214 = *(v80 - 1);
        v82 = v77 >> 62;
        v83 = v5 >> 62;
        if (v77 >> 62 == 3)
        {
          v84 = 0;
          if (v6)
          {
            goto LABEL_111;
          }

          if (v77 != 0xC000000000000000)
          {
            goto LABEL_111;
          }

          if (v5 >> 62 != 3)
          {
            goto LABEL_111;
          }

          v84 = 0;
          if (v10 || v5 != 0xC000000000000000)
          {
            goto LABEL_111;
          }

LABEL_153:
          if (v78 >= v81)
          {
            goto LABEL_92;
          }

LABEL_154:
          if (!v198)
          {
            __break(1u);
LABEL_278:
            __break(1u);
LABEL_279:
            __break(1u);
LABEL_280:
            __break(1u);
LABEL_281:
            __break(1u);
LABEL_282:
            __break(1u);
LABEL_283:
            sub_22EFB604C();
LABEL_284:
            __break(1u);
          }

          v6 = *v80;
          v77 = v80[1];
          v78 = v80[2];
          v103 = v80[3];
          v104 = v80[4];
          v79 = v80[5];
          v105 = v80[6];
          v106 = *(v80 - 5);
          *v80 = *v9;
          *(v80 + 1) = v106;
          *(v80 + 2) = *(v80 - 3);
          v80[6] = *(v80 - 1);
          *(v80 - 6) = v77;
          *(v80 - 5) = v78;
          v217 = v104;
          v220 = v103;
          *(v80 - 4) = v103;
          *(v80 - 3) = v104;
          *(v80 - 2) = v79;
          *(v80 - 1) = v105;
          v223 = v105;
          *(v80 - 7) = v6;
          v80 -= 7;
          if (__CFADD__(v75++, 1))
          {
            goto LABEL_92;
          }

          continue;
        }

        break;
      }

      if (v82 > 1)
      {
        if (v82 == 2)
        {
          v86 = *(v6 + 16);
          v85 = *(v6 + 24);
          v127 = __OFSUB__(v85, v86);
          v84 = v85 - v86;
          if (v127)
          {
            goto LABEL_241;
          }

          goto LABEL_111;
        }

        v84 = 0;
        if (v83 > 1)
        {
          goto LABEL_117;
        }
      }

      else
      {
        if (!v82)
        {
          v84 = BYTE6(v77);
          if (v83 <= 1)
          {
            break;
          }

LABEL_117:
          if (v83 != 2)
          {
            if (!v84)
            {
              goto LABEL_153;
            }

LABEL_131:
            sub_22EF70B68(v6, v77);
            sub_22EF70B68(v220, v217);
            v201 = v79;
            sub_22EF70B68(v79, v223);
            sub_22EF70B68(v10, v5);
            sub_22EF70B68(v205, v208);
            sub_22EF70B68(v211, v214);
            goto LABEL_132;
          }

          v89 = *(v10 + 16);
          v88 = *(v10 + 24);
          v127 = __OFSUB__(v88, v89);
          v87 = v88 - v89;
          if (v127)
          {
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
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
            __break(1u);
            goto LABEL_274;
          }

LABEL_119:
          if (v84 != v87)
          {
            goto LABEL_131;
          }

          if (v84 < 1)
          {
            goto LABEL_153;
          }

          v201 = v79;
          v194 = *(v80 - 5);
          v196 = v78;
          if (v82 > 1)
          {
            if (v82 != 2)
            {
              memset(__s1, 0, 14);
              sub_22EF70B68(v6, v77);
              sub_22EF70B68(v220, v217);
              sub_22EF70B68(v79, v223);
              sub_22EF70B68(v10, v5);
              sub_22EF70B68(v205, v208);
              sub_22EF70B68(v211, v214);
              sub_22EF70B68(v10, v5);
              sub_22EF92D44(__s1, v10, v5, &__s2);
              if (v202)
              {
                goto LABEL_288;
              }

              sub_22EF708C8(v10, v5);
              if ((__s2 & 1) == 0)
              {
                goto LABEL_132;
              }

              goto LABEL_152;
            }

            v178 = *(v6 + 24);
            v182 = *(v6 + 16);
            sub_22EF70B68(v6, v77);
            sub_22EF70B68(v220, v217);
            sub_22EF70B68(v79, v223);
            sub_22EF70B68(v10, v5);
            sub_22EF70B68(v205, v208);
            sub_22EF70B68(v211, v214);
            sub_22EF70B68(v10, v5);
            v96 = sub_22EFB603C();
            if (v96)
            {
              v97 = v96;
              v98 = sub_22EFB605C();
              v99 = v182;
              if (__OFSUB__(v182, v98))
              {
                goto LABEL_257;
              }

              v100 = &v182[v97 - v98];
            }

            else
            {
              v100 = 0;
              v99 = v182;
            }

            v4 = v178 - v99;
            if (__OFSUB__(v178, v99))
            {
              goto LABEL_253;
            }

            v183 = v100;
            sub_22EFB604C();
            v102 = v183;
          }

          else
          {
            if (!v82)
            {
              __s1[0] = v6;
              LOWORD(__s1[1]) = v77;
              BYTE2(__s1[1]) = BYTE2(v77);
              BYTE3(__s1[1]) = BYTE3(v77);
              BYTE4(__s1[1]) = BYTE4(v77);
              BYTE5(__s1[1]) = BYTE5(v77);
              if (v83)
              {
                if (v83 == 1)
                {
                  if (v10 >> 32 < v10)
                  {
                    goto LABEL_264;
                  }

                  sub_22EF70B68(v6, v77);
                  sub_22EF70B68(v220, v217);
                  sub_22EF70B68(v79, v223);
                  sub_22EF70B68(v10, v5);
                  sub_22EF70B68(v205, v208);
                  sub_22EF70B68(v211, v214);
                  sub_22EF70B68(v10, v5);
                  v177 = sub_22EFB603C();
                  if (!v177)
                  {
                    goto LABEL_283;
                  }

                  v90 = sub_22EFB605C();
                  if (__OFSUB__(v10, v90))
                  {
                    goto LABEL_266;
                  }

                  v4 = v10 - v90 + v177;
                  v91 = sub_22EFB604C();
                  if (!v4)
                  {
                    goto LABEL_284;
                  }

                  v92 = v4;
                  v93 = (v10 >> 32) - v10;
                }

                else
                {
                  v179 = *(v10 + 24);
                  v184 = *(v10 + 16);
                  sub_22EF70B68(v6, v77);
                  sub_22EF70B68(v220, v217);
                  sub_22EF70B68(v79, v223);
                  sub_22EF70B68(v10, v5);
                  sub_22EF70B68(v205, v208);
                  sub_22EF70B68(v211, v214);
                  sub_22EF70B68(v10, v5);
                  v108 = sub_22EFB603C();
                  if (v108)
                  {
                    v4 = v108;
                    v109 = sub_22EFB605C();
                    v110 = v184;
                    if (__OFSUB__(v184, v109))
                    {
                      goto LABEL_267;
                    }

                    v111 = &v184[v4 - v109];
                  }

                  else
                  {
                    v111 = 0;
                    v110 = v184;
                  }

                  if (__OFSUB__(v179, v110))
                  {
                    goto LABEL_265;
                  }

                  v180 = v179 - v110;
                  v185 = v111;
                  v91 = sub_22EFB604C();
                  v92 = v185;
                  if (!v185)
                  {
                    goto LABEL_282;
                  }

                  v93 = v180;
                }

                if (v91 >= v93)
                {
                  v112 = v93;
                }

                else
                {
                  v112 = v91;
                }

                v113 = memcmp(__s1, v92, v112);
                sub_22EF708C8(v10, v5);
                if (!v113)
                {
                  goto LABEL_152;
                }

LABEL_132:
                v94 = sub_22EF71F2C(v6, v77, v10, v5);
                if (v202)
                {
                  goto LABEL_286;
                }

                v95 = v94;
                sub_22EF708C8(v10, v5);
                sub_22EF708C8(v205, v208);
                sub_22EF708C8(v211, v214);
                sub_22EF708C8(v6, v77);
                sub_22EF708C8(v220, v217);
                sub_22EF708C8(v201, v223);
                if (v95)
                {
                  goto LABEL_154;
                }

LABEL_92:
                v8 = v192 + 1;
                v74 = v189 + 56;
                v75 = v187 - 1;
                if (v192 + 1 != v176)
                {
                  continue;
                }

                v8 = v176;
                v6 = a3;
                v9 = v170;
                v10 = v173;
LABEL_173:
                if (v8 < v10)
                {
                  goto LABEL_263;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v9 = sub_22EF7DDCC(0, *(v9 + 2) + 1, 1, v9);
                }

                v4 = *(v9 + 2);
                v114 = *(v9 + 3);
                v115 = v4 + 1;
                if (v4 >= v114 >> 1)
                {
                  v9 = sub_22EF7DDCC((v114 > 1), v4 + 1, 1, v9);
                }

                *(v9 + 2) = v115;
                v116 = &v9[16 * v4];
                *(v116 + 4) = v10;
                *(v116 + 5) = v8;
                v10 = *a1;
                if (!*a1)
                {
                  goto LABEL_281;
                }

                if (v4)
                {
                  while (2)
                  {
                    v4 = v115 - 1;
                    if (v115 >= 4)
                    {
                      v121 = &v9[16 * v115 + 32];
                      v122 = *(v121 - 64);
                      v123 = *(v121 - 56);
                      v127 = __OFSUB__(v123, v122);
                      v124 = v123 - v122;
                      if (v127)
                      {
                        goto LABEL_242;
                      }

                      v126 = *(v121 - 48);
                      v125 = *(v121 - 40);
                      v127 = __OFSUB__(v125, v126);
                      v119 = v125 - v126;
                      v120 = v127;
                      if (v127)
                      {
                        goto LABEL_243;
                      }

                      v128 = &v9[16 * v115];
                      v130 = *v128;
                      v129 = *(v128 + 1);
                      v127 = __OFSUB__(v129, v130);
                      v131 = v129 - v130;
                      if (v127)
                      {
                        goto LABEL_245;
                      }

                      v127 = __OFADD__(v119, v131);
                      v132 = v119 + v131;
                      if (v127)
                      {
                        goto LABEL_248;
                      }

                      if (v132 >= v124)
                      {
                        v150 = &v9[16 * v4 + 32];
                        v152 = *v150;
                        v151 = *(v150 + 1);
                        v127 = __OFSUB__(v151, v152);
                        v153 = v151 - v152;
                        if (v127)
                        {
                          goto LABEL_254;
                        }

                        if (v119 < v153)
                        {
                          v4 = v115 - 2;
                        }
                      }

                      else
                      {
LABEL_193:
                        if (v120)
                        {
                          goto LABEL_244;
                        }

                        v133 = &v9[16 * v115];
                        v135 = *v133;
                        v134 = *(v133 + 1);
                        v136 = __OFSUB__(v134, v135);
                        v137 = v134 - v135;
                        v138 = v136;
                        if (v136)
                        {
                          goto LABEL_247;
                        }

                        v139 = &v9[16 * v4 + 32];
                        v141 = *v139;
                        v140 = *(v139 + 1);
                        v127 = __OFSUB__(v140, v141);
                        v142 = v140 - v141;
                        if (v127)
                        {
                          goto LABEL_250;
                        }

                        if (__OFADD__(v137, v142))
                        {
                          goto LABEL_251;
                        }

                        if (v137 + v142 < v119)
                        {
                          goto LABEL_207;
                        }

                        if (v119 < v142)
                        {
                          v4 = v115 - 2;
                        }
                      }
                    }

                    else
                    {
                      if (v115 == 3)
                      {
                        v117 = *(v9 + 4);
                        v118 = *(v9 + 5);
                        v127 = __OFSUB__(v118, v117);
                        v119 = v118 - v117;
                        v120 = v127;
                        goto LABEL_193;
                      }

                      v143 = &v9[16 * v115];
                      v145 = *v143;
                      v144 = *(v143 + 1);
                      v127 = __OFSUB__(v144, v145);
                      v137 = v144 - v145;
                      v138 = v127;
LABEL_207:
                      if (v138)
                      {
                        goto LABEL_246;
                      }

                      v146 = &v9[16 * v4];
                      v148 = *(v146 + 4);
                      v147 = *(v146 + 5);
                      v127 = __OFSUB__(v147, v148);
                      v149 = v147 - v148;
                      if (v127)
                      {
                        goto LABEL_249;
                      }

                      if (v149 < v137)
                      {
                        break;
                      }
                    }

                    v5 = v4 - 1;
                    if (v4 - 1 >= v115)
                    {
                      goto LABEL_237;
                    }

                    if (!*v6)
                    {
                      goto LABEL_278;
                    }

                    v154 = *&v9[16 * v5 + 32];
                    v155 = *&v9[16 * v4 + 40];
                    sub_22EF6D7C0((*v6 + 56 * v154), (*v6 + 56 * *&v9[16 * v4 + 32]), *v6 + 56 * v155, v10);
                    if (v202)
                    {
                      goto LABEL_234;
                    }

                    if (v155 < v154)
                    {
                      goto LABEL_238;
                    }

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v9 = sub_22EF9AAB4(v9);
                    }

                    if (v5 >= *(v9 + 2))
                    {
                      goto LABEL_239;
                    }

                    v156 = &v9[16 * v5];
                    *(v156 + 4) = v154;
                    *(v156 + 5) = v155;
                    v231 = v9;
                    sub_22EF9AA28(v4);
                    v9 = v231;
                    v115 = *(v231 + 2);
                    if (v115 <= 1)
                    {
                      break;
                    }

                    continue;
                  }
                }

                v7 = *(v6 + 8);
                if (v8 >= v7)
                {
                  goto LABEL_224;
                }

                goto LABEL_4;
              }

              __s2 = v10;
              v225 = v5;
              v226 = BYTE2(v5);
              v227 = BYTE3(v5);
              v228 = BYTE4(v5);
              v229 = BYTE5(v5);
              sub_22EF70B68(v6, v77);
              sub_22EF70B68(v220, v217);
              sub_22EF70B68(v79, v223);
              sub_22EF70B68(v10, v5);
              sub_22EF70B68(v205, v208);
              sub_22EF70B68(v211, v214);
              if (memcmp(__s1, &__s2, BYTE6(v5)))
              {
                goto LABEL_132;
              }

LABEL_152:
              sub_22EF708C8(v10, v5);
              sub_22EF708C8(v205, v208);
              sub_22EF708C8(v211, v214);
              sub_22EF708C8(v6, v77);
              sub_22EF708C8(v220, v217);
              sub_22EF708C8(v201, v223);
              v81 = v194;
              v78 = v196;
              goto LABEL_153;
            }

            if (v6 >> 32 < v6)
            {
              goto LABEL_252;
            }

            sub_22EF70B68(v6, v77);
            sub_22EF70B68(v220, v217);
            sub_22EF70B68(v79, v223);
            sub_22EF70B68(v10, v5);
            sub_22EF70B68(v205, v208);
            sub_22EF70B68(v211, v214);
            sub_22EF70B68(v10, v5);
            v4 = sub_22EFB603C();
            if (v4)
            {
              v101 = sub_22EFB605C();
              if (__OFSUB__(v6, v101))
              {
                goto LABEL_258;
              }

              v4 += v6 - v101;
            }

            sub_22EFB604C();
            v102 = v4;
          }

          sub_22EF92D44(v102, v10, v5, __s1);
          if (v202)
          {
            goto LABEL_288;
          }

          sub_22EF708C8(v10, v5);
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_132;
          }

          goto LABEL_152;
        }

        LODWORD(v84) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          goto LABEL_240;
        }

        v84 = v84;
LABEL_111:
        if (v83 > 1)
        {
          goto LABEL_117;
        }
      }

      break;
    }

    if (v83)
    {
      LODWORD(v87) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_236;
      }

      v87 = v87;
    }

    else
    {
      v87 = BYTE6(v5);
    }

    goto LABEL_119;
  }

LABEL_274:
  __break(1u);
LABEL_275:
  __break(1u);
LABEL_276:
  v9 = sub_22EF9AAB4(v9);
LABEL_226:
  v231 = v9;
  v157 = *(v9 + 2);
  if (v157 >= 2)
  {
    while (*v6)
    {
      v158 = *&v9[16 * v157];
      v159 = *&v9[16 * v157 + 24];
      sub_22EF6D7C0((*v6 + 56 * v158), (*v6 + 56 * *&v9[16 * v157 + 16]), *v6 + 56 * v159, v10);
      if (v202)
      {
        goto LABEL_234;
      }

      if (v159 < v158)
      {
        goto LABEL_259;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22EF9AAB4(v9);
      }

      if (v157 - 2 >= *(v9 + 2))
      {
        goto LABEL_260;
      }

      v160 = &v9[16 * v157];
      *v160 = v158;
      *(v160 + 1) = v159;
      v231 = v9;
      sub_22EF9AA28(v157 - 1);
      v9 = v231;
      v157 = *(v231 + 2);
      if (v157 <= 1)
      {
        goto LABEL_234;
      }
    }

    goto LABEL_280;
  }

LABEL_234:

  v162 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EF6D7C0(uint64_t *__dst, uint64_t *a2, unint64_t a3, uint64_t *__src)
{
  v5 = __src;
  v6 = __dst;
  v140[2] = *MEMORY[0x277D85DE8];
  v7 = a2 - __dst;
  v8 = (a2 - __dst) / 56;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 56;
  v117 = a3;
  if (v8 >= v10)
  {
    if (__src != a2 || &a2[7 * v10] <= __src)
    {
      v57 = a2;
      memmove(__src, a2, 56 * v10);
      a2 = v57;
      a3 = v117;
    }

    v12 = &v5[7 * v10];
    if (v9 < 56 || a2 <= v6)
    {
      goto LABEL_151;
    }

    v121 = v5;
    v125 = v6;
    while (1)
    {
      v106 = a2 - 7;
      v58 = a3;
      v59 = v12;
      v127 = a2;
      while (1)
      {
        v60 = *(v59 - 56);
        v33 = *(v59 - 48);
        v59 -= 56;
        v61 = *(v59 + 16);
        v62 = *(v59 + 24);
        v63 = *(v59 + 32);
        v64 = *(v59 + 48);
        v20 = *(a2 - 7);
        v65 = *(a2 - 6);
        v66 = *(a2 - 5);
        v130 = *(v59 + 40);
        v132 = *(a2 - 4);
        v134 = *(a2 - 3);
        v136 = *(a2 - 2);
        v138 = *(a2 - 1);
        v67 = v33 >> 62;
        v68 = v65 >> 62;
        if (v33 >> 62 == 3)
        {
          v69 = 0;
          if (!v60 && v33 == 0xC000000000000000 && v65 >> 62 == 3)
          {
            v69 = 0;
            if (!v20 && v65 == 0xC000000000000000)
            {
              goto LABEL_141;
            }
          }

LABEL_98:
          if (v68 > 1)
          {
            goto LABEL_92;
          }

          goto LABEL_99;
        }

        if (v67 > 1)
        {
          if (v67 == 2)
          {
            v74 = *(v60 + 16);
            v73 = *(v60 + 24);
            v28 = __OFSUB__(v73, v74);
            v69 = v73 - v74;
            if (v28)
            {
              goto LABEL_159;
            }

            goto LABEL_98;
          }

          v69 = 0;
          if (v68 > 1)
          {
            goto LABEL_92;
          }
        }

        else if (v67)
        {
          LODWORD(v69) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_161;
          }

          v69 = v69;
          if (v68 > 1)
          {
LABEL_92:
            if (v68 != 2)
            {
              if (!v69)
              {
                goto LABEL_141;
              }

LABEL_112:
              v118 = v58;
              v123 = v12;
              v77 = *(a2 - 6);
              sub_22EF70B68(v60, v33);
              sub_22EF70B68(v62, v63);
              sub_22EF70B68(v130, v64);
              v128 = v77;
              sub_22EF70B68(v20, v77);
              sub_22EF70B68(v132, v134);
              sub_22EF70B68(v136, v138);
              goto LABEL_113;
            }

            v71 = *(v20 + 16);
            v70 = *(v20 + 24);
            v28 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v28)
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
            }

            goto LABEL_101;
          }
        }

        else
        {
          v69 = BYTE6(v33);
          if (v68 > 1)
          {
            goto LABEL_92;
          }
        }

LABEL_99:
        if (!v68)
        {
          v72 = BYTE6(v65);
LABEL_101:
          if (v69 != v72)
          {
            goto LABEL_112;
          }

          goto LABEL_107;
        }

        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_155;
        }

        if (v69 != HIDWORD(v20) - v20)
        {
          goto LABEL_112;
        }

LABEL_107:
        if (v69 < 1)
        {
          goto LABEL_141;
        }

        v123 = v12;
        v118 = v58;
        v128 = *(a2 - 6);
        v113 = *(a2 - 5);
        v114 = *(v59 + 16);
        if (v67 > 1)
        {
          v111 = *(v59 + 24);
          if (v67 == 2)
          {
            v81 = *(v60 + 16);
            v108 = *(v60 + 24);
            sub_22EF70B68(v60, v33);
            sub_22EF70B68(v62, v63);
            sub_22EF70B68(v130, v64);
            sub_22EF70B68(v20, v128);
            sub_22EF70B68(v132, v134);
            sub_22EF70B68(v136, v138);
            sub_22EF70B68(v20, v128);
            v82 = sub_22EFB603C();
            if (v82)
            {
              v83 = v82;
              v84 = sub_22EFB605C();
              if (__OFSUB__(v81, v84))
              {
                goto LABEL_167;
              }

              v85 = v83;
              v86 = v33;
              v87 = v60;
              v88 = v63;
              v89 = v81 - v84 + v85;
            }

            else
            {
              v86 = v33;
              v87 = v60;
              v88 = v63;
              v89 = 0;
            }

            if (__OFSUB__(v108, v81))
            {
              goto LABEL_164;
            }

            sub_22EFB604C();
            sub_22EF92D44(v89, v20, v128, v140);
            if (v4)
            {
              goto LABEL_174;
            }

            sub_22EF708C8(v20, v128);
            v63 = v88;
            v62 = v111;
            v60 = v87;
            v33 = v86;
            v5 = v121;
            if (v140[0])
            {
LABEL_140:
              sub_22EF708C8(v20, v128);
              sub_22EF708C8(v132, v134);
              sub_22EF708C8(v136, v138);
              sub_22EF708C8(v60, v33);
              sub_22EF708C8(v62, v63);
              sub_22EF708C8(v130, v64);
              v12 = v123;
              v58 = v118;
              a2 = v127;
              v66 = v113;
              v61 = v114;
LABEL_141:
              a3 = (v58 - 7);
              if (v61 < v66)
              {
                break;
              }

              goto LABEL_142;
            }
          }

          else
          {
            memset(v140, 0, 14);
            sub_22EF70B68(v60, v33);
            sub_22EF70B68(v62, v63);
            sub_22EF70B68(v130, v64);
            sub_22EF70B68(v20, v128);
            sub_22EF70B68(v132, v134);
            sub_22EF70B68(v136, v138);
            sub_22EF70B68(v20, v128);
            sub_22EF92D44(v140, v20, v128, &v139);
            if (v4)
            {
              goto LABEL_174;
            }

            sub_22EF708C8(v20, v128);
            if (v139)
            {
              goto LABEL_140;
            }
          }
        }

        else
        {
          v116 = *(v59 + 48);
          if (v67)
          {
            if (v60 >> 32 < v60)
            {
              goto LABEL_163;
            }

            v90 = *(a2 - 6);
            sub_22EF70B68(v60, v33);
            sub_22EF70B68(v62, v63);
            sub_22EF70B68(v130, v116);
            sub_22EF70B68(v20, v90);
            sub_22EF70B68(v132, v134);
            sub_22EF70B68(v136, v138);
            v109 = v20;
            sub_22EF70B68(v20, v90);
            v91 = sub_22EFB603C();
            if (v91)
            {
              v92 = sub_22EFB605C();
              if (__OFSUB__(v60, v92))
              {
                goto LABEL_168;
              }

              v91 += v60 - v92;
            }

            sub_22EFB604C();
            v93 = v91;
            v20 = v109;
            sub_22EF92D44(v93, v109, v128, v140);
            if (v4)
            {
              goto LABEL_174;
            }

            sub_22EF708C8(v109, v128);
            v76 = v140[0];
          }

          else
          {
            v140[0] = v60;
            LOWORD(v140[1]) = v33;
            BYTE2(v140[1]) = BYTE2(v33);
            BYTE3(v140[1]) = BYTE3(v33);
            BYTE4(v140[1]) = BYTE4(v33);
            BYTE5(v140[1]) = BYTE5(v33);
            v75 = v65;
            sub_22EF70B68(v60, v33);
            sub_22EF70B68(v62, v63);
            sub_22EF70B68(v130, v116);
            sub_22EF70B68(v20, v75);
            sub_22EF70B68(v132, v134);
            sub_22EF70B68(v136, v138);
            sub_22EF70B68(v20, v75);
            sub_22EF92D44(v140, v20, v75, &v139);
            if (v4)
            {
              goto LABEL_174;
            }

            sub_22EF708C8(v20, v128);
            v76 = v139;
          }

          v64 = v116;
          if (v76)
          {
            goto LABEL_140;
          }
        }

LABEL_113:
        v78 = v64;
        v79 = sub_22EF71F2C(v60, v33, v20, v128);
        if (v4)
        {
          v103 = v4;
          goto LABEL_172;
        }

        v80 = v79;
        sub_22EF708C8(v20, v128);
        sub_22EF708C8(v132, v134);
        sub_22EF708C8(v136, v138);
        sub_22EF708C8(v60, v33);
        sub_22EF708C8(v62, v63);
        sub_22EF708C8(v130, v78);
        v58 = v118;
        a3 = (v118 - 7);
        v5 = v121;
        v12 = v123;
        a2 = v127;
        if (v80)
        {
          break;
        }

LABEL_142:
        if (v12 != v58)
        {
          v94 = *v59;
          v95 = *(v59 + 16);
          v96 = *(v59 + 32);
          *(a3 + 48) = *(v59 + 48);
          *(a3 + 16) = v95;
          *(a3 + 32) = v96;
          *a3 = v94;
        }

        v12 = v59;
        v58 = a3;
        if (v59 <= v5)
        {
          v12 = v59;
          goto LABEL_151;
        }
      }

      if (v58 != a2)
      {
        v97 = *v106;
        v98 = *(v106 + 1);
        v99 = *(v106 + 2);
        *(a3 + 48) = v106[6];
        *(a3 + 16) = v98;
        *(a3 + 32) = v99;
        *a3 = v97;
      }

      if (v12 > v5)
      {
        a2 = v106;
        if (v106 > v125)
        {
          continue;
        }
      }

      a2 = v106;
      goto LABEL_151;
    }
  }

  if (__src != __dst || &__dst[7 * v8] <= __src)
  {
    v11 = a2;
    memmove(__src, __dst, 56 * v8);
    a2 = v11;
    a3 = v117;
  }

  v12 = &v5[7 * v8];
  if (v7 < 56)
  {
    a2 = v6;
LABEL_151:
    v100 = (v12 - v5) / 56;
    if (a2 != v5 || a2 >= &v5[7 * v100])
    {
      memmove(a2, v5, 56 * v100);
    }

    v101 = *MEMORY[0x277D85DE8];
    return 1;
  }

  if (a2 >= a3)
  {
LABEL_73:
    a2 = v6;
    goto LABEL_151;
  }

  v122 = &v5[7 * v8];
  while (1)
  {
    v124 = v6;
    v14 = *a2;
    v13 = a2[1];
    v15 = a2[2];
    v16 = a2[3];
    v17 = a2[4];
    v18 = a2[5];
    v19 = a2[6];
    v20 = *v5;
    v21 = v5[2];
    v22 = v5[5];
    v133 = v5[3];
    v135 = v5[4];
    v23 = v13 >> 62;
    v131 = v5[1];
    v24 = v131 >> 62;
    v137 = v5[6];
    if (v13 >> 62 == 3)
    {
      v25 = 0;
      if (!v14 && v13 == 0xC000000000000000 && v131 >> 62 == 3)
      {
        v25 = 0;
        if (!v20 && v131 == 0xC000000000000000)
        {
          goto LABEL_68;
        }
      }

LABEL_24:
      if (v24 <= 1)
      {
        break;
      }

      goto LABEL_18;
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v25 = 0;
        if (v24 <= 1)
        {
          break;
        }

        goto LABEL_18;
      }

      v31 = *(v14 + 16);
      v30 = *(v14 + 24);
      v28 = __OFSUB__(v30, v31);
      v25 = v30 - v31;
      if (v28)
      {
        goto LABEL_158;
      }

      goto LABEL_24;
    }

    if (!v23)
    {
      v25 = BYTE6(v13);
      if (v24 <= 1)
      {
        break;
      }

      goto LABEL_18;
    }

    LODWORD(v25) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_160;
    }

    v25 = v25;
    if (v24 <= 1)
    {
      break;
    }

LABEL_18:
    if (v24 == 2)
    {
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      v28 = __OFSUB__(v26, v27);
      v29 = v26 - v27;
      if (v28)
      {
        goto LABEL_156;
      }

      goto LABEL_27;
    }

    if (v25)
    {
      goto LABEL_38;
    }

LABEL_68:
    v39 = v124;
    if (v15 >= v21)
    {
LABEL_69:
      v40 = v5;
      v41 = v39 == v5;
      v5 += 7;
      if (v41)
      {
        goto LABEL_71;
      }

LABEL_70:
      v54 = *v40;
      v55 = *(v40 + 1);
      v56 = *(v40 + 2);
      v39[6] = v40[6];
      *(v39 + 1) = v55;
      *(v39 + 2) = v56;
      *v39 = v54;
      goto LABEL_71;
    }

LABEL_41:
    v40 = a2;
    v41 = v39 == a2;
    a2 += 7;
    if (!v41)
    {
      goto LABEL_70;
    }

LABEL_71:
    v6 = v39 + 7;
    if (v5 >= v12 || a2 >= a3)
    {
      goto LABEL_73;
    }
  }

  if (!v24)
  {
    v29 = BYTE6(v131);
LABEL_27:
    if (v25 != v29)
    {
      goto LABEL_38;
    }

LABEL_33:
    if (v25 < 1)
    {
      goto LABEL_68;
    }

    v128 = a2[5];
    v129 = v5[5];
    v120 = v5;
    v115 = *a2;
    v126 = a2;
    v110 = v5[2];
    v112 = a2[2];
    if (v23 > 1)
    {
      v107 = *v5;
      if (v23 != 2)
      {
        memset(v140, 0, 14);
        v119 = v13;
        sub_22EF70B68(v14, v13);
        v32 = v16;
        sub_22EF70B68(v16, v17);
        sub_22EF70B68(v18, v19);
        v33 = v131;
        sub_22EF70B68(v20, v131);
        sub_22EF70B68(v133, v135);
        sub_22EF70B68(v129, v137);
        sub_22EF70B68(v20, v131);
        sub_22EF92D44(v140, v20, v131, &v139);
        if (v4)
        {
          goto LABEL_173;
        }

        goto LABEL_62;
      }

      v42 = a2[3];
      v43 = *(v14 + 16);
      v104 = *(v14 + 24);
      sub_22EF70B68(v14, v13);
      sub_22EF70B68(v42, v17);
      sub_22EF70B68(v18, v19);
      sub_22EF70B68(v20, v131);
      sub_22EF70B68(v133, v135);
      sub_22EF70B68(v129, v137);
      sub_22EF70B68(v20, v131);
      v44 = sub_22EFB603C();
      if (v44)
      {
        v45 = sub_22EFB605C();
        if (__OFSUB__(v43, v45))
        {
          goto LABEL_166;
        }

        v44 += v43 - v45;
      }

      v28 = __OFSUB__(v104, v43);
      v16 = v42;
      if (v28)
      {
        goto LABEL_165;
      }

      sub_22EFB604C();
      v46 = v44;
      v20 = v107;
      v33 = v131;
      sub_22EF92D44(v46, v107, v131, v140);
      if (v4)
      {
        goto LABEL_173;
      }

      v34 = 0;
      sub_22EF708C8(v107, v131);
      if ((v140[0] & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else if (v23)
    {
      v105 = a2[4];
      v47 = v14;
      if (v14 >> 32 < v14)
      {
        goto LABEL_162;
      }

      sub_22EF70B68(v14, v13);
      sub_22EF70B68(v16, v105);
      sub_22EF70B68(v18, v19);
      sub_22EF70B68(v20, v131);
      sub_22EF70B68(v133, v135);
      sub_22EF70B68(v22, v137);
      v48 = v20;
      sub_22EF70B68(v20, v131);
      v49 = sub_22EFB603C();
      if (v49)
      {
        v50 = v49;
        v51 = v13;
        v52 = sub_22EFB605C();
        if (__OFSUB__(v47, v52))
        {
          goto LABEL_169;
        }

        v53 = v47 - v52 + v50;
      }

      else
      {
        v51 = v13;
        v53 = 0;
      }

      sub_22EFB604C();
      v20 = v48;
      v33 = v131;
      sub_22EF92D44(v53, v48, v131, v140);
      v17 = v105;
      if (v4)
      {
        goto LABEL_173;
      }

      v34 = 0;
      sub_22EF708C8(v48, v131);
      v14 = v115;
      v13 = v51;
      if ((v140[0] & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v140[0] = *a2;
      LOWORD(v140[1]) = v13;
      BYTE2(v140[1]) = BYTE2(v13);
      BYTE3(v140[1]) = BYTE3(v13);
      BYTE4(v140[1]) = BYTE4(v13);
      BYTE5(v140[1]) = BYTE5(v13);
      v119 = v13;
      sub_22EF70B68(v14, v13);
      v32 = v16;
      sub_22EF70B68(v16, v17);
      sub_22EF70B68(v18, v19);
      v33 = v131;
      sub_22EF70B68(v20, v131);
      sub_22EF70B68(v133, v135);
      sub_22EF70B68(v129, v137);
      sub_22EF70B68(v20, v131);
      sub_22EF92D44(v140, v20, v131, &v139);
      if (v4)
      {
        goto LABEL_173;
      }

LABEL_62:
      v34 = 0;
      sub_22EF708C8(v20, v131);
      v13 = v119;
      v16 = v32;
      if ((v139 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    sub_22EF708C8(v20, v33);
    sub_22EF708C8(v133, v135);
    sub_22EF708C8(v129, v137);
    sub_22EF708C8(v14, v13);
    sub_22EF708C8(v16, v17);
    sub_22EF708C8(v128, v19);
    v4 = 0;
    v5 = v120;
    v12 = v122;
    a3 = v117;
    a2 = v126;
    v21 = v110;
    v15 = v112;
    goto LABEL_68;
  }

  if (__OFSUB__(HIDWORD(v20), v20))
  {
    goto LABEL_157;
  }

  if (v25 == HIDWORD(v20) - v20)
  {
    goto LABEL_33;
  }

LABEL_38:
  v126 = a2;
  v120 = v5;
  v34 = v4;
  sub_22EF70B68(v14, v13);
  sub_22EF70B68(v16, v17);
  v128 = v18;
  sub_22EF70B68(v18, v19);
  v33 = v131;
  sub_22EF70B68(v20, v131);
  sub_22EF70B68(v133, v135);
  v129 = v22;
  sub_22EF70B68(v22, v137);
LABEL_39:
  v35 = v19;
  v4 = v34;
  v36 = sub_22EF71F2C(v14, v13, v20, v33);
  v37 = v33;
  v33 = v34;
  if (!v34)
  {
    v38 = v36;
    sub_22EF708C8(v20, v37);
    sub_22EF708C8(v133, v135);
    sub_22EF708C8(v129, v137);
    sub_22EF708C8(v14, v13);
    sub_22EF708C8(v16, v17);
    sub_22EF708C8(v128, v35);
    v12 = v122;
    v39 = v124;
    v5 = v120;
    a3 = v117;
    a2 = v126;
    if ((v38 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_41;
  }

  v103 = v34;
LABEL_172:

  sub_22EFB67BC();
  __break(1u);
LABEL_173:
  sub_22EF708C8(v20, v33);
  __break(1u);
LABEL_174:
  result = sub_22EF708C8(v20, v128);
  __break(1u);
  return result;
}

uint64_t sub_22EF6E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22EFB603C();
  v11 = result;
  if (result)
  {
    result = sub_22EFB605C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22EFB604C();
  sub_22EF92D44(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22EF6E8C0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22EF70B68(a3, a4);
          return sub_22EF6B5F0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22EF6EA28@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = sub_22EFB648C();
  v13 = sub_22EF82368(v11, v12);
  if (v5)
  {

    return sub_22EF708C8(a3, a4);
  }

  v14 = v13;

  v15 = sub_22EFB648C();
  sub_22EF8261C(v15, v16, v79);

  v18 = *(&v79[0] + 1);
  if (*(&v79[0] + 1) >> 60 == 15)
  {
    goto LABEL_17;
  }

  v78 = *&v79[0];
  v19 = *(&v79[0] + 1) >> 62;
  if ((*(&v79[0] + 1) >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE14(v79[0]);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v19 != 2)
  {
LABEL_16:
    sub_22EF708B4(v78, v18);
LABEL_17:
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v26 = sub_22EFB626C();
    __swift_project_value_buffer(v26, qword_27DA9E328);
    v27 = sub_22EFB624C();
    v28 = sub_22EFB65CC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22EEF5000, v27, v28, "Priority Reader Identifier should be present and 8 bytes long", v29, 2u);
      MEMORY[0x2318FC200](v29, -1, -1);
    }

    goto LABEL_21;
  }

  v22 = *(*&v79[0] + 16);
  v21 = *(*&v79[0] + 24);
  v23 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v23)
  {
    __break(1u);
LABEL_12:
    LODWORD(v20) = HIDWORD(v78) - v78;
    if (__OFSUB__(HIDWORD(v78), v78))
    {
      __break(1u);
      goto LABEL_68;
    }

    v20 = v20;
  }

LABEL_14:
  if (v20 != 8)
  {
    goto LABEL_16;
  }

  v75 = v18;
  v24 = sub_22EFB648C();
  sub_22EF8261C(v24, v25, v79);

  v34 = *(&v79[0] + 1);
  if (*(&v79[0] + 1) >> 60 == 15)
  {
    goto LABEL_36;
  }

  v35 = *&v79[0];
  v81 = v79[0];
  v36 = *(&v79[0] + 1) >> 62;
  if ((*(&v79[0] + 1) >> 62) > 1)
  {
    if (v36 != 2)
    {
LABEL_35:
      sub_22EF708C8(v35, v34);
LABEL_36:
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v40 = sub_22EFB626C();
      __swift_project_value_buffer(v40, qword_27DA9E328);
      v27 = sub_22EFB624C();
      v41 = sub_22EFB65CC();
      if (os_log_type_enabled(v27, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_22EEF5000, v27, v41, "PK Reader Identifier should be present and at least 8 bytes long", v42, 2u);
        MEMORY[0x2318FC200](v42, -1, -1);
      }

      sub_22EF708B4(v78, v75);
LABEL_21:

LABEL_22:
      v76 = 0;
      v78 = 0;
      v14 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0xF000000000000000;
LABEL_23:
      result = sub_22EF708C8(a3, a4);
      *a5 = v78;
      a5[1] = v33;
      a5[2] = v14;
      a5[3] = v76;
      a5[4] = v30;
      a5[5] = v31;
      a5[6] = v32;
      return result;
    }

    v39 = *(*&v79[0] + 16);
    v38 = *(*&v79[0] + 24);
    v23 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (!v23)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_32:
    LODWORD(v37) = HIDWORD(v35) - v35;
    if (__OFSUB__(HIDWORD(v35), v35))
    {
      __break(1u);
      goto LABEL_85;
    }

    v37 = v37;
    goto LABEL_34;
  }

  if (v36)
  {
    goto LABEL_32;
  }

  v37 = BYTE14(v79[0]);
LABEL_34:
  if (v37 < 8)
  {
    goto LABEL_35;
  }

  v43 = Data.popPrefix(_:)(8);
  v45 = v44;
  v77 = sub_22EF6E8C0(v78, v75, v43, v44);
  sub_22EF708C8(v43, v45);
  if ((v77 & 1) == 0)
  {
    if (qword_27DA9E320 == -1)
    {
LABEL_43:
      v48 = sub_22EFB626C();
      __swift_project_value_buffer(v48, qword_27DA9E328);
      v49 = sub_22EFB624C();
      v50 = sub_22EFB65CC();
      if (!os_log_type_enabled(v49, v50))
      {
LABEL_46:
        sub_22EF708B4(v78, v75);

LABEL_47:
        sub_22EF708C8(v81, *(&v81 + 1));
        goto LABEL_22;
      }

      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = "Priority and Key Reader Identifiers do not match";
LABEL_45:
      _os_log_impl(&dword_22EEF5000, v49, v50, v52, v51, 2u);
      MEMORY[0x2318FC200](v51, -1, -1);
      goto LABEL_46;
    }

LABEL_85:
    swift_once();
    goto LABEL_43;
  }

  v46 = sub_22EFB648C();
  v53 = sub_22EF82904(v46, v47);

  if (!v53)
  {
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v58 = sub_22EFB626C();
    __swift_project_value_buffer(v58, qword_27DA9E328);
    v49 = sub_22EFB624C();
    v50 = sub_22EFB65CC();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_46;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Public Key not provided for Lyon Express pass";
    goto LABEL_45;
  }

  v74 = v53;
  if ([v53 count] != 1)
  {
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v59 = sub_22EFB626C();
    __swift_project_value_buffer(v59, qword_27DA9E328);
    v60 = sub_22EFB624C();
    v61 = sub_22EFB65CC();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_60;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Auxiliary element should have one, and only one, public key";
    goto LABEL_59;
  }

  v54 = [v53 objectAtIndexedSubscript_];
  sub_22EFB663C();
  swift_unknownObjectRelease();
  sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
  swift_dynamicCast();
  v55 = v82;
  v56 = sub_22EFB648C();
  sub_22EF8261C(v56, v57, &v80);

  v73 = *(&v80 + 1);
  if (*(&v80 + 1) >> 60 == 15)
  {
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v64 = sub_22EFB626C();
    __swift_project_value_buffer(v64, qword_27DA9E328);
    v60 = sub_22EFB624C();
    v61 = sub_22EFB65CC();
    if (!os_log_type_enabled(v60, v61))
    {
      goto LABEL_60;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = "Auxiliary Element Public Key can't be nil";
LABEL_59:
    _os_log_impl(&dword_22EEF5000, v60, v61, v63, v62, 2u);
    MEMORY[0x2318FC200](v62, -1, -1);
LABEL_60:
    sub_22EF708B4(v78, v75);

LABEL_61:
    goto LABEL_47;
  }

LABEL_68:
  v76 = v80;
  v65 = v73 >> 62;
  if ((v73 >> 62) > 1)
  {
    if (v65 != 2)
    {
LABEL_79:
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v69 = sub_22EFB626C();
      __swift_project_value_buffer(v69, qword_27DA9E328);
      v70 = sub_22EFB624C();
      v71 = sub_22EFB65CC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_22EEF5000, v70, v71, "Public Key length should be 65 bytes", v72, 2u);
        MEMORY[0x2318FC200](v72, -1, -1);
      }

      sub_22EF708B4(v78, v75);
      sub_22EF708B4(v76, v73);

      goto LABEL_61;
    }

    v68 = *(v80 + 16);
    v67 = *(v80 + 24);
    v23 = __OFSUB__(v67, v68);
    v66 = v67 - v68;
    if (!v23)
    {
LABEL_77:
      if (v66 == 65)
      {

        sub_22EF708C8(v81, *(&v81 + 1));
        v33 = v75;
        sub_22EF70B68(v78, v75);
        v30 = v73;
        sub_22EF70B68(v76, v73);
        sub_22EF70B68(a3, a4);
        sub_22EF708C8(v78, v75);
        sub_22EF708C8(v76, v73);
        v31 = a3;
        v32 = a4;
        goto LABEL_23;
      }

      goto LABEL_79;
    }

    __break(1u);
  }

  else if (!v65)
  {
    v66 = BYTE6(v73);
    goto LABEL_77;
  }

  LODWORD(v66) = HIDWORD(v76) - v76;
  if (!__OFSUB__(HIDWORD(v76), v76))
  {
    v66 = v66;
    goto LABEL_77;
  }

  __break(1u);
  return result;
}

void *sub_22EF6F3F8(void *a1)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC60D0);
  if (v3 >> 60 == 15)
  {
    __break(1u);
  }

  v4 = v2;
  v5 = v3;
  v6 = sub_22EFB61BC();
  sub_22EF708B4(v4, v5);
  v7 = SelectByNameCmd(v6);

  v8 = sub_22EFB61DC();
  v10 = v9;

  v11 = sub_22EFB61BC();
  sub_22EF708C8(v8, v10);
  if (qword_27DA9E360 != -1)
  {
    swift_once();
  }

  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  v12 = sub_22EFB653C();
  v24[0] = 0;
  v13 = [a1 transceiveAndCheckSW:v11 inArray:v12 error:v24];

  v14 = v24[0];
  if (v13)
  {
    a1 = sub_22EFB61DC();
    v16 = v15;

    v24[0] = sub_22EF83154(a1, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
    v17 = sub_22EFB646C();
    v19 = v18;

    v24[0] = v17;
    v24[1] = v19;
    sub_22EF70E68();
    v20 = sub_22EFB662C();

    if ((v20 & 1) == 0)
    {
      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EF74470(0xD000000000000032, 0x800000022EFC61D0, 8, 0);
      swift_willThrow();
      sub_22EF708C8(a1, v16);
    }
  }

  else
  {
    v21 = v14;
    sub_22EFB60EC();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_22EF6F704(uint64_t a1)
{
  v119[1] = *MEMORY[0x277D85DE8];
  v78 = sub_22EFAB164(&unk_2843B6768);
  v79 = v3;
  v4 = sub_22EFB61BC();
  if (qword_27DA9E360 != -1)
  {
    goto LABEL_119;
  }

  while (1)
  {
    sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
    v5 = sub_22EFB653C();
    v112 = 0;
    a1 = [a1 transceiveAndCheckSW:v4 inArray:v5 error:&v112];

    v6 = v112;
    if (!a1)
    {
      v12 = v6;
      sub_22EFB60EC();

      swift_willThrow();
      sub_22EF708C8(v78, v79);
      goto LABEL_99;
    }

    v7 = sub_22EFB61DC();
    v9 = v8;

    v1 = sub_22EFAB214(MEMORY[0x277D84F90]);
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_93;
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v15 = __OFSUB__(v13, v14);
      v11 = v13 - v14;
      if (v15)
      {
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
      }

      if (v11 < 1)
      {
        goto LABEL_93;
      }

      goto LABEL_14;
    }

    if (v10)
    {
      break;
    }

    v11 = BYTE6(v9);
    if (!BYTE6(v9))
    {
      goto LABEL_93;
    }

LABEL_14:
    v4 = 0;
    v93 = BYTE6(v9);
    v94 = v7;
    v91 = v7 >> 8;
    v92 = v7 >> 32;
    v89 = v7 >> 24;
    v90 = v7 >> 16;
    v87 = v7 >> 40;
    v88 = HIDWORD(v7);
    v85 = HIBYTE(v7);
    v86 = HIWORD(v7);
    v84 = v9 >> 8;
    v82 = v9 >> 24;
    v83 = v9 >> 16;
    v80 = v9 >> 40;
    v81 = HIDWORD(v9);
    v95 = v9 >> 62;
    v76 = v7;
    v77 = v9;
    v101 = v11;
LABEL_17:
    v17 = __OFADD__(v4, 22);
    if (__OFADD__(v4, 20))
    {
      goto LABEL_108;
    }

    if (v4 + 20 < v4)
    {
      goto LABEL_109;
    }

    v102 = v17;
    v103 = v4 + 22;
    v18 = sub_22EFB618C();
    v111 = v19;
    v20 = v4 + 21;
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_127;
      }

      if (v20 < *(v7 + 16))
      {
        goto LABEL_113;
      }

      if (v20 >= *(v7 + 24))
      {
        goto LABEL_115;
      }

      v22 = sub_22EFB603C();
      if (!v22)
      {
        goto LABEL_129;
      }

      v4 = v22;
      a1 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v23 = sub_22EFB605C();
      v24 = v20 - v23;
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_117;
      }

      goto LABEL_37;
    }

    if (v10)
    {
      if (v20 < v94 || v20 >= v92)
      {
        goto LABEL_114;
      }

      v25 = sub_22EFB603C();
      if (!v25)
      {
        goto LABEL_128;
      }

      v4 = v25;
      a1 = v9 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = sub_22EFB605C();
      v24 = v20 - v26;
      if (__OFSUB__(v20, v26))
      {
        goto LABEL_116;
      }

LABEL_37:
      v21 = *(v4 + v24);
      goto LABEL_38;
    }

    if (v20 >= v93)
    {
      goto LABEL_112;
    }

    LOBYTE(v112) = v7;
    BYTE1(v112) = v91;
    BYTE2(v112) = v90;
    BYTE3(v112) = v89;
    BYTE4(v112) = v88;
    BYTE5(v112) = v87;
    BYTE6(v112) = v86;
    HIBYTE(v112) = v85;
    LOBYTE(v113) = v9;
    HIBYTE(v113) = v84;
    v114 = v83;
    v115 = v82;
    v116 = v81;
    v117 = v80;
    v21 = *(&v112 + v20);
LABEL_38:
    v104 = v21;
    if (qword_27DA9E320 != -1)
    {
      swift_once();
    }

    v27 = sub_22EFB626C();
    __swift_project_value_buffer(v27, qword_27DA9E328);
    v4 = v111;
    sub_22EF70B68(v18, v111);
    v28 = sub_22EFB624C();
    v29 = sub_22EFB65AC();
    sub_22EF708C8(v18, v111);
    if (!os_log_type_enabled(v28, v29))
    {

      goto LABEL_83;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v119[0] = v31;
    buf = v30;
    *v30 = 136315394;
    v32 = v111 >> 62;
    v108 = HIDWORD(v18);
    v110 = v18;
    log = v28;
    v99 = v29;
    v97 = v31;
    if ((v111 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v39 = MEMORY[0x277D84F90];
        goto LABEL_82;
      }

      v35 = *(v18 + 16);
      v34 = *(v18 + 24);
      v33 = v34 - v35;
      if (__OFSUB__(v34, v35))
      {
        goto LABEL_121;
      }

      if (!v33)
      {
        goto LABEL_54;
      }

      goto LABEL_49;
    }

    if (v32)
    {
      v38 = HIDWORD(v18) - v18;
      if (!__OFSUB__(HIDWORD(v18), v18))
      {
        v33 = v38;
        if (!v38)
        {
LABEL_54:
          v39 = MEMORY[0x277D84F90];
          goto LABEL_81;
        }

        goto LABEL_49;
      }

      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      swift_once();
      goto LABEL_95;
    }

    v33 = BYTE6(v111);
    if (!BYTE6(v111))
    {
      goto LABEL_54;
    }

LABEL_49:
    v118 = MEMORY[0x277D84F90];
    a1 = &v118;
    sub_22EF9AAC8(0, v33 & ~(v33 >> 63), 0);
    v36 = v111 >> 62;
    v107 = v18;
    if (v36)
    {
      if (v111 >> 62 == 2)
      {
        v37 = *(v18 + 16);
      }

      else
      {
        v37 = v18;
      }
    }

    else
    {
      v37 = 0;
    }

    v109 = v37;
    if (v33 < 0)
    {
      goto LABEL_118;
    }

    v96 = v1;
    v40 = 0;
    v39 = v118;
    v41 = v111;
    v106 = v18 >> 32;
    v105 = &v112 + v37;
    while (v40 < v33)
    {
      v4 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_101;
      }

      v42 = v109 + v40;
      if (v36 == 2)
      {
        if (v42 < *(v18 + 16))
        {
          goto LABEL_102;
        }

        if (v42 >= *(v18 + 24))
        {
          goto LABEL_105;
        }

        v47 = sub_22EFB603C();
        if (!v47)
        {
          goto LABEL_126;
        }

        v44 = v47;
        a1 = v41 & 0x3FFFFFFFFFFFFFFFLL;
        v48 = sub_22EFB605C();
        v46 = v42 - v48;
        if (__OFSUB__(v42, v48))
        {
          goto LABEL_107;
        }
      }

      else
      {
        if (v36 != 1)
        {
          if (v42 >= BYTE6(v111))
          {
            goto LABEL_103;
          }

          LOWORD(v112) = v18;
          BYTE2(v112) = BYTE2(v18);
          BYTE3(v112) = BYTE3(v18);
          BYTE4(v112) = v108;
          BYTE5(v112) = BYTE5(v18);
          BYTE6(v112) = BYTE6(v18);
          HIBYTE(v112) = HIBYTE(v18);
          v113 = v41;
          v114 = BYTE2(v41);
          v115 = BYTE3(v41);
          v116 = BYTE4(v41);
          v117 = BYTE5(v41);
          a1 = v105[v40];
          goto LABEL_77;
        }

        if (v42 < v107 || v42 >= v106)
        {
          goto LABEL_104;
        }

        v43 = sub_22EFB603C();
        if (!v43)
        {
          goto LABEL_125;
        }

        v44 = v43;
        a1 = v41 & 0x3FFFFFFFFFFFFFFFLL;
        v45 = sub_22EFB605C();
        v46 = v42 - v45;
        if (__OFSUB__(v42, v45))
        {
          goto LABEL_106;
        }
      }

      a1 = *(v44 + v46);
LABEL_77:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_22EFBB8C0;
      *(v49 + 56) = MEMORY[0x277D84B78];
      *(v49 + 64) = MEMORY[0x277D84BC0];
      *(v49 + 32) = a1;
      v1 = sub_22EFB649C();
      v51 = v50;
      v118 = v39;
      v53 = v39[2];
      v52 = v39[3];
      if (v53 >= v52 >> 1)
      {
        a1 = &v118;
        sub_22EF9AAC8((v52 > 1), v53 + 1, 1);
        v39 = v118;
      }

      v39[2] = v53 + 1;
      v54 = &v39[2 * v53];
      v54[4] = v1;
      v54[5] = v51;
      ++v40;
      v18 = v110;
      v41 = v111;
      v36 = v111 >> 62;
      if (v4 == v33)
      {
        v7 = v76;
        v9 = v77;
        v1 = v96;
LABEL_81:
        LODWORD(v10) = v95;
LABEL_82:
        v112 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180);
        v55 = sub_22EFB646C();
        v57 = v56;

        v58 = sub_22EF9447C(v55, v57, v119);

        *(buf + 4) = v58;
        *(buf + 6) = 256;
        buf[14] = v104;
        v4 = log;
        _os_log_impl(&dword_22EEF5000, log, v99, "%s : %hhu", buf, 0xFu);
        __swift_destroy_boxed_opaque_existential_0Tm(v97);
        MEMORY[0x2318FC200](v97, -1, -1);
        MEMORY[0x2318FC200](buf, -1, -1);

        v18 = v110;
LABEL_83:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = v1;
        a1 = v1;
        v60 = sub_22EFA9434(v18, v111);
        v62 = v1[2];
        v63 = (v61 & 1) == 0;
        v15 = __OFADD__(v62, v63);
        v64 = v62 + v63;
        if (v15)
        {
          goto LABEL_110;
        }

        v4 = v61;
        if (v1[3] >= v64)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_88;
          }

          a1 = &v112;
          v69 = v60;
          sub_22EF75D60();
          v60 = v69;
          v1 = v112;
          if (v4)
          {
            goto LABEL_15;
          }

LABEL_89:
          v1[(v60 >> 6) + 8] |= 1 << v60;
          v66 = (v1[6] + 16 * v60);
          *v66 = v18;
          v66[1] = v111;
          *(v1[7] + v60) = v104;
          v67 = v1[2];
          v15 = __OFADD__(v67, 1);
          v68 = v67 + 1;
          if (!v15)
          {
            v1[2] = v68;
            goto LABEL_16;
          }

          goto LABEL_111;
        }

        sub_22EF74DF4(v64, isUniquelyReferenced_nonNull_native);
        a1 = v112;
        v60 = sub_22EFA9434(v18, v111);
        if ((v4 & 1) != (v65 & 1))
        {
          result = sub_22EFB687C();
          __break(1u);
          return result;
        }

LABEL_88:
        v1 = v112;
        if ((v4 & 1) == 0)
        {
          goto LABEL_89;
        }

LABEL_15:
        *(v1[7] + v60) = v104;
        sub_22EF708C8(v18, v111);
LABEL_16:
        v4 = v103;
        if (((v103 < v101) & ~v102) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_17;
      }
    }

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
    swift_once();
  }

  v16 = HIDWORD(v7) - v7;
  if (__OFSUB__(HIDWORD(v7), v7))
  {
    goto LABEL_124;
  }

  v11 = v16;
  if (v16 >= 1)
  {
    goto LABEL_14;
  }

LABEL_93:
  if (!v1[2])
  {

    v1 = sub_22EFAB214(MEMORY[0x277D84F90]);
    sub_22EF708C8(v78, v79);
    sub_22EF708C8(v7, v9);
    goto LABEL_99;
  }

  if (qword_27DA9E320 != -1)
  {
    goto LABEL_122;
  }

LABEL_95:
  v70 = sub_22EFB626C();
  __swift_project_value_buffer(v70, qword_27DA9E328);

  v71 = sub_22EFB624C();
  v72 = sub_22EFB65EC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134217984;
    *(v73 + 4) = v1[2];
    _os_log_impl(&dword_22EEF5000, v71, v72, "Endpoints found: %ld", v73, 0xCu);
    MEMORY[0x2318FC200](v73, -1, -1);
  }

  sub_22EF708C8(v78, v79);
  sub_22EF708C8(v7, v9);

LABEL_99:
  v74 = *MEMORY[0x277D85DE8];
  return v1;
}

void sub_22EF7020C(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (qword_27DA9E348 != -1)
  {
    swift_once();
  }

  v2 = sub_22EFB61BC();
  v31[0] = 0;
  v3 = [a1 transceive:v2 error:v31];

  v4 = v31[0];
  if (!v3)
  {
    v9 = v4;
    sub_22EFB60EC();

    swift_willThrow();
    goto LABEL_29;
  }

  v5 = sub_22EFB61DC();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_24;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 >= 3)
      {
        goto LABEL_12;
      }

LABEL_24:
      if (qword_27DA9E320 != -1)
      {
        swift_once();
      }

      v25 = sub_22EFB626C();
      __swift_project_value_buffer(v25, qword_27DA9E328);
      v26 = sub_22EFB624C();
      v27 = sub_22EFB65AC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22EEF5000, v26, v27, "Lyon auxiliary elements: nothing to clear", v28, 2u);
        MEMORY[0x2318FC200](v28, -1, -1);
      }

      sub_22EF708C8(v5, v7);

      goto LABEL_29;
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (v8)
  {
    if (!__OFSUB__(HIDWORD(v5), v5))
    {
      if (HIDWORD(v5) - v5 >= 3)
      {
        goto LABEL_12;
      }

      goto LABEL_24;
    }

    goto LABEL_32;
  }

  if (BYTE6(v7) < 3uLL)
  {
    goto LABEL_24;
  }

LABEL_12:
  if (qword_27DA9E320 != -1)
  {
    swift_once();
  }

  v14 = sub_22EFB626C();
  __swift_project_value_buffer(v14, qword_27DA9E328);
  v15 = sub_22EFB624C();
  v16 = sub_22EFB65AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22EEF5000, v15, v16, "Lyon auxiliary elements: clearing...", v17, 2u);
    MEMORY[0x2318FC200](v17, -1, -1);
  }

  if (qword_27DA9E340 != -1)
  {
    swift_once();
  }

  v18 = sub_22EFB61BC();
  if (qword_27DA9E360 != -1)
  {
    swift_once();
  }

  sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
  v19 = sub_22EFB653C();
  v31[0] = 0;
  v20 = [a1 transceiveAndCheckSW:v18 inArray:v19 error:v31];

  v21 = v31[0];
  if (v20)
  {
    v22 = sub_22EFB61DC();
    sub_22EF708C8(v22, v23);

    sub_22EF708C8(v5, v7);
    v24 = xmmword_27DA9E3C0;
    xmmword_27DA9E3C0 = xmmword_22EFBB8E0;
    sub_22EF708B4(v24, *(&v24 + 1));
  }

  else
  {
    v30 = v21;
    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708C8(v5, v7);
  }

LABEL_29:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_22EF70644(void *a1, uint64_t a2)
{
  if (qword_27DA9E320 != -1)
  {
    swift_once();
  }

  v5 = sub_22EFB626C();
  __swift_project_value_buffer(v5, qword_27DA9E328);

  v6 = sub_22EFB624C();
  v7 = sub_22EFB65EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(a2 + 16);

    _os_log_impl(&dword_22EEF5000, v6, v7, "Retrieved %ld auxiliary elements", v8, 0xCu);
    MEMORY[0x2318FC200](v8, -1, -1);

    if (*(a2 + 16))
    {
LABEL_5:
      type metadata accessor for LyonSystemConfiguration();
      swift_initStaticObject();
      sub_22EF693A4(a1, a2);
      return;
    }
  }

  else
  {

    if (*(a2 + 16))
    {
      goto LABEL_5;
    }
  }

  v9 = sub_22EFB624C();
  v10 = sub_22EFB65AC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22EEF5000, v9, v10, "No associated reader identifiers found for pass, clearing the aux elements on the SE", v11, 2u);
    MEMORY[0x2318FC200](v11, -1, -1);
  }

  v12 = sub_22EF6F3F8(a1);
  if (v2)
  {
    v14 = sub_22EFB624C();
    v15 = sub_22EFB65EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22EEF5000, v14, v15, "Error SW during clear, most likely Lyon is not installed", v16, 2u);
      MEMORY[0x2318FC200](v16, -1, -1);
    }
  }

  else
  {
    sub_22EF708C8(v12, v13);
    sub_22EF7020C(a1);
  }
}

uint64_t sub_22EF708B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22EF708C8(a1, a2);
  }

  return a1;
}

uint64_t sub_22EF708C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22EF7091C()
{
  result = qword_27DA9E3D0;
  if (!qword_27DA9E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E3D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22EF709CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EF70A20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22EF70AE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22EF70B68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22EF70CB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22EF70B68(a1, a2);
  }

  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_22EF70E20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22EF70E68()
{
  result = qword_27DA9E440;
  if (!qword_27DA9E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E440);
  }

  return result;
}

uint64_t sub_22EF70EBC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_22EF70F14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EF70F34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_22EF70F70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22EF70FC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22EFB68DC();
  if (v2)
  {
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
  }

  else
  {
    MEMORY[0x2318FB660](1);
  }

  return sub_22EFB691C();
}

uint64_t sub_22EF71030()
{
  if (!v0[1])
  {
    return MEMORY[0x2318FB660](1);
  }

  v1 = *v0;
  MEMORY[0x2318FB660](0);

  return sub_22EFB64CC();
}

uint64_t sub_22EF710A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22EFB68DC();
  if (v2)
  {
    MEMORY[0x2318FB660](0);
    sub_22EFB64CC();
  }

  else
  {
    MEMORY[0x2318FB660](1);
  }

  return sub_22EFB691C();
}

uint64_t sub_22EF71114(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_22EFB684C();
  }
}

uint64_t sub_22EF71160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E458, &qword_22EFBBCC8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22EFBBCA0;
  v7 = sub_22EFB648C();
  v8 = MEMORY[0x277D837D0];
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 88) = v8;
  *(v6 + 56) = v8;
  *(v6 + 64) = a1;
  *(v6 + 72) = a2;
  v10 = sub_22EFB648C();
  *(v6 + 120) = v8;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;

  v12 = sub_22EF713C4(a3);
  *(v6 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E460, &unk_22EFBBCD0);
  *(v6 + 128) = v12;
  v13 = sub_22EFB648C();
  *(v6 + 184) = v8;
  *(v6 + 160) = v13;
  *(v6 + 168) = v14;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 56);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  if (!v17)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (*(a3 + 48) + ((v20 << 10) | (16 * v22)));
      v24 = v23[1];
      if (v24)
      {
        break;
      }

      if (!v17)
      {
        goto LABEL_6;
      }
    }

    v26 = *v23;
    v27 = v23[1];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EF7DED0(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v28 = *(v21 + 16);
    v29 = *(v21 + 24);
    v30 = v28 + 1;
    if (v28 >= v29 >> 1)
    {
      v34 = v28 + 1;
      v32 = v21;
      v33 = *(v21 + 16);
      result = sub_22EF7DED0((v29 > 1), v28 + 1, 1, v32);
      v28 = v33;
      v30 = v34;
      v21 = result;
    }

    *(v21 + 16) = v30;
    v31 = v21 + 16 * v28;
    *(v31 + 32) = v26;
    *(v31 + 40) = v24;
  }

  while (v17);
LABEL_6:
  while (1)
  {
    v25 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v25 >= v18)
    {

      *(v6 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      *(v6 + 192) = v21;
      sub_22EF719E0();
      return sub_22EFB659C();
    }

    v17 = *(a3 + 56 + 8 * v25);
    ++v20;
    if (v17)
    {
      v20 = v25;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EF713C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v38 = MEMORY[0x277D84F90];
    sub_22EFB675C();
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    result = sub_22EFB665C();
    v6 = result;
    v7 = 0;
    v8 = *(a1 + 36);
    v36 = v2;
    v37 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v12 = (*(a1 + 48) + 16 * v6);
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E458, &qword_22EFBBCC8);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22EFBBCB0;
        v16 = sub_22EFB648C();
        v17 = MEMORY[0x277D837D0];
        *(v15 + 56) = MEMORY[0x277D837D0];
        *(v15 + 32) = v16;
        *(v15 + 40) = v18;
        v19 = sub_22EFB648C();
        *(v15 + 88) = v17;
        *(v15 + 64) = v19;
        *(v15 + 72) = v20;
        *(v15 + 96) = sub_22EFB648C();
        *(v15 + 104) = v21;
        *(v15 + 152) = v17;
        *(v15 + 120) = v17;
        *(v15 + 128) = v14;
        *(v15 + 136) = v13;
        sub_22EF719E0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E458, &qword_22EFBBCC8);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_22EFBB8C0;
        v23 = sub_22EFB648C();
        v24 = MEMORY[0x277D837D0];
        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 32) = v23;
        *(v22 + 40) = v25;
        v26 = sub_22EFB648C();
        *(v22 + 88) = v24;
        *(v22 + 64) = v26;
        *(v22 + 72) = v27;
        sub_22EF719E0();
      }

      sub_22EFB659C();
      sub_22EFB673C();
      v28 = *(v38 + 16);
      sub_22EFB676C();
      sub_22EFB677C();
      result = sub_22EFB674C();
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_26;
      }

      v4 = a1 + 56;
      v29 = *(a1 + 56 + 8 * v11);
      if ((v29 & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      v8 = v37;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v30 = v29 & (-2 << (v6 & 0x3F));
      if (v30)
      {
        v9 = __clz(__rbit64(v30)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v36;
      }

      else
      {
        v31 = v11 << 6;
        v32 = v11 + 1;
        v33 = (a1 + 64 + 8 * v11);
        v10 = v36;
        while (v32 < (v9 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_22EF71A2C(v6, v37, 0);
            v9 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_22EF71A2C(v6, v37, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EF71704(uint64_t a1)
{
  result = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v24 = a1 + 32;
    v22 = *(a1 + 16);
    while (2)
    {
      v5 = (v24 + 24 * v4);
      v6 = v5[1];
      v25 = *v5;
      v7 = v5[2];
      ++v4;
      v8 = 1 << *(v7 + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & *(v7 + 56);
      v11 = (v8 + 63) >> 6;
      swift_bridgeObjectRetain_n();

      v12 = 0;
      v13 = MEMORY[0x277D84F90];
      if (!v10)
      {
        goto LABEL_10;
      }

      do
      {
LABEL_8:
        while (1)
        {
          v14 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v15 = (*(v7 + 48) + ((v12 << 10) | (16 * v14)));
          v16 = v15[1];
          if (v16)
          {
            break;
          }

          if (!v10)
          {
            goto LABEL_10;
          }
        }

        v23 = *v15;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E450, &qword_22EFBBCC0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_22EFBBCB0;
        *(v18 + 32) = v25;
        *(v18 + 40) = v6;
        *(v18 + 48) = v23;
        *(v18 + 56) = v16;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_22EF7DFDC(0, v13[2] + 1, 1, v13);
          v13 = result;
        }

        v20 = v13[2];
        v19 = v13[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          result = sub_22EF7DFDC((v19 > 1), v20 + 1, 1, v13);
          v21 = v20 + 1;
          v13 = result;
        }

        v13[2] = v21;
        v13[v20 + 4] = v18;
        v3 = v22;
      }

      while (v10);
      while (1)
      {
LABEL_10:
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v17 >= v11)
        {
          break;
        }

        v10 = *(v7 + 56 + 8 * v17);
        ++v12;
        if (v10)
        {
          v12 = v17;
          goto LABEL_8;
        }
      }

      sub_22EF9B5D8(v13);
      if (v4 != v3)
      {
        continue;
      }

      return v26;
    }
  }

  return result;
}

uint64_t sub_22EF71944(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(result + 48) + ((v6 << 10) | (16 * v7)) + 8))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF719E0()
{
  result = qword_27DA9E028;
  if (!qword_27DA9E028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA9E028);
  }

  return result;
}

uint64_t sub_22EF71A2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22EF71A44(uint64_t a1, unsigned int a2)
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

uint64_t sub_22EF71A94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22EF71AE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22EF71B04(void *result, int a2)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EF71B48(uint64_t a1, int a2)
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

uint64_t sub_22EF71B90(uint64_t result, int a2, int a3)
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

unint64_t sub_22EF71BE4()
{
  result = qword_27DA9E468;
  if (!qword_27DA9E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E468);
  }

  return result;
}

uint64_t Data.popPrefix(_:)(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1 < 0)
  {
    goto LABEL_16;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(v3) < a1)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (!__OFSUB__(HIDWORD(v2), v2))
    {
      if (HIDWORD(v2) - v2 < a1)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v4 == 2)
  {
    v6 = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v8 >= a1)
    {
LABEL_9:
      sub_22EF70B68(*v1, *(v1 + 8));
      sub_22EF721C0(a1, v2, v3, &v37);
      v10 = v37;
      v11 = v38;
      v12 = *v1;
      v13 = *(v1 + 8);
      sub_22EF70B68(*v1, v13);
      sub_22EF72308(a1, v12, v13, &v37);
      v14 = v37;
      v15 = v38;
      sub_22EF708C8(*v1, *(v1 + 8));
      *v1 = v14;
      *(v1 + 8) = v15;
      v39 = MEMORY[0x277CC9318];
      v40 = MEMORY[0x277CC9300];
      v37 = v10;
      v38 = v11;
      v16 = __swift_project_boxed_opaque_existential_1(&v37, MEMORY[0x277CC9318]);
      v17 = *v16;
      v18 = v16[1];
      v19 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v19 != 2)
        {
          memset(v35, 0, 14);
          v21 = v35;
          v20 = v35;
          goto LABEL_36;
        }

        v22 = *(v17 + 16);
        v23 = *(v17 + 24);
        v24 = sub_22EFB603C();
        if (v24)
        {
          v25 = sub_22EFB605C();
          v17 = v22 - v25;
          if (__OFSUB__(v22, v25))
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v24 += v17;
        }

        v7 = __OFSUB__(v23, v22);
        v26 = v23 - v22;
        if (!v7)
        {
          goto LABEL_28;
        }

        __break(1u);
      }

      else if (!v19)
      {
        v35[0] = *v16;
        LOWORD(v35[1]) = v18;
        BYTE2(v35[1]) = BYTE2(v18);
        BYTE3(v35[1]) = BYTE3(v18);
        BYTE4(v35[1]) = BYTE4(v18);
        BYTE5(v35[1]) = BYTE5(v18);
        v20 = v35 + BYTE6(v18);
        v21 = v35;
LABEL_36:
        sub_22EF72654(v21, v20, &v36);
        v1 = v36;
        __swift_destroy_boxed_opaque_existential_0Tm(&v37);
        goto LABEL_37;
      }

      v27 = v17;
      v28 = v17 >> 32;
      v26 = v28 - v27;
      if (v28 >= v27)
      {
        v24 = sub_22EFB603C();
        if (!v24)
        {
LABEL_28:
          v30 = sub_22EFB604C();
          if (v30 >= v26)
          {
            v31 = v26;
          }

          else
          {
            v31 = v30;
          }

          v32 = (v31 + v24);
          if (v24)
          {
            v20 = v32;
          }

          else
          {
            v20 = 0;
          }

          v21 = v24;
          goto LABEL_36;
        }

        v29 = sub_22EFB605C();
        if (!__OFSUB__(v27, v29))
        {
          v24 += v27 - v29;
          goto LABEL_28;
        }

LABEL_42:
        __break(1u);
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else if (!a1)
  {
    goto LABEL_9;
  }

LABEL_16:
  sub_22EF726E8();
  swift_allocError();
  swift_willThrow();
LABEL_37:
  v33 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_22EF71F2C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E478, &qword_22EFBBDC8);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v31 - v10;
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1 && v12 == 2)
  {
    v13 = *(a1 + 16);
  }

  sub_22EF70B68(a1, a2);
  sub_22EF70B68(a3, a4);
  v32 = a2;
  v33 = a1;
  sub_22EFB623C();
  v14 = a4 >> 62;
  if ((a4 >> 62) > 1 && v14 == 2)
  {
    v15 = *(a3 + 16);
  }

  v16 = *(v8 + 52);
  v34 = a4;
  v35 = a3;
  sub_22EFB623C();
  v17 = *(v8 + 56);
  v11[v17] = 0;
  sub_22EFB622C();
  sub_22EF7273C();
  while (1)
  {
    sub_22EFB661C();
    if (v39)
    {
      break;
    }

    v18 = v38;
    sub_22EFB661C();
    if (v37 == 1)
    {
      break;
    }

    if (v36 != v18)
    {
      v19 = v36;
      sub_22EF72794(v11);
      return v18 < v19;
    }
  }

  v11[v17] = 1;
  result = sub_22EF72794(v11);
  if (v12 > 1)
  {
    v23 = BYTE6(v34);
    v22 = v35;
    if (v12 != 2)
    {
      v24 = 0;
      if (v14 <= 1)
      {
        goto LABEL_23;
      }

LABEL_26:
      if (v14 != 2)
      {
        v28 = 0;
        return v24 < v28;
      }

      v30 = v22 + 16;
      v22 = *(v22 + 16);
      v29 = *(v30 + 8);
      v27 = __OFSUB__(v29, v22);
      v28 = v29 - v22;
      if (!v27)
      {
        return v24 < v28;
      }

      __break(1u);
LABEL_30:
      LODWORD(v28) = HIDWORD(v22) - v22;
      if (!__OFSUB__(HIDWORD(v22), v22))
      {
        v28 = v28;
        return v24 < v28;
      }

LABEL_38:
      __break(1u);
      return result;
    }

    v26 = *(v33 + 16);
    v25 = *(v33 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
LABEL_22:
      if (v14 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    __break(1u);
LABEL_20:
    LODWORD(v24) = HIDWORD(v33) - v33;
    if (__OFSUB__(HIDWORD(v33), v33))
    {
      __break(1u);
      goto LABEL_38;
    }

    v24 = v24;
    goto LABEL_22;
  }

  v23 = BYTE6(v34);
  v22 = v35;
  if (v12)
  {
    goto LABEL_20;
  }

  v24 = BYTE6(v32);
  if (v14 > 1)
  {
    goto LABEL_26;
  }

LABEL_23:
  if (v14)
  {
    goto LABEL_30;
  }

  v28 = v23;
  return v24 < v28;
}

uint64_t sub_22EF721C0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_22EFA098C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_22EF73F18(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_22EFB618C();
    v15 = v14;
    result = sub_22EF708C8(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22EF72308@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_22EFA098C(v10, v9, a2, a3);
    if (v6 && v11 < v6)
    {
      if (v8 == 2)
      {
        v14 = *(a2 + 24);
      }
    }

    else
    {
      v12 = sub_22EF73F18(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v15 = sub_22EFB618C();
    v17 = v16;
    result = sub_22EF708C8(a2, a3);
    *a4 = v15;
    a4[1] = v17;
  }

  return result;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.safePopFirst()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v6 = v1 + 16;
    v4 = *(v1 + 16);
    v5 = *(v6 + 8);
    v7 = __OFSUB__(v5, v4);
    v8 = v5 - v4;
    if (!v7)
    {
      if (v8 >= 1)
      {
        return sub_22EF7250C();
      }

LABEL_11:
      sub_22EF726E8();
      swift_allocError();
      return swift_willThrow();
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      if (!BYTE6(v2))
      {
        goto LABEL_11;
      }

      return sub_22EF7250C();
    }

    v7 = __OFSUB__(HIDWORD(v1), v1);
    v10 = HIDWORD(v1) - v1;
    if (!v7)
    {
      if (v10 >= 1)
      {
        return sub_22EF7250C();
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EF7250C()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_22EFACD50(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_22EF70B68(*v0, *(v0 + 8));
      result = sub_22EF708C8(v7, v8);
      if (v12 >= v11)
      {
        v13 = sub_22EFB618C();
        v15 = v14;
        sub_22EF708C8(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

_BYTE *sub_22EF72654@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22EFAAFAC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22EFAB064(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22EFAB0E0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_22EF726E8()
{
  result = qword_27DA9E470;
  if (!qword_27DA9E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E470);
  }

  return result;
}

unint64_t sub_22EF7273C()
{
  result = qword_27DA9E480;
  if (!qword_27DA9E480)
  {
    sub_22EFB622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E480);
  }

  return result;
}

uint64_t sub_22EF72794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E478, &qword_22EFBBDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22EF727FC()
{
  result = [objc_allocWithZone(type metadata accessor for MetroStateMonitor()) init];
  qword_27DAA03B0 = result;
  return result;
}

uint64_t sub_22EF728EC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = *(v3 + OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_state);

  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  *(v8 + 16) = a3;
  os_unfair_lock_unlock((v8 + 20));

  if (v9 != v7)
  {
    if (qword_27DA9E030 != -1)
    {
      swift_once();
    }

    v11 = sub_22EFB626C();
    __swift_project_value_buffer(v11, qword_27DA9E038);

    v12 = sub_22EFB624C();
    v13 = sub_22EFB65EC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 67109378;
      *(v14 + 4) = a3 & 1;
      *(v14 + 8) = 2080;
      *(v14 + 10) = sub_22EF9447C(a1, a2, &v17);
      _os_log_impl(&dword_22EEF5000, v12, v13, "Metro state changed -> %{BOOL}d : %s", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x2318FC200](v15, -1, -1);
      MEMORY[0x2318FC200](v14, -1, -1);
    }

    v16 = sub_22EFB64BC();
    notify_post((v16 + 32));
  }

  return result;
}

char *sub_22EF72B54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4A0, &qword_22EFBBE28);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = v19 - v4 + 16;
  v6 = OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4A8, &qword_22EFBBE30);
  v7 = swift_allocObject();
  *(v7 + 20) = 0;
  *(v7 + 16) = 0;
  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_userDefaults] = 0;
  v8 = &v0[OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_subscriber];
  v9 = type metadata accessor for MetroStateMonitor();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v20.receiver = v0;
  v20.super_class = v9;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  objc_opt_self();
  if (+[AppletTranslator isInternalBuild])
  {
    v11 = +[AppletTranslator userDefaults];
    v12 = *&v10[OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_userDefaults];
    *&v10[OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_userDefaults] = v11;
    v13 = v11;

    swift_getKeyPath();
    sub_22EFB610C();

    *(swift_allocObject() + 16) = v10;
    sub_22EF7311C();
    v14 = v10;
    v15 = sub_22EFB628C();

    (*(v2 + 8))(v5, v1);
    v19[3] = sub_22EFB627C();

    v19[0] = v15;
    v16 = OBJC_IVAR____TtC24AppletTranslationLibrary17MetroStateMonitor_subscriber;
    swift_beginAccess();
    sub_22EF73180(v19, &v14[v16]);
    swift_endAccess();
  }

  return v10;
}

uint64_t sub_22EF72DAC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_27DA9E030 != -1)
  {
    swift_once();
  }

  v2 = sub_22EFB626C();
  __swift_project_value_buffer(v2, qword_27DA9E038);
  v3 = sub_22EFB624C();
  v4 = sub_22EFB65CC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v1)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_22EF9447C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22EEF5000, v3, v4, "Debug override state to --> %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x2318FC200](v6, -1, -1);
    MEMORY[0x2318FC200](v5, -1, -1);
  }

  return sub_22EF728EC(0x6775626544, 0xE500000000000000, v1);
}

id sub_22EF72F5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetroStateMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22EF73010()
{
  v0 = sub_22EFB626C();
  __swift_allocate_value_buffer(v0, qword_27DA9E038);
  __swift_project_value_buffer(v0, qword_27DA9E038);
  return sub_22EFB625C();
}

id sub_22EF73098(void *a1)
{
  v1 = a1;
  v2 = sub_22EFB647C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

unint64_t sub_22EF7311C()
{
  result = qword_27DA9E018;
  if (!qword_27DA9E018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E4A0, &qword_22EFBBE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E018);
  }

  return result;
}

uint64_t sub_22EF73180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4B0, &qword_22EFBBE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EF731F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4B0, &qword_22EFBBE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_22EF73268(_BOOL8 result)
{
  if (BYTE4(result) <= 1u)
  {
    if (BYTE4(result))
    {
      v1 = 0x2000;
    }

    else
    {
      v1 = 32;
    }

    return (v1 & result) != 0;
  }

  if (BYTE4(result) != 2)
  {
    v1 = 0x20000000;
    return (v1 & result) != 0;
  }

  if ((result & 0xFF000000) == 0)
  {
    v1 = 0x200000;
    return (v1 & result) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22EF732B4(uint64_t a1)
{
  v1 = a1;
  if (BYTE4(a1) > 1u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22EFBB8C0;
    v5 = MEMORY[0x277D84D30];
    *(v4 + 56) = MEMORY[0x277D84CC0];
    *(v4 + 64) = v5;
    *(v4 + 32) = v1;
  }

  else if (BYTE4(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22EFBB8C0;
    v7 = MEMORY[0x277D84CB8];
    *(v6 + 56) = MEMORY[0x277D84C58];
    *(v6 + 64) = v7;
    *(v6 + 32) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_22EFBB8C0;
    v3 = MEMORY[0x277D84BC0];
    *(v2 + 56) = MEMORY[0x277D84B78];
    *(v2 + 64) = v3;
    *(v2 + 32) = v1;
  }

  return sub_22EFB649C();
}

uint64_t sub_22EF73428(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(a3) >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= result)
      {
        return result;
      }

LABEL_8:
      sub_22EFB66DC();

      v8 = sub_22EFB683C();
      MEMORY[0x2318FB260](v8);

      MEMORY[0x2318FB260](0x736574796220, 0xE600000000000000);
      sub_22EF7426C();
      swift_allocError();
      *v9 = 0xD00000000000001BLL;
      *(v9 + 8) = 0x800000022EFC6400;
      *(v9 + 16) = 1;
      return swift_willThrow();
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (v3 == 2)
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (result > 0)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_22EF73580()
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = sub_22EFB622C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
LABEL_13:
      result = 0xFF00000000;
      goto LABEL_76;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  result = sub_22EF73F7C(v8, v9);
  if (v1)
  {
    goto LABEL_76;
  }

  v73 = result;
  v12 = v0;
  sub_22EF73DDC(BYTE4(result) + 1);
  v13 = *v0;
  v14 = *(v0 + 8);
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      if (!BYTE6(v14))
      {
LABEL_24:
        sub_22EF7426C();
        swift_allocError();
        *v26 = 0xD000000000000022;
        *(v26 + 8) = 0x800000022EFC63D0;
        *(v26 + 16) = 1;
LABEL_75:
        result = swift_willThrow();
        goto LABEL_76;
      }

      goto LABEL_17;
    }

    v19 = __OFSUB__(HIDWORD(v13), v13);
    v25 = HIDWORD(v13) - v13;
    if (!v19)
    {
      if (v25 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v15 != 2)
  {
    goto LABEL_24;
  }

  v18 = v13 + 16;
  v16 = *(v13 + 16);
  v17 = *(v18 + 8);
  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_103;
  }

  if (v20 < 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  v21 = sub_22EF7250C();
  if (v21 < 0)
  {
    v0 = v21 & 0x7F;
    v22 = *v12;
    v2 = v12[1];
    v24 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (!v24)
      {
        v27 = BYTE6(v2);
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    goto LABEL_32;
  }

  v22 = v21;
  while (1)
  {
    v3 = *v0;
    v7 = *(v0 + 8);
    v23 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v23)
      {
        goto LABEL_36;
      }

      v24 = BYTE6(v7);
      goto LABEL_38;
    }

    if (v23 != 2)
    {
      break;
    }

    v29 = *(v3 + 16);
    v28 = *(v3 + 24);
    v19 = __OFSUB__(v28, v29);
    v24 = v28 - v29;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_32:
    if (v24 == 2)
    {
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v19 = __OFSUB__(v30, v31);
      v27 = v30 - v31;
      if (!v19)
      {
LABEL_53:
        if (v27 < v0)
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      __break(1u);
LABEL_36:
      LODWORD(v24) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_104;
      }

      v24 = v24;
LABEL_38:
      if (v24 < v22)
      {
        goto LABEL_64;
      }

      goto LABEL_41;
    }

    if (v0)
    {
LABEL_57:
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      *&v76 = 1030185300;
      *(&v76 + 1) = 0xE400000000000000;
      v39 = sub_22EF732B4(v73 & 0xFFFFFFFFFFLL);
      MEMORY[0x2318FB260](v39);

      v40 = 0x800000022EFC63A0;
      v41 = 0xD000000000000022;
LABEL_74:
      MEMORY[0x2318FB260](v41, v40);
      v54 = v76;
      sub_22EF7426C();
      swift_allocError();
      *v55 = v54;
      *(v55 + 16) = 0;
      goto LABEL_75;
    }

LABEL_54:
    sub_22EF70B68(v22, v2);
    sub_22EF721C0(v0, v22, v2, &v76);
    v2 = *(&v76 + 1);
    v38 = v76;
    sub_22EF73DDC(v0);
    if (v2 >> 62 == 2)
    {
      v42 = *(v38 + 16);
    }

    sub_22EF70B68(v38, v2);
    v72 = v38;
    sub_22EFB623C();
    sub_22EF7273C();
    sub_22EFB661C();
    if (BYTE1(v76))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v22 = v76 | (v22 << 8);
        sub_22EFB661C();
      }

      while ((BYTE1(v76) & 1) == 0);
    }

    sub_22EF708C8(v72, v2);
    v43 = *(v4 + 8);
    v4 += 8;
    v43(v7, v3);
    v0 = v12;
    if (v22 < 0)
    {
LABEL_64:
      *&v76 = 0;
      *(&v76 + 1) = 0xE000000000000000;
      sub_22EFB66DC();

      *&v76 = 1030185300;
      *(&v76 + 1) = 0xE400000000000000;
      v44 = sub_22EF732B4(v73 & 0xFFFFFFFFFFLL);
      MEMORY[0x2318FB260](v44);

      MEMORY[0x2318FB260](0x654C206874697720, 0xED00003D6874676ELL);
      *&v79 = v22;
      v45 = sub_22EFB683C();
      MEMORY[0x2318FB260](v45);

      MEMORY[0x2318FB260](0x6E6F206874697720, 0xEB0000000020796CLL);
      v46 = *v0;
      v47 = *(v0 + 8);
      v48 = v47 >> 62;
      if ((v47 >> 62) <= 1)
      {
        if (!v48)
        {
          v49 = BYTE6(v47);
          goto LABEL_73;
        }

LABEL_71:
        v19 = __OFSUB__(HIDWORD(v46), v46);
        v52 = HIDWORD(v46) - v46;
        if (!v19)
        {
          v49 = v52;
          goto LABEL_73;
        }

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
      }

      v49 = 0;
      if (v48 == 2)
      {
        v51 = v46 + 16;
        v46 = *(v46 + 16);
        v50 = *(v51 + 8);
        v19 = __OFSUB__(v50, v46);
        v49 = v50 - v46;
        if (v19)
        {
          __break(1u);
          goto LABEL_71;
        }
      }

LABEL_73:
      *&v79 = v49;
      v53 = sub_22EFB683C();
      MEMORY[0x2318FB260](v53);

      v41 = 0xD000000000000010;
      v40 = 0x800000022EFC6380;
      goto LABEL_74;
    }
  }

  if (v22)
  {
    goto LABEL_64;
  }

LABEL_41:
  sub_22EF70B68(v3, v7);
  sub_22EF721C0(v22, v3, v7, &v79);
  v77 = MEMORY[0x277CC9318];
  v78 = MEMORY[0x277CC9300];
  v76 = v79;
  v32 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x277CC9318]);
  v33 = *v32;
  v7 = v32[1];
  v34 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v34 != 2)
    {
      memset(v74, 0, 14);
      v35 = v74;
      goto LABEL_89;
    }

    v36 = *(v33 + 16);
    v4 = *(v33 + 24);
    v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_22EFB603C();
    if (v3)
    {
      v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = sub_22EFB605C();
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_110;
      }

      v3 += v36 - v37;
    }

    v19 = __OFSUB__(v4, v36);
    v2 = v4 - v36;
    if (!v19)
    {
      goto LABEL_81;
    }

    __break(1u);
LABEL_51:
    LODWORD(v27) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_106;
    }

    v27 = v27;
    goto LABEL_53;
  }

  if (!v34)
  {
    v74[0] = *v32;
    LOWORD(v74[1]) = v7;
    BYTE2(v74[1]) = BYTE2(v7);
    BYTE3(v74[1]) = BYTE3(v7);
    BYTE4(v74[1]) = BYTE4(v7);
    BYTE5(v74[1]) = BYTE5(v7);
    v35 = v74 + BYTE6(v7);
LABEL_89:
    sub_22EF72654(v74, v35, v75);
    goto LABEL_90;
  }

  v57 = v33;
  v58 = v33 >> 32;
  v2 = v58 - v57;
  if (v58 < v57)
  {
    goto LABEL_107;
  }

  v3 = sub_22EFB603C();
  if (v3)
  {
    v59 = sub_22EFB605C();
    if (__OFSUB__(v57, v59))
    {
      goto LABEL_111;
    }

    v3 += v57 - v59;
  }

LABEL_81:
  v60 = sub_22EFB604C();
  if (v60 >= v2)
  {
    v61 = v2;
  }

  else
  {
    v61 = v60;
  }

  v62 = (v61 + v3);
  if (v3)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  sub_22EF72654(v3, v63, v75);
  v0 = v12;
LABEL_90:
  v64 = v75[0];
  v65 = v75[1];
  __swift_destroy_boxed_opaque_existential_0Tm(&v76);
  v66 = v73 & 0xFFFFFFFFFFLL;
  if (!sub_22EF73268(v73 & 0xFFFFFFFFFFLL) || (*(v0 + 16) & 1) == 0)
  {
    sub_22EF73DDC(v22);
  }

  sub_22EF70B68(v64, v65);
  sub_22EF708B4(0, 0xF000000000000000);
  v67 = v65;
  v68 = v65 >> 62;
  if ((v65 >> 62) > 1)
  {
    v69 = v64;
    if (v68 == 2)
    {
      v71 = *(v64 + 16);
      v70 = *(v64 + 24);
      sub_22EF708C8(v64, v65);
      if (__OFSUB__(v70, v71))
      {
        goto LABEL_108;
      }

      v69 = v64;
      goto LABEL_100;
    }
  }

  else
  {
    if (!v68)
    {
      v69 = v64;
      goto LABEL_101;
    }

    sub_22EF708C8(v64, v65);
    v69 = v64;
    if (__OFSUB__(HIDWORD(v64), v64))
    {
      goto LABEL_109;
    }

LABEL_100:
    v67 = v65;
  }

LABEL_101:
  sub_22EF70CB0(v69, v67);
  sub_22EF708B4(v64, v65);
  result = v66;
LABEL_76:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22EF73DDC(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_22EFA098C(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_22EF73F18(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_22EF70B68(*v1, *(v1 + 8));
      result = sub_22EF708C8(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_22EFB618C();
        v15 = v14;
        result = sub_22EF708C8(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_22EF73F18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_22EF73F7C(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v6 = 0;
        goto LABEL_13;
      }

LABEL_10:
      sub_22EF7426C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      result = swift_willThrow();
      goto LABEL_25;
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = a1;
  }

LABEL_13:
  if ((~sub_22EFB619C() & 0x1F) == 0)
  {
    result = sub_22EF73428(2, v4, a2);
    if (v2)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if ((sub_22EFB619C() & 0x80) == 0)
    {
      if (v5 == 2)
      {
        v14 = *(v4 + 16);
        v15 = *(v4 + 24);
        v9 = sub_22EFB603C();
        if (v9)
        {
          v16 = sub_22EFB605C();
          if (__OFSUB__(v14, v16))
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v9 = (v9 + v14 - v16);
        }

        if (!__OFSUB__(v15, v14))
        {
          goto LABEL_37;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (v5 != 1)
      {
LABEL_38:
        result = (bswap32(v4) >> 16) | 0x100000000;
        goto LABEL_25;
      }

      if (v4 <= v4 >> 32)
      {
        v9 = sub_22EFB603C();
        if (!v9)
        {
LABEL_37:
          sub_22EFB604C();
          LODWORD(v4) = *v9;
          goto LABEL_38;
        }

        v10 = sub_22EFB605C();
        if (!__OFSUB__(v4, v10))
        {
          v9 = (v9 + v4 - v10);
          goto LABEL_37;
        }

        goto LABEL_50;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    sub_22EF73428(3, v4, a2);
    if (v5 == 2)
    {
      v17 = *(v4 + 16);
      v18 = *(v4 + 24);
      v12 = sub_22EFB603C();
      if (v12)
      {
        v19 = sub_22EFB605C();
        if (__OFSUB__(v17, v19))
        {
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
        }

        v12 += v17 - v19;
      }

      if (__OFSUB__(v18, v17))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      if (v5 != 1)
      {
        v20 = v4 & 0xFF00 | (v4 << 16) | BYTE2(v4);
        goto LABEL_45;
      }

      if (v4 > v4 >> 32)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v12 = sub_22EFB603C();
      if (v12)
      {
        v13 = sub_22EFB605C();
        if (__OFSUB__(v4, v13))
        {
          goto LABEL_54;
        }

        v12 += v4 - v13;
      }
    }

    sub_22EFB604C();
    v20 = (*v12 << 16) | (v12[1] << 8) | v12[2];
LABEL_45:
    result = v20 | 0x200000000;
    goto LABEL_25;
  }

  result = sub_22EFACD50(v4, a2);
  if ((result & 0x100) == 0)
  {
    result = result;
LABEL_25:
    v11 = *MEMORY[0x277D85DE8];
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_22EF7426C()
{
  result = qword_27DA9E4B8;
  if (!qword_27DA9E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E4B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary8TLVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EF742F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EF74338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_22EF7437C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22EF743A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_22EFAAFAC(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_22EFAB064(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_22EFAB0E0(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

id sub_22EF74470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22EFAAE54(MEMORY[0x277D84F90]);
  if (a2)
  {
    v8 = *MEMORY[0x277CCA450];
    v9 = sub_22EFB648C();
    v11 = v10;
    v27 = MEMORY[0x277D837D0];
    *&v26 = a1;
    *(&v26 + 1) = a2;
    sub_22EF76360(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22EF75884(v25, v9, v11, isUniquelyReferenced_nonNull_native);
  }

  if (a4)
  {
    v13 = *MEMORY[0x277CCA7E8];
    v14 = sub_22EFB648C();
    v16 = v15;
    v17 = a4;
    v18 = sub_22EFB60DC();
    v27 = sub_22EF76314();
    *&v26 = v18;
    sub_22EF76360(&v26, v25);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_22EF75884(v25, v14, v16, v19);
  }

  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_22EFB647C();
  v22 = sub_22EFB641C();

  v23 = [v20 initWithDomain:v21 code:a3 userInfo:v22];

  return v23;
}

uint64_t DataAccessError.hashValue.getter()
{
  sub_22EFB68DC();
  MEMORY[0x2318FB660](0);
  return sub_22EFB691C();
}

uint64_t sub_22EF746C0()
{
  sub_22EFB68DC();
  MEMORY[0x2318FB660](0);
  return sub_22EFB691C();
}

uint64_t sub_22EF7472C()
{
  sub_22EFB68DC();
  MEMORY[0x2318FB660](0);
  return sub_22EFB691C();
}

unint64_t sub_22EF74794()
{
  result = qword_27DA9E4C0;
  if (!qword_27DA9E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E4C0);
  }

  return result;
}

uint64_t sub_22EF747E8(uint64_t a1)
{
  v2 = sub_22EF763CC(&qword_27DA9E3E8);

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_22EF74840(uint64_t a1)
{
  v2 = sub_22EF763CC(&qword_27DA9E3E8);

  return MEMORY[0x28211C018](a1, v2);
}

unint64_t sub_22EF74938()
{
  result = qword_27DA9E4E0;
  if (!qword_27DA9E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E4E0);
  }

  return result;
}

uint64_t sub_22EF749E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EF763CC(&qword_27DA9E3E8);

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t getEnumTagSinglePayload for DataAccessError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DataAccessError(_WORD *result, int a2, int a3)
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

uint64_t sub_22EF74B3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4E8, &unk_22EFBD420);
  v36 = a2;
  result = sub_22EFB67EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_22EF76360(v25, v37);
      }

      else
      {
        sub_22EF76370(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_22EFB68DC();
      sub_22EFB64CC();
      result = sub_22EFB691C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_22EF76360(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22EF74DF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E508, &qword_22EFBC0F8);
  result = sub_22EFB67EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_22EF70B68(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_22EFB68DC();
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22EF75094(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F8, &qword_22EFBC0E8);
  v38 = a2;
  result = sub_22EFB67EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22EFB68DC();
      sub_22EFB64CC();
      result = sub_22EFB691C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22EF7533C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E500, &qword_22EFBC0F0);
  v37 = a2;
  result = sub_22EFB67EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_22EFB68DC();
      sub_22EFB64CC();
      result = sub_22EFB691C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22EF755E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F0, &qword_22EFBC0E0);
  result = sub_22EFB67EC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 56) + 2 * v21);
      v33 = *(*(v5 + 48) + 16 * v21);
      if ((a2 & 1) == 0)
      {
        sub_22EF70B68(v33, *(*(v5 + 48) + 16 * v21 + 8));
      }

      v23 = *(v8 + 40);
      sub_22EFB68DC();
      sub_22EFB61EC();
      result = sub_22EFB691C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v17 = v33;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v17 = v33;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      *(*(v8 + 56) + 2 * v16) = v22;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_22EF75884(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22EFA9408(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_22EF75BBC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_22EF74B3C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_22EFA9408(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_22EFB687C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_22EF76360(a1, v23);
  }

  else
  {
    sub_22EF75B50(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_22EF759D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22EFA9408(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22EF7533C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22EFA9408(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22EFB687C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22EF76038();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_22EF75B50(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_22EF76360(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_22EF75BBC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4E8, &unk_22EFBD420);
  v2 = *v0;
  v3 = sub_22EFB67DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_22EF76370(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_22EF76360(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_22EF75D60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E508, &qword_22EFBC0F8);
  v2 = *v0;
  v3 = sub_22EFB67DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + v17) = v18;
        result = sub_22EF70B68(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22EF75EC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F8, &qword_22EFBC0E8);
  v2 = *v0;
  v3 = sub_22EFB67DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22EF76038()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E500, &qword_22EFBC0F0);
  v2 = *v0;
  v3 = sub_22EFB67DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22EF761AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F0, &qword_22EFBC0E0);
  v2 = *v0;
  v3 = sub_22EFB67DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 2 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 2 * v17) = v18;
        result = sub_22EF70B68(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_22EF76314()
{
  result = qword_27DA9E448;
  if (!qword_27DA9E448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA9E448);
  }

  return result;
}

_OWORD *sub_22EF76360(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22EF76370(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22EF763CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ATLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22EF76410@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_22EFA098C(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_22EF73F18(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_22EFB618C();
    v14 = v13;
    result = sub_22EF708C8(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22EF76580()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF76608()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

unsigned __int8 *sub_22EF76654@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_22EF76674(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t sub_22EF766C4()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB690C();
  return sub_22EFB691C();
}

uint64_t sub_22EF7675C()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB690C();
  return sub_22EFB691C();
}

unsigned __int16 *sub_22EF767B0@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 9)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 256)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_22EF76800()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF76878()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF768BC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EF7BF54(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EF768F8()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF7696C()
{
  v1 = *v0;
  sub_22EFB68DC();
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF769B0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EF7BF80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EF76A0C()
{
  v1 = *v0;
  sub_22EFB68DC();
  v2 = asc_22EFC66CF[v1];
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF76A94()
{
  v1 = *v0;
  sub_22EFB68DC();
  v2 = asc_22EFC66CF[v1];
  sub_22EFB68FC();
  return sub_22EFB691C();
}

uint64_t sub_22EF76AE0@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22EF7C2AC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22EF76B24()
{
  v1 = *v0;
  v2 = v0[18];
  v3 = v0[19];
  v4 = *(v0 + 4);
  v5 = v0[42];
  v6 = (*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | v1;
  result = (v4 >> 60) & 3 | (4 * v5);
  switch((v4 >> 60) & 3 | (4 * v5))
  {
    case 1uLL:
      if (v1)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      break;
    case 2uLL:
      if (v3)
      {
        v11 = 4;
      }

      else
      {
        v11 = 5;
      }

      if (v2)
      {
        result = 3;
      }

      else
      {
        result = v11;
      }

      break;
    case 3uLL:
      result = 8;
      break;
    case 4uLL:
      result = 9;
      break;
    case 5uLL:
      result = 10;
      break;
    case 6uLL:
      result = 11;
      break;
    case 7uLL:
      result = 13;
      break;
    case 8uLL:
      result = 14;
      break;
    case 9uLL:
      result = 15;
      break;
    case 10uLL:
      result = 16;
      break;
    case 11uLL:
      result = 17;
      break;
    case 12uLL:
      v8 = *(v0 + 8) | (v2 << 16) | (v3 << 24) | (*(v0 + 5) << 32);
      v9 = *(v0 + 3);
      v10 = v4 | *(v0 + 1);
      if (*(v0 + 20) || v10 | v6 | v8 | v9)
      {
        v12 = v10 | v8 | v9;
        if (!*(v0 + 20) && (v6 == 1 ? (v13 = v12 == 0) : (v13 = 0), v13))
        {
          result = 7;
        }

        else if (!*(v0 + 20) && (v6 == 2 ? (v14 = v12 == 0) : (v14 = 0), v14))
        {
          result = 12;
        }

        else
        {
          if (v12)
          {
            v15 = 0;
          }

          else
          {
            v15 = v6 == 3;
          }

          if (v15 && *(v0 + 20) == 0)
          {
            result = 18;
          }

          else
          {
            result = 19;
          }
        }
      }

      else
      {
        result = 6;
      }

      break;
    default:
      return result;
  }

  return result;
}