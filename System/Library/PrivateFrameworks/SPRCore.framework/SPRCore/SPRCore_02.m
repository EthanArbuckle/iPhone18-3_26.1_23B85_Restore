uint64_t sub_2644A93A8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_2644AAB8C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_2644AABA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2644A94C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2644A94E8, 0, 0);
}

uint64_t sub_2644A94E8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  *v3 = v0;
  v3[1] = sub_2644A95F4;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000029, 0x80000002644AD890, sub_2644AA7A0, v1, v4);
}

uint64_t sub_2644A95F4()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644AABA4, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2644A9730(uint64_t a1, void *a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E750, &qword_2644AD4F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2644AA7A8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2644AABA0;
  aBlock[3] = &unk_2875F41C8;
  v11 = _Block_copy(aBlock);

  v12 = [a2 startSecureElementReaderSession_];
  _Block_release(v11);
  if (([v12 isFirstInQueue] & 1) == 0)
  {
    if (qword_27FF6E1D0 != -1)
    {
      swift_once();
    }

    v13 = sub_2644AB560();
    sub_264493318(v13, qword_27FF6E708);
    v14 = sub_2644AB540();
    v15 = sub_2644ABA10();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_264488000, v14, v15, "Waiting for NFSecureElementReaderSession...", v16, 2u);
      MEMORY[0x266739510](v16, -1, -1);
    }
  }

  sub_2644A6A34(v12);
  return swift_unknownObjectRelease();
}

void *sub_2644A99CC(void *result, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (result)
  {
    v7 = result;
    sub_26448DE0C(a4, a5);
    return sub_2644AB920();
  }

  else if (a2)
  {
    v8 = a2;
    sub_26448DE0C(a4, a5);
    return sub_2644AB910();
  }

  return result;
}

void sub_2644A9A54(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2644A9AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock((v1 + 32));
  *(v1 + 16) = 1;
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    [v2 endSession];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_2644A9B54(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_2644ABBB0();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2644A9C18, 0, 0);
}

uint64_t sub_2644A9C18()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_2644ABDC0();
  v5 = v4;
  sub_2644ABD00();
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2644A9CF4;
  v7 = v0[6];

  return sub_2644A9F20(v3, v5, 0, 0, 1);
}

uint64_t sub_2644A9CF4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2644AAB94;
  }

  else
  {
    v6 = sub_2644A9E64;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2644A9E64()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_2644AA5D0(0, &qword_27FF6E730, 0x277D2C880);
  sub_26448DE0C(&qword_27FF6E438, &unk_2644AD480);
  sub_2644AB960();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2644A9F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2644ABBA0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2644AA020, 0, 0);
}

uint64_t sub_2644AA020()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2644ABBB0();
  v7 = sub_2644AA63C(&qword_27FF6E738, MEMORY[0x277D85928]);
  sub_2644ABCE0();
  sub_2644AA63C(&qword_27FF6E740, MEMORY[0x277D858F8]);
  sub_2644ABBC0();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2644AA1B0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2644AA1B0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2644AA36C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2644AA36C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2644AA3D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2644AA418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2644AAB98;

  return sub_2644A9238(a1, v4, v5, v6);
}

uint64_t sub_2644AA4CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2644AA50C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2644AAB98;

  return sub_2644A9B54(v6, a1, v4, v5, v7);
}

uint64_t sub_2644AA5D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2644AA63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2644AA684(uint64_t a1, uint64_t a2)
{
  v4 = sub_26448DE0C(&qword_27FF6E720, &qword_2644AD458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2644AA6F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2644AAB98;

  return sub_2644A94C4(a1, v5, v4);
}

uint64_t sub_2644AA7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2644AA7D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2644AA880;

  return sub_2644A78A0(a1, v5, v4);
}

uint64_t sub_2644AA880()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2644AA998(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_26448DE0C(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

__n128 sub_2644AAAC0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2644AAACC(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2644AAB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t Data.init(uuid:)(uint64_t a1)
{
  v1 = sub_2644AB4E0();
  v2 = v1;
  v4 = v3;
  v5 = v1 >> 8;
  v6 = v1 >> 16;
  v7 = v1 >> 24;
  v8 = HIDWORD(v1);
  v9 = v1 >> 40;
  v10 = HIWORD(v1);
  v11 = HIBYTE(v1);
  v16 = v3 >> 8;
  v17 = v3 >> 16;
  v18 = v3 >> 24;
  v19 = HIDWORD(v3);
  v20 = v3 >> 40;
  v21 = HIWORD(v3);
  v22 = HIBYTE(v3);
  sub_26448DE0C(&qword_27FF6E290, &qword_2644ACBE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2644AD540;
  *(v12 + 32) = v2;
  *(v12 + 33) = v5;
  *(v12 + 34) = v6;
  *(v12 + 35) = v7;
  *(v12 + 36) = v8;
  *(v12 + 37) = v9;
  *(v12 + 38) = v10;
  *(v12 + 39) = v11;
  *(v12 + 40) = v4;
  *(v12 + 41) = v16;
  *(v12 + 42) = v17;
  *(v12 + 43) = v18;
  *(v12 + 44) = v19;
  *(v12 + 45) = v20;
  *(v12 + 46) = v21;
  *(v12 + 47) = v22;
  v13 = sub_26448EC78(v12);

  v14 = sub_2644AB4F0();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

uint64_t Data.uuid.getter@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

LABEL_11:
      v9 = 1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (BYTE6(a2) != 16)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB410();
  sub_2644AB4D0();
  v9 = 0;
LABEL_12:
  v10 = sub_2644AB4F0();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

void sub_2644AAFD8(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  sub_26448A8A0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void sub_2644AB094(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 40);
  sub_26448A8A0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}