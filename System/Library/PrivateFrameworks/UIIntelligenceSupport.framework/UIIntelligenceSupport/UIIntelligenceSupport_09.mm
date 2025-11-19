void sub_1BBB418E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    IntelligenceElement.NavigationSplitPane.visiblePanes.setter(v4);
  }

  else
  {
    IntelligenceElement.NavigationSplitPane.visiblePanes.setter(v3);
  }

  free(v2);
}

uint64_t IntelligenceElement.NavigationSplitPane.sidebarPane.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  *&v12[9] = *(v3 + 65);
  v7 = *&v12[9];
  v11[1] = v5;
  *v12 = v6;
  v11[0] = v4;
  *(a1 + 41) = v7;
  v8 = *(v3 + 40);
  *a1 = *(v3 + 24);
  a1[1] = v8;
  a1[2] = *(v3 + 56);
  return sub_1BBA9EDF0(v11, v10);
}

uint64_t IntelligenceElement.NavigationSplitPane.sidebarPane.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x101uLL);
  memcpy(__src, (v3 + 16), 0x101uLL);
  v4 = *(v3 + 24);
  v13[1] = *(v3 + 40);
  v5 = *(v3 + 56);
  *(v14 + 9) = *(v3 + 65);
  v14[0] = v5;
  v13[0] = v4;
  sub_1BBB42740(__dst, v10);
  sub_1BBA8BCC4(v13, &qword_1EBC7BAA8);
  v6 = a1[1];
  *&__src[1] = *a1;
  *&__src[3] = v6;
  *&__src[5] = a1[2];
  *(&__src[6] + 1) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = *v1;
    swift_beginAccess();
    memcpy(v10, (v7 + 16), 0x101uLL);
    memcpy((v7 + 16), __src, 0x101uLL);
    return sub_1BBB42778(v10);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v9 = swift_allocObject();
    memcpy((v9 + 16), __src, 0x101uLL);

    *v1 = v9;
  }

  return result;
}

void (*IntelligenceElement.NavigationSplitPane.sidebarPane.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 40);
  v8 = *(v5 + 56);
  *(v4 + 41) = *(v5 + 65);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  memmove(v4 + 4, (v5 + 24), 0x39uLL);
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB41BF4;
}

uint64_t IntelligenceElement.NavigationSplitPane.contentPane.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  v9[0] = *(v3 + 88);
  v9[1] = v4;
  v10[0] = *(v3 + 120);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 129);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t IntelligenceElement.NavigationSplitPane.contentPane.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x101uLL);
  memcpy(__src, (v3 + 16), 0x101uLL);
  v4 = *(v3 + 104);
  v12[0] = *(v3 + 88);
  v12[1] = v4;
  *v13 = *(v3 + 120);
  *&v13[9] = *(v3 + 129);
  sub_1BBB42740(__dst, v9);
  sub_1BBA8BCC4(v12, &qword_1EBC7BAA8);
  v5 = a1[1];
  *&__src[9] = *a1;
  *&__src[11] = v5;
  *&__src[13] = a1[2];
  *(&__src[14] + 1) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    memcpy(v9, (v6 + 16), 0x101uLL);
    memcpy((v6 + 16), __src, 0x101uLL);
    return sub_1BBB42778(v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v8 = swift_allocObject();
    memcpy((v8 + 16), __src, 0x101uLL);

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.NavigationSplitPane.contentPane.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 88);
  v7 = *(v5 + 104);
  v8 = *(v5 + 120);
  *(v4 + 41) = *(v5 + 129);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = *(v5 + 88);
  v10 = *(v5 + 104);
  v11 = *(v5 + 120);
  *(v4 + 105) = *(v5 + 129);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB41EA4;
}

void sub_1BBB41EBC(uint64_t a1, char a2, void (*a3)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v4[12] = v4[4];
    v4[13] = v5;
    v7 = v4[4];
    v6 = v4[5];
    v4[14] = v4[6];
    *(v4 + 233) = *(v4 + 105);
    v9 = v7;
    v10 = v6;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    sub_1BBA9EDF0((v4 + 12), (v4 + 16));
    a3(&v9);
    v8 = v4[5];
    v4[8] = v4[4];
    v4[9] = v8;
    v4[10] = v4[6];
    *(v4 + 169) = *(v4 + 105);
    sub_1BBA8BCC4((v4 + 8), &qword_1EBC7BAA8);
  }

  else
  {
    v9 = v4[4];
    v10 = v5;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    a3(&v9);
  }

  free(v4);
}

uint64_t IntelligenceElement.NavigationSplitPane.detailPane.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 168);
  v9[0] = *(v3 + 152);
  v9[1] = v4;
  v10[0] = *(v3 + 184);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 193);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t IntelligenceElement.NavigationSplitPane.detailPane.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x101uLL);
  memcpy(__src, (v3 + 16), 0x101uLL);
  v4 = *(v3 + 168);
  v12[0] = *(v3 + 152);
  v12[1] = v4;
  *v13 = *(v3 + 184);
  *&v13[9] = *(v3 + 193);
  sub_1BBB42740(__dst, v9);
  sub_1BBA8BCC4(v12, &qword_1EBC7BAA8);
  v5 = a1[1];
  *&__src[17] = *a1;
  *&__src[19] = v5;
  *&__src[21] = a1[2];
  *(&__src[22] + 1) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    memcpy(v9, (v6 + 16), 0x101uLL);
    memcpy((v6 + 16), __src, 0x101uLL);
    return sub_1BBB42778(v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v8 = swift_allocObject();
    memcpy((v8 + 16), __src, 0x101uLL);

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.NavigationSplitPane.detailPane.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 152);
  v7 = *(v5 + 168);
  v8 = *(v5 + 184);
  *(v4 + 41) = *(v5 + 193);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = *(v5 + 152);
  v10 = *(v5 + 168);
  v11 = *(v5 + 184);
  *(v4 + 105) = *(v5 + 193);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB42248;
}

uint64_t IntelligenceElement.NavigationSplitPane.inspectorPane.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 232);
  v9[0] = *(v3 + 216);
  v9[1] = v4;
  v10[0] = *(v3 + 248);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 257);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t IntelligenceElement.NavigationSplitPane.inspectorPane.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  memcpy(__dst, (v3 + 16), 0x101uLL);
  v4 = *(v3 + 192);
  *&__src[160] = *(v3 + 176);
  *&__src[176] = v4;
  *&__src[192] = *(v3 + 208);
  v5 = *(v3 + 128);
  *&__src[96] = *(v3 + 112);
  *&__src[112] = v5;
  v6 = *(v3 + 160);
  *&__src[128] = *(v3 + 144);
  *&__src[144] = v6;
  v7 = *(v3 + 64);
  *&__src[32] = *(v3 + 48);
  *&__src[48] = v7;
  v8 = *(v3 + 96);
  *&__src[64] = *(v3 + 80);
  *&__src[80] = v8;
  v9 = *(v3 + 32);
  *__src = *(v3 + 16);
  *&__src[16] = v9;
  v10 = *(v3 + 232);
  v18[0] = *(v3 + 216);
  v18[1] = v10;
  *v19 = *(v3 + 248);
  *&v19[9] = *(v3 + 257);
  sub_1BBB42740(__dst, v15);
  sub_1BBA8BCC4(v18, &qword_1EBC7BAA8);
  v11 = a1[1];
  *&__src[200] = *a1;
  *&__src[216] = v11;
  *&__src[232] = a1[2];
  *&__src[241] = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v1;
    swift_beginAccess();
    memcpy(v15, (v12 + 16), 0x101uLL);
    memcpy((v12 + 16), __src, 0x101uLL);
    return sub_1BBB42778(v15);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v14 = swift_allocObject();
    memcpy((v14 + 16), __src, 0x101uLL);

    *v1 = v14;
  }

  return result;
}

void (*IntelligenceElement.NavigationSplitPane.inspectorPane.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 216);
  v7 = *(v5 + 232);
  v8 = *(v5 + 248);
  *(v4 + 41) = *(v5 + 257);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = *(v5 + 216);
  v10 = *(v5 + 232);
  v11 = *(v5 + 248);
  *(v4 + 105) = *(v5 + 257);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB4252C;
}

__n128 IntelligenceElement.NavigationSplitPane.init(visiblePanes:sidebarPane:contentPane:detailPane:inspectorPane:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X8>)
{
  *&v14[7] = *a3;
  *&v14[23] = a3[1];
  *&v14[39] = a3[2];
  *&v14[48] = *(a3 + 41);
  *&v13[7] = *a4;
  *&v13[23] = a4[1];
  *&v13[39] = a4[2];
  *&v13[48] = *(a4 + 41);
  *&v12[48] = *(a5 + 41);
  *&v12[39] = a5[2];
  *&v12[23] = a5[1];
  *&v12[7] = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = a2[1];
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = a2[2];
  *(v9 + 65) = *(a2 + 41);
  *(v9 + 81) = *v14;
  *(v9 + 97) = *&v14[16];
  *(v9 + 113) = *&v14[32];
  *(v9 + 129) = *&v14[48];
  *(v9 + 193) = *&v13[48];
  *(v9 + 177) = *&v13[32];
  *(v9 + 161) = *&v13[16];
  *(v9 + 145) = *v13;
  *(v9 + 257) = *&v12[48];
  result = *v12;
  *(v9 + 209) = *v12;
  *(v9 + 225) = *&v12[16];
  *(v9 + 241) = *&v12[32];
  *a6 = v9;
  return result;
}

uint64_t IntelligenceElement.NavigationSplitPane.Pane.description.getter()
{
  v1 = 0x72616265646953;
  v2 = 0x6C6961746544;
  if (*v0 != 2)
  {
    v2 = 0x6F74636570736E49;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F43;
  }

  if (*v0 <= 1u)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v5 = v3;

  MEMORY[0x1BFB16150](0x656E615020, 0xE500000000000000);

  return v5;
}

uint64_t sub_1BBB427A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *v4;
  swift_beginAccess();
  v11 = *(v10 + 40);
  v12 = *(v10 + 24);
  v13 = *(v10 + 56);
  *&v65[9] = *(v10 + 65);
  v64[1] = v11;
  *v65 = v13;
  v64[0] = v12;
  if (*(&v13 + 1))
  {
    v14 = *(v10 + 40);
    v61 = *(v10 + 24);
    v62 = v14;
    *v63 = *(v10 + 56);
    *&v63[8] = *(&v13 + 1);
    *&v63[16] = *(v10 + 72);
    v63[24] = *(v10 + 80);

    sub_1BBA9EDF0(v64, __dst);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v33, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(v64, &qword_1EBC7BAA8);
    }

    v66 = a4;
    sub_1BBA8BCC4(v64, &qword_1EBC7BAA8);
    memcpy(__dst, (v10 + 16), 0x101uLL);
    memcpy(__src, (v10 + 16), 0x101uLL);
    v17 = *(v10 + 24);
    v18 = *(v10 + 40);
    v19 = *(v10 + 56);
    *(v60 + 9) = *(v10 + 65);
    v60[0] = v19;
    v59 = v18;
    v58 = v17;
    sub_1BBB42740(__dst, v37);
    sub_1BBA8BCC4(&v58, &qword_1EBC7BAA8);
    *&__src[1] = v33[0];
    *&__src[3] = v33[1];
    *&__src[5] = v34[0];
    *(&__src[6] + 1) = *(v34 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      memcpy(v37, (v10 + 16), 0x101uLL);
      memcpy((v10 + 16), __src, 0x101uLL);
      result = sub_1BBB42778(v37);
      v16 = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
      v16 = swift_allocObject();
      memcpy((v16 + 16), __src, 0x101uLL);
    }
  }

  else
  {
    v66 = a4;

    v16 = v10;
  }

  *&v63[9] = *(v10 + 129);
  v20 = *(v10 + 120);
  v21 = *(v10 + 104);
  v61 = *(v10 + 88);
  v62 = v21;
  *v63 = v20;
  if (*(&v20 + 1))
  {
    v22 = *(v10 + 88);
    *(v60 + 9) = *(v10 + 129);
    v60[0] = *(v10 + 120);
    v23 = *(v10 + 104);
    v52 = v22;
    v53 = v23;
    *v54 = *(v10 + 120);
    *&v54[8] = *(&v20 + 1);
    *&v54[16] = *(v10 + 136);
    v54[24] = *(v10 + 144);
    v58 = v22;
    v59 = v23;
    sub_1BBA9B788(&v58, __dst);
    IntelligenceElement.recursiveMap<A>(_:transform:)(&v55, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(&v61, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(&v61, &qword_1EBC7BAA8);
    v46 = v55;
    v47 = v56;
    *v48 = v57[0];
    *&v48[9] = *(v57 + 9);
    swift_beginAccess();
    memcpy(__dst, (v16 + 16), 0x101uLL);
    memmove(v35, (v16 + 16), 0x101uLL);
    v49 = *&v35[9];
    v50 = *&v35[11];
    *v51 = *&v35[13];
    *&v51[9] = *(&v35[14] + 1);
    sub_1BBB42740(__dst, v37);
    sub_1BBA8BCC4(&v49, &qword_1EBC7BAA8);
    *&v35[9] = v46;
    *&v35[11] = v47;
    *&v35[13] = *v48;
    *(&v35[14] + 1) = *&v48[9];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      memcpy(v37, (v16 + 16), 0x101uLL);
      memcpy((v16 + 16), v35, 0x101uLL);
      result = sub_1BBB42778(v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
      v24 = swift_allocObject();
      memcpy((v24 + 16), v35, 0x101uLL);

      v16 = v24;
    }
  }

  *(v60 + 9) = *(v10 + 193);
  v60[0] = *(v10 + 184);
  v25 = *(v10 + 168);
  v58 = *(v10 + 152);
  v59 = v25;
  if (*(&v60[0] + 1))
  {
    v26 = *(v10 + 152);
    *(v57 + 9) = *(v10 + 193);
    v57[0] = *(v10 + 184);
    v27 = *(v10 + 168);
    v49 = v26;
    v50 = v27;
    *v51 = *(v10 + 184);
    *&v51[8] = *(&v60[0] + 1);
    *&v51[16] = *(v10 + 200);
    v51[24] = *(v10 + 208);
    v55 = v26;
    v56 = v27;
    sub_1BBA9B788(&v55, __dst);
    IntelligenceElement.recursiveMap<A>(_:transform:)(&v52, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(&v58, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(&v58, &qword_1EBC7BAA8);
    v43 = v52;
    v44 = v53;
    v45[0] = *v54;
    *(v45 + 9) = *&v54[9];
    swift_beginAccess();
    memcpy(__dst, (v16 + 16), 0x101uLL);
    memmove(v36, (v16 + 16), 0x101uLL);
    v46 = *&v36[17];
    v47 = *&v36[19];
    *v48 = *&v36[21];
    *&v48[9] = *(&v36[22] + 1);
    sub_1BBB42740(__dst, v37);
    sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
    *&v36[17] = v43;
    *&v36[19] = v44;
    *&v36[21] = v45[0];
    *(&v36[22] + 1) = *(v45 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      memcpy(v37, (v16 + 16), 0x101uLL);
      memcpy((v16 + 16), v36, 0x101uLL);
      result = sub_1BBB42778(v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
      v28 = swift_allocObject();
      memcpy((v28 + 16), v36, 0x101uLL);

      v16 = v28;
    }
  }

  v57[0] = *(v10 + 248);
  *(v57 + 9) = *(v10 + 257);
  v29 = *(v10 + 232);
  v55 = *(v10 + 216);
  v56 = v29;
  if (*(&v57[0] + 1))
  {
    *&v54[9] = *(v10 + 257);
    v30 = *(v10 + 232);
    *v54 = *(v10 + 248);
    v46 = *(v10 + 216);
    v47 = v30;
    *v48 = *(v10 + 248);
    *&v48[8] = *(&v57[0] + 1);
    *&v48[16] = *(v10 + 264);
    v48[24] = *(v10 + 272);
    v52 = v46;
    v53 = v30;
    sub_1BBA9B788(&v52, __dst);
    IntelligenceElement.recursiveMap<A>(_:transform:)(&v49, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(&v55, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(&v55, &qword_1EBC7BAA8);
    v39 = v49;
    v40 = v50;
    v41[0] = *v51;
    *(v41 + 9) = *&v51[9];
    swift_beginAccess();
    memcpy(__dst, (v16 + 16), 0x101uLL);
    memmove(v38, (v16 + 16), 0x101uLL);
    v43 = *&v38[25];
    v44 = *&v38[27];
    v45[0] = *&v38[29];
    *(v45 + 9) = *(&v38[30] + 1);
    sub_1BBB42740(__dst, v37);
    sub_1BBA8BCC4(&v43, &qword_1EBC7BAA8);
    *&v38[25] = v39;
    *&v38[27] = v40;
    *&v38[29] = v41[0];
    *(&v38[30] + 1) = *(v41 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      memcpy(v37, (v16 + 16), 0x101uLL);
      memcpy((v16 + 16), v38, 0x101uLL);
      result = sub_1BBB42778(v37);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
      v31 = swift_allocObject();
      memcpy((v31 + 16), v38, 0x101uLL);

      v16 = v31;
    }
  }

  *v66 = v16;
  return result;
}

uint64_t sub_1BBB43084(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v2 + 40);
  v4 = *(v2 + 24);
  v5 = *(v2 + 56);
  *&v40[9] = *(v2 + 65);
  v39[1] = v3;
  *v40 = v5;
  v39[0] = v4;
  if (*(&v5 + 1))
  {
    v6 = *(v2 + 40);
    v36 = *(v2 + 24);
    v37 = v6;
    *v38 = *(v2 + 56);
    *&v38[8] = *(&v5 + 1);
    *&v38[16] = *(v2 + 72);
    v38[24] = *(v2 + 80);
    v7 = sub_1BBA9EDF0(v39, &v33);
    IntelligenceElement.recursivelyPruned()(&v33, v7);
    IntelligenceElement.NavigationSplitPane.sidebarPane.setter(&v33);
    sub_1BBA8BCC4(v39, &qword_1EBC7BAA8);
  }

  v8 = *a1;
  swift_beginAccess();
  *&v38[9] = *(v8 + 129);
  v9 = *(v8 + 120);
  v10 = *(v8 + 104);
  v36 = *(v8 + 88);
  v37 = v10;
  *v38 = v9;
  if (*(&v9 + 1))
  {
    v11 = *(v8 + 104);
    v33 = *(v8 + 88);
    v34 = v11;
    *v35 = *(v8 + 120);
    *&v35[8] = *(&v9 + 1);
    *&v35[16] = *(v8 + 136);
    v35[24] = *(v8 + 144);
    v12 = sub_1BBA9EDF0(&v36, &v30);
    IntelligenceElement.recursivelyPruned()(&v30, v12);
    IntelligenceElement.NavigationSplitPane.contentPane.setter(&v30);
    sub_1BBA8BCC4(&v36, &qword_1EBC7BAA8);
  }

  v13 = *a1;
  swift_beginAccess();
  *&v35[9] = *(v13 + 193);
  v14 = *(v13 + 184);
  v15 = *(v13 + 168);
  v33 = *(v13 + 152);
  v34 = v15;
  *v35 = v14;
  if (*(&v14 + 1))
  {
    v16 = *(v13 + 168);
    v30 = *(v13 + 152);
    v31 = v16;
    *v32 = *(v13 + 184);
    *&v32[8] = *(&v14 + 1);
    *&v32[16] = *(v13 + 200);
    v32[24] = *(v13 + 208);
    v17 = sub_1BBA9EDF0(&v33, v25);
    IntelligenceElement.recursivelyPruned()(v25, v17);
    IntelligenceElement.NavigationSplitPane.detailPane.setter(v25);
    sub_1BBA8BCC4(&v33, &qword_1EBC7BAA8);
  }

  v18 = *a1;
  result = swift_beginAccess();
  *&v32[9] = *(v18 + 257);
  v20 = *(v18 + 248);
  v21 = *(v18 + 232);
  v30 = *(v18 + 216);
  v31 = v21;
  *v32 = v20;
  if (*(&v20 + 1))
  {
    v22 = *(v18 + 232);
    v25[0] = *(v18 + 216);
    v25[1] = v22;
    v26 = *(v18 + 248);
    v27 = *(&v20 + 1);
    v28 = *(v18 + 264);
    v29 = *(v18 + 272);
    v23 = sub_1BBA9EDF0(&v30, v24);
    IntelligenceElement.recursivelyPruned()(v24, v23);
    IntelligenceElement.NavigationSplitPane.inspectorPane.setter(v24);
    return sub_1BBA8BCC4(&v30, &qword_1EBC7BAA8);
  }

  return result;
}

uint64_t sub_1BBB43338(void (*a1)(_OWORD *__return_ptr, __int128 *))
{
  v3 = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(v5 + 40);
  v8 = *(v5 + 56);
  *(v54 + 9) = *(v5 + 65);
  v53 = v7;
  v54[0] = v8;
  v52 = v6;
  v9 = *(v5 + 40);
  v55 = *(v5 + 24);
  v56 = v9;
  v57 = *(v5 + 56);
  if (*(&v8 + 1))
  {
    v46 = v55;
    v47 = v56;
    *v48 = v57;
    *&v48[8] = *(&v8 + 1);
    *&v48[16] = *(v5 + 72);
    v48[24] = *(v5 + 80);
    v49 = v52;
    v50 = v53;
    v51[0] = v54[0];
    *(v51 + 9) = *(v54 + 9);
    sub_1BBA9B788(&v49, &v43);
    a1(v30, &v46);
    if (v2)
    {
      v10 = &v52;
      return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
    }

    IntelligenceElement.NavigationSplitPane.sidebarPane.setter(v30);
    sub_1BBA8BCC4(&v52, &qword_1EBC7BAA8);
  }

  v11 = *v3;
  swift_beginAccess();
  *(v51 + 9) = *(v11 + 129);
  v12 = *(v11 + 120);
  v13 = *(v11 + 104);
  v49 = *(v11 + 88);
  v50 = v13;
  v51[0] = v12;
  v14 = *(&v12 + 1);
  if (*(&v12 + 1))
  {
    v15 = *(v11 + 88);
    *&v48[9] = *(v11 + 129);
    v16 = *(v11 + 120);
    v17 = *(v11 + 104);
    v43 = v15;
    v44 = v17;
    *v45 = *(v11 + 120);
    *&v45[8] = v14;
    *&v45[16] = *(v11 + 136);
    v45[24] = *(v11 + 144);
    v46 = v15;
    v47 = v17;
    *v48 = v16;
    sub_1BBA9B788(&v46, &v40);
    a1(v31, &v43);
    if (v2)
    {
      v10 = &v49;
      return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
    }

    IntelligenceElement.NavigationSplitPane.contentPane.setter(v31);
    sub_1BBA8BCC4(&v49, &qword_1EBC7BAA8);
  }

  v18 = *v3;
  swift_beginAccess();
  *&v48[9] = *(v18 + 193);
  v19 = *(v18 + 184);
  v20 = *(v18 + 168);
  v46 = *(v18 + 152);
  v47 = v20;
  *v48 = v19;
  v21 = *(&v19 + 1);
  if (*(&v19 + 1))
  {
    v22 = *(v18 + 152);
    *&v45[9] = *(v18 + 193);
    v23 = *(v18 + 184);
    v24 = *(v18 + 168);
    v40 = v22;
    v41 = v24;
    *v42 = *(v18 + 184);
    *&v42[8] = v21;
    *&v42[16] = *(v18 + 200);
    v42[24] = *(v18 + 208);
    v43 = v22;
    v44 = v24;
    *v45 = v23;
    sub_1BBA9B788(&v43, v34);
    a1(v32, &v40);
    if (v2)
    {
      v10 = &v46;
      return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
    }

    IntelligenceElement.NavigationSplitPane.detailPane.setter(v32);
    sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
  }

  v25 = *v3;
  result = swift_beginAccess();
  *&v45[9] = *(v25 + 257);
  v27 = *(v25 + 248);
  v28 = *(v25 + 232);
  v43 = *(v25 + 216);
  v44 = v28;
  *v45 = v27;
  if (!*(&v27 + 1))
  {
    return result;
  }

  *&v42[9] = *(v25 + 257);
  v29 = *(v25 + 248);
  v41 = *(v25 + 232);
  *v42 = v29;
  v34[0] = *(v25 + 216);
  v34[1] = v41;
  v35 = *(v25 + 248);
  v36 = *(&v27 + 1);
  v37 = *(v25 + 264);
  v38 = *(v25 + 272);
  v40 = v34[0];
  sub_1BBA9B788(&v40, v33);
  a1(v39, v34);
  if (!v2)
  {
    IntelligenceElement.NavigationSplitPane.inspectorPane.setter(v39);
  }

  v10 = &v43;
  return sub_1BBA8BCC4(v10, &qword_1EBC7BAA8);
}

uint64_t IntelligenceElement.NavigationSplitPane.Pane.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD98);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDA0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDA8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDB0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDB8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB46C08();
  sub_1BBB84478();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BBB46CB0();
      v18 = v27;
      sub_1BBB84208();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BBB46C5C();
      v18 = v30;
      sub_1BBB84208();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BBB46D04();
    v18 = v24;
    sub_1BBB84208();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BBB46D58();
  sub_1BBB84208();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t IntelligenceElement.NavigationSplitPane.Pane.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDE8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDF0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CDF8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE00);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE08);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBB46C08();
  v15 = v46;
  sub_1BBB84458();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BBB841F8();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BBAD2E0C();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BBB84058();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v28 = &type metadata for IntelligenceElement.NavigationSplitPane.Pane;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BBB46D04();
        v32 = v35;
        sub_1BBB84118();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BBB46D58();
        v25 = v35;
        sub_1BBB84118();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BBB46CB0();
      v31 = v35;
      sub_1BBB84118();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BBB46C5C();
      v33 = v35;
      sub_1BBB84118();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1BBB441D4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB442E0()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB443D8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB444E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB48D4C();
  *a1 = result;
  return result;
}

void sub_1BBB44510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073656E61;
  v4 = 0x50656C6269736976;
  v5 = 0x50746E65746E6F63;
  v6 = 0xEB00000000656E61;
  v7 = 0xEA0000000000656ELL;
  v8 = 0x61506C6961746564;
  if (v2 != 3)
  {
    v8 = 0x6F74636570736E69;
    v7 = 0xED0000656E615072;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x5072616265646973;
    v3 = 0xEB00000000656E61;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1BBB445D8()
{
  v1 = *v0;
  v2 = 0x50656C6269736976;
  v3 = 0x50746E65746E6F63;
  v4 = 0x61506C6961746564;
  if (v1 != 3)
  {
    v4 = 0x6F74636570736E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5072616265646973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BBB4469C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB48D4C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB446C4(uint64_t a1)
{
  v2 = sub_1BBB46DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB44700(uint64_t a1)
{
  v2 = sub_1BBB46DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.NavigationSplitPane.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE10);
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB46DAC();
  sub_1BBB84478();
  swift_beginAccess();
  if (!*(*(v7 + 16) + 16) || (*&v50[0] = *(v7 + 16), LOBYTE(v47) = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE20), sub_1BBB46E54(&qword_1EBC7CE28, sub_1BBB46E00), sub_1BBB84288(), !v2))
  {
    v8 = *(v7 + 40);
    v9 = *(v7 + 24);
    v10 = *(v7 + 56);
    *(v51 + 9) = *(v7 + 65);
    v50[1] = v8;
    v51[0] = v10;
    v50[0] = v9;
    v47 = v9;
    v48 = v8;
    v49[0] = v10;
    *(v49 + 9) = *(v51 + 9);
    v46 = 1;
    sub_1BBA9EDF0(v50, &v43);
    sub_1BBAB5674();
    sub_1BBB84238();
    if (v2)
    {
      v43 = v47;
      v44 = v48;
      *v45 = v49[0];
      *&v45[9] = *(v49 + 9);
      v11 = &v43;
    }

    else
    {
      v41[0] = v47;
      v41[1] = v48;
      v42[0] = v49[0];
      *(v42 + 9) = *(v49 + 9);
      sub_1BBA8BCC4(v41, &qword_1EBC7BAA8);
      v12 = *(v7 + 104);
      v43 = *(v7 + 88);
      v44 = v12;
      *v45 = *(v7 + 120);
      *&v45[9] = *(v7 + 129);
      v13 = *(v7 + 104);
      v38 = *(v7 + 88);
      v39 = v13;
      v40[0] = *(v7 + 120);
      *(v40 + 9) = *(v7 + 129);
      v37 = 2;
      sub_1BBA9EDF0(&v43, v35);
      sub_1BBB84238();
      v33[0] = v38;
      v33[1] = v39;
      v34[0] = v40[0];
      *(v34 + 9) = *(v40 + 9);
      sub_1BBA8BCC4(v33, &qword_1EBC7BAA8);
      v14 = *(v7 + 168);
      v35[0] = *(v7 + 152);
      v35[1] = v14;
      *v36 = *(v7 + 184);
      *&v36[9] = *(v7 + 193);
      v15 = *(v7 + 168);
      v30 = *(v7 + 152);
      v31 = v15;
      v32[0] = *(v7 + 184);
      *(v32 + 9) = *(v7 + 193);
      v29 = 3;
      sub_1BBA9EDF0(v35, v27);
      sub_1BBB84238();
      v25[0] = v30;
      v25[1] = v31;
      v26[0] = v32[0];
      *(v26 + 9) = *(v32 + 9);
      sub_1BBA8BCC4(v25, &qword_1EBC7BAA8);
      v16 = *(v7 + 232);
      v27[0] = *(v7 + 216);
      v27[1] = v16;
      *v28 = *(v7 + 248);
      *&v28[9] = *(v7 + 257);
      v17 = *(v7 + 232);
      v22 = *(v7 + 216);
      v23 = v17;
      v24[0] = *(v7 + 248);
      *(v24 + 9) = *(v7 + 257);
      v21 = 4;
      sub_1BBA9EDF0(v27, v19);
      sub_1BBB84238();
      v19[0] = v22;
      v19[1] = v23;
      *v20 = v24[0];
      *&v20[9] = *(v24 + 9);
      v11 = v19;
    }

    sub_1BBA8BCC4(v11, &qword_1EBC7BAA8);
  }

  return (*(v52 + 8))(v6, v4);
}

uint64_t IntelligenceElement.NavigationSplitPane.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BBB46DAC();
  sub_1BBB84458();
  if (!v2)
  {
    v23 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CE20);
    LOBYTE(v45) = 0;
    sub_1BBB46E54(&qword_1EBC7CE40, sub_1BBB46ECC);
    sub_1BBB84178();
    if (v49)
    {
      v10 = v49;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v48 = 1;
    sub_1BBAB80F0();
    sub_1BBB84178();
    v22 = v10;
    v45 = v49;
    v46 = v50;
    *v47 = v51[0];
    *&v47[9] = *(v51 + 9);
    v41 = 2;
    sub_1BBB84178();
    v38 = v42;
    v39 = v43;
    *v40 = v44[0];
    *&v40[9] = *(v44 + 9);
    v34 = 3;
    sub_1BBB84178();
    v31 = v35;
    v32 = v36;
    *v33 = v37[0];
    *&v33[9] = *(v37 + 9);
    v27 = 4;
    sub_1BBB84178();
    (*(v6 + 8))(v8, v5);
    *(v26 + 7) = v38;
    *(&v26[1] + 7) = v39;
    *(&v26[2] + 7) = *v40;
    v26[3] = *&v40[9];
    *(v25 + 7) = v31;
    *(&v25[1] + 7) = v32;
    *(&v25[2] + 7) = *v33;
    v25[3] = *&v33[9];
    v24[3] = *(v30 + 9);
    *(&v24[2] + 7) = v30[0];
    *(&v24[1] + 7) = v29;
    *(v24 + 7) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CD90);
    v12 = swift_allocObject();
    *(v12 + 16) = v22;
    v13 = v46;
    *(v12 + 24) = v45;
    *(v12 + 40) = v13;
    *(v12 + 56) = *v47;
    *(v12 + 65) = *&v47[9];
    v14 = v26[1];
    *(v12 + 81) = v26[0];
    *(v12 + 97) = v14;
    v15 = v26[3];
    *(v12 + 113) = v26[2];
    *(v12 + 129) = v15;
    v16 = v25[0];
    v17 = v25[1];
    v18 = v25[2];
    *(v12 + 193) = v25[3];
    *(v12 + 177) = v18;
    *(v12 + 161) = v17;
    *(v12 + 145) = v16;
    v19 = v24[2];
    *(v12 + 257) = v24[3];
    v20 = v24[1];
    *(v12 + 209) = v24[0];
    *(v12 + 225) = v20;
    *(v12 + 241) = v19;
    *v23 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1BBB45194()
{
  v1 = 0x72616265646953;
  v2 = 0x6C6961746544;
  if (*v0 != 2)
  {
    v2 = 0x6F74636570736E49;
  }

  if (*v0)
  {
    v1 = 0x746E65746E6F43;
  }

  if (*v0 <= 1u)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v5 = v3;

  MEMORY[0x1BFB16150](0x656E615020, 0xE500000000000000);

  return v5;
}

unint64_t IntelligenceElement.NavigationSplitPane.description.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = sub_1BBB45708(*(v2 + 16), 0);
    v6 = sub_1BBB46A00(&v31, v5 + 32, v3, v2);
    swift_bridgeObjectRetain_n();
    sub_1BBACB558();
    if (v6 == v3)
    {

      v31 = v5;
      sub_1BBB45DC0(&v31);
      v8 = v31;
      v9 = *(v31 + 16);
      if (v9)
      {
        sub_1BBAE4F00(0, v9, 0);
        v10 = 32;
        do
        {
          v11 = *(v8 + v10);
          v12 = 0x6C6961746544;
          if (v11 != 2)
          {
            v12 = 0x6F74636570736E49;
          }

          v13 = 0xE600000000000000;
          if (v11 != 2)
          {
            v13 = 0xE900000000000072;
          }

          v14 = 0x72616265646953;
          if (*(v8 + v10))
          {
            v14 = 0x746E65746E6F43;
          }

          if (*(v8 + v10) <= 1u)
          {
            v15 = v14;
          }

          else
          {
            v15 = v12;
          }

          if (*(v8 + v10) <= 1u)
          {
            v16 = 0xE700000000000000;
          }

          else
          {
            v16 = v13;
          }

          v31 = v15;
          v32 = v16;

          MEMORY[0x1BFB16150](0x656E615020, 0xE500000000000000);

          sub_1BBAE8250();
          v17 = sub_1BBB83ED8();
          v19 = v18;

          v21 = *(v4 + 2);
          v20 = *(v4 + 3);
          if (v21 >= v20 >> 1)
          {
            sub_1BBAE4F00((v20 > 1), v21 + 1, 1);
          }

          *(v4 + 2) = v21 + 1;
          v22 = &v4[16 * v21];
          *(v22 + 4) = v17;
          *(v22 + 5) = v19;
          ++v10;
          --v9;
        }

        while (v9);
      }

      v31 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
      sub_1BBAA6710(&qword_1EBC7AEB8, &qword_1EBC7B590);
      v23 = sub_1BBB83938();
      v25 = v24;

      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1BBB84028();

      v31 = 0x50656C6269736976;
      v32 = 0xEF5B203A73656E61;
      MEMORY[0x1BFB16150](v23, v25);

      MEMORY[0x1BFB16150](93, 0xE100000000000000);
      v3 = v31;
      v5 = v32;
      v4 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v6 = *(v4 + 2);
      v7 = *(v4 + 3);
      v2 = (v6 + 1);
      if (v6 < v7 >> 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    v4 = sub_1BBA86A94((v7 > 1), v2, 1, v4);
LABEL_21:
    *(v4 + 2) = v2;
    v26 = &v4[16 * v6];
    *(v26 + 4) = v3;
    *(v26 + 5) = v5;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1BBB84028();

  v31 = 0xD000000000000014;
  v32 = 0x80000001BBB9CFB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBAA6710(&qword_1EBC7AEB8, &qword_1EBC7B590);
  v27 = sub_1BBB83938();
  v29 = v28;

  MEMORY[0x1BFB16150](v27, v29);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v31;
}

void *sub_1BBB45708(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CEE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1BBB4577C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BBB45888(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BBB4597C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BBB45A88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CEF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1BBB45BE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BBB45DC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BBB46AFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BBB45E2C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BBB45E2C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BBB842C8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BBB83BF8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BBB45FEC(v7, v8, a1, v4);
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
    return sub_1BBB45F24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BBB45F24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    do
    {
      v5 = *(v4 + a3);
      v6 = a3;
      while (2)
      {
        if (qword_1F3AAA318)
        {
          v7 = 0;
          v8 = v6 - 1;
          v9 = *(v4 + v6 - 1);
          while (*(&unk_1F3AAA308 + v7 + 32) != v5)
          {
            if (qword_1F3AAA318 == ++v7)
            {
              v7 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_12;
            }
          }

          if (!qword_1F3AAA318)
          {
LABEL_15:
            if (v7 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            goto LABEL_18;
          }

LABEL_12:
          v10 = 0;
          while (*(&unk_1F3AAA308 + v10 + 32) != v9)
          {
            if (qword_1F3AAA318 == ++v10)
            {
              goto LABEL_15;
            }
          }

          if (v7 >= v10)
          {
            break;
          }

LABEL_18:
          if (!v4)
          {
            __break(1u);
            return result;
          }

          *(v4 + v6) = v9;
          *(v4 + v8) = v5;
          --v6;
          if (v8 != result)
          {
            continue;
          }
        }

        break;
      }

      ++a3;
    }

    while (a3 != a2);
  }

  return result;
}

uint64_t sub_1BBB45FEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_122:
    v11 = *v88;
    if (!*v88)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_124:
      v83 = *(v9 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = *&v9[16 * v83];
          v85 = *&v9[16 * v83 + 24];
          sub_1BBB46684((*a3 + v84), (*a3 + *&v9[16 * v83 + 16]), *a3 + v85, v11);
          if (v5)
          {
          }

          if (v85 < v84)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1BBB469EC(v9);
          }

          if (v83 - 2 >= *(v9 + 2))
          {
            goto LABEL_148;
          }

          v86 = &v9[16 * v83];
          *v86 = v84;
          *(v86 + 1) = v85;
          result = sub_1BBB46960(v83 - 1);
          v83 = *(v9 + 2);
          if (v83 <= 1)
          {
          }
        }

        goto LABEL_158;
      }
    }

LABEL_154:
    result = sub_1BBB469EC(v9);
    v9 = result;
    goto LABEL_124;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1F3AAA000;
  result = 0x7FFFFFFFFFFFFFFFLL;
  v11 = &unk_1F3AAA308;
LABEL_4:
  v12 = v8++;
  if (v8 < v6)
  {
    v13 = *a3;
    v14 = *(*a3 + v8);
    v15 = v10[99];
    if (v15)
    {
      v16 = 0;
      while (1)
      {
        v17 = *(&unk_1F3AAA308 + v16 + 32) == v14;
        if (*(&unk_1F3AAA308 + v16 + 32) == v14)
        {
          break;
        }

        if (v15 == ++v16)
        {
          v16 = 0;
          break;
        }
      }

      v18 = 0;
      while (*(&unk_1F3AAA308 + v18 + 32) != *(v13 + v12))
      {
        if (v15 == ++v18)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
LABEL_15:
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v19 = v16 < v18 && v17;
    v8 = v12 + 2;
    if (v12 + 2 < v6)
    {
      do
      {
        v20 = *(v13 + v8);
        if (v15)
        {
          v21 = 0;
          while (*(&unk_1F3AAA308 + v21 + 32) != v20)
          {
            if (v15 == ++v21)
            {
              v21 = 0x7FFFFFFFFFFFFFFFLL;
              break;
            }
          }

          v22 = 0;
          while (*(&unk_1F3AAA308 + v22 + 32) != v14)
          {
            if (v15 == ++v22)
            {
              if (((v19 ^ (v21 == 0x7FFFFFFFFFFFFFFFLL)) & 1) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_22;
            }
          }

          if (v19 != v21 >= v22)
          {
            goto LABEL_22;
          }

          goto LABEL_35;
        }

        if (v19)
        {
          goto LABEL_35;
        }

LABEL_22:
        ++v8;
        v14 = v20;
      }

      while (v8 != v6);
      v8 = v6;
      if (v19)
      {
        goto LABEL_36;
      }
    }

    else
    {
LABEL_35:
      if (v19)
      {
LABEL_36:
        if (v8 < v12)
        {
          goto LABEL_151;
        }

        if (v12 < v8)
        {
          v23 = v8 - 1;
          v24 = v12;
          do
          {
            if (v24 != v23)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_157;
              }

              v27 = *(v26 + v24);
              *(v26 + v24) = *(v26 + v23);
              *(v26 + v23) = v27;
            }
          }

          while (++v24 < v23--);
          v6 = a3[1];
        }
      }
    }
  }

  if (v8 >= v6)
  {
    goto LABEL_71;
  }

  if (__OFSUB__(v8, v12))
  {
    goto LABEL_150;
  }

  if (v8 - v12 >= v7)
  {
    goto LABEL_71;
  }

  if (__OFADD__(v12, v7))
  {
    goto LABEL_152;
  }

  if (v12 + v7 < v6)
  {
    v6 = v12 + v7;
  }

  if (v6 < v12)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v8 == v6)
  {
    goto LABEL_71;
  }

  v28 = *a3;
LABEL_55:
  v29 = *(v28 + v8);
  v30 = v8;
  while (1)
  {
    v31 = v10[99];
    if (!v31)
    {
      goto LABEL_54;
    }

    v32 = 0;
    v33 = v30 - 1;
    v34 = *(v28 + v30 - 1);
    while (*(&unk_1F3AAA308 + v32 + 32) != v29)
    {
      if (v31 == ++v32)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }

    for (i = 0; i != v31; ++i)
    {
      if (*(&unk_1F3AAA308 + i + 32) == v34)
      {
        if (v32 >= i)
        {
          goto LABEL_54;
        }

        goto LABEL_67;
      }
    }

    if (v32 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_54;
    }

LABEL_67:
    if (!v28)
    {
      break;
    }

    *(v28 + v30) = v34;
    *(v28 + v33) = v29;
    --v30;
    if (v33 == v12)
    {
LABEL_54:
      if (++v8 != v6)
      {
        goto LABEL_55;
      }

      v8 = v6;
LABEL_71:
      if (v8 < v12)
      {
        goto LABEL_149;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BBABEBA8(0, *(v9 + 2) + 1, 1, v9);
        v9 = result;
      }

      v37 = *(v9 + 2);
      v36 = *(v9 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_1BBABEBA8((v36 > 1), v37 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 2) = v38;
      v39 = &v9[16 * v37];
      *(v39 + 4) = v12;
      *(v39 + 5) = v8;
      v40 = *v88;
      if (!*v88)
      {
        goto LABEL_159;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v42 = *(v9 + 4);
            v43 = *(v9 + 5);
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_91:
            if (v45)
            {
              goto LABEL_138;
            }

            v58 = &v9[16 * v38];
            v60 = *v58;
            v59 = *(v58 + 1);
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_141;
            }

            v64 = &v9[16 * v41 + 32];
            v66 = *v64;
            v65 = *(v64 + 1);
            v52 = __OFSUB__(v65, v66);
            v67 = v65 - v66;
            if (v52)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v62, v67))
            {
              goto LABEL_145;
            }

            if (v62 + v67 >= v44)
            {
              if (v44 < v67)
              {
                v41 = v38 - 2;
              }

              goto LABEL_112;
            }

            goto LABEL_105;
          }

          v68 = &v9[16 * v38];
          v70 = *v68;
          v69 = *(v68 + 1);
          v52 = __OFSUB__(v69, v70);
          v62 = v69 - v70;
          v63 = v52;
LABEL_105:
          if (v63)
          {
            goto LABEL_140;
          }

          v71 = &v9[16 * v41];
          v73 = *(v71 + 4);
          v72 = *(v71 + 5);
          v52 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v52)
          {
            goto LABEL_143;
          }

          if (v74 < v62)
          {
            goto LABEL_3;
          }

LABEL_112:
          v79 = v41 - 1;
          if (v41 - 1 >= v38)
          {
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          if (!*a3)
          {
            goto LABEL_156;
          }

          v80 = *&v9[16 * v79 + 32];
          v81 = *&v9[16 * v41 + 40];
          sub_1BBB46684((*a3 + v80), (*a3 + *&v9[16 * v41 + 32]), *a3 + v81, v40);
          if (v5)
          {
          }

          if (v81 < v80)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1BBB469EC(v9);
          }

          if (v79 >= *(v9 + 2))
          {
            goto LABEL_135;
          }

          v82 = &v9[16 * v79];
          *(v82 + 4) = v80;
          *(v82 + 5) = v81;
          result = sub_1BBB46960(v41);
          v38 = *(v9 + 2);
          if (v38 <= 1)
          {
            goto LABEL_3;
          }
        }

        v46 = &v9[16 * v38 + 32];
        v47 = *(v46 - 64);
        v48 = *(v46 - 56);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_136;
        }

        v51 = *(v46 - 48);
        v50 = *(v46 - 40);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_137;
        }

        v53 = &v9[16 * v38];
        v55 = *v53;
        v54 = *(v53 + 1);
        v52 = __OFSUB__(v54, v55);
        v56 = v54 - v55;
        if (v52)
        {
          goto LABEL_139;
        }

        v52 = __OFADD__(v44, v56);
        v57 = v44 + v56;
        if (v52)
        {
          goto LABEL_142;
        }

        if (v57 >= v49)
        {
          v75 = &v9[16 * v41 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v52 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v52)
          {
            goto LABEL_146;
          }

          if (v44 < v78)
          {
            v41 = v38 - 2;
          }

          goto LABEL_112;
        }

        goto LABEL_91;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      v10 = &unk_1F3AAA000;
      result = 0x7FFFFFFFFFFFFFFFLL;
      if (v8 >= v6)
      {
        goto LABEL_122;
      }

      goto LABEL_4;
    }
  }

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
  return result;
}

uint64_t sub_1BBB46684(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      v16 = qword_1F3AAA318;
      do
      {
        v17 = v6 - 1;
        v18 = v5;
        v19 = v10;
        while (1)
        {
          v21 = *--v19;
          v20 = v21;
          if (v16)
          {
            break;
          }

          v5 = v18 - 1;
LABEL_52:
          if (v18 < v10 || v5 >= v10)
          {
            *v5 = v20;
            v16 = qword_1F3AAA318;
          }

          v10 = v19;
          v18 = v5;
          if (v19 <= v4)
          {
            v10 = v19;
            goto LABEL_63;
          }
        }

        v22 = 0;
        v23 = *v17;
        while (*(&unk_1F3AAA308 + v22 + 32) != v20)
        {
          if (v16 == ++v22)
          {
            v5 = v18 - 1;
            v22 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_46;
          }
        }

        v5 = v18 - 1;
LABEL_46:
        v24 = 0;
        while (*(&unk_1F3AAA308 + v24 + 32) != v23)
        {
          if (v16 == ++v24)
          {
            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_52;
            }

            goto LABEL_55;
          }
        }

        if (v22 >= v24)
        {
          goto LABEL_52;
        }

LABEL_55:
        if (v18 < v6 || v5 >= v6)
        {
          *v5 = v23;
          v16 = qword_1F3AAA318;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v17 > v7);
      v6 = v17;
      if (v17 == v4)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

LABEL_63:
    if (v6 != v4)
    {
LABEL_65:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (qword_1F3AAA318)
        {
          v11 = 0;
          v12 = *v6;
          while (*(&unk_1F3AAA308 + v11 + 32) != v12)
          {
            if (qword_1F3AAA318 == ++v11)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_13;
            }
          }

          if (!qword_1F3AAA318)
          {
LABEL_16:
            if (v11 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_17;
            }

            goto LABEL_21;
          }

LABEL_13:
          v13 = 0;
          while (*(&unk_1F3AAA308 + v13 + 32) != *v4)
          {
            if (qword_1F3AAA318 == ++v13)
            {
              goto LABEL_16;
            }
          }

          if (v11 >= v13)
          {
            goto LABEL_17;
          }

LABEL_21:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_26;
          }
        }

        else
        {
LABEL_17:
          v14 = v4 + 1;
          LOBYTE(v12) = *v4;
          v15 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_26;
            }
          }
        }

        *v7 = v12;
LABEL_26:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_65;
    }
  }

LABEL_64:
  if (v6 >= v10)
  {
    goto LABEL_65;
  }

  return 1;
}

uint64_t sub_1BBB46960(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BBB469EC(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1BBB46A00(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV19NavigationSplitPaneV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  memcpy(__dst, (v2 + 16), 0x101uLL);
  memcpy(v6, (v2 + 16), 0x101uLL);
  swift_beginAccess();
  memcpy(v8, (v3 + 16), 0x101uLL);
  memcpy(__src, (v3 + 16), 0x101uLL);
  sub_1BBB42740(__dst, v10);
  sub_1BBB42740(v8, v10);
  LOBYTE(v2) = sub_1BBB476A0(v6, __src);
  memcpy(v9, __src, 0x101uLL);
  sub_1BBB42778(v9);
  memcpy(v10, v6, 0x101uLL);
  sub_1BBB42778(v10);
  return v2 & 1;
}

unint64_t sub_1BBB46C08()
{
  result = qword_1EBC7CDC0;
  if (!qword_1EBC7CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CDC0);
  }

  return result;
}

unint64_t sub_1BBB46C5C()
{
  result = qword_1EBC7CDC8;
  if (!qword_1EBC7CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CDC8);
  }

  return result;
}

unint64_t sub_1BBB46CB0()
{
  result = qword_1EBC7CDD0;
  if (!qword_1EBC7CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CDD0);
  }

  return result;
}

unint64_t sub_1BBB46D04()
{
  result = qword_1EBC7CDD8;
  if (!qword_1EBC7CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CDD8);
  }

  return result;
}

unint64_t sub_1BBB46D58()
{
  result = qword_1EBC7CDE0;
  if (!qword_1EBC7CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CDE0);
  }

  return result;
}

unint64_t sub_1BBB46DAC()
{
  result = qword_1EBC7CE18;
  if (!qword_1EBC7CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE18);
  }

  return result;
}

unint64_t sub_1BBB46E00()
{
  result = qword_1EBC7CE30;
  if (!qword_1EBC7CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE30);
  }

  return result;
}

uint64_t sub_1BBB46E54(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7CE20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBB46ECC()
{
  result = qword_1EBC7CE48;
  if (!qword_1EBC7CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE48);
  }

  return result;
}

unint64_t sub_1BBB46F24()
{
  result = qword_1EBC7CE50;
  if (!qword_1EBC7CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE50);
  }

  return result;
}

unint64_t sub_1BBB46FC0()
{
  result = qword_1EBC7CE68;
  if (!qword_1EBC7CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE68);
  }

  return result;
}

uint64_t keypath_set_7Tm(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  sub_1BBA9EDF0(v10, &v9);
  return a5(a1);
}

uint64_t sub_1BBB470F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_1BBB4713C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBB471D4()
{
  result = qword_1EBC7CE70;
  if (!qword_1EBC7CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE70);
  }

  return result;
}

unint64_t sub_1BBB4722C()
{
  result = qword_1EBC7CE78;
  if (!qword_1EBC7CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE78);
  }

  return result;
}

unint64_t sub_1BBB47284()
{
  result = qword_1EBC7CE80;
  if (!qword_1EBC7CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE80);
  }

  return result;
}

unint64_t sub_1BBB472DC()
{
  result = qword_1EBC7CE88;
  if (!qword_1EBC7CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE88);
  }

  return result;
}

unint64_t sub_1BBB47334()
{
  result = qword_1EBC7CE90;
  if (!qword_1EBC7CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE90);
  }

  return result;
}

unint64_t sub_1BBB4738C()
{
  result = qword_1EBC7CE98;
  if (!qword_1EBC7CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CE98);
  }

  return result;
}

unint64_t sub_1BBB473E4()
{
  result = qword_1EBC7CEA0;
  if (!qword_1EBC7CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEA0);
  }

  return result;
}

unint64_t sub_1BBB4743C()
{
  result = qword_1EBC7CEA8;
  if (!qword_1EBC7CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEA8);
  }

  return result;
}

unint64_t sub_1BBB47494()
{
  result = qword_1EBC7CEB0;
  if (!qword_1EBC7CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEB0);
  }

  return result;
}

unint64_t sub_1BBB474EC()
{
  result = qword_1EBC7CEB8;
  if (!qword_1EBC7CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEB8);
  }

  return result;
}

unint64_t sub_1BBB47544()
{
  result = qword_1EBC7CEC0;
  if (!qword_1EBC7CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEC0);
  }

  return result;
}

unint64_t sub_1BBB4759C()
{
  result = qword_1EBC7CEC8;
  if (!qword_1EBC7CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CEC8);
  }

  return result;
}

unint64_t sub_1BBB475F4()
{
  result = qword_1EBC7CED0;
  if (!qword_1EBC7CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CED0);
  }

  return result;
}

unint64_t sub_1BBB4764C()
{
  result = qword_1EBC7CED8;
  if (!qword_1EBC7CED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CED8);
  }

  return result;
}

uint64_t sub_1BBB476A0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v68[0] = *(a1 + 8);
  v68[1] = v5;
  v69[0] = *(a1 + 40);
  *(v69 + 9) = *(a1 + 49);
  v6 = *(a1 + 88);
  v70 = *(a1 + 72);
  v71 = v6;
  *v72 = *(a1 + 104);
  *&v72[9] = *(a1 + 113);
  v7 = *(a1 + 136);
  v8 = *(a1 + 152);
  v9 = *(a1 + 168);
  *&v75[9] = *(a1 + 177);
  v74 = v8;
  *v75 = v9;
  v73 = v7;
  v10 = *(a1 + 216);
  v76 = *(a1 + 200);
  v77 = v10;
  *v78 = *(a1 + 232);
  *&v78[9] = *(a1 + 241);
  v11 = *a2;
  v12 = *(a2 + 24);
  v79[0] = *(a2 + 8);
  v79[1] = v12;
  v80[0] = *(a2 + 40);
  *(v80 + 9) = *(a2 + 49);
  *&v83[9] = *(a2 + 113);
  v13 = *(a2 + 104);
  v14 = *(a2 + 72);
  v82 = *(a2 + 88);
  *v83 = v13;
  v81 = v14;
  *&v86[9] = *(a2 + 177);
  v15 = *(a2 + 168);
  v16 = *(a2 + 136);
  v85 = *(a2 + 152);
  *v86 = v15;
  v84 = v16;
  v17 = *(a2 + 200);
  v18 = *(a2 + 216);
  v19 = *(a2 + 232);
  *&v89[9] = *(a2 + 241);
  v88 = v18;
  *v89 = v19;
  v87 = v17;
  if ((sub_1BBB1BCA0(v4, v11) & 1) == 0)
  {
    goto LABEL_37;
  }

  v20 = *(&v69[0] + 1);
  *&v67[7] = *(a2 + 8);
  *&v67[23] = *(a2 + 24);
  *&v67[39] = *(a2 + 40);
  v21 = *(&v80[0] + 1);
  if (!*(&v69[0] + 1))
  {
    if (!*(&v80[0] + 1))
    {
      v31 = *(a1 + 24);
      v59 = *(a1 + 8);
      v60 = v31;
      *v61 = *(a1 + 40);
      *&v61[16] = *(a1 + 56);
      v61[24] = *(a1 + 64);
      sub_1BBA9EDF0(v68, &v56);
      sub_1BBA9EDF0(v79, &v56);
      sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
      goto LABEL_11;
    }

    sub_1BBA9EDF0(v68, &v59);
    sub_1BBA9EDF0(v79, &v59);
LABEL_9:
    v29 = *(a1 + 24);
    v59 = *(a1 + 8);
    v60 = v29;
    *v61 = *(a1 + 40);
    *&v61[8] = v20;
    *&v61[16] = *(a1 + 56);
    v61[24] = *(a1 + 64);
    v62 = *v67;
    *v63 = *&v67[16];
    *&v63[15] = *&v67[31];
    v66 = *(a2 + 64);
    v30 = *(a2 + 56);
    v64 = v21;
LABEL_36:
    v65 = v30;
    sub_1BBA8BCC4(&v59, &qword_1EBC7BB50);
LABEL_37:
    v38 = 0;
    return v38 & 1;
  }

  v22 = *(a1 + 40);
  v23 = *(a1 + 24);
  v59 = *(a1 + 8);
  v60 = v23;
  *v61 = v22;
  *&v61[8] = *(&v69[0] + 1);
  *&v61[16] = *(a1 + 56);
  v61[24] = *(a1 + 64);
  v56 = v59;
  v57 = v23;
  *(v58 + 9) = *&v61[9];
  v58[0] = *v61;
  if (!*(&v80[0] + 1))
  {
    v46 = v59;
    v47 = v60;
    *v48 = *v61;
    *&v48[9] = *&v61[9];
    sub_1BBA9EDF0(v68, &v43);
    sub_1BBA9EDF0(v79, &v43);
    sub_1BBA9EDF0(&v59, &v43);
    sub_1BBA9E174(&v46);
    goto LABEL_9;
  }

  v24 = *(a2 + 24);
  v46 = *(a2 + 8);
  v47 = v24;
  v25 = *(a2 + 40);
  v26 = *(a2 + 56);
  *&v48[8] = *(&v80[0] + 1);
  *&v48[16] = v26;
  v48[24] = *(a2 + 64);
  *v48 = v25;
  sub_1BBA9EDF0(v68, &v43);
  sub_1BBA9EDF0(v79, &v43);
  sub_1BBA9EDF0(&v59, &v43);
  v27 = static IntelligenceElement.== infix(_:_:)(&v56, &v46);
  v40 = v46;
  v41 = v47;
  v42[0] = *v48;
  *(v42 + 9) = *&v48[9];
  sub_1BBA9E174(&v40);
  v43 = v56;
  v44 = v57;
  v45[0] = v58[0];
  *(v45 + 9) = *(v58 + 9);
  sub_1BBA9E174(&v43);
  v28 = *(a1 + 24);
  v46 = *(a1 + 8);
  v47 = v28;
  *v48 = *(a1 + 40);
  *&v48[8] = v20;
  *&v48[16] = *(a1 + 56);
  v48[24] = *(a1 + 64);
  sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_11:
  v53 = v70;
  v54 = v71;
  *&v67[7] = v81;
  v32 = *&v72[8];
  v55 = *v72;
  v51 = *&v72[16];
  v52 = v72[24];
  *&v67[23] = v82;
  v33 = *&v83[8];
  *&v67[39] = *v83;
  v50 = v83[24];
  v49 = *&v83[16];
  if (*&v72[8])
  {
    v59 = v70;
    v60 = v71;
    *v61 = *v72;
    *&v61[16] = *&v72[16];
    v61[24] = v72[24];
    v56 = v70;
    v57 = v71;
    v58[0] = *v72;
    *(v58 + 9) = *&v61[9];
    if (!*&v83[8])
    {
      v46 = v59;
      v47 = v60;
      *v48 = *v61;
      *&v48[9] = *&v61[9];
      sub_1BBA9EDF0(&v70, &v43);
      v36 = &v81;
LABEL_34:
      sub_1BBA9EDF0(v36, &v43);
      sub_1BBA9EDF0(&v59, &v43);
      sub_1BBA9E174(&v46);
      goto LABEL_35;
    }

    v46 = v81;
    v47 = v82;
    *&v48[16] = *&v83[16];
    v48[24] = v83[24];
    *v48 = *v83;
    sub_1BBA9EDF0(&v70, &v43);
    sub_1BBA9EDF0(&v81, &v43);
    sub_1BBA9EDF0(&v59, &v43);
    v34 = static IntelligenceElement.== infix(_:_:)(&v56, &v46);
    v40 = v46;
    v41 = v47;
    v42[0] = *v48;
    *(v42 + 9) = *&v48[9];
    sub_1BBA9E174(&v40);
    v43 = v56;
    v44 = v57;
    v45[0] = v58[0];
    *(v45 + 9) = *(v58 + 9);
    sub_1BBA9E174(&v43);
    v46 = v53;
    v47 = v54;
    *v48 = v55;
    *&v48[8] = v32;
    *&v48[16] = v51;
    v48[24] = v52;
    sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
    if ((v34 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    if (*&v83[8])
    {
      sub_1BBA9EDF0(&v70, &v59);
      v35 = &v81;
      goto LABEL_32;
    }

    v59 = v70;
    v60 = v71;
    *v61 = *v72;
    *&v61[16] = *&v72[16];
    v61[24] = v72[24];
    sub_1BBA9EDF0(&v70, &v56);
    sub_1BBA9EDF0(&v81, &v56);
    sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
  }

  v53 = v73;
  v54 = v74;
  *&v67[7] = v84;
  v32 = *&v75[8];
  v55 = *v75;
  v51 = *&v75[16];
  v52 = v75[24];
  *&v67[23] = v85;
  v33 = *&v86[8];
  *&v67[39] = *v86;
  v50 = v86[24];
  v49 = *&v86[16];
  if (!*&v75[8])
  {
    if (!*&v86[8])
    {
      v59 = v73;
      v60 = v74;
      *v61 = *v75;
      *&v61[16] = *&v75[16];
      v61[24] = v75[24];
      sub_1BBA9EDF0(&v73, &v56);
      sub_1BBA9EDF0(&v84, &v56);
      sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
      goto LABEL_27;
    }

    sub_1BBA9EDF0(&v73, &v59);
    v35 = &v84;
LABEL_32:
    sub_1BBA9EDF0(v35, &v59);
LABEL_35:
    v59 = v53;
    v60 = v54;
    *v61 = v55;
    *&v61[8] = v32;
    *&v61[16] = v51;
    v61[24] = v52;
    v62 = *v67;
    *v63 = *&v67[16];
    *&v63[15] = *&v67[31];
    v66 = v50;
    v30 = v49;
    v64 = v33;
    goto LABEL_36;
  }

  v59 = v73;
  v60 = v74;
  *v61 = *v75;
  *&v61[16] = *&v75[16];
  v61[24] = v75[24];
  v56 = v73;
  v57 = v74;
  v58[0] = *v75;
  *(v58 + 9) = *&v61[9];
  if (!*&v86[8])
  {
    v46 = v59;
    v47 = v60;
    *v48 = *v61;
    *&v48[9] = *&v61[9];
    sub_1BBA9EDF0(&v73, &v43);
    v36 = &v84;
    goto LABEL_34;
  }

  v46 = v84;
  v47 = v85;
  *&v48[16] = *&v86[16];
  v48[24] = v86[24];
  *v48 = *v86;
  sub_1BBA9EDF0(&v73, &v43);
  sub_1BBA9EDF0(&v84, &v43);
  sub_1BBA9EDF0(&v59, &v43);
  v37 = static IntelligenceElement.== infix(_:_:)(&v56, &v46);
  v40 = v46;
  v41 = v47;
  v42[0] = *v48;
  *(v42 + 9) = *&v48[9];
  sub_1BBA9E174(&v40);
  v43 = v56;
  v44 = v57;
  v45[0] = v58[0];
  *(v45 + 9) = *(v58 + 9);
  sub_1BBA9E174(&v43);
  v46 = v53;
  v47 = v54;
  *v48 = v55;
  *&v48[8] = v32;
  *&v48[16] = v51;
  v48[24] = v52;
  sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
  if ((v37 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v53 = v76;
  v54 = v77;
  *&v67[7] = v87;
  v32 = *&v78[8];
  v55 = *v78;
  v51 = *&v78[16];
  v52 = v78[24];
  *&v67[23] = v88;
  v33 = *&v89[8];
  *&v67[39] = *v89;
  v50 = v89[24];
  v49 = *&v89[16];
  if (!*&v78[8])
  {
    if (!*&v89[8])
    {
      v59 = v76;
      v60 = v77;
      *v61 = *v78;
      *&v61[16] = *&v78[16];
      v61[24] = v78[24];
      sub_1BBA9EDF0(&v76, &v56);
      sub_1BBA9EDF0(&v87, &v56);
      sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
      v38 = 1;
      return v38 & 1;
    }

    sub_1BBA9EDF0(&v76, &v59);
    v35 = &v87;
    goto LABEL_32;
  }

  v59 = v76;
  v60 = v77;
  *v61 = *v78;
  *&v61[16] = *&v78[16];
  v61[24] = v78[24];
  v56 = v76;
  v57 = v77;
  v58[0] = *v78;
  *(v58 + 9) = *&v61[9];
  if (!*&v89[8])
  {
    v46 = v59;
    v47 = v60;
    *v48 = *v61;
    *&v48[9] = *&v61[9];
    sub_1BBA9EDF0(&v76, &v43);
    v36 = &v87;
    goto LABEL_34;
  }

  v46 = v87;
  v47 = v88;
  *&v48[16] = *&v89[16];
  v48[24] = v89[24];
  *v48 = *v89;
  sub_1BBA9EDF0(&v76, &v43);
  sub_1BBA9EDF0(&v87, &v43);
  sub_1BBA9EDF0(&v59, &v43);
  v38 = static IntelligenceElement.== infix(_:_:)(&v56, &v46);
  v40 = v46;
  v41 = v47;
  v42[0] = *v48;
  *(v42 + 9) = *&v48[9];
  sub_1BBA9E174(&v40);
  v43 = v56;
  v44 = v57;
  v45[0] = v58[0];
  *(v45 + 9) = *(v58 + 9);
  sub_1BBA9E174(&v43);
  v46 = v53;
  v47 = v54;
  *v48 = v55;
  *&v48[8] = v32;
  *&v48[16] = v51;
  v48[24] = v52;
  sub_1BBA8BCC4(&v46, &qword_1EBC7BAA8);
  return v38 & 1;
}

uint64_t sub_1BBB48094(uint64_t *a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 24);
  v6 = *(v3 + 40);
  v7 = *(v3 + 56);
  *(v61 + 9) = *(v3 + 65);
  v60 = v6;
  v61[0] = v7;
  v59 = v5;
  v8 = *(v3 + 40);
  v64 = *(v3 + 24);
  v65 = v8;
  v66 = *(v3 + 56);
  v9 = *(&v7 + 1);
  v10 = *(v3 + 72);
  v63 = *(v3 + 80);
  v62 = v10;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v11 = swift_allocObject();
    v12 = v64;
    v13 = v65;
    *(v11 + 16) = xmmword_1BBB85CE0;
    *(v11 + 32) = v12;
    *(v11 + 48) = v13;
    *(v11 + 64) = v66;
    *(v11 + 72) = v9;
    *(v11 + 80) = v62;
    *(v11 + 88) = v63;
    v51 = v59;
    v52 = v60;
    v53[0] = v61[0];
    *(v53 + 9) = *(v61 + 9);
    sub_1BBA9EDF0(&v59, &v43);
    sub_1BBA9B788(&v51, &v43);
    a2(0x2072616265646953, 0xEC000000656E6150, v11);
    sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
  }

  v53[0] = *(v3 + 120);
  *(v53 + 9) = *(v3 + 129);
  v14 = *(v3 + 104);
  v51 = *(v3 + 88);
  v52 = v14;
  v56 = v51;
  v57 = v14;
  v58 = *(v3 + 120);
  v15 = *(&v53[0] + 1);
  v16 = *(v3 + 136);
  v55 = *(v3 + 144);
  v54 = v16;
  if (*(&v53[0] + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v17 = swift_allocObject();
    v18 = v56;
    v19 = v57;
    *(v17 + 16) = xmmword_1BBB85CE0;
    *(v17 + 32) = v18;
    *(v17 + 48) = v19;
    *(v17 + 64) = v58;
    *(v17 + 72) = v15;
    *(v17 + 80) = v54;
    *(v17 + 88) = v55;
    v43 = v51;
    v44 = v52;
    v45[0] = v53[0];
    *(v45 + 9) = *(v53 + 9);
    sub_1BBA9EDF0(&v51, &v35);
    sub_1BBA9B788(&v43, &v35);
    a2(0x20746E65746E6F43, 0xEC000000656E6150, v17);
    sub_1BBA8BCC4(&v51, &qword_1EBC7BAA8);
  }

  v45[0] = *(v3 + 184);
  *(v45 + 9) = *(v3 + 193);
  v20 = *(v3 + 168);
  v43 = *(v3 + 152);
  v44 = v20;
  v48 = v43;
  v49 = v20;
  v50 = *(v3 + 184);
  v21 = *(&v45[0] + 1);
  v22 = *(v3 + 200);
  v47 = *(v3 + 208);
  v46 = v22;
  if (*(&v45[0] + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v23 = swift_allocObject();
    v24 = v48;
    v25 = v49;
    *(v23 + 16) = xmmword_1BBB85CE0;
    *(v23 + 32) = v24;
    *(v23 + 48) = v25;
    *(v23 + 64) = v50;
    *(v23 + 72) = v21;
    *(v23 + 80) = v46;
    *(v23 + 88) = v47;
    v35 = v43;
    v36 = v44;
    v37[0] = v45[0];
    *(v37 + 9) = *(v45 + 9);
    sub_1BBA9EDF0(&v43, v33);
    sub_1BBA9B788(&v35, v33);
    a2(0x50206C6961746544, 0xEB00000000656E61, v23);
    sub_1BBA8BCC4(&v43, &qword_1EBC7BAA8);
  }

  v37[0] = *(v3 + 248);
  *(v37 + 9) = *(v3 + 257);
  v26 = *(v3 + 232);
  v35 = *(v3 + 216);
  v36 = v26;
  v40 = v35;
  v41 = v26;
  v42 = *(v3 + 248);
  v27 = *(&v37[0] + 1);
  v28 = *(v3 + 264);
  v39 = *(v3 + 272);
  v38 = v28;
  if (*(&v37[0] + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v29 = swift_allocObject();
    v30 = v40;
    v31 = v41;
    *(v29 + 16) = xmmword_1BBB85CE0;
    *(v29 + 32) = v30;
    *(v29 + 48) = v31;
    *(v29 + 64) = v42;
    *(v29 + 72) = v27;
    *(v29 + 80) = v38;
    *(v29 + 88) = v39;
    v33[0] = v35;
    v33[1] = v36;
    v34[0] = v37[0];
    *(v34 + 9) = *(v37 + 9);
    sub_1BBA9EDF0(&v35, v32);
    sub_1BBA9B788(v33, v32);
    a2(0x6F74636570736E49, 0xEE00656E61502072, v29);
    sub_1BBA8BCC4(&v35, &qword_1EBC7BAA8);
  }

  return result;
}

uint64_t sub_1BBB48520(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  v9 = *(v8 + 24);
  v10 = *(v8 + 40);
  v11 = *(v8 + 56);
  *&v66[9] = *(v8 + 65);
  v65[1] = v10;
  *v66 = v11;
  v65[0] = v9;
  v12 = *(v8 + 40);
  v69 = *(v8 + 24);
  v70 = v12;
  v71 = *(v8 + 56);
  v13 = *(&v11 + 1);
  v14 = *(v8 + 72);
  v68 = *(v8 + 80);
  v67 = v14;
  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v15 = swift_allocObject();
    v16 = v69;
    v17 = v70;
    *(v15 + 16) = xmmword_1BBB85CE0;
    *(v15 + 32) = v16;
    *(v15 + 48) = v17;
    *(v15 + 64) = v71;
    *(v15 + 72) = v13;
    *(v15 + 80) = v67;
    *(v15 + 88) = v68;
    sub_1BBA9B788(a2, v63);
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9B788(a2, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9EDF0(v65, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9EDF0(v65, v63);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x2072616265646953, 0xEC000000656E6150, v63);
      v18 = a3;
      *(a3 + 216) = v63[0];
      v19 = a5;
    }

    else
    {
      sub_1BBA9B788(a2, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9EDF0(v65, v63);
      sub_1BBA9B788(a2, v63);
      sub_1BBA9EDF0(v65, v63);
      v19 = a5;
      v18 = a3;
    }

    v20 = a4;
    sub_1BBAA53D8(v15, v18, a4, v19);
    sub_1BBA9E174(a2);
    sub_1BBA8BCC4(v65, &qword_1EBC7BAA8);
    swift_setDeallocating();
    sub_1BBA9E174(v15 + 32);
    swift_deallocClassInstance();
  }

  else
  {
    sub_1BBA9B788(a2, v63);
    sub_1BBA9B788(a2, v63);
    sub_1BBA9B788(a2, v63);
    sub_1BBA9B788(a2, v63);
    v19 = a5;
    v20 = a4;
  }

  *v64 = *(v8 + 120);
  *&v64[9] = *(v8 + 129);
  v21 = *(v8 + 104);
  v63[0] = *(v8 + 88);
  v63[1] = v21;
  v60 = v63[0];
  v61 = v21;
  v62 = *(v8 + 120);
  v22 = *&v64[8];
  v23 = *(v8 + 136);
  v59 = *(v8 + 144);
  v58 = v23;
  if (*&v64[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    inited = swift_initStackObject();
    v25 = &off_1BBB85000;
    v26 = v60;
    v27 = v61;
    *(inited + 16) = xmmword_1BBB85CE0;
    *(inited + 32) = v26;
    *(inited + 48) = v27;
    *(inited + 64) = v62;
    *(inited + 72) = v22;
    *(inited + 80) = v58;
    *(inited + 88) = v59;
    v28 = a3;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9EDF0(v63, v51);
      sub_1BBA9B788(a2, v51);
      sub_1BBA9EDF0(v63, v51);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x20746E65746E6F43, 0xEC000000656E6150, v51);
      *(a3 + 216) = v51[0];
    }

    else
    {
      sub_1BBA9EDF0(v63, v51);
      sub_1BBA9B788(a2, v51);
      sub_1BBA9EDF0(v63, v51);
    }

    sub_1BBAA53D8(inited, a3, v20, v19);
    sub_1BBA9E174(a2);
    sub_1BBA8BCC4(v63, &qword_1EBC7BAA8);
    swift_setDeallocating();
    sub_1BBA9E174(inited + 32);
  }

  else
  {
    v25 = &off_1BBB85000;
    v28 = a3;
  }

  *v52 = *(v8 + 184);
  *&v52[9] = *(v8 + 193);
  v29 = *(v8 + 168);
  v51[0] = *(v8 + 152);
  v51[1] = v29;
  v55 = v51[0];
  v56 = v29;
  v57 = *(v8 + 184);
  v30 = *&v52[8];
  v31 = *(v8 + 200);
  v54 = *(v8 + 208);
  v53 = v31;
  if (*&v52[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v32 = swift_initStackObject();
    v33 = v55;
    v34 = v56;
    *(v32 + 16) = *(v25 + 206);
    *(v32 + 32) = v33;
    *(v32 + 48) = v34;
    *(v32 + 64) = v57;
    *(v32 + 72) = v30;
    *(v32 + 80) = v53;
    *(v32 + 88) = v54;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9EDF0(v51, v44);
      sub_1BBA9B788(a2, v44);
      sub_1BBA9EDF0(v51, v44);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x50206C6961746544, 0xEB00000000656E61, v44);
      *(v28 + 216) = v44[0];
    }

    else
    {
      sub_1BBA9EDF0(v51, v44);
      sub_1BBA9B788(a2, v44);
      sub_1BBA9EDF0(v51, v44);
    }

    sub_1BBAA53D8(v32, v28, v20, v19);
    sub_1BBA9E174(a2);
    sub_1BBA8BCC4(v51, &qword_1EBC7BAA8);
    swift_setDeallocating();
    sub_1BBA9E174(v32 + 32);
  }

  *v45 = *(v8 + 248);
  *&v45[9] = *(v8 + 257);
  v35 = *(v8 + 232);
  v44[0] = *(v8 + 216);
  v44[1] = v35;
  v48 = v44[0];
  v49 = v35;
  v50 = *(v8 + 248);
  v36 = *&v45[8];
  v37 = *(v8 + 264);
  v47 = *(v8 + 272);
  v46 = v37;
  if (*&v45[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v38 = swift_initStackObject();
    v39 = v48;
    v40 = v49;
    *(v38 + 16) = *(v25 + 206);
    *(v38 + 32) = v39;
    *(v38 + 48) = v40;
    *(v38 + 64) = v50;
    *(v38 + 72) = v36;
    *(v38 + 80) = v46;
    *(v38 + 88) = v47;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9EDF0(v44, v43);
      sub_1BBA9B788(a2, v43);
      sub_1BBA9EDF0(v44, v43);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x6F74636570736E49, 0xEE00656E61502072, v43);
      *(v28 + 216) = v43[0];
    }

    else
    {
      sub_1BBA9EDF0(v44, v43);
      sub_1BBA9B788(a2, v43);
      sub_1BBA9EDF0(v44, v43);
    }

    sub_1BBAA53D8(v38, v28, v20, v19);
    sub_1BBA9E174(a2);
    sub_1BBA8BCC4(v44, &qword_1EBC7BAA8);
    swift_setDeallocating();
    sub_1BBA9E174(v38 + 32);
  }

  sub_1BBA9E174(a2);
  sub_1BBA9E174(a2);
  sub_1BBA9E174(a2);
  return sub_1BBA9E174(a2);
}

uint64_t sub_1BBB48BE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616265646973 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6961746564 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F74636570736E69 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBB48D4C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t XPCClientMessage.TransferFragments.fragments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t XPCClientMessage.TransferFragments.timedOutAsyncTasksByRequest.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t XPCClientMessage.TransferFragments.signpostState.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1BBB48EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB49C9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB48ED8(uint64_t a1)
{
  v2 = sub_1BBAA433C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB48F14(uint64_t a1)
{
  v2 = sub_1BBAA433C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB48F50(uint64_t a1)
{
  v2 = sub_1BBA849B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB48F8C(uint64_t a1)
{
  v2 = sub_1BBA849B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB48FC8(uint64_t a1)
{
  v2 = sub_1BBA84A50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB49004(uint64_t a1)
{
  v2 = sub_1BBA84A50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB49040(uint64_t a1)
{
  v2 = sub_1BBB494E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4907C(uint64_t a1)
{
  v2 = sub_1BBB494E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB490B8(uint64_t a1)
{
  v2 = sub_1BBA9FBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB490F4(uint64_t a1)
{
  v2 = sub_1BBA9FBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCAgentMessage.RequestFragments.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21[0] = v3;
  *(v21 + 15) = *(v1 + 127);
  v4 = v1[1];
  v5 = v1[3];
  v16 = v1[2];
  v6 = v16;
  v17 = v5;
  v7 = v1[3];
  v8 = v1[5];
  v18 = v1[4];
  v9 = v18;
  v19 = v8;
  v10 = v1[1];
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = v1[7];
  a1[6] = v20;
  a1[7] = v12;
  *(a1 + 127) = *(v1 + 127);
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v2;
  *a1 = v11;
  a1[1] = v4;
  return sub_1BBA94F7C(v15, &v14);
}

__n128 XPCAgentMessage.RequestFragments.request.setter(uint64_t a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v12[0] = v3;
  *(v12 + 15) = *(v1 + 127);
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_1BBB49238(v11);
  v7 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v7;
  *(v1 + 127) = *(a1 + 127);
  v8 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v8;
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 XPCAgentMessage.RequestFragments.init(request:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 127) = *(a1 + 127);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1BBB492B4(uint64_t a1)
{
  v2 = sub_1BBA91984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB492F0(uint64_t a1)
{
  v2 = sub_1BBA91984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4932C(uint64_t a1)
{
  v2 = sub_1BBA8664C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB49368(uint64_t a1)
{
  v2 = sub_1BBA8664C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB493A4(uint64_t a1)
{
  v2 = sub_1BBA87078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB493E0(uint64_t a1)
{
  v2 = sub_1BBA87078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4941C(uint64_t a1)
{
  v2 = sub_1BBA91930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB49458(uint64_t a1)
{
  v2 = sub_1BBA91930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BBB49494()
{
  result = qword_1ED6BE3A8;
  if (!qword_1ED6BE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE3A8);
  }

  return result;
}

unint64_t sub_1BBB494E8()
{
  result = qword_1EBC7ADD8;
  if (!qword_1EBC7ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADD8);
  }

  return result;
}

unint64_t sub_1BBB4953C()
{
  result = qword_1EBC7ABB0;
  if (!qword_1EBC7ABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7CB68);
    sub_1BBA95864();
    sub_1BBAAE144(&qword_1EBC7AB90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ABB0);
  }

  return result;
}

void *sub_1BBB49614(void *result, int a2)
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

unint64_t sub_1BBB496C8()
{
  result = qword_1EBC7CF98;
  if (!qword_1EBC7CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CF98);
  }

  return result;
}

unint64_t sub_1BBB49720()
{
  result = qword_1EBC7CFA0;
  if (!qword_1EBC7CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFA0);
  }

  return result;
}

unint64_t sub_1BBB49778()
{
  result = qword_1EBC7CFA8;
  if (!qword_1EBC7CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFA8);
  }

  return result;
}

unint64_t sub_1BBB497D0()
{
  result = qword_1EBC7CFB0;
  if (!qword_1EBC7CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFB0);
  }

  return result;
}

unint64_t sub_1BBB49828()
{
  result = qword_1EBC7CFB8;
  if (!qword_1EBC7CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFB8);
  }

  return result;
}

unint64_t sub_1BBB49880()
{
  result = qword_1EBC7CFC0;
  if (!qword_1EBC7CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFC0);
  }

  return result;
}

unint64_t sub_1BBB498D8()
{
  result = qword_1EBC7CFC8;
  if (!qword_1EBC7CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7CFC8);
  }

  return result;
}

unint64_t sub_1BBB49930()
{
  result = qword_1ED6BECE0;
  if (!qword_1ED6BECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BECE0);
  }

  return result;
}

unint64_t sub_1BBB49988()
{
  result = qword_1ED6BECE8;
  if (!qword_1ED6BECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BECE8);
  }

  return result;
}

unint64_t sub_1BBB499E0()
{
  result = qword_1ED6BEF50;
  if (!qword_1ED6BEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF50);
  }

  return result;
}

unint64_t sub_1BBB49A38()
{
  result = qword_1ED6BEF58;
  if (!qword_1ED6BEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF58);
  }

  return result;
}

unint64_t sub_1BBB49A90()
{
  result = qword_1ED6BEF68;
  if (!qword_1ED6BEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF68);
  }

  return result;
}

unint64_t sub_1BBB49AE8()
{
  result = qword_1ED6BEF70;
  if (!qword_1ED6BEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF70);
  }

  return result;
}

unint64_t sub_1BBB49B40()
{
  result = qword_1ED6BEF78;
  if (!qword_1ED6BEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF78);
  }

  return result;
}

unint64_t sub_1BBB49B98()
{
  result = qword_1ED6BEF80;
  if (!qword_1ED6BEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEF80);
  }

  return result;
}

unint64_t sub_1BBB49BF0()
{
  result = qword_1ED6BEB38;
  if (!qword_1ED6BEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEB38);
  }

  return result;
}

unint64_t sub_1BBB49C48()
{
  result = qword_1ED6BEB40;
  if (!qword_1ED6BEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEB40);
  }

  return result;
}

uint64_t sub_1BBB49C9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656D67617266 && a2 == 0xE900000000000073;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001BBB9CFF0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736F706E676973 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBB49DCC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB49ED4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB49FEC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Section.Layout.description.getter()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0x6D6F74737563;
  }
}

uint64_t IntelligenceElement.Section.index.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.Section.index.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 96);
  v36[4] = *(v3 + 80);
  v36[5] = v8;
  v36[2] = v6;
  v36[3] = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 128);
  v11 = *(v3 + 160);
  v36[8] = *(v3 + 144);
  v36[9] = v11;
  v36[6] = v9;
  v36[7] = v10;
  v36[0] = v4;
  v36[1] = v5;
  v12 = *(v3 + 136);
  v43 = *(v3 + 120);
  v44 = v12;
  v45 = *(v3 + 152);
  v46 = *(v3 + 168);
  v13 = *(v3 + 72);
  v39 = *(v3 + 56);
  v40 = v13;
  v14 = *(v3 + 104);
  v41 = *(v3 + 88);
  v42 = v14;
  v15 = *(v3 + 40);
  v37 = *(v3 + 24);
  v38 = v15;
  sub_1BBB4A350(v36, v35);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *v1;
    swift_beginAccess();
    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    v19 = *(v16 + 48);
    v20 = *(v16 + 64);
    v21 = *(v16 + 96);
    v35[4] = *(v16 + 80);
    v35[5] = v21;
    v35[2] = v19;
    v35[3] = v20;
    v22 = *(v16 + 112);
    v23 = *(v16 + 128);
    v24 = *(v16 + 160);
    v35[8] = *(v16 + 144);
    v35[9] = v24;
    v35[7] = v23;
    v35[6] = v22;
    v35[0] = v17;
    v35[1] = v18;
    *(v16 + 16) = a1;
    v25 = v37;
    *(v16 + 40) = v38;
    v26 = v40;
    *(v16 + 56) = v39;
    *(v16 + 72) = v26;
    v27 = v42;
    *(v16 + 88) = v41;
    *(v16 + 104) = v27;
    v28 = v44;
    *(v16 + 120) = v43;
    *(v16 + 24) = v25;
    *(v16 + 136) = v28;
    *(v16 + 152) = v45;
    *(v16 + 168) = v46;
    return sub_1BBB4A388(v35);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v30 = swift_allocObject();
    v31 = v44;
    *(v30 + 120) = v43;
    *(v30 + 136) = v31;
    *(v30 + 152) = v45;
    v32 = v40;
    *(v30 + 56) = v39;
    *(v30 + 72) = v32;
    v33 = v42;
    *(v30 + 88) = v41;
    *(v30 + 104) = v33;
    v34 = v38;
    *(v30 + 24) = v37;
    *(v30 + 16) = a1;
    *(v30 + 168) = v46;
    *(v30 + 40) = v34;

    *v1 = v30;
  }

  return result;
}

void (*IntelligenceElement.Section.index.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  return sub_1BBB4A448;
}

uint64_t IntelligenceElement.Section.numberOfItems.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t IntelligenceElement.Section.numberOfItems.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[6];
  v36[4] = v3[5];
  v36[5] = v6;
  v36[2] = v4;
  v36[3] = v5;
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[10];
  v36[8] = v3[9];
  v36[9] = v9;
  v36[6] = v7;
  v36[7] = v8;
  v10 = v3[2];
  v36[0] = v3[1];
  v36[1] = v10;
  v11 = *&v36[0];
  v12 = v3[9];
  v43 = v3[8];
  v44 = v12;
  v45 = v3[10];
  v13 = v3[5];
  v39 = v3[4];
  v40 = v13;
  v14 = v3[7];
  v41 = v3[6];
  v42 = v14;
  v15 = v3[3];
  v37 = v3[2];
  v38 = v15;
  sub_1BBB4A350(v36, v35);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *v1;
    swift_beginAccess();
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[6];
    v35[4] = v16[5];
    v35[5] = v21;
    v35[2] = v19;
    v35[3] = v20;
    v22 = v16[7];
    v23 = v16[8];
    v24 = v16[10];
    v35[8] = v16[9];
    v35[9] = v24;
    v35[7] = v23;
    v35[6] = v22;
    v35[0] = v17;
    v35[1] = v18;
    *(v16 + 2) = v11;
    *(v16 + 3) = a1;
    v25 = v40;
    v16[4] = v39;
    v16[5] = v25;
    v26 = v38;
    v16[2] = v37;
    v16[3] = v26;
    v27 = v42;
    v16[6] = v41;
    v16[7] = v27;
    v28 = v44;
    v16[8] = v43;
    v16[9] = v28;
    v16[10] = v45;
    return sub_1BBB4A388(v35);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v30 = swift_allocObject();
    *(v30 + 16) = v11;
    *(v30 + 24) = a1;
    v31 = v44;
    *(v30 + 128) = v43;
    *(v30 + 144) = v31;
    *(v30 + 160) = v45;
    v32 = v40;
    *(v30 + 64) = v39;
    *(v30 + 80) = v32;
    v33 = v42;
    *(v30 + 96) = v41;
    *(v30 + 112) = v33;
    v34 = v38;
    *(v30 + 32) = v37;
    *(v30 + 48) = v34;

    *v1 = v30;
  }

  return result;
}

void (*IntelligenceElement.Section.numberOfItems.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 24);
  return sub_1BBB4A6C8;
}

void sub_1BBB4A6E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 24));

  free(v3);
}

uint64_t sub_1BBB4A720(uint64_t a1)
{
  v2 = sub_1BBAB5968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4A75C(uint64_t a1)
{
  v2 = sub_1BBAB5968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4A798(uint64_t a1)
{
  v2 = sub_1BBB4C9B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4A7D4(uint64_t a1)
{
  v2 = sub_1BBB4C9B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4A810(uint64_t a1)
{
  v2 = sub_1BBAB57C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4A84C(uint64_t a1)
{
  v2 = sub_1BBAB57C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Section.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceElement.Section.layout.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 32);
  return result;
}

uint64_t IntelligenceElement.Section.layout.setter(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v35[4] = v3[5];
  v35[5] = v8;
  v35[2] = v6;
  v35[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v35[8] = v3[9];
  v35[9] = v11;
  v35[6] = v9;
  v35[7] = v10;
  v35[0] = v4;
  v35[1] = v5;
  v44 = v3[1];
  v12 = *(v3 + 129);
  v41 = *(v3 + 113);
  v42 = v12;
  v43[0] = *(v3 + 145);
  *(v43 + 15) = v3[10];
  v13 = *(v3 + 49);
  v14 = *(v3 + 81);
  v38 = *(v3 + 65);
  v39 = v14;
  v40 = *(v3 + 97);
  v36 = *(v3 + 33);
  v37 = v13;
  sub_1BBB4A350(v35, v34);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v15 = *v1;
    swift_beginAccess();
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[6];
    v34[4] = v15[5];
    v34[5] = v20;
    v34[2] = v18;
    v34[3] = v19;
    v21 = v15[7];
    v22 = v15[8];
    v23 = v15[10];
    v34[8] = v15[9];
    v34[9] = v23;
    v34[7] = v22;
    v34[6] = v21;
    v34[0] = v16;
    v34[1] = v17;
    v15[1] = v44;
    *(v15 + 32) = v2;
    v24 = v37;
    *(v15 + 33) = v36;
    v25 = v41;
    *(v15 + 97) = v40;
    v26 = v38;
    *(v15 + 81) = v39;
    *(v15 + 65) = v26;
    *(v15 + 49) = v24;
    *(v15 + 113) = v25;
    v27 = v43[0];
    *(v15 + 129) = v42;
    *(v15 + 145) = v27;
    v15[10] = *(v43 + 15);
    return sub_1BBB4A388(v34);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v29 = swift_allocObject();
    *(v29 + 16) = v44;
    v30 = v40;
    *(v29 + 113) = v41;
    v31 = v43[0];
    *(v29 + 129) = v42;
    *(v29 + 145) = v31;
    *(v29 + 160) = *(v43 + 15);
    v32 = v36;
    *(v29 + 49) = v37;
    v33 = v39;
    *(v29 + 65) = v38;
    *(v29 + 81) = v33;
    *(v29 + 97) = v30;
    *(v29 + 32) = v2;
    *(v29 + 33) = v32;

    *v1 = v29;
  }

  return result;
}

void (*IntelligenceElement.Section.layout.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 32);
  return sub_1BBB4ABB8;
}

void sub_1BBB4ABB8(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = *(*a1 + 32);
    v3 = &v4;
  }

  else
  {
    v5 = *(*a1 + 32);
    v3 = &v5;
  }

  IntelligenceElement.Section.layout.setter(v3);

  free(v2);
}

uint64_t IntelligenceElement.Section.header.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v12[0] = *(v3 + 72);
  v5 = v12[0];
  v6 = *(v3 + 56);
  *(v12 + 9) = *(v3 + 81);
  v7 = *(v12 + 9);
  v11[0] = v4;
  v11[1] = v6;
  a1[2] = v5;
  *(a1 + 41) = v7;
  v8 = *(v3 + 56);
  *a1 = *(v3 + 40);
  a1[1] = v8;
  return sub_1BBA9EDF0(v11, v10);
}

uint64_t IntelligenceElement.Section.header.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v48[4] = v3[5];
  v48[5] = v8;
  v48[2] = v6;
  v48[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v48[8] = v3[9];
  v48[9] = v11;
  v48[6] = v9;
  v48[7] = v10;
  v48[0] = v4;
  v48[1] = v5;
  v12 = v3[8];
  v13 = v3[9];
  v14 = v3[6];
  v44 = v3[7];
  v45 = v12;
  v15 = v3[10];
  v46 = v13;
  v47 = v15;
  v16 = v3[4];
  v43[1] = v3[3];
  v43[2] = v16;
  v43[3] = v3[5];
  v43[4] = v14;
  v17 = v3[2];
  v42 = v3[1];
  v43[0] = v17;
  v18 = *(v3 + 56);
  v49[0] = *(v3 + 40);
  v49[1] = v18;
  *v50 = *(v3 + 72);
  *&v50[9] = *(v3 + 81);
  sub_1BBB4A350(v48, v41);
  sub_1BBA8BCC4(v49, &qword_1EBC7BAA8);
  v19 = a1[1];
  *(v43 + 8) = *a1;
  *(&v43[1] + 8) = v19;
  *(&v43[2] + 8) = a1[2];
  *(&v43[3] + 1) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = *v1;
    swift_beginAccess();
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    v24 = v20[4];
    v25 = v20[6];
    v41[4] = v20[5];
    v41[5] = v25;
    v41[2] = v23;
    v41[3] = v24;
    v26 = v20[7];
    v27 = v20[8];
    v28 = v20[10];
    v41[8] = v20[9];
    v41[9] = v28;
    v41[7] = v27;
    v41[6] = v26;
    v41[0] = v21;
    v41[1] = v22;
    v29 = v43[2];
    v20[3] = v43[1];
    v20[4] = v29;
    v30 = v43[4];
    v20[5] = v43[3];
    v20[6] = v30;
    v31 = v43[0];
    v20[1] = v42;
    v20[2] = v31;
    v32 = v45;
    v20[7] = v44;
    v20[8] = v32;
    v33 = v47;
    v20[9] = v46;
    v20[10] = v33;
    return sub_1BBB4A388(v41);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v35 = swift_allocObject();
    v36 = v45;
    v35[7] = v44;
    v35[8] = v36;
    v37 = v47;
    v35[9] = v46;
    v35[10] = v37;
    v38 = v43[2];
    v35[3] = v43[1];
    v35[4] = v38;
    v39 = v43[4];
    v35[5] = v43[3];
    v35[6] = v39;
    v40 = v43[0];
    v35[1] = v42;
    v35[2] = v40;

    *v1 = v35;
  }

  return result;
}

void (*IntelligenceElement.Section.header.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 40);
  v7 = *(v5 + 56);
  v8 = *(v5 + 72);
  *(v4 + 41) = *(v5 + 81);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  memmove(v4 + 4, (v5 + 40), 0x39uLL);
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB4AF38;
}

uint64_t IntelligenceElement.Section.footer.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 120);
  v9[0] = *(v3 + 104);
  v9[1] = v4;
  v10[0] = *(v3 + 136);
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 145);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BBA9EDF0(v9, v8);
}

uint64_t IntelligenceElement.Section.footer.setter(_OWORD *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v47[4] = v3[5];
  v47[5] = v8;
  v47[2] = v6;
  v47[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v47[8] = v3[9];
  v47[9] = v11;
  v47[6] = v9;
  v47[7] = v10;
  v47[0] = v4;
  v47[1] = v5;
  v12 = v3[8];
  v46[1] = v3[7];
  v46[2] = v12;
  v13 = v3[10];
  v46[3] = v3[9];
  v46[4] = v13;
  v14 = v3[4];
  v43 = v3[3];
  v44 = v14;
  v15 = v3[6];
  v45 = v3[5];
  v46[0] = v15;
  v16 = v3[2];
  v41 = v3[1];
  v42 = v16;
  *(v49 + 9) = *(v3 + 145);
  v17 = *(v3 + 120);
  v48[0] = *(v3 + 104);
  v48[1] = v17;
  v49[0] = *(v3 + 136);
  sub_1BBB4A350(v47, v40);
  sub_1BBA8BCC4(v48, &qword_1EBC7BAA8);
  v18 = a1[1];
  *(v46 + 8) = *a1;
  *(&v46[1] + 8) = v18;
  *(&v46[2] + 8) = a1[2];
  *(&v46[3] + 1) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v19 = *v1;
    swift_beginAccess();
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[4];
    v24 = v19[6];
    v40[4] = v19[5];
    v40[5] = v24;
    v40[2] = v22;
    v40[3] = v23;
    v25 = v19[7];
    v26 = v19[8];
    v27 = v19[10];
    v40[8] = v19[9];
    v40[9] = v27;
    v40[7] = v26;
    v40[6] = v25;
    v40[0] = v20;
    v40[1] = v21;
    v28 = v44;
    v19[3] = v43;
    v19[4] = v28;
    v29 = v46[0];
    v19[5] = v45;
    v19[6] = v29;
    v30 = v42;
    v19[1] = v41;
    v19[2] = v30;
    v31 = v46[2];
    v19[7] = v46[1];
    v19[8] = v31;
    v32 = v46[4];
    v19[9] = v46[3];
    v19[10] = v32;
    return sub_1BBB4A388(v40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v34 = swift_allocObject();
    v35 = v46[2];
    v34[7] = v46[1];
    v34[8] = v35;
    v36 = v46[4];
    v34[9] = v46[3];
    v34[10] = v36;
    v37 = v44;
    v34[3] = v43;
    v34[4] = v37;
    v38 = v46[0];
    v34[5] = v45;
    v34[6] = v38;
    v39 = v42;
    v34[1] = v41;
    v34[2] = v39;

    *v1 = v34;
  }

  return result;
}

void (*IntelligenceElement.Section.footer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 104);
  v7 = *(v5 + 120);
  v8 = *(v5 + 136);
  *(v4 + 41) = *(v5 + 145);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  v9 = *(v5 + 104);
  v10 = *(v5 + 120);
  v11 = *(v5 + 136);
  *(v4 + 105) = *(v5 + 145);
  v4[5] = v10;
  v4[6] = v11;
  v4[4] = v9;
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB4B274;
}

void sub_1BBB4B28C(uint64_t a1, char a2, void (*a3)(__int128 *))
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  if (a2)
  {
    v4[12] = v4[4];
    v4[13] = v5;
    v7 = v4[4];
    v6 = v4[5];
    v4[14] = v4[6];
    *(v4 + 233) = *(v4 + 105);
    v9 = v7;
    v10 = v6;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    sub_1BBA9EDF0((v4 + 12), (v4 + 16));
    a3(&v9);
    v8 = v4[5];
    v4[8] = v4[4];
    v4[9] = v8;
    v4[10] = v4[6];
    *(v4 + 169) = *(v4 + 105);
    sub_1BBA8BCC4((v4 + 8), &qword_1EBC7BAA8);
  }

  else
  {
    v9 = v4[4];
    v10 = v5;
    v11[0] = v4[6];
    *(v11 + 9) = *(v4 + 105);
    a3(&v9);
  }

  free(v4);
}

uint64_t IntelligenceElement.Section.items.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[6];
  v37[4] = v3[5];
  v37[5] = v8;
  v37[2] = v6;
  v37[3] = v7;
  v9 = v3[7];
  v10 = v3[8];
  v11 = v3[10];
  v37[8] = v3[9];
  v37[9] = v11;
  v37[6] = v9;
  v37[7] = v10;
  v37[0] = v4;
  v37[1] = v5;
  v12 = v3[8];
  v44 = v3[7];
  v45 = v12;
  v46 = v3[9];
  v47 = *(v3 + 20);
  v13 = v3[4];
  v40 = v3[3];
  v41 = v13;
  v14 = v3[6];
  v42 = v3[5];
  v43 = v14;
  v15 = v3[2];
  v38 = v3[1];
  v39 = v15;
  sub_1BBB4A350(v37, v36);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v16 = *v1;
    swift_beginAccess();
    v17 = v16[1];
    v18 = v16[2];
    v19 = v16[3];
    v20 = v16[4];
    v21 = v16[6];
    v36[4] = v16[5];
    v36[5] = v21;
    v36[2] = v19;
    v36[3] = v20;
    v22 = v16[7];
    v23 = v16[8];
    v24 = v16[10];
    v36[8] = v16[9];
    v36[9] = v24;
    v36[7] = v23;
    v36[6] = v22;
    v36[0] = v17;
    v36[1] = v18;
    v25 = v41;
    v16[3] = v40;
    v16[4] = v25;
    v26 = v43;
    v16[5] = v42;
    v16[6] = v26;
    v27 = v39;
    v16[1] = v38;
    v16[2] = v27;
    v28 = v45;
    v16[7] = v44;
    v16[8] = v28;
    v16[9] = v46;
    *(v16 + 20) = v47;
    *(v16 + 21) = a1;
    return sub_1BBB4A388(v36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
    v30 = swift_allocObject();
    v31 = v45;
    *(v30 + 112) = v44;
    *(v30 + 128) = v31;
    *(v30 + 144) = v46;
    v32 = v47;
    v33 = v41;
    *(v30 + 48) = v40;
    *(v30 + 64) = v33;
    v34 = v43;
    *(v30 + 80) = v42;
    *(v30 + 96) = v34;
    v35 = v39;
    *(v30 + 16) = v38;
    *(v30 + 32) = v35;
    *(v30 + 160) = v32;
    *(v30 + 168) = a1;

    *v1 = v30;
  }

  return result;
}

void (*IntelligenceElement.Section.items.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 168);

  return sub_1BBB4B60C;
}

void sub_1BBB4B60C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    IntelligenceElement.Section.items.setter(v4);
  }

  else
  {
    IntelligenceElement.Section.items.setter(v3);
  }

  free(v2);
}

__n128 IntelligenceElement.Section.init(index:numberOfItems:layout:header:footer:items:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *&v15[7] = *a4;
  *&v15[23] = a4[1];
  *&v15[39] = a4[2];
  *&v15[48] = *(a4 + 41);
  *&v14[7] = *a5;
  v11 = *a3;
  *&v14[23] = a5[1];
  *&v14[39] = a5[2];
  *&v14[48] = *(a5 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
  v12 = swift_allocObject();
  *(v12 + 33) = *v15;
  *(v12 + 49) = *&v15[16];
  *(v12 + 65) = *&v15[32];
  *(v12 + 81) = *&v15[48];
  *(v12 + 97) = *v14;
  *(v12 + 113) = *&v14[16];
  result = *&v14[32];
  *(v12 + 129) = *&v14[32];
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v11;
  *(v12 + 145) = *&v14[48];
  *(v12 + 168) = a6;
  *a7 = v12;
  return result;
}

uint64_t sub_1BBB4B760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = *v4;
  swift_beginAccess();
  v11 = *(v10 + 56);
  v12 = *(v10 + 40);
  *&v163[9] = *(v10 + 81);
  v13 = *(v10 + 72);
  v162[1] = v11;
  *v163 = v13;
  v162[0] = v12;
  if (*(&v13 + 1))
  {
    v14 = *(v10 + 56);
    v159 = *(v10 + 40);
    v160 = v14;
    *v161 = *(v10 + 72);
    *&v161[8] = *(&v13 + 1);
    *&v161[16] = *(v10 + 88);
    v161[24] = *(v10 + 96);

    sub_1BBA9EDF0(v162, &v149);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v107, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(v162, &qword_1EBC7BAA8);
    }

    v164 = a4;
    sub_1BBA8BCC4(v162, &qword_1EBC7BAA8);
    v17 = *(v10 + 48);
    v18 = *(v10 + 64);
    v19 = *(v10 + 96);
    v153 = *(v10 + 80);
    v154 = v19;
    v20 = *(v10 + 112);
    v21 = *(v10 + 128);
    v22 = *(v10 + 160);
    v157 = *(v10 + 144);
    v158 = v22;
    v156 = v21;
    v23 = *(v10 + 16);
    v24 = *(v10 + 32);
    v151 = v17;
    v152 = v18;
    v155 = v20;
    v149 = v23;
    v150 = v24;
    *&v102[64] = *(v10 + 96);
    v103 = *(v10 + 112);
    v104 = *(v10 + 128);
    v105 = *(v10 + 144);
    v106 = *(v10 + 160);
    v101 = *(v10 + 16);
    *v102 = *(v10 + 32);
    v25 = *(v10 + 56);
    v126 = *(v10 + 40);
    v127 = v25;
    v128[0] = *(v10 + 72);
    *(v128 + 9) = *(v10 + 81);
    sub_1BBB4A350(&v149, &v129);
    sub_1BBA8BCC4(&v126, &qword_1EBC7BAA8);
    *&v102[8] = v107[0];
    *&v102[24] = v107[1];
    *&v102[40] = v108[0];
    *&v102[49] = *(v108 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v26 = *(v10 + 16);
      v27 = *(v10 + 32);
      v28 = *(v10 + 48);
      v29 = *(v10 + 64);
      v30 = *(v10 + 96);
      v133 = *(v10 + 80);
      v134 = v30;
      v131 = v28;
      v132 = v29;
      v31 = *(v10 + 112);
      v32 = *(v10 + 128);
      v33 = *(v10 + 160);
      v137 = *(v10 + 144);
      v138 = v33;
      v135 = v31;
      v136 = v32;
      v129 = v26;
      v130 = v27;
      *(v10 + 80) = *&v102[48];
      *(v10 + 96) = *&v102[64];
      *(v10 + 48) = *&v102[16];
      *(v10 + 64) = *&v102[32];
      *(v10 + 16) = v101;
      *(v10 + 32) = *v102;
      *(v10 + 112) = v103;
      *(v10 + 128) = v104;
      *(v10 + 144) = v105;
      *(v10 + 160) = v106;
      sub_1BBB4A388(&v129);
      v16 = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
      v16 = swift_allocObject();
      v16[7] = v103;
      v16[8] = v104;
      v16[9] = v105;
      v16[10] = v106;
      v16[3] = *&v102[16];
      v16[4] = *&v102[32];
      v16[5] = *&v102[48];
      v16[6] = *&v102[64];
      v16[1] = v101;
      v16[2] = *v102;
    }
  }

  else
  {
    v164 = a4;

    v16 = v10;
  }

  *&v161[9] = *(v10 + 145);
  v34 = *(v10 + 136);
  v35 = *(v10 + 120);
  v159 = *(v10 + 104);
  v160 = v35;
  *v161 = v34;
  v36 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v37 = *(v10 + 104);
    *(v128 + 9) = *(v10 + 145);
    v38 = *(v10 + 136);
    v39 = *(v10 + 120);
    v119[2] = v37;
    v119[3] = v39;
    v120 = *(v10 + 136);
    v121 = v36;
    v122 = *(v10 + 152);
    v123 = *(v10 + 160);
    v126 = v37;
    v127 = v39;
    v128[0] = v38;
    sub_1BBA9B788(&v126, &v149);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v124, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(&v159, &qword_1EBC7BAA8);
    }

    sub_1BBA8BCC4(&v159, &qword_1EBC7BAA8);
    v115 = v124[0];
    v116 = v124[1];
    v117[0] = v125[0];
    *(v117 + 9) = *(v125 + 9);
    swift_beginAccess();
    v40 = v16[8];
    v155 = v16[7];
    v156 = v40;
    v41 = v16[10];
    v157 = v16[9];
    v158 = v41;
    v42 = v16[4];
    v151 = v16[3];
    v152 = v42;
    v43 = v16[6];
    v153 = v16[5];
    v154 = v43;
    v44 = v16[2];
    v149 = v16[1];
    v150 = v44;
    memmove(&__dst, v16 + 1, 0xA0uLL);
    v118[0] = *(v114 + 8);
    v118[1] = *(&v114[1] + 8);
    v119[0] = *(&v114[2] + 8);
    *(v119 + 9) = *(&v114[3] + 1);
    sub_1BBB4A350(&v149, &v129);
    sub_1BBA8BCC4(v118, &qword_1EBC7BAA8);
    *(v114 + 8) = v115;
    *(&v114[1] + 8) = v116;
    *(&v114[2] + 8) = v117[0];
    *(&v114[3] + 1) = *(v117 + 9);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v45 = v16[3];
      v46 = v16[4];
      v47 = v16[6];
      v133 = v16[5];
      v134 = v47;
      v131 = v45;
      v132 = v46;
      v48 = v16[7];
      v49 = v16[8];
      v50 = v16[10];
      v137 = v16[9];
      v138 = v50;
      v135 = v48;
      v136 = v49;
      v51 = v16[2];
      v129 = v16[1];
      v130 = v51;
      v16[6] = v114[0];
      v52 = __dst;
      v16[2] = v110;
      v54 = v114[3];
      v53 = v114[4];
      v55 = v114[2];
      v16[7] = v114[1];
      v16[8] = v55;
      v16[9] = v54;
      v16[10] = v53;
      v57 = v112;
      v56 = v113;
      v16[3] = v111;
      v16[4] = v57;
      v16[5] = v56;
      v16[1] = v52;
      sub_1BBB4A388(&v129);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
      v58 = swift_allocObject();
      v59 = v114[2];
      v58[7] = v114[1];
      v58[8] = v59;
      v60 = v114[4];
      v58[9] = v114[3];
      v58[10] = v60;
      v61 = v112;
      v58[3] = v111;
      v58[4] = v61;
      v62 = v114[0];
      v58[5] = v113;
      v58[6] = v62;
      v63 = v110;
      v58[1] = __dst;
      v58[2] = v63;

      v16 = v58;
    }
  }

  v64 = *(v10 + 168);

  v65 = Array<A>.recursiveMap<A>(_:transform:)(a1, a2, a3, v64);
  if (v5)
  {
  }

  else
  {
    v66 = v65;

    swift_beginAccess();
    v67 = v16[1];
    v68 = v16[2];
    v69 = v16[3];
    v70 = v16[4];
    v71 = v16[6];
    v153 = v16[5];
    v154 = v71;
    v151 = v69;
    v152 = v70;
    v72 = v16[7];
    v73 = v16[8];
    v74 = v16[10];
    v157 = v16[9];
    v158 = v74;
    v155 = v72;
    v156 = v73;
    v149 = v67;
    v150 = v68;
    v75 = v16[8];
    v145 = v16[7];
    v76 = v16[1];
    v77 = v16[2];
    v78 = v16[3];
    v79 = v16[4];
    v80 = v16[6];
    v143 = v16[5];
    v144 = v80;
    v81 = v16[9];
    v148 = *(v16 + 20);
    v146 = v75;
    v147 = v81;
    v141 = v78;
    v142 = v79;
    v139 = v76;
    v140 = v77;
    sub_1BBB4A350(&v149, &v129);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v82 = v16[3];
      v83 = v16[4];
      v84 = v16[6];
      v133 = v16[5];
      v134 = v84;
      v131 = v82;
      v132 = v83;
      v85 = v16[7];
      v86 = v16[8];
      v87 = v16[10];
      v137 = v16[9];
      v138 = v87;
      v135 = v85;
      v136 = v86;
      v88 = v16[2];
      v129 = v16[1];
      v130 = v88;
      v16[6] = v144;
      v89 = v139;
      v16[2] = v140;
      v90 = v148;
      v92 = v146;
      v91 = v147;
      v16[7] = v145;
      v16[8] = v92;
      v16[9] = v91;
      v94 = v142;
      v93 = v143;
      v16[3] = v141;
      v16[4] = v94;
      v16[5] = v93;
      v16[1] = v89;
      *(v16 + 20) = v90;
      *(v16 + 21) = v66;
      result = sub_1BBB4A388(&v129);
      *v164 = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD0);
      v95 = swift_allocObject();
      v96 = v146;
      *(v95 + 112) = v145;
      *(v95 + 128) = v96;
      *(v95 + 144) = v147;
      v97 = v148;
      v98 = v142;
      *(v95 + 48) = v141;
      *(v95 + 64) = v98;
      v99 = v144;
      *(v95 + 80) = v143;
      *(v95 + 96) = v99;
      v100 = v140;
      *(v95 + 16) = v139;
      *(v95 + 32) = v100;
      *(v95 + 160) = v97;
      *(v95 + 168) = v66;

      *v164 = v95;
    }
  }

  return result;
}

uint64_t sub_1BBB4BE84(uint64_t *a1)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 40);
  *(v27 + 9) = *(v3 + 81);
  v6 = *(v3 + 72);
  v26[1] = v4;
  v27[0] = v6;
  v26[0] = v5;
  if (*(&v6 + 1))
  {
    v7 = *(v3 + 56);
    v23 = *(v3 + 40);
    v24 = v7;
    *v25 = *(v3 + 72);
    *&v25[8] = *(&v6 + 1);
    *&v25[16] = *(v3 + 88);
    v25[24] = *(v3 + 96);
    v8 = sub_1BBA9EDF0(v26, v18);
    IntelligenceElement.recursivelyPruned()(v18, v8);
    IntelligenceElement.Section.header.setter(v18);
    sub_1BBA8BCC4(v26, &qword_1EBC7BAA8);
  }

  v9 = *a1;
  swift_beginAccess();
  *&v25[9] = *(v9 + 145);
  v10 = *(v9 + 136);
  v11 = *(v9 + 120);
  v23 = *(v9 + 104);
  v24 = v11;
  *v25 = v10;
  if (*(&v10 + 1))
  {
    v12 = *(v9 + 120);
    v18[0] = *(v9 + 104);
    v18[1] = v12;
    v19 = *(v9 + 136);
    v20 = *(&v10 + 1);
    v21 = *(v9 + 152);
    v22 = *(v9 + 160);
    v13 = sub_1BBA9EDF0(&v23, v17);
    IntelligenceElement.recursivelyPruned()(v17, v13);
    IntelligenceElement.Section.footer.setter(v17);
    sub_1BBA8BCC4(&v23, &qword_1EBC7BAA8);
  }

  swift_beginAccess();

  v15 = sub_1BBB4E804(v14);

  if (!v1)
  {
    return IntelligenceElement.Section.items.setter(v15);
  }

  return result;
}

uint64_t sub_1BBB4C04C(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v38[0] = *(v7 + 72);
  v9 = *(v7 + 56);
  *(v38 + 9) = *(v7 + 81);
  v36 = v8;
  v37 = v9;
  v41 = *(v7 + 72);
  v10 = *(v7 + 56);
  v39 = *(v7 + 40);
  v40 = v10;
  if (*(&v38[0] + 1))
  {
    v30 = v39;
    v31 = v40;
    *v32 = v41;
    *&v32[8] = *(&v38[0] + 1);
    *&v32[16] = *(v7 + 88);
    v32[24] = *(v7 + 96);
    v33 = v36;
    v34 = v37;
    v35[0] = v38[0];
    *(v35 + 9) = *(v38 + 9);
    sub_1BBA9B788(&v33, v24);
    a1(v22, &v30);
    if (v3)
    {
      return sub_1BBA8BCC4(&v36, &qword_1EBC7BAA8);
    }

    IntelligenceElement.Section.header.setter(v22);
    sub_1BBA8BCC4(&v36, &qword_1EBC7BAA8);
  }

  v12 = *v4;
  swift_beginAccess();
  *(v35 + 9) = *(v12 + 145);
  v13 = *(v12 + 136);
  v14 = *(v12 + 120);
  v33 = *(v12 + 104);
  v34 = v14;
  v35[0] = v13;
  v15 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v16 = *(v12 + 104);
    *&v32[9] = *(v12 + 145);
    v17 = *(v12 + 136);
    v18 = *(v12 + 120);
    v24[0] = v16;
    v24[1] = v18;
    v25 = *(v12 + 136);
    v26 = v15;
    v27 = *(v12 + 152);
    v28 = *(v12 + 160);
    v30 = v16;
    v31 = v18;
    *v32 = v17;
    sub_1BBA9B788(&v30, v23);
    a1(v29, v24);
    if (v3)
    {
      return sub_1BBA8BCC4(&v33, &qword_1EBC7BAA8);
    }

    IntelligenceElement.Section.footer.setter(v29);
    sub_1BBA8BCC4(&v33, &qword_1EBC7BAA8);
  }

  v19 = *v4;
  swift_beginAccess();
  v20 = *(v19 + 168);

  v21 = sub_1BBA9B7E4(a1, a2, v20);

  if (!v3)
  {
    return IntelligenceElement.Section.items.setter(v21);
  }

  return result;
}

uint64_t sub_1BBB4C2E0()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB4C3D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB4D8F8();
  *a1 = result;
  return result;
}

void sub_1BBB4C400(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7865646E69;
  v5 = 0xE600000000000000;
  v6 = 0x726564616568;
  v7 = 0xE600000000000000;
  v8 = 0x7265746F6F66;
  if (v2 != 4)
  {
    v8 = 0x736D657469;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED0000736D657449;
  v10 = 0x664F7265626D756ELL;
  if (v2 != 1)
  {
    v10 = 0x74756F79616CLL;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1BBB4C4B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB4D8F8();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB4C4E0(uint64_t a1)
{
  v2 = sub_1BBAB5A10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4C51C(uint64_t a1)
{
  v2 = sub_1BBAB5A10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Section.description.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  v3 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 0x203A7865646E69;
  *(v6 + 5) = 0xE700000000000000;
  sub_1BBB84028();

  v7 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v7);

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v10 = &v3[16 * v9];
  *(v10 + 4) = 0x664F7265626D756ELL;
  *(v10 + 5) = 0xEF203A736D657449;
  if (*(v1 + 32))
  {
    v11 = 1953720684;
  }

  else
  {
    v11 = 0x6D6F74737563;
  }

  if (*(v1 + 32))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1BFB16150](v11, v12);

  v14 = *(v3 + 2);
  v13 = *(v3 + 3);
  if (v14 >= v13 >> 1)
  {
    v3 = sub_1BBA86A94((v13 > 1), v14 + 1, 1, v3);
  }

  *(v3 + 2) = v14 + 1;
  v15 = &v3[16 * v14];
  *(v15 + 4) = 0x203A74756F79616CLL;
  *(v15 + 5) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v16 = sub_1BBB83938();
  v18 = v17;

  MEMORY[0x1BFB16150](v16, v18);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x286E6F6974636553;
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV7SectionV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[6];
  v52[4] = v2[5];
  v52[5] = v8;
  v52[2] = v6;
  v52[3] = v7;
  v9 = v2[7];
  v10 = v2[8];
  v11 = v2[10];
  v52[8] = v2[9];
  v52[9] = v11;
  v52[6] = v9;
  v52[7] = v10;
  v52[0] = v4;
  v52[1] = v5;
  v12 = v2[8];
  v48 = v2[7];
  v49 = v12;
  v13 = v2[10];
  v50 = v2[9];
  v51 = v13;
  v14 = v2[4];
  v44 = v2[3];
  v45 = v14;
  v15 = v2[6];
  v46 = v2[5];
  v47 = v15;
  v16 = v2[2];
  v42 = v2[1];
  v43 = v16;
  swift_beginAccess();
  v17 = v3[1];
  v18 = v3[2];
  v19 = v3[3];
  v20 = v3[4];
  v21 = v3[6];
  v53[4] = v3[5];
  v53[5] = v21;
  v53[2] = v19;
  v53[3] = v20;
  v22 = v3[7];
  v23 = v3[8];
  v24 = v3[10];
  v53[8] = v3[9];
  v53[9] = v24;
  v53[6] = v22;
  v53[7] = v23;
  v53[0] = v17;
  v53[1] = v18;
  v25 = v3[7];
  v26 = v3[9];
  v27 = v3[10];
  v39 = v3[8];
  v40 = v26;
  v41 = v27;
  v28 = v3[4];
  v34 = v3[3];
  v35 = v28;
  v29 = v3[6];
  v36 = v3[5];
  v37 = v29;
  v38 = v25;
  v30 = v3[2];
  v32 = v3[1];
  v33 = v30;
  sub_1BBB4A350(v52, v55);
  sub_1BBB4A350(v53, v55);
  LOBYTE(v3) = sub_1BBB4CC88(&v42, &v32);
  v54[6] = v38;
  v54[7] = v39;
  v54[8] = v40;
  v54[9] = v41;
  v54[2] = v34;
  v54[3] = v35;
  v54[4] = v36;
  v54[5] = v37;
  v54[0] = v32;
  v54[1] = v33;
  sub_1BBB4A388(v54);
  v55[6] = v48;
  v55[7] = v49;
  v55[8] = v50;
  v55[9] = v51;
  v55[2] = v44;
  v55[3] = v45;
  v55[4] = v46;
  v55[5] = v47;
  v55[0] = v42;
  v55[1] = v43;
  sub_1BBB4A388(v55);
  return v3 & 1;
}

unint64_t sub_1BBB4C9B8()
{
  result = qword_1EBC7AF38;
  if (!qword_1EBC7AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF38);
  }

  return result;
}

unint64_t sub_1BBB4CA10()
{
  result = qword_1EBC7D018;
  if (!qword_1EBC7D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D018);
  }

  return result;
}

uint64_t keypath_set_10Tm(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *))
{
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  sub_1BBA9EDF0(v10, &v9);
  return a5(a1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1BBB4CB18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 152);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BBB4CB60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 152) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BBB4CBDC()
{
  result = qword_1EBC7D020;
  if (!qword_1EBC7D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D020);
  }

  return result;
}

unint64_t sub_1BBB4CC34()
{
  result = qword_1EBC7D028;
  if (!qword_1EBC7D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D028);
  }

  return result;
}

uint64_t sub_1BBB4CC88(uint64_t *a1, uint64_t *a2)
{
  v3 = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 5);
  v64[0] = *(a1 + 3);
  v64[1] = v7;
  v65[0] = *(a1 + 7);
  *(v65 + 9) = *(a1 + 65);
  v8 = *(a1 + 11);
  *&v68[9] = *(a1 + 129);
  v9 = *(a1 + 15);
  v10 = *(a1 + 13);
  v66 = v8;
  v67 = v10;
  *v68 = v9;
  v11 = a1[19];
  v13 = *a2;
  v12 = a2[1];
  v70[0] = *(a2 + 7);
  *(v70 + 9) = *(a2 + 65);
  *&v73[9] = *(a2 + 129);
  v14 = *(a2 + 16);
  v15 = *(a2 + 5);
  v69[0] = *(a2 + 3);
  v69[1] = v15;
  v16 = *(a2 + 15);
  v17 = *(a2 + 13);
  v71 = *(a2 + 11);
  v72 = v17;
  *v73 = v16;
  if (v5 == v13 && v4 == v12 && ((v6 ^ v14) & 1) == 0)
  {
    v18 = a2[19];
    v19 = *(&v65[0] + 1);
    *&v63[7] = *(a2 + 3);
    *&v63[23] = *(a2 + 5);
    *&v63[39] = a2[7];
    v20 = *(&v70[0] + 1);
    if (*(&v65[0] + 1))
    {
      v21 = a1[7];
      v22 = *(a1 + 5);
      v55 = *(a1 + 3);
      v56 = v22;
      *v57 = v21;
      *&v57[8] = *(&v65[0] + 1);
      *&v57[16] = a1[9];
      v57[24] = *(a1 + 80);
      v52 = v55;
      v53 = v22;
      *(v54 + 9) = *&v57[9];
      v54[0] = *v57;
      if (*(&v70[0] + 1))
      {
        v23 = *(a2 + 5);
        v42 = *(a2 + 3);
        v43 = v23;
        v24 = a2[7];
        v25 = a2[9];
        *&v44[8] = *(&v70[0] + 1);
        *&v44[16] = v25;
        v44[24] = *(a2 + 80);
        *v44 = v24;
        sub_1BBA9EDF0(v64, &v39);
        sub_1BBA9EDF0(v69, &v39);
        sub_1BBA9EDF0(&v55, &v39);
        v26 = static IntelligenceElement.== infix(_:_:)(&v52, &v42);
        v36 = v42;
        v37 = v43;
        v38[0] = *v44;
        *(v38 + 9) = *&v44[9];
        sub_1BBA9E174(&v36);
        v39 = v52;
        v40 = v53;
        v41[0] = v54[0];
        *(v41 + 9) = *(v54 + 9);
        sub_1BBA9E174(&v39);
        v27 = *(a1 + 5);
        v42 = *(a1 + 3);
        v43 = v27;
        *v44 = a1[7];
        *&v44[8] = v19;
        *&v44[16] = a1[9];
        v44[24] = *(a1 + 80);
        sub_1BBA8BCC4(&v42, &qword_1EBC7BAA8);
        if ((v26 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

      v28 = a2;
      v42 = v55;
      v43 = v56;
      *v44 = *v57;
      *&v44[9] = *&v57[9];
      sub_1BBA9EDF0(v64, &v39);
      sub_1BBA9EDF0(v69, &v39);
      sub_1BBA9EDF0(&v55, &v39);
      sub_1BBA9E174(&v42);
    }

    else
    {
      if (!*(&v70[0] + 1))
      {
        v31 = *(a1 + 5);
        v55 = *(a1 + 3);
        v56 = v31;
        *v57 = a1[7];
        *&v57[16] = a1[9];
        v57[24] = *(a1 + 80);
        sub_1BBA9EDF0(v64, &v52);
        sub_1BBA9EDF0(v69, &v52);
        sub_1BBA8BCC4(&v55, &qword_1EBC7BAA8);
LABEL_13:
        v49 = v66;
        v50 = v67;
        *&v63[7] = v71;
        v32 = *&v68[8];
        v51 = *v68;
        v47 = *&v68[16];
        v48 = v68[24];
        *&v63[23] = v72;
        v33 = *&v73[8];
        *&v63[39] = *v73;
        v46 = v73[24];
        v45 = *&v73[16];
        if (*&v68[8])
        {
          v55 = v66;
          v56 = v67;
          *v57 = *v68;
          *&v57[16] = *&v68[16];
          v57[24] = v68[24];
          v52 = v66;
          v53 = v67;
          v54[0] = *v68;
          *(v54 + 9) = *&v57[9];
          if (*&v73[8])
          {
            v42 = v71;
            v43 = v72;
            *&v44[16] = *&v73[16];
            v44[24] = v73[24];
            *v44 = *v73;
            sub_1BBA9EDF0(&v66, &v39);
            sub_1BBA9EDF0(&v71, &v39);
            sub_1BBA9EDF0(&v55, &v39);
            v34 = static IntelligenceElement.== infix(_:_:)(&v52, &v42);
            v36 = v42;
            v37 = v43;
            v38[0] = *v44;
            *(v38 + 9) = *&v44[9];
            sub_1BBA9E174(&v36);
            v39 = v52;
            v40 = v53;
            v41[0] = v54[0];
            *(v41 + 9) = *(v54 + 9);
            sub_1BBA9E174(&v39);
            v42 = v49;
            v43 = v50;
            *v44 = v51;
            *&v44[8] = v32;
            *&v44[16] = v47;
            v44[24] = v48;
            sub_1BBA8BCC4(&v42, &qword_1EBC7BAA8);
            if (v34)
            {
              goto LABEL_25;
            }

LABEL_22:
            v3 = 0;
            return v3 & 1;
          }

          v42 = v55;
          v43 = v56;
          *v44 = *v57;
          *&v44[9] = *&v57[9];
          sub_1BBA9EDF0(&v66, &v39);
          sub_1BBA9EDF0(&v71, &v39);
          sub_1BBA9EDF0(&v55, &v39);
          sub_1BBA9E174(&v42);
        }

        else
        {
          if (!*&v73[8])
          {
            v55 = v66;
            v56 = v67;
            *v57 = *v68;
            *&v57[16] = *&v68[16];
            v57[24] = v68[24];
            sub_1BBA9EDF0(&v66, &v52);
            sub_1BBA9EDF0(&v71, &v52);
            sub_1BBA8BCC4(&v55, &qword_1EBC7BAA8);
LABEL_25:
            v3 = sub_1BBAFF5D8(v11, v18);
            return v3 & 1;
          }

          sub_1BBA9EDF0(&v66, &v55);
          sub_1BBA9EDF0(&v71, &v55);
        }

        v55 = v49;
        v56 = v50;
        *v57 = v51;
        *&v57[8] = v32;
        *&v57[16] = v47;
        v57[24] = v48;
        v58 = *v63;
        *v59 = *&v63[16];
        *&v59[15] = *&v63[31];
        v62 = v46;
        v30 = v45;
        v60 = v33;
LABEL_21:
        v61 = v30;
        sub_1BBA8BCC4(&v55, &qword_1EBC7BB50);
        goto LABEL_22;
      }

      v28 = a2;
      sub_1BBA9EDF0(v64, &v55);
      sub_1BBA9EDF0(v69, &v55);
    }

    v29 = *(a1 + 5);
    v55 = *(a1 + 3);
    v56 = v29;
    *v57 = a1[7];
    *&v57[8] = v19;
    *&v57[16] = a1[9];
    v57[24] = *(a1 + 80);
    v58 = *v63;
    *v59 = *&v63[16];
    *&v59[15] = *&v63[31];
    v62 = *(v28 + 80);
    v30 = v28[9];
    v60 = v20;
    goto LABEL_21;
  }

  return v3 & 1;
}

uint64_t sub_1BBB4D250(uint64_t *a1, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  v33[0] = *(v3 + 72);
  v6 = *(v3 + 56);
  *(v33 + 9) = *(v3 + 81);
  v31 = v5;
  v32 = v6;
  v38 = *(v3 + 72);
  v7 = *(v3 + 56);
  v36 = *(v3 + 40);
  v37 = v7;
  v8 = *(&v33[0] + 1);
  v9 = *(v3 + 88);
  v35 = *(v3 + 96);
  v34 = v9;
  if (*(&v33[0] + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v10 = swift_allocObject();
    v11 = v36;
    v12 = v37;
    *(v10 + 16) = xmmword_1BBB85CE0;
    *(v10 + 32) = v11;
    *(v10 + 48) = v12;
    *(v10 + 64) = v38;
    *(v10 + 72) = v8;
    *(v10 + 80) = v34;
    *(v10 + 88) = v35;
    v23 = v31;
    v24 = v32;
    v25[0] = v33[0];
    *(v25 + 9) = *(v33 + 9);
    sub_1BBA9EDF0(&v31, v21);
    sub_1BBA9B788(&v23, v21);
    a2(0x726564616548, 0xE600000000000000, v10);

    result = sub_1BBA8BCC4(&v31, &qword_1EBC7BAA8);
  }

  v25[0] = *(v3 + 136);
  *(v25 + 9) = *(v3 + 145);
  v13 = *(v3 + 120);
  v23 = *(v3 + 104);
  v24 = v13;
  v28 = v23;
  v29 = v13;
  v30 = *(v3 + 136);
  v14 = *(&v25[0] + 1);
  v15 = *(v3 + 152);
  v27 = *(v3 + 160);
  v26 = v15;
  if (*(&v25[0] + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v16 = swift_allocObject();
    v17 = v28;
    v18 = v29;
    *(v16 + 16) = xmmword_1BBB85CE0;
    *(v16 + 32) = v17;
    *(v16 + 48) = v18;
    *(v16 + 64) = v30;
    *(v16 + 72) = v14;
    *(v16 + 80) = v26;
    *(v16 + 88) = v27;
    v21[0] = v23;
    v21[1] = v24;
    v22[0] = v25[0];
    *(v22 + 9) = *(v25 + 9);
    sub_1BBA9EDF0(&v23, v20);
    sub_1BBA9B788(v21, v20);
    a2(0x7265746F6F46, 0xE600000000000000, v16);

    result = sub_1BBA8BCC4(&v23, &qword_1EBC7BAA8);
  }

  v19 = *(v3 + 168);
  if (*(v19 + 16))
  {

    a2(0x736D657449, 0xE500000000000000, v19);
  }

  return result;
}

uint64_t sub_1BBB4D4E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v9 + 40);
  *v35 = *(v9 + 72);
  v11 = *(v9 + 56);
  *&v35[9] = *(v9 + 81);
  v34[0] = v10;
  v34[1] = v11;
  v40 = *(v9 + 72);
  v12 = *(v9 + 56);
  v38 = *(v9 + 40);
  v39 = v12;
  v13 = *&v35[8];
  v14 = *(v9 + 88);
  v37 = *(v9 + 96);
  v36 = v14;
  if (*&v35[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    inited = swift_initStackObject();
    v16 = v38;
    v17 = v39;
    *(inited + 16) = xmmword_1BBB85CE0;
    *(inited + 32) = v16;
    *(inited + 48) = v17;
    *(inited + 64) = v40;
    *(inited + 72) = v13;
    *(inited + 80) = v36;
    *(inited + 88) = v37;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9B788(a2, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9EDF0(v34, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9EDF0(v34, v32);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x726564616548, 0xE600000000000000, v32);
      *(a3 + 216) = v32[0];
    }

    else
    {
      sub_1BBA9B788(a2, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9EDF0(v34, v32);
      sub_1BBA9B788(a2, v32);
      sub_1BBA9EDF0(v34, v32);
    }

    sub_1BBAA53D8(inited, a3, a4, a5);
    sub_1BBA9E174(a2);

    sub_1BBA8BCC4(v34, &qword_1EBC7BAA8);
  }

  else
  {
    sub_1BBA9B788(a2, v32);
    sub_1BBA9B788(a2, v32);
    sub_1BBA9B788(a2, v32);
  }

  *v33 = *(v9 + 136);
  *&v33[9] = *(v9 + 145);
  v18 = *(v9 + 120);
  v32[0] = *(v9 + 104);
  v32[1] = v18;
  v29 = v32[0];
  v30 = v18;
  v31 = *(v9 + 136);
  v19 = *&v33[8];
  v20 = *(v9 + 152);
  v28 = *(v9 + 160);
  v27 = v20;
  if (*&v33[8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v21 = swift_initStackObject();
    v22 = v29;
    v23 = v30;
    *(v21 + 16) = xmmword_1BBB85CE0;
    *(v21 + 32) = v22;
    *(v21 + 48) = v23;
    *(v21 + 64) = v31;
    *(v21 + 72) = v19;
    *(v21 + 80) = v27;
    *(v21 + 88) = v28;
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9EDF0(v32, v26);
      sub_1BBA9B788(a2, v26);
      sub_1BBA9EDF0(v32, v26);
      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x7265746F6F46, 0xE600000000000000, v26);
      *(a3 + 216) = v26[0];
    }

    else
    {
      sub_1BBA9EDF0(v32, v26);
      sub_1BBA9B788(a2, v26);
      sub_1BBA9EDF0(v32, v26);
    }

    sub_1BBAA53D8(v21, a3, a4, a5);
    sub_1BBA9E174(a2);

    sub_1BBA8BCC4(v32, &qword_1EBC7BAA8);
  }

  v24 = *(v9 + 168);
  if (*(v24 + 16))
  {
    if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
    {
      sub_1BBA9B788(a2, v26);

      IntelligenceElement.NavigationSplitPane.Pane.init(_:)(0x736D657449, 0xE500000000000000, v26);
      *(a3 + 216) = v26[0];
    }

    else
    {
      sub_1BBA9B788(a2, v26);
    }

    sub_1BBAA53D8(v24, a3, a4, a5);
    sub_1BBA9E174(a2);
  }

  sub_1BBA9E174(a2);
  sub_1BBA9E174(a2);
  return sub_1BBA9E174(a2);
}

uint64_t sub_1BBB4D8F8()
{
  v0 = sub_1BBB84108();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void sub_1BBB4D96C()
{
  sub_1BBB4D9D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BBB4D9D8()
{
  if (!qword_1ED6BEDA8)
  {
    sub_1BBB83658();
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BEDA8);
    }
  }
}

uint64_t sub_1BBB4DA30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696669746E656469;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v5 = 0x696669746E656469;
  }

  else
  {
    v5 = 1701869940;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007265;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB4DAD4()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB4DB54()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB4DBC0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB4DC3C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

void sub_1BBB4DC9C(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007265;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BBB4DCD8()
{
  if (*v0)
  {
    return 0x696669746E656469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1BBB4DD10@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

uint64_t sub_1BBB4DD74(uint64_t a1)
{
  v2 = sub_1BBB4E500();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4DDB0(uint64_t a1)
{
  v2 = sub_1BBB4E500();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4DDEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D038);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB4E500();
  sub_1BBB84478();
  v17 = 0;
  v12 = sub_1BBB83658();
  sub_1BBB24C9C(&qword_1EBC7AC40);
  sub_1BBB84238();
  if (v2)
  {
    return (*(v9 + 8))(v11, v8);
  }

  sub_1BBB3BA38(v3, v7);
  v14 = *(v12 - 8);
  if ((*(v14 + 48))(v7, 1, v12) == 1)
  {
    sub_1BBB4E620(v7);
  }

  else
  {
    sub_1BBB835D8();
    (*(v14 + 8))(v7, v12);
  }

  v16 = 1;
  sub_1BBB84218();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BBB4E0AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v32 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D030);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v32 - v9;
  v11 = type metadata accessor for UndeclaredUTType();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BBB83658();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v13, 1, 1, v14);
  v17 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1BBB4E500();
  v33 = v10;
  v18 = v40;
  sub_1BBB84458();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v41);
    v19 = v13;
  }

  else
  {
    v40 = v16;
    v20 = v34;
    v43 = 0;
    sub_1BBB24C9C(&qword_1EBC7AC38);
    v21 = v33;
    sub_1BBB84178();
    v22 = v35;
    v23 = v13;
    sub_1BBB4E5B0(v38, v13);
    sub_1BBB3BA38(v13, v22);
    v24 = (*(v15 + 48))(v22, 1, v14);
    v25 = v22;
    LODWORD(v22) = v24;
    sub_1BBB4E620(v25);
    if (v22 == 1)
    {
      v42 = 1;
      v26 = v39;
      sub_1BBB84138();
      v28 = v41;
      v31 = v36;
      v29 = v37;
      if (v27)
      {
        sub_1BBB835E8();
        (*(v31 + 8))(v21, v26);
        sub_1BBB4E5B0(v20, v23);
      }

      else
      {
        (*(v36 + 8))(v21, v26);
      }
    }

    else
    {
      (*(v36 + 8))(v21, v39);
      v28 = v41;
      v29 = v37;
    }

    sub_1BBB4E688(v23, v29);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v19 = v23;
  }

  return sub_1BBB4E554(v19);
}

unint64_t sub_1BBB4E500()
{
  result = qword_1EBC7B030;
  if (!qword_1EBC7B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B030);
  }

  return result;
}

uint64_t sub_1BBB4E554(uint64_t a1)
{
  v2 = type metadata accessor for UndeclaredUTType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BBB4E5B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB4E620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B858);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BBB4E688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UndeclaredUTType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBB4E700()
{
  result = qword_1EBC7D040;
  if (!qword_1EBC7D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D040);
  }

  return result;
}

unint64_t sub_1BBB4E758()
{
  result = qword_1EBC7B020;
  if (!qword_1EBC7B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B020);
  }

  return result;
}

unint64_t sub_1BBB4E7B0()
{
  result = qword_1EBC7B028;
  if (!qword_1EBC7B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B028);
  }

  return result;
}

uint64_t sub_1BBB4E804(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v12 = result + 32;
  do
  {
    v5 = (v3 + (v2 << 6));
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v7 = v5[1];
      v15 = *v5;
      v16 = v7;
      v17[0] = v5[2];
      *(v17 + 9) = *(v5 + 41);
      IntelligenceElement.recursivelyPruned()(&v18, result);
      if (*&v20[8])
      {
        break;
      }

      v15 = v18;
      v16 = v19;
      v17[0] = *v20;
      *(v17 + 9) = *&v20[9];
      result = sub_1BBA8BCC4(&v15, &qword_1EBC7BAA8);
      v5 += 4;
      if (v2 == v1)
      {
        return v4;
      }
    }

    v15 = v18;
    v16 = v19;
    v17[0] = *v20;
    *(v17 + 9) = *&v20[9];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BBA9C784(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v3 = v12;
    v9 = *(v4 + 16);
    v8 = *(v4 + 24);
    if (v9 >= v8 >> 1)
    {
      result = sub_1BBA9C784((v8 > 1), v9 + 1, 1, v4);
      v4 = result;
    }

    *v14 = v17[0];
    *&v14[9] = *(v17 + 9);
    v10 = v15;
    v13 = v16;
    *(v4 + 16) = v9 + 1;
    v11 = (v4 + (v9 << 6));
    *(v11 + 73) = *&v14[9];
    v11[3] = v13;
    v11[4] = *v14;
    v11[2] = v10;
  }

  while (v2 != v1);
  return v4;
}

unint64_t *sub_1BBB4E9CC(unint64_t *result)
{
  v2 = *result;
  v3 = (*result >> 59) & 0x1E | (*result >> 2) & 1;
  if (v3 <= 9)
  {
    return result;
  }

  if (v3 <= 14)
  {
    if (v3 > 11)
    {
      if (v3 != 12)
      {
        if (v3 == 13)
        {
          return result;
        }

        v4 = result;
        v26[0] = v2 & 0xFFFFFFFFFFFFFFBLL;

        sub_1BBB4BE84(v26);
        if (!v1)
        {
          result = sub_1BBA8ABF8(*v4);
          v5 = v26[0] | 0x7000000000000000;
LABEL_21:
          *v4 = v5;
          return result;
        }
      }

      v9 = result;
      v10 = v2 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      sub_1BBA8BD24(v2);

      v12 = sub_1BBB4E804(v11);
      if (!v1)
      {
        v13 = v12;
        sub_1BBA8ABF8(*v9);

        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        v16 = *(v10 + 32);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          *(v10 + 16) = v15;
          *(v10 + 24) = v14;
          *(v10 + 32) = v16;
          *(v10 + 40) = v13;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
          v24 = swift_allocObject();
          *(v24 + 16) = v15;
          *(v24 + 24) = v14;
          *(v24 + 32) = v16;
          *(v24 + 40) = v13;

          v10 = v24;
        }

        v23 = v10 | 0x6000000000000000;
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (v3 != 10)
    {
      return result;
    }

    v4 = result;
    v26[0] = v2 & 0xFFFFFFFFFFFFFFBLL;

    sub_1BBAD1568(v26);
    if (v1)
    {
    }

    result = sub_1BBA8ABF8(*v4);
    v7 = v26[0];
    v8 = 0x5000000000000000;
LABEL_20:
    v5 = v7 | v8;
    goto LABEL_21;
  }

  if (v3 <= 16)
  {
    v9 = result;
    if (v3 == 15)
    {
      v26[0] = v2 & 0xFFFFFFFFFFFFFFBLL;

      sub_1BBB6FBD8(v26);
      if (!v1)
      {
        result = sub_1BBA8ABF8(*v9);
        *v9 = v26[0] | 0x7000000000000004;
        return result;
      }
    }

    v17 = v2 & 0xFFFFFFFFFFFFFFBLL;
    swift_beginAccess();
    sub_1BBA8BD24(v2);

    v19 = sub_1BBB4E804(v18);
    if (!v1)
    {
      v20 = v19;
      sub_1BBA8ABF8(*v9);

      v21 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        *(v17 + 16) = v21;
        *(v17 + 24) = v22;
        *(v17 + 32) = v20;

        v23 = v17 | 0x8000000000000000;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v20;

        v23 = v25 | 0x8000000000000000;
      }

LABEL_36:
      *v9 = v23;
      return result;
    }

LABEL_29:
  }

  if (v3 != 17 && v3 == 18)
  {
    v4 = result;
    v26[0] = v2 & 0xFFFFFFFFFFFFFFBLL;

    sub_1BBB43084(v26);
    if (v1)
    {
    }

    result = sub_1BBA8ABF8(*v4);
    v7 = v26[0];
    v8 = 0x9000000000000000;
    goto LABEL_20;
  }

  return result;
}

uint64_t IntelligenceElement.isSelected.getter()
{
  LOBYTE(v1) = 0;
  v2 = *(v0 + 32);
  v3 = (v2 >> 59) & 0x1E | (v2 >> 2) & 1;
  if (v3 > 15)
  {
    if (v3 == 16)
    {
      v6 = v2 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      LOBYTE(v1) = *(v6 + 24);
    }

    else if (v3 == 17)
    {
      v5 = v2 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      LOBYTE(v1) = *(v5 + 32);
    }
  }

  else if (v3 == 5)
  {
    v1 = *(v0 + 32);
  }

  else if (v3 == 13)
  {
    v4 = (v2 & 0xFFFFFFFFFFFFFFBLL) + *(*(v2 & 0xFFFFFFFFFFFFFFBLL) + 88);
    swift_beginAccess();
    LOBYTE(v1) = *(v4 + *(_s14CollectionItemV7StorageVMa() + 24));
  }

  return v1 & 1;
}

void *sub_1BBB4EE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v6 = *v4;
  v7 = (*v4 >> 59) & 0x1E | (*v4 >> 2) & 1;
  if (v7 <= 9)
  {
    goto LABEL_2;
  }

  if (v7 > 14)
  {
    if (v7 <= 16)
    {
      v9 = a4;
      if (v7 != 15)
      {
        result = sub_1BBACE2CC(&v14);
        if (!v5)
        {
          v10 = v14 | 0x8000000000000000;
          goto LABEL_29;
        }

        return result;
      }

      result = sub_1BBB6F8D8(a1, a2, a3, &v14);
      if (v5)
      {
        return result;
      }

      v12 = v14;
      v13 = 0x7000000000000004;
    }

    else
    {
      if (v7 == 17 || v7 != 18)
      {
        goto LABEL_2;
      }

      v9 = a4;
      result = sub_1BBB427A8(a1, a2, a3, &v14);
      if (v5)
      {
        return result;
      }

      v12 = v14;
      v13 = 0x9000000000000000;
    }

    goto LABEL_24;
  }

  if (v7 <= 11)
  {
    if (v7 != 10)
    {
      goto LABEL_2;
    }

    v9 = a4;
    result = sub_1BBAD1038(a1, a2, a3, &v14);
    if (v5)
    {
      return result;
    }

    v12 = v14;
    v13 = 0x5000000000000000;
LABEL_24:
    v10 = v12 | v13;
    goto LABEL_29;
  }

  if (v7 == 12)
  {
    v9 = a4;
    result = sub_1BBB17980(a1, a2, a3, &v14);
    if (!v5)
    {
      v10 = v14 | 0x6000000000000000;
      goto LABEL_29;
    }

    return result;
  }

  if (v7 == 13)
  {
LABEL_2:
    *a4 = v6;
    return sub_1BBA8BD24(v6);
  }

  v9 = a4;
  result = sub_1BBB4B760(a1, a2, a3, &v14);
  if (!v5)
  {
    v10 = v14 | 0x7000000000000000;
LABEL_29:
    *v9 = v10;
  }

  return result;
}

uint64_t sub_1BBB4EFDC(uint64_t a1)
{
  v2 = sub_1BBB50CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F018(uint64_t a1)
{
  v2 = sub_1BBB50CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F054(uint64_t a1)
{
  v2 = sub_1BBAA2F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F090(uint64_t a1)
{
  v2 = sub_1BBAA2F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F0D8(uint64_t a1)
{
  v2 = sub_1BBA8D848();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F114(uint64_t a1)
{
  v2 = sub_1BBA8D848();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F150(uint64_t a1)
{
  v2 = sub_1BBAB5914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F18C(uint64_t a1)
{
  v2 = sub_1BBAB5914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F1C8(uint64_t a1)
{
  v2 = sub_1BBA91534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F204(uint64_t a1)
{
  v2 = sub_1BBA91534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F240(uint64_t a1)
{
  v2 = sub_1BBB50B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F27C(uint64_t a1)
{
  v2 = sub_1BBB50B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F2B8(uint64_t a1)
{
  v2 = sub_1BBB50AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F2F4(uint64_t a1)
{
  v2 = sub_1BBB50AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F330(uint64_t a1)
{
  v2 = sub_1BBA90B24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F36C(uint64_t a1)
{
  v2 = sub_1BBA90B24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F3A8(uint64_t a1)
{
  v2 = sub_1BBB50AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F3E4(uint64_t a1)
{
  v2 = sub_1BBB50AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F420(uint64_t a1)
{
  v2 = sub_1BBB50958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F45C(uint64_t a1)
{
  v2 = sub_1BBB50958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F498(uint64_t a1)
{
  v2 = sub_1BBB50BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F4D4(uint64_t a1)
{
  v2 = sub_1BBB50BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F510(uint64_t a1)
{
  v2 = sub_1BBB50BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F54C(uint64_t a1)
{
  v2 = sub_1BBB50BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F588(uint64_t a1)
{
  v2 = sub_1BBAA71CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F5C4(uint64_t a1)
{
  v2 = sub_1BBAA71CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F600(uint64_t a1)
{
  v2 = sub_1BBAA2DD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F63C(uint64_t a1)
{
  v2 = sub_1BBAA2DD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F678(uint64_t a1)
{
  v2 = sub_1BBAB5770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F6B4(uint64_t a1)
{
  v2 = sub_1BBAB5770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F6F0(uint64_t a1)
{
  v2 = sub_1BBB509AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F72C(uint64_t a1)
{
  v2 = sub_1BBB509AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F768(uint64_t a1)
{
  v2 = sub_1BBB50A54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F7A4(uint64_t a1)
{
  v2 = sub_1BBB50A54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F7E0(uint64_t a1)
{
  v2 = sub_1BBB50A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F81C(uint64_t a1)
{
  v2 = sub_1BBB50A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F858(uint64_t a1)
{
  v2 = sub_1BBA8D89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F894(uint64_t a1)
{
  v2 = sub_1BBA8D89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F8D0(uint64_t a1)
{
  v2 = sub_1BBB50C4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F90C(uint64_t a1)
{
  v2 = sub_1BBB50C4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F948(uint64_t a1)
{
  v2 = sub_1BBAAB504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4F984(uint64_t a1)
{
  v2 = sub_1BBAAB504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB4F9C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746169636F737361;
  }

  else
  {
    v3 = 0x546465646F636E65;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xEF65756C61566465;
  }

  if (*a2)
  {
    v5 = 0x746169636F737361;
  }

  else
  {
    v5 = 0x546465646F636E65;
  }

  if (*a2)
  {
    v6 = 0xEF65756C61566465;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB4FA7C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB4FB14()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB4FB98()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB4FC2C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

void sub_1BBB4FC8C(uint64_t *a1@<X8>)
{
  v2 = 0x546465646F636E65;
  if (*v1)
  {
    v2 = 0x746169636F737361;
  }

  v3 = 0xEB00000000657079;
  if (*v1)
  {
    v3 = 0xEF65756C61566465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BBB4FCE0@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

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

uint64_t sub_1BBB4FD44(uint64_t a1)
{
  v2 = sub_1BBA8C4B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB4FD80(uint64_t a1)
{
  v2 = sub_1BBA8C4B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t IntelligenceElement.Content.description.getter()
{
  v1 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  switch((v4 >> 59) & 0x1E | (v4 >> 2) & 1)
  {
    case 1uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Screen.description.getter();
      break;
    case 2uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Window.description.getter();
      break;
    case 3uLL:
      v6 = (v4 & 0xFFFFFFFFFFFFFFBLL) + *(*(v4 & 0xFFFFFFFFFFFFFFBLL) + 88);
      swift_beginAccess();
      v7 = _s13RemoteContextV7StorageVMa(0);
      sub_1BBACD3C0(v6 + *(v7 + 20), v3);
      v8 = IntelligenceFragment.RemoteID.description.getter();
      sub_1BBACD424(v3);
      result = v8;
      break;
    case 4uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.RemoteProcess.description.getter();
      break;
    case 5uLL:
      LOBYTE(v10) = v4 & 1;
      result = IntelligenceElement.CustomAppEntity.description.getter();
      break;
    case 6uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Text.description.getter();
      break;
    case 7uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Image.description.getter();
      break;
    case 8uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Document.description.getter();
      break;
    case 9uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.ImageMedia.description.getter();
      break;
    case 0xAuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Button.description.getter();
      break;
    case 0xBuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Scrollable.description.getter();
      break;
    case 0xCuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Collection.description.getter();
      break;
    case 0xDuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.CollectionItem.description.getter();
      break;
    case 0xEuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Section.description.getter();
      break;
    case 0xFuLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.Table.description.getter();
      break;
    case 0x10uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.TableRow.description.getter();
      break;
    case 0x11uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.TableCell.description.getter();
      break;
    case 0x12uLL:
      v10 = v4 & 0xFFFFFFFFFFFFFFBLL;
      result = IntelligenceElement.NavigationSplitPane.description.getter();
      break;
    case 0x13uLL:
      if (v4 == 0x9000000000000004)
      {
        result = 1702060354;
      }

      else
      {
        result = 0xD000000000000016;
      }

      break;
    default:
      result = IntelligenceElement.AsyncContent.description.getter();
      break;
  }

  return result;
}

unint64_t sub_1BBB500D4()
{
  result = qword_1EBC7D058;
  if (!qword_1EBC7D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D058);
  }

  return result;
}

unint64_t sub_1BBB50128()
{
  result = qword_1EBC7D060;
  if (!qword_1EBC7D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D060);
  }

  return result;
}

unint64_t sub_1BBB5017C()
{
  result = qword_1EBC7D068;
  if (!qword_1EBC7D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D068);
  }

  return result;
}

unint64_t sub_1BBB501D0()
{
  result = qword_1EBC7D070;
  if (!qword_1EBC7D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D070);
  }

  return result;
}

unint64_t sub_1BBB50224()
{
  result = qword_1EBC7ADA8;
  if (!qword_1EBC7ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADA8);
  }

  return result;
}

unint64_t sub_1BBB50278()
{
  result = qword_1ED6BE0F0;
  if (!qword_1ED6BE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE0F0);
  }

  return result;
}

unint64_t sub_1BBB502CC()
{
  result = qword_1EBC7AD48;
  if (!qword_1EBC7AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD48);
  }

  return result;
}

unint64_t sub_1BBB50320()
{
  result = qword_1EBC7D078;
  if (!qword_1EBC7D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D078);
  }

  return result;
}

unint64_t sub_1BBB50374()
{
  result = qword_1ED6BDD88;
  if (!qword_1ED6BDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD88);
  }

  return result;
}

unint64_t sub_1BBB503C8()
{
  result = qword_1ED6BDD90;
  if (!qword_1ED6BDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD90);
  }

  return result;
}

unint64_t sub_1BBB5041C()
{
  result = qword_1EBC7D088;
  if (!qword_1EBC7D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D088);
  }

  return result;
}

unint64_t sub_1BBB50470()
{
  result = qword_1EBC7D090;
  if (!qword_1EBC7D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D090);
  }

  return result;
}

unint64_t sub_1BBB504C4()
{
  result = qword_1EBC7D098;
  if (!qword_1EBC7D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D098);
  }

  return result;
}

unint64_t sub_1BBB50518()
{
  result = qword_1EBC7D0A0;
  if (!qword_1EBC7D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D0A0);
  }

  return result;
}

unint64_t sub_1BBB5056C()
{
  result = qword_1EBC7ACD8;
  if (!qword_1EBC7ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACD8);
  }

  return result;
}

unint64_t sub_1BBB505C0()
{
  result = qword_1EBC7ADA0;
  if (!qword_1EBC7ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADA0);
  }

  return result;
}

unint64_t sub_1BBB50614()
{
  result = qword_1ED6BDD68;
  if (!qword_1ED6BDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD68);
  }

  return result;
}

unint64_t sub_1BBB50668()
{
  result = qword_1EBC7ACE8;
  if (!qword_1EBC7ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACE8);
  }

  return result;
}

unint64_t sub_1BBB506BC()
{
  result = qword_1EBC7AD40;
  if (!qword_1EBC7AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AD40);
  }

  return result;
}

unint64_t sub_1BBB50710()
{
  result = qword_1EBC7D0A8;
  if (!qword_1EBC7D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D0A8);
  }

  return result;
}

unint64_t sub_1BBB507FC()
{
  result = qword_1EBC7D0B0;
  if (!qword_1EBC7D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D0B0);
  }

  return result;
}

unint64_t sub_1BBB50854()
{
  result = qword_1EBC7D0B8;
  if (!qword_1EBC7D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D0B8);
  }

  return result;
}

unint64_t sub_1BBB508AC()
{
  result = qword_1ED6BE240;
  if (!qword_1ED6BE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE240);
  }

  return result;
}

unint64_t sub_1BBB50904()
{
  result = qword_1ED6BE248;
  if (!qword_1ED6BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE248);
  }

  return result;
}

unint64_t sub_1BBB50958()
{
  result = qword_1EBC7D168;
  if (!qword_1EBC7D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D168);
  }

  return result;
}

unint64_t sub_1BBB509AC()
{
  result = qword_1EBC7D170;
  if (!qword_1EBC7D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D170);
  }

  return result;
}

unint64_t sub_1BBB50A00()
{
  result = qword_1EBC7D178;
  if (!qword_1EBC7D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D178);
  }

  return result;
}

unint64_t sub_1BBB50A54()
{
  result = qword_1EBC7D180;
  if (!qword_1EBC7D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D180);
  }

  return result;
}

unint64_t sub_1BBB50AA8()
{
  result = qword_1EBC7AF48;
  if (!qword_1EBC7AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF48);
  }

  return result;
}

unint64_t sub_1BBB50AFC()
{
  result = qword_1EBC7D188;
  if (!qword_1EBC7D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D188);
  }

  return result;
}

unint64_t sub_1BBB50B50()
{
  result = qword_1EBC7AF40;
  if (!qword_1EBC7AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF40);
  }

  return result;
}

unint64_t sub_1BBB50BA4()
{
  result = qword_1EBC7D190;
  if (!qword_1EBC7D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D190);
  }

  return result;
}

unint64_t sub_1BBB50BF8()
{
  result = qword_1ED6BDD80;
  if (!qword_1ED6BDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDD80);
  }

  return result;
}

unint64_t sub_1BBB50C4C()
{
  result = qword_1EBC7D198;
  if (!qword_1EBC7D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D198);
  }

  return result;
}

unint64_t sub_1BBB50CA0()
{
  result = qword_1EBC7D1A0;
  if (!qword_1EBC7D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D1A0);
  }

  return result;
}

uint64_t sub_1BBB50CF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1BBA9B788(a2, v48);
  sub_1BBA9B788(a2, v48);
  sub_1BBA9B788(a2, v48);
  v10 = *a1;
  switch((*a1 >> 59) & 0x1E | (*a1 >> 2) & 1)
  {
    case 0xAuLL:
      v40 = v10 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBAD2ABC(&v40, a2, a3, a4, a5);
      goto LABEL_3;
    case 0xCuLL:
      v29 = v10 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      v30 = *(v29 + 40);
      if (!*(v30 + 16))
      {
        goto LABEL_2;
      }

      sub_1BBA9B788(a2, v48);
      v31 = a2;
      if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) != 0x12)
      {
        goto LABEL_23;
      }

      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);

      v32 = 0x736E6F6974636553;
      v33 = 0xE800000000000000;
      goto LABEL_28;
    case 0xEuLL:
      v40 = v10 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBB4D4E4(&v40, a2, a3, a4, a5);
      goto LABEL_3;
    case 0xFuLL:
      v12 = v10 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      v13 = *(v12 + 24);
      v14 = *(v13 + 16);
      if (v14)
      {
        v36 = v12;
        v38 = a5;
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);

        v15 = v14 - 1;
        v16 = 32;
        v37 = v13;
        while (1)
        {
          v17 = *(v13 + v16);
          swift_beginAccess();
          v18 = *(v17 + 48);
          v19 = *(v17 + 64);
          *&v49[9] = *(v17 + 89);
          v20 = *(v17 + 80);
          v48[1] = v19;
          *v49 = v20;
          v48[0] = v18;
          v47 = *(v17 + 80);
          v45 = *(v17 + 48);
          v46 = v19;
          v21 = *(&v20 + 1);
          v44 = *(v17 + 104);
          v43 = *(v17 + 96);
          if (*(&v20 + 1))
          {
            v39 = v15;
            v42 = v17;

            sub_1BBA8BC5C(v48, &v40, &qword_1EBC7BAA8);
            v40 = IntelligenceElement.Table.Column.description.getter();
            v41 = v22;
            MEMORY[0x1BFB16150](0x72656461654820, 0xE700000000000000);
            v24 = v40;
            v23 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
            inited = swift_initStackObject();
            v26 = v45;
            v27 = v46;
            *(inited + 16) = xmmword_1BBB85CE0;
            *(inited + 32) = v26;
            *(inited + 48) = v27;
            *(inited + 64) = v47;
            *(inited + 72) = v21;
            *(inited + 80) = v43;
            *(inited + 88) = v44;
            if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
            {
              sub_1BBA9B788(a2, &v40);
              sub_1BBA8BC5C(v48, &v40, &qword_1EBC7BAA8);

              IntelligenceElement.NavigationSplitPane.Pane.init(_:)(v24, v23, &v40);
              v28 = a3;
              *(a3 + 216) = v40;
            }

            else
            {
              sub_1BBA9B788(a2, &v40);
              sub_1BBA8BC5C(v48, &v40, &qword_1EBC7BAA8);
              v28 = a3;
            }

            sub_1BBAA53D8(inited, v28, a4, v38);
            sub_1BBA9E174(a2);

            swift_setDeallocating();
            sub_1BBA9E174(inited + 32);

            sub_1BBA8BCC4(v48, &qword_1EBC7BAA8);
            v13 = v37;
            v15 = v39;
          }

          if (!v15)
          {
            break;
          }

          --v15;
          v16 += 8;
        }

        a5 = v38;
        v12 = v36;
      }

      else
      {
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
      }

      v30 = *(v12 + 32);
      if (!*(v30 + 16))
      {
        goto LABEL_3;
      }

      v35 = a2;
      if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) != 0x12)
      {
        goto LABEL_29;
      }

      sub_1BBA9B788(a2, v48);

      v32 = 1937207122;
      v33 = 0xE400000000000000;
      goto LABEL_28;
    case 0x10uLL:
      v34 = v10 & 0xFFFFFFFFFFFFFFBLL;
      swift_beginAccess();
      v30 = *(v34 + 32);
      if (!*(v30 + 16))
      {
        goto LABEL_2;
      }

      sub_1BBA9B788(a2, v48);
      v31 = a2;
      if (((*(a2 + 32) >> 59) & 0x1E | (*(a2 + 32) >> 2) & 1) == 0x12)
      {
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);

        v32 = 0x736C6C6543;
        v33 = 0xE500000000000000;
LABEL_28:
        IntelligenceElement.NavigationSplitPane.Pane.init(_:)(v32, v33, v48);
        *(a3 + 216) = v48[0];
      }

      else
      {
LABEL_23:
        sub_1BBA9B788(v31, v48);
        sub_1BBA9B788(a2, v48);
        sub_1BBA9B788(a2, v48);
        v35 = a2;
LABEL_29:
        sub_1BBA9B788(v35, v48);
      }

      sub_1BBAA53D8(v30, a3, a4, a5);
      sub_1BBA9E174(a2);

LABEL_3:
      sub_1BBA9E174(a2);
      sub_1BBA9E174(a2);
      sub_1BBA9E174(a2);
      sub_1BBA9E174(a2);
      sub_1BBA9E174(a2);
      sub_1BBA9E174(a2);
      return sub_1BBA9E174(a2);
    case 0x12uLL:
      v40 = v10 & 0xFFFFFFFFFFFFFFBLL;
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBB48520(&v40, a2, a3, a4, a5);
      goto LABEL_3;
    default:
LABEL_2:
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      sub_1BBA9B788(a2, v48);
      goto LABEL_3;
  }
}

unint64_t sub_1BBB5150C()
{
  result = qword_1EBC7D250;
  if (!qword_1EBC7D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D250);
  }

  return result;
}

unint64_t sub_1BBB51564()
{
  result = qword_1ED6BE218;
  if (!qword_1ED6BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE218);
  }

  return result;
}

unint64_t sub_1BBB515BC()
{
  result = qword_1ED6BE220;
  if (!qword_1ED6BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE220);
  }

  return result;
}

unint64_t sub_1BBB51614()
{
  result = qword_1ED6BE0F8;
  if (!qword_1ED6BE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE0F8);
  }

  return result;
}

unint64_t sub_1BBB5166C()
{
  result = qword_1ED6BE100;
  if (!qword_1ED6BE100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE100);
  }

  return result;
}

unint64_t sub_1BBB516C4()
{
  result = qword_1ED6BE1B0;
  if (!qword_1ED6BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1B0);
  }

  return result;
}

unint64_t sub_1BBB5171C()
{
  result = qword_1ED6BE1B8;
  if (!qword_1ED6BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1B8);
  }

  return result;
}

unint64_t sub_1BBB51774()
{
  result = qword_1ED6BE198;
  if (!qword_1ED6BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE198);
  }

  return result;
}

unint64_t sub_1BBB517CC()
{
  result = qword_1ED6BE1A0;
  if (!qword_1ED6BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1A0);
  }

  return result;
}

unint64_t sub_1BBB51824()
{
  result = qword_1ED6BE1C8;
  if (!qword_1ED6BE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1C8);
  }

  return result;
}

unint64_t sub_1BBB5187C()
{
  result = qword_1ED6BE1D0;
  if (!qword_1ED6BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1D0);
  }

  return result;
}

unint64_t sub_1BBB518D4()
{
  result = qword_1ED6BE118;
  if (!qword_1ED6BE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE118);
  }

  return result;
}

unint64_t sub_1BBB5192C()
{
  result = qword_1ED6BE120;
  if (!qword_1ED6BE120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE120);
  }

  return result;
}

unint64_t sub_1BBB51984()
{
  result = qword_1ED6BDB28;
  if (!qword_1ED6BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB28);
  }

  return result;
}

unint64_t sub_1BBB519DC()
{
  result = qword_1ED6BDB30;
  if (!qword_1ED6BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDB30);
  }

  return result;
}

unint64_t sub_1BBB51A34()
{
  result = qword_1ED6BE208;
  if (!qword_1ED6BE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE208);
  }

  return result;
}

unint64_t sub_1BBB51A8C()
{
  result = qword_1ED6BE210;
  if (!qword_1ED6BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE210);
  }

  return result;
}

unint64_t sub_1BBB51AE4()
{
  result = qword_1ED6BE1F8;
  if (!qword_1ED6BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1F8);
  }

  return result;
}

unint64_t sub_1BBB51B3C()
{
  result = qword_1ED6BE200;
  if (!qword_1ED6BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE200);
  }

  return result;
}

unint64_t sub_1BBB51B94()
{
  result = qword_1ED6BE178;
  if (!qword_1ED6BE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE178);
  }

  return result;
}

unint64_t sub_1BBB51BEC()
{
  result = qword_1ED6BE180;
  if (!qword_1ED6BE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE180);
  }

  return result;
}

unint64_t sub_1BBB51C44()
{
  result = qword_1ED6BE138;
  if (!qword_1ED6BE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE138);
  }

  return result;
}

unint64_t sub_1BBB51C9C()
{
  result = qword_1ED6BE140;
  if (!qword_1ED6BE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE140);
  }

  return result;
}

unint64_t sub_1BBB51CF4()
{
  result = qword_1ED6BE1D8;
  if (!qword_1ED6BE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1D8);
  }

  return result;
}

unint64_t sub_1BBB51D4C()
{
  result = qword_1ED6BE1E0;
  if (!qword_1ED6BE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1E0);
  }

  return result;
}

unint64_t sub_1BBB51DA4()
{
  result = qword_1ED6BE128;
  if (!qword_1ED6BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE128);
  }

  return result;
}