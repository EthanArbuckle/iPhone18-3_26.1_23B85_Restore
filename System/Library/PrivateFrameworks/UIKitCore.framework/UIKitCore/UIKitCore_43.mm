uint64_t sub_188F6046C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = *(a1 + 48);
  v8 = *(a1 + 49);
  v9 = a1[7];
  *(a2 + 16) = a1[2];
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 49) = v8;
  *(a2 + 56) = v9;
  *a2 = v3;
  *(a2 + 8) = v2;
}

uint64_t sub_188F604DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, char a4, void *a5)
{
  v82 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v59 = v10;
  v60 = v6;
  while (1)
  {
    v22 = v9;
    v23 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v25 = __clz(__rbit64(v22)) | (v23 << 6);
    v26 = (*(a1 + 48) + 16 * v25);
    v28 = *v26;
    v27 = v26[1];
    v29 = *(a1 + 56) + 48 * v25;
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *(v29 + 16);
    v33 = *(v29 + 24);
    v34 = *(v29 + 32);
    v35 = *(v29 + 33);
    v36 = *(v29 + 40);
    *&v68 = v28;
    *(&v68 + 1) = v27;
    *&v69 = v30;
    *(&v69 + 1) = v31;
    *&v70 = v32;
    *(&v70 + 1) = v33;
    LOBYTE(v71) = v34;
    BYTE1(v71) = v35;
    *(&v71 + 1) = v36;

    a2(&v73, &v68);
    v72[0] = v68;
    v72[1] = v69;
    v72[2] = v70;
    v72[3] = v71;
    sub_188A3F5FC(v72, &qword_1EA937CD8);
    v37 = v74;
    if (!v74)
    {
LABEL_22:
      sub_188E036A4();
    }

    v38 = a4;
    v39 = v73;
    v40 = v75;
    v67 = v76;
    v64 = v77;
    v41 = v78;
    v62 = v80;
    v63 = v79;
    v42 = v81;
    v43 = *v82;
    v45 = sub_188B0944C(v73, v74);
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_24;
    }

    v49 = v44;
    if (v43[3] >= v48)
    {
      if ((v38 & 1) == 0)
      {
        sub_188FA2E5C();
      }
    }

    else
    {
      sub_188B42904(v48, v38 & 1);
      v50 = sub_188B0944C(v39, v37);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_26;
      }

      v45 = v50;
    }

    v66 = (v22 - 1) & v22;
    v52 = *v82;
    if (v49)
    {
      v12 = 48 * v45;
      v13 = v52[7] + 48 * v45;
      v15 = *v13;
      v14 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v18 = *(v13 + 32);
      v19 = *(v13 + 33);
      v20 = *(v13 + 40);

      v21 = v52[7] + v12;
      *v21 = v15;
      *(v21 + 8) = v14;
      *(v21 + 16) = v16;
      *(v21 + 24) = v17;
      *(v21 + 32) = v18;
      *(v21 + 33) = v19;
      *(v21 + 40) = v20;
    }

    else
    {
      v52[(v45 >> 6) + 8] |= 1 << v45;
      v53 = (v52[6] + 16 * v45);
      *v53 = v39;
      v53[1] = v37;
      v54 = v52[7] + 48 * v45;
      *v54 = v40;
      *(v54 + 8) = v67;
      *(v54 + 16) = v64;
      *(v54 + 24) = v41;
      *(v54 + 32) = v63;
      *(v54 + 33) = v62;
      *(v54 + 40) = v42;
      v55 = v52[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_25;
      }

      v52[2] = v57;
    }

    a4 = 1;
    v11 = v23;
    v10 = v59;
    v6 = v60;
    v9 = v66;
  }

  v24 = v11;
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v10)
    {
      goto LABEL_22;
    }

    v22 = *(v6 + 8 * v23);
    ++v24;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

uint64_t sub_188F608BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 392))
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

uint64_t sub_188F60918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_188F609E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 681))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 344);
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

uint64_t sub_188F60A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 680) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 681) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 681) = 0;
    }

    if (a2)
    {
      *(result + 344) = a2;
    }
  }

  return result;
}

uint64_t sub_188F60B64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 320))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188F60B84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 312) = 0;
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

  *(result + 320) = v3;
  return result;
}

uint64_t sub_188F60C14(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[33])
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

uint64_t sub_188F60C68(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_188F60CF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
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

uint64_t sub_188F60D38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_188F60DB8()
{
  result = qword_1EA937CE0;
  if (!qword_1EA937CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937CE0);
  }

  return result;
}

unint64_t sub_188F60E10()
{
  result = qword_1EA937CE8;
  if (!qword_1EA937CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationMode(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnimationMode(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_188F60F80(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, SEL *a11)
{
  v50 = a8;
  v51 = a4;
  v52 = a5;
  v53 = a3;
  v47[1] = a2;
  v13 = a1;
  v49 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v47[2] = v14;
  v48 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18A4A6DD8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v57 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v47 - v19;
  v21 = sub_18A4A6DF8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v47 - v26;
  v60 = a6;
  v61 = v13;
  v59 = a7;
  sub_18A4A6D48();
  sub_18A4A6DE8();
  v55 = *(v22 + 8);
  v56 = v21;
  v55(v27, v21);
  v28 = *(v16 + 88);
  LODWORD(v13) = v28(v20, v15);
  LODWORD(v21) = *MEMORY[0x1E6982218];
  v29 = *(v16 + 8);
  v58 = v15;
  v29(v20, v15);
  if (v13 == v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v30 = v60;
  v31 = v59;
  sub_18A4A6D48();
  v32 = v57;
  sub_18A4A6DE8();
  v55(v24, v56);
  v33 = v58;
  v34 = v28(v32, v58);
  v35 = *MEMORY[0x1E6982210];
  v29(v32, v33);
  if (v34 == v35)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v36 = sub_18A4A6D58();
  if (v36)
  {
    v37 = v36;
    v58 = a11;
    v38 = sub_18A4A6DA8();
    v39 = v48;
    v40 = v49;
    (*(v49 + 16))(v48, v61, v30);
    v41 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 2) = v30;
    *(v42 + 3) = v31;
    v43 = v51;
    v44 = v30;
    v45 = v52;
    *(v42 + 4) = v51;
    *(v42 + 5) = v45;
    (*(v40 + 32))(&v42[v41], v39, v44);
    aBlock[4] = a9;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188BFF280;
    aBlock[3] = a10;
    v46 = _Block_copy(aBlock);
    sub_188A52E38(v43);

    [v54 *v58];
    _Block_release(v46);

    return;
  }

LABEL_7:
  __break(1u);
}

void UIImageView.removeAllSymbolEffects(options:animated:)(uint64_t a1, char a2)
{
  v4 = sub_18A4A6DA8();
  [v2 removeAllSymbolEffectsWithOptions:v4 animated:a2 & 1];
}

void UIImageView.setSymbolImage<A>(_:contentTransition:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a1;
  v21 = a5;
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = sub_18A4A6D68();
  if (v13)
  {
    v14 = v13;
    v15 = sub_18A4A6DA8();
    (*(v11 + 16))(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a6);
    v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a6;
    *(v17 + 3) = a7;
    v18 = v21;
    *(v17 + 4) = a4;
    *(v17 + 5) = v18;
    (*(v11 + 32))(&v17[v16], &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6);
    aBlock[4] = sub_188F617AC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188BFF280;
    aBlock[3] = &block_descriptor_41;
    v19 = _Block_copy(aBlock);
    sub_188A52E38(a4);

    [v23 setSymbolImage:v22 withContentTransition:v14 options:v15 completion:v19];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void *sub_188F616AC(void *result, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v10 = result;
    v11 = [result isFinished];
    v12 = [v10 sender];
    v15[3] = a5;
    v15[4] = a6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a4, a5);
    swift_unknownObjectWeakInit();
    v14[0] = v11;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    a2(v14);
    return sub_188E9CED8(v14);
  }

  return result;
}

uint64_t sub_188F617CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188F61814(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_188F619C4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_188A84438();

  if (v3)
  {

    v4 = [v1 scrollPocketInteraction];
    if (v4)
    {
    }

    else
    {
      v8 = [v1 image];
      if (v8)
      {

        v9 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle_];
        [v1 setScrollPocketInteraction_];
        [v1 addInteraction_];
        goto LABEL_12;
      }
    }
  }

  v5 = [v1 traitCollection];
  v6 = sub_188A84438();

  if (v6)
  {

    return;
  }

  v7 = [v1 scrollPocketInteraction];
  if (!v7)
  {
    return;
  }

  v9 = v7;
  [v1 removeInteraction_];
  [v1 setScrollPocketInteraction_];
LABEL_12:
}

id sub_188F61C80(uint64_t a1, void *a2)
{
  result = [objc_opt_self() hashTableWithOptions_];
  *a2 = result;
  return result;
}

uint64_t sub_188F61CC8()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1ED48EFA0);
  __swift_project_value_buffer(v0, qword_1ED48EFA0);
  return sub_18A4A4368();
}

_UIViewPowerLogStatistics __swiftcall _UIViewPowerLogStatistics.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

BOOL sub_188F61E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_18A4A86C8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_188F61E78()
{
  v1 = *(v0 + 16);
  sub_18A4A8888();
  sub_18A4A7348();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFE3810](*&v2);
  return sub_18A4A88E8();
}

uint64_t sub_188F61EF0()
{
  v1 = *(v0 + 16);
  sub_18A4A7348();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x18CFE3810](*&v2);
}

uint64_t sub_188F61F3C()
{
  v1 = *(v0 + 16);
  sub_18A4A8888();
  sub_18A4A7348();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFE3810](*&v2);
  return sub_18A4A88E8();
}

uint64_t sub_188F61FB0()
{
  if (qword_1ED48D588 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v0 = [qword_1EA937CF0 allObjects];
    type metadata accessor for ScrollEdgeEffectView();
    v1 = sub_18A4A7548();

    v33 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      break;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_19;
    }

LABEL_4:
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_188E4A2D4(v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 window];
      if (v7)
      {

        sub_18A4A81D8();
        sub_18A4A8218();
        sub_18A4A8228();
        sub_18A4A81E8();
      }

      else
      {
      }

      ++v3;
      if (v6 == v2)
      {
        v8 = v33;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v2 = sub_18A4A7F68();
  if (v2)
  {
    goto LABEL_4;
  }

LABEL_19:
  v8 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v9 = (v8 >> 62) & 1;
  if (v8 < 0)
  {
    LODWORD(v9) = 1;
  }

  v32 = v9;
  if (v9 == 1)
  {
LABEL_74:
    v10 = sub_18A4A7F68();
  }

  else
  {
    v10 = *(v8 + 16);
  }

  v11 = 0;
  v12 = 0;
  v13 = v8 & 0xC000000000000001;
  while (v10 != v11)
  {
    if (v13)
    {
      v14 = sub_188E4A2D4(v11, v8);
    }

    else
    {
      if (v11 >= *(v8 + 16))
      {
        goto LABEL_70;
      }

      v14 = *(v8 + 8 * v11 + 32);
    }

    v15 = v14;
    if (__OFADD__(v11, 1))
    {
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

    type metadata accessor for UIScrollEdgeEffectStyle(0);
    v16 = [*&v15[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_effect] style];
    v17 = [objc_opt_self() hardStyle];
    v18 = sub_18A4A7C88();

    ++v11;
    v19 = __OFADD__(v12, v18 & 1);
    v12 += v18 & 1;
    if (v19)
    {
      goto LABEL_71;
    }
  }

  v20 = 0;
  v21 = 0;
  while (v10 != v20)
  {
    if (v13)
    {
      v22 = sub_188E4A2D4(v20, v8);
      if (__OFADD__(v20, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v20 >= *(v8 + 16))
      {
        goto LABEL_72;
      }

      v22 = *(v8 + 8 * v20 + 32);
      if (__OFADD__(v20, 1))
      {
LABEL_44:
        __break(1u);
        break;
      }
    }

    v23 = *(*&v22[OBJC_IVAR____TtC5UIKit20ScrollEdgeEffectView_luminanceAdjustment] + OBJC_IVAR____TtCC5UIKit20ScrollEdgeEffectView19LuminanceAdjustment_captureColor) != 0;

    ++v20;
    v19 = __OFADD__(v21, v23);
    v21 += v23;
    if (v19)
    {
      goto LABEL_73;
    }
  }

  if (v32)
  {
    v24 = sub_18A4A7F68();
  }

  else
  {
    v24 = *(v8 + 16);
  }

  v26 = v24 - v12;
  if (__OFSUB__(v24, v12))
  {
    __break(1u);
    goto LABEL_76;
  }

  v27 = v26 - v21;
  if (__OFSUB__(v26, v21))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v28 = v12 + v21;
  if (__OFADD__(v12, v21))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v19 = __OFADD__(v28, v27);
  v29 = v28 + v27;
  if (v19)
  {
LABEL_78:
    __break(1u);
    return result;
  }

  if (v12 > byte_1ED48DBB8)
  {
    v30 = -1;
    if (v12 < 0xFF)
    {
      v30 = v12;
    }

    byte_1ED48DBB8 = v30;
  }

  if (v21 > byte_1EA931119)
  {
    v31 = -1;
    if (v21 < 0xFF)
    {
      v31 = v21;
    }

    byte_1EA931119 = v31;
  }

  if (v27 > byte_1EA930C52)
  {
    if (v27 >= 0xFF)
    {
      LOBYTE(v27) = -1;
    }

    byte_1EA930C52 = v27;
  }

  if (v29 > byte_1EA931343)
  {
    if (v29 >= 0xFF)
    {
      LOBYTE(v29) = -1;
    }

    byte_1EA931343 = v29;
  }

  return result;
}

uint64_t sub_188F623D4()
{
  v1 = sub_18A4A4378();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v41 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED48CFD0 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v3 = [qword_1ED48CC18 allObjects];
    sub_188A34624(0, &qword_1ED48F680);
    v4 = sub_18A4A7548();

    v44 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      v5 = sub_18A4A7F68();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v7 = 0;
      v0 = (v4 & 0xC000000000000001);
      while (1)
      {
        if (v0)
        {
          v8 = sub_188E49300(v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (([(UIView *)v8 _isInVisibleHierarchy]& 1) != 0)
        {
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
        }

        else
        {
        }

        ++v7;
        if (v10 == v5)
        {
          v11 = v44;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v44 = v6;
    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
      v12 = sub_18A4A7F68();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
      break;
    }

    v0 = 0;
    v6 = &selRef_keyboardSceneDelegate_inputViewSetVisibilityDidChange_includedReset_;
LABEL_22:
    v14 = v0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_188E49300(v14, v11);
      }

      else
      {
        if (v14 >= *(v11 + 16))
        {
          goto LABEL_51;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      v0 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v17 = [v15 layer];

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        MEMORY[0x18CFE2450]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v13 = v44;
        if (v0 != v12)
        {
          goto LABEL_22;
        }

        goto LABEL_34;
      }

      ++v14;
      if (v0 == v12)
      {
        goto LABEL_34;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

LABEL_34:

  if (v13 >> 62)
  {
    v18 = sub_18A4A7F68();
    if (!v18)
    {
      goto LABEL_56;
    }

LABEL_36:
    v44 = MEMORY[0x1E69E7CC0];
    sub_188E6D21C(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v20 = v44;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v21 = sub_188E4A474(v19, v13);
        }

        else
        {
          v21 = *(v13 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = [v21 groupName];
        if (v23)
        {
          v24 = v23;
          v25 = sub_18A4A7288();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0xE000000000000000;
        }

        [v22 scale];
        v29 = v28;

        v44 = v20;
        v31 = *(v20 + 16);
        v30 = *(v20 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_188E6D21C((v30 > 1), v31 + 1, 1);
          v20 = v44;
        }

        ++v19;
        *(v20 + 16) = v31 + 1;
        v32 = (v20 + 24 * v31);
        v32[4] = v25;
        v32[5] = v27;
        v32[6] = v29;
      }

      while (v18 != v19);

      goto LABEL_57;
    }

    __break(1u);
LABEL_66:
    swift_once();
LABEL_59:
    v35 = v43;
    v36 = __swift_project_value_buffer(v43, qword_1ED48EFA0);
    (*(v42 + 16))(v41, v36, v35);
    v37 = sub_18A4A4358();
    v38 = sub_18A4A7968();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = v6;
      _os_log_impl(&dword_188A29000, v37, v38, "New maximum distinct backdrop group count: %ld", v39, 0xCu);
      MEMORY[0x18CFEA5B0](v39, -1, -1);
    }

    result = (*(v42 + 8))(v41, v43);
    v40 = -1;
    if (v6 < 0xFF)
    {
      v40 = v6;
    }

    *(v0 + 908) = v40;
  }

  else
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_36;
    }

LABEL_56:

    v20 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v33 = sub_188F98834(v20);

    v6 = *(v33 + 16);

    v0 = &qword_1EA931000;
    if (v6 > byte_1EA93138C)
    {
      if (qword_1ED48F098 == -1)
      {
        goto LABEL_59;
      }

      goto LABEL_66;
    }
  }

  return result;
}

unint64_t sub_188F62C58()
{
  result = qword_1ED48CC20;
  if (!qword_1ED48CC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48CC20);
  }

  return result;
}

void sub_188F62CAC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  if (a2 && a2 != a1)
  {
    v11 = a2;
    [v11 setAlpha_];
    [v11 setFrame_];
    [v11 layoutIfNeeded];
    [v11 setTransitioning_];
  }
}

void sub_188F62D68()
{
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  v4 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
  v5 = *(v4 + 224);
  UIFloorToScale(*(v3 + 232), 6.0);
  v7 = v5 == *(v3 + 224) && v6 == *(v3 + 232);
  if (!v7 || *(v3 + 40) != 1)
  {
    *(v3 + 224) = v5;
    *(v3 + 232) = v6;
    sub_188B38ED0(v5);
    swift_beginAccess();
    v8 = *(v3 + 344);
    v9 = v8;
    if (!v8)
    {
      v9 = *(v3 + 352);
      v10 = v9;
    }

    swift_beginAccess();
    v11 = *(v3 + 232);
    v12 = v8;

    sub_188B3A13C(v13, v9, v11);

    swift_beginAccess();
    v14 = *(v3 + 400);
    if (v14 >> 62)
    {
      v15 = sub_18A4A7F68();
      if (v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_11:
        if (v15 < 1)
        {
          __break(1u);
          goto LABEL_55;
        }

        v16 = 0;
        v17 = 0.0;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = sub_188E4A488(v16, v14);
          }

          else
          {
            v18 = *(v14 + 8 * v16 + 32);
          }

          ++v16;
          v19 = &v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
          *v19 = v17;
          *(v19 + 8) = 0;
          v20 = *&v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

          v17 = v17 + v20;
        }

        while (v15 != v16);
      }
    }

    *(v3 + 40) = 1;
    sub_188B386EC();
  }

  sub_188FF48D8();
  v1 = *(v3 + 136);
  if (v1)
  {
    [v1 _prepareForTransitionToSearchLayoutState_];
  }

  v11 = *(v3 + 224);
  if (*(v2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable) == 1 && *(v2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView + 8) > -*(v4 + 232))
  {
    swift_beginAccess();
    v14 = *(v3 + 400);
    if (!(v14 >> 62))
    {
      v21 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_25;
      }

      goto LABEL_57;
    }

LABEL_56:
    v21 = sub_18A4A7F68();
    if (v21)
    {
LABEL_25:
      v22 = v21 - 1;
      if (v21 >= 1)
      {

        v23 = 0;
        v24 = 0.0;
        if ((v14 & 0xC000000000000001) == 0)
        {
          goto LABEL_28;
        }

        while (1)
        {
          for (i = sub_188E4A488(v23, v14); ; i = *(v14 + 8 * v23 + 32))
          {
            if (i[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
            {

              v24 = v24 + 0.0;
              if (v22 == v23)
              {
                goto LABEL_49;
              }
            }

            else
            {
              v26 = *&i[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];

              v24 = v24 + v26;
              if (v22 == v23)
              {
                goto LABEL_49;
              }
            }

            ++v23;
            if ((v14 & 0xC000000000000001) != 0)
            {
              break;
            }

LABEL_28:
            ;
          }
        }
      }

      goto LABEL_92;
    }

    goto LABEL_57;
  }

  swift_beginAccess();
  v14 = *(v3 + 400);
  if (!(v14 >> 62))
  {
    v27 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_37;
    }

LABEL_57:
    v24 = 0.0;
    goto LABEL_58;
  }

  v27 = sub_18A4A7F68();
  if (!v27)
  {
    goto LABEL_57;
  }

LABEL_37:
  if (v27 < 1)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v55 = v1;
  v56 = v2;

  v28 = 0;
  v24 = 0.0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v32 = sub_188E4A488(v28, v14);
    }

    else
    {
      v32 = *(v14 + 8 * v28 + 32);
    }

    v33 = 0.0;
    if ((v32[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] & 1) == 0)
    {
      v33 = *&v32[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
    }

    ++v28;
    v29 = *&v32[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
    v30 = v32[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_prefersExpanded];

    if (v30)
    {
      v31 = v29;
    }

    else
    {
      v31 = v33;
    }

    v24 = v24 + v31;
  }

  while (v27 != v28);
  v2 = v56;
LABEL_49:

LABEL_58:
  UIFloorToScale(v24, 6.0);
  v35 = v11 == *(v3 + 224) && v34 == *(v3 + 232);
  if (!v35 || *(v3 + 40) != 1)
  {
    *(v3 + 224) = v11;
    *(v3 + 232) = v34;
    sub_188B38ED0(v11);
    swift_beginAccess();
    v36 = *(v3 + 344);
    v37 = v36;
    if (!v36)
    {
      v37 = *(v3 + 352);
      v38 = v37;
    }

    swift_beginAccess();
    v39 = *(v3 + 232);
    v40 = v36;

    sub_188B3A13C(v41, v37, v39);

    swift_beginAccess();
    v42 = *(v3 + 400);
    if (v42 >> 62)
    {
      v43 = sub_18A4A7F68();
      if (v43)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v43)
      {
LABEL_68:
        if (v43 < 1)
        {
          __break(1u);
LABEL_92:
          __break(1u);
          return;
        }

        v44 = 0;
        v45 = 0.0;
        do
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v46 = sub_188E4A488(v44, v42);
          }

          else
          {
            v46 = *(v42 + 8 * v44 + 32);
          }

          ++v44;
          v47 = &v46[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
          *v47 = v45;
          *(v47 + 8) = 0;
          v48 = *&v46[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

          v45 = v45 + v48;
        }

        while (v43 != v44);
      }
    }

    *(v3 + 40) = 1;
    sub_188B386EC();
  }

  sub_188F63430();
  sub_188FF5DF4();
  if (!v1)
  {
    return;
  }

  v49 = [v1 _searchController];
  if (v49)
  {
    v50 = v49;
    if ([v49 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
    {
      v51 = *(v2 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
      v52 = v51;
      if (v51)
      {
        v53 = v52;
        v51 = [v52 barPosition];
      }

      [v1 _setBarPosition_];
      goto LABEL_86;
    }
  }

  [v1 _setBarPosition_];
  if (![v1 _isIntegratedIntoToolbarOrNavigationBarContent])
  {
    goto LABEL_87;
  }

  v54 = [v1 _viewStackedInNavigationBar];
  if (!v54)
  {
    goto LABEL_87;
  }

  v50 = v54;
  [v54 setAlpha_];
  [v50 setHidden_];
  sub_188CCAC84();
  [v50 setFrame_];
  [v50 layoutIfNeeded];
LABEL_86:

LABEL_87:
}

void sub_188F63430()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion) >= 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar);
    v2 = v1;
    if (!v1 || (v3 = v2, v4 = [v2 _shouldCrossFadeBackgroundVisility], v3, (v4 & 1) == 0))
    {
      if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed) == 1)
      {
        v5 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
        v6 = *(v5 + 304);
        if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed) == 1)
        {
          if (v6 != 1.0 || *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 304) == 1.0)
          {
            return;
          }
        }

        else if (v6 != 1.0)
        {
          return;
        }

        v8 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView;
        v9 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView);
        if (v9)
        {
          v10 = *(v5 + 208);
          if (*(v5 + 96))
          {
            v11 = *(v5 + 224);
            v12 = v10 + *(v5 + 232);
          }

          else
          {
            v12 = 0.0;
            v11 = 0.0;
          }

          [v9 setFrame_];
        }

        v13 = 104;
        if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact))
        {
          v13 = 112;
        }

        v14 = *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + v13);
        v20 = v14;
        if (v14)
        {
          v15 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout);
          v16 = *(v15 + 304);
          v17 = v14;
          [v17 setBackgroundTransitionProgress_];
          [v17 setBackgroundAlpha_];
          [v17 setShadowAlpha_];
          v14 = v20;
        }

        v18 = *(v0 + v8);
        if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground) == 1)
        {
          [v18 setLayout_];
          [*(v0 + v8) transitionBackgroundViews];
          v18 = *(v0 + v8);
        }

        if (v18)
        {
          v19 = v18;
          [v19 layoutIfNeeded];
        }
      }
    }
  }
}

void sub_188F63678()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion) < 1 || (v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar), v2 = v1, v1) && (v3 = v2, v4 = [v2 _shouldCrossFadeBackgroundVisility], v3, (v4 & 1) != 0))
  {

    sub_188FF5164();
  }

  else
  {
    v5 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView;
    v6 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
      v8 = *(v7 + 208);
      if (*(v7 + 96))
      {
        v9 = *(v7 + 224);
        v10 = v8 + *(v7 + 232);
      }

      else
      {
        v10 = 0.0;
        v9 = 0.0;
      }

      [v6 setFrame_];
    }

    v11 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
    v12 = 104;
    if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact))
    {
      v12 = 112;
    }

    v13 = *(v11 + v12);
    v17 = v13;
    if (v13)
    {
      v14 = *(v11 + 304);
      v15 = v13;
      [v15 setBackgroundTransitionProgress_];
      [v15 setBackgroundAlpha_];
      [v15 setShadowAlpha_];
      v13 = v17;
    }

    if (*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground) == 1)
    {
      [*(v0 + v5) setLayout_];
      v16 = *(v0 + v5);
      [v16 transitionBackgroundViews];
    }

    else
    {
    }
  }
}

void sub_188F63878(void *a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  if (a1)
  {
    v17 = a1;
    if (a2)
    {
      sub_188F64D7C();
      v17 = v17;
      v22 = a2;
      v23 = sub_18A4A7C88();

      if (v23)
      {
        return;
      }
    }

    v24 = v17;
    [v24 setAlpha_];
    [v24 setTransitioning_];
    [v24 setFrame_];
  }

  if (a2)
  {
    v25 = a2;
    [v25 setFrame_];
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = *&v11[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
    v28 = v27;
    if (v27)
    {
      v29 = v28;
      v30 = [v28 _canPreemptTransition];

      if (v30)
      {
        v31 = 71;
      }

      else
      {
        v31 = 69;
      }
    }

    else
    {
      v31 = 69;
    }

    v32 = objc_opt_self();
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v11;
    v33[5] = 0xBFD6666666666666;
    v33[6] = sub_188F3660C;
    v33[7] = v26;
    v36[4] = sub_188F64DD0;
    v36[5] = v33;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 1107296256;
    v36[2] = sub_188A4A8F0;
    v36[3] = &block_descriptor_140;
    v34 = _Block_copy(v36);
    v35 = v11;

    [v32 animateKeyframesWithDuration:v31 delay:v34 options:0 animations:0.0 completion:0.0];
    _Block_release(v34);
  }
}

void sub_188F63B10()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout];
  v3 = *(v2 + 136);
  v4 = *&v0[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha];
  v5 = *(v2 + 16);
  *(v2 + 16) = v4;
  v6 = v3;
  if (v4 != v5)
  {
    sub_188B386EC();
  }

  sub_188B38ED0(*(v2 + 224));
  swift_beginAccess();
  v7 = *(v2 + 344);
  v8 = v7;
  if (!v7)
  {
    v8 = *(v2 + 352);
    v9 = v8;
  }

  swift_beginAccess();
  v10 = *(v2 + 232);
  v11 = v7;

  sub_188B3A13C(v12, v8, v10);

  swift_beginAccess();
  v13 = *(v2 + 400);
  v91 = v6;
  if (v13 >> 62)
  {
    v14 = sub_18A4A7F68();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      goto LABEL_59;
    }

    v15 = 0;
    v16 = 0.0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = sub_188E4A488(v15, v13);
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      ++v15;
      v18 = &v17[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
      *v18 = v16;
      *(v18 + 8) = 0;
      v19 = *&v17[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

      v16 = v16 + v19;
    }

    while (v14 != v15);
  }

  *(v2 + 40) = 1;
  sub_188B386EC();

  sub_188F63678();
  v20 = *(v2 + 232);
  sub_188B38ED0(*(v2 + 224));
  v21 = *(v2 + 344);
  v22 = v21;
  if (!v21)
  {
    v22 = *(v2 + 352);
    v23 = v22;
  }

  v24 = *(v2 + 232);
  v25 = v21;

  sub_188B3A13C(v26, v22, v24);

  v27 = *(v2 + 400);
  if (v27 >> 62)
  {
    v28 = sub_18A4A7F68();
    if (!v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_26;
    }
  }

  if (v28 < 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v29 = 0;
  v30 = 0.0;
  do
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v31 = sub_188E4A488(v29, v27);
    }

    else
    {
      v31 = *(v27 + 8 * v29 + 32);
    }

    ++v29;
    v32 = &v31[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin];
    *v32 = v30;
    *(v32 + 8) = 0;
    v33 = *&v31[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight];

    v30 = v30 + v33;
  }

  while (v28 != v29);

LABEL_26:
  *(v2 + 40) = 1;
  sub_188B386EC();

  v34 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  v35 = *&v1[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar];
  v36 = v35;
  if (v35)
  {
    v37 = v36;
    [v36 frame];
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v44 = *&v1[v34];
    v45 = v44;
    if (v44)
    {
      v46 = v45;
      [v45 setFrame_];
    }
  }

  sub_188CCAC84();
  if (!v3)
  {
    goto LABEL_36;
  }

  v51 = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  if (![v91 _isIntegratedIntoToolbarOrNavigationBarContent])
  {
    [v91 setFrame_];
LABEL_36:
    v60 = 0;
    goto LABEL_37;
  }

  v55 = *&v1[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextPresentSearch_transitioningScopeBarContainer];
  if (v55)
  {
    [v55 setFrame_];
  }

  v56 = objc_opt_self();
  v57 = swift_allocObject();
  *(v57 + 16) = v1;
  v96 = sub_188F64CCC;
  v97 = v57;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = sub_188A4A8F0;
  v95 = &block_descriptor_112_0;
  v58 = _Block_copy(&aBlock);
  v59 = v1;

  [v56 animateKeyframesWithDuration:0 delay:v58 options:0 animations:0.0 completion:0.0];
  _Block_release(v58);
  v60 = 1;
LABEL_37:
  v61 = *&v1[v34];
  v62 = v61;
  if (!v61)
  {
    goto LABEL_40;
  }

  v63 = v62;
  v64 = [v62 _stack];

  if (!v64)
  {
LABEL_60:
    __break(1u);
    return;
  }

  v65 = [v64 topItem];

  [v65 _updateSearchBarItemGroup];
LABEL_40:
  if (v3)
  {
    [v91 _animateTransitionToSearchLayoutState_];
  }

  v66 = *(v2 + 96);
  if (v66)
  {
    v67 = *(v2 + 208);
    v68 = -v67;
    v69 = *(v2 + 224);
    v70 = v67 + *(v2 + 232);
    v71 = v66;
    [v71 setFrame_];
    [v71 layoutIfNeeded];
  }

  if (v1[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] != 1)
  {
    goto LABEL_48;
  }

  v72 = *&v1[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout];
  v73 = *(v72 + 80);
  if (!v73)
  {
    sub_188F643C0(v2, *&v1[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout], v60);
LABEL_48:
    v74 = 0;
    goto LABEL_49;
  }

  v74 = v73;
  [v74 frame];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  sub_188F643C0(v2, v72, v60);
  [v74 setFrame_];
  [v74 layoutIfNeeded];
LABEL_49:
  v82 = swift_allocObject();
  *(v82 + 16) = v1;
  v83 = *&v1[v34];
  v84 = v83;
  v85 = v1;
  if (v83)
  {
    v86 = [v84 _canPreemptTransition];

    if (v86)
    {
      v87 = 71;
    }

    else
    {
      v87 = 69;
    }
  }

  else
  {
    v87 = 69;
  }

  v88 = objc_opt_self();
  v89 = swift_allocObject();
  v89[2] = sub_188F64CC0;
  v89[3] = v82;
  v89[4] = v85;
  v89[5] = 0xBFC3333333333333;
  v89[6] = 0;
  v89[7] = 0;
  v96 = sub_188F64CC8;
  v97 = v89;
  aBlock = MEMORY[0x1E69E9820];
  v93 = 1107296256;
  v94 = sub_188A4A8F0;
  v95 = &block_descriptor_42;
  v90 = _Block_copy(&aBlock);
  v85;

  [v88 animateKeyframesWithDuration:v87 delay:v90 options:0 animations:0.0 completion:0.0];
  _Block_release(v90);

  sub_188FF57E8();
}

void sub_188F642C0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_188F64CD4;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_188A4A8F0;
  v6[3] = &block_descriptor_118_0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.7 animations:0.3];
  _Block_release(v4);
}

void sub_188F643C0(uint64_t a1, uint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  swift_beginAccess();
  v5 = *(a2 + 344);
  if (v5 && *(v5 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v6 = v5;
    v7 = sub_188B4C524();
    v9 = v8;
    v11 = v10;
    v13 = v12;

    goto LABEL_33;
  }

  swift_beginAccess();
  v14 = *(a2 + 400);
  if (v14 >> 62)
  {
    goto LABEL_30;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_31:
    v29 = v5;
    v20 = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v33 = v3;
    v16 = v14 & 0xC000000000000001;
    v34 = (v14 + 32);
    v17 = v5;

    if ((v14 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *v34;
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v15 = sub_18A4A7F68();
    if (!v15)
    {
      goto LABEL_31;
    }
  }

  v18 = sub_188E4A488(0, v14);
LABEL_9:
  v3 = &unk_1EA93E000;
  v19 = v18[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v19 > 6)
  {

    v20 = 0;
    LOBYTE(v3) = v33;
LABEL_32:

    v7 = CGRectMake();
    v9 = v30;
    v11 = v31;
    v13 = v32;
LABEL_33:
    v35.origin.x = v7;
    v35.origin.y = v9;
    v35.size.width = v11;
    v35.size.height = v13;
    CGRectGetMinY(v35);
    if (v3)
    {
      sub_188B4ADDC();
      CGRectGetMaxY(v36);
      v37.origin.x = v7;
      v37.origin.y = v9;
      v37.size.width = v11;
      v37.size.height = v13;
      CGRectGetHeight(v37);
    }

    else
    {
      sub_188CCAC84();
      CGRectGetMinY(v38);
      sub_188CCAC84();
      CGRectGetMinY(v39);
    }

    return;
  }

  if (v15 == 1)
  {
    v21 = 0;
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_38:
    v27 = sub_188E4A488(v21, v14);
LABEL_28:
    v28 = v27;

    v20 = v28;
    sub_1891698A4();

    LOBYTE(v3) = v33;
    goto LABEL_32;
  }

  v21 = 0;
  while (1)
  {
    v22 = v21 + 1;
    if (!v16)
    {
      break;
    }

    v23 = sub_188E4A488(v21 + 1, v14);
    v24 = __OFADD__(v22, 1);
    v25 = v21 + 2;
    if (v24)
    {
      goto LABEL_23;
    }

LABEL_18:
    v26 = v23[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v26 < 7)
    {
      ++v21;
      if (v25 != v15)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v22 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v23 = *(v14 + 8 * v21 + 40);
  v24 = __OFADD__(v22, 1);
  v25 = v21 + 2;
  if (!v24)
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  if (v16)
  {
    goto LABEL_38;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_26:
  if (v21 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = v34[v21];
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_188F646C0()
{
  swift_getKeyPath();
  sub_188F6476C();

  swift_getKeyPath();
  sub_188F6476C();

  swift_getKeyPath();
  sub_188F6476C();

  swift_getKeyPath();
  sub_188F6476C();
}

void sub_188F6476C()
{

  swift_getAtKeyPath();

  if (v1)
  {

    v0 = v1;
    swift_getAtKeyPath();
  }
}

id sub_188F64848()
{
  sub_188FF54E8();
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView);
  if (v1)
  {
    [v1 setAlpha_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout);
  result = *(v2 + 136);
  if (result)
  {
    result = [result _completeTransitionToSearchLayoutState_];
  }

  if (!*(v2 + 160))
  {
    result = *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout) + 160);
    if (result)
    {

      return [result removeFromSuperview];
    }
  }

  return result;
}

void sub_188F648F8()
{
  sub_188FF55E4();
  v1 = *(*(v0 + OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout) + 136);
  if (v1)
  {
    v6 = v1;
    [v6 _cancelTransitionToSearchLayoutState_];
    if ([v6 _isIntegratedIntoToolbarOrNavigationBarContent])
    {
      v2 = OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextPresentSearch_transitioningScopeBarContainer;
      v3 = *(v0 + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextPresentSearch_transitioningScopeBarContainer);
      if (v3)
      {
        v4 = v3;
        [v4 setAlpha_];
      }

      v5 = *(v0 + v2);
      *(v0 + v2) = 0;
    }

    else
    {
      v5 = v6;
    }
  }
}

id sub_188F649D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  *&v16[OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextPresentSearch_transitioningScopeBarContainer] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationBaseDuration] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPartAnimationOverlapDuration] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_clippingViews] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLargeTitleLayout] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLargeTitleLayout] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleTransitionType] = 0;
  v17 = OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_navigationBar] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_isPushOperation] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_compact] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_usesBarBackground] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_allowLargeTitles] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_twoPart] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_apiVersion] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundAlpha] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_promptView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_contentView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_backgroundView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_largeTitleView] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_tabBarHostedView] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithLargeTitle] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithLargeTitle] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_beginWithTransparencyAllowed] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_endWithTransparencyAllowed] = 0;
  v18 = &v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_startingContentOffsetForObservedScrollView];
  *v18 = 0;
  v18[1] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_observedScrollViewOffsetIsApplicable] = 0;
  v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_sharesContentViewLayouts] = 0;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transitionOverlayView] = 0;
  *&v16[v17] = a1;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_transition] = a2;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_stack] = a3;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_fromLayout] = a4;
  *&v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_toLayout] = a5;
  v19 = &v16[OBJC_IVAR____TtC5UIKit30NavigationBarTransitionContext_completionHandler];
  *v19 = a6;
  v19[1] = a7;
  v22.receiver = v16;
  v22.super_class = type metadata accessor for NavigationBarTransitionContext();
  v20 = objc_msgSendSuper2(&v22, sel_init);

  return v20;
}

id sub_188F64CD4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit43NavigationBarTransitionContextPresentSearch_transitioningScopeBarContainer);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t objectdestroy_105Tm()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

unint64_t sub_188F64D7C()
{
  result = qword_1EA9304E0;
  if (!qword_1EA9304E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9304E0);
  }

  return result;
}

uint64_t sub_188F64DEC()
{
  v0 = sub_18A4A7288();
  v2 = v1;
  if (v0 == sub_18A4A7288() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_18A4A86C8();

  if ((v5 & 1) == 0)
  {
    v7 = sub_18A4A7288();
    v9 = v8;
    if (v7 != sub_18A4A7288() || v9 != v10)
    {
      v12 = sub_18A4A86C8();

      if (v12)
      {
        goto LABEL_6;
      }

      v13 = sub_18A4A7288();
      v15 = v14;
      if (v13 != sub_18A4A7288() || v15 != v16)
      {
        v18 = sub_18A4A86C8();

        if (v18)
        {
          goto LABEL_6;
        }

        v19 = sub_18A4A7288();
        v21 = v20;
        if (v19 != sub_18A4A7288() || v21 != v22)
        {
          v23 = sub_18A4A86C8();

          if (v23)
          {
            goto LABEL_6;
          }

          v24 = sub_18A4A7288();
          v26 = v25;
          if (v24 != sub_18A4A7288() || v26 != v27)
          {
            v28 = sub_18A4A86C8();

            if (v28)
            {
              goto LABEL_6;
            }

            v29 = sub_18A4A7288();
            v31 = v30;
            if (v29 != sub_18A4A7288() || v31 != v32)
            {
              v33 = sub_18A4A86C8();

              if (v33)
              {
                goto LABEL_6;
              }

              v34 = sub_18A4A7288();
              v36 = v35;
              if (v34 != sub_18A4A7288() || v36 != v37)
              {
                v6 = sub_18A4A86C8();
                goto LABEL_15;
              }
            }
          }
        }
      }
    }

LABEL_14:
    v6 = 1;
LABEL_15:

    return v6 & 1;
  }

LABEL_6:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_188F650E0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E58);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_18A4A35E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x1E69DB9F8];
  v26 = sub_188C4BD90(&qword_1EA937E60, MEMORY[0x1E69DB9F8]);
  sub_18A4A7E38();
  v18 = v17;
  v19 = v29;
  sub_188C4BD90(&qword_1EA937E68, v18);
  v27 = a2;
  v20 = sub_18A4A7248();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_18A4A7E88();
  }

  v23 = v30;
  sub_188A3F704(v7, v30, &qword_1EA937E58);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t sub_188F653E4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E50);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = sub_18A4A39B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x1E69DBB00];
  v26 = sub_188C4BD90(&qword_1EA92FA98, MEMORY[0x1E69DBB00]);
  sub_18A4A7E38();
  v18 = v17;
  v19 = v29;
  sub_188C4BD90(&qword_1EA92FAA0, v18);
  v27 = a2;
  v20 = sub_18A4A7248();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_18A4A7E88();
  }

  v23 = v30;
  sub_188A3F704(v7, v30, &qword_1EA937E50);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t _Glass.backdropGroup(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_188AD8C44(v3, a3, type metadata accessor for _Glass);

  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  return result;
}

uint64_t sub_188F65750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  sub_188A3F29C(a1, v24 - v8, &qword_1EA935D70);
  v10 = sub_18A4A2DB8();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v24[2] = v24;
    v14 = *(v11 + 64);
    v15 = MEMORY[0x1EEE9AC00](v12);
    v25 = a2;
    v16 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = (*(v11 + 32))(v16, v9, v10, v15);
    v24[1] = v24;
    v18 = MEMORY[0x1EEE9AC00](v17);
    v26 = v3;
    v19 = *(v11 + 16);
    v19(v16, v16, v10, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E30);
    v21 = objc_allocWithZone(v20);
    (v19)(v21 + *((*MEMORY[0x1E69E7D40] & *v21) + 0x60), v16, v10);
    v27.receiver = v21;
    v27.super_class = v20;
    a2 = v25;
    v13 = objc_msgSendSuper2(&v27, sel_init);
    v22 = *(v11 + 8);
    v22(v16, v10);
    v22(v16, v10);
  }

  v28 = v13;
  (*(a3 + 16))(&v28, &type metadata for _ResolvedProviderTraitDefinition, &type metadata for _ResolvedProviderTraitDefinition, &off_1EE439550, a2, a3);
  return sub_188A3F5FC(a1, &qword_1EA935D70);
}

uint64_t _Glass.flexible(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  result = type metadata accessor for _Glass(0);
  *(a2 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_188F65A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x18CFDDF80]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (v10)
      {
        return 1;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _GlassGroup.groupBackdrops(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  *a2 = *v2;
  *(a2 + 1) = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  return result;
}

void _GlassGroup.init()(uint64_t a1@<X8>)
{
  *a1 = 256;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_188F65E54(uint64_t a1)
{
  sub_188A3F29C(a1, v16, &qword_1EA934050);
  if (!v17)
  {
    v4 = &qword_1EA934050;
LABEL_12:
    sub_188A3F5FC(v16, v4);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  swift_getObjectType();
  sub_18901EB8C(v16);
  swift_unknownObjectRelease();
  if (!v17)
  {
    v4 = &unk_1EA93C9A0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = OBJC_IVAR____UIViewGlassGroup__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v1 + v2, v16);
  swift_dynamicCast();
  result = 0;
  if (v11 == v6 && ((v12 ^ v7) & 1) == 0)
  {
    if (v14)
    {
      if (v9)
      {
        return v15 ^ v10 ^ 1u;
      }
    }

    else
    {
      if (v13 == v8)
      {
        v5 = v9;
      }

      else
      {
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        return v15 ^ v10 ^ 1u;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _Glass._GlassVariant.subvariant(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18A4A2DD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;

  sub_18A4A2DE8();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_188A3F5FC(v10, &unk_1EA937DB0);
    return sub_188AD8C44(v2, a1, type metadata accessor for _Glass._GlassVariant);
  }

  else
  {
    (*(v5 + 32))(&v14 - v7, v10, v4);
    v12 = sub_188AD8C44(v2, a1, type metadata accessor for _Glass._GlassVariant);
    v13 = MEMORY[0x1EEE9AC00](v12);
    (*(v5 + 16))(&v14 - v7, &v14 - v7, v4, v13);
    sub_18A4A2E28();
    return (*(v5 + 8))(&v14 - v7, v4);
  }
}

uint64_t _Glass._GlassVariant.frost(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  sub_188AD8C44(v3, a2, type metadata accessor for _Glass._GlassVariant);
  *(a2 + *(type metadata accessor for _Glass._GlassVariant(0) + 20)) = v5;
  v6 = sub_18A4A2F58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A3028();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5 == 2)
  {
    sub_18A4A2FF8();
  }

  else if (v5 == 1)
  {
    sub_18A4A3008();
  }

  else
  {
    sub_18A4A3018();
  }

  sub_18A4A2EE8();
  (*(v11 + 8))(v13, v10);
  return (*(v7 + 40))(a2, v9, v6);
}

uint64_t _Glass._GlassVariant.identity()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_188AD8C44(v2, a1, type metadata accessor for _Glass._GlassVariant);
  v4 = sub_18A4A2F58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2F48();
  return (*(v5 + 40))(a1, v7, v4);
}

uint64_t _Glass._GlassVariant.interactionState(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass._GlassVariant);
  v4 = sub_18A4A2D68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  (*(v5 + 104))(&v13 - v10, **(&off_1E70F1908 + v3), v4, v9);
  (*(v5 + 32))(v7, v11, v4);
  return sub_18A4A2E68();
}

void _Glass._GlassVariant.controlTint(color:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass._GlassVariant);
  v5 = *(type metadata accessor for _Glass._GlassVariant(0) + 28);
  v6 = *(a2 + v5);
  v7 = a1;

  *(a2 + v5) = a1;
}

uint64_t sub_188F66B60@<X0>(uint64_t (*a1)(double)@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass._GlassVariant);
  v4 = sub_18A4A3118();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = a1(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_18A4A2F08();
  sub_188B647BC(v15 - v7, v15 - v7);
  v11 = *(v5 + 8);
  v11(v15 - v7, v4);
  v12 = (v11)(v15 - v7, v4);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v5 + 16))(v15 - v7, v15 - v7, v4, v13);
  sub_18A4A2F18();
  return (v11)(v15 - v7, v4);
}

uint64_t sub_188F66D5C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, double)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = sub_18A4A4428();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  result = sub_188AD8C44(v5, a3, type metadata accessor for _Glass._GlassVariant);
  if (a1 == 1)
  {
    v19 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (a1 != 2)
    {
      return result;
    }

    v19 = MEMORY[0x1E697DBA8];
  }

  (*(v9 + 104))(v11, *v19, v8);
  v20 = *(v9 + 32);
  v20(v14, v11, v8);
  v20(v17, v14, v8);
  v21 = sub_18A4A2F58();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v26 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v17, v23);
  (*(v9 + 8))(v17, v8);
  return (*(v22 + 40))(a3, v25, v21);
}

uint64_t sub_188F66FDC@<X0>(void (*a1)(float)@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = v3;
  sub_188AD8C44(v5, a2, type metadata accessor for _Glass._GlassVariant);
  v8 = sub_18A4A2F58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(a3);
  return (*(v9 + 40))(a2, v11, v8);
}

uint64_t _Glass._GlassVariant.fixedBackgroundColor(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_188AD8C44(v3, a2, type metadata accessor for _Glass._GlassVariant);
  v6 = sub_18A4A2F58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  (*(v7 + 16))(&v16 - v12, a2, v6, v11);
  if (a1)
  {
    type metadata accessor for UICorePlatformColorDefinition();
    v14 = a1;
    sub_18A4A5E38();
  }

  sub_18A4A2E98();

  (*(v7 + 8))(v13, v6);
  return (*(v7 + 40))(a2, v9, v6);
}

uint64_t sub_188F67290@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X8>)
{
  sub_188AD8C44(v3, a3, type metadata accessor for _Glass._GlassVariant);
  v7 = sub_18A4A2F58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v9);
  return (*(v8 + 40))(a3, v11, v7);
}

void _Glass._GlassVariant.hash(into:)()
{
  sub_18A4A2F58();
  sub_188B64AD8(&qword_1EA937828, MEMORY[0x1EEE869E0]);
  sub_18A4A71A8();
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x18CFE37E0](*(v0 + v1[5]));
  MEMORY[0x18CFE37E0](*(v0 + v1[6]));
  v2 = *(v0 + v1[7]);
  if (v2)
  {
    sub_18A4A88A8();
    v3 = v2;
    sub_18A4A7C98();
  }

  else
  {
    sub_18A4A88A8();
  }
}

uint64_t _Glass._GlassVariant.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A2F58();
  sub_188B64AD8(&qword_1EA937828, MEMORY[0x1EEE869E0]);
  sub_18A4A71A8();
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x18CFE37E0](*(v0 + v1[5]));
  MEMORY[0x18CFE37E0](*(v0 + v1[6]));
  v2 = *(v0 + v1[7]);
  sub_18A4A88A8();
  if (v2)
  {
    v3 = v2;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

uint64_t sub_188F67578(int *a1)
{
  sub_18A4A8888();
  sub_18A4A2F58();
  sub_188B64AD8(&qword_1EA937828, MEMORY[0x1EEE869E0]);
  sub_18A4A71A8();
  MEMORY[0x18CFE37E0](*(v1 + a1[5]));
  MEMORY[0x18CFE37E0](*(v1 + a1[6]));
  v3 = *(v1 + a1[7]);
  sub_18A4A88A8();
  if (v3)
  {
    v4 = v3;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

void sub_188F67654(uint64_t a1, int *a2)
{
  sub_18A4A2F58();
  sub_188B64AD8(&qword_1EA937828, MEMORY[0x1EEE869E0]);
  sub_18A4A71A8();
  MEMORY[0x18CFE37E0](*(v2 + a2[5]));
  MEMORY[0x18CFE37E0](*(v2 + a2[6]));
  v4 = *(v2 + a2[7]);
  if (v4)
  {
    sub_18A4A88A8();
    v5 = v4;
    sub_18A4A7C98();
  }

  else
  {
    sub_18A4A88A8();
  }
}

uint64_t sub_188F67750(uint64_t a1, int *a2)
{
  sub_18A4A8888();
  sub_18A4A2F58();
  sub_188B64AD8(&qword_1EA937828, MEMORY[0x1EEE869E0]);
  sub_18A4A71A8();
  MEMORY[0x18CFE37E0](*(v2 + a2[5]));
  MEMORY[0x18CFE37E0](*(v2 + a2[6]));
  v4 = *(v2 + a2[7]);
  sub_18A4A88A8();
  if (v4)
  {
    v5 = v4;
    sub_18A4A7C98();
  }

  return sub_18A4A88E8();
}

void _Glass.tint(_:)(void *a1@<X0>, void **a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  v5 = *a2;
  v6 = a1;

  *a2 = a1;
}

{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  v5 = *a2;
  v6 = a1;

  *a2 = a1;
}

uint64_t _Glass.subvariant(_:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_188AD8C44(v1, a1, type metadata accessor for _Glass);
  v6 = *(type metadata accessor for _Glass(0) + 24);
  _Glass._GlassVariant.subvariant(_:)(v5);
  return sub_188F6D250(v5, a1 + v6);
}

uint64_t _Glass.frost(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for _Glass._GlassVariant(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_188AD8C44(v3, a2, type metadata accessor for _Glass);
  v11 = *(type metadata accessor for _Glass(0) + 24);
  sub_188AD8C44(a2 + v11, v9, type metadata accessor for _Glass._GlassVariant);
  v9[*(v7 + 28)] = v10;
  v12 = sub_18A4A2F58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18A4A3028();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 == 2)
  {
    sub_18A4A2FF8();
  }

  else if (v10 == 1)
  {
    sub_18A4A3008();
  }

  else
  {
    sub_18A4A3018();
  }

  sub_18A4A2EE8();
  (*(v17 + 8))(v19, v16);
  (*(v13 + 40))(v9, v15, v12);
  return sub_188F6D250(v9, a2 + v11);
}

uint64_t _Glass.allowsGrouping(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  result = type metadata accessor for _Glass(0);
  *(a2 + *(result + 28)) = a1;
  return result;
}

uint64_t _Glass.flexible()@<X0>(uint64_t a1@<X8>)
{
  sub_188AD8C44(v1, a1, type metadata accessor for _Glass);
  result = type metadata accessor for _Glass(0);
  *(a1 + *(result + 52)) = 1;
  return result;
}

uint64_t _Glass.needsForeground(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  result = type metadata accessor for _Glass(0);
  *(a2 + *(result + 36)) = a1;
  return result;
}

uint64_t _Glass.id(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_188AD8C44(v2, a2, type metadata accessor for _Glass);
  result = type metadata accessor for _Glass(0);
  *(a2 + *(result + 40)) = a1;
  return result;
}

uint64_t _Glass.Variant.hashValue.getter()
{
  v1 = *v0;
  sub_18A4A8888();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t _Glass.variant.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for _Glass(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t _Glass.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED48E920 != -1)
  {
    v8 = v3;
    swift_once();
    v3 = v8;
  }

  v6 = __swift_project_value_buffer(v3, qword_1ED48E930);
  sub_188AD8C44(v6, v5, type metadata accessor for _Glass._GlassVariant);
  return _Glass.init(_:smoothness:)(v5, a1, 0.0);
}

uint64_t _Glass.init(variant:smoothness:)@<X0>(_BYTE *a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  if (*a1)
  {
    if (qword_1ED48C6B8 != -1)
    {
      v19 = v13;
      swift_once();
      v13 = v19;
    }

    v16 = qword_1ED48C538;
  }

  else
  {
    if (qword_1ED48E920 != -1)
    {
      v20 = v13;
      swift_once();
      v13 = v20;
    }

    v16 = qword_1ED48E930;
  }

  v17 = __swift_project_value_buffer(v13, v16);
  sub_188AD8C44(v17, v11, type metadata accessor for _Glass._GlassVariant);
  sub_188B0D6AC(v11, v15, type metadata accessor for _Glass._GlassVariant);
  sub_188AD8C44(v15, v8, type metadata accessor for _Glass._GlassVariant);
  _Glass.init(_:smoothness:)(v8, a2, a3);
  return sub_188B0CD70(v15, type metadata accessor for _Glass._GlassVariant);
}

uint64_t sub_188F6812C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  LODWORD(v71) = a2;
  v75 = a3;
  v66 = sub_18A4A5318();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A2F58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = &v63 - v13;
  v15 = *(type metadata accessor for _Glass(0) + 24);
  v67 = v5;
  v16 = v5 + v15;
  v72 = *(v11 + 16);
  v73 = v11 + 16;
  v72(&v63 - v13, v5 + v15, v10);
  v76 = a1;
  sub_188EB3AA8(v79);
  v17 = v79[0];
  v18 = type metadata accessor for _Glass._GlassVariant(0);
  v19 = v18;
  v20 = v16[*(v18 + 20)];
  v74 = v12;
  if (v17 != v20)
  {
    v21 = v11;
    v78 = &v63;
    MEMORY[0x1EEE9AC00](v18);
    v22 = &v63 - v13;
    v23 = sub_18A4A3028();
    v77 = &v63;
    v24 = *(v23 - 8);
    MEMORY[0x1EEE9AC00](v23);
    v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v17 == 2)
    {
      sub_18A4A2FF8();
    }

    else if (v17 == 1)
    {
      sub_18A4A3008();
    }

    else
    {
      sub_18A4A3018();
    }

    sub_18A4A2EE8();
    (*(v24 + 8))(v26, v23);
    (*(v21 + 8))(v14, v10);
    v27 = v22;
    v11 = v21;
    (*(v21 + 32))(v14, v27, v10);
    v12 = v74;
  }

  v28 = sub_18A4A2FE8();
  v70 = &v63;
  v78 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v77 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.n128_f64[0] = MEMORY[0x1EEE9AC00](v31);
  v34 = (&v63 - v32);
  v35 = v16[*(v19 + 24)];
  v68 = v19;
  v69 = v16;
  if (v35 > 1)
  {
    v37 = v35 == 2;
    v36 = MEMORY[0x1E6999D30];
    if (!v37)
    {
      v36 = MEMORY[0x1E6999D48];
    }
  }

  else if (v35)
  {
    v36 = MEMORY[0x1E6999D50];
  }

  else
  {
    *v34 = a4;
    v34[1] = a5;
    v36 = MEMORY[0x1E6999D38];
  }

  v38 = v78;
  (*(v29 + 104))(&v63 - v32, *v36, v78, v33);
  v39 = v77;
  v40 = (*(v29 + 32))(v77, v34, v38);
  v41 = MEMORY[0x1EEE9AC00](v40);
  (*(v29 + 16))(&v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v38, v41);
  sub_18A4A2EC8();
  if (*v67)
  {
    v42 = [*v67 resolvedColorWithTraitCollection_];
    v43 = [v42 CGColor];

    if (v43)
    {
      v67 = &v63;
      MEMORY[0x1EEE9AC00](v44);
      v45 = v43;
      sub_18A4A5E68();
      v46 = v64;
      sub_18A4A5308();
      sub_18A4A5D98();

      (*(v65 + 8))(v46, v66);
      sub_18A4A2ED8();

      (*(v11 + 8))(v14, v10);
      (*(v11 + 32))(v14, &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    }
  }

  v47 = *&v69[*(v68 + 28)];
  if (v47)
  {
    v47 = [v47 resolvedColorWithTraitCollection_];
    if (v47)
    {
      v48 = MEMORY[0x1EEE9AC00](v47);
      v50 = v49;
      v51 = [v49 CGColor];
      sub_18A4A5E68();
      sub_18A4A2E48();

      (*(v11 + 8))(v14, v10);
      v47 = (*(v11 + 32))(v14, &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    }
  }

  if (v71)
  {
    v52 = sub_18A4A3118();
    v71 = &v63;
    v53 = *(v52 - 8);
    MEMORY[0x1EEE9AC00](v52);
    v55 = &v63 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = v11;
    MEMORY[0x1EEE9AC00](v56);
    v58 = &v63 - v57;
    sub_18A4A30F8();
    v59 = sub_18A4A2EF8();
    sub_188B647BC(v55, v58);
    v60 = *(v53 + 8);
    v60(v58, v52);
    v60(v55, v52);
    v12 = v74;
    v47 = v59(v79, 0);
    v11 = v76;
  }

  v61 = MEMORY[0x1EEE9AC00](v47);
  (v72)(&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v10, v61);
  sub_18A4A2F78();
  (*(v29 + 8))(v77, v78);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_188F689A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.userInterfaceStyle.setter(a2, v3, v4);
}

uint64_t sub_188F689F0(uint64_t a1, char a2)
{
  v3 = v2;
  v41 = a1;
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A3118();
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v38 - v10;
  v12 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  v45 = v12;
  sub_188A53994(v3 + v12, &v47);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v44 = v5;
  sub_18A4A2F08();
  v42 = v7;
  v13 = sub_188B0CD70(v7, type metadata accessor for _Glass);
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v13);
    sub_188B647BC(v38 - v10, v41);
    v14 = v8;
    v15 = (*(v46 + 8))(v38 - v10, v8);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E48);
    v38[3] = v38;
    MEMORY[0x1EEE9AC00](v16 - 8);
    v18 = v38 - v17;
    v38[2] = v38;
    MEMORY[0x1EEE9AC00](v19);
    v20 = v38 - v10;
    v38[1] = v38;
    v22 = MEMORY[0x1EEE9AC00](v21);
    v14 = v8;
    v39 = *(v46 + 16);
    v39(v38 - v10, v38 - v10, v8, v22);
    sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
    sub_18A4A7E38();
    if (sub_18A4A7E68())
    {
      (*(v46 + 8))(v20, v8);
      v23 = 1;
    }

    else
    {
      sub_18A4A7E78();
      (*(v46 + 32))(v18, v20, v8);
      v23 = 0;
    }

    (*(v46 + 56))(v18, v23, 1, v8);
    v15 = sub_188A3F5FC(v18, &qword_1EA937E48);
    v11 = v38 - v10;
  }

  v40 = v11;
  v41 = v38;
  v24 = MEMORY[0x1EEE9AC00](v15);
  v25 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v26;
  v26(v25, v11, v14, v24);
  v28 = v14;
  v29 = v45;
  sub_188A53994(v3 + v45, &v47);
  v30 = v42;
  v31 = v44;
  v32 = swift_dynamicCast();
  v39 = v38;
  v43 = v3;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v27(v25, v25, v28, v33);
  sub_18A4A2F18();
  v34 = *(v46 + 8);
  v34(v25, v28);
  v48 = v31;
  v49 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v47);
  sub_188B0D6AC(v30, boxed_opaque_existential_0, type metadata accessor for _Glass);
  v34(v40, v28);
  v36 = v43;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v36 + v29);
  sub_188A5EBAC(&v47, v36 + v29);
  return swift_endAccess();
}

id sub_188F68F58(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for _Glass._GlassVariant(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_188AFE79C(a1, v8);
  if (a2 >= 4)
  {
    LOBYTE(a2) = 0;
  }

  sub_188B0D6AC(v8, v11, type metadata accessor for _Glass._GlassVariant);
  v11[*(v6 + 32)] = a2;
  v17 = type metadata accessor for _Glass(0);
  v18 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  _Glass.init(_:smoothness:)(v11, boxed_opaque_existential_0, 0.0);
  sub_188A5EBAC(&v16, v2 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v15.receiver = v2;
  v15.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_188F690C0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  sub_188AFE79C(a1, v8);
  sub_188AD8C44(v8, v11, type metadata accessor for _Glass._GlassVariant);
  v15 = sub_18A4A2D68();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v28 - v20;
  if ((a3 - 1) > 3)
  {
    v23 = MEMORY[0x1E6999C48];
  }

  else
  {
    v23 = qword_1E70F1930[a3 - 1];
  }

  (*(v16 + 104))(&v28 - v20, *v23, v15, v21);
  (*(v16 + 32))(v18, v22, v15);
  sub_18A4A2E68();
  sub_188B0CD70(v8, type metadata accessor for _Glass._GlassVariant);
  if (a2 >= 4)
  {
    v24 = 0;
  }

  else
  {
    v24 = a2;
  }

  sub_188B0D6AC(v11, v14, type metadata accessor for _Glass._GlassVariant);
  v14[*(v6 + 24)] = v24;
  v31 = type metadata accessor for _Glass(0);
  v32 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v30);
  _Glass.init(_:smoothness:)(v14, boxed_opaque_existential_0, 0.0);
  v26 = v28;
  sub_188A5EBAC(&v30, v28 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v29.receiver = v26;
  v29.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v29, sel_init);
}

id sub_188F69494(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  sub_188AFE79C(a1, v10);
  sub_188AD8C44(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v14 = sub_18A4A2D68();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - v19;
  if ((a2 - 1) > 3)
  {
    v22 = MEMORY[0x1E6999C48];
  }

  else
  {
    v22 = qword_1E70F1930[a2 - 1];
  }

  (*(v15 + 104))(&v25 - v19, *v22, v14, v20);
  (*(v15 + 32))(v17, v21, v14);
  sub_18A4A2E68();
  sub_188B0CD70(v10, type metadata accessor for _Glass._GlassVariant);
  v28 = type metadata accessor for _Glass(0);
  v29 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v27);
  _Glass.init(_:smoothness:)(v13, boxed_opaque_existential_0, a3);
  sub_188A5EBAC(&v27, v4 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v26.receiver = v4;
  v26.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v26, sel_init);
}

id sub_188F6971C(uint64_t a1, unint64_t a2, double a3)
{
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_188AFE79C(a1, v10);
  if (a2 >= 4)
  {
    LOBYTE(a2) = 0;
  }

  sub_188B0D6AC(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v13[*(v8 + 32)] = a2;
  v19 = type metadata accessor for _Glass(0);
  v20 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
  _Glass.init(_:smoothness:)(v13, boxed_opaque_existential_0, a3);
  sub_188A5EBAC(&v18, v3 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v17.receiver = v3;
  v17.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_188F69890(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  sub_188AFE79C(a1, v10);
  sub_188AD8C44(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v17 = sub_18A4A2D68();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - v22;
  if ((a3 - 1) > 3)
  {
    v25 = MEMORY[0x1E6999C48];
  }

  else
  {
    v25 = qword_1E70F1930[a3 - 1];
  }

  (*(v18 + 104))(&v30 - v22, *v25, v17, v23);
  (*(v18 + 32))(v20, v24, v17);
  sub_18A4A2E68();
  sub_188B0CD70(v10, type metadata accessor for _Glass._GlassVariant);
  if (a2 >= 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = a2;
  }

  sub_188B0D6AC(v13, v16, type metadata accessor for _Glass._GlassVariant);
  v16[*(v8 + 24)] = v26;
  v33 = type metadata accessor for _Glass(0);
  v34 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  _Glass.init(_:smoothness:)(v16, boxed_opaque_existential_0, a4);
  v28 = v30;
  sub_188A5EBAC(&v32, v30 + OBJC_IVAR____UIViewGlass__underlyingMaterial);
  v31.receiver = v28;
  v31.super_class = _UIViewGlass;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_188F69B84()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v0 + v10, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(v6, v9, type metadata accessor for _Glass);
  v11 = *(v4 + 24);
  sub_188AD8C44(&v9[v11], v3, type metadata accessor for _Glass._GlassVariant);
  v12 = sub_18A4A2F58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A2F48();
  (*(v13 + 40))(v3, v15, v12);
  sub_188F6D250(v3, &v9[v11]);
  sub_188B0CD70(v6, type metadata accessor for _Glass);
  v16 = [objc_allocWithZone(_UIViewGlass) init];
  v23 = v4;
  v24 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  sub_188B0D6AC(v9, boxed_opaque_existential_0, type metadata accessor for _Glass);
  v18 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  v19 = v16;
  __swift_destroy_boxed_opaque_existential_0Tm(v16 + v18);
  sub_188A5EBAC(&v22, v16 + v18);
  swift_endAccess();

  return v19;
}

uint64_t sub_188F69FCC()
{
  v1 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v0 + v7, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(&v6[*(v4 + 24)], v3, type metadata accessor for _Glass._GlassVariant);
  sub_188B0CD70(v6, type metadata accessor for _Glass);
  v8 = sub_18A4A2FE8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18A4A2EB8();
  sub_188B0CD70(v3, type metadata accessor for _Glass._GlassVariant);
  v12 = (*(v9 + 88))(v11, v8);
  if (!MEMORY[0x1E6999D38] || v12 != *MEMORY[0x1E6999D38])
  {
    if (MEMORY[0x1E6999D50] && v12 == *MEMORY[0x1E6999D50])
    {
      return 1;
    }

    if (MEMORY[0x1E6999D30] && v12 == *MEMORY[0x1E6999D30])
    {
      return 2;
    }

    if (MEMORY[0x1E6999D48] && v12 == *MEMORY[0x1E6999D48])
    {
      return 3;
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_188F6A9A4(void *a1)
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v1 + v6, &v14);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v8 = &v5[*(v3 + 24)];
  v9 = *(type metadata accessor for _Glass._GlassVariant(0) + 28);
  v10 = *&v8[v9];
  *&v8[v9] = a1;

  v15 = v3;
  v16 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14);
  sub_188B0D6AC(v5, boxed_opaque_existential_0, type metadata accessor for _Glass);

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + v6);
  sub_188A5EBAC(&v14, v1 + v6);
  return swift_endAccess();
}

void sub_188F6AB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v7 = sub_18A4A2DD8();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937DB0);
    MEMORY[0x1EEE9AC00](v11 - 8);
    v13 = v26 - v12;
    *&v33 = a1;
    *(&v33 + 1) = a2;
    sub_18A4A7438();
    sub_18A4A2DE8();
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      sub_188A3F5FC(v13, &unk_1EA937DB0);
    }

    else
    {
      v14 = *(v8 + 32);
      v27 = v10;
      v14(v10, v13, v7);
      v15 = sub_18A4A2F58();
      v29 = v7;
      v30 = v26;
      v16 = *(v15 - 8);
      v17 = *(v16 + 64);
      MEMORY[0x1EEE9AC00](v15);
      v28 = v8;
      v31 = v26;
      v18 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
      v19 = v32;
      swift_beginAccess();
      sub_188A53994(v19 + v18, &v33);
      v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
      v20 = swift_dynamicCast();
      v26[0] = v26;
      v21 = MEMORY[0x1EEE9AC00](v20);
      v22 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v22, &v6[v23], v15, v21);
      sub_188B0CD70(v6, type metadata accessor for _Glass);
      v24 = v27;
      sub_18A4A2E38();
      (*(v16 + 8))(v22, v15);
      sub_188A53994(v19 + v18, &v33);
      swift_dynamicCast();
      (*(v16 + 40))(&v6[*(v4 + 24)], v22, v15);
      v34 = v4;
      v35 = &protocol witness table for _Glass;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
      sub_188B0D6AC(v6, boxed_opaque_existential_0, type metadata accessor for _Glass);
      (*(v28 + 8))(v24, v29);
      swift_beginAccess();
      __swift_destroy_boxed_opaque_existential_0Tm(v19 + v18);
      sub_188A5EBAC(&v33, v19 + v18);
      swift_endAccess();
    }
  }
}

uint64_t sub_188F6B1F8(void *a1, uint64_t a2, char a3, void (*a4)(void))
{
  v7 = sub_18A4A3118();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  a4();
  sub_188F689F0(v10, a3);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_188F6B66C(void (*a1)(double))
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v1 + v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  v7 = sub_18A4A3118();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_18A4A2F08();
  v11 = sub_188B0CD70(v5, type metadata accessor for _Glass);
  v12 = MEMORY[0x1EEE9AC00](v11);
  a1(v12);
  sub_188B64AD8(&qword_1ED48D448, MEMORY[0x1EEE86AF8]);
  LOBYTE(a1) = sub_18A4A7E28();
  v13 = *(v8 + 8);
  v13(&v15[-v10], v7);
  v13(&v15[-v10], v7);
  return a1 & 1;
}

uint64_t sub_188F6B8D4(int a1)
{
  v15[1] = a1;
  v2 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A2F58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v1 + v8, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  v9 = swift_dynamicCast();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, &v4[v12], v5, v10);
  sub_188B0CD70(v4, type metadata accessor for _Glass);
  sub_18A4A2E58();
  (*(v6 + 8))(v11, v5);
  sub_188A53994(v1 + v8, &v16);
  swift_dynamicCast();
  (*(v6 + 40))(&v4[*(v2 + 24)], v11, v5);
  v17 = v2;
  v18 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
  sub_188B0D6AC(v4, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + v8);
  sub_188A5EBAC(&v16, v1 + v8);
  return swift_endAccess();
}

uint64_t sub_188F6C0C8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v2 + v13, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(&v6[*(v4 + 24)], v9, type metadata accessor for _Glass._GlassVariant);
  sub_188B0CD70(v6, type metadata accessor for _Glass);
  _Glass._GlassVariant.adaptive(style:)(a1, v12);
  sub_188B0CD70(v9, type metadata accessor for _Glass._GlassVariant);
  sub_188A53994(v2 + v13, &v17);
  swift_dynamicCast();
  sub_188F6D250(v12, &v6[*(v4 + 24)]);
  v18 = v4;
  v19 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v17);
  sub_188B0D6AC(v6, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + v13);
  sub_188A5EBAC(&v17, v2 + v13);
  return swift_endAccess();
}

uint64_t sub_188F6C3D0(void (*a1)(float), double a2)
{
  v21 = a1;
  v3 = v2;
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v3 + v14, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(&v7[*(v5 + 24)], v10, type metadata accessor for _Glass._GlassVariant);
  sub_188B0CD70(v7, type metadata accessor for _Glass);
  *&a2 = a2;
  sub_188AD8C44(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v15 = sub_18A4A2F58();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(*&a2);
  sub_188B0CD70(v10, type metadata accessor for _Glass._GlassVariant);
  (*(v16 + 40))(v13, v18, v15);
  sub_188A53994(v3 + v14, &v22);
  swift_dynamicCast();
  sub_188F6D250(v13, &v7[*(v5 + 24)]);
  v23 = v5;
  v24 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v22);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + v14);
  sub_188A5EBAC(&v22, v3 + v14);
  return swift_endAccess();
}

uint64_t sub_188F6C748(void *a1)
{
  v3 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  v32 = v1;
  v15 = v1 + v14;
  v16 = a1;
  sub_188A53994(v15, &v33);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(&v7[*(v3 + 24)], v10, type metadata accessor for _Glass._GlassVariant);
  sub_188B0CD70(v7, type metadata accessor for _Glass);
  sub_188AD8C44(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v17 = sub_18A4A2F58();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v30 - v23;
  (*(v18 + 16))(&v30 - v23, v13, v17, v22);
  if (v16)
  {
    type metadata accessor for UICorePlatformColorDefinition();
    v25 = v16;
    sub_18A4A5E38();
  }

  sub_18A4A2E98();

  (*(v18 + 8))(v24, v17);
  (*(v18 + 40))(v13, v20, v17);
  sub_188B0CD70(v10, type metadata accessor for _Glass._GlassVariant);
  v26 = v32;
  sub_188A53994(v32 + v14, &v33);
  v27 = v31;
  swift_dynamicCast();
  sub_188F6D250(v13, v27 + *(v3 + 24));
  v34 = v3;
  v35 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  sub_188B0D6AC(v27, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v26 + v14);
  sub_188A5EBAC(&v33, v26 + v14);
  return swift_endAccess();
}

uint64_t sub_188F6CBC8(uint64_t a1, void (*a2)(uint64_t, double))
{
  v23 = a2;
  v3 = v2;
  v5 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = OBJC_IVAR____UIViewGlass__underlyingMaterial;
  swift_beginAccess();
  sub_188A53994(v3 + v14, &v24);
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA933ED0);
  swift_dynamicCast();
  sub_188AD8C44(&v7[*(v5 + 24)], v10, type metadata accessor for _Glass._GlassVariant);
  sub_188B0CD70(v7, type metadata accessor for _Glass);
  sub_188AD8C44(v10, v13, type metadata accessor for _Glass._GlassVariant);
  v15 = sub_18A4A2F58();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23(a1, v17);
  sub_188B0CD70(v10, type metadata accessor for _Glass._GlassVariant);
  (*(v16 + 40))(v13, v19, v15);
  sub_188A53994(v3 + v14, &v24);
  swift_dynamicCast();
  sub_188F6D250(v13, &v7[*(v5 + 24)]);
  v25 = v5;
  v26 = &protocol witness table for _Glass;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  sub_188B0D6AC(v7, boxed_opaque_existential_0, type metadata accessor for _Glass);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v3 + v14);
  sub_188A5EBAC(&v24, v3 + v14);
  return swift_endAccess();
}

uint64_t sub_188F6CF30(void *a1)
{
  if (qword_1ED491B40 != -1)
  {
    swift_once();
  }

  if (qword_1ED491AF0 != -1)
  {
    swift_once();
  }

  v3 = off_1ED491B48;
  os_unfair_lock_lock(*(off_1ED491B48 + 2));
  v4 = sub_188B09650(&type metadata for _ResolvedProviderTraitDefinition, 0);
  os_unfair_lock_unlock(v3[2]);
  v5 = [v1 _isTraitTokenSpecified_];
  swift_unknownObjectRelease();
  if (a1)
  {
    os_unfair_lock_lock(v3[2]);
    v6 = sub_188B09650(&type metadata for _ResolvedProviderTraitDefinition, 0);
    os_unfair_lock_unlock(v3[2]);
    LODWORD(a1) = [a1 _isTraitTokenSpecified_];
    swift_unknownObjectRelease();
  }

  return v5 ^ a1 ^ 1;
}

uint64_t _s5UIKit11_GlassGroupV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0)
  {
    v4 = *(a1 + 17);
    if (a1[2])
    {
      if (!*(a2 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (a1[1] == a2[1])
      {
        v5 = *(a2 + 16);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return v4 ^ *(a2 + 17) ^ 1u;
  }

  return result;
}

uint64_t _s5UIKit6_GlassV01_B7VariantV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x18CFDDDF0]())
  {
    v4 = type metadata accessor for _Glass._GlassVariant(0);
    if (*(a1 + v4[5]) == *(a2 + v4[5]) && *(a1 + v4[6]) == *(a2 + v4[6]))
    {
      v5 = v4[7];
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6)
      {
        if (v7)
        {
          sub_188A34624(0, qword_1ED4913C0);
          v8 = v7;
          v9 = v6;
          v10 = sub_18A4A7C88();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_188F6D250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _Glass._GlassVariant(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_188F6D2B8()
{
  result = qword_1EA937DC0;
  if (!qword_1EA937DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937DC0);
  }

  return result;
}

unint64_t sub_188F6D310()
{
  result = qword_1EA937DC8;
  if (!qword_1EA937DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937DC8);
  }

  return result;
}

unint64_t sub_188F6D368()
{
  result = qword_1ED48C6C0;
  if (!qword_1ED48C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48C6C0);
  }

  return result;
}

unint64_t sub_188F6D408()
{
  result = qword_1EA937DE0;
  if (!qword_1EA937DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937DE0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _GlassGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[18])
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

uint64_t storeEnumTagSinglePayload for _GlassGroup(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_188F6D610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319);
  if (v11 <= 0x3F)
  {
    result = a7(319, a5, a6);
    if (v12 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_188F6D6B8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_18A4A7D38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_188F6D718()
{
  result = qword_1EA937E18;
  if (!qword_1EA937E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937E18);
  }

  return result;
}

double UIWindowSceneActivationRequestOptions.placement.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 placement];
  if (!v3)
  {
    goto LABEL_7;
  }

  v9 = v3;
  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {

LABEL_7:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v6 = *(v5 + 24);
  v7 = v5;
  *(a1 + 24) = swift_getAssociatedTypeWitness();
  *(a1 + 32) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a1);
  v6(ObjectType, v7);

  return result;
}

double sub_188F6D8DC@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 placement];
  if (!v3)
  {
    goto LABEL_7;
  }

  v9 = v3;
  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {

LABEL_7:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v6 = *(v5 + 24);
  v7 = v5;
  *(a2 + 24) = swift_getAssociatedTypeWitness();
  *(a2 + 32) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  v6(ObjectType, v7);

  return result;
}

uint64_t UIWindowSceneActivationRequestOptions.placement.setter(uint64_t a1)
{
  v2 = v1;
  sub_188F6DBA0(a1, v8);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E98);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_188A5EBAC(&v10, v13);
        v4 = v14;
        v5 = v15;
        __swift_project_boxed_opaque_existential_0(v13, v14);
        v6 = (*(v5 + 16))(v4, v5);
        [v2 setPlacement_];

        sub_188A3F5FC(a1, &qword_1EA937E80);
        return __swift_destroy_boxed_opaque_existential_0Tm(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_188A3F5FC(v8, &qword_1EA937E80);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_188A3F5FC(&v10, &qword_1EA937E88);
  [v1 setPlacement_];
  return sub_188A3F5FC(a1, &qword_1EA937E80);
}

uint64_t sub_188F6DBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UIWindowSceneActivationRequestOptions.placement.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = [v1 placement];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

LABEL_8:
    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    return sub_188F6DD60;
  }

  v9 = *(v8 + 24);
  v10 = v8;
  *(v4 + 24) = swift_getAssociatedTypeWitness();
  *(v4 + 32) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v4);
  v9(ObjectType, v10);

  return sub_188F6DD60;
}

void sub_188F6DD60(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_188F6DBA0(*a1, v2 + 40);
    UIWindowSceneActivationRequestOptions.placement.setter(v2 + 40);
    sub_188A3F5FC(v2, &qword_1EA937E80);
  }

  else
  {
    UIWindowSceneActivationRequestOptions.placement.setter(*a1);
  }

  free(v2);
}

void UIPopoverPresentationController._cornerConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = [v1 _cornerConfiguration];
  v4 = &v3[OBJC_IVAR___UICornerConfiguration_impl];
  v11[0] = *&v3[OBJC_IVAR___UICornerConfiguration_impl];
  v6 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v5 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v7 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v12 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v11[2] = v6;
  v11[3] = v5;
  v11[1] = v7;
  v8 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 48];
  *(a1 + 32) = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 32];
  *(a1 + 48) = v8;
  *(a1 + 64) = *(v4 + 8);
  v9 = *(v4 + 1);
  *a1 = *v4;
  *(a1 + 16) = v9;
  sub_188E41F80(v11, v10);
}

__n128 sub_188F6DE74@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 _cornerConfiguration];
  v10 = *&v3[OBJC_IVAR___UICornerConfiguration_impl];
  v5 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v4 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v6 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v14 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v12 = v5;
  v13 = v4;
  v11 = v6;
  sub_188E41F80(&v10, v9);

  v7 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v7;
  *(a2 + 64) = v14;
  result = v11;
  *a2 = v10;
  *(a2 + 16) = result;
  return result;
}

void sub_188F6DF10(__int128 *a1, void **a2)
{
  v2 = a1[3];
  v17 = a1[2];
  v18 = v2;
  v19 = *(a1 + 8);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = *a2;
  v5 = objc_allocWithZone(UICornerConfiguration);
  sub_188E41F80(&v15, v20);
  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v20[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v21 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v20[2] = v9;
  v20[3] = v10;
  v20[1] = v8;
  v12 = v17;
  v11 = v18;
  v13 = v16;
  *(v7 + 8) = v19;
  *(v7 + 2) = v12;
  *(v7 + 3) = v11;
  *(v7 + 1) = v13;
  *v7 = v15;
  v14 = v6;
  sub_188E4342C(v20);

  [v4 _setCornerConfiguration_];
}

void UIPopoverPresentationController._cornerConfiguration.setter(uint64_t a1)
{
  v3 = [objc_allocWithZone(UICornerConfiguration) init];
  v4 = &v3[OBJC_IVAR___UICornerConfiguration_impl];
  v11 = *&v3[OBJC_IVAR___UICornerConfiguration_impl];
  v6 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v5 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v7 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v15 = *&v3[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v13 = v6;
  v14 = v5;
  v12 = v7;
  v8 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v8;
  *(v4 + 8) = *(a1 + 64);
  v9 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v9;
  v10 = v3;
  sub_188E4342C(&v11);

  [v1 _setCornerConfiguration_];
}

void (*UIPopoverPresentationController._cornerConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1B8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 432) = v2;
  v6 = [v2 _cornerConfiguration];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  *v5 = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *(v7 + 1);
  v9 = *(v7 + 2);
  v10 = *(v7 + 3);
  *(v5 + 64) = *(v7 + 8);
  *(v5 + 32) = v9;
  *(v5 + 48) = v10;
  *(v5 + 16) = v8;
  memmove((v5 + 72), v7, 0x48uLL);
  sub_188E41F80(v5, v5 + 144);

  return sub_188F6E188;
}

void sub_188F6E188(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 432);
  if (a2)
  {
    v4 = *(v2 + 88);
    v5 = *(v2 + 120);
    *(v2 + 320) = *(v2 + 104);
    *(v2 + 336) = v5;
    *(v2 + 352) = *(v2 + 136);
    *(v2 + 288) = *(v2 + 72);
    *(v2 + 304) = v4;
    v6 = objc_allocWithZone(UICornerConfiguration);
    sub_188E41F80(v2 + 288, v2 + 360);
    v7 = [v6 init];
    v8 = &v7[OBJC_IVAR___UICornerConfiguration_impl];
    *(v2 + 216) = *&v7[OBJC_IVAR___UICornerConfiguration_impl];
    v9 = *(v8 + 1);
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    *(v2 + 280) = *(v8 + 8);
    *(v2 + 264) = v11;
    *(v2 + 248) = v10;
    *(v2 + 232) = v9;
    v13 = *(v2 + 320);
    v12 = *(v2 + 336);
    v14 = *(v2 + 304);
    *(v8 + 8) = *(v2 + 352);
    *(v8 + 2) = v13;
    *(v8 + 3) = v12;
    *(v8 + 1) = v14;
    *v8 = *(v2 + 288);
    v15 = v7;
    sub_188E4342C(v2 + 216);

    [v3 _setCornerConfiguration_];
    v16 = *(v2 + 88);
    v17 = *(v2 + 120);
    *(v2 + 176) = *(v2 + 104);
    *(v2 + 192) = v17;
    *(v2 + 208) = *(v2 + 136);
    *(v2 + 144) = *(v2 + 72);
    *(v2 + 160) = v16;
    sub_188E4342C(v2 + 144);
  }

  else
  {
    v26 = *(v2 + 104);
    v27 = *(v2 + 120);
    v28 = *(v2 + 136);
    v24 = *(v2 + 72);
    v25 = *(v2 + 88);
    v18 = [objc_allocWithZone(UICornerConfiguration) init];
    v19 = &v18[OBJC_IVAR___UICornerConfiguration_impl];
    *(v2 + 144) = *&v18[OBJC_IVAR___UICornerConfiguration_impl];
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    v22 = *(v19 + 1);
    *(v2 + 208) = *(v19 + 8);
    *(v2 + 176) = v21;
    *(v2 + 192) = v20;
    *(v2 + 160) = v22;
    *(v19 + 2) = v26;
    *(v19 + 3) = v27;
    *(v19 + 8) = v28;
    *v19 = v24;
    *(v19 + 1) = v25;
    v23 = v18;
    sub_188E4342C(v2 + 144);

    [v3 _setCornerConfiguration_];
  }

  free(v2);
}

id sub_188F6E380()
{
  result = [objc_allocWithZone(UIScrollEdgeEffectStyle) init];
  qword_1ED48E4C8 = result;
  return result;
}

id sub_188F6E3B4()
{
  result = [objc_allocWithZone(UIScrollEdgeEffectStyle) init];
  qword_1EA931070 = result;
  return result;
}

id sub_188F6E3E8()
{
  result = [objc_allocWithZone(UIScrollEdgeEffectStyle) init];
  qword_1ED48D598 = result;
  return result;
}

id sub_188F6E41C()
{
  result = [objc_allocWithZone(UIScrollEdgeEffectStyle) init];
  qword_1EA937EA0 = result;
  return result;
}

id static UIScrollEdgeEffectStyle._clear.getter()
{
  if (qword_1EA931D78 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA937EA0;

  return v1;
}

id sub_188F6E5B0()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  v1 = *(v0 + 16);

  return v1;
}

id sub_188F6E630@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_188F6E6B8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  type metadata accessor for UIScrollEdgeEffectStyle(a1);
  v5 = v4;
  v6 = sub_18A4A7C88();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }
}

uint64_t sub_188F6E7E0()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  return *(v0 + 24);
}

uint64_t sub_188F6E850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_188F6E8C8(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188F6E9A8()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  return *(v0 + 25);
}

uint64_t sub_188F6EA18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_188F6EA90(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188F6EB70()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  return *(v0 + 32);
}

uint64_t sub_188F6EBE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_188F6EC58(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188F6ED2C()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  return *(v0 + 40);
}

uint64_t sub_188F6ED9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_188F6EE14(uint64_t result)
{
  if (*(v1 + 40) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188F6EEE8()
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_188F6EF5C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_188F700B4();
  sub_18A4A2C08();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_188F6EFD8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_188A34624(0, &qword_1ED48F680);
  v3 = v2;
  v4 = sub_18A4A7C88();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_188F6F150()
{
  MEMORY[0x18CFEA6E0](v0 + 48);
  v1 = OBJC_IVAR____TtCE5UIKitCSo18UIScrollEdgeEffectP33_8BBEB5EE2F6DEBA3FE57BEB0128B1E8C5State___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_188F6F1FC()
{
  *(v0 + 16) = [objc_opt_self() automaticStyle];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_18A4A2C38();
  return v0;
}

uint64_t sub_188F6F45C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___UIScrollEdgeEffect_state);
  if (*(v2 + 24) == (result & 1))
  {
    *(v2 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

void sub_188F6F5B4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___UIScrollEdgeEffect_color);
  *(v1 + OBJC_IVAR___UIScrollEdgeEffect_color) = a1;
  v5 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_18902F744();
  }
}

uint64_t sub_188F6F714(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___UIScrollEdgeEffect_state);
  if (*(v2 + 25) == (result & 1))
  {
    *(v2 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

uint64_t sub_188F6F8EC(uint64_t result)
{
  if (*(*(v1 + OBJC_IVAR___UIScrollEdgeEffect_state) + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

id sub_188F6FAB8(uint64_t a1)
{
  v3 = _UIMainBundleIdentifier();
  if (!v3)
  {
LABEL_5:
    result = _UIMainBundleIdentifier();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = sub_18A4A7288();
    v13 = v12;

    if (v11 != 0xD000000000000014 || 0x800000018A695A10 != v13)
    {
      v15 = sub_18A4A86C8();

      if ((v15 & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_18A4A7288();
  v7 = v6;

  if (v5 != 0xD000000000000013 || 0x800000018A695A30 != v7)
  {
    v8 = sub_18A4A86C8();

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_5;
  }

LABEL_8:

LABEL_9:
  if (*(*(v1 + OBJC_IVAR___UIScrollEdgeEffect_state) + 40) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_188F700B4();
    sub_18A4A2BF8();
  }

  return result;
}

id UIScrollEdgeEffect.init()()
{
  v1 = OBJC_IVAR___UIScrollEdgeEffect_state;
  _s5StateCMa();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_opt_self() automaticStyle];
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_18A4A2C38();
  *&v0[v1] = v2;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___UIScrollEdgeEffect_color] = 0;
  v4.receiver = v0;
  v4.super_class = UIScrollEdgeEffect;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t _s5StateCMa()
{
  result = qword_1ED48E6F0;
  if (!qword_1ED48E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_188F6FEEC()
{
  result = sub_18A4A2C48();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_188F700B4()
{
  result = qword_1ED48E038;
  if (!qword_1ED48E038)
  {
    _s5StateCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED48E038);
  }

  return result;
}

void sub_188F70164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_188F70200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  v15 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v16 = *(v8 + v15);
  v17 = a6;
  v18 = a7;
  v28 = a8;
  v19 = a8;

  v20 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v15) = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_188E4BDB0(0, v16[2] + 1, 1, v16);
    *(v8 + v15) = v16;
  }

  v23 = v16[2];
  v22 = v16[3];
  if (v23 >= v22 >> 1)
  {
    v16 = sub_188E4BDB0((v22 > 1), v23 + 1, 1, v16);
  }

  v30 = &type metadata for PreferredAttributesChangeRecord;
  v31 = sub_188F72DB4();
  v24 = swift_allocObject();
  *&v29 = v24;
  v24[2] = v20;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v24[7] = a6;
  v24[8] = a7;
  v24[9] = v28;
  v16[2] = v23 + 1;
  sub_188A5EBAC(&v29, &v16[5 * v23 + 4]);
  *(v8 + v15) = v16;
  return swift_endAccess();
}

uint64_t sub_188F70630(uint64_t a1, uint64_t a2, uint64_t *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, unint64_t *a13)
{
  v26 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v27 = *(v13 + v26);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v13 + v26) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_188E4BDB0(0, v27[2] + 1, 1, v27);
    *(v13 + v26) = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_188E4BDB0((v29 > 1), v30 + 1, 1, v27);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = sub_188A34360(a13, a3);
  v31 = swift_allocObject();
  *&v33 = v31;
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  *(v31 + 32) = a4;
  *(v31 + 40) = a5;
  *(v31 + 48) = a6;
  *(v31 + 56) = a7;
  *(v31 + 64) = a8;
  *(v31 + 72) = a9;
  *(v31 + 80) = a10;
  *(v31 + 88) = a11;
  v27[2] = v30 + 1;
  sub_188A5EBAC(&v33, &v27[5 * v30 + 4]);
  *(v13 + v26) = v27;
  return swift_endAccess();
}

uint64_t sub_188F70800(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, unint64_t *a14)
{
  v26 = sub_18A4A7288();
  v28 = v27;
  v29 = a1;
  sub_188F70630(v26, v28, a12, a2, a3, a4, a5, a6, a7, a8, a9, a13, a14);
}

uint64_t sub_188F70A10(void *a1)
{
  v3 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1;

  sub_188F724CC(v5, v4, v15);

  v6 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_invalidationRecords;
  swift_beginAccess();
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_188E4BDD4(0, *(v7 + 2) + 1, 1, v7);
    *(v1 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_188E4BDD4((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[48 * v10];
  v12 = v15[0];
  v13 = v15[2];
  *(v11 + 3) = v15[1];
  *(v11 + 4) = v13;
  *(v11 + 2) = v12;
  *(v1 + v6) = v7;
  swift_endAccess();
  *(v1 + v3) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_188F70BB4(uint64_t a1)
{
  v3 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_invalidationRecords;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + v3) = MEMORY[0x1E69E7CC0];
  *(v1 + v5) = v7;
  v8 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_updateVisibleCellsRecords;
  swift_beginAccess();
  v9 = *(v1 + v8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_188E4BEF4(0, *(v9 + 2) + 1, 1, v9);
    *(v1 + v8) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_188E4BEF4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(v13 + 6) = a1;
  *(v1 + v8) = v9;
  return swift_endAccess();
}

uint64_t sub_188F70D54(void *a1, int a2)
{
  v52 = a2;
  v3 = sub_18A4A4378();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A4368();
  v57[0] = 60;
  v57[1] = 0xE100000000000000;
  swift_getObjectType();
  v7 = sub_18A4A8AA8();
  MEMORY[0x18CFE22D0](v7);

  MEMORY[0x18CFE22D0](1047536928, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18A64BFB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18A64B710;
  *(v9 + 32) = a1;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EE8);
  *(v8 + 64) = sub_188A34360(&qword_1EA937EF0, &qword_1EA937EE8);
  *(v8 + 32) = v9;
  v10 = a1;
  v11 = sub_18A4A72B8();
  v13 = v12;

  v14 = v10;

  v15 = sub_18A4A4358();
  v16 = sub_18A4A7978();

  v17 = os_log_type_enabled(v15, v16);
  v53 = v4;
  v54 = v3;
  v50 = v14;
  v51 = v13;
  v49 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57[0] = v20;
    *v18 = 136446466;
    *(v18 + 4) = sub_1891D69C0(v11, v13, v57);
    *(v18 + 12) = 2114;
    *(v18 + 14) = v14;
    *v19 = v14;
    v21 = v14;
    _os_log_impl(&dword_188A29000, v15, v16, "Collection view %{public}s is stuck in its update loop. This can happen when self-sizing views do not return consistent sizes, or the collection views frame/bounds/contentOffset is being constantly adjusted. To debug this issue, check the Console app for logs in the UICollectionViewFeedbackLoopDebugger category.\nCollection view: %{public}@", v18, 0x16u);
    sub_188F72D4C(v19);
    MEMORY[0x18CFEA5B0](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x18CFEA5B0](v20, -1, -1);
    MEMORY[0x18CFEA5B0](v18, -1, -1);
  }

  v22 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_updateVisibleCellsRecords;
  v23 = v55;
  swift_beginAccess();
  v24 = *(v23 + v22);
  v25 = *(v24 + 16);

  if (v25)
  {
    v26 = 0;
    v27 = (v24 + 48);
    while (v26 < *(v24 + 16))
    {
      v29 = *(v27 - 1);
      v28 = *v27;
      v30 = *(v27 - 2);

      sub_188F7265C(v30, v29, v28, v26);

      v27 += 3;
      if (v25 == ++v26)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_7:

  v31 = v55;
  v32 = MEMORY[0x1E69E7CC0];
  *(v55 + v22) = MEMORY[0x1E69E7CC0];

  v33 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_invalidationRecords;
  swift_beginAccess();
  *(v31 + v33) = v32;

  v34 = OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords;
  swift_beginAccess();
  *(v31 + v34) = v32;

  if (v52)
  {
LABEL_13:
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](v49, v51);
    MEMORY[0x18CFE22D0](0xD00000000000013CLL, 0x800000018A695C10);
    v45 = [v50 description];
    v46 = sub_18A4A7288();
    v48 = v47;

    MEMORY[0x18CFE22D0](v46, v48);

    result = sub_18A4A8398();
    __break(1u);
    return result;
  }

  v35 = v50;
  v36 = v51;

  v37 = sub_18A4A4358();
  v38 = sub_18A4A7978();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v56[0] = v41;
    *v39 = 136446466;
    v42 = sub_1891D69C0(v49, v36, v56);

    *(v39 + 4) = v42;
    *(v39 + 12) = 2114;
    *(v39 + 14) = v35;
    *v40 = v35;
    v43 = v35;
    _os_log_impl(&dword_188A29000, v37, v38, "%{public}s is performing excessive work during layout, which can cause hitches and hangs in your process. This can happen when self-sizing views do not return consistent sizes, or the collection view's frame/bounds/contentOffset is being constantly adjusted. To debug this issue, check the Console app for logs in the UICollectionViewFeedbackLoopDebugger category.\nCollection view: %{public}@", v39, 0x16u);
    sub_188F72D4C(v40);
    MEMORY[0x18CFEA5B0](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    MEMORY[0x18CFEA5B0](v41, -1, -1);
    MEMORY[0x18CFEA5B0](v39, -1, -1);
  }

  else
  {
  }

  return (*(v53 + 8))(v6, v54);
}

void __swiftcall _UICollectionViewFeedbackLoopDebugger.init()(_UICollectionViewFeedbackLoopDebugger *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id _UICollectionViewFeedbackLoopDebugger.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_currentlyTrackedChangeRecords) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_invalidationRecords) = v1;
  *(v0 + OBJC_IVAR____UICollectionViewFeedbackLoopDebugger_updateVisibleCellsRecords) = v1;
  v3.super_class = _UICollectionViewFeedbackLoopDebugger;
  return objc_msgSendSuper2(&v3, sel_init);
}

__CFString *sub_188F715A0()
{
  v1 = v0;
  v36 = sub_18A4A2B48();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = _UICollectionViewLayoutInvalidationContextIntentDescription(*v0);
  if (result)
  {
    v6 = result;
    v7 = sub_18A4A7288();
    v9 = v8;

    v39 = 0x203A6E6F73616552;
    v40 = 0xE900000000000022;
    MEMORY[0x18CFE22D0](v7, v9);

    MEMORY[0x18CFE22D0](34, 0xE100000000000000);
    if (v1[4])
    {
      MEMORY[0x18CFE22D0](0xD00000000000001DLL, 0x800000018A695DB0);
    }

    v10 = v1[1];
    v11 = *(v10 + 16);
    if (v11)
    {
      v32 = v1;
      v37 = MEMORY[0x1E69E7CC0];
      sub_188E6D154(0, v11, 0);
      v12 = v37;
      v14 = *(v2 + 16);
      v13 = v2 + 16;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v33 = *(v13 + 56);
      v34 = v14;
      v35 = v13;
      v16 = (v13 - 8);
      do
      {
        v17 = v36;
        v34(v4, v15, v36);
        v18 = sub_18A4A2B08();
        v19 = [v18 _ui_shortDescription];

        v20 = sub_18A4A7288();
        v22 = v21;

        (*v16)(v4, v17);
        v37 = v12;
        v24 = *(v12 + 16);
        v23 = *(v12 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_188E6D154((v23 > 1), v24 + 1, 1);
          v12 = v37;
        }

        *(v12 + 16) = v24 + 1;
        v25 = v12 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v15 += v33;
        --v11;
      }

      while (v11);
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_18A4A80E8();

      v37 = 0xD000000000000014;
      v38 = 0x800000018A695D90;
      v26 = MEMORY[0x18CFE24A0](v12, MEMORY[0x1E69E6158]);
      v28 = v27;

      MEMORY[0x18CFE22D0](v26, v28);

      MEMORY[0x18CFE22D0](v37, v38);

      v1 = v32;
    }

    if (*(v1[2] + 16))
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_18A4A80E8();

      v37 = 0xD00000000000001ELL;
      v38 = 0x800000018A695D70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
      v29 = sub_18A4A70E8();
      MEMORY[0x18CFE22D0](v29);

      MEMORY[0x18CFE22D0](v37, v38);
    }

    if (*(v1[3] + 16))
    {
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_18A4A80E8();

      v37 = 0xD00000000000001ALL;
      v38 = 0x800000018A695D50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
      v30 = sub_18A4A70E8();
      MEMORY[0x18CFE22D0](v30);

      MEMORY[0x18CFE22D0](v37, v38);
    }

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_188F71A14()
{
  v1 = v0;
  sub_18A4A80E8();

  v38 = 0xD000000000000017;
  v39 = 0x800000018A695DD0;
  v2 = *v0;
  result = [*v0 indexPath];
  if (result)
  {
    v4 = result;
    v5 = [result _ui_shortDescription];

    v6 = sub_18A4A7288();
    v8 = v7;

    MEMORY[0x18CFE22D0](v6, v8);

    MEMORY[0x18CFE22D0](8236, 0xE200000000000000);
    v9 = v38;
    v10 = v39;
    v11 = [v2 representedElementCategory];
    v34 = v2;
    if (v11)
    {
      v12 = v11 == 1;
      if (v11 == 1)
      {
        v13 = 0x656D656C70707573;
      }

      else
      {
        v13 = 0x697461726F636564;
      }

      if (v12)
      {
        v14 = 0xED0000797261746ELL;
      }

      else
      {
        v14 = 0xEA00000000006E6FLL;
      }

      MEMORY[0x18CFE22D0](v13, v14);

      v15 = 0xE000000000000000;
      sub_18A4A80E8();

      v36 = 0x746E656D656C6520;
      v37 = 0xEF22203A646E694BLL;
      v16 = [v2 representedElementKind];
      if (v16)
      {
        v17 = v16;
        v18 = sub_18A4A7288();
        v15 = v19;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x18CFE22D0](v18, v15);

      MEMORY[0x18CFE22D0](34, 0xE100000000000000);
      MEMORY[0x18CFE22D0](v36, v37);

      v9 = v38;
      v10 = v39;
    }

    v20 = sub_188F72268(v1[5]);
    v22 = v21;
    v23 = sub_188F72268(v1[6]);
    v25 = v24;
    v26 = sub_188F72268(v1[7]);
    v28 = v27;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_18A4A80E8();
    MEMORY[0x18CFE22D0](0xD000000000000014, 0x800000018A695DF0);
    MEMORY[0x18CFE22D0](v1[3], v1[4]);
    MEMORY[0x18CFE22D0](0x3A6D6F7266202C22, 0xEA00000000002220);
    MEMORY[0x18CFE22D0](v20, v22);

    MEMORY[0x18CFE22D0](0x22203A6F74202C22, 0xE800000000000000);
    MEMORY[0x18CFE22D0](v23, v25);

    MEMORY[0x18CFE22D0](0xD00000000000001CLL, 0x800000018A695E10);
    MEMORY[0x18CFE22D0](v26, v28);

    MEMORY[0x18CFE22D0](34, 0xE100000000000000);
    v36 = v9;
    v37 = v10;

    MEMORY[0x18CFE22D0](0, 0xE000000000000000);

    sub_18A4A80E8();

    strcpy(v35, "\n\tattributes: ");
    HIBYTE(v35[1]) = -18;
    v29 = [v34 description];
    v30 = sub_18A4A7288();
    v32 = v31;

    MEMORY[0x18CFE22D0](v30, v32);

    MEMORY[0x18CFE22D0](v35[0], v35[1]);

    if (v1[2])
    {
      v33 = v1[1];
      strcpy(v35, "\n\treason: ");
      HIDWORD(v35[1]) = -352321536;
      MEMORY[0x18CFE22D0](v33);
      MEMORY[0x18CFE22D0](34, 0xE100000000000000);
      MEMORY[0x18CFE22D0](v35[0], v35[1]);
    }

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188F71EB0()
{
  sub_18A4A7408();
  sub_188F71A14();
  sub_188C72980();
  v0 = sub_18A4A7DB8();

  return v0;
}

uint64_t sub_188F71F84()
{
  sub_18A4A7408();
  sub_18A4A8618();
  sub_188C72980();
  v0 = sub_18A4A7DB8();

  return v0;
}

uint64_t sub_188F72098()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](*v0, v0[1]);
  MEMORY[0x18CFE22D0](0x6465676E61686320, 0xEE00206D6F726620);
  sub_18A4A8688();
  MEMORY[0x18CFE22D0](544175136, 0xE400000000000000);
  sub_18A4A8688();
  return 0;
}

uint64_t sub_188F72168()
{
  sub_18A4A7408();
  sub_188C72980();
  v0 = sub_18A4A7DB8();

  return v0;
}

unint64_t type metadata accessor for _UICollectionViewFeedbackLoopDebugger()
{
  result = qword_1EA937EE0;
  if (!qword_1EA937EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA937EE0);
  }

  return result;
}

uint64_t sub_188F72268(void *a1)
{
  if (!a1)
  {
    return 6369134;
  }

  swift_unknownObjectRetain_n();
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRetain();
    [v3 objCType];
    v4 = v3;
    sub_18A4A7398();
    if (sub_18A4A73E8())
    {

      [v3 CGSizeValue];
      type metadata accessor for CGSize(0);
LABEL_5:
      sub_18A4A82D8();
      swift_unknownObjectRelease_n();
      return 0;
    }

    if (sub_18A4A73E8())
    {

      [v3 CGRectValue];
      type metadata accessor for CGRect(0);
      sub_18A4A82D8();
      swift_unknownObjectRelease_n();
      return 0;
    }

    v6 = sub_18A4A73E8();

    if (v6)
    {
      [v3 CGPointValue];
      type metadata accessor for CGPoint(0);
      goto LABEL_5;
    }
  }

  swift_unknownObjectRelease();
  result = [a1 respondsToSelector_];
  if (result)
  {
    v7 = [a1 description];
    v8 = sub_18A4A7288();
    swift_unknownObjectRelease();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_188F724CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 _intent];
  v7 = [a1 invalidatedItemIndexPaths];
  if (v7)
  {
    v8 = v7;
    sub_18A4A2B48();
    v9 = sub_18A4A7548();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = [a1 invalidatedSupplementaryIndexPaths];
  if (v10)
  {
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
    v12 = sub_18A4A70A8();
  }

  else
  {
    v12 = sub_188E8E76C(MEMORY[0x1E69E7CC0]);
  }

  v13 = [a1 invalidatedDecorationIndexPaths];
  if (v13)
  {
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937EF8);
    v15 = sub_18A4A70A8();
  }

  else
  {
    v15 = sub_188E8E76C(MEMORY[0x1E69E7CC0]);
  }

  result = [a1 invalidateEverything];
  *a3 = v6;
  *(a3 + 8) = v9;
  *(a3 + 16) = v12;
  *(a3 + 24) = v15;
  *(a3 + 32) = result;
  *(a3 + 40) = a2;
  return result;
}

void sub_188F7265C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = *(a1 + 16);
  if (v63)
  {
    v4 = 0;
    v62 = a1 + 32;
    while (1)
    {
      v5 = v62 + 48 * v4;
      v6 = *(v5 + 8);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      v9 = *(v5 + 32);
      v10 = *(v5 + 40);
      v69[0] = *v5;
      v69[1] = v6;
      v69[2] = v8;
      v69[3] = v7;
      v70 = v9;
      v71 = v10;
      v11 = *(v10 + 16);
      v12 = v11 ? 0xE800000000000000 : 0xE000000000000000;
      swift_bridgeObjectRetain_n();

      v13 = sub_18A4A4358();
      v14 = sub_18A4A7978();

      v64 = v4;
      if (os_log_type_enabled(v13, v14))
      {
        break;
      }

      if (v11)
      {
        goto LABEL_13;
      }

LABEL_3:

      v4 = v64 + 1;
      if (v64 + 1 == v63)
      {
        goto LABEL_22;
      }
    }

    v15 = 0x3A7365676E616843;
    if (!v11)
    {
      v15 = 0;
    }

    v59 = v15;
    v61 = v11;
    v16 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v66[0] = v60;
    *v16 = 134219010;
    *(v16 + 4) = a4;
    *(v16 + 12) = 2050;
    *(v16 + 14) = v4;
    *(v16 + 22) = 2048;
    *(v16 + 24) = *(v10 + 16);
    *(v16 + 32) = 2082;
    v17 = sub_188F715A0();
    v19 = v18;

    v20 = sub_1891D69C0(v17, v19, v66);

    *(v16 + 34) = v20;
    *(v16 + 42) = 2082;
    v21 = sub_1891D69C0(v59, v12, v66);

    *(v16 + 44) = v21;
    _os_log_impl(&dword_188A29000, v13, v14, "For layout pass %ld, tracked invalidation with index %{public}ld had %ld change(s). %{public}s. %{public}s", v16, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x18CFEA5B0](v60, -1, -1);
    MEMORY[0x18CFEA5B0](v16, -1, -1);

    if (!v61)
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = *(v10 + 16);
    if (v22)
    {
      v23 = v10 + 32;
      do
      {
        sub_188A53994(v23, v66);
        v32 = sub_18A4A4358();
        v33 = sub_18A4A7978();
        if (os_log_type_enabled(v32, v33))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v65 = v25;
          *v24 = 136446210;
          v26 = v67;
          v27 = v68;
          __swift_project_boxed_opaque_existential_0(v66, v67);
          v28 = (*(v27 + 16))(2, v26, v27);
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          v31 = sub_1891D69C0(v28, v30, &v65);

          *(v24 + 4) = v31;
          _os_log_impl(&dword_188A29000, v32, v33, "\t%{public}s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          MEMORY[0x18CFEA5B0](v25, -1, -1);
          MEMORY[0x18CFEA5B0](v24, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0Tm(v66);
        }

        v23 += 40;
        --v22;
      }

      while (v22);
    }

    goto LABEL_3;
  }

  v35 = sub_18A4A4358();
  v36 = sub_18A4A7978();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v69[0] = v38;
    *v37 = 134218242;
    *(v37 + 4) = a4;
    *(v37 + 12) = 2082;
    v39 = MEMORY[0x18CFE24A0](a3, MEMORY[0x1E69E6158]);
    v41 = sub_1891D69C0(v39, v40, v69);

    *(v37 + 14) = v41;
    _os_log_impl(&dword_188A29000, v35, v36, "Call stack for layout pass %ld: %{public}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    MEMORY[0x18CFEA5B0](v38, -1, -1);
    MEMORY[0x18CFEA5B0](v37, -1, -1);
  }

LABEL_22:
  v42 = *(a2 + 16);
  if (v42)
  {
    v43 = sub_18A4A4358();
    v44 = sub_18A4A7978();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = a4;
      _os_log_impl(&dword_188A29000, v43, v44, "Changes attributed to update %{public}ld that weren't part of an invalidation:", v45, 0xCu);
      MEMORY[0x18CFEA5B0](v45, -1, -1);
    }

    v46 = a2 + 32;
    do
    {
      sub_188A53994(v46, v66);
      v55 = sub_18A4A4358();
      v56 = sub_18A4A7978();
      if (os_log_type_enabled(v55, v56))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v65 = v48;
        *v47 = 136446210;
        v49 = v67;
        v50 = v68;
        __swift_project_boxed_opaque_existential_0(v66, v67);
        v51 = (*(v50 + 16))(2, v49, v50);
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        v54 = sub_1891D69C0(v51, v53, &v65);

        *(v47 + 4) = v54;
        _os_log_impl(&dword_188A29000, v55, v56, "\t%{public}s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v48);
        MEMORY[0x18CFEA5B0](v48, -1, -1);
        MEMORY[0x18CFEA5B0](v47, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0Tm(v66);
      }

      v46 += 40;
      --v42;
    }

    while (v42);
  }
}

uint64_t sub_188F72D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_188F72DB4()
{
  result = qword_1EA937F30[0];
  if (!qword_1EA937F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA937F30);
  }

  return result;
}

uint64_t sub_188F72E08(uint64_t result, int a2, int a3)
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

uint64_t sub_188F72E68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_188F72EE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_188F73078(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_188F732EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_188F73334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_188F733A0(uint64_t a1)
{
  result = sub_188F733C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188F733C8()
{
  result = qword_1EA937FB8;
  if (!qword_1EA937FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA937FB8);
  }

  return result;
}

uint64_t sub_188F7341C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_188F734A8()
{
  sub_188BBA15C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_188F734E0()
{
  sub_18A4A8888();
  sub_18A4A8038();
  return sub_18A4A88E8();
}

uint64_t sub_188F73550()
{
  sub_18A4A8888();
  sub_18A4A8038();
  return sub_18A4A88E8();
}

uint64_t UIEditMenuConfiguration.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  [v1 identifier];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937FC0);
  result = swift_dynamicCast();
  if (result)
  {
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    v4 = [v1 identifier];
    _s6_BoxedCMa();
    v5 = swift_dynamicCastClassUnconditional();
    sub_188BBA230(v5 + 16, a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_188F736F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id UIEditMenuConfiguration.init(identifier:sourcePoint:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_18A4A29D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_188F739BC(a1, &v21);
  if (*(&v22 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937FC0);
    if (swift_dynamicCast())
    {
      v13 = v18;
      goto LABEL_10;
    }
  }

  else
  {
    sub_188F736F0(&v21);
  }

  sub_188F739BC(a1, &v18);
  if (*(&v19 + 1))
  {
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_18A4A29C8();
    (*(v7 + 16))(v9, v12, v6);
    sub_188F73A74(&qword_1ED48CEF0, MEMORY[0x1E69695A8]);
    sub_18A4A8048();
    (*(v7 + 8))(v12, v6);
    if (*(&v19 + 1))
    {
      sub_188F736F0(&v18);
    }
  }

  _s6_BoxedCMa();
  v13 = swift_allocObject();
  v14 = v22;
  *(v13 + 16) = v21;
  *(v13 + 32) = v14;
  *(v13 + 48) = v23;
LABEL_10:
  v15 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:v13 sourcePoint:{a2, a3}];
  swift_unknownObjectRelease();
  sub_188F736F0(a1);
  return v15;
}

uint64_t sub_188F739BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA937A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_188F73A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188F73ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v49 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      v7 = MEMORY[0x1E69E7CC0];
      v14 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v14)
      {
        goto LABEL_12;
      }

LABEL_30:

      v31 = MEMORY[0x1E69E7CC0];
      goto LABEL_31;
    }

    v6 = (a1 + 40);
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v6 - 1);
      v8 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_188E4C014(0, *(v7 + 16) + 1, 1, v7);
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = v7;
      if (v11 >= v10 >> 1)
      {
        v12 = sub_188E4C014((v10 > 1), v11 + 1, 1, v7);
      }

      *(v12 + 2) = v11 + 1;
      v7 = v12;
      v13 = &v12[16 * v11];
      *(v13 + 4) = v9;
      *(v13 + 5) = v8;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = sub_188F7507C();
  }

  v14 = *(v7 + 16);
  if (!v14)
  {
    goto LABEL_30;
  }

LABEL_12:
  v48 = v4;
  sub_18A4A8208();
  v45 = a3;
  v15 = (v7 + 40);
  do
  {
    v23 = *(v15 - 1);
    v22 = *v15;
    if (a2)
    {
      v24 = *(a2 + 16);

      if (v24)
      {

        sub_188B0944C(v23, v22);
        v26 = v25;

        if (v26)
        {

          if (a3)
          {
            goto LABEL_22;
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
    }

    sub_188F74674(v23, v22);
    if (a3)
    {
LABEL_22:
      if (*(a3 + 16))
      {

        sub_188B0944C(v23, v22);
        v28 = v27;

        if (v28)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_24:
    if (!a2 || !*(a2 + 16) || (, sub_188B0944C(v23, v22), v30 = v29, , (v30 & 1) == 0))
    {
      sub_188F74674(v23, v22);
      goto LABEL_14;
    }

LABEL_27:

LABEL_14:

    v16 = sub_18A4A7258();
    v17 = _UITextFormattingViewControllerComponentKeyForAnimation(v16);

    v18 = objc_allocWithZone(_UITextFormattingViewControllerCustomComponent);
    v19 = sub_18A4A7258();

    v20 = sub_18A4A7258();

    v21 = sub_18A4A7258();

    [v18 initWithComponentKey:v17 preferredSize:2 title:v19 accessibilityHint:v20 systemImageName:0 textAnimationName:v21];

    sub_18A4A81D8();
    sub_18A4A8218();
    sub_18A4A8228();
    sub_18A4A81E8();
    v15 += 2;
    --v14;
    a3 = v45;
  }

  while (v14);

  v31 = v48;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v47 = v4;
  if (v31 >> 62)
  {
    goto LABEL_88;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v35 = v31 >> 62;
      if (v31 >> 62)
      {
        if (!sub_18A4A7F68())
        {
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
          v32 = sub_18A4A7F68();
          goto LABEL_33;
        }

        if (!sub_18A4A7F68())
        {
          goto LABEL_83;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        sub_188E4A7C8(0, v31);
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v36 = *(v31 + 32);
      }

      if (v35)
      {
        if (!sub_18A4A7F68())
        {
          goto LABEL_86;
        }

        if (sub_18A4A7F68() < 1)
        {
          goto LABEL_87;
        }

        v37 = sub_18A4A7F68();
      }

      else
      {
        v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v37)
        {
          goto LABEL_86;
        }
      }

      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_85;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v35)
      {
        goto LABEL_52;
      }

LABEL_53:
      v31 = sub_18A4A8168();
LABEL_54:
      v39 = sub_189013DDC(0, 1, 0);
      MEMORY[0x18CFE2450](v39);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      sub_18A4A75F8();
      if (v47 >> 62)
      {
        v40 = sub_18A4A7F68();
      }

      else
      {
        v40 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v41 = v31 >> 62;
      if (v40 == 4)
      {
LABEL_61:
        if (v47 >> 62)
        {
          sub_188A34624(0, &qword_1EA937FD8);

          sub_18A4A83B8();
        }

        else
        {

          sub_18A4A8738();
          sub_188A34624(0, &qword_1EA937FD8);
        }

        v42 = objc_allocWithZone(UITextFormattingViewControllerComponentGroup);
        sub_188A34624(0, &qword_1EA937FD8);
        v43 = sub_18A4A7518();

        [v42 initWithComponents_];

        MEMORY[0x18CFE2450]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
        }

        sub_18A4A75F8();
        v34 = v49;
        v47 = v33;
        goto LABEL_67;
      }

      if (v41)
      {
        if (!sub_18A4A7F68())
        {
          goto LABEL_61;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

LABEL_67:
      if (v41)
      {
        if (!sub_18A4A7F68())
        {
LABEL_79:

          goto LABEL_81;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }
    }

    if (!v35)
    {
      if (v38 <= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_52:
    sub_18A4A7F68();
    goto LABEL_53;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_81:

  return v34;
}

uint64_t UITextFormattingViewControllerConfiguration._emphasisStyles.getter()
{
  v1 = [v0 _emphasisStyles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_188A34624(0, &qword_1EA937FD0);
  v3 = sub_18A4A7548();

  return v3;
}

void sub_188F7433C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 _emphasisStyles];
  if (v3)
  {
    v4 = v3;
    sub_188A34624(0, &qword_1EA937FD0);
    v5 = sub_18A4A7548();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_188F743BC(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_188A34624(0, &qword_1EA937FD0);
    v3 = sub_18A4A7518();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 set_emphasisStyles_];
}

void UITextFormattingViewControllerConfiguration._emphasisStyles.setter(uint64_t a1)
{
  if (a1)
  {
    sub_188A34624(0, &qword_1EA937FD0);
    v2 = sub_18A4A7518();
  }

  else
  {
    v2 = 0;
  }

  [v1 set:v2 emphasisStyles:?];
}

void (*UITextFormattingViewControllerConfiguration._emphasisStyles.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 _emphasisStyles];
  if (v3)
  {
    v4 = v3;
    sub_188A34624(0, &qword_1EA937FD0);
    v5 = sub_18A4A7548();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_188F74570;
}

void sub_188F74570(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_188A34624(0, &qword_1EA937FD0);

      v4 = sub_18A4A7518();
    }

    else
    {
      v4 = 0;
    }

    [a1[1] set:v4 emphasisStyles:?];
  }

  else if (v3)
  {
    sub_188A34624(0, &qword_1EA937FD0);
    v4 = sub_18A4A7518();

    [a1[1] set:v4 emphasisStyles:?];
  }

  else
  {
    v4 = 0;
    [a1[1] set:0 emphasisStyles:?];
  }
}

unint64_t sub_188F74674(uint64_t a1, unint64_t a2)
{
  v4 = sub_18A4A89F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v43 = a1;
  v44 = a2;
  v45 = 0;
  v46 = v9;
  v47 = MEMORY[0x1E69E7CC0];

  v10 = sub_18A4A73A8();
  if (!v11)
  {
LABEL_41:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937FE0);
    *(swift_allocObject() + 16) = v8;
    MEMORY[0x18CFE2450]();
    if (*(v47 + 16) >= *(v47 + 24) >> 1)
    {
LABEL_51:
      sub_18A4A7588();
    }

    sub_18A4A75F8();
    v30 = v47;
    v31 = *(v47 + 16);
    if (v31)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_188E6D154(0, v31, 0);
      v32 = v47;
      sub_188A34360(&qword_1EA937FF0, &qword_1EA937FE8);
      v33 = 32;
      do
      {
        v43 = *(v30 + v33);
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937FE8);
        v43 = sub_18A4A7428();
        v44 = v34;
        sub_188C72980();
        v35 = sub_18A4A7D88();
        v37 = v36;

        v47 = v32;
        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_188E6D154((v38 > 1), v39 + 1, 1);
          v32 = v47;
        }

        *(v32 + 16) = v39 + 1;
        v40 = v32 + 16 * v39;
        *(v40 + 32) = v35;
        *(v40 + 40) = v37;
        v33 += 8;
        --v31;
      }

      while (v31);
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v43 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F3B0);
    sub_188A34360(&qword_1EA939C40, &qword_1EA93F3B0);
    v41 = sub_18A4A71F8();

    return v41;
  }

  v12 = v10;
  v13 = v11;
  v14 = (v5 + 8);
  v42 = xmmword_18A64BFB0;
  while (1)
  {
    if ((v13 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v13) & 0xF;
    }

    else
    {
      v17 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      __break(1u);
      goto LABEL_51;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      v22 = sub_18A4A7338();
    }

    else
    {
      if ((v13 & 0x2000000000000000) != 0)
      {
        v19 = v12;
      }

      else
      {
        if ((v12 & 0x1000000000000000) != 0)
        {
          v18 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v18 = sub_18A4A81C8();
        }

        v19 = *v18;
      }

      v20 = v19;
      v21 = (__clz(~v19) - 24) << 16;
      if (v20 < 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 65541;
      }
    }

    v23 = 4 * v17;
    if (4 * v17 != v22 >> 14)
    {
      goto LABEL_25;
    }

    result = sub_188F74C80(v12, v13);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    sub_18A4A8A08();
    v25 = sub_18A4A89D8();
    (*v14)(v7, v4);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_25:
    if ((sub_18A4A71D8() & 1) == 0)
    {
      goto LABEL_34;
    }

    if ((v13 & 0x1000000000000000) != 0)
    {
      if (v23 == sub_18A4A7338() >> 14)
      {
LABEL_30:
        result = sub_188F74C80(v12, v13);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_53;
        }

        sub_18A4A8A08();
        v26 = sub_18A4A89E8();
        (*v14)(v7, v4);
        if (v26)
        {
LABEL_5:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937FE0);
          *(swift_allocObject() + 16) = v8;
          MEMORY[0x18CFE2450]();
          if (*(v47 + 16) >= *(v47 + 24) >> 1)
          {
            sub_18A4A7588();
          }

          sub_18A4A75F8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9342C0);
          v8 = swift_allocObject();
          *(v8 + 16) = v42;
          *(v8 + 32) = v12;
          v15 = (v8 + 40);
          goto LABEL_8;
        }
      }
    }

    else if (v23 == ((4 * sub_18A4A80C8()) & 0x3FFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

    if ((sub_18A4A71D8() & 1) == 0 || (sub_18A4A71C8() & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B4FC(0, *(v8 + 16) + 1, 1, v8);
    }

    v28 = *(v8 + 16);
    v27 = *(v8 + 24);
    if (v28 >= v27 >> 1)
    {
      v8 = sub_188E4B4FC((v27 > 1), v28 + 1, 1, v8);
    }

    *(v8 + 16) = v28 + 1;
    v29 = v8 + 16 * v28;
    *(v29 + 32) = v12;
    v15 = (v29 + 40);
LABEL_8:
    *v15 = v13;
    v12 = sub_18A4A73A8();
    v13 = v16;
    if (!v16)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void *sub_188F74C74@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_188F74C80(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_188F74DD0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_18A4A80D8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_18A4A81C8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_188F74DD0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_188F74E68(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_188F74EDC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_188F74E68(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_188F75000(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_188F74EDC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_18A4A81C8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_188F75000(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18A4A73D8();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x18CFE2310](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_188F7507C()
{
  v0 = objc_opt_self();
  v1 = sub_18A4A7258();
  v2 = [v0 animationNamesForDomain_];

  v3 = sub_18A4A7548();
  v4 = *(v3 + 16);
  if (v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_188E6D23C(0, v4, 0);
    v5 = v13;
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v13 + 16);
      v10 = *(v13 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_188E6D23C((v10 > 1), v9 + 1, 1);
      }

      *(v13 + 16) = v9 + 1;
      v11 = v13 + 16 * v9;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

id sub_188F751CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18A64B710;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18A64B710;
  *(v7 + 32) = [objc_allocWithZone(UITextFormattingViewControllerComponent) initWithComponentKey:@"UITextFormattingViewControllerFontAttributesComponent" preferredSize:5];
  v8 = objc_allocWithZone(UITextFormattingViewControllerComponentGroup);
  sub_188A34624(0, &qword_1EA937FD8);
  v9 = sub_18A4A7518();

  v10 = [v8 initWithComponents_];

  *(v6 + 32) = v10;
  v11 = sub_188F73ABC(a1, a2, a3);
  sub_18920B9EC(v11);
  v12 = objc_allocWithZone(UITextFormattingViewControllerConfiguration);
  sub_188A34624(0, &qword_1EA9342A8);
  v13 = sub_18A4A7518();

  v14 = [v12 initWithGroups_];

  [v14 set:1 textAnimationsConfiguration:?];
  [v14 set:1 allowContentToScroll:?];
  return v14;
}

void sub_188F753C0(int a1, double a2)
{
  LODWORD(v42) = a1;
  v4 = sub_18A4A6E18();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18A4A6E58();
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18A4A6E08();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v36 - v14);
  v16 = sub_18A4A6E88();
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_18A4A7AD8();
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + 24))
  {
    v37 = v20;
    *(v2 + 32) = CACurrentMediaTime();
    *(v2 + 40) = 0;
    *(v2 + 48) = a2;
    *(v2 + 56) = v42 & 1;
    v39 = v2;
    sub_188F75E10();
    v36 = sub_188A34624(0, &unk_1EA937FF8);
    sub_188A34624(0, &qword_1ED490540);
    v23 = sub_18A4A7A68();
    v42 = v4;
    v24 = v23;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_188F763E0(&qword_1EA938008, MEMORY[0x1E69E80B0]);
    v40 = v5;
    v38 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938010);
    v41 = v8;
    sub_188F76428(&qword_1EA938018, &qword_1EA938010);
    sub_18A4A7EB8();
    v25 = sub_18A4A7AE8();

    (*(v37 + 8))(v22, v19);
    ObjectType = swift_getObjectType();
    sub_18A4A6E68();
    *v15 = 16;
    v28 = v45;
    v27 = v46;
    v29 = *(v45 + 104);
    v29(v15, *MEMORY[0x1E69E7F38], v46);
    *v12 = 0;
    v29(v12, *MEMORY[0x1E69E7F28], v27);
    MEMORY[0x18CFE2AF0](v18, v15, v12, ObjectType);
    v30 = *(v28 + 8);
    v30(v12, v27);
    v30(v15, v27);
    (*(v43 + 8))(v18, v44);
    v31 = swift_allocObject();
    v32 = v39;
    swift_weakInit();
    aBlock[4] = sub_188F763D8;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A8F0;
    aBlock[3] = &block_descriptor_44;
    v33 = _Block_copy(aBlock);

    v34 = v47;
    sub_18A4A6E38();
    v35 = v38;
    sub_188F75A1C();
    sub_18A4A7AF8();
    _Block_release(v33);
    (*(v40 + 8))(v35, v42);
    (*(v48 + 8))(v34, v41);

    sub_18A4A7B18();
    *(v32 + 24) = v25;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_188F759C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_188F75E10();
  }

  return result;
}

uint64_t sub_188F75A1C()
{
  sub_18A4A6E18();
  sub_188F763E0(&qword_1ED490560, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
  sub_188F76428(&qword_1ED490550, &unk_1EA935AC0);
  return sub_18A4A7EB8();
}

uint64_t sub_188F75AF4()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_18A4A7B08();
    swift_unknownObjectRelease();
  }

  *(v0 + 24) = 0;
  result = swift_unknownObjectRelease();
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_188F75BA0(unint64_t result)
{
  v2 = v1;
  v13 = result;
  if (result >> 62)
  {
    goto LABEL_39;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      swift_beginAccess();
      v4 = 0;
      while ((v13 & 0xC000000000000001) != 0)
      {
        v5 = sub_188E4A7DC(v4, v13);
        v6 = __OFADD__(v4++, 1);
        if (v6)
        {
          goto LABEL_35;
        }

LABEL_10:
        v7 = *(v2 + 16);
        if (v7 >> 62)
        {
          v8 = sub_18A4A7F68();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v9 = 0;
        while (v8 != v9)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = *(sub_188E4A7DC(v9, v7) + 32);
            swift_unknownObjectRelease();
            if (*(v5 + 32) < v10)
            {
LABEL_21:

              goto LABEL_24;
            }
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (*(v5 + 32) < *(*(v7 + 8 * v9 + 32) + 32))
            {
              goto LABEL_21;
            }
          }

          v6 = __OFADD__(v9++, 1);
          if (v6)
          {
            goto LABEL_34;
          }
        }

        v11 = *(v2 + 16);
        if (v11 >> 62)
        {
          v9 = sub_18A4A7F68();
        }

        else
        {
          v9 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_24:
        swift_beginAccess();
        v12 = *(v2 + 16);
        if (v12 >> 62)
        {
          if (sub_18A4A7F68() < v9)
          {
            goto LABEL_36;
          }
        }

        else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < v9)
        {
          goto LABEL_36;
        }

        if (v9 < 0)
        {
          goto LABEL_37;
        }

        sub_189014024(v9, v9, v5);
        swift_endAccess();

        if (v4 == v3)
        {
          return result;
        }
      }

      if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v5 = *(v13 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (!v6)
      {
        goto LABEL_10;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      result = sub_18A4A7F68();
      v3 = result;
    }

    while (result);
  }

  return result;
}

void sub_188F75E10()
{
  if (*(v0 + 40))
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + 32);
  swift_beginAccess();
  v3 = *(v0 + 16);
  if (v3 >> 62)
  {
    goto LABEL_61;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_62:
    sub_188F75AF4();
    return;
  }

LABEL_4:
  v2 = CACurrentMediaTime() - v2;
  v4 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0]; ; v4 = i)
  {
    v5 = *(v1 + 16);
    if (v5 >> 62)
    {
      if (!sub_18A4A7F68())
      {
        goto LABEL_43;
      }
    }

    else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_43;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {

      v6 = sub_188E4A7DC(0, v5);
    }

    else
    {
      if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v6 = *(v5 + 32);
    }

    if (*(v1 + 56))
    {
      v7 = 10.0;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = *(v6 + 32) * *(v1 + 48) * v7;
    if (v8 * UIAnimationDragCoefficient() > v2)
    {

LABEL_43:
      if (v4 >> 62)
      {
        v16 = sub_18A4A7F68();
        if (v16)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
LABEL_45:
          v17 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v18 = sub_188E4A7DC(v17, v4);
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                goto LABEL_53;
              }
            }

            else
            {
              if (v17 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_54;
              }

              v18 = *(v4 + 8 * v17 + 32);

              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
LABEL_53:
                __break(1u);
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
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
                if (!sub_18A4A7F68())
                {
                  goto LABEL_62;
                }

                goto LABEL_4;
              }
            }

            (*(v18 + 40))(*(v1 + 48));

            ++v17;
          }

          while (v19 != v16);
        }
      }

      return;
    }

    swift_beginAccess();
    v9 = *(v1 + 16);
    v10 = v9 >> 62;
    if (!(v9 >> 62))
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      goto LABEL_16;
    }

    if (!sub_18A4A7F68())
    {
      break;
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_67;
    }

LABEL_16:
    if ((v9 & 0xC000000000000001) != 0)
    {
      sub_188E4A7DC(0, v9);
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v11 = v9 & 0xFFFFFFFFFFFFFF8;
      if (!v10)
      {
LABEL_19:
        v12 = *(v11 + 16);
        if (!v12)
        {
          goto LABEL_59;
        }

        goto LABEL_31;
      }
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_59;
    }

    if (sub_18A4A7F68() < 1)
    {
      goto LABEL_60;
    }

    v12 = sub_18A4A7F68();
LABEL_31:
    v13 = v12 - 1;
    if (__OFSUB__(v12, 1))
    {
      goto LABEL_58;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(v1 + 16) = v9;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v10)
      {
        if (v13 <= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

LABEL_37:
      sub_18A4A7F68();
      goto LABEL_38;
    }

    if (v10)
    {
      goto LABEL_37;
    }

LABEL_38:
    v9 = sub_18A4A8168();
    *(v1 + 16) = v9;
LABEL_39:
    sub_189013EEC(0, 1, 0);
    *(v1 + 16) = v9;
    v15 = swift_endAccess();
    MEMORY[0x18CFE2450](v15);
    if (*((i & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((i & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18A4A7588();
    }

    sub_18A4A75F8();
  }

  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_188F76214()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_188F76278(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = sub_188EB2558(a1);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_188A4A8F0;
  v10[3] = &block_descriptor_30_1;
  v9 = _Block_copy(v10);

  [v7 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v9);
}

uint64_t sub_188F76374()
{

  return swift_deallocClassInstance();
}

uint64_t sub_188F763E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_188F76428(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id _UIBackgroundExtensionView.init(coder:)(void *a1)
{
  v4.super_class = _UIBackgroundExtensionView;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

void __swiftcall _UIBackgroundExtensionView.init(frame:)(_UIBackgroundExtensionView *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

unint64_t type metadata accessor for _UIBackgroundExtensionView()
{
  result = qword_1EA938020;
  if (!qword_1EA938020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA938020);
  }

  return result;
}

char *sub_188F76B80(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (v3 >= 120.0)
  {
    if (a2 < a1)
    {
      a1 = a2;
    }

    v6 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small;
    v7 = *(*(v2 + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_small) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension);
    v8 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large;
    v9 = *(*(v2 + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_large) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension);
    v10 = fmin(_UIUnlerp(a1, v7, v9), 1.0);
    if ((*&v10 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    if ((~*&v10 & 0x7FF0000000000000) != 0)
    {
      v11 = v10;
    }

    if (v10 >= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = fmin(_UIUnlerp(v3, v7, v9), 1.0);
    if ((*&v13 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v13;
    }

    if ((~*&v13 & 0x7FF0000000000000) != 0)
    {
      v14 = v13;
    }

    if (v13 >= 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    type metadata accessor for _UIFlexInteractionSmallVariantSpec();
    v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v17 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity;
    *&v16[v17] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity));
    v18 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity;
    *&v16[v18] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity));
    v19 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance;
    *&v16[v19] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance));
    v20 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints;
    *&v16[v20] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints));
    v21 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold;
    *&v16[v21] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold));
    v22 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor;
    *&v16[v22] = _UILerp_1(v12, *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor), *(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor));
    v23 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
    v24 = *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
    v25 = *&v16[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring];
    v45 = v16;
    [v24 dampingRatio];
    v27 = v26;
    [*(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) dampingRatio];
    [v25 setDampingRatio_];

    v29 = *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
    v30 = *&v16[v23];
    [v29 response];
    v32 = v31;
    [*(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) response];
    [v30 setResponse_];

    v34 = *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
    v35 = *&v16[v23];
    [v34 trackingDampingRatio];
    v37 = v36;
    [*(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) trackingDampingRatio];
    [v35 setTrackingDampingRatio_];

    v39 = *&v16[v23];
    v40 = *(*(v2 + v6) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
    v41 = v39;
    [v40 trackingResponse];
    v43 = v42;
    [*(*(v2 + v8) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) trackingResponse];
    [v41 setTrackingResponse_];

    return v45;
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_ultraSmall);

    return v4;
  }
}

char *sub_188F76FD0(double a1, double a2)
{
  if (a2 < a1)
  {
    a1 = a2;
  }

  v3 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe;
  v4 = OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe;
  v5 = fmin(_UIUnlerp(a1, *(*(v2 + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_smallLoupe) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension), *(*(v2 + OBJC_IVAR____TtC5UIKit22_UIFlexInteractionSpec_loupe) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension)), 1.0);
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    if ((~*&v5 & 0x7FF0000000000000) != 0)
    {
      v6 = v5;
    }

    else if ((*&v5 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v5;
    }
  }

  type metadata accessor for _UIFlexInteractionLoupeVariantSpec();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts;
  *&v7[v8] = _UILerp_1(v6, *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts), *(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts));
  v9 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale;
  *&v7[v9] = _UILerp_1(v6, *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale), *(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale));
  v10 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale;
  *&v7[v10] = _UILerp_1(v6, *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale), *(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale));
  v11 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor;
  *&v7[v11] = _UILerp_1(v6, *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor), *(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor));
  v12 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  v13 = *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  v14 = *&v7[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring];
  v35 = v7;
  [v13 dampingRatio];
  v16 = v15;
  [*(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) dampingRatio];
  [v14 setDampingRatio_];

  v18 = *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  v19 = *&v7[v12];
  [v18 response];
  v21 = v20;
  [*(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) response];
  [v19 setResponse_];

  v23 = *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  v24 = *&v7[v12];
  [v23 trackingDampingRatio];
  v26 = v25;
  [*(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) trackingDampingRatio];
  [v24 setTrackingDampingRatio_];

  v28 = *&v7[v12];
  v29 = *(*(v2 + v3) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring);
  v30 = v28;
  [v29 trackingResponse];
  v32 = v31;
  [*(*(v2 + v4) + OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring) trackingResponse];
  [v30 setTrackingResponse_];

  return v35;
}

id sub_188F77508()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UIFlexInteractionSmallLoupeVariantSpec();
  objc_msgSendSuper2(&v4, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0x4042800000000000;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0;
  *&v0[v1] = 0x40B7700000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementNormalizationFactor] = 0x409F400000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMinScale] = 0x3FECCCCCCCCCCCCDLL;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementMaxScale] = 0x3FF199999999999ALL;
  v2 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring] setDampingRatio_];
  [*&v0[v2] setResponse_];
  [*&v0[v2] setRetargetImpulse_];
  [*&v0[v2] setTrackingDampingRatio_];
  [*&v0[v2] setTrackingResponse_];
  return [*&v0[v2] setTrackingRetargetImpulse_];
}

id sub_188F77710()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for _UIFlexInteractionMenuVariantSpec();
  objc_msgSendSuper2(&v3, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_associatedDimension] = 0x4064000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_bigGlowOpacity] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowOpacity] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_littleGlowDissipationDistance] = 0x4049000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_liftScalePoints] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleDistanceThreshold] = 0x40B7700000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_movementScalePts] = 0x4014000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseNormalizationFactor] = 0x40BF400000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsX] = 0x4049000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseScalePtsY] = 0x4040000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_interactionPulseDriftRatio] = 0x3FE6666666666666;
  v1 = OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit29_UIFlexInteractionVariantSpec_scaleSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setTrackingDampingRatio_];
  [*&v0[v1] setTrackingResponse_];
  [*&v0[v1] setRetargetImpulse_];
  return [*&v0[v1] setTrackingRetargetImpulse_];
}

id sub_188F77C58()
{
  v1 = OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_small;
  type metadata accessor for _UILiquidLensViewSmallVariantSpec();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5UIKit21_UILiquidLensViewSpec_large;
  type metadata accessor for _UILiquidLensViewLargeVariantSpec();
  *&v0[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UILiquidLensViewSpec();
  return objc_msgSendSuper2(&v4, sel_initWithDefaultValues);
}

id sub_188F77EF4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UILiquidLensViewVariantSpec();
  objc_msgSendSuper2(&v4, sel_setDefaultValues);
  v1 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setRetargetImpulse_];
  v2 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring] setDampingRatio_];
  [*&v0[v2] setResponse_];
  return [*&v0[v2] setRetargetImpulse_];
}

id sub_188F78040()
{
  v1 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring;
  *&v0[v1] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  v2 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring;
  *&v0[v2] = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_lensHangTime] = 0x3FCC28F5C28F5C29;
  v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_tryMe] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftedDisplacement] = 0x4022000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedDisplacement] = 0x4049000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedBlurRadius] = 0x4018000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_innerShadowRadius] = 0x4008000000000000;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_innerShadowOpacity] = 0x3FBEB851EB851EB8;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_innerShadowOffsetY] = 0x401C000000000000;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UILiquidLensViewVariantSpec();
  return objc_msgSendSuper2(&v4, sel_initWithDefaultValues);
}

id sub_188F78258()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _UILiquidLensViewLargeVariantSpec();
  objc_msgSendSuper2(&v4, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedDisplacement] = 0;
  *&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unliftedBlurRadius] = 0;
  v1 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_liftSpring] setDampingRatio_];
  [*&v0[v1] setResponse_];
  [*&v0[v1] setRetargetImpulse_];
  v2 = OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring;
  [*&v0[OBJC_IVAR____TtC5UIKit28_UILiquidLensViewVariantSpec_unLiftSpring] setDampingRatio_];
  [*&v0[v2] setResponse_];
  return [*&v0[v2] setRetargetImpulse_];
}

id sub_188F78398(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_initWithDefaultValues);
}

id sub_188F783F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_188F78450()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64D660;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFA0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_188A34624(0, &unk_1EA936980);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 valueKeyPath:v8];

  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = objc_opt_self();
  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v11 = sub_18A4A7518();

  v12 = sub_18A4A7258();
  v13 = [v10 sectionWithRows:v11 title:v12];

  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v14;
  *(v0 + 32) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18A64BFA0;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = objc_opt_self();
  v19 = [v18 rowWithTitle:v16 childSettingsKeyPath:v17];

  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_188A34624(0, &qword_1EA934BA8);
  *(v15 + 56) = v20;
  *(v15 + 32) = v19;
  v21 = sub_18A4A7258();
  v22 = sub_18A4A7258();
  v23 = [v18 rowWithTitle:v21 childSettingsKeyPath:v22];

  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v15 + 88) = v20;
  *(v15 + 64) = v23;
  v24 = sub_18A4A7518();

  v25 = sub_18A4A7258();
  v26 = [v10 sectionWithRows:v24 title:v25];

  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 88) = v14;
  *(v0 + 64) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18A64BFB0;
  v28 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v29 = sub_18A4A7258();
  v30 = [objc_opt_self() rowWithTitle:v29 action:v28];

  if (!v30)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v27 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v27 + 32) = v30;
  v31 = sub_18A4A7518();

  v32 = [v10 sectionWithRows_];

  if (v32)
  {
    *(v0 + 120) = v14;
    *(v0 + 96) = v32;
    v33 = sub_18A4A7258();
    v34 = sub_18A4A7518();

    [v10 moduleWithTitle:v33 contents:v34];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_188F789D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A64BFB0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A6539E0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 childSettingsKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_188A34624(0, &qword_1EA934BA8);
  *(v1 + 56) = v6;
  *(v1 + 32) = v5;
  v7 = sub_18A4A7258();
  v8 = sub_18A4A7258();
  v9 = [v4 rowWithTitle:v7 childSettingsKeyPath:v8];

  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 88) = v6;
  *(v1 + 64) = v9;
  v10 = sub_18A4A7258();
  v11 = sub_18A4A7258();
  v12 = [v4 rowWithTitle:v10 childSettingsKeyPath:v11];

  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v1 + 120) = v6;
  *(v1 + 96) = v12;
  v13 = sub_18A4A7258();
  v14 = sub_18A4A7258();
  v15 = [v4 rowWithTitle:v13 childSettingsKeyPath:v14];

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v1 + 152) = v6;
  *(v1 + 128) = v15;
  v16 = sub_18A4A7258();
  v17 = sub_18A4A7258();
  v18 = [v4 rowWithTitle:v16 childSettingsKeyPath:v17];

  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 184) = v6;
  *(v1 + 160) = v18;
  v19 = sub_18A4A7258();
  v20 = sub_18A4A7258();
  v21 = [v4 rowWithTitle:v19 childSettingsKeyPath:v20];

  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = objc_opt_self();
  *(v1 + 216) = v6;
  *(v1 + 192) = v21;
  v23 = sub_18A4A7518();

  v24 = sub_18A4A7258();
  v25 = [v22 sectionWithRows:v23 title:v24];

  if (v25)
  {
    *(v0 + 56) = sub_188A34624(0, &qword_1EA934B98);
    *(v0 + 32) = v25;
    v26 = sub_18A4A7258();
    v27 = sub_18A4A7518();

    [v22 moduleWithTitle:v26 contents:v27];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_188F78E34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18A6510F0;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18A64BFB0;
  v2 = sub_18A4A7258();
  v3 = sub_18A4A7258();
  v4 = objc_opt_self();
  v5 = [v4 rowWithTitle:v2 valueKeyPath:v3];

  if (!v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  v6 = objc_opt_self();
  v7 = sub_188A34624(0, &qword_1EA934B90);
  *(v1 + 56) = v7;
  *(v1 + 32) = v5;
  v8 = sub_18A4A7518();

  v9 = sub_18A4A7258();
  v81 = v6;
  v10 = [v6 sectionWithRows:v8 title:v9];

  if (!v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v82 = sub_188A34624(0, &qword_1EA934B98);
  *(v0 + 56) = v82;
  *(v0 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18A64D660;
  v12 = sub_18A4A7258();
  v13 = sub_18A4A7258();
  v14 = [v4 rowWithTitle:v12 valueKeyPath:v13];

  if (!v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v11 + 56) = v7;
  *(v11 + 32) = v14;
  v15 = sub_18A4A7258();
  v16 = sub_18A4A7258();
  v17 = [v4 &selRef:v15 rollbackKeyplane:v16 withTransformationContext:? + 5];

  if (!v17)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  *(v11 + 88) = v7;
  *(v11 + 64) = v17;
  v18 = sub_18A4A7258();
  v19 = sub_18A4A7258();
  v20 = [v4 &selRef:v18 rollbackKeyplane:v19 withTransformationContext:? + 5];

  if (!v20)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v11 + 120) = v7;
  *(v11 + 96) = v20;
  v21 = sub_18A4A7518();

  v22 = sub_18A4A7258();
  v23 = [v6 sectionWithRows:v21 title:v22];

  if (!v23)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v0 + 88) = v82;
  *(v0 + 64) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_18A64BFA0;
  v25 = sub_18A4A7258();
  v26 = sub_18A4A7258();
  v27 = [v4 &selRef:v25 rollbackKeyplane:v26 withTransformationContext:? + 5];

  if (!v27)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v24 + 56) = v7;
  *(v24 + 32) = v27;
  v28 = sub_18A4A7258();
  v29 = sub_18A4A7258();
  v30 = [v4 &selRef:v28 rollbackKeyplane:v29 withTransformationContext:? + 5];

  if (!v30)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *(v24 + 88) = v7;
  *(v24 + 64) = v30;
  v31 = sub_18A4A7518();

  v32 = sub_18A4A7258();
  v33 = [v6 sectionWithRows:v31 title:v32];

  if (!v33)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v0 + 120) = v82;
  *(v0 + 96) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18A64C6E0;
  v35 = sub_18A4A7258();
  v36 = sub_18A4A7258();
  v37 = [v4 rowWithTitle:v35 valueKeyPath:v36];

  if (!v37)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v34 + 56) = v7;
  *(v34 + 32) = v37;
  v38 = sub_18A4A7258();
  v39 = sub_18A4A7258();
  v40 = [v4 rowWithTitle:v38 valueKeyPath:v39];

  if (!v40)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v34 + 88) = v7;
  *(v34 + 64) = v40;
  v41 = sub_18A4A7258();
  v42 = sub_18A4A7258();
  v43 = [v4 rowWithTitle:v41 valueKeyPath:v42];

  if (!v43)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v34 + 120) = v7;
  *(v34 + 96) = v43;
  v44 = sub_18A4A7258();
  v45 = sub_18A4A7258();
  v46 = [v4 rowWithTitle:v44 valueKeyPath:v45];

  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v34 + 152) = v7;
  *(v34 + 128) = v46;
  v47 = sub_18A4A7518();

  v48 = sub_18A4A7258();
  v49 = [v6 sectionWithRows:v47 title:v48];

  if (!v49)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(v0 + 152) = v82;
  *(v0 + 128) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_18A64C6E0;
  v51 = sub_18A4A7258();
  v52 = sub_18A4A7258();
  v53 = [v4 rowWithTitle:v51 valueKeyPath:v52];

  if (!v53)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v50 + 56) = v7;
  *(v50 + 32) = v53;
  v54 = sub_18A4A7258();
  v55 = sub_18A4A7258();
  v56 = [v4 rowWithTitle:v54 valueKeyPath:v55];

  if (!v56)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *(v50 + 88) = v7;
  *(v50 + 64) = v56;
  v57 = sub_18A4A7258();
  v58 = sub_18A4A7258();
  v59 = [v4 rowWithTitle:v57 valueKeyPath:v58];

  if (!v59)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(v50 + 120) = v7;
  *(v50 + 96) = v59;
  v60 = sub_18A4A7258();
  v61 = sub_18A4A7258();
  v62 = [v4 rowWithTitle:v60 valueKeyPath:v61];

  if (!v62)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  *(v50 + 152) = v7;
  *(v50 + 128) = v62;
  v63 = sub_18A4A7518();

  v64 = sub_18A4A7258();
  v65 = [v81 sectionWithRows:v63 title:v64];

  if (!v65)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 184) = v82;
  *(v0 + 160) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_18A64BFB0;
  v67 = sub_18A4A7258();
  v68 = sub_18A4A7258();
  v69 = [objc_opt_self() rowWithTitle:v67 childSettingsKeyPath:v68];

  if (!v69)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *(v66 + 56) = sub_188A34624(0, &qword_1EA934BA8);
  *(v66 + 32) = v69;
  v70 = sub_18A4A7518();

  v71 = sub_18A4A7258();
  v72 = [v81 sectionWithRows:v70 title:v71];

  if (!v72)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v0 + 216) = v82;
  *(v0 + 192) = v72;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_18A64BFB0;
  v74 = [objc_allocWithZone(MEMORY[0x1E69C6640]) init];
  v75 = sub_18A4A7258();
  v76 = [objc_opt_self() rowWithTitle:v75 action:v74];

  if (!v76)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(v73 + 56) = sub_188A34624(0, &qword_1EA934BA0);
  *(v73 + 32) = v76;
  v77 = sub_18A4A7518();

  v78 = [v81 sectionWithRows_];

  if (v78)
  {
    *(v0 + 248) = v82;
    *(v0 + 224) = v78;
    v79 = sub_18A4A7258();
    v80 = sub_18A4A7518();

    [v81 moduleWithTitle:v79 contents:v80];

    return;
  }

LABEL_47:
  __break(1u);
}