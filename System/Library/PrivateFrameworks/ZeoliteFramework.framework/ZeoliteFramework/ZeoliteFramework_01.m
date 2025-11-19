uint64_t sub_2751DEB68()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 216);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  v4 = *(v0 + 232);
  *(*(v0 + 48) + *(v0 + 272)) = v3;
  if (v4 < 1)
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);

    v8 = *(v6 + 40);
    if (v8)
    {
      *(v0 + 24) = 0;
      v9 = [v8 closeAndReturnError_];
      v10 = *(v0 + 24);
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v12 = v10;
        v13 = sub_27520B7E8();

        swift_willThrow();
        MEMORY[0x277C6DB10](v13);
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 16);
  }

  v14 = *(v0 + 208);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);
  v21 = *(v0 + 80);

  v22 = *(v0 + 8);
  v23 = *MEMORY[0x277D85DE8];

  return v22(v5);
}

uint64_t sub_2751DED04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2751DED9C;

  return JSONLMatrixLoader.next()(a2);
}

uint64_t sub_2751DED9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2751DEEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  JSONLMatrixLoader.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

double AsyncMatrixSequence.init(reader:label:columnCount:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_27520BAE8();
  v11 = sub_2751DF12C(a2, a3, v10);

  if (v11)
  {

    v12 = sub_27520BAC8();
    sub_27520BAD8();
    v14 = v13;

    *a5 = a1;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = v12;
    a5[4] = 0;
    a5[5] = v14;
    a5[6] = a4;
  }

  else
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v16 = sub_27520BAB8();
    __swift_project_value_buffer(v16, qword_2809B38E8);

    v17 = sub_27520BA98();
    v18 = sub_27520BEF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      v21 = sub_2751E0324(a2, a3, &v22);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_2751CF000, v17, v18, "Invalid label: %s for AsyncMatrixSequence.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x277C6DCC0](v20, -1, -1);
      MEMORY[0x277C6DCC0](v19, -1, -1);
    }

    else
    {
    }

    a5[6] = 0;
    result = 0.0;
    *(a5 + 1) = 0u;
    *(a5 + 2) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_2751DF12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_27520C278();
  sub_27520BBD8();
  v7 = sub_27520C298();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_27520C218() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t AsyncMatrixSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = *(v1 + 40);
}

uint64_t AsyncMatrixSequence.next()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DF320, 0, 0);
}

uint64_t sub_2751DF320()
{
  if ((sub_27520BDF8() & 1) != 0 || (v1 = v0[2], v2 = v1[4], v2 >= v1[3]))
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v3 = v0[4];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  sub_27520BAF8();
  v7 = sub_27520BB28();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
LABEL_4:
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v9 = sub_27520BAB8();
    __swift_project_value_buffer(v9, qword_2809B38E8);
    v10 = sub_27520BA98();
    v11 = sub_27520BEF8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2751CF000, v10, v11, "Unsupported field type.", v12, 2u);
      MEMORY[0x277C6DCC0](v12, -1, -1);
    }

    v13 = v0[4];

    sub_2751E03F0(v13);
    goto LABEL_9;
  }

  v19 = v0[3];
  sub_2751E0458(v0[4], v19);
  v20 = (*(v8 + 88))(v19, v7);
  if (v20 == *MEMORY[0x277D3D198])
  {
    v21 = sub_27520BB08();
    if (v21)
    {
      v22 = *(v21 + 16);
      if (v22)
      {
        v34 = MEMORY[0x277D84F90];
        v23 = v21;
        sub_2751E09A4(0, v22, 0);
        v24 = v23;
        v14 = v34;
        v25 = *(v34 + 16);
        v26 = 32;
        do
        {
          _H8 = *(v24 + v26);
          v28 = *(v34 + 24);
          if (v25 >= v28 >> 1)
          {
            sub_2751E09A4((v28 > 1), v25 + 1, 1);
            v24 = v23;
          }

          __asm { FCVT            S0, H8 }

          *(v34 + 16) = v25 + 1;
          *(v34 + 4 * v25 + 32) = _S0;
          v26 += 2;
          ++v25;
          --v22;
        }

        while (v22);
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (v20 != *MEMORY[0x277D3D1A0])
    {
      (*(v8 + 8))(v0[3], v7);
      goto LABEL_4;
    }

    v14 = sub_27520BB08();
  }

  sub_2751E03F0(v0[4]);
  v1[4] = v2 + 1;
LABEL_10:
  v16 = v0[3];
  v15 = v0[4];

  v17 = v0[1];

  return v17(v14);
}

uint64_t sub_2751DF6A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2751E13E4;

  return AsyncMatrixSequence.next()();
}

uint64_t sub_2751DF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = sub_2751DF7C4;

  return AsyncMatrixSequence.next()();
}

uint64_t sub_2751DF7C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 32);
  v17 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    if (v6)
    {
      v8 = v4[4];
      v7 = v4[5];
      swift_getObjectType();
      v9 = sub_27520BDB8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v15 = sub_2751DF974;
  }

  else
  {
    if (v6)
    {
      v12 = v4[4];
      v13 = v4[5];
      swift_getObjectType();
      v9 = sub_27520BDB8();
      v11 = v14;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v4[9] = a1;
    v15 = sub_2751DF950;
  }

  return MEMORY[0x2822009F8](v15, v9, v11);
}

uint64_t sub_2751DF974()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD508, &unk_27520D6B0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

__n128 sub_2751DFA14@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 24);
  result = *(v1 + 40);
  *(a1 + 40) = result;
  return result;
}

double AsyncTransformedMatrixSequence.init(reader:label:columnCount:quantization:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_27520BAE8();
  v13 = sub_2751DF12C(a2, a3, v12);

  if (v13)
  {

    v14 = sub_27520BAC8();
    sub_27520BAD8();
    v16 = v15;

    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = v14;
    a6[4] = a5;
    a6[5] = 0;
    a6[6] = v16;
    a6[7] = a4;
  }

  else
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v18 = sub_27520BAB8();
    __swift_project_value_buffer(v18, qword_2809B38E8);

    v19 = sub_27520BA98();
    v20 = sub_27520BEF8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      v23 = sub_2751E0324(a2, a3, &v24);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2751CF000, v19, v20, "Invalid label: %s for AsyncTransformedMatrixSequence.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x277C6DCC0](v22, -1, -1);
      MEMORY[0x277C6DCC0](v21, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *(a6 + 2) = 0u;
    *(a6 + 3) = 0u;
    *a6 = 0u;
    *(a6 + 1) = 0u;
  }

  return result;
}

uint64_t AsyncTransformedMatrixSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *a2 = v8[0];
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return (*(*(a1 - 8) + 16))(&v7, v8, a1);
}

uint64_t AsyncTransformedMatrixSequence.next()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751DFD68, 0, 0);
}

uint64_t sub_2751DFD68()
{
  if ((sub_27520BDF8() & 1) != 0 || (v1 = v0[3], v2 = v1[5], v2 >= v1[3]))
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v3 = v0[5];
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  sub_27520BAF8();
  v7 = sub_27520BB28();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
LABEL_4:
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v9 = sub_27520BAB8();
    __swift_project_value_buffer(v9, qword_2809B38E8);
    v10 = sub_27520BA98();
    v11 = sub_27520BEF8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2751CF000, v10, v11, "Unsupported field type.", v12, 2u);
      MEMORY[0x277C6DCC0](v12, -1, -1);
    }

    v13 = v0[5];

    sub_2751E03F0(v13);
    goto LABEL_9;
  }

  v19 = v0[4];
  sub_2751E0458(v0[5], v19);
  v20 = (*(v8 + 88))(v19, v7);
  if (v20 == *MEMORY[0x277D3D198])
  {
    v21 = v0[2];
    v22 = *(v0[3] + 32);
    v23 = v21[2];
    sub_2751E0A18();
    v42 = v21[5];
    v40 = v21[4];
    v24 = sub_27520BB18();
    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        v44 = MEMORY[0x277D84F90];
        v26 = v24;
        sub_2751E09A4(0, v25, 0);
        v27 = v26;
        v14 = v44;
        v28 = *(v44 + 16);
        v29 = 32;
        do
        {
          _H8 = *(v27 + v29);
          v31 = *(v44 + 24);
          if (v28 >= v31 >> 1)
          {
            sub_2751E09A4((v31 > 1), v28 + 1, 1);
            v27 = v26;
          }

          __asm { FCVT            S0, H8 }

          *(v44 + 16) = v28 + 1;
          *(v44 + 4 * v28 + 32) = _S0;
          v29 += 2;
          ++v28;
          --v25;
        }

        while (v25);
      }

      else
      {

        v14 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (v20 != *MEMORY[0x277D3D1A0])
    {
      (*(v8 + 8))(v0[4], v7);
      goto LABEL_4;
    }

    v37 = v0[2];
    v38 = *(v0[3] + 32);
    v39 = v37[2];
    sub_2751E09C4();
    v43 = v37[5];
    v41 = v37[4];
    v14 = sub_27520BB18();
  }

  sub_2751E03F0(v0[5]);
  v1[5] = v2 + 1;
LABEL_10:
  v16 = v0[4];
  v15 = v0[5];

  v17 = v0[1];

  return v17(v14);
}

uint64_t sub_2751E0134(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2751E13E4;

  return AsyncTransformedMatrixSequence.next()(a2);
}

uint64_t sub_2751E01CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_2751E13E0;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_2751E02A0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AsyncTransformedMatrixSequence.makeAsyncIterator()(a1, a2);
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v5 = v2[3];
  v7[2] = v2[2];
  v7[3] = v5;
  return (*(*(a1 - 8) + 8))(v7, a1);
}

uint64_t sub_2751E0324(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2751E04C8(v11, 0, 0, 1, a1, a2);
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
    sub_2751E1384(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2751E03F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2751E0458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD530, &qword_27520D868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2751E04C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2751E05D4(a5, a6);
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
    result = sub_27520BFA8();
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

uint64_t sub_2751E05D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2751E0620(a1, a2);
  sub_2751E0750(&unk_2883F8AB8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2751E0620(uint64_t a1, unint64_t a2)
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

  v6 = sub_2751E083C(v5, 0);
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

  result = sub_27520BFA8();
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
        v10 = sub_27520BBF8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2751E083C(v10, 0);
        result = sub_27520BF58();
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

uint64_t sub_2751E0750(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2751E08B0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2751E083C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809AD668, &qword_27520DCF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2751E08B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809AD668, &qword_27520DCF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2751E09A4(char *a1, int64_t a2, char a3)
{
  result = sub_27520899C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2751E09C4()
{
  result = qword_2809AD538;
  if (!qword_2809AD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD538);
  }

  return result;
}

unint64_t sub_2751E0A18()
{
  result = qword_2809AD540;
  if (!qword_2809AD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD540);
  }

  return result;
}

unint64_t sub_2751E0A98()
{
  result = qword_2809AD548;
  if (!qword_2809AD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD548);
  }

  return result;
}

unint64_t sub_2751E0AEC()
{
  result = qword_2809AD550;
  if (!qword_2809AD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD550);
  }

  return result;
}

uint64_t sub_2751E0BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2751E0BF4()
{
  result = qword_2809AD558;
  if (!qword_2809AD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD558);
  }

  return result;
}

unint64_t sub_2751E0C48()
{
  result = qword_2809AD560[0];
  if (!qword_2809AD560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD560);
  }

  return result;
}

uint64_t sub_2751E0CCC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2751E0D68(uint64_t *a1, int a2)
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

uint64_t sub_2751E0DB0(uint64_t result, int a2, int a3)
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

void sub_2751E0E00(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD1F0, &qword_27520DE80);
  sub_27520C2C8();
  if (v2 <= 0x3F)
  {
    sub_2751D5D74();
    if (v3 <= 0x3F)
    {
      sub_2751D5DCC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2751E0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2751E0FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD250, &unk_27520D850);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
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

uint64_t sub_2751E1094(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2751E10DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2751E1138()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2751E1194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2751E11DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_2751E1244(void *a1, int64_t a2, char a3)
{
  result = sub_275208AA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1264(char *a1, int64_t a2, char a3)
{
  result = sub_275208BE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1284(char *a1, int64_t a2, char a3)
{
  result = sub_275208BFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E12A4(char *a1, int64_t a2, char a3)
{
  result = sub_275208D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E12C4(char *a1, int64_t a2, char a3)
{
  result = sub_275208D1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2751E12E4(size_t a1, int64_t a2, char a3)
{
  result = sub_275208E2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1304(char *a1, int64_t a2, char a3)
{
  result = sub_275209004(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1324(char *a1, int64_t a2, char a3)
{
  result = sub_275209108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1344(char *a1, int64_t a2, char a3)
{
  result = sub_27520920C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2751E1364(char *a1, int64_t a2, char a3)
{
  result = sub_275209328(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2751E1384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_2751E13F0(char *result, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v7 = a2 - result;
  if (!__OFSUB__(a2, result))
  {
    if (!v7)
    {
      return MEMORY[0x277D84F90];
    }

    v8 = result;
    v49 = MEMORY[0x277D84F90];
    result = sub_2751E1284(0, v7 & ~(v7 >> 63), 0);
    v9 = a6;
    if (a6 < 0)
    {
      goto LABEL_74;
    }

    if (a2 < v8 || v7 < 0)
    {
      goto LABEL_75;
    }

    v10 = 0;
    result = v49;
    v11 = MEMORY[0x277D84F90];
    v38 = v7;
    while (v10 < v7)
    {
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_57;
      }

      v13 = v8 * a4;
      if (a3)
      {
        if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
        {
          goto LABEL_68;
        }

        v12 = __OFADD__(v13++, 1);
        if (v12)
        {
          goto LABEL_70;
        }
      }

      else if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
      {
        goto LABEL_69;
      }

      v14 = *a5;
      v15 = *(*a5 + 16);
      if (v15 < v13)
      {
        goto LABEL_58;
      }

      if (v13 < 0)
      {
        goto LABEL_59;
      }

      if (!v9 || (v15 - v13) < 0 || (v16 = *(*a5 + 16), (v15 - v13) >= v9))
      {
        v16 = v13 + v9;
        if (__OFADD__(v13, v9))
        {
          goto LABEL_66;
        }
      }

      if (v16 < v13)
      {
        goto LABEL_60;
      }

      if (v15 < v16)
      {
        goto LABEL_61;
      }

      v45 = result;
      v46 = v8;
      v17 = v11;
      v18 = v16 - v13;
      if (v16 != v13)
      {
        v19 = v10;
        v47 = v11;

        result = sub_2751E09A4(0, v18 & ~(v18 >> 63), 0);
        if (v18 < 0)
        {
          goto LABEL_71;
        }

        v17 = v47;
        v20 = 4 * v13 + 32;
        while (v18)
        {
          v21 = *(v14 + v20);
          v23 = *(v47 + 16);
          v22 = *(v47 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_2751E09A4((v22 > 1), v23 + 1, 1);
          }

          *(v47 + 16) = v23 + 1;
          *(v47 + 4 * v23 + 32) = v21;
          v20 += 4;
          if (!--v18)
          {

            v9 = a6;
            v11 = MEMORY[0x277D84F90];
            v10 = v19;
            result = v45;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_31:
      v24 = *a7;
      v25 = *(*a7 + 16);
      if (v25 < v13)
      {
        goto LABEL_62;
      }

      if (!v9 || v25 - v13 < 0 || (v26 = *(*a7 + 16), v25 - v13 >= v9))
      {
        v26 = v13 + v9;
        if (__OFADD__(v13, v9))
        {
          goto LABEL_67;
        }
      }

      if (v26 < v13)
      {
        goto LABEL_63;
      }

      if (v25 < v26)
      {
        goto LABEL_64;
      }

      v27 = v11;
      v28 = v26 - v13;
      if (v26 != v13)
      {
        v37 = v10;
        v48 = v11;

        result = sub_2751E12C4(0, v28 & ~(v28 >> 63), 0);
        if (v28 < 0)
        {
          goto LABEL_72;
        }

        v27 = v48;
        v29 = 8 * v13 + 32;
        while (v28)
        {
          v30 = *(v24 + v29);
          if (v30 < 0)
          {
            goto LABEL_55;
          }

          v32 = *(v48 + 16);
          v31 = *(v48 + 24);
          if (v32 >= v31 >> 1)
          {
            result = sub_2751E12C4((v31 > 1), v32 + 1, 1);
          }

          *(v48 + 16) = v32 + 1;
          *(v48 + 8 * v32 + 32) = v30;
          v29 += 8;
          if (!--v28)
          {

            v9 = a6;
            v11 = MEMORY[0x277D84F90];
            v10 = v37;
            result = v45;
            goto LABEL_47;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

LABEL_47:
      v50 = result;
      v34 = *(result + 2);
      v33 = *(result + 3);
      if (v34 >= v33 >> 1)
      {
        v36 = v10;
        sub_2751E1284((v33 > 1), v34 + 1, 1);
        v10 = v36;
        v11 = MEMORY[0x277D84F90];
        v9 = a6;
        result = v50;
      }

      *(result + 2) = v34 + 1;
      v35 = &result[16 * v34];
      *(v35 + 4) = v17;
      *(v35 + 5) = v27;
      if (v46 >= a2)
      {
        goto LABEL_65;
      }

      v8 = v46 + 1;
      v7 = v38;
      if (v10 == v38)
      {
        return result;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
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
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t MatrixNNScorer.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

uint64_t sub_2751E18D8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 404) = a3;
  *(v4 + 40) = a1;
  v5 = *v3;
  v6 = sub_27520BDC8();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v9 = sub_27520B6C8();
  *(v4 + 88) = v9;
  v10 = *(v9 - 8);
  *(v4 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v12 = *(v5 + 80);
  *(v4 + 136) = v12;
  v13 = *(v12 - 8);
  *(v4 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v15 = *(v5 + 88);
  *(v4 + 160) = v15;
  *(v4 + 168) = *(v15 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 176) = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  *(v4 + 184) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = *(v15 + 8);
  v19 = swift_getAssociatedTypeWitness();
  *(v4 + 208) = v19;
  v20 = *(v19 - 8);
  *(v4 + 216) = v20;
  v21 = *(v20 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751E1BD0, 0, 0);
}

uint64_t sub_2751E1BD0()
{
  v75 = v0;
  v1 = *(v0 + 48);
  if (*(v0 + 404) != 1 || (v2 = __OFADD__(v1, 1), ++v1, !v2))
  {
    *(v0 + 264) = v1;
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(*v5 + 96);
    v8 = (*(v3 + 24))(v4, v3);
    *(v0 + 272) = v8;
    v9 = (*(v3 + 32))(v4, v3);
    *(v0 + 280) = v9;
    v10 = *(v6 + 16);
    *(v0 + 288) = v10;
    if (v9)
    {
      if (*(v0 + 48) < 1)
      {
        if (qword_2809AD190 != -1)
        {
          swift_once();
        }

        v17 = sub_27520BAB8();
        __swift_project_value_buffer(v17, qword_2809B38E8);
        v13 = sub_27520BA98();
        v14 = sub_27520BEF8();
        if (!os_log_type_enabled(v13, v14))
        {
          goto LABEL_14;
        }

        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "top-k must be positive.";
        goto LABEL_13;
      }

      v11 = v10 / v9;
      if (v10 % v9)
      {
        if (qword_2809AD190 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_56;
      }

      v30 = v11 * v1;
      if ((v11 * v1) >> 64 == (v11 * v1) >> 63)
      {
        if ((v30 & 0x8000000000000000) == 0)
        {
          if (v30)
          {
            v31 = sub_27520BCF8();
            *(v31 + 16) = v30;
            bzero((v31 + 32), 4 * v30);
            v70 = v31;
            *(v0 + 16) = v31;
            v3 = sub_27520BCF8();
            *(v3 + 16) = v30;
            bzero((v3 + 32), 8 * v30);
          }

          else
          {
            v3 = MEMORY[0x277D84F90];
            *(v0 + 16) = MEMORY[0x277D84F90];
            v70 = v3;
          }

          *(v0 + 24) = v3;
          v32 = v11 * v8;
          if ((v11 * v8) >> 64 == (v11 * v8) >> 63)
          {
            if ((v32 & 0x8000000000000000) == 0)
            {
              if (v32)
              {
                v33 = sub_27520BCF8();
                *(v33 + 16) = v32;
                v69 = v33;
                bzero((v33 + 32), 4 * v8 * v11);
              }

              else
              {
                v69 = MEMORY[0x277D84F90];
              }

              if (v1 + 0x4000000000000000 >= 0)
              {
                v34 = 2 * v1;
                if (((2 * v1) & 0x8000000000000000) == 0)
                {
                  v67 = v5;
                  v11 = MEMORY[0x277D84F90];
                  v73 = v7;
                  if (v34)
                  {
                    v35 = sub_27520BCF8();
                    *(v35 + 16) = v34;
                    v68 = v35;
                    memset_pattern16((v35 + 32), &unk_27520DD70, 8 * v1);
                    v36 = sub_2751E3A6C(2 * v1, 0);
                    v37 = sub_2751E3B7C(v74, (v36 + 4), 2 * v1, 0, 2 * v1);
                    if (v37 != v34)
                    {
                      __break(1u);
                      goto LABEL_66;
                    }

                    v43 = v36[2];
                    if (v43)
                    {
                      goto LABEL_32;
                    }
                  }

                  else
                  {
                    v68 = MEMORY[0x277D84F90];
                    v36 = MEMORY[0x277D84F90];
                    v43 = *(MEMORY[0x277D84F90] + 16);
                    if (v43)
                    {
LABEL_32:
                      v66 = v3;
                      v74[0] = v11;
                      sub_2751E12A4(0, v43, 0);
                      v11 = v74[0];
                      v44 = *(v74[0] + 16);
                      v45 = 4;
                      do
                      {
                        v46 = v36[v45];
                        v74[0] = v11;
                        v47 = *(v11 + 24);
                        if (v44 >= v47 >> 1)
                        {
                          sub_2751E12A4((v47 > 1), v44 + 1, 1);
                          v11 = v74[0];
                        }

                        *(v11 + 16) = v44 + 1;
                        *(v11 + 8 * v44 + 32) = v46;
                        ++v45;
                        ++v44;
                        --v43;
                      }

                      while (v43);

                      v3 = v66;
LABEL_39:
                      *(v0 + 296) = v11;
                      v48 = v73;
                      if ((v8 & 0x8000000000000000) == 0)
                      {
                        v49 = MEMORY[0x277D84F90];
                        if (!v8)
                        {
                          v50 = MEMORY[0x277D84F90];
                          v51 = *(MEMORY[0x277D84F90] + 16);
                          if (v51)
                          {
LABEL_43:
                            v52 = v3;
                            v74[0] = v49;

                            sub_2751E12A4(0, v51, 0);
                            v49 = v74[0];
                            v53 = *(v74[0] + 16);
                            v54 = 4;
                            do
                            {
                              v55 = v50[v54];
                              v74[0] = v49;
                              v56 = *(v49 + 24);
                              if (v53 >= v56 >> 1)
                              {
                                sub_2751E12A4((v56 > 1), v53 + 1, 1);
                                v49 = v74[0];
                              }

                              *(v49 + 16) = v53 + 1;
                              *(v49 + 8 * v53 + 32) = v55;
                              ++v54;
                              ++v53;
                              --v51;
                            }

                            while (v51);

                            v3 = v52;
                            v48 = v73;
LABEL_50:
                            *(v0 + 304) = v49;
                            v57 = *(v0 + 192);
                            v58 = *(v0 + 168);
                            (*(*(v0 + 144) + 16))(*(v0 + 152), v67 + v48, *(v0 + 136));
                            sub_27520BE28();
                            if (swift_isUniquelyReferenced_nonNull_native())
                            {
                              goto LABEL_51;
                            }

                            goto LABEL_64;
                          }

LABEL_49:

                          goto LABEL_50;
                        }

                        v50 = sub_2751E3A6C(v8, 0);
                        v37 = sub_2751E3B7C(v74, (v50 + 4), v8, 0, v8);
                        if (v37 == v8)
                        {
                          v51 = v50[2];
                          if (v51)
                          {
                            goto LABEL_43;
                          }

                          goto LABEL_49;
                        }

LABEL_66:
                        __break(1u);
                        return MEMORY[0x282200310](v37, v38, v39, v40, v41, v42);
                      }

LABEL_63:
                      __break(1u);
LABEL_64:
                      v11 = sub_2751E3B18(v11);
LABEL_51:
                      *(v0 + 400) = *MEMORY[0x277D83180];
                      *(v0 + 368) = v70;
                      *(v0 + 376) = v70;
                      *(v0 + 352) = v3;
                      *(v0 + 360) = v3;
                      *(v0 + 336) = v68;
                      *(v0 + 344) = v70;
                      *(v0 + 320) = 0;
                      *(v0 + 328) = v69;
                      *(v0 + 312) = v11;
                      v59 = *(v0 + 168);
                      v60 = *(v0 + 176);
                      v61 = *(v0 + 136);
                      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                      v63 = *(MEMORY[0x277D856D8] + 4);
                      v64 = swift_task_alloc();
                      *(v0 + 384) = v64;
                      *v64 = v0;
                      v64[1] = sub_2751E2340;
                      v40 = *(v0 + 248);
                      v65 = *(v0 + 192);
                      v41 = *(v0 + 176);
                      v37 = (v0 + 32);
                      v38 = 0;
                      v39 = 0;
                      v42 = AssociatedConformanceWitness;

                      return MEMORY[0x282200310](v37, v38, v39, v40, v41, v42);
                    }
                  }

                  goto LABEL_39;
                }

LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_7:
  v12 = sub_27520BAB8();
  __swift_project_value_buffer(v12, qword_2809B38E8);
  v13 = sub_27520BA98();
  v14 = sub_27520BEF8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "testMatrixValues count must be divisible by columnCount.";
LABEL_13:
    _os_log_impl(&dword_2751CF000, v13, v14, v16, v15, 2u);
    MEMORY[0x277C6DCC0](v15, -1, -1);
  }

LABEL_14:

  v19 = *(v0 + 248);
  v18 = *(v0 + 256);
  v21 = *(v0 + 232);
  v20 = *(v0 + 240);
  v22 = *(v0 + 224);
  v23 = *(v0 + 192);
  v24 = *(v0 + 152);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 112);
  v71 = *(v0 + 104);
  v72 = *(v0 + 80);

  v28 = *(v0 + 8);

  return v28(0);
}

uint64_t sub_2751E2340()
{
  v2 = *v1;
  v3 = *(*v1 + 384);
  v10 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v4 = *(v2 + 328);
    v7 = v2 + 296;
    v6 = *(v2 + 296);
    v5 = *(v7 + 8);

    v8 = sub_2751E3204;
  }

  else
  {
    v8 = sub_2751E2470;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2751E2470()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v19 = *(v0 + 320);
    v20 = *(v0 + 296);
    v21 = *(v0 + 304);
    v22 = *(v0 + 264);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

    if ((v22 & 0x8000000000000000) == 0 && v22 >= v19)
    {
      v26 = *(v0 + 328);

      if (qword_2809AD190 == -1)
      {
LABEL_10:
        v27 = sub_27520BAB8();
        __swift_project_value_buffer(v27, qword_2809B38E8);
        v28 = sub_27520BA98();
        v29 = sub_27520BEF8();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(v0 + 320);
          v31 = *(v0 + 48);
          v32 = swift_slowAlloc();
          *v32 = 134218240;
          *(v32 + 4) = v31;
          *(v32 + 12) = 2048;
          *(v32 + 14) = v30;
          _os_log_impl(&dword_2751CF000, v28, v29, "Not enough samples to score with top-k = %ld, target samples = %lu.", v32, 0x16u);
          MEMORY[0x277C6DCC0](v32, -1, -1);
        }

        v34 = *(v0 + 344);
        v33 = *(v0 + 352);
        v35 = *(v0 + 336);
        v36 = *(v0 + 312);

        goto LABEL_13;
      }

LABEL_153:
      swift_once();
      goto LABEL_10;
    }

    v42 = *(v0 + 404);
    v43 = *(v0 + 264);
    v44 = v43;
    if (v42 == 1)
    {
      v44 = v43 - 1;
      if (__OFSUB__(v43, 1))
      {
        goto LABEL_156;
      }
    }

    v24 = *(v0 + 288) / *(v0 + 280);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v45 = *(v0 + 392);
      v46 = *(v0 + 376);
      v47 = *(v0 + 360);
      v49 = *(v0 + 328);
      v48 = *(v0 + 336);
      v50 = *(v0 + 312);
      v172 = sub_2751E13F0(0, v24, v42, v43, (v0 + 16), v44, (v0 + 24));

      goto LABEL_22;
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    return MEMORY[0x282200310](v23, v24, v42, v43, v25, v44);
  }

  v2 = *(v0 + 280);
  v3 = *(v1 + 16) / v2;
  __N = v3;
  if (*(v0 + 272) >= v3)
  {
    v37 = normalizeMatrix(_:rowCount:columnCount:)(*(v0 + 40), *(v0 + 288) / v2, v2);
    v38 = normalizeMatrix(_:rowCount:columnCount:)(v1, v3, v2);

    v39 = v2 * v3;
    if ((v2 * v3) >> 64 == (v2 * v3) >> 63)
    {
      if ((v39 & 0x8000000000000000) == 0)
      {
        if (v39)
        {
          v40 = *(v0 + 280);
          v41 = sub_27520BCF8();
          *(v41 + 16) = v39;
          memset_pattern16((v41 + 32), &unk_27520DD80, 4 * v3 * v40);
        }

        else
        {
          v41 = MEMORY[0x277D84F90];
        }

        v63 = *(v0 + 280);
        if (((v63 | v3) & 0x8000000000000000) == 0)
        {
          v64 = *(v0 + 288) / v63;
          vDSP_mtrans((v38 + 32), 1, (v41 + 32), 1, v63, v3);

          if ((v64 & 0x8000000000000000) == 0)
          {
            v65 = *(v0 + 328);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = *(v0 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v67 = sub_2751D198C(0, *(v67 + 16), 0, *(v0 + 328));
            }

            v68 = __N;
            v69 = *(v0 + 288) / *(v0 + 280);
            vDSP_mmul((v37 + 32), 1, (v41 + 32), 1, (v67 + 32), 1, v69, __N, *(v0 + 280));

            if (v69)
            {
              v155 = (v67 + 32);
              if ((*(v0 + 264) & 0x8000000000000000) == 0)
              {
                v156 = 0;
                v157 = 0;
                v70 = 0;
                v71 = *(v67 + 16);
                v169 = *(v0 + 368);
                v171 = 0;
                v173 = *(v0 + 360);
                v72 = *(v0 + 344);
                v73 = *(v0 + 352);
                v74 = *(v0 + 336);
                v154 = v67;
                v152 = v71;
                while (!__OFADD__(v70, 1))
                {
                  v75 = v70;
                  v76 = v70 * v68;
                  v160 = v75;
                  if ((v75 * v68) >> 64 != v76 >> 63)
                  {
                    goto LABEL_132;
                  }

                  if (v71 < v76)
                  {
                    goto LABEL_133;
                  }

                  if (v76 < 0)
                  {
                    goto LABEL_134;
                  }

                  v77 = *(v67 + 16);
                  if (v77 < v76 || v77 < v71)
                  {
                    goto LABEL_135;
                  }

                  if (v68 < 1 || (v78 = v71, v71 - v76 >= v68))
                  {
                    v78 = v76 + v68;
                    if (__OFADD__(v76, v68))
                    {
                      goto LABEL_146;
                    }
                  }

                  if (v78 < v76)
                  {
                    goto LABEL_136;
                  }

                  if (v71 < v78)
                  {
                    goto LABEL_137;
                  }

                  v162 = *(*(v0 + 96) + 104);
                  v162(*(v0 + 128), *(v0 + 400), *(v0 + 88));
                  v159 = v78 - v76;
                  if (v78 - v76 < 0)
                  {
                    goto LABEL_138;
                  }

                  v79 = *(v0 + 304);

                  v80 = swift_isUniquelyReferenced_nonNull_native();
                  v165 = v78;
                  v167 = *(v0 + 304);
                  if ((v80 & 1) == 0)
                  {
                    v167 = sub_2751E3B18(v167);
                  }

                  v163 = *(v0 + 400);
                  v81 = *(v0 + 128);
                  v153 = *(v0 + 120);
                  v82 = *(v0 + 88);
                  v83 = *(v0 + 96);
                  v84 = sub_27520B6B8();
                  vDSP_vsorti(&v155[4 * v76], v167 + 4, 0, v159, v84);
                  v161 = *(v83 + 8);
                  v161(v81, v82);
                  v162(v153, v163, v82);
                  if (swift_isUniquelyReferenced_nonNull())
                  {
                    v85 = v76;
                    v86 = v155;
                  }

                  else
                  {
                    sub_2751E3C80(v155, v76, (2 * v78) | 1);
                    v86 = v87;
                    v85 = v88;
                    v90 = v89;
                    swift_unknownObjectRelease();
                    v165 = v90 >> 1;
                  }

                  v91 = *(v0 + 264);
                  v92 = *(v0 + 120);
                  v164 = v86;
                  v93 = v85;
                  v94 = &v86[4 * v85];
                  v95 = *(v0 + 88);
                  v96 = sub_27520B6B8();
                  vDSP_vsort(v94, v159, v96);
                  v161(v92, v95);
                  if (v91)
                  {
                    v97 = *(v0 + 264);
                    if ((v160 * v97) >> 64 != (v160 * v97) >> 63)
                    {
                      goto LABEL_139;
                    }

                    if (v97 > *(v74 + 16))
                    {
                      goto LABEL_140;
                    }

                    if (v97 > *(*(v0 + 312) + 16))
                    {
                      goto LABEL_141;
                    }

                    v98 = *(v0 + 296);

                    if (v171 < 0)
                    {
                      goto LABEL_142;
                    }

                    v99 = 0;
                    v100 = &v173[v97 * v156 + 32];
                    v101 = v97 * v160;
                    v102 = v169 + v97 * v157 + 32;
                    while ((v101 + v99) < *(v169 + 16))
                    {
                      v106 = *(v102 + 4 * v99);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v74 = sub_2751E3B04(v74);
                      }

                      *(v74 + 4 * v99 + 32) = v106;
                      if ((v101 + v99) >= *(v173 + 2))
                      {
                        goto LABEL_113;
                      }

                      v107 = v74 + 32;
                      v108 = *(v0 + 264);
                      *(*(v0 + 312) + 8 * v99 + 32) = *(v100 + 8 * v99);
                      v109 = v108 + v99;
                      v110 = __OFADD__(v108, v99);
                      if (v99 >= __N)
                      {
                        if (v110)
                        {
                          goto LABEL_120;
                        }

                        if ((v109 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_121;
                        }

                        if (v109 >= *(v74 + 16))
                        {
                          goto LABEL_123;
                        }

                        v115 = *(v0 + 312);
                        *(v107 + 4 * v109) = 0;
                        if (v109 >= *(v115 + 16))
                        {
                          goto LABEL_126;
                        }

                        v103 = 0;
                        v104 = *(v0 + 312);
                      }

                      else
                      {
                        if (v110)
                        {
                          goto LABEL_119;
                        }

                        v111 = v76 + v99;
                        if (__OFADD__(v76, v99))
                        {
                          goto LABEL_122;
                        }

                        if (v111 < v93 || v111 >= v165)
                        {
                          goto LABEL_124;
                        }

                        if ((v109 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_125;
                        }

                        if (v109 >= *(v74 + 16))
                        {
                          goto LABEL_127;
                        }

                        *(v107 + 4 * v109) = *&v164[4 * v111];
                        if (v99 >= *(v167 + 2))
                        {
                          goto LABEL_128;
                        }

                        v112 = *(v0 + 320);
                        v113 = *&v167[8 * v99 + 32];
                        v114 = __CFADD__(v112, v113);
                        v103 = v112 + v113;
                        if (v114)
                        {
                          goto LABEL_129;
                        }

                        v104 = *(v0 + 312);
                        if (v109 >= *(v104 + 16))
                        {
                          goto LABEL_130;
                        }
                      }

                      ++v99;
                      v105 = *(v0 + 264);
                      *(v104 + 8 * v109 + 32) = v103;
                      if (v99 == v105)
                      {
                        v116 = *(v0 + 296);
                        v72 = v169;
                        v73 = v173;
                        goto LABEL_84;
                      }
                    }

                    __break(1u);
LABEL_113:
                    __break(1u);
LABEL_114:
                    __break(1u);
LABEL_115:
                    __break(1u);
                    goto LABEL_116;
                  }

                  v117 = *(v0 + 296);

LABEL_84:
                  v162(*(v0 + 112), *(v0 + 400), *(v0 + 88));
                  v118 = *(v74 + 16);
                  v119 = swift_isUniquelyReferenced_nonNull_native();
                  v120 = *(v0 + 296);
                  if ((v119 & 1) == 0)
                  {
                    v120 = sub_2751E3B18(*(v0 + 296));
                  }

                  v121 = *(v0 + 400);
                  v123 = *(v0 + 104);
                  v122 = *(v0 + 112);
                  v166 = v120;
                  v124 = (v120 + 32);
                  v125 = *(v0 + 88);
                  v126 = sub_27520B6B8();
                  vDSP_vsorti((v74 + 32), v124, 0, v118, v126);
                  v161(v122, v125);
                  v162(v123, v121, v125);
                  v127 = *(v74 + 16);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v74 = sub_2751E3B04(v74);
                  }

                  v128 = *(v0 + 264);
                  v129 = *(v0 + 104);
                  v130 = (v74 + 32);
                  v131 = *(v0 + 88);
                  v132 = sub_27520B6B8();
                  vDSP_vsort((v74 + 32), v127, v132);
                  v161(v129, v131);
                  if (v128)
                  {
                    v133 = *(v0 + 264);
                    v134 = v160;
                    if ((v160 * v133) >> 64 != (v160 * v133) >> 63)
                    {
                      goto LABEL_143;
                    }

                    if (v133 > *(v74 + 16))
                    {
                      goto LABEL_144;
                    }

                    if (v133 > *(v166 + 2))
                    {
                      goto LABEL_145;
                    }

                    v135 = 0;
                    v136 = v133 * v160;
                    while (1)
                    {
                      v137 = *v130;
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (v171 < 0)
                        {
                          goto LABEL_114;
                        }
                      }

                      else
                      {
                        v72 = sub_2751E3B04(v72);
                        if (v171 < 0)
                        {
                          goto LABEL_114;
                        }
                      }

                      if (v136 >= *(v72 + 16))
                      {
                        goto LABEL_115;
                      }

                      *(v72 + 4 * v136 + 32) = v137;
                      v138 = *v124;
                      if ((*v124 & 0x8000000000000000) != 0)
                      {
                        break;
                      }

                      v139 = *(v0 + 312);
                      if (v138 >= *(v139 + 16))
                      {
                        goto LABEL_117;
                      }

                      v140 = *(v139 + 8 * v138 + 32);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v73 = sub_2751E3B18(v73);
                      }

                      if (v136 >= *(v73 + 2))
                      {
                        goto LABEL_118;
                      }

                      ++v135;
                      v141 = *(v0 + 264);
                      *&v73[8 * v136 + 32] = v140;
                      ++v124;
                      ++v130;
                      ++v136;
                      if (v135 == v141)
                      {

                        swift_unknownObjectRelease();

                        *(v0 + 24) = v73;
                        *(v0 + 16) = v72;
                        v173 = v73;
                        v169 = v72;
                        goto LABEL_33;
                      }
                    }

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
                    break;
                  }

                  swift_unknownObjectRelease();

                  v134 = v160;
LABEL_33:
                  v71 = v152;
                  v70 = v134 + 1;
                  v171 += *(v0 + 264);
                  v68 = __N;
                  v156 += 8;
                  v157 += 4;
                  v67 = v154;
                  if (v70 == *(v0 + 288) / *(v0 + 280))
                  {
                    v142 = vdupq_n_s64(v169);
                    goto LABEL_108;
                  }
                }

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
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
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
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
                goto LABEL_147;
              }

              goto LABEL_152;
            }

            v142 = *(v0 + 368);
            v73 = *(v0 + 352);
            v173 = *(v0 + 360);
            v74 = *(v0 + 336);
            v72 = *(v0 + 344);
LABEL_108:
            v143 = *(v0 + 320);
            v114 = __CFADD__(v143, v68);
            v144 = v143 + v68;
            if (!v114)
            {
              *(v0 + 368) = v142;
              *(v0 + 352) = v73;
              *(v0 + 360) = v173;
              *(v0 + 336) = v74;
              *(v0 + 344) = v72;
              *(v0 + 320) = v144;
              *(v0 + 328) = v67;
              v145 = *(v0 + 168);
              v146 = *(v0 + 176);
              v147 = *(v0 + 136);
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v149 = *(MEMORY[0x277D856D8] + 4);
              v150 = swift_task_alloc();
              *(v0 + 384) = v150;
              *v150 = v0;
              v150[1] = sub_2751E2340;
              v43 = *(v0 + 248);
              v151 = *(v0 + 192);
              v25 = *(v0 + 176);
              v23 = v0 + 32;
              v24 = 0;
              v42 = 0;
              v44 = AssociatedConformanceWitness;

              return MEMORY[0x282200310](v23, v24, v42, v43, v25, v44);
            }

            goto LABEL_155;
          }

LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

LABEL_150:
        __break(1u);
        goto LABEL_151;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_150;
  }

  v4 = *(v0 + 328);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);

  if (qword_2809AD190 != -1)
  {
LABEL_147:
    swift_once();
  }

  v7 = sub_27520BAB8();
  __swift_project_value_buffer(v7, qword_2809B38E8);
  v8 = sub_27520BA98();
  v9 = sub_27520BEF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 272);
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = __N;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v10;
    _os_log_impl(&dword_2751CF000, v8, v9, "Invalid data size. Number of rows %ld > specified batch size %ld.", v11, 0x16u);
    MEMORY[0x277C6DCC0](v11, -1, -1);
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = *(v0 + 312);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v18 = *(v0 + 176);

  (*(v17 + 8))(v16, v18);

LABEL_13:

  v172 = 0;
LABEL_22:
  v52 = *(v0 + 248);
  v51 = *(v0 + 256);
  v54 = *(v0 + 232);
  v53 = *(v0 + 240);
  v55 = *(v0 + 224);
  v56 = *(v0 + 192);
  v57 = *(v0 + 152);
  v59 = *(v0 + 120);
  v58 = *(v0 + 128);
  v60 = *(v0 + 112);
  v168 = *(v0 + 104);
  v170 = *(v0 + 80);

  v61 = *(v0 + 8);

  return v61(v172);
}

uint64_t sub_2751E3204()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[10];
  v6 = v0[8];
  (*(v0[23] + 8))(v0[24], v0[22]);
  v7 = *(v4 + 32);
  v7(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v8 = sub_27520BAB8();
    __swift_project_value_buffer(v8, qword_2809B38E8);
    v9 = sub_27520BA98();
    v10 = sub_27520BED8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2751CF000, v9, v10, "Task canceled at scoring.", v11, 2u);
      MEMORY[0x277C6DCC0](v11, -1, -1);
    }

    v12 = v0[43];
    v69 = v0[44];
    v13 = v9;
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[32];
    v18 = v0[26];
    v17 = v0[27];
    v19 = v0[9];
    v20 = v0[10];
    v21 = v0[8];

    (*(v19 + 8))(v20, v21);
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v22 = *(v0[27] + 16);
    v22(v0[30], v0[32], v0[26]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v23 = v0[29];
    v24 = v0[30];
    v25 = v0[26];
    v26 = sub_27520BAB8();
    __swift_project_value_buffer(v26, qword_2809B38E8);
    v22(v23, v24, v25);
    v27 = sub_27520BA98();
    v28 = sub_27520BEF8();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[29];
    if (v29)
    {
      v70 = v28;
      v64 = v7;
      v31 = v0[28];
      v32 = v0[26];
      v65 = v0[25];
      v33 = v0[17];
      v34 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v34;
      *v34 = 138412290;
      v22(v31, v30, v32);
      swift_getAssociatedConformanceWitness();
      v35 = sub_27520C1F8();
      v36 = v0[28];
      if (v35)
      {
        (*(v0[27] + 8))(v0[28], v0[26]);
      }

      else
      {
        v40 = v0[26];
        swift_allocError();
        v64(v41, v36, v40);
      }

      v42 = v0[29];
      v44 = v0[26];
      v43 = v0[27];
      v45 = _swift_stdlib_bridgeErrorToNSError();
      v39 = *(v43 + 8);
      v39(v42, v44);
      *(v67 + 1) = v45;
      *v66 = v45;
      _os_log_impl(&dword_2751CF000, v27, v70, "Error: %@", v67, 0xCu);
      sub_2751E3C18(v66);
      MEMORY[0x277C6DCC0](v66, -1, -1);
      MEMORY[0x277C6DCC0](v67, -1, -1);
    }

    else
    {
      v37 = v0[26];
      v38 = v0[27];

      v39 = *(v38 + 8);
      v39(v30, v37);
    }

    v46 = v0[43];
    v47 = v0[44];
    v48 = v0[42];
    v49 = v0[39];
    v50 = v0[32];
    v51 = v0[26];
    v39(v0[30], v51);
    v39(v50, v51);
  }

  v53 = v0[31];
  v52 = v0[32];
  v55 = v0[29];
  v54 = v0[30];
  v56 = v0[28];
  v57 = v0[24];
  v58 = v0[19];
  v60 = v0[15];
  v59 = v0[16];
  v61 = v0[14];
  v68 = v0[13];
  v71 = v0[10];

  v62 = v0[1];

  return v62(0);
}

uint64_t MatrixNNScorer.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2751E383C(uint64_t *a1, uint64_t a2, char a3)
{
  v7 = *a1;
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2751E38EC;

  return sub_2751E18D8(v7, a2, a3);
}

uint64_t sub_2751E38EC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void *sub_2751E39E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
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

void *sub_2751E3A6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
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

uint64_t *sub_2751E3B7C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2751E3C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD260, &unk_27520DDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2751E3C80(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_2751E39E8((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[4 * a2], 4 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2751E3D3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of MatrixNNScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2751E38EC;

  return v12(a1, a2, a3);
}

uint64_t sub_2751E3F4C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_27520BA38();
  v27 = *(v24 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v31 = MEMORY[0x277D84F90];
  sub_2751E12E4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v12 = 0;
    v11 = v31;
    v13 = v28;
    if (v28 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    v23 = v27 + 32;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v30 = a3 + v12;
      v15 = v9;
      v16 = v29;
      v25(&v30);
      v29 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v31 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2751E12E4(v17 > 1, v18 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18;
      v9 = v15;
      (*(v27 + 32))(v19, v15, v24);
      if (v28 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t TensorNNScorer.__allocating_init(_:on:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  (*(*(*(*v7 + 80) - 8) + 32))(v7 + *(*v7 + 104), a1);
  sub_2751E91C8(a2, v7 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  return v7;
}

uint64_t TensorNNScorer.init(_:on:)(uint64_t a1, uint64_t a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  sub_2751E91C8(a2, v2 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  return v2;
}

uint64_t sub_2751E42EC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = v3;
  *(v4 + 600) = a3;
  *(v4 + 120) = a1;
  v5 = *v3;
  v6 = sub_27520BDC8();
  *(v4 + 144) = v6;
  v7 = *(v6 - 8);
  *(v4 + 152) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F0, &qword_27520DDC0) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F8, &qword_27520DDC8) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  *(v4 + 184) = v11;
  v12 = *(v11 - 8);
  *(v4 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD708, &qword_27520DDD8) - 8) + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v16 = *(v5 + 80);
  *(v4 + 240) = v16;
  v17 = *(v16 - 8);
  *(v4 + 248) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v19 = *(v5 + 88);
  *(v4 + 264) = v19;
  *(v4 + 272) = *(v19 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 280) = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  *(v4 + 288) = v21;
  v22 = *(v21 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = *(v19 + 8);
  v23 = swift_getAssociatedTypeWitness();
  *(v4 + 312) = v23;
  v24 = *(v23 - 8);
  *(v4 + 320) = v24;
  v25 = *(v24 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v26 = sub_27520B8B8();
  *(v4 + 368) = v26;
  v27 = *(v26 - 8);
  *(v4 + 376) = v27;
  v28 = *(v27 + 64) + 15;
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  v29 = sub_27520B898();
  *(v4 + 416) = v29;
  v30 = *(v29 - 8);
  *(v4 + 424) = v30;
  v31 = *(v30 + 64) + 15;
  *(v4 + 432) = swift_task_alloc();
  v32 = sub_27520BA38();
  *(v4 + 440) = v32;
  v33 = *(v32 - 8);
  *(v4 + 448) = v33;
  v34 = *(v33 + 64) + 15;
  *(v4 + 456) = swift_task_alloc();
  *(v4 + 464) = swift_task_alloc();
  *(v4 + 472) = swift_task_alloc();
  *(v4 + 480) = swift_task_alloc();
  *(v4 + 488) = swift_task_alloc();
  *(v4 + 496) = swift_task_alloc();
  *(v4 + 504) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2751E4844, 0, 0);
}

uint64_t sub_2751E4844()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 440);
  v3 = *(v0 + 448);
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = *(v0 + 416);
  v7 = *(v0 + 120);
  v8 = *(v0 + 128);
  v9 = *(v3 + 16);
  *(v0 + 512) = v9;
  *(v0 + 520) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v7, v2);
  sub_27520B918();
  LOBYTE(v1) = sub_27520B888();
  v10 = (*(v5 + 8))(v4, v6);
  if ((v1 & 1) != 0 && v8 >= 1)
  {
    v16 = *(v0 + 128);
    if (*(v0 + 600) == 1 && (v17 = __OFADD__(v16, 1), ++v16, v17))
    {
      __break(1u);
    }

    else
    {
      *(v0 + 528) = v16;
      v18 = *(v0 + 504);
      v19 = *(v0 + 408);
      v20 = *(v0 + 368);
      v21 = *(v0 + 376);
      v65 = *(v0 + 296);
      v67 = *(v0 + 272);
      v22 = *(v0 + 248);
      v63 = *(v0 + 256);
      v23 = *(v0 + 240);
      v24 = *(v0 + 136);
      sub_27520B998();
      v25 = sub_27520B8D8();
      v26 = *(v21 + 8);
      *(v0 + 536) = v26;
      *(v0 + 544) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26(v19, v20);
      v61 = sub_2751E87A4(MEMORY[0x277D84F90], v25, &qword_2809AD1F0, &qword_27520DE80);
      sub_27520B998();
      v27 = sub_27520B8D8();
      v26(v19, v20);
      v28 = sub_2751E87A4(MEMORY[0x277D84F90], v27, &qword_2809AD1E0, &qword_27520C9C8);
      (*(v22 + 16))(v63, v24 + *(*v24 + 104), v23);
      sub_27520BE28();
      *(v0 + 552) = qword_2809B38E0;
      *(v0 + 576) = v28;
      *(v0 + 568) = v61;
      *(v0 + 560) = 0;
      v29 = *(v0 + 272);
      v30 = *(v0 + 280);
      v31 = *(v0 + 240);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v33 = *(MEMORY[0x277D856D8] + 4);
      v34 = swift_task_alloc();
      *(v0 + 584) = v34;
      *v34 = v0;
      v34[1] = sub_2751E4C9C;
      v13 = *(v0 + 352);
      v35 = *(v0 + 296);
      v14 = *(v0 + 280);
      v10 = *(v0 + 232);
      v11 = 0;
      v12 = 0;
      v15 = AssociatedConformanceWitness;
    }

    return MEMORY[0x282200310](v10, v11, v12, v13, v14, v15);
  }

  else
  {
    (*(*(v0 + 448) + 8))(*(v0 + 504), *(v0 + 440));
    v37 = *(v0 + 496);
    v36 = *(v0 + 504);
    v38 = *(v0 + 480);
    v39 = *(v0 + 488);
    v41 = *(v0 + 464);
    v40 = *(v0 + 472);
    v42 = *(v0 + 456);
    v43 = *(v0 + 432);
    v45 = *(v0 + 400);
    v44 = *(v0 + 408);
    v48 = *(v0 + 392);
    v49 = *(v0 + 384);
    v50 = *(v0 + 360);
    v51 = *(v0 + 352);
    v52 = *(v0 + 344);
    v53 = *(v0 + 336);
    v54 = *(v0 + 328);
    v55 = *(v0 + 296);
    v56 = *(v0 + 256);
    v57 = *(v0 + 232);
    v58 = *(v0 + 224);
    v59 = *(v0 + 216);
    v60 = *(v0 + 208);
    v62 = *(v0 + 200);
    v64 = *(v0 + 176);
    v66 = *(v0 + 168);
    v68 = *(v0 + 160);

    v46 = *(v0 + 8);

    return v46(0);
  }
}

uint64_t sub_2751E4C9C()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_2751E616C;
  }

  else
  {
    v3 = sub_2751E4DB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2751E4DB0()
{
  v277 = v0;
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 232);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v19 = *(v0 + 560);
    (*(v2 + 32))(*(v0 + 496), v3, v1);
    if (v19 < 0xFFFFFFFF80000000)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v20 = *(v0 + 560);
    if (v20 > 0x7FFFFFFF)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v21 = *(v0 + 544);
    v22 = *(v0 + 536);
    v23 = *(v0 + 496);
    v24 = *(v0 + 408);
    v25 = *(v0 + 368);
    sub_27520B998();
    v26 = sub_27520B8D8();
    v22(v24, v25);
    v27 = v20 + v26;
    if (__OFADD__(v20, v26))
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v27 < 0xFFFFFFFF80000000)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v27 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v28 = *(v0 + 552);
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);
    v31 = *(v0 + 488);
    v32 = *(v0 + 440);
    v254 = *(v0 + 496);
    v259 = *(v0 + 408);
    v266 = *(v0 + 368);
    v34 = *(v0 + 216);
    v33 = *(v0 + 224);
    v250 = *(v0 + 184);
    v35 = *(v0 + 136);
    *(v0 + 48) = sub_2751E8258(*(v0 + 560) | (v27 << 32), 1);
    sub_2751E94D4(v35 + v28, v33, &qword_2809AD448, &qword_27520D460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1E0, &qword_27520C9C8);
    sub_2751E955C(&qword_2809AD710, &qword_2809AD1E0, &qword_27520C9C8);
    sub_27520BA48();
    v36 = *(v250 + 48);
    v30(v34, v254, v32);
    v30(v34 + v36, v31, v32);
    sub_27520B998();
    sub_2751E9170();
    sub_27520BE68();
    v37 = *(v0 + 56);
    if (v37 < 1)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v38 = *(v0 + 544);
    v39 = *(v0 + 536);
    v40 = *(v0 + 504);
    v41 = *(v0 + 400);
    v42 = *(v0 + 408);
    v43 = *(v0 + 392);
    v44 = *(v0 + 368);
    *(v0 + 16) = 1;
    *(v0 + 24) = v37;
    sub_27520BE98();
    v39(v42, v44);
    sub_27520B998();
    sub_27520BE68();
    v45 = *(v0 + 64);
    if (v45 < 1)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v46 = *(v0 + 544);
    v47 = *(v0 + 536);
    v49 = *(v0 + 392);
    v48 = *(v0 + 400);
    v50 = *(v0 + 384);
    v51 = *(v0 + 368);
    *(v0 + 32) = 1;
    *(v0 + 40) = v45;
    sub_27520BE98();
    v47(v49, v51);
    v52 = sub_27520B8A8();
    v53 = sub_27520B8A8();
    v54 = sub_2751D72DC(v52, v53);

    v47(v50, v51);
    v47(v48, v51);
    if ((v54 & 1) == 0)
    {
      v261 = *(v0 + 576);
      v269 = *(v0 + 568);
      v73 = *(v0 + 496);
      v72 = *(v0 + 504);
      v74 = *(v0 + 488);
      v75 = *(v0 + 440);
      v76 = *(v0 + 448);
      v77 = *(v0 + 288);
      v78 = *(v0 + 296);
      v79 = *(v0 + 280);
      sub_2751D5E78(*(v0 + 216), &qword_2809AD700, &qword_27520DDD0);
      v80 = *(v76 + 8);
      v80(v74, v75);
      v80(v73, v75);
      (*(v77 + 8))(v78, v79);
      v80(v72, v75);
      goto LABEL_20;
    }

    v267 = *(v0 + 528);
    v55 = *(v0 + 504);
    v57 = *(v0 + 440);
    v56 = *(v0 + 448);
    v59 = *(v0 + 192);
    v58 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    v62 = *(v0 + 136);
    sub_2751E94D4(*(v0 + 216), v58, &qword_2809AD700, &qword_27520DDD0);
    v63 = *(v60 + 48);
    sub_2751E6898(v55, v58, v58 + v63, v267, v61);
    v64 = *(v56 + 8);
    v64(v58 + v63, v57);
    v64(v58, v57);
    if ((*(v59 + 48))(v61, 1, v60) == 1)
    {
      v260 = *(v0 + 576);
      v268 = *(v0 + 568);
      v65 = *(v0 + 496);
      v255 = *(v0 + 504);
      v66 = *(v0 + 488);
      v67 = *(v0 + 440);
      v68 = *(v0 + 288);
      v69 = *(v0 + 296);
      v70 = *(v0 + 280);
      v71 = *(v0 + 176);
      sub_2751D5E78(*(v0 + 216), &qword_2809AD700, &qword_27520DDD0);
      v64(v66, v67);
      v64(v65, v67);
      (*(v68 + 8))(v69, v70);
      v64(v255, v67);
      sub_2751D5E78(v71, &qword_2809AD6F8, &qword_27520DDC8);
LABEL_20:

LABEL_34:

      v271 = 0;
      goto LABEL_35;
    }

    v240 = v64;
    sub_2751E91C8(*(v0 + 176), *(v0 + 208), &qword_2809AD700, &qword_27520DDD0);
    v136 = sub_27520B9D8();
    v137 = *(v136 + 16);
    if (v137)
    {
      *(v0 + 72) = MEMORY[0x277D84F90];
      v138 = v136;
      sub_2751E09A4(0, v137, 0);
      v139 = v138;
      v140 = *(v0 + 72);
      v141 = *(v140 + 16);
      v142 = 32;
      do
      {
        v143 = *(v139 + v142);
        *(v0 + 72) = v140;
        v144 = *(v140 + 24);
        if (v141 >= v144 >> 1)
        {
          sub_2751E09A4((v144 > 1), v141 + 1, 1);
          v139 = v138;
          v140 = *(v0 + 72);
        }

        *(v140 + 16) = v141 + 1;
        *(v140 + 4 * v141 + 32) = v143;
        v142 += 4;
        ++v141;
        --v137;
      }

      while (v137);
      v249 = v140;
    }

    else
    {

      v249 = MEMORY[0x277D84F90];
    }

    v145 = *(v0 + 208) + *(*(v0 + 184) + 48);
    v146 = sub_27520B9D8();
    v147 = *(v146 + 16);
    if (v147)
    {
      *(v0 + 80) = MEMORY[0x277D84F90];
      v148 = v146;
      sub_2751E1304(0, v147, 0);
      v149 = v148;
      v150 = *(v0 + 80);
      v151 = *(v150 + 16);
      v152 = 32;
      do
      {
        v153 = *(v149 + v152);
        *(v0 + 80) = v150;
        v154 = *(v150 + 24);
        if (v151 >= v154 >> 1)
        {
          sub_2751E1304((v154 > 1), v151 + 1, 1);
          v149 = v148;
          v150 = *(v0 + 80);
        }

        *(v150 + 16) = v151 + 1;
        *(v150 + 4 * v151 + 32) = v153;
        v152 += 4;
        ++v151;
        --v147;
      }

      while (v147);
      v247 = v150;
    }

    else
    {

      v247 = MEMORY[0x277D84F90];
    }

    v155 = *(v0 + 544);
    v156 = *(v0 + 536);
    v157 = *(v0 + 504);
    v158 = *(v0 + 408);
    v159 = *(v0 + 368);
    sub_27520B998();
    v160 = sub_27520B8D8();
    v161 = v156(v158, v159);
    if (v160 < 0)
    {
      __break(1u);
    }

    else
    {
      v167 = v249;
      if (v160)
      {
        v168 = 0;
        v169 = *(v0 + 592);
        v170 = *(v0 + 576);
        v171 = *(v0 + 568);
        v243 = v160;
        while (1)
        {
          v172 = *(v0 + 528);
          v173 = v168 * v172;
          if ((v168 * v172) >> 64 != (v168 * v172) >> 63)
          {
            goto LABEL_123;
          }

          v174 = (v168 + 1) * v172;
          if (((v168 + 1) * v172) >> 64 != v174 >> 63)
          {
            goto LABEL_124;
          }

          if (v174 < v173)
          {
            goto LABEL_125;
          }

          if ((v173 & 0x8000000000000000) != 0)
          {
            goto LABEL_126;
          }

          v175 = *(v167 + 16);
          if (v175 < v173 || v175 < v174)
          {
            goto LABEL_127;
          }

          v252 = v168 + 1;

          v177 = v171;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v177 = sub_2751E3B40(v171);
          }

          if (v168 >= v177[2])
          {
            goto LABEL_128;
          }

          v272 = v177;
          v178 = &v177[v168];
          sub_2751DC640(v167, v167 + 32, v173, (2 * v174) | 1);
          v179 = *(v247 + 16);
          if (v179 < v173 || v179 < v174)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v170 = sub_2751E3B2C(v170);
          }

          if (v168 >= v170[2])
          {
            goto LABEL_130;
          }

          v257 = &v170[v168];
          v264 = v170;
          sub_2751DC52C(v247, v247 + 32, v173, (2 * v174) | 1);
          if (v168 >= v272[2])
          {
            goto LABEL_131;
          }

          v180 = v178[4];

          *(v0 + 88) = sub_2751E8634(v181);
          sub_2751E7968((v0 + 88));
          if (v169)
          {
            MEMORY[0x277C6DB10](v169);
            v230 = *(v0 + 88);
          }

          v182 = *(v0 + 528);

          if (v182 < 0)
          {
            goto LABEL_132;
          }

          v183 = *(v0 + 88);
          v184 = *(v183 + 16);
          v185 = v184 >= *(v0 + 528) ? *(v0 + 528) : *(v183 + 16);
          if (v184)
          {
            break;
          }

          v202 = *(v0 + 88);

          v191 = MEMORY[0x277D84F90];
          v186 = MEMORY[0x277D84F90];
          v192 = *(MEMORY[0x277D84F90] + 16);
          if (v192)
          {
            goto LABEL_84;
          }

LABEL_93:
          v193 = v191;
          v195 = v272;
LABEL_94:
          if (v168 >= v195[2])
          {
            goto LABEL_133;
          }

          v203 = v178[4];
          v178[4] = v193;

          v204 = v186[2];
          if (v204)
          {
            *(v0 + 112) = v191;
            sub_2751E1304(0, v204, 0);
            v191 = *(v0 + 112);
            v205 = 4;
            v207 = v257;
            v206 = v264;
            while (v168 < v206[2])
            {
              v208 = v186[v205];
              if ((v208 & 0x8000000000000000) != 0)
              {
                goto LABEL_119;
              }

              v209 = v207[4];
              if (v208 >= *(v209 + 16))
              {
                goto LABEL_120;
              }

              v210 = *(v209 + 4 * v208 + 32);
              *(v0 + 112) = v191;
              v212 = *(v191 + 16);
              v211 = *(v191 + 24);
              if (v212 >= v211 >> 1)
              {
                sub_2751E1304((v211 > 1), v212 + 1, 1);
                v207 = v257;
                v206 = v264;
                v191 = *(v0 + 112);
              }

              *(v191 + 16) = v212 + 1;
              *(v191 + 4 * v212 + 32) = v210;
              ++v205;
              if (!--v204)
              {
                goto LABEL_103;
              }
            }

            goto LABEL_118;
          }

LABEL_103:

          if (v168 >= v264[2])
          {
            goto LABEL_134;
          }

          v213 = v257[4];
          v257[4] = v191;

          v170 = v264;
          v169 = 0;
          v167 = v249;
          ++v168;
          v171 = v272;
          if (v252 == v243)
          {
            goto LABEL_107;
          }
        }

        v245 = v178;
        *(v0 + 96) = MEMORY[0x277D84F90];
        sub_2751E12C4(0, v185, 0);
        v186 = *(v0 + 96);
        v187 = 32;
        do
        {
          if (!v185)
          {
            __break(1u);
            goto LABEL_115;
          }

          v188 = *(v183 + v187);
          *(v0 + 96) = v186;
          v190 = v186[2];
          v189 = v186[3];
          if (v190 >= v189 >> 1)
          {
            sub_2751E12C4((v189 > 1), v190 + 1, 1);
            v186 = *(v0 + 96);
          }

          v186[2] = v190 + 1;
          v186[v190 + 4] = v188;
          v187 += 16;
          --v185;
        }

        while (v185);

        v191 = MEMORY[0x277D84F90];
        v178 = v245;
        v192 = v186[2];
        if (!v192)
        {
          goto LABEL_93;
        }

LABEL_84:
        *(v0 + 104) = v191;
        sub_2751E09A4(0, v192, 0);
        v193 = *(v0 + 104);
        v194 = v186 + 4;
        v195 = v272;
        while (v168 < v195[2])
        {
          v197 = *v194++;
          v196 = v197;
          if ((v197 & 0x8000000000000000) != 0)
          {
            goto LABEL_116;
          }

          v198 = v178[4];
          if (v196 >= *(v198 + 16))
          {
            goto LABEL_117;
          }

          v199 = *(v198 + 4 * v196 + 32);
          *(v0 + 104) = v193;
          v201 = *(v193 + 16);
          v200 = *(v193 + 24);
          if (v201 >= v200 >> 1)
          {
            sub_2751E09A4((v200 > 1), v201 + 1, 1);
            v195 = v272;
            v193 = *(v0 + 104);
          }

          *(v193 + 16) = v201 + 1;
          *(v193 + 4 * v201 + 32) = v199;
          if (!--v192)
          {
            v191 = MEMORY[0x277D84F90];
            goto LABEL_94;
          }
        }

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

      v170 = *(v0 + 576);
      v171 = *(v0 + 568);
LABEL_107:
      v273 = v171;
      v214 = v170;
      v215 = *(v0 + 560);
      v216 = *(v0 + 544);
      v217 = *(v0 + 536);
      v218 = *(v0 + 496);
      v219 = *(v0 + 440);
      v220 = *(v0 + 408);
      v221 = *(v0 + 368);
      v258 = *(v0 + 216);
      v265 = *(v0 + 488);
      v253 = *(v0 + 208);

      sub_27520B998();
      v222 = sub_27520B8D8();
      v217(v220, v221);
      sub_2751D5E78(v253, &qword_2809AD700, &qword_27520DDD0);
      sub_2751D5E78(v258, &qword_2809AD700, &qword_27520DDD0);
      v240(v265, v219);
      v161 = (v240)(v218, v219);
      if (!__OFADD__(v215, v222))
      {
        *(v0 + 576) = v214;
        *(v0 + 568) = v273;
        *(v0 + 560) = v215 + v222;
        v223 = *(v0 + 272);
        v224 = *(v0 + 280);
        v225 = *(v0 + 240);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v227 = *(MEMORY[0x277D856D8] + 4);
        v228 = swift_task_alloc();
        *(v0 + 584) = v228;
        *v228 = v0;
        v228[1] = sub_2751E4C9C;
        v164 = *(v0 + 352);
        v229 = *(v0 + 296);
        v165 = *(v0 + 280);
        v161 = *(v0 + 232);
        v162 = 0;
        v163 = 0;
        v166 = AssociatedConformanceWitness;

        return MEMORY[0x282200310](v161, v162, v163, v164, v165, v166);
      }
    }

    __break(1u);
    return MEMORY[0x282200310](v161, v162, v163, v164, v165, v166);
  }

  v4 = *(v0 + 568);
  (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 568);
    v7 = *(v0 + 448);
    v274 = MEMORY[0x277D84F90];
    sub_2751E12E4(0, v5, 0);
    v8 = 0;
    v9 = v6 + 32;
    v10 = *(v0 + 592);
    while (v8 < *(v4 + 16))
    {
      v11 = *(v0 + 464);
      v12 = *(v0 + 136);
      v276[0] = *(v9 + 8 * v8);

      sub_2751E6774(v276, v12, v13, &qword_2809AD1F0, &qword_27520DE80, &qword_2809AD7D0, MEMORY[0x277D2CEA8]);

      v15 = *(v274 + 16);
      v14 = *(v274 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2751E12E4(v14 > 1, v15 + 1, 1);
      }

      ++v8;
      v16 = *(v0 + 464);
      v17 = *(v0 + 440);
      v18 = *(v0 + 448);
      *(v274 + 16) = v15 + 1;
      (*(v18 + 32))(v274 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v16, v17);
      if (v5 == v8)
      {
        goto LABEL_22;
      }
    }

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
    goto LABEL_135;
  }

  v81 = *(v0 + 592);
LABEL_22:
  v82 = *(v0 + 576);
  v83 = *(v0 + 480);
  v262 = *(*(v0 + 424) + 56);
  v262(*(v0 + 168), 1, 1, *(v0 + 416));
  sub_27520BA18();
  v270 = v82;
  v84 = *(v82 + 16);
  if (v84)
  {
    v85 = *(v0 + 576);
    v86 = *(v0 + 448);
    v275 = MEMORY[0x277D84F90];
    sub_2751E12E4(0, v84, 0);
    v87 = 0;
    v88 = v85 + 32;
    while (v87 < *(v270 + 16))
    {
      v89 = *(v0 + 456);
      v90 = *(v0 + 136);
      v276[0] = *(v88 + 8 * v87);

      sub_2751E6774(v276, v90, v91, &qword_2809AD1E0, &qword_27520C9C8, &qword_2809AD710, MEMORY[0x277D2CEB0]);

      v93 = *(v275 + 16);
      v92 = *(v275 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_2751E12E4(v92 > 1, v93 + 1, 1);
      }

      ++v87;
      v95 = *(v0 + 448);
      v94 = *(v0 + 456);
      v96 = *(v0 + 440);
      *(v275 + 16) = v93 + 1;
      (*(v95 + 32))(v275 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v93, v94, v96);
      if (v84 == v87)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_122;
  }

LABEL_28:
  v97 = *(v0 + 560);
  v98 = *(v0 + 528);
  v99 = *(v0 + 472);
  v262(*(v0 + 168), 1, 1, *(v0 + 416));
  sub_27520BA18();
  if (v98 >= v97)
  {
    if (qword_2809AD190 == -1)
    {
LABEL_31:
      v110 = sub_27520BAB8();
      __swift_project_value_buffer(v110, qword_2809B38E8);
      v111 = sub_27520BA98();
      v112 = sub_27520BEF8();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = *(v0 + 560);
        v114 = *(v0 + 128);
        v115 = swift_slowAlloc();
        *v115 = 134218240;
        *(v115 + 4) = v114;
        *(v115 + 12) = 2048;
        *(v115 + 14) = v113;
        _os_log_impl(&dword_2751CF000, v111, v112, "Not enough samples to score with top-k = %ld, target samples = %ld.", v115, 0x16u);
        MEMORY[0x277C6DCC0](v115, -1, -1);
      }

      v116 = *(v0 + 576);
      v117 = *(v0 + 568);
      v118 = *(v0 + 504);
      v120 = *(v0 + 472);
      v119 = *(v0 + 480);
      v121 = *(v0 + 440);
      v122 = *(v0 + 448);

      v123 = *(v122 + 8);
      v123(v120, v121);
      v123(v119, v121);
      v123(v118, v121);

      goto LABEL_34;
    }

LABEL_142:
    swift_once();
    goto LABEL_31;
  }

  v100 = *(v0 + 576);
  v101 = *(v0 + 568);
  v102 = *(v0 + 504);
  v104 = *(v0 + 472);
  v103 = *(v0 + 480);
  v105 = *(v0 + 440);
  v106 = *(v0 + 448);
  v107 = *(v0 + 264);
  v108 = *(v0 + 240);
  v271 = sub_2751E8838(v103, v104, *(v0 + 600));
  v109 = *(v106 + 8);
  v109(v104, v105);
  v109(v103, v105);
  v109(v102, v105);

LABEL_35:
  v125 = *(v0 + 496);
  v124 = *(v0 + 504);
  v126 = *(v0 + 480);
  v127 = *(v0 + 488);
  v129 = *(v0 + 464);
  v128 = *(v0 + 472);
  v130 = *(v0 + 456);
  v131 = *(v0 + 432);
  v133 = *(v0 + 400);
  v132 = *(v0 + 408);
  v231 = *(v0 + 392);
  v232 = *(v0 + 384);
  v233 = *(v0 + 360);
  v234 = *(v0 + 352);
  v235 = *(v0 + 344);
  v236 = *(v0 + 336);
  v237 = *(v0 + 328);
  v238 = *(v0 + 296);
  v239 = *(v0 + 256);
  v241 = *(v0 + 232);
  v242 = *(v0 + 224);
  v244 = *(v0 + 216);
  v246 = *(v0 + 208);
  v248 = *(v0 + 200);
  v251 = *(v0 + 176);
  v256 = *(v0 + 168);
  v263 = *(v0 + 160);

  v134 = *(v0 + 8);

  return v134(v271);
}

uint64_t sub_2751E616C()
{
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[20];
  v6 = v0[18];
  (*(v0[36] + 8))(v0[37], v0[35]);
  v7 = *(v4 + 32);
  v7(v2, v1, v3);
  if (swift_dynamicCast())
  {
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v8 = sub_27520BAB8();
    __swift_project_value_buffer(v8, qword_2809B38E8);
    v9 = sub_27520BA98();
    v10 = sub_27520BED8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2751CF000, v9, v10, "Task canceled at scoring.", v11, 2u);
      MEMORY[0x277C6DCC0](v11, -1, -1);
    }

    v12 = v0[71];
    v13 = v0[63];
    v14 = v0[55];
    v15 = v0[56];
    v82 = v0[45];
    v85 = v0[72];
    v16 = v0[40];
    v79 = v0[39];
    v17 = v0[19];
    v18 = v0[20];
    v19 = v0[18];

    (*(v15 + 8))(v13, v14);
    (*(v17 + 8))(v18, v19);
    (*(v16 + 8))(v82, v79);
  }

  else
  {
    v20 = *(v0[40] + 16);
    v20(v0[43], v0[45], v0[39]);
    if (qword_2809AD190 != -1)
    {
      swift_once();
    }

    v21 = v0[42];
    v22 = v0[43];
    v23 = v0[39];
    v24 = sub_27520BAB8();
    __swift_project_value_buffer(v24, qword_2809B38E8);
    v20(v21, v22, v23);
    v25 = sub_27520BA98();
    v26 = sub_27520BEF8();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[42];
    if (v27)
    {
      v86 = v26;
      v75 = v7;
      v29 = v0[41];
      v30 = v0[39];
      v77 = v0[38];
      v31 = v0[30];
      v32 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v83 = v32;
      *v32 = 138412290;
      v20(v29, v28, v30);
      swift_getAssociatedConformanceWitness();
      v33 = sub_27520C1F8();
      v34 = v0[41];
      if (v33)
      {
        (*(v0[40] + 8))(v0[41], v0[39]);
      }

      else
      {
        v38 = v0[39];
        swift_allocError();
        v75(v39, v34, v38);
      }

      v40 = v0[42];
      v42 = v0[39];
      v41 = v0[40];
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v37 = *(v41 + 8);
      v37(v40, v42);
      *(v83 + 1) = v43;
      *v80 = v43;
      _os_log_impl(&dword_2751CF000, v25, v86, "Error: %@", v83, 0xCu);
      sub_2751D5E78(v80, &qword_2809AD260, &unk_27520DDE0);
      MEMORY[0x277C6DCC0](v80, -1, -1);
      MEMORY[0x277C6DCC0](v83, -1, -1);
    }

    else
    {
      v35 = v0[39];
      v36 = v0[40];

      v37 = *(v36 + 8);
      v37(v28, v35);
    }

    v44 = v0[72];
    v45 = v0[71];
    v46 = v0[63];
    v48 = v0[55];
    v47 = v0[56];
    v49 = v0[45];
    v50 = v0[39];
    v37(v0[43], v50);
    (*(v47 + 8))(v46, v48);
    v37(v49, v50);
  }

  v52 = v0[62];
  v51 = v0[63];
  v53 = v0[60];
  v54 = v0[61];
  v56 = v0[58];
  v55 = v0[59];
  v57 = v0[57];
  v58 = v0[54];
  v60 = v0[50];
  v59 = v0[51];
  v63 = v0[49];
  v64 = v0[48];
  v65 = v0[45];
  v66 = v0[44];
  v67 = v0[43];
  v68 = v0[42];
  v69 = v0[41];
  v70 = v0[37];
  v71 = v0[32];
  v72 = v0[29];
  v73 = v0[28];
  v74 = v0[27];
  v76 = v0[26];
  v78 = v0[25];
  v81 = v0[22];
  v84 = v0[21];
  v87 = v0[20];

  v61 = v0[1];

  return v61(0);
}

uint64_t sub_2751E6774(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t (*a7)(uint64_t *, char *, uint64_t, uint64_t))
{
  v20 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  v21 = *a1;
  sub_2751E94D4(a2 + qword_2809B38E0, &v19 - v14, &qword_2809AD448, &qword_27520D460);

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v17 = sub_2751E955C(a6, a4, a5);
  return v20(&v21, v15, v16, v17);
}

uint64_t sub_2751E6898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v132 = a4;
  v133 = a2;
  v139 = a3;
  *&v136 = a1;
  v131 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD448, &qword_27520D460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v121 = &v108 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD6F0, &qword_27520DDC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v108 - v10;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B0, &qword_27520DE48);
  v11 = *(*(v123 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v108 - v14;
  v134 = sub_27520B8B8();
  v138 = *(v134 - 1);
  v15 = *(v138 + 64);
  v16 = MEMORY[0x28223BE20](v134);
  v18 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v108 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD708, &qword_27520DDD8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v108 - v22;
  v24 = sub_27520BA38();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v118 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v120 = &v108 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v108 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v126 = &v108 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v129 = &v108 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v137 = &v108 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v108 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  v130 = *(v42 - 8);
  v43 = *(v130 + 64);
  MEMORY[0x28223BE20](v42);
  v45 = &v108 - v44;
  v46 = *(v25 + 16);
  v46(&v108 - v44, v133, v24);
  v133 = v42;
  v47 = *(v42 + 48);
  v46(&v45[v47], v139, v24);
  v139 = v45;
  cosineSimilarityTensor(_:_:)(v136, v45, v23);
  v135 = v25;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_2751D5E78(v23, &qword_2809AD708, &qword_27520DDD8);
    v48 = 1;
    v49 = v131;
    v50 = v133;
LABEL_20:
    (*(v130 + 56))(v49, v48, 1, v50);
    return sub_2751D5E78(v139, &qword_2809AD700, &qword_27520DDD0);
  }

  v112 = v47;
  v116 = v33;
  v114 = v46;
  v115 = v25 + 16;
  v51 = v135 + 32;
  v125 = *(v135 + 32);
  v125(v41, v23, v24);
  v52 = v128;
  sub_27520B998();
  v53 = sub_27520B8D8();
  v54 = v24;
  v55 = v132;
  v57 = v138 + 8;
  v56 = *(v138 + 8);
  v58 = v52;
  v59 = v134;
  v56(v58, v134);
  v128 = v53;
  if (v53 >= v55)
  {
    v60 = v55;
  }

  else
  {
    v60 = v53;
  }

  sub_27520B998();
  v61 = sub_27520B8D8();
  v56(v18, v59);
  v138 = v57;
  v113 = v41;
  v110 = v18;
  v109 = v56;
  v117 = v54;
  v111 = v60;
  if (v60 == v61)
  {
    v114(v137, v41, v54);
    sub_27520B998();
    v62 = v129;
    sub_27520B908();
    v63 = v18;
    v64 = v134;
    v56(v63, v134);
    result = v41;
    v66 = v135;
    v67 = v51;
  }

  else
  {
    v68 = v123;
    v69 = *(v123 + 48);
    v70 = v124;
    sub_27520B978();
    v71 = v122;
    sub_2751E94D4(v70, v122, &qword_2809AD7B0, &qword_27520DE48);
    v72 = *(v68 + 48);
    v125(v137, v71, v54);
    v73 = v135;
    (*(v135 + 8))(v71 + v72, v54);
    sub_27520B998();
    v74 = sub_27520B8D8();
    v75 = v18;
    v64 = v134;
    result = (v56)(v75, v134);
    if (v74 < 0)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v66 = v73;
    v67 = v51;
    MEMORY[0x28223BE20](result);
    *(&v108 - 2) = v139;
    *(&v108 - 1) = v70;
    sub_2751E3F4C(sub_2751E953C, (&v108 - 4), 0, v74);
    v76 = sub_27520B898();
    (*(*(v76 - 8) + 56))(v127, 1, 1, v76);
    v62 = v129;
    sub_27520BA18();
    sub_2751D5E78(v70, &qword_2809AD7B0, &qword_27520DE48);
    result = v113;
  }

  v77 = v116;
  if (v128 >= v132)
  {
    v90 = v117;
    (*(v66 + 8))(result, v117);
    v91 = v137;
    v92 = v125;
LABEL_19:
    v50 = v133;
    v107 = *(v133 + 48);
    v49 = v131;
    v92(v131, v91, v90);
    v92(v49 + v107, v62, v90);
    v48 = 0;
    goto LABEL_20;
  }

  v78 = v132 - v111;
  v79 = v117;
  if (__OFSUB__(v132, v111))
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B8, &unk_27520DE50);
  v80 = swift_allocObject();
  v136 = xmmword_27520D440;
  *(v80 + 16) = xmmword_27520D440;
  *(v80 + 32) = 0;
  *(v80 + 40) = 0;
  *(v80 + 48) = 0;
  *(v80 + 56) = v78;
  sub_27520B928();
  v140[3] = MEMORY[0x277D83A90];
  v140[4] = MEMORY[0x277D2CF38];
  sub_27520B9C8();
  v82 = v66 + 8;
  v81 = *(v66 + 8);
  v81(v77, v79);
  v83 = v126;
  v84 = v137;
  sub_27520B9B8();

  v81(v84, v79);
  __swift_destroy_boxed_opaque_existential_1(v140);
  v125(v84, v83, v79);
  v85 = v110;
  sub_27520B998();
  v86 = sub_27520B8D8();
  v87 = v109;
  result = (v109)(v85, v64);
  v88 = v86 * v78;
  if ((v86 * v78) >> 64 != (v86 * v78) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v88 & 0x8000000000000000) == 0)
  {
    v108 = v67;
    v134 = v81;
    v132 = v82;
    v128 = v78;
    if (v88)
    {
      v89 = sub_27520BCF8();
      *(v89 + 16) = v88;
      memset_pattern16((v89 + 32), &unk_27520DDA0, 4 * v88);
    }

    else
    {
      v89 = MEMORY[0x277D84F90];
    }

    v140[0] = v89;
    sub_2751E94D4(v119 + qword_2809B38E0, v121, &qword_2809AD448, &qword_27520D460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1E0, &qword_27520C9C8);
    sub_2751E955C(&qword_2809AD710, &qword_2809AD1E0, &qword_27520C9C8);
    v93 = v118;
    sub_27520BA48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
    v94 = swift_allocObject();
    *(v94 + 16) = v136;
    sub_27520B998();
    v95 = sub_27520B8D8();
    v96 = v64;
    v87(v85, v64);
    v97 = v128;
    *(v94 + 32) = v95;
    *(v94 + 40) = v97;
    sub_27520B8C8();
    v98 = v120;
    sub_27520B9F8();
    v87(v85, v96);
    v90 = v117;
    v99 = v134;
    (v134)(v93, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C0, &qword_27520DE60);
    v100 = *(v135 + 72);
    v101 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v102 = swift_allocObject();
    *(v102 + 16) = v136;
    v103 = v102 + v101;
    v62 = v129;
    v104 = v114;
    v114(v103, v129, v90);
    v104(v103 + v100, v98, v90);
    v105 = sub_27520B898();
    (*(*(v105 - 8) + 56))(v127, 1, 1, v105);
    v106 = v126;
    sub_27520B938();
    v99(v98, v90);
    v99(v62, v90);
    v99(v113, v90);
    v92 = v125;
    v125(v62, v106, v90);
    v91 = v137;
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2751E75B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23[2] = a4;
  v23[3] = a2;
  v6 = sub_27520BA38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7B0, &qword_27520DE48);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = *a1;
  v23[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0) + 48);
  sub_2751E94D4(a3, v15, &qword_2809AD7B0, &qword_27520DE48);
  v17 = *(v12 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7C8, &qword_27520DE68);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D83B88];
  *(v18 + 16) = xmmword_27520DD90;
  v20 = MEMORY[0x277D2CF50];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v16;
  sub_27520BA58();

  v21 = *(v7 + 8);
  v21(&v15[v17], v6);
  sub_27520BA28();
  v21(v10, v6);
  return (v21)(v15, v6);
}

uint64_t *TensorNNScorer.deinit()
{
  v1 = *v0;
  sub_2751D5E78(v0 + qword_2809B38E0, &qword_2809AD448, &qword_27520D460);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  return v0;
}

uint64_t TensorNNScorer.__deallocating_deinit()
{
  TensorNNScorer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2751E78B8(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2751E38EC;

  return sub_2751E42EC(a1, a2, a3);
}

uint64_t sub_2751E7968(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275209598(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7A8, &qword_27520DE40);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751E7ABC(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2751E7ABC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_2751F3A50(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_2751E805C((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_2751D08B8((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_2751E805C((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_2751E805C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
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

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_2751E8258(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_2751E858C(a1, a2);
  v5 = v4;
  if (v4)
  {
    if (v4 < 1)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      v8 = v7 - 32;
      if (v7 < 32)
      {
        v8 = v7 - 29;
      }

      v6[2] = v5;
      v6[3] = 2 * (v8 >> 2);
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v9 = v6[3];

  if (v5 < 0)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  else
  {
    v11 = HIDWORD(v3);
    v12 = v6 + 4;
    v13 = v9 >> 1;
    v14 = a2 >> 63;
    if (!v5)
    {
      goto LABEL_27;
    }

    v13 -= v5;
    while (1)
    {
      v16 = v3 <= v11;
      if (a2 > 0)
      {
        v16 = v3 >= v11;
      }

      if (v16)
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
        goto LABEL_74;
      }

      if (a2 < 0 != ((v3 & 0x80000000) == 0))
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_65;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_66;
        }

        LODWORD(v15) = v3 + a2;
        if (__OFADD__(v3, a2))
        {
          LODWORD(v15) = v14 ^ 0x7FFFFFFF;
        }

        goto LABEL_14;
      }

      v15 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_64;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_67;
      }

      if (v15 > 0x7FFFFFFF)
      {
        break;
      }

LABEL_14:
      *v12++ = v3;
      LODWORD(v3) = v15;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_26:
    LODWORD(v3) = v15;
LABEL_27:
    v17 = v3 <= v11;
    if (a2 > 0)
    {
      v17 = v3 >= v11;
    }

    if (!v17)
    {
      v34 = v14 ^ 0x7FFFFFFF;
      while (a2 < 0 != ((v3 & 0x80000000) == 0))
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_69;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_71;
        }

        LODWORD(v18) = v3 + a2;
        if (!__OFADD__(v3, a2))
        {
          goto LABEL_41;
        }

        LODWORD(v18) = v34;
        if (!v13)
        {
          goto LABEL_42;
        }

        LODWORD(v18) = v34;
LABEL_54:
        v29 = __OFSUB__(v13--, 1);
        if (v29)
        {
          goto LABEL_63;
        }

        *v12++ = v3;
        v30 = v18 <= v11;
        if (a2 > 0)
        {
          v30 = v18 >= v11;
        }

        LODWORD(v3) = v18;
        if (v30)
        {
          goto LABEL_58;
        }
      }

      v18 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_68;
      }

      if (v18 < 0xFFFFFFFF80000000)
      {
        goto LABEL_70;
      }

      if (v18 > 0x7FFFFFFF)
      {
        goto LABEL_72;
      }

LABEL_41:
      if (!v13)
      {
LABEL_42:
        v19 = v6[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_73;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1D0, &unk_27520DE70);
        v22 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v22);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 29;
        }

        v25 = v24 >> 2;
        v22[2] = v21;
        v22[3] = 2 * (v24 >> 2);
        v26 = (v22 + 4);
        v27 = v6[3] >> 1;
        if (v6[2])
        {
          v28 = v6 + 4;
          if (v22 != v6 || v26 >= v28 + 4 * v27)
          {
            memmove(v22 + 4, v28, 4 * v27);
          }

          v6[2] = 0;
        }

        v12 = (v26 + 4 * v27);
        v13 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

        v6 = v22;
        goto LABEL_54;
      }

      goto LABEL_54;
    }

LABEL_58:
    v31 = v6[3];
    if (v31 >= 2)
    {
      v32 = v31 >> 1;
      v29 = __OFSUB__(v32, v13);
      v33 = v32 - v13;
      if (v29)
      {
        goto LABEL_75;
      }

      v6[2] = v33;
    }

    return v6;
  }

  return result;
}

uint64_t sub_2751E858C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = HIDWORD(a1);
  while (1)
  {
    v6 = a1 <= v4;
    if (a2 > 0)
    {
      v6 = a1 >= v4;
    }

    if (v6)
    {
      return result;
    }

    if (a2 < 0 != a1 >= 0)
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_19;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_20;
      }

      v5 = __OFADD__(a1, a2);
      LODWORD(a1) = a1 + a2;
      if (v5)
      {
        LODWORD(a1) = (a2 >> 63) ^ 0x7FFFFFFF;
      }
    }

    else
    {
      v5 = __OFADD__(a2, a1);
      a1 = a2 + a1;
      if (v5)
      {
        goto LABEL_18;
      }

      if (a1 < 0xFFFFFFFF80000000)
      {
        goto LABEL_21;
      }

      if (a1 > 0x7FFFFFFF)
      {
        __break(1u);
        return result;
      }
    }

    v5 = __OFADD__(result++, 1);
    if (v5)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }
}

uint64_t sub_2751E8634(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7A0, &unk_27520FCC0);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = v15 + v17;
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 < 2)
  {
    return v2;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v3);
  v22 = v21 - v3;
  if (!v19)
  {
    v2[2] = v22;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2751E87A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_27520BCF8();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_2751E8838(uint64_t a1, int64_t a2, int a3)
{
  LODWORD(v80) = a3;
  v87 = a2;
  v84 = a1;
  v82 = sub_27520B8B8();
  v3 = *(v82 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27520BA38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD700, &qword_27520DDD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = v7[2];
  v20(&v77 - v18, v84, v6);
  v77 = *(v13 + 48);
  v20(&v19[v77], v87, v6);
  sub_2751E94D4(v19, v17, &qword_2809AD700, &qword_27520DDD0);
  v21 = *(v13 + 48);
  v78 = v19;
  v79 = v21;
  v84 = v6;
  v85 = v11;
  v87 = v3;
  v83 = v7;
  if (v80)
  {
    v22 = v81;
    sub_27520B998();
    v23 = v7[1];
    v23(v17, v6);
    sub_27520B8A8();
    v80 = *(v3 + 8);
    v24 = v82;
    v80(v22, v82);
    sub_27520B9A8();

    v23(&v17[v79], v84);
    sub_2751E94D4(v19, v17, &qword_2809AD700, &qword_27520DDD0);
    v25 = *(v13 + 48);
    sub_27520B998();
    v23(&v17[v25], v84);
    sub_27520B8A8();
    v80(v22, v24);
    sub_27520B9A8();

    v80 = v23;
    v23(v17, v84);
    v26 = v86;
    v27 = v22;
    v28 = v24;
  }

  else
  {
    v29 = v7[4];
    v30 = v86;
    v29(v86, v17, v6);
    v31 = v7[1];
    v31(&v17[v79], v6);
    sub_2751E94D4(v19, v17, &qword_2809AD700, &qword_27520DDD0);
    v29(v85, &v17[*(v13 + 48)], v6);
    v80 = v31;
    v31(v17, v6);
    v26 = v30;
    v27 = v81;
    v28 = v82;
  }

  v32 = sub_27520B9D8();
  v33 = *(v32 + 16);
  v34 = v87;
  if (v33)
  {
    v88 = MEMORY[0x277D84F90];
    v35 = v32;
    sub_2751E09A4(0, v33, 0);
    v36 = v35;
    v37 = v88;
    v38 = v88[2];
    v39 = 32;
    do
    {
      v40 = *(v36 + v39);
      v88 = v37;
      v41 = v37[3];
      if (v38 >= v41 >> 1)
      {
        sub_2751E09A4((v41 > 1), v38 + 1, 1);
        v36 = v35;
        v37 = v88;
      }

      v37[2] = v38 + 1;
      *(v37 + v38 + 8) = v40;
      v39 += 4;
      ++v38;
      --v33;
    }

    while (v33);

    v26 = v86;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v42 = sub_27520B9D8();
  v43 = *(v42 + 16);
  if (v43)
  {
    v88 = MEMORY[0x277D84F90];
    v44 = v42;
    sub_2751E12C4(0, v43, 0);
    v45 = v44;
    v46 = v88;
    v47 = v88[2];
    v48 = 32;
    do
    {
      v49 = *(v45 + v48);
      v88 = v46;
      v50 = v46[3];
      if (v47 >= v50 >> 1)
      {
        sub_2751E12C4((v50 > 1), v47 + 1, 1);
        v45 = v44;
        v46 = v88;
      }

      v46[2] = v47 + 1;
      v46[v47 + 4] = v49;
      v48 += 4;
      ++v47;
      --v43;
    }

    while (v43);

    v28 = v82;
    v26 = v86;
    v34 = v87;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  sub_27520B998();
  v51 = sub_27520B8D8();
  v52 = *(v34 + 8);
  v52(v27, v28);
  sub_27520B998();
  v53 = sub_27520B8D8();
  v54 = v28;
  v55 = v53;
  result = (v52)(v27, v54);
  if (v55 < 0)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  if (v55)
  {
    v88 = MEMORY[0x277D84F90];
    result = sub_2751E1284(0, v55, 0);
    v57 = 0;
    v58 = v88;
    v81 = (v46 + 4);
    v82 = (v37 + 4);
    v87 = v55;
    while (1)
    {
      v59 = v57 * v51;
      if ((v57 * v51) >> 64 != (v57 * v51) >> 63)
      {
        break;
      }

      v60 = ++v57 * v51;
      if ((v57 * v51) >> 64 != (v57 * v51) >> 63)
      {
        goto LABEL_52;
      }

      v61 = v60 - v59;
      if (v60 < v59)
      {
        goto LABEL_53;
      }

      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_54;
      }

      v62 = v37[2];
      if (v62 < v59 || v62 < v60)
      {
        goto LABEL_55;
      }

      if (v62 == v61)
      {

        v63 = v37;
      }

      else
      {
        v63 = MEMORY[0x277D84F90];
        if (v60 != v59)
        {
          if (v61 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1F8, &qword_27520C9D8);
            v63 = swift_allocObject();
            v69 = _swift_stdlib_malloc_size(v63);
            v70 = v69 - 32;
            if (v69 < 32)
            {
              v70 = v69 - 29;
            }

            v63[2] = v61;
            v63[3] = 2 * (v70 >> 2);
          }

          result = memcpy(v63 + 4, (v82 + 4 * v59), 4 * v61);
        }
      }

      v64 = v46[2];
      if (v64 < v59 || v64 < v60)
      {
        goto LABEL_56;
      }

      if (v64 == v61)
      {

        v65 = v46;
      }

      else
      {
        v65 = MEMORY[0x277D84F90];
        if (v60 != v59)
        {
          if (v61 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
            v65 = swift_allocObject();
            v71 = _swift_stdlib_malloc_size(v65);
            v72 = v71 - 32;
            if (v71 < 32)
            {
              v72 = v71 - 25;
            }

            v65[2] = v61;
            v65[3] = 2 * (v72 >> 3);
          }

          result = memcpy(v65 + 4, &v81[8 * v59], 8 * v61);
        }
      }

      v88 = v58;
      v67 = v58[2];
      v66 = v58[3];
      if (v67 >= v66 >> 1)
      {
        result = sub_2751E1284((v66 > 1), v67 + 1, 1);
        v58 = v88;
      }

      v58[2] = v67 + 1;
      v68 = &v58[2 * v67];
      v68[4] = v63;
      v68[5] = v65;
      if (v87 == v57)
      {

        v73 = v84;
        v74 = v80;
        v80(v85, v84);
        v74(v86, v73);
        sub_2751D5E78(v78, &qword_2809AD700, &qword_27520DDD0);
        return v58;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v75 = v84;
  v76 = v80;
  v80(v85, v84);
  v76(v26, v75);
  sub_2751D5E78(v78, &qword_2809AD700, &qword_27520DDD0);
  return MEMORY[0x277D84F90];
}

unint64_t sub_2751E9170()
{
  result = qword_2809AD718[0];
  if (!qword_2809AD718[0])
  {
    sub_27520B8B8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD718);
  }

  return result;
}

uint64_t sub_2751E91C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2751E9230(uint64_t a1)
{
  sub_2751E947C();
  if (v3 <= 0x3F)
  {
    v7 = *(v2 - 8) + 64;
    v4 = *(a1 + 80);
    v5 = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(v5 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of TensorNNScorer.score(_:topK:skipFirst:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 120);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2751E38EC;

  return v12(a1, a2, a3);
}

void sub_2751E947C()
{
  if (!qword_2809AD500)
  {
    sub_27520B8E8();
    v0 = sub_27520BF08();
    if (!v1)
    {
      atomic_store(v0, &qword_2809AD500);
    }
  }
}

uint64_t sub_2751E94D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2751E955C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2751E95B0(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v2 = 0xE900000000000064;
    v3 = 0xEE0065636E617473;
    if (a1 == 2)
    {
      v5 = 0x657261757153324CLL;
    }

    else
    {
      v5 = 0x6944656E69736F43;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 0xE200000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 12876;
    }

    else
    {
      v5 = 12620;
    }
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  v7 = 12620;
  v8 = 0x657261757153324CLL;
  v9 = 0xE900000000000064;
  if (a2 != 2)
  {
    v8 = 0x6944656E69736F43;
    v9 = 0xEE0065636E617473;
  }

  if (a2)
  {
    v7 = 12876;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE200000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_27520C218();
  }

  return v12 & 1;
}

uint64_t HNSWIndex.points.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t HNSWIndex.layers.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_2751E976C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x73726579616CLL;
  }

  else
  {
    v2 = 0x63697274656DLL;
  }

  if (*a2)
  {
    v3 = 0x73726579616CLL;
  }

  else
  {
    v3 = 0x63697274656DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_27520C218();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2751E97EC()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751E985C()
{
  *v0;
  sub_27520BBD8();
}

uint64_t sub_2751E98B0()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751E991C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27520C088();

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

void sub_2751E997C(uint64_t *a1@<X8>)
{
  v2 = 0x63697274656DLL;
  if (*v1)
  {
    v2 = 0x73726579616CLL;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_2751E99AC()
{
  if (*v0)
  {
    return 0x73726579616CLL;
  }

  else
  {
    return 0x63697274656DLL;
  }
}

uint64_t sub_2751E99D8@<X0>(char *a1@<X8>)
{
  v2 = sub_27520C088();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2751E9A3C(uint64_t a1)
{
  v2 = sub_2751ED188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751E9A78(uint64_t a1)
{
  v2 = sub_2751ED188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HNSWIndex.__allocating_init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = MEMORY[0x277D84F90];
  *(v4 + 24) = MEMORY[0x277D84F90];
  *(v4 + 32) = v6;
  *(v4 + 16) = v5;
  swift_beginAccess();
  *(v4 + 24) = a1;

  v8 = sub_2751E9C1C(v7, 4, 16);

  swift_beginAccess();
  *(v4 + 32) = v8;
  return v4;
}

uint64_t HNSWIndex.init(points:metric:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 24) = MEMORY[0x277D84F90];
  *(v2 + 32) = v5;
  *(v2 + 16) = v4;
  swift_beginAccess();
  *(v2 + 24) = a1;

  v7 = sub_2751E9C1C(v6, 4, 16);

  swift_beginAccess();
  v8 = *(v2 + 32);
  *(v2 + 32) = v7;

  return v2;
}

uint64_t sub_2751E9C1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3 + 0x4000000000000000 < 0)
  {
    goto LABEL_300;
  }

  v3 = a3;
  v5 = log(a3);
  v238 = MEMORY[0x277D84F90];
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v6 = v5;
  v228 = v3;
  if (a2)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F98];
    while (1)
    {
      v237[0] = 0x5F726579616CLL;
      v237[1] = 0xE600000000000000;
      v236[0] = v7;
      v9 = sub_27520C1E8();
      MEMORY[0x277C6D100](v9);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD808, &qword_27520DE98);
      v10 = swift_allocObject();
      v10[5] = v8;
      v11 = sub_2751EFB88(MEMORY[0x277D84F90]);
      v10[4] = v11;
      v12 = (v10 + 4);
      v10[2] = 0x5F726579616CLL;
      v10[3] = 0xE600000000000000;
      if (v11[2])
      {
        sub_2751EEAA4(0);
        if (v13)
        {
          goto LABEL_18;
        }
      }

      swift_beginAccess();
      v14 = *v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v236[0] = *v12;
      v16 = v236[0];
      *v12 = 0x8000000000000000;
      v17 = sub_2751EEAA4(0);
      v19 = v16[2];
      v20 = (v18 & 1) == 0;
      v135 = __OFADD__(v19, v20);
      v21 = v19 + v20;
      if (v135)
      {
        goto LABEL_284;
      }

      v22 = v18;
      if (v16[3] < v21)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v27 = v17;
      sub_2751EF408();
      v17 = v27;
      v24 = v236[0];
      if ((v22 & 1) == 0)
      {
LABEL_15:
        v24[(v17 >> 6) + 8] |= 1 << v17;
        *(v24[6] + 8 * v17) = 0;
        *(v24[7] + 8 * v17) = MEMORY[0x277D84F90];
        v28 = v24[2];
        v135 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v135)
        {
          goto LABEL_286;
        }

        v24[2] = v29;
        goto LABEL_17;
      }

LABEL_13:
      v25 = v24[7];
      v26 = *(v25 + 8 * v17);
      *(v25 + 8 * v17) = MEMORY[0x277D84F90];

LABEL_17:
      *v12 = v24;
      swift_endAccess();
LABEL_18:

      MEMORY[0x277C6D1D0](v30);
      if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v238 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v238 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_27520BCD8();
      }

      v7 = (v7 + 1);
      sub_27520BD18();

      if (a2 == v7)
      {
        v233 = v238;
        v3 = v228;
        goto LABEL_23;
      }
    }

    sub_2751EEC4C(v21, isUniquelyReferenced_nonNull_native);
    v17 = sub_2751EEAA4(0);
    if ((v22 & 1) != (v23 & 1))
    {
      goto LABEL_311;
    }

LABEL_12:
    v24 = v236[0];
    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v233 = MEMORY[0x277D84F90];
LABEL_23:
  v32 = *(a1 + 16);
  if (v32 == 1)
  {
    return v233;
  }

  if (v32)
  {
    v235 = v233 & 0xC000000000000001;
    v218 = a1 + 32;
    v229 = v233 + 32;
    v33 = v233 >> 62;
    v34 = 1.0 / v6;
    v35 = 1;
    v216 = *(a1 + 16);
LABEL_26:
    if (v35 == v32)
    {
      goto LABEL_303;
    }

    if (v33)
    {
      v36 = sub_27520C038();
    }

    else
    {
      v36 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v36 - 1;
    if (__OFSUB__(v36, 1))
    {
      goto LABEL_304;
    }

    do
    {
      v237[0] = 0;
      MEMORY[0x277C6DCE0](v237, 8);
    }

    while ((0x20000000000001 * v237[0]) < 0x1FFFFFFFFFF801);
    v38 = floor(-(log(vcvtd_n_f64_u64((v237[0] * 0x20000000000001uLL) >> 64, 0x35uLL) + 0.0) * v34));
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_305;
    }

    if (v38 <= -9.22337204e18)
    {
      goto LABEL_306;
    }

    if (v38 >= 9.22337204e18)
    {
      goto LABEL_307;
    }

    v39 = v37 & ~(v37 >> 63);
    v40 = v38;
    if (v39 >= v38)
    {
      v41 = v38;
    }

    else
    {
      v41 = v39;
    }

    v225 = v35;
    if (v39 > v38)
    {
      v42 = *(v218 + 8 * v35);
      v43 = &unk_2883F8BE0;
      while (1)
      {
        if (v235)
        {
          v45 = MEMORY[0x277C6D4B0](v39, v233);
        }

        else
        {
          if (v39 < 0)
          {
            goto LABEL_289;
          }

          if (v39 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_290:
            __break(1u);
LABEL_291:
            __break(1u);
            goto LABEL_292;
          }

          v45 = *(v233 + 8 * v39 + 32);
        }

        v46 = sub_2751EB36C(a1, v45, v42, v43, 1);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        v43 = swift_allocObject();
        *(v43 + 1) = xmmword_27520DD90;
        if (*(v46 + 16))
        {
          v44 = *(v46 + 32);
        }

        else
        {
          v44 = 0;
        }

        --v39;

        *(v43 + 4) = v44;
        if (v41 >= v39)
        {
          goto LABEL_50;
        }
      }
    }

    v43 = &unk_2883F8BE0;
LABEL_50:
    if (v40 < 0)
    {
      v47 = v225;
      goto LABEL_267;
    }

    v47 = v225;
    if (v3 < 0)
    {
      goto LABEL_308;
    }

    v48 = v41;
LABEL_53:
    v230 = v48;
    if (v235)
    {
      v49 = MEMORY[0x277C6D4B0]();
    }

    else
    {
      if (v48 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_309;
      }

      v49 = *(v229 + 8 * v48);
    }

    v50 = *(v218 + 8 * v47);

    v51 = sub_2751EB36C(a1, v49, v50, v43, 100);

    v52 = *(v51 + 16);
    if (v52 >= v3)
    {
      v52 = v3;
    }

    if (!v3)
    {
      v52 = 0;
    }

    v221 = v52;
    v220 = v51;
    if (v235)
    {

      v53 = v230;
      v54 = MEMORY[0x277C6D4B0](v230, v233);
    }

    else
    {
      v53 = v230;
      if (v230 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_310;
      }

      v54 = *(v229 + 8 * v230);
    }

    v47 = v225;
    v237[0] = v225;
    (*(*v54 + 216))(v237);

    if (!v221)
    {
      v207 = v220;
      goto LABEL_257;
    }

    v219 = v3 << (v53 == 0);

    v55 = 0;
    while (1)
    {
      v56 = v220 + 32 + 16 * v55;
      v234 = *v56;
      v57 = *(v56 + 8);
      if (v235)
      {
        MEMORY[0x277C6D4B0](v53, v233);
      }

      else
      {
        if (v53 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_296;
        }

        v58 = *(v229 + 8 * v53);
      }

      sub_2751ECD1C(v47, v234, v57);

      if (v235)
      {
        MEMORY[0x277C6D4B0](v53, v233);
      }

      else
      {
        if (v53 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_297;
        }

        v59 = *(v229 + 8 * v53);
      }

      sub_2751ECD1C(v234, v47, v57);

      if (v235)
      {
        v60 = MEMORY[0x277C6D4B0](v53, v233);
      }

      else
      {
        if (v53 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_298;
        }

        v60 = *(v229 + 8 * v53);
      }

      swift_beginAccess();
      v61 = *(v60 + 32);
      if (*(v61 + 16) && (v62 = sub_2751EEAA4(v234), (v63 & 1) != 0))
      {
        v226 = v55;
        v64 = *(v61 + 56);
        v65 = *(v64 + 8 * v62);
        v66 = *(v65 + 16);
        if (v66)
        {
          v67 = *(v64 + 8 * v62);

          swift_beginAccess();
          v68 = 32;
          v69 = MEMORY[0x277D84F90];
          do
          {
            v71 = *(v60 + 40);
            if (*(v71 + 16))
            {
              v72 = *(v65 + v68);
              v73 = sub_2751EEAE8(v234, v72);
              if (v74)
              {
                v75 = *(*(v71 + 56) + 4 * v73);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v69 = sub_2751D0E78(0, *(v69 + 2) + 1, 1, v69);
                }

                v77 = *(v69 + 2);
                v76 = *(v69 + 3);
                if (v77 >= v76 >> 1)
                {
                  v69 = sub_2751D0E78((v76 > 1), v77 + 1, 1, v69);
                }

                *(v69 + 2) = v77 + 1;
                v70 = &v69[16 * v77];
                *(v70 + 4) = v72;
                *(v70 + 10) = v75;
              }
            }

            v68 += 8;
            --v66;
          }

          while (v66);

          v3 = v228;
        }

        else
        {
          v69 = MEMORY[0x277D84F90];
        }

        v47 = v225;
        v55 = v226;
      }

      else
      {
        v69 = MEMORY[0x277D84F90];
      }

      if (*(v69 + 2) > v3)
      {
        break;
      }

      v53 = v230;
LABEL_68:
      if (++v55 == v221)
      {

        v207 = v220;
LABEL_257:
        v208 = v53 - 1;
        v209 = *(v207 + 16);
        if (v209)
        {
          v237[0] = MEMORY[0x277D84F90];
          sub_2751E12C4(0, v209, 0);
          v210 = v220;
          v43 = v237[0];
          v211 = *(v237[0] + 16);
          v212 = 32;
          do
          {
            v213 = *(v210 + v212);
            v237[0] = v43;
            v214 = *(v43 + 3);
            if (v211 >= v214 >> 1)
            {
              sub_2751E12C4((v214 > 1), v211 + 1, 1);
              v210 = v220;
              v43 = v237[0];
            }

            *(v43 + 2) = v211 + 1;
            *(v43 + v211 + 4) = v213;
            v212 += 16;
            ++v211;
            --v209;
          }

          while (v209);
          swift_bridgeObjectRelease_n();
          v3 = v228;
          v47 = v225;
        }

        else
        {
          swift_bridgeObjectRelease_n();
          v43 = MEMORY[0x277D84F90];
        }

        v48 = v208;
        if ((v208 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

LABEL_267:
        v35 = v47 + 1;

        v33 = v233 >> 62;
        v32 = v216;
        if (v35 == v216)
        {
          return v233;
        }

        goto LABEL_26;
      }
    }

    v227 = v55;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v232 = v69;
    }

    else
    {
      v232 = sub_2751E3B68(v69);
    }

    v78 = MEMORY[0x277D84F90];
    v79 = *(v232 + 2);
    v80 = (v232 + 32);
    v81 = sub_27520C1D8();
    if (v81 >= v79)
    {
      v90 = v219;
      if (v79 >= 2)
      {
        v91 = -1;
        v92 = v232 + 32;
        for (i = 1; i != v79; ++i)
        {
          v94 = v91;
          v95 = v92;
          do
          {
            v96 = *(v95 + 6);
            if (v96 >= *(v95 + 2))
            {
              break;
            }

            v97 = *(v95 + 2);
            *(v95 + 1) = *v95;
            *v95 = v97;
            *(v95 + 2) = v96;
            v95 -= 16;
            v98 = __CFADD__(v94++, 1);
          }

          while (!v98);
          v92 += 16;
          --v91;
        }
      }

LABEL_201:
      if ((v90 & 0x8000000000000000) == 0)
      {
        v167 = *(v232 + 2);
        if (v167 >= v90)
        {
          v168 = v90;
        }

        else
        {
          v168 = *(v232 + 2);
        }

        if (v228)
        {
          v169 = v168;
        }

        else
        {
          v169 = 0;
        }

        if (v167)
        {
          v237[0] = v78;

          sub_2751E12C4(0, v167, 0);
          v170 = v237[0];
          v171 = *(v237[0] + 16);
          do
          {
            v173 = *v80;
            v80 += 2;
            v172 = v173;
            v237[0] = v170;
            v174 = v170[3];
            v175 = v171 + 1;
            if (v171 >= v174 >> 1)
            {
              sub_2751E12C4((v174 > 1), v171 + 1, 1);
              v175 = v171 + 1;
              v170 = v237[0];
            }

            v170[2] = v175;
            v170[v171 + 4] = v172;
            v171 = v175;
            --v167;
          }

          while (v167);
        }

        else
        {

          v175 = *(v78 + 16);
          v170 = v78;
        }

        v237[0] = MEMORY[0x277C6D350](v175, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
        v176 = v170[2];
        v3 = v228;
        if (v176)
        {
          v177 = v170 + 4;
          do
          {
            v178 = *v177++;
            sub_2751EDDAC(v236, v178);
            --v176;
          }

          while (v176);
        }

        v179 = v237[0];
        if (v169)
        {
          v237[0] = v78;
          sub_2751E12C4(0, v169, 0);
          v180 = v237[0];
          v181 = 32;
          v182 = v232;
          do
          {
            v183 = *&v182[v181];
            v237[0] = v180;
            v185 = *(v180 + 16);
            v184 = *(v180 + 24);
            if (v185 >= v184 >> 1)
            {
              v186 = v182;
              sub_2751E12C4((v184 > 1), v185 + 1, 1);
              v182 = v186;
              v180 = v237[0];
            }

            *(v180 + 16) = v185 + 1;
            *(v180 + 8 * v185 + 32) = v183;
            v181 += 16;
            --v169;
          }

          while (v169);

          v3 = v228;
        }

        else
        {

          v180 = v78;
        }

        v187 = sub_2751EE3C0(v180, v179);

        v188 = 0;
        v189 = 1 << *(v187 + 32);
        if (v189 < 64)
        {
          v190 = ~(-1 << v189);
        }

        else
        {
          v190 = -1;
        }

        v191 = v190 & *(v187 + 56);
        v192 = (v189 + 63) >> 6;
        v53 = v230;
        if (!v191)
        {
          goto LABEL_231;
        }

        do
        {
          while (1)
          {
LABEL_235:
            v194 = *(*(v187 + 48) + ((v188 << 9) | (8 * __clz(__rbit64(v191)))));
            if (v235)
            {
              v195 = MEMORY[0x277C6D4B0](v53, v233);
            }

            else
            {
              if (v53 >= *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_295;
              }

              v195 = *(v229 + 8 * v53);
            }

            v191 &= v191 - 1;
            swift_beginAccess();
            v196 = *(v195 + 32);
            if (*(v196 + 16))
            {
              sub_2751EEAA4(v234);
              if (v197)
              {
                sub_2751EEAA4(v194);
                if (v198)
                {
                  v199 = sub_2751EEAA4(v234);
                  if (v200)
                  {
                    break;
                  }
                }
              }
            }

            v53 = v230;
            if (!v191)
            {
              goto LABEL_231;
            }
          }

          v201 = *(*(v196 + 56) + 8 * v199);
          v202 = *(v201 + 16);
          if (v202)
          {
            v203 = 0;
            v204 = v201 + 32;
            while (*(v204 + 8 * v203) != v194)
            {
              if (v202 == ++v203)
              {
                goto LABEL_251;
              }
            }

            v224 = sub_2751ECB80();
            v205 = sub_2751ECBD0(v236, v234);
            if (*v206)
            {
              sub_2751ECC94(v203);
            }

            (v205)(v236, 0);
            (v224)(v237, 0);
          }

LABEL_251:

          v3 = v228;
          v53 = v230;
        }

        while (v191);
LABEL_231:
        while (1)
        {
          v193 = v188 + 1;
          if (__OFADD__(v188, 1))
          {
            goto LABEL_282;
          }

          if (v193 >= v192)
          {

            v47 = v225;
            v55 = v227;
            goto LABEL_68;
          }

          v191 = *(v187 + 56 + 8 * v193);
          ++v188;
          if (v191)
          {
            v188 = v193;
            goto LABEL_235;
          }
        }
      }

LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v82 = v81;
    if (v79 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD848, &qword_27520E0B0);
      v85 = sub_27520BCF8();
      *(v85 + 16) = v79 >> 1;
      v83 = v78;
      v84 = (v85 + 32);
    }

    else
    {
      v83 = v78;
      v84 = (v78 + 32);
      v85 = v83;
      if (!v79)
      {
        v217 = v83;
LABEL_104:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2751F3A50(v83);
        }

        v237[0] = v83;
        v86 = *(v83 + 2);
        if (v86 >= 2)
        {
          do
          {
            v87 = *&v83[16 * v86];
            v88 = *&v83[16 * v86 + 24];
            sub_2751EDBB0(&v80[2 * v87], &v80[2 * *&v83[16 * v86 + 16]], &v80[2 * v88], v84);
            if (v88 < v87)
            {
              goto LABEL_287;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v83 = sub_2751F3A50(v83);
            }

            if (v86 - 2 >= *(v83 + 2))
            {
              goto LABEL_288;
            }

            v89 = &v83[16 * v86];
            *v89 = v87;
            *(v89 + 1) = v88;
            v237[0] = v83;
            sub_2751F39C4(v86 - 1);
            v83 = v237[0];
            v86 = *(v237[0] + 16);
          }

          while (v86 > 1);
        }

        *(v217 + 16) = 0;

        v78 = MEMORY[0x277D84F90];
        v90 = v219;
        goto LABEL_201;
      }
    }

    v222 = v82;
    v99 = 0;
    v223 = v232 + 40;
    v217 = v85;
    while (1)
    {
      v100 = v99++;
      if (v99 >= v79)
      {
        goto LABEL_137;
      }

      v101 = *&v223[16 * v99];
      v102 = 16 * v100;
      v103 = *&v223[16 * v100];
      v104 = v100 + 2;
      v105 = &v232[16 * v100 + 72];
      do
      {
        if (v79 == v104)
        {
          v99 = v79;
          if (v101 >= v103)
          {
            goto LABEL_137;
          }

          goto LABEL_131;
        }

        v106 = *v105 >= *(v105 - 4);
        ++v104;
        v105 += 4;
      }

      while ((((v101 < v103) ^ v106) & 1) != 0);
      v99 = v104 - 1;
      if (v101 >= v103)
      {
        goto LABEL_137;
      }

LABEL_131:
      if (v99 < v100)
      {
        break;
      }

      if (v100 < v99)
      {
        v107 = 16 * v99;
        v108 = v99;
        v109 = v100;
        do
        {
          if (v109 != --v108)
          {
            v110 = &v232[v107];
            v111 = *&v232[v102 + 32];
            v112 = *&v232[v102 + 40];
            *&v232[v102 + 32] = *&v232[v107 + 16];
            *(v110 + 2) = v111;
            *(v110 + 6) = v112;
          }

          ++v109;
          v107 -= 16;
          v102 += 16;
        }

        while (v109 < v108);
      }

LABEL_137:
      if (v99 < v79)
      {
        if (__OFSUB__(v99, v100))
        {
          goto LABEL_291;
        }

        if (v99 - v100 < v222)
        {
          v113 = v100 + v222;
          if (__OFADD__(v100, v222))
          {
            goto LABEL_293;
          }

          if (v113 >= v79)
          {
            v113 = v79;
          }

          if (v113 < v100)
          {
            goto LABEL_294;
          }

          if (v99 != v113)
          {
            v114 = v100 - v99;
            v115 = &v232[16 * v99 + 24];
            do
            {
              v116 = v115;
              v117 = v114;
              do
              {
                v118 = *(v116 + 16);
                if (v118 >= *v116)
                {
                  break;
                }

                v119 = *(v116 + 8);
                *(v116 + 8) = *(v116 - 8);
                *(v116 - 8) = v119;
                *v116 = v118;
                v116 -= 16;
                v98 = __CFADD__(v117++, 1);
              }

              while (!v98);
              ++v99;
              --v114;
              v115 += 16;
            }

            while (v99 != v113);
            v99 = v113;
          }
        }
      }

      if (v99 < v100)
      {
        goto LABEL_285;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_2751D08B8(0, *(v83 + 2) + 1, 1, v83);
      }

      v121 = *(v83 + 2);
      v120 = *(v83 + 3);
      v122 = v121 + 1;
      if (v121 >= v120 >> 1)
      {
        v83 = sub_2751D08B8((v120 > 1), v121 + 1, 1, v83);
      }

      *(v83 + 2) = v122;
      v123 = &v83[16 * v121];
      *(v123 + 4) = v100;
      *(v123 + 5) = v99;
      if (v121)
      {
        while (1)
        {
          v124 = v122 - 1;
          if (v122 >= 4)
          {
            break;
          }

          if (v122 == 3)
          {
            v125 = *(v83 + 4);
            v126 = *(v83 + 5);
            v135 = __OFSUB__(v126, v125);
            v127 = v126 - v125;
            v128 = v135;
LABEL_172:
            if (v128)
            {
              goto LABEL_274;
            }

            v141 = &v83[16 * v122];
            v143 = *v141;
            v142 = *(v141 + 1);
            v144 = __OFSUB__(v142, v143);
            v145 = v142 - v143;
            v146 = v144;
            if (v144)
            {
              goto LABEL_277;
            }

            v147 = &v83[16 * v124 + 32];
            v149 = *v147;
            v148 = *(v147 + 1);
            v135 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v135)
            {
              goto LABEL_280;
            }

            if (__OFADD__(v145, v150))
            {
              goto LABEL_281;
            }

            if (v145 + v150 >= v127)
            {
              if (v127 < v150)
              {
                v124 = v122 - 2;
              }

              goto LABEL_193;
            }

            goto LABEL_186;
          }

          v151 = &v83[16 * v122];
          v153 = *v151;
          v152 = *(v151 + 1);
          v135 = __OFSUB__(v152, v153);
          v145 = v152 - v153;
          v146 = v135;
LABEL_186:
          if (v146)
          {
            goto LABEL_276;
          }

          v154 = &v83[16 * v124];
          v156 = *(v154 + 4);
          v155 = *(v154 + 5);
          v135 = __OFSUB__(v155, v156);
          v157 = v155 - v156;
          if (v135)
          {
            goto LABEL_279;
          }

          if (v157 < v145)
          {
            goto LABEL_123;
          }

LABEL_193:
          v162 = v124 - 1;
          if (v124 - 1 >= v122)
          {
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
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
            __break(1u);
LABEL_284:
            __break(1u);
LABEL_285:
            __break(1u);
LABEL_286:
            __break(1u);
LABEL_287:
            __break(1u);
LABEL_288:
            __break(1u);
LABEL_289:
            __break(1u);
            goto LABEL_290;
          }

          v163 = *&v83[16 * v162 + 32];
          v164 = &v83[16 * v124 + 32];
          v165 = *(v164 + 1);
          sub_2751EDBB0(&v80[2 * v163], &v80[2 * *v164], &v80[2 * v165], v84);
          if (v165 < v163)
          {
            goto LABEL_270;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_2751F3A50(v83);
          }

          if (v162 >= *(v83 + 2))
          {
            goto LABEL_271;
          }

          v166 = &v83[16 * v162];
          *(v166 + 4) = v163;
          *(v166 + 5) = v165;
          v237[0] = v83;
          sub_2751F39C4(v124);
          v83 = v237[0];
          v122 = *(v237[0] + 16);
          if (v122 <= 1)
          {
            goto LABEL_123;
          }
        }

        v129 = &v83[16 * v122 + 32];
        v130 = *(v129 - 64);
        v131 = *(v129 - 56);
        v135 = __OFSUB__(v131, v130);
        v132 = v131 - v130;
        if (v135)
        {
          goto LABEL_272;
        }

        v134 = *(v129 - 48);
        v133 = *(v129 - 40);
        v135 = __OFSUB__(v133, v134);
        v127 = v133 - v134;
        v128 = v135;
        if (v135)
        {
          goto LABEL_273;
        }

        v136 = &v83[16 * v122];
        v138 = *v136;
        v137 = *(v136 + 1);
        v135 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v135)
        {
          goto LABEL_275;
        }

        v135 = __OFADD__(v127, v139);
        v140 = v127 + v139;
        if (v135)
        {
          goto LABEL_278;
        }

        if (v140 >= v132)
        {
          v158 = &v83[16 * v124 + 32];
          v160 = *v158;
          v159 = *(v158 + 1);
          v135 = __OFSUB__(v159, v160);
          v161 = v159 - v160;
          if (v135)
          {
            goto LABEL_283;
          }

          if (v127 < v161)
          {
            v124 = v122 - 2;
          }

          goto LABEL_193;
        }

        goto LABEL_172;
      }

LABEL_123:
      if (v99 >= v79)
      {
        goto LABEL_104;
      }
    }

LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
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

  *(v217 + 16) = 0;

  __break(1u);
LABEL_311:
  result = sub_27520C258();
  __break(1u);
  return result;
}

uint64_t HNSWIndex.search(query:k:ef:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v10 = v3[4];
  if (v10 >> 62)
  {
LABEL_32:
    v27 = sub_27520C038();
    v12 = v27 - 1;
    if (!__OFSUB__(v27, 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 - 1;
    if (!__OFSUB__(v11, 1))
    {
LABEL_3:
      v29 = a3;
      v30 = a2;
      v13 = v12 & ~(v12 >> 63);
      swift_beginAccess();
      v6 = 0;
      a3 = 0;
      v4 = &qword_2809AD1A8;
      v5 = &unk_27520DD60;
      v31 = xmmword_27520DD90;
      while (1)
      {
        a2 = v13 - 1;
        if (v13 <= 1)
        {
          if ((v13 != 1) | a3 & 1)
          {
            v4 = v3[3];
            swift_beginAccess();
            v5 = v3[4];
            if ((v5 & 0xC000000000000001) != 0)
            {
              goto LABEL_35;
            }

            if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v19 = *(v5 + 32);

              goto LABEL_18;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          a3 = 1;
          a2 = 1;
        }

        v14 = v3[3];
        swift_beginAccess();
        v15 = v3[4];
        if ((v15 & 0xC000000000000001) != 0)
        {

          v16 = MEMORY[0x277C6D4B0](v13, v15);
        }

        else
        {
          if (v13 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v16 = *(v15 + 8 * v13 + 32);
        }

        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_27520DD90;
        *(inited + 32) = v6;
        v18 = sub_2751EB36C(v14, v16, a1, inited, 1);

        swift_setDeallocating();
        if (*(v18 + 16))
        {
          v6 = *(v18 + 32);
        }

        else
        {
          v6 = 0;
        }

        v13 = a2;
      }
    }
  }

  __break(1u);
LABEL_35:

  v19 = MEMORY[0x277C6D4B0](0, v5);
LABEL_18:
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  v20 = swift_initStackObject();
  *(v20 + 16) = v31;
  *(v20 + 32) = v6;
  v3 = sub_2751EB36C(v4, v19, a1, v20, v29);

  swift_setDeallocating();
  if ((v30 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v3[2];
  if (v21 >= v30)
  {
    v21 = v30;
  }

  v22 = 2 * v21;
  if (v30)
  {
    a2 = v22 + 1;
  }

  else
  {
    a2 = 1;
  }

  sub_27520C228();
  swift_unknownObjectRetain_n();
  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (v24 != a2 >> 1)
  {
LABEL_38:
    swift_unknownObjectRelease();
    sub_2751ED0B8(v3, (v3 + 4), 0, a2);
    v25 = v28;
    goto LABEL_29;
  }

  v25 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v25)
  {
    v25 = MEMORY[0x277D84F90];
LABEL_29:
    swift_unknownObjectRelease();
  }

  return v25;
}

uint64_t sub_2751EB36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a4 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v117 = MEMORY[0x277D84F90];
    sub_2751E1264(0, v8, 0);
    v9 = v117;
    v11 = *(v5 + 16);
    v12 = (a4 + 32);
    v13 = a1 + 32;
    v14 = *(a1 + 16);
    do
    {
      v16 = *v12++;
      v15 = v16;
      if (v16 >= v14)
      {
        goto LABEL_116;
      }

      v17 = off_2883F9B70[v11];
      v18 = *(v13 + 8 * v15);

      v19 = (v17)(a3, v18);

      v117 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_2751E1264((v20 > 1), v21 + 1, 1);
        v9 = v117;
      }

      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = v15;
      *(v22 + 40) = v19;
      --v8;
    }

    while (v8);
    v23 = a5;
    v6 = v104;
  }

  else
  {
    v23 = a5;
  }

  v119 = v9;
  v8 = 0;
  sub_2751EC3D4(&v119, sub_2751E3B54);
  v24 = v119;
  v25 = *(v119 + 16);
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD228, &unk_27520CA40);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 40;
    if (v27 < 40)
    {
      v28 = v27 - 25;
    }

    v26[2] = v28 >> 4;
    v26[3] = 0;
    v26[4] = 0;
    sub_2751D3B28(v26 + 2, v26 + 5, v25, v24);
  }

  else
  {

    v26 = *sub_27520BA78();
  }

  v29 = a1;
  v118 = v26;

  v31 = sub_2751EFC90(v30);

  v32 = v26[3];
  if (!v32)
  {
LABEL_104:

    return v24;
  }

  while (1)
  {
    if (v32 < 1)
    {
      goto LABEL_117;
    }

    v33 = v26[4];
    v34 = v26[2];
    if (v33 < v34)
    {
      v34 = 0;
    }

    v35 = &v26[2 * (v33 - v34)];
    v36 = *(v35 + 5);
    v37 = v35[12];
    v38 = *(v24 + 2);
    if (v38)
    {
      v39 = *&v24[16 * v38 + 24];
      v26 = v118;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_23;
      }

LABEL_22:
      sub_2751D2528();
      v26 = v118;
      goto LABEL_23;
    }

    v26 = v118;
    v39 = INFINITY;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_23:
    v40 = v26[4];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_118;
    }

    v43 = v26[3];
    if (v42 >= v26[2])
    {
      v42 = 0;
    }

    v26[4] = v42;
    if (__OFSUB__(v43, 1))
    {
      break;
    }

    v26[3] = v43 - 1;
    if (v39 < v37)
    {
      goto LABEL_104;
    }

    swift_beginAccess();
    v44 = *(a2 + 32);
    if (*(v44 + 16) && (v45 = sub_2751EEAA4(v36), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);
    }

    else
    {
      v47 = MEMORY[0x277D84F90];
    }

    v109 = *(v47 + 16);
    if (v109)
    {
      v48 = 0;
      v107 = v47;
      v108 = v47 + 32;
      while (1)
      {
        if (v48 >= *(v47 + 16))
        {
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
          goto LABEL_119;
        }

        v49 = *(v108 + 8 * v48);
        if (v31[2])
        {
          v50 = v31[5];
          v51 = *(v108 + 8 * v48);
          v52 = sub_27520C268();
          v53 = -1 << *(v31 + 32);
          v54 = v52 & ~v53;
          if ((*(v31 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54))
          {
            v55 = ~v53;
            while (*(v31[6] + 8 * v54) != v49)
            {
              v54 = (v54 + 1) & v55;
              if (((*(v31 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v54) & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            goto LABEL_35;
          }
        }

LABEL_42:
        v112 = v48;
        v56 = v31[5];
        v57 = sub_27520C268();
        v58 = -1 << *(v31 + 32);
        v59 = v57 & ~v58;
        if ((*(v31 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59))
        {
          v60 = ~v58;
          while (*(v31[6] + 8 * v59) != v49)
          {
            v59 = (v59 + 1) & v60;
            if (((*(v31 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v59) & 1) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
LABEL_46:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v115 = v31;
          sub_2751EE0B0(v49, v59, isUniquelyReferenced_nonNull_native);
          v31 = v115;
        }

        if ((v49 & 0x8000000000000000) != 0)
        {
          goto LABEL_108;
        }

        if (v49 >= *(v29 + 16))
        {
          goto LABEL_109;
        }

        v111 = v31;
        v62 = off_2883F9B70[*(v6 + 16)];
        v63 = *(a1 + 32 + 8 * v49);

        v64 = (v62)(a3, v63);

        if (v64 >= v39 && *(v24 + 2) >= v23)
        {
          v31 = v111;
          v48 = v112;
          v47 = v107;
          goto LABEL_35;
        }

        v65 = v26[3];
        v66 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_110;
        }

        v67 = v118;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        if (v67[2] < v66 || (v68 & 1) == 0)
        {
          sub_2751D2924(v68, v66);
          v67 = v118;
        }

        sub_275208894(v67 + 2, (v67 + 5), v49, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751D2528();
        }

        v26 = v118;
        if (sub_2751EFD04(v118 + 2, (v118 + 5), sub_2751EC534, 0))
        {
          v69 = v26[3];
          if (v69 < 0)
          {
            goto LABEL_111;
          }

          if (v69)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
            v70 = sub_27520BCF8();
            v70[2] = v69;
          }

          else
          {
            v70 = MEMORY[0x277D84F90];
          }

          v113[0] = 0;
          v115 = v70 + 4;
          v116 = v69;
          sub_2751EFA54(v26 + 2, v26 + 40, &v115, v113);
          if (v69 < v113[0])
          {
            goto LABEL_112;
          }

          v70[2] = v113[0];

          v115 = v70;
          sub_2751EC3D4(&v115, sub_2752095D0);
          v71 = v26[3];
          if (v71 < 0)
          {
            goto LABEL_113;
          }

          v106 = v24;
          v72 = v115;
          if (v71)
          {
            v73 = 0;
            v74 = v115[2];
            v75 = v115 + 5;
            while (v74 != v73)
            {
              if (v73 >= v72[2])
              {
                __break(1u);
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              if (v73 >= v26[3])
              {
                goto LABEL_106;
              }

              v79 = *(v75 - 1);
              v80 = *v75;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_2751D2528();
                v26 = v118;
              }

              v76 = v26[4];
              if ((v73 + v76) >= v26[2])
              {
                v77 = v26[2];
              }

              else
              {
                v77 = 0;
              }

              v78 = &v26[2 * v73 + 2 * (v76 - v77)];
              v78[5] = v79;
              *(v78 + 12) = v80;
              v75 += 4;
              if (v71 == ++v73)
              {
                break;
              }
            }
          }

          v23 = a5;
          v6 = v104;
          v29 = a1;
          v24 = v106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2751D0E64(0, *(v24 + 2) + 1, 1, v24);
        }

        v82 = *(v24 + 2);
        v81 = *(v24 + 3);
        v83 = v82 + 1;
        if (v82 >= v81 >> 1)
        {
          v24 = sub_2751D0E64((v81 > 1), v82 + 1, 1, v24);
        }

        *(v24 + 2) = v83;
        v84 = v24 + 32;
        v85 = &v24[16 * v82 + 32];
        *v85 = v49;
        *(v85 + 8) = v64;
        v115 = v24 + 32;
        v116 = v82 + 1;
        v86 = sub_27520C1D8();
        if (v86 <= v82)
        {
          break;
        }

        if (!v82)
        {
          goto LABEL_94;
        }

        v87 = -1;
        v88 = 1;
        v47 = v107;
        do
        {
          v90 = v87;
          v91 = v84;
          do
          {
            v92 = *(v91 + 6);
            if (v92 >= *(v91 + 2))
            {
              break;
            }

            v93 = *(v91 + 2);
            *(v91 + 1) = *v91;
            *v91 = v93;
            *(v91 + 2) = v92;
            v91 -= 16;
          }

          while (!__CFADD__(v90++, 1));
          v84 += 16;
          --v87;
        }

        while (v88++ != v82);
LABEL_95:
        v99 = *(v24 + 2);
        if (v99 <= v23)
        {
          v31 = v111;
          v48 = v112;
        }

        else
        {
          v31 = v111;
          v48 = v112;
          if (!v99)
          {
            goto LABEL_114;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v100 = *(v24 + 2);
            if (!v100)
            {
              goto LABEL_115;
            }
          }

          else
          {
            v24 = sub_2751E3B54(v24);
            v100 = *(v24 + 2);
            if (!v100)
            {
              goto LABEL_115;
            }
          }

          *(v24 + 2) = v100 - 1;
        }

LABEL_35:
        if (++v48 == v109)
        {
          goto LABEL_16;
        }
      }

      v95 = v86;
      v96 = v83 >> 1;
      if (v82)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v97 = sub_27520BCF8();
        *(v97 + 16) = v96;
      }

      else
      {
        v97 = MEMORY[0x277D84F90];
      }

      v113[0] = v97 + 32;
      v113[1] = v96;
      v98 = v97;
      sub_2751ED610(v113, v114, &v115, v95);
      *(v98 + 16) = 0;

LABEL_94:
      v47 = v107;
      goto LABEL_95;
    }

LABEL_16:

    v32 = v26[3];
    if (!v32)
    {
      goto LABEL_104;
    }
  }

LABEL_119:
  __break(1u);
  MEMORY[0x277C6DB10](v8);
  __break(1u);
  MEMORY[0x277C6DB10](v8);

  __break(1u);
  return result;
}

uint64_t HNSWIndex.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  LOBYTE(v5) = a2;
  if (*(v3 + 16) <= 1u)
  {
    v4 = 0xE200000000000000;
    goto LABEL_6;
  }

  if (*(v3 + 16) != 2)
  {
    v4 = 0xEE0065636E617473;
LABEL_6:
    v8 = sub_27520C218();

    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_7:
  a3 = a3 * a3;
LABEL_8:
  swift_beginAccess();
  v9 = *(v3 + 32);
  if (v9 >> 62)
  {
LABEL_29:
    v24 = sub_27520C038();
    v11 = v24 - 1;
    if (!__OFSUB__(v24, 1))
    {
      goto LABEL_10;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    v22 = MEMORY[0x277C6D4B0](0);
    v21 = v25;
LABEL_25:
    swift_endAccess();
    v23 = sub_2751EBF88(v22, a1, v4, a3);

    v26 = v23;
    if (v21)
    {
      sub_2751EC3D4(&v26, sub_2751E3B54);
      return v26;
    }

    return v23;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_31;
  }

LABEL_10:
  v25 = v5;
  v12 = v11 & ~(v11 >> 63);
  swift_beginAccess();
  v4 = 0;
  v13 = 0;
  while (1)
  {
    v5 = v12 - 1;
    if (v12 > 1)
    {
      goto LABEL_16;
    }

    if ((v12 != 1) | v13 & 1)
    {
      break;
    }

    v13 = 1;
    v5 = 1;
LABEL_16:
    v14 = *(v3 + 24);
    swift_beginAccess();
    v15 = *(v3 + 32);
    if ((v15 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x277C6D4B0](v12, v15);
    }

    else
    {
      if (v12 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_29;
      }

      v16 = *(v15 + 8 * v12 + 32);
    }

    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_27520DD90;
    *(inited + 32) = v4;
    v18 = sub_2751EB36C(v14, v16, a1, inited, 1);

    swift_setDeallocating();
    if (*(v18 + 16))
    {
      v4 = *(v18 + 32);
    }

    else
    {
      v4 = 0;
    }

    v12 = v5;
  }

  result = swift_beginAccess();
  v20 = *(v3 + 32);
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  v21 = v25;
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

char *sub_2751EBF88(uint64_t a1, uint64_t a2, unint64_t a3, float a4)
{
  v5 = v4;
  v60 = *MEMORY[0x277D85DE8];
  v8 = off_2883F9B70[*(v4 + 16)];
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  v9 = *(v4 + 24);
  if (*(v9 + 16) <= a3)
  {
LABEL_43:
    __break(1u);
  }

  v10 = *(v9 + 8 * a3 + 32);

  v11 = (v8)(a2, v10);

  v59 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1B8, &qword_27520C9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = a3;
  *(inited + 40) = v11;
  v13 = MEMORY[0x277D84F90];
  v14 = 1;
  do
  {
    v15 = v14 - 1;
    v16 = inited + 16 * v15;
    v17 = *(v16 + 32);
    v18 = *(v16 + 40);
    *(inited + 16) = v15;
    v19 = v59;
    if (*(v59 + 16) && (v20 = *(v59 + 40), v21 = sub_27520C268(), v22 = -1 << *(v19 + 32), v23 = v21 & ~v22, ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (*(*(v19 + 48) + 8 * v23) != v17)
      {
        v23 = (v23 + 1) & v24;
        if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      sub_2751EDDAC(&v58, v17);
      if (v18 <= a4)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2751D0E64(0, *(v13 + 2) + 1, 1, v13);
        }

        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = sub_2751D0E64((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        v27 = &v13[16 * v26];
        *(v27 + 4) = v17;
        *(v27 + 10) = v18;
      }

      swift_beginAccess();
      v28 = *(a1 + 32);
      if (*(v28 + 16) && (v29 = sub_2751EEAA4(v17), (v30 & 1) != 0))
      {
        v31 = *(*(v28 + 56) + 8 * v29);
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v57 = *(v31 + 16);
      if (v57)
      {
        v54 = v13;
        v32 = 0;
        v33 = v59;
        v56 = v31 + 32;
        v34 = v59 + 56;
        while (v32 < *(v31 + 16))
        {
          v35 = *(v56 + 8 * v32);
          if (*(v33 + 16) && (v36 = *(v33 + 40), v37 = *(v56 + 8 * v32), v38 = sub_27520C268(), v39 = -1 << *(v33 + 32), v40 = v38 & ~v39, ((*(v34 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) != 0))
          {
            v41 = ~v39;
            while (*(*(v33 + 48) + 8 * v40) != v35)
            {
              v40 = (v40 + 1) & v41;
              if (((*(v34 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
              {
                goto LABEL_31;
              }
            }
          }

          else
          {
LABEL_31:
            if ((v35 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            v42 = *(v5 + 24);
            if (v35 >= *(v42 + 16))
            {
              goto LABEL_41;
            }

            v43 = inited;
            v44 = v5;
            v45 = off_2883F9B70[*(v5 + 16)];
            v46 = *(v42 + 8 * v35 + 32);

            v47 = (v45)(a2, v46);

            if (v47 > a4)
            {
              v5 = v44;
              inited = v43;
            }

            else
            {
              inited = v43;
              v49 = *(v43 + 16);
              v48 = *(v43 + 24);
              if (v49 >= v48 >> 1)
              {
                inited = sub_2751D0E64((v48 > 1), v49 + 1, 1, v43);
              }

              *(inited + 16) = v49 + 1;
              v50 = inited + 16 * v49;
              *(v50 + 32) = v35;
              *(v50 + 40) = v47;
              v5 = v44;
            }
          }

          if (++v32 == v57)
          {

            v13 = v54;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

LABEL_5:
    v14 = *(inited + 16);
  }

  while (v14);

  v51 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_2751EC3D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = a2(v4);
  }

  v5 = *(v4 + 16);
  v6 = v4 + 32;
  v20[0] = v4 + 32;
  v20[1] = v5;
  result = sub_27520C1D8();
  if (result >= v5)
  {
    if (v5 >= 2)
    {
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v13 = v11;
        v14 = v6;
        do
        {
          v15 = *(v14 + 24);
          if (v15 >= *(v14 + 8))
          {
            break;
          }

          v16 = *(v14 + 16);
          *(v14 + 16) = *v14;
          *v14 = v16;
          *(v14 + 8) = v15;
          v14 -= 16;
        }

        while (!__CFADD__(v13++, 1));
        v6 += 16;
        --v11;
      }
    }
  }

  else
  {
    v8 = result;
    v9 = v5 >> 1;
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
      v10 = sub_27520BCF8();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v18[0] = v10 + 32;
    v18[1] = v9;
    sub_2751ED610(v18, v19, v20, v8);
    *(v10 + 16) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t HNSWIndex.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t HNSWIndex.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t HNSWIndex.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7D8, &qword_27520DE88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751ED188();
  sub_27520C2B8();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 32);
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7F0, &qword_27520DE90);
    sub_2751ED284(&qword_2809AD7F8, &qword_2809AD800);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HNSWIndex.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  HNSWIndex.init(from:)(a1);
  return v2;
}

uint64_t *HNSWIndex.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD810, &qword_27520DEA0);
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = MEMORY[0x277D84F90];
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = v10;
  v11 = v1 + 4;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751ED188();
  sub_27520C2A8();
  if (v2)
  {
    v15 = v1[3];

    v16 = v1[4];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v21;
    LOBYTE(v24) = 0;
    sub_2751ED230();
    v14 = v22;
    sub_27520C108();
    *(v1 + 16) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD7F0, &qword_27520DE90);
    v23 = 1;
    sub_2751ED284(&qword_2809AD820, &qword_2809AD828);
    sub_27520C108();
    (*(v13 + 8))(v9, v14);
    v18 = v24;
    swift_beginAccess();
    v19 = *v11;
    *v11 = v18;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t *sub_2751ECAB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = HNSWIndex.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void (*sub_2751ECBD0(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2751EF6B4(v4, a2);
  return sub_2751ECC48;
}

void sub_2751ECC48(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2751ECC94(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2751E3AF0(v3);
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
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2751ECD1C(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  swift_beginAccess();
  if (!*(*(v3 + 32) + 16))
  {
    return 0;
  }

  sub_2751EEAA4(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_2751EEAA4(a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2751ECFDC;
  *(v10 + 24) = 0;
  v11 = *(v3 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 32);
  v36 = *(v4 + 32);
  *(v4 + 32) = 0x8000000000000000;
  v15 = sub_2751EEAA4(a1);
  v16 = *(v13 + 2);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v14;
  if (*(v13 + 3) < v18)
  {
    sub_2751EEC4C(v18, isUniquelyReferenced_nonNull_native);
    v13 = v36;
    v20 = sub_2751EEAA4(a1);
    if ((v19 & 1) != (v21 & 1))
    {
      goto LABEL_23;
    }

    v15 = v20;
    *(v4 + 32) = v36;
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *(v4 + 32) = v13;
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_2751EF408();
  v13 = v36;
  *(v4 + 32) = v36;
  if ((v19 & 1) == 0)
  {
LABEL_12:
    v23 = sub_2751ECFDC();
    *&v13[8 * (v15 >> 6) + 64] |= 1 << v15;
    *(*(v13 + 6) + 8 * v15) = a1;
    *(*(v13 + 7) + 8 * v15) = v23;
    v24 = *(v13 + 2);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v13 + 2) = v26;
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_native = *(v13 + 7);
  v13 = *(isUniquelyReferenced_nonNull_native + 8 * v15);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *(isUniquelyReferenced_nonNull_native + 8 * v15) = v13;
  if ((v27 & 1) == 0)
  {
LABEL_19:
    v13 = sub_2751D09BC(0, *(v13 + 2) + 1, 1, v13);
    *(isUniquelyReferenced_nonNull_native + 8 * v15) = v13;
  }

  v28 = *(v13 + 2);
  v29 = *(v13 + 3);
  v30 = v28 + 1;
  if (v28 >= v29 >> 1)
  {
    v33 = v13;
    v34 = *(v13 + 2);
    v35 = sub_2751D09BC((v29 > 1), v28 + 1, 1, v33);
    v28 = v34;
    v13 = v35;
    *(isUniquelyReferenced_nonNull_native + 8 * v15) = v35;
  }

  *(v13 + 2) = v30;
  *&v13[8 * v28 + 32] = a2;
  swift_endAccess();
  swift_beginAccess();
  v31 = *(v4 + 40);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v4 + 40);
  *(v4 + 40) = 0x8000000000000000;
  sub_2751EF2C8(a1, a2, v32, a3);
  *(v4 + 40) = v37;
  swift_endAccess();

  return 1;
}

void sub_2751ECFE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}