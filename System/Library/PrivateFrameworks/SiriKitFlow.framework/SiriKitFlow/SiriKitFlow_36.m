void sub_1DCE6EA70(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v38 = *(*(*(a4 + 16) - 8) + 64);
  v36 = *(*(sub_1DD0DB04C() - 8) + 64);
  v34 = *(sub_1DD0DC76C() - 8);
  v4 = *(v34 + 80);
  v35 = *(sub_1DD0DB1EC() - 8);
  v31 = *(v35 + 80) | v4;
  v33 = *(sub_1DD0DB4BC() - 8);
  v5 = *(v33 + 80) & 0xF8;
  v6 = *(sub_1DD0DB3EC() - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v32 = *(sub_1DD0DD12C() - 8);
  v9 = *(v32 + 80);
  v10 = *(sub_1DD0DD08C() - 8);
  v11 = (v31 | (v9 | *(v10 + 80))) & 0xF8 | v8;
  v12 = (v36 + v11) & ~v11;
  v13 = *(v34 + 64);
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v35 + 64))
  {
    v13 = *(v35 + 64);
  }

  v14 = *(v6 + 64) + ((*(v33 + 64) + v7) & ~v7);
  if (!*(v6 + 84))
  {
    ++v14;
  }

  v15 = (v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 19) | 5;
  if (v13 <= v16)
  {
    v13 = (v15 + 19) | 5;
  }

  v17 = ((((((v15 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 <= v17)
  {
    v13 = v17;
  }

  if (v13 <= ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v13 = ((v16 + ((v8 + ((*(v32 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v18 = *(v10 + 64);
  if (v13 > v18)
  {
    v18 = v13;
  }

  if (v18 <= 0x18)
  {
    v18 = 24;
  }

  v19 = ((((v12 + v18 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v19 <= v38)
  {
    v19 = v38;
  }

  v20 = *(*(*(a4 + 24) - 8) + 64);
  if (v20 <= 9)
  {
    v20 = 9;
  }

  if (v20 + 1 > v19)
  {
    v19 = v20 + 1;
  }

  if (v19 <= 9)
  {
    v19 = 9;
  }

  v21 = v19 + 1;
  v22 = 8 * (v19 + 1);
  if (a3 < 0xF9)
  {
    v25 = 0;
    v23 = a1;
    v24 = a2;
  }

  else
  {
    v23 = a1;
    v24 = a2;
    if (v21 <= 3)
    {
      v28 = ((a3 + ~(-1 << v22) - 248) >> v22) + 1;
      if (HIWORD(v28))
      {
        v25 = 4;
      }

      else
      {
        if (v28 < 0x100)
        {
          v29 = 1;
        }

        else
        {
          v29 = 2;
        }

        if (v28 >= 2)
        {
          v25 = v29;
        }

        else
        {
          v25 = 0;
        }
      }
    }

    else
    {
      v25 = 1;
    }
  }

  if (v24 > 0xF8)
  {
    v26 = v24 - 249;
    if (v21 < 4)
    {
      v27 = (v26 >> v22) + 1;
      if (v19 != -1)
      {
        v30 = v26 & ~(-1 << v22);
        bzero(v23, v21);
        if (v21 == 3)
        {
          *v23 = v30;
          v23[2] = BYTE2(v30);
        }

        else if (v21 == 2)
        {
          *v23 = v30;
        }

        else
        {
          *v23 = v26;
        }
      }
    }

    else
    {
      bzero(v23, v19 + 1);
      *v23 = v26;
      v27 = 1;
    }

    switch(v25)
    {
      case 1:
        v23[v21] = v27;
        break;
      case 2:
        *&v23[v21] = v27;
        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&v23[v21] = v27;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v25)
    {
      case 1:
        v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_48;
      case 2:
        *&v23[v21] = 0;
        goto LABEL_47;
      case 3:
        goto LABEL_59;
      case 4:
        *&v23[v21] = 0;
        if (!v24)
        {
          return;
        }

        goto LABEL_48;
      default:
LABEL_47:
        if (v24)
        {
LABEL_48:
          v23[v19] = -v24;
        }

        break;
    }
  }
}

uint64_t sub_1DCE6EF94(unsigned __int8 *a1, uint64_t a2)
{
  v28 = *(*(*(a2 + 16) - 8) + 64);
  v27 = *(*(sub_1DD0DB04C() - 8) + 64);
  v25 = *(sub_1DD0DC76C() - 8);
  v2 = *(v25 + 80);
  v26 = *(sub_1DD0DB1EC() - 8);
  v22 = *(v26 + 80) | v2;
  v24 = *(sub_1DD0DB4BC() - 8);
  v3 = *(v24 + 80) & 0xF8;
  v4 = *(sub_1DD0DB3EC() - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v23 = *(sub_1DD0DD12C() - 8);
  v7 = *(v23 + 80);
  v8 = *(sub_1DD0DD08C() - 8);
  v9 = (v22 | (v7 | *(v8 + 80))) & 0xF8 | v6;
  v10 = (v27 + v9) & ~v9;
  v11 = *(v25 + 64);
  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v11)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v11 <= *(v26 + 64))
  {
    v11 = *(v26 + 64);
  }

  v12 = *(v4 + 64) + ((*(v24 + 64) + v5) & ~v5);
  if (!*(v4 + 84))
  {
    ++v12;
  }

  v13 = (v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 19) | 5;
  if (v11 <= v14)
  {
    v11 = (v13 + 19) | 5;
  }

  v15 = ((((((v13 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v11 <= v15)
  {
    v11 = v15;
  }

  if (v11 <= ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v11 = ((v14 + ((v6 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = *(v8 + 64);
  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x18)
  {
    v16 = 24;
  }

  v17 = ((((v10 + v16 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v17 <= v28)
  {
    v17 = v28;
  }

  v18 = *(*(*(a2 + 24) - 8) + 64);
  if (v18 <= 9)
  {
    v18 = 9;
  }

  if (v18 + 1 > v17)
  {
    v17 = v18 + 1;
  }

  if (v17 <= 9)
  {
    v17 = 9;
  }

  result = a1[v17];
  if (result >= 7)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    switch(v20)
    {
      case 1:
        v21 = *a1;
        goto LABEL_34;
      case 2:
        v21 = *a1;
        goto LABEL_34;
      case 3:
        v21 = *a1 | (a1[2] << 16);
        goto LABEL_34;
      case 4:
        v21 = *a1;
LABEL_34:
        if (v17 < 4)
        {
          result = (v21 | ((result - 7) << (8 * v17))) + 7;
        }

        else
        {
          result = (v21 + 7);
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCE6F3A8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(*(*(a3 + 16) - 8) + 64);
  v28 = *(*(sub_1DD0DB04C() - 8) + 64);
  v26 = *(sub_1DD0DC76C() - 8);
  v3 = *(v26 + 80);
  v27 = *(sub_1DD0DB1EC() - 8);
  v23 = *(v27 + 80) | v3;
  v25 = *(sub_1DD0DB4BC() - 8);
  v4 = *(v25 + 80) & 0xF8;
  v5 = *(sub_1DD0DB3EC() - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v24 = *(sub_1DD0DD12C() - 8);
  v8 = *(v24 + 80);
  v9 = *(sub_1DD0DD08C() - 8);
  v10 = (v23 | (v8 | *(v9 + 80))) & 0xF8 | v7;
  v11 = (v28 + v10) & ~v10;
  v12 = *(v26 + 64);
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v27 + 64))
  {
    v12 = *(v27 + 64);
  }

  v13 = *(v5 + 64) + ((*(v25 + 64) + v6) & ~v6);
  if (!*(v5 + 84))
  {
    ++v13;
  }

  v14 = (v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 19) | 5;
  if (v12 <= v15)
  {
    v12 = (v14 + 19) | 5;
  }

  v16 = ((((((v14 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 <= v16)
  {
    v12 = v16;
  }

  if (v12 <= ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v12 = ((v15 + ((v7 + ((*(v24 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v17 = *(v9 + 64);
  if (v12 > v17)
  {
    v17 = v12;
  }

  if (v17 <= 0x18)
  {
    v17 = 24;
  }

  v18 = ((((v11 + v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v18 <= v29)
  {
    v18 = v29;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64);
  if (v19 <= 9)
  {
    v19 = 9;
  }

  if (v19 + 1 > v18)
  {
    v18 = v19 + 1;
  }

  if (v18 <= 9)
  {
    v20 = 9;
  }

  else
  {
    v20 = v18;
  }

  if (a2 <= 6)
  {
    a1[v20] = a2;
    return;
  }

  v21 = a2 - 7;
  if (v20 < 4)
  {
    a1[v20] = (v21 >> (8 * v20)) + 7;
    if (!v20)
    {
      return;
    }

    v21 &= ~(-1 << (8 * v20));
  }

  else
  {
    a1[v20] = 7;
  }

  if (v20 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v20;
  }

  bzero(a1, v20);
  switch(v22)
  {
    case 2:
      *a1 = v21;
      break;
    case 3:
      *a1 = v21;
      a1[2] = BYTE2(v21);
      break;
    case 4:
      *a1 = v21;
      break;
    default:
      *a1 = v21;
      break;
  }
}

uint64_t sub_1DCE6F7FC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE659C4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F888()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65CC8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F914()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65F24(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6F9A0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE66180(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FA2C()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_56(v3);
  OUTLINED_FUNCTION_196();

  return sub_1DCE663DC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE6FABC()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_56(v3);
  OUTLINED_FUNCTION_196();

  return sub_1DCE66634(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE6FB4C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE669A8(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 80);
  return sub_1DCE66C04(a1);
}

uint64_t sub_1DCE6FD18(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v7 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_20_0(v7);
  v9 = *(v8 + 80);

  return sub_1DCE65C60(a1);
}

uint64_t sub_1DCE6FDFC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65680(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE6FE88()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_56(v3);
  OUTLINED_FUNCTION_196();

  return sub_1DCE654C8(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE6FF18()
{
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_56(v3);
  OUTLINED_FUNCTION_196();

  return sub_1DCE65310(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCE6FFA8()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE65150(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE70034()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64F90(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE700C0()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64DD0(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE7014C()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_5_81();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_86(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCE64C10(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE70204()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE641C4(v4, v5, v0);
}

uint64_t sub_1DCE70294()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE643BC(v3, v4);
}

uint64_t sub_1DCE70318()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE6450C(v4, v5, v0);
}

uint64_t sub_1DCE703A8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCE64464(v3, v4);
}

uint64_t sub_1DCE7042C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE64314(v4, v5, v0);
}

uint64_t sub_1DCE704BC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_132();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_15(v2);

  return sub_1DCE6426C(v4, v5, v0);
}

void sub_1DCE7054C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a3;
  v8[4] = a4;
  __swift_allocate_boxed_opaque_existential_1Tm(v8);
  OUTLINED_FUNCTION_112(a3);
  (*(v5 + 32))();
  sub_1DCB17D04(v8, v7);
  type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(v7, v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41B8, &qword_1DD0EAD58);
  swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41C0, &unk_1DD0EAD60);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t PromptForConfirmationFlowReturning.__allocating_init(acceptedTransition:rejectedTransition:cancelledTransition:)(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  PromptForConfirmationFlowReturning.init(acceptedTransition:rejectedTransition:cancelledTransition:)(a1, a2, a3);
  return v6;
}

_OWORD *PromptForConfirmationFlowReturning.init(acceptedTransition:rejectedTransition:cancelledTransition:)(__int128 *a1, _OWORD *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *a3;
  v3[2] = *a2;
  v3[3] = v4;
  v3[1] = v5;
  return v3;
}

void sub_1DCE7071C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for PromptResult();
  v19 = sub_1DD0DE97C();
  v20 = OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v36 - v24;
  (*(v26 + 16))(&v36 - v24, a1);
  if (__swift_getEnumTagSinglePayload(v25, 1, v18) == 1)
  {
LABEL_2:
    *a2 = xmmword_1DD0E2F10;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v30 = *v25;
        if (v25[8] == 1)
        {

          goto LABEL_2;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA7A20, &qword_1DD0FA240);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD0E07C0;
        type metadata accessor for ErrorAction();
        v32 = swift_allocObject();
        v32[2] = 0;
        v32[3] = 0;
        v32[4] = v30;
        v33 = sub_1DCE70AD8(qword_1ECCA8568, type metadata accessor for ErrorAction);
        *(inited + 32) = v32;
        *(inited + 40) = v33;
        v36 = xmmword_1DD0E2F10;
        type metadata accessor for StaticActionGroup();
        swift_allocObject();
        v34 = StaticActionGroup.init(actions:transition:debugDescription:)(inited, &v36, 0xD000000000000011, 0x80000001DD11F1D0);
        v35 = sub_1DCE70AD8(&qword_1ECCA1FD8, type metadata accessor for StaticActionGroup);
        *a2 = v34;
        *(a2 + 8) = v35;
        break;
      case 2u:
        v28 = v3[2];
        v29 = v3[3];
        goto LABEL_10;
      case 3u:
        goto LABEL_2;
      default:
        (*(v12 + 32))(v17, v25, AssociatedTypeWitness);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 8))(&v36, AssociatedTypeWitness, AssociatedConformanceWitness);
        (*(v12 + 8))(v17, AssociatedTypeWitness);
        if (v36 == 2)
        {
          goto LABEL_2;
        }

        if (v36)
        {
          v28 = v3[4];
          v29 = v3[5];
        }

        else
        {
          v28 = v3[6];
          v29 = v3[7];
        }

LABEL_10:
        *a2 = v28;
        *(a2 + 8) = v29;
        sub_1DCBFAAA8(v28, v29);
        return;
    }
  }
}

uint64_t sub_1DCE70AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PromptForConfirmationFlowReturning.deinit()
{
  sub_1DCB07180(*(v0 + 16), *(v0 + 24));
  sub_1DCB07180(*(v0 + 32), *(v0 + 40));
  sub_1DCB07180(*(v0 + 48), *(v0 + 56));
  return v0;
}

uint64_t PromptForConfirmationFlowReturning.__deallocating_deinit()
{
  PromptForConfirmationFlowReturning.deinit();

  return swift_deallocClassInstance();
}

uint64_t PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)();
  return v3;
}

uint64_t static DisambiguationResult.chosenItem(_:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  OUTLINED_FUNCTION_2(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13 - v9;
  OUTLINED_FUNCTION_112(v0);
  (*(v11 + 16))(v10, v1, v0);
  OUTLINED_FUNCTION_90_0();
  swift_storeEnumTagMultiPayload();
  return sub_1DCE70EBC(v10, v3);
}

uint64_t DisambiguationResult.chosenItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 16);
  OUTLINED_FUNCTION_99_5();
  v7 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  (*(v9 + 16))(v3, v4, v7);
  OUTLINED_FUNCTION_19();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *(v9 + 8);
    v15 = OUTLINED_FUNCTION_19();
    v16(v15);
    v17 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_112(v6);
    (*(v18 + 32))(a2, v3, v6);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v6);
}

uint64_t sub_1DCE70EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static DisambiguationResult.paginate(_:)()
{
  OUTLINED_FUNCTION_21();
  v2 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_1();
  v7 = *(v0 + 8);
  *v1 = *v0;
  *(v1 + 8) = v7;
  swift_storeEnumTagMultiPayload();
  v8 = OUTLINED_FUNCTION_17_1();
  return sub_1DCE70EBC(v8, v9);
}

uint64_t DisambiguationResult.paginationRequest.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_46_17();
  (*(v9 + 16))(v3, v4, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v15 = *v3;
    v16 = *(v3 + 8);
  }

  else
  {
    result = (*(v9 + 8))(v3, v7);
    v15 = 0;
    v16 = -1;
  }

  *a2 = v15;
  *(a2 + 8) = v16;
  return result;
}

void static DisambiguationResult<A>.== infix(_:_:)()
{
  OUTLINED_FUNCTION_50();
  v46 = v1;
  v3 = v2;
  v50 = v4;
  v51 = v5;
  v49 = *(v2 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_44_0();
  v45 = v7;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_71_0();
  v48 = v10;
  OUTLINED_FUNCTION_12();
  v11 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12, v17);
  OUTLINED_FUNCTION_10_2();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v44 - v23;
  OUTLINED_FUNCTION_99_5();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9(TupleTypeMetadata2);
  v47 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_46_17();
  v32 = &v0[*(v31 + 48)];
  v33 = *(v14 + 16);
  v33(v0, v50, v11);
  v33(v32, v51, v11);
  OUTLINED_FUNCTION_86();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v33(v20, v0, v11);
    OUTLINED_FUNCTION_17_1();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v49;
      v37 = *(v49 + 32);
      v37(v48, v20, v3);
      v38 = v45;
      v37(v45, v32, v3);
      v39 = v48;
      sub_1DD0DDF7C();
      v40 = *(v36 + 8);
      v40(v38, v3);
      v40(v39, v3);
      goto LABEL_13;
    }

    (*(v49 + 8))(v20, v3);
    goto LABEL_8;
  }

  v33(v24, v0, v11);
  v34 = *v24;
  OUTLINED_FUNCTION_17_1();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:
    v14 = v47;
    goto LABEL_13;
  }

  v35 = *v32;
  if (v24[8])
  {
    if (v24[8] != 1)
    {
      switch(v34)
      {
        case 1:
          v32[8];
          break;
        default:
          break;
      }
    }
  }

  else
  {
    v32[8];
  }

LABEL_13:
  v41 = *(v14 + 8);
  v42 = OUTLINED_FUNCTION_86();
  v43(v42);
  OUTLINED_FUNCTION_49();
}

void sub_1DCE71478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  static DisambiguationResult<A>.== infix(_:_:)();
}

uint64_t PromptForDisambiguationFlowStrategy.makeRepromptOnEmptyParse(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return (*(a5 + 48))(&v9);
}

void PromptForDisambiguationFlowStrategy.makeRepromptOnLowConfidence(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_46_17();
  v10 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v10);
  OUTLINED_FUNCTION_41_4();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD0FD738;
  v11[5] = 0;
  v11[6] = a2;
  v11[7] = a3;
  sub_1DD0DCF8C();
}

void PromptForDisambiguationFlowStrategy.makeFlowCancelledResponse(_:)()
{
  OUTLINED_FUNCTION_21();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_46_17();
  v7 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v7);
  OUTLINED_FUNCTION_41_4();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = &unk_1DD0FD748;
  v8[5] = 0;
  v8[6] = v1;
  v8[7] = v0;
  sub_1DD0DCF8C();
}

void PromptForDisambiguationFlowStrategy.makeErrorResponse(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_46_17();
  v10 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_11_6(v10);
  OUTLINED_FUNCTION_41_4();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD0FD758;
  v11[5] = 0;
  v11[6] = a2;
  v11[7] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCE71780()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  *(v0 + 16) = *v7;
  v10 = *(v7 + 40);
  *(v0 + 24) = *(v7 + 8);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  *(v0 + 56) = v10;
  v11 = *(v1 + 48);
  OUTLINED_FUNCTION_8();
  v18 = (v12 + *v12);
  v14 = *(v13 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 64) = v15;
  *v15 = v16;
  v15[1] = sub_1DCE7198C;

  return v18(v6, v0 + 16, v4, v2);
}

uint64_t sub_1DCE7198C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCE71AA0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 72);
  return v2();
}

uint64_t sub_1DCE71AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCE71BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCE71CFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t PromptForDisambiguationFlowStrategyAsync.actionForInputWrapper(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE71E34()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 32))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t PromptForDisambiguationFlowAsync.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  v14 = *(v4 + 128);
  OUTLINED_FUNCTION_156();
  (*(v9 + 16))(v2, v1 + v14, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult();
      return swift_storeEnumTagMultiPayload();
    case 6:
      v19 = *(v2 + 8);
      *a1 = *v2;
      *(a1 + 8) = v19;
      OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult();
      OUTLINED_FUNCTION_118_2();
      return swift_storeEnumTagMultiPayload();
    case 5:
      OUTLINED_FUNCTION_80_8();
      v16 = type metadata accessor for PromptResult();
      OUTLINED_FUNCTION_2(v16);
      return (*(v17 + 32))(a1, v2);
    default:
      *a1 = sub_1DCE73EF4();
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_80_8();
      type metadata accessor for PromptResult();
      OUTLINED_FUNCTION_118_2();
      swift_storeEnumTagMultiPayload();
      return (*(v9 + 8))(v2, v7);
  }
}

uint64_t sub_1DCE720A8()
{
  OUTLINED_FUNCTION_58_1();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_19();
  sub_1DCE720F4(v2, v3, v0);
  return v1;
}

uint64_t sub_1DCE720F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_13();
  v7 = *(v6 + 88);
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_128_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_128_1();
  swift_getAssociatedTypeWitness();
  type metadata accessor for PromptForDisambiguationFlowAsync();
  type metadata accessor for AnyPromptForDisambiguationFlowStrategy();
  swift_unknownObjectRetain();
  sub_1DCE72250();
  sub_1DCB17D04(a3, v12);
  swift_getWitnessTable();
  v10 = PromptForDisambiguationFlowAsync.__allocating_init<A>(items:strategy:outputPublisher:)();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  *(v4 + 16) = v10;
  return v4;
}

uint64_t sub_1DCE72250()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DCE7B2CC();
  return v0;
}

uint64_t PromptForDisambiguationFlow.__allocating_init(items:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_58_1();
  sub_1DCB17D04(v1, &v5);
  v2 = type metadata accessor for OutputPublisherAsyncAdapter();
  OUTLINED_FUNCTION_1_1();
  v3 = swift_allocObject();
  sub_1DCAFF9E8(&v5, v3 + 16);
  v6 = v2;
  v7 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v5 = v3;
  OUTLINED_FUNCTION_19();
  sub_1DCE720A8();
  return OUTLINED_FUNCTION_122_1(v0);
}

uint64_t PromptForDisambiguationFlow.on(input:)()
{
  v1 = *(v0 + 16);
  PromptForDisambiguationFlowAsync.on(input:)();
  return v2 & 1;
}

void PromptForDisambiguationFlowAsync.on(input:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DC0, &qword_1DD0E21B0);
  OUTLINED_FUNCTION_20_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v103 = &v96 - v10;
  v11 = OUTLINED_FUNCTION_12();
  v12 = type metadata accessor for Parse(v11);
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v96 - v19;
  OUTLINED_FUNCTION_107_4();
  v22 = *(v21 + 80);
  OUTLINED_FUNCTION_107_4();
  v24 = *(v23 + 88);
  v104 = v25;
  v26 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v27 = OUTLINED_FUNCTION_9(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27, v32);
  OUTLINED_FUNCTION_10_2();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v96 - v38;
  OUTLINED_FUNCTION_107_4();
  v41 = *(v40 + 128);
  OUTLINED_FUNCTION_156();
  (*(v29 + 16))(v39, &v1[v41], v26);
  OUTLINED_FUNCTION_21_3();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v57 = *(v29 + 8);
    v58 = OUTLINED_FUNCTION_21_3();
    v59(v58);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v60 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v60, qword_1EDE57E00);
    v61 = sub_1DD0DD8EC();
    v62 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_22(v62))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v42 = *(v39 + 1);
  v102 = *v39;
  v43 = *(v39 + 2);
  v97 = v42;
  v98 = v43;
  v99 = v39[24];
  v100 = *(v39 + 4);
  v101 = v39[40];
  v44 = *(type metadata accessor for Input(0) + 20);
  OUTLINED_FUNCTION_4_28();
  sub_1DCB24858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_1_92();
  sub_1DCB286E8(v20, v46);
  if (EnumCaseMultiPayload == 10)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v47 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v47, qword_1EDE57E00);
    v48 = sub_1DD0DD8EC();
    v49 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v49))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v50, v51, v52, v53, v54, 2u);
      OUTLINED_FUNCTION_80();
    }

    v56 = v97;
    v55 = v98;
    *v35 = v102;
    *(v35 + 8) = v56;
    *(v35 + 16) = v55;
    *(v35 + 24) = v99;
    *(v35 + 32) = v100;
    *(v35 + 40) = v101;
    OUTLINED_FUNCTION_19();
LABEL_38:
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v35);
    goto LABEL_39;
  }

  if ((sub_1DCE967E0(v3) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v76 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
    v77 = sub_1DD0DD8EC();
    v78 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v78))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      OUTLINED_FUNCTION_80();
    }

    type metadata accessor for PaginatedItemContainer();
    v84 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_56_18(v84);
    OUTLINED_FUNCTION_57_12();
    goto LABEL_38;
  }

  v69 = *(v1 + 2);
  v70 = *(v69 + 40);
  (*(v69 + 32))(&v107, v3);
  if (!v107)
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v85 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v85, qword_1EDE57E00);
    v86 = sub_1DD0DD8EC();
    v87 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v87))
    {
      *OUTLINED_FUNCTION_50_0() = 0;
      OUTLINED_FUNCTION_67_0();
      _os_log_impl(v88, v89, v90, v91, v92, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_19();
    goto LABEL_38;
  }

  if (v107 == 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v71 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v71, qword_1EDE57E00);
    v72 = sub_1DD0DD8EC();
    v73 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v73))
    {
      v74 = OUTLINED_FUNCTION_50_0();
      *v74 = 0;
      _os_log_impl(&dword_1DCAFC000, v72, v73, "PromptForDisambiguationFlow received handle action from strategy. Transitioning to responseReceived state.", v74, 2u);
      OUTLINED_FUNCTION_80();
    }

    sub_1DCB8878C();
    if (v106)
    {
      __swift_project_boxed_opaque_existential_1(v105, v106);
      OUTLINED_FUNCTION_4_28();
      sub_1DCB24858();
      v75 = v103;
      sub_1DCE74A00();
      sub_1DD0DC99C();
      sub_1DCB0E9D8(v75, &qword_1ECCA1DC0, &qword_1DD0E21B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
    }

    else
    {
      sub_1DCB0E9D8(v105, &qword_1ECCA1DA8, &unk_1DD0E2130);
    }

    type metadata accessor for PaginatedItemContainer();
    v95 = OUTLINED_FUNCTION_116_4();
    OUTLINED_FUNCTION_56_18(v95);
    OUTLINED_FUNCTION_57_12();
    goto LABEL_38;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v93 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v93, qword_1EDE57E00);
  v61 = sub_1DD0DD8EC();
  v94 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_22(v94))
  {
LABEL_11:
    v63 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v63);
    OUTLINED_FUNCTION_9_3();
    _os_log_impl(v64, v65, v66, v67, v68, 2u);
    OUTLINED_FUNCTION_62();
  }

LABEL_12:

LABEL_39:
  OUTLINED_FUNCTION_49();
}

uint64_t PromptForDisambiguationFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE72A30()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 24) + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_31_1(v2);

  return PromptForDisambiguationFlowAsync.execute()();
}

uint64_t PromptForDisambiguationFlowAsync.execute()()
{
  OUTLINED_FUNCTION_42();
  v1[29] = v2;
  v1[30] = v0;
  v3 = *v0;
  v4 = type metadata accessor for Input(0);
  v1[31] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v1[32] = OUTLINED_FUNCTION_38();
  v1[33] = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v1[34] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_24_0();
  v1[35] = v10;
  v12 = *(v11 + 64) + 15;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DCE72BD0()
{
  v3 = *(v0 + 296);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 240);
  v7 = *(*v6 + 128);
  OUTLINED_FUNCTION_156();
  v9 = *(v5 + 16);
  v8 = v5 + 16;
  v9(v3, v6 + v7, v4);
  OUTLINED_FUNCTION_194();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 5u:
    case 6u:
      (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v10 = *(v0 + 240);
      v11 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v12 = *(v0 + 296);
      v14 = *(v0 + 256);
      v13 = *(v0 + 264);
      v15 = *(v0 + 248);
      type metadata accessor for PaginatedItemContainer();
      OUTLINED_FUNCTION_80_8();
      v16 = (v12 + *(swift_getTupleTypeMetadata2() + 48));
      v17 = *v16;
      *(v0 + 344) = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = *(v16 + 24);
      v21 = v16[4];
      v22 = *(v16 + 40);
      OUTLINED_FUNCTION_59_15();
      OUTLINED_FUNCTION_194();
      sub_1DCE8A338();
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v23 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v23, qword_1EDE57E00);
      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v26);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v27, v28, v29, v30, v31, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 112) = v17;
      *(v0 + 120) = v18;
      *(v0 + 128) = v19;
      *(v0 + 136) = v20;
      *(v0 + 144) = v21;
      *(v0 + 152) = v22;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 352) = v32;
      *v32 = v33;
      v32[1] = sub_1DCE73618;
      v34 = *(v0 + 256);
      v35 = *(v0 + 232);
      v36 = *(v0 + 240);
      OUTLINED_FUNCTION_130_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE76ADC();
      break;
    case 3u:
      v71 = *(v0 + 296);
      v72 = *(v0 + 264);
      v73 = *(v0 + 248);
      type metadata accessor for PaginatedItemContainer();
      v74 = (v71 + *(swift_getTupleTypeMetadata2() + 48));
      v75 = *v74;
      *(v0 + 392) = *v74;
      OUTLINED_FUNCTION_39_21(v74);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v76 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v76, qword_1EDE57E00);
      v77 = sub_1DD0DD8EC();
      v78 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v78))
      {
        v79 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v79);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v80, v81, v82, v83, v84, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 16) = v75;
      *(v0 + 24) = v106;
      *(v0 + 40) = v1;
      *(v0 + 48) = v2;
      *(v0 + 56) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 400) = v85;
      *v85 = v86;
      v85[1] = sub_1DCE73888;
      v87 = *(v0 + 232);
      v88 = *(v0 + 240);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE77B70();
      break;
    case 4u:
      v90 = *(v0 + 296);
      v91 = *v90;
      *(v0 + 368) = *v90;
      OUTLINED_FUNCTION_39_21(v90);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v92 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v92, qword_1EDE57E00);
      v93 = sub_1DD0DD8EC();
      v94 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v94))
      {
        v95 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v95);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v96, v97, v98, v99, v100, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 64) = v91;
      *(v0 + 72) = v106;
      *(v0 + 88) = v1;
      *(v0 + 96) = v2;
      *(v0 + 104) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 376) = v101;
      *v101 = v102;
      v101[1] = sub_1DCE73788;
      v103 = *(v0 + 232);
      v104 = *(v0 + 240);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE777C8();
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v57 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
      v58 = sub_1DD0DD8EC();
      v59 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v59))
      {
        v60 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v60);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v61, v62, v63, v64, v65, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 328) = v66;
      *v66 = v67;
      v66[1] = sub_1DCE73520;
      v68 = *(v0 + 232);
      v69 = *(v0 + 240);
      OUTLINED_FUNCTION_76();

      result = sub_1DCE767C4();
      break;
    default:
      v39 = *(v0 + 296);
      v40 = *v39;
      *(v0 + 304) = *v39;
      OUTLINED_FUNCTION_39_21(v39);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v43))
      {
        v44 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v44);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_62();
      }

      *(v0 + 160) = v40;
      *(v0 + 168) = v106;
      *(v0 + 184) = v1;
      *(v0 + 192) = v2;
      *(v0 + 200) = v8;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 312) = v50;
      *v50 = v51;
      v50[1] = sub_1DCE733BC;
      v52 = *(v0 + 232);
      v53 = *(v0 + 240);
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_76();

      result = sub_1DCE75CA0(v54, v55);
      break;
  }

  return result;
}

uint64_t sub_1DCE733BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 320) = v0;

  if (!v0)
  {
    v9 = *(v3 + 304);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE734BC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCE73520()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 336) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE73618()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 360) = v0;

  if (!v0)
  {
    v9 = *(v3 + 344);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE73718()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 256);
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE73788()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 384) = v0;

  if (!v0)
  {
    v9 = *(v3 + 368);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE73888()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 408) = v0;

  if (!v0)
  {
    v9 = *(v3 + 392);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE73988()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 296);
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE739F8()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 304);

  v3 = *(v1 + 320);
  OUTLINED_FUNCTION_19_37();
  v4 = v3;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE73A94()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 336);
  OUTLINED_FUNCTION_19_37();
  v3 = v2;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE73B28()
{
  OUTLINED_FUNCTION_39();
  v2 = v1[43];
  v3 = v1[32];
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v4, v5);

  v6 = v1[45];
  OUTLINED_FUNCTION_19_37();
  v7 = v6;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCE73BD4()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 368);

  v3 = *(v1 + 384);
  OUTLINED_FUNCTION_19_37();
  v4 = v3;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCE73C70()
{
  OUTLINED_FUNCTION_39();
  v2 = v1[49];
  v3 = v1[37];

  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v3, v4);
  v5 = v1[51];
  OUTLINED_FUNCTION_19_37();
  v6 = v5;
  sub_1DCE743E0(v0);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_97_7();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t PromptForDisambiguationFlow.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PromptForDisambiguationFlow.__deallocating_deinit()
{
  PromptForDisambiguationFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCE73D70(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE73E34(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AD3C;

  return PromptForDisambiguationFlow.execute()(a1);
}

uint64_t sub_1DCE73EF4()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1DD0DEC1C();
  v19 = v17;
  v20 = v18;
  MEMORY[0x1E12A6780](0xD000000000000019, 0x80000001DD1131D0);
  v10 = *(*v0 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v9, v1 + v10, v4);
  swift_getWitnessTable();
  sub_1DD0DF08C();
  (*(v5 + 8))(v9, v4);
  v11 = v19;
  v12 = v20;
  type metadata accessor for CommandFailure();
  swift_allocObject();
  v13 = CommandFailure.init(errorCode:reason:)(-1, v11, v12);
  sub_1DCE8A390(qword_1EDE49B80, type metadata accessor for CommandFailure);
  result = swift_allocError();
  *v15 = v13;
  return result;
}

void sub_1DCE7411C()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v6 = *(v5 + 88);
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  OUTLINED_FUNCTION_9(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_4_1();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
  swift_retain_n();
  v35 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v35, v15))
  {
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = *(v0 + 13);
    v18 = *(v2 + 14);
    v19 = *(v2 + 15);
    v20 = *(v2 + 16);

    v21 = MEMORY[0x1E12A66E0](v17, v18, v19, v20);
    v23 = v22;

    v24 = sub_1DCB10E9C(v21, v23, &v36);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = *(*v2 + 128);
    OUTLINED_FUNCTION_156();
    (*(v9 + 16))(v1, &v2[v25], v7);

    v26 = sub_1DCE79F18(v7);
    v28 = v27;

    v29 = *(v9 + 8);
    v30 = OUTLINED_FUNCTION_19();
    v31(v30);
    v32 = sub_1DCB10E9C(v26, v28, &v36);

    *(v16 + 14) = v32;
    _os_log_impl(&dword_1DCAFC000, v35, v15, "PromptForDisambiguationFlow [%s] transitioned to state %s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();

    OUTLINED_FUNCTION_49();
  }

  else
  {

    OUTLINED_FUNCTION_49();
  }
}

uint64_t sub_1DCE743E0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v8 = *(v7 - 8);
  (*(v8 + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DCE7411C();
  return (*(v8 + 8))(a1, v7);
}

void PromptForDisambiguationFlowAsync.init<A>(items:strategy:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v34 = v7;
  v8 = *v0;
  v9 = sub_1DD0DB04C();
  v10 = OUTLINED_FUNCTION_9(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v12 + 8))(v18, v9);
  v1[13] = sub_1DCB598EC(8);
  v1[14] = v19;
  v1[15] = v20;
  v1[16] = v21;
  (*(v3 + 24))(&v37, v5, v3);
  v35 = v37;
  v36 = v38;
  OUTLINED_FUNCTION_107_4();
  v23 = *(v22 + 80);
  PaginatedItemContainer.init(items:paginationStyle:)(v33, &v35, v39);
  v24 = v39[24];
  v25 = v40;
  v26 = v41;
  v27 = *&v39[8];
  v28 = v1 + *(*v1 + 128);
  *v28 = *v39;
  *(v28 + 8) = v27;
  v28[24] = v24;
  *(v28 + 4) = v25;
  v28[40] = v26;
  OUTLINED_FUNCTION_107_4();
  v30 = *(v29 + 88);
  OUTLINED_FUNCTION_128_1();
  type metadata accessor for PromptForDisambiguationFlowAsync.State();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_128_1();
  type metadata accessor for AnyPromptForDisambiguationFlowStrategy();
  swift_unknownObjectRetain();
  v1[2] = sub_1DCE74788();
  sub_1DCB17D04(v34, (v1 + 3));
  (*(v3 + 88))(v5, v3);
  sub_1DCE747CC(v31, v39);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  v32 = *&v39[16];
  *(v1 + 4) = *v39;
  *(v1 + 5) = v32;
  v1[12] = v40;
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE74788()
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_56();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_19();
  sub_1DCE7A4B4();
  return v0;
}

double sub_1DCE747CC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_15;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "PromptForDisambiguationFlow PervasiveEntityResolution use case is undefined";
    goto LABEL_14;
  }

  v17 = &type metadata for FeatureFlagDefinitions.Core;
  v3 = sub_1DCBF3744();
  v18 = v3;
  LOBYTE(v16[0]) = 1;

  v4 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  if ((v4 & 1) == 0)
  {
    v17 = &type metadata for FeatureFlagDefinitions.Core;
    v18 = v3;
    LOBYTE(v16[0]) = 2;
    v5 = sub_1DD0DB2AC();
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    if ((v5 & 1) == 0)
    {

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_15;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "PromptForDisambiguationFlow PervasiveEntityResolution data collection is not enabled";
LABEL_14:
      _os_log_impl(&dword_1DCAFC000, v11, v12, v14, v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
LABEL_15:

      goto LABEL_16;
    }
  }

  v6 = sub_1DD0DC97C();
  v7 = sub_1DD0DC96C();
  if (v7)
  {
    v9 = MEMORY[0x1E69CE618];
    *(a2 + 24) = v6;
    *(a2 + 32) = v9;
    *a2 = v7;
    return result;
  }

LABEL_16:
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_1DCE74A00()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v244 = v2;
  v3 = sub_1DD0DC83C();
  v4 = OUTLINED_FUNCTION_9(v3);
  v238 = v5;
  v239 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  OUTLINED_FUNCTION_44_0();
  v236 = v9;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_71_0();
  v237 = v12;
  OUTLINED_FUNCTION_12();
  v228 = sub_1DD0DD68C();
  v13 = OUTLINED_FUNCTION_9(v228);
  v225 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13, v17);
  OUTLINED_FUNCTION_16();
  v242 = v19 - v18;
  OUTLINED_FUNCTION_12();
  v232 = sub_1DD0DB41C();
  v20 = OUTLINED_FUNCTION_9(v232);
  v241 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20, v24);
  OUTLINED_FUNCTION_16();
  v240 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA88F0, &unk_1DD0FDDE0);
  OUTLINED_FUNCTION_20_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_6_36(v222 - v32);
  v231 = sub_1DD0DB66C();
  v33 = OUTLINED_FUNCTION_9(v231);
  v230 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33, v37);
  OUTLINED_FUNCTION_16();
  v229 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v43, v44);
  v234 = v222 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2FD8, &qword_1DD0FDDF0);
  v47 = OUTLINED_FUNCTION_20_0(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47, v50);
  OUTLINED_FUNCTION_44_0();
  v235 = v51;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v52, v53);
  OUTLINED_FUNCTION_71_0();
  v243 = v54;
  OUTLINED_FUNCTION_12();
  v226 = type metadata accessor for USOParse();
  v55 = OUTLINED_FUNCTION_2(v226);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55, v58);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v59, v60);
  v233 = v222 - v61;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = v222 - v64;
  v66 = type metadata accessor for Parse(0);
  v67 = OUTLINED_FUNCTION_2(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67, v70);
  OUTLINED_FUNCTION_16();
  v73 = v72 - v71;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA88F8, &unk_1DD0FDDF8);
  v75 = OUTLINED_FUNCTION_20_0(v74);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75, v78);
  OUTLINED_FUNCTION_10_2();
  v81 = (v79 - v80);
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = v222 - v84;
  v86 = sub_1DD0DE01C();
  v87 = OUTLINED_FUNCTION_20_0(v86);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87, v90);
  OUTLINED_FUNCTION_16();
  v91 = sub_1DD0DAAFC();
  v92 = *(v91 + 48);
  v93 = *(v91 + 52);
  swift_allocObject();
  sub_1DD0DAAEC();
  sub_1DCE8A390(&qword_1EDE46640, type metadata accessor for Parse);
  v245 = v1;
  sub_1DD0DAADC();
  v223 = v65;
  v94 = v243;
  v95 = v81;
  v224 = v85;

  sub_1DD0DE00C();
  OUTLINED_FUNCTION_90_0();
  v96 = sub_1DD0DDFDC();
  if (!v97)
  {
    if (qword_1EDE4F900 != -1)
    {
LABEL_68:
      OUTLINED_FUNCTION_0_0();
    }

    v122 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v122, qword_1EDE57E00);
    v123 = sub_1DD0DD8EC();
    v124 = sub_1DD0DE6EC();
    v125 = OUTLINED_FUNCTION_22(v124);
    v107 = v244;
    if (v125)
    {
      v126 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v126);
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v127, v128, v129, v130, v131, 2u);
      OUTLINED_FUNCTION_62();
    }

    v132 = OUTLINED_FUNCTION_90_0();
    sub_1DCB21A14(v132, v133);

    OUTLINED_FUNCTION_1_92();
    sub_1DCB286E8(v245, v119);
    goto LABEL_8;
  }

  v98 = v96;
  v99 = v97;
  v100 = OUTLINED_FUNCTION_90_0();
  sub_1DCB21A14(v100, v101);
  OUTLINED_FUNCTION_91_6();
  v102 = v239;
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v239);
  OUTLINED_FUNCTION_4_28();
  v103 = v245;
  v104 = v73;
  sub_1DCB24858();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v222[1] = v99;
  v222[0] = v98;
  switch(EnumCaseMultiPayload)
  {
    case 0:
    case 3:
      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v73, v106);
      v107 = v244;
      v108 = v81;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v109 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v109, qword_1EDE57E00);
      v110 = sub_1DD0DD8EC();
      v111 = sub_1DD0DE6DC();
      v112 = OUTLINED_FUNCTION_22(v111);
      v113 = v236;
      if (v112)
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_76_12();
        _os_log_impl(v114, v115, v116, v117, v118, 2u);
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_25;
    case 2:
      v138 = v103;
      v81 = *v73;
      v139 = *(v73 + 8);
      v140 = *(v73 + 16);
      v108 = v95;
      if (v140)
      {
        sub_1DCB90D40(0x7865646E69, 0xE500000000000000, *(v104 + 16));
        v107 = v244;
        if (*(&v248 + 1))
        {
          if (OUTLINED_FUNCTION_88_9())
          {
            OUTLINED_FUNCTION_91_6();
            sub_1DCB0E9D8(v81, v141, v142);

            *v81 = v246[0];
            v143 = MEMORY[0x1E69CE5C8];
LABEL_55:
            v204 = *v143;
            v205 = OUTLINED_FUNCTION_111_2();
            v206(v205);
            OUTLINED_FUNCTION_134_1();
            v113 = v236;
            v154 = v237;
            goto LABEL_63;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v247 = 0u;
        v248 = 0u;
        v107 = v244;
      }

      sub_1DCB0E9D8(&v247, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v140)
      {
        v247 = 0u;
        v248 = 0u;
        goto LABEL_51;
      }

LABEL_36:
      sub_1DCB90D40(0x696669746E656469, 0xEA00000000007265, v140);
      if (*(&v248 + 1))
      {
        if (OUTLINED_FUNCTION_88_9())
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

LABEL_51:
      sub_1DCB0E9D8(&v247, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      if (!v140)
      {
        v247 = 0u;
        v248 = 0u;
        goto LABEL_57;
      }

LABEL_52:
      sub_1DCB90D40(0x65756C6176, 0xE500000000000000, v140);
      if (!*(&v248 + 1))
      {
LABEL_57:
        sub_1DCB0E9D8(&v247, &dword_1ECCA3CE0, &unk_1DD0E4F80);
        goto LABEL_58;
      }

      if (OUTLINED_FUNCTION_88_9())
      {
LABEL_54:
        OUTLINED_FUNCTION_91_6();
        sub_1DCB0E9D8(v81, v201, v202);

        v203 = v246[1];
        *v81 = v246[0];
        v81[1] = v203;
        v143 = MEMORY[0x1E69CE5C0];
        goto LABEL_55;
      }

LABEL_58:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v207 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v207, qword_1EDE57E00);

      v208 = sub_1DD0DD8EC();
      v209 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v208, v209))
      {
        v210 = OUTLINED_FUNCTION_151();
        v211 = OUTLINED_FUNCTION_83();
        v246[0] = v211;
        *v210 = 136315138;
        *&v247 = v81;
        *(&v247 + 1) = v139;
        *&v248 = v140;
        v212 = sub_1DD0DE02C();
        v214 = sub_1DCB10E9C(v212, v213, v246);

        *(v210 + 4) = v214;
        OUTLINED_FUNCTION_67_0();
        _os_log_impl(v215, v216, v217, v218, v219, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v211);
        v102 = v239;
        OUTLINED_FUNCTION_80();
        v103 = v245;
        OUTLINED_FUNCTION_80();

        v154 = v237;
        v139 = v238;
        v113 = v236;
        OUTLINED_FUNCTION_91_6();
        goto LABEL_64;
      }

      v154 = v237;
      v139 = v238;
      v113 = v236;
      OUTLINED_FUNCTION_91_6();
LABEL_63:
      v103 = v138;
LABEL_64:
      sub_1DCB8878C();
      if (__swift_getEnumTagSinglePayload(v108, 1, v102) != 1)
      {
        (*(v139 + 32))(v154, v108, v102);
        (*(v139 + 16))(v113, v154, v102);
        sub_1DD0DC84C();
        OUTLINED_FUNCTION_1_92();
        sub_1DCB286E8(v103, v221);
        (*(v139 + 8))(v154, v102);
        sub_1DCB0E9D8(v81, qword_1ECCA88F8, &unk_1DD0FDDF8);
        v120 = 0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v103, v220);
      sub_1DCB0E9D8(v81, qword_1ECCA88F8, &unk_1DD0FDDF8);
      sub_1DCB0E9D8(v108, qword_1ECCA88F8, &unk_1DD0FDDF8);
LABEL_8:
      v120 = 1;
LABEL_9:
      v121 = sub_1DD0DC85C();
      __swift_storeEnumTagSinglePayload(v107, v120, 1, v121);
      OUTLINED_FUNCTION_49();
      return;
    case 6:
      sub_1DCE8A338();
      v134 = sub_1DD0DB46C();
      v135 = v234;
      sub_1DCC621EC(v134);

      v136 = sub_1DD0DB5BC();
      v108 = v81;
      if (__swift_getEnumTagSinglePayload(v135, 1, v136) == 1)
      {
        sub_1DCB0E9D8(v135, &qword_1ECCA29B8, &qword_1DD0E96C0);
        v137 = 1;
      }

      else
      {
        v155 = v229;
        sub_1DD0DB56C();
        OUTLINED_FUNCTION_112(v136);
        (*(v156 + 8))(v135, v136);
        sub_1DD0DB63C();
        (*(v230 + 8))(v155, v231);
        v137 = 0;
      }

      v107 = v244;
      v157 = sub_1DD0DB44C();
      __swift_storeEnumTagSinglePayload(v94, v137, 1, v157);
      v158 = v235;
      sub_1DCB8878C();
      if (__swift_getEnumTagSinglePayload(v158, 1, v157) == 1)
      {
        sub_1DCB0E9D8(v158, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
        goto LABEL_43;
      }

      v159 = sub_1DD0DB43C();
      OUTLINED_FUNCTION_112(v157);
      (*(v160 + 8))(v158, v157);
      v161 = 0;
      v162 = *(v159 + 16);
      v163 = v242;
      v164 = (v241 + 8);
      v165 = v232;
      while (1)
      {
        if (v162 == v161)
        {

          v169 = 1;
          v170 = v227;
          goto LABEL_41;
        }

        if (v161 >= *(v159 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_75_10();
        v168 = v240;
        (*(v167 + 16))(v240, v159 + v166 + *(v167 + 72) * v161, v165);
        if (sub_1DD0DB40C())
        {

          v171 = *(v241 + 32);
          v170 = v227;
          OUTLINED_FUNCTION_92_7();
          v174(v172, v173);
          v169 = 0;
          v163 = v242;
LABEL_41:
          __swift_storeEnumTagSinglePayload(v170, v169, 1, v165);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v170, 1, v165);
          v102 = v239;
          v81 = v224;
          v176 = v228;
          if (EnumTagSinglePayload == 1)
          {
            sub_1DCB0E9D8(v170, &qword_1ECCA88F0, &unk_1DD0FDDE0);
            v94 = v243;
LABEL_43:
            v177 = v223;
            v178 = v233;
            if (qword_1EDE4F900 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v179 = sub_1DD0DD8FC();
            OUTLINED_FUNCTION_92(v179, qword_1EDE57E00);
            OUTLINED_FUNCTION_1_35();
            OUTLINED_FUNCTION_21_3();
            sub_1DCB24858();
            v180 = sub_1DD0DD8EC();
            v181 = sub_1DD0DE6EC();
            if (OUTLINED_FUNCTION_22(v181))
            {
              v182 = OUTLINED_FUNCTION_151();
              v183 = OUTLINED_FUNCTION_83();
              *&v247 = v183;
              *v182 = 136315138;
              OUTLINED_FUNCTION_1_35();
              sub_1DCB24858();
              v184 = sub_1DD0DE02C();
              v81 = v185;
              sub_1DCB286E8(v178, type metadata accessor for USOParse);
              v186 = sub_1DCB10E9C(v184, v81, &v247);
              OUTLINED_FUNCTION_91_6();

              *(v182 + 4) = v186;
              v102 = v239;
              OUTLINED_FUNCTION_76_12();
              _os_log_impl(v187, v188, v189, v190, v191, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v183);
              OUTLINED_FUNCTION_92_0();
              OUTLINED_FUNCTION_80();

              sub_1DCB0E9D8(v243, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
              v103 = v245;
              sub_1DCB286E8(v223, type metadata accessor for USOParse);
              v154 = v237;
              v139 = v238;
              v113 = v236;
              goto LABEL_64;
            }

            sub_1DCB286E8(v178, type metadata accessor for USOParse);
            sub_1DCB0E9D8(v94, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
            sub_1DCB286E8(v177, type metadata accessor for USOParse);
            v139 = v238;
          }

          else
          {
            v192 = v163;
            sub_1DD0DB3FC();
            v193 = *v164;
            v194 = OUTLINED_FUNCTION_17_1();
            v195(v194);
            v139 = sub_1DD0DD67C();
            v197 = v196;
            (*(v225 + 8))(v192, v176);
            sub_1DCB0E9D8(v243, &qword_1ECCA2FD8, &qword_1DD0FDDF0);
            sub_1DCB286E8(v223, type metadata accessor for USOParse);
            sub_1DCB0E9D8(v81, qword_1ECCA88F8, &unk_1DD0FDDF8);
            *v81 = v139;
            v81[1] = v197;
            v198 = *MEMORY[0x1E69CE5D0];
            v199 = OUTLINED_FUNCTION_111_2();
            v200(v199);
            OUTLINED_FUNCTION_134_1();
          }

          v113 = v236;
          v154 = v237;
          v103 = v245;
          goto LABEL_64;
        }

        ++v161;
        (*v164)(v168, v165);
        v163 = v242;
      }

      __break(1u);
      goto LABEL_68;
    default:
      v107 = v244;
      v108 = v81;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v144 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v144, qword_1EDE57E00);
      v145 = sub_1DD0DD8EC();
      v146 = sub_1DD0DE6EC();
      v147 = OUTLINED_FUNCTION_22(v146);
      v113 = v236;
      if (v147)
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_76_12();
        _os_log_impl(v148, v149, v150, v151, v152, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_1_92();
      sub_1DCB286E8(v104, v153);
LABEL_25:
      v154 = v237;
      v139 = v238;
      goto LABEL_64;
  }
}

void sub_1DCE75C20()
{
  v1 = *v0;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCE75CA0(uint64_t a1, uint64_t *a2)
{
  *(v3 + 272) = a1;
  *(v3 + 280) = v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  *(v3 + 288) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 296) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110) - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0) - 8) + 64) + 15;
  *(v3 + 312) = swift_task_alloc();
  v11 = type metadata accessor for Input(0);
  *(v3 + 320) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *a2;
  *(v3 + 328) = v13;
  *(v3 + 336) = v14;
  *(v3 + 344) = *(a2 + 1);
  *(v3 + 57) = *(a2 + 24);
  *(v3 + 360) = a2[4];
  *(v3 + 58) = *(a2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1DCE75E2C, 0, 0);
}

uint64_t sub_1DCE75E2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_125_2();
  v1 = v0[42];
  v2 = v0[35];
  OUTLINED_FUNCTION_78_14(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[46] = v4;
  *v4 = v5;
  v4[1] = sub_1DCE75EC8;
  OUTLINED_FUNCTION_62_1();

  return sub_1DCE7CC9C(v6, v7);
}

uint64_t sub_1DCE75EC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 368);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 376) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE75FC0()
{
  OUTLINED_FUNCTION_41();
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 280);
  sub_1DCE77DE8(v0 + 112, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 280);
    sub_1DCB0E9D8(*(v0 + 312), &qword_1ECCA1DA0, &qword_1DD0ED3F0);
    v5 = v4[7];
    __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
    v6 = swift_task_alloc();
    *(v0 + 400) = v6;
    *(v6 + 16) = v0 + 112;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 408) = v7;
    *v7 = v8;
    v7[1] = sub_1DCE763A8;
    OUTLINED_FUNCTION_48();

    return sub_1DCB63BBC(v9, v10, v11, v12, v13);
  }

  else
  {
    v16 = *(v0 + 328);
    v17 = *(v0 + 312);
    OUTLINED_FUNCTION_59_15();
    sub_1DCE8A338();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v20))
    {
      v21 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v21);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_62();
    }

    v27 = *(v0 + 58);
    v28 = *(v0 + 360);
    v29 = *(v0 + 57);
    v30 = *(v0 + 336);
    v37 = *(v0 + 344);

    *(v0 + 64) = v30;
    *(v0 + 72) = v37;
    *(v0 + 88) = v29;
    *(v0 + 96) = v28;
    *(v0 + 104) = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 384) = v31;
    *v31 = v32;
    v31[1] = sub_1DCE76220;
    v33 = *(v0 + 328);
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);
    OUTLINED_FUNCTION_130_1();
    OUTLINED_FUNCTION_48();

    return sub_1DCE76ADC();
  }
}

uint64_t sub_1DCE76220()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 384);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 392) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE76318()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 328);
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);
  v4 = *(v0 + 328);
  OUTLINED_FUNCTION_108_5();
  OUTLINED_FUNCTION_122_1((v0 + 112));

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCE763A8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[52] = v0;

  if (!v0)
  {
    v9 = v3[50];
    OUTLINED_FUNCTION_122_1(v3 + 19);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE76620()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCE766A0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[41];
  OUTLINED_FUNCTION_4_87();
  sub_1DCB286E8(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v4 = v0[49];
  v5 = v0[41];
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCE76734()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[50];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v2 = v0[52];
  v3 = v0[41];
  OUTLINED_FUNCTION_108_5();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCE767C4()
{
  OUTLINED_FUNCTION_42();
  v1[7] = v2;
  v1[8] = v0;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v1[9] = *(v5 + 88);
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v1[10] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[11] = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE76868()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 64);
  v3 = v1[6];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 96) = v4;
  *v4 = v5;
  v4[1] = sub_1DCE76938;
  v6 = *(v0 + 64);

  return sub_1DCB63BBC(v0 + 16, &unk_1DD0FDDA8, v6, v3, v2);
}

uint64_t sub_1DCE76938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 104) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE76A38()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCE743E0(v1);
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1DCE76ADC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 136) = v5;
  OUTLINED_FUNCTION_13();
  *(v1 + 160) = *(v6 + 80);
  OUTLINED_FUNCTION_8_2();
  v8 = *(v7 + 88);
  *(v1 + 168) = v8;
  v9 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  *(v1 + 176) = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  *(v1 + 184) = OUTLINED_FUNCTION_38();
  v12 = *(v8 - 8);
  *(v1 + 192) = v12;
  v13 = *(v12 + 64) + 15;
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  OUTLINED_FUNCTION_99_5();
  v14 = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  *(v1 + 224) = v14;
  v15 = *(v14 - 8);
  OUTLINED_FUNCTION_24_0();
  *(v1 + 232) = v16;
  v18 = *(v17 + 64);
  *(v1 + 240) = OUTLINED_FUNCTION_38();
  v19 = type metadata accessor for DisambiguationResult();
  *(v1 + 248) = v19;
  v20 = *(v19 - 8);
  OUTLINED_FUNCTION_24_0();
  *(v1 + 256) = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_38();
  v25 = *v3;
  *(v1 + 264) = v24;
  *(v1 + 272) = v25;
  *(v1 + 280) = *(v3 + 1);
  *(v1 + 57) = *(v3 + 24);
  *(v1 + 296) = v3[4];
  *(v1 + 58) = *(v3 + 40);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1DCE76CD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_124_1();
  v1 = v0[34];
  v2 = v0[19];
  OUTLINED_FUNCTION_78_14(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[38] = v4;
  *v4 = v5;
  v4[1] = sub_1DCE76D70;
  v6 = v0[33];
  v7 = v0[18];
  OUTLINED_FUNCTION_130_1();

  return sub_1DCE7CA34(v8, v9, v10);
}

uint64_t sub_1DCE76D70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 304);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 312) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCE76E68()
{
  v73 = v0;
  (*(v0[29] + 16))(v0[30], v0[33], v0[28]);
  OUTLINED_FUNCTION_194();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[30];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v7))
    {
      v8 = OUTLINED_FUNCTION_151();
      v9 = OUTLINED_FUNCTION_83();
      v66 = v9;
      *v8 = 136315138;
      v10 = sub_1DCE23DF0(v3, v4);
      v12 = sub_1DCB10E9C(v10, v11, &v66);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "PromptForDisambiguationFlow received a request to paginate from the user: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_124_1();
    v13 = v0[33];
    v15 = v0[31];
    v14 = v0[32];
    v17 = v0[22];
    v16 = v0[23];
    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[17];
    v66 = v0[34];
    v67 = *v21;
    v68 = v22;
    v69 = v23;
    v70 = v24;
    v71 = v3;
    v72 = v25;
    v26 = type metadata accessor for PaginatedItemContainer();

    sub_1DCE2459C(&v71, v26);
    v27 = v68;
    v28 = v69;
    v29 = v70;
    *v16 = v66;
    *(v16 + 8) = v67;
    *(v16 + 24) = v27;
    *(v16 + 32) = v28;
    *(v16 + 40) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v16);
    (*(v14 + 8))(v13, v15);
    static ExecuteResponse.ongoing(requireInput:)(0, v20);
  }

  else
  {
    (*(v0[24] + 32))(v0[27], v2, v0[21]);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v30 = v0[26];
    v31 = v0[27];
    v32 = v0[24];
    v33 = v0[21];
    v34 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v34, qword_1EDE57E00);
    v35 = *(v32 + 16);
    OUTLINED_FUNCTION_92_7();
    v36();
    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();
    v39 = OUTLINED_FUNCTION_75(v38);
    v40 = v0[26];
    if (v39)
    {
      v42 = v0[24];
      v41 = v0[25];
      v43 = v0[21];
      v44 = OUTLINED_FUNCTION_151();
      v63 = OUTLINED_FUNCTION_83();
      v66 = v63;
      *v44 = 136315138;
      v35(v41, v40, v43);
      v45 = sub_1DD0DE02C();
      v47 = v46;
      v65 = *(v42 + 8);
      v65(v40, v43);
      v48 = sub_1DCB10E9C(v45, v47, &v66);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1DCAFC000, v37, v38, "PromptForDisambiguationFlow received a chosen item from the user (%s). Returning with answer.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      OUTLINED_FUNCTION_92_0();
      OUTLINED_FUNCTION_62();
    }

    else
    {
      v49 = v0[24];
      v50 = v0[21];

      v51 = *(v49 + 8);
      v52 = OUTLINED_FUNCTION_21_3();
      v65 = v53;
      (v53)(v52);
    }

    v54 = v0[32];
    v64 = v0[33];
    v55 = v0[31];
    v56 = v0[27];
    v57 = v0[23];
    v58 = v0[21];
    v59 = v0[19];
    v60 = v0[17];
    v35(v57, v56, v58);
    type metadata accessor for PromptResult();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCE743E0(v57);
    v65(v56, v58);
    (*(v54 + 8))(v64, v55);
    static ExecuteResponse.complete()();
  }

  OUTLINED_FUNCTION_117_3();

  OUTLINED_FUNCTION_43();

  return v61();
}

uint64_t sub_1DCE77334()
{
  OUTLINED_FUNCTION_41();
  v28 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[39];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[39];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v27 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[15];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v27);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "PromptForDisambiguationFlow encountered an error while trying to parse user input: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_92_0();
  }

  v15 = v0[39];
  v16 = v0[19];
  v17 = OUTLINED_FUNCTION_85_7();
  v0[40] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[41] = v18;
  *v18 = v19;
  v18[1] = sub_1DCE774FC;
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_48();

  return sub_1DCB63BBC(v20, v21, v22, v23, v24);
}

uint64_t sub_1DCE774FC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[42] = v0;

  if (!v0)
  {
    v9 = v3[40];
    OUTLINED_FUNCTION_122_1(v3 + 8);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE77604()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[39];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v5 = v0[19];
  v6 = v0[17];
  *v3 = v1;
  *(v3 + 8) = 1;
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  sub_1DCE743E0(v3);

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_117_3();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1DCE776F4()
{
  v1 = v0[42];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[33];
  v5 = v0[30];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[23];

  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v11 = v0[42];

  return v10();
}

uint64_t sub_1DCE777C8()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  OUTLINED_FUNCTION_13();
  v1[21] = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v1[22] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_106_4(v9);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE77870()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = OUTLINED_FUNCTION_85_7();
  v0[24] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[25] = v3;
  *v3 = v4;
  v3[1] = sub_1DCE77938;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE77938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[26] = v0;

  if (!v0)
  {
    v9 = v3[24];
    OUTLINED_FUNCTION_122_1(v3 + 14);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE77A40()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  *(v2 + 25) = *(v0 + 41);
  *v2 = v6;
  v2[1] = v7;
  OUTLINED_FUNCTION_118_2();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_80_8();
  v8 = type metadata accessor for PaginatedItemContainer();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 16))(v0 + 64, v0 + 16);
  sub_1DCE743E0(v2);
  static ExecuteResponse.ongoing(requireInput:)(1, v5);

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1DCE77B0C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0[23];
  v1 = v0[24];

  OUTLINED_FUNCTION_29();
  v4 = v0[26];

  return v3();
}

uint64_t sub_1DCE77B70()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  OUTLINED_FUNCTION_13();
  v1[21] = *(v3 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v6 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  v1[22] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_106_4(v9);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE77C18()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[20];
  v2 = OUTLINED_FUNCTION_85_7();
  v0[24] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[25] = v3;
  *v3 = v4;
  v3[1] = sub_1DCE77CE0;
  OUTLINED_FUNCTION_12_10();

  return sub_1DCB63BBC(v5, v6, v7, v8, v9);
}

uint64_t sub_1DCE77CE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[26] = v0;

  if (!v0)
  {
    v9 = v3[24];
    OUTLINED_FUNCTION_122_1(v3 + 14);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCE77DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v4 = type metadata accessor for Input(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB0, &unk_1DD0FDD90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v87 - v11;
  v13 = type metadata accessor for Parse(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v88 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DB8, &qword_1DD0E2140);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v87 - v24;
  v26 = sub_1DD0DC8EC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v90 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1D98, &unk_1DD0E2110);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8, v33);
  v35 = &v87 - v34;
  v36 = sub_1DD0DC8BC();
  v94 = *(v36 - 8);
  v95 = v36;
  v37 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v36, v38);
  v93 = &v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v2;
  sub_1DCB8878C();
  if (!v98)
  {
    sub_1DCB0E9D8(&v96, &qword_1ECCA1DA8, &unk_1DD0E2130);
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  v91 = a2;
  v40 = v4;
  sub_1DCAFF9E8(&v96, v100);
  v98 = &type metadata for FeatureFlagDefinitions.Core;
  v99 = sub_1DCBF3744();
  LOBYTE(v96) = 1;
  v41 = sub_1DD0DB2AC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v96);
  if ((v41 & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v57 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v57, qword_1EDE57E00);
    v58 = sub_1DD0DD8EC();
    v59 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DCAFC000, v58, v59, "PromptForDisambiguationFlow PervasiveEntityResolution is not enabled", v60, 2u);
      MEMORY[0x1E12A8390](v60, -1, -1);
    }

    v61 = v91;
    goto LABEL_22;
  }

  sub_1DCB17D04(v92, &v96);
  sub_1DCE788F8(&v96, v42, v43, v44, v45, v46, v47, v48, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, *(&v96 + 1), v97);
  v49 = v95;
  if (__swift_getEnumTagSinglePayload(v35, 1, v95) != 1)
  {
    v92 = v27;
    (*(v94 + 32))(v93, v35, v49);
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    sub_1DD0DC9AC();
    if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
    {
      sub_1DCB0E9D8(v25, &qword_1ECCA1DB8, &qword_1DD0E2140);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v62 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v62, qword_1EDE57E00);
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6DC();
      v65 = os_log_type_enabled(v63, v64);
      v54 = v91;
      if (v65)
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1DCAFC000, v63, v64, "PromptForDisambiguationFlow PervasiveEntityResolution: nothing learned", v66, 2u);
        MEMORY[0x1E12A8390](v66, -1, -1);
      }

      (*(v94 + 8))(v93, v95);
      goto LABEL_21;
    }

    v69 = v92;
    v70 = v90;
    (*(v92 + 32))(v90, v25, v26);
    sub_1DCE8A390(&qword_1EDE46638, type metadata accessor for Parse);
    sub_1DD0DC8DC();
    v71 = v40;
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1DCB0E9D8(v12, &qword_1ECCA1DB0, &unk_1DD0FDD90);
      v72 = v91;
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v73 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v73, qword_1EDE57E00);
      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_1DCAFC000, v74, v75, "PromptForDisambiguationFlow could not decode parse, starting fresh", v76, 2u);
        MEMORY[0x1E12A8390](v76, -1, -1);
      }
    }

    else
    {
      v77 = v88;
      sub_1DCE8A338();
      sub_1DCB24858();
      v78 = v89;
      v79 = v89 + v71[7];
      *(v79 + 32) = 0;
      *v79 = 0u;
      *(v79 + 16) = 0u;
      v80 = v71[5];
      sub_1DCB24858();
      *(v78 + v71[6]) = MEMORY[0x1E69E7CC0];
      sub_1DD0DB03C();
      sub_1DCB286E8(v18, type metadata accessor for Parse);
      *(v78 + v71[8]) = 0;
      v81 = *(v87 + 16);
      v82 = *(v81 + 40);
      (*(v81 + 32))(&v96, v78);
      v72 = v91;
      if (v96 == 1)
      {
        sub_1DCB286E8(v77, type metadata accessor for Parse);
        (*(v69 + 8))(v70, v26);
        (*(v94 + 8))(v93, v95);
        sub_1DCE8A338();
        v61 = v72;
        v67 = 0;
LABEL_38:
        v68 = v71;
        goto LABEL_23;
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v83 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v83, qword_1EDE57E00);
      v84 = sub_1DD0DD8EC();
      v85 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1DCAFC000, v84, v85, "PromptForDisambiguationFlow learned selection rejected, starting fresh", v86, 2u);
        MEMORY[0x1E12A8390](v86, -1, -1);
      }

      sub_1DCB286E8(v78, type metadata accessor for Input);
      sub_1DCB286E8(v77, type metadata accessor for Parse);
    }

    (*(v69 + 8))(v70, v26);
    (*(v94 + 8))(v93, v95);
    v61 = v72;
    v67 = 1;
    goto LABEL_38;
  }

  sub_1DCB0E9D8(v35, &qword_1ECCA1D98, &unk_1DD0E2110);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v50 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v50, qword_1EDE57E00);
  v51 = sub_1DD0DD8EC();
  v52 = sub_1DD0DE6DC();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v91;
  if (v53)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1DCAFC000, v51, v52, "PromptForDisambiguationFlow Could not extract choices for PervasiveEntityResolution", v55, 2u);
    MEMORY[0x1E12A8390](v55, -1, -1);
  }

LABEL_21:
  v61 = v54;
LABEL_22:
  v67 = 1;
  v68 = v40;
LABEL_23:
  __swift_storeEnumTagSinglePayload(v61, v67, 1, v68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v100);
}

uint64_t sub_1DCE7888C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE788A0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17D04(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

void sub_1DCE788F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1DD0DB78C();
  v28 = OUTLINED_FUNCTION_9(v27);
  v286 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28, v32);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v33, v34);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v35, v36);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v37);
  v295 = sub_1DD0DD68C();
  v38 = OUTLINED_FUNCTION_9(v295);
  v258 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38, v42);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_71_0();
  v294 = v45;
  OUTLINED_FUNCTION_12();
  v293 = sub_1DD0DB41C();
  v46 = OUTLINED_FUNCTION_9(v293);
  v270 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46, v50);
  OUTLINED_FUNCTION_16();
  v292 = v52 - v51;
  OUTLINED_FUNCTION_12();
  v283 = sub_1DD0DB44C();
  v53 = OUTLINED_FUNCTION_9(v283);
  v257 = v54;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53, v57);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v58, v59);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v60);
  v282 = sub_1DD0DB66C();
  v61 = OUTLINED_FUNCTION_9(v282);
  v256 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61, v65);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v66, v67);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v68);
  v281 = sub_1DD0DB5BC();
  v69 = OUTLINED_FUNCTION_9(v281);
  v285 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69, v73);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v74, v75);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_6_36(v76);
  v291 = sub_1DD0DB72C();
  v77 = OUTLINED_FUNCTION_9(v291);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v77, v82);
  OUTLINED_FUNCTION_16();
  v290 = v84 - v83;
  OUTLINED_FUNCTION_12();
  v261 = sub_1DD0DB6EC();
  v85 = OUTLINED_FUNCTION_9(v261);
  v87 = v86;
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v85, v90);
  OUTLINED_FUNCTION_10_2();
  v93 = v91 - v92;
  MEMORY[0x1EEE9AC00](v94, v95);
  OUTLINED_FUNCTION_71_0();
  v259 = v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v97);
  v99 = *(v98 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v100, v101);
  v103 = &v252 - v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v104);
  v106 = *(v105 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v107, v108);
  OUTLINED_FUNCTION_4_1();
  sub_1DCB17D04(v24, v298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  v109 = type metadata accessor for AceOutput();
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v103, 1, 1, v109);
    v112 = &qword_1ECCA1BD0;
    v113 = &qword_1DD0EB860;
    v114 = v103;
    goto LABEL_5;
  }

  __swift_storeEnumTagSinglePayload(v103, 0, 1, v109);
  v110 = *(v109 + 28);
  sub_1DCB8878C();
  sub_1DCB286E8(v103, type metadata accessor for AceOutput);
  v111 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v20, 1, v111) == 1)
  {
    v112 = &unk_1ECCA3270;
    v113 = &qword_1DD0E0F70;
    v114 = v20;
LABEL_5:
    sub_1DCB0E9D8(v114, v112, v113);
LABEL_6:
    if (qword_1EDE4F900 != -1)
    {
LABEL_108:
      OUTLINED_FUNCTION_0_0();
    }

    v115 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v115, qword_1EDE57E00);
    sub_1DCB17D04(v24, v298);
    v116 = sub_1DD0DD8EC();
    v117 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_22(v117))
    {
      v118 = OUTLINED_FUNCTION_151();
      v119 = OUTLINED_FUNCTION_83();
      v297 = v119;
      *v118 = 136315138;
      sub_1DCB17D04(v298, v296);
      v120 = sub_1DD0DE02C();
      v122 = v121;
      __swift_destroy_boxed_opaque_existential_1Tm(v298);
      v123 = sub_1DCB10E9C(v120, v122, &v297);

      *(v118 + 4) = v123;
      OUTLINED_FUNCTION_9_3();
      _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v119);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();

      v129 = v24;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v129 = v298;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v129);
    v130 = 1;
    goto LABEL_11;
  }

  v132 = *(v20 + 216);

  sub_1DCB286E8(v20, type metadata accessor for NLContextUpdate);
  if (!v132)
  {
    goto LABEL_6;
  }

  v254 = v26;
  v133 = 0;
  v134 = *(v132 + 16);
  v26 = v87 + 16;
  v279 = v87 + 8;
  v135 = v261;
  while (v134 != v133)
  {
    if (v133 >= *(v132 + 16))
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    (*(v87 + 16))(v93, v132 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v133, v135);
    if (sub_1DD0DB69C())
    {

      v146 = *(v87 + 32);
      v147 = OUTLINED_FUNCTION_33_1();
      v148(v147);
      v149 = v290;
      sub_1DD0DB67C();
      v135 = sub_1DD0DB46C();
      (*(v79 + 8))(v149, v291);
      v150 = *(v135 + 16);
      v26 = MEMORY[0x1E69E7CC0];
      v253 = v24;
      v284 = v27;
      v255 = v135;
      v287 = v150;
      if (v150)
      {
        OUTLINED_FUNCTION_75_10();
        v266 = v135 + v152;
        v265 = v153 + 16;
        v264 = v256 + 8;
        v263 = v257 + 8;
        v290 = v270 + 16;
        v289 = (v258 + 8);
        v288 = (v270 + 8);
        v262 = v153 + 8;
        v24 = v26;
        v154 = v281;
        v155 = v269;
        while (v151 < *(v135 + 16))
        {
          v156 = *(v285 + 72);
          v280 = v151;
          (*(v285 + 16))(v155, v266 + v156 * v151, v154);
          v157 = v276;
          sub_1DD0DB56C();
          v158 = v277;
          sub_1DD0DB63C();
          OUTLINED_FUNCTION_95_0(v296);
          v159(v157, v282);
          v160 = sub_1DD0DB43C();
          OUTLINED_FUNCTION_95_0(&v295);
          v161(v158, v283);
          v162 = *(v160 + 16);
          if (v162)
          {
            v268 = v24;
            v298[0] = v26;
            OUTLINED_FUNCTION_132_1();
            v132 = v298[0];
            OUTLINED_FUNCTION_75_10();
            v267 = v160;
            v164 = v160 + v163;
            v291 = *(v165 + 72);
            v166 = *(v165 + 16);
            do
            {
              v168 = v292;
              v167 = v293;
              v166(v292, v164, v293);
              v169 = v294;
              sub_1DD0DB3FC();
              v170 = sub_1DD0DD67C();
              v172 = v171;
              (*v289)(v169, v295);
              (*v288)(v168, v167);
              v298[0] = v132;
              v174 = *(v132 + 16);
              v173 = *(v132 + 24);
              if (v174 >= v173 >> 1)
              {
                OUTLINED_FUNCTION_72_12(v173);
                sub_1DCB38954();
                v132 = v298[0];
              }

              *(v132 + 16) = v174 + 1;
              v175 = v132 + 16 * v174;
              *(v175 + 32) = v170;
              *(v175 + 40) = v172;
              v164 += v291;
              --v162;
            }

            while (v162);
            OUTLINED_FUNCTION_95_0(&v294);
            v155 = v269;
            v154 = v281;
            v176(v269, v281);

            v27 = v284;
            v135 = v255;
            v24 = v268;
            v26 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            OUTLINED_FUNCTION_95_0(&v294);
            v177(v155, v154);
            v132 = v26;
          }

          v178 = *(v132 + 16);
          v179 = *(v24 + 16);
          if (__OFADD__(v179, v178))
          {
            goto LABEL_102;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v179 + v178 > *(v24 + 24) >> 1)
          {
            sub_1DCB34108();
            v24 = v180;
          }

          if (*(v132 + 16))
          {
            if ((*(v24 + 24) >> 1) - *(v24 + 16) < v178)
            {
              goto LABEL_106;
            }

            swift_arrayInitWithCopy();

            if (v178)
            {
              v181 = *(v24 + 16);
              v182 = __OFADD__(v181, v178);
              v183 = v181 + v178;
              if (v182)
              {
                __break(1u);
LABEL_110:
                __break(1u);
                goto LABEL_111;
              }

              *(v24 + 16) = v183;
            }
          }

          else
          {

            if (v178)
            {
              goto LABEL_103;
            }
          }

          v151 = v280 + 1;
          if (v280 + 1 == v287)
          {
            goto LABEL_46;
          }
        }

LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
      }

      else
      {
        v24 = MEMORY[0x1E69E7CC0];
LABEL_46:
        v184 = 0;
        v185 = *(v24 + 16);
        v186 = (v24 + 40);
        v187 = MEMORY[0x1E69E7CC0];
LABEL_47:
        v188 = &v186[2 * v184];
        while (v185 != v184)
        {
          if (v184 >= *(v24 + 16))
          {
            goto LABEL_99;
          }

          ++v184;
          v26 = *(v188 - 1);
          v189 = *v188;
          v188 += 2;
          v190 = HIBYTE(v189) & 0xF;
          if ((v189 & 0x2000000000000000) == 0)
          {
            v190 = v26 & 0xFFFFFFFFFFFFLL;
          }

          if (v190)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v298[0] = v187;
            v268 = v24;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_109_2();
              sub_1DCB38954();
              v187 = v298[0];
            }

            v193 = *(v187 + 16);
            v192 = *(v187 + 24);
            if (v193 >= v192 >> 1)
            {
              OUTLINED_FUNCTION_72_12(v192);
              sub_1DCB38954();
              v187 = v298[0];
            }

            *(v187 + 16) = v193 + 1;
            v194 = v187 + 16 * v193;
            *(v194 + 32) = v26;
            *(v194 + 40) = v189;
            v24 = v268;
            goto LABEL_47;
          }
        }

        v290 = v187;

        if (!v287)
        {
          v196 = MEMORY[0x1E69E7CC0];
LABEL_73:

          v24 = 0;
          v293 = *(v196 + 16);
          v294 = (v286 + 16);
          v26 = v258 + 8;
          v291 = v286 + 32;
          v209 = (v286 + 8);
          v292 = MEMORY[0x1E69E7CC0];
LABEL_74:
          v210 = v278;
          while (v293 != v24)
          {
            if (v24 >= *(v196 + 16))
            {
              goto LABEL_100;
            }

            v211 = (*(v286 + 80) + 32) & ~*(v286 + 80);
            v212 = *(v286 + 72);
            v213 = v27;
            (*(v286 + 16))(v210, v196 + v211 + v212 * v24, v27);
            v214 = sub_1DD0DB76C();
            v216 = v215;

            v217 = HIBYTE(v216) & 0xF;
            if ((v216 & 0x2000000000000000) == 0)
            {
              v217 = v214 & 0xFFFFFFFFFFFFLL;
            }

            if (v217)
            {
              v218 = v271;
              sub_1DD0DB77C();
              v219 = sub_1DD0DD67C();
              v221 = v220;
              (*v26)(v218, v295);
              if (v219 == 0x64695F6D657469 && v221 == 0xE700000000000000)
              {

                v210 = v278;
LABEL_87:
                v224 = v213;
                v225 = *v291;
                (*v291)(v260, v210, v224);
                v226 = v292;
                v227 = swift_isUniquelyReferenced_nonNull_native();
                v298[0] = v226;
                if ((v227 & 1) == 0)
                {
                  v228 = OUTLINED_FUNCTION_109_2();
                  sub_1DCE06B88(v228, v229, v230);
                  v226 = v298[0];
                }

                v232 = *(v226 + 16);
                v231 = *(v226 + 24);
                if (v232 >= v231 >> 1)
                {
                  v234 = OUTLINED_FUNCTION_72_12(v231);
                  sub_1DCE06B88(v234, v232 + 1, 1);
                  v226 = v298[0];
                }

                ++v24;
                *(v226 + 16) = v232 + 1;
                v292 = v226;
                v233 = v226 + v211 + v232 * v212;
                v27 = v284;
                v225(v233, v260, v284);
                goto LABEL_74;
              }

              v223 = sub_1DD0DF0AC();

              v210 = v278;
              if (v223)
              {
                goto LABEL_87;
              }
            }

            v27 = v213;
            (*v209)(v210, v213);
            ++v24;
          }

          v235 = v292;
          v236 = *(v292 + 16);
          if (v236)
          {
            v298[0] = MEMORY[0x1E69E7CC0];
            OUTLINED_FUNCTION_132_1();
            v237 = v298[0];
            OUTLINED_FUNCTION_75_10();
            v239 = v235 + v238;
            v295 = *(v240 + 72);
            v241 = *(v240 + 16);
            do
            {
              v241(v275, v239, v284);
              v242 = sub_1DD0DB76C();
              v244 = v243;
              v245 = *v209;
              v246 = OUTLINED_FUNCTION_194();
              v247(v246);
              v298[0] = v237;
              v249 = *(v237 + 16);
              v248 = *(v237 + 24);
              if (v249 >= v248 >> 1)
              {
                OUTLINED_FUNCTION_72_12(v248);
                sub_1DCB38954();
                v237 = v298[0];
              }

              *(v237 + 16) = v249 + 1;
              v250 = v237 + 16 * v249;
              *(v250 + 32) = v242;
              *(v250 + 40) = v244;
              v239 += v295;
              --v236;
            }

            while (v236);
          }

          v26 = v254;
          sub_1DD0DC8AC();
          __swift_destroy_boxed_opaque_existential_1Tm(v253);
          OUTLINED_FUNCTION_95_0(&a12);
          v251(v259, v261);
          v130 = 0;
          goto LABEL_11;
        }

        v195 = *(v285 + 16);
        v132 = v135 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
        v293 = *(v285 + 72);
        v294 = v195;
        v26 = v256 + 8;
        v24 = v257 + 8;
        v285 += 16;
        v135 = v285 - 8;
        v196 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v197 = v272;
          v198 = v281;
          v294(v272, v132, v281);
          v199 = v273;
          sub_1DD0DB56C();
          v200 = v274;
          sub_1DD0DB63C();
          (*v26)(v199, v282);
          v201 = sub_1DD0DB42C();
          (*v24)(v200, v283);
          (*v135)(v197, v198);
          v202 = *(v201 + 16);
          v203 = *(v196 + 16);
          if (__OFADD__(v203, v202))
          {
            break;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v203 + v202 > *(v196 + 24) >> 1)
          {
            sub_1DCE18C68();
            v196 = v204;
          }

          v27 = v284;
          if (*(v201 + 16))
          {
            if ((*(v196 + 24) >> 1) - *(v196 + 16) < v202)
            {
              goto LABEL_107;
            }

            v205 = (*(v286 + 80) + 32) & ~*(v286 + 80);
            v206 = *(v286 + 72);
            swift_arrayInitWithCopy();

            if (v202)
            {
              v207 = *(v196 + 16);
              v182 = __OFADD__(v207, v202);
              v208 = v207 + v202;
              if (v182)
              {
                goto LABEL_110;
              }

              *(v196 + 16) = v208;
            }
          }

          else
          {

            if (v202)
            {
              goto LABEL_105;
            }
          }

          v132 += v293;
          if (!--v287)
          {
            goto LABEL_73;
          }
        }
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    ++v133;
    OUTLINED_FUNCTION_95_0(&a12);
    v136(v93, v135);
  }

  if (qword_1EDE4F900 != -1)
  {
LABEL_111:
    OUTLINED_FUNCTION_0_0();
  }

  v137 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v137, qword_1EDE57E00);

  v138 = sub_1DD0DD8EC();
  v139 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v138, v139))
  {
    v140 = OUTLINED_FUNCTION_151();
    v141 = OUTLINED_FUNCTION_83();
    v298[0] = v141;
    *v140 = 136315138;
    v142 = MEMORY[0x1E12A6960](v132, v135);
    v144 = v143;

    v145 = sub_1DCB10E9C(v142, v144, v298);

    *(v140 + 4) = v145;
    _os_log_impl(&dword_1DCAFC000, v138, v139, "PromptForDisambiguationFlow no choice found in SDA: %s", v140, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v130 = 1;
  v26 = v254;
LABEL_11:
  v131 = sub_1DD0DC8BC();
  __swift_storeEnumTagSinglePayload(v26, v130, 1, v131);
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCE79C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79C6C, 0, 0);
}

uint64_t sub_1DCE79C6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_92_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_2(v1);

  return sub_1DCE7CE94(v3, v0 + 16);
}

uint64_t sub_1DCE79CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79D20, 0, 0);
}

uint64_t sub_1DCE79D20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_92_9();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_113_2(v1);

  return sub_1DCE7D08C(v3, v0 + 16);
}

uint64_t sub_1DCE79DB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79DD0, 0, 0);
}

uint64_t sub_1DCE79DD0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*(v0 + 24) + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_1(v2);

  return sub_1DCE7D170(v4);
}

uint64_t sub_1DCE79E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE79E80, 0, 0);
}

uint64_t sub_1DCE79E80()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0[3] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v2;
  *v2 = v3;
  v2[1] = sub_1DCBEA100;
  v4 = v0[4];
  v5 = v0[2];

  return sub_1DCE7D268(v5, v4);
}

unint64_t sub_1DCE79F18(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C6C65636E61632ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v4 + 8))(v7, a1);
      result = 0x5374706D6F72702ELL;
      break;
    case 2:
      type metadata accessor for Input(255);
      v12 = *(a1 + 16);
      type metadata accessor for PaginatedItemContainer();
      v13 = *&v7[*(swift_getTupleTypeMetadata2() + 48)];

      sub_1DCB286E8(v7, type metadata accessor for Input);
      result = 0xD000000000000011;
      break;
    case 3:
      type metadata accessor for Input(255);
      v10 = *(a1 + 16);
      type metadata accessor for PaginatedItemContainer();
      v11 = *&v7[*(swift_getTupleTypeMetadata2() + 48)];

      sub_1DCB286E8(v7, type metadata accessor for Input);
      result = 0x65646E7573696D2ELL;
      break;
    case 4:
      (*(v4 + 8))(v7, a1);
      result = 0x61507974706D652ELL;
      break;
    case 5:
      (*(v4 + 8))(v7, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 6:
      (*(v4 + 8))(v7, a1);
      result = 0x726F7272652ELL;
      break;
    case 7:
      return result;
    default:
      (*(v4 + 8))(v7, a1);
      result = 0x646574726174732ELL;
      break;
  }

  return result;
}

uint64_t *PromptForDisambiguationFlowAsync.deinit()
{
  v1 = *v0;
  v2 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  sub_1DCB0E9D8((v0 + 8), &qword_1ECCA1DA8, &unk_1DD0E2130);
  v3 = v0[16];

  v4 = *(*v0 + 128);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 8))(v0 + v4);
  return v0;
}

uint64_t PromptForDisambiguationFlowAsync.__deallocating_deinit()
{
  PromptForDisambiguationFlowAsync.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DCE7A330(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCE7A3A8()
{
  v1 = *v0;
  PromptForDisambiguationFlowAsync.on(input:)();
  return v2 & 1;
}

uint64_t sub_1DCE7A3F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return PromptForDisambiguationFlowAsync.execute()();
}

void *sub_1DCE7A4B4()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_11_8();
  v0[2] = sub_1DCE7A580(v5, v6, v7, v8, v9);
  v0[3] = v10;
  v11 = OUTLINED_FUNCTION_9_62();
  v0[4] = sub_1DCE7A608(v11, v12, v13, v14, v15);
  v0[5] = v16;
  v17 = OUTLINED_FUNCTION_9_62();
  v0[6] = sub_1DCE7A690(v17, v18, v19, v20, v21);
  v0[7] = v22;
  v23 = OUTLINED_FUNCTION_9_62();
  v0[8] = sub_1DCE7A99C(v23, v24, v25, v26, v27);
  v0[9] = v28;
  v29 = OUTLINED_FUNCTION_9_62();
  v0[10] = sub_1DCE7AB84(v29, v30, v31, v32, v33);
  v0[11] = v34;
  v35 = OUTLINED_FUNCTION_9_62();
  v0[12] = sub_1DCE7AD6C(v35, v36, v37, v38, v39);
  v0[13] = v40;
  v41 = OUTLINED_FUNCTION_9_62();
  v0[14] = sub_1DCE7AF54(v41, v42, v43, v44, v45);
  v0[15] = v46;
  v47 = OUTLINED_FUNCTION_9_62();
  v52 = sub_1DCE7B10C(v47, v48, v49, v50, v51);
  v54 = v53;
  swift_unknownObjectRelease();
  v0[16] = v52;
  v0[17] = v54;
  return v0;
}

uint64_t (*sub_1DCE7A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE8A0C8;
}

uint64_t (*sub_1DCE7A608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE8A09C;
}

void *sub_1DCE7A690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD80;
}

uint64_t sub_1DCE7A718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  *(v8 + 16) = *a3;
  v15 = *(a3 + 40);
  *(v8 + 24) = *(a3 + 8);
  *(v8 + 40) = v13;
  *(v8 + 48) = v14;
  *(v8 + 56) = v15;
  v16 = *(a8 + 40);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 64) = v18;
  *v18 = v8;
  v18[1] = sub_1DCE7A888;

  return v20(a1, a2, v8 + 16, a7, a8);
}

uint64_t sub_1DCE7A888()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

void *sub_1DCE7A99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD70;
}

uint64_t sub_1DCE7AA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v14 = *(a7 + 48);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 64) = v16;
  *v16 = v7;
  v16[1] = sub_1DCE7A888;

  return v18(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD60;
}

uint64_t sub_1DCE7AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v14 = *(a7 + 56);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 64) = v16;
  *v16 = v7;
  v16[1] = sub_1DCE7A888;

  return v18(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD50;
}

uint64_t sub_1DCE7ADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(v7 + 16) = *a2;
  v13 = *(a2 + 40);
  *(v7 + 24) = *(a2 + 8);
  *(v7 + 40) = v11;
  *(v7 + 48) = v12;
  *(v7 + 56) = v13;
  v14 = *(a7 + 64);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 64) = v16;
  *v16 = v7;
  v16[1] = sub_1DCE7A888;

  return v18(a1, v7 + 16, a6, a7);
}

void *sub_1DCE7AF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD40;
}

uint64_t sub_1DCE7AFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a6 + 72);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DCB4AE1C;

  return v14(a1, a5, a6);
}

void *sub_1DCE7B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return &unk_1DD0FDD30;
}

uint64_t sub_1DCE7B194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 80);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DCB4AE1C;

  return v16(a1, a2, a6, a7);
}

void *sub_1DCE7B2CC()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_8_2();
  v4 = *(v3 + 88);
  OUTLINED_FUNCTION_11_8();
  v0[2] = sub_1DCE7B43C(v5, v6, v7, v8, v9);
  v0[3] = v10;
  v11 = OUTLINED_FUNCTION_9_62();
  v0[4] = sub_1DCE7B4C4(v11, v12, v13, v14, v15);
  v0[5] = v16;
  OUTLINED_FUNCTION_1_1();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_26_27(v17);
  v0[6] = &unk_1DD0FDCC8;
  v0[7] = v18;
  OUTLINED_FUNCTION_1_1();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_26_27(v19);
  v0[8] = &unk_1DD0FDCD8;
  v0[9] = v20;
  OUTLINED_FUNCTION_1_1();
  v21 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_26_27(v21);
  v0[10] = &unk_1DD0FDCE8;
  v0[11] = v22;
  OUTLINED_FUNCTION_1_1();
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_26_27(v23);
  v0[12] = &unk_1DD0FDCF8;
  v0[13] = v24;
  OUTLINED_FUNCTION_1_1();
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_26_27(v25);
  v0[14] = &unk_1DD0FDD08;
  v0[15] = v26;
  OUTLINED_FUNCTION_1_1();
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_26_27(v27);
  v0[16] = &unk_1DD0FDD18;
  v0[17] = v28;
  swift_unknownObjectRetain_n();
  return v0;
}

uint64_t (*sub_1DCE7B43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE89CF0;
}

uint64_t (*sub_1DCE7B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;
  swift_unknownObjectRetain();
  return sub_1DCE89CC4;
}

uint64_t sub_1DCE7B54C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a2;
  *(v8 + 80) = a4;
  *(v8 + 64) = a1;
  v9 = a3[1];
  *(v8 + 16) = *a3;
  *(v8 + 32) = v9;
  *(v8 + 41) = *(a3 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7B588, 0, 0);
}

uint64_t sub_1DCE7B588()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  *(v3 + 48) = vextq_s8(v5, v5, 8uLL);
  *(v3 + 64) = v0 + 16;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  type metadata accessor for DisambiguationResult();
  OUTLINED_FUNCTION_17();
  *v7 = v8;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v9);
}

uint64_t sub_1DCE7B684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 120);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE7B7A0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_1DCE7B7FC(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = a3;
  v24[1] = a2;
  type metadata accessor for DisambiguationResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v14 = sub_1DD0DE47C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v24 - v18;
  v20 = a4[1];
  v25 = *a4;
  v26[0] = v20;
  *(v26 + 9) = *(a4 + 25);
  (*(v15 + 16))(v24 - v18, a1, v14);
  v21 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  *(v22 + 4) = a7;
  *(v22 + 5) = a8;
  (*(v15 + 32))(&v22[v21], v19, v14);
  (*(a8 + 40))(v24[0], &v25, sub_1DCE89BF4, v22, a7, a8);
}

uint64_t sub_1DCE7B9C4(uint64_t a1)
{
  type metadata accessor for DisambiguationResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  return sub_1DD05EBE4(a1, v2);
}

uint64_t sub_1DCE7BA38(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7BA70, 0, 0);
}

uint64_t sub_1DCE7BA70()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE7BB30()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE7BC4C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 112);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 128);

  return v2();
}

uint64_t sub_1DCE7BCA8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22[-1] - v15;
  v17 = a3[1];
  v21 = *a3;
  v22[0] = v17;
  *(v22 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v22[-1] - v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v16, v11);
  (*(a7 + 48))(&v21, sub_1DCE89B70, v19, a6, a7);
}

uint64_t sub_1DCE7BE34(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7BE6C, 0, 0);
}

uint64_t sub_1DCE7BE6C()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE7BF2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 112);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCE7C048(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22[-1] - v15;
  v17 = a3[1];
  v21 = *a3;
  v22[0] = v17;
  *(v22 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v22[-1] - v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v16, v11);
  (*(a7 + 56))(&v21, sub_1DCE8A3EC, v19, a6, a7);
}

uint64_t sub_1DCE7C1D4()
{
  sub_1DCB8878C();
  if (v3)
  {
    v1[0] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE45C();
  }

  else
  {
    sub_1DCAFF9E8(&v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCE7C274(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 64) = a1;
  *(v7 + 72) = a3;
  v8 = a2[1];
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 41) = *(a2 + 25);
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C2AC, 0, 0);
}

uint64_t sub_1DCE7C2AC()
{
  OUTLINED_FUNCTION_39();
  v1 = OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_52_22(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v3 = v4;
  OUTLINED_FUNCTION_122();
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCE7C36C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22[-1] - v15;
  v17 = a3[1];
  v21 = *a3;
  v22[0] = v17;
  *(v22 + 9) = *(a3 + 25);
  (*(v12 + 16))(&v22[-1] - v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v16, v11);
  (*(a7 + 64))(&v21, sub_1DCE8A3EC, v19, a6, a7);
}

uint64_t sub_1DCE7C4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C520, 0, 0);
}

uint64_t sub_1DCE7C520()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  v5[1] = sub_1DCCA8008;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DCE7C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v18 - v13;
  (*(v10 + 16))(&v18 - v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v14, v9);
  (*(a6 + 72))(sub_1DCE8A3EC, v16, a5, a6);
}

uint64_t sub_1DCE7C764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCE7C790, 0, 0);
}

uint64_t sub_1DCE7C790()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 48) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  v5[1] = sub_1DCB61FD4;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_3_3();

  return MEMORY[0x1EEE6DE38](v8);
}

uint64_t sub_1DCE7C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v20 - v15;
  (*(v12 + 16))(&v20 - v15, a1, v11);
  v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v17, v16, v11);
  (*(a7 + 80))(a3, sub_1DCE8A3EC, v18, a6, a7);
}

uint64_t sub_1DCE7C9E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DCE7CA0C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1DCE7CA34(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a2;
  v5 = *a3;
  *(v4 + 80) = v3;
  *(v4 + 88) = v5;
  *(v4 + 96) = *(a3 + 1);
  *(v4 + 57) = *(a3 + 24);
  *(v4 + 112) = a3[4];
  *(v4 + 58) = *(a3 + 40);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7CA70()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 58);
  v2 = *(v0 + 112);
  v3 = *(v0 + 57);
  v4 = *(v0 + 80);
  v5 = *(v4 + 48);
  v6 = *(v4 + 56);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 24) = *(v0 + 96);
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  v13 = (v5 + *v5);
  v7 = v5[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 120) = v8;
  *v8 = v9;
  v8[1] = sub_1DCE7CB88;
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  OUTLINED_FUNCTION_130_1();

  return v13();
}

uint64_t sub_1DCE7CB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCE7CCC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 72);
  OUTLINED_FUNCTION_11_54(*(v1 + 64));
  v9 = v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_113_2(v6);
  OUTLINED_FUNCTION_62_1();

  return v9();
}

uint64_t sub_1DCE7CD80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCE7CEB8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_11_54(*(v1 + 80));
  v9 = v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_113_2(v6);
  OUTLINED_FUNCTION_62_1();

  return v9();
}

uint64_t sub_1DCE7CF78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCE7D0B0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_69_4();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_11_54(*(v1 + 96));
  v9 = v3;
  v5 = *(v4 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 112) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_113_2(v6);
  OUTLINED_FUNCTION_62_1();

  return v9();
}

uint64_t sub_1DCE7D170(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7D184()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 24);
  v2 = *(v1 + 120);
  v8 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 32) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_31_1(v4);

  return v8(v6);
}

uint64_t sub_1DCE7D268(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCE7D280()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[4];
  v2 = *(v1 + 136);
  v9 = (*(v1 + 128) + **(v1 + 128));
  v3 = *(*(v1 + 128) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_1DCBF9B9C;
  v6 = v0[2];
  v7 = v0[3];

  return v9(v6, v7);
}

uint64_t sub_1DCE7D374(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCE7CA34(a1, a2, a3);
}

uint64_t sub_1DCE7D424(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7CC9C(a1, a2);
}

uint64_t sub_1DCE7D4CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7CE94(a1, a2);
}

uint64_t sub_1DCE7D574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7D08C(a1, a2);
}

uint64_t sub_1DCE7D61C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCE7D170(a1);
}

uint64_t sub_1DCE7D6B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCE7D268(a1, a2);
}

uint64_t sub_1DCE7D7CC(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  OUTLINED_FUNCTION_33_1();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCE7D814(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for DisambiguationResult.DisambiguationResultType();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCE7D8A8(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 9uLL)
  {
    v5 = 9;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  if ((*(v4 + 80) & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v7 = a2[v5];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v5 <= 3)
    {
      v9 = v5;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_19;
      case 2:
        v10 = *a2;
        goto LABEL_19;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v10 = *a2;
LABEL_19:
        v11 = (v10 | (v8 << (8 * v5))) + 2;
        v7 = v10 + 2;
        if (v5 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_1DCE7DA14(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 9)
  {
    v2 = 9;
  }

  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    switch(v5)
    {
      case 1:
        v6 = *result;
        goto LABEL_12;
      case 2:
        v6 = *result;
        goto LABEL_12;
      case 3:
        v6 = *result | (result[2] << 16);
        goto LABEL_12;
      case 4:
        v6 = *result;
LABEL_12:
        v7 = (v6 | (v4 << (8 * v2))) + 2;
        v3 = v6 + 2;
        if (v2 < 4)
        {
          v3 = v7;
        }

        break;
      default:
        break;
    }
  }

  if (v3 != 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

uint64_t sub_1DCE7DAFC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 16))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE7DC28(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      v18 = *a2;
      a1[8] = a2[8];
      *a1 = v18;
      v19 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      v19 = 0;
    }

    a1[v7] = v19;
  }

  return a1;
}

uint64_t sub_1DCE7DE14(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 9uLL)
  {
    v4 = 9;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a2;
        goto LABEL_13;
      case 2:
        v8 = *a2;
        goto LABEL_13;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v8 = *a2;
LABEL_13:
        v9 = (v8 | (v6 << (8 * v4))) + 2;
        v5 = v8 + 2;
        if (v4 < 4)
        {
          v5 = v9;
        }

        break;
      default:
        break;
    }
  }

  if (v5 == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = a2[8];
    v10 = 1;
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 32))(a1);
    v10 = 0;
  }

  *(a1 + v4) = v10;
  return a1;
}

unsigned __int8 *sub_1DCE7DF40(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 9uLL)
    {
      v7 = 9;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 2;
    if (v8 >= 2)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_14;
        case 2:
          v11 = *a1;
          goto LABEL_14;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v11 = *a1;
LABEL_14:
          v12 = (v11 | (v9 << (8 * v7))) + 2;
          v8 = v11 + 2;
          if (v7 < 4)
          {
            v8 = v12;
          }

          break;
        default:
          break;
      }
    }

    if (v8 != 1)
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 2;
    if (v13 >= 2)
    {
      if (v7 <= 3)
      {
        v15 = v7;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_27;
        case 2:
          v16 = *a2;
          goto LABEL_27;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_27;
        case 4:
          v16 = *a2;
LABEL_27:
          v17 = (v16 | (v14 << (8 * v7))) + 2;
          v13 = v16 + 2;
          if (v7 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    if (v13 == 1)
    {
      *a1 = *a2;
      a1[8] = a2[8];
      v18 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      v18 = 0;
    }

    a1[v7] = v18;
  }

  return a1;
}

uint64_t sub_1DCE7E12C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 9;
  if (*(v3 + 64) > 9uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DCE7E250(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 9)
  {
    v5 = 9;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void dispatch thunk of PromptForDisambiguationFlowStrategyAsync.parseDisambiguationResponse(input:paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_24_0();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X5, X16 }
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makePromptForDisambiguation(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 48);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 56);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 64);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_24_0();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_84(v6);

  return v10(v8);
}

uint64_t dispatch thunk of PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 80);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t sub_1DCE7EB50(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for PromptForDisambiguationFlowAsync.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCE7ECA8(uint64_t a1)
{
  v9 = ")";
  v10 = ")";
  result = type metadata accessor for Input(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_getTupleTypeLayout2();
    v11 = &v8;
    swift_getTupleTypeLayout2();
    v12 = &v7;
    v13 = ")";
    v5 = *(a1 + 24);
    result = type metadata accessor for PromptResult();
    if (v6 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      v15 = &unk_1DD0FDBC0;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCE7EDB8(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v241 = *(sub_1DD0DB04C() - 8);
  v249 = *(v241 + 64);
  v218 = sub_1DD0DC76C();
  v235 = *(v218 - 8);
  v217 = v235;
  v3 = *(v235 + 80);
  v216 = sub_1DD0DB1EC();
  v237 = *(v216 - 8);
  v215 = v237;
  v226 = *(v237 + 80) | v3;
  v220 = sub_1DD0DB4BC();
  v233 = *(v220 - 8);
  v248 = v233;
  v223 = *(v233 + 80);
  v219 = sub_1DD0DB3EC();
  v229 = *(v219 - 8);
  v4 = *(v229 + 80);
  v5 = v223 & 0xF8 | v4 | 7u;
  v214 = sub_1DD0DD12C();
  v231 = *(v214 - 8);
  v213 = v231;
  v6 = *(v231 + 80);
  v7 = sub_1DD0DD08C();
  v8 = v6 | *(*(v7 - 8) + 80);
  v9 = (v226 | v8) & 0xF8 | v5;
  v10 = *(v235 + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v212 = v10;
  if (v11 <= v10)
  {
    v11 = *(v235 + 64);
  }

  if (v11 <= *(v237 + 64))
  {
    v11 = *(v237 + 64);
  }

  v12 = *(v233 + 64) + v4;
  v13 = v12 & ~v4;
  v234 = v229;
  v14 = *(v229 + 84);
  v15 = *(v229 + 64);
  if (v14)
  {
    v16 = *(v229 + 64);
  }

  else
  {
    v16 = v15 + 1;
  }

  v17 = (v16 + 7 + v13) & 0xFFFFFFFFFFFFFFF8;
  v238 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= v238)
  {
    v11 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v17 + 31;
  if (v11 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v236 = *(v231 + 64);
  v19 = v5 + 16;
  v20 = v223 & 0xF8 | v4 | 7u;
  v21 = (v5 + 16 + ((v236 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v5;
  v22 = *(v248 + 84);
  v23 = v14 - 1;
  if (!v14)
  {
    v23 = 0;
  }

  v232 = v23;
  if (v23 <= v22)
  {
    v23 = *(v248 + 84);
  }

  if (v23 <= 0x7FFFFFFE)
  {
    v24 = 2147483646;
  }

  else
  {
    v24 = v23;
  }

  v25 = ((v18 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v25)
  {
    v11 = v25;
  }

  v26 = *(*(v7 - 8) + 64);
  if (v11 > v26)
  {
    v26 = v11;
  }

  if (v26 <= 0x18)
  {
    v27 = 24;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 + ((v249 + v9) & ~v9) + 8) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v30 = *(*(a3 + 24) - 8);
  if (*(v30 + 64) <= 9uLL)
  {
    v31 = 9;
  }

  else
  {
    v31 = *(v30 + 64);
  }

  v32 = v31 + 1;
  if (v29 <= v31 + 1)
  {
    v29 = v31 + 1;
  }

  if (v29 <= 0x29)
  {
    v33 = 41;
  }

  else
  {
    v33 = v29;
  }

  v34 = *(v241 + 80);
  v35 = *(v30 + 80);
  if (((v35 | v34) & 0xF8 | v9) != 7 || ((v226 | v223 | v4 | v8 | v34 | v35) & 0x100000) != 0 || (v33 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v230 = v19;
  v36 = *(v7 - 8);
  v37 = a2[v33];
  if (v37 >= 7)
  {
    v37 = *a2 + 7;
  }

  v240 = v33;
  v38 = ~v4;
  switch(v37)
  {
    case 0u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      a1[v33] = 0;
      goto LABEL_135;
    case 1u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      v40 = 1;
      goto LABEL_134;
    case 2u:
      v200 = ~v20;
      v202 = v24;
      v41 = v7;
      v208 = v38;
      v210 = v12;
      v204 = v16 + 7;
      v206 = v13;
      v198 = v14;
      v196 = v15;
      v224 = v27 + 1;
      v227 = v28;
      v42 = *(v241 + 16);
      v39 = a1;
      v242 = v27;
      v42(a1);
      v221 = &a1[v249 + 7];
      v43 = (v221 & 0xFFFFFFFFFFFFFFF8);
      v245 = a2 + 7;
      v250 = &v245[v249];
      v44 = (v250 & 0xFFFFFFFFFFFFFFF8);
      v45 = *((v250 & 0xFFFFFFFFFFFFFFF8) + v242);
      v46 = v45 - 10;
      if (v45 >= 0xA)
      {
        if (v242 <= 3)
        {
          v47 = v242;
        }

        else
        {
          v47 = 4;
        }

        switch(v47)
        {
          case 1:
            v48 = *v44;
            goto LABEL_71;
          case 2:
            v48 = *v44;
            goto LABEL_71;
          case 3:
            v48 = *v44 | (v44[2] << 16);
            goto LABEL_71;
          case 4:
            v48 = *v44;
LABEL_71:
            if (v242 < 4)
            {
              v45 = (v48 | (v46 << (8 * v242))) + 10;
            }

            else
            {
              v45 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v45)
      {
        case 0u:
          (*(v217 + 16))(v43, v44, v218);
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 0;
          goto LABEL_113;
        case 1u:
          (*(v217 + 16))(v43, v44, v218);
          *(((v221 | 7) + v212) & 0xFFFFFFFFFFFFFFF8) = *(((v250 | 7) + v212) & 0xFFFFFFFFFFFFFFF8);
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v43 = *v44;
          v43[1] = *(v44 + 1);
          v43[2] = *(v44 + 2);
          *(v43 + v242) = 2;

          goto LABEL_113;
        case 3u:
          *v43 = *v44;
          *(v43 + v242) = 3;
          swift_unknownObjectRetain();
          goto LABEL_113;
        case 4u:
          v68 = v242;
          v69 = v221 & 0xFFFFFFFFFFFFFFF8;
          (*(v215 + 16))(v43, v44, v216);
          v70 = 4;
          goto LABEL_98;
        case 5u:
          v80 = *v44;
          *v43 = *v44;
          *(v43 + v242) = 5;
          v81 = v80;
          goto LABEL_113;
        case 6u:
          (*(v248 + 16))(v43, v44, v220);
          v99 = ((v210 + (v221 & 0xFFFFFFFFFFFFFFF8)) & v208);
          v100 = (&v44[v210] & v208);
          if (__swift_getEnumTagSinglePayload(v100, 1, v219))
          {
            memcpy(v99, v100, v16);
          }

          else
          {
            (*(v234 + 16))(v99, v100, v219);
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v219);
          }

          v83 = a1 + 7;
          v84 = v245;
          v85 = v221;
          v86 = v250;
          v162 = ((v99 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v100 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v162 = *v163;
          v162[1] = v163[1];
          v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = *v165;
          *(v164 + 4) = *(v165 + 4);
          *v164 = v166;
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 6;
          goto LABEL_157;
        case 7u:
          (*(v248 + 16))(v43, v44, v220);
          v76 = ((v210 + (v221 & 0xFFFFFFFFFFFFFFF8)) & v208);
          v77 = (&v44[v210] & v208);
          if (__swift_getEnumTagSinglePayload(v77, 1, v219))
          {
            memcpy(v76, v77, v16);
          }

          else
          {
            (*(v234 + 16))(v76, v77, v219);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v219);
          }

          v83 = a1 + 7;
          v84 = v245;
          v85 = v221;
          v140 = ((v76 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          v141 = ((v77 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v140 = *v141;
          v140[1] = v141[1];
          v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
          v143 = (v141 + 19) & 0xFFFFFFFFFFFFFFF8;
          v144 = *v143;
          *(v142 + 4) = *(v143 + 4);
          *v142 = v144;
          v145 = (((v221 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
          v86 = v250;
          v146 = (((v250 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
          *v145 = *v146;
          v145[1] = v146[1];
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v147 = *v148;
          v147[1] = v148[1];
          v149 = ((v147 + 23) & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v148 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v149 = *v150;
          v149[1] = v150[1];
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 7;

LABEL_157:

          v82 = v224;
          goto LABEL_116;
        case 8u:
          (*(v213 + 16))(v43, v44, v214);
          v101 = (((v221 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
          v102 = (((v250 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
          *v101 = *v102;
          v101[1] = v102[1];
          v103 = ((v101 + v230) & v200);
          v104 = ((v102 + v230) & v200);

          if (v22 != v202)
          {
            v107 = ((v104 + v210) & v208);
            if (v232 == v202)
            {
              v108 = v219;
              v84 = v245;
              if (v198 < 2)
              {
LABEL_165:
                v109 = v248;
                v106 = v208;
                v105 = v210;
                goto LABEL_166;
              }

              if (__swift_getEnumTagSinglePayload((v104 + v210) & v208, v198, v219) >= 2)
              {
                goto LABEL_146;
              }
            }

            else
            {
              v172 = *(((v107 + v204) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v172 >= 0xFFFFFFFF)
              {
                LODWORD(v172) = -1;
              }

              v84 = v245;
              if ((v172 + 1) >= 2)
              {
                goto LABEL_146;
              }
            }

            v108 = v219;
            goto LABEL_165;
          }

          v84 = v245;
          if (__swift_getEnumTagSinglePayload(v104, v22, v220))
          {
LABEL_146:
            memcpy(v103, v104, v238);
            v83 = a1 + 7;
LABEL_177:
            v181 = v16;
            goto LABEL_178;
          }

          v106 = v208;
          v105 = v210;
          v107 = ((v104 + v210) & v208);
          v108 = v219;
          v109 = v248;
LABEL_166:
          (*(v109 + 16))(v103, v104, v220);
          v173 = ((v103 + v105) & v106);
          if (__swift_getEnumTagSinglePayload(v107, 1, v108))
          {
            memcpy(v173, v107, v16);
          }

          else
          {
            (*(v234 + 16))(v173, v107, v108);
            __swift_storeEnumTagSinglePayload(v173, 0, 1, v108);
          }

          v83 = a1 + 7;
          v176 = ((v173 + v204) & 0xFFFFFFFFFFFFFFF8);
          v177 = ((v107 + v204) & 0xFFFFFFFFFFFFFFF8);
          *v176 = *v177;
          v176[1] = v177[1];
          v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
          v179 = (v177 + 19) & 0xFFFFFFFFFFFFFFF8;
          v180 = *v179;
          *(v178 + 4) = *(v179 + 4);
          *v178 = v180;

          v181 = v196;
          if (!v198)
          {
            goto LABEL_177;
          }

LABEL_178:
          v182 = (((v206 + v181 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v183 = ((v103 + v182 + 7) & 0xFFFFFFFFFFFFFFF8);
          v184 = *((v104 + v182 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v183 = v184;
          *((v221 & 0xFFFFFFFFFFFFFFF8) + v242) = 8;
          v185 = v184;
          v82 = v224;
LABEL_115:
          v85 = v221;
          v86 = v250;
LABEL_116:
          v87 = (((v86 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          v88 = (((v85 | 7) + v82) & 0xFFFFFFFFFFFFFFF8);
          *v88 = *v87;
          v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
          v90 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v91 = *(v90 + 24);

          if (v91 < 0xFFFFFFFF)
          {
            v92 = *v90;
            v93 = *(v90 + 16);
            *(v89 + 32) = *(v90 + 32);
            *v89 = v92;
            *(v89 + 16) = v93;
          }

          else
          {
            *(v89 + 24) = v91;
            *(v89 + 32) = *(v90 + 32);
            (**(v91 - 8))(v89, v90, v91);
          }

          *(v89 + 40) = *(v90 + 40);
          v94 = ((v227 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v95 = &v83[v94] & 0xFFFFFFFFFFFFFFF8;
          v96 = &v84[v94] & 0xFFFFFFFFFFFFFFF8;
          *v95 = *v96;
          v97 = *(v96 + 8);
          *(v95 + 24) = *(v96 + 24);
          *(v95 + 8) = v97;
          v98 = *(v96 + 32);
          *(v95 + 40) = *(v96 + 40);
          *(v95 + 32) = v98;
          v40 = 2;
LABEL_134:
          v39[v240] = v40;
LABEL_135:

          return v39;
        case 9u:
          v71 = *(v36 + 16);
          v68 = v242;
          v69 = v221 & 0xFFFFFFFFFFFFFFF8;
          v71(v43, v44, v41);
          v70 = 9;
LABEL_98:
          *(v69 + v68) = v70;
LABEL_113:
          v82 = v224;
          goto LABEL_114;
        default:
          v82 = v224;
          memcpy(v43, v44, v224);
LABEL_114:
          v83 = a1 + 7;
          v84 = v245;
          goto LABEL_115;
      }

    case 3u:
      v201 = ~v20;
      v203 = v24;
      v49 = v7;
      v209 = v38;
      v211 = v12;
      v205 = v16 + 7;
      v207 = v13;
      v199 = v14;
      v197 = v15;
      v225 = v27 + 1;
      v228 = v28;
      v50 = *(v241 + 16);
      v39 = a1;
      v243 = v27;
      v50(a1);
      v222 = &a1[v249 + 7];
      v51 = (v222 & 0xFFFFFFFFFFFFFFF8);
      v246 = a2 + 7;
      v251 = &v246[v249];
      v52 = (v251 & 0xFFFFFFFFFFFFFFF8);
      v53 = *((v251 & 0xFFFFFFFFFFFFFFF8) + v243);
      v54 = v53 - 10;
      if (v53 < 0xA)
      {
        v56 = v49;
      }

      else
      {
        if (v243 <= 3)
        {
          v55 = v243;
        }

        else
        {
          v55 = 4;
        }

        v56 = v49;
        switch(v55)
        {
          case 1:
            v57 = *v52;
            goto LABEL_79;
          case 2:
            v57 = *v52;
            goto LABEL_79;
          case 3:
            v57 = *v52 | (v52[2] << 16);
            goto LABEL_79;
          case 4:
            v57 = *v52;
LABEL_79:
            if (v243 < 4)
            {
              v53 = (v57 | (v54 << (8 * v243))) + 10;
            }

            else
            {
              v53 = v57 + 10;
            }

            break;
          default:
            goto LABEL_82;
        }
      }

      break;
    case 4u:
      v39 = a1;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      a1[24] = a2[24];
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      v40 = 4;
      goto LABEL_134;
    case 5u:
      v59 = a2[v31];
      v60 = v59 - 2;
      if (v59 >= 2)
      {
        if (v31 <= 3)
        {
          v61 = v31;
        }

        else
        {
          v61 = 4;
        }

        switch(v61)
        {
          case 1:
            v62 = *a2;
            goto LABEL_86;
          case 2:
            v62 = *a2;
            goto LABEL_86;
          case 3:
            v62 = *a2 | (a2[2] << 16);
            goto LABEL_86;
          case 4:
            v62 = *a2;
LABEL_86:
            if (v31 < 4)
            {
              v59 = (v62 | (v60 << (8 * v31))) + 2;
            }

            else
            {
              v59 = v62 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v59 == 1)
      {
        v66 = *a2;
        v67 = *a2;
        *a1 = v66;
        a1[8] = a2[8];
        a1[v31] = 1;
        v39 = a1;
      }

      else if (v59)
      {
        v39 = a1;
        memcpy(a1, a2, v32);
      }

      else
      {
        (*(v30 + 16))(a1);
        a1[v31] = 0;
        v39 = a1;
      }

      v65 = 5;
      goto LABEL_95;
    case 6u:
      v63 = *a2;
      v64 = *a2;
      v39 = a1;
      *a1 = v63;
      a1[8] = a2[8];
      v65 = 6;
LABEL_95:
      v39[v240] = v65;
      return v39;
    default:

      return memcpy(a1, a2, v27 + 1);
  }

LABEL_82:
  switch(v53)
  {
    case 0u:
      (*(v217 + 16))(v51, v52, v218);
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 0;
      goto LABEL_127;
    case 1u:
      (*(v217 + 16))(v51, v52, v218);
      *(((v222 | 7) + v212) & 0xFFFFFFFFFFFFFFF8) = *(((v251 | 7) + v212) & 0xFFFFFFFFFFFFFFF8);
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v51 = *v52;
      v51[1] = *(v52 + 1);
      v51[2] = *(v52 + 2);
      *(v51 + v243) = 2;

      goto LABEL_127;
    case 3u:
      *v51 = *v52;
      *(v51 + v243) = 3;
      swift_unknownObjectRetain();
      goto LABEL_127;
    case 4u:
      v72 = v243;
      v73 = v222 & 0xFFFFFFFFFFFFFFF8;
      (*(v215 + 16))(v51, v52, v216);
      v74 = 4;
      goto LABEL_102;
    case 5u:
      v110 = *v52;
      *v51 = *v52;
      *(v51 + v243) = 5;
      v111 = v110;
      goto LABEL_127;
    case 6u:
      (*(v248 + 16))(v51, v52, v220);
      v129 = ((v211 + (v222 & 0xFFFFFFFFFFFFFFF8)) & v209);
      v130 = (&v52[v211] & v209);
      if (__swift_getEnumTagSinglePayload(v130, 1, v219))
      {
        memcpy(v129, v130, v16);
      }

      else
      {
        (*(v234 + 16))(v129, v130, v219);
        __swift_storeEnumTagSinglePayload(v129, 0, 1, v219);
      }

      v113 = a1 + 7;
      v114 = v246;
      v115 = v222;
      v116 = v251;
      v167 = ((v129 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v168 = ((v130 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v167 = *v168;
      v167[1] = v168[1];
      v169 = (v167 + 19) & 0xFFFFFFFFFFFFFFF8;
      v170 = (v168 + 19) & 0xFFFFFFFFFFFFFFF8;
      v171 = *v170;
      *(v169 + 4) = *(v170 + 4);
      *v169 = v171;
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 6;
      goto LABEL_160;
    case 7u:
      (*(v248 + 16))(v51, v52, v220);
      v78 = ((v211 + (v222 & 0xFFFFFFFFFFFFFFF8)) & v209);
      v79 = (&v52[v211] & v209);
      if (__swift_getEnumTagSinglePayload(v79, 1, v219))
      {
        memcpy(v78, v79, v16);
      }

      else
      {
        (*(v234 + 16))(v78, v79, v219);
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v219);
      }

      v113 = a1 + 7;
      v114 = v246;
      v115 = v222;
      v151 = ((v78 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v152 = ((v79 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v151 = *v152;
      v151[1] = v152[1];
      v153 = (v151 + 19) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
      v155 = *v154;
      *(v153 + 4) = *(v154 + 4);
      *v153 = v155;
      v156 = (((v222 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
      v116 = v251;
      v157 = (((v251 | 7) + v238) & 0xFFFFFFFFFFFFFFF8);
      *v156 = *v157;
      v156[1] = v157[1];
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      v159 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v158 = *v159;
      v158[1] = v159[1];
      v160 = ((v158 + 23) & 0xFFFFFFFFFFFFFFF8);
      v161 = ((v159 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v160 = *v161;
      v160[1] = v161[1];
      *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 7;

LABEL_160:

      v112 = v225;
      goto LABEL_130;
    case 8u:
      (*(v213 + 16))(v51, v52, v214);
      v131 = (((v222 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
      v132 = (((v251 | 7) + v236) & 0xFFFFFFFFFFFFFFF8);
      *v131 = *v132;
      v131[1] = v132[1];
      v133 = ((v131 + v230) & v201);
      v134 = ((v132 + v230) & v201);

      if (v22 == v203)
      {
        v114 = v246;
        if (!__swift_getEnumTagSinglePayload(v134, v22, v220))
        {
          v136 = v209;
          v135 = v211;
          v137 = ((v134 + v211) & v209);
          v138 = v219;
          v139 = v248;
          goto LABEL_173;
        }

LABEL_150:
        memcpy(v133, v134, v238);
        v113 = a1 + 7;
        goto LABEL_181;
      }

      v137 = ((v134 + v211) & v209);
      if (v232 == v203)
      {
        v138 = v219;
        v114 = v246;
        if (v199 < 2)
        {
LABEL_172:
          v139 = v248;
          v136 = v209;
          v135 = v211;
LABEL_173:
          (*(v139 + 16))(v133, v134, v220);
          v175 = ((v133 + v135) & v136);
          if (__swift_getEnumTagSinglePayload(v137, 1, v138))
          {
            memcpy(v175, v137, v16);
          }

          else
          {
            (*(v234 + 16))(v175, v137, v138);
            __swift_storeEnumTagSinglePayload(v175, 0, 1, v138);
          }

          v113 = a1 + 7;
          v186 = ((v175 + v205) & 0xFFFFFFFFFFFFFFF8);
          v187 = ((v137 + v205) & 0xFFFFFFFFFFFFFFF8);
          *v186 = *v187;
          v186[1] = v187[1];
          v188 = (v186 + 19) & 0xFFFFFFFFFFFFFFF8;
          v189 = (v187 + 19) & 0xFFFFFFFFFFFFFFF8;
          v190 = *v189;
          *(v188 + 4) = *(v189 + 4);
          *v188 = v190;

          v191 = v197;
          if (v199)
          {
LABEL_182:
            v192 = (((v207 + v191 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v193 = ((v133 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
            v194 = *((v134 + v192 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v193 = v194;
            *((v222 & 0xFFFFFFFFFFFFFFF8) + v243) = 8;
            v195 = v194;
            v112 = v225;
LABEL_129:
            v115 = v222;
            v116 = v251;
LABEL_130:
            v117 = (((v116 | 7) + v112) & 0xFFFFFFFFFFFFFFF8);
            v118 = (((v115 | 7) + v112) & 0xFFFFFFFFFFFFFFF8);
            *v118 = *v117;
            v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
            v120 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
            v121 = *(v120 + 24);

            if (v121 < 0xFFFFFFFF)
            {
              v122 = *v120;
              v123 = *(v120 + 16);
              *(v119 + 32) = *(v120 + 32);
              *v119 = v122;
              *(v119 + 16) = v123;
            }

            else
            {
              *(v119 + 24) = v121;
              *(v119 + 32) = *(v120 + 32);
              (**(v121 - 8))(v119, v120, v121);
            }

            *(v119 + 40) = *(v120 + 40);
            v124 = ((v228 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
            v125 = &v113[v124] & 0xFFFFFFFFFFFFFFF8;
            v126 = &v114[v124] & 0xFFFFFFFFFFFFFFF8;
            *v125 = *v126;
            v127 = *(v126 + 8);
            *(v125 + 24) = *(v126 + 24);
            *(v125 + 8) = v127;
            v128 = *(v126 + 32);
            *(v125 + 40) = *(v126 + 40);
            *(v125 + 32) = v128;
            v40 = 3;
            goto LABEL_134;
          }

LABEL_181:
          v191 = v16;
          goto LABEL_182;
        }

        if (__swift_getEnumTagSinglePayload((v134 + v211) & v209, v199, v219) >= 2)
        {
          goto LABEL_150;
        }
      }

      else
      {
        v174 = *(((v137 + v205) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v174 >= 0xFFFFFFFF)
        {
          LODWORD(v174) = -1;
        }

        v114 = v246;
        if ((v174 + 1) >= 2)
        {
          goto LABEL_150;
        }
      }

      v138 = v219;
      goto LABEL_172;
    case 9u:
      v75 = *(v36 + 16);
      v72 = v243;
      v73 = v222 & 0xFFFFFFFFFFFFFFF8;
      v75(v51, v52, v56);
      v74 = 9;
LABEL_102:
      *(v73 + v72) = v74;
LABEL_127:
      v112 = v225;
      goto LABEL_128;
    default:
      v112 = v225;
      memcpy(v51, v52, v225);
LABEL_128:
      v113 = a1 + 7;
      v114 = v246;
      goto LABEL_129;
  }
}

void sub_1DCE80628(unsigned __int8 *a1, uint64_t a2)
{
  v2 = sub_1DD0DB04C();
  v110 = *(v2 - 8);
  v111 = v2;
  v124 = *(v110 + 64);
  v3 = sub_1DD0DC76C();
  v116 = *(v3 - 8);
  v106 = v116;
  v107 = v3;
  v4 = *(v116 + 80);
  v5 = sub_1DD0DB1EC();
  v114 = *(v5 - 8);
  v104 = v114;
  v105 = v5;
  v122 = *(v114 + 80) | v4;
  v109 = sub_1DD0DB4BC();
  v112 = *(v109 - 8);
  v6 = v112;
  v7 = *(v112 + 80) & 0xF8;
  v108 = sub_1DD0DB3EC();
  v8 = *(v108 - 8);
  v9 = *(v8 + 80);
  v118 = v7 | v9 | 7;
  v10 = sub_1DD0DD12C();
  v11 = *(v10 - 8);
  v102 = v11;
  v103 = v10;
  v120 = *(v11 + 80);
  v12 = sub_1DD0DD08C();
  v101 = *(v12 - 8);
  v13 = *(v116 + 64);
  v14 = v114;
  v115 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v14 + 64))
  {
    v13 = *(v14 + 64);
  }

  v15 = *(v112 + 64);
  v16 = v15 + v9;
  v17 = v9;
  v18 = (v15 + v9) & ~v9;
  v113 = v8;
  v19 = *(v8 + 84);
  v20 = *(v8 + 64);
  if (v19)
  {
    v21 = *(v8 + 64);
  }

  else
  {
    v21 = v20 + 1;
  }

  v22 = (v21 + 7 + v18) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v23)
  {
    v13 = (v22 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v24 = v22 + 31;
  if (v13 <= (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v24 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v25 = *(v11 + 64);
  v117 = v6;
  v26 = *(v6 + 84);
  if (v19)
  {
    v27 = v19 - 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v29 = 2147483646;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((v24 + ((v118 + 16 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v118)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v30)
  {
    v13 = v30;
  }

  v31 = *(*(v12 - 8) + 64);
  if (v13 > v31)
  {
    v31 = v13;
  }

  if (v31 <= 0x18)
  {
    v32 = 24;
  }

  else
  {
    v32 = v31;
  }

  v127 = *(*(a2 + 24) - 8);
  v33 = *(v127 + 64);
  v34 = (v122 | (v120 | *(v101 + 80))) & 0xF8 | v118;
  v35 = v124 + v34;
  v36 = (v32 + ((v124 + v34) & ~v34) + 8) & 0xFFFFFFFFFFFFFFF8;
  v37 = ((v36 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v33 <= 9)
  {
    v33 = 9;
  }

  if (v37 <= v33 + 1)
  {
    v37 = v33 + 1;
  }

  v38 = 41;
  if (v37 > 0x29)
  {
    v38 = v37;
  }

  v39 = a1[v38];
  v40 = v39 - 7;
  if (v39 >= 7)
  {
    if (v38 <= 3)
    {
      v41 = v38;
    }

    else
    {
      v41 = 4;
    }

    switch(v41)
    {
      case 1:
        v42 = *a1;
        goto LABEL_43;
      case 2:
        v42 = *a1;
        goto LABEL_43;
      case 3:
        v42 = *a1 | (a1[2] << 16);
        goto LABEL_43;
      case 4:
        v42 = *a1;
LABEL_43:
        if (v38 < 4)
        {
          v42 |= v40 << (8 * v38);
        }

        v39 = v42 + 7;
        break;
      default:
        break;
    }
  }

  v43 = ~v34;
  switch(v39)
  {
    case 0u:
    case 1u:
    case 4u:
      v44 = *a1;
      goto LABEL_137;
    case 2u:
      v96 = ~v118;
      v121 = ~v17;
      v53 = v118 + 16;
      v97 = v29;
      v98 = v20;
      v99 = v21;
      v100 = v18;
      v123 = v16;
      v125 = v32 + 1;
      v119 = v21 + 7;
      v128 = v36;
      (*(v110 + 8))(a1, v111, v17);
      v46 = (&a1[v35] & v43);
      v54 = v46[v32];
      v55 = v54 - 10;
      if (v54 < 0xA)
      {
        v50 = v12;
      }

      else
      {
        if (v32 <= 3)
        {
          v56 = v32;
        }

        else
        {
          v56 = 4;
        }

        v50 = v12;
        switch(v56)
        {
          case 1:
            v57 = *v46;
            goto LABEL_80;
          case 2:
            v57 = *v46;
            goto LABEL_80;
          case 3:
            v57 = *v46 | (v46[2] << 16);
            goto LABEL_80;
          case 4:
            v57 = *v46;
LABEL_80:
            if (v32 < 4)
            {
              v54 = (v57 | (v55 << (8 * v32))) + 10;
            }

            else
            {
              v54 = v57 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v54)
      {
        case 0u:
          goto LABEL_84;
        case 1u:
          goto LABEL_95;
        case 2u:
          goto LABEL_86;
        case 3u:
          goto LABEL_87;
        case 4u:
          goto LABEL_85;
        case 5u:
          goto LABEL_96;
        case 6u:
          goto LABEL_97;
        case 7u:
          goto LABEL_88;
        case 8u:
          (*(v102 + 8))(v46, v103);
          v83 = &v46[v25 + 7] & 0xFFFFFFFFFFFFFFF8;
          v84 = *(v83 + 8);

          v64 = v53 + v83;
          goto LABEL_117;
        case 9u:
          goto LABEL_93;
        default:
          goto LABEL_134;
      }

      goto LABEL_134;
    case 3u:
      v96 = ~v118;
      v121 = ~v17;
      v45 = v118 + 16;
      v97 = v29;
      v98 = v20;
      v99 = v21;
      v100 = v18;
      v123 = v16;
      v125 = v32 + 1;
      v119 = v21 + 7;
      v128 = v36;
      (*(v110 + 8))(a1, v111, v17);
      v46 = (&a1[v35] & v43);
      v47 = v46[v32];
      v48 = v47 - 10;
      if (v47 < 0xA)
      {
        v50 = v12;
        v51 = v45;
      }

      else
      {
        if (v32 <= 3)
        {
          v49 = v32;
        }

        else
        {
          v49 = 4;
        }

        v50 = v12;
        v51 = v45;
        switch(v49)
        {
          case 1:
            v52 = *v46;
            goto LABEL_71;
          case 2:
            v52 = *v46;
            goto LABEL_71;
          case 3:
            v52 = *v46 | (v46[2] << 16);
            goto LABEL_71;
          case 4:
            v52 = *v46;
LABEL_71:
            if (v32 < 4)
            {
              v47 = (v52 | (v48 << (8 * v32))) + 10;
            }

            else
            {
              v47 = v52 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
LABEL_84:
          v65 = v106;
          v50 = v107;
          goto LABEL_94;
        case 1u:
LABEL_95:
          (*(v106 + 8))(v46, v107);
          v77 = *(&v46[v115] & 0xFFFFFFFFFFFFFFF8);

          break;
        case 2u:
LABEL_86:
          v66 = *(v46 + 1);

          v67 = *(v46 + 2);
          goto LABEL_101;
        case 3u:
LABEL_87:
          v68 = *v46;
          swift_unknownObjectRelease();
          break;
        case 4u:
LABEL_85:
          v65 = v104;
          v50 = v105;
          goto LABEL_94;
        case 5u:
LABEL_96:
          v78 = *v46;
          goto LABEL_133;
        case 6u:
LABEL_97:
          (*(v117 + 8))(v46, v109);
          v79 = &v46[v123] & v121;
          if (!__swift_getEnumTagSinglePayload(v79, 1, v108))
          {
            (*(v113 + 8))(v79, v108);
          }

          v76 = v119 + v79;
          goto LABEL_100;
        case 7u:
LABEL_88:
          (*(v117 + 8))(v46, v109);
          v69 = &v46[v123] & v121;
          if (!__swift_getEnumTagSinglePayload(v69, 1, v108))
          {
            (*(v113 + 8))(v69, v108);
          }

          v70 = 7;
          if (!v19)
          {
            v70 = 8;
          }

          v71 = *(((v98 + v70 + v69) & 0xFFFFFFFFFFFFFFF8) + 8);

          v72 = &v46[((((v100 + v99 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
          v73 = *(v72 + 8);

          v74 = (v72 + 23) & 0xFFFFFFFFFFFFFFF8;
          v75 = *(v74 + 8);

          v76 = v74 + 23;
LABEL_100:
          v80 = *((v76 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_101:

          break;
        case 8u:
          (*(v102 + 8))(v46, v103);
          v62 = &v46[v25 + 7] & 0xFFFFFFFFFFFFFFF8;
          v63 = *(v62 + 8);

          v64 = v51 + v62;
LABEL_117:
          v85 = v64 & v96;
          if (v26 == v97)
          {
            v86 = v109;
            if (__swift_getEnumTagSinglePayload(v64 & v96, v26, v109))
            {
              goto LABEL_132;
            }

            v87 = (v123 + v85) & v121;
          }

          else
          {
            v87 = (v123 + v85) & v121;
            if (v27 == v97)
            {
              v88 = v108;
              if (v19 < 2)
              {
                v86 = v109;
                goto LABEL_129;
              }

              v90 = __swift_getEnumTagSinglePayload((v123 + v85) & v121, v19, v108) >= 2;
            }

            else
            {
              v89 = *(((v119 + v87) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v89 >= 0xFFFFFFFF)
              {
                LODWORD(v89) = -1;
              }

              v90 = (v89 + 1) >= 2;
            }

            v86 = v109;
            if (v90)
            {
              goto LABEL_132;
            }
          }

          v88 = v108;
LABEL_129:
          (*(v117 + 8))(v85, v86);
          if (!__swift_getEnumTagSinglePayload(v87, 1, v88))
          {
            (*(v113 + 8))(v87, v88);
          }

          v91 = *(((v119 + v87) & 0xFFFFFFFFFFFFFFF8) + 8);

LABEL_132:
          v78 = *((v23 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_133:

          break;
        case 9u:
LABEL_93:
          v65 = v101;
LABEL_94:
          (*(v65 + 8))(v46, v50);
          break;
        default:
          break;
      }

LABEL_134:
      v92 = &v46[v125 + 7];
      v94 = (v92 & 0xFFFFFFFFFFFFFFF8) + 15;
      v93 = *(v92 & 0xFFFFFFFFFFFFFFF8);

      if (*((v94 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v94 & 0xFFFFFFFFFFFFFFF8));
      }

      v95 = *(&a1[((v128 + 15) & 0xFFFFFFFFFFFFFFF8) + 48] & 0xFFFFFFFFFFFFFFF8);
LABEL_137:

      return;
    case 5u:
      v58 = a1[v33];
      v59 = v58 - 2;
      if (v58 >= 2)
      {
        if (v33 <= 3)
        {
          v60 = v33;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *a1;
            goto LABEL_104;
          case 2:
            v61 = *a1;
            goto LABEL_104;
          case 3:
            v61 = *a1 | (a1[2] << 16);
            goto LABEL_104;
          case 4:
            v61 = *a1;
LABEL_104:
            if (v33 < 4)
            {
              v58 = (v61 | (v59 << (8 * v33))) + 2;
            }

            else
            {
              v58 = v61 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v58 == 1)
      {
        goto LABEL_113;
      }

      if (!v58)
      {
        v81 = *(v127 + 8);

        v81();
      }

      break;
    case 6u:
LABEL_113:
      v82 = *a1;

      break;
    default:
      return;
  }
}

_BYTE *sub_1DCE811D4(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = sub_1DD0DB04C();
  v219 = *(v3 - 8);
  v220 = v3;
  v234 = *(v219 + 64);
  v216 = sub_1DD0DC76C();
  v230 = *(v216 - 8);
  v215 = v230;
  v4 = *(v230 + 80);
  v214 = sub_1DD0DB1EC();
  v232 = *(v214 - 8);
  v213 = v232;
  v223 = *(v232 + 80) | v4;
  v218 = sub_1DD0DB4BC();
  v228 = *(v218 - 8);
  v239 = v228;
  v5 = *(v228 + 80) & 0xF8;
  v217 = sub_1DD0DB3EC();
  v6 = *(v217 - 8);
  v7 = *(v6 + 80);
  v8 = v5 | v7 | 7;
  v212 = sub_1DD0DD12C();
  v226 = *(v212 - 8);
  v211 = v226;
  v9 = *(v226 + 80);
  v10 = sub_1DD0DD08C();
  v210 = v10;
  v11 = v230;
  v231 = *(v10 - 8);
  v12 = (v223 | (v9 | *(v231 + 80))) & 0xF8 | v8;
  v13 = v234 + v12;
  v14 = *(v11 + 64);
  v235 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v232 + 64))
  {
    v14 = *(v232 + 64);
  }

  v15 = *(v228 + 64);
  v16 = v15 + v7;
  v17 = (v15 + v7) & ~v7;
  v229 = v6;
  v18 = *(v6 + 84);
  v19 = *(v6 + 64);
  if (v18)
  {
    v20 = *(v6 + 64);
  }

  else
  {
    v20 = v19 + 1;
  }

  v21 = (v20 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v22)
  {
    v14 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v23 = v21 + 31;
  if (v14 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v233 = *(v226 + 64);
  v24 = v8 + 16;
  v25 = v8;
  v26 = *(v239 + 84);
  if (v18)
  {
    v27 = v18 - 1;
  }

  else
  {
    v27 = 0;
  }

  if (v27 <= v26)
  {
    v28 = *(v239 + 84);
  }

  else
  {
    v28 = v27;
  }

  if (v28 <= 0x7FFFFFFE)
  {
    v29 = 2147483646;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((v23 + ((v8 + 16 + ((v233 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v30)
  {
    v14 = v30;
  }

  v31 = *(*(v10 - 8) + 64);
  if (v14 > v31)
  {
    v31 = v14;
  }

  if (v31 <= 0x18)
  {
    v32 = 24;
  }

  else
  {
    v32 = v31;
  }

  v33 = ((((v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
  v34 = *(*(a3 + 24) - 8);
  if (*(v34 + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(v34 + 64);
  }

  if (v33 <= v35 + 1)
  {
    v33 = v35 + 1;
  }

  if (v33 <= 0x29)
  {
    v36 = 41;
  }

  else
  {
    v36 = v33;
  }

  v37 = a2[v36];
  v38 = v37 - 7;
  if (v37 < 7)
  {
    v40 = a1;
  }

  else
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    v40 = a1;
    switch(v39)
    {
      case 1:
        v41 = *a2;
        goto LABEL_46;
      case 2:
        v41 = *a2;
        goto LABEL_46;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_46;
      case 4:
        v41 = *a2;
LABEL_46:
        if (v36 < 4)
        {
          v41 |= v38 << (8 * v36);
        }

        v37 = v41 + 7;
        break;
      default:
        break;
    }
  }

  v227 = v24;
  v237 = v29;
  v42 = ~v12;
  v43 = ~v25;
  switch(v37)
  {
    case 0u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v40[v36] = 0;
      goto LABEL_187;
    case 1u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v44 = 1;
      goto LABEL_68;
    case 2u:
      v202 = ~v7;
      v194 = v18;
      v192 = v19;
      v196 = v17;
      __n = v20;
      v200 = v20 + 7;
      v206 = v36;
      v208 = v32 + 1;
      v204 = (v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8;
      v224 = v32;
      (*(v219 + 16))(v40, a2, v220);
      v45 = (&v40[v13] & v42);
      v46 = (&a2[v13] & v42);
      v47 = v46[v224];
      v48 = v47 - 10;
      if (v47 >= 0xA)
      {
        if (v224 <= 3)
        {
          v49 = v224;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v46;
            goto LABEL_80;
          case 2:
            v50 = *v46;
            goto LABEL_80;
          case 3:
            v50 = *v46 | (v46[2] << 16);
            goto LABEL_80;
          case 4:
            v50 = *v46;
LABEL_80:
            if (v224 < 4)
            {
              v47 = (v50 | (v48 << (8 * v224))) + 10;
            }

            else
            {
              v47 = v50 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v47)
      {
        case 0u:
          v65 = v40;
          v66 = v45;
          (*(v215 + 16))(v45, v46, v216);
          *(v45 + v224) = 0;
          goto LABEL_174;
        case 1u:
          (*(v215 + 16))(v45, v46, v216);
          *((v45 + v235) & 0xFFFFFFFFFFFFFFF8) = *(&v46[v235] & 0xFFFFFFFFFFFFFFF8);
          *(v45 + v224) = 1;
          sub_1DD0DCF8C();
        case 2u:
          v65 = v40;
          v66 = v45;
          *v45 = *v46;
          v45[1] = *(v46 + 1);
          v45[2] = *(v46 + 2);
          *(v45 + v224) = 2;

          goto LABEL_146;
        case 3u:
          v65 = v40;
          v66 = v45;
          *v45 = *v46;
          *(v45 + v224) = 3;
          swift_unknownObjectRetain();
          goto LABEL_174;
        case 4u:
          v65 = v40;
          v66 = v45;
          v72 = v45;
          v73 = v224;
          (*(v213 + 16))(v72, v46, v214);
          v74 = 4;
          goto LABEL_106;
        case 5u:
          v65 = v40;
          v84 = *v46;
          v66 = v45;
          *v45 = *v46;
          *(v45 + v224) = 5;
          v85 = v84;
          goto LABEL_174;
        case 6u:
          v65 = v40;
          v66 = v45;
          (*(v239 + 16))(v45, v46, v218);
          v86 = ((v45 + v16) & v202);
          v87 = (&v46[v16] & v202);
          if (__swift_getEnumTagSinglePayload(v87, 1, v217))
          {
            memcpy(v86, v87, __n);
          }

          else
          {
            (*(v229 + 16))(v86, v87, v217);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v217);
          }

          v134 = ((v86 + v200) & 0xFFFFFFFFFFFFFFF8);
          v135 = ((v87 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v134[1] = v135[1];
          v136 = (v134 + 19) & 0xFFFFFFFFFFFFFFF8;
          v137 = (v135 + 19) & 0xFFFFFFFFFFFFFFF8;
          v138 = *v137;
          *(v136 + 4) = *(v137 + 4);
          *v136 = v138;
          *(v45 + v224) = 6;
          goto LABEL_146;
        case 7u:
          v65 = v40;
          v66 = v45;
          (*(v239 + 16))(v45, v46, v218);
          v80 = ((v45 + v16) & v202);
          v81 = (&v46[v16] & v202);
          if (__swift_getEnumTagSinglePayload(v81, 1, v217))
          {
            memcpy(v80, v81, __n);
          }

          else
          {
            (*(v229 + 16))(v80, v81, v217);
            __swift_storeEnumTagSinglePayload(v80, 0, 1, v217);
          }

          v112 = ((v80 + v200) & 0xFFFFFFFFFFFFFFF8);
          v113 = ((v81 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v112 = *v113;
          v112[1] = v113[1];
          v114 = (v112 + 19) & 0xFFFFFFFFFFFFFFF8;
          v115 = (v113 + 19) & 0xFFFFFFFFFFFFFFF8;
          v116 = *v115;
          *(v114 + 4) = *(v115 + 4);
          *v114 = v116;
          v117 = ((v45 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
          v118 = (&v46[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v117 = *v118;
          v117[1] = v118[1];
          v119 = ((v117 + 23) & 0xFFFFFFFFFFFFFFF8);
          v120 = ((v118 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v119 = *v120;
          v119[1] = v120[1];
          v121 = ((v119 + 23) & 0xFFFFFFFFFFFFFFF8);
          v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v121 = *v122;
          v121[1] = v122[1];
          *(v45 + v224) = 7;

LABEL_146:

          goto LABEL_174;
        case 8u:
          (*(v211 + 16))(v45, v46, v212);
          v88 = ((v45 + v233 + 7) & 0xFFFFFFFFFFFFFFF8);
          v89 = (&v46[v233 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v88 = *v89;
          v88[1] = v89[1];
          v90 = ((v88 + v227) & v43);
          v91 = ((v89 + v227) & v43);

          v221 = v46;
          if (v26 != v237)
          {
            v95 = ((v91 + v16) & v202);
            if (v27 == v237)
            {
              v96 = v217;
              v66 = v45;
              if (v194 < 2)
              {
                v92 = v218;
LABEL_154:
                v97 = v239;
                v94 = ~v7;
                goto LABEL_155;
              }

              v92 = v218;
              if (__swift_getEnumTagSinglePayload((v91 + v16) & v202, v194, v217) >= 2)
              {
                goto LABEL_171;
              }
            }

            else
            {
              v144 = *(((v95 + v200) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v144 >= 0xFFFFFFFF)
              {
                LODWORD(v144) = -1;
              }

              v92 = v218;
              v66 = v45;
              if ((v144 + 1) >= 2)
              {
                goto LABEL_171;
              }
            }

            v96 = v217;
            goto LABEL_154;
          }

          v92 = v218;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, v26, v218);
          v66 = v45;
          if (EnumTagSinglePayload)
          {
LABEL_171:
            memcpy(v90, v91, v22);
LABEL_172:
            v151 = __n;
            goto LABEL_173;
          }

          v94 = ~v7;
          v95 = ((v91 + v16) & v202);
          v96 = v217;
          v97 = v239;
LABEL_155:
          (*(v97 + 16))(v90, v91, v92);
          if (__swift_getEnumTagSinglePayload(v95, 1, v96))
          {
            memcpy(((v90 + v16) & v94), v95, __n);
          }

          else
          {
            (*(v229 + 16))((v90 + v16) & v94, v95, v96);
            __swift_storeEnumTagSinglePayload((v90 + v16) & v94, 0, 1, v96);
          }

          v146 = ((v200 + ((v90 + v16) & v94)) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v95 + v200) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = *v149;
          *(v148 + 4) = *(v149 + 4);
          *v148 = v150;

          v151 = v192;
          if (!v194)
          {
            goto LABEL_172;
          }

LABEL_173:
          v158 = (((v196 + v151 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v159 = ((v90 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
          v160 = *((v91 + v158 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v159 = v160;
          *(v66 + v224) = 8;
          v161 = v160;
          v65 = a1;
          v46 = v221;
LABEL_174:
          v162 = (&v46[v208 + 7] & 0xFFFFFFFFFFFFFFF8);
          v163 = ((v66 + v208 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v163 = *v162;
          v164 = (v163 + 15) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
          v166 = *(v165 + 24);

          if (v166 < 0xFFFFFFFF)
          {
            v167 = *v165;
            v168 = *(v165 + 16);
            *(v164 + 32) = *(v165 + 32);
            *v164 = v167;
            *(v164 + 16) = v168;
          }

          else
          {
            *(v164 + 24) = v166;
            *(v164 + 32) = *(v165 + 32);
            (**(v166 - 8))(v164, v165, v166);
          }

          v169 = v206;
          *(v164 + 40) = *(v165 + 40);
          v170 = ((v204 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
          v40 = v65;
          v171 = &v65[v170 + 7] & 0xFFFFFFFFFFFFFFF8;
          v172 = &a2[v170 + 7] & 0xFFFFFFFFFFFFFFF8;
          *v171 = *v172;
          v173 = *(v172 + 8);
          *(v171 + 24) = *(v172 + 24);
          *(v171 + 8) = v173;
          v174 = *(v172 + 32);
          *(v171 + 40) = *(v172 + 40);
          *(v171 + 32) = v174;
          v175 = 2;
LABEL_186:
          v65[v169] = v175;
LABEL_187:

          return v40;
        case 9u:
          v65 = v40;
          v66 = v45;
          v75 = v45;
          v73 = v224;
          (*(v231 + 16))(v75, v46, v210);
          v74 = 9;
LABEL_106:
          *(v66 + v73) = v74;
          goto LABEL_174;
        default:
          v65 = v40;
          v66 = v45;
          memcpy(v45, v46, v208);
          goto LABEL_174;
      }

    case 3u:
      v203 = ~v7;
      v195 = v18;
      v193 = v19;
      v197 = v17;
      __na = v20;
      v201 = v20 + 7;
      v207 = v36;
      v209 = v32 + 1;
      v205 = (v32 + (v13 & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8;
      v225 = v32;
      (*(v219 + 16))(v40, a2, v220);
      v51 = (&v40[v13] & v42);
      v52 = (&a2[v13] & v42);
      v53 = v52[v225];
      v54 = v53 - 10;
      if (v53 >= 0xA)
      {
        if (v225 <= 3)
        {
          v55 = v225;
        }

        else
        {
          v55 = 4;
        }

        switch(v55)
        {
          case 1:
            v56 = *v52;
            goto LABEL_88;
          case 2:
            v56 = *v52;
            goto LABEL_88;
          case 3:
            v56 = *v52 | (v52[2] << 16);
            goto LABEL_88;
          case 4:
            v56 = *v52;
LABEL_88:
            if (v225 < 4)
            {
              v53 = (v56 | (v54 << (8 * v225))) + 10;
            }

            else
            {
              v53 = v56 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 4u:
      *v40 = *a2;
      *(v40 + 8) = *(a2 + 8);
      v40[24] = a2[24];
      *(v40 + 4) = *(a2 + 4);
      v40[40] = a2[40];
      v44 = 4;
LABEL_68:
      v40[v36] = v44;
      goto LABEL_187;
    case 5u:
      v58 = a2[v35];
      v59 = v58 - 2;
      if (v58 >= 2)
      {
        if (v35 <= 3)
        {
          v60 = v35;
        }

        else
        {
          v60 = 4;
        }

        switch(v60)
        {
          case 1:
            v61 = *a2;
            goto LABEL_95;
          case 2:
            v61 = *a2;
            goto LABEL_95;
          case 3:
            v61 = *a2 | (a2[2] << 16);
            goto LABEL_95;
          case 4:
            v61 = *a2;
LABEL_95:
            if (v35 < 4)
            {
              v58 = (v61 | (v59 << (8 * v35))) + 2;
            }

            else
            {
              v58 = v61 + 2;
            }

            break;
          default:
            break;
        }
      }

      v68 = v36;
      if (v58 == 1)
      {
        v69 = v40;
        v70 = *a2;
        v71 = *a2;
        *v69 = v70;
        v40 = v69;
        v69[8] = a2[8];
        v69[v35] = 1;
      }

      else if (v58)
      {
        memcpy(v40, a2, v35 + 1);
      }

      else
      {
        (*(v34 + 16))(v40);
        v40[v35] = 0;
      }

      v40[v68] = 5;
      return v40;
    case 6u:
      v62 = *a2;
      v63 = v36;
      v64 = *a2;
      *v40 = v62;
      v40[8] = a2[8];
      v40[v63] = 6;
      return v40;
    default:

      return memcpy(v40, a2, v36 + 1);
  }

LABEL_91:
  switch(v53)
  {
    case 0u:
      v65 = v40;
      v67 = v51;
      (*(v215 + 16))(v51, v52, v216);
      *(v51 + v225) = 0;
      goto LABEL_182;
    case 1u:
      (*(v215 + 16))(v51, v52, v216);
      *((v51 + v235) & 0xFFFFFFFFFFFFFFF8) = *(&v52[v235] & 0xFFFFFFFFFFFFFFF8);
      *(v51 + v225) = 1;
      sub_1DD0DCF8C();
    case 2u:
      v65 = v40;
      v67 = v51;
      *v51 = *v52;
      v51[1] = *(v52 + 1);
      v51[2] = *(v52 + 2);
      *(v51 + v225) = 2;

      goto LABEL_149;
    case 3u:
      v65 = v40;
      v67 = v51;
      *v51 = *v52;
      *(v51 + v225) = 3;
      swift_unknownObjectRetain();
      goto LABEL_182;
    case 4u:
      v65 = v40;
      v67 = v51;
      v76 = v51;
      v77 = v225;
      (*(v213 + 16))(v76, v52, v214);
      v78 = 4;
      goto LABEL_110;
    case 5u:
      v65 = v40;
      v98 = *v52;
      v67 = v51;
      *v51 = *v52;
      *(v51 + v225) = 5;
      v99 = v98;
      goto LABEL_182;
    case 6u:
      v65 = v40;
      v67 = v51;
      (*(v239 + 16))(v51, v52, v218);
      v100 = ((v51 + v16) & v203);
      v101 = (&v52[v16] & v203);
      if (__swift_getEnumTagSinglePayload(v101, 1, v217))
      {
        memcpy(v100, v101, __na);
      }

      else
      {
        (*(v229 + 16))(v100, v101, v217);
        __swift_storeEnumTagSinglePayload(v100, 0, 1, v217);
      }

      v139 = ((v100 + v201) & 0xFFFFFFFFFFFFFFF8);
      v140 = ((v101 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v139 = *v140;
      v139[1] = v140[1];
      v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
      v142 = (v140 + 19) & 0xFFFFFFFFFFFFFFF8;
      v143 = *v142;
      *(v141 + 4) = *(v142 + 4);
      *v141 = v143;
      *(v51 + v225) = 6;
      goto LABEL_149;
    case 7u:
      v65 = v40;
      v67 = v51;
      (*(v239 + 16))(v51, v52, v218);
      v82 = ((v51 + v16) & v203);
      v83 = (&v52[v16] & v203);
      if (__swift_getEnumTagSinglePayload(v83, 1, v217))
      {
        memcpy(v82, v83, __na);
      }

      else
      {
        (*(v229 + 16))(v82, v83, v217);
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v217);
      }

      v123 = ((v82 + v201) & 0xFFFFFFFFFFFFFFF8);
      v124 = ((v83 + v201) & 0xFFFFFFFFFFFFFFF8);
      *v123 = *v124;
      v123[1] = v124[1];
      v125 = (v123 + 19) & 0xFFFFFFFFFFFFFFF8;
      v126 = (v124 + 19) & 0xFFFFFFFFFFFFFFF8;
      v127 = *v126;
      *(v125 + 4) = *(v126 + 4);
      *v125 = v127;
      v128 = ((v51 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
      v129 = (&v52[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v128 = *v129;
      v128[1] = v129[1];
      v130 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = ((v130 + 23) & 0xFFFFFFFFFFFFFFF8);
      v133 = ((v131 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v132 = *v133;
      v132[1] = v133[1];
      *(v51 + v225) = 7;

LABEL_149:

      goto LABEL_182;
    case 8u:
      (*(v211 + 16))(v51, v52, v212);
      v102 = ((v51 + v233 + 7) & 0xFFFFFFFFFFFFFFF8);
      v103 = (&v52[v233 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v102 = *v103;
      v102[1] = v103[1];
      v104 = ((v102 + v227) & v43);
      v105 = ((v103 + v227) & v43);

      v222 = v52;
      if (v26 == v237)
      {
        v106 = v218;
        v107 = __swift_getEnumTagSinglePayload(v105, v26, v218);
        v67 = v51;
        if (!v107)
        {
          v108 = ~v7;
          v109 = ((v105 + v16) & v203);
          v110 = v217;
          v111 = v239;
          goto LABEL_162;
        }

LABEL_179:
        memcpy(v104, v105, v22);
        goto LABEL_180;
      }

      v109 = ((v105 + v16) & v203);
      if (v27 == v237)
      {
        v110 = v217;
        v67 = v51;
        if (v195 < 2)
        {
          v106 = v218;
LABEL_161:
          v111 = v239;
          v108 = ~v7;
LABEL_162:
          (*(v111 + 16))(v104, v105, v106);
          if (__swift_getEnumTagSinglePayload(v109, 1, v110))
          {
            memcpy(((v104 + v16) & v108), v109, __na);
          }

          else
          {
            (*(v229 + 16))((v104 + v16) & v108, v109, v110);
            __swift_storeEnumTagSinglePayload((v104 + v16) & v108, 0, 1, v110);
          }

          v152 = ((v201 + ((v104 + v16) & v108)) & 0xFFFFFFFFFFFFFFF8);
          v153 = ((v109 + v201) & 0xFFFFFFFFFFFFFFF8);
          *v152 = *v153;
          v152[1] = v153[1];
          v154 = (v152 + 19) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v153 + 19) & 0xFFFFFFFFFFFFFFF8;
          v156 = *v155;
          *(v154 + 4) = *(v155 + 4);
          *v154 = v156;

          v157 = v193;
          if (v195)
          {
LABEL_181:
            v176 = (((v197 + v157 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v177 = ((v104 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
            v178 = *((v105 + v176 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v177 = v178;
            *(v67 + v225) = 8;
            v179 = v178;
            v65 = a1;
            v52 = v222;
LABEL_182:
            v180 = (&v52[v209 + 7] & 0xFFFFFFFFFFFFFFF8);
            v181 = ((v67 + v209 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v181 = *v180;
            v182 = (v181 + 15) & 0xFFFFFFFFFFFFFFF8;
            v183 = (v180 + 15) & 0xFFFFFFFFFFFFFFF8;
            v184 = *(v183 + 24);

            if (v184 < 0xFFFFFFFF)
            {
              v185 = *v183;
              v186 = *(v183 + 16);
              *(v182 + 32) = *(v183 + 32);
              *v182 = v185;
              *(v182 + 16) = v186;
            }

            else
            {
              *(v182 + 24) = v184;
              *(v182 + 32) = *(v183 + 32);
              (**(v184 - 8))(v182, v183, v184);
            }

            v169 = v207;
            *(v182 + 40) = *(v183 + 40);
            v187 = ((v205 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
            v40 = v65;
            v188 = &v65[v187 + 7] & 0xFFFFFFFFFFFFFFF8;
            v189 = &a2[v187 + 7] & 0xFFFFFFFFFFFFFFF8;
            *v188 = *v189;
            v190 = *(v189 + 8);
            *(v188 + 24) = *(v189 + 24);
            *(v188 + 8) = v190;
            v191 = *(v189 + 32);
            *(v188 + 40) = *(v189 + 40);
            *(v188 + 32) = v191;
            v175 = 3;
            goto LABEL_186;
          }

LABEL_180:
          v157 = __na;
          goto LABEL_181;
        }

        v106 = v218;
        if (__swift_getEnumTagSinglePayload((v105 + v16) & v203, v195, v217) >= 2)
        {
          goto LABEL_179;
        }
      }

      else
      {
        v145 = *(((v109 + v201) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v145 >= 0xFFFFFFFF)
        {
          LODWORD(v145) = -1;
        }

        v106 = v218;
        v67 = v51;
        if ((v145 + 1) >= 2)
        {
          goto LABEL_179;
        }
      }

      v110 = v217;
      goto LABEL_161;
    case 9u:
      v65 = v40;
      v67 = v51;
      v79 = v51;
      v77 = v225;
      (*(v231 + 16))(v79, v52, v210);
      v78 = 9;
LABEL_110:
      *(v67 + v77) = v78;
      goto LABEL_182;
    default:
      v65 = v40;
      v67 = v51;
      memcpy(v51, v52, v209);
      goto LABEL_182;
  }
}

unsigned __int8 *sub_1DCE82954(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v4 = sub_1DD0DB04C();
    v267 = *(v4 - 8);
    v268 = v4;
    v281 = *(v267 + 64);
    v264 = sub_1DD0DC76C();
    v277 = *(v264 - 8);
    v285 = v3;
    v263 = v277;
    v5 = *(v277 + 80);
    v258 = sub_1DD0DB1EC();
    v279 = *(v258 - 8);
    v257 = v279;
    v269 = *(v279 + 80) | v5;
    v265 = sub_1DD0DB4BC();
    v275 = *(v265 - 8);
    v286 = v275;
    v6 = *(v275 + 80) & 0xF8;
    v266 = sub_1DD0DB3EC();
    v7 = *(v266 - 8);
    v8 = *(v7 + 80);
    v9 = v6 | v8 | 7;
    v256 = sub_1DD0DD12C();
    v271 = *(v256 - 8);
    v255 = v271;
    v10 = *(v271 + 80);
    v11 = sub_1DD0DD08C();
    v12 = v9;
    v254 = v11;
    v13 = v11;
    v14 = v8;
    v15 = *(v13 - 8);
    v253 = v15;
    v16 = (v269 | (v10 | *(v15 + 80))) & 0xF8 | v9;
    v17 = v281 + v16;
    v18 = *(v277 + 64);
    v252 = v18 + 7;
    if (((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v18)
    {
      v18 = ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    if (v18 <= *(v279 + 64))
    {
      v18 = *(v279 + 64);
    }

    v278 = *(v275 + 64) + v8;
    v247 = v7;
    v19 = *(v7 + 84);
    v20 = *(v7 + 64);
    v3 = v285;
    v246 = v20;
    if (!v19)
    {
      ++v20;
    }

    v262 = v20;
    v270 = v20 + 7;
    v260 = v278 & ~v8;
    v21 = (v20 + 7 + v260) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
    if (v18 <= v22)
    {
      v18 = (v21 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
    }

    v23 = v21 + 31;
    if (v18 <= (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
    {
      v18 = (((((v23 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    v249 = *(v271 + 64);
    v250 = v9 + 16;
    v24 = *(v275 + 84);
    v259 = *(v7 + 84);
    v25 = v19 != 0;
    v26 = v19 - 1;
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27 <= v24)
    {
      v28 = *(v275 + 84);
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 0x7FFFFFFE)
    {
      v28 = 2147483646;
    }

    v251 = v28;
    v29 = ((v23 + ((v9 + 16 + ((v249 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    if (v18 <= v29)
    {
      v18 = v29;
    }

    v30 = *(v15 + 64);
    if (v18 > v30)
    {
      v30 = v18;
    }

    if (v30 <= 0x18)
    {
      v31 = 24;
    }

    else
    {
      v31 = v30;
    }

    v32 = (v31 + (v17 & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8;
    v33 = *(a3 + 24);
    v272 = *(v33 - 8);
    if (*(v272 + 64) <= 9uLL)
    {
      v34 = 9;
    }

    else
    {
      v34 = *(v272 + 64);
    }

    if (((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41 <= v34 + 1)
    {
      v35 = v34 + 1;
    }

    else
    {
      v35 = ((v32 + 63) & 0xFFFFFFFFFFFFFFF8) + 41;
    }

    if (v35 <= 0x29)
    {
      v36 = 41;
    }

    else
    {
      v36 = v35;
    }

    v37 = v285[v36];
    v38 = v37 - 7;
    if (v37 < 7)
    {
      v40 = a2;
    }

    else
    {
      if (v36 <= 3)
      {
        v39 = v36;
      }

      else
      {
        v39 = 4;
      }

      v40 = a2;
      switch(v39)
      {
        case 1:
          v41 = *v285;
          goto LABEL_46;
        case 2:
          v41 = *v285;
          goto LABEL_46;
        case 3:
          v41 = *v285 | (v285[2] << 16);
          goto LABEL_46;
        case 4:
          v41 = *v285;
LABEL_46:
          if (v36 < 4)
          {
            v41 |= v38 << (8 * v36);
          }

          v37 = v41 + 7;
          break;
        default:
          break;
      }
    }

    v280 = ~v16;
    v282 = v31 + 1;
    v276 = ~v14;
    v248 = ~v12;
    v261 = 8 * v34;
    v284 = v31;
    switch(v37)
    {
      case 0u:
      case 1u:
      case 4u:
        v42 = *v285;
        goto LABEL_130;
      case 2u:
        (*(v267 + 8))(v285, v268);
        v43 = (&v285[v17] & v280);
        v48 = v43[v284];
        v49 = v48 - 10;
        if (v48 >= 0xA)
        {
          if (v284 <= 3)
          {
            v50 = v284;
          }

          else
          {
            v50 = 4;
          }

          switch(v50)
          {
            case 1:
              v51 = *v43;
              goto LABEL_80;
            case 2:
              v51 = *v43;
              goto LABEL_80;
            case 3:
              v51 = *v43 | (*((&v285[v17] & v280) + 2) << 16);
              goto LABEL_80;
            case 4:
              v51 = *v43;
LABEL_80:
              if (v284 < 4)
              {
                v48 = (v51 | (v49 << (8 * v284))) + 10;
              }

              else
              {
                v48 = v51 + 10;
              }

              break;
            default:
              break;
          }
        }

        v245 = v32;
        switch(v48)
        {
          case 0u:
            goto LABEL_84;
          case 1u:
            goto LABEL_95;
          case 2u:
            goto LABEL_88;
          case 3u:
            goto LABEL_89;
          case 4u:
            goto LABEL_85;
          case 5u:
            goto LABEL_96;
          case 6u:
            goto LABEL_98;
          case 7u:
            goto LABEL_90;
          case 8u:
            goto LABEL_102;
          case 9u:
            goto LABEL_86;
          default:
            goto LABEL_127;
        }

        goto LABEL_127;
      case 3u:
        (*(v267 + 8))(v285, v268);
        v43 = (&v285[v17] & v280);
        v44 = v43[v284];
        v45 = v44 - 10;
        if (v44 >= 0xA)
        {
          if (v284 <= 3)
          {
            v46 = v284;
          }

          else
          {
            v46 = 4;
          }

          switch(v46)
          {
            case 1:
              v47 = *v43;
              goto LABEL_72;
            case 2:
              v47 = *v43;
              goto LABEL_72;
            case 3:
              v47 = *v43 | (*((&v285[v17] & v280) + 2) << 16);
              goto LABEL_72;
            case 4:
              v47 = *v43;
LABEL_72:
              if (v284 < 4)
              {
                v44 = (v47 | (v45 << (8 * v284))) + 10;
              }

              else
              {
                v44 = v47 + 10;
              }

              break;
            default:
              goto LABEL_75;
          }
        }

        break;
      case 5u:
        v52 = v285[v34];
        v53 = v52 - 2;
        if (v52 >= 2)
        {
          if (v34 <= 3)
          {
            v54 = v34;
          }

          else
          {
            v54 = 4;
          }

          switch(v54)
          {
            case 1:
              v55 = *v285;
              goto LABEL_107;
            case 2:
              v55 = *v285;
              goto LABEL_107;
            case 3:
              v55 = *v285 | (v285[2] << 16);
              goto LABEL_107;
            case 4:
              v55 = *v285;
LABEL_107:
              if (v34 < 4)
              {
                v52 = (v55 | (v53 << v261)) + 2;
              }

              else
              {
                v52 = v55 + 2;
              }

              break;
            default:
              break;
          }
        }

        if (v52 == 1)
        {
          goto LABEL_113;
        }

        if (!v52)
        {
          (*(v272 + 8))(v285, v33);
        }

        goto LABEL_131;
      case 6u:
LABEL_113:

        goto LABEL_131;
      default:
        goto LABEL_131;
    }

LABEL_75:
    v245 = v32;
    switch(v44)
    {
      case 0u:
LABEL_84:
        v57 = v263;
        v56 = v264;
        goto LABEL_87;
      case 1u:
LABEL_95:
        v58 = v43;
        (*(v263 + 8))(v43, v264);
        v70 = *(&v58[v252] & 0xFFFFFFFFFFFFFFF8);

        goto LABEL_97;
      case 2u:
LABEL_88:
        v58 = v43;
        v59 = *(v43 + 1);

        v60 = *(v58 + 2);

        goto LABEL_97;
      case 3u:
LABEL_89:
        v58 = v43;
        v61 = *v43;
        swift_unknownObjectRelease();
        goto LABEL_97;
      case 4u:
LABEL_85:
        v57 = v257;
        v56 = v258;
        goto LABEL_87;
      case 5u:
LABEL_96:
        v58 = v43;

        goto LABEL_97;
      case 6u:
LABEL_98:
        v71 = v43;
        (*(v286 + 8))(v43, v265);
        v244 = v71;
        v72 = &v71[v278] & v276;
        if (!__swift_getEnumTagSinglePayload(v72, 1, v266))
        {
          (*(v247 + 8))(v72, v266);
        }

        v69 = v270 + v72;
        goto LABEL_101;
      case 7u:
LABEL_90:
        v62 = v43;
        (*(v286 + 8))(v43, v265);
        v243 = &v62[v278] & v276;
        if (!__swift_getEnumTagSinglePayload(v243, 1, v266))
        {
          (*(v247 + 8))(v243, v266);
        }

        v63 = 7;
        if (!v259)
        {
          v63 = 8;
        }

        v64 = *(((v246 + v63 + v243) & 0xFFFFFFFFFFFFFFF8) + 8);

        v244 = v62;
        v65 = &v62[((((v260 + v262 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
        v66 = *(v65 + 8);

        v67 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
        v68 = *(v67 + 8);

        v69 = v67 + 23;
LABEL_101:
        v73 = *((v69 & 0xFFFFFFFFFFFFFFF8) + 8);

        goto LABEL_126;
      case 8u:
LABEL_102:
        v74 = v43;
        (*(v255 + 8))(v43, v256);
        v244 = v74;
        v75 = &v74[v249 + 7] & 0xFFFFFFFFFFFFFFF8;
        v76 = *(v75 + 8);

        v77 = (v250 + v75) & v248;
        if (v24 == v251)
        {
          if (__swift_getEnumTagSinglePayload(v77, v24, v265))
          {
            goto LABEL_125;
          }

          v242 = (v278 + v77) & v276;
          goto LABEL_122;
        }

        v78 = (v278 + v77) & v276;
        if (v27 == v251)
        {
          v242 = (v278 + v77) & v276;
          if (v259 >= 2 && __swift_getEnumTagSinglePayload(v78, v259, v266) >= 2)
          {
            goto LABEL_125;
          }

          goto LABEL_122;
        }

        v79 = *(((v270 + v78) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v79 >= 0xFFFFFFFF)
        {
          LODWORD(v79) = -1;
        }

        if ((v79 + 1) < 2)
        {
          v242 = (v278 + v77) & v276;
LABEL_122:
          (*(v286 + 8))(v77, v265);
          if (!__swift_getEnumTagSinglePayload(v242, 1, v266))
          {
            (*(v247 + 8))(v242, v266);
          }

          v80 = *(((v270 + v242) & 0xFFFFFFFFFFFFFFF8) + 8);
        }

LABEL_125:

LABEL_126:
        v43 = v244;
LABEL_127:
        v81 = &v43[v282 + 7];
        v83 = (v81 & 0xFFFFFFFFFFFFFFF8) + 15;
        v82 = *(v81 & 0xFFFFFFFFFFFFFFF8);

        if (*((v83 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
        {
          __swift_destroy_boxed_opaque_existential_1Tm((v83 & 0xFFFFFFFFFFFFFFF8));
        }

        v32 = v245;
        v84 = *(&v285[((v245 + 15) & 0xFFFFFFFFFFFFFFF8) + 48] & 0xFFFFFFFFFFFFFFF8);
LABEL_130:

LABEL_131:
        v85 = v40[v36];
        v86 = v85 - 7;
        if (v85 >= 7)
        {
          if (v36 <= 3)
          {
            v87 = v36;
          }

          else
          {
            v87 = 4;
          }

          switch(v87)
          {
            case 1:
              v88 = *v40;
              goto LABEL_140;
            case 2:
              v88 = *v40;
              goto LABEL_140;
            case 3:
              v88 = *v40 | (v40[2] << 16);
              goto LABEL_140;
            case 4:
              v88 = *v40;
LABEL_140:
              if (v36 < 4)
              {
                v85 = (v88 | (v86 << (8 * v36))) + 7;
              }

              else
              {
                v85 = v88 + 7;
              }

              break;
            default:
              goto LABEL_143;
          }
        }

        break;
      case 9u:
LABEL_86:
        v57 = v253;
        v56 = v254;
LABEL_87:
        v58 = v43;
        (*(v57 + 8))(v43, v56);
LABEL_97:
        v43 = v58;
        goto LABEL_127;
      default:
        goto LABEL_127;
    }

LABEL_143:
    switch(v85)
    {
      case 0u:
        *v285 = *v40;
        v89 = *(v40 + 8);
        v285[24] = v40[24];
        *(v285 + 8) = v89;
        v90 = *(v40 + 4);
        v285[40] = v40[40];
        *(v285 + 4) = v90;
        v285[v36] = 0;
        goto LABEL_283;
      case 1u:
        *v285 = *v40;
        v107 = *(v40 + 8);
        v285[24] = v40[24];
        *(v285 + 8) = v107;
        v108 = *(v40 + 4);
        v285[40] = v40[40];
        *(v285 + 4) = v108;
        v93 = 1;
        goto LABEL_282;
      case 2u:
        (*(v267 + 16))(v285, v40, v268);
        v94 = (&v285[v17] & v280);
        v95 = (&v40[v17] & v280);
        v96 = v95[v284];
        v97 = v96 - 10;
        if (v96 >= 0xA)
        {
          if (v284 <= 3)
          {
            v98 = v284;
          }

          else
          {
            v98 = 4;
          }

          switch(v98)
          {
            case 1:
              v99 = *v95;
              goto LABEL_173;
            case 2:
              v99 = *v95;
              goto LABEL_173;
            case 3:
              v99 = *v95 | (*((&v40[v17] & v280) + 2) << 16);
              goto LABEL_173;
            case 4:
              v99 = *v95;
LABEL_173:
              if (v284 < 4)
              {
                v96 = (v99 | (v97 << (8 * v284))) + 10;
              }

              else
              {
                v96 = v99 + 10;
              }

              break;
            default:
              break;
          }
        }

        switch(v96)
        {
          case 0u:
            (*(v263 + 16))(&v285[v17] & v280, &v40[v17] & v280, v264);
            *(v94 + v284) = 0;
            goto LABEL_263;
          case 1u:
            (*(v263 + 16))(&v285[v17] & v280, &v40[v17] & v280, v264);
            *((v94 + v252) & 0xFFFFFFFFFFFFFFF8) = *(&v95[v252] & 0xFFFFFFFFFFFFFFF8);
            *(v94 + v284) = 1;
            sub_1DD0DCF8C();
          case 2u:
            *v94 = *v95;
            *((&v285[v17] & v280) + 8) = *((&v40[v17] & v280) + 8);
            *((&v285[v17] & v280) + 0x10) = *((&v40[v17] & v280) + 0x10);
            *(v94 + v284) = 2;

            goto LABEL_240;
          case 3u:
            *v94 = *v95;
            *(v94 + v284) = 3;
            swift_unknownObjectRetain();
            goto LABEL_263;
          case 4u:
            v118 = &v285[v17] & v280;
            v119 = &v40[v17] & v280;
            v120 = v284;
            (*(v257 + 16))(v118, v119, v258);
            v121 = 4;
            goto LABEL_200;
          case 5u:
            v134 = *v95;
            *v94 = *v95;
            *(v94 + v284) = 5;
            goto LABEL_262;
          case 6u:
            (*(v286 + 16))(&v285[v17] & v280, &v40[v17] & v280, v265);
            v135 = ((v94 + v278) & v276);
            v136 = (&v95[v278] & v276);
            if (__swift_getEnumTagSinglePayload(v136, 1, v266))
            {
              memcpy(v135, v136, v262);
            }

            else
            {
              (*(v247 + 16))(v135, v136, v266);
              __swift_storeEnumTagSinglePayload(v135, 0, 1, v266);
            }

            v186 = ((v135 + v270) & 0xFFFFFFFFFFFFFFF8);
            v187 = ((v136 + v270) & 0xFFFFFFFFFFFFFFF8);
            *v186 = *v187;
            v186[1] = v187[1];
            v188 = (v186 + 19) & 0xFFFFFFFFFFFFFFF8;
            v189 = (v187 + 19) & 0xFFFFFFFFFFFFFFF8;
            v190 = *v189;
            *(v188 + 4) = *(v189 + 4);
            *v188 = v190;
            *(v94 + v284) = 6;
            goto LABEL_240;
          case 7u:
            (*(v286 + 16))(&v285[v17] & v280, &v40[v17] & v280, v265);
            v130 = ((v94 + v278) & v276);
            v131 = (&v95[v278] & v276);
            if (__swift_getEnumTagSinglePayload(v131, 1, v266))
            {
              memcpy(v130, v131, v262);
            }

            else
            {
              (*(v247 + 16))(v130, v131, v266);
              __swift_storeEnumTagSinglePayload(v130, 0, 1, v266);
            }

            v164 = ((v130 + v270) & 0xFFFFFFFFFFFFFFF8);
            v165 = ((v131 + v270) & 0xFFFFFFFFFFFFFFF8);
            *v164 = *v165;
            v164[1] = v165[1];
            v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
            v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
            v168 = *v167;
            *(v166 + 4) = *(v167 + 4);
            *v166 = v168;
            v169 = ((v94 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
            v170 = (&v95[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v169 = *v170;
            v169[1] = v170[1];
            v171 = ((v169 + 23) & 0xFFFFFFFFFFFFFFF8);
            v172 = ((v170 + 23) & 0xFFFFFFFFFFFFFFF8);
            *v171 = *v172;
            v171[1] = v172[1];
            v173 = ((v171 + 23) & 0xFFFFFFFFFFFFFFF8);
            v174 = ((v172 + 23) & 0xFFFFFFFFFFFFFFF8);
            *v173 = *v174;
            v173[1] = v174[1];
            *(v94 + v284) = 7;

LABEL_240:

            goto LABEL_263;
          case 8u:
            (*(v255 + 16))(&v285[v17] & v280, &v40[v17] & v280, v256);
            v137 = ((v94 + v249 + 7) & 0xFFFFFFFFFFFFFFF8);
            v138 = (&v95[v249 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v137 = *v138;
            v137[1] = v138[1];
            v139 = ((v137 + v250) & v248);
            v140 = (v138 + v250) & v248;

            if (v24 == v251)
            {
              EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v140, v24, v265);
              v142 = v140;
              if (!EnumTagSinglePayload)
              {
                v143 = v139;
                v273 = v94;
                v145 = v276;
                v144 = v278;
                v146 = ((v278 + v140) & v276);
                v147 = v266;
LABEL_255:
                (*(v286 + 16))(v143, v142, v265);
                v198 = ((v143 + v144) & v145);
                if (__swift_getEnumTagSinglePayload(v146, 1, v147))
                {
                  memcpy(v198, v146, v262);
                }

                else
                {
                  (*(v247 + 16))(v198, v146, v147);
                  __swift_storeEnumTagSinglePayload(v198, 0, 1, v147);
                }

                v94 = v273;
                v199 = ((v198 + v270) & 0xFFFFFFFFFFFFFFF8);
                v200 = ((v146 + v270) & 0xFFFFFFFFFFFFFFF8);
                *v199 = *v200;
                v199[1] = v200[1];
                v201 = (v199 + 19) & 0xFFFFFFFFFFFFFFF8;
                v202 = (v200 + 19) & 0xFFFFFFFFFFFFFFF8;
                v203 = *v202;
                *(v201 + 4) = *(v202 + 4);
                *v201 = v203;

                v204 = v246;
                v139 = v143;
                if (!v259)
                {
                  goto LABEL_260;
                }

LABEL_261:
                v205 = (((v260 + v204 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
                v206 = ((v139 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
                v134 = *((v142 + v205 + 7) & 0xFFFFFFFFFFFFFFF8);
                *v206 = v134;
                *(v94 + v284) = 8;
LABEL_262:
                v207 = v134;
LABEL_263:
                v208 = (&v95[v282 + 7] & 0xFFFFFFFFFFFFFFF8);
                v209 = ((v94 + v282 + 7) & 0xFFFFFFFFFFFFFFF8);
                *v209 = *v208;
                v210 = (v209 + 15) & 0xFFFFFFFFFFFFFFF8;
                v211 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
                v212 = *(v211 + 24);

                if (v212 < 0xFFFFFFFF)
                {
                  v213 = *v211;
                  v214 = *(v211 + 16);
                  *(v210 + 32) = *(v211 + 32);
                  *v210 = v213;
                  *(v210 + 16) = v214;
                }

                else
                {
                  *(v210 + 24) = v212;
                  *(v210 + 32) = *(v211 + 32);
                  (**(v212 - 8))(v210, v211, v212);
                }

                *(v210 + 40) = *(v211 + 40);
                v215 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
                v216 = &v285[v215 + 7] & 0xFFFFFFFFFFFFFFF8;
                v217 = &a2[v215 + 7] & 0xFFFFFFFFFFFFFFF8;
                *v216 = *v217;
                v218 = *(v217 + 8);
                *(v216 + 24) = *(v217 + 24);
                *(v216 + 8) = v218;
                v219 = *(v217 + 32);
                *(v216 + 40) = *(v217 + 40);
                *(v216 + 32) = v219;
                v93 = 2;
                goto LABEL_282;
              }

LABEL_257:
              memcpy(v139, v142, v22);
LABEL_260:
              v204 = v262;
              goto LABEL_261;
            }

            v142 = v140;
            v162 = v278 + v140;
            v146 = ((v278 + v140) & v276);
            if (v27 == v251)
            {
              v143 = v139;
              v147 = v266;
              if (v259 < 2)
              {
                v273 = v94;
LABEL_254:
                v145 = v276;
                v144 = v278;
                goto LABEL_255;
              }

              v139 = v143;
              if (__swift_getEnumTagSinglePayload(v162 & v276, v259, v266) >= 2)
              {
                goto LABEL_257;
              }
            }

            else
            {
              v196 = *(((v146 + v270) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v196 >= 0xFFFFFFFF)
              {
                LODWORD(v196) = -1;
              }

              if ((v196 + 1) >= 2)
              {
                goto LABEL_257;
              }

              v143 = v139;
            }

            v273 = v94;
            v147 = v266;
            goto LABEL_254;
          case 9u:
            v122 = &v285[v17] & v280;
            v123 = &v40[v17] & v280;
            v120 = v284;
            (*(v253 + 16))(v122, v123, v254);
            v121 = 9;
LABEL_200:
            *(v94 + v120) = v121;
            goto LABEL_263;
          default:
            memcpy((&v285[v17] & v280), (&v40[v17] & v280), v282);
            goto LABEL_263;
        }

      case 3u:
        (*(v267 + 16))(v285, v40, v268);
        v100 = (&v285[v17] & v280);
        v101 = (&v40[v17] & v280);
        v102 = v101[v284];
        v103 = v102 - 10;
        if (v102 >= 0xA)
        {
          if (v284 <= 3)
          {
            v104 = v284;
          }

          else
          {
            v104 = 4;
          }

          switch(v104)
          {
            case 1:
              v105 = *v101;
              goto LABEL_181;
            case 2:
              v105 = *v101;
              goto LABEL_181;
            case 3:
              v105 = *v101 | (*((&v40[v17] & v280) + 2) << 16);
              goto LABEL_181;
            case 4:
              v105 = *v101;
LABEL_181:
              if (v284 < 4)
              {
                v102 = (v105 | (v103 << (8 * v284))) + 10;
              }

              else
              {
                v102 = v105 + 10;
              }

              break;
            default:
              goto LABEL_184;
          }
        }

        break;
      case 4u:
        *v285 = *v40;
        v91 = *(v40 + 8);
        v285[24] = v40[24];
        *(v285 + 8) = v91;
        v92 = *(v40 + 4);
        v285[40] = v40[40];
        *(v285 + 4) = v92;
        v93 = 4;
        goto LABEL_282;
      case 5u:
        v109 = v40[v34];
        v110 = v109 - 2;
        if (v109 >= 2)
        {
          if (v34 <= 3)
          {
            v111 = v34;
          }

          else
          {
            v111 = 4;
          }

          switch(v111)
          {
            case 1:
              v112 = *v40;
              goto LABEL_188;
            case 2:
              v112 = *v40;
              goto LABEL_188;
            case 3:
              v112 = *v40 | (v40[2] << 16);
              goto LABEL_188;
            case 4:
              v112 = *v40;
LABEL_188:
              if (v34 < 4)
              {
                v109 = (v112 | (v110 << v261)) + 2;
              }

              else
              {
                v109 = v112 + 2;
              }

              break;
            default:
              break;
          }
        }

        if (v109 == 1)
        {
          v116 = *v40;
          v117 = *v40;
          *v285 = v116;
          v285[8] = v40[8];
          v285[v34] = 1;
        }

        else if (v109)
        {
          memcpy(v285, v40, v34 + 1);
        }

        else
        {
          (*(v272 + 16))(v285, v40, v33);
          v285[v34] = 0;
        }

        v115 = 5;
        goto LABEL_197;
      case 6u:
        v113 = *v40;
        v114 = *v40;
        *v285 = v113;
        v285[8] = v40[8];
        v115 = 6;
LABEL_197:
        v285[v36] = v115;
        return v3;
      default:

        return memcpy(v285, v40, v36 + 1);
    }

LABEL_184:
    switch(v102)
    {
      case 0u:
        (*(v263 + 16))(&v285[v17] & v280, &v40[v17] & v280, v264);
        *(v100 + v284) = 0;
        goto LABEL_278;
      case 1u:
        (*(v263 + 16))(&v285[v17] & v280, &v40[v17] & v280, v264);
        *((v100 + v252) & 0xFFFFFFFFFFFFFFF8) = *(&v101[v252] & 0xFFFFFFFFFFFFFFF8);
        *(v100 + v284) = 1;
        sub_1DD0DCF8C();
      case 2u:
        *v100 = *v101;
        *((&v285[v17] & v280) + 8) = *((&v40[v17] & v280) + 8);
        *((&v285[v17] & v280) + 0x10) = *((&v40[v17] & v280) + 0x10);
        *(v100 + v284) = 2;

        goto LABEL_243;
      case 3u:
        *v100 = *v101;
        *(v100 + v284) = 3;
        swift_unknownObjectRetain();
        goto LABEL_278;
      case 4u:
        v124 = &v285[v17] & v280;
        v125 = &v40[v17] & v280;
        v126 = v284;
        (*(v257 + 16))(v124, v125, v258);
        v127 = 4;
        goto LABEL_204;
      case 5u:
        v148 = *v101;
        *v100 = *v101;
        *(v100 + v284) = 5;
        goto LABEL_277;
      case 6u:
        (*(v286 + 16))(&v285[v17] & v280, &v40[v17] & v280, v265);
        v149 = ((v100 + v278) & v276);
        v150 = (&v101[v278] & v276);
        if (__swift_getEnumTagSinglePayload(v150, 1, v266))
        {
          memcpy(v149, v150, v262);
        }

        else
        {
          (*(v247 + 16))(v149, v150, v266);
          __swift_storeEnumTagSinglePayload(v149, 0, 1, v266);
        }

        v191 = ((v149 + v270) & 0xFFFFFFFFFFFFFFF8);
        v192 = ((v150 + v270) & 0xFFFFFFFFFFFFFFF8);
        *v191 = *v192;
        v191[1] = v192[1];
        v193 = (v191 + 19) & 0xFFFFFFFFFFFFFFF8;
        v194 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
        v195 = *v194;
        *(v193 + 4) = *(v194 + 4);
        *v193 = v195;
        *(v100 + v284) = 6;
        goto LABEL_243;
      case 7u:
        (*(v286 + 16))(&v285[v17] & v280, &v40[v17] & v280, v265);
        v132 = ((v100 + v278) & v276);
        v133 = (&v101[v278] & v276);
        if (__swift_getEnumTagSinglePayload(v133, 1, v266))
        {
          memcpy(v132, v133, v262);
        }

        else
        {
          (*(v247 + 16))(v132, v133, v266);
          __swift_storeEnumTagSinglePayload(v132, 0, 1, v266);
        }

        v175 = ((v132 + v270) & 0xFFFFFFFFFFFFFFF8);
        v176 = ((v133 + v270) & 0xFFFFFFFFFFFFFFF8);
        *v175 = *v176;
        v175[1] = v176[1];
        v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
        v178 = (v176 + 19) & 0xFFFFFFFFFFFFFFF8;
        v179 = *v178;
        *(v177 + 4) = *(v178 + 4);
        *v177 = v179;
        v180 = ((v100 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
        v181 = (&v101[v22 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v180 = *v181;
        v180[1] = v181[1];
        v182 = ((v180 + 23) & 0xFFFFFFFFFFFFFFF8);
        v183 = ((v181 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v182 = *v183;
        v182[1] = v183[1];
        v184 = ((v182 + 23) & 0xFFFFFFFFFFFFFFF8);
        v185 = ((v183 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v184 = *v185;
        v184[1] = v185[1];
        *(v100 + v284) = 7;

LABEL_243:

        goto LABEL_278;
      case 8u:
        (*(v255 + 16))(&v285[v17] & v280, &v40[v17] & v280, v256);
        v151 = ((v100 + v249 + 7) & 0xFFFFFFFFFFFFFFF8);
        v152 = (&v101[v249 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v151 = *v152;
        v151[1] = v152[1];
        v153 = ((v151 + v250) & v248);
        v154 = (v152 + v250) & v248;

        if (v24 == v251)
        {
          v155 = __swift_getEnumTagSinglePayload(v154, v24, v265);
          v156 = v154;
          if (!v155)
          {
            v157 = v153;
            v274 = v100;
            v159 = v276;
            v158 = v278;
            v160 = ((v278 + v154) & v276);
            v161 = v266;
            goto LABEL_270;
          }

LABEL_272:
          memcpy(v153, v156, v22);
          goto LABEL_275;
        }

        v156 = v154;
        v163 = v278 + v154;
        v160 = ((v278 + v154) & v276);
        if (v27 == v251)
        {
          v157 = v153;
          v161 = v266;
          if (v259 < 2)
          {
            v274 = v100;
LABEL_269:
            v159 = v276;
            v158 = v278;
LABEL_270:
            (*(v286 + 16))(v157, v156, v265);
            v220 = ((v157 + v158) & v159);
            if (__swift_getEnumTagSinglePayload(v160, 1, v161))
            {
              memcpy(v220, v160, v262);
            }

            else
            {
              (*(v247 + 16))(v220, v160, v161);
              __swift_storeEnumTagSinglePayload(v220, 0, 1, v161);
            }

            v100 = v274;
            v221 = ((v220 + v270) & 0xFFFFFFFFFFFFFFF8);
            v222 = ((v160 + v270) & 0xFFFFFFFFFFFFFFF8);
            *v221 = *v222;
            v221[1] = v222[1];
            v223 = (v221 + 19) & 0xFFFFFFFFFFFFFFF8;
            v224 = (v222 + 19) & 0xFFFFFFFFFFFFFFF8;
            v225 = *v224;
            *(v223 + 4) = *(v224 + 4);
            *v223 = v225;

            v226 = v246;
            v153 = v157;
            if (v259)
            {
LABEL_276:
              v227 = (((v260 + v226 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              v228 = ((v153 + v227 + 7) & 0xFFFFFFFFFFFFFFF8);
              v148 = *((v156 + v227 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v228 = v148;
              *(v100 + v284) = 8;
LABEL_277:
              v229 = v148;
LABEL_278:
              v230 = (&v101[v282 + 7] & 0xFFFFFFFFFFFFFFF8);
              v231 = ((v100 + v282 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v231 = *v230;
              v232 = (v231 + 15) & 0xFFFFFFFFFFFFFFF8;
              v233 = (v230 + 15) & 0xFFFFFFFFFFFFFFF8;
              v234 = *(v233 + 24);

              if (v234 < 0xFFFFFFFF)
              {
                v235 = *v233;
                v236 = *(v233 + 16);
                *(v232 + 32) = *(v233 + 32);
                *v232 = v235;
                *(v232 + 16) = v236;
              }

              else
              {
                *(v232 + 24) = v234;
                *(v232 + 32) = *(v233 + 32);
                (**(v234 - 8))(v232, v233, v234);
              }

              *(v232 + 40) = *(v233 + 40);
              v237 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
              v238 = &v285[v237 + 7] & 0xFFFFFFFFFFFFFFF8;
              v239 = &a2[v237 + 7] & 0xFFFFFFFFFFFFFFF8;
              *v238 = *v239;
              v240 = *(v239 + 8);
              *(v238 + 24) = *(v239 + 24);
              *(v238 + 8) = v240;
              v241 = *(v239 + 32);
              *(v238 + 40) = *(v239 + 40);
              *(v238 + 32) = v241;
              v93 = 3;
LABEL_282:
              v285[v36] = v93;
LABEL_283:

              return v3;
            }

LABEL_275:
            v226 = v262;
            goto LABEL_276;
          }

          v153 = v157;
          if (__swift_getEnumTagSinglePayload(v163 & v276, v259, v266) >= 2)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v197 = *(((v160 + v270) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v197 >= 0xFFFFFFFF)
          {
            LODWORD(v197) = -1;
          }

          if ((v197 + 1) >= 2)
          {
            goto LABEL_272;
          }

          v157 = v153;
        }

        v274 = v100;
        v161 = v266;
        goto LABEL_269;
      case 9u:
        v128 = &v285[v17] & v280;
        v129 = &v40[v17] & v280;
        v126 = v284;
        (*(v253 + 16))(v128, v129, v254);
        v127 = 9;
LABEL_204:
        *(v100 + v126) = v127;
        goto LABEL_278;
      default:
        memcpy((&v285[v17] & v280), (&v40[v17] & v280), v282);
        goto LABEL_278;
    }
  }

  return v3;
}