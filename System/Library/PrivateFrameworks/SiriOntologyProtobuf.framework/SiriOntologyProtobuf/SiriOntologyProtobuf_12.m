uint64_t sub_26866BD64(uint64_t *a1)
{
  result = sub_2685BE1FC(123);
  if (v2)
  {
    return result;
  }

  v5 = a1[5];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  a1[5] = v7;
  if (v7 < 0)
  {
    sub_2685BD910();
    swift_allocError();
    *v9 = xmmword_26868A5D0;
    return swift_willThrow();
  }

  swift_beginAccess();
  v8 = *(v1 + 24);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;

  v51 = xmmword_26868A5E0;
  v54 = 0;
  swift_beginAccess();
  sub_268643EE8(&v51, v1 + 32);
  swift_endAccess();
  result = sub_2685BE428();
  if ((result & 1) == 0)
  {
    v50 = v1;
    v48 = 0;
    v55 = MEMORY[0x277D84F90];
    v49 = 1;
    while (1)
    {
      sub_2685BBB94();
      v11 = a1[1];
      v10 = a1[2];
      if (v10 == v11)
      {
LABEL_44:
        v39 = 13;
LABEL_45:
        sub_2685BD910();
        swift_allocError();
        *v40 = 0;
        v40[1] = v39;
LABEL_46:
        swift_willThrow();
      }

      v12 = *a1;
      if (*(*a1 + v10) != 34)
      {
        goto LABEL_43;
      }

      sub_2685BC360();
      if (!v14)
      {
        goto LABEL_43;
      }

      if (v15 = v13, v16 = v14, sub_2685BE1FC(58), v15 == 0x6570797440) && v16 == 0xE500000000000000 || (sub_268689E14())
      {

        sub_2685BBB94();
        v17 = a1[2];
        if (v17 == v11)
        {
          goto LABEL_44;
        }

        if (*(v12 + v17) != 34 || (sub_2685BC360(), !v19))
        {
LABEL_43:
          v39 = 5;
          goto LABEL_45;
        }

        v20 = *(v50 + 24);
        *(v50 + 16) = v18;
        *(v50 + 24) = v19;
      }

      else
      {
        v21 = v55;
        if ((v49 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v38 = sub_2685B3F48((v22 > 1), v23 + 1, 1, v21);
            v24 = v23 + 1;
            v21 = v38;
          }

          *(v21 + 2) = v24;
          v21[v23 + 32] = v48;
          v55 = v21;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
          v55 = v21;
        }

        v26 = *(v21 + 2);
        v25 = *(v21 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v37 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v21);
          v27 = v26 + 1;
          v21 = v37;
        }

        *(v21 + 2) = v27;
        v21[v26 + 32] = 34;
        v55 = v21;

        sub_2686689EC(v15, v16);
        sub_2685B403C(":", 2, v28);

        sub_2685BBB94();
        v29 = a1[2];
        sub_2685BE2E4();
        v12 = *a1;
        if (!*a1)
        {
          goto LABEL_55;
        }

        v30 = a1[2];
        if (__OFSUB__(v30, v29))
        {
          goto LABEL_53;
        }

        v31 = sub_2685B4E1C((v12 + v29), v30 - v29);
        if (!v32)
        {
          sub_2685BD910();
          swift_allocError();
          *v41 = xmmword_268692810;
          goto LABEL_46;
        }

        sub_2686689EC(v31, v32);
        v48 = 44;
        v49 = 0;
      }

      v34 = a1[1];
      v33 = a1[2];
      if (v33 != v34)
      {
        while (1)
        {
          v35 = *(v12 + v33);
          if (v35 > 0x20 || ((1 << v35) & 0x100002600) == 0)
          {
            break;
          }

          a1[2] = ++v33;
          if (v34 == v33)
          {
            goto LABEL_8;
          }
        }

        if (v34 != v33 && v35 == 125)
        {
          break;
        }
      }

LABEL_8:
      sub_2685BE1FC(44);
    }

    a1[2] = v33 + 1;
    v42 = a1[5];
    v43 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
      a1[5] = v43;
      if (a1[4] >= v43)
      {
        v44 = *(a1 + 64);
        v45 = sub_26866677C(v55);
        v47 = v46;

        *&v51 = v45;
        *(&v51 + 1) = v47;
        v52 = v43;
        v53 = v44;
        v54 = 2;
        swift_beginAccess();
        sub_268643EE8(&v51, v50 + 32);
        return swift_endAccess();
      }

      goto LABEL_56;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    result = sub_268689DA4();
    __break(1u);
  }

  return result;
}

uint64_t sub_26866C2F0(void *a1, unint64_t a2, unint64_t a3, char *a4)
{
  v9 = sub_2686899A4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v15 = a4[1];
  sub_2685B1724(a1, &v53);
  LOBYTE(v59[0]) = v14;
  BYTE1(v59[0]) = v15;
  sub_26862CC74(&v53, v59, &v62);
  if (v4)
  {
    return v13;
  }

  v16 = v62;
  v66 = 0;
  if ((BYTE9(v62) & 1) == 0)
  {
    v52 = BYTE8(v62);
    v17 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_2685B3F48(0, *(v16 + 2) + 1, 1, v16);
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_2685B3F48((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v16[v19 + 32] = v52;
    *&v62 = v16;
    v13 = v17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_2685B3F48(0, *(v16 + 2) + 1, 1, v16);
    *&v62 = v16;
  }

  v22 = *(v16 + 2);
  v21 = *(v16 + 3);
  v23 = v21 >> 1;
  v24 = v22 + 1;
  if (v21 >> 1 <= v22)
  {
    v16 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v16);
    v21 = *(v16 + 3);
    v23 = v21 >> 1;
  }

  *(v16 + 2) = v24;
  v16[v22 + 32] = 123;
  WORD4(v62) = 256;
  *&v62 = v16;
  v25 = v22 + 2;
  if (v23 < v25)
  {
    v16 = sub_2685B3F48((v21 > 1), v25, 1, v16);
  }

  *(v16 + 2) = v25;
  v16[v24 + 32] = 34;
  *&v62 = v16;
  sub_2686689EC(0x6570797440, 0xE500000000000000);
  sub_2685B403C(":", 2, v26);
  WORD4(v62) = 44;
  sub_268631D18(a2, a3);
  sub_2685B1724(a1, &v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D8F8, &qword_2686921D0);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(v57, v59);
    v27 = v60;
    v28 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    LOBYTE(v57[0]) = v14;
    BYTE1(v57[0]) = v15;
    v29 = v66;
    v30 = (*(v28 + 8))(v57, v27, v28);
    if (v29)
    {
      v53 = v62;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      sub_268647CF4(&v53);
      __swift_destroy_boxed_opaque_existential_1(v59);
      return v13;
    }

    v36 = v31;
    v37 = v30;
    v38 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_2685B3F48(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    v41 = v39 >> 1;
    v42 = v40 + 1;
    if (v39 >> 1 <= v40)
    {
      v38 = sub_2685B3F48((v39 > 1), v40 + 1, 1, v38);
      v39 = *(v38 + 3);
      v41 = v39 >> 1;
    }

    *(v38 + 2) = v42;
    v38[v40 + 32] = 44;
    *&v62 = v38;
    v43 = v40 + 2;
    if (v41 < v43)
    {
      v38 = sub_2685B3F48((v39 > 1), v43, 1, v38);
    }

    *(v38 + 2) = v43;
    v38[v42 + 32] = 34;
    *&v62 = v38;
    sub_2686689EC(0x65756C6176, 0xE500000000000000);
    sub_2685B403C(":", 2, v44);
    WORD4(v62) = 44;
    sub_2686689EC(v37, v36);
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  else
  {
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_2686633D0(v57);
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    v34 = v66;
    (*(v33 + 72))(&v62, &type metadata for JSONEncodingVisitor, &off_28792D200, v32, v33);
    if (v34)
    {
LABEL_18:
      v53 = v62;
      v54 = v63;
      v55 = v64;
      v56 = v65;
      sub_268647CF4(&v53);
      return v13;
    }
  }

  v45 = v62;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  *&v62 = v45;
  if ((v46 & 1) == 0)
  {
    v45 = sub_2685B3F48(0, *(v45 + 2) + 1, 1, v45);
    *&v62 = v45;
  }

  v48 = *(v45 + 2);
  v47 = *(v45 + 3);
  if (v48 >= v47 >> 1)
  {
    v45 = sub_2685B3F48((v47 > 1), v48 + 1, 1, v45);
  }

  *(v45 + 2) = v48 + 1;
  v45[v48 + 32] = 125;
  *&v62 = v45;
  WORD4(v62) = 44;
  *&v53 = v45;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v13 = sub_268689974();
  v50 = v49;

  if (v50)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_26866C948()
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = sub_26866677C(&unk_287927AB8);
  v9 = v0;
  sub_268689854();
  if (v9 >> 62 == 2)
  {
    v1 = *(v8 + 24);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D9D0, &unk_2686929C0);
  v7 = sub_26866E1CC(&qword_28028D9D8, &qword_28028D9D0, &unk_2686929C0);
  LOBYTE(v5[0]) = 125;
  v4 = *__swift_project_boxed_opaque_existential_1(v5, v6);
  sub_268689814();
  __swift_destroy_boxed_opaque_existential_1(v5);
  result = v8;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_26866CA90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *a3;
  v13 = *(a3 + 8);
  if (swift_conformsToProtocol2() && a4)
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_26866DD68(a1, a2, v12, v13, &v24);
    if (!v6)
    {
      v20 = v24;
      v19 = v25;
      v22 = v12;
      v23 = v13;
      a6[3] = a4;
      a6[4] = a5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);

      Message.init(jsonString:options:)(v20, v19, &v22, a4, a5, boxed_opaque_existential_1);
    }
  }

  else
  {
    v14 = sub_26866C948();
    v16 = v15;
    v24 = v12;
    LOBYTE(v25) = v13;
    a6[3] = a4;
    a6[4] = a5;
    v17 = __swift_allocate_boxed_opaque_existential_1(a6);
    result = Message.init(jsonUTF8Data:options:)(v14, v16, &v24, a4, a5, v17);
    if (v6)
    {
      return __swift_deallocate_boxed_opaque_existential_1(a6);
    }
  }

  return result;
}

void sub_26866CC00(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)())
{
  if (a1)
  {
    v7 = a2 - a1;
    if (a2 - a1 >= 1)
    {
      type metadata accessor for DoubleParser();
      v10 = swift_allocObject();
      v11 = swift_slowAlloc();
      *(v10 + 16) = v11;
      *(v10 + 24) = v11 + 128;
      v38 = v7;
      sub_2685BC49C();
      if (v5)
      {
LABEL_40:

        return;
      }

      if (v12 == 0x65756C6176 && v13 == 0xE500000000000000)
      {
      }

      else
      {
        v14 = sub_268689E14();

        if ((v14 & 1) == 0)
        {
LABEL_38:
          sub_26866E178();
          swift_allocError();
          *v36 = 1;
          goto LABEL_39;
        }
      }

      if (!v7)
      {
        goto LABEL_15;
      }

      v15 = a2 - a1;
      v16 = -1;
      v17 = a1;
      while (1)
      {
        v19 = *v17++;
        v18 = v19;
        v20 = (1 << v19) & 0x100002600;
        if (v19 > 0x20 || v20 == 0)
        {
          break;
        }

        --v16;
        if (!--v15)
        {
          goto LABEL_15;
        }
      }

      if (v15)
      {
        if (v18 == 58)
        {
          v23 = -v16;
          v39 = v23;
          if (v15 != 1)
          {
            while (1)
            {
              v24 = a1[v23];
              v25 = v24 > 0x20;
              v26 = (1 << v24) & 0x100002600;
              if (v25 || v26 == 0)
              {
                break;
              }

              if (v7 == ++v23)
              {
                v23 = v7;
                goto LABEL_27;
              }
            }

            v7 = v23;
LABEL_27:
            v39 = v23;
          }

          sub_2685BE2E4();
          v29 = v39;
          if (__OFSUB__(v39, v7))
          {
            __break(1u);
            __break(1u);
            return;
          }

          v30 = sub_2685B4E1C(&a1[v7], v39 - v7);
          if (!v31)
          {
            sub_2685BD910();
            swift_allocError();
            *v37 = xmmword_268692810;
            goto LABEL_39;
          }

          v32 = a5[1];
          *a5 = v30;
          a5[1] = v31;

          if (v39 != v38)
          {
            while (1)
            {
              v33 = a1[v29];
              v25 = v33 > 0x20;
              v34 = (1 << v33) & 0x100002600;
              if (v25 || v34 == 0)
              {
                break;
              }

              if (v38 == ++v29)
              {
                v29 = v38;
                break;
              }
            }
          }

          if (v29 == v38)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        sub_2685BD910();
        swift_allocError();
        *v28 = 0;
        v28[1] = 0;
      }

      else
      {
LABEL_15:
        sub_2685BD910();
        swift_allocError();
        *v22 = xmmword_26868A580;
      }

LABEL_39:
      swift_willThrow();
      goto LABEL_40;
    }
  }
}

uint64_t sub_26866CF00()
{
  swift_beginAccess();
  sub_268643E8C(v0 + 32, &v29);
  if (!v32)
  {
    return v29;
  }

  if (v32 == 1)
  {
    sub_2685B17CC(&v29, aBlock);
    v1 = v24;
    v2 = v25;
    __swift_project_boxed_opaque_existential_1(aBlock, v24);
    v18 = Message.serializedData(partial:)(1, v1, v2);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    return v18;
  }

  else
  {
    v3 = v29;
    v4 = v30;
    v5 = v31;
    swift_beginAccess();
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);

    v8 = sub_268652BF8(v7, v6);
    v10 = v9;

    v27 = 0;
    v28 = 0;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v11 = qword_28028D890;
    v12 = swift_allocObject();
    v12[2] = &v27;
    v12[3] = v8;
    v12[4] = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_268653E5C;
    *(v13 + 24) = v12;
    v25 = sub_26866E228;
    v26 = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2686535FC;
    v24 = &block_descriptor_69;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    dispatch_sync(v15, v14);

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
      v16 = v27;
      v17 = v28;

      if (v16)
      {
        v27 = v4;
        LOBYTE(v28) = v5;
        sub_26866CA90(v3, *(&v3 + 1), &v27, v16, v17, aBlock);
        v20 = v24;
        v21 = v25;
        __swift_project_boxed_opaque_existential_1(aBlock, v24);
        v22 = Message.serializedData(partial:)(1, v20, v21);
        sub_2685B593C(v3, *(&v3 + 1));
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        return v22;
      }

      else
      {
        sub_2685B593C(v3, *(&v3 + 1));
        return 0;
      }
    }
  }

  return result;
}

double sub_26866D25C()
{
  type metadata accessor for AnyMessageStorage();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 32) = xmmword_26868A5E0;
  *(v0 + 72) = 0;
  qword_28029B270 = v0;
  return result;
}

uint64_t sub_26866D2A0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = xmmword_26868A5E0;
  *(v1 + 72) = 0;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  swift_beginAccess();
  sub_268643E8C(a1 + 32, v6);

  swift_beginAccess();
  sub_268643EE8(v6, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_26866D38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = *(v3 + 24);

    v10 = sub_268652BF8(v6, v7);
    v12 = v11;

    if (v10 == (*(a3 + 24))(a2, a3) && v12 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_268689E14();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_26866D488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v50 = a1;
  v9 = sub_268689C74();
  v48 = *(v9 - 8);
  v10 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v47 - v13;
  v51 = *(a4 - 8);
  v15 = *(v51 + 64);
  v17 = MEMORY[0x28223BE20](v12, v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v47 - v22;
  v24 = *a3;
  v25 = *(a3 + 8);
  v52 = a5;
  if (sub_26866D38C(v21, a4, a5))
  {
    swift_beginAccess();
    sub_268643E8C(v5 + 32, &v60);
    if (v63)
    {
      if (v63 == 1)
      {
        sub_2685B17CC(&v60, v57);
        sub_2685B1724(v57, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
        v26 = swift_dynamicCast();
        v27 = v51;
        v28 = *(v51 + 56);
        v29 = v64;
        if (v26)
        {
          v28(v14, 0, 1, a4);
          v30 = v50;
          (*(v27 + 8))(v50, a4);
          (*(v27 + 32))(v30, v14, a4);
        }

        else
        {
          v28(v14, 1, 1, a4);
          (*(v48 + 8))(v14, v9);
          v39 = v58;
          v40 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          v41 = Message.serializedData(partial:)(1, v39, v40);
          if (!v29)
          {
            v43 = v42;
            v44 = v41;
            sub_2685B2978(v49, &v55);
            v53 = 100;
            v54 = 0;
            Message.init(serializedData:extensions:partial:options:)(v44, v43, &v55, 1, &v53, a4, v52, v19);
            v45 = v51;
            v46 = v50;
            (*(v51 + 8))(v50, a4);
            (*(v45 + 32))(v46, v19, a4);
          }
        }

        return __swift_destroy_boxed_opaque_existential_1(v57);
      }

      else
      {
        v37 = v60;
        v55 = v61;
        v56 = v62;
        v38 = v64;
        sub_26866CA90(v60, *(&v60 + 1), &v55, a4, v52, v57);
        if (v38)
        {
          return sub_2685B593C(v37, *(&v37 + 1));
        }

        else
        {
          (*(v51 + 8))(v50, a4);
          sub_2685B593C(v37, *(&v37 + 1));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
          return swift_dynamicCast();
        }
      }
    }

    else
    {
      v33 = v60;
      sub_2685B2978(v49, v57);
      v55 = v24;
      v56 = v25;
      v34 = v64;
      result = Message.init(serializedData:extensions:partial:options:)(v33, *(&v33 + 1), v57, 1, &v55, a4, v52, v23);
      if (!v34)
      {
        v35 = v51;
        v36 = v50;
        (*(v51 + 8))(v50, a4);
        return (*(v35 + 32))(v36, v23, a4);
      }
    }
  }

  else
  {
    sub_26866E178();
    swift_allocError();
    *v31 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26866D99C()
{
  swift_beginAccess();
  sub_268643E8C(v0 + 32, v17);
  v1 = v17[40];
  result = sub_26866DD20(v17);
  if (v1 >= 2)
  {
    swift_beginAccess();
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);

    v5 = sub_268652BF8(v4, v3);
    v7 = v6;

    v16[0] = 0;
    v16[1] = 0;
    if (qword_28028BE40 != -1)
    {
      swift_once();
    }

    v8 = qword_28028D890;
    v9 = swift_allocObject();
    v9[2] = v16;
    v9[3] = v5;
    v9[4] = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_268653A5C;
    *(v10 + 24) = v9;
    v15[4] = sub_268655254;
    v15[5] = v10;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_2686535FC;
    v15[3] = &block_descriptor_1;
    v11 = _Block_copy(v15);
    v12 = v8;

    dispatch_sync(v12, v11);

    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = v16[0];

      if (!v13)
      {
        sub_26861C728();
        swift_allocError();
        *v14 = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_26866DBDC()
{
  v1 = *(v0 + 24);

  sub_26866DD20(v0 + 32);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26866DC60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26866DC9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26866DCE8(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26866DD68(uint64_t a1, unint64_t a2, uint64_t a3, char a4, uint64_t (**a5)())
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v7 = v26 + BYTE6(a2);
      v8 = v26;
LABEL_24:
      v24 = a4 & 1;
      goto LABEL_25;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v9 = a3;
      v10 = a5;
      v13 = sub_268689764();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_268689794();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_268689784();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v6 != 2)
  {
    memset(v26, 0, 14);
    v8 = v26;
    v7 = v26;
    goto LABEL_24;
  }

  v9 = a3;
  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_268689764();
  if (v13)
  {
    v14 = sub_268689794();
    if (__OFSUB__(v12, v14))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v17 = sub_268689784();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v7 = v23;
  }

  else
  {
    v7 = 0;
  }

  v24 = a4 & 1;
  v8 = v13;
  a3 = v9;
  a5 = v10;
LABEL_25:
  sub_26866CC00(v8, v7, a3, v24, a5);
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26866DF6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14);
  v15 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v15 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
  }

  else
  {
    a3 = sub_268653A68(v14, 0xD000000000000013, 0x80000002686958C0, a5, a6);
    a4 = v16;
  }

  sub_26863B360(v14, a3, a4, a1, a5, a6);

  return (*(v11 + 8))(v14, a5);
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D61DE30);
  }

  return result;
}

unint64_t sub_26866E178()
{
  result = qword_28028D9C8;
  if (!qword_28028D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D9C8);
  }

  return result;
}

uint64_t sub_26866E1CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26866E240@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_28028BBD0 != -1)
  {
    v13 = result;
    v14 = a2;
    swift_once();
    a2 = v14;
    result = v13;
  }

  v4 = off_28028C0C8;
  v5 = 0uLL;
  if (*(off_28028C0C8 + 2))
  {
    if (a2)
    {
      result = result != 0;
    }

    result = sub_2685B351C(result);
    if (v6)
    {
      v7 = v4[7] + 80 * result;
      v15 = *(v7 + 40);
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (*(v7 + 73))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v7 + 72);
      v12 = v10 | v11;
      result = sub_2685C255C(*(v7 + 56), *(v7 + 64), v11, *(v7 + 73));
      v5 = v15;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = -256;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v12 = -256;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_26866E350@<X0>(uint64_t result@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  if (*a2 != -1)
  {
    v14 = result;
    v15 = a3;
    swift_once();
    a3 = v15;
    result = v14;
  }

  v5 = *a3;
  v6 = 0uLL;
  if (*(*a3 + 16))
  {
    result = sub_2685B351C(result);
    if (v7)
    {
      v8 = *(v5 + 56) + 80 * result;
      v16 = *(v8 + 40);
      v9 = *(v8 + 56);
      v10 = *(v8 + 64);
      if (*(v8 + 73))
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }

      v12 = *(v8 + 72);
      v13 = v11 | v12;
      result = sub_2685C255C(*(v8 + 56), *(v8 + 64), v12, *(v8 + 73));
      v6 = v16;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v13 = -256;
      v6 = 0uLL;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v13 = -256;
  }

  *a4 = v6;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_26866E434@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v13 = result;
    v14 = a2;
    swift_once();
    a2 = v14;
    result = v13;
  }

  v4 = off_28028D9F0;
  v5 = 0uLL;
  if (*(off_28028D9F0 + 2))
  {
    if (a2)
    {
      result = 0;
    }

    result = sub_2685B351C(result);
    if (v6)
    {
      v7 = v4[7] + 80 * result;
      v15 = *(v7 + 40);
      v8 = *(v7 + 56);
      v9 = *(v7 + 64);
      if (*(v7 + 73))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(v7 + 72);
      v12 = v10 | v11;
      result = sub_2685C255C(*(v7 + 56), *(v7 + 64), v11, *(v7 + 73));
      v5 = v15;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v12 = -256;
      v5 = 0uLL;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v12 = -256;
  }

  *a3 = v5;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v12;
  return result;
}

uint64_t sub_26866E53C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC78, &qword_2686932F0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Type, sub_2685CF23C, sub_2685C8FBC);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866E638()
{
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = v0[7];
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC70, &qword_2686932E8);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268678690(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866E714(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC68, &qword_2686932E0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Enum, sub_2685CF58C, sub_2685CB9F8);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866E810()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC60, &qword_2686932D8);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268678AA8(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866E8DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC58, &qword_2686932D0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Option, sub_2685CEBE8, sub_2685CD6D4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866E9D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC50, &qword_2686932C8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_Api, sub_2685D7094, sub_2685D3F44);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866EAD4()
{
  v10 = v0[4];
  v11 = v0[5];
  v12 = *(v0 + 12);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC48, &qword_2686932C0);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268678C6C(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866EBB0()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC40, &qword_2686932B8);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268678E38(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866ECAC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC30, &qword_2686932A8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848, sub_2685F2AE4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866EDA8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC28, &qword_2686932A0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_DescriptorProto, sub_268615B10, sub_2685F5AD0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v11 = a7(1, a1, a2, a3);
  v13 = v12;

  MEMORY[0x26D61D4B0](v11, v13);

  return v15;
}

uint64_t sub_26866EF9C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC18, &qword_268693290);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_2686795A0(1, a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4 | ((BYTE4(a4) & 1) << 32), &type metadata for Google_Protobuf_DescriptorProto.ReservedRange, sub_268615E60, &unk_287930B68, sub_268619350);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_26866F0CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC10, &qword_268693288);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_268679EC0(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_26866F1CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC08, &qword_268693280);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_FieldDescriptorProto, sub_26861615C, sub_2685F8EA0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F2C8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DC00, &qword_268693278);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C970(1, a1, a2, a3, &type metadata for Google_Protobuf_OneofDescriptorProto, sub_268616304, sub_2685FADD0);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F3C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBF8, &qword_268693270);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_EnumDescriptorProto, sub_2686164AC, sub_2685FC358);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F4C0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBF0, &qword_268693268);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_2686795A0(1, a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4 | ((BYTE4(a4) & 1) << 32), &type metadata for Google_Protobuf_EnumDescriptorProto.EnumReservedRange, sub_268616654, &unk_287930B18, sub_268619350);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_26866F5F0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBE8, &qword_268693260);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_EnumValueDescriptorProto, sub_2686167FC, sub_2685FE0EC);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F6EC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBE0, &qword_268693258);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_ServiceDescriptorProto, sub_2686169A4, sub_2685FF3C4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F7E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBD8, &qword_268693250);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_268678874(1, a1, a2, a3, &type metadata for Google_Protobuf_MethodDescriptorProto, sub_268616B4C, sub_268600918);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866F914()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBC8, &qword_268693240);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268679A2C(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866F9E0()
{
  v6 = *v0;
  *v7 = v0[1];
  *&v7[14] = *(v0 + 30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBC0, &qword_268693238);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_268679CFC(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866FAAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DBB8, &qword_268693230);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_268679EC0(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_OneofOptions, sub_268614A94);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_26866FC3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = a4(1);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866FD30(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = a4(1);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26866FDF4()
{
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[6];
  v13 = *(v0 + 14);
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v9 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB90, &qword_268693208);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_26867AA68(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866FED8()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB88, &qword_268693200);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_26867AC3C(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_26866FFA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB80, &qword_2686931F8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867AFC4(1, a1, a2, a3, &type metadata for Google_Protobuf_SourceCodeInfo, sub_268617A3C, sub_268676250);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_2686700A0()
{
  v8 = v0[2];
  v9 = v0[3];
  v10 = *(v0 + 8);
  v6 = *v0;
  v7 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB78, &qword_2686931F0);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_26867AE00(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_268670174(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB70, &qword_2686931E8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867AFC4(1, a1, a2, a3, &type metadata for Google_Protobuf_GeneratedCodeInfo, sub_268617D38, sub_268677D78);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670270()
{
  v6 = *v0;
  v7 = v0[1];
  *v8 = v0[2];
  *&v8[13] = *(v0 + 45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB68, &qword_2686931E0);
  v5 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v1 = sub_26867B20C(1);
  v3 = v2;

  MEMORY[0x26D61D4B0](v1, v3);

  return v5;
}

uint64_t sub_268670344(char a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB10, &qword_268693188);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867B3D8(1, a1, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB58, &qword_2686931D0);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867CD0C(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_Timestamp, sub_26862C9FC, &unk_2879308E8, sub_26862C34C);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_268670588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v17 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v13 = a8(1, a1, a2, a3, a4);
  v15 = v14;

  MEMORY[0x26D61D4B0](v13, v15);

  return v17;
}

uint64_t sub_268670660(uint64_t a1, unint64_t a2, float a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB38, &qword_2686931B0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867BCC0(1, a1, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670730(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB20, &qword_268693198);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C048(1, a1, a2, a3, &type metadata for Google_Protobuf_Int32Value, sub_2686516E4, sub_26864EF94);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_26867082C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB30, &qword_2686931A8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C218(1, a1, a2, a3, &type metadata for Google_Protobuf_Int64Value, sub_268651394, sub_26864E3A4);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670928(uint64_t a1, unint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB40, &qword_2686931B8);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867BE84(1, a1, a2, a3);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_2686709F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB08, &qword_268693180);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867C3E8(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_StringValue, sub_268651BDC);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_268670AF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB18, &qword_268693190);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C048(1, a1, a2, a3, &type metadata for Google_Protobuf_UInt32Value, sub_26865188C, sub_26864F44C);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670BF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB28, &qword_2686931A0);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C218(1, a1, a2, a3, &type metadata for Google_Protobuf_UInt64Value, sub_26865153C, sub_26864E818);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670CF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB60, &qword_2686931D8);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867C3E8(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_SourceContext, sub_2685CFDF4);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t sub_268670E20(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DB50, &qword_2686931C8);
  v8 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v4 = sub_26867C770(1, a1, a2);
  v6 = v5;

  MEMORY[0x26D61D4B0](v4, v6);

  return v8;
}

uint64_t sub_268670EE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DAE0, &qword_268693158);
  v10 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v6 = sub_26867C970(1, a1, a2, a3, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28);
  v8 = v7;

  MEMORY[0x26D61D4B0](v6, v8);

  return v10;
}

uint64_t sub_268670FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DAF0, &qword_268693168);
  v12 = sub_2686899C4();
  MEMORY[0x26D61D4B0](2618, 0xE200000000000000);
  v8 = sub_26867CD0C(1, a1, a2, a3, a4, &type metadata for Google_Protobuf_Duration, sub_268653BF0, &unk_287930870, sub_26862C34C);
  v10 = v9;

  MEMORY[0x26D61D4B0](v8, v10);

  return v12;
}

uint64_t Google_Protobuf_Value.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

double Google_Protobuf_ListValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

double Google_Protobuf_Struct.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2686711B0(uint64_t a1, char a2)
{
  v4 = a1;
  sub_26866E240(a1, a2 & 1, v16);
  if (v17 != 255)
  {
    sub_2685B403C(v16[0], v16[1], v17);
    return sub_2685B2E64(v16, &qword_28028D3B8, &qword_268692270);
  }

  if (a2)
  {
    v4 = v4 != 0;
  }

  else if ((v4 & 0x8000000000000000) != 0)
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v7;
      v13 = *(v7 + 2);
      v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v7 = v14;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = 45;
    *v2 = v7;
    v6 = -v4;
    goto LABEL_7;
  }

  v6 = v4;
LABEL_7:

  return sub_268663B88(v6);
}

uint64_t sub_268671334(uint64_t a1, char a2, void *a3, uint64_t *a4)
{
  sub_26866E350(a1, a3, a4, v18);
  if (v19 == 255)
  {
    if ((a2 & 1) != 0 || (a1 & 0x8000000000000000) == 0)
    {
      v12 = a1;
    }

    else
    {
      v7 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
        *v4 = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v17 = v9 + 1;
        v14 = v7;
        v15 = *(v7 + 2);
        v16 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v14);
        v9 = v15;
        v11 = v17;
        v7 = v16;
      }

      *(v7 + 2) = v11;
      v7[v9 + 32] = 45;
      *v4 = v7;
      v12 = -a1;
    }

    return sub_268663B88(v12);
  }

  else
  {
    sub_2685B403C(v18[0], v18[1], v19);
    return sub_2685B2E64(v18, &qword_28028D3B8, &qword_268692270);
  }
}

uint64_t sub_268671518(unsigned __int8 a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v4 = *a3;
  if (*(*a3 + 16) && (v5 = *a3, v6 = sub_2685B351C(a1 + 1), (v7 & 1) != 0))
  {
    v8 = *(v4 + 56) + 80 * v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);

    return sub_2685B403C(v9, v10, v8);
  }

  else
  {

    return sub_268663B88(a1 + 1);
  }
}

uint64_t sub_2686715F4(unsigned __int8 a1, void *a2, uint64_t *a3)
{
  if (*a2 != -1)
  {
    v12 = a3;
    swift_once();
    a3 = v12;
  }

  v4 = *a3;
  if (*(*a3 + 16) && (v5 = *a3, v6 = sub_2685B351C(a1), (v7 & 1) != 0))
  {
    v8 = *(v4 + 56) + 80 * v6;
    v9 = *(v8 + 40);
    v10 = *(v8 + 48);

    return sub_2685B403C(v9, v10, v8);
  }

  else
  {

    return sub_268663B88(a1);
  }
}

uint64_t sub_2686716A8(uint64_t a1, char a2)
{
  v4 = a1;
  sub_26866E434(a1, a2 & 1, v16);
  if (v17 != 255)
  {
    sub_2685B403C(v16[0], v16[1], v17);
    return sub_2685B2E64(v16, &qword_28028D3B8, &qword_268692270);
  }

  if (a2)
  {
    v4 = 0;
  }

  else if ((v4 & 0x8000000000000000) != 0)
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v9 = *(v7 + 2);
    v10 = *(v7 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v15 = v9 + 1;
      v12 = v7;
      v13 = *(v7 + 2);
      v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
      v9 = v13;
      v11 = v15;
      v7 = v14;
    }

    *(v7 + 2) = v11;
    v7[v9 + 32] = 45;
    *v2 = v7;
    v6 = -v4;
    goto LABEL_7;
  }

  v6 = v4;
LABEL_7:

  return sub_268663B88(v6);
}

uint64_t sub_2686717E0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_2685B301C(a5);
  sub_2686636FC(v11);
  v37[3] = &type metadata for Google_Protobuf_SourceContext;
  v37[4] = sub_2685CFDF4();
  v12 = swift_allocObject();
  v37[0] = v12;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = *v5;
  v14 = v5[1];
  v27 = *(v5 + 64);
  sub_2685B1724(v37, &v29);

  v28 = a4;
  sub_2685BA80C(a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v34, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    swift_getDynamicType();
    (*(v40 + 8))(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v25 = v30;
    v26 = v29;
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v26 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3C8, &unk_2686902F0);
    v25 = 0u;
  }

  sub_2685B1724(v37, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v16 = *(&v35 + 1);
    v15 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    (*(v15 + 16))(&v29, v16, v15);
    v17 = v29;
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3F8, &unk_268690680);
    v17 = 0;
  }

  v18 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_2685B2FBC(0);

  *&v38 = v13;
  *(&v38 + 1) = v14;
  v39 = v26;
  v40 = v25;
  *&v41 = v18;
  *(&v41 + 1) = v17;
  v42 = v27;
  v19 = v43;
  sub_26867CF00(&v38, a1, a2, a3, v28);
  if (v19)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v38;

    *v6 = v20;
    sub_2685B4D0C(*(*(&v20 + 1) + 16) - 1);
    sub_2685B4D0C(*(v6[1] + 16) - 1);
    v21 = v6[1];

    sub_2685B3560(v22);
    sub_2685B403C("}\n", 2, v23);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v29 = v38;
    v30 = v39;
    return sub_2685B4DEC(&v29);
  }

  return result;
}

uint64_t sub_268671B64(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v11);
  v37[3] = &type metadata for Google_Protobuf_Any;
  v37[0] = a1;
  v37[1] = a2;
  v37[4] = sub_2685CFD4C();
  v37[2] = a3;
  v12 = *v4;
  v13 = v4[1];
  v43 = *(v4 + 64);
  sub_2685B1724(v37, &v29);
  sub_2685BA80C(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v34, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    swift_getDynamicType();
    (*(v40 + 8))(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v27 = v30;
    v28 = v29;
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v28 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3C8, &unk_2686902F0);
    v27 = 0u;
  }

  sub_2685B1724(v37, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v14 = *(&v35 + 1);
    v15 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v6 = v5;
    v16(&v29, v14, v17);
    v18 = v29;
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_2685B2FBC(0);

  *&v38 = v12;
  *(&v38 + 1) = v13;
  v39 = v28;
  v40 = v27;
  *&v41 = v19;
  *(&v41 + 1) = v18;
  v20 = v43;
  v42 = v43;
  sub_26866A568(&v38);
  v21 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v21 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v21)
  {
    if (a1 == a1 >> 32)
    {
LABEL_17:
      v22 = v38;

      *v7 = v22;
      sub_2685B4D0C(*(*(&v22 + 1) + 16) - 1);
      sub_2685B4D0C(*(v7[1] + 16) - 1);
      v23 = v7[1];

      sub_2685B3560(v24);
      sub_2685B403C("}\n", 2, v25);
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v29 = v38;
      v30 = v39;
      return sub_2685B4DEC(&v29);
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_26863B108(a1, a2);
  if (!v6)
  {
    goto LABEL_17;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268671F4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v9);
  v35[3] = &type metadata for Google_Protobuf_SourceCodeInfo;
  v35[0] = a1;
  v35[1] = a2;
  v35[4] = sub_268617A3C();
  v35[2] = a3;
  v10 = *v4;
  v11 = v4[1];
  v24 = *(v5 + 64);
  sub_2685B1724(v35, &v27);

  sub_2685BA80C(a2, a3);
  v41 = v10;

  v26 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v32, &v36);
    __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
    swift_getDynamicType();
    (*(v38 + 8))(&v27);
    __swift_destroy_boxed_opaque_existential_1(&v36);
    v22 = v28;
    v23 = v27;
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v23 = 0u;
    sub_2685B2E64(&v32, &qword_28028D3C8, &unk_2686902F0);
    v22 = 0u;
  }

  sub_2685B1724(v35, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v13 = *(&v33 + 1);
    v12 = v34;
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    (*(v12 + 16))(&v27, v13, v12);
    v14 = v27;
    __swift_destroy_boxed_opaque_existential_1(&v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_2685B2E64(&v32, &qword_28028D3F8, &unk_268690680);
    v14 = 0;
  }

  v15 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_2685B2FBC(0);

  *&v36 = v41;
  *(&v36 + 1) = v26;
  v37 = v23;
  v38 = v22;
  *&v39 = v15;
  *(&v39 + 1) = v14;
  v40 = v24;
  if (!*(a1 + 16) || (sub_268676250(a1, 1), !v25))
  {
    v16 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v16 != 2 || *(a2 + 16) == *(a2 + 24))
      {
        goto LABEL_19;
      }
    }

    else if (v16)
    {
      if (a2 == a2 >> 32)
      {
LABEL_19:
        v17 = v36;

        *v5 = v17;
        sub_2685B4D0C(*(*(&v17 + 1) + 16) - 1);
        sub_2685B4D0C(*(v5[1] + 16) - 1);
        v18 = v5[1];

        sub_2685B3560(v19);
        sub_2685B403C("}\n", 2, v20);
        v29 = v38;
        v30 = v39;
        v31 = v40;
        v27 = v36;
        v28 = v37;
        return sub_2685B4DEC(&v27);
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_26863B108(a2, a3);
    if (!v25)
    {
      goto LABEL_19;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672328(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v8 = v5;
  sub_2685B301C(a5);
  sub_2686636FC(v13);
  v42[3] = &type metadata for Google_Protobuf_FileOptions;
  v42[4] = sub_2686151BC();
  v14 = swift_allocObject();
  v42[0] = v14;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v15 = *v5;
  v16 = v5[1];
  v32 = *(v8 + 64);
  sub_2685B1724(v42, &v34);
  sub_2685BA80C(a1, a2);
  v33 = a3;

  v48 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v39, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    swift_getDynamicType();
    (*(v45 + 8))(&v34);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v30 = v35;
    v31 = v34;
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v31 = 0u;
    sub_2685B2E64(&v39, &qword_28028D3C8, &unk_2686902F0);
    v30 = 0u;
  }

  sub_2685B1724(v42, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v17 = v15;
    v18 = *(&v40 + 1);
    v19 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v20 = *(v19 + 16);
    v21 = v19;
    v15 = v17;
    v7 = v6;
    v20(&v34, v18, v21);
    v22 = v34;
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_2685B2E64(&v39, &qword_28028D3F8, &unk_268690680);
    v22 = 0;
  }

  v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_2685B2FBC(0);

  *&v43 = v15;
  *(&v43 + 1) = v48;
  v44 = v31;
  v45 = v30;
  *&v46 = v23;
  *(&v46 + 1) = v22;
  v47 = v32;
  sub_2686030E8(a4, &v43, a1, a2, v33);
  if (!v7)
  {
    v24 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v24 != 2 || *(a1 + 16) == *(a1 + 24))
      {
        goto LABEL_18;
      }
    }

    else if (v24)
    {
      if (a1 == a1 >> 32)
      {
LABEL_18:
        v25 = v43;

        *v8 = v25;
        sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
        sub_2685B4D0C(*(v8[1] + 16) - 1);
        v26 = v8[1];

        sub_2685B3560(v27);
        sub_2685B403C("}\n", 2, v28);
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v34 = v43;
        v35 = v44;
        return sub_2685B4DEC(&v34);
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }

    if (v47 == 1)
    {
      sub_26863B108(a1, a2);
    }

    goto LABEL_18;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v31[3] = &type metadata for Google_Protobuf_FieldOptions;
  v31[4] = sub_268614998();
  v6 = swift_allocObject();
  v31[0] = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 46) = *(a1 + 30);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v31, &v23);
  sub_268601D9C(a1, &v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v28, &v32);
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    swift_getDynamicType();
    (*(v34 + 8))(&v23);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v21 = v24;
    v22 = v23;
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v22 = 0u;
    sub_2685B2E64(&v28, &qword_28028D3C8, &unk_2686902F0);
    v21 = 0u;
  }

  sub_2685B1724(v31, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = *(&v29 + 1);
    v12 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    (*(v12 + 16))(&v23, v11, v12);
    v13 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_2685B2E64(&v28, &qword_28028D3F8, &unk_268690680);
    v13 = 0;
  }

  v14 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2685B2FBC(0);

  *&v32 = v8;
  *(&v32 + 1) = v9;
  v33 = v22;
  v34 = v21;
  *&v35 = v14;
  *(&v35 + 1) = v13;
  v36 = v10;
  v15 = v37;
  sub_2686060E0(&v32);
  if (v15)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v16 = v32;

    *v3 = v16;
    sub_2685B4D0C(*(*(&v16 + 1) + 16) - 1);
    sub_2685B4D0C(*(v3[1] + 16) - 1);
    v17 = v3[1];

    sub_2685B3560(v18);
    sub_2685B403C("}\n", 2, v19);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v23 = v32;
    v24 = v33;
    return sub_2685B4DEC(&v23);
  }

  return result;
}

uint64_t sub_268672ACC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v40[3] = &type metadata for Google_Protobuf_ServiceOptions;
  v40[4] = sub_268614B90();
  v6 = swift_allocObject();
  v40[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v40, &v32);
  sub_268682C80(a1, &v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v37, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    swift_getDynamicType();
    (*(v43 + 8))(&v32);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v30 = v33;
    v31 = v32;
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v31 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
    v30 = 0u;
  }

  sub_2685B1724(v40, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v38 + 1);
    v15 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v32, v14, v17);
    v18 = v32;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2685B2FBC(0);

  *&v41 = v8;
  *(&v41 + 1) = v9;
  v42 = v31;
  v43 = v30;
  *&v44 = v19;
  *(&v44 + 1) = v18;
  v45 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v46;
  }

  else
  {
    v21 = v46;
    sub_2685B33F4(v20 & 1, 33);
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
  {
    sub_2685DBFC4(&v41, 1000, 0x20000000, a1[3]);
    if (!v21)
    {
      v22 = a1[1];
      v23 = a1[2];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2 || *(v22 + 16) == *(v22 + 24))
        {
          goto LABEL_23;
        }
      }

      else if (v24)
      {
        if (v22 == v22 >> 32)
        {
LABEL_23:
          v25 = v41;

          *v3 = v25;
          sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
          sub_2685B4D0C(*(v3[1] + 16) - 1);
          v26 = v3[1];

          sub_2685B3560(v27);
          sub_2685B403C("}\n", 2, v28);
          v34 = v43;
          v35 = v44;
          v36 = v45;
          v32 = v41;
          v33 = v42;
          return sub_2685B4DEC(&v32);
        }
      }

      else if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      if (v45 == 1)
      {
        sub_26863B108(v22, v23);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268672F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v31[3] = &type metadata for Google_Protobuf_MethodOptions;
  v31[4] = sub_268614BE4();
  v6 = swift_allocObject();
  v31[0] = v6;
  v7 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v31, &v23);
  sub_268682C24(a1, &v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v28, &v32);
    __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
    swift_getDynamicType();
    (*(v34 + 8))(&v23);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    v21 = v24;
    v22 = v23;
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v22 = 0u;
    sub_2685B2E64(&v28, &qword_28028D3C8, &unk_2686902F0);
    v21 = 0u;
  }

  sub_2685B1724(v31, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = *(&v29 + 1);
    v12 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    (*(v12 + 16))(&v23, v11, v12);
    v13 = v23;
    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_2685B2E64(&v28, &qword_28028D3F8, &unk_268690680);
    v13 = 0;
  }

  v14 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2685B2FBC(0);

  *&v32 = v8;
  *(&v32 + 1) = v9;
  v33 = v22;
  v34 = v21;
  *&v35 = v14;
  *(&v35 + 1) = v13;
  v36 = v10;
  v15 = v37;
  sub_268608B7C(&v32);
  if (v15)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v16 = v32;

    *v3 = v16;
    sub_2685B4D0C(*(*(&v16 + 1) + 16) - 1);
    sub_2685B4D0C(*(v3[1] + 16) - 1);
    v17 = v3[1];

    sub_2685B3560(v18);
    sub_2685B403C("}\n", 2, v19);
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v23 = v32;
    v24 = v33;
    return sub_2685B4DEC(&v23);
  }

  return result;
}

uint64_t sub_26867326C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v41[3] = &type metadata for Google_Protobuf_EnumOptions;
  v41[4] = sub_268614AE8();
  v6 = swift_allocObject();
  v41[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 16);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v41, &v33);
  sub_268682D38(a1, &v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v38, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    swift_getDynamicType();
    (*(v44 + 8))(&v33);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v31 = v34;
    v32 = v33;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v32 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3C8, &unk_2686902F0);
    v31 = 0u;
  }

  sub_2685B1724(v41, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v39 + 1);
    v15 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v33, v14, v17);
    v18 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_2685B2FBC(0);

  *&v42 = v8;
  *(&v42 + 1) = v9;
  v43 = v32;
  v44 = v31;
  *&v45 = v19;
  *(&v45 + 1) = v18;
  v46 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v47;
  }

  else
  {
    v21 = v47;
    sub_2685B33F4(v20 & 1, 2);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  v22 = *(a1 + 33);
  if (v22 == 2 || (sub_2685B33F4(v22 & 1, 3), !v21))
  {
    if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
    {
      sub_2685DBFC4(&v42, 1000, 0x20000000, a1[3]);
      if (!v21)
      {
        v23 = a1[1];
        v24 = a1[2];
        v25 = v24 >> 62;
        if ((v24 >> 62) > 1)
        {
          if (v25 != 2 || *(v23 + 16) == *(v23 + 24))
          {
            goto LABEL_25;
          }
        }

        else if (v25)
        {
          if (v23 == v23 >> 32)
          {
LABEL_25:
            v26 = v42;

            *v3 = v26;
            sub_2685B4D0C(*(*(&v26 + 1) + 16) - 1);
            sub_2685B4D0C(*(v3[1] + 16) - 1);
            v27 = v3[1];

            sub_2685B3560(v28);
            sub_2685B403C("}\n", 2, v29);
            v35 = v44;
            v36 = v45;
            v37 = v46;
            v33 = v42;
            v34 = v43;
            return sub_2685B4DEC(&v33);
          }
        }

        else if ((v24 & 0xFF000000000000) == 0)
        {
          goto LABEL_25;
        }

        if (v46 == 1)
        {
          sub_26863B108(v23, v24);
        }

        goto LABEL_25;
      }
    }
  }

LABEL_26:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2686736C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v40[3] = &type metadata for Google_Protobuf_EnumValueOptions;
  v40[4] = sub_268614B3C();
  v6 = swift_allocObject();
  v40[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 32);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v40, &v32);
  sub_268682CDC(a1, &v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v37, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
    swift_getDynamicType();
    (*(v43 + 8))(&v32);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    v30 = v33;
    v31 = v32;
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v31 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
    v30 = 0u;
  }

  sub_2685B1724(v40, &v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v9;
    v12 = v10;
    v13 = v8;
    v14 = *(&v38 + 1);
    v15 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v8 = v13;
    v10 = v12;
    v9 = v11;
    v16(&v32, v14, v17);
    v18 = v32;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2685B2FBC(0);

  *&v41 = v8;
  *(&v41 + 1) = v9;
  v42 = v31;
  v43 = v30;
  *&v44 = v19;
  *(&v44 + 1) = v18;
  v45 = v10;
  v20 = *(a1 + 32);
  if (v20 == 2)
  {
    v21 = v46;
  }

  else
  {
    v21 = v46;
    sub_2685B33F4(v20 & 1, 1);
    if (v21)
    {
      goto LABEL_24;
    }
  }

  if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v21))
  {
    sub_2685DBFC4(&v41, 1000, 0x20000000, a1[3]);
    if (!v21)
    {
      v22 = a1[1];
      v23 = a1[2];
      v24 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v24 != 2 || *(v22 + 16) == *(v22 + 24))
        {
          goto LABEL_23;
        }
      }

      else if (v24)
      {
        if (v22 == v22 >> 32)
        {
LABEL_23:
          v25 = v41;

          *v3 = v25;
          sub_2685B4D0C(*(*(&v25 + 1) + 16) - 1);
          sub_2685B4D0C(*(v3[1] + 16) - 1);
          v26 = v3[1];

          sub_2685B3560(v27);
          sub_2685B403C("}\n", 2, v28);
          v34 = v43;
          v35 = v44;
          v36 = v45;
          v32 = v41;
          v33 = v42;
          return sub_2685B4DEC(&v32);
        }
      }

      else if ((v23 & 0xFF000000000000) == 0)
      {
        goto LABEL_23;
      }

      if (v45 == 1)
      {
        sub_26863B108(v22, v23);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268673B30(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  sub_2685B301C(a2);
  sub_2686636FC(v5);
  v42[3] = &type metadata for Google_Protobuf_MessageOptions;
  v42[4] = sub_268614944();
  v6 = swift_allocObject();
  v42[0] = v6;
  v7 = *(a1 + 1);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a1 + 8);
  v8 = *v2;
  v9 = v2[1];
  v10 = *(v2 + 64);
  sub_2685B1724(v42, &v34);
  sub_268601CEC(a1, &v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v39, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
    swift_getDynamicType();
    (*(v45 + 8))(&v34);
    __swift_destroy_boxed_opaque_existential_1(&v43);
    v32 = v35;
    v33 = v34;
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v33 = 0u;
    sub_2685B2E64(&v39, &qword_28028D3C8, &unk_2686902F0);
    v32 = 0u;
  }

  sub_2685B1724(v42, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v11 = v10;
    v12 = v8;
    v13 = *(&v40 + 1);
    v14 = v41;
    __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    v15 = *(v14 + 16);
    v16 = v14;
    v8 = v12;
    v10 = v11;
    v15(&v34, v13, v16);
    v17 = v34;
    __swift_destroy_boxed_opaque_existential_1(&v39);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_2685B2E64(&v39, &qword_28028D3F8, &unk_268690680);
    v17 = 0;
  }

  v18 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_2685B2FBC(0);

  *&v43 = v8;
  *(&v43 + 1) = v9;
  v44 = v33;
  v45 = v32;
  *&v46 = v18;
  *(&v46 + 1) = v17;
  v47 = v10;
  v19 = *(a1 + 32);
  if (v19 == 2)
  {
    v20 = v48;
  }

  else
  {
    v20 = v48;
    sub_2685B33F4(v19 & 1, 1);
    if (v20)
    {
      goto LABEL_30;
    }
  }

  v21 = *(a1 + 33);
  if (v21 == 2 || (sub_2685B33F4(v21 & 1, 2), !v20))
  {
    v22 = *(a1 + 34);
    if (v22 == 2 || (sub_2685B33F4(v22 & 1, 3), !v20))
    {
      v23 = *(a1 + 35);
      if (v23 == 2 || (sub_2685B33F4(v23 & 1, 7), !v20))
      {
        if (!*(*a1 + 16) || (sub_2686766D4(*a1, 999), !v20))
        {
          sub_2685DBFC4(&v43, 1000, 0x20000000, a1[3]);
          if (!v20)
          {
            v24 = a1[1];
            v25 = a1[2];
            v26 = v25 >> 62;
            if ((v25 >> 62) > 1)
            {
              if (v26 != 2 || *(v24 + 16) == *(v24 + 24))
              {
                goto LABEL_29;
              }
            }

            else if (v26)
            {
              if (v24 == v24 >> 32)
              {
LABEL_29:
                v27 = v43;

                *v3 = v27;
                sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
                sub_2685B4D0C(*(v3[1] + 16) - 1);
                v28 = v3[1];

                sub_2685B3560(v29);
                sub_2685B403C("}\n", 2, v30);
                v36 = v45;
                v37 = v46;
                v38 = v47;
                v34 = v43;
                v35 = v44;
                return sub_2685B4DEC(&v34);
              }
            }

            else if ((v25 & 0xFF000000000000) == 0)
            {
              goto LABEL_29;
            }

            if (v47 == 1)
            {
              sub_26863B108(v24, v25);
            }

            goto LABEL_29;
          }
        }
      }
    }
  }

LABEL_30:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_268673FBC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v10 = v7;
  sub_2685B301C(a5);
  v16 = sub_2686636FC(v15);
  v49[3] = a6;
  v49[4] = a7(v16);
  v17 = swift_allocObject();
  v49[0] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  v18 = *v7;
  v19 = v10[1];
  v39 = *(v10 + 64);
  sub_2685B1724(v49, &v41);
  v40 = a1;

  sub_2685BA80C(a2, a3);

  v20 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v46, &v50);
    __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
    swift_getDynamicType();
    (*(v52 + 8))(&v41);
    __swift_destroy_boxed_opaque_existential_1(&v50);
    v37 = v42;
    v38 = v41;
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v38 = 0u;
    sub_2685B2E64(&v46, &qword_28028D3C8, &unk_2686902F0);
    v37 = 0u;
  }

  sub_2685B1724(v49, &v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v21 = a2;
    v22 = a3;
    v23 = v19;
    v24 = *(&v47 + 1);
    v25 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    v26 = *(v25 + 16);
    v27 = v25;
    v19 = v23;
    a3 = v22;
    a2 = v21;
    v26(&v41, v24, v27);
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_1(&v46);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_2685B2E64(&v46, &qword_28028D3F8, &unk_268690680);
    v28 = 0;
  }

  v29 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v49);
  sub_2685B2FBC(0);

  *&v50 = v20;
  *(&v50 + 1) = v19;
  v51 = v38;
  v52 = v37;
  *&v53 = v29;
  *(&v53 + 1) = v28;
  v54 = v39;
  if (*(v40 + 16))
  {
    v30 = v55;
    sub_2686766D4(v40, 999);
    if (v30)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = v55;
  }

  sub_2685DBFC4(&v50, 1000, 0x20000000, a4);
  if (!v30)
  {
    v31 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v31 != 2 || *(a2 + 16) == *(a2 + 24))
      {
        goto LABEL_22;
      }
    }

    else if (v31)
    {
      if (a2 == a2 >> 32)
      {
LABEL_22:
        v32 = v50;

        *v10 = v32;
        sub_2685B4D0C(*(*(&v32 + 1) + 16) - 1);
        sub_2685B4D0C(*(v10[1] + 16) - 1);
        v33 = v10[1];

        sub_2685B3560(v34);
        sub_2685B403C("}\n", 2, v35);
        v43 = v52;
        v44 = v53;
        v45 = v54;
        v41 = v50;
        v42 = v51;
        return sub_2685B4DEC(&v41);
      }
    }

    else if ((a3 & 0xFF000000000000) == 0)
    {
      goto LABEL_22;
    }

    if (v54 == 1)
    {
      sub_26863B108(a2, a3);
    }

    goto LABEL_22;
  }

LABEL_23:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26867440C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(__int128 *, uint64_t, uint64_t, unint64_t))
{
  v47 = a7;
  v10 = v7;
  sub_2685B301C(a4);
  v15 = sub_2686636FC(v14);
  v41[3] = a5;
  v41[0] = a1;
  v41[1] = a2;
  v41[4] = a6(v15);
  v41[2] = a3;
  v16 = *v7;
  v17 = v10[1];
  v29 = *(v10 + 64);
  sub_2685B1724(v41, &v33);

  v30 = a3;
  sub_2685BA80C(a2, a3);
  v32 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v38, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
    swift_getDynamicType();
    (*(v44 + 8))(&v33);
    __swift_destroy_boxed_opaque_existential_1(&v42);
    v27 = v34;
    v28 = v33;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v28 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3C8, &unk_2686902F0);
    v27 = 0u;
  }

  sub_2685B1724(v41, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v19 = *(&v39 + 1);
    v18 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    (*(v18 + 16))(&v33, v19, v18);
    v20 = v33;
    __swift_destroy_boxed_opaque_existential_1(&v38);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    sub_2685B2E64(&v38, &qword_28028D3F8, &unk_268690680);
    v20 = 0;
  }

  v21 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v41);
  sub_2685B2FBC(0);

  *&v42 = v32;
  *(&v42 + 1) = v17;
  v43 = v28;
  v44 = v27;
  *&v45 = v21;
  *(&v45 + 1) = v20;
  v46 = v29;
  v47(&v42, a1, a2, v30);
  if (v31)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v22 = v42;

    *v10 = v22;
    sub_2685B4D0C(*(*(&v22 + 1) + 16) - 1);
    sub_2685B4D0C(*(v10[1] + 16) - 1);
    v23 = v10[1];

    sub_2685B3560(v24);
    sub_2685B403C("}\n", 2, v25);
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v33 = v42;
    v34 = v43;
    return sub_2685B4DEC(&v33);
  }

  return result;
}

uint64_t sub_268674784(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  sub_2685B301C(a4);
  sub_2686636FC(v11);
  v37[3] = &type metadata for Google_Protobuf_Value;
  v37[0] = a1;
  v37[1] = a2;
  v37[4] = sub_268653CEC();
  v37[2] = a3;
  v12 = *v4;
  v13 = v7[1];
  v27 = *(v7 + 64);
  sub_2685B1724(v37, &v29);
  v28 = a1;
  sub_2685BA80C(a1, a2);

  v43 = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v34, &v38);
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    swift_getDynamicType();
    (*(v40 + 8))(&v29);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v25 = v30;
    v26 = v29;
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v26 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3C8, &unk_2686902F0);
    v25 = 0u;
  }

  sub_2685B1724(v37, &v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v14 = *(&v35 + 1);
    v15 = v36;
    __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v16 = *(v15 + 16);
    v17 = v15;
    v6 = v5;
    v16(&v29, v14, v17);
    v18 = v29;
    __swift_destroy_boxed_opaque_existential_1(&v34);
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_2685B2E64(&v34, &qword_28028D3F8, &unk_268690680);
    v18 = 0;
  }

  v19 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_2685B2FBC(0);

  *&v38 = v43;
  *(&v38 + 1) = v13;
  v39 = v26;
  v40 = v25;
  *&v41 = v19;
  *(&v41 + 1) = v18;
  v42 = v27;
  sub_26867FF28(&v38, v28, a2, a3);
  if (v6)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v20 = v38;

    *v7 = v20;
    sub_2685B4D0C(*(*(&v20 + 1) + 16) - 1);
    sub_2685B4D0C(*(v7[1] + 16) - 1);
    v21 = v7[1];

    sub_2685B3560(v22);
    sub_2685B403C("}\n", 2, v23);
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v29 = v38;
    v30 = v39;
    return sub_2685B4DEC(&v29);
  }

  return result;
}

uint64_t sub_268674B48(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v8 = (result + 32);
    v65 = *(v2 + 64);
    while (1)
    {
      v9 = v8[5];
      v61 = v8[4];
      v62 = v9;
      v10 = v8[7];
      v63 = v8[6];
      v64 = v10;
      v11 = v8[1];
      v57 = *v8;
      v58 = v11;
      v12 = v8[3];
      v59 = v8[2];
      v60 = v12;
      sub_268618EC0(&v57, &v52);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v13);
      v14 = v6[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6[1] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
        v6[1] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      v14[v17 + 32] = 32;
      v6[1] = v14;
      v19 = *(v14 + 3);
      v20 = v17 + 2;
      if (v20 > (v19 >> 1))
      {
        v14 = sub_2685B3F48((v19 > 1), v20, 1, v14);
      }

      *(v14 + 2) = v20;
      v14[v18 + 32] = 32;
      v6[1] = v14;
      v51[3] = &type metadata for Google_Protobuf_Field;
      v51[4] = sub_2685CF3E4();
      v21 = swift_allocObject();
      v51[0] = v21;
      v22 = v62;
      v21[5] = v61;
      v21[6] = v22;
      v23 = v64;
      v21[7] = v63;
      v21[8] = v23;
      v24 = v58;
      v21[1] = v57;
      v21[2] = v24;
      v25 = v60;
      v21[3] = v59;
      v21[4] = v25;
      v26 = *v6;
      sub_2685B1724(v51, &v43);
      sub_268618EC0(&v57, &v52);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v48, &v52);
        __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        swift_getDynamicType();
        (*(v54 + 8))(&v43);
        __swift_destroy_boxed_opaque_existential_1(&v52);
        v41 = v44;
        v42 = v43;
      }

      else
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2685B2E64(&v48, &qword_28028D3C8, &unk_2686902F0);
        v41 = 0u;
        v42 = 0u;
      }

      sub_2685B1724(v51, &v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v40 = v26;
        v27 = v5;
        v28 = v4;
        v29 = a2;
        v30 = *(&v49 + 1);
        v31 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
        v32 = *(v31 + 16);
        v33 = v31;
        a2 = v29;
        v4 = v28;
        v5 = v27;
        v26 = v40;
        v32(&v43, v30, v33);
        v34 = v43;
        __swift_destroy_boxed_opaque_existential_1(&v48);
      }

      else
      {
        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_2685B2E64(&v48, &qword_28028D3F8, &unk_268690680);
        v34 = 0;
      }

      v35 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v51);
      sub_2685B2FBC(0);

      *&v52 = v26;
      *(&v52 + 1) = v14;
      v53 = v42;
      v54 = v41;
      *&v55 = v35;
      *(&v55 + 1) = v34;
      v56 = v65;
      sub_2685CA330(&v52);
      if (v4)
      {
        break;
      }

      v36 = v52;

      *v6 = v36;
      sub_2685B4D0C(*(*(&v36 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);
      v37 = v6[1];

      sub_2685B3560(v38);
      sub_2685B403C("}\n", 2, v39);
      sub_268618F1C(&v57);
      v45 = v54;
      v46 = v55;
      v47 = v56;
      v43 = v52;
      v44 = v53;
      result = sub_2685B4DEC(&v43);
      v8 += 8;
      if (!--v5)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268674FF0(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v28 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v46 = *v6;
      v47 = v7;
      v48 = v6[2];
      sub_268682F18(&v46, &v41);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v40[3] = &type metadata for Google_Protobuf_EnumValue;
      v40[4] = sub_2685CF734();
      v16 = swift_allocObject();
      v40[0] = v16;
      v17 = v47;
      v16[1] = v46;
      v16[2] = v17;
      v16[3] = v48;
      v18 = *v5;
      sub_2685B1724(v40, &v32);
      sub_268682F18(&v46, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v49 = v18;
      if (v19)
      {
        sub_2685B17CC(&v37, &v41);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        swift_getDynamicType();
        (*(v43 + 8))(&v32);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v30 = v33;
        v31 = v32;
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
        v30 = 0u;
        v31 = 0u;
      }

      sub_2685B1724(v40, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v38 + 1);
        v21 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v21 + 16))(&v32, v20, v21);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_2685B2FBC(0);

      *&v41 = v49;
      *(&v41 + 1) = v9;
      v42 = v31;
      v43 = v30;
      *&v44 = v23;
      *(&v44 + 1) = v22;
      v45 = v28;
      sub_2685CC9E4(&v41);
      if (v3)
      {
        break;
      }

      v24 = v41;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);
      v25 = v5[1];

      sub_2685B3560(v26);
      sub_2685B403C("}\n", 2, v27);
      sub_268682F74(&v46);
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v32 = v41;
      v33 = v42;
      result = sub_2685B4DEC(&v32);
      v6 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268675464(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = (result + 32);
    v28 = *(v2 + 64);
    while (1)
    {
      v7 = v6[1];
      v46 = *v6;
      v47 = v7;
      v48 = v6[2];
      sub_268682E20(&v46, &v41);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v40[3] = &type metadata for Google_Protobuf_Mixin;
      v40[4] = sub_2685D7420();
      v16 = swift_allocObject();
      v40[0] = v16;
      v17 = v47;
      v16[1] = v46;
      v16[2] = v17;
      v16[3] = v48;
      v18 = *v5;
      sub_2685B1724(v40, &v32);
      sub_268682E20(&v46, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v49 = v18;
      if (v19)
      {
        sub_2685B17CC(&v37, &v41);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        swift_getDynamicType();
        (*(v43 + 8))(&v32);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v30 = v33;
        v31 = v32;
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
        v30 = 0u;
        v31 = 0u;
      }

      sub_2685B1724(v40, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v38 + 1);
        v21 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v21 + 16))(&v32, v20, v21);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_2685B2FBC(0);

      *&v41 = v49;
      *(&v41 + 1) = v9;
      v42 = v31;
      v43 = v30;
      *&v44 = v23;
      *(&v44 + 1) = v22;
      v45 = v28;
      sub_2685D6294(&v41);
      if (v3)
      {
        break;
      }

      v24 = v41;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);
      v25 = v5[1];

      sub_2685B3560(v26);
      sub_2685B403C("}\n", 2, v27);
      sub_268682E7C(&v46);
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v32 = v41;
      v33 = v42;
      result = sub_2685B4DEC(&v32);
      v6 += 3;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686758D8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = result + 32;
    v31 = *(v2 + 64);
    while (1)
    {
      v6 = *(v5 + 80);
      v53 = *(v5 + 64);
      v54 = v6;
      v55 = *(v5 + 96);
      v7 = *(v5 + 16);
      v49 = *v5;
      v50 = v7;
      v8 = *(v5 + 48);
      v51 = *(v5 + 32);
      v52 = v8;
      sub_268618E10(&v49, &v44);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v4[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v4[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v4[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v4[1] = v10;
      v43[3] = &type metadata for Google_Protobuf_Method;
      v43[4] = sub_2685D723C();
      v17 = swift_allocObject();
      v43[0] = v17;
      v18 = v54;
      *(v17 + 80) = v53;
      *(v17 + 96) = v18;
      *(v17 + 112) = v55;
      v19 = v50;
      *(v17 + 16) = v49;
      *(v17 + 32) = v19;
      v20 = v52;
      *(v17 + 48) = v51;
      *(v17 + 64) = v20;
      v21 = *v4;
      sub_2685B1724(v43, &v35);
      sub_268618E10(&v49, &v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v40, &v44);
        __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        swift_getDynamicType();
        (*(v46 + 8))(&v35);
        __swift_destroy_boxed_opaque_existential_1(&v44);
        v33 = v36;
        v34 = v35;
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_2685B2E64(&v40, &qword_28028D3C8, &unk_2686902F0);
        v33 = 0u;
        v34 = 0u;
      }

      sub_2685B1724(v43, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v41 + 1);
        v23 = v42;
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        (*(v23 + 16))(&v35, v22, v23);
        v24 = v35;
        __swift_destroy_boxed_opaque_existential_1(&v40);
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_2685B2E64(&v40, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_2685B2FBC(0);

      *&v44 = v21;
      *(&v44 + 1) = v10;
      v45 = v34;
      v46 = v33;
      *&v47 = v25;
      *(&v47 + 1) = v24;
      v48 = v31;
      v26 = v56;
      sub_2685D5560(&v44);
      v56 = v26;
      if (v26)
      {
        break;
      }

      v27 = v44;

      *v4 = v27;
      sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
      sub_2685B4D0C(*(v4[1] + 16) - 1);
      v28 = v4[1];

      sub_2685B3560(v29);
      sub_2685B403C("}\n", 2, v30);
      sub_268618E6C(&v49);
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v35 = v44;
      v36 = v45;
      result = sub_2685B4DEC(&v35);
      v5 += 104;
      if (!--v3)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268675D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void, void))
{
  v6 = *(result + 16);
  if (v6)
  {
    v8 = v5;
    v9 = (result + 48);
    v40 = *(v5 + 64);
    while (1)
    {
      v43 = v6;
      v15 = *(v9 - 2);
      v14 = *(v9 - 1);
      v16 = *v9;
      sub_2685BA80C(v15, v14);
      v60 = v16;

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v17);
      v18 = v8[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[1] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
        v8[1] = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2685B3F48((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v22;
      v18[v21 + 32] = 32;
      v8[1] = v18;
      v23 = *(v18 + 3);
      v24 = v21 + 2;
      if (v24 > (v23 >> 1))
      {
        v18 = sub_2685B3F48((v23 > 1), v24, 1, v18);
      }

      *(v18 + 2) = v24;
      v18[v22 + 32] = 32;
      v8[1] = v18;
      v54[3] = a3;
      v25 = a4();
      v54[0] = v15;
      v54[1] = v14;
      v54[4] = v25;
      v54[2] = v60;
      v26 = *v8;
      sub_2685B1724(v54, &v46);
      sub_2685BA80C(v15, v14);

      v45 = v26;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v51, &v55);
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        swift_getDynamicType();
        (*(v57 + 8))(&v46);
        __swift_destroy_boxed_opaque_existential_1(&v55);
        v41 = v47;
        v42 = v46;
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3C8, &unk_2686902F0);
        v41 = 0u;
        v42 = 0u;
      }

      sub_2685B1724(v54, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v27 = a5;
        v28 = *(&v52 + 1);
        v29 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        v30 = *(v29 + 16);
        v31 = v29;
        a5 = v27;
        v30(&v46, v28, v31);
        v32 = v46;
        __swift_destroy_boxed_opaque_existential_1(&v51);
      }

      else
      {
        v53 = 0;
        v51 = 0u;
        v52 = 0u;
        sub_2685B2E64(&v51, &qword_28028D3F8, &unk_268690680);
        v32 = 0;
      }

      v33 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_2685B2FBC(0);

      *&v55 = v45;
      *(&v55 + 1) = v18;
      v56 = v42;
      v57 = v41;
      *&v58 = v33;
      *(&v58 + 1) = v32;
      v59 = v40;
      a5(v60, &v55);
      if (v44)
      {
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v34 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        break;
      }

      if (v34)
      {
        v35 = v15;
        v36 = v15 >> 32;
LABEL_25:
        if (v35 == v36)
        {
          goto LABEL_3;
        }

        goto LABEL_26;
      }

      if ((v14 & 0xFF000000000000) == 0)
      {
        goto LABEL_3;
      }

LABEL_26:
      if (v40)
      {
        sub_26863B108(v15, v14);
        v44 = 0;
        goto LABEL_4;
      }

LABEL_3:
      v44 = 0;
LABEL_4:
      v10 = v55;

      *v8 = v10;
      sub_2685B4D0C(*(*(&v10 + 1) + 16) - 1);
      sub_2685B4D0C(*(v8[1] + 16) - 1);
      v11 = v8[1];

      sub_2685B3560(v12);
      sub_2685B403C("}\n", 2, v13);
      sub_2685B593C(v15, v14);

      v48 = v57;
      v49 = v58;
      v50 = v59;
      v46 = v55;
      v47 = v56;
      result = sub_2685B4DEC(&v46);
      v9 += 3;
      v6 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    if (v34 != 2)
    {
      goto LABEL_3;
    }

    v35 = *(v15 + 16);
    v36 = *(v15 + 24);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_268676250(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = result + 32;
    v30 = *(v2 + 64);
    while (1)
    {
      v7 = *(v6 + 48);
      v50 = *(v6 + 32);
      v51 = v7;
      v52 = *(v6 + 64);
      v8 = *(v6 + 16);
      v48 = *v6;
      v49 = v8;
      sub_268618FD8(&v48, &v43);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v5[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v5[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v5[1] = v10;
      v42[3] = &type metadata for Google_Protobuf_SourceCodeInfo.Location;
      v42[4] = sub_268614CE0();
      v17 = swift_allocObject();
      v42[0] = v17;
      v18 = v51;
      *(v17 + 48) = v50;
      *(v17 + 64) = v18;
      *(v17 + 80) = v52;
      v19 = v49;
      *(v17 + 16) = v48;
      *(v17 + 32) = v19;
      v20 = *v5;
      sub_2685B1724(v42, &v34);
      sub_268618FD8(&v48, &v43);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v21 = swift_dynamicCast();
      v53 = v20;
      if (v21)
      {
        sub_2685B17CC(&v39, &v43);
        __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
        swift_getDynamicType();
        (*(v45 + 8))(&v34);
        __swift_destroy_boxed_opaque_existential_1(&v43);
        v32 = v35;
        v33 = v34;
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3C8, &unk_2686902F0);
        v32 = 0u;
        v33 = 0u;
      }

      sub_2685B1724(v42, &v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v40 + 1);
        v23 = v41;
        __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
        (*(v23 + 16))(&v34, v22, v23);
        v24 = v34;
        __swift_destroy_boxed_opaque_existential_1(&v39);
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_2685B2E64(&v39, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v42);
      sub_2685B2FBC(0);

      *&v43 = v53;
      *(&v43 + 1) = v10;
      v44 = v33;
      v45 = v32;
      *&v46 = v25;
      *(&v46 + 1) = v24;
      v47 = v30;
      sub_26860B8A0(&v43);
      if (v3)
      {
        break;
      }

      v26 = v43;

      *v5 = v26;
      sub_2685B4D0C(*(*(&v26 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);
      v27 = v5[1];

      sub_2685B3560(v28);
      sub_2685B403C("}\n", 2, v29);
      sub_268619010(&v48);
      v36 = v45;
      v37 = v46;
      v38 = v47;
      v34 = v43;
      v35 = v44;
      result = sub_2685B4DEC(&v34);
      v6 += 72;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686766D4(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v5 = result + 32;
    v31 = *(v2 + 64);
    while (1)
    {
      v6 = *(v5 + 80);
      v53 = *(v5 + 64);
      v54 = v6;
      v55 = *(v5 + 96);
      v56 = *(v5 + 112);
      v7 = *(v5 + 16);
      v49 = *v5;
      v50 = v7;
      v8 = *(v5 + 48);
      v51 = *(v5 + 32);
      v52 = v8;
      sub_268619040(&v49, &v44);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v9);
      v10 = v4[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4[1] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        v4[1] = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v10 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
      }

      *(v10 + 2) = v14;
      v10[v13 + 32] = 32;
      v4[1] = v10;
      v15 = *(v10 + 3);
      v16 = v13 + 2;
      if (v16 > (v15 >> 1))
      {
        v10 = sub_2685B3F48((v15 > 1), v16, 1, v10);
      }

      *(v10 + 2) = v16;
      v10[v14 + 32] = 32;
      v4[1] = v10;
      v43[3] = &type metadata for Google_Protobuf_UninterpretedOption;
      v43[4] = sub_2686148F0();
      v17 = swift_allocObject();
      v43[0] = v17;
      v18 = v54;
      *(v17 + 80) = v53;
      *(v17 + 96) = v18;
      *(v17 + 112) = v55;
      *(v17 + 128) = v56;
      v19 = v50;
      *(v17 + 16) = v49;
      *(v17 + 32) = v19;
      v20 = v52;
      *(v17 + 48) = v51;
      *(v17 + 64) = v20;
      v21 = *v4;
      sub_2685B1724(v43, &v35);
      sub_268619040(&v49, &v44);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v40, &v44);
        __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
        swift_getDynamicType();
        (*(v46 + 8))(&v35);
        __swift_destroy_boxed_opaque_existential_1(&v44);
        v33 = v36;
        v34 = v35;
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_2685B2E64(&v40, &qword_28028D3C8, &unk_2686902F0);
        v33 = 0u;
        v34 = 0u;
      }

      sub_2685B1724(v43, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v22 = *(&v41 + 1);
        v23 = v42;
        __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
        (*(v23 + 16))(&v35, v22, v23);
        v24 = v35;
        __swift_destroy_boxed_opaque_existential_1(&v40);
      }

      else
      {
        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_2685B2E64(&v40, &qword_28028D3F8, &unk_268690680);
        v24 = 0;
      }

      v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v43);
      sub_2685B2FBC(0);

      *&v44 = v21;
      *(&v44 + 1) = v10;
      v45 = v34;
      v46 = v33;
      *&v47 = v25;
      *(&v47 + 1) = v24;
      v48 = v31;
      v26 = v57;
      sub_2686099AC(&v44);
      v57 = v26;
      if (v26)
      {
        break;
      }

      v27 = v44;

      *v4 = v27;
      sub_2685B4D0C(*(*(&v27 + 1) + 16) - 1);
      sub_2685B4D0C(*(v4[1] + 16) - 1);
      v28 = v4[1];

      sub_2685B3560(v29);
      sub_2685B403C("}\n", 2, v30);
      sub_268619078(&v49);
      v37 = v46;
      v38 = v47;
      v39 = v48;
      v35 = v44;
      v36 = v45;
      result = sub_2685B4DEC(&v35);
      v5 += 120;
      if (!--v3)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268676B70(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = result + 32;
    v28 = *(v2 + 64);
    while (1)
    {
      v7 = *(v6 + 16);
      v46 = *v6;
      v47 = v7;
      v48 = *(v6 + 32);
      sub_268682B74(&v46, &v41);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v40[3] = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
      v40[4] = sub_268614C8C();
      v16 = swift_allocObject();
      v40[0] = v16;
      v17 = v47;
      *(v16 + 16) = v46;
      *(v16 + 32) = v17;
      *(v16 + 48) = v48;
      v18 = *v5;
      sub_2685B1724(v40, &v32);
      sub_268682B74(&v46, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v49 = v18;
      if (v19)
      {
        sub_2685B17CC(&v37, &v41);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        swift_getDynamicType();
        (*(v43 + 8))(&v32);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v30 = v33;
        v31 = v32;
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
        v30 = 0u;
        v31 = 0u;
      }

      sub_2685B1724(v40, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v38 + 1);
        v21 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v21 + 16))(&v32, v20, v21);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_2685B2FBC(0);

      *&v41 = v49;
      *(&v41 + 1) = v9;
      v42 = v31;
      v43 = v30;
      *&v44 = v23;
      *(&v44 + 1) = v22;
      v45 = v28;
      sub_26860A938(&v41);
      if (v3)
      {
        break;
      }

      v24 = v41;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);
      v25 = v5[1];

      sub_2685B3560(v26);
      sub_2685B403C("}\n", 2, v27);
      sub_268682BD0(&v46);
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v32 = v41;
      v33 = v42;
      result = sub_2685B4DEC(&v32);
      v6 += 40;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268677234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(__int128 *, uint64_t, unint64_t, unint64_t, unint64_t))
{
  v7 = *(result + 16);
  if (v7)
  {
    v8 = v6;
    v9 = (result + 60);
    v33 = *(v6 + 64);
    while (1)
    {
      v41 = v7;
      v10 = *(v9 - 20);
      v45 = *(v9 - 3);
      v11 = *(v9 - 1);
      v43 = *v9;
      v44 = *(v9 - 8);
      v61 = *(v9 - 28);
      sub_2685BA80C(v61, v10);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v12);
      v13 = v8[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8[1] = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_2685B3F48(0, *(v13 + 2) + 1, 1, v13);
        v8[1] = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v13 = sub_2685B3F48((v15 > 1), v16 + 1, 1, v13);
      }

      *(v13 + 2) = v17;
      v13[v16 + 32] = 32;
      v8[1] = v13;
      v18 = *(v13 + 3);
      v19 = v16 + 2;
      if (v19 > (v18 >> 1))
      {
        v13 = sub_2685B3F48((v18 > 1), v19, 1, v13);
      }

      *(v13 + 2) = v19;
      v13[v17 + 32] = 32;
      v8[1] = v13;
      v55[3] = a3;
      v55[4] = a4();
      v20 = swift_allocObject();
      v55[0] = v20;
      v21 = v61;
      *(v20 + 16) = v61;
      *(v20 + 24) = v10;
      *(v20 + 32) = v45;
      *(v20 + 36) = v44;
      *(v20 + 40) = v11;
      *(v20 + 44) = v43;
      v22 = *v8;
      sub_2685B1724(v55, &v46);
      sub_2685BA80C(v21, v10);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v40 = v11;
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v52, &v56);
        __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        swift_getDynamicType();
        (*(v58 + 8))(&v46);
        __swift_destroy_boxed_opaque_existential_1(&v56);
        v38 = v47;
        v39 = v46;
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        sub_2685B2E64(&v52, &qword_28028D3C8, &unk_2686902F0);
        v38 = 0u;
        v39 = 0u;
      }

      v23 = v10;
      sub_2685B1724(v55, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v24 = *(&v53 + 1);
        v25 = v54;
        __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        (*(v25 + 16))(&v46, v24, v25);
        v26 = v46;
        __swift_destroy_boxed_opaque_existential_1(&v52);
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        sub_2685B2E64(&v52, &qword_28028D3F8, &unk_268690680);
        v26 = 0;
      }

      v27 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_2685B2FBC(0);

      *&v56 = v22;
      *(&v56 + 1) = v13;
      v57 = v39;
      v58 = v38;
      *&v59 = v27;
      *(&v59 + 1) = v26;
      v60 = v33;
      LOBYTE(v46) = v44;
      v51 = v43;
      v28 = v61;
      a6(&v56, v61, v23, v45 | (v44 << 32), v40 | (v43 << 32));
      if (v42)
      {
        break;
      }

      v29 = v56;

      *v8 = v29;
      sub_2685B4D0C(*(*(&v29 + 1) + 16) - 1);
      sub_2685B4D0C(*(v8[1] + 16) - 1);
      v30 = v8[1];

      sub_2685B3560(v31);
      sub_2685B403C("}\n", 2, v32);
      sub_2685B593C(v28, v23);
      v48 = v58;
      v49 = v59;
      v50 = v60;
      v46 = v56;
      v47 = v57;
      result = sub_2685B4DEC(&v46);
      v9 += 32;
      v7 = v41 - 1;
      if (v41 == 1)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867775C(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v7 = (result + 48);
    v41 = *(v2 + 64);
    do
    {
      v12 = *(v7 - 2);
      v45 = v7;
      v13 = *v7;
      v61 = *(v7 - 1);
      sub_2685BA80C(v12, v61);

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v14);
      v15 = v6[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6[1] = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
        v6[1] = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v19;
      v15[v18 + 32] = 32;
      v6[1] = v15;
      v20 = *(v15 + 3);
      v21 = v18 + 2;
      if (v21 > (v20 >> 1))
      {
        v15 = sub_2685B3F48((v20 > 1), v21, 1, v15);
      }

      *(v15 + 2) = v21;
      v15[v19 + 32] = 32;
      v6[1] = v15;
      v55[3] = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
      v22 = sub_268615CB8();
      v23 = v61;
      v55[0] = v12;
      v55[1] = v61;
      v55[4] = v22;
      v55[2] = v13;
      v24 = *v6;
      sub_2685B1724(v55, &v47);
      sub_2685BA80C(v12, v23);

      v46 = v24;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v52, &v56);
        __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
        swift_getDynamicType();
        (*(v58 + 8))(&v47);
        __swift_destroy_boxed_opaque_existential_1(&v56);
        v42 = v48;
        v43 = v47;
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        sub_2685B2E64(&v52, &qword_28028D3C8, &unk_2686902F0);
        v42 = 0u;
        v43 = 0u;
      }

      sub_2685B1724(v55, &v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v25 = v12;
        v26 = *(&v53 + 1);
        v27 = v54;
        __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
        v28 = *(v27 + 16);
        v29 = v27;
        v12 = v25;
        v6 = v40;
        v28(&v47, v26, v29);
        v30 = v47;
        __swift_destroy_boxed_opaque_existential_1(&v52);
      }

      else
      {
        v54 = 0;
        v52 = 0u;
        v53 = 0u;
        sub_2685B2E64(&v52, &qword_28028D3F8, &unk_268690680);
        v30 = 0;
      }

      v31 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_2685B2FBC(0);

      *&v56 = v46;
      *(&v56 + 1) = v15;
      v57 = v43;
      v58 = v42;
      *&v59 = v31;
      *(&v59 + 1) = v30;
      v60 = v41;
      swift_beginAccess();
      if ((*(v13 + 20) & 1) == 0 && (sub_2686440C0(*(v13 + 16), 1), v4) || (swift_beginAccess(), (*(v13 + 28) & 1) == 0) && (sub_2686440C0(*(v13 + 24), 2), v4))
      {
LABEL_37:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      swift_beginAccess();
      v32 = *(v13 + 32);
      if (v32)
      {
        v33 = v12;
        v44 = v4;
        v34 = v5;
        v36 = *(v13 + 40);
        v35 = *(v13 + 48);
        v37 = *(v13 + 56);

        sub_2685BA80C(v36, v35);

        sub_268673FBC(v32, v36, v35, v37, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C);
        if (v44)
        {
          sub_268601C90(v32, v36, v35);
          goto LABEL_37;
        }

        sub_268601C90(v32, v36, v35);
        v5 = v34;
        v4 = 0;
        v12 = v33;
        v6 = v40;
      }

      v38 = v61 >> 62;
      if ((v61 >> 62) > 1)
      {
        if (v38 != 2 || *(v12 + 16) == *(v12 + 24))
        {
          goto LABEL_3;
        }
      }

      else if (v38)
      {
        if (v12 == v12 >> 32)
        {
          goto LABEL_3;
        }
      }

      else if ((v61 & 0xFF000000000000) == 0)
      {
        goto LABEL_3;
      }

      if (v41)
      {
        sub_26863B108(v12, v61);
        if (v4)
        {
          goto LABEL_37;
        }
      }

LABEL_3:
      v8 = v56;

      *v6 = v8;
      sub_2685B4D0C(*(*(&v8 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);
      v9 = v6[1];

      sub_2685B3560(v10);
      sub_2685B403C("}\n", 2, v11);
      sub_2685B593C(v12, v61);

      v49 = v58;
      v50 = v59;
      v51 = v60;
      v47 = v56;
      v48 = v57;
      result = sub_2685B4DEC(&v47);
      v7 = v45 + 3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_268677D78(uint64_t result, uint64_t a2)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = v2;
    v6 = result + 32;
    v28 = *(v2 + 64);
    while (1)
    {
      v7 = *(v6 + 16);
      v46 = *v6;
      v47 = v7;
      v48[0] = *(v6 + 32);
      *(v48 + 13) = *(v6 + 45);
      sub_268618F70(&v46, &v41);
      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v8);
      v9 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        v5[1] = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      v13 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v13;
      v9[v12 + 32] = 32;
      v5[1] = v9;
      v14 = *(v9 + 3);
      v15 = v12 + 2;
      if (v15 > (v14 >> 1))
      {
        v9 = sub_2685B3F48((v14 > 1), v15, 1, v9);
      }

      *(v9 + 2) = v15;
      v9[v13 + 32] = 32;
      v5[1] = v9;
      v40[3] = &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation;
      v40[4] = sub_268614D34();
      v16 = swift_allocObject();
      v40[0] = v16;
      v17 = v47;
      *(v16 + 16) = v46;
      *(v16 + 32) = v17;
      *(v16 + 48) = v48[0];
      *(v16 + 61) = *(v48 + 13);
      v18 = *v5;
      sub_2685B1724(v40, &v32);
      sub_268618F70(&v46, &v41);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      v19 = swift_dynamicCast();
      v49 = v18;
      if (v19)
      {
        sub_2685B17CC(&v37, &v41);
        __swift_project_boxed_opaque_existential_1(&v41, *(&v42 + 1));
        swift_getDynamicType();
        (*(v43 + 8))(&v32);
        __swift_destroy_boxed_opaque_existential_1(&v41);
        v30 = v33;
        v31 = v32;
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3C8, &unk_2686902F0);
        v30 = 0u;
        v31 = 0u;
      }

      sub_2685B1724(v40, &v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v20 = *(&v38 + 1);
        v21 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v21 + 16))(&v32, v20, v21);
        v22 = v32;
        __swift_destroy_boxed_opaque_existential_1(&v37);
      }

      else
      {
        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        sub_2685B2E64(&v37, &qword_28028D3F8, &unk_268690680);
        v22 = 0;
      }

      v23 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v40);
      sub_2685B2FBC(0);

      *&v41 = v49;
      *(&v41 + 1) = v9;
      v42 = v31;
      v43 = v30;
      *&v44 = v23;
      *(&v44 + 1) = v22;
      v45 = v28;
      sub_26860CAE4(&v41);
      if (v3)
      {
        break;
      }

      v24 = v41;

      *v5 = v24;
      sub_2685B4D0C(*(*(&v24 + 1) + 16) - 1);
      sub_2685B4D0C(*(v5[1] + 16) - 1);
      v25 = v5[1];

      sub_2685B3560(v26);
      sub_2685B403C("}\n", 2, v27);
      sub_268618FA8(&v46);
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v32 = v41;
      v33 = v42;
      result = sub_2685B4DEC(&v32);
      v6 += 56;
      if (!--v4)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678204(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(__int128 *, uint64_t, unint64_t, uint64_t))
{
  v7 = v6;
  v8 = *(result + 16);
  if (v8)
  {
    v9 = (result + 48);
    v34 = *(v5 + 64);
    while (1)
    {
      v41 = v9;
      v42 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      v58 = *(v9 - 2);
      v12 = v10;
      sub_2685BA80C(v58, v10);

      sub_2685B301C(a2);
      sub_2685B403C(" {\n", 3, v13);
      v14 = v5[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v5[1] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_2685B3F48(0, *(v14 + 2) + 1, 1, v14);
        v5[1] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v14 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v18;
      v14[v17 + 32] = 32;
      v5[1] = v14;
      v19 = *(v14 + 3);
      v43 = v7;
      if ((v17 + 2) > (v19 >> 1))
      {
        v14 = sub_2685B3F48((v19 > 1), v17 + 2, 1, v14);
      }

      *(v14 + 2) = v17 + 2;
      v14[v18 + 32] = 32;
      v5[1] = v14;
      v52[3] = a3;
      v20 = a4();
      v21 = v58;
      v52[0] = v58;
      v52[1] = v12;
      v52[4] = v20;
      v52[2] = v11;
      v22 = *v5;
      sub_2685B1724(v52, &v44);
      sub_2685BA80C(v21, v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
      if (swift_dynamicCast())
      {
        sub_2685B17CC(&v49, &v53);
        __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
        swift_getDynamicType();
        (*(v55 + 8))(&v44);
        __swift_destroy_boxed_opaque_existential_1(&v53);
        v39 = v45;
        v40 = v44;
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        sub_2685B2E64(&v49, &qword_28028D3C8, &unk_2686902F0);
        v39 = 0u;
        v40 = 0u;
      }

      sub_2685B1724(v52, &v53);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
      if (swift_dynamicCast())
      {
        v24 = *(&v50 + 1);
        v23 = v51;
        __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
        (*(v23 + 16))(&v44, v24, v23);
        v25 = v44;
        __swift_destroy_boxed_opaque_existential_1(&v49);
      }

      else
      {
        v51 = 0;
        v49 = 0u;
        v50 = 0u;
        sub_2685B2E64(&v49, &qword_28028D3F8, &unk_268690680);
        v25 = 0;
      }

      v7 = v43;
      v26 = sub_2685B2EC4(MEMORY[0x277D84F90]);
      __swift_destroy_boxed_opaque_existential_1(v52);
      sub_2685B2FBC(0);

      *&v53 = v22;
      *(&v53 + 1) = v14;
      v54 = v40;
      v55 = v39;
      *&v56 = v26;
      *(&v56 + 1) = v25;
      v57 = v34;
      v27 = v58;
      a5(&v53, v58, v12, v11);
      if (v43)
      {
        break;
      }

      v29 = *(&v53 + 1);
      v28 = v53;

      *v33 = __PAIR128__(v29, v28);
      sub_2685B4D0C(*(v29 + 16) - 1);
      sub_2685B4D0C(*(v33[1] + 16) - 1);
      v30 = v33[1];

      v5 = v33;
      sub_2685B3560(v31);
      sub_2685B403C("}\n", 2, v32);
      sub_2685B593C(v27, v12);

      v46 = v55;
      v47 = v56;
      v48 = v57;
      v44 = v53;
      v45 = v54;
      result = sub_2685B4DEC(&v44);
      v9 = v41 + 3;
      v8 = v42 - 1;
      if (v42 == 1)
      {
        return result;
      }
    }

    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678690(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v16 + 1) = &type metadata for Google_Protobuf_Field;
  *&v17 = sub_2685CF3E4();
  v6 = swift_allocObject();
  *&v15 = v6;
  v7 = v1[5];
  v6[5] = v1[4];
  v6[6] = v7;
  v8 = v1[7];
  v6[7] = v1[6];
  v6[8] = v8;
  v9 = v1[1];
  v6[1] = *v1;
  v6[2] = v9;
  v10 = v1[3];
  v6[3] = v1[2];
  v6[4] = v10;
  v22 = a1;
  sub_268618EC0(v1, v20);
  sub_2685B14F0(&v15, &v22, v20);
  sub_2685CA330(v20);
  *&v15 = *&v20[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v20[2];
    v18 = v20[3];
    v19 = v21;
    v16 = v20[1];
    v15 = v20[0];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678874(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, _OWORD *, __n128))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v25 + 1) = a5;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v26 = a6(v17);
  *&v25 = a4;
  v29 = a1;
  sub_2685BA80C(a2, a3);

  v18 = sub_2685B14F0(&v24, &v29, v30);
  a7(a4, v30, v18);
  v19 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v19 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v19)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v31 == 1)
  {
    sub_26863B108(a2, a3);
  }

LABEL_11:
  *&v24 = *&v30[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v20 = sub_268689974();
  if (v21)
  {
    v22 = v20;
    v26 = v30[2];
    v27 = v30[3];
    v28 = v31;
    v24 = v30[0];
    v25 = v30[1];
    sub_2685B4DEC(&v24);

    return v22;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678AA8(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_EnumValue;
  *&v14 = sub_2685CF734();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = v1[2];
  v17 = a1;
  sub_268682F18(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_2685CC9E4(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678C6C(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v15 + 1) = &type metadata for Google_Protobuf_Method;
  *&v16 = sub_2685D723C();
  v6 = swift_allocObject();
  *&v14 = v6;
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  v21 = a1;
  sub_268618E10(v1, v19);
  sub_2685B14F0(&v14, &v21, v19);
  sub_2685D5560(v19);
  *&v14 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v10 = sub_268689974();
  if (v11)
  {
    v12 = v10;
    v16 = v19[2];
    v17 = v19[3];
    v18 = v20;
    v14 = v19[0];
    v15 = v19[1];
    sub_2685B4DEC(&v14);

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678E38(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_Mixin;
  *&v14 = sub_2685D7420();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = v1[2];
  v17 = a1;
  sub_268682E20(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_2685D6294(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268678FFC(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v17 + 1) = &type metadata for Google_Protobuf_FileDescriptorSet;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *&v18 = sub_268615814();
  *&v17 = a4;
  v21 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v16, &v21, v22);
  if (*(a2 + 16))
  {
    sub_268675D64(a2, 1, &type metadata for Google_Protobuf_FileDescriptorProto, sub_268614848, sub_2685F2AE4);
  }

  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v23 == 1)
  {
    sub_26863B108(a3, a4);
  }

LABEL_13:
  *&v16 = *&v22[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v12 = sub_268689974();
  if (v13)
  {
    v14 = v12;
    v18 = v22[2];
    v19 = v22[3];
    v20 = v23;
    v16 = v22[0];
    v17 = v22[1];
    sub_2685B4DEC(&v16);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679258(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v21 + 1) = &type metadata for Google_Protobuf_DescriptorProto.ExtensionRange;
  *&v20 = a2;
  *(&v20 + 1) = a3;
  *&v22 = sub_268615CB8();
  *&v21 = a4;
  v25[0] = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v20, v25, v26);
  swift_beginAccess();
  if ((*(a4 + 20) & 1) == 0)
  {
    sub_2686440C0(*(a4 + 16), 1);
  }

  swift_beginAccess();
  if ((*(a4 + 28) & 1) == 0)
  {
    sub_2686440C0(*(a4 + 24), 2);
  }

  swift_beginAccess();
  v11 = *(a4 + 32);
  if (v11)
  {
    v13 = *(a4 + 48);
    v12 = *(a4 + 56);
    v14 = *(a4 + 40);

    sub_2685BA80C(v14, v13);

    sub_268673FBC(v11, v14, v13, v12, 3, &type metadata for Google_Protobuf_ExtensionRangeOptions, sub_26861489C);
    sub_268601C90(v11, v14, v13);
  }

  v15 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v15 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v15)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_17;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if (v27 == 1)
  {
    sub_26863B108(a2, a3);
  }

LABEL_17:
  *&v20 = *&v26[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v16 = sub_268689974();
  if (v17)
  {
    v18 = v16;
    v22 = v26[2];
    v23 = v26[3];
    v24 = v27;
    v21 = v26[1];
    v20 = v26[0];
    sub_2685B4DEC(&v20);

    return v18;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686795A0(char a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void (*a9)(_OWORD *, uint64_t, unint64_t, unint64_t, unint64_t, __n128))
{
  v11 = a5;
  v12 = a4;
  v15 = HIDWORD(a4) & 1;
  v16 = HIDWORD(a5) & 1;
  v17 = sub_2686899A4();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  *(&v29 + 1) = a6;
  *&v30 = a7(v20);
  v21 = swift_allocObject();
  *&v28 = v21;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = v12;
  *(v21 + 36) = v15;
  *(v21 + 40) = v11;
  *(v21 + 44) = v16;
  v33[0] = a1;
  sub_2685BA80C(a2, a3);
  v22 = sub_2685B14F0(&v28, v33, v34);
  LOBYTE(v28) = v15;
  v33[0] = v16;
  a9(v34, a2, a3, v12 | (v15 << 32), v11 | (v16 << 32), v22);
  *&v28 = *&v34[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v23 = sub_268689974();
  if (v24)
  {
    v25 = v23;
    v30 = v34[2];
    v31 = v34[3];
    v32 = v35;
    v28 = v34[0];
    v29 = v34[1];
    sub_2685B4DEC(&v28);

    return v25;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_2686797D8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2686899A4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *(&v20 + 1) = &type metadata for Google_Protobuf_FileOptions;
  *&v21 = sub_2686151BC();
  v13 = swift_allocObject();
  *&v19 = v13;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v24 = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v19, &v24, v25);
  sub_2686030E8(a5, v25, a2, a3, a4);
  v14 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v14)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v26 == 1)
  {
    sub_26863B108(a2, a3);
  }

LABEL_11:
  *&v19 = *&v25[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v15 = sub_268689974();
  if (v16)
  {
    v17 = v15;
    v21 = v25[2];
    v22 = v25[3];
    v23 = v26;
    v19 = v25[0];
    v20 = v25[1];
    sub_2685B4DEC(&v19);

    return v17;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679A2C(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  *(&v21 + 1) = &type metadata for Google_Protobuf_MessageOptions;
  *&v22 = sub_268614944();
  v7 = swift_allocObject();
  *&v20 = v7;
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  v25 = a1;
  sub_268601CEC(v2, v26);
  sub_2685B14F0(&v20, &v25, v26);
  v9 = *(v2 + 32);
  if (v9 != 2)
  {
    sub_2685B33F4(v9 & 1, 1);
  }

  v10 = *(v2 + 33);
  if (v10 != 2)
  {
    sub_2685B33F4(v10 & 1, 2);
  }

  v11 = *(v2 + 34);
  if (v11 != 2)
  {
    sub_2685B33F4(v11 & 1, 3);
  }

  v12 = *(v2 + 35);
  if (v12 != 2)
  {
    sub_2685B33F4(v12 & 1, 7);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v26, 1000, 0x20000000, *(v2 + 24));
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 != 2 || *(v13 + 16) == *(v13 + 24))
    {
      goto LABEL_21;
    }
  }

  else if (v15)
  {
    if (v13 == v13 >> 32)
    {
      goto LABEL_21;
    }
  }

  else if ((v14 & 0xFF000000000000) == 0)
  {
    goto LABEL_21;
  }

  if (v27 == 1)
  {
    sub_26863B108(v13, v14);
  }

LABEL_21:
  *&v20 = *&v26[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v16 = sub_268689974();
  if (v17)
  {
    v18 = v16;
    v22 = v26[2];
    v23 = v26[3];
    v24 = v27;
    v20 = v26[0];
    v21 = v26[1];
    sub_2685B4DEC(&v20);

    return v18;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679CFC(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_FieldOptions;
  *&v14 = sub_268614998();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 46) = *(v1 + 30);
  v17 = a1;
  sub_268601D9C(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_2686060E0(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_268679EC0(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v25 + 1) = a6;
  *&v26 = a7(v17);
  v18 = swift_allocObject();
  *&v24 = v18;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v29 = a1;

  sub_2685BA80C(a3, a4);

  sub_2685B14F0(&v24, &v29, v30);
  if (*(a2 + 16))
  {
    sub_2686766D4(a2, 999);
  }

  sub_2685DBFC4(v30, 1000, 0x20000000, a5);
  v19 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v19 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v19)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v31 == 1)
  {
    sub_26863B108(a3, a4);
  }

LABEL_13:
  *&v24 = *&v30[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v20 = sub_268689974();
  if (v21)
  {
    v22 = v20;
    v26 = v30[2];
    v27 = v30[3];
    v28 = v31;
    v24 = v30[0];
    v25 = v30[1];
    sub_2685B4DEC(&v24);

    return v22;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A134(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  *(&v19 + 1) = &type metadata for Google_Protobuf_EnumOptions;
  *&v20 = sub_268614AE8();
  v7 = swift_allocObject();
  *&v18 = v7;
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  v23 = a1;
  sub_268682D38(v2, v24);
  sub_2685B14F0(&v18, &v23, v24);
  v9 = *(v2 + 32);
  if (v9 != 2)
  {
    sub_2685B33F4(v9 & 1, 2);
  }

  v10 = *(v2 + 33);
  if (v10 != 2)
  {
    sub_2685B33F4(v10 & 1, 3);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v24, 1000, 0x20000000, *(v2 + 24));
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_17;
    }
  }

  else if (v13)
  {
    if (v11 == v11 >> 32)
    {
      goto LABEL_17;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_17;
  }

  if (v25 == 1)
  {
    sub_26863B108(v11, v12);
  }

LABEL_17:
  *&v18 = *&v24[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v14 = sub_268689974();
  if (v15)
  {
    v16 = v14;
    v20 = v24[2];
    v21 = v24[3];
    v22 = v25;
    v18 = v24[0];
    v19 = v24[1];
    sub_2685B4DEC(&v18);

    return v16;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A3C4(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  *(&v18 + 1) = &type metadata for Google_Protobuf_EnumValueOptions;
  *&v19 = sub_268614B3C();
  v7 = swift_allocObject();
  *&v17 = v7;
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  v22 = a1;
  sub_268682CDC(v2, v23);
  sub_2685B14F0(&v17, &v22, v23);
  v9 = *(v2 + 32);
  if (v9 != 2)
  {
    sub_2685B33F4(v9 & 1, 1);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v23, 1000, 0x20000000, *(v2 + 24));
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v12)
  {
    if (v10 == v10 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v24 == 1)
  {
    sub_26863B108(v10, v11);
  }

LABEL_15:
  *&v17 = *&v23[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v13 = sub_268689974();
  if (v14)
  {
    v15 = v13;
    v19 = v23[2];
    v20 = v23[3];
    v21 = v24;
    v17 = v23[0];
    v18 = v23[1];
    sub_2685B4DEC(&v17);

    return v15;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A634(char a1)
{
  v2 = v1;
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  *(&v18 + 1) = &type metadata for Google_Protobuf_ServiceOptions;
  *&v19 = sub_268614B90();
  v7 = swift_allocObject();
  *&v17 = v7;
  v8 = *(v2 + 16);
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v2 + 32);
  v22 = a1;
  sub_268682C80(v2, v23);
  sub_2685B14F0(&v17, &v22, v23);
  v9 = *(v2 + 32);
  if (v9 != 2)
  {
    sub_2685B33F4(v9 & 1, 33);
  }

  if (*(*v2 + 16))
  {
    sub_2686766D4(*v2, 999);
  }

  sub_2685DBFC4(v23, 1000, 0x20000000, *(v2 + 24));
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2 || *(v10 + 16) == *(v10 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v12)
  {
    if (v10 == v10 >> 32)
    {
      goto LABEL_15;
    }
  }

  else if ((v11 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v24 == 1)
  {
    sub_26863B108(v10, v11);
  }

LABEL_15:
  *&v17 = *&v23[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v13 = sub_268689974();
  if (v14)
  {
    v15 = v13;
    v19 = v23[2];
    v20 = v23[3];
    v21 = v24;
    v17 = v23[0];
    v18 = v23[1];
    sub_2685B4DEC(&v17);

    return v15;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867A8A4(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_MethodOptions;
  *&v14 = sub_268614BE4();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  v17 = a1;
  sub_268682C24(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_268608B7C(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AA68(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v15 + 1) = &type metadata for Google_Protobuf_UninterpretedOption;
  *&v16 = sub_2686148F0();
  v6 = swift_allocObject();
  *&v14 = v6;
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = *(v1 + 112);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  v21 = a1;
  sub_268619040(v1, v19);
  sub_2685B14F0(&v14, &v21, v19);
  sub_2686099AC(v19);
  *&v14 = *&v19[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v10 = sub_268689974();
  if (v11)
  {
    v12 = v10;
    v16 = v19[2];
    v17 = v19[3];
    v18 = v20;
    v14 = v19[0];
    v15 = v19[1];
    sub_2685B4DEC(&v14);

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AC3C(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_UninterpretedOption.NamePart;
  *&v14 = sub_268614C8C();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  v17 = a1;
  sub_268682B74(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_26860A938(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AE00(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v14 + 1) = &type metadata for Google_Protobuf_SourceCodeInfo.Location;
  *&v15 = sub_268614CE0();
  v6 = swift_allocObject();
  *&v13 = v6;
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v20 = a1;
  sub_268618FD8(v1, v18);
  sub_2685B14F0(&v13, &v20, v18);
  sub_26860B8A0(v18);
  *&v13 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v9 = sub_268689974();
  if (v10)
  {
    v11 = v9;
    v15 = v18[2];
    v16 = v18[3];
    v17 = v19;
    v13 = v18[0];
    v14 = v18[1];
    sub_2685B4DEC(&v13);

    return v11;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867AFC4(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, uint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v25 + 1) = a5;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v26 = a6(v17);
  *&v25 = a4;
  v29 = a1;

  sub_2685BA80C(a3, a4);
  v18 = sub_2685B14F0(&v24, &v29, v30);
  if (*(a2 + 16))
  {
    a7(a2, 1, v18);
  }

  v19 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v19 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v19)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v31 == 1)
  {
    sub_26863B108(a3, a4);
  }

LABEL_13:
  *&v24 = *&v30[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v20 = sub_268689974();
  if (v21)
  {
    v22 = v20;
    v26 = v30[2];
    v27 = v30[3];
    v28 = v31;
    v24 = v30[0];
    v25 = v30[1];
    sub_2685B4DEC(&v24);

    return v22;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B20C(char a1)
{
  v3 = sub_2686899A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  *(&v13 + 1) = &type metadata for Google_Protobuf_GeneratedCodeInfo.Annotation;
  *&v14 = sub_268614D34();
  v6 = swift_allocObject();
  *&v12 = v6;
  v7 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 61) = *(v1 + 45);
  v17 = a1;
  sub_268618F70(v1, v18);
  sub_2685B14F0(&v12, &v17, v18);
  sub_26860CAE4(v18);
  *&v12 = *&v18[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v8 = sub_268689974();
  if (v9)
  {
    v10 = v8;
    v14 = v18[2];
    v15 = v18[3];
    v16 = v19;
    v12 = v18[0];
    v13 = v18[1];
    sub_2685B4DEC(&v12);

    return v10;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B3D8(char a1, char a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v16 + 1) = &type metadata for Google_Protobuf_BoolValue;
  *&v17 = sub_268651A34();
  LOBYTE(v15) = a2;
  *(&v15 + 1) = a3;
  *&v16 = a4;
  v20 = a1;
  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v15, &v20, v21);
  sub_26864FC5C(v21, a2, a3, a4);
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B594(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v25 + 1) = &type metadata for Google_Protobuf_FieldMask;
  *&v24 = a2;
  *(&v24 + 1) = a3;
  *&v26 = sub_268652A68();
  *&v25 = a4;
  v29 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v24, &v29, v30);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;

      sub_2685B301C(1);
      sub_2685B403C(": ", 2, v15);
      sub_2685B43A4(v13, v14);

      v16 = *&v30[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2685B3F48(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v16[v18 + 32] = 10;
      *&v30[0] = v16;
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  v19 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v19 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v19)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_18;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  if (v31 == 1)
  {
    sub_26863B108(a3, a4);
  }

LABEL_18:
  *&v24 = *&v30[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v20 = sub_268689974();
  if (v21)
  {
    v22 = v20;
    v26 = v30[2];
    v27 = v30[3];
    v28 = v31;
    v24 = v30[0];
    v25 = v30[1];
    sub_2685B4DEC(&v24);

    return v22;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867B87C(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v17 + 1) = &type metadata for Google_Protobuf_ListValue;
  *&v16 = a2;
  *(&v16 + 1) = a3;
  *&v18 = sub_268653C44();
  *&v17 = a4;
  v21 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v16, &v21, v22);
  if (*(a2 + 16))
  {
    sub_268678204(a2, 1, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28);
  }

  v11 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v11 != 2 || *(a3 + 16) == *(a3 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v11)
  {
    if (a3 == a3 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a4 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  if (v23 == 1)
  {
    sub_26863B108(a3, a4);
  }

LABEL_13:
  *&v16 = *&v22[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v12 = sub_268689974();
  if (v13)
  {
    v14 = v12;
    v18 = v22[2];
    v19 = v22[3];
    v20 = v23;
    v16 = v22[0];
    v17 = v22[1];
    sub_2685B4DEC(&v16);

    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BAD8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_2686899A4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  *(&v19 + 1) = &type metadata for Google_Protobuf_BytesValue;
  *&v20 = sub_268651DC0();
  v13 = swift_allocObject();
  *&v18 = v13;
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a4;
  v13[5] = a5;
  v23 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685BA80C(a4, a5);
  sub_2685B14F0(&v18, &v23, v24);
  sub_26865089C(v24, a2, a3, a4, a5);
  *&v18 = *&v24[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v14 = sub_268689974();
  if (v15)
  {
    v16 = v14;
    v20 = v24[2];
    v21 = v24[3];
    v22 = v25;
    v18 = v24[0];
    v19 = v24[1];
    sub_2685B4DEC(&v18);

    return v16;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BCC0(char a1, uint64_t a2, unint64_t a3, float a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v16 + 1) = &type metadata for Google_Protobuf_FloatValue;
  *&v17 = sub_2686511EC();
  *&v15 = a4;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  v20 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v15, &v20, v21);
  sub_26864DBD0(v21, a2, a3, a4);
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867BE84(char a1, uint64_t a2, unint64_t a3, double a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v16 + 1) = &type metadata for Google_Protobuf_DoubleValue;
  *&v17 = sub_268651044();
  *&v15 = a4;
  *(&v15 + 1) = a2;
  *&v16 = a3;
  v20 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v15, &v20, v21);
  sub_26864D354(v21, a2, a3, a4);
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C048(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, uint64_t, unint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v24 + 1) = a5;
  *&v25 = a6(v17);
  LODWORD(v23) = a2;
  *(&v23 + 1) = a3;
  *&v24 = a4;
  v28 = a1;
  sub_2685BA80C(a3, a4);
  v18 = sub_2685B14F0(&v23, &v28, v29);
  a7(v29, a2, a3, a4, v18);
  *&v23 = *&v29[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v19 = sub_268689974();
  if (v20)
  {
    v21 = v19;
    v25 = v29[2];
    v26 = v29[3];
    v27 = v30;
    v23 = v29[0];
    v24 = v29[1];
    sub_2685B4DEC(&v23);

    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C218(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, uint64_t, unint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v24 + 1) = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v25 = a6(v17);
  *&v24 = a4;
  v28 = a1;
  sub_2685BA80C(a3, a4);
  v18 = sub_2685B14F0(&v23, &v28, v29);
  a7(v29, a2, a3, a4, v18);
  *&v23 = *&v29[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v19 = sub_268689974();
  if (v20)
  {
    v21 = v19;
    v25 = v29[2];
    v26 = v29[3];
    v27 = v30;
    v23 = v29[0];
    v24 = v29[1];
    sub_2685B4DEC(&v23);

    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C3E8(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v24 + 1) = a6;
  *&v25 = a7(v17);
  v18 = swift_allocObject();
  *&v23 = v18;
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v28 = a1;

  sub_2685BA80C(a4, a5);
  sub_2685B14F0(&v23, &v28, v29);
  sub_26867CF00(v29, a2, a3, a4, a5);
  *&v23 = *&v29[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v19 = sub_268689974();
  if (v20)
  {
    v21 = v19;
    v25 = v29[2];
    v26 = v29[3];
    v27 = v30;
    v23 = v29[0];
    v24 = v29[1];
    sub_2685B4DEC(&v23);

    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C5E0(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v15 + 1) = &type metadata for Google_Protobuf_Any;
  *&v14 = a2;
  *(&v14 + 1) = a3;
  *&v16 = sub_2685CFD4C();
  *&v15 = a4;
  v19 = a1;
  sub_2685BA80C(a2, a3);

  sub_2685B14F0(&v14, &v19, v20);
  sub_26866A568(v20);
  *&v14 = *&v20[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  result = sub_268689974();
  if (v12)
  {
    v13 = result;
    v16 = v20[2];
    v17 = v20[3];
    v18 = v21;
    v14 = v20[0];
    v15 = v20[1];
    sub_2685B4DEC(&v14);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C770(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_2686899A4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  *(&v15 + 1) = &type metadata for Google_Protobuf_Empty;
  *&v16 = sub_268648498();
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v19 = a1;
  sub_2685BA80C(a2, a3);
  sub_2685B14F0(&v14, &v19, v20);
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v9)
  {
    if (a2 == a2 >> 32)
    {
      goto LABEL_11;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  if (v21 == 1)
  {
    sub_26863B108(a2, a3);
  }

LABEL_11:
  *&v14 = *&v20[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v10 = sub_268689974();
  if (v11)
  {
    v12 = v10;
    v16 = v20[2];
    v17 = v20[3];
    v18 = v21;
    v14 = v20[0];
    v15 = v20[1];
    sub_2685B4DEC(&v14);

    return v12;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867C970(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(_OWORD *, uint64_t, unint64_t, uint64_t, __n128))
{
  v14 = sub_2686899A4();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  *(&v24 + 1) = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  *&v25 = a6(v17);
  *&v24 = a4;
  v28 = a1;
  sub_2685BA80C(a2, a3);

  v18 = sub_2685B14F0(&v23, &v28, v29);
  a7(v29, a2, a3, a4, v18);
  *&v23 = *&v29[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v19 = sub_268689974();
  if (v20)
  {
    v21 = v19;
    v25 = v29[2];
    v26 = v29[3];
    v27 = v30;
    v23 = v29[0];
    v24 = v29[1];
    sub_2685B4DEC(&v23);

    return v21;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CB48(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2686899A4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  *(&v16 + 1) = &type metadata for Google_Protobuf_Struct;
  *&v15 = a2;
  *(&v15 + 1) = a3;
  *&v17 = sub_268653C98();
  *&v16 = a4;
  v20 = a1;

  sub_2685BA80C(a3, a4);
  sub_2685B14F0(&v15, &v20, v21);
  sub_26867F274(v21, a2, a3, a4);
  *&v15 = *&v21[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v11 = sub_268689974();
  if (v12)
  {
    v13 = v11;
    v17 = v21[2];
    v18 = v21[3];
    v19 = v22;
    v15 = v21[0];
    v16 = v21[1];
    sub_2685B4DEC(&v15);

    return v13;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CD0C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, void (*a9)(_OWORD *, uint64_t, uint64_t, uint64_t, unint64_t, __n128))
{
  v16 = sub_2686899A4();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  *(&v27 + 1) = a6;
  *&v28 = a7(v19);
  v20 = swift_allocObject();
  *&v26 = v20;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  v31 = a1;
  sub_2685BA80C(a4, a5);
  v21 = sub_2685B14F0(&v26, &v31, v32);
  a9(v32, a2, a3, a4, a5, v21);
  *&v26 = *&v32[0];

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_26866E1CC(&qword_280FBCFF8, &qword_28028C318, &unk_2686929B0);
  v22 = sub_268689974();
  if (v23)
  {
    v24 = v22;
    v28 = v32[2];
    v29 = v32[3];
    v30 = v33;
    v26 = v32[0];
    v27 = v32[1];
    sub_2685B4DEC(&v26);

    return v24;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_26867CF00(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v11);
    sub_2685B43A4(a2, a3);
    v12 = *v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v12;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
      v12 = result;
      *v7 = result;
    }

    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 16) = v14 + 1;
    *(v12 + v14 + 32) = 10;
    *v7 = v12;
  }

  v15 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v15 != 2)
    {
      return result;
    }

    v16 = *(a4 + 16);
    v17 = *(a4 + 24);
  }

  else
  {
    if (!v15)
    {
      if ((a5 & 0xFF000000000000) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    v16 = a4;
    v17 = a4 >> 32;
  }

  if (v16 == v17)
  {
    return result;
  }

LABEL_17:
  if (*(v7 + 64) == 1)
  {
    return sub_26863B108(a4, a5);
  }

  return result;
}

void Google_Protobuf_Value.kind.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v14 = v5;
    v13 = swift_allocObject();
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    v12 = *(v8 + 40);
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    sub_2685D10A0(v9, v10, v11, v12);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v13;
    v8 = v13;
    v5 = v14;
  }

  *(v8 + 16) = v2;
  *(v8 + 24) = v3;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;

  sub_2685D1170(v9, v10, v11, v12);
}

void Google_Protobuf_Value.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v6 = *(v2 + 40);
  *(a1 + 24) = v6;
  sub_2685D10A0(v3, v4, v5, v6);
}

uint64_t Google_Protobuf_NullValue.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Google_Protobuf_NullValue.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_26867D1CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result == 0;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_26867D1E4()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_26867D1FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result == 0;
  *a2 = *result;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_26867D218(void *a1@<X8>)
{
  if (*(v1 + 8))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }
}

uint64_t sub_26867D234()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D61D8F0](v3);
  return sub_268689EF4();
}

uint64_t sub_26867D284()
{
  if (v0[1])
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
  }

  return MEMORY[0x26D61D8F0](v1);
}

uint64_t sub_26867D2C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268689E94();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x26D61D8F0](v3);
  return sub_268689EF4();
}

BOOL sub_26867D30C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v3 = *a1;
  }

  if (*(a2 + 8))
  {
    v2 = 0;
  }

  return v3 == v2;
}

uint64_t static Google_Protobuf_NullValue.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_28028D9E0 = a1;
}

uint64_t sub_26867D42C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_28028D9E0;
}

void sub_26867D4BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  v5 = v3;
  sub_2685D10A0(v4[0], v1, v2, v3);
  Google_Protobuf_Value.kind.setter(v4);
}

void (*Google_Protobuf_Value.kind.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 16);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  sub_2685D10A0(v6, v7, v8, v9);
  return sub_26867D59C;
}

void sub_26867D59C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[4];
  v29 = *(*a1 + 24);
  if (a2)
  {
    sub_2685D10A0(v4, v3, v5, *(*a1 + 24));
    v7 = *(v6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
    }

    else
    {
      v27 = v2[4];
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v21 = swift_allocObject();
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      *(v21 + 16) = v10;
      *(v21 + 24) = v11;
      *(v21 + 32) = v12;
      *(v21 + 40) = v13;
      sub_2685D10A0(v10, v11, v12, v13);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v27 + 16) = v21;
      v9 = v21;
    }

    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    *(v9 + 32) = v5;
    *(v9 + 40) = v29;
    sub_2685D1170(v10, v11, v12, v13);
    v22 = *v2;
    v23 = v2[1];
    v24 = v2[2];
    v25 = *(v2 + 24);
  }

  else
  {
    v14 = *(v6 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v6 + 16);
    if (v15)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
    }

    else
    {
      v28 = v2[4];
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v26 = swift_allocObject();
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
      *(v26 + 16) = v17;
      *(v26 + 24) = v18;
      *(v26 + 32) = v19;
      *(v26 + 40) = v20;
      sub_2685D10A0(v17, v18, v19, v20);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v28 + 16) = v26;
      v16 = v26;
    }

    *(v16 + 16) = v4;
    *(v16 + 24) = v3;
    *(v16 + 32) = v5;
    *(v16 + 40) = v29;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
  }

  sub_2685D1170(v22, v23, v24, v25);

  free(v2);
}

void Google_Protobuf_Value.nullValue.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255 || (v5 >> 60) & 3 | (4 * (v6 & 1u)))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
  }
}

void sub_26867D7F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if ((~v5 & 0x3000000000000000) == 0 && v6 == 255 || (v5 >> 60) & 3 | (4 * (v6 & 1u)))
  {
    v3 = 0;
    LOBYTE(v4) = 1;
  }

  else
  {
    v7 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v7;
  }

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void Google_Protobuf_Value.nullValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    sub_2685D10A0(v7, v8, v9, v10);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v11;
    v6 = v11;
  }

  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;

  sub_2685D1170(v7, v8, v9, v10);
}

void (*Google_Protobuf_Value.nullValue.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if ((~v6 & 0x3000000000000000) == 0 && v7 == 255 || (v6 >> 60) & 3 | (4 * (v7 & 1u)))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v5 & 1;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  return sub_26867DA04;
}

void sub_26867DA04(uint64_t *a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    *(v11 + 16) = v7;
    *(v11 + 24) = v8;
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    sub_2685D10A0(v7, v8, v9, v10);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v11;
    v6 = v11;
  }

  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;

  sub_2685D1170(v7, v8, v9, v10);
}

void Google_Protobuf_Value.numberValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 1)
  {
    sub_2685D10C8(v2, v3, v4, v5 & 1);
  }
}

void sub_26867DB68(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = 0;
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 1)
  {
    v7 = v3;
    v8 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v8;
  }

  *a2 = v7;
}

void Google_Protobuf_Value.numberValue.setter(double a1)
{
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v10 = swift_allocObject();
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    sub_2685D10A0(v6, v7, v8, v9);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v10;
    v5 = v10;
  }

  *(v5 + 16) = a1;
  *(v5 + 24) = xmmword_268692580;
  *(v5 + 40) = 0;

  sub_2685D1170(v6, v7, v8, v9);
}

void (*Google_Protobuf_Value.numberValue.modify(uint64_t *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = 0;
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 1)
  {
    v8 = v4;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  *a1 = v8;
  return sub_26867DD68;
}

uint64_t Google_Protobuf_Value.stringValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if ((~v4 & 0x3000000000000000) == 0 && v5 == 255 || ((v4 >> 60) & 3 | (4 * (v5 & 1u))) != 2)
  {
    return 0;
  }

  sub_2685D10C8(v2, v3, v4, v5 & 1);
  return v2;
}

void sub_26867DE04(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 2)
  {
    v7 = a2;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
    a2 = v7;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *a2 = v3;
  a2[1] = v4;
}

void Google_Protobuf_Value.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v12 = swift_allocObject();
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v2 + 16) = v12;
    v7 = v12;
  }

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = 0x2000000000000000;
  *(v7 + 40) = 0;

  sub_2685D1170(v8, v9, v10, v11);
}

void (*Google_Protobuf_Value.stringValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 2)
  {
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_26867E01C;
}

void sub_26867E01C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    Google_Protobuf_Value.stringValue.setter(v3, v2);
  }

  else
  {
    Google_Protobuf_Value.stringValue.setter(*a1, v2);
  }
}

uint64_t Google_Protobuf_Value.BOOLValue.getter()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  if (((~v4 & 0x3000000000000000) != 0 || v5 != 255) && ((v4 >> 60) & 3 | (4 * (v5 & 1u))) == 3)
  {
    sub_2685D10C8(v3, v2, v4, v5 & 1);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void sub_26867E0F8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 3)
  {
    v7 = a2;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a2 = v7;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4 & 1;
}

void Google_Protobuf_Value.BOOLValue.setter(char a1)
{
  v3 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v10 = swift_allocObject();
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    sub_2685D10A0(v6, v7, v8, v9);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v10;
    v5 = v10;
  }

  *(v5 + 16) = a1 & 1;
  *(v5 + 24) = xmmword_268692590;
  *(v5 + 40) = 0;

  sub_2685D1170(v6, v7, v8, v9);
}

void (*Google_Protobuf_Value.BOOLValue.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 3)
  {
    v7 = a1;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a1 = v7;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 8) = v4 & 1;
  return sub_26867E30C;
}

double Google_Protobuf_Value.structValue.getter@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;

    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
    result = 0.0;
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return result;
}

unint64_t sub_26867E3CC@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    sub_2685D10C8(v5, v4, v6, v7 & 1);
    result = v5;
  }

  else
  {
    result = sub_2686892D4(MEMORY[0x277D84F90]);
    v4 = 0;
    v6 = 0xC000000000000000;
  }

  *a2 = result;
  a2[1] = v4;
  a2[2] = v6;
  return result;
}

void Google_Protobuf_Value.structValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v12 = swift_allocObject();
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v12;
    v7 = v12;
  }

  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4;
  *(v7 + 40) = 1;

  sub_2685D1170(v8, v9, v10, v11);
}

void (*Google_Protobuf_Value.structValue.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 4)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return sub_26867E600;
}

void sub_26867E600(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    v6 = *a1;

    sub_2685BA80C(v2, v4);
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v21 = swift_allocObject();
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      *(v21 + 16) = v10;
      *(v21 + 24) = v11;
      *(v21 + 32) = v12;
      *(v21 + 40) = v13;
      sub_2685D10A0(v10, v11, v12, v13);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v21;
      v9 = v21;
    }

    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    *(v9 + 32) = v4;
    *(v9 + 40) = 1;
    sub_2685D1170(v10, v11, v12, v13);

    sub_2685B593C(v2, v4);
  }

  else
  {
    v14 = *(v5 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 16);
    if (v15)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v22 = swift_allocObject();
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
      *(v22 + 16) = v17;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      sub_2685D10A0(v17, v18, v19, v20);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v22;
      v16 = v22;
    }

    *(v16 + 16) = v3;
    *(v16 + 24) = v2;
    *(v16 + 32) = v4;
    *(v16 + 40) = 1;

    sub_2685D1170(v17, v18, v19, v20);
  }
}

double Google_Protobuf_Value.listValue.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 5)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2685D10C8(v3, v4, v5, v6 & 1);
  }

  else
  {
    *a1 = MEMORY[0x277D84F90];
    result = 0.0;
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return result;
}

void sub_26867E860(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  if (((~v5 & 0x3000000000000000) != 0 || v6 != 255) && ((v5 >> 60) & 3 | (4 * (v6 & 1u))) == 5)
  {
    v7 = v5 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
    sub_2685D10C8(v4, v3, v5, v6 & 1);
    a2 = v8;
  }

  else
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    v7 = 0xC000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v7;
}

uint64_t sub_26867E8F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6 = a1[1];
  v7 = a1[2];
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = v7;

  sub_2685BA80C(v6, v7);
  return a5(v9);
}

void Google_Protobuf_Value.listValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
  }

  else
  {
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v12 = swift_allocObject();
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    *(v12 + 16) = v8;
    *(v12 + 24) = v9;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    sub_2685D10A0(v8, v9, v10, v11);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v1 + 16) = v12;
    v7 = v12;
  }

  *(v7 + 16) = v2;
  *(v7 + 24) = v3;
  *(v7 + 32) = v4 | 0x1000000000000000;
  *(v7 + 40) = 1;

  sub_2685D1170(v8, v9, v10, v11);
}

void (*Google_Protobuf_Value.listValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  if (((~v6 & 0x3000000000000000) != 0 || v7 != 255) && ((v6 >> 60) & 3 | (4 * (v7 & 1u))) == 5)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = v6 & 0xCFFFFFFFFFFFFFFFLL;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
  }

  else
  {
    *a1 = MEMORY[0x277D84F90];
    *(a1 + 1) = xmmword_26868A5E0;
  }

  return sub_26867EAF8;
}

void sub_26867EAF8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    v6 = *a1;

    sub_2685BA80C(v2, v4);
    v7 = *(v5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v5 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v21 = swift_allocObject();
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      *(v21 + 16) = v10;
      *(v21 + 24) = v11;
      *(v21 + 32) = v12;
      *(v21 + 40) = v13;
      sub_2685D10A0(v10, v11, v12, v13);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v21;
      v9 = v21;
    }

    *(v9 + 16) = v3;
    *(v9 + 24) = v2;
    *(v9 + 32) = v4 | 0x1000000000000000;
    *(v9 + 40) = 1;
    sub_2685D1170(v10, v11, v12, v13);

    sub_2685B593C(v2, v4);
  }

  else
  {
    v14 = *(v5 + 16);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v5 + 16);
    if (v15)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
    }

    else
    {
      type metadata accessor for Google_Protobuf_Value._StorageClass();
      v22 = swift_allocObject();
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v16 + 32);
      v20 = *(v16 + 40);
      *(v22 + 16) = v17;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v20;
      sub_2685D10A0(v17, v18, v19, v20);
      sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

      *(v5 + 16) = v22;
      v16 = v22;
    }

    *(v16 + 16) = v3;
    *(v16 + 24) = v2;
    *(v16 + 32) = v4 | 0x1000000000000000;
    *(v16 + 40) = 1;

    sub_2685D1170(v17, v18, v19, v20);
  }
}

uint64_t Google_Protobuf_Value.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Value.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_26867ED90(void *a1, void *a2, uint64_t (*a3)(void, void))
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v5, v6);
  v7 = sub_2686131DC(v3, v4, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v3, v4);
  return v7 & 1;
}

uint64_t Google_Protobuf_ListValue.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Google_Protobuf_ListValue.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t static Google_Protobuf_NullValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028D9F0;
  v2 = qword_28028D9F8;
  v3 = unk_28028DA00;
  *a1 = qword_28028D9E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26867EF6C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE60 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_28028D9F0;
  v2 = qword_28028D9F8;
  v3 = unk_28028DA00;
  *a1 = qword_28028D9E8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Struct._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA10;
  v2 = qword_28028DA18;
  v3 = unk_28028DA20;
  *a1 = qword_28028DA08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Struct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        v10 = *(a3 + 456);
        v11 = sub_268653CEC();
        v12 = sub_268682404();
        v10(v3, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v11, v12, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26867F1C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  if (*(a2 + 16))
  {
    MEMORY[0x26D61D8F0](1);
    result = sub_268612CF4(v6, a2);
  }

  v8 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v9 = *(a3 + 16);
    v10 = *(a3 + 24);
LABEL_10:
    if (v9 == v10)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v8)
  {
    v9 = a3;
    v10 = a3 >> 32;
    goto LABEL_10;
  }

  if ((a4 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t *sub_26867F274(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!*(a2 + 16) || (result = sub_268639B80(a2, 1, result), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Struct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (!*(*v3 + 16) || (v11 = *(a3 + 424), v12 = sub_268653CEC(), v13 = sub_268682404(), result = v11(v9, 1, &type metadata for ProtobufString, &type metadata for Google_Protobuf_Value, &protocol witness table for ProtobufString, v12, v13, a2, a3), !v4))
  {
    sub_2685BA80C(v8, v10);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v8, v10);
  }

  return result;
}

uint64_t Google_Protobuf_Struct.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_26867F1C8(&v5, v1, v2, v3);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

double sub_26867F4C4@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2686892D4(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26867F54C@<X0>(void *a1@<X8>)
{
  if (qword_28028BE68 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA10;
  v2 = qword_28028DA18;
  v3 = unk_28028DA20;
  *a1 = qword_28028DA08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t static Google_Protobuf_Value._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA30;
  v2 = qword_28028DA38;
  v3 = unk_28028DA40;
  *a1 = qword_28028DA28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26867F760()
{
  sub_2685D1170(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

void Google_Protobuf_Value.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 16);
    type metadata accessor for Google_Protobuf_Value._StorageClass();
    v11 = swift_allocObject();
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    *(v11 + 16) = v12;
    *(v11 + 24) = v13;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    sub_2685D10A0(v12, v13, v14, v15);
    sub_2685D1170(0, 0, 0x3000000000000000uLL, 255);

    *(v3 + 16) = v11;
    v9 = v11;
  }

  sub_26867F860(v9, a1, a2, a3);
}

void sub_26867F860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = v8(a3, a4);
  if (!v4)
  {
    v45 = a4 + 8;
    v42 = v8;
    while (1)
    {
      if (v10)
      {
        return;
      }

      if (v9 > 3)
      {
        switch(v9)
        {
          case 4:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            LOBYTE(v43) = 2;
            (*(a4 + 320))(&v43, a3, a4);
            if (v43 != 2)
            {
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43 & 1;
              v24 = xmmword_268692590;
              goto LABEL_39;
            }

            break;
          case 5:
            v43 = 0;
            v44 = 0uLL;
            v25 = *(a1 + 32);
            v26 = *(a1 + 40);
            if ((~v25 & 0x3000000000000000) != 0 || v26 != 255)
            {
              v41 = *(a4 + 8);
              v27 = *(a1 + 16);
              v28 = *(a1 + 24);
              sub_2685D10C8(v27, v28, v25, v26 & 1);
              v41(a3, a4);
              if (((v25 >> 60) & 3 | (4 * (v26 & 1u))) == 4)
              {
                sub_268601BC8(v43, v44, *(&v44 + 1));
                v43 = v27;
                *&v44 = v28;
                *(&v44 + 1) = v25;
              }

              else
              {
                sub_2685D1170(v27, v28, v25, v26);
              }
            }

            v37 = *(a4 + 408);
            v38 = sub_268653C98();
            v37(&v43, &type metadata for Google_Protobuf_Struct, v38, a3, a4);
            if (v43)
            {
              v39 = *(a1 + 16);
              v34 = *(a1 + 24);
              v35 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v44;
              v36 = *(a1 + 40);
              *(a1 + 40) = 1;
              v33 = v39;
LABEL_4:
              sub_2685D1170(v33, v34, v35, v36);
            }

LABEL_5:
            v8 = v42;
            break;
          case 6:
            v43 = 0;
            v44 = 0uLL;
            v17 = *(a1 + 32);
            v18 = *(a1 + 40);
            if ((~v17 & 0x3000000000000000) != 0 || v18 != 255)
            {
              v40 = *(a4 + 8);
              v19 = *(a1 + 16);
              v20 = *(a1 + 24);
              sub_2685D10C8(v19, v20, v17, v18 & 1);
              v40(a3, a4);
              if (((v17 >> 60) & 3 | (4 * (v18 & 1u))) == 5)
              {
                sub_268601BC8(v43, v44, *(&v44 + 1));
                v43 = v19;
                *&v44 = v20;
                *(&v44 + 1) = v17 & 0xCFFFFFFFFFFFFFFFLL;
              }

              else
              {
                sub_2685D1170(v19, v20, v17, v18);
              }
            }

            v29 = *(a4 + 408);
            v30 = sub_268653C44();
            v29(&v43, &type metadata for Google_Protobuf_ListValue, v30, a3, a4);
            if (v43)
            {
              v31 = v44;
              v32 = *(&v44 + 1) | 0x1000000000000000;
              v33 = *(a1 + 16);
              v34 = *(a1 + 24);
              v35 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v31;
              *(a1 + 32) = v32;
              v36 = *(a1 + 40);
              *(a1 + 40) = 1;
              goto LABEL_4;
            }

            goto LABEL_5;
        }
      }

      else
      {
        switch(v9)
        {
          case 1:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            LOWORD(v44) = 256;
            v21 = *(a4 + 392);
            v22 = sub_268682FC8();
            v21(&v43, &type metadata for Google_Protobuf_NullValue, v22, a3, a4);
            if ((BYTE1(v44) & 1) == 0)
            {
              v23 = v44 & 1;
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v23;
              *(a1 + 32) = 0;
              goto LABEL_40;
            }

            break;
          case 2:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            LOBYTE(v44) = 1;
            (*(a4 + 56))(&v43, a3, a4);
            if ((v44 & 1) == 0)
            {
              v16 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              v24 = xmmword_268692580;
LABEL_39:
              *(a1 + 24) = v24;
LABEL_40:
              v15 = *(a1 + 40);
              *(a1 + 40) = 0;
LABEL_41:
              sub_2685D1170(v16, v12, v14, v15);
            }

            break;
          case 3:
            if ((~*(a1 + 32) & 0x3000000000000000) != 0 || *(a1 + 40) != 255)
            {
              (*(a4 + 8))(a3, a4);
            }

            v43 = 0;
            *&v44 = 0;
            (*(a4 + 344))(&v43, a3, a4);
            v11 = v44;
            if (v44)
            {
              v13 = *(a1 + 16);
              v12 = *(a1 + 24);
              v14 = *(a1 + 32);
              *(a1 + 16) = v43;
              *(a1 + 24) = v11;
              *(a1 + 32) = 0x2000000000000000;
              v15 = *(a1 + 40);
              *(a1 + 40) = 0;
              v16 = v13;
              goto LABEL_41;
            }

            break;
        }
      }

      v9 = v8(a3, a4);
    }
  }
}

void sub_26867FE90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_26868005C(a4, a1);
  if (!v4)
  {
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 != 2)
      {
        return;
      }

      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      if (!v7)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

LABEL_11:
        sub_268689844();
        return;
      }

      v8 = a2;
      v9 = a2 >> 32;
    }

    if (v8 == v9)
    {
      return;
    }

    goto LABEL_11;
  }
}

void sub_26867FF28(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_268680248(a4, a1);
  if (!v4)
  {
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return;
      }

      v9 = *(a2 + 16);
      v10 = *(a2 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a3 & 0xFF000000000000) == 0)
        {
          return;
        }

        goto LABEL_11;
      }

      v9 = a2;
      v10 = a2 >> 32;
    }

    if (v9 == v10)
    {
      return;
    }

LABEL_11:
    if (*(a1 + 64) == 1)
    {
      sub_26863B108(a2, a3);
    }
  }
}

void Google_Protobuf_Value.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  sub_268680548(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    sub_2685B593C(v9, v8);
  }
}

void sub_26868005C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if ((~v6 & 0x3000000000000000) == 0 && v7 == 255)
  {
    return;
  }

  v8 = (v6 >> 60) & 3 | (4 * (v7 & 1));
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      MEMORY[0x26D61D8F0](4);
      sub_268689EB4();
      return;
    }

    if (v8 != 4)
    {
      MEMORY[0x26D61D8F0](6);
      sub_2685D10C8(v4, v5, v6, v7 & 1);
      sub_2685DCAD0(a2, v4, v5, v6 & 0xCFFFFFFFFFFFFFFFLL);
      goto LABEL_21;
    }

    MEMORY[0x26D61D8F0](5);
    v10 = *(a2 + 48);
    v17 = *(a2 + 32);
    v18 = v10;
    v19 = *(a2 + 64);
    v11 = *(a2 + 16);
    v15 = *a2;
    v16 = v11;
    sub_2685D10C8(v4, v5, v6, v7 & 1);
    sub_26867F1C8(&v15, v4, v5, v6);
    if (v2)
    {
      MEMORY[0x26D61DC90](v2);
    }

    sub_2685D1170(v4, v5, v6, v7);
    v13 = v18;
    *(a2 + 32) = v17;
    *(a2 + 48) = v13;
    *(a2 + 64) = v19;
    v14 = v16;
    *a2 = v15;
    *(a2 + 16) = v14;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {
        MEMORY[0x26D61D8F0](2);
        if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v9 = v4;
        }

        else
        {
          v9 = 0;
        }

        MEMORY[0x26D61D920](v9);
        return;
      }

      MEMORY[0x26D61D8F0](3);
      sub_2685D10C8(v4, v5, v6, v7 & 1);
      sub_268689A24();
LABEL_21:
      sub_2685D1170(v4, v5, v6, v7);
      return;
    }

    MEMORY[0x26D61D8F0](1);
    if (v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v4;
    }

    MEMORY[0x26D61D8F0](v12);
  }
}

void sub_268680248(uint64_t a1, char **a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if ((~v5 & 0x3000000000000000) != 0 || v6 != 255)
  {
    v7 = (v5 >> 60) & 3 | (4 * (v6 & 1));
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        sub_2685B33F4(v3 & 1, 4);
      }

      else
      {
        v10 = v6 & 1;
        v11 = *(a1 + 16);
        if (v7 == 4)
        {
          sub_2685D10C8(v11, v4, v5, v10);
          v12 = &type metadata for Google_Protobuf_Struct;
          v13 = sub_268653C98;
          v14 = sub_26867F274;
          v15 = v3;
          v16 = v4;
          v17 = v5;
          v18 = 5;
        }

        else
        {
          sub_2685D10C8(v11, v4, v5, v10);
          v12 = &type metadata for Google_Protobuf_ListValue;
          v13 = sub_268653C44;
          v14 = sub_268680F8C;
          v17 = v5 & 0xCFFFFFFFFFFFFFFFLL;
          v15 = v3;
          v16 = v4;
          v18 = 6;
        }

        sub_26867440C(v15, v16, v17, v18, v12, v13, v14);
        sub_2685D1170(v3, v4, v5, v6);
      }
    }

    else
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v8 = *(a1 + 16);
          sub_2685B301C(2);
          sub_2685B403C(": ", 2, v9);
          sub_2686639C4(*&v3);
        }

        else
        {
          sub_2685D10C8(*(a1 + 16), v4, v5, v6 & 1);
          sub_2685B301C(3);
          sub_2685B403C(": ", 2, v25);
          sub_2685B43A4(v3, v4);
          sub_2685D1170(v3, v4, v5, v6);
        }

        v26 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
          *a2 = v26;
        }

        v29 = *(v26 + 2);
        v28 = *(v26 + 3);
        if (v29 >= v28 >> 1)
        {
          v26 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v26);
          *a2 = v26;
        }

        *(v26 + 2) = v29 + 1;
        v24 = &v26[v29];
      }

      else
      {
        sub_2685B301C(1);
        sub_2685B403C(": ", 2, v19);
        sub_2686716A8(v3, v4 & 1);
        v20 = *a2;
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v20;
        if ((v21 & 1) == 0)
        {
          v20 = sub_2685B3F48(0, *(v20 + 2) + 1, 1, v20);
          *a2 = v20;
        }

        v23 = *(v20 + 2);
        v22 = *(v20 + 3);
        if (v23 >= v22 >> 1)
        {
          v20 = sub_2685B3F48((v22 > 1), v23 + 1, 1, v20);
          *a2 = v20;
        }

        *(v20 + 2) = v23 + 1;
        v24 = &v20[v23];
      }

      v24[32] = 10;
    }
  }
}

void sub_268680548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  if ((~v6 & 0x3000000000000000) != 0 || v7 != 255)
  {
    v8 = (v6 >> 60) & 3 | (4 * (v7 & 1));
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        (*(a4 + 104))(*(a1 + 16) & 1, 4);
      }

      else if (v8 == 4)
      {
        v22 = *(a1 + 16);
        v23 = v5;
        v24 = v6;
        v10 = *(a4 + 136);
        v12 = sub_268653C98();
        v10(&v22, 5, &type metadata for Google_Protobuf_Struct, v12, a3, a4);
      }

      else
      {
        v22 = *(a1 + 16);
        v23 = v5;
        v24 = v6 & 0xCFFFFFFFFFFFFFFFLL;
        v19 = *(a4 + 136);
        v21 = sub_268653C44();
        v19(&v22, 6, &type metadata for Google_Protobuf_ListValue, v21, a3, a4);
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        (*(a4 + 16))(2, a3, a4, *(a1 + 16));
      }

      else
      {
        v25 = *(a4 + 112);
        sub_2685D10C8(v4, v5, v6, v7 & 1);
        v25(v4, v5, 3, a3, a4);
        sub_2685D1170(v4, v5, v6, v7);
      }
    }

    else
    {
      v22 = *(a1 + 16);
      LOBYTE(v23) = v5 & 1;
      v13 = *(a4 + 128);
      v16 = sub_268682FC8();
      v13(&v22, 1, &type metadata for Google_Protobuf_NullValue, v16, a3, a4);
    }
  }
}

BOOL sub_268680770(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((~v4 & 0x3000000000000000) == 0 && v5 == 255)
  {
    sub_2685D10A0(*(a1 + 16), v2, v4, 255);
    if ((~v8 & 0x3000000000000000) == 0 && v9 == 255)
    {
      sub_2685D10A0(v7, v6, v8, 255);
      sub_2685D1170(v3, v2, v4, 255);
      return 1;
    }

    sub_2685D10A0(v7, v6, v8, v9);
    goto LABEL_12;
  }

  v16 = *(a1 + 16);
  v17 = v2;
  v18 = v4;
  v19 = v5;
  if ((~v8 & 0x3000000000000000) == 0 && v9 == 255)
  {
    sub_2685D10A0(v3, v2, v4, v5);
    sub_2685D10A0(v7, v6, v8, 255);
    sub_2685D10A0(v3, v2, v4, v5);
    sub_2685D1198(v3, v2, v4, v5 & 1);
LABEL_12:
    sub_2685D1170(v3, v2, v4, v5);
    sub_2685D1170(v7, v6, v8, v9);
    return 0;
  }

  v12 = v7;
  v13 = v6;
  v14 = v8;
  v15 = v9 & 1;
  sub_2685D10A0(v3, v2, v4, v5);
  sub_2685D10A0(v7, v6, v8, v9);
  sub_2685D10A0(v3, v2, v4, v5);
  v10 = _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(&v16, &v12);
  sub_2685D1198(v12, v13, v14, v15);
  sub_2685D1198(v16, v17, v18, v19);
  sub_2685D1170(v3, v2, v4, v5);
  return (v10 & 1) != 0;
}

uint64_t Google_Protobuf_Value.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_26868005C(v3, &v8);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_2;
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v6 = v1;
    v7 = v1 >> 32;
  }

  if (v6 != v7)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v16 = v11;
  v17 = v12;
  v14 = v9;
  v15 = v10;
  v13 = v8;
  return sub_268689EF4();
}

uint64_t sub_268680A74@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Value._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_268680B04@<X0>(void *a1@<X8>)
{
  if (qword_28028BE70 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA30;
  v2 = qword_28028DA38;
  v3 = unk_28028DA40;
  *a1 = qword_28028DA28;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_268680BC4(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(&v9, v5, v6, v7);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_268680C94(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = v4[2];
  v10 = a1[3];
  v16 = a1[2];
  v17 = v10;
  v18 = *(a1 + 8);
  v11 = a1[1];
  v14 = *a1;
  v15 = v11;
  a4(&v14, v7, v8, v9);
  v12 = v17;
  a1[2] = v16;
  a1[3] = v12;
  *(a1 + 8) = v18;
  result = v15;
  *a1 = v14;
  a1[1] = result;
  return result;
}

uint64_t sub_268680D34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(&v10, v6, v7, v8);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_ListValue._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BE78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA50;
  v2 = qword_28028DA58;
  v3 = unk_28028DA60;
  *a1 = qword_28028DA48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_ListValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        v10 = *(a3 + 416);
        v11 = sub_268653CEC();
        v10(v3, &type metadata for Google_Protobuf_Value, v11, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_268680F8C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  if (!*(a2 + 16) || (result = sub_268678204(a2, 1, &type metadata for Google_Protobuf_Value, sub_268653CEC, sub_26867FF28), !v4))
  {
    v8 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v8 != 2)
      {
        return result;
      }

      v9 = *(a3 + 16);
      v10 = *(a3 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((a4 & 0xFF000000000000) == 0)
        {
          return result;
        }

        goto LABEL_11;
      }

      v9 = a3;
      v10 = a3 >> 32;
    }

    if (v9 == v10)
    {
      return result;
    }

LABEL_11:
    if (*(v7 + 64) == 1)
    {
      return sub_26863B108(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v9 = *v3;
  v8 = v3[1];
  v10 = v3[2];
  if (*(*v3 + 16))
  {
    v12 = *(a3 + 280);
    v13 = sub_268653CEC();
    result = v12(v9, 1, &type metadata for Google_Protobuf_Value, v13, a2, a3);
    if (v4)
    {
      return result;
    }

    v7 = a1;
  }

  sub_2685BA80C(v8, v10);
  UnknownStorage.traverse<A>(visitor:)(v7, a2, a3);
  return sub_2685B593C(v8, v10);
}

uint64_t Google_Protobuf_ListValue.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  sub_2685DCAD0(v5, v1, v2, v3);
  return sub_268689EF4();
}

uint64_t sub_2686811F0@<X0>(void *a1@<X8>)
{
  if (qword_28028BE78 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028DA50;
  v2 = qword_28028DA58;
  v3 = unk_28028DA60;
  *a1 = qword_28028DA48;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2686812D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  sub_2685DCAD0(v5, v1, v2, v3);
  return sub_268689EF4();
}

uint64_t sub_268681334()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  sub_2685DCAD0(v5, v1, v2, v3);
  return sub_268689EF4();
}

uint64_t sub_2686813A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a2[1];
  v8 = a2[2];
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v5, v6);
  sub_2685BA80C(v7, v8);
  v9 = sub_2686131DC(v5, v6, v7, v8);
  sub_2685B593C(v7, v8);
  sub_2685B593C(v5, v6);
  return v9 & 1;
}

BOOL sub_268681448(uint64_t a1, uint64_t a2)
{
  v99 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_84:
    v20 = 1;
    goto LABEL_93;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_92:
    v20 = 0;
    goto LABEL_93;
  }

  v4 = 0;
  v80 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v81 = v8;
  while (1)
  {
    while (1)
    {
LABEL_6:
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v88 = (v7 - 1) & v7;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v4 >= v8)
        {
          goto LABEL_84;
        }

        v11 = *(v80 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v88 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(v3 + 56) + 24 * v12);
      v18 = *v16;
      v17 = v16[1];
      v19 = v16[2];

      v89 = v17;
      v90 = v18;
      sub_2685BA80C(v18, v17);
      v20 = v14 == 0;

      if (!v14)
      {
        goto LABEL_93;
      }

      v21 = sub_2685C3084(v15, v14);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_90;
      }

      v24 = (*(v2 + 56) + 24 * v21);
      v25 = *v24;
      v91 = v24[1];
      v26 = v24[2];
      if (v26 == v19)
      {
        sub_2685BA80C(v25, v91);

        v41 = v89;
        goto LABEL_26;
      }

      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v29 = *(v26 + 32);
      LODWORD(v30) = *(v26 + 40);
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      v33 = *(v19 + 32);
      v34 = *(v19 + 40);
      v86 = *v24;
      v84 = v34;
      if ((~v29 & 0x3000000000000000) == 0 && v30 == 255)
      {
        v35 = v32;
        v36 = *(v26 + 24);
        v37 = v33;
        v79 = ~v33 & 0x3000000000000000;
        v38 = *(v26 + 16);
        sub_2685BA80C(v25, v91);
        swift_retain_n();

        v39 = v36;
        v40 = v36;
        v30 = v29;
        sub_2685D10A0(v38, v40, v29, 255);
        if (!v79 && v84 == 255)
        {
          sub_2685D10A0(v35, v31, v37, 255);
          sub_2685D1170(v38, v39, v29, 255);
          v3 = a1;
          v2 = a2;
          goto LABEL_25;
        }

        v70 = v35;
        v71 = v35;
        v72 = v37;
        v73 = v84;
        sub_2685D10A0(v71, v31, v37, v84);
        v74 = v39;
        v75 = v38;
        v32 = v70;
        v29 = v30;
        LOBYTE(v30) = -1;
LABEL_88:
        sub_2685D1170(v75, v74, v29, v30);
        sub_2685D1170(v32, v31, v72, v73);
        goto LABEL_89;
      }

      v42 = *(v26 + 16);
      *&v96 = v42;
      *(&v96 + 1) = v27;
      v43 = v27;
      v97 = v29;
      v98 = v30;
      if ((~v33 & 0x3000000000000000) == 0 && v34 == 255)
      {
        v72 = v33;
        sub_2685BA80C(v25, v91);
        swift_retain_n();

        v76 = v43;
        sub_2685D10A0(v42, v43, v29, v30);
        v73 = -1;
        sub_2685D10A0(v32, v31, v72, 255);
        sub_2685D10A0(v42, v76, v29, v30);
        sub_2685D1198(v42, v76, v29, v30 & 1);
        v75 = v42;
        v74 = v76;
        goto LABEL_88;
      }

      v92 = v32;
      v93 = v31;
      v94 = v33;
      v95 = v34 & 1;
      v44 = v25;
      v45 = v33;
      sub_2685BA80C(v44, v91);
      swift_retain_n();

      sub_2685D10A0(v42, v43, v29, v30);
      sub_2685D10A0(v32, v31, v45, v34);
      sub_2685D10A0(v42, v43, v29, v30);
      LOBYTE(v45) = _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(&v96, &v92);
      sub_2685D1198(v92, v93, v94, v95);
      sub_2685D1198(v96, *(&v96 + 1), v97, v98);
      sub_2685D1170(v42, v43, v29, v30);
      v3 = a1;
      v2 = a2;
      if ((v45 & 1) == 0)
      {
LABEL_89:

        sub_2685B593C(v86, v91);

LABEL_90:
        v69 = v89;
        v68 = v90;
        goto LABEL_91;
      }

LABEL_25:

      v8 = v81;
      v41 = v89;
      v25 = v86;
LABEL_26:
      v46 = v91 >> 62;
      v47 = v41 >> 62;
      if (v91 >> 62 != 3)
      {
        break;
      }

      if (v25)
      {
        v48 = 0;
      }

      else
      {
        v48 = v91 == 0xC000000000000000;
      }

      v49 = v48 && v41 >> 62 == 3;
      if (!v49 || (!v90 ? (v50 = v41 == 0xC000000000000000) : (v50 = 0), !v50))
      {
LABEL_50:
        v53 = 0;
        if (v47 > 1)
        {
          goto LABEL_51;
        }

LABEL_48:
        if (!v47)
        {
          v57 = BYTE6(v41);
          goto LABEL_57;
        }

        LODWORD(v57) = HIDWORD(v90) - v90;
        if (!__OFSUB__(HIDWORD(v90), v90))
        {
          v57 = v57;
          goto LABEL_57;
        }

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
      }

      sub_2685B593C(0, 0xC000000000000000);

      v51 = 0;
      v52 = 0xC000000000000000;
LABEL_64:
      sub_2685B593C(v51, v52);

      v7 = v88;
    }

    if (v46 > 1)
    {
      if (v46 != 2)
      {
        goto LABEL_50;
      }

      v55 = *(v25 + 16);
      v54 = *(v25 + 24);
      v56 = __OFSUB__(v54, v55);
      v53 = v54 - v55;
      if (!v56)
      {
        if (v47 > 1)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      goto LABEL_97;
    }

    if (v46)
    {
      LODWORD(v53) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_98;
      }

      v53 = v53;
      if (v47 <= 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v53 = BYTE6(v91);
      if (v47 <= 1)
      {
        goto LABEL_48;
      }
    }

LABEL_51:
    if (v47 != 2)
    {
      if (!v53)
      {
LABEL_63:
        sub_2685B593C(v25, v91);

        v51 = v90;
        v52 = v41;
        goto LABEL_64;
      }

LABEL_85:
      sub_2685B593C(v25, v91);

      v68 = v90;
      v69 = v41;
LABEL_91:
      sub_2685B593C(v68, v69);

      goto LABEL_92;
    }

    v59 = *(v90 + 16);
    v58 = *(v90 + 24);
    v56 = __OFSUB__(v58, v59);
    v57 = v58 - v59;
    if (v56)
    {
      goto LABEL_95;
    }

LABEL_57:
    if (v53 != v57)
    {
      goto LABEL_85;
    }

    if (v53 < 1)
    {
      goto LABEL_63;
    }

    if (v46 <= 1)
    {
      break;
    }

    if (v46 != 2)
    {
      *(&v96 + 6) = 0;
      *&v96 = 0;
      sub_2685BA80C(v25, v91);
      sub_2685BA80C(v90, v41);
      sub_268612934(&v96, v90, v41, &v92);
      sub_2685B593C(v90, v41);
      sub_2685B593C(v25, v91);
      sub_2685B593C(v25, v91);

      v60 = v90;
LABEL_81:
      sub_2685B593C(v60, v41);

      v67 = v92;
      goto LABEL_82;
    }

    v61 = v25;
    v62 = *(v25 + 16);
    v85 = *(v61 + 24);
    v87 = v61;
    sub_2685BA80C(v61, v91);
    sub_2685BA80C(v90, v41);
    v63 = sub_268689764();
    if (v63)
    {
      v64 = sub_268689794();
      if (__OFSUB__(v62, v64))
      {
        goto LABEL_101;
      }

      v63 += v62 - v64;
    }

    if (__OFSUB__(v85, v62))
    {
      goto LABEL_100;
    }

    sub_268689784();
    sub_268612934(v63, v90, v89, &v96);
    sub_2685B593C(v90, v89);
    sub_2685B593C(v87, v91);
    sub_2685B593C(v87, v91);

    sub_2685B593C(v90, v89);

    v7 = v88;
    v20 = 0;
    if ((v96 & 1) == 0)
    {
      goto LABEL_93;
    }
  }

  if (!v46)
  {
    *&v96 = v25;
    DWORD2(v96) = v91;
    WORD6(v96) = WORD2(v91);
    sub_2685BA80C(v25, v91);
    sub_2685BA80C(v90, v41);
    sub_268612934(&v96, v90, v41, &v92);
    sub_2685B593C(v90, v41);
    sub_2685B593C(v25, v91);
    sub_2685B593C(v25, v91);

    v60 = v90;
    goto LABEL_81;
  }

  if (v25 >> 32 < v25)
  {
    goto LABEL_99;
  }

  sub_2685BA80C(v25, v91);
  sub_2685BA80C(v90, v41);
  v65 = sub_268689764();
  if (v65)
  {
    v66 = sub_268689794();
    if (__OFSUB__(v25, v66))
    {
      goto LABEL_102;
    }

    v65 += v25 - v66;
  }

  sub_268689784();
  sub_268612934(v65, v90, v89, &v96);
  sub_2685B593C(v90, v89);
  sub_2685B593C(v25, v91);
  sub_2685B593C(v25, v91);

  sub_2685B593C(v90, v89);

  v67 = v96;
LABEL_82:
  v7 = v88;
  v20 = 0;
  if (v67)
  {
    goto LABEL_6;
  }

LABEL_93:
  v77 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t _s20SiriOntologyProtobuf07Google_C6_ValueV10OneOf_KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v27[0] = *a1;
  v27[1] = v3;
  v27[2] = v4;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  if (v5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = (v4 >> 60) & 3 | v10;
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (v9)
      {
        v19 = 4;
      }

      else
      {
        v19 = 0;
      }

      if (((v8 >> 60) & 3 | v19) == 3)
      {
        sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
        v20 = v6 ^ v2 ^ 1;
        return v20 & 1;
      }

LABEL_55:
      sub_2685D10C8(v6, v7, v8, v9);
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      goto LABEL_56;
    }

    if (v11 == 4)
    {
      if (v9)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if (((v8 >> 60) & 3 | v13) == 4)
      {
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        if (sub_268681448(v2, v6))
        {
          sub_2685BA80C(v3, v4);
          sub_2685BA80C(v7, v8);
          v14 = sub_2686131DC(v3, v4, v7, v8);
          sub_2685B593C(v7, v8);
          v15 = v3;
          v16 = v4;
          goto LABEL_49;
        }

        goto LABEL_58;
      }

      v23 = v3;
      v24 = v4;
    }

    else
    {
      if (v9)
      {
        v22 = 4;
      }

      else
      {
        v22 = 0;
      }

      if (((v8 >> 60) & 3 | v22) == 5)
      {
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        sub_2685D10C8(v6, v7, v8, v9);
        sub_2685D10C8(v2, v3, v4, v5);
        if (sub_26860EC6C(v2, v6))
        {
          sub_2685BA80C(v3, v4 & 0xCFFFFFFFFFFFFFFFLL);
          sub_2685BA80C(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          v14 = sub_2686131DC(v3, v4 & 0xCFFFFFFFFFFFFFFFLL, v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          sub_2685B593C(v7, v8 & 0xCFFFFFFFFFFFFFFFLL);
          v16 = v4 & 0xCFFFFFFFFFFFFFFFLL;
          v15 = v3;
LABEL_49:
          sub_2685B593C(v15, v16);
          sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
          sub_2685D1198(v6, v7, v8, v9);
          sub_2685D1198(v2, v3, v4, v5);
          if ((v14 & 1) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_61;
        }

LABEL_58:
        sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
        sub_2685D1198(v6, v7, v8, v9);
        sub_2685D1198(v2, v3, v4, v5);
        goto LABEL_56;
      }

      v24 = v4 & 0xCFFFFFFFFFFFFFFFLL;
      v23 = v3;
    }

    sub_2685BA80C(v23, v24);
    goto LABEL_55;
  }

  if (!v11)
  {
    if (v9)
    {
      v17 = 4;
    }

    else
    {
      v17 = 0;
    }

    if (!((v8 >> 60) & 3 | v17))
    {
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      if (v3)
      {
        v18 = 0;
      }

      else
      {
        v18 = v2;
      }

      if (v7)
      {
        if (!v18)
        {
          goto LABEL_61;
        }
      }

      else if (v18 == v6)
      {
        goto LABEL_61;
      }

LABEL_56:
      v20 = 0;
      return v20 & 1;
    }

    goto LABEL_55;
  }

  if (v11 == 1)
  {
    if (v9)
    {
      v12 = 4;
    }

    else
    {
      v12 = 0;
    }

    if (((v8 >> 60) & 3 | v12) == 1)
    {
      sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
      if (*&v2 != *&v6)
      {
        goto LABEL_56;
      }

LABEL_61:
      v20 = 1;
      return v20 & 1;
    }

    goto LABEL_55;
  }

  if (v9)
  {
    v21 = 4;
  }

  else
  {
    v21 = 0;
  }

  if (((v8 >> 60) & 3 | v21) != 2)
  {

    goto LABEL_55;
  }

  if (v2 == v6 && v3 == v7)
  {
    sub_2685D10C8(v2, v3, v8, v9);
    sub_2685D10C8(v2, v3, v4, v5);
    sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
    v20 = 1;
    return v20 & 1;
  }

  v26 = sub_268689E14();
  sub_2685D10C8(v6, v7, v8, v9);
  sub_2685D10C8(v2, v3, v4, v5);
  sub_2685B2E64(v27, &qword_28028DC88, qword_2686932F8);
  return v26 & 1;
}

uint64_t _s20SiriOntologyProtobuf07Google_C6_ValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 != v7)
  {
    v8 = a1[2];

    v9 = sub_268680770(v4, v7);

    if (!v9)
    {
      return 0;
    }
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v5, v6);
  v10 = sub_2686131DC(v2, v3, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v2, v3);
  return v10 & 1;
}

unint64_t sub_268682404()
{
  result = qword_28028DA68;
  if (!qword_28028DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA68);
  }

  return result;
}

unint64_t sub_268682484()
{
  result = qword_28028DA70;
  if (!qword_28028DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA70);
  }

  return result;
}

unint64_t sub_2686824D8()
{
  result = qword_28028DA78;
  if (!qword_28028DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA78);
  }

  return result;
}

unint64_t sub_268682530()
{
  result = qword_28028DA80;
  if (!qword_28028DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA80);
  }

  return result;
}

unint64_t sub_2686825C8(uint64_t a1)
{
  result = sub_2686825F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2686825F0()
{
  result = qword_28028DA98;
  if (!qword_28028DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DA98);
  }

  return result;
}

unint64_t sub_268682670()
{
  result = qword_28028DAA0;
  if (!qword_28028DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAA0);
  }

  return result;
}

unint64_t sub_2686826C8()
{
  result = qword_28028DAA8;
  if (!qword_28028DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAA8);
  }

  return result;
}

unint64_t sub_26868271C(uint64_t a1)
{
  result = sub_268682744();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268682744()
{
  result = qword_28028DAB0;
  if (!qword_28028DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAB0);
  }

  return result;
}

unint64_t sub_2686827C8()
{
  result = qword_28028DAB8;
  if (!qword_28028DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAB8);
  }

  return result;
}

unint64_t sub_26868281C(uint64_t a1)
{
  result = sub_268682844();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_268682844()
{
  result = qword_28028DAC0;
  if (!qword_28028DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAC0);
  }

  return result;
}

uint64_t sub_2686828C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268682900()
{
  result = qword_28028DAC8;
  if (!qword_28028DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAC8);
  }

  return result;
}

unint64_t sub_268682958()
{
  result = qword_28028DAD0;
  if (!qword_28028DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DAD0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_268682A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FB && *(a1 + 25))
  {
    return (*a1 + 1019);
  }

  v3 = ((*(a1 + 16) >> 60) & 3 | (4 * *(a1 + 24))) ^ 0x3FF;
  if (v3 >= 0x3FA)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_268682A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1019;
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 3) << 60;
      *(result + 24) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_268682AC0(uint64_t result, char a2)
{
  *(result + 16) = *(result + 16) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 24) = (a2 & 4) != 0;
  return result;
}

uint64_t objectdestroyTm()
{
  sub_2685B593C(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_48Tm()
{
  v1 = v0[3];

  sub_2685B593C(v0[4], v0[5]);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_72Tm(uint64_t a1)
{
  v3 = v1[2];

  sub_2685B593C(v1[3], v1[4]);
  v4 = v1[5];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_100Tm()
{
  sub_2685B593C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 45, 7);
}

uint64_t objectdestroy_117Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  sub_2685B593C(v0[6], v0[7]);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_268682FC8()
{
  result = qword_28028DC80;
  if (!qword_28028DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC80);
  }

  return result;
}

double Google_Protobuf_DoubleValue.init(floatLiteral:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26868305C()
{
  v1 = sub_2686899A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  sub_26863183C(*v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v4 = sub_268689974();
  v6 = v5;

  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_268683164@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

void sub_268683194()
{
  v2 = sub_2685BD964();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_2685BD298(), !v1))
  {
    *v0 = v3;
  }
}

double Google_Protobuf_FloatValue.init(floatLiteral:)@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_268683208()
{
  v1 = sub_2686899A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  sub_2686317B0(*v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v4 = sub_268689974();
  v6 = v5;

  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_268683310@<D0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

void sub_268683340()
{
  v2 = sub_2685BD964();
  v3 = 0;
  if ((v2 & 1) != 0 || (sub_2685BCCA0(), !v1))
  {
    *v0 = v3;
  }
}

double Google_Protobuf_Int64Value.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Int64Value.init(integerLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2686833B4()
{
  v1 = sub_2686899A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  sub_268631A50(*v0);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v4 = sub_268689974();
  v6 = v5;

  if (v6)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683500()
{
  v1 = sub_2686899A4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = *v0;
  v5 = sub_2685B3F48(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_2685B3F48((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v5[v7 + 32] = 34;
  v15 = v5;
  sub_2686328AC(v4);
  v8 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
  }

  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_2685B3F48((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v8[v10 + 32] = 34;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v11 = sub_268689974();
  v13 = v12;

  if (v13)
  {

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (sub_2685BD964())
  {
    result = 0;
  }

  else
  {
    result = a4();
    if (v5)
    {
      return result;
    }
  }

  *v4 = result;
  return result;
}

double Google_Protobuf_Int32Value.init(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_Int32Value.init(integerLiteral:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2686837E8()
{
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_2685BC8CC();
  if (!v1)
  {
    if (result == result)
    {
      goto LABEL_3;
    }

    sub_2685BD910();
    swift_allocError();
    *v3 = xmmword_26868A590;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2686838C8()
{
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v0 = result;
    return result;
  }

  result = sub_2685BC45C();
  if (!v1)
  {
    if (!HIDWORD(result))
    {
      goto LABEL_3;
    }

    sub_2685BD910();
    swift_allocError();
    *v3 = xmmword_26868A590;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_BoolValue.init(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double Google_Protobuf_BoolValue.init(BOOLeanLiteral:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double sub_268683984@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26868399C()
{
  if (*v0)
  {
    result = 1702195828;
  }

  else
  {
    result = 0x65736C6166;
  }

  *v0;
  return result;
}

uint64_t sub_2686839CC(uint64_t a1)
{
  v3 = v1;
  if (sub_2685BD964())
  {
    result = 0;
LABEL_3:
    *v3 = result & 1;
    return result;
  }

  if (*(a1 + 80))
  {
    result = sub_2685BDAD0();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = sub_2685BD9D4();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  return result;
}

double Google_Protobuf_StringValue.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

double Google_Protobuf_StringValue.init(stringLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = xmmword_26868A5E0;
  return result;
}

void sub_268683AF8()
{
  v2 = v0;
  if (sub_2685BD964())
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    sub_2685BC49C();
    if (v1)
    {
      return;
    }

    v3 = v5;
    v4 = v6;
  }

  v7 = v2[1];

  *v2 = v3;
  v2[1] = v4;
}

uint64_t Google_Protobuf_BytesValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = xmmword_26868A5E0;
  result = sub_2685B593C(0, 0xC000000000000000);
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

unint64_t sub_268683C44()
{
  result = qword_28028DC90;
  if (!qword_28028DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC90);
  }

  return result;
}

unint64_t sub_268683C9C()
{
  result = qword_28028DC98;
  if (!qword_28028DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DC98);
  }

  return result;
}

uint64_t sub_268683CF4(uint64_t a1, void (*a2)(void, void))
{
  v4 = sub_2686899A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  a2(*v2, v2[1]);

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v7 = sub_268689974();
  v9 = v8;

  if (v9)
  {

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_268683E04(uint64_t *a1)
{
  v3 = v1;
  v6 = a1 + 2;
  v5 = a1[2];
  v7 = a1[1];
  if (v5 != v7)
  {
    v8 = *a1;
    while (1)
    {
      v9 = *(v8 + v5);
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100002600;
      if (v10 || v11 == 0)
      {
        break;
      }

      *v6 = ++v5;
      if (v7 == v5)
      {
        goto LABEL_8;
      }
    }

    if (v7 != v5 && *(*a1 + v5) == 110 && (sub_2685BD87C(&unk_287928360) & 1) != 0)
    {
      v16 = 0;
      v17 = 0xC000000000000000;
      goto LABEL_12;
    }
  }

LABEL_8:
  sub_2685BBB94();
  if (a1[2] == v7)
  {
    sub_2685BD910();
    swift_allocError();
    *v13 = xmmword_26868A580;
    return swift_willThrow();
  }

  result = sub_2685BA9B8(*a1, v7, v6, v7);
  if (!v2)
  {
    v16 = result;
    v17 = v15;
LABEL_12:
    result = sub_2685B593C(*v3, *(v3 + 8));
    *v3 = v16;
    *(v3 + 8) = v17;
  }

  return result;
}

uint64_t sub_26868413C(unsigned int a1)
{
  v1 = 1;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  if (a1 >> 28)
  {
    v4 = 5;
  }

  if (a1 >= 0x200000)
  {
    v3 = v4;
  }

  if (a1 >= 0x4000)
  {
    v2 = v3;
  }

  if (a1 >= 0x80)
  {
    v1 = v2;
  }

  if ((a1 & 0x80000000) == 0)
  {
    return v1;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_268684180(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    return 10;
  }

  if (a1 >> 35)
  {
    if (!(a1 >> 49))
    {
      result = 6;
      if (a1 >> 42)
      {
        return ++result;
      }

      return result;
    }

    v2 = a1 >> 28;
    result = 8;
  }

  else
  {
    v2 = a1;
    if (a1 < 0x200000)
    {
      result = 2;
      if (v2 < 0x4000)
      {
        return result;
      }

      return ++result;
    }

    result = 4;
  }

  if (v2 >> 28)
  {
    return ++result;
  }

  return result;
}

uint64_t BinaryDelimited.Error.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

uint64_t static BinaryDelimited.serialize(message:to:partial:)(void *a1, void *a2, char a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = Message.serializedData(partial:)(a3, v6, v7);
  if (!v3)
  {
    v10 = result;
    v11 = v9;
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_16;
      }

      v16 = *(result + 16);
      v15 = *(result + 24);
      v17 = v15 - v16;
      if (!__OFSUB__(v15, v16))
      {
LABEL_11:
        if ((v17 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v14 = sub_268684180(v17);
        if (v12 != 2)
        {
          if (__OFSUB__(HIDWORD(v10), v10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v13 = HIDWORD(v10) - v10;
LABEL_19:
          v20 = (v14 + v13);
          if (!__OFADD__(v14, v13))
          {
            v49 = sub_2685B5DAC(v14 + v13);
            v50 = v21;
            sub_2685BA80C(v10, v11);
            sub_26865D790(&v49, v10, v11);
            v22 = v49;
            v23 = v50;
            v24 = v50 >> 62;
            if ((v50 >> 62) > 1)
            {
              if (v24 != 2)
              {
                goto LABEL_46;
              }

              v45 = a2;
              v27 = *(v49 + 16);
              v26 = *(v49 + 24);
              v28 = sub_268689764();
              if (v28)
              {
                v29 = sub_268689794();
                if (__OFSUB__(v27, v29))
                {
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v28 += v27 - v29;
              }

              v30 = __OFSUB__(v26, v27);
              v31 = v26 - v27;
              if (!v30)
              {
                v32 = sub_268689784();
                if (v28)
                {
                  v33 = v32 >= v31 ? v31 : v32;
                  if (v33 >= 1)
                  {
                    a2 = v45;
LABEL_43:
                    v25 = [a2 write:v28 maxLength:v20];
LABEL_44:
                    if (v25 == v20)
                    {
                      goto LABEL_56;
                    }

LABEL_49:
                    if (v25 == -1)
                    {
                      if ([a2 streamError])
                      {
                        swift_willThrow();
                        sub_2685B593C(v10, v11);
                        v40 = v22;
                        v41 = v23;
LABEL_55:
                        result = sub_2685B593C(v40, v41);
                        goto LABEL_57;
                      }

                      sub_26868503C();
                      swift_allocError();
                      *v44 = 0;
LABEL_54:
                      swift_willThrow();
                      sub_2685B593C(v10, v11);
                      v40 = v49;
                      v41 = v50;
                      goto LABEL_55;
                    }

LABEL_53:
                    sub_26868503C();
                    swift_allocError();
                    *v42 = 1;
                    goto LABEL_54;
                  }
                }

LABEL_46:
                if (!v20)
                {
                  goto LABEL_56;
                }

                goto LABEL_53;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (!v24)
            {
              v46 = v49;
              v47 = v50;
              v48 = WORD2(v50);
              if ((v50 & 0xFF000000000000) != 0)
              {
                v25 = [a2 write:&v46 maxLength:v20];
                goto LABEL_44;
              }

              v25 = 0;
              if (v20)
              {
                goto LABEL_49;
              }

LABEL_56:
              sub_2685B593C(v10, v11);
              result = sub_2685B593C(v22, v23);
              goto LABEL_57;
            }

            v34 = (v49 >> 32) - v49;
            if (v49 >> 32 >= v49)
            {
              v35 = sub_268689764();
              if (!v35)
              {
                sub_268689784();
                if (v20)
                {
                  goto LABEL_53;
                }

                goto LABEL_56;
              }

              v36 = v35;
              v37 = sub_268689794();
              if (!__OFSUB__(v22, v37))
              {
                v28 = v22 - v37 + v36;
                v38 = sub_268689784();
                if (v28)
                {
                  v39 = v38 >= v34 ? (v22 >> 32) - v22 : v38;
                  if (v39 >= 1)
                  {
                    goto LABEL_43;
                  }
                }

                goto LABEL_46;
              }

LABEL_66:
              __break(1u);
            }

            goto LABEL_62;
          }

          goto LABEL_60;
        }

        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        v13 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
          goto LABEL_19;
        }

        __break(1u);
LABEL_16:
        v14 = sub_268684180(0);
        v13 = 0;
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = BYTE6(v9);
      v14 = sub_268684180(BYTE6(v9));
      goto LABEL_19;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v17 = HIDWORD(v10) - v10;
    goto LABEL_11;
  }

LABEL_57:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static BinaryDelimited.parse<A>(messageType:from:extensions:partial:options:)@<X0>(void *a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v14 = *a4;
  v15 = *(a4 + 8);
  (*(a6 + 16))(a5, a6);
  v17 = v14;
  v18 = v15;
  result = static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(a7, a1, a2, a3, &v17, a5, a6);
  if (v7)
  {
    return (*(*(a5 - 8) + 8))(a7, a5);
  }

  return result;
}

uint64_t static BinaryDelimited.merge<A>(into:from:extensions:partial:options:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  v14 = *(a5 + 8);
  result = sub_268684910(a2);
  if (!v7)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else if (result)
    {
      v16 = result;
      v27 = sub_2685B5DAC(result);
      v28 = v17;
      v29 = 0;
      v18 = a2;
      sub_268684C30(&v27, &v29, v18, v16);
      if (v29 == v16)
      {
        v19 = v27;
        v20 = v28;
        v25 = v13;
        v26 = v14;
        Message.merge(serializedData:extensions:partial:options:)(v27, v28, a3, a4 & 1, &v25, a6, a7);
        v21 = v19;
        v22 = v20;
      }

      else
      {
        if (v29 == -1)
        {
          if (![v18 streamError])
          {
            sub_26868503C();
            swift_allocError();
            *v24 = 0;
          }
        }

        else
        {
          sub_26868503C();
          swift_allocError();
          *v23 = 1;
        }

        swift_willThrow();
        v21 = v27;
        v22 = v28;
      }

      return sub_2685B593C(v21, v22);
    }
  }

  return result;
}

uint64_t sub_268684910(void *a1)
{
  v3 = 1;
  v4 = swift_slowAlloc();
  v5 = [a1 read:v4 maxLength:1];
  if (v5 == -1)
  {
    goto LABEL_33;
  }

  if (v5 != 1)
  {
    goto LABEL_35;
  }

  v1 = *v4 & 0x7F;
  if ((*v4 & 0x80) != 0)
  {
    v3 = 1;
    v6 = [a1 read:v4 maxLength:1];
    if (v6 != -1)
    {
      if (v6 != 1)
      {
        goto LABEL_35;
      }

      v7 = *v4;
      v1 |= (v7 & 0x7F) << 7;
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      v3 = 1;
      v8 = [a1 read:v4 maxLength:1];
      if (v8 != -1)
      {
        if (v8 != 1)
        {
          goto LABEL_35;
        }

        v9 = *v4;
        v1 |= (v9 & 0x7F) << 14;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        v3 = 1;
        v10 = [a1 read:v4 maxLength:1];
        if (v10 != -1)
        {
          if (v10 != 1)
          {
            goto LABEL_35;
          }

          v11 = *v4;
          v1 |= (v11 & 0x7F) << 21;
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

          v3 = 1;
          v12 = [a1 read:v4 maxLength:1];
          if (v12 != -1)
          {
            if (v12 != 1)
            {
              goto LABEL_35;
            }

            v13 = *v4;
            v1 |= (v13 & 0x7F) << 28;
            if ((v13 & 0x80000000) == 0)
            {
              goto LABEL_4;
            }

            v3 = 1;
            v14 = [a1 read:v4 maxLength:1];
            if (v14 != -1)
            {
              if (v14 != 1)
              {
                goto LABEL_35;
              }

              v15 = *v4;
              v1 |= (v15 & 0x7F) << 35;
              if ((v15 & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              v3 = 1;
              v16 = [a1 read:v4 maxLength:1];
              if (v16 != -1)
              {
                if (v16 != 1)
                {
                  goto LABEL_35;
                }

                v17 = *v4;
                v1 |= (v17 & 0x7F) << 42;
                if ((v17 & 0x80000000) == 0)
                {
                  goto LABEL_4;
                }

                v3 = 1;
                v18 = [a1 read:v4 maxLength:1];
                if (v18 != -1)
                {
                  if (v18 != 1)
                  {
                    goto LABEL_35;
                  }

                  v19 = *v4;
                  v1 |= (v19 & 0x7F) << 49;
                  if ((v19 & 0x80000000) == 0)
                  {
                    goto LABEL_4;
                  }

                  v3 = 1;
                  v20 = [a1 read:v4 maxLength:1];
                  if (v20 != -1)
                  {
                    if (v20 != 1)
                    {
                      goto LABEL_35;
                    }

                    v21 = *v4;
                    v1 |= (v21 & 0x7F) << 56;
                    if ((v21 & 0x80000000) == 0)
                    {
                      goto LABEL_4;
                    }

                    v3 = 1;
                    v22 = [a1 read:v4 maxLength:1];
                    if (v22 != -1)
                    {
                      if (v22 == 1)
                      {
                        v23 = *v4;
                        if ((v23 & 0x80) == 0)
                        {
                          v1 |= v23 << 63;
                          goto LABEL_4;
                        }

                        sub_26861C77C();
                        swift_allocError();
                        *v26 = 3;
LABEL_36:
                        swift_willThrow();
                        MEMORY[0x26D61DE30](v4, -1, -1);
                        return v1;
                      }

LABEL_35:
                      sub_26868503C();
                      swift_allocError();
                      *v24 = v3;
                      goto LABEL_36;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_33:
    if ([a1 streamError])
    {
      goto LABEL_36;
    }

    v3 = 0;
    goto LABEL_35;
  }

LABEL_4:
  MEMORY[0x26D61DE30](v4, -1, -1);
  return v1;
}

void sub_268684C30(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {

LABEL_33:
      v41 = *MEMORY[0x277D85DE8];
      return;
    }

    v12 = a3;

    sub_2685B593C(v6, v5);
    v47 = v6;
    v48 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_26868A5E0;
    sub_2685B593C(0, 0xC000000000000000);
    sub_2686897D4();
    v14 = v47;
    v13 = v48;
    v15 = *(v47 + 16);
    v16 = *(v47 + 24);
    v17 = sub_268689764();
    if (!v17)
    {

      __break(1u);
      goto LABEL_41;
    }

    v18 = v17;
    v19 = sub_268689794();
    v20 = v15 - v19;
    if (!__OFSUB__(v15, v19))
    {
      v21 = __OFSUB__(v16, v15);
      v22 = v16 - v15;
      if (!v21)
      {
        v23 = sub_268689784();
        if (v23 >= v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v23;
        }

        if (v24 > 0)
        {
          *a2 = [v12 read:v18 + v20 maxLength:a4];
        }

        *a1 = v14;
        a1[1] = v13 | 0x8000000000000000;
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v7)
  {
    v42 = a3;
    sub_2685B593C(v6, v5);
    v47 = v6;
    LOWORD(v48) = v5;
    BYTE2(v48) = BYTE2(v5);
    BYTE3(v48) = BYTE3(v5);
    BYTE4(v48) = BYTE4(v5);
    BYTE5(v48) = BYTE5(v5);
    BYTE6(v48) = BYTE6(v5);
    if ((v5 & 0xFF000000000000) != 0)
    {
      v8 = v42;
      v9 = [v42 read:&v47 maxLength:a4];
      v10 = v47;
      *a2 = v9;
      v11 = v48 | ((WORD2(v48) | (BYTE6(v48) << 16)) << 32);
    }

    else
    {
      v10 = v47;
      v11 = v48 | ((WORD2(v48) | (BYTE6(v48) << 16)) << 32);
      v8 = v42;
    }

    *a1 = v10;
    a1[1] = v11;
    goto LABEL_33;
  }

  v25 = v5 & 0x3FFFFFFFFFFFFFFFLL;
  v26 = a3;
  sub_2685BA80C(v6, v5);
  sub_2685B593C(v6, v5);
  *a1 = xmmword_26868A5E0;
  sub_2685B593C(0, 0xC000000000000000);
  v27 = v26;
  v28 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v28 < v6)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (sub_268689764() && __OFSUB__(v6, sub_268689794()))
    {
LABEL_39:
      __break(1u);
    }

    v29 = sub_2686897B4();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_268689744();

    v25 = v32;
  }

  v33 = v28 < v6;
  v34 = v28 - v6;
  if (v33)
  {
    goto LABEL_35;
  }

  v35 = sub_268689764();
  if (v35)
  {
    v36 = v35;
    v37 = sub_268689794();
    v38 = v6 - v37;
    if (!__OFSUB__(v6, v37))
    {
      v39 = sub_268689784();
      if (v39 >= v34)
      {
        v40 = v34;
      }

      else
      {
        v40 = v39;
      }

      if (v40 >= 1)
      {
        *a2 = [v27 read:v36 + v38 maxLength:a4];
      }

      *a1 = v6;
      a1[1] = v25 | 0x4000000000000000;
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

unint64_t sub_26868503C()
{
  result = qword_28028DCA0;
  if (!qword_28028DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DCA0);
  }

  return result;
}

unint64_t sub_268685094()
{
  result = qword_28028DCA8;
  if (!qword_28028DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028DCA8);
  }

  return result;
}

SiriOntologyProtobuf::JSONDecodingOptions __swiftcall JSONDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

uint64_t _NameMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for InternPool();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v230 = v3;
  *(v3 + 16) = MEMORY[0x277D84F90];
  v236 = sub_268688CB0(v4);
  v5 = sub_268688E38(v4);
  v6 = sub_268688E38(v4);
  v232 = *(a1 + 16);
  if (!v232)
  {
LABEL_158:

    *a2 = v230;
    a2[1] = v236;
    a2[2] = v5;
    a2[3] = v6;
    return result;
  }

  v7 = 0;
  v231 = a1 + 32;
  v228 = a1;
  while (1)
  {
    if (v7 >= *(a1 + 16))
    {
      goto LABEL_166;
    }

    v8 = v231 + 56 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = *(v8 + 24);
    v12 = v11 >> 62;
    v240 = *v8;
    v241 = v10;
    v235 = v7;
    if ((v11 >> 62) <= 1)
    {
      if (v12)
      {
        if (v11)
        {
          goto LABEL_169;
        }

        if (!v10)
        {
          goto LABEL_174;
        }

        v253[0] = *(v8 + 8);
        v253[1] = v10;
        v254 = v11;
        v255 = 1;
        sub_268689D04();
        v34 = sub_2686864A8();
        v35 = v11;
        v37 = v36;

        v38 = sub_2686865D4(v34, v37);
        v40 = v39;

        v251[0] = v38;
        v251[1] = v40;
        v251[2] = v34;
        v251[3] = v37;
        v252 = 0;
        LOBYTE(v249) = 1;
        *&v256 = v38;
        *(&v256 + 1) = v40;
        v257 = v34;
        v258 = v37;
        v259 = 0;
        v260 = v247;
        v261 = WORD2(v247);
        v262 = v241;
        v263 = v241;
        v264 = v35;
        v265 = 1;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = v236;
        sub_268687BF4(&v256, v9, isUniquelyReferenced_nonNull_native);
        v236 = v243;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = v5;
        sub_268687A84(v9, v253, v42);
        v5 = v243;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = v6;
        sub_268687A84(v9, v253, v43);
        v44 = v243;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = v44;
        sub_268687A84(v9, v251, v45);

        v6 = v243;
        goto LABEL_4;
      }

      if (v11)
      {
        goto LABEL_170;
      }

      v13 = *(v8 + 24);
      v14 = v10;
      if (!v10)
      {
        goto LABEL_172;
      }

      v248 = 1;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v236;
      v16 = sub_2685B351C(v9);
      v18 = *(v236 + 16);
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_176;
      }

      v22 = v17;
      if (*(v236 + 24) >= v21)
      {
        if ((v15 & 1) == 0)
        {
          v198 = v16;
          sub_268688518();
          v16 = v198;
        }
      }

      else
      {
        sub_268686CE0(v21, v15);
        v16 = sub_2685B351C(v9);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_197;
        }
      }

      v55 = v13 | 0x100;
      if (v22)
      {
        v56 = a1;
        v236 = v247;
        v57 = v247[7] + 80 * v16;
        v243 = *v57;
        v59 = *(v57 + 32);
        v58 = *(v57 + 48);
        v60 = *(v57 + 16);
        *&v246[10] = *(v57 + 58);
        v245 = v59;
        *v246 = v58;
        v244 = v60;
        *v57 = v241;
        *(v57 + 16) = v241;
        *(v57 + 32) = v55;
        *(v57 + 38) = v250;
        *(v57 + 34) = v249;
        *(v57 + 40) = v241;
        *(v57 + 56) = v241;
        *(v57 + 72) = v13;
        *(v57 + 73) = v248;
        sub_268688FC4(&v243);
      }

      else
      {
        v66 = v247;
        v247[(v16 >> 6) + 8] |= 1 << v16;
        *(v66[6] + 8 * v16) = v9;
        v67 = v66[7] + 80 * v16;
        *v67 = v241;
        *(v67 + 16) = v241;
        *(v67 + 32) = v55;
        *(v67 + 34) = v249;
        *(v67 + 38) = v250;
        *(v67 + 40) = v241;
        *(v67 + 56) = v241;
        *(v67 + 72) = v13;
        *(v67 + 73) = v248;
        v68 = v66[2];
        v20 = __OFADD__(v68, 1);
        v69 = v68 + 1;
        if (v20)
        {
          goto LABEL_186;
        }

        v56 = a1;
        v236 = v66;
        v66[2] = v69;
      }

      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v243 = v5;
      v71 = sub_2685C32C0(v14, *(&v241 + 1));
      v73 = *(v5 + 16);
      v74 = (v72 & 1) == 0;
      v20 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v20)
      {
        goto LABEL_179;
      }

      v76 = v72;
      if (*(v5 + 24) >= v75)
      {
        v79 = v241;
        if ((v70 & 1) == 0)
        {
          v202 = v71;
          sub_268688394();
          v79 = v241;
          v71 = v202;
          a1 = v228;
          v78 = v240;
          v121 = v243;
          if (v76)
          {
            goto LABEL_68;
          }

          goto LABEL_136;
        }

        v78 = v240;
      }

      else
      {
        sub_2686869B4(v75, v70);
        v71 = sub_2685C32C0(v14, *(&v241 + 1));
        if ((v76 & 1) != (v77 & 1))
        {
          goto LABEL_196;
        }

        v78 = v240;
        v79 = v241;
      }

      a1 = v56;
      v121 = v243;
      if (v76)
      {
LABEL_68:
        v5 = v121;
        *(v121[7] + 8 * v71) = v78;
LABEL_138:
        v206 = swift_isUniquelyReferenced_nonNull_native();
        *&v243 = v6;
        v207 = sub_2685C32C0(v14, *(&v241 + 1));
        v209 = v6[2];
        v210 = (v208 & 1) == 0;
        v20 = __OFADD__(v209, v210);
        v211 = v209 + v210;
        if (v20)
        {
          goto LABEL_183;
        }

        v212 = v208;
        if (v6[3] >= v211)
        {
          v215 = v241;
          if ((v206 & 1) == 0)
          {
            v223 = v207;
            sub_268688394();
            v215 = v241;
            v207 = v223;
          }

          v214 = v13;
          v6 = v243;
          if ((v212 & 1) == 0)
          {
            goto LABEL_146;
          }
        }

        else
        {
          sub_2686869B4(v211, v206);
          v207 = sub_2685C32C0(v14, *(&v241 + 1));
          if ((v212 & 1) != (v213 & 1))
          {
            goto LABEL_196;
          }

          v214 = v13;
          v215 = v241;
          v6 = v243;
          if ((v212 & 1) == 0)
          {
LABEL_146:
            v6[(v207 >> 6) + 8] |= 1 << v207;
            v216 = v6[6] + 40 * v207;
            *v216 = v215;
            *(v216 + 16) = v215;
            *(v216 + 32) = v214;
            *(v216 + 33) = 1;
            *(v6[7] + 8 * v207) = v78;
            v217 = v6[2];
            v20 = __OFADD__(v217, 1);
            v197 = v217 + 1;
            if (v20)
            {
              goto LABEL_193;
            }

LABEL_147:
            v6[2] = v197;
            goto LABEL_4;
          }
        }

        *(v6[7] + 8 * v207) = v78;
        goto LABEL_4;
      }

LABEL_136:
      v121[(v71 >> 6) + 8] |= 1 << v71;
      v203 = v121[6] + 40 * v71;
      *v203 = v79;
      *(v203 + 16) = v79;
      *(v203 + 32) = v13;
      *(v203 + 33) = 1;
      *(v121[7] + 8 * v71) = v78;
      v204 = v121[2];
      v20 = __OFADD__(v204, 1);
      v205 = v204 + 1;
      if (v20)
      {
        goto LABEL_189;
      }

      v5 = v121;
      v121[2] = v205;
      goto LABEL_138;
    }

    v234 = *(v8 + 48);
    if (v12 != 2)
    {
      break;
    }

    v24 = *(v8 + 32);
    if (!v24)
    {
      goto LABEL_168;
    }

    if ((v234 | v11))
    {
      goto LABEL_173;
    }

    v25 = v10;
    if (!v10)
    {
      goto LABEL_177;
    }

    v238 = *(v8 + 32);
    v248 = 1;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v247 = v236;
    v27 = sub_2685B351C(v9);
    v29 = *(v236 + 16);
    v30 = (v28 & 1) == 0;
    v20 = __OFADD__(v29, v30);
    v31 = v29 + v30;
    if (v20)
    {
      goto LABEL_178;
    }

    v32 = v28;
    if (*(v236 + 24) >= v31)
    {
      if ((v26 & 1) == 0)
      {
        v201 = v27;
        sub_268688518();
        v27 = v201;
        a1 = v228;
      }
    }

    else
    {
      sub_268686CE0(v31, v26);
      v27 = sub_2685B351C(v9);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_197;
      }
    }

    v97 = v234 | 0x100;
    if (v32)
    {
      v98 = a1;
      v236 = v247;
      v99 = v247[7] + 80 * v27;
      v243 = *v99;
      v101 = *(v99 + 32);
      v100 = *(v99 + 48);
      v102 = *(v99 + 16);
      *&v246[10] = *(v99 + 58);
      v245 = v101;
      *v246 = v100;
      v244 = v102;
      *v99 = v238;
      *(v99 + 16) = v238;
      *(v99 + 32) = v97;
      *(v99 + 38) = v250;
      *(v99 + 34) = v249;
      *(v99 + 40) = v241;
      *(v99 + 56) = v241;
      *(v99 + 72) = v11;
      *(v99 + 73) = v248;
      sub_268688FC4(&v243);
    }

    else
    {
      v103 = v247;
      v247[(v27 >> 6) + 8] |= 1 << v27;
      *(v103[6] + 8 * v27) = v9;
      v104 = v103[7] + 80 * v27;
      *v104 = v238;
      *(v104 + 16) = v238;
      *(v104 + 32) = v97;
      *(v104 + 34) = v249;
      *(v104 + 38) = v250;
      *(v104 + 40) = v241;
      *(v104 + 56) = v241;
      *(v104 + 72) = v11;
      *(v104 + 73) = v248;
      v105 = v103[2];
      v20 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v20)
      {
        goto LABEL_188;
      }

      v98 = a1;
      v236 = v103;
      v103[2] = v106;
    }

    v107 = v5;
    v108 = swift_isUniquelyReferenced_nonNull_native();
    *&v243 = v107;
    v109 = sub_2685C32C0(v25, *(&v241 + 1));
    v111 = *(v107 + 16);
    v112 = (v110 & 1) == 0;
    v20 = __OFADD__(v111, v112);
    v113 = v111 + v112;
    if (v20)
    {
      goto LABEL_181;
    }

    v114 = v110;
    if (*(v107 + 24) >= v113)
    {
      v116 = v241;
      if (v108)
      {
        v117 = v243;
        if (v110)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v220 = v109;
        sub_268688394();
        v116 = v241;
        v109 = v220;
        v98 = v228;
        v117 = v243;
        if (v114)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      sub_2686869B4(v113, v108);
      v109 = sub_2685C32C0(v25, *(&v241 + 1));
      if ((v114 & 1) != (v115 & 1))
      {
        goto LABEL_196;
      }

      v116 = v241;
      v117 = v243;
      if (v114)
      {
LABEL_80:
        v5 = v117;
        *(v117[7] + 8 * v109) = v240;
        goto LABEL_81;
      }
    }

    v117[(v109 >> 6) + 8] |= 1 << v109;
    v118 = v117[6] + 40 * v109;
    *v118 = v116;
    *(v118 + 16) = v116;
    *(v118 + 32) = v11;
    *(v118 + 33) = 1;
    *(v117[7] + 8 * v109) = v240;
    v119 = v117[2];
    v20 = __OFADD__(v119, 1);
    v120 = v119 + 1;
    if (v20)
    {
      goto LABEL_191;
    }

    v5 = v117;
    v117[2] = v120;
LABEL_81:
    v134 = swift_isUniquelyReferenced_nonNull_native();
    *&v243 = v6;
    v135 = sub_2685C32C0(v25, *(&v241 + 1));
    v137 = v6[2];
    v138 = (v136 & 1) == 0;
    v20 = __OFADD__(v137, v138);
    v139 = v137 + v138;
    if (v20)
    {
      goto LABEL_184;
    }

    v140 = v136;
    if (v6[3] >= v139)
    {
      v142 = v241;
      if (v134)
      {
        v143 = v243;
        if ((v136 & 1) == 0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v224 = v135;
        sub_268688394();
        v142 = v241;
        v135 = v224;
        v143 = v243;
        if ((v140 & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      sub_2686869B4(v139, v134);
      v135 = sub_2685C32C0(v25, *(&v241 + 1));
      if ((v140 & 1) != (v141 & 1))
      {
        goto LABEL_196;
      }

      v142 = v241;
      v143 = v243;
      if ((v140 & 1) == 0)
      {
LABEL_85:
        v143[(v135 >> 6) + 8] |= 1 << v135;
        v144 = v143[6] + 40 * v135;
        *v144 = v142;
        *(v144 + 16) = v142;
        *(v144 + 32) = v11;
        *(v144 + 33) = 1;
        v145 = v240;
        *(v143[7] + 8 * v135) = v240;
        v146 = v143[2];
        v20 = __OFADD__(v146, 1);
        v147 = v146 + 1;
        if (v20)
        {
          goto LABEL_194;
        }

        v143[2] = v147;
        goto LABEL_123;
      }
    }

    v145 = v240;
    *(v143[7] + 8 * v135) = v240;
LABEL_123:
    v186 = swift_isUniquelyReferenced_nonNull_native();
    *&v243 = v143;
    v187 = sub_2685C32C0(v24, *(&v238 + 1));
    v189 = v143[2];
    v190 = (v188 & 1) == 0;
    v20 = __OFADD__(v189, v190);
    v191 = v189 + v190;
    if (v20)
    {
      goto LABEL_185;
    }

    v192 = v188;
    a1 = v98;
    if (v143[3] >= v191)
    {
      v194 = v238;
      if (v186)
      {
        v6 = v243;
        if ((v188 & 1) == 0)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v225 = v187;
        sub_268688394();
        v194 = v238;
        v187 = v225;
        v6 = v243;
        if ((v192 & 1) == 0)
        {
          goto LABEL_127;
        }
      }
    }

    else
    {
      sub_2686869B4(v191, v186);
      v187 = sub_2685C32C0(v24, *(&v238 + 1));
      if ((v192 & 1) != (v193 & 1))
      {
        goto LABEL_196;
      }

      v194 = v238;
      v6 = v243;
      if ((v192 & 1) == 0)
      {
LABEL_127:
        v6[(v187 >> 6) + 8] |= 1 << v187;
        v195 = v6[6] + 40 * v187;
        *v195 = v194;
        *(v195 + 16) = v194;
        *(v195 + 32) = v234;
        *(v195 + 33) = 1;
        *(v6[7] + 8 * v187) = v145;
        v196 = v6[2];
        v20 = __OFADD__(v196, 1);
        v197 = v196 + 1;
        if (v20)
        {
          goto LABEL_195;
        }

        goto LABEL_147;
      }
    }

    *(v6[7] + 8 * v187) = v145;
LABEL_4:
    v7 = v235 + 1;
    if (v235 + 1 == v232)
    {
      goto LABEL_158;
    }
  }

  if (v11)
  {
    goto LABEL_167;
  }

  if (!v10)
  {
    goto LABEL_171;
  }

  v46 = *(v8 + 32);
  v248 = 1;
  v233 = v10;
  sub_268688F94(v10, *(&v10 + 1), v11);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v247 = v236;
  v48 = sub_2685B351C(v9);
  v50 = *(v236 + 16);
  v51 = (v49 & 1) == 0;
  v20 = __OFADD__(v50, v51);
  v52 = v50 + v51;
  if (v20)
  {
    goto LABEL_175;
  }

  v53 = v49;
  if (*(v236 + 24) >= v52)
  {
    if ((v47 & 1) == 0)
    {
      v199 = v11;
      v200 = v48;
      sub_268688518();
      v48 = v200;
      v11 = v199;
    }
  }

  else
  {
    sub_268686CE0(v52, v47);
    v48 = sub_2685B351C(v9);
    if ((v53 & 1) != (v54 & 1))
    {
      goto LABEL_197;
    }
  }

  v61 = v11 | 0x100;
  if (v53)
  {
    v236 = v247;
    v62 = v247[7] + 80 * v48;
    v243 = *v62;
    v64 = *(v62 + 32);
    v63 = *(v62 + 48);
    v65 = *(v62 + 16);
    *&v246[10] = *(v62 + 58);
    v245 = v64;
    *v246 = v63;
    v244 = v65;
    *v62 = v241;
    *(v62 + 16) = v241;
    *(v62 + 32) = v61;
    *(v62 + 38) = v250;
    *(v62 + 34) = v249;
    *(v62 + 40) = v241;
    *(v62 + 56) = v241;
    *(v62 + 72) = v11;
    *(v62 + 73) = v248;
    sub_268688FC4(&v243);
  }

  else
  {
    v80 = v247;
    v247[(v48 >> 6) + 8] |= 1 << v48;
    *(v80[6] + 8 * v48) = v9;
    v81 = v80[7] + 80 * v48;
    *v81 = v241;
    *(v81 + 16) = v241;
    *(v81 + 32) = v61;
    *(v81 + 34) = v249;
    *(v81 + 38) = v250;
    *(v81 + 40) = v241;
    *(v81 + 56) = v241;
    *(v81 + 72) = v11;
    *(v81 + 73) = v248;
    v82 = v80[2];
    v20 = __OFADD__(v82, 1);
    v83 = v82 + 1;
    if (v20)
    {
      goto LABEL_187;
    }

    v236 = v80;
    v80[2] = v83;
  }

  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&v243 = v5;
  v85 = sub_2685C32C0(v233, *(&v233 + 1));
  v87 = *(v5 + 16);
  v88 = (v86 & 1) == 0;
  v20 = __OFADD__(v87, v88);
  v89 = v87 + v88;
  if (v20)
  {
    goto LABEL_180;
  }

  v90 = v86;
  if (*(v5 + 24) >= v89)
  {
    v92 = v241;
    if (v84)
    {
      v93 = v243;
      if ((v86 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v218 = v11;
      v219 = v85;
      sub_268688394();
      v92 = v241;
      v85 = v219;
      v11 = v218;
      v93 = v243;
      if ((v90 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    goto LABEL_71;
  }

  sub_2686869B4(v89, v84);
  v85 = sub_2685C32C0(v233, *(&v233 + 1));
  if ((v90 & 1) != (v91 & 1))
  {
    goto LABEL_196;
  }

  v92 = v241;
  v93 = v243;
  if (v90)
  {
LABEL_71:
    v5 = v93;
    *(v93[7] + 8 * v85) = v9;
    goto LABEL_72;
  }

LABEL_51:
  v93[(v85 >> 6) + 8] |= 1 << v85;
  v94 = v93[6] + 40 * v85;
  *v94 = v92;
  *(v94 + 16) = v92;
  *(v94 + 32) = v11;
  *(v94 + 33) = 1;
  *(v93[7] + 8 * v85) = v9;
  v95 = v93[2];
  v20 = __OFADD__(v95, 1);
  v96 = v95 + 1;
  if (v20)
  {
    goto LABEL_190;
  }

  v5 = v93;
  v93[2] = v96;
LABEL_72:
  v122 = swift_isUniquelyReferenced_nonNull_native();
  *&v243 = v6;
  v123 = sub_2685C32C0(v233, *(&v233 + 1));
  v125 = v6[2];
  v126 = (v124 & 1) == 0;
  v20 = __OFADD__(v125, v126);
  v127 = v125 + v126;
  if (v20)
  {
    goto LABEL_182;
  }

  v128 = v124;
  if (v6[3] >= v127)
  {
    v130 = v241;
    if (v122)
    {
      v6 = v243;
      if ((v124 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v221 = v11;
      v222 = v123;
      sub_268688394();
      v130 = v241;
      v123 = v222;
      v11 = v221;
      v6 = v243;
      if ((v128 & 1) == 0)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_89;
  }

  sub_2686869B4(v127, v122);
  v123 = sub_2685C32C0(v233, *(&v233 + 1));
  if ((v128 & 1) != (v129 & 1))
  {
    goto LABEL_196;
  }

  v130 = v241;
  v6 = v243;
  if (v128)
  {
LABEL_89:
    *(v6[7] + 8 * v123) = v9;
    goto LABEL_90;
  }

LABEL_76:
  v6[(v123 >> 6) + 8] |= 1 << v123;
  v131 = v6[6] + 40 * v123;
  *v131 = v130;
  *(v131 + 16) = v130;
  *(v131 + 32) = v11;
  *(v131 + 33) = 1;
  *(v6[7] + 8 * v123) = v9;
  v132 = v6[2];
  v20 = __OFADD__(v132, 1);
  v133 = v132 + 1;
  if (v20)
  {
    goto LABEL_192;
  }

  v6[2] = v133;
LABEL_90:
  v239 = *(v46 + 16);
  if (!v239)
  {
    v184 = *(&v233 + 1);
    v183 = v233;
    v185 = v11;
LABEL_134:
    sub_268688FAC(v183, v184, v185);
    a1 = v228;
    goto LABEL_4;
  }

  v229 = v11;
  v148 = 0;
  v149 = (v46 + 48);
  v237 = v46;
  while (2)
  {
    if (v148 < *(v46 + 16))
    {
      v150 = *v149;
      if (*v149)
      {
        goto LABEL_160;
      }

      v151 = *(v149 - 1);
      v152 = *(v149 - 2);
      if (!v152)
      {
        goto LABEL_161;
      }

      v242 = *(v149 - 1);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      *&v243 = v5;
      v155 = sub_2685C32C0(v152, *(&v242 + 1));
      v156 = *(v5 + 16);
      v157 = (v154 & 1) == 0;
      v158 = v156 + v157;
      if (__OFADD__(v156, v157))
      {
        goto LABEL_162;
      }

      v159 = v154;
      if (*(v5 + 24) >= v158)
      {
        v162 = v242;
        if ((v153 & 1) == 0)
        {
          sub_268688394();
          goto LABEL_101;
        }
      }

      else
      {
        sub_2686869B4(v158, v153);
        v160 = sub_2685C32C0(v152, *(&v242 + 1));
        if ((v159 & 1) != (v161 & 1))
        {
          goto LABEL_196;
        }

        v155 = v160;
LABEL_101:
        v162 = v242;
      }

      v163 = v243;
      if (v159)
      {
        v164 = v6;
        v165 = v243;
        v166 = v240;
        *(*(v243 + 56) + 8 * v155) = v240;
      }

      else
      {
        *(v243 + 8 * (v155 >> 6) + 64) |= 1 << v155;
        v167 = v163[6] + 40 * v155;
        *v167 = v162;
        *(v167 + 16) = v162;
        *(v167 + 32) = v150;
        *(v167 + 33) = 1;
        v166 = v240;
        *(v163[7] + 8 * v155) = v240;
        v168 = v163[2];
        v20 = __OFADD__(v168, 1);
        v169 = v168 + 1;
        if (v20)
        {
          goto LABEL_164;
        }

        v164 = v6;
        v165 = v163;
        v163[2] = v169;
      }

      v170 = swift_isUniquelyReferenced_nonNull_native();
      *&v243 = v164;
      v171 = sub_2685C32C0(v152, *(&v242 + 1));
      v173 = v164[2];
      v174 = (v172 & 1) == 0;
      v20 = __OFADD__(v173, v174);
      v175 = v173 + v174;
      if (v20)
      {
        goto LABEL_163;
      }

      v176 = v172;
      if (v164[3] >= v175)
      {
        v5 = v165;
        v178 = v242;
        if (v170)
        {
          v6 = v243;
          if ((v172 & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v182 = v171;
          sub_268688394();
          v178 = v242;
          v171 = v182;
          v6 = v243;
          if ((v176 & 1) == 0)
          {
            goto LABEL_114;
          }
        }
      }

      else
      {
        sub_2686869B4(v175, v170);
        v171 = sub_2685C32C0(v152, *(&v242 + 1));
        if ((v176 & 1) != (v177 & 1))
        {
          goto LABEL_196;
        }

        v5 = v165;
        v178 = v242;
        v6 = v243;
        if ((v176 & 1) == 0)
        {
LABEL_114:
          v6[(v171 >> 6) + 8] |= 1 << v171;
          v179 = v6[6] + 40 * v171;
          *v179 = v178;
          *(v179 + 16) = v178;
          *(v179 + 32) = v150;
          *(v179 + 33) = 1;
          *(v6[7] + 8 * v171) = v166;
          v180 = v6[2];
          v20 = __OFADD__(v180, 1);
          v181 = v180 + 1;
          if (v20)
          {
            goto LABEL_165;
          }

          v6[2] = v181;
          goto LABEL_93;
        }
      }

      *(v6[7] + 8 * v171) = v166;
LABEL_93:
      ++v148;
      v149 += 24;
      v46 = v237;
      if (v239 == v148)
      {
        v184 = *(&v233 + 1);
        v183 = v233;
        v185 = v229;
        goto LABEL_134;
      }

      continue;
    }

    break;
  }

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
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
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
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  sub_268689E34();
  __break(1u);
LABEL_197:
  result = sub_268689E34();
  __break(1u);
  return result;
}

unint64_t _NameMap.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InternPool();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  *a1 = v2;
  a1[1] = sub_268688CB0(v3);
  a1[2] = sub_268688E38(v3);
  result = sub_268688E38(v3);
  a1[3] = result;
  return result;
}

uint64_t sub_2686864A8()
{

  v0 = sub_268689A74();
  v2 = v1;
  if (v1)
  {
    v3 = 0;
    do
    {
      if (v0 == 95 && v2 == 0xE100000000000000 || (v5 = v0, (sub_268689E14() & 1) != 0))
      {

        v3 = 1;
      }

      else
      {
        if (v3)
        {
          v6 = sub_2686899D4();
          v8 = v7;

          MEMORY[0x26D61D4B0](v6, v8);
        }

        else
        {
          MEMORY[0x26D61D4B0](v5, v2);
        }

        v3 = 0;
      }

      v0 = sub_268689A74();
      v2 = v4;
    }

    while (v4);
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2686865D4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v4 = swift_slowAlloc();
    result = sub_268689CF4();
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  sub_268689A84();
  v4 = swift_slowAlloc();
  sub_268689A84();
  result = sub_268689CF4();
  if (v12)
  {
    goto LABEL_13;
  }

  v3 = sub_268689A84();
LABEL_6:
  swift_beginAccess();
  v7 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_268665B20(0, *(v7 + 2) + 1, 1, v7);
    *(v2 + 16) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_268665B20((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[16 * v10];
  *(v11 + 4) = v4;
  *(v11 + 5) = v3;
  *(v2 + 16) = v7;
  swift_endAccess();
  return v4;
}

uint64_t sub_268686738()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = 32;
    do
    {
      v5 = *(v1 + v4);
      if (v5)
      {
        MEMORY[0x26D61DE30](v5, -1, -1);
      }

      v4 += 16;
      --v2;
    }

    while (v2);

    v6 = *(v0 + 16);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_2686867DC(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = &a3[a4];
  if (a3)
  {
    v5 = &a3[a4];
  }

  else
  {
    v5 = 0;
  }

  v6 = &a1[a2];
  if (a1)
  {
    v7 = &a1[a2];
  }

  else
  {
    v7 = 0;
  }

  do
  {
    if (a3)
    {
      if (a3 == v5)
      {
        v8 = 0;
        v9 = 1;
        a3 = v4;
        if (!a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = 0;
        v12 = *a3++;
        v8 = v12;
        if (!a1)
        {
LABEL_16:
          v10 = 0;
          v11 = 1;
          if (v9)
          {
            return v11;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      v8 = 0;
      v9 = 1;
      if (!a1)
      {
        goto LABEL_16;
      }
    }

    if (a1 == v7)
    {
      v10 = 0;
      v11 = 1;
      a1 = v6;
      if (v9)
      {
        return v11;
      }
    }

    else
    {
      v11 = 0;
      v13 = *a1++;
      v10 = v13;
      if (v9)
      {
        return v11;
      }
    }

LABEL_19:
    if (v8 != v10)
    {
      LODWORD(v11) = 1;
    }
  }

  while (v11 != 1);
  return 0;
}

uint64_t sub_268686888()
{
  v1 = *v0;
  if (*v0)
  {
    for (i = v0[1]; i; --i)
    {
      v3 = *v1++;
      result = sub_268689EB4();
    }
  }

  return result;
}

uint64_t sub_2686868D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268689E94();
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    do
    {
      v4 = *v1++;
      sub_268689EB4();
      --v2;
    }

    while (v2);
  }

  return sub_268689EF4();
}

uint64_t sub_268686934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 33))
  {
    v3 = *(v0 + 32);
    return sub_268689D04();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);

    return v5;
  }
}

uint64_t sub_268686980(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == *(a2 + 8))
  {
    return sub_2686867DC(*a2, v3, *a1, v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2686869B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v47 = a2;
  result = sub_268689DC4();
  v52 = result;
  if (*(v5 + 16))
  {
    v8 = result;
    v45 = v3;
    v46 = v5;
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
      v21 = __clz(__rbit64(v13));
      v51 = (v13 - 1) & v13;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 56);
      v26 = *(v5 + 48) + 40 * v24;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v26 + 24);
      v31 = *(v26 + 32);
      v32 = *(v26 + 33);
      v50 = *(v25 + 8 * v24);
      if ((v47 & 1) == 0)
      {
        sub_2685C255C(v29, v30, v31, v32);
        v8 = v52;
      }

      v48 = v32;
      v49 = v30;
      v33 = *(v8 + 40);
      sub_268689E94();
      v34 = v27;
      v35 = v28;
      if (v27)
      {
        v36 = v28 == 0;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        v37 = v28;
        v38 = v34;
        do
        {
          v39 = *v38++;
          sub_268689EB4();
          --v37;
        }

        while (v37);
      }

      result = sub_268689EF4();
      v8 = v52;
      v16 = -1 << *(v52 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v16) >> 6;
        while (++v18 != v41 || (v40 & 1) == 0)
        {
          v42 = v18 == v41;
          if (v18 == v41)
          {
            v18 = 0;
          }

          v40 |= v42;
          v43 = *(v15 + 8 * v18);
          if (v43 != -1)
          {
            v19 = __clz(__rbit64(~v43)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = *(v52 + 48) + 40 * v19;
      *v20 = v34;
      *(v20 + 8) = v35;
      *(v20 + 16) = v29;
      *(v20 + 24) = v49;
      *(v20 + 32) = v31;
      *(v20 + 33) = v48;
      *(*(v52 + 56) + 8 * v19) = v50;
      ++*(v52 + 16);
      v5 = v46;
      v13 = v51;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v51 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_42;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v10, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_42:
  *v3 = v52;
  return result;
}

uint64_t sub_268686CE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v40 = a2;
  result = sub_268689DC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 80 * v21;
      if (v40)
      {
        v41 = *(v23 + 16);
        v42 = *v23;
        v24 = *(v23 + 32);
        v25 = *(v23 + 56);
        v44 = v25;
        v45 = *(v23 + 40);
        v43 = *(v23 + 72);
        v26 = *(v23 + 73);
      }

      else
      {
        v27 = *(v23 + 58);
        v28 = *(v23 + 16);
        v29 = *(v23 + 48);
        *v48 = *(v23 + 32);
        *&v48[16] = v29;
        *&v48[26] = v27;
        v47[0] = *v23;
        v47[1] = v28;
        v44 = *&v48[24];
        v45 = *&v48[8];
        v43 = BYTE14(v27);
        v26 = HIBYTE(v27);
        v41 = v28;
        v42 = v47[0];
        v24 = *v48;
        sub_268689570(v47, v46);
      }

      v30 = *(v8 + 40);
      result = sub_268689E84();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v47[0]) = v26;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v42;
      *(v17 + 16) = v41;
      *(v17 + 32) = v24;
      *(v17 + 40) = v45;
      *(v17 + 56) = v44;
      *(v17 + 72) = v43;
      *(v17 + 73) = v26;
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

    if (v40)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_268687004(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE8, &qword_268693B38);
  result = sub_268689DC4();
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        sub_2685B17CC(v22, v33);
      }

      else
      {
        sub_2685B1724(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_268689E84();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_2685B17CC(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

uint64_t sub_268687284(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
  v40 = a2;
  result = sub_268689DC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[2];
      if ((v40 & 1) == 0)
      {

        sub_2685BA80C(v26, v27);
      }

      v29 = *(v8 + 40);
      sub_268689E94();
      sub_268689A24();
      result = sub_268689EF4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v26;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_268687568(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
  v36 = a2;
  result = sub_268689DC4();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_268689E94();
      sub_268689A24();
      result = sub_268689EF4();
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_268687814(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCB8, &qword_268693B08);
  result = sub_268689DC4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_268689E84();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_268687A84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *a2;
  v10 = *(a2 + 8);
  result = sub_2685C32C0(*a2, v10);
  v13 = *(v8 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v8 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_2686869B4(v16, a3 & 1);
      v20 = *v4;
      result = sub_2685C32C0(v9, v10);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_15:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_268688394();
      result = v19;
    }
  }

  v22 = *v4;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = v22[6] + 40 * result;
  v24 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a2 + 32);
  *(v22[7] + 8 * result) = a1;
  v25 = v22[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22[2] = v26;
  v28 = *(a2 + 16);
  v29 = *(a2 + 32);
  return sub_268689618(&v28, v27);
}

unint64_t sub_268687BF4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2685B351C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_268686CE0(v14, a3 & 1);
      v18 = *v4;
      result = sub_2685B351C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_268688518();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    v22 = (v20[7] + 80 * result);
    *v22 = *a1;
    v23 = a1[1];
    v24 = a1[2];
    v25 = a1[3];
    *(v22 + 58) = *(a1 + 58);
    v22[2] = v24;
    v22[3] = v25;
    v22[1] = v23;
    v26 = v20[2];
    v13 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v13)
    {
      v20[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 80 * result;

  return sub_268689650(a1, v21);
}

uint64_t sub_268687D88(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2685B351C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2686886D0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_268687004(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_2685B351C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_268689E34();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v21);

    return sub_2685B17CC(a1, v21);
  }

  else
  {

    return sub_268688328(v9, a2, a1, v20);
  }
}

uint64_t sub_268687EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2685C3084(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_268687284(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_2685C3084(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_268688850();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    sub_2685B593C(v28, v29);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = (v26[7] + 24 * v15);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

unint64_t sub_268688068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_2685C3084(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_268687568(v18, a5 & 1);
      v22 = *v6;
      result = sub_2685C3084(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_2686889EC();
      result = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    return result;
  }

  v24[(result >> 6) + 8] |= 1 << result;
  v26 = (v24[6] + 16 * result);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v24[7] + 16 * result);
  *v27 = a1;
  v27[1] = a2;
  v28 = v24[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24[2] = v29;
}

unint64_t sub_2686881DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2685B351C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_268687814(v14, a3 & 1);
      v18 = *v4;
      result = sub_2685B351C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_268689E34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_268688B54();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_268688328(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2685B17CC(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_268688394()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 33);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 40 * v17;
        v24 = *(v18 + 32);
        *v23 = *v18;
        *(v23 + 16) = v19;
        *(v23 + 24) = v20;
        *(v23 + 32) = v24;
        *(v23 + 33) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        result = sub_2685C255C(v19, v20, v24, v21);
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

void *sub_268688518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v2 = *v0;
  v3 = sub_268689DB4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_268689570(&v27, &v26))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 80 * v16);
      v20 = v18[1];
      v19 = v18[2];
      v21 = v18[3];
      *(v30 + 10) = *(v18 + 58);
      v30[0] = v21;
      v27 = *v18;
      v28 = v20;
      v29 = v19;
      *(*(v4 + 48) + 8 * v16) = v17;
      v22 = (*(v4 + 56) + 80 * v16);
      *v22 = v27;
      v23 = v28;
      v24 = v29;
      v25 = v30[0];
      *(v22 + 58) = *(v30 + 10);
      v22[2] = v24;
      v22[3] = v25;
      v22[1] = v23;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_2686886D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE8, &qword_268693B38);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2685B1724(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_2685B17CC(v19, *(v4 + 56) + 40 * v17);
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

void *sub_268688850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = v20[1];
        v17 *= 24;
        v22 = *(v19 + v17);
        v23 = *(v19 + v17 + 8);
        v24 = *(v19 + v17 + 16);
        v25 = (*(v4 + 48) + v18);
        *v25 = *v20;
        v25[1] = v21;
        v26 = (*(v4 + 56) + v17);
        *v26 = v22;
        v26[1] = v23;
        v26[2] = v24;

        sub_2685BA80C(v22, v23);
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

void *sub_2686889EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_268688B54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCB8, &qword_268693B08);
  v2 = *v0;
  v3 = sub_268689DB4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

unint64_t sub_268688CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD0, &qword_268693B20);
  v3 = sub_268689DD4();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = sub_2685B351C(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_2686895A8(v23, v22);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[56];
    *(v11 + 58) = *&v23[66];
    v11[2] = v13;
    v11[3] = v14;
    v11[1] = v12;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_2686895A8(v23, v22);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = sub_2685B351C(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268688E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCD8, &qword_268693B28);
  v3 = sub_268689DD4();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 65);
  v10 = *(a1 + 72);
  result = sub_2685C32C0(v4, v5);
  if (v12)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v13 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = v3[6] + 40 * result;
    *v14 = v4;
    *(v14 + 8) = v5;
    *(v14 + 16) = v6;
    *(v14 + 24) = v7;
    *(v14 + 32) = v8;
    *(v14 + 33) = v9 & 1;
    *(v3[7] + 8 * result) = v10;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    sub_2685C255C(v6, v7, v8, v9 & 1);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v13 - 5);
    v5 = *(v13 - 4);
    v6 = *(v13 - 3);
    v7 = *(v13 - 2);
    v8 = *(v13 - 8);
    v9 = *(v13 - 7);
    v10 = *v13;
    result = sub_2685C32C0(v4, v5);
    v13 += 6;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268688F94(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_268688FAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 3)
  {
  }

  return result;
}

uint64_t sub_268689010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 17);
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

uint64_t sub_26868905C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = -a2 << 8;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriOntologyProtobuf8_NameMapV0D0VSg(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26868912C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 73);
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

uint64_t sub_268689174(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_2686891DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
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

uint64_t sub_268689224(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

unint64_t sub_268689280()
{
  result = qword_280FBD000;
  if (!qword_280FBD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FBD000);
  }

  return result;
}

unint64_t sub_2686892D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC8, &qword_268693B18);
    v3 = sub_268689DD4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_2685BA80C(v7, v8);

      result = sub_2685C3084(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_2686893FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCC0, &qword_268693B10);
    v3 = sub_268689DD4();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2685C3084(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_26868950C(unsigned __int8 *a1, uint64_t a2)
{
  sub_268689E94();
  if (a1 && a2)
  {
    do
    {
      v4 = *a1++;
      sub_268689EB4();
      --a2;
    }

    while (a2);
  }

  return sub_268689EF4();
}

uint64_t sub_2686895A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028DCE0, &qword_268693B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_26868969C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t sub_2686896E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}