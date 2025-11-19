uint64_t sub_22EFAADD8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E800, &qword_22EFBD430) + 48);

  result = sub_22EFAA464(a4, a1, a2, v7);
  *(a4 + v8) = result;
  return result;
}

unint64_t sub_22EFAAE54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4E8, &unk_22EFBD420);
    v3 = sub_22EFB67FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22EFACBFC(v4, &v13, &qword_27DA9E5A8, &qword_22EFBC3C0);
      v5 = v13;
      v6 = v14;
      result = sub_22EFA9460(v13, v14, MEMORY[0x277D83758], sub_22EFA9538);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22EF76360(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_22EFAAFAC(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFAB064(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22EFB607C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22EFB602C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22EFB614C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22EFAB0E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_22EFB607C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_22EFB602C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22EFAB164(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E438, &qword_22EFBBC60);
  v10 = sub_22EFACA14();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_22EF72654(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v5;
}

unint64_t sub_22EFAB214(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E508, &qword_22EFBC0F8);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_22EF70B68(v5, v6);
      result = sub_22EFA9460(v5, v6, MEMORY[0x277CC92D8], sub_22EFA95F0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22EFAB33C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4F8, &qword_22EFBC0E8);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22EFA9460(v5, v6, MEMORY[0x277D83758], sub_22EFA9538);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22EFAB468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E670, &unk_22EFBCDD0);
    v3 = sub_22EFB67FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22EFACBFC(v4, v13, &qword_27DA9E5B8, &unk_22EFBC3D0);
      result = sub_22EFA94F4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22EF76360(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_22EFAB5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E818, &unk_22EFBD460);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22EF70B68(v7, v8);
      result = sub_22EFA9460(v5, v6, MEMORY[0x277D83758], sub_22EFA9538);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_22EFAB6E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E500, &qword_22EFBC0F0);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22EFA9460(v5, v6, MEMORY[0x277D83758], sub_22EFA9538);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22EFAB810(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7E8, &qword_22EFBD418);
    v3 = sub_22EFB67FC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22EFA9460(v5, v6, MEMORY[0x277D83758], sub_22EFA9538);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_22EFAB94C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v72 = a8;
  v76 = a5;
  v77 = a6;
  v73 = a3;
  v74 = a4;
  v80 = a2;
  v78 = a1;
  v60 = sub_22EFB640C();
  v59 = *(v60 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22EFB631C();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22EFB63FC();
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22EFB62FC();
  v68 = *(v17 - 8);
  v69 = v17;
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v67 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22EFB63EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22EFB62DC();
  v70 = *(v25 - 8);
  v71 = v25;
  v26 = *(v70 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22EFB635C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v58 - v35;
  v75 = a7;
  sub_22EFB632C();
  v37 = (*(v30 + 88))(v36, v29);
  if (v37 == *MEMORY[0x277CC5438])
  {
    sub_22EFACB2C(&qword_27DA9E418, MEMORY[0x277CC5540]);
    sub_22EFB62BC();
    v39 = v73;
    v38 = v74;
    sub_22EF70B68(v73, v74);
    sub_22EFA9AB8(v39, v38, v24);
    sub_22EF708C8(v39, v38);
    sub_22EFB62AC();
    (*(v21 + 8))(v24, v20);
    sub_22EFB62CC();
    sub_22EF708C8(v39, v38);
    v40 = sub_22EFB634C();
    (*(*(v40 - 8) + 8))(v75, v40);
    result = (*(v70 + 8))(v28, v71);
  }

  else
  {
    v42 = v73;
    v43 = v74;
    if (v37 == *MEMORY[0x277CC5440])
    {
      sub_22EFACB2C(&qword_27DA9E7F8, MEMORY[0x277CC5550]);
      v44 = v64;
      v45 = v66;
      sub_22EFB62BC();
      sub_22EF70B68(v42, v43);
      sub_22EFA9CDC(v42, v43, v44);
      sub_22EF708C8(v42, v43);
      v46 = v67;
      sub_22EFB62AC();
      (*(v65 + 8))(v44, v45);
      sub_22EFB62EC();
      sub_22EF708C8(v42, v43);
      v47 = sub_22EFB634C();
      (*(*(v47 - 8) + 8))(v75, v47);
      result = (*(v68 + 8))(v46, v69);
    }

    else
    {
      if (v37 != *MEMORY[0x277CC5448])
      {
        v72 = sub_22EF76314();
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        MEMORY[0x2318FB260](0x206E776F6E6B6E55, 0xEC0000002066646BLL);
        v55 = v75;
        sub_22EFB632C();
        sub_22EFB679C();
        v56 = *(v30 + 8);
        v56(v33, v29);
        sub_22EF74470(v79, *(&v79 + 1), 8, 0);
        swift_willThrow();
        sub_22EF708C8(v76, v77);
        sub_22EF708C8(v78, v80);
        sub_22EF708C8(v42, v43);
        v57 = sub_22EFB634C();
        (*(*(v57 - 8) + 8))(v55, v57);
        return (v56)(v36, v29);
      }

      sub_22EFACB2C(&qword_27DA9E7F0, MEMORY[0x277CC5560]);
      v48 = v58;
      v49 = v60;
      sub_22EFB62BC();
      sub_22EF70B68(v42, v43);
      sub_22EFA9F00(v42, v43, v48);
      sub_22EF708C8(v42, v43);
      v50 = v61;
      sub_22EFB62AC();
      (*(v59 + 8))(v48, v49);
      sub_22EFB630C();
      sub_22EF708C8(v42, v43);
      v51 = sub_22EFB634C();
      (*(*(v51 - 8) + 8))(v75, v51);
      result = (*(v62 + 8))(v50, v63);
    }
  }

  v52 = v72;
  *v72 = v79;
  v53 = v77;
  v52[2] = v76;
  v52[3] = v53;
  v54 = v80;
  v52[4] = v78;
  v52[5] = v54;
  return result;
}

void *sub_22EFAC288(void *a1, uint64_t a2, void *a3, void *a4)
{
  v64 = a1;
  v65 = a2;
  v75 = *MEMORY[0x277D85DE8];
  v6 = sub_22EFB634C();
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v67 = &v55 - v11;
  v12 = sub_22EFB63BC();
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22EFB63DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v72 = a3;
  v73 = a4;
  sub_22EF70B68(a3, a4);
  v24 = v70;
  sub_22EFB63CC();
  if (!v24)
  {
    v58 = a3;
    v59 = a4;
    v70 = v15;
    v60 = v12;
    v62 = v17;
    (*(v17 + 16))(v20, v23, v16);
    v61 = v23;
    if (qword_27DA9E3A0 != -1)
    {
      swift_once();
    }

    v25 = v68;
    v26 = __swift_project_value_buffer(v68, qword_27DA9E7C0);
    v27 = v69 + 16;
    v28 = v25;
    v29 = *(v69 + 16);
    v29(v67, v26, v28);
    v30 = v70;
    sub_22EFB638C();
    v56 = v29;
    v57 = v26;
    v69 = v27;
    v31 = sub_22EFB639C();
    v33 = v32;
    v72 = v64;
    v73 = v65;
    v71 = xmmword_22EFBB8D0;
    sub_22EF8225C();
    v34 = sub_22EFB63AC();
    v67 = 0;
    v35 = v34;
    v37 = v36;
    sub_22EF708C8(v71, *(&v71 + 1));
    v56(v63, v57, v68);
    v39 = v58;
    v38 = v59;
    sub_22EF70B68(v58, v59);
    sub_22EF70B68(v35, v37);
    sub_22EF70B68(v31, v33);
    v40 = v67;
    sub_22EFAB94C(v35, v37, v39, v38, v31, v33, v63, &v74);
    a4 = v35;
    if (v40)
    {
      sub_22EF708C8(v31, v33);
      sub_22EF708C8(v35, v37);
      (*(v66 + 8))(v30, v60);
      (*(v62 + 8))(v61, v16);
    }

    else
    {
      v65 = v35;
      v67 = v37;
      v68 = v33;
      v43 = v31;
      v69 = v16;
      v44 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7D8, &qword_22EFBD408);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22EFBCE00;
      *(inited + 32) = 0x6E6F6973726576;
      *(inited + 40) = 0xE700000000000000;
      *(inited + 48) = 1162563656;
      *(inited + 56) = 0xE400000000000000;
      strcpy((inited + 64), "publicKeyHash");
      *(inited + 78) = -4864;
      *(inited + 80) = sub_22EFB61CC();
      *(inited + 88) = v46;
      *(inited + 96) = 0xD000000000000012;
      *(inited + 104) = 0x800000022EFC6F50;
      *(inited + 112) = sub_22EFB61CC();
      *(inited + 120) = v47;
      *(inited + 128) = 1635017060;
      *(inited + 136) = 0xE400000000000000;
      *(inited + 144) = sub_22EFB61CC();
      *(inited + 152) = v48;
      sub_22EFAB810(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E7E0, &qword_22EFBD410);
      swift_arrayDestroy();
      v49 = sub_22EFB641C();

      v72 = 0;
      v50 = [v44 dataWithJSONObject:v49 options:2 error:&v72];

      v51 = v72;
      v52 = v62;
      v53 = v60;
      v54 = v66;
      if (v50)
      {
        a4 = sub_22EFB61DC();
        sub_22EFAC9E4(&v74);
      }

      else
      {
        a4 = v51;
        sub_22EFB60EC();

        swift_willThrow();
        sub_22EFAC9E4(&v74);
      }

      sub_22EF708C8(v43, v68);
      sub_22EF708C8(v65, v67);
      (*(v54 + 8))(v70, v53);
      (*(v52 + 8))(v61, v69);
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return a4;
}

unint64_t sub_22EFACA14()
{
  result = qword_281477D60;
  if (!qword_281477D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA9E438, &qword_22EFBBC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281477D60);
  }

  return result;
}

uint64_t sub_22EFACAD4(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_22EFA92D8(sub_22EFACB74, v4, a1, a2);
}

uint64_t sub_22EFACB2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EFACB94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22EFACBFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22EFACC78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t sub_22EFACCCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22EFACD50(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_22EFB619C();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_22EFACDD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 8))(&v10);
  v3 = v12;
  v4 = v13;
  v5 = v14;
  v6 = sub_22EFB16B0(a1, v10, v11, v12, v13, v14);
  sub_22EFB1DA0(v3, v4, v5);
  if (v1)
  {
    v24 = v15;
    return sub_22EF7CFF8(&v24, &qword_27DA9E820, &unk_22EFBD668);
  }

  else
  {
    v23 = v15;
    sub_22EF7CFF8(&v23, &qword_27DA9E820, &unk_22EFBD668);
    v9[0] = sub_22EF7E58C(v6);
    v9[1] = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    (*(a1[4] + 8))(v16);
    sub_22EFAED24(a1, v16, v9);
    v21 = v17;
    v22 = v18;
    sub_22EFB1DC0(&v21);
    v20 = v19;
    sub_22EF7CFF8(&v20, &qword_27DA9E820, &unk_22EFBD668);
    return v9[0];
  }
}

uint64_t sub_22EFACFBC(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v147 = *MEMORY[0x277D85DE8];
  v4 = a2[2];
  v5 = *(a2 + 32);
  if (v5 <= 0x3F)
  {
    v6 = sub_22EFB051C(a1, 1);
    if (!v2)
    {
      v7 = *(v4 + 16);
      if (!v7)
      {
        goto LABEL_80;
      }

      v8 = 0;
      v9 = v4 + 32;
      v10 = MEMORY[0x277D84F90];
      v4 = &qword_27DA9E6B8;
      do
      {
        v11 = (v9 + (v8 << 6));
        v12 = v8;
        while (1)
        {
          if (v12 >= v7)
          {
            __break(1u);
LABEL_199:
            __break(1u);
            goto LABEL_200;
          }

          v13 = *v11;
          v14 = v11[1];
          v15 = v11[3];
          v135 = v11[2];
          v136 = v15;
          v133 = v13;
          v134 = v14;
          v8 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_199;
          }

          if (BYTE8(v134))
          {
            sub_22EF82314();
            v4 = swift_allocError();
            *(v75 + 8) = 0;
            *(v75 + 16) = 0;
            *v75 = 5;
            *(v75 + 24) = 3;
            swift_willThrow();

            goto LABEL_185;
          }

          if (v134 == v6)
          {
            break;
          }

          ++v12;
          v11 += 4;
          if (v8 == v7)
          {
            goto LABEL_81;
          }
        }

        v16 = v6;
        sub_22EFACBFC(&v133, &v127, &qword_27DA9E6B8, &unk_22EFBD1C0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22EF9AB28(0, *(v10 + 16) + 1, 1);
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        v19 = v18 + 1;
        v6 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_22EF9AB28((v17 > 1), v18 + 1, 1);
          v4 = &qword_27DA9E6B8;
          v19 = v18 + 1;
          v6 = v16;
        }

        *(v10 + 16) = v19;
        v20 = (v10 + (v18 << 6));
        v21 = v133;
        v22 = v134;
        v23 = v136;
        v20[4] = v135;
        v20[5] = v23;
        v20[2] = v21;
        v20[3] = v22;
      }

      while (v8 != v7);
      goto LABEL_81;
    }

    goto LABEL_185;
  }

  v25 = a2[3];
  v26 = v5 >> 6;
  v28 = v5 >> 6 == 3 && v4 == 3 && v25 == 0;
  if (v28 && v5 == 192)
  {
    v39 = sub_22EFB0E70(a1, 1);
    if (!v2)
    {
      if ((a2[1] & 1) != 0 || (v42 = *a2, *a2 == v39))
      {
        v106 = v40;
        v107 = v41;
        v108 = swift_allocObject();
        *(v108 + 16) = v106;
        *(v108 + 24) = v107;
        v4 = v108 | 0x2000000000000000;
      }

      else
      {
        v43 = 0;
        v44 = *v3;
        v45 = v3[1] >> 62;
        v46 = v39;
        v4 = v40;
        v47 = v41;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v43 = *(v44 + 16);
          }
        }

        else if (v45)
        {
          v43 = v44;
        }

        sub_22EF82314();
        swift_allocError();
        *v113 = v46;
        *(v113 + 8) = v42;
        *(v113 + 16) = v43;
        *(v113 + 24) = 0;
        swift_willThrow();
        sub_22EF708C8(v4, v47);
      }
    }

    goto LABEL_185;
  }

  v29 = sub_22EFB0E70(a1, 0);
  if (v2)
  {
LABEL_185:
    v119 = *MEMORY[0x277D85DE8];
    return v4;
  }

  v32 = v30;
  v33 = v31;
  *&v133 = v29;
  *(&v133 + 1) = v30;
  *&v134 = v31;
  v34 = a2;
  if ((a2[1] & 1) == 0)
  {
    v35 = *a2;
    if (*v34 != v29)
    {
      v36 = *v3;
      v37 = v3[1] >> 62;
      v4 = v29;
      if (v37 > 1)
      {
        v38 = 0;
        if (v37 == 2)
        {
          v38 = *(v36 + 16);
        }
      }

      else if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      sub_22EF82314();
      swift_allocError();
      *v105 = v4;
      *(v105 + 8) = v35;
      *(v105 + 16) = v38;
      *(v105 + 24) = 0;
      goto LABEL_184;
    }
  }

  v48 = v34[5];
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v31 >> 62;
    v51 = HIDWORD(v30) - v30;
    v52 = __OFSUB__(HIDWORD(v30), v30);
    v3 = BYTE6(v31);
    v53 = (v48 + 72);
    while (1)
    {
      v54 = *(v53 - 3);
      v55 = *(v53 - 1);
      if (*(v53 - 32))
      {
        goto LABEL_56;
      }

      v56 = *(v53 - 5);
      if (v50 <= 1)
      {
        break;
      }

      if (v50 == 2)
      {
        v59 = *(v32 + 16);
        v58 = *(v32 + 24);
        v60 = __OFSUB__(v58, v59);
        v57 = v58 - v59;
        if (v60)
        {
          goto LABEL_213;
        }

LABEL_53:
        if (v57 < v56)
        {
          goto LABEL_163;
        }

        goto LABEL_56;
      }

      if (v56 > 0)
      {
        goto LABEL_181;
      }

LABEL_56:
      if (*(v53 - 16))
      {
        goto LABEL_66;
      }

      if (v50 > 1)
      {
        if (v50 != 2)
        {
          if (v54 < 0)
          {
            goto LABEL_181;
          }

          goto LABEL_66;
        }

        v62 = *(v32 + 16);
        v63 = *(v32 + 24);
        v60 = __OFSUB__(v63, v62);
        v61 = v63 - v62;
        if (v60)
        {
          goto LABEL_216;
        }
      }

      else
      {
        v61 = BYTE6(v33);
        if (v50)
        {
          v61 = v51;
          if (v52)
          {
            goto LABEL_215;
          }
        }
      }

      if (v54 < v61)
      {
LABEL_163:
        if (v50 <= 1)
        {
          v4 = v29;
          if (v50)
          {
            v3 = v51;
            if (v52)
            {
              __break(1u);
              goto LABEL_167;
            }
          }

LABEL_182:
          sub_22EF82314();
          swift_allocError();
          *v117 = v4;
          *(v117 + 8) = v3;
          *(v117 + 16) = 0;
          v118 = 1;
LABEL_183:
          *(v117 + 24) = v118;
LABEL_184:
          swift_willThrow();
          sub_22EF708C8(*(&v133 + 1), v134);
          goto LABEL_185;
        }

        if (v50 != 2)
        {
LABEL_181:
          v4 = v29;
          v3 = 0;
          goto LABEL_182;
        }

        v115 = *(v32 + 16);
        v114 = *(v32 + 24);
        v3 = (v114 - v115);
        if (!__OFSUB__(v114, v115))
        {
          v4 = v29;
          goto LABEL_182;
        }

LABEL_230:
        __break(1u);
      }

LABEL_66:
      if ((*v53 & 1) == 0)
      {
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v66 = *(v32 + 16);
            v65 = *(v32 + 24);
            v60 = __OFSUB__(v65, v66);
            v64 = v65 - v66;
            if (v60)
            {
              goto LABEL_218;
            }
          }

          else
          {
            v64 = 0;
          }
        }

        else
        {
          v64 = BYTE6(v33);
          if (v50)
          {
            v64 = v51;
            if (v52)
            {
              goto LABEL_217;
            }
          }
        }

        if (!v55)
        {
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
LABEL_212:
          __break(1u);
LABEL_213:
          __break(1u);
LABEL_214:
          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

        if (v64 == 0x8000000000000000 && v55 == -1)
        {
          __break(1u);
LABEL_80:
          v10 = MEMORY[0x277D84F90];
LABEL_81:
          if (*(v10 + 16))
          {
            v67 = *(v10 + 48);
            v133 = *(v10 + 32);
            v134 = v67;
            v68 = *(v10 + 80);
            v135 = *(v10 + 64);
            v136 = v68;
            sub_22EFACBFC(&v133, &v127, &qword_27DA9E6B8, &unk_22EFBD1C0);

            v69 = *(&v133 + 1);
            v70 = v135;
            v137 = v134;
            v138 = WORD4(v134);
            v139 = v135;
            v71 = v136;
            v140 = v136;
            v141 = *(&v136 + 1);
            v72 = v133;
            v73 = swift_allocObject();
            sub_22EFACBFC(&v133, &v127, &qword_27DA9E6B8, &unk_22EFBD1C0);
            sub_22EFB1DA0(v70, *(&v70 + 1), v71);

            *(v73 + 16) = v72;
            *(v73 + 24) = v69;
            v74 = sub_22EFACFBC(v3, &v137);
            sub_22EF7CFF8(&v133, &qword_27DA9E6B8, &unk_22EFBD1C0);
            *(v73 + 32) = v74;
            v4 = v73 | 0xA000000000000000;
          }

          else
          {

            sub_22EF82314();
            swift_allocError();
            *(v76 + 8) = 0;
            *(v76 + 16) = 0;
            *v76 = 2;
            *(v76 + 24) = 3;
            swift_willThrow();
          }

          goto LABEL_185;
        }

        if (v64 % v55)
        {
          goto LABEL_163;
        }
      }

      v53 += 48;
      if (!--v49)
      {
        goto LABEL_85;
      }
    }

    v57 = BYTE6(v33);
    if (v50)
    {
      v57 = v51;
      if (v52)
      {
        goto LABEL_214;
      }
    }

    goto LABEL_53;
  }

LABEL_85:
  v3 = &v133;
  if (v26 == 1)
  {
LABEL_167:
    v109 = swift_allocObject();
    v110 = v3 + 1;
    if (v5)
    {
      v111 = sub_22EFAE394(v110, v4, v25);
    }

    else
    {
      v111 = sub_22EFADE20(v110, v4, v25);
    }

    *(v109 + 16) = v111;
    v4 = v109 | 0x6000000000000000;
    sub_22EF708C8(*(&v133 + 1), v134);
    goto LABEL_185;
  }

  if (v26 != 2)
  {
    if (v25 | v4 || v5 != 192)
    {
      if (v4 == 1 && !v25 && v5 == 192)
      {
        v120 = v29;
        v121 = swift_allocObject();
        *(v121 + 16) = v120;
        *(v121 + 24) = sub_22EFB10DC(v32, v33);
        v4 = v121 | 0x4000000000000000;
      }

      else
      {
        if (v4 != 2 || v25 || v5 != 192)
        {
          sub_22EF82314();
          swift_allocError();
          *(v117 + 8) = 0;
          *(v117 + 16) = 0;
          *v117 = 2;
          v118 = 3;
          goto LABEL_183;
        }

        v4 = swift_allocObject();
        *(v4 + 16) = sub_22EFB1378(v32, v33) & 1;
      }
    }

    else
    {
      v112 = swift_allocObject();
      *(v112 + 16) = v32;
      *(v112 + 24) = v33;
      v4 = v112 | 0x2000000000000000;
      sub_22EF70B68(v32, v33);
    }

    sub_22EF708C8(v32, v33);
    goto LABEL_185;
  }

  v77 = *(v4 + 48);
  v143 = *(v4 + 32);
  v144 = v77;
  v142 = *(v4 + 16);
  v145 = v143;
  v146 = *(v4 + 48);
  v126 = *(&v77 + 1);
  v124 = swift_allocObject();
  sub_22EFB1E54(&v145, &v127);
  sub_22EFACBFC(&v126, &v127, &qword_27DA9E820, &unk_22EFBD668);
  v78 = MEMORY[0x277D84F90];
  while (1)
  {
    v79 = v33 >> 62;
    if ((v33 >> 62) > 1)
    {
      if (v79 != 2)
      {
        goto LABEL_197;
      }

      v82 = *(v32 + 16);
      v81 = *(v32 + 24);
      v60 = __OFSUB__(v81, v82);
      v80 = v81 - v82;
      if (v60)
      {
        goto LABEL_221;
      }
    }

    else if (v79)
    {
      LODWORD(v80) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
        goto LABEL_222;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v33);
    }

    if (!v80)
    {
LABEL_197:
      *(v124 + 16) = v78;
      sub_22EFB1DC0(&v145);
      sub_22EF7CFF8(&v126, &qword_27DA9E820, &unk_22EFBD668);
      v4 = v124 | 0x8000000000000000;
      sub_22EF708C8(v32, v33);
      goto LABEL_185;
    }

    v125 = v78;
    if (v79 == 2)
    {
      v86 = *(v32 + 16);
      v85 = *(v32 + 24);
      v60 = __OFSUB__(v85, v86);
      v84 = v85 - v86;
      if (v60)
      {
        goto LABEL_223;
      }

      v83 = 0;
    }

    else
    {
      v83 = 0;
      if (v79 == 1)
      {
        LODWORD(v84) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_224;
        }

        v84 = v84;
      }

      else
      {
        v84 = BYTE6(v33);
      }
    }

    if (!v84)
    {
LABEL_179:
      sub_22EF82314();
      swift_allocError();
      *(v116 + 8) = 0;
      *(v116 + 16) = 0;
      *v116 = 0;
      *(v116 + 24) = 3;
      swift_willThrow();

LABEL_180:
      swift_deallocUninitializedObject();
      sub_22EFB1DC0(&v145);
      sub_22EF7CFF8(&v126, &qword_27DA9E820, &unk_22EFBD668);
      sub_22EF708C8(*(&v133 + 1), v134);
      goto LABEL_185;
    }

    if (v79)
    {
      break;
    }

    if ((v33 & 0xFF000000000000) == 0)
    {
      goto LABEL_225;
    }

    v8 = v32;
LABEL_119:
    if ((~v8 & 0x1E) == 0)
    {
      if (v79)
      {
        if (v79 == 2)
        {
          v93 = *(v32 + 16);
        }

        else
        {
          v93 = v32;
        }
      }

      else
      {
        v93 = 0;
      }

      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        goto LABEL_219;
      }

      if (v79 == 2)
      {
        v95 = *(v32 + 24);
      }

      else if (v79 == 1)
      {
        v95 = v32 >> 32;
      }

      else
      {
        v95 = BYTE6(v33);
      }

      if (v95 < v94)
      {
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        goto LABEL_230;
      }

      while (1)
      {
        if (v95 == v94)
        {
          goto LABEL_179;
        }

        if (v79 == 2)
        {
          break;
        }

        if (v79 == 1)
        {
          if (v94 < v32 || v94 >= v32 >> 32)
          {
            goto LABEL_209;
          }

          v97 = v83;
          result = sub_22EFB603C();
          if (!result)
          {
            __break(1u);
LABEL_232:
            __break(1u);
            goto LABEL_233;
          }

          v98 = result;
          v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
          v99 = sub_22EFB605C();
          v100 = v94 - v99;
          if (__OFSUB__(v94, v99))
          {
            goto LABEL_211;
          }

          goto LABEL_133;
        }

        if (v94 >= BYTE6(v33))
        {
          goto LABEL_208;
        }

        v127 = v32;
        v128 = v33;
        v129 = BYTE2(v33);
        v130 = BYTE3(v33);
        v131 = BYTE4(v33);
        v132 = BYTE5(v33);
        v96 = *(&v127 + v94);
LABEL_134:
        v8 = v96 | (v8 << 8);
        ++v94;
        if ((v96 & 0x80) == 0)
        {
          goto LABEL_152;
        }
      }

      if (v94 < *(v32 + 16))
      {
        goto LABEL_207;
      }

      if (v94 >= *(v32 + 24))
      {
        goto LABEL_210;
      }

      v97 = v83;
      result = sub_22EFB603C();
      if (!result)
      {
        goto LABEL_232;
      }

      v98 = result;
      v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
      v101 = sub_22EFB605C();
      v100 = v94 - v101;
      if (__OFSUB__(v94, v101))
      {
        goto LABEL_212;
      }

LABEL_133:
      v96 = *(v98 + v100);
      v83 = v97;
      goto LABEL_134;
    }

LABEL_152:
    if ((BYTE8(v142) & 1) == 0)
    {
      v10 = v142;
      if (v142 != v8)
      {
LABEL_200:

        v4 = 0;
        v122 = v134 >> 62;
        if ((v134 >> 62) > 1)
        {
          if (v122 == 2)
          {
            v4 = *(*(&v133 + 1) + 16);
          }
        }

        else if (v122)
        {
          v4 = SDWORD2(v133);
        }

        sub_22EF82314();
        swift_allocError();
        *v123 = v8;
        *(v123 + 8) = v10;
        *(v123 + 16) = v4;
        *(v123 + 24) = 0;
        swift_willThrow();
        goto LABEL_180;
      }
    }

    v78 = v125;
    v102 = sub_22EFACFBC(&v133 + 8, &v142);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_22EF7E000(0, *(v125 + 2) + 1, 1, v125);
    }

    v104 = *(v78 + 2);
    v103 = *(v78 + 3);
    v4 = v104 + 1;
    if (v104 >= v103 >> 1)
    {
      v78 = sub_22EF7E000((v103 > 1), v104 + 1, 1, v78);
    }

    *(v78 + 2) = v4;
    *&v78[8 * v104 + 32] = v102;
    v32 = *(&v133 + 1);
    v33 = v134;
  }

  if (v79 != 2)
  {
    if (v32 >= v32 >> 32)
    {
      goto LABEL_227;
    }

    result = sub_22EFB603C();
    if (!result)
    {
      goto LABEL_234;
    }

    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v92 = sub_22EFB605C();
    v91 = v32 - v92;
    if (__OFSUB__(v32, v92))
    {
      goto LABEL_228;
    }

    goto LABEL_118;
  }

  v87 = *(v32 + 16);
  if (v87 >= *(v32 + 24))
  {
    goto LABEL_226;
  }

  result = sub_22EFB603C();
  if (result)
  {
    v89 = result;
    v4 = v33 & 0x3FFFFFFFFFFFFFFFLL;
    v90 = sub_22EFB605C();
    v91 = v87 - v90;
    if (__OFSUB__(v87, v90))
    {
      goto LABEL_229;
    }

LABEL_118:
    v8 = *(v89 + v91);
    v83 = 0;
    goto LABEL_119;
  }

LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
  return result;
}

unint64_t sub_22EFADE20(uint64_t *a1, uint64_t a2, char a3)
{
  result = sub_22EFAB6E4(MEMORY[0x277D84F90]);
  v6 = *(a2 + 16);
  if (!v6)
  {
    return result;
  }

  v48 = a2;
  v49 = a3;
  v7 = 0;
  v50 = a2 + 96;
  v51 = a2 + 32;
  v81 = *(a2 + 16);
  while (v7 < v6)
  {
    v8 = (v51 + (v7 << 6));
    v9 = v8[3];
    v72 = v8[2];
    v73 = v9;
    v10 = v8[1];
    v70 = *v8;
    v71 = v10;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_54;
    }

    v12 = result;
    v14 = *(&v70 + 1);
    v13 = v71;
    v15 = BYTE8(v71);
    v16 = BYTE9(v71);
    v18 = *(&v72 + 1);
    v17 = v72;
    v19 = *a1;
    v20 = a1[1];
    v21 = v20 >> 62;
    v56 = v70;
    v54 = v73;
    v53 = *(&v73 + 1);
    if ((v20 >> 62) > 1)
    {
      if (v21 != 2)
      {
        goto LABEL_43;
      }

      v24 = v19 + 16;
      v22 = *(v19 + 16);
      v23 = *(v24 + 8);
      v25 = __OFSUB__(v23, v22);
      v19 = v23 - v22;
      if (v25)
      {
        goto LABEL_56;
      }
    }

    else if (v21)
    {
      v25 = __OFSUB__(HIDWORD(v19), v19);
      LODWORD(v19) = HIDWORD(v19) - v19;
      if (v25)
      {
        goto LABEL_55;
      }

      v19 = v19;
    }

    else
    {
      v19 = BYTE6(v20);
    }

    if (!v19)
    {
LABEL_43:
      if (BYTE9(v71))
      {
        v44 = (v48 + (v7 << 6) + 121);
        v45 = v7 + 1;
        while (v81 != v45)
        {
          if (v45 >= v81)
          {
            goto LABEL_57;
          }

          if (__OFADD__(v45, 1))
          {
            goto LABEL_58;
          }

          v46 = *v44;
          v44 += 64;
          ++v45;
          if ((v46 & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        return result;
      }

LABEL_49:
      sub_22EFACBFC(&v70, &v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
      v41 = v12;

      sub_22EF82314();
      swift_allocError();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *v47 = 1;
      *(v47 + 24) = 3;
      swift_willThrow();
LABEL_40:
      *&v64 = v56;
      *(&v64 + 1) = v14;
      v65 = v13;
      LOBYTE(v66) = v15;
      HIBYTE(v66) = v16;
      *&v67 = v17;
      *(&v67 + 1) = v18;
      v68 = v54;
      v69 = v53;
      sub_22EF7CFF8(&v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
      return v41;
    }

    sub_22EFACBFC(&v70, &v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
    result = sub_22EFB051C(a1, 1);
    if (v58)
    {
      v41 = v12;

      goto LABEL_40;
    }

    v52 = v12;
    v26 = v56;
    *&v64 = v56;
    *(&v64 + 1) = v14;
    v65 = v13;
    LOBYTE(v66) = v15;
    HIBYTE(v66) = v16;
    v27 = v17;
    *&v67 = v17;
    *(&v67 + 1) = v18;
    v28 = v54;
    v68 = v54;
    if (v13 == result)
    {
      v29 = 1;
    }

    else
    {
      v29 = v15;
    }

    v30 = v53;
    v69 = v53;
    if ((v29 & 1) == 0)
    {
      v33 = (v50 + (v7 << 6));
      while (1)
      {
        if ((v16 & 1) == 0)
        {
          v17 = v27;
          v37 = result;
          v54 = v28;
          v53 = v30;
          v56 = v26;

          v38 = *a1;
          v39 = a1[1] >> 62;
          if (v39 > 1)
          {
            v40 = 0;
            if (v39 == 2)
            {
              v40 = *(v38 + 16);
            }
          }

          else if (v39)
          {
            v40 = v38;
          }

          else
          {
            v40 = 0;
          }

          sub_22EF82314();
          swift_allocError();
          *v43 = v37;
          *(v43 + 8) = v13;
          *(v43 + 16) = v40;
          *(v43 + 24) = 0;
          swift_willThrow();
          v15 = 0;
          v16 = 0;
          v41 = v52;
          goto LABEL_40;
        }

        if (v81 == v11)
        {
          break;
        }

        if (v11 >= v81)
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v34 = result;
        v35 = v33[1];
        v60 = *v33;
        v61 = v35;
        v36 = v33[3];
        v62 = v33[2];
        v63 = v36;
        sub_22EFACBFC(&v60, v59, &qword_27DA9E6B8, &unk_22EFBD1C0);
        result = sub_22EF7CFF8(&v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
        v7 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_52;
        }

        v14 = *(&v60 + 1);
        v26 = v60;
        v30 = *(&v63 + 1);
        v28 = v63;
        v18 = *(&v62 + 1);
        v27 = v62;
        v16 = BYTE9(v61);
        v15 = BYTE8(v61);
        v13 = v61;
        v64 = v60;
        v65 = v61;
        v66 = WORD4(v61);
        v67 = v62;
        v68 = v63;
        v69 = *(&v63 + 1);
        if ((BYTE8(v61) & 1) == 0)
        {
          ++v11;
          v33 += 4;
          result = v34;
          if (v61 != v34)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if ((v49 & 1) == 0)
      {
        v17 = v27;
        v54 = v28;
        v53 = v30;
        v56 = v26;
        v41 = v52;

        sub_22EF82314();
        swift_allocError();
        v16 = 1;
        *(v42 + 8) = 0;
        *(v42 + 16) = 0;
        *v42 = 1;
        *(v42 + 24) = 3;
        swift_willThrow();
        v15 = 0;
        goto LABEL_40;
      }

      sub_22EF7CFF8(&v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
      return v52;
    }

    ++v7;
LABEL_21:
    v57 = v26;
    v74 = v13;
    v75 = v15;
    v76 = v16;
    v77 = v27;
    v78 = v18;
    v79 = v28;
    v80 = v30;

    v31 = sub_22EFACFBC(a1, &v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = v52;
    sub_22EF759D4(v31, v57, v14, isUniquelyReferenced_nonNull_native);

    sub_22EF7CFF8(&v64, &qword_27DA9E6B8, &unk_22EFBD1C0);
    result = v60;
    v6 = v81;
    if (v7 == v81)
    {
      return result;
    }
  }

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
  return result;
}

unint64_t sub_22EFAE394(uint64_t *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = *(a2 + 16);

  v109 = v6;
  v83 = a1;
  if (!v6)
  {

    goto LABEL_14;
  }

  v7 = 0;
  v8 = a2 + 32;
  v79 = 96;
  v81 = v6 - 1;
  while (1)
  {
    v9 = (v8 + (v7 << 6));
    v10 = v9[1];
    v93 = *v9;
    v94 = v10;
    v11 = v9[3];
    v95 = v9[2];
    v96 = v11;
    *v97 = v93;
    *&v97[16] = v10;
    *&v97[32] = v95;
    *&v97[48] = v11;
    v85 = v10;
    v90 = BYTE8(v10);
    v12 = v95;
    v13 = v11;
    sub_22EFACBFC(&v93, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
    sub_22EFACBFC(v97, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);

    sub_22EFB1DA0(v12, *(&v12 + 1), v13);

    if (v90)
    {
      break;
    }

    v14 = v7 + 1;

    if (v14 == v109)
    {

      sub_22EF7CFF8(v97, &qword_27DA9E6B8, &unk_22EFBD1C0);
      goto LABEL_75;
    }

    v77 = v14;
    v84 = v4;
    v16 = v79;
    v15 = v81;
    do
    {
      v17 = *(a2 + v16 + 16);
      v99 = *(a2 + v16);
      v100 = v17;
      v18 = *(a2 + v16 + 48);
      v101 = *(a2 + v16 + 32);
      v102 = v18;
      v19 = v100;
      v91 = BYTE8(v100);
      v20 = v101;
      v21 = v18;
      sub_22EFACBFC(&v99, v98, &qword_27DA9E6B8, &unk_22EFBD1C0);
      sub_22EFACBFC(&v99, v98, &qword_27DA9E6B8, &unk_22EFBD1C0);

      sub_22EFB1DA0(v20, *(&v20 + 1), v21);

      if ((v91 & 1) != 0 || v85 == v19)
      {

        sub_22EF82314();
        swift_allocError();
        *(v22 + 8) = 0;
        *(v22 + 16) = 0;
        *v22 = 2;
        *(v22 + 24) = 3;
        swift_willThrow();
        sub_22EF7CFF8(&v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
        sub_22EF7CFF8(v97, &qword_27DA9E6B8, &unk_22EFBD1C0);
      }

      sub_22EF7CFF8(&v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
      v16 += 64;
      --v15;
    }

    while (v15);

    sub_22EF7CFF8(v97, &qword_27DA9E6B8, &unk_22EFBD1C0);
    v7 = v77;
    v79 += 64;
    --v81;
    v4 = v84;
    v8 = a2 + 32;
    if (v77 == v109)
    {
LABEL_75:

      if (v109 > 0x40)
      {
        sub_22EF82314();
        swift_allocError();
        *(v71 + 8) = 0;
        *(v71 + 16) = 0;
        *v71 = 2;
        v72 = 3;
LABEL_70:
        *(v71 + 24) = v72;
        return swift_willThrow();
      }

LABEL_14:
      result = sub_22EFAB6E4(MEMORY[0x277D84F90]);
      v86 = 0;
      v89 = result;
      v92 = (a2 + 32);
      while (1)
      {
LABEL_15:
        v24 = *a1;
        v25 = a1[1];
        v26 = v25 >> 62;
        if ((v25 >> 62) > 1)
        {
          if (v26 != 2)
          {
            goto LABEL_56;
          }

          v29 = v24 + 16;
          v27 = *(v24 + 16);
          v28 = *(v29 + 8);
          v30 = __OFSUB__(v28, v27);
          v31 = v28 - v27;
          if (v30)
          {
            goto LABEL_81;
          }

          if (!v31)
          {
            goto LABEL_56;
          }
        }

        else if (v26)
        {
          v30 = __OFSUB__(HIDWORD(v24), v24);
          v32 = HIDWORD(v24) - v24;
          if (v30)
          {
            __break(1u);
LABEL_81:
            __break(1u);
            return result;
          }

          if (!v32)
          {
LABEL_56:
            if (!v109)
            {
              return v89;
            }

            v62 = 0;
            for (i = v92; ; i += 4)
            {
              v64 = i[1];
              v93 = *i;
              v94 = v64;
              v65 = i[3];
              v95 = i[2];
              v96 = v65;
              *v97 = v93;
              *&v97[16] = v64;
              *&v97[32] = v95;
              *&v97[48] = v65;
              sub_22EFACBFC(&v93, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
              sub_22EFACBFC(v97, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);

              v66 = v97[25];
              sub_22EFB1DA0(*&v97[32], *&v97[40], v97[48]);

              if ((v66 & 1) == 0 && ((v86 >> v62) & 1) == 0)
              {
                break;
              }

              sub_22EF7CFF8(v97, &qword_27DA9E6B8, &unk_22EFBD1C0);
              if (v109 == ++v62)
              {
                return v89;
              }
            }

            sub_22EF82314();
            swift_allocError();
            *(v67 + 8) = 0;
            *(v67 + 16) = 0;
            *v67 = 3;
            *(v67 + 24) = 3;
            goto LABEL_72;
          }
        }

        else if (!BYTE6(v25))
        {
          goto LABEL_56;
        }

        v33 = sub_22EFB051C(a1, 1);
        if (v4)
        {
        }

        v34 = v33;
        v35 = v109;
        if (v109)
        {
          v36 = 0;
          v37 = MEMORY[0x277D84F90];
          do
          {
            v38 = &v92[4 * v36];
            v39 = v36;
            while (1)
            {
              if (v39 >= v35)
              {
                __break(1u);
LABEL_78:
                __break(1u);
                goto LABEL_79;
              }

              v40 = v38[1];
              v93 = *v38;
              v94 = v40;
              v41 = v38[3];
              v95 = v38[2];
              v96 = v41;
              v36 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_78;
              }

              v42 = v38[2];
              *&v97[56] = v38[3];
              *&v97[40] = v42;
              v43 = *v38;
              *&v97[24] = v38[1];
              *&v97[8] = v43;
              *v97 = v39;
              if ((v97[32] & 1) != 0 || *&v97[24] == v34)
              {
                break;
              }

              sub_22EFACBFC(&v93, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
              sub_22EF7CFF8(v97, &qword_27DA9E7B0, &unk_22EFBD2D0);
              ++v39;
              v38 += 4;
              v35 = v109;
              if (v36 == v109)
              {
                goto LABEL_42;
              }
            }

            sub_22EFACBFC(&v93, &v99, &qword_27DA9E6B8, &unk_22EFBD1C0);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v98[0] = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22EF9AB08(0, *(v37 + 16) + 1, 1);
              v37 = v98[0];
            }

            v46 = *(v37 + 16);
            v45 = *(v37 + 24);
            if (v46 >= v45 >> 1)
            {
              sub_22EF9AB08((v45 > 1), v46 + 1, 1);
              v37 = v98[0];
            }

            *(v37 + 16) = v46 + 1;
            v47 = v37 + 72 * v46;
            *(v47 + 32) = *v97;
            v48 = *&v97[16];
            v49 = *&v97[32];
            v50 = *&v97[48];
            *(v47 + 96) = *&v97[64];
            *(v47 + 64) = v49;
            *(v47 + 80) = v50;
            *(v47 + 48) = v48;
            v35 = v109;
          }

          while (v36 != v109);
        }

        else
        {
          v37 = MEMORY[0x277D84F90];
        }

LABEL_42:
        a1 = v83;
        if (*(v37 + 16) == 1)
        {
          break;
        }

        if ((a3 & 1) == 0)
        {

          v68 = 0;
          v69 = *v83;
          v70 = v83[1] >> 62;
          if (v70 > 1)
          {
            if (v70 == 2)
            {
              v68 = *(v69 + 16);
            }
          }

          else if (v70)
          {
            v68 = v69;
          }

          sub_22EF82314();
          swift_allocError();
          *v71 = v34;
          *(v71 + 8) = v68;
          *(v71 + 16) = 0;
          v72 = 2;
          goto LABEL_70;
        }

        sub_22EFB0E70(v83, 0);
        v4 = 0;
        result = sub_22EF708C8(v51, v52);
      }

      v53 = *(v37 + 48);
      v54 = *(v37 + 80);
      *&v97[32] = *(v37 + 64);
      *&v97[48] = v54;
      *&v97[64] = *(v37 + 96);
      *v97 = *(v37 + 32);
      *&v97[16] = v53;
      sub_22EFACBFC(v97, &v93, &qword_27DA9E7B0, &unk_22EFBD2D0);

      if (*v97 > 0x40uLL)
      {
        v55 = 0;
        goto LABEL_49;
      }

      if (*v97 == 64)
      {
        v78 = 0;
      }

      else
      {
        v55 = 1 << v97[0];
LABEL_49:
        if ((v55 & v86) != 0)
        {
LABEL_79:

          sub_22EF82314();
          swift_allocError();
          *(v76 + 8) = 0;
          *(v76 + 16) = 0;
          *v76 = 6;
          *(v76 + 24) = 3;
          swift_willThrow();
          v74 = &qword_27DA9E7B0;
          v75 = &unk_22EFBD2D0;
          return sub_22EF7CFF8(v97, v74, v75);
        }

        if (*v97 <= 0x40uLL)
        {
          v56 = 1 << v97[0];
        }

        else
        {
          v56 = 0;
        }

        v78 = v56;
      }

      v80 = *&v97[8];
      v88 = *&v97[16];
      v57 = *&v97[40];
      v58 = *&v97[48];
      v103 = *&v97[24];
      v104 = *&v97[32];
      v105 = *&v97[40];
      v106 = *&v97[48];
      v59 = v97[56];
      v107 = v97[56];
      v108 = *&v97[64];
      sub_22EFACBFC(v97, &v93, &qword_27DA9E7B0, &unk_22EFBD2D0);
      sub_22EFB1DA0(v57, v58, v59);

      v4 = 0;
      v60 = sub_22EFACFBC(v83, &v103);
      v86 |= v78;
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v93 = v89;
      sub_22EF759D4(v60, v80, v88, v61);

      result = sub_22EF7CFF8(v97, &qword_27DA9E7B0, &unk_22EFBD2D0);
      v89 = v93;
      goto LABEL_15;
    }
  }

  sub_22EF82314();
  swift_allocError();
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  *v73 = 2;
  *(v73 + 24) = 3;
LABEL_72:
  swift_willThrow();
  v74 = &qword_27DA9E6B8;
  v75 = &unk_22EFBD1C0;
  return sub_22EF7CFF8(v97, v74, v75);
}

uint64_t sub_22EFAED24(uint64_t result, uint64_t a2, void *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 32);
  v8 = *a2;
  if (v6)
  {
    if (v7 >= 0x40)
    {
      sub_22EF82314();
      swift_allocError();
      v39 = 2;
LABEL_109:
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = v39;
      *(v38 + 24) = 3;
      return swift_willThrow();
    }

    v8 = 0;
  }

  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = v7 >> 6;
  if (v7 >> 6 <= 1)
  {
    if (v11)
    {
      if (*(a2 + 8))
      {
        goto LABEL_144;
      }

      v40 = result;
      result = sub_22EFAFAC8(result, *(a2 + 16));
      if (!v3)
      {
        v41 = result;
        sub_22EFB1E8C(v8);
        sub_22EFB02C8(v41, a3);
        return sub_22EFB2424(v40, v10, a3);
      }

      return result;
    }

    v12 = *(result + 24);
    v13 = __swift_project_boxed_opaque_existential_1(result, v12);
    *(&v86 + 1) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    v15 = sub_22EFAF7A8(v89, &v85);
    v17 = v16;
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v85);
    if (v3)
    {
      return result;
    }

    v81 = a3;
    v18 = *(v10 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = v10 + 32;
      v21 = MEMORY[0x277D84F90];
      v102 = v10 + 32;
      do
      {
        v22 = (v20 + (v19 << 6));
        v23 = v19;
        while (1)
        {
          if (v23 >= v18)
          {
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          v24 = *v22;
          v25 = v22[1];
          v26 = v22[2];
          v88 = v22[3];
          v86 = v25;
          v87 = v26;
          v85 = v24;
          v19 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_134;
          }

          if (v85 == v15 && *(&v85 + 1) == v17)
          {
            break;
          }

          result = sub_22EFB684C();
          if (result)
          {
            break;
          }

          ++v23;
          v22 += 4;
          if (v19 == v18)
          {
            goto LABEL_101;
          }
        }

        sub_22EFACBFC(&v85, &v83, &qword_27DA9E6B8, &unk_22EFBD1C0);
        result = swift_isUniquelyReferenced_nonNull_native();
        v82[0] = v21;
        if ((result & 1) == 0)
        {
          result = sub_22EF9AB28(0, *(v21 + 16) + 1, 1);
          v21 = v82[0];
        }

        v20 = v102;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          result = sub_22EF9AB28((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v21 = v82[0];
        }

        *(v21 + 16) = v30;
        v31 = (v21 + (v29 << 6));
        v32 = v85;
        v33 = v86;
        v34 = v88;
        v31[4] = v87;
        v31[5] = v34;
        v31[2] = v32;
        v31[3] = v33;
      }

      while (v19 != v18);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

LABEL_101:

    if (*(v21 + 16))
    {
      v72 = *(v21 + 48);
      v85 = *(v21 + 32);
      v86 = v72;
      v73 = *(v21 + 80);
      v87 = *(v21 + 64);
      v88 = v73;
      sub_22EFACBFC(&v85, &v83, &qword_27DA9E6B8, &unk_22EFBD1C0);

      v94 = v86;
      v95 = WORD4(v86);
      v96 = v87;
      v97 = v88;
      v98 = *(&v88 + 1);
      sub_22EFAED24(v89, &v94, v81);
      sub_22EF7CFF8(&v85, &qword_27DA9E6B8, &unk_22EFBD1C0);
    }

    else
    {

      sub_22EF82314();
      swift_allocError();
      *(v74 + 8) = 0;
      *(v74 + 16) = 0;
      *v74 = 2;
      *(v74 + 24) = 3;
      swift_willThrow();
    }

    v37 = v89;
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  if (v11 == 2)
  {
    v35 = *(v10 + 48);
    v92 = *(v10 + 32);
    v93 = v35;
    v91 = *(v10 + 16);
    v99 = v92;
    v100 = *(v10 + 48);
    v101[0] = *(&v35 + 1);
    sub_22EFB1DF0(result, &v83);
    sub_22EFB1E54(&v99, v82);
    sub_22EFACBFC(v101, v82, &qword_27DA9E820, &unk_22EFBD668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E830, &qword_22EFBD680);
    if (!swift_dynamicCast())
    {
      v90 = 0;
      memset(v89, 0, sizeof(v89));
      sub_22EF7CFF8(v89, &qword_27DA9E838, &unk_22EFBD688);
      sub_22EF82314();
      swift_allocError();
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *v63 = 2;
      *(v63 + 24) = 3;
      swift_willThrow();
      sub_22EFB1DC0(&v99);
      return sub_22EF7CFF8(v101, &qword_27DA9E820, &unk_22EFBD668);
    }

    result = sub_22EEF729C(v89, &v85);
    if (v6)
    {
      goto LABEL_145;
    }

    v36 = sub_22EFB005C(&v85, &v91);
    if (!v3)
    {
      v64 = v36;
      sub_22EFB1E8C(v8);
      sub_22EFB02C8(v64, a3);
      v65 = *(&v86 + 1);
      v66 = v87;
      __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
      result = (*(v66 + 16))(v65, v66);
      v67 = result;
      v68 = *(result + 16);
      if (v68)
      {
        v69 = 0;
        v70 = result + 32;
        while (v69 < *(v67 + 16))
        {
          sub_22EFB1DF0(v70, &v83);
          sub_22EFAED24(&v83, &v91, a3);
          ++v69;
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v83);
          v70 += 40;
          if (v68 == v69)
          {
            goto LABEL_95;
          }
        }

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
        goto LABEL_143;
      }

LABEL_95:
      sub_22EFB1DC0(&v99);
      sub_22EF7CFF8(v101, &qword_27DA9E820, &unk_22EFBD668);

      v37 = &v85;
      return __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }

    goto LABEL_29;
  }

  if (!(v9 | v10) && v7 == 192)
  {
    v42 = a3;
    sub_22EFB1DF0(result, &v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    result = swift_dynamicCast();
    if (result)
    {
      v45 = v83;
      v44 = v84;
      v46 = *(a2 + 40);
      v47 = *(v46 + 16);
      v48 = v84 >> 62;
      a3 = v42;
      if (!v47)
      {
LABEL_96:
        if (v6)
        {
          goto LABEL_146;
        }

        result = sub_22EFB1E8C(v8);
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v78 = *(v83 + 16);
            v77 = *(v83 + 24);
            v71 = v77 - v78;
            if (__OFSUB__(v77, v78))
            {
              __break(1u);
              __swift_destroy_boxed_opaque_existential_0Tm(&v83);

LABEL_29:
              sub_22EFB1DC0(&v99);
              sub_22EF7CFF8(v101, &qword_27DA9E820, &unk_22EFBD668);
              v37 = &v85;
              return __swift_destroy_boxed_opaque_existential_0Tm(v37);
            }
          }

          else
          {
            v71 = 0;
          }
        }

        else
        {
          if (v48)
          {
            goto LABEL_121;
          }

          v71 = BYTE6(v84);
        }

LABEL_124:
        sub_22EFB02C8(v71, a3);
        sub_22EFB61FC();
        return sub_22EF708C8(v45, v44);
      }

      v49 = HIDWORD(v83) - v83;
      v7 = __OFSUB__(HIDWORD(v83), v83);
      v10 = BYTE6(v84);
      v50 = (v46 + 72);
      while (1)
      {
        v51 = *(v50 - 3);
        v52 = *(v50 - 1);
        if (*(v50 - 32))
        {
          goto LABEL_54;
        }

        v53 = *(v50 - 5);
        if (v48 <= 1)
        {
          break;
        }

        if (v48 == 2)
        {
          result = *(v83 + 16);
          v55 = *(v83 + 24);
          v56 = __OFSUB__(v55, result);
          v54 = v55 - result;
          if (v56)
          {
            goto LABEL_137;
          }

          goto LABEL_51;
        }

        if (v53 > 0)
        {
          goto LABEL_111;
        }

LABEL_54:
        if (*(v50 - 16))
        {
          goto LABEL_64;
        }

        if (v48 <= 1)
        {
          v57 = BYTE6(v84);
          if (v48)
          {
            v57 = v49;
            if (v7)
            {
              goto LABEL_139;
            }
          }

LABEL_61:
          if (v51 < v57)
          {
            goto LABEL_111;
          }

          goto LABEL_64;
        }

        if (v48 == 2)
        {
          v59 = *(v83 + 16);
          v58 = *(v83 + 24);
          v56 = __OFSUB__(v58, v59);
          v57 = v58 - v59;
          if (v56)
          {
            goto LABEL_140;
          }

          goto LABEL_61;
        }

        if (v51 < 0)
        {
          goto LABEL_111;
        }

LABEL_64:
        if ((*v50 & 1) == 0)
        {
          if (v48 > 1)
          {
            if (v48 == 2)
            {
              v62 = *(v83 + 16);
              v61 = *(v83 + 24);
              v56 = __OFSUB__(v61, v62);
              v60 = v61 - v62;
              if (v56)
              {
                goto LABEL_142;
              }
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = BYTE6(v84);
            if (v48)
            {
              v60 = v49;
              if (v7)
              {
                goto LABEL_141;
              }
            }
          }

          if (!v52)
          {
            goto LABEL_136;
          }

          if (v60 == 0x8000000000000000 && v52 == -1)
          {
            __break(1u);
            goto LABEL_78;
          }

          if (v60 % v52)
          {
LABEL_111:
            if (v6)
            {
              sub_22EF82314();
              swift_allocError();
              *(v75 + 8) = 0;
              *(v75 + 16) = 0;
              *v75 = 5;
              v76 = 3;
              goto LABEL_131;
            }

            if (v48 > 1)
            {
              if (v48 == 2)
              {
                v80 = *(v83 + 16);
                v79 = *(v83 + 24);
                v10 = v79 - v80;
                if (!__OFSUB__(v79, v80))
                {
                  goto LABEL_130;
                }

                __break(1u);
              }

              v10 = 0;
            }

            else if (v48)
            {
              v10 = v49;
              if (v7)
              {
                __break(1u);
LABEL_121:
                if (!__OFSUB__(HIDWORD(v83), v83))
                {
                  v71 = HIDWORD(v83) - v83;
                  goto LABEL_124;
                }

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
                return result;
              }
            }

LABEL_130:
            sub_22EF82314();
            swift_allocError();
            *v75 = v5;
            *(v75 + 8) = v10;
            *(v75 + 16) = 0;
            v76 = 1;
LABEL_131:
            *(v75 + 24) = v76;
            swift_willThrow();
            return sub_22EF708C8(v45, v44);
          }
        }

        v50 += 48;
        if (!--v47)
        {
          goto LABEL_96;
        }
      }

      v54 = BYTE6(v84);
      if (v48)
      {
        v54 = v49;
        if (v7)
        {
          goto LABEL_138;
        }
      }

LABEL_51:
      if (v54 < v53)
      {
        goto LABEL_111;
      }

      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_78:
  if (v10 == 1 && !v9 && v7 == 192)
  {
    sub_22EFB1DF0(result, &v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    result = swift_dynamicCast();
    if (result)
    {
      if (v6)
      {
        goto LABEL_147;
      }

      return sub_22EFB1FA0(v8, v83, a3);
    }

    goto LABEL_108;
  }

  if (v10 != 2 || v9 || v7 != 192)
  {
    sub_22EFB1DF0(result, &v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    if (swift_dynamicCast())
    {
      sub_22EFB61FC();
      return sub_22EF708C8(v83, v84);
    }

    goto LABEL_108;
  }

  sub_22EFB1DF0(result, &v85);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_108:
    sub_22EF82314();
    swift_allocError();
    v39 = 4;
    goto LABEL_109;
  }

  if (v6)
  {
    goto LABEL_148;
  }

  return sub_22EFB22A8(v8, v83, a3);
}

uint64_t sub_22EFAF7A8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = sub_22EFB694C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EF76370(a2, &v20);
  sub_22EFB692C();
  v8 = sub_22EFB693C();
  (*(v4 + 8))(v7, v3);
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_22EFB66EC();
  swift_getObjectType();
  result = sub_22EFB66EC();
  if (v13 == result)
  {
    v15 = sub_22EFB66FC();
    swift_unknownObjectRelease();
    if (v15)
    {
      swift_unknownObjectRelease();

LABEL_8:
      sub_22EF82314();
      swift_allocError();
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *v16 = 2;
      *(v16 + 24) = 3;
      swift_willThrow();
      return v8;
    }

    sub_22EFB67AC();
    swift_unknownObjectRelease();

    v22[0] = v20;
    v22[1] = v21[0];
    v22[2] = v21[1];
    sub_22EFACBFC(v22, &v20, &qword_27DA9E840, &unk_22EFBD698);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_22EF7CFF8(v22, &qword_27DA9E840, &unk_22EFBD698);
      memset(v17, 0, sizeof(v17));
      v18 = 0;
      sub_22EF7CFF8(v17, &qword_27DA9E848, &unk_22EFBD6A8);
      goto LABEL_8;
    }

    sub_22EEF729C(v17, v19);
    result = sub_22EFACBFC(v22, &v20, &qword_27DA9E840, &unk_22EFBD698);
    if (*(&v20 + 1))
    {
      v8 = v20;
      sub_22EF7CFF8(v22, &qword_27DA9E840, &unk_22EFBD698);
      sub_22EEF729C(v19, v23);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFAFAC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22EFB694C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v11);
  v56[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
  v47 = v10;
  result = sub_22EFB692C();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = a2 + 88;
    v42 = v6;
    v41 = v7;
    v46 = v15;
    v40 = a2 + 88;
    while (2)
    {
      v43 = v16;
      v19 = (v18 + (v17 << 6));
      while (1)
      {
        if (v17 >= v15)
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (__OFADD__(v17, 1))
        {
          goto LABEL_24;
        }

        v48 = v17 + 1;
        v20 = *(v19 - 6);
        v45 = *(v19 - 5);
        v44 = *(v19 - 32);
        v49 = *(v19 - 31);
        v22 = *(v19 - 3);
        v21 = *(v19 - 2);
        v23 = *(v19 - 8);
        v24 = *v19;
        v50 = v3;
        v25 = *(v19 - 7);

        v51 = v22;
        v52 = v21;
        v53 = v23;
        sub_22EFB2938(v22, v21, v23);
        v58 = v24;

        v26 = sub_22EFB693C();
        MEMORY[0x28223BE20](v26);
        *(&v39 - 2) = v25;
        *(&v39 - 1) = v20;
        v27 = v50;
        v28 = sub_22EFB678C();
        v3 = v27;

        if (*(v28 + 16) != 1)
        {

          sub_22EF82314();
          swift_allocError();
          *(v34 + 8) = 0;
          *(v34 + 16) = 0;
          *v34 = 2;
          *(v34 + 24) = 3;
          swift_willThrow();
          sub_22EFB1DA0(v51, v52, v53);
          goto LABEL_18;
        }

        sub_22EFACBFC(v28 + 32, v56, &qword_27DA9E840, &unk_22EFBD698);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E4B0, &qword_22EFBBE60);
        swift_dynamicCast();
        if (v55)
        {
          break;
        }

        sub_22EF7CFF8(&v54, &qword_27DA9E4B0, &qword_22EFBBE60);
        if ((v49 & 1) == 0)
        {
          v35 = v53;
          v36 = v52;
          v37 = v51;
          sub_22EF82314();
          swift_allocError();
          *(v38 + 8) = 0;
          *(v38 + 16) = 0;
          *v38 = 3;
          *(v38 + 24) = 3;
          swift_willThrow();
          sub_22EFB1DA0(v37, v36, v35);
LABEL_18:

          (*(v41 + 8))(v47, v42);
          return v43;
        }

        sub_22EFB1DA0(v51, v52, v53);

        ++v17;
        v19 += 8;
        v15 = v46;
        if (v48 == v46)
        {
          v6 = v42;
          v7 = v41;
          v16 = v43;
          goto LABEL_20;
        }
      }

      sub_22EF76360(&v54, v57);
      sub_22EF76370(v57, &v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
      swift_dynamicCast();
      v30 = v51;
      v29 = v52;
      v31 = v53;
      v32 = sub_22EFB16B0(v56, v45, v44, v51, v52, v53);
      if (v27)
      {
        sub_22EFB1DA0(v30, v29, v31);

        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        (*(v41 + 8))(v47, v42);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        return v43;
      }

      v33 = v32;
      sub_22EFB1DA0(v30, v29, v31);

      result = __swift_destroy_boxed_opaque_existential_0Tm(v57);
      v16 = v43 + v33;
      v6 = v42;
      v7 = v41;
      if (!__OFADD__(v43, v33))
      {
        result = __swift_destroy_boxed_opaque_existential_0Tm(v56);
        v17 = v48;
        v15 = v46;
        v18 = v40;
        if (v48 != v46)
        {
          continue;
        }

        goto LABEL_20;
      }

      break;
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    v16 = 0;
LABEL_20:
    (*(v7 + 8))(v47, v6);
    return v16;
  }

  return result;
}

uint64_t sub_22EFB005C(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = MEMORY[0x277D84F90];
    result = sub_22EF9AB48(0, v8, 0);
    v10 = 0;
    v11 = v25;
    v12 = v7 + 32;
    while (v10 < *(v7 + 16))
    {
      sub_22EFB1DF0(v12, v24);
      v13 = sub_22EFB16B0(v24, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v24);

        return a2;
      }

      v14 = v13;
      v15 = v7;
      v16 = v8;
      result = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      v25 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_22EF9AB48((v17 > 1), v18 + 1, 1);
        v11 = v25;
      }

      ++v10;
      *(v11 + 16) = v18 + 1;
      *(v11 + 8 * v18 + 32) = v14;
      v12 += 40;
      v8 = v16;
      v19 = v16 == v10;
      v7 = v15;
      v3 = 0;
      if (v19)
      {

        v20 = *(v11 + 16);
        if (v20)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

    goto LABEL_20;
  }

  v11 = MEMORY[0x277D84F90];
  v20 = *(MEMORY[0x277D84F90] + 16);
  if (v20)
  {
LABEL_11:
    a2 = 0;
    for (i = 32; ; i += 8)
    {
      v22 = *(v11 + i);
      v23 = __OFADD__(a2, v22);
      a2 += v22;
      if (v23)
      {
        break;
      }

      if (!--v20)
      {

        return a2;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_17:

  return 0;
}

uint64_t sub_22EFB024C(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_22EFA8420(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove((result + 32), a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFB02C8(int64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a1 <= 127)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    if (a2[1] >> 62 == 2)
    {
      v7 = *(*a2 + 24);
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    v21 = sub_22EF7E8F0();
    LOBYTE(v19[0]) = a1;
    v18 = *__swift_project_boxed_opaque_existential_1(v19, v20);
    sub_22EFB616C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v4 = 71 - __clz(a1);
    v5 = v4 >> 3;
    if (a2[1] >> 62 == 2)
    {
      v6 = *(*a2 + 24);
    }

    v8 = (v4 >> 3) | 0x80;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    v20 = v9;
    v10 = sub_22EF7E8F0();
    v21 = v10;
    LOBYTE(v19[0]) = v8;
    v16 = *__swift_project_boxed_opaque_existential_1(v19, v9);
    sub_22EFB616C();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    v11 = v5 + 1;
    v12 = 8 * v5 - 8;
    do
    {
      if (a2[1] >> 62 == 2)
      {
        v14 = *(*a2 + 24);
      }

      v20 = v9;
      v21 = v10;
      LOBYTE(v19[0]) = a1 >> (v12 & 0x38);
      v17 = *__swift_project_boxed_opaque_existential_1(v19, v9);
      sub_22EFB616C();
      result = __swift_destroy_boxed_opaque_existential_0Tm(v19);
      --v11;
      v12 -= 8;
    }

    while (v11 > 1);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFB051C(uint64_t a1, char a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_66;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_88;
    }

    if (!v12)
    {
      goto LABEL_66;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_89;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_66;
    }
  }

  else if (!BYTE6(v7))
  {
LABEL_66:
    sub_22EF82314();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = 0;
    *(v36 + 24) = 3;
    swift_willThrow();
    goto LABEL_67;
  }

  if (v8 == 2)
  {
    v13 = *(v6 + 16);
  }

  v14 = sub_22EFB619C();
  v2 = v14;
  if ((~v14 & 0x1E) != 0)
  {
    if ((a2 & 1) == 0)
    {
      v19 = *a1;
      v20 = *(a1 + 8);
      v21 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        v22 = 0;
        if (v21 == 2)
        {
          v22 = *(v19 + 16);
        }
      }

      else
      {
        v22 = v19;
        if (!v21)
        {
          v22 = 0;
        }
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_91;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v26 = *(v19 + 24);
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v21)
      {
        v26 = v19 >> 32;
      }

      else
      {
        v26 = BYTE6(v20);
      }

      if (v26 >= v22 + 1)
      {
        sub_22EF70B68(*a1, *(a1 + 8));
        v43 = sub_22EFB618C();
        v45 = v44;
        sub_22EF708C8(v19, v20);
        sub_22EF708C8(*a1, *(a1 + 8));
        *a1 = v43;
        *(a1 + 8) = v45;
        goto LABEL_67;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      v18 = 0;
      if (v17 == 2)
      {
        v18 = *(v15 + 16);
      }
    }

    else
    {
      v18 = v15;
      if (!v17)
      {
        v18 = 0;
      }
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_90;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v25 = *(v15 + 24);
        if (v25 >= v23)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v25 = 0;
        if (v23 <= 0)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v24 = BYTE6(v16);
      v15 >>= 32;
      if (v17)
      {
        v25 = v15;
      }

      else
      {
        v25 = v24;
      }

      if (v25 >= v23)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_44:
    for (i = *(v3 + v15); ; i = *(&v49 + v23))
    {
      v2 = i | (v2 << 8);
      ++v23;
      if ((i & 0x80) == 0)
      {
        break;
      }

LABEL_46:
      if (v25 == v23)
      {
        goto LABEL_66;
      }

      v28 = *a1;
      v29 = *(a1 + 8);
      v30 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v30 == 2)
        {
          if (v23 >= *(v28 + 16))
          {
            if (v23 < *(v28 + 24))
            {
              v31 = sub_22EFB603C();
              if (v31)
              {
                v3 = v31;
                v32 = sub_22EFB605C();
                v15 = v23 - v32;
                if (!__OFSUB__(v23, v32))
                {
                  goto LABEL_44;
                }

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

LABEL_96:
              __break(1u);
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      if (v30)
      {
        if (v23 >= v28 >> 32 || v23 < v28)
        {
          goto LABEL_85;
        }

        v34 = sub_22EFB603C();
        if (!v34)
        {
          goto LABEL_95;
        }

        v3 = v34;
        v35 = sub_22EFB605C();
        v15 = v23 - v35;
        if (__OFSUB__(v23, v35))
        {
          __break(1u);
          goto LABEL_66;
        }

        goto LABEL_44;
      }

      if (v23 >= BYTE6(v29))
      {
        goto LABEL_84;
      }

      v49 = *a1;
      v50 = BYTE2(v28);
      v51 = BYTE3(v28);
      v52 = BYTE4(v28);
      v53 = BYTE5(v28);
      v54 = BYTE6(v28);
      v55 = HIBYTE(v28);
      v56 = v29;
      v57 = BYTE2(v29);
      v58 = BYTE3(v29);
      v59 = BYTE4(v29);
      v60 = BYTE5(v29);
    }

    if ((a2 & 1) == 0)
    {
      v39 = *a1;
      v40 = *(a1 + 8);
      v41 = v40 >> 62;
      if ((v40 >> 62) > 1)
      {
        if (v41 == 2)
        {
          v42 = *(v39 + 24);
        }

        else
        {
          v42 = 0;
        }
      }

      else if (v41)
      {
        v42 = v39 >> 32;
      }

      else
      {
        v42 = BYTE6(v40);
      }

      if (v42 > v23 - 1)
      {
        v46 = sub_22EFB618C();
        v48 = v47;
        sub_22EF708C8(*a1, *(a1 + 8));
        *a1 = v46;
        *(a1 + 8) = v48;
        goto LABEL_67;
      }

      goto LABEL_93;
    }
  }

LABEL_67:
  v37 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22EFB095C(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_39;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (v11)
    {
      goto LABEL_110;
    }

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else if (v8)
  {
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_111;
    }

    if (HIDWORD(v6) == v6)
    {
      goto LABEL_39;
    }
  }

  else if (!BYTE6(v7))
  {
    goto LABEL_39;
  }

  result = sub_22EFACD50(v6, v7);
  if ((result & 0x100) != 0)
  {
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    return result;
  }

  v2 = result;
  if (result <= 0x7Fu)
  {
    v1 = *a1;
    v3 = *(a1 + 8);
    v14 = v3 >> 62;
    if ((v3 >> 62) > 1)
    {
      v15 = 0;
      if (v14 == 2)
      {
        v15 = *(v1 + 16);
      }
    }

    else
    {
      v15 = v1;
      if (!v14)
      {
        v15 = 0;
      }
    }

    v4 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_112;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        v19 = v1 >> 32;
      }

      else
      {
        v19 = BYTE6(v3);
      }

      goto LABEL_42;
    }

LABEL_31:
    if (v14 == 2)
    {
      v19 = *(v1 + 24);
    }

    else
    {
      v19 = 0;
    }

LABEL_42:
    if (v19 < v4)
    {
      goto LABEL_113;
    }

    goto LABEL_43;
  }

  v16 = *a1;
  v17 = *(a1 + 8);
  v14 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v14 != 2)
    {
LABEL_39:
      sub_22EF82314();
      swift_allocError();
      v24[2] = 0;
      v25 = v24 + 3;
      *v24 = 0;
LABEL_40:
      v24[1] = 0;
      *v25 = 3;
      swift_willThrow();
      goto LABEL_44;
    }

    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v11 = __OFSUB__(v20, v21);
    v18 = v20 - v21;
    if (v11)
    {
      __break(1u);
      goto LABEL_31;
    }
  }

  else if (v14)
  {
    LODWORD(v18) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
      goto LABEL_115;
    }

    v18 = v18;
  }

  else
  {
    v18 = BYTE6(v17);
  }

  v22 = result & 0x7F;
  if (v18 <= v22)
  {
    goto LABEL_39;
  }

  if (v14)
  {
    if (v14 == 2)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      v23 = v16;
    }
  }

  else
  {
    v23 = 0;
  }

  if (__OFADD__(v23, 1))
  {
    goto LABEL_114;
  }

  result = sub_22EFB619C();
  if (!result)
  {
    sub_22EF82314();
    swift_allocError();
    v24[2] = 0;
    v25 = v24 + 3;
    *v24 = 8;
    goto LABEL_40;
  }

  v30 = 0;
  v1 = *a1;
  v3 = *(a1 + 8);
  v31 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v30 = *(v1 + 16);
    }
  }

  else if (v31)
  {
    v30 = v1;
  }

  v32 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    goto LABEL_116;
  }

  v33 = 0;
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v33 = *(v1 + 16);
    }
  }

  else if (v31)
  {
    v33 = v1;
  }

  v34 = v33 + 1;
  if (__OFADD__(v33, 1))
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v11 = __OFADD__(v34, v22);
  v35 = v34 + v22;
  if (v11)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v35 < v32)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (v32 == v35)
  {
    v2 = 0;
    goto LABEL_89;
  }

  v2 = 0;
  v36 = -v33 - v22;
  while (1)
  {
    v38 = *a1;
    v39 = *(a1 + 8);
    v40 = v39 >> 62;
    if ((v39 >> 62) > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_122;
      }

      if (v32 < *(v38 + 16))
      {
        goto LABEL_105;
      }

      if (v32 >= *(v38 + 24))
      {
        goto LABEL_108;
      }

      result = sub_22EFB603C();
      if (!result)
      {
        goto LABEL_124;
      }

      v41 = result;
      result = sub_22EFB605C();
      v42 = v32 - result;
      if (__OFSUB__(v32, result))
      {
        goto LABEL_109;
      }

      goto LABEL_67;
    }

    if (v40)
    {
      break;
    }

    if (v32 >= BYTE6(v39))
    {
      goto LABEL_106;
    }

    v47 = *a1;
    v48 = v39;
    v49 = BYTE2(v39);
    v50 = BYTE3(v39);
    v51 = BYTE4(v39);
    v52 = BYTE5(v39);
    v37 = *(&v47 + v32);
LABEL_68:
    ++v32;
    v2 = v37 | (v2 << 8);
    if (v36 + v32 == 1)
    {
      goto LABEL_88;
    }
  }

  if (v32 >= v38 >> 32 || v32 < v38)
  {
    goto LABEL_107;
  }

  result = sub_22EFB603C();
  if (!result)
  {
    goto LABEL_123;
  }

  v41 = result;
  result = sub_22EFB605C();
  v42 = v32 - result;
  if (!__OFSUB__(v32, result))
  {
LABEL_67:
    v37 = *(v41 + v42);
    goto LABEL_68;
  }

  __break(1u);
LABEL_88:
  v1 = *a1;
  v3 = *(a1 + 8);
  v31 = v3 >> 62;
LABEL_89:
  v44 = v22 + 1;
  if (v31 > 1)
  {
    v45 = 0;
    if (v31 == 2)
    {
      v45 = *(v1 + 16);
    }
  }

  else
  {
    v45 = v1;
    if (!v31)
    {
      v45 = 0;
    }
  }

  if (__OFADD__(v45, v44))
  {
LABEL_120:
    __break(1u);
  }

  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v46 = *(v1 + 24);
    }

    else
    {
      v46 = 0;
    }
  }

  else if (v31)
  {
    v46 = v1 >> 32;
  }

  else
  {
    v46 = BYTE6(v3);
  }

  if (v46 < v45 + v44)
  {
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
    goto LABEL_117;
  }

LABEL_43:
  sub_22EF70B68(v1, v3);
  v26 = sub_22EFB618C();
  v28 = v27;
  sub_22EF708C8(v1, v3);
  sub_22EF708C8(*a1, *(a1 + 8));
  *a1 = v26;
  *(a1 + 8) = v28;
LABEL_44:
  v29 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22EFB0E70(uint64_t *a1, char a2)
{
  v5 = *a1;
  v6 = a1[1];
  sub_22EF70B68(*a1, v6);
  v7 = sub_22EFB051C(a1, 0);
  if (v2)
  {
    return sub_22EF708C8(v5, v6);
  }

  v27 = v7;
  result = sub_22EFB095C(a1);
  v9 = *a1;
  v10 = a1[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 == 2)
    {
      v12 = *(v9 + 16);
    }
  }

  else
  {
    v12 = v9;
    if (!v11)
    {
      v12 = 0;
    }
  }

  v13 = v12 + result;
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (*(v9 + 24) >= v13)
      {
        goto LABEL_14;
      }
    }

    else if (v13 <= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  if (v11)
  {
    v14 = v9 >> 32;
  }

  else
  {
    v14 = BYTE6(v10);
  }

  if (v14 < v13)
  {
LABEL_27:
    sub_22EF82314();
    swift_allocError();
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
    *v19 = 0;
    *(v19 + 24) = 3;
    swift_willThrow();
    return sub_22EF708C8(v5, v6);
  }

LABEL_14:
  v15 = 0;
  if (a2)
  {
    v16 = v5;
  }

  else
  {
    v16 = *a1;
  }

  if (a2)
  {
    v17 = v6;
  }

  else
  {
    v17 = a1[1];
  }

  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_32;
    }

    v15 = *(v16 + 16);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_32;
    }

    v15 = v16;
  }

  result = sub_22EF70B68(v16, v17);
LABEL_32:
  if (v13 < v15)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  sub_22EFB618C();
  sub_22EF708C8(v16, v17);
  v20 = *a1;
  v21 = a1[1];
  sub_22EF70B68(*a1, v21);
  result = sub_22EF708C8(v20, v21);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v23 = *(v20 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  else if (v22)
  {
    v23 = v20 >> 32;
  }

  else
  {
    v23 = BYTE6(v21);
  }

  if (v23 >= v13)
  {
    v24 = sub_22EFB618C();
    v26 = v25;
    sub_22EF708C8(v20, v21);
    sub_22EF708C8(v5, v6);
    *a1 = v24;
    a1[1] = v26;
    return v27;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_22EFB10DC(uint64_t a1, unint64_t i)
{
  v4 = *(sub_22EFB622C() - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = i >> 62;
  if ((i >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_18;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 < 1)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (!v9)
  {
    if (!BYTE6(i))
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(a1) - a1 < 1)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (v9 == 2)
  {
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v12 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (v12)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v16 <= 8)
    {
      goto LABEL_20;
    }

LABEL_18:
    sub_22EF82314();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = 0;
    *(v17 + 24) = 3;
    swift_willThrow();
    return i;
  }

  if (v9 != 1)
  {
    if (BYTE6(i) <= 8uLL)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (HIDWORD(a1) - a1 > 8)
  {
    goto LABEL_18;
  }

LABEL_20:
  v18 = v6;
  v19 = sub_22EFACD50(a1, i);
  if ((v19 & 0x100) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v19 & 0x80) == 0)
  {
    if (v9 == 2)
    {
      v20 = *(a1 + 16);
    }

    sub_22EF70B68(a1, i);
    sub_22EFB623C();
    v21 = sub_22EFB621C();
    for (i = 0; (v21 & 0x100) == 0; v21 = sub_22EFB621C())
    {
      i = v21 | (i << 8);
    }

    (*(v4 + 8))(v8, v18);
    if ((i & 0x8000000000000000) == 0)
    {
      return i;
    }

    goto LABEL_30;
  }

LABEL_34:
  result = sub_22EFB67BC();
  __break(1u);
  return result;
}

uint64_t sub_22EFB1378(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_21;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 != 1)
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v2)
      {
        if (v2 == 2)
        {
          if (*(result + 16) == *(result + 24))
          {
            goto LABEL_21;
          }
        }

        else if (result == result >> 32)
        {
          goto LABEL_21;
        }
      }

      else if ((a2 & 0xFF000000000000) == 0)
      {
        goto LABEL_21;
      }

      v7 = sub_22EFB619C();
      if (!v7)
      {
        return v7 & 1;
      }

      if (v7 == 255)
      {
        LOBYTE(v7) = 1;
        return v7 & 1;
      }

LABEL_21:
      sub_22EF82314();
      swift_allocError();
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *v8 = 7;
      *(v8 + 24) = 3;
      swift_willThrow();
      return v7 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EFB149C(unint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (!a1)
  {
    result = 1;
LABEL_21:
    v17 = *MEMORY[0x277D85DE8];
    return result;
  }

  __src = bswap64(a1);
  v1 = sub_22EFAAFAC(&__src, &v25);
  v3 = v2;
  v4 = 0;
  v5 = BYTE6(v2);
  if (v5)
  {
    while (1)
    {
      v18 = v1;
      v19 = v3;
      v20 = BYTE2(v3);
      v21 = BYTE3(v3);
      v22 = BYTE4(v3);
      v23 = BYTE5(v3);
      if (*(&v18 + v4))
      {
        break;
      }

      if (v5 == ++v4)
      {
        goto LABEL_9;
      }
    }

    if (v5 < v4)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }
  }

LABEL_9:
  v7 = sub_22EFB618C();
  v9 = v8;
  sub_22EF708C8(v1, v3 & 0xFFFFFFFFFFFFFFLL);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2)
    {
      v11 = 0;
      goto LABEL_19;
    }

    v13 = *(v7 + 16);
    v12 = *(v7 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      goto LABEL_24;
    }

    v11 = HIDWORD(v7) - v7;
    goto LABEL_19;
  }

  if (v10)
  {
    goto LABEL_16;
  }

  v11 = BYTE6(v9);
LABEL_19:
  v14 = sub_22EFACD50(v7, v9);
  if ((v14 & 0x100) == 0)
  {
    v15 = v14;
    sub_22EF708C8(v7, v9);
    v16 = (v15 >> 7) & 1;
    result = v11 + v16;
    if (!__OFADD__(v11, v16))
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_26:
  result = sub_22EFB67BC();
  __break(1u);
  return result;
}

uint64_t sub_22EFB16B0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) <= 1u)
  {
    if (!(a6 >> 6))
    {
      a2 = a1[3];
      v10 = __swift_project_boxed_opaque_existential_1(a1, a2);
      *(&v59 + 1) = a2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
      (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v10, a2);
      v12 = sub_22EFAF7A8(v63, &v58);
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(&v58);
      if (v6)
      {
        return a2;
      }

      v15 = *(a4 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = a4 + 32;
        a2 = MEMORY[0x277D84F90];
        do
        {
          v18 = (v17 + (v16 << 6));
          v19 = v16;
          while (1)
          {
            if (v19 >= v15)
            {
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

            v20 = *v18;
            v21 = v18[1];
            v22 = v18[3];
            v60 = v18[2];
            v61 = v22;
            v58 = v20;
            v59 = v21;
            v16 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_81;
            }

            v23 = v58 == v12 && *(&v58 + 1) == v14;
            if (v23 || (sub_22EFB684C() & 1) != 0)
            {
              break;
            }

            ++v19;
            v18 += 4;
            if (v16 == v15)
            {
              goto LABEL_60;
            }
          }

          sub_22EFACBFC(&v58, &v56, &qword_27DA9E6B8, &unk_22EFBD1C0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22EF9AB28(0, *(a2 + 16) + 1, 1);
            a2 = v62;
          }

          v26 = *(a2 + 16);
          v25 = *(a2 + 24);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            sub_22EF9AB28((v25 > 1), v26 + 1, 1);
            v27 = v26 + 1;
            a2 = v62;
          }

          *(a2 + 16) = v27;
          v28 = (a2 + (v26 << 6));
          v29 = v58;
          v30 = v59;
          v31 = v61;
          v28[4] = v60;
          v28[5] = v31;
          v28[2] = v29;
          v28[3] = v30;
        }

        while (v16 != v15);
        goto LABEL_60;
      }

LABEL_59:
      a2 = MEMORY[0x277D84F90];
LABEL_60:

      if (*(a2 + 16))
      {
        v43 = *(a2 + 48);
        v58 = *(a2 + 32);
        v59 = v43;
        v44 = *(a2 + 80);
        v60 = *(a2 + 64);
        v61 = v44;
        sub_22EFACBFC(&v58, &v56, &qword_27DA9E6B8, &unk_22EFBD1C0);

        a2 = sub_22EFB16B0(v63, v59, BYTE8(v59), v60, *(&v60 + 1), v61);
        sub_22EF7CFF8(&v58, &qword_27DA9E6B8, &unk_22EFBD1C0);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        return a2;
      }

      sub_22EF82314();
      swift_allocError();
      *(v45 + 8) = 0;
      *(v45 + 16) = 0;
      *v45 = 2;
      *(v45 + 24) = 3;
      swift_willThrow();
      v34 = v63;
LABEL_25:
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      return a2;
    }

    v35 = sub_22EFAFAC8(a1, a4, a5, a6 & 1);
    if (v6)
    {
      return a2;
    }

    goto LABEL_68;
  }

  if (a6 >> 6 == 2)
  {
    v32 = *(a4 + 48);
    v65 = *(a4 + 32);
    v66 = v32;
    v64 = *(a4 + 16);
    v67 = v65;
    v68 = *(a4 + 48);
    v69 = *(&v32 + 1);
    sub_22EFB1DF0(a1, &v58);
    sub_22EFB1E54(&v67, v63);
    sub_22EFACBFC(&v69, v63, &qword_27DA9E820, &unk_22EFBD668);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E830, &qword_22EFBD680);
    swift_dynamicCast();
    v33 = sub_22EFB005C(&v56, &v64);
    if (v6)
    {
      sub_22EFB1DC0(&v67);
      sub_22EF7CFF8(&v69, &qword_27DA9E820, &unk_22EFBD668);
      v34 = &v56;
      goto LABEL_25;
    }

    v37 = v33;
    sub_22EFB1DC0(&v67);
    sub_22EF7CFF8(&v69, &qword_27DA9E820, &unk_22EFBD668);
    __swift_destroy_boxed_opaque_existential_0Tm(&v56);
    v35 = v37;
    if ((a3 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_69:
    sub_22EF82314();
    swift_allocError();
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    *v49 = 5;
    *(v49 + 24) = 3;
    swift_willThrow();
    return a2;
  }

  if (a5 | a4 || a6 != 192)
  {
    if (a4 == 1 && !a5 && a6 == 192)
    {
      sub_22EFB1DF0(a1, &v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
      swift_dynamicCast();
      v35 = sub_22EFB149C(v56);
      if ((a3 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }

    if (a4 == 2 && !a5 && a6 == 192)
    {
      v35 = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }

    sub_22EFB1DF0(a1, &v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    swift_dynamicCast();
    v46 = v56;
    v47 = v57;
    v48 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v48 != 2)
      {
        sub_22EF708C8(v56, v57);
        return 0;
      }

      v52 = *(v56 + 16);
      v51 = *(v56 + 24);
      v46 = sub_22EF708C8(v56, v57);
      v53 = __OFSUB__(v51, v52);
      a2 = v51 - v52;
      if (!v53)
      {
        return a2;
      }

      __break(1u);
    }

    else if (!v48)
    {
      sub_22EF708C8(v56, v57);
      return BYTE6(v57);
    }

    v54 = HIDWORD(v46);
    v55 = v46;
    sub_22EF708C8(v46, v47);
    if (!__OFSUB__(v54, v55))
    {
      return v54 - v55;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  sub_22EFB1DF0(a1, &v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
  swift_dynamicCast();
  v36 = v57 >> 62;
  if ((v57 >> 62) <= 1)
  {
    if (!v36)
    {
      sub_22EF708C8(v56, v57);
      v35 = BYTE6(v57);
      if ((a3 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_69;
    }

    sub_22EF708C8(v56, v57);
    if (!__OFSUB__(HIDWORD(v56), v56))
    {
      v35 = HIDWORD(v56) - v56;
      goto LABEL_68;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v36 != 2)
  {
    sub_22EF708C8(v56, v57);
    v35 = 0;
    if (a3)
    {
      goto LABEL_69;
    }

    goto LABEL_40;
  }

  v41 = *(v56 + 16);
  v40 = *(v56 + 24);
  sub_22EF708C8(v56, v57);
  v35 = v40 - v41;
  if (__OFSUB__(v40, v41))
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_68:
  if (a3)
  {
    goto LABEL_69;
  }

LABEL_40:
  if (a2 < 255)
  {
    v38 = 1;
    v39 = 1;
    if (v35 <= 127)
    {
      goto LABEL_56;
    }

    goto LABEL_45;
  }

  if (a2 < 0xFFFF)
  {
    v38 = 2;
    if (v35 > 127)
    {
LABEL_45:
      v39 = ((71 - __clz(v35)) >> 3) + 1;
LABEL_56:
      v42 = v38 + v39;
      a2 = v42 + v35;
      if (!__OFADD__(v42, v35))
      {
        return a2;
      }

      __break(1u);
      goto LABEL_59;
    }

LABEL_55:
    v39 = 1;
    goto LABEL_56;
  }

LABEL_84:
  result = sub_22EFB67BC();
  __break(1u);
  return result;
}

uint64_t sub_22EFB1DA0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_22EFB1DF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22EFB1E8C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1 <= 254)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    result = sub_22EFB617C();
LABEL_8:
    v2 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (a1 <= 0xFFFE)
  {
    v3 = bswap32(a1) >> 16;
    if (*(sub_22EFB024C(&v3, &v4) + 16))
    {
      sub_22EFB617C();
    }

    goto LABEL_8;
  }

  result = sub_22EFB67BC();
  __break(1u);
  return result;
}

uint64_t sub_22EFB1FA0(uint64_t a1, unint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_22EFB1E8C(a1);
  v5 = sub_22EFB149C(a2);
  sub_22EFB02C8(v5, a3);
  if (!a2)
  {
    if (a3[1] >> 62 == 2)
    {
      v15 = *(*a3 + 24);
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    v29 = sub_22EF7E8F0();
    LOBYTE(v22) = 0;
    LOBYTE(__src) = *__swift_project_boxed_opaque_existential_1(&v22, v28);
    sub_22EFB616C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(&v22);
    goto LABEL_19;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    __src = bswap64(a2);
    v6 = sub_22EFAAFAC(&__src, &v22);
    v8 = v7;
    v9 = 0;
    v10 = BYTE6(v7);
    if (v10)
    {
      while (1)
      {
        v22 = v6;
        v23 = v8;
        v24 = BYTE2(v8);
        v25 = BYTE3(v8);
        v26 = BYTE4(v8);
        v27 = BYTE5(v8);
        if (*(&v22 + v9))
        {
          break;
        }

        if (v10 == ++v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 < v9)
      {
        __break(1u);
      }
    }

LABEL_10:
    v11 = sub_22EFB618C();
    v13 = v12;
    sub_22EF708C8(v6, v8 & 0xFFFFFFFFFFFFFFLL);
    v14 = sub_22EFACD50(v11, v13);
    if ((v14 & 0x100) == 0)
    {
      if ((v14 & 0x80) != 0)
      {
        if (a3[1] >> 62 == 2)
        {
          v16 = *(*a3 + 24);
        }

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
        v28 = v18;
        v29 = sub_22EF7E8F0();
        LOBYTE(v22) = 0;
        v20 = *__swift_project_boxed_opaque_existential_1(&v22, v18);
        sub_22EFB616C();
        __swift_destroy_boxed_opaque_existential_0Tm(&v22);
      }

      sub_22EFB61FC();
      result = sub_22EF708C8(v11, v13);
LABEL_19:
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
  }

  result = sub_22EFB67BC();
  __break(1u);
  return result;
}

uint64_t sub_22EFB22A8(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_22EFB1E8C(a1);
  if (a3[1] >> 62 == 2)
  {
    v5 = *(*a3 + 24);
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
  v14 = v6;
  v7 = sub_22EF7E8F0();
  v15 = v7;
  LOBYTE(v13[0]) = 1;
  v11 = *__swift_project_boxed_opaque_existential_1(v13, v6);
  sub_22EFB616C();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  if (a3[1] >> 62 == 2)
  {
    v8 = *(*a3 + 24);
  }

  v14 = v6;
  v15 = v7;
  LOBYTE(v13[0]) = a2 << 31 >> 31;
  v12 = *__swift_project_boxed_opaque_existential_1(v13, v6);
  sub_22EFB616C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v13);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EFB2424(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v39 = sub_22EFB694C();
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v8);
  v50[3] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  v41 = v7;
  sub_22EFB692C();
  v11 = *(a2 + 16);
  if (!v11)
  {
    return (*(v38 + 8))(v41, v39);
  }

  v12 = (a2 + 48);
  v13 = &qword_27DA9E4B0;
  while (1)
  {
    v14 = v13;
    v42 = v11;
    v15 = *(v12 - 1);
    v43 = *(v12 - 2);
    v16 = *(v12 + 8);
    v17 = *(v12 + 9);
    v19 = v12[2];
    v18 = v12[3];
    v20 = *(v12 + 32);
    v21 = v12[5];
    v52 = *v12;
    v53 = v16;
    v54 = v17;
    v55 = v19;
    v56 = v18;
    v57 = v20;
    v58 = v21;

    v44 = v19;
    v45 = v18;
    v46 = v20;
    sub_22EFB2938(v19, v18, v20);
    v47 = v21;

    v22 = sub_22EFB693C();
    MEMORY[0x28223BE20](v22);
    *(&v37 - 2) = v43;
    *(&v37 - 1) = v15;
    v23 = v59;
    v24 = sub_22EFB678C();
    v59 = v23;

    if (*(v24 + 16) != 1)
    {

      sub_22EF82314();
      v29 = swift_allocError();
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      *v30 = 2;
      *(v30 + 24) = 3;
      v59 = v29;
      swift_willThrow();
      sub_22EFB1DA0(v44, v45, v46);
      goto LABEL_13;
    }

    sub_22EFACBFC(v24 + 32, v50, &qword_27DA9E840, &unk_22EFBD698);

    v13 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, &qword_22EFBBE60);
    swift_dynamicCast();
    if (!v49)
    {
      break;
    }

    sub_22EF76360(&v48, v51);
    sub_22EF76370(v51, &v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E828, &qword_22EFBD678);
    swift_dynamicCast();
    v25 = v59;
    sub_22EFAED24(v50, &v52, v40);
    v26 = v46;
    v27 = v45;
    v28 = v44;
    v59 = v25;
    if (v25)
    {
      sub_22EFB1DA0(v44, v45, v46);

      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      (*(v38 + 8))(v41, v39);
      return __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    sub_22EFB1DA0(v28, v27, v26);

    __swift_destroy_boxed_opaque_existential_0Tm(v50);
LABEL_3:
    v12 += 8;
    v11 = v42 - 1;
    if (v42 == 1)
    {
      return (*(v38 + 8))(v41, v39);
    }
  }

  sub_22EF7CFF8(&v48, v14, &qword_22EFBBE60);
  if (v17)
  {
    sub_22EFB1DA0(v44, v45, v46);

    goto LABEL_3;
  }

  v32 = v46;
  v33 = v45;
  v34 = v44;
  sub_22EF82314();
  v35 = swift_allocError();
  *(v36 + 8) = 0;
  *(v36 + 16) = 0;
  *v36 = 3;
  *(v36 + 24) = 3;
  v59 = v35;
  swift_willThrow();
  sub_22EFB1DA0(v34, v33, v32);
LABEL_13:

  return (*(v38 + 8))(v41, v39);
}

uint64_t sub_22EFB2938(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) <= 1u)
  {
  }

  if (a3 >> 6 == 2)
  {
  }

  return result;
}

uint64_t sub_22EFB2974(void *a1)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  if (*a1 == *(v1 + 16) && v2 == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_22EFB684C() & 1;
  }
}

uint64_t sub_22EFB29E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EFB2A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
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

uint64_t getEnumTagSinglePayload for ASN1Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASN1Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_22EFB2B6C(uint64_t a1)
{
  if (*(a1 + 24) <= 2u)
  {
    return *(a1 + 24);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22EFB2B84(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary12ASN1ItemSpecV11DecoderTypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_22EFB2BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 17))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EFB2C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_22EFB2C84(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_22EFB2CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22EFB2D08(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ASN1ItemSpec.Constraint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_22EFB2DE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22EFB2E28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ASN1ItemSpec.TagSpec(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ASN1ItemSpec.TagSpec(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22EFB2EDC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EFB2EF8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ASN1SequenceSpec.DecodeMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_22EFB2FFC()
{
  result = qword_27DA9E850;
  if (!qword_27DA9E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E850);
  }

  return result;
}

unint64_t sub_22EFB3054()
{
  result = qword_27DA9E858;
  if (!qword_27DA9E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E858);
  }

  return result;
}

unint64_t sub_22EFB30AC()
{
  result = qword_27DA9E860;
  if (!qword_27DA9E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E860);
  }

  return result;
}

unint64_t sub_22EFB3104()
{
  result = qword_27DA9E868;
  if (!qword_27DA9E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E868);
  }

  return result;
}

unint64_t sub_22EFB315C()
{
  result = qword_27DA9E870;
  if (!qword_27DA9E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E870);
  }

  return result;
}

unint64_t sub_22EFB31B4()
{
  result = qword_27DA9E878;
  if (!qword_27DA9E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E878);
  }

  return result;
}

unint64_t sub_22EFB320C()
{
  result = qword_27DA9E880;
  if (!qword_27DA9E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E880);
  }

  return result;
}

unint64_t sub_22EFB3264()
{
  result = qword_27DA9E888;
  if (!qword_27DA9E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E888);
  }

  return result;
}

uint64_t sub_22EFB32B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
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

uint64_t sub_22EFB3398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 160))
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

uint64_t sub_22EFB33EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

double sub_22EFB3474@<D0>(_OWORD *a1@<X8>)
{
  sub_22EFB34B4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

double sub_22EFB34B4@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E6B0, &qword_22EFBD1B8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22EFBC100;
  *(v2 + 32) = 0x656C626154646961;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 195;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = -64;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 88) = MEMORY[0x277D84F90];
  *(v2 + 96) = 0xD000000000000012;
  *(v2 + 104) = 0x800000022EFC6FE0;
  *(v2 + 112) = 196;
  *(v2 + 120) = 256;
  *(v2 + 128) = 0u;
  *(v2 + 144) = -64;
  *(v2 + 152) = &unk_2843B6A40;
  *(v2 + 160) = 0xD000000000000014;
  *(v2 + 168) = 0x800000022EFC7000;
  *(v2 + 176) = 197;
  *(v2 + 184) = 256;
  *(v2 + 192) = 0u;
  *(v2 + 208) = -64;
  *(v2 + 216) = &unk_2843B6A90;
  *(v2 + 224) = 0xD000000000000016;
  *(v2 + 232) = 0x800000022EFC7020;
  *(v2 + 240) = 198;
  *(v2 + 248) = 256;
  *(v2 + 256) = 0u;
  *(v2 + 272) = -64;
  *(v2 + 280) = &unk_2843B6AE0;
  *(v2 + 288) = 0x646F43686374616DLL;
  *(v2 + 296) = 0xEA00000000007365;
  *(v2 + 304) = 199;
  *(v2 + 312) = 256;
  *(v2 + 320) = 0u;
  *(v2 + 336) = -64;
  *(v2 + 344) = &unk_2843B6B30;
  *(v2 + 352) = 0x646F437466696873;
  *(v2 + 360) = 0xEA00000000007365;
  *(v2 + 368) = 200;
  *(v2 + 376) = 256;
  *(v2 + 384) = 0u;
  *(v2 + 400) = -64;
  *(v2 + 408) = &unk_2843B6B80;
  *(v2 + 416) = 0x7367616C66;
  *(v2 + 424) = 0xE500000000000000;
  *(v2 + 432) = 201;
  *(v2 + 440) = 256;
  *(v2 + 448) = 0u;
  *(v2 + 464) = -64;
  *(v2 + 472) = &unk_2843B6BD0;
  *(v2 + 480) = 0xD000000000000013;
  *(v2 + 488) = 0x800000022EFC7040;
  *(v2 + 496) = 202;
  *(v2 + 504) = 256;
  *(v2 + 512) = 0u;
  *(v2 + 528) = -64;
  *(v2 + 536) = &unk_2843B6C20;
  *(v2 + 544) = 0x696669646F4D6672;
  *(v2 + 552) = 0xEB00000000737265;
  *(v2 + 560) = 203;
  *(v2 + 568) = 256;
  *(v2 + 576) = 0u;
  *(v2 + 592) = -64;
  *(v2 + 600) = &unk_2843B6C70;
  *(v2 + 608) = 0xD000000000000018;
  *(v2 + 616) = 0x800000022EFC7060;
  *(v2 + 624) = 204;
  *(v2 + 632) = 256;
  *(v2 + 640) = 0u;
  *(v2 + 656) = -64;
  *(v2 + 664) = &unk_2843B6CC0;
  *a1 = 226;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 64;
  *(a1 + 40) = v4;
  return result;
}

void *DERLogSetBlock(const void *a1)
{
  _Block_release(logBlock);
  result = _Block_copy(a1);
  logBlock = result;
  return result;
}

void DERLog(const char *a1, int a2, char *a3, ...)
{
  va_start(va, a3);
  v5 = 0;
  v6 = 0;
  if (logBlock)
  {
    if (vasprintf(&v6, a3, va) >= 1 && v6)
    {
      asprintf(&v5, "%s/%d : %s", a1, a2, v6);
      (*(logBlock + 16))();
    }

    else
    {
      (*(logBlock + 16))(logBlock, "<failed to format 1>");
    }
  }

  free(v6);
  free(v5);
}

uint64_t DERDecodeItemPB(unsigned __int8 **a1, unint64_t *a2, unint64_t *a3)
{
  v6 = *a1;
  v5 = a1[1];
  DERLog("DERDecodeItemPB", 179, "rem 0x%zx", v5);
  v7 = v5 - 1;
  if (v5 <= 1)
  {
    DERLog("DERDecodeItemPB", 186, "Not enough data for a tag/length, len 0x%zx");
    return 3;
  }

  v11 = *v6;
  v9 = v6 + 1;
  v10 = v11;
  v12 = v11 & 0x1F;
  DERLog("DERDecodeItemPB", 193, "TB 0x%x, TN 0x%llx, long? %d", v11, v12, v12 == 31);
  if (v12 != 31)
  {
LABEL_13:
    *a2 = v12 | ((v10 & 0xE0) << 56);
    v15 = v9 + 1;
    v16 = *v9;
    v17 = v7 - 1;
    if (*v9 < 0)
    {
      v18 = v16 & 0x7F;
      v20 = (v16 & 0x7F) <= 8 && v18 != 0 && v17 >= v18;
      if (!v20 || !*v15)
      {
        DERLog("DERDecodeItemPB", 237, "Underflow at len1 0x%x derLen 0x%zx");
        return 3;
      }

      v22 = 0;
      v23 = (v18 - 1);
      v24 = v23 + 2;
      v25 = v7 - 2;
      v26 = v18;
      do
      {
        v27 = *v15++;
        v22 = v27 | (v22 << 8);
        --v26;
      }

      while (v26);
      v28 = v25 - v23;
      DERLog("DERDecodeItemPB", 246, "LL lol 0x%x len 0x%zx rem 0x%zx", v18, v22, v25 - v23);
      if (!a3 && v22 > v28)
      {
        DERLog("DERDecodeItemPB", 249, "Underflow!");
        return 3;
      }

      if (v22 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v22;
      }

      a2[1] = &v9[v24];
      a2[2] = v29;
      if (a3)
      {
        result = 0;
        *a3 = v22;
        return result;
      }
    }

    else
    {
      DERLog("DERDecodeItemPB", 262, "SL 0x%hhx rem 0x%zx", *v9, v7 - 1);
      if (!a3 && v17 < v16)
      {
        DERLog("DERDecodeItemPB", 266, "Underflow!", v30, v31);
        return 3;
      }

      if (v17 >= v16)
      {
        v21 = v16;
      }

      else
      {
        v21 = v7 - 1;
      }

      a2[1] = v15;
      a2[2] = v21;
      if (a3)
      {
        result = 0;
        *a3 = v16;
        return result;
      }
    }

    return 0;
  }

  if (*v9 == 128)
  {
    DERLog("DERDecodeItemPB", 206, "Invalid next byte 0x%x");
    return 3;
  }

  v12 = 0;
  while (1)
  {
    result = 3;
    if (v7 < 2)
    {
      return result;
    }

    v13 = v12;
    if (v12 >> 57)
    {
      return result;
    }

    v14 = *v9++;
    DERLog("DERDecodeItemPB", 216, "LT byte 0x%x rem 0x%zx", v14, --v7);
    v12 = v14 & 0x7F | (v12 << 7);
    if ((v14 & 0x80000000) == 0)
    {
      if (v13 >> 54)
      {
        return 3;
      }

      goto LABEL_13;
    }
  }
}

uint64_t DERDecodeSeqNext(uint64_t a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 >= v5)
  {
    return 1;
  }

  v9[4] = v2;
  v9[5] = v3;
  v9[0] = v4;
  v9[1] = (v5 - v4);
  result = DERDecodeItemPB(v9, a2, 0);
  if (!result)
  {
    *a1 = a2[1] + a2[2];
  }

  return result;
}

uint64_t DERParseSequenceC(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5)
{
  v8 = *a1;
  if (a5)
  {
    bzero(a4, a5);
    v9 = *a1;
  }

  else
  {
    v9 = *a1;
  }

  v10 = v9 + a1[1];
  v31 = v9;
  v32 = v10;
  if (!a2)
  {
LABEL_21:
    if (v31 != v32)
    {
      DERLog("DERParseSequenceC", 594, "End of spec but 0x%tx bytes remain", v32 - v31);
      return 3;
    }

    return 0;
  }

  v11 = 0;
  v12 = a2;
  v28 = a3 + 16;
  v26 = v8;
  while (1)
  {
    v13 = v31;
    DERLog("DERParseSequenceC", 509, "Item %d off 0x%tx rem 0x%tx", v11, v31 - v8, v32 - v31);
    v29 = 0;
    v30 = 0uLL;
    result = DERDecodeSeqNext(&v31, &v29);
    if (result)
    {
      break;
    }

    v15 = a3;
    v16 = v29;
    DERLog("DERParseSequenceC", 534, "Got tag 0x%llx", v29);
    if (v11 >= a2)
    {
LABEL_23:
      DERLog("DERParseSequenceC", 585, "No spec item for tag!");
      return 2;
    }

    v17 = a2;
    v11 = v11;
    v18 = (v28 + 32 * v11);
    while (1)
    {
      v19 = *v18;
      v20 = *(v18 - 1);
      if ((*v18 & 2) != 0)
      {
        break;
      }

      DERLog("DERParseSequenceC", 540, "  specItem %u tag 0x%llx match %d", v11, v20, v16 == v20);
      if (v16 == v20)
      {
        goto LABEL_15;
      }

      if ((v19 & 1) == 0)
      {
        DERLog("DERParseSequenceC", 547, "!Opt specitem not matched!");
        return 2;
      }

      ++v11;
      v18 += 16;
      if (v12 == v11)
      {
        goto LABEL_23;
      }
    }

    DERLog("DERParseSequenceC", 540, "  specItem %u tag 0x%llx match %d", v11, *(v18 - 1), 1);
LABEL_15:
    v21 = *(v18 + 1);
    if (v21 && !DERCheckConstraints(v21, &v29))
    {
      return 8;
    }

    if ((v19 & 4) == 0)
    {
      v22 = &a4[*(v18 - 2)];
      *v22 = v30;
      if ((v19 & 8) != 0)
      {
        v23 = v30 - v13 + *(v22 + 1);
        *v22 = v13;
        *(v22 + 1) = v23;
      }
    }

    v11 = v11 + 1;
    a2 = v17;
    a3 = v15;
    v8 = v26;
    if (v11 >= v17)
    {
      goto LABEL_21;
    }
  }

  if (result != 1)
  {
    return result;
  }

  if (v11 >= a2)
  {
    return 0;
  }

  v24 = v11;
  for (i = (a3 + 32 * v11 + 16); (*i & 1) != 0; i += 16)
  {
    result = 0;
    if (a2 == ++v24)
    {
      return result;
    }
  }

  DERLog("DERParseSequenceC", 521, "Missing !opt specitem %d, tag 0x%llx", v24, *(i - 1));
  return 5;
}

uint64_t DERCheckConstraints(uint64_t a1, uint64_t a2)
{
  if ((a1 & 1) != 0 && *(a2 + 16) < (a1 >> 1))
  {
    v3 = *(a2 + 16);
    DERLog("DERCheckConstraints", 476, "  failed min len constr %zu < %d");
    return 0;
  }

  if ((a1 & 0x10000) != 0 && *(a2 + 16) > (a1 >> 17))
  {
    v4 = *(a2 + 16);
    DERLog("DERCheckConstraints", 480, "  failed max length constr %zu > %d");
    return 0;
  }

  if ((a1 & 0x100000000) != 0 && *(a2 + 16) % (BYTE4(a1) >> 1))
  {
    v5 = *(a2 + 16);
    DERLog("DERCheckConstraints", 484, "  failed div length constr %zu %% %d != 0");
    return 0;
  }

  return 1;
}

uint64_t DERParseUnsortedSequenceC(uint64_t *a1, unsigned int a2, uint64_t a3, char *a4, size_t a5, char a6)
{
  v40 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v11 = 0;
    v12 = (a3 + 40);
    do
    {
      v13 = a3 + 32 * v11;
      v14 = v12;
      v15 = v11;
      while ((a2 - 1) != v15)
      {
        ++v15;
        v16 = *v14;
        v14 += 4;
        if (*(v13 + 8) == v16)
        {
          DERLog("DERParseUnsortedSequenceC", 618, "Duplicate tag 0x%llx in the spec at indices %d and %d", *(v13 + 8), v11, v15);
          result = 9;
          goto LABEL_12;
        }
      }

      if ((*(v13 + 16) & 2) != 0)
      {
        DERLog("DERParseUnsortedSequenceC", 625, "Forbidden option DER_DEC_ASN_ANY for tag 0x%llx in the spec at index %d", *(v13 + 8), v11);
        result = 2;
        goto LABEL_12;
      }

      ++v11;
      v12 += 4;
    }

    while (a2 > v11);
    v17 = a2;
    MEMORY[0x28223BE20]();
    v19 = v35 - v18;
    bzero(v35 - v18, v17);
    v20 = *a1;
    v35[1] = v35;
    if (a5)
    {
      bzero(a4, a5);
      v21 = *a1;
    }

    else
    {
      v21 = v20;
    }

    v24 = v21 + a1[1];
    v38 = v21;
    v39 = v24;
    while (2)
    {
      DERLog("DERParseUnsortedSequenceC", 643, "Decoding offset 0x%tx, remaining 0x%tx", v21 - v20, v24 - v21);
      v36 = 0;
      v37 = 0uLL;
      result = DERDecodeSeqNext(&v38, &v36);
      if (result)
      {
        if (result == 1)
        {
          v34 = (a3 + 16);
          while ((*v34 & 1) != 0 || *v19)
          {
            v34 += 16;
            ++v19;
            if (!--v17)
            {
              result = 0;
              goto LABEL_12;
            }
          }

          DERLog("DERParseUnsortedSequenceC", 706, "Missing mandatory tag %llx", *(v34 - 1));
          result = 5;
        }
      }

      else
      {
        v25 = v36;
        DERLog("DERParseUnsortedSequenceC", 658, "Got tag 0x%llx", v36);
        v26 = 0;
        v27 = (a3 + 8);
        while (1)
        {
          v28 = *v27;
          v27 += 4;
          if (v25 == v28)
          {
            break;
          }

          if (v17 == ++v26)
          {
            DERLog("DERParseUnsortedSequenceC", 665, "No spec item for tag 0x%llx!", v25);
            if ((a6 & 1) == 0)
            {
              result = 2;
              goto LABEL_12;
            }

            goto LABEL_28;
          }
        }

        if (v19[v26])
        {
          DERLog("DERParseUnsortedSequenceC", 673, "Found duplicate item for tag %llx", v25);
          result = 9;
        }

        else
        {
          v19[v26] = 1;
          v29 = a3 + 32 * v26;
          v30 = *(v29 + 24);
          if (!v30 || DERCheckConstraints(v30, &v36))
          {
            v31 = *(v29 + 16);
            if ((v31 & 4) == 0)
            {
              v32 = &a4[*v29];
              *v32 = v37;
              if ((v31 & 8) != 0)
              {
                v33 = v37 - v21 + *(v32 + 1);
                *v32 = v21;
                *(v32 + 1) = v33;
              }
            }

LABEL_28:
            v21 = v38;
            v24 = v39;
            continue;
          }

          result = 8;
        }
      }

      break;
    }
  }

  else
  {
    DERLog("DERParseUnsortedSequenceC", 609, "Zero length unsorted sequence?");
    result = 6;
  }

LABEL_12:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

double DERFindItem(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 + a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(v9, &v7))
  {
    if (v7 == a2)
    {
      *a3 = a2;
      result = *&v8;
      *(a3 + 8) = v8;
      return result;
    }

    if ((v7 & 0x2000000000000000) != 0 && !DERFindItem(&v8, a2, a3))
    {
      return result;
    }

    v7 = 0;
    v8 = 0uLL;
  }

  return result;
}

uint64_t DERDecodeSequenceWithBlock(void *a1, uint64_t a2)
{
  v3 = *a1 + a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v6 = 0;
  while (1)
  {
    memset(v5, 0, sizeof(v5));
    LODWORD(result) = DERDecodeSeqNext(v7, v5);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v5, &v6);
    if (result)
    {
      break;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (result == 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void OVM::InterpreterImpl::RunSubroutine(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(__cxa_begin_catch(a1) + 1);
  v5 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v5;
  __cxa_end_catch();
}

uint64_t *std::make_unique[abi:ne200100]<OVM::ObjCMessage,std::unique_ptr<OVM::Expression>,std::vector<std::unique_ptr<OVM::Expression>>,std::string,OVM::TypeInfo::Type,unsigned int,0>(void **a1, uint64_t **a2)
{
  v6 = a1;
  std::vector<std::unique_ptr<OVM::Expression>>::__destroy_vector::operator()[abi:ne200100](&v6);
  result = *a2;
  *a2 = 0;
  if (result)
  {
    v4 = OUTLINED_FUNCTION_0(result);
    return (*(v5 + 8))(v4);
  }

  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}