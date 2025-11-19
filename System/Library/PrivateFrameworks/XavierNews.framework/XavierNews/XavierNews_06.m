uint64_t sub_217EEFFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F03090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EF000C(uint64_t a1)
{
  v2 = sub_217EF85EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF0048(uint64_t a1)
{
  v2 = sub_217EF85EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF0084(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CB8, &qword_217F52748);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF85EC();
  sub_217F4B294();
  v17 = v11;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CC8, &qword_217F52750);
  sub_217EF8694(&qword_27CBF6CD0, &qword_27CBF6CC8, &qword_217F52750);
  sub_217F4B0C4();
  if (!v2)
  {
    v17 = v10;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CD8, &qword_217F52758);
    sub_217EF8694(&qword_27CBF6CE0, &qword_27CBF6CD8, &qword_217F52758);
    sub_217F4B0C4();
    v17 = v12;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CE8, &qword_217F52760);
    sub_217EF8694(&qword_27CBF6CF0, &qword_27CBF6CE8, &qword_217F52760);
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EF0320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CF8, &qword_217F52768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF85EC();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CC8, &qword_217F52750);
    v17 = 0;
    sub_217EF8694(&qword_27CBF6D00, &qword_27CBF6CC8, &qword_217F52750);
    sub_217F4AFC4();
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CD8, &qword_217F52758);
    v17 = 1;
    sub_217EF8694(&qword_27CBF6D08, &qword_27CBF6CD8, &qword_217F52758);
    sub_217F4AFC4();
    v14 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6CE8, &qword_217F52760);
    v17 = 2;
    sub_217EF8694(&qword_27CBF6D10, &qword_27CBF6CE8, &qword_217F52760);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v15 = v18;
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217EF0660@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF066C@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 sub_217EF0678@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void (*sub_217EF06BC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v4;
  return sub_217EF0728;
}

void sub_217EF0728(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  sub_217EC7AA4(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF076C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F4DD30;
  a1[1] = xmmword_217F4DD30;
  return result;
}

__n128 sub_217EF077C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 32);
  v3 = *(a1 + 48);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF07EC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 48);
  *v3 = *(v1 + 32);
  *(v3 + 16) = v4;
  return sub_217EF0858;
}

void sub_217EF0858(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 32;
  sub_217EC7CAC(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF08A0@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_217F51DB0;
  a1[1] = xmmword_217F51DB0;
  return result;
}

double sub_217EF08B0@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_217F51DB0;
  a1[1] = xmmword_217F51DB0;
  return result;
}

__n128 sub_217EF08C0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF08CC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 64);
  v3 = *(a1 + 80);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0930(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 80);
  *v3 = *(v1 + 64);
  *(v3 + 16) = v4;
  return sub_217EF099C;
}

void sub_217EF099C(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 64;
  sub_217EC7EB8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF09E4@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF09F0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 96);
  v3 = *(a1 + 112);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0A54(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 112);
  *v3 = *(v1 + 96);
  *(v3 + 16) = v4;
  return sub_217EF0AC0;
}

void sub_217EF0AC0(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 96;
  sub_217EC80C4(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0B08@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  return result;
}

__n128 sub_217EF0B18@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  return result;
}

__n128 sub_217EF0B28@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 128);
  v3 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0B34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 128);
  v3 = *(a1 + 144);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0B98(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 144);
  *v3 = *(v1 + 128);
  *(v3 + 16) = v4;
  return sub_217EF0C04;
}

void sub_217EF0C04(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 128;
  sub_217EC82D8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0C4C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  return result;
}

__n128 sub_217EF0C5C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  return result;
}

__n128 sub_217EF0C6C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0C78@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 160);
  v3 = *(a1 + 176);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0CDC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 176);
  *v3 = *(v1 + 160);
  *(v3 + 16) = v4;
  return sub_217EF0D48;
}

void sub_217EF0D48(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 160;
  sub_217EC84E8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0D90@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 192);
  v3 = *(v1 + 208);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void (*sub_217EF0DC8(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 208);
  *v3 = *(v1 + 192);
  *(v3 + 16) = v4;
  return sub_217EF0E34;
}

void sub_217EF0E34(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 192;
  sub_217EC86F8(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF0E7C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u64[1] = 0;
  return result;
}

__n128 sub_217EF0E8C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 224);
  v3 = *(v1 + 240);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0E98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 224);
  v3 = *(a1 + 240);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF0EFC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 240);
  *v3 = *(v1 + 224);
  *(v3 + 16) = v4;
  return sub_217EF0F68;
}

void sub_217EF0F68(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 224;
  sub_217EC890C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF0FB0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

__n128 sub_217EF0FC4@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 256);
  v3 = *(v1 + 272);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF0FD0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 256);
  v3 = *(a1 + 272);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1034(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 272);
  *v3 = *(v1 + 256);
  *(v3 + 16) = v4;
  return sub_217EF10A0;
}

void sub_217EF10A0(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 256;
  sub_217EC8B1C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF10E8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 288);
  v3 = *(v1 + 304);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF10F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 288);
  v3 = *(a1 + 304);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1158(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 304);
  *v3 = *(v1 + 288);
  *(v3 + 16) = v4;
  return sub_217EF11C4;
}

void sub_217EF11C4(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 288;
  sub_217EC8D30(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF120C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 320);
  v3 = *(v1 + 336);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1218@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 320);
  v3 = *(a1 + 336);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF127C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 336);
  *v3 = *(v1 + 320);
  *(v3 + 16) = v4;
  return sub_217EF12E8;
}

void sub_217EF12E8(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 320;
  sub_217EC8F40(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1330@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 352);
  v3 = *(v1 + 368);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF133C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 352);
  v3 = *(a1 + 368);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF13A0(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 368);
  *v3 = *(v1 + 352);
  *(v3 + 16) = v4;
  return sub_217EF140C;
}

void sub_217EF140C(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 352;
  sub_217EC9150(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1454@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF1460@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF146C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 384);
  v3 = *(v1 + 400);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1478@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 384);
  v3 = *(a1 + 400);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF14DC(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 400);
  *v3 = *(v1 + 384);
  *(v3 + 16) = v4;
  return sub_217EF1548;
}

void sub_217EF1548(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 384;
  sub_217EC935C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF1590@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF159C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217EF15A8@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 416);
  v3 = *(v1 + 432);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF15B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 416);
  v3 = *(a1 + 432);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1618(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 432);
  *v3 = *(v1 + 416);
  *(v3 + 16) = v4;
  return sub_217EF1684;
}

void sub_217EF1684(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 416;
  sub_217EC9564(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF16CC@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 448);
  v3 = *(v1 + 464);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF16D8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 448);
  v3 = *(a1 + 464);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF173C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 464);
  *v3 = *(v1 + 448);
  *(v3 + 16) = v4;
  return sub_217EF17A8;
}

void sub_217EF17A8(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 448;
  sub_217EC976C(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

__n128 sub_217EF17F0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 480);
  v3 = *(v1 + 496);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF17FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 480);
  v3 = *(a1 + 496);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF1860(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 496);
  *v3 = *(v1 + 480);
  *(v3 + 16) = v4;
  return sub_217EF18CC;
}

void sub_217EF18CC(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 480;
  sub_217EC9974(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double sub_217EF1914@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_217EF1920@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_217EF192C@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 512);
  v3 = *(v1 + 528);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_217EF1938@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a1 + 512);
  v3 = *(a1 + 528);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void (*sub_217EF199C(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  v4 = *(v1 + 528);
  *v3 = *(v1 + 512);
  *(v3 + 16) = v4;
  return sub_217EF1A08;
}

void sub_217EF1A08(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4) + 512;
  sub_217EC9B88(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_217EF1A50(char a1)
{
  result = 0x52656C6369747261;
  switch(a1)
  {
    case 1:
      result = 0x53656C6369747261;
      break;
    case 2:
      result = 0x56656C6369747261;
      break;
    case 3:
      result = 0x656B696C736964;
      break;
    case 4:
      result = 0x7765695664656566;
      break;
    case 5:
      result = 0x776F6C6C6F66;
      break;
    case 6:
      result = 0x65726F6E6769;
      break;
    case 7:
      result = 1701538156;
      break;
    case 8:
      result = 1702131053;
      break;
    case 9:
      result = 0x6465766173;
      break;
    case 10:
      result = 0x6572616873;
      break;
    case 11:
      result = 0x61547374726F7073;
      break;
    case 12:
      result = 0x6E69466B63617274;
      break;
    case 13:
      result = 0x73694C6B63617274;
      break;
    case 14:
      result = 0x7369566B63617274;
      break;
    case 15:
      result = 0x776F6C6C6F666E75;
      break;
    case 16:
      result = 0x6574756D6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217EF1C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F031BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EF1C78(uint64_t a1)
{
  v2 = sub_217EF8640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF1CB4(uint64_t a1)
{
  v2 = sub_217EF8640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF1CF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D18, &qword_217F52770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = v3[2];
  v60 = v3[3];
  v61 = v11;
  v12 = v3[4];
  v58 = v3[5];
  v59 = v12;
  v13 = v3[6];
  v56 = v3[7];
  v57 = v13;
  v14 = v3[8];
  v54 = v3[9];
  v55 = v14;
  v15 = v3[10];
  v52 = v3[11];
  v53 = v15;
  v16 = v3[12];
  v50 = v3[13];
  v51 = v16;
  v17 = v3[14];
  v48 = v3[15];
  v49 = v17;
  v18 = v3[16];
  v46 = v3[17];
  v47 = v18;
  v19 = v3[18];
  v44 = v3[19];
  v45 = v19;
  v20 = v3[20];
  v42 = v3[21];
  v43 = v20;
  v21 = v3[22];
  v40 = v3[23];
  v41 = v21;
  v22 = v3[24];
  v38 = v3[25];
  v39 = v22;
  v23 = v3[26];
  v36 = v3[27];
  v37 = v23;
  v24 = v3[28];
  v34 = v3[29];
  v35 = v24;
  v25 = v3[30];
  v32 = v3[31];
  v33 = v25;
  v26 = v3[32];
  v30 = v3[33];
  v31 = v26;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8640();
  sub_217F4B294();
  v28 = v3[1];
  v62 = *v3;
  v63 = v28;
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D28, &qword_217F52778);
  sub_217EF8694(&qword_27CBF6D30, &qword_27CBF6D28, &qword_217F52778);
  sub_217F4B0C4();
  if (!v2)
  {
    v62 = v61;
    v63 = v60;
    v64 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D38, &qword_217F52780);
    sub_217EF8694(&qword_27CBF6D40, &qword_27CBF6D38, &qword_217F52780);
    sub_217F4B0C4();
    v62 = v59;
    v63 = v58;
    v64 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D48, &qword_217F52788);
    sub_217EF8694(&qword_27CBF6D50, &qword_27CBF6D48, &qword_217F52788);
    sub_217F4B0C4();
    v62 = v57;
    v63 = v56;
    v64 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D58, &qword_217F52790);
    sub_217EF8694(&qword_27CBF6D60, &qword_27CBF6D58, &qword_217F52790);
    sub_217F4B0C4();
    v62 = v55;
    v63 = v54;
    v64 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D68, &qword_217F52798);
    sub_217EF8694(&qword_27CBF6D70, &qword_27CBF6D68, &qword_217F52798);
    sub_217F4B0C4();
    v62 = v53;
    v63 = v52;
    v64 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D78, &qword_217F527A0);
    sub_217EF8694(&qword_27CBF6D80, &qword_27CBF6D78, &qword_217F527A0);
    sub_217F4B0C4();
    v62 = v51;
    v63 = v50;
    v64 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D88, &qword_217F527A8);
    sub_217EF8694(&qword_27CBF6D90, &qword_27CBF6D88, &qword_217F527A8);
    sub_217F4B0C4();
    v62 = v49;
    v63 = v48;
    v64 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D98, &qword_217F527B0);
    sub_217EF8694(&qword_27CBF6DA0, &qword_27CBF6D98, &qword_217F527B0);
    sub_217F4B0C4();
    v62 = v47;
    v63 = v46;
    v64 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DA8, &qword_217F527B8);
    sub_217EF8694(&qword_27CBF6DB0, &qword_27CBF6DA8, &qword_217F527B8);
    sub_217F4B0C4();
    v62 = v45;
    v63 = v44;
    v64 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DB8, &qword_217F527C0);
    sub_217EF8694(&qword_27CBF6DC0, &qword_27CBF6DB8, &qword_217F527C0);
    sub_217F4B0C4();
    v62 = v43;
    v63 = v42;
    v64 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DC8, &qword_217F527C8);
    sub_217EF8694(&qword_27CBF6DD0, &qword_27CBF6DC8, &qword_217F527C8);
    sub_217F4B0C4();
    v62 = v41;
    v63 = v40;
    v64 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DD8, &qword_217F527D0);
    sub_217EF8694(&qword_27CBF6DE0, &qword_27CBF6DD8, &qword_217F527D0);
    sub_217F4B0C4();
    v62 = v39;
    v63 = v38;
    v64 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DE8, &qword_217F527D8);
    sub_217EF8694(&qword_27CBF6DF0, &qword_27CBF6DE8, &qword_217F527D8);
    sub_217F4B0C4();
    v62 = v37;
    v63 = v36;
    v64 = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DF8, &qword_217F527E0);
    sub_217EF8694(&qword_27CBF6E00, &qword_27CBF6DF8, &qword_217F527E0);
    sub_217F4B0C4();
    v62 = v35;
    v63 = v34;
    v64 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E08, &qword_217F527E8);
    sub_217EF8694(&qword_27CBF6E10, &qword_27CBF6E08, &qword_217F527E8);
    sub_217F4B0C4();
    v62 = v33;
    v63 = v32;
    v64 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E18, &qword_217F527F0);
    sub_217EF8694(&qword_27CBF6E20, &qword_27CBF6E18, &qword_217F527F0);
    sub_217F4B0C4();
    v62 = v31;
    v63 = v30;
    v64 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E28, &qword_217F527F8);
    sub_217EF8694(&qword_27CBF6E30, &qword_27CBF6E28, &qword_217F527F8);
    sub_217F4B0C4();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_217EF2824@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E38, &qword_217F52800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF8640();
  sub_217F4B274();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D28, &qword_217F52778);
    v64 = 0;
    sub_217EF8694(&qword_27CBF6E40, &qword_27CBF6D28, &qword_217F52778);
    sub_217F4AFC4();
    v60 = v62;
    v61 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D38, &qword_217F52780);
    v64 = 1;
    sub_217EF8694(&qword_27CBF6E48, &qword_27CBF6D38, &qword_217F52780);
    sub_217F4AFC4();
    v58 = v62;
    v59 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D48, &qword_217F52788);
    v64 = 2;
    sub_217EF8694(&qword_27CBF6E50, &qword_27CBF6D48, &qword_217F52788);
    sub_217F4AFC4();
    v56 = v62;
    v57 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D58, &qword_217F52790);
    v64 = 3;
    sub_217EF8694(&qword_27CBF6E58, &qword_27CBF6D58, &qword_217F52790);
    sub_217F4AFC4();
    v54 = v62;
    v55 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D68, &qword_217F52798);
    v64 = 4;
    sub_217EF8694(&qword_27CBF6E60, &qword_27CBF6D68, &qword_217F52798);
    sub_217F4AFC4();
    v53 = v63;
    v52 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D78, &qword_217F527A0);
    v64 = 5;
    sub_217EF8694(&qword_27CBF6E68, &qword_27CBF6D78, &qword_217F527A0);
    sub_217F4AFC4();
    v51 = v63;
    v50 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D88, &qword_217F527A8);
    v64 = 6;
    sub_217EF8694(&qword_27CBF6E70, &qword_27CBF6D88, &qword_217F527A8);
    sub_217F4AFC4();
    v49 = v63;
    v48 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6D98, &qword_217F527B0);
    v64 = 7;
    sub_217EF8694(&qword_27CBF6E78, &qword_27CBF6D98, &qword_217F527B0);
    sub_217F4AFC4();
    v47 = v63;
    v46 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DA8, &qword_217F527B8);
    v64 = 8;
    sub_217EF8694(&qword_27CBF6E80, &qword_27CBF6DA8, &qword_217F527B8);
    sub_217F4AFC4();
    v45 = v63;
    v44 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DB8, &qword_217F527C0);
    v64 = 9;
    sub_217EF8694(&qword_27CBF6E88, &qword_27CBF6DB8, &qword_217F527C0);
    sub_217F4AFC4();
    v43 = v63;
    v42 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DC8, &qword_217F527C8);
    v64 = 10;
    sub_217EF8694(&qword_27CBF6E90, &qword_27CBF6DC8, &qword_217F527C8);
    sub_217F4AFC4();
    v41 = v63;
    v40 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DD8, &qword_217F527D0);
    v64 = 11;
    sub_217EF8694(&qword_27CBF6E98, &qword_27CBF6DD8, &qword_217F527D0);
    sub_217F4AFC4();
    v39 = v63;
    v38 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DE8, &qword_217F527D8);
    v64 = 12;
    sub_217EF8694(&qword_27CBF6EA0, &qword_27CBF6DE8, &qword_217F527D8);
    sub_217F4AFC4();
    v37 = v63;
    v36 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6DF8, &qword_217F527E0);
    v64 = 13;
    sub_217EF8694(&qword_27CBF6EA8, &qword_27CBF6DF8, &qword_217F527E0);
    sub_217F4AFC4();
    v35 = v63;
    v34 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E08, &qword_217F527E8);
    v64 = 14;
    sub_217EF8694(&qword_27CBF6EB0, &qword_27CBF6E08, &qword_217F527E8);
    sub_217F4AFC4();
    v33 = v63;
    v32 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E18, &qword_217F527F0);
    v64 = 15;
    sub_217EF8694(&qword_27CBF6EB8, &qword_27CBF6E18, &qword_217F527F0);
    sub_217F4AFC4();
    v31 = v63;
    v30 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6E28, &qword_217F527F8);
    v64 = 16;
    sub_217EF8694(&qword_27CBF6EC0, &qword_27CBF6E28, &qword_217F527F8);
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v13 = v61;
    *a2 = v60;
    a2[1] = v13;
    v14 = v59;
    a2[2] = v58;
    a2[3] = v14;
    v15 = v57;
    a2[4] = v56;
    a2[5] = v15;
    v16 = v55;
    a2[6] = v54;
    a2[7] = v16;
    v17 = v53;
    a2[8] = v52;
    a2[9] = v17;
    v18 = v51;
    a2[10] = v50;
    a2[11] = v18;
    v19 = v49;
    a2[12] = v48;
    a2[13] = v19;
    v20 = v47;
    a2[14] = v46;
    a2[15] = v20;
    v21 = v45;
    a2[16] = v44;
    a2[17] = v21;
    v22 = v43;
    a2[18] = v42;
    a2[19] = v22;
    v23 = v41;
    a2[20] = v40;
    a2[21] = v23;
    v24 = v39;
    a2[22] = v38;
    a2[23] = v24;
    v25 = v37;
    a2[24] = v36;
    a2[25] = v25;
    v26 = v35;
    a2[26] = v34;
    a2[27] = v26;
    v27 = v33;
    a2[28] = v32;
    a2[29] = v27;
    v28 = v31;
    a2[30] = v30;
    a2[31] = v28;
    v29 = v63;
    a2[32] = v62;
    a2[33] = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217EF340C@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 sub_217EF3418@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t sub_217EF3440()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_217EF3478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000019 && 0x8000000217F60010 == a2;
  if (v5 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F60030 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EF3568(uint64_t a1)
{
  v2 = sub_217EF86DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF35A4(uint64_t a1)
{
  v2 = sub_217EF86DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF35E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6EC8, &qword_217F52808);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF86DC();
  sub_217F4B294();
  v18 = v10;
  v19 = v11;
  v17 = 0;
  sub_217EA2F7C();
  sub_217F4B0C4();
  if (!v2)
  {
    v18 = v12;
    v19 = v13;
    v17 = 1;
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217EF379C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6ED8, &qword_217F52810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF86DC();
  sub_217F4B274();
  if (!v2)
  {
    v16 = 0;
    sub_217EA2F24();
    sub_217F4AFC4();
    v12 = v15;
    v16 = 1;
    sub_217F4AFC4();
    (*(v6 + 8))(v10, v5);
    v13 = v15;
    *a2 = v12;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217EF39AC()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EF39F4()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EF3A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736B63696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_217F4B144() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217F4B144();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217EF3B20(uint64_t a1)
{
  v2 = sub_217EF8730();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF3B5C(uint64_t a1)
{
  v2 = sub_217EF8730();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF3BDC(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v18 - v11;
  v14 = *v4;
  v13 = v4[1];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_217F4B294();
  v20 = 0;
  v16 = v18[1];
  sub_217F4B0A4();
  if (!v16)
  {
    v19 = 1;
    sub_217F4B0A4();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_217EF3DB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, void *a5@<X8>)
{
  v22 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_217F4B274();
  if (!v5)
  {
    v15 = v21;
    v14 = v22;
    v24 = 0;
    sub_217F4AFA4();
    v17 = v16;
    v23 = 1;
    sub_217F4AFA4();
    v19 = v18;
    (*(v15 + 8))(v12, v8);
    *v14 = v17;
    v14[1] = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_217EF3F94()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217EF3FDC()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

unint64_t sub_217EF4020()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD000000000000015;
  if (v2 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD00000000000001ALL;
  if (v2 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_217EF40DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F03714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217EF411C(uint64_t a1)
{
  v2 = sub_217EF8784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217EF4158(uint64_t a1)
{
  v2 = sub_217EF8784();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217EF4194(uint64_t a1, uint64_t a2)
{
  v37 = v3;
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6EF8, &qword_217F52828);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v29 = *(v4 + 17);
  v30 = v13;
  v14 = *(v4 + 18);
  v15 = v4[3];
  v28 = v4[4];
  memcpy(v36, v4 + 5, 0x780uLL);
  v16 = v4[376];
  v26 = v4[377];
  v27 = v16;
  v17 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_217EF8784();
  sub_217F4B294();
  v35[0] = v11;
  v35[1] = v12;
  LOBYTE(v35[2]) = v30;
  BYTE1(v35[2]) = v29;
  BYTE2(v35[2]) = v14;
  v18 = v10;
  v35[3] = v15;
  v35[4] = v28;
  v34[0] = 0;
  sub_217EF87D8();
  v19 = v37;
  sub_217F4B0C4();
  if (v19)
  {
    return (*(v31 + 8))(v10, v6);
  }

  v21 = v26;
  v22 = v27;
  v23 = v31;
  memcpy(v35, v36, sizeof(v35));
  v34[1927] = 1;
  sub_217EB4358(v36, v34);
  sub_217EB5C64();
  sub_217F4B0C4();
  memcpy(v34, v35, 0x780uLL);
  sub_217EB5CB8(v34);
  memcpy(v33, v4 + 245, 0x3CBuLL);
  v32 = 2;
  sub_217EF882C();
  sub_217F4B0C4();
  v24 = *(v4 + 373);
  v33[2] = *(v4 + 371);
  v33[3] = v24;
  *&v33[4] = v4[375];
  v25 = *(v4 + 369);
  v33[0] = *(v4 + 367);
  v33[1] = v25;
  v32 = 3;
  sub_217EF8880();
  sub_217F4B0C4();
  *&v33[0] = v22;
  v32 = 4;
  sub_217EF88D4();

  sub_217F4B0C4();

  *&v33[0] = v21;
  v32 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6F28, &qword_217F52830);
  sub_217EF8928(&qword_280C276D8, sub_217EF89AC);
  sub_217F4B0C4();
  memcpy(v33, v4 + 378, 0x238uLL);
  v32 = 6;
  sub_217EF8A00();
  sub_217F4B0C4();
  return (*(v23 + 8))(v18, v6);
}

uint64_t sub_217EF45C4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6F38, &qword_217F52838);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - v10;
  v12 = v3[3];
  v13 = v3[4];
  v65 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v12);
  sub_217EF8784();
  sub_217F4B274();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v33 = v5;
  v34 = v7;
  v35[0] = 0;
  sub_217EF8A54();
  v14 = v6;
  sub_217F4AFC4();
  v15 = v36;
  v16 = v37;
  v32 = v38;
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v59[975] = 1;
  sub_217EB5B20();
  sub_217F4AFC4();
  v28 = v20;
  v29 = v19;
  v30 = v17;
  v31 = v18;
  memcpy(v64, v60, sizeof(v64));
  v58 = 2;
  sub_217EF8AA8();
  sub_217F4AFC4();
  memcpy(v63, v59, sizeof(v63));
  v52[575] = 3;
  sub_217EF8AFC();
  sub_217F4AFC4();
  *&v62[21] = v54;
  *&v62[37] = v55;
  *&v62[53] = v56;
  *&v62[69] = v57;
  *&v62[5] = v53;
  v35[0] = 4;
  sub_217EF8B50();
  sub_217F4AFC4();
  v21 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF6F28, &qword_217F52830);
  v35[0] = 5;
  sub_217EF8928(&qword_27CBF6F60, sub_217EF8BA4);
  sub_217F4AFC4();
  v22 = v34;
  v23 = v36;
  v51[575] = 6;
  sub_217EF8BF8();
  sub_217F4AFC4();
  (*(v22 + 8))(v11, v14);
  memcpy(v61, v52, sizeof(v61));
  *v35 = v15;
  *&v35[8] = v16;
  LOBYTE(v22) = v32;
  v35[16] = v32;
  LOBYTE(v14) = v30;
  v35[17] = v30;
  v35[18] = v31;
  v25 = v28;
  v24 = v29;
  *&v35[24] = v29;
  *&v35[32] = v28;
  memcpy(&v35[40], v64, 0x780uLL);
  memcpy(&v35[1960], v63, 0x3CBuLL);
  *&v35[2963] = *&v62[32];
  *&v35[2979] = *&v62[48];
  *&v35[2931] = *v62;
  *&v35[2947] = *&v62[16];
  *&v35[2992] = *&v62[61];
  *&v35[3008] = v21;
  *&v35[3016] = v23;
  memcpy(&v35[3024], v52, 0x238uLL);
  memcpy(v33, v35, 0xE08uLL);
  sub_217EF8C4C(v35, &v36);
  __swift_destroy_boxed_opaque_existential_1(v65);
  v36 = v15;
  v37 = v16;
  v38 = v22;
  v39 = v14;
  v40 = v31;
  v41 = v24;
  v42 = v25;
  memcpy(v43, v64, sizeof(v43));
  memcpy(v44, v63, sizeof(v44));
  v47 = *&v62[32];
  *v48 = *&v62[48];
  v45 = *v62;
  v46 = *&v62[16];
  *&v48[13] = *&v62[61];
  v49 = v21;
  v50 = v23;
  memcpy(v51, v61, 0x238uLL);
  return sub_217EF8C84(&v36);
}

void sub_217EF4CA4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1, a2);
  v3 = v2;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_217ECBBB8(MEMORY[0x277D84F90]);
  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  v6 = xmmword_280C27E78;
  v7 = qword_280C27E88;
  v8 = qword_280C27E90;
  v9 = qword_280C27E98;
  v51[0] = 0;
  v51[1] = v4;
  v52 = xmmword_280C27E78;
  v53 = qword_280C27E88;
  v54 = qword_280C27E90;
  v55 = qword_280C27E98;
  v56 = v4;

  v57 = 1;
  *__src = 0;
  *&__src[8] = xmmword_280C27E78;
  *&__src[24] = qword_280C27E88;
  *&__src[32] = qword_280C27E90;
  *&__src[40] = qword_280C27E98;
  *&__src[48] = 0;
  *&__src[56] = xmmword_280C27E78;
  *&__src[72] = qword_280C27E88;
  *&__src[80] = qword_280C27E90;
  *&__src[88] = qword_280C27E98;
  *&__src[96] = 0;
  *&__src[104] = xmmword_280C27E78;
  *&__src[120] = qword_280C27E88;
  *&__src[128] = qword_280C27E90;
  *&__src[136] = qword_280C27E98;
  *&__src[144] = v5;
  *&__src[152] = 0;
  *&__src[160] = xmmword_280C27E78;
  *&__src[176] = qword_280C27E88;
  *&__src[184] = qword_280C27E90;
  *&__src[192] = qword_280C27E98;
  *&__src[200] = 0;
  *&__src[208] = xmmword_280C27E78;
  *&__src[224] = qword_280C27E88;
  *&__src[232] = qword_280C27E90;
  *&__src[240] = qword_280C27E98;
  *&__src[248] = 0;
  *&__src[256] = xmmword_280C27E78;
  *&__src[272] = qword_280C27E88;
  *&__src[280] = qword_280C27E90;
  *&__src[288] = qword_280C27E98;
  *&__src[296] = 0;
  *&__src[304] = v4;
  *&__src[312] = v6;
  *&__src[328] = v7;
  *&__src[336] = v8;
  *&__src[344] = v9;
  *&__src[352] = v4;
  v58[0] = *&__src[296];
  v58[1] = v6;
  v58[2] = *&__src[328];
  v58[3] = *&__src[344];
  sub_217EB2994(v51, v65);
  sub_217EB2994(v51, v65);
  sub_217F03AD0(v58, &qword_27CBF5C28, &unk_217F52840);
  *&__src[296] = 0;
  *&__src[304] = v4;
  *&__src[312] = v6;
  *&__src[328] = v7;
  *&__src[336] = v8;
  *&__src[344] = v9;
  *&__src[352] = v4;
  sub_217EBDC08(v51);
  *&__src[360] = 0x3FF0000000000000;
  *&__src[368] = 1;
  v10 = MEMORY[0x277D84FA0];
  *&__src[376] = MEMORY[0x277D84FA0];

  sub_217EBD9B4(1, v10, 1.0);
  memset(&__src[384], 0, 49);
  v11 = v57;
  __src[433] = v57;
  memcpy(__dst, __src, sizeof(__dst));
  v12 = sub_217ECBBB8(v4);
  v13 = xmmword_280C27E78;
  v14 = qword_280C27E88;
  v15 = qword_280C27E90;
  v16 = qword_280C27E98;
  v45[0] = 0;
  v45[1] = v4;
  v46 = xmmword_280C27E78;
  v47 = qword_280C27E88;
  v48 = qword_280C27E90;
  v49 = qword_280C27E98;
  v50 = v4;

  *v31 = 0;
  *&v31[8] = xmmword_280C27E78;
  *&v31[24] = qword_280C27E88;
  *&v31[32] = qword_280C27E90;
  *&v31[40] = qword_280C27E98;
  *&v31[48] = 0;
  *&v31[56] = xmmword_280C27E78;
  *&v31[72] = qword_280C27E88;
  *&v31[80] = qword_280C27E90;
  *&v31[88] = qword_280C27E98;
  *&v31[96] = 0;
  *&v31[104] = xmmword_280C27E78;
  *&v31[120] = qword_280C27E88;
  *&v31[128] = qword_280C27E90;
  *&v31[136] = qword_280C27E98;
  *&v31[144] = v12;
  *&v31[152] = 0;
  *&v31[160] = xmmword_280C27E78;
  *&v31[176] = qword_280C27E88;
  *&v31[184] = qword_280C27E90;
  *&v31[192] = qword_280C27E98;
  *&v31[200] = 0;
  *&v31[208] = xmmword_280C27E78;
  *&v31[224] = qword_280C27E88;
  *&v31[232] = qword_280C27E90;
  *&v31[240] = qword_280C27E98;
  *&v31[248] = 0;
  *&v31[256] = xmmword_280C27E78;
  *&v31[272] = qword_280C27E88;
  *&v31[280] = qword_280C27E90;
  *&v31[288] = qword_280C27E98;
  *&v31[296] = 0;
  *&v31[304] = v4;
  *&v31[312] = v13;
  *&v31[328] = v14;
  *&v31[336] = v15;
  *&v31[344] = v16;
  *&v31[352] = v4;
  v60[0] = *&v31[296];
  v60[3] = *&v31[344];
  v60[2] = *&v31[328];
  v60[1] = v13;
  sub_217EB2994(v45, v65);
  sub_217EB2994(v45, v65);
  sub_217F03AD0(v60, &qword_27CBF5C30, &qword_217F52058);
  *&v31[296] = 0;
  *&v31[304] = v4;
  *&v31[312] = v13;
  *&v31[328] = v14;
  *&v31[336] = v15;
  *&v31[344] = v16;
  *&v31[352] = v4;
  sub_217EBD714(v45);
  *&v31[360] = 0x3FF0000000000000;
  *&v31[368] = 1;
  *&v31[376] = v10;

  sub_217EBD4C0(1, v10, 1.0);
  memset(&v31[384], 0, 49);
  v31[433] = v11;
  memcpy(v61, v31, sizeof(v61));
  v17 = sub_217ECBCB4(v4);
  v18 = sub_217ECBBB8(v4);
  v19 = xmmword_280C27E78;
  v20 = qword_280C27E88;
  v21 = qword_280C27E90;
  v22 = qword_280C27E98;
  v39[0] = 0;
  v39[1] = v4;
  v40 = xmmword_280C27E78;
  v41 = qword_280C27E88;
  v42 = qword_280C27E90;
  v43 = qword_280C27E98;
  v44 = v4;

  *v30 = 0;
  *&v30[8] = xmmword_280C27E78;
  *&v30[24] = qword_280C27E88;
  *&v30[32] = qword_280C27E90;
  *&v30[40] = qword_280C27E98;
  *&v30[48] = 0;
  *&v30[56] = xmmword_280C27E78;
  *&v30[72] = qword_280C27E88;
  *&v30[80] = qword_280C27E90;
  *&v30[88] = qword_280C27E98;
  *&v30[96] = 0;
  *&v30[104] = xmmword_280C27E78;
  *&v30[120] = qword_280C27E88;
  *&v30[128] = qword_280C27E90;
  *&v30[136] = qword_280C27E98;
  *&v30[144] = v18;
  *&v30[152] = 0;
  *&v30[160] = xmmword_280C27E78;
  *&v30[176] = qword_280C27E88;
  *&v30[184] = qword_280C27E90;
  *&v30[192] = qword_280C27E98;
  *&v30[200] = 0;
  *&v30[208] = xmmword_280C27E78;
  *&v30[224] = qword_280C27E88;
  *&v30[232] = qword_280C27E90;
  *&v30[240] = qword_280C27E98;
  *&v30[248] = 0;
  *&v30[256] = xmmword_280C27E78;
  *&v30[272] = qword_280C27E88;
  *&v30[280] = qword_280C27E90;
  *&v30[288] = qword_280C27E98;
  *&v30[296] = 0;
  *&v30[304] = v4;
  *&v30[312] = v19;
  *&v30[328] = v20;
  *&v30[336] = v21;
  *&v30[344] = v22;
  *&v30[352] = v4;
  v62[0] = *&v30[296];
  v62[3] = *&v30[344];
  v62[2] = *&v30[328];
  v62[1] = v19;
  sub_217EB2994(v39, v65);
  sub_217EB2994(v39, v65);
  sub_217F03AD0(v62, &qword_27CBF5C38, qword_217F52850);
  *&v30[296] = 0;
  *&v30[304] = v4;
  *&v30[312] = v19;
  *&v30[328] = v20;
  *&v30[336] = v21;
  *&v30[344] = v22;
  *&v30[352] = v4;
  sub_217EBD21C(v39);
  *&v30[360] = 0x3FF0000000000000;
  *&v30[368] = 1;
  *&v30[376] = v10;

  sub_217EBCFC8(1, v10, 1.0);
  memset(&v30[384], 0, 49);
  v23 = v57;
  v30[433] = v57;
  memcpy(v63, v30, sizeof(v63));
  v24 = sub_217ECBBB8(v4);
  v25 = xmmword_280C27E78;
  v26 = qword_280C27E88;
  v27 = qword_280C27E90;
  v28 = qword_280C27E98;
  v33[0] = 0;
  v33[1] = v4;
  v34 = xmmword_280C27E78;
  v35 = qword_280C27E88;
  v36 = qword_280C27E90;
  v37 = qword_280C27E98;
  v38 = v4;

  *v29 = 0;
  *&v29[8] = xmmword_280C27E78;
  *&v29[24] = qword_280C27E88;
  *&v29[32] = qword_280C27E90;
  *&v29[40] = qword_280C27E98;
  *&v29[48] = 0;
  *&v29[56] = xmmword_280C27E78;
  *&v29[72] = qword_280C27E88;
  *&v29[80] = qword_280C27E90;
  *&v29[88] = qword_280C27E98;
  *&v29[96] = 0;
  *&v29[104] = xmmword_280C27E78;
  *&v29[120] = qword_280C27E88;
  *&v29[128] = qword_280C27E90;
  *&v29[136] = qword_280C27E98;
  *&v29[144] = v24;
  *&v29[152] = 0;
  *&v29[160] = xmmword_280C27E78;
  *&v29[176] = qword_280C27E88;
  *&v29[184] = qword_280C27E90;
  *&v29[192] = qword_280C27E98;
  *&v29[200] = 0;
  *&v29[208] = xmmword_280C27E78;
  *&v29[224] = qword_280C27E88;
  *&v29[232] = qword_280C27E90;
  *&v29[240] = qword_280C27E98;
  *&v29[248] = 0;
  *&v29[256] = xmmword_280C27E78;
  *&v29[272] = qword_280C27E88;
  *&v29[280] = qword_280C27E90;
  *&v29[288] = qword_280C27E98;
  *&v29[296] = 0;
  *&v29[304] = v4;
  *&v29[312] = v25;
  *&v29[328] = v26;
  *&v29[336] = v27;
  *&v29[344] = v28;
  *&v29[352] = v4;
  v64[0] = *&v29[296];
  v64[3] = *&v29[344];
  v64[2] = *&v29[328];
  v64[1] = v25;
  sub_217EB2994(v33, v65);
  sub_217EB2994(v33, v65);
  sub_217F03AD0(v64, &qword_27CBF5C40, &unk_217F52060);
  *&v29[296] = 0;
  *&v29[304] = v4;
  *&v29[312] = v25;
  *&v29[328] = v26;
  *&v29[336] = v27;
  *&v29[344] = v28;
  *&v29[352] = v4;
  sub_217EBCD28(v33);
  *&v29[360] = 0x3FF0000000000000;
  *&v29[368] = 1;
  *&v29[376] = v10;

  sub_217EBCAD4(1, v10, 1.0);
  memset(&v29[384], 0, 49);
  v29[433] = v23;
  memcpy(v65, v29, 0x1B2uLL);
  memcpy(v3, __dst, 0x1B2uLL);
  memcpy((v3 + 440), v61, 0x1B2uLL);
  *(v3 + 880) = 0;
  sub_217EBAE6C(0.0);
  *(v3 + 888) = 1;
  *(v3 + 904) = 0;
  *(v3 + 896) = v17;
  *(v3 + 912) = 0;
  *(v3 + 920) = 0;
  *(v3 + 928) = 0;
  sub_217EBB1F4(0.0);
  *(v3 + 936) = 0;
  sub_217EBB3BC(0.0);
  *(v3 + 952) = 0;
  *(v3 + 944) = 0;
  sub_217EBB73C(0.0);
  *(v3 + 960) = 0;
  sub_217EBB900(0.0);
  memcpy((v3 + 968), v63, 0x1B2uLL);
  *(v3 + 1408) = 0;
  sub_217EBBAC4(0.0);
  *(v3 + 1416) = 0;
  sub_217EBBC98(0.0);
  *(v3 + 1432) = 0;
  *(v3 + 1424) = 0;
  sub_217EBC024(0.0);
  memcpy((v3 + 1440), v65, 0x1B2uLL);
  *(v3 + 1880) = 0;
  sub_217EBC1F0(0.0);
  *(v3 + 1888) = 0;
  sub_217EBC3B4(0.0);
  *(v3 + 1896) = 0;
  sub_217EBC578(0.0);
  *(v3 + 1904) = 0;
  sub_217EBC73C(0.0);
  *(v3 + 1912) = 0;
  sub_217EBC90C(0.0);
}

unint64_t sub_217EF5584()
{
  result = qword_27CBF5D50;
  if (!qword_27CBF5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D50);
  }

  return result;
}

unint64_t sub_217EF55D8()
{
  result = qword_27CBF5D58;
  if (!qword_27CBF5D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D58);
  }

  return result;
}

unint64_t sub_217EF562C()
{
  result = qword_27CBF5D68;
  if (!qword_27CBF5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5D60, &qword_217F5A320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D68);
  }

  return result;
}

unint64_t sub_217EF56B0()
{
  result = qword_27CBF5D78;
  if (!qword_27CBF5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D78);
  }

  return result;
}

unint64_t sub_217EF5704()
{
  result = qword_27CBF5D80;
  if (!qword_27CBF5D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5D60, &qword_217F5A320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D80);
  }

  return result;
}

BOOL sub_217EF57C8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (*(a1 + 48))
  {
    return (*(a2 + 48) & 1) != 0;
  }

  return (*(a2 + 48) & 1) == 0 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
}

uint64_t sub_217EF5840(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v9 = *(a1 + 16);
  v10 = *(a1 + 32);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  if ((sub_217ED78C0(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, v7), vceqq_f64(v10, v8)))) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_217ED791C(v3, v5);
}

uint64_t sub_217EF590C(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x1B2uLL);
  memcpy(v61, __src + 440, 0x1B2uLL);
  v4 = *(__src + 110);
  v5 = __src[888];
  v6 = *(__src + 112);
  v53 = *(__src + 114);
  v46 = __src[920];
  v47 = __src[904];
  v45 = __src[921];
  v56 = *(__src + 116);
  v52 = *(__src + 117);
  v44 = *(__src + 118);
  v55 = *(__src + 119);
  v54 = *(__src + 120);
  memcpy(v59, __src + 968, 0x1B2uLL);
  v7 = *(__src + 176);
  v8 = *(__src + 177);
  v42 = *(__src + 178);
  v40 = *(__src + 179);
  memcpy(v57, __src + 1440, 0x1B2uLL);
  v9 = (__src + 1880);
  v39 = *(__src + 239);
  memcpy(v64, a2, 0x1B2uLL);
  memcpy(v62, (a2 + 440), 0x1B2uLL);
  v10 = *(a2 + 880);
  v11 = *(a2 + 888);
  v12 = *(a2 + 896);
  v13 = *(a2 + 904);
  v14 = *(a2 + 912);
  v15 = *(a2 + 920);
  v16 = *(a2 + 921);
  v51 = *(a2 + 928);
  v48 = *(a2 + 936);
  v43 = *(a2 + 944);
  v50 = *(a2 + 952);
  v49 = *(a2 + 960);
  memcpy(v60, (a2 + 968), 0x1B2uLL);
  v17 = *(a2 + 1408);
  v18 = *(a2 + 1416);
  v41 = *(a2 + 1424);
  v19 = *(a2 + 1432);
  memcpy(v58, (a2 + 1440), 0x1B2uLL);
  v37 = *v9;
  v38 = v9[1];
  v35 = *(a2 + 1880);
  v36 = *(a2 + 1896);
  v20 = *(a2 + 1912);
  if ((sub_217EDA6E4(__dst, v64) & 1) == 0)
  {
    return 0;
  }

  v21 = sub_217EDA6E4(v61, v62);
  result = 0;
  if ((v21 & 1) == 0 || v4 != v10)
  {
    return result;
  }

  if (!v5)
  {
    v24 = 0xE700000000000000;
    v23 = 0x6C616369706F74;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v5 != 1)
  {
    v23 = 0x6669737265766964;
    v24 = 0xEB00000000646569;
    if (!v11)
    {
      goto LABEL_13;
    }

LABEL_9:
    if (v11 == 1)
    {
      v25 = 0xEC00000064657A69;
      if (v23 != 0x6C616E6F73726570)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = 0xEB00000000646569;
      if (v23 != 0x6669737265766964)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  v23 = 0x6C616E6F73726570;
  v24 = 0xEC00000064657A69;
  if (v11)
  {
    goto LABEL_9;
  }

LABEL_13:
  v25 = 0xE700000000000000;
  if (v23 != 0x6C616369706F74)
  {
LABEL_18:
    v26 = sub_217F4B144();

    if (v26)
    {
      goto LABEL_19;
    }

    return 0;
  }

LABEL_16:
  if (v24 != v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  v27 = sub_217ED3B80(v6, v12);
  result = 0;
  v28.f64[0] = v56;
  v28.f64[1] = v52;
  v29.f64[0] = v55;
  v29.f64[1] = v54;
  v30.f64[0] = v51;
  v30.f64[1] = v48;
  v31.f64[0] = v50;
  v31.f64[1] = v49;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v28, v30), vceqq_f64(v29, v31)))) & 1) != 0 && ((v47 ^ v13) & 1) == 0 && ((v46 ^ v15) & 1) == 0 && ((v45 ^ v16) & 1) == 0 && (v27 & 1) != 0 && v53 == v14 && v44 == v43)
  {
    v32 = sub_217EDA6E4(v59, v60);
    result = 0;
    if ((v32 & 1) != 0 && v7 == v17 && v8 == v18 && v42 == v41 && v40 == v19)
    {
      v33 = sub_217EDA6E4(v57, v58);
      v34 = vmovn_s32(vuzp1q_s32(vceqq_f64(v37, v35), vceqq_f64(v38, v36)));
      v34.i16[0] = vminv_u16(v34);
      return v33 & v34.i32[0] & (v39 == v20);
    }
  }

  return result;
}

BOOL sub_217EF5D48(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 24), *(a2 + 24))))) & 1) != 0 && *(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

uint64_t sub_217EF5DA0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3.f64[1] = *(a1 + 16);
  v4.f64[1] = *(a2 + 16);
  v3.f64[0] = *a1;
  v4.f64[0] = *a2;
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v3, v4), vceqq_f64(*(a1 + 32), *(a2 + 32))), vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64))))))) & 1) == 0 && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && ((*(a1 + 97) ^ *(a2 + 97)) & 1) == 0)
  {
    v2 = *(a2 + 98) ^ *(a1 + 98) ^ 1;
  }

  return v2 & 1;
}

BOOL sub_217EF5E74(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

BOOL sub_217EF5EC4(unsigned __int8 *a1, unsigned __int8 *a2, double a3, double a4, int64x2_t a5)
{
  result = 0;
  a5.i64[0] = *(a1 + 5);
  v8 = *(a1 + 72);
  v9 = *(a1 + 56);
  v5.i64[0] = *(a2 + 5);
  v10 = *(a2 + 72);
  v11 = *(a2 + 56);
  v12 = vzip1q_s64(a5, v9);
  v13 = vextq_s8(v9, v8, 8uLL);
  *&v8.f64[0] = vdupq_laneq_s64(v8, 1).u64[0];
  v14 = vzip1q_s64(v5, v11);
  v15 = vextq_s8(v11, v10, 8uLL);
  *&v10.f64[0] = vdupq_laneq_s64(v10, 1).u64[0];
  v8.f64[1] = *(a1 + 11);
  v10.f64[1] = *(a2 + 11);
  v16 = vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), vuzp1q_s32(vceqq_f64(v12, v14), vceqq_f64(v13, v15))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(v8, v10), vceqq_f64(*(a1 + 6), *(a2 + 6))), vuzp1q_s32(vceqq_f64(*(a1 + 120), *(a2 + 120)), vceqq_f64(*(a1 + 136), *(a2 + 136)))))) & (*(a1 + 19) == *(a2 + 19)) & ~(*a1 ^ *a2);
  if (*(a1 + 21) != *(a2 + 21))
  {
    v16 = 0;
  }

  if (a1[48] == a2[48] && ((a1[112] ^ a2[112]) & 1) == 0 && v16 && ((a1[160] ^ a2[160]) & 1) == 0)
  {
    return *(a1 + 22) == *(a2 + 22);
  }

  return result;
}

uint64_t sub_217EF5FF4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 64);
  v6 = *(a1 + 104);
  v5 = *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v9 = *(a1 + 144);
  v10 = *(a1 + 152);
  v11 = *(a1 + 168);
  v12 = *(a1 + 288);
  v121 = *(a1 + 280);
  v13 = *(a1 + 360);
  v14 = *(a1 + 368);
  v15 = *(a1 + 528);
  v148 = *(a1 + 512);
  v149 = v15;
  v150 = *(a1 + 544);
  v151 = *(a1 + 560);
  v16 = *(a1 + 464);
  v144 = *(a1 + 448);
  v145 = v16;
  v17 = *(a1 + 496);
  v146 = *(a1 + 480);
  v147 = v17;
  v18 = *(a1 + 400);
  v140 = *(a1 + 384);
  v141 = v18;
  v19 = *(a1 + 432);
  v142 = *(a1 + 416);
  v143 = v19;
  v21 = *(a1 + 600);
  v20 = *(a1 + 616);
  v23 = *(a1 + 568);
  v22 = *(a1 + 584);
  v25 = *(a1 + 632);
  v24 = *(a1 + 648);
  v26 = *(a1 + 664);
  v27 = *(a1 + 680);
  v28 = *(a1 + 936);
  v29 = *(a1 + 952);
  v30 = *(a1 + 904);
  v155 = *(a1 + 920);
  v156 = v28;
  v157[0] = v29;
  *(v157 + 15) = *(a1 + 967);
  v31 = *(a1 + 888);
  v152 = *(a1 + 872);
  v153 = v31;
  v154 = v30;
  v32 = *(a2 + 64);
  v34 = *(a2 + 104);
  v33 = *(a2 + 112);
  v35 = *(a2 + 120);
  v36 = *(a2 + 144);
  v120 = *(a1 + 344);
  v119 = *(a1 + 328);
  v117 = *(a1 + 312);
  v115 = *(a1 + 296);
  v118 = *(a2 + 344);
  v116 = *(a2 + 328);
  v114 = *(a2 + 312);
  v113 = *(a2 + 296);
  v37 = *(a2 + 368);
  v38 = *(a2 + 432);
  v160 = *(a2 + 416);
  v161 = v38;
  v39 = *(a2 + 400);
  v158 = *(a2 + 384);
  v159 = v39;
  v40 = *(a2 + 496);
  v164 = *(a2 + 480);
  v165 = v40;
  v41 = *(a2 + 464);
  v162 = *(a2 + 448);
  v163 = v41;
  v169 = *(a2 + 560);
  v168 = *(a2 + 544);
  v42 = *(a2 + 528);
  v166 = *(a2 + 512);
  v167 = v42;
  v44 = *(a2 + 600);
  v43 = *(a2 + 616);
  v46 = *(a2 + 568);
  v45 = *(a2 + 584);
  *(v175 + 15) = *(a2 + 967);
  v47 = *(a2 + 952);
  v174 = *(a2 + 936);
  v175[0] = v47;
  v48 = *(a2 + 920);
  v172 = *(a2 + 904);
  v173 = v48;
  v49 = *(a2 + 888);
  v170 = *(a2 + 872);
  v171 = v49;
  v112 = *(a2 + 632);
  v109 = *(a2 + 664);
  v50 = *(a2 + 680);
  v51 = *(a1 + 824);
  v52 = *(a1 + 376);
  v94 = *(a1 + 800);
  v110 = *(a1 + 808);
  v111 = *(a1 + 816);
  v54 = *(a2 + 280);
  v53 = *(a2 + 288);
  v55 = *(a2 + 360);
  v56 = *(a2 + 376);
  v105 = *(a1 + 736);
  v102 = *(a1 + 720);
  v93 = *(a1 + 688);
  v99 = *(a1 + 704);
  v101 = *(a2 + 736);
  v98 = *(a2 + 720);
  v92 = *(a2 + 688);
  v96 = *(a2 + 704);
  v107 = *(a1 + 784);
  v97 = *(a1 + 752);
  v104 = *(a1 + 768);
  v103 = *(a2 + 784);
  v95 = *(a2 + 752);
  v100 = *(a2 + 768);
  v91 = *(a2 + 800);
  v106 = *(a2 + 808);
  v108 = *(a2 + 816);
  v89 = *(a2 + 856);
  v88 = *(a2 + 864);
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))))) & 1) == 0)
  {
    v90 = *(a2 + 648);
    v85 = *(a1 + 856);
    v86 = *(a2 + 824);
    v87 = *(a2 + 840);
    if ((vaddvq_s32(vbicq_s8(xmmword_217F52100, vuzp1q_s32(vceqq_f64(*(a1 + 72), *(a2 + 72)), vceqq_f64(*(a1 + 88), *(a2 + 88))))) & 0xF) == 0 && v6 == v34 && v5 == v33 && ((v4 ^ v32) & 1) == 0 && ((v7 ^ v35) & 1) == 0)
    {
      v3 = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v8, *(a2 + 128)), vceqq_f64(v10, *(a2 + 152))))) & 1) != 0 && v11 == *(a2 + 168) && v9 == v36)
      {
        v84 = *(a1 + 864);
        v71 = *(a1 + 824);
        v72 = *(a1 + 840);
        v73 = v46;
        v74 = v45;
        v75 = v44;
        v76 = v43;
        v57 = v12;
        v58 = v13;
        v77 = v26;
        v78 = v25;
        v79 = v24;
        v80 = v23;
        v81 = v22;
        v82 = v21;
        v83 = v20;
        v59 = (a1 + 176);
        v60 = v59[4];
        v61 = v59[5];
        v62 = v59[2];
        v136 = v59[3];
        v137 = v60;
        v138[0] = v61;
        *(v138 + 15) = *(v59 + 95);
        v63 = v59[1];
        v133 = *v59;
        v134 = v63;
        v135 = v62;
        v64 = *(a2 + 256);
        v126 = *(a2 + 240);
        *v127 = v64;
        *&v127[15] = *(a2 + 271);
        v65 = *(a2 + 192);
        v122 = *(a2 + 176);
        v123 = v65;
        v66 = *(a2 + 224);
        v124 = *(a2 + 208);
        v125 = v66;
        v67 = sub_217EF5DA0(&v133, &v122);
        v3 = 0;
        if ((v67 & 1) != 0 && v121 == v54 && v57 == v53)
        {
          v3 = 0;
          v68 = vceqq_f64(v120, v118);
          if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v115, v113), vceqq_f64(v117, v114)), vuzp1q_s32(vceqq_f64(v119, v116), v68)))) & 1) != 0 && v58 == v55 && v52 == v56 && ((v14 ^ v37) & 1) == 0)
          {
            v138[3] = v148;
            v138[4] = v149;
            v138[5] = v150;
            v139 = v151;
            v137 = v144;
            v138[0] = v145;
            v138[1] = v146;
            v138[2] = v147;
            v133 = v140;
            v134 = v141;
            v135 = v142;
            v136 = v143;
            v129 = v166;
            v130 = v167;
            v131 = v168;
            v132 = v169;
            v126 = v162;
            *v127 = v163;
            *&v127[16] = v164;
            v128 = v165;
            v122 = v158;
            v123 = v159;
            v124 = v160;
            v125 = v161;
            if (sub_217EF5EC4(&v133, &v122, *&v160, *&v161, v68))
            {
              v3 = 0;
              v69 = (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v80, v73), vceqq_f64(v81, v74)), vuzp1q_s32(vceqq_f64(v82, v75), vceqq_f64(v83, v76))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(v78, v112), vceqq_f64(v79, v90)), vuzp1q_s32(vceqq_f64(v77, v109), vceqq_f64(v93, v92))))) & vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v99, v96), vceqq_f64(v102, v98)), vuzp1q_s32(vceqq_f64(v105, v101), vceqq_f64(v97, v95)))))) & vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v104, v100), vceqq_f64(v107, v103)))) & (v94 == v91);
              if (v110 != v106)
              {
                v69 = 0;
              }

              if (v111 != v108)
              {
                v69 = 0;
              }

              if (v69 == 1 && ((v27 ^ v50) & 1) == 0)
              {
                v3 = 0;
                if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v51, v86), vceqq_f64(v72, v87)))) & 1) != 0 && v85 == v89 && v84 == v88)
                {
                  v137 = v156;
                  v138[0] = v157[0];
                  *(v138 + 15) = *(v157 + 15);
                  v133 = v152;
                  v134 = v153;
                  v135 = v154;
                  v136 = v155;
                  v126 = v174;
                  *v127 = v175[0];
                  *&v127[15] = *(v175 + 15);
                  v122 = v170;
                  v123 = v171;
                  v124 = v172;
                  v125 = v173;
                  v3 = sub_217EF5DA0(&v133, &v122);
                }
              }
            }

            else
            {
              v3 = 0;
            }
          }
        }
      }
    }
  }

  return v3 & 1;
}

uint64_t sub_217EF671C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((*(a1 + 8) ^ *(a2 + 8)) & 1) == 0 && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0)
  {
    v2 = *(a2 + 10) ^ *(a1 + 10) ^ 1;
  }

  return v2 & 1;
}

BOOL sub_217EF67A4(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0 && ((*(a1 + 17) ^ *(a2 + 17)) & 1) == 0 && ((*(a1 + 18) ^ *(a2 + 18)) & 1) == 0 && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

unint64_t sub_217EF6814()
{
  result = qword_27CBF5D90;
  if (!qword_27CBF5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D90);
  }

  return result;
}

unint64_t sub_217EF6868()
{
  result = qword_27CBF5D98;
  if (!qword_27CBF5D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5D98);
  }

  return result;
}

unint64_t sub_217EF68BC()
{
  result = qword_27CBF5DA0;
  if (!qword_27CBF5DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DA0);
  }

  return result;
}

unint64_t sub_217EF6910()
{
  result = qword_27CBF5DA8;
  if (!qword_27CBF5DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DA8);
  }

  return result;
}

unint64_t sub_217EF6964()
{
  result = qword_27CBF5DB0;
  if (!qword_27CBF5DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DB0);
  }

  return result;
}

unint64_t sub_217EF69B8()
{
  result = qword_27CBF5DC0;
  if (!qword_27CBF5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DC0);
  }

  return result;
}

unint64_t sub_217EF6A0C()
{
  result = qword_27CBF5DC8;
  if (!qword_27CBF5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DC8);
  }

  return result;
}

unint64_t sub_217EF6A60()
{
  result = qword_27CBF5DD0;
  if (!qword_27CBF5DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DD0);
  }

  return result;
}

unint64_t sub_217EF6AB4()
{
  result = qword_27CBF5DD8;
  if (!qword_27CBF5DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DD8);
  }

  return result;
}

unint64_t sub_217EF6B08()
{
  result = qword_27CBF5DE8;
  if (!qword_27CBF5DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5DE8);
  }

  return result;
}

unint64_t sub_217EF6B5C()
{
  result = qword_27CBF5E18;
  if (!qword_27CBF5E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5E18);
  }

  return result;
}

unint64_t sub_217EF6BB0()
{
  result = qword_27CBF5E90;
  if (!qword_27CBF5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5E90);
  }

  return result;
}

unint64_t sub_217EF6C04()
{
  result = qword_27CBF5EC0;
  if (!qword_27CBF5EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5EC0);
  }

  return result;
}

unint64_t sub_217EF6C58()
{
  result = qword_280C27E58;
  if (!qword_280C27E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E58);
  }

  return result;
}

uint64_t sub_217EF6CAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5EF0, &qword_217F521D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EF6D18()
{
  result = qword_280C27A98;
  if (!qword_280C27A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A98);
  }

  return result;
}

unint64_t sub_217EF6D6C()
{
  result = qword_280C27690;
  if (!qword_280C27690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F10, &qword_217F521F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27690);
  }

  return result;
}

unint64_t sub_217EF6DE8()
{
  result = qword_280C27E68;
  if (!qword_280C27E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E68);
  }

  return result;
}

unint64_t sub_217EF6E3C()
{
  result = qword_27CBF5F28;
  if (!qword_27CBF5F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F10, &qword_217F521F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5F28);
  }

  return result;
}

unint64_t sub_217EF6EB8()
{
  result = qword_280C27E60;
  if (!qword_280C27E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E60);
  }

  return result;
}

uint64_t sub_217EF6F0C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F18, &qword_217F521F8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EF6F84()
{
  result = qword_27CBF5F40;
  if (!qword_27CBF5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5F40);
  }

  return result;
}

uint64_t sub_217EF6FD8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_217EF6FF0()
{
  result = qword_280C28038;
  if (!qword_280C28038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28038);
  }

  return result;
}

unint64_t sub_217EF7044()
{
  result = qword_280C27798;
  if (!qword_280C27798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27798);
  }

  return result;
}

unint64_t sub_217EF7098()
{
  result = qword_280C27728;
  if (!qword_280C27728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27728);
  }

  return result;
}

unint64_t sub_217EF7104()
{
  result = qword_280C276D0;
  if (!qword_280C276D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F68, &qword_217F52230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276D0);
  }

  return result;
}

unint64_t sub_217EF7188()
{
  result = qword_280C28020;
  if (!qword_280C28020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28020);
  }

  return result;
}

unint64_t sub_217EF71DC()
{
  result = qword_27CBF5F70;
  if (!qword_27CBF5F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F68, &qword_217F52230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5F70);
  }

  return result;
}

unint64_t sub_217EF7260()
{
  result = qword_27CBF5F78;
  if (!qword_27CBF5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5F78);
  }

  return result;
}

unint64_t sub_217EF72CC()
{
  result = qword_280C27EF0;
  if (!qword_280C27EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27EF0);
  }

  return result;
}

unint64_t sub_217EF7320()
{
  result = qword_280C276E0;
  if (!qword_280C276E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5FB8, &unk_217F52270);
    sub_217EF8694(&qword_280C27F10, &qword_27CBF5FC0, &qword_217F5A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C276E0);
  }

  return result;
}

unint64_t sub_217EF73D8()
{
  result = qword_27CBF6080;
  if (!qword_27CBF6080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5FB8, &unk_217F52270);
    sub_217EF8694(&qword_27CBF6088, &qword_27CBF5FC0, &qword_217F5A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6080);
  }

  return result;
}

unint64_t sub_217EF7490()
{
  result = qword_27CBF6138;
  if (!qword_27CBF6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6138);
  }

  return result;
}

unint64_t sub_217EF74E4()
{
  result = qword_27CBF6210;
  if (!qword_27CBF6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6210);
  }

  return result;
}

unint64_t sub_217EF7538()
{
  result = qword_27CBF6218;
  if (!qword_27CBF6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6218);
  }

  return result;
}

unint64_t sub_217EF758C()
{
  result = qword_27CBF6240;
  if (!qword_27CBF6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6240);
  }

  return result;
}

unint64_t sub_217EF75E0()
{
  result = qword_27CBF6298;
  if (!qword_27CBF6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6298);
  }

  return result;
}

unint64_t sub_217EF7634()
{
  result = qword_27CBF62A0;
  if (!qword_27CBF62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF62A0);
  }

  return result;
}

unint64_t sub_217EF7688()
{
  result = qword_27CBF6448;
  if (!qword_27CBF6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6448);
  }

  return result;
}

unint64_t sub_217EF76DC()
{
  result = qword_27CBF6450;
  if (!qword_27CBF6450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6450);
  }

  return result;
}

unint64_t sub_217EF7730()
{
  result = qword_27CBF6468;
  if (!qword_27CBF6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6468);
  }

  return result;
}

unint64_t sub_217EF7784()
{
  result = qword_27CBF6498;
  if (!qword_27CBF6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6498);
  }

  return result;
}

unint64_t sub_217EF77D8()
{
  result = qword_27CBF64A0;
  if (!qword_27CBF64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF64A0);
  }

  return result;
}

unint64_t sub_217EF782C()
{
  result = qword_27CBF6548;
  if (!qword_27CBF6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6548);
  }

  return result;
}

unint64_t sub_217EF7880()
{
  result = qword_27CBF6560;
  if (!qword_27CBF6560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6560);
  }

  return result;
}

unint64_t sub_217EF78D4()
{
  result = qword_27CBF6608;
  if (!qword_27CBF6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6608);
  }

  return result;
}

unint64_t sub_217EF7928()
{
  result = qword_27CBF6788;
  if (!qword_27CBF6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6788);
  }

  return result;
}

unint64_t sub_217EF797C()
{
  result = qword_27CBF6830;
  if (!qword_27CBF6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6830);
  }

  return result;
}

unint64_t sub_217EF79D0()
{
  result = qword_27CBF6868;
  if (!qword_27CBF6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6868);
  }

  return result;
}

unint64_t sub_217EF7A24()
{
  result = qword_27CBF6970;
  if (!qword_27CBF6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6970);
  }

  return result;
}

unint64_t sub_217EF7A78()
{
  result = qword_27CBF69F0;
  if (!qword_27CBF69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF69F0);
  }

  return result;
}

unint64_t sub_217EF7ACC()
{
  result = qword_27CBF6A50;
  if (!qword_27CBF6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6A50);
  }

  return result;
}

uint64_t sub_217EF7B78(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[24], a2[24]), vceqq_f64(a1[25], a2[25])), vuzp1q_s32(vceqq_f64(a1[26], a2[26]), vceqq_f64(a1[27], a2[27]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[28], a2[28]), vceqq_f64(a1[29], a2[29])), vuzp1q_s32(vceqq_f64(a1[30], a2[30]), vceqq_f64(a1[31], a2[31])))), 7uLL)), xmmword_217F52110);
  v3 = vaddvq_s16(vzip1q_s8(v2, vextq_s8(v2, v2, 8uLL)));
  v4 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[16], a2[16]), vceqq_f64(a1[17], a2[17])), vuzp1q_s32(vceqq_f64(a1[18], a2[18]), vceqq_f64(a1[19], a2[19]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[20], a2[20]), vceqq_f64(a1[21], a2[21])), vuzp1q_s32(vceqq_f64(a1[22], a2[22]), vceqq_f64(a1[23], a2[23])))), 7uLL)), xmmword_217F52110);
  v5 = vaddvq_s16(vzip1q_s8(v4, vextq_s8(v4, v4, 8uLL)));
  v6 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[8], a2[8]), vceqq_f64(a1[9], a2[9])), vuzp1q_s32(vceqq_f64(a1[10], a2[10]), vceqq_f64(a1[11], a2[11]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[12], a2[12]), vceqq_f64(a1[13], a2[13])), vuzp1q_s32(vceqq_f64(a1[14], a2[14]), vceqq_f64(a1[15], a2[15])))), 7uLL)), xmmword_217F52110);
  v7 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7])))), 7uLL)), xmmword_217F52110);
  if (((v5 | (v3 << 16)) & (vaddvq_s16(vzip1q_s8(v7, vextq_s8(v7, v7, 8uLL))) | (vaddvq_s16(vzip1q_s8(v6, vextq_s8(v6, v6, 8uLL))) << 16))) == 0xFFFFFFFFLL)
  {
    v8 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[32], a2[32]), vceqq_f64(a1[33], a2[33]))));
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_217EF7DB8(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  memcpy(__dst, a1 + 3, sizeof(__dst));
  memcpy(v8, a2 + 3, sizeof(v8));
  return sub_217EF7B78(__dst, v8) & 1;
}

uint64_t sub_217EF7E40(double *a1, double *a2)
{
  v2 = 0;
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v5 = a1[1] == a2[1] && *(a1 + 2) == *(a2 + 2) && a1[3] == a2[3] && a1[4] == a2[4];
    if (v5 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0 && a1[6] == a2[6])
    {
      v2 = *(a2 + 56) ^ *(a1 + 56) ^ 1;
    }
  }

  return v2 & 1;
}

BOOL sub_217EF7EB8(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

unint64_t sub_217EF7EF0()
{
  result = qword_27CBF6AC8;
  if (!qword_27CBF6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6AC8);
  }

  return result;
}

unint64_t sub_217EF7F44()
{
  result = qword_27CBF6B00;
  if (!qword_27CBF6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6B00);
  }

  return result;
}

unint64_t sub_217EF7F98()
{
  result = qword_27CBF6B48;
  if (!qword_27CBF6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6B48);
  }

  return result;
}

unint64_t sub_217EF7FEC()
{
  result = qword_27CBF6B68;
  if (!qword_27CBF6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6B68);
  }

  return result;
}

unint64_t sub_217EF8040()
{
  result = qword_27CBF6BB0;
  if (!qword_27CBF6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6BB0);
  }

  return result;
}

BOOL sub_217EF8094(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 17);
  v10 = *(v2 + 18);
  v40 = *(v2 + 24);
  v38 = *(v2 + 32);
  memcpy(v47, (v2 + 40), sizeof(v47));
  v36 = *(v5 + 3008);
  v37 = *(v5 + 3000);
  v35 = *(v5 + 3016);
  v11 = *(v5 + 3024);
  v12 = *(v5 + 3032);
  v13 = *(v5 + 3040);
  v15 = *v4;
  v14 = *(v4 + 8);
  v16 = *(v4 + 16);
  v17 = *(v4 + 17);
  v18 = *(v4 + 18);
  v20 = *(v4 + 24);
  v19 = *(v4 + 32);
  memcpy(v48, (v4 + 40), 0x780uLL);
  result = 0;
  if (v7 == v15 && v6 == v14 && ((v8 ^ v16) & 1) == 0 && ((v9 ^ v17) & 1) == 0 && ((v10 ^ v18) & 1) == 0 && v40 == v20 && v38 == v19)
  {
    v39 = *(v5 + 2968);
    v41 = *(v5 + 2984);
    v33 = *(v5 + 2952);
    v34 = *(v4 + 2984);
    v31 = *(v5 + 2936);
    v32 = *(v4 + 2968);
    v29 = *(v4 + 2936);
    v30 = *(v4 + 2952);
    v22 = *(v4 + 3000);
    v23 = *(v4 + 3008);
    v24 = *(v4 + 3016);
    v25 = *(v4 + 3024);
    v26 = *(v4 + 3032);
    v27 = *(v4 + 3040);
    memcpy(__dst, (v5 + 40), sizeof(__dst));
    memcpy(__src, (v4 + 40), sizeof(__src));
    sub_217EB4358(v47, v42);
    sub_217EB4358(v48, v42);
    v28 = sub_217EF590C(__dst, __src);
    memcpy(v45, __src, sizeof(v45));
    sub_217EB5CB8(v45);
    memcpy(v46, __dst, sizeof(v46));
    sub_217EB5CB8(v46);
    result = 0;
    if (v28)
    {
      memcpy(__dst, (v5 + 1960), 0x3CBuLL);
      memcpy(__src, (v4 + 1960), 0x3CBuLL);
      if ((sub_217EF5FF4(__dst, __src) & 1) != 0 && (vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v31, v29), vceqq_f64(v33, v30)), vuzp1q_s32(vceqq_f64(v39, v32), vceqq_f64(v41, v34))))) & 1) != 0 && v37 == v22 && (sub_217ED393C(v36, v23) & 1) != 0 && (sub_217ED3744(v35, v24) & 1) != 0 && v11 == v25 && v12 == v26 && v13 == v27)
      {
        memcpy(__dst, (v5 + 3048), 0x220uLL);
        memcpy(__src, (v4 + 3048), 0x220uLL);
        if (sub_217EF7B78(__dst, __src))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_217EF83A0()
{
  result = qword_27CBF6BC8;
  if (!qword_27CBF6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6BC8);
  }

  return result;
}

unint64_t sub_217EF83F4()
{
  result = qword_280C279F8;
  if (!qword_280C279F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C279F8);
  }

  return result;
}

unint64_t sub_217EF8448()
{
  result = qword_27CBF6C88;
  if (!qword_27CBF6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6C88);
  }

  return result;
}

unint64_t sub_217EF849C()
{
  result = qword_27CBF6C90;
  if (!qword_27CBF6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6C90);
  }

  return result;
}

unint64_t sub_217EF84F0()
{
  result = qword_27CBF6C98;
  if (!qword_27CBF6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6C98);
  }

  return result;
}

unint64_t sub_217EF8544()
{
  result = qword_27CBF6CA8;
  if (!qword_27CBF6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6CA8);
  }

  return result;
}

unint64_t sub_217EF8598()
{
  result = qword_27CBF6CB0;
  if (!qword_27CBF6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6CB0);
  }

  return result;
}

unint64_t sub_217EF85EC()
{
  result = qword_27CBF6CC0;
  if (!qword_27CBF6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6CC0);
  }

  return result;
}

unint64_t sub_217EF8640()
{
  result = qword_27CBF6D20;
  if (!qword_27CBF6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6D20);
  }

  return result;
}

uint64_t sub_217EF8694(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_217EF86DC()
{
  result = qword_27CBF6ED0;
  if (!qword_27CBF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6ED0);
  }

  return result;
}

unint64_t sub_217EF8730()
{
  result = qword_27CBF6EE8;
  if (!qword_27CBF6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6EE8);
  }

  return result;
}

unint64_t sub_217EF8784()
{
  result = qword_27CBF6F00;
  if (!qword_27CBF6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F00);
  }

  return result;
}

unint64_t sub_217EF87D8()
{
  result = qword_27CBF6F08;
  if (!qword_27CBF6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F08);
  }

  return result;
}

unint64_t sub_217EF882C()
{
  result = qword_27CBF6F10;
  if (!qword_27CBF6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F10);
  }

  return result;
}

unint64_t sub_217EF8880()
{
  result = qword_27CBF6F18;
  if (!qword_27CBF6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F18);
  }

  return result;
}

unint64_t sub_217EF88D4()
{
  result = qword_27CBF6F20;
  if (!qword_27CBF6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F20);
  }

  return result;
}

uint64_t sub_217EF8928(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF6F28, &qword_217F52830);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217EF89AC()
{
  result = qword_280C27890;
  if (!qword_280C27890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27890);
  }

  return result;
}

unint64_t sub_217EF8A00()
{
  result = qword_27CBF6F30;
  if (!qword_27CBF6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F30);
  }

  return result;
}

unint64_t sub_217EF8A54()
{
  result = qword_27CBF6F40;
  if (!qword_27CBF6F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F40);
  }

  return result;
}

unint64_t sub_217EF8AA8()
{
  result = qword_27CBF6F48;
  if (!qword_27CBF6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F48);
  }

  return result;
}

unint64_t sub_217EF8AFC()
{
  result = qword_27CBF6F50;
  if (!qword_27CBF6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F50);
  }

  return result;
}

unint64_t sub_217EF8B50()
{
  result = qword_27CBF6F58;
  if (!qword_27CBF6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F58);
  }

  return result;
}

unint64_t sub_217EF8BA4()
{
  result = qword_27CBF6F68;
  if (!qword_27CBF6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F68);
  }

  return result;
}

unint64_t sub_217EF8BF8()
{
  result = qword_27CBF6F70;
  if (!qword_27CBF6F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F70);
  }

  return result;
}

unint64_t sub_217EF8CB8()
{
  result = qword_27CBF6F78;
  if (!qword_27CBF6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F78);
  }

  return result;
}

unint64_t sub_217EF8E08()
{
  result = qword_27CBF6F80;
  if (!qword_27CBF6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F80);
  }

  return result;
}

unint64_t sub_217EF9058()
{
  result = qword_27CBF6F88;
  if (!qword_27CBF6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F88);
  }

  return result;
}

unint64_t sub_217EF90B0()
{
  result = qword_280C27E38;
  if (!qword_280C27E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E38);
  }

  return result;
}

unint64_t sub_217EFA32C()
{
  result = qword_27CBF5698;
  if (!qword_27CBF5698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF5698);
  }

  return result;
}

unint64_t sub_217EFA3B4()
{
  result = qword_27CBF56A8;
  if (!qword_27CBF56A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF56A0, qword_217F4DE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF56A8);
  }

  return result;
}

uint64_t sub_217EFA5D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 3592))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217EFA618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3576) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 3592) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 3592) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217EFAA54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217EFAAA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV32SportsTagSeenActionConfigurationVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV32SportsTagSeenActionConfigurationVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_217EFAC6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1920))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217EFACB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1912) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1920) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 1920) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217EFAF00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217EFAF48(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_217EFAFC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_217EFB008(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_217EFB068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EFB088(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_217EFB0F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EFB118(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = (a2 - 1);
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_217EFB164()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217EFB1B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 434))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217EFB1FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 434) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 434) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217EFB678(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 971))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217EFB6CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 970) = 0;
    *(result + 968) = 0;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 971) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 971) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_217EFBB40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 99))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217EFBB94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 99) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 99) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_217EFBDA4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[184])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217EFBDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_217EFC03C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EFC05C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
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

  *(result + 72) = v3;
  return result;
}

uint64_t sub_217EFC138(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_217EFC180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217EFC1DC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[57])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_217EFC230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_217EFC31C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 568))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EFC33C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 568) = v3;
  return result;
}

uint64_t sub_217EFC454(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 544))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217EFC474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 536) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 544) = v3;
  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV21TrainerConfigurationsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV21TrainerConfigurationsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV11TopicConfigV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV11TopicConfigV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV30NicheContentScoreConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV30NicheContentScoreConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV30UserFeedbackScoreConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV30UserFeedbackScoreConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFCDFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFCE8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV23EvaluationConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 46;
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

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV23EvaluationConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O13ConfigurationV23ClusteringConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFD214(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFD2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFD358(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFD3E8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFD4AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFD53C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFD67C(unsigned int *a1, int a2)
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

_WORD *sub_217EFD6CC(_WORD *result, int a2, int a3)
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

uint64_t sub_217EFD768(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFD7F8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217EFD8BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_217EFD94C(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217EFDA14()
{
  result = qword_27CBF6F90;
  if (!qword_27CBF6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F90);
  }

  return result;
}

unint64_t sub_217EFDA6C()
{
  result = qword_27CBF6F98;
  if (!qword_27CBF6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6F98);
  }

  return result;
}

unint64_t sub_217EFDAC4()
{
  result = qword_27CBF6FA0;
  if (!qword_27CBF6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FA0);
  }

  return result;
}

unint64_t sub_217EFDB1C()
{
  result = qword_27CBF6FA8;
  if (!qword_27CBF6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FA8);
  }

  return result;
}

unint64_t sub_217EFDB74()
{
  result = qword_27CBF6FB0;
  if (!qword_27CBF6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FB0);
  }

  return result;
}

unint64_t sub_217EFDBCC()
{
  result = qword_27CBF6FB8;
  if (!qword_27CBF6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FB8);
  }

  return result;
}

unint64_t sub_217EFDC24()
{
  result = qword_27CBF6FC0;
  if (!qword_27CBF6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FC0);
  }

  return result;
}

unint64_t sub_217EFDC7C()
{
  result = qword_27CBF6FC8;
  if (!qword_27CBF6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FC8);
  }

  return result;
}

unint64_t sub_217EFDCD4()
{
  result = qword_27CBF6FD0;
  if (!qword_27CBF6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FD0);
  }

  return result;
}

unint64_t sub_217EFDD2C()
{
  result = qword_27CBF6FD8;
  if (!qword_27CBF6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FD8);
  }

  return result;
}

unint64_t sub_217EFDDA0()
{
  result = qword_27CBF6FE0;
  if (!qword_27CBF6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FE0);
  }

  return result;
}

unint64_t sub_217EFDDF8()
{
  result = qword_27CBF6FE8;
  if (!qword_27CBF6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FE8);
  }

  return result;
}

unint64_t sub_217EFDE50()
{
  result = qword_27CBF6FF0;
  if (!qword_27CBF6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FF0);
  }

  return result;
}

unint64_t sub_217EFDEA8()
{
  result = qword_27CBF6FF8;
  if (!qword_27CBF6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF6FF8);
  }

  return result;
}

unint64_t sub_217EFDF00()
{
  result = qword_27CBF7000;
  if (!qword_27CBF7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7000);
  }

  return result;
}

unint64_t sub_217EFDF58()
{
  result = qword_27CBF7008;
  if (!qword_27CBF7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7008);
  }

  return result;
}

unint64_t sub_217EFDFB0()
{
  result = qword_27CBF7010;
  if (!qword_27CBF7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7010);
  }

  return result;
}

unint64_t sub_217EFE008()
{
  result = qword_27CBF7018;
  if (!qword_27CBF7018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7018);
  }

  return result;
}

unint64_t sub_217EFE060()
{
  result = qword_27CBF7020;
  if (!qword_27CBF7020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7020);
  }

  return result;
}

unint64_t sub_217EFE0B8()
{
  result = qword_27CBF7028;
  if (!qword_27CBF7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7028);
  }

  return result;
}

unint64_t sub_217EFE110()
{
  result = qword_27CBF7030;
  if (!qword_27CBF7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7030);
  }

  return result;
}

unint64_t sub_217EFE168()
{
  result = qword_27CBF7038;
  if (!qword_27CBF7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7038);
  }

  return result;
}

unint64_t sub_217EFE1C0()
{
  result = qword_27CBF7040;
  if (!qword_27CBF7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7040);
  }

  return result;
}

unint64_t sub_217EFE218()
{
  result = qword_27CBF7048;
  if (!qword_27CBF7048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7048);
  }

  return result;
}

unint64_t sub_217EFE270()
{
  result = qword_27CBF7050;
  if (!qword_27CBF7050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7050);
  }

  return result;
}

unint64_t sub_217EFE2C8()
{
  result = qword_27CBF7058;
  if (!qword_27CBF7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7058);
  }

  return result;
}

unint64_t sub_217EFE320()
{
  result = qword_27CBF7060;
  if (!qword_27CBF7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7060);
  }

  return result;
}

unint64_t sub_217EFE378()
{
  result = qword_27CBF7068;
  if (!qword_27CBF7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7068);
  }

  return result;
}

unint64_t sub_217EFE3D0()
{
  result = qword_27CBF7070;
  if (!qword_27CBF7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7070);
  }

  return result;
}

unint64_t sub_217EFE428()
{
  result = qword_27CBF7078;
  if (!qword_27CBF7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7078);
  }

  return result;
}

unint64_t sub_217EFE480()
{
  result = qword_27CBF7080;
  if (!qword_27CBF7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7080);
  }

  return result;
}

unint64_t sub_217EFE4D8()
{
  result = qword_27CBF7088;
  if (!qword_27CBF7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7088);
  }

  return result;
}

unint64_t sub_217EFE530()
{
  result = qword_27CBF7090;
  if (!qword_27CBF7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7090);
  }

  return result;
}

unint64_t sub_217EFE588()
{
  result = qword_27CBF7098;
  if (!qword_27CBF7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7098);
  }

  return result;
}

unint64_t sub_217EFE5E0()
{
  result = qword_27CBF70A0;
  if (!qword_27CBF70A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70A0);
  }

  return result;
}

unint64_t sub_217EFE638()
{
  result = qword_27CBF70A8;
  if (!qword_27CBF70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70A8);
  }

  return result;
}

unint64_t sub_217EFE690()
{
  result = qword_27CBF70B0;
  if (!qword_27CBF70B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70B0);
  }

  return result;
}

unint64_t sub_217EFE6E8()
{
  result = qword_27CBF70B8;
  if (!qword_27CBF70B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70B8);
  }

  return result;
}

unint64_t sub_217EFE740()
{
  result = qword_27CBF70C0;
  if (!qword_27CBF70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70C0);
  }

  return result;
}

unint64_t sub_217EFE798()
{
  result = qword_27CBF70C8;
  if (!qword_27CBF70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70C8);
  }

  return result;
}

unint64_t sub_217EFE7F0()
{
  result = qword_27CBF70D0;
  if (!qword_27CBF70D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70D0);
  }

  return result;
}

unint64_t sub_217EFE848()
{
  result = qword_27CBF70D8;
  if (!qword_27CBF70D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70D8);
  }

  return result;
}

unint64_t sub_217EFE8A0()
{
  result = qword_280C279E8;
  if (!qword_280C279E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C279E8);
  }

  return result;
}

unint64_t sub_217EFE8F8()
{
  result = qword_280C279F0;
  if (!qword_280C279F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C279F0);
  }

  return result;
}

unint64_t sub_217EFE950()
{
  result = qword_27CBF70E0;
  if (!qword_27CBF70E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70E0);
  }

  return result;
}

unint64_t sub_217EFE9A8()
{
  result = qword_27CBF70E8;
  if (!qword_27CBF70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70E8);
  }

  return result;
}

unint64_t sub_217EFEA00()
{
  result = qword_27CBF70F0;
  if (!qword_27CBF70F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70F0);
  }

  return result;
}

unint64_t sub_217EFEA58()
{
  result = qword_27CBF70F8;
  if (!qword_27CBF70F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF70F8);
  }

  return result;
}

unint64_t sub_217EFEAB0()
{
  result = qword_27CBF7100;
  if (!qword_27CBF7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7100);
  }

  return result;
}

unint64_t sub_217EFEB08()
{
  result = qword_27CBF7108;
  if (!qword_27CBF7108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7108);
  }

  return result;
}

unint64_t sub_217EFEB60()
{
  result = qword_27CBF7110;
  if (!qword_27CBF7110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7110);
  }

  return result;
}

unint64_t sub_217EFEBB8()
{
  result = qword_27CBF7118;
  if (!qword_27CBF7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7118);
  }

  return result;
}

unint64_t sub_217EFEC10()
{
  result = qword_27CBF7120;
  if (!qword_27CBF7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7120);
  }

  return result;
}

unint64_t sub_217EFEC68()
{
  result = qword_27CBF7128;
  if (!qword_27CBF7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7128);
  }

  return result;
}

unint64_t sub_217EFECC0()
{
  result = qword_27CBF7130;
  if (!qword_27CBF7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7130);
  }

  return result;
}

unint64_t sub_217EFED18()
{
  result = qword_27CBF7138;
  if (!qword_27CBF7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7138);
  }

  return result;
}

unint64_t sub_217EFED70()
{
  result = qword_27CBF7140;
  if (!qword_27CBF7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7140);
  }

  return result;
}

unint64_t sub_217EFEDC8()
{
  result = qword_27CBF7148;
  if (!qword_27CBF7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7148);
  }

  return result;
}

unint64_t sub_217EFEE20()
{
  result = qword_27CBF7150;
  if (!qword_27CBF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7150);
  }

  return result;
}

unint64_t sub_217EFEE78()
{
  result = qword_27CBF7158;
  if (!qword_27CBF7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7158);
  }

  return result;
}

unint64_t sub_217EFEED0()
{
  result = qword_27CBF7160;
  if (!qword_27CBF7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7160);
  }

  return result;
}

unint64_t sub_217EFEF28()
{
  result = qword_27CBF7168;
  if (!qword_27CBF7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7168);
  }

  return result;
}

unint64_t sub_217EFEF80()
{
  result = qword_27CBF7170;
  if (!qword_27CBF7170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7170);
  }

  return result;
}

unint64_t sub_217EFEFD8()
{
  result = qword_27CBF7178;
  if (!qword_27CBF7178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7178);
  }

  return result;
}

unint64_t sub_217EFF030()
{
  result = qword_27CBF7180;
  if (!qword_27CBF7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7180);
  }

  return result;
}

unint64_t sub_217EFF088()
{
  result = qword_27CBF7188;
  if (!qword_27CBF7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7188);
  }

  return result;
}

unint64_t sub_217EFF0E0()
{
  result = qword_27CBF7190;
  if (!qword_27CBF7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7190);
  }

  return result;
}

unint64_t sub_217EFF138()
{
  result = qword_27CBF7198;
  if (!qword_27CBF7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7198);
  }

  return result;
}

unint64_t sub_217EFF190()
{
  result = qword_280C27EE0;
  if (!qword_280C27EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27EE0);
  }

  return result;
}

unint64_t sub_217EFF1E8()
{
  result = qword_280C27EE8;
  if (!qword_280C27EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27EE8);
  }

  return result;
}

unint64_t sub_217EFF278()
{
  result = qword_280C28028;
  if (!qword_280C28028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28028);
  }

  return result;
}

unint64_t sub_217EFF2D0()
{
  result = qword_280C28030;
  if (!qword_280C28030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28030);
  }

  return result;
}

unint64_t sub_217EFF328()
{
  result = qword_280C27ED0;
  if (!qword_280C27ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27ED0);
  }

  return result;
}

unint64_t sub_217EFF380()
{
  result = qword_280C27ED8;
  if (!qword_280C27ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27ED8);
  }

  return result;
}

unint64_t sub_217EFF3D8()
{
  result = qword_280C27A88;
  if (!qword_280C27A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A88);
  }

  return result;
}

unint64_t sub_217EFF430()
{
  result = qword_280C27A90;
  if (!qword_280C27A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27A90);
  }

  return result;
}

unint64_t sub_217EFF488()
{
  result = qword_280C27E48;
  if (!qword_280C27E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E48);
  }

  return result;
}

unint64_t sub_217EFF4E0()
{
  result = qword_280C27E50;
  if (!qword_280C27E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27E50);
  }

  return result;
}

unint64_t sub_217EFF538()
{
  result = qword_27CBF71A0;
  if (!qword_27CBF71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71A0);
  }

  return result;
}

unint64_t sub_217EFF590()
{
  result = qword_27CBF71A8;
  if (!qword_27CBF71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71A8);
  }

  return result;
}

unint64_t sub_217EFF5E8()
{
  result = qword_27CBF71B0;
  if (!qword_27CBF71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71B0);
  }

  return result;
}

unint64_t sub_217EFF640()
{
  result = qword_27CBF71B8;
  if (!qword_27CBF71B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71B8);
  }

  return result;
}

unint64_t sub_217EFF698()
{
  result = qword_27CBF71C0;
  if (!qword_27CBF71C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71C0);
  }

  return result;
}

unint64_t sub_217EFF6F0()
{
  result = qword_27CBF71C8;
  if (!qword_27CBF71C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71C8);
  }

  return result;
}

unint64_t sub_217EFF748()
{
  result = qword_27CBF71D0;
  if (!qword_27CBF71D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71D0);
  }

  return result;
}

unint64_t sub_217EFF7A0()
{
  result = qword_27CBF71D8;
  if (!qword_27CBF71D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71D8);
  }

  return result;
}

unint64_t sub_217EFF7F8()
{
  result = qword_27CBF71E0;
  if (!qword_27CBF71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71E0);
  }

  return result;
}

unint64_t sub_217EFF850()
{
  result = qword_27CBF71E8;
  if (!qword_27CBF71E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71E8);
  }

  return result;
}

unint64_t sub_217EFF8A8()
{
  result = qword_27CBF71F0;
  if (!qword_27CBF71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71F0);
  }

  return result;
}

unint64_t sub_217EFF900()
{
  result = qword_27CBF71F8;
  if (!qword_27CBF71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF71F8);
  }

  return result;
}

uint64_t sub_217EFF954(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x8000000217F5EC70 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5EC90 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E697070616DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_217F4B144();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217EFFA7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52656C6369747261 && a2 == 0xEB00000000646165;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61547374726F7073 && a2 == 0xED00006E65655367 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73694C6B63617274 && a2 == 0xED000064656E6574 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7369566B63617274 && a2 == 0xEC00000064657469)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EFFBF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5ECB0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000217F5ECD0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5ED00 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217EFFD64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465776F6C6C61 && a2 == 0xEF7344496369706FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_217EFFE94(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *))
{
  v3 = a2;
  v4 = a1;
  v5 = *(a1 + 16);
  v33 = *(a2 + 16);
  if (v33 >= v5)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_217EA0CA0(0, v6, 0);
  v8 = v42;
  v9 = 0;
  v10 = 0;
  if (v6)
  {
    v30 = v3 + 32;
    v31 = v4 + 32;
    v34 = v4;
    do
    {
      v11 = 0uLL;
      v12 = 0;
      if (v10 == v5)
      {
        v13 = 1;
        v10 = v5;
      }

      else
      {
        if (v10 >= v5)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          return result;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_33;
        }

        if (v9 != v33)
        {
          if (v9 >= v33)
          {
            goto LABEL_38;
          }

          if (__OFADD__(v9, 1))
          {
            goto LABEL_39;
          }

          v13 = 0;
          v15 = *(v31 + 8 * v10);
          v16 = (v30 + 40 * v9);
          v12 = *(v16 + 4);
          v11 = *v16;
          v14 = v16[1];
          ++v9;
          ++v10;
          goto LABEL_16;
        }

        v13 = 1;
        ++v10;
      }

      v14 = 0uLL;
LABEL_16:
      v38 = v11;
      v39 = v14;
      v40 = v12;
      v41 = v13;
      if (v13)
      {
        goto LABEL_40;
      }

      v17 = v3;
      result = a3(&v38);
      v42 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = v18;
        result = sub_217EA0CA0((v19 > 1), v20 + 1, 1);
        v18 = v21;
        v8 = v42;
      }

      *(v8 + 16) = v20 + 1;
      *(v8 + 8 * v20 + 32) = v18;
      --v6;
      v3 = v17;
      v4 = v34;
    }

    while (v6);
  }

  if (v10 != v5)
  {
    v35 = v4 + 32;
    v22 = (v3 + 40 * v9 + 64);
    v32 = v5;
    while (v10 < v5)
    {
      v23 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_35;
      }

      if (v33 == v9)
      {
        return v8;
      }

      if (v9 >= v33)
      {
        goto LABEL_36;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_37;
      }

      v24 = *v22;
      v37 = *(v35 + 8 * v10);
      v25 = *(v22 - 1);
      v38 = *(v22 - 2);
      v39 = v25;
      v40 = v24;
      result = a3(&v38);
      v42 = v8;
      v28 = *(v8 + 16);
      v27 = *(v8 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = v26;
        result = sub_217EA0CA0((v27 > 1), v28 + 1, 1);
        v26 = v29;
        v8 = v42;
      }

      *(v8 + 16) = v28 + 1;
      *(v8 + 8 * v28 + 32) = v26;
      ++v10;
      ++v9;
      v22 += 5;
      v5 = v32;
      if (v23 == v32)
      {
        return v8;
      }
    }

    goto LABEL_34;
  }

  return v8;
}

uint64_t sub_217F00164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52746C7561666564 && a2 == 0xEC0000006F697461;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52646574746F6C73 && a2 == 0xED0000736F697461 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F5ED20 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5ED40 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217F002E0()
{
  v0 = sub_217F4AEE4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_217F00334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000217F5EF20 == a2;
  if (v3 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5EF40 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5EF60 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5EF80 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5EFA0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5EFC0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5EFF0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000217F5F010 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5F040 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5F070 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5F090 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5F0B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F0E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5F100 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217F5F120 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5F140 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5F160 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217F5F180 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5F1A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F1C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F5F1E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F5F200 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F5F220 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F5F240 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F5F260 == a2)
  {

    return 24;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

uint64_t sub_217F00ABC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69746C754D666E61 && a2 == 0xED00007265696C70;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217F5F280 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5F2A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217F5F2C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5F2F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F320 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000217F5F350 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000003ALL && 0x8000000217F5F390 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000217F5F3D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000217F5F400 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000033 && 0x8000000217F5F430 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000217F5F470 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x72656E65706D6164 && a2 == 0xEF64656C62616E45 || (sub_217F4B144() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000217F5F4A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5F4D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F5F4F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F5F510 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217F5F530 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F5F560 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5F580 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x64656E657473696CLL && a2 == 0xEF79746C616E6550 || (sub_217F4B144() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F5A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F5C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217F5F5E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000217F5F600 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000217F5F630 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5F660 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x616E655064616572 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217F5F680 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F5F6B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F5F6D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x616E65506E656573 && a2 == 0xEB0000000079746CLL || (sub_217F4B144() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F5F6F0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217F5F710 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000027 && 0x8000000217F5F730 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217F5F760 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F780 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F7B0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000217F5F7D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5F800 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217F5F820 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000217F5F840 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217F5F870 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217F5F890 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F8C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000217F5F8E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000217F5F910 == a2)
  {

    return 46;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 46;
    }

    else
    {
      return 47;
    }
  }
}

uint64_t sub_217F018EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000217F5F930 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F5F950 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F5F970 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F5F990 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_217F4B144();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_217F01A5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000217F5F9B0 == a2;
  if (v3 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706D614478616DLL && a2 == 0xEB0000000072656ELL || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65764578616DLL && a2 == 0xED0000746E756F43 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F63536E696DLL && a2 == 0xEE00746867696557 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70784565726F6373 && a2 == 0xED0000746E656E6FLL || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217F5F9D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}