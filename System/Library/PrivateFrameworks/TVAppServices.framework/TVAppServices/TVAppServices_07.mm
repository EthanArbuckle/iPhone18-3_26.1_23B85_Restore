uint64_t sub_26CCBB014(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_26CD3A41C();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v15 = swift_allocObject();
  v42 = xmmword_26CD3C1E0;
  *(v15 + 16) = xmmword_26CD3C1E0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  v38 = sub_26CC19E10();
  *(v15 + 64) = v38;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v39 = v13;
  sub_26CD3A3EC();

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_26CD3AC6C();
  v16 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v16);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v37 = a4 & 1;
  if (a4)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (a4)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v17, v18);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v19 = a3;
  *&v45[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v20 = a1;
  v21 = a5;
  v22 = a2;
  v23 = v47;
  v24 = v48;
  sub_26CD3A99C();
  v36 = v14;
  v25 = swift_allocObject();
  *(v25 + 16) = v42;
  v26 = v38;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = v26;
  *(v25 + 32) = v23;
  *(v25 + 40) = v24;
  sub_26CD3A3DC();

  sub_26CC23428(v20, v22, MEMORY[0x277D839B0], v19, v37, &v47);
  sub_26CC200FC(&v47, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 2;
  }

  sub_26CC200FC(&v47, &v43);
  if (v44)
  {
    sub_26CC331CC(&v43, v45);
    if (v46 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v27 = swift_allocObject();
      *(v27 + 16) = v42;
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v28 = *(v21 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v29 = *(v21 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix + 8);

      MEMORY[0x26D6AD060](v28, v29);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v20, v22);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v30 = *(&v43 + 1);
      *(v27 + 32) = v43;
      *(v27 + 40) = v30;
      sub_26CD3A98C();
      v31 = swift_allocObject();
      *(v31 + 16) = v42;
      *(v31 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v31 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v31 + 32) = v27;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    v32 = &v47;
  }

  else
  {
    sub_26CC1B544(&v47, &qword_2804BBDA8, &qword_26CD3D5F0);
    v32 = &v43;
  }

  sub_26CC1B544(v32, &qword_2804BBDA8, &qword_26CD3D5F0);
  v33 = v46;
  sub_26CD3AA1C();
  v34 = v39;
  sub_26CD3A3FC();
  (*(v40 + 8))(v34, v41);
  return v33;
}

uint64_t sub_26CCBB644(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v11 = sub_26CD3A41C();
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BBB6B8 != -1)
  {
    swift_once();
  }

  v15 = qword_280BBCC98;
  sub_26CD3A40C();
  sub_26CD3AA2C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  v47 = xmmword_26CD3C1E0;
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v42 = sub_26CC19E10();
  *(v17 + 64) = v42;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;

  v44 = v14;
  sub_26CD3A3EC();

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_26CD3AC6C();
  v18 = sub_26CC19D14();
  MEMORY[0x26D6AD060](v18);

  MEMORY[0x26D6AD060](0xD000000000000019, 0x800000026CD508C0);
  MEMORY[0x26D6AD060](a1, a2);
  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD508E0);
  v41 = a4 & 1;
  if (a4)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a4)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v19, v20);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD50900);
  v21 = a3;
  *&v50[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD4D0, &qword_26CD45D80);
  sub_26CD3AD1C();
  v22 = a5;
  v23 = a2;
  v24 = a1;
  v26 = v53;
  v25 = v54;
  sub_26CD3A99C();
  v40[1] = v16;
  v27 = swift_allocObject();
  *(v27 + 16) = v47;
  v28 = v42;
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 64) = v28;
  *(v27 + 32) = v26;
  *(v27 + 40) = v25;
  sub_26CD3A3DC();

  sub_26CC23428(v24, v23, v43, v21, v41, &v53);
  sub_26CC200FC(&v53, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v29 = swift_dynamicCast();
  if ((v29 & 1) == 0)
  {
    v51 = 0;
  }

  v52 = v29 ^ 1;
  sub_26CC200FC(&v53, &v48);
  if (v49)
  {
    sub_26CC331CC(&v48, v50);
    if (v52)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
      v30 = swift_allocObject();
      *(v30 + 16) = v47;
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_26CD3AC6C();
      v31 = v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix;
      v32 = *(v22 + OBJC_IVAR___TVAppBag____lazy_storage___logPrefix);
      v33 = *(v31 + 8);

      MEMORY[0x26D6AD060](v32, v33);

      MEMORY[0x26D6AD060](0xD00000000000001DLL, 0x800000026CD50920);
      MEMORY[0x26D6AD060](v24, v23);
      MEMORY[0x26D6AD060](0x2065756C6176202CLL, 0xEA0000000000203DLL);
      sub_26CD3AD1C();
      v34 = *(&v48 + 1);
      *(v30 + 32) = v48;
      *(v30 + 40) = v34;
      sub_26CD3A98C();
      v35 = swift_allocObject();
      *(v35 + 16) = v47;
      *(v35 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v35 + 64) = sub_26CC1DD84(&qword_280BBB7C0, &unk_2804BCA20, &unk_26CD3D4D0);
      *(v35 + 32) = v30;
      sub_26CD3A3DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    v36 = &v53;
  }

  else
  {
    sub_26CC1B544(&v53, &qword_2804BBDA8, &qword_26CD3D5F0);
    v36 = &v48;
  }

  sub_26CC1B544(v36, &qword_2804BBDA8, &qword_26CD3D5F0);
  v37 = v51;
  sub_26CD3AA1C();
  v38 = v44;
  sub_26CD3A3FC();
  (*(v45 + 8))(v38, v46);
  return v37;
}

uint64_t sub_26CCBBC88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  sub_26CC200FC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v12;
  }

  v8 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v8 == v6)
  {
    sub_26CC200FC(a1, v13);
    if (v14)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v9 = &qword_2804BCA30;
      v10 = &qword_26CD3DA70;
      v11 = v5;
    }

    else
    {
      v9 = &qword_2804BBDA8;
      v10 = &qword_26CD3D5F0;
      v11 = v13;
    }

    sub_26CC1B544(v11, v9, v10);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBBE08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-v8];
  sub_26CC200FC(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (swift_dynamicCast())
  {
    return v16;
  }

  v12 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v10 == v12)
  {
    sub_26CC200FC(a1, v17);
    if (v18)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v13 = &qword_2804BCA30;
      v14 = &qword_26CD3DA70;
      v15 = v9;
    }

    else
    {
      v13 = &qword_2804BBDA8;
      v14 = &qword_26CD3D5F0;
      v15 = v17;
    }

    sub_26CC1B544(v15, v13, v14);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBBF9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  sub_26CC200FC(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    return v8;
  }

  if (sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0) == v6)
  {
    sub_26CC200FC(a1, v9);
    if (v10)
    {
      if (swift_dynamicCast())
      {
        sub_26CD3A03C();

        sub_26CC1B544(v5, &qword_2804BCA30, &qword_26CD3DA70);
      }
    }

    else
    {
      sub_26CC1B544(v9, &qword_2804BBDA8, &qword_26CD3D5F0);
    }
  }

  return 2;
}

uint64_t sub_26CCBC114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  sub_26CC200FC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = MEMORY[0x277D83B88];
  if (swift_dynamicCast())
  {
    return v12;
  }

  v8 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v8 == v6)
  {
    sub_26CC200FC(a1, v13);
    if (v14)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v9 = &qword_2804BCA30;
      v10 = &qword_26CD3DA70;
      v11 = v5;
    }

    else
    {
      v9 = &qword_2804BBDA8;
      v10 = &qword_26CD3D5F0;
      v11 = v13;
    }

    sub_26CC1B544(v11, v9, v10);
    return 0;
  }

  return result;
}

uint64_t sub_26CCBC294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13[-v4];
  sub_26CC200FC(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA8, &qword_26CD3D5F0);
  v6 = MEMORY[0x277D839F8];
  if (swift_dynamicCast())
  {
    return v12;
  }

  v8 = sub_26CC18080(0, &unk_280BBB770, 0x277CBEBC0);
  result = 0;
  if (v8 == v6)
  {
    sub_26CC200FC(a1, v13);
    if (v14)
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }

      sub_26CD3A03C();

      v9 = &qword_2804BCA30;
      v10 = &qword_26CD3DA70;
      v11 = v5;
    }

    else
    {
      v9 = &qword_2804BBDA8;
      v10 = &qword_26CD3D5F0;
      v11 = v13;
    }

    sub_26CC1B544(v11, v9, v10);
    return 0;
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

uint64_t sub_26CCBC4C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26CCBC508(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26CCBC634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26CCC79F8(40, a1);
  if (v4 == 2)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = &unk_287DF95D0;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    *v6 = 6;
    return swift_willThrow();
  }

  else
  {
    v8 = v4;
    v9 = sub_26CCC79F8(41, a1);
    v10 = sub_26CCC79F8(37, a1);
    v11 = sub_26CCC79F8(31, a1);
    v21 = sub_26CCC7724(27, a1);
    v13 = v12;
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = 3;
    }

    if (v9)
    {
      v14 = 5;
    }

    if (((v9 | v10) | v11))
    {
      v15 = v14;
    }

    else
    {
      v15 = 2 * (v12 != 0);
    }

    v16 = sub_26CCC7724(88, a1);
    if (v17)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v20 = sub_26CCC79F8(36, a1);
    result = sub_26CCC79F8(32, a1);
    *a2 = v21;
    *(a2 + 8) = v13;
    *(a2 + 16) = v18;
    *(a2 + 24) = v19;
    *(a2 + 32) = v15;
    *(a2 + 33) = v20 & 1;
    *(a2 + 34) = result & 1;
    *(a2 + 35) = v8 & 1;
  }

  return result;
}

unint64_t BagKey.rawValue.getter()
{
  result = 0x65676175676E616CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 5:
      return result;
    case 6:
      result = 0xD000000000000027;
      break;
    case 7:
      result = 0x7363697274656DLL;
      break;
    case 8:
      result = 0x6F724665726F7473;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 0xA:
    case 0xC:
      result = 0xD000000000000023;
      break;
    case 0xB:
      result = 0xD000000000000019;
      break;
    case 0xD:
      result = 0xD00000000000001BLL;
      break;
    case 0xE:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000026;
      break;
  }

  return result;
}

TVAppServices::BagKey_optional __swiftcall BagKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCBCA8C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = BagKey.rawValue.getter();
  v4 = v3;
  if (v2 == BagKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26CD3AFDC();
  }

  return v7 & 1;
}

unint64_t sub_26CCBCB2C()
{
  result = qword_2804BD4E8;
  if (!qword_2804BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4E8);
  }

  return result;
}

uint64_t sub_26CCBCB80()
{
  v1 = *v0;
  sub_26CD3B0FC();
  BagKey.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCBCBE8()
{
  v2 = *v0;
  BagKey.rawValue.getter();
  sub_26CD3A54C();
}

uint64_t sub_26CCBCC4C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  BagKey.rawValue.getter();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

unint64_t sub_26CCBCCBC@<X0>(unint64_t *a1@<X8>)
{
  result = BagKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t BadgingStoreError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t sub_26CCBCDBC()
{
  if (qword_2804BBA98 != -1)
  {
    swift_once();
  }

  v0 = qword_2804BDBA0;
  qword_2804D1510 = type metadata accessor for NotificationService();
  unk_2804D1518 = &off_287E05160;
  qword_2804D14F8 = v0;
}

uint64_t static BadgingStore.add(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return MEMORY[0x2822009F8](sub_26CCBCE64, 0, 0);
}

uint64_t sub_26CCBCE64()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[27];
  if (v3)
  {
    v4 = v0[27];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v5 = v3 + 40;
    v6 = *(v3 + 2) + 1;
    while (--v6)
    {
      if (*(v5 - 1) != v0[30] || *v5 != v0[31])
      {
        v5 += 2;
        if ((sub_26CD3AFDC() & 1) == 0)
        {
          continue;
        }
      }

      swift_bridgeObjectRelease_n();
      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26CD3C1E0;
      *(v8 + 56) = MEMORY[0x277D837D0];
      *(v8 + 64) = sub_26CC19E10();
      *(v8 + 32) = 0xD000000000000038;
      *(v8 + 40) = 0x800000026CD50D70;
      sub_26CD3A3DC();

      v9 = v0[1];

      return v9();
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v23 = v0[31];
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_26CD3C1E0;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_26CC19E10();
    *(v24 + 32) = 0xD000000000000027;
    *(v24 + 40) = 0x800000026CD50DB0;
    sub_26CD3A3DC();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26CCBE3BC(0, *(v3 + 2) + 1, 1, v3);
    }

    v26 = *(v3 + 2);
    v25 = *(v3 + 3);
    if (v26 >= v25 >> 1)
    {
      v3 = sub_26CCBE3BC((v25 > 1), v26 + 1, 1, v3);
    }

    v28 = v0[30];
    v27 = v0[31];
    *(v3 + 2) = v26 + 1;
    v29 = &v3[16 * v26];
    *(v29 + 4) = v28;
    *(v29 + 5) = v27;
    sub_26CC19A84(&unk_2804D14D0, (v0 + 17));
    v30 = v0[20];
    v31 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v30);
    v0[29] = v3;
    (*(v31 + 24))(v0 + 29, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v0 + 17);
    if (qword_2804BBA50 != -1)
    {
      swift_once();
    }

    sub_26CC19A84(&qword_2804D14F8, (v0 + 22));
    v32 = __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
    v19 = *(v3 + 2);

    v33 = *v32;
    v21 = swift_task_alloc();
    v0[32] = v21;
    *v21 = v0;
    v22 = sub_26CCBD4F0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v12 = v0[30];
    v11 = v0[31];
    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_26CC19E10();
    *(v13 + 32) = 0xD00000000000002FLL;
    *(v13 + 40) = 0x800000026CD50D40;
    sub_26CD3A3DC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 32) = v12;
    *(v14 + 40) = v11;
    sub_26CC19A84(&unk_2804D14D0, (v0 + 7));
    v15 = v0[10];
    v16 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v15);
    v0[28] = v14;
    v17 = *(v16 + 24);

    v17(v0 + 28, v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_2804BBA50 != -1)
    {
      swift_once();
    }

    sub_26CC19A84(&qword_2804D14F8, (v0 + 12));
    v18 = __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    v19 = *(v14 + 16);

    v20 = *v18;
    v21 = swift_task_alloc();
    v0[34] = v21;
    *v21 = v0;
    v22 = sub_26CCBD6CC;
  }

  v21[1] = v22;

  return sub_26CD0F0D0(v19);
}

uint64_t sub_26CCBD4F0()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_26CCBD668;
  }

  else
  {
    v3 = sub_26CCBD604;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCBD604()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBD668()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v1 = v0[33];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCBD6CC()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_26CCBD844;
  }

  else
  {
    v3 = sub_26CCBD7E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCBD7E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCBD844()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[35];
  v2 = v0[1];

  return v2();
}

uint64_t static BadgingStore.clear()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CCBF758();
}

uint64_t static BadgingStore.remove(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return MEMORY[0x2822009F8](sub_26CCBD968, 0, 0);
}

uint64_t sub_26CCBD968()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 16))(v1, v2);
  v3 = v0[23];
  if (!v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    goto LABEL_15;
  }

  v0[22] = v3;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = *(v3 + 16);

  if (!v4 || (v5 = *(v3 + 16)) == 0)
  {
LABEL_13:

LABEL_15:
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v11 = v0[25];
    v10 = v0[26];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v11, v10);
    MEMORY[0x26D6AD060](46, 0xE100000000000000);
    *(v12 + 32) = 0xD00000000000002ALL;
    *(v12 + 40) = 0x800000026CD50DE0;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = v12;
    sub_26CD3A3DC();

    sub_26CCBFA08();
    swift_allocError();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }

  v6 = 0;
  v7 = v0 + 7;
  v8 = (v3 + 40);
  while (1)
  {
    v9 = *(v8 - 1) == v0[25] && *v8 == v0[26];
    if (v9 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    ++v6;
    v8 += 2;
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  sub_26CCBE050(v6);

  v16 = v0[22];
  if (*(v16 + 16))
  {
    sub_26CC19A84(&unk_2804D14D0, (v0 + 7));
    v17 = v0[10];
    v18 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v17);
    v0[24] = v16;
    (*(v18 + 24))(v0 + 24, v17, v18);
  }

  else
  {
    sub_26CC19A84(&unk_2804D14D0, (v0 + 17));
    v24 = v0[20];
    v25 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v24);
    (*(v25 + 32))(v24, v25);
    v7 = v0 + 17;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26CD3C1E0;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_26CC19E10();
  *(v19 + 32) = 0xD00000000000002FLL;
  *(v19 + 40) = 0x800000026CD50E10;
  sub_26CD3A3DC();

  if (qword_2804BBA50 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(qword_2804D14F8, (v0 + 12));
  v20 = __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v21 = *(v16 + 16);

  v22 = *v20;
  v23 = swift_task_alloc();
  v0[27] = v23;
  *v23 = v0;
  v23[1] = sub_26CCBDED8;

  return sub_26CD0F0D0(v21);
}

uint64_t sub_26CCBDED8()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_26CCBDFEC;
  }

  else
  {
    v3 = sub_26CCBD7E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCBDFEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[28];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26CCBE050(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26CCF21B0(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26CCBE0DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26CCF23F4(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26CCBE164()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CCBF758();
}

uint64_t sub_26CCBE204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CCBF63C();
  *a1 = result;
  return result;
}

void sub_26CCBE22C(uint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_26CD3A79C();
  v4 = sub_26CD3A59C();
  [v2 setObject:v3 forKey:v4];
}

void sub_26CCBE2E0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A59C();
  [v0 removeObjectForKey_];
}

char *sub_26CCBE3BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26CCBE4C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD578, &qword_26CD46158);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_26CCBE5D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD570, &qword_26CD46150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBE6FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD530, &qword_26CD46108);
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

void *sub_26CCBE7F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD520, &qword_26CD460F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD528, &qword_26CD46100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBE924(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD588, &qword_26CD46168);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26CCBEA70(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_26CCBEC4C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD508, &qword_26CD47B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBED94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD548, &qword_26CD46128);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_26CCBEE98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD550, &qword_26CD46130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD558, &qword_26CD46138);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26CCBEFCC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD560, &unk_26CD46140);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_26CCBF1BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD510, &qword_26CD460E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD518, &qword_26CD460F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBF2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD540, &qword_26CD46120);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26CCBF3FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804BD598, &qword_26CD46178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26CCBF508(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBB70, &unk_26CD3C680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26CCBF63C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A59C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26CC548D4(v7);
    return 0;
  }
}

uint64_t sub_26CCBF774()
{
  if (qword_2804BBA48 != -1)
  {
    swift_once();
  }

  sub_26CC19A84(&unk_2804D14D0, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_2804BBA50 != -1)
  {
    swift_once();
  }

  v3 = *__swift_project_boxed_opaque_existential_1(qword_2804D14F8, qword_2804D1510);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26CCBF914;

  return sub_26CD0F0D0(0);
}

uint64_t sub_26CCBF914()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26CCBFA08()
{
  result = qword_2804BD4F0;
  if (!qword_2804BD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4F0);
  }

  return result;
}

unint64_t sub_26CCBFA60()
{
  result = qword_2804BD4F8;
  if (!qword_2804BD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD4F8);
  }

  return result;
}

uint64_t sub_26CCBFAC4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26CC246B8;

  return v9(a1, a2);
}

uint64_t VideoResourceRequest.init<>(item:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return sub_26CCBFC0C(a1, 0, a2);
}

{
  return sub_26CCBFC0C(a1, 1, a2);
}

uint64_t sub_26CCBFC0C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }

  *(a3 + 24) = qword_280BBB0C8;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(v7 + 24);

  *(a3 + 8) = v8(v6, v7);
  *(a3 + 16) = v9;
  *a3 = a2;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t VideoResourceRequest.response()(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  v4 = type metadata accessor for UTSNetworkRequest(0);
  *(v3 + 64) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  v7 = sub_26CD39D0C();
  *(v3 + 104) = v7;
  v8 = *(v7 - 8);
  *(v3 + 112) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  *(v3 + 209) = *v2;
  v11 = *(v2 + 8);
  *(v3 + 120) = v10;
  *(v3 + 128) = v11;
  *(v3 + 136) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_26CCBFE3C, 0, 0);
}

uint64_t sub_26CCBFE3C()
{
  if (qword_2804BBA08 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 209);
  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();

  MEMORY[0x26D6AD060](v2, v1);
  MEMORY[0x26D6AD060](0x203A65707974202CLL, 0xE800000000000000);
  v5 = VideoItemType.rawValue.getter();
  MEMORY[0x26D6AD060](v5);

  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  *(v4 + 32) = 0xD000000000000022;
  *(v4 + 40) = 0x800000026CD50E60;
  sub_26CD3A97C();
  sub_26CC57EC8();

  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 136);
  if (*(&xmmword_280BBACE0 + 1))
  {
    v7 = *(v0 + 128) & 0xFFFFFFFFFFFFLL;
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    if (v7)
    {
      v8 = *(v0 + 209);
      v9 = *(v0 + 56);
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      type metadata accessor for VideoResourceRequest.VideoDataRequestBuilder();
      *(v0 + 208) = v8;
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_26CCC0168;
      v14 = *(v0 + 128);
      v13 = *(v0 + 136);

      return sub_26CCC0A30(v14, v13, (v0 + 208));
    }

    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  sub_26CC2E794();
  swift_allocError();
  *v17 = v16;
  swift_willThrow();
  v18 = *(v0 + 120);
  v20 = *(v0 + 88);
  v19 = *(v0 + 96);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26CCC0168(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_26CCC08C4;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_26CCC0290;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCC0290()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_26CCC1EA8(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(*(v0 + 96), &qword_2804BC3F8, &qword_26CD45490);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000037, 0x800000026CD50F10);
    MEMORY[0x26D6AD060](v7, v6);
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v9 + 64) = sub_26CC2E6E8();
    *(v9 + 32) = v8;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    *v10 = 5;
    swift_willThrow();
    v11 = *(v0 + 120);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v15 = *(v0 + 72);
    v14 = *(v0 + 80);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 120);
    v19 = *(v0 + 128);
    v20 = *(v0 + 209);
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 72);
    v25 = *(v0 + 80);
    v26 = *(v0 + 64);
    v41 = *(v0 + 136);
    (*(v22 + 32))(v18, *(v0 + 96), v21);
    (*(v22 + 16))(&v23[v26[7]], v18, v21);
    v27 = [objc_opt_self() standardUserDefaults];
    v28 = sub_26CD3A59C();
    v29 = [v27 integerForKey_];

    if (v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = 91;
    }

    v31 = &v23[v26[5]];
    sub_26CD3A1FC();
    v23[v26[6]] = 0;
    *&v23[v26[8]] = v30;
    *v23 = 0;
    sub_26CCC2438(v23, v25);
    v32 = type metadata accessor for AMSRequestHandler();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    v35 = swift_allocObject();
    sub_26CCC2438(v25, v24);
    v36 = sub_26CD32DB4(v24, v35);
    *(v0 + 184) = v36;
    sub_26CCC249C(v25);
    *(v0 + 16) = v20;
    *(v0 + 24) = v19;
    *(v0 + 32) = v41;
    v37 = swift_task_alloc();
    *(v0 + 192) = v37;
    *v37 = v0;
    v37[1] = sub_26CCC06DC;
    v38 = *(v0 + 120);
    v39 = *(v0 + 48);
    v40 = *(v0 + 56);

    return sub_26CCC1520(v39, v38, v36, &off_287E05C08, v40);
  }
}

uint64_t sub_26CCC06DC()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_26CCC0960;
  }

  else
  {
    v3 = sub_26CCC07F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCC07F0()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v3 + 8))(v2, v4);
  sub_26CCC249C(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CCC08C4()
{
  v1 = v0[21];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CCC0960()
{
  v1 = v0[23];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[11];

  (*(v3 + 8))(v2, v4);
  sub_26CCC249C(v5);
  v6 = v0[25];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[9];
  v10 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26CCC0A30(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v7 = sub_26CD3A07C();
  *(v4 + 48) = v7;
  v8 = *(v7 - 8);
  *(v4 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v10 = sub_26CD39D0C();
  *(v4 + 80) = v10;
  v11 = *(v10 - 8);
  *(v4 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 136) = *a3;

  return MEMORY[0x2822009F8](sub_26CCC0BAC, 0, 0);
}

uint64_t sub_26CCC0BAC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 560);
  v3 = *(v1 + 568);
  v23 = *(v0 + 136);
  v24 = *(v0 + 16);
  v25 = *(v0 + 24);
  type metadata accessor for VideoResourceRequest.VideoItemRoute();

  v4 = sub_26CCC1C50();
  v6 = v5;
  *(v0 + 112) = v5;

  if (v6)
  {
    type metadata accessor for UTSURLRequestFactory();
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_26CCC0F0C;
    v8 = *(v0 + 104);

    return sub_26CD027F0(v8, v4, v6, 0, 0xE000000000000000, 0, 0);
  }

  else
  {
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 136);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000020, 0x800000026CD51010);
    v14 = VideoItemType.rawValue.getter();
    MEMORY[0x26D6AD060](v14);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD51040);
    MEMORY[0x26D6AD060](v12, v11);

    *(v13 + 32) = 0;
    *(v13 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = v13;
    sub_26CD3A3DC();

    sub_26CCC2718();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 40);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_26CCC0F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_26CCC1470;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_26CCC1028;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CCC1028()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_26CD39C9C();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC1B544(*(v0 + 40), &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 136);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD00000000000001ELL, 0x800000026CD51060);
    v12 = VideoItemType.rawValue.getter();
    MEMORY[0x26D6AD060](v12);

    MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD51040);
    MEMORY[0x26D6AD060](v10, v9);

    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = v11;
    sub_26CD3A3DC();

    sub_26CCC2718();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    (*(v8 + 8))(v6, v7);
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v18 = *(v0 + 64);
    v17 = *(v0 + 72);
    v19 = *(v0 + 40);

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v39 = *(v0 + 136);
    v22 = *(v0 + 96);
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 32);
    v37 = *(v0 + 80);
    v38 = *(v0 + 24);
    v36 = *(v0 + 16);
    (*(v27 + 32))(v26, *(v0 + 40), v28);
    (*(v27 + 16))(v25, v26, v28);
    sub_26CD39C7C();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v32 = sub_26CCC1D80(v22);
    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v37);
    v33 = (v32 + qword_2804BD628);
    v34 = *(v32 + qword_2804BD628 + 16);
    *v33 = v39;
    v33[1] = v36;
    v33[2] = v38;

    v35 = *(v0 + 8);

    return v35(v32);
  }
}

uint64_t sub_26CCC1470()
{
  v1 = v0[14];
  v2 = v0[3];

  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26CCC1520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a3;
  *(v6 + 120) = a4;
  *(v6 + 96) = a1;
  *(v6 + 104) = a2;
  *(v6 + 128) = *(a5 + 16);
  v7 = sub_26CD3AADC();
  *(v6 + 136) = v7;
  v8 = *(v7 - 8);
  *(v6 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  *(v6 + 200) = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  *(v6 + 152) = v10;
  *(v6 + 160) = v11;
  *(v6 + 168) = v12;

  return MEMORY[0x2822009F8](sub_26CCC15FC, 0, 0);
}

uint64_t sub_26CCC15FC()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  if (qword_2804BBA20 != -1)
  {
    swift_once();
  }

  v1 = off_2804BC780;
  v0[5] = type metadata accessor for LocationService();
  v0[6] = &off_287DFFFE0;
  v0[2] = v1;

  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_26CCC1734;
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];

  return sub_26CD2E0E4(v5, v3, v4);
}

uint64_t sub_26CCC1734(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[22];
  v7 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  __swift_destroy_boxed_opaque_existential_1(v3 + 2);
  if (v1)
  {
    v5 = sub_26CCC1BEC;
  }

  else
  {
    v5 = sub_26CCC1850;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26CCC1850()
{
  v31 = v0;
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 200);
  v5 = [*(v0 + 184) data];
  v6 = sub_26CD3A0BC();
  v8 = v7;

  LOBYTE(v29) = v4;
  sub_26CC70040(&v29, v3, v2, (v0 + 56));
  if (v1)
  {
    v9 = *(v0 + 184);
    sub_26CC18C50(v6, v8);
  }

  else
  {
    v10 = *(v0 + 152);
    v11 = *(v0 + 128);
    sub_26CC18C50(v6, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD738, &qword_26CD46328);
    if (swift_dynamicCast())
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 128);
      v14 = *(v0 + 96);

      v15 = *(v13 - 8);
      (*(v15 + 56))(v12, 0, 1, v13);
      (*(v15 + 32))(v14, v12, v13);

      v16 = *(v0 + 8);
      goto LABEL_9;
    }

    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 136);
    (*(*(*(v0 + 128) - 8) + 56))(v17, 1, 1);
    (*(v18 + 8))(v17, v19);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 184);
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_26CD3C1E0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000038, 0x800000026CD50F70);
    MEMORY[0x26D6AD060](v22, v21);
    v24 = v30;
    *(v23 + 32) = v29;
    *(v23 + 40) = v24;
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_26CD3C1E0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v25 + 64) = sub_26CC2E6E8();
    *(v25 + 32) = v23;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    *v26 = 6;
    swift_willThrow();
  }

  v27 = *(v0 + 152);

  v16 = *(v0 + 8);
LABEL_9:

  return v16();
}

uint64_t sub_26CCC1BEC()
{
  v1 = v0[24];
  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26CCC1C50()
{
  if (*v0 != 1 && *v0)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_26CC16DCC();
  return sub_26CD3AB0C();
}

uint64_t sub_26CCC1D44(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_26CCC1D80(a1);
}

uint64_t sub_26CCC1D80(uint64_t a1)
{
  v3 = sub_26CD39D0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + qword_2804BD620);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v1 + qword_2804BD628);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  *(v1 + qword_2804BD630) = 26;
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_26CD0881C(v7);
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_26CCC1EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  *&v47 = sub_26CD39E2C();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v41 - v9;
  v10 = *(v2 + qword_2804BD628 + 16);
  if (v10)
  {
    v11 = *(v2 + qword_2804BD628 + 8);
    LOBYTE(v48) = *(v2 + qword_2804BD628);
    v49 = v11;
    v50 = v10;
    v12 = *(v4 + 560);
    v13 = *(v4 + 568);
    type metadata accessor for VideoResourceRequest.VideoItemRoute();
    sub_26CCC1C50();
    if (v14)
    {
      v15 = sub_26CD279B4();

      if (!v15)
      {
        return sub_26CD08B34(a1);
      }

      v42 = a1;
      v16 = 0;
      a1 = v15 + 64;
      v17 = 1 << *(v15 + 32);
      v18 = -1;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      v19 = v18 & *(v15 + 64);
      v20 = (v17 + 63) >> 6;
      v43 = (v5 + 8);
      v44 = v15;
      while (v19)
      {
        v21 = v16;
LABEL_12:
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v23 = (v21 << 10) | (16 * v22);
        v24 = (*(v44 + 48) + v23);
        v25 = *v24;
        v26 = v24[1];
        v27 = (*(v44 + 56) + v23);
        v28 = *v27;
        v29 = v27[1];

        v30 = v46;
        sub_26CD39DFC();

        swift_beginAccess();
        v31 = v45;
        sub_26CCDEE64(v45, v30);
        (*v43)(v31, v47);
        swift_endAccess();
      }

      while (1)
      {
        v21 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v21 >= v20)
        {

          a1 = v42;
          return sub_26CD08B34(a1);
        }

        v19 = *(a1 + 8 * v21);
        ++v16;
        if (v19)
        {
          v16 = v21;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  if (qword_280BB9C20 != -1)
  {
LABEL_27:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v32 = swift_allocObject();
  v47 = xmmword_26CD3C1E0;
  *(v32 + 16) = xmmword_26CD3C1E0;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000034, 0x800000026CD50FB0);
  v33 = *(v2 + qword_2804BD620 + 8);
  if (v33)
  {
    v34 = *(v2 + qword_2804BD620);
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x26D6AD060](v34, v35);

  v36 = v49;
  *(v32 + 32) = v48;
  *(v32 + 40) = v36;
  sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v37 = swift_allocObject();
  *(v37 + 16) = v47;
  *(v37 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v37 + 64) = sub_26CC2E6E8();
  *(v37 + 32) = v32;
  sub_26CD3A3DC();

  v38 = sub_26CD39D0C();
  v39 = *(*(v38 - 8) + 56);

  return v39(a1, 1, 1, v38);
}

uint64_t sub_26CCC2334()
{
  v1 = *(v0 + qword_2804BD620 + 8);

  v2 = *(v0 + qword_2804BD628 + 16);
}

uint64_t sub_26CCC237C()
{
  v0 = sub_26CD09390();
  v1 = *(v0 + qword_2804BD620 + 8);

  v2 = *(v0 + qword_2804BD628 + 16);

  return v0;
}

uint64_t sub_26CCC23CC()
{
  v0 = *sub_26CCC237C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCC2438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC249C(uint64_t a1)
{
  v2 = type metadata accessor for UTSNetworkRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CCC24F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26CCC2540(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26CCC2588(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26CCC263C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26CCC2678(uint64_t a1, int a2)
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

uint64_t sub_26CCC26C0(uint64_t result, int a2, int a3)
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

unint64_t sub_26CCC2718()
{
  result = qword_2804BD740;
  if (!qword_2804BD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD740);
  }

  return result;
}

uint64_t sub_26CCC279C(uint64_t a1)
{
  v53 = a1;
  v1 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v45 - v9;
  v11 = sub_26CD3A1EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v49 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = v45 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v45 - v25;
  v27 = v1;
  sub_26CC1B4DC(v53, v45 - v25, &qword_2804BD748, &qword_26CD46340);
  v28 = *(v2 + 48);
  if (v28(v26, 1, v27) == 1)
  {
    v29 = v26;
LABEL_8:
    sub_26CC1B544(v29, &qword_2804BD748, &qword_26CD46340);
    return sub_26CCD7DD4();
  }

  v53 = v27;
  sub_26CC1B4DC(&v26[*(v27 + 20)], v10, &qword_2804BCA90, &qword_26CD3C200);
  v47 = *(v12 + 48);
  v30 = v47(v10, 1, v11);
  v48 = v11;
  v46 = v12;
  if (v30 == 1)
  {
    sub_26CC1B544(v10, &qword_2804BCA90, &qword_26CD3C200);
  }

  else
  {
    (*(v12 + 32))(v19, v10, v11);
    v45[1] = v12 + 48;
    v31 = v52;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v32 = *(v12 + 8);
    v32(v31, v11);
    v32(v19, v11);
  }

  sub_26CCC490C(v26);
  v33 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v34 = v54;
  swift_beginAccess();
  sub_26CC1B4DC(v34 + v33, v24, &qword_2804BD748, &qword_26CD46340);
  v35 = v53;
  if (v28(v24, 1, v53))
  {
    v29 = v24;
    goto LABEL_8;
  }

  v37 = v51;
  sub_26CCC48A8(v24, v51);
  sub_26CC1B544(v24, &qword_2804BD748, &qword_26CD46340);
  v38 = v37 + *(v35 + 20);
  v39 = v50;
  sub_26CC1B4DC(v38, v50, &qword_2804BCA90, &qword_26CD3C200);
  v40 = v48;
  if (v47(v39, 1, v48) == 1)
  {
    sub_26CC1B544(v39, &qword_2804BCA90, &qword_26CD3C200);
  }

  else
  {
    v41 = v46;
    v42 = v49;
    (*(v46 + 32))(v49, v39, v40);
    v43 = v52;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v44 = *(v41 + 8);
    v44(v43, v40);
    v44(v42, v40);
  }

  sub_26CCC490C(v37);
  return sub_26CCD7DD4();
}

uint64_t sub_26CCC2CD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  return sub_26CC1B4DC(v1 + v3, a1, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCC2D3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v10, v9, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B4DC(a1, v7, &qword_2804BD748, &qword_26CD46340);
  swift_beginAccess();
  sub_26CCC2E8C(v7, v1 + v10);
  swift_endAccess();
  sub_26CCC279C(v9);
  sub_26CC1B544(a1, &qword_2804BD748, &qword_26CD46340);
  return sub_26CC1B544(v9, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCC2E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*sub_26CCC2EFC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v5[12] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v5[12] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v5[13] = v7;
  v5[14] = v9;
  swift_beginAccess();
  sub_26CC1B4DC(v1 + v9, v8, &qword_2804BD748, &qword_26CD46340);
  return sub_26CCC304C;
}

void sub_26CCC304C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 112);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 80);
  if (a2)
  {
    sub_26CC1B4DC(*(*a1 + 104), v6, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v7 + v4, v5, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v6, v8, &qword_2804BD748, &qword_26CD46340);
    swift_beginAccess();
    sub_26CCC2E8C(v8, v7 + v4);
    swift_endAccess();
    sub_26CCC279C(v5);
    sub_26CC1B544(v5, &qword_2804BD748, &qword_26CD46340);
  }

  else
  {
    sub_26CC1B4DC(v7 + v4, v6, &qword_2804BD748, &qword_26CD46340);
    sub_26CC1B4DC(v3, v5, &qword_2804BD748, &qword_26CD46340);
    swift_beginAccess();
    sub_26CCC2E8C(v5, v7 + v4);
    swift_endAccess();
    sub_26CCC279C(v6);
  }

  sub_26CC1B544(v6, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B544(v3, &qword_2804BD748, &qword_26CD46340);
  free(v3);
  free(v6);
  free(v5);
  free(v8);

  free(v2);
}

uint64_t sub_26CCC31E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v14[0] = *v3;
  v14[1] = v4;
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v15 = *(v3 + 80);
  v14[3] = v6;
  v14[4] = v7;
  v14[2] = v5;
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  v11 = *(v3 + 64);
  *(a2 + 80) = *(v3 + 80);
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 32) = v9;
  return sub_26CC1B4DC(v14, &v13, &qword_2804BD750, qword_26CD46348);
}

uint64_t sub_26CCC3290(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v22 = a1[2];
  v23 = v2;
  v24 = a1[4];
  v25 = *(a1 + 10);
  v3 = a1[1];
  v4 = *a2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v20 = *a1;
  v21 = v3;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v26 = *v4;
  v27 = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v31 = *(v4 + 80);
  v29 = v7;
  v30 = v8;
  v28 = v6;
  v10 = *(v4 + 48);
  v9 = *(v4 + 64);
  v11 = *(v4 + 32);
  v33 = *(v4 + 80);
  v32[3] = v10;
  v32[4] = v9;
  v32[2] = v11;
  v12 = *(v4 + 16);
  v32[0] = *v4;
  v32[1] = v12;
  v13 = v21;
  *v4 = v20;
  *(v4 + 16) = v13;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  *(v4 + 80) = v25;
  *(v4 + 48) = v15;
  *(v4 + 64) = v16;
  *(v4 + 32) = v14;
  sub_26CC1B4DC(&v20, v18, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B4DC(&v26, v18, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B544(v32, &qword_2804BD750, qword_26CD46348);
  v18[2] = v28;
  v18[3] = v29;
  v18[4] = v30;
  v19 = v31;
  v18[0] = v26;
  v18[1] = v27;
  sub_26CCC33E0(v18);
  return sub_26CC1B544(&v26, &qword_2804BD750, qword_26CD46348);
}

void sub_26CCC33E0(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - v6;
  v8 = a1[1];
  v86 = *a1;
  v87 = v8;
  v9 = a1[2];
  v83 = a1[3];
  v10 = a1[9];
  v80 = a1[10];
  v81 = v9;
  v11 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;

  v85 = v11;
  v12 = sub_26CD3A42C();
  v13 = sub_26CD3A99C();

  v14 = os_log_type_enabled(v12, v13);
  v79 = v10;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v89[0] = v16;
    *v15 = 136315650;
    v84 = v2;
    v17 = (v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
    swift_beginAccess();
    v18 = v17[1];
    if (v18 >= 2)
    {
      v19 = *v17;
      v20 = v17[1];
    }

    else
    {

      v18 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_26CCF188C(v19, v18, v89);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    if (v17[1] == 1 || (v22 = v17[3]) == 0)
    {

      v22 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v23 = v17[2];
      v24 = v17[3];

      v25 = v23;
    }

    v26 = sub_26CCF188C(v25, v22, v89);

    *(v15 + 14) = v26;
    *(v15 + 22) = 2080;
    if (v17[1] == 1)
    {
      v27 = 0;
      v28 = 0xF000000000000000;
    }

    else
    {
      v27 = v17[9];
      v28 = v17[10];
      sub_26CCC706C(v27, v28);
    }

    v2 = v84;
    *&v91 = v27;
    *(&v91 + 1) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD790, &unk_26CD463E8);
    v29 = sub_26CD3A5FC();
    v31 = sub_26CCF188C(v29, v30, v89);

    *(v15 + 24) = v31;
    _os_log_impl(&dword_26CC14000, v12, v13, "Received fetch params with program ID %s adam ID %s rawData %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D6AE340](v16, -1, -1);
    MEMORY[0x26D6AE340](v15, -1, -1);
  }

  else
  {
  }

  v32 = v87;
  if (v87 == 1)
  {
    v86 = 0;
    v33 = 0;
  }

  else
  {

    v33 = v32;
  }

  v34 = (v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  swift_beginAccess();
  v35 = v34[1];
  if (v35 == 1)
  {
    if (v33)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v36 = *v34;
    v37 = v34[1];

    if (v33)
    {
      if (!v35)
      {
        goto LABEL_47;
      }

      if (v86 == v36 && v33 == v35)
      {
      }

      else
      {
        v38 = sub_26CD3AFDC();

        if ((v38 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else if (v35)
    {
      goto LABEL_47;
    }
  }

  if (v32 == 1)
  {
    v39 = 0;
    if (v34[1] == 1)
    {
      v40 = 0xF000000000000000;
LABEL_31:
      sub_26CC1D1B8(v39, v40);
LABEL_32:
      v41 = sub_26CD3A42C();
      v42 = sub_26CD3A99C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_26CC14000, v41, v42, "Ignoring updated fetch params since they match existing fetch params", v43, 2u);
        MEMORY[0x26D6AE340](v43, -1, -1);
      }

      return;
    }

    v46 = 0;
    v45 = 0;
  }

  else
  {
    v44 = v34[1];
    v45 = v83;

    if (v44 == 1)
    {
      if (!v45)
      {
        goto LABEL_66;
      }

      goto LABEL_47;
    }

    v46 = v81;
  }

  v48 = v34[2];
  v47 = v34[3];

  if (!v45)
  {
    if (!v47)
    {
      goto LABEL_63;
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!v47)
  {
    goto LABEL_47;
  }

  if (v46 == v48 && v45 == v47)
  {
  }

  else
  {
    v68 = sub_26CD3AFDC();

    if ((v68 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_63:
  if (v32 == 1)
  {
    v39 = 0;
    v40 = 0xF000000000000000;
    if (v34[1] == 1)
    {
      goto LABEL_31;
    }

    goto LABEL_70;
  }

LABEL_66:
  v70 = v79;
  v69 = v80;
  sub_26CCC706C(v79, v80);
  if (v34[1] == 1)
  {
    v40 = v69;
    v39 = v70;
    if (v69 >> 60 == 15)
    {
      goto LABEL_31;
    }

    v71 = 0;
    v72 = 0xF000000000000000;
    goto LABEL_74;
  }

  v39 = v70;
  v40 = v69;
LABEL_70:
  v73 = v39;
  v71 = v34[9];
  v72 = v34[10];
  v74 = v40;
  sub_26CCC706C(v71, v72);
  v40 = v74;
  if (v74 >> 60 == 15)
  {
    v39 = v73;
    if (v72 >> 60 == 15)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

  v39 = v73;
  if (v72 >> 60 == 15)
  {
LABEL_74:
    sub_26CC1D1B8(v39, v40);
    sub_26CC1D1B8(v71, v72);
    goto LABEL_48;
  }

  v75 = v74;
  v76 = v39;
  sub_26CCC706C(v39, v74);
  sub_26CCC706C(v71, v72);
  v77 = sub_26CCC7138(v76, v74, v71, v72);
  sub_26CC1D1B8(v71, v72);
  sub_26CC1D1B8(v71, v72);
  sub_26CC1D1B8(v76, v75);
  sub_26CC1D1B8(v76, v75);
  if (v77)
  {
    goto LABEL_32;
  }

LABEL_48:
  v49 = *(v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = *(v34 + 3);
    v93 = *(v34 + 2);
    v94 = v51;
    v95 = *(v34 + 4);
    v96 = v34[10];
    v52 = *(v34 + 1);
    v91 = *v34;
    v92 = v52;
    if (*(&v91 + 1) != 1)
    {
      if (!(*(&v91 + 1) | *(&v92 + 1)) || v96 >> 60 == 15)
      {
        v63 = *(v34 + 3);
        v89[2] = *(v34 + 2);
        v89[3] = v63;
        v89[4] = *(v34 + 4);
        v90 = v34[10];
        v64 = *(v34 + 1);
        v89[0] = *v34;
        v89[1] = v64;
        sub_26CCC5FC8(v89, &v88);
        v65 = sub_26CD3A42C();
        v66 = sub_26CD3A99C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_26CC14000, v65, v66, "Waiting for fetch params that have both ID and data", v67, 2u);
          MEMORY[0x26D6AE340](v67, -1, -1);
        }

        sub_26CC1B544(&v91, &qword_2804BD750, qword_26CD46348);
      }

      else
      {
        v87 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
        v84 = v2;
        v53 = v82;
        v54 = v49 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
        sub_26CC1B4DC(&v91, v89, &qword_2804BD750, qword_26CD46348);
        v57 = *(v53 + 16);
        v55 = v53 + 16;
        v56 = v57;
        v58 = *(v55 + 56);
        v86 = v49;

        do
        {
          v56(v7, v54, v4);
          sub_26CD3A82C();
          (*(v55 - 8))(v7, v4);
          v54 += v58;
          --v50;
        }

        while (v50);

        sub_26CC1B544(&v91, &qword_2804BD750, qword_26CD46348);
        v59 = *(v84 + v87);
        *(v84 + v87) = MEMORY[0x277D84F90];
      }
    }
  }

  else
  {
    v60 = sub_26CD3A42C();
    v61 = sub_26CD3A99C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26CC14000, v60, v61, "Waiting for loading process to start, which should occur shortly", v62, 2u);
      MEMORY[0x26D6AE340](v62, -1, -1);
    }

    sub_26CCD9454();
    sub_26CCC5DEC();
  }
}

uint64_t sub_26CCC3CA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v12 = *(v3 + 32);
  v4 = v12;
  v13 = v5;
  v14 = *(v3 + 64);
  v6 = v14;
  v15 = *(v3 + 80);
  v8 = *(v3 + 16);
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  *(a1 + 80) = v15;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *a1 = v7;
  *(a1 + 16) = v8;
  return sub_26CC1B4DC(v11, &v10, &qword_2804BD750, qword_26CD46348);
}

uint64_t sub_26CCC3D34(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  swift_beginAccess();
  v4 = v3[3];
  v13 = v3[2];
  v14 = v4;
  v15 = v3[4];
  v16 = *(v3 + 10);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v18 = v16;
  v17[2] = v13;
  v17[3] = v4;
  v17[4] = v15;
  v17[0] = v11;
  v17[1] = v5;
  *(v3 + 10) = *(a1 + 10);
  v6 = a1[4];
  v3[3] = a1[3];
  v3[4] = v6;
  v7 = a1[2];
  v3[1] = a1[1];
  v3[2] = v7;
  *v3 = *a1;
  sub_26CC1B4DC(&v11, v9, &qword_2804BD750, qword_26CD46348);
  sub_26CC1B544(v17, &qword_2804BD750, qword_26CD46348);
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v10 = v16;
  v9[0] = v11;
  v9[1] = v12;
  sub_26CCC33E0(v9);
  return sub_26CC1B544(&v11, &qword_2804BD750, qword_26CD46348);
}

void (*sub_26CCC3E40(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x290uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 640) = v1;
  v5 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *(v3 + 648) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  *(v4 + 16) = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  *(v4 + 80) = *(v6 + 10);
  *(v4 + 48) = v9;
  *(v4 + 64) = v10;
  *(v4 + 32) = v8;
  v12 = v6[3];
  v11 = v6[4];
  v13 = *(v6 + 10);
  *(v4 + 120) = v6[2];
  *(v4 + 168) = v13;
  *(v4 + 152) = v11;
  *(v4 + 136) = v12;
  v14 = *v6;
  *(v4 + 104) = v6[1];
  *(v4 + 88) = v14;
  sub_26CC1B4DC(v4, v4 + 176, &qword_2804BD750, qword_26CD46348);
  return sub_26CCC3F38;
}

void sub_26CCC3F38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 264;
  v4 = *(v2 + 640) + *(v2 + 648);
  if (a2)
  {
    v5 = *(v2 + 104);
    *(v2 + 440) = *(v2 + 88);
    *(v2 + 456) = v5;
    *(v2 + 520) = *(v2 + 168);
    v6 = *(v2 + 152);
    v7 = *(v2 + 120);
    *(v2 + 488) = *(v2 + 136);
    *(v2 + 504) = v6;
    *(v2 + 472) = v7;
    v8 = *(v4 + 16);
    *(v2 + 352) = *v4;
    *(v2 + 368) = v8;
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
    v11 = *(v4 + 64);
    *(v2 + 432) = *(v4 + 80);
    *(v2 + 400) = v10;
    *(v2 + 416) = v11;
    *(v2 + 384) = v9;
    v13 = *(v4 + 48);
    v12 = *(v4 + 64);
    v14 = *(v4 + 32);
    *(v3 + 80) = *(v4 + 80);
    *(v3 + 48) = v13;
    *(v3 + 64) = v12;
    *(v3 + 32) = v14;
    v15 = *(v4 + 16);
    *v3 = *v4;
    *(v3 + 16) = v15;
    v16 = *(v2 + 104);
    *v4 = *(v2 + 88);
    *(v4 + 16) = v16;
    v17 = *(v2 + 120);
    v18 = *(v2 + 136);
    v19 = *(v2 + 152);
    *(v4 + 80) = *(v2 + 168);
    *(v4 + 48) = v18;
    *(v4 + 64) = v19;
    *(v4 + 32) = v17;
    sub_26CC1B4DC(v2 + 440, v2 + 528, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B4DC(v2 + 352, v2 + 528, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B544(v3, &qword_2804BD750, qword_26CD46348);
    v20 = *(v2 + 400);
    v41 = *(v2 + 384);
    v42 = v20;
    v43 = *(v2 + 416);
    v44 = *(v2 + 432);
    v21 = *(v2 + 368);
    v39 = *(v2 + 352);
    v40 = v21;
    sub_26CCC33E0(&v39);
    sub_26CC1B544(v2 + 352, &qword_2804BD750, qword_26CD46348);
    v22 = *(v2 + 136);
    *(v2 + 208) = *(v2 + 120);
    *(v2 + 224) = v22;
    *(v2 + 240) = *(v2 + 152);
    *(v2 + 256) = *(v2 + 168);
    v23 = *(v2 + 104);
    *(v2 + 176) = *(v2 + 88);
    *(v2 + 192) = v23;
    v24 = v2 + 176;
  }

  else
  {
    v25 = *(v4 + 16);
    *v3 = *v4;
    *(v3 + 16) = v25;
    v27 = *(v4 + 48);
    v26 = *(v4 + 64);
    v28 = *(v4 + 32);
    *(v3 + 80) = *(v4 + 80);
    *(v3 + 48) = v27;
    *(v3 + 64) = v26;
    *(v3 + 32) = v28;
    v29 = *(v4 + 16);
    *(v2 + 176) = *v4;
    *(v2 + 192) = v29;
    v31 = *(v4 + 48);
    v30 = *(v4 + 64);
    v32 = *(v4 + 32);
    *(v2 + 256) = *(v4 + 80);
    *(v2 + 224) = v31;
    *(v2 + 240) = v30;
    *(v2 + 208) = v32;
    v33 = *(v2 + 104);
    *v4 = *(v2 + 88);
    *(v4 + 16) = v33;
    v34 = *(v2 + 120);
    v35 = *(v2 + 136);
    v36 = *(v2 + 152);
    *(v4 + 80) = *(v2 + 168);
    *(v4 + 48) = v35;
    *(v4 + 64) = v36;
    *(v4 + 32) = v34;
    sub_26CC1B4DC(v3, v2 + 352, &qword_2804BD750, qword_26CD46348);
    sub_26CC1B544(v2 + 176, &qword_2804BD750, qword_26CD46348);
    v37 = *(v3 + 48);
    v41 = *(v3 + 32);
    v42 = v37;
    v43 = *(v3 + 64);
    v44 = *(v3 + 80);
    v38 = *(v3 + 16);
    v39 = *v3;
    v40 = v38;
    sub_26CCC33E0(&v39);
    v24 = v3;
  }

  sub_26CC1B544(v24, &qword_2804BD750, qword_26CD46348);

  free(v2);
}

uint64_t sub_26CCC41B8(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v61 = a3;
  v63 = a2;
  v58 = *&a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - v10;
  v70 = sub_26CD3A1EC();
  v68 = *(v70 - 8);
  v12 = *(v68 + 8);
  v13 = MEMORY[0x28223BE20](v70);
  v60 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v59 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v69 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v65 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v66 = &v58 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v58 - v26;
  v28 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v29 = *(v28 - 1);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v35 = (&v58 - v34);
  v36 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CC1B4DC(v4 + v36, v27, &qword_2804BD748, &qword_26CD46340);
  v64 = v29;
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    return sub_26CC1B544(v27, &qword_2804BD748, &qword_26CD46340);
  }

  sub_26CCC4844(v27, v35);
  v38 = v70;
  v39 = v68;
  if (v63)
  {
    goto LABEL_6;
  }

  sub_26CC1B4DC(v61, v11, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v39 + 48))(v11, 1, v38) == 1)
  {
    sub_26CC1B544(v11, &qword_2804BCA90, &qword_26CD3C200);
LABEL_6:
    v40 = v62;
    sub_26CC1B4DC(v35 + v28[5], v62, &qword_2804BCA90, &qword_26CD3C200);
    if ((*(v39 + 48))(v40, 1, v38) == 1)
    {
      sub_26CC1B544(v40, &qword_2804BCA90, &qword_26CD3C200);
      v41 = *v35;
    }

    else
    {
      v42 = v59;
      (*(v39 + 32))(v59, v40, v38);
      v43 = *v35;
      v44 = v60;
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v46 = v45;
      v47 = *(v39 + 8);
      v47(v44, v38);
      v47(v42, v38);
      v39 = v68;
      v41 = v43 + v46 * *(v35 + v28[6]);
    }

    v48 = v69;
    sub_26CD3A1DC();
    goto LABEL_11;
  }

  v41 = v58;
  v48 = v69;
  (*(v39 + 32))();
LABEL_11:
  v49 = v28[5];
  (*(v39 + 16))(v33 + v49, v48, v38);
  (*(v39 + 56))(v33 + v49, 0, 1, v38);
  v50 = v28[6];
  v51 = (v35 + v28[7]);
  v52 = *v51;
  v53 = v51[1];
  *v33 = v41;
  *(v33 + v50) = a4;
  v54 = (v33 + v28[7]);
  *v54 = v52;
  v54[1] = v53;
  v68 = v35;
  v55 = v66;
  sub_26CCC48A8(v33, v66);
  (*(v64 + 56))(v55, 0, 1, v28);
  v56 = v67;
  sub_26CC1B4DC(v4 + v36, v67, &qword_2804BD748, &qword_26CD46340);
  v57 = v65;
  sub_26CC1B4DC(v55, v65, &qword_2804BD748, &qword_26CD46340);
  swift_beginAccess();

  sub_26CCC2E8C(v57, v4 + v36);
  swift_endAccess();
  sub_26CCC279C(v56);
  sub_26CC1B544(v56, &qword_2804BD748, &qword_26CD46340);
  sub_26CC1B544(v55, &qword_2804BD748, &qword_26CD46340);
  sub_26CCC490C(v33);
  (*(v39 + 8))(v69, v70);
  return sub_26CCC490C(v68);
}

uint64_t sub_26CCC4844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC48A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CCC490C(uint64_t a1)
{
  v2 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26CCC4968()
{
  sub_26CCD6CDC();

  return sub_26CCC5DEC();
}

uint64_t sub_26CCC4990()
{
  v1 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();

    v3 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_26CCC4A28(uint64_t a1)
{
  v2[55] = a1;
  v2[56] = v1;
  v2[57] = sub_26CD3A84C();
  v2[58] = sub_26CD3A83C();
  v4 = sub_26CD3A80C();
  v2[59] = v4;
  v2[60] = v3;

  return MEMORY[0x2822009F8](sub_26CCC4AC4, v4, v3);
}

uint64_t sub_26CCC4AC4()
{
  v1 = *(v0 + 448);
  v2 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *(v0 + 488) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  v3 = (v1 + v2);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[10];
  v9 = *(v3 + 2);
  v10 = *(v3 + 4);
  *(v0 + 384) = *(v3 + 3);
  *(v0 + 400) = v10;
  *(v0 + 368) = v9;
  if (v4 == 1 || (v4 | v6) == 0 || v8 >> 60 == 15)
  {
    v13 = *(v0 + 448);
    *(v0 + 496) = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
    v14 = sub_26CD3A42C();
    v15 = sub_26CD3A99C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26CC14000, v14, v15, "Waiting for fetch params with data to be provided", v16, 2u);
      MEMORY[0x26D6AE340](v16, -1, -1);
    }

    v17 = *(v0 + 456);

    *(v0 + 504) = sub_26CD3A83C();
    v18 = *(MEMORY[0x277D859E0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 512) = v19;
    *v19 = v0;
    v19[1] = sub_26CCC4D34;
    v20 = *(v0 + 448);

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v21 = *(v0 + 464);
    v22 = *(v0 + 440);
    *(v0 + 192) = v5;
    *(v0 + 200) = v4;
    *(v0 + 208) = v7;
    *(v0 + 216) = v6;
    v24 = *(v3 + 3);
    v23 = *(v3 + 4);
    *(v0 + 224) = *(v3 + 2);
    *(v0 + 240) = v24;
    *(v0 + 256) = v23;
    *(v0 + 272) = v8;
    sub_26CCC5FC8(v0 + 192, v0 + 280);

    *v22 = v5;
    *(v22 + 8) = v4;
    *(v22 + 16) = v7;
    *(v22 + 24) = v6;
    v25 = *(v0 + 368);
    v26 = *(v0 + 400);
    *(v22 + 48) = *(v0 + 384);
    *(v22 + 64) = v26;
    *(v22 + 32) = v25;
    *(v22 + 80) = v8;
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_26CCC4D34()
{
  v1 = *v0;
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 504);
  v7 = *v0;

  v4 = *(v1 + 480);
  v5 = *(v1 + 472);

  return MEMORY[0x2822009F8](sub_26CCC4E78, v5, v4);
}

uint64_t sub_26CCC4E78()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);

  v4 = sub_26CD3A42C();
  v5 = sub_26CD3A99C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_26CC14000, v4, v5, "Continuing after receiving fetch params with data", v6, 2u);
    MEMORY[0x26D6AE340](v6, -1, -1);
  }

  v7 = *(v0 + 488);
  v8 = *(v0 + 448);

  v9 = *(v8 + v7 + 8);
  if (v9 == 1)
  {
    v10 = *(v0 + 440);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    *(v10 + 80) = 0xF000000000000000;
  }

  else
  {
    v11 = *(v0 + 440);
    v12 = (*(v0 + 448) + *(v0 + 488));
    v13 = *v12;
    *v11 = *v12;
    *(v11 + 8) = v9;
    *(v11 + 16) = *(v12 + 1);
    v14 = *(v12 + 2);
    v15 = *(v12 + 3);
    v16 = *(v12 + 4);
    *(v11 + 80) = v12[10];
    *(v11 + 48) = v15;
    *(v11 + 64) = v16;
    *(v11 + 32) = v14;
    *(v0 + 16) = v13;
    *(v0 + 24) = v9;
    *(v0 + 32) = *(v12 + 1);
    v17 = *(v12 + 2);
    v18 = *(v12 + 3);
    v19 = *(v12 + 4);
    *(v0 + 96) = v12[10];
    *(v0 + 64) = v18;
    *(v0 + 80) = v19;
    *(v0 + 48) = v17;
    sub_26CCC5FC8(v0 + 16, v0 + 104);
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26CCC4FF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26CCBEFCC(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26CCBEFCC(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

void sub_26CCC517C(uint64_t a1, char a2)
{
  v68 = *&a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v65 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v65 - v9;
  v11 = sub_26CD3A1EC();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v65 - v20;
  v22 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v69 = (&v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {
    v27 = *(v2 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();

    v28 = *(v2 + v26);
  }

  *(v2 + v26) = 0;

  if (a2)
  {
    v69 = sub_26CD3A42C();
    v29 = sub_26CD3A99C();
    if (os_log_type_enabled(v69, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26CC14000, v69, v29, "Not scheduling next boundary time since next time is not available", v30, 2u);
      MEMORY[0x26D6AE340](v30, -1, -1);
    }

    v31 = v69;
  }

  else
  {
    v32 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
    swift_beginAccess();
    sub_26CC1B4DC(v2 + v32, v21, &qword_2804BD748, &qword_26CD46340);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_26CC1B544(v21, &qword_2804BD748, &qword_26CD46340);
      v33 = sub_26CD3A42C();
      v34 = sub_26CD3A99C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_26CC14000, v33, v34, "Not scheduling next boundary time since playback state is nil", v35, 2u);
        MEMORY[0x26D6AE340](v35, -1, -1);
      }
    }

    else
    {
      v36 = v69;
      sub_26CCC4844(v21, v69);
      v37 = *(v36 + *(v22 + 24));
      if (v37 <= 0.0)
      {
        v43 = sub_26CD3A42C();
        v44 = sub_26CD3A99C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_26CC14000, v43, v44, "Not scheduling next boundary time since playback rate is 0 or negative", v45, 2u);
          MEMORY[0x26D6AE340](v45, -1, -1);
        }

        sub_26CCC490C(v36);
      }

      else
      {
        v38 = v68;
        sub_26CC1B4DC(v36 + *(v22 + 20), v10, &qword_2804BCA90, &qword_26CD3C200);
        v40 = v65;
        v39 = v66;
        v41 = v2;
        if ((*(v65 + 48))(v10, 1, v66) == 1)
        {
          sub_26CC1B544(v10, &qword_2804BCA90, &qword_26CD3C200);
          v42 = *v36;
        }

        else
        {
          (*(v40 + 32))(v17, v10, v39);
          v46 = *v36;
          sub_26CD3A1DC();
          sub_26CD3A10C();
          v48 = v47;
          v49 = *(v40 + 8);
          v49(v15, v39);
          v49(v17, v39);
          v42 = v46 + v37 * v48;
        }

        v50 = v38 - v42;
        if (v38 - v42 <= 0.0)
        {
          v51 = sub_26CD3A42C();
          v52 = sub_26CD3A99C();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_26CC14000, v51, v52, "Interval to next boundary time is negative.  Scheduling for 0.5 seconds", v53, 2u);
            MEMORY[0x26D6AE340](v53, -1, -1);
          }

          v50 = 0.5;
        }

        v54 = sub_26CD3A42C();
        v55 = sub_26CD3A99C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134218240;
          *(v56 + 4) = v68;
          *(v56 + 12) = 2048;
          *(v56 + 14) = v50;
          _os_log_impl(&dword_26CC14000, v54, v55, "Scheduling timer to fire at next boundary time %f which is in %f seconds", v56, 0x16u);
          MEMORY[0x26D6AE340](v56, -1, -1);
        }

        v57 = sub_26CD3A86C();
        v58 = v67;
        (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
        v59 = swift_allocObject();
        swift_weakInit();
        sub_26CD3A84C();

        v60 = sub_26CD3A83C();
        v61 = swift_allocObject();
        v62 = MEMORY[0x277D85700];
        *(v61 + 16) = v60;
        *(v61 + 24) = v62;
        *(v61 + 32) = v50;
        *(v61 + 40) = v59;

        v63 = sub_26CD2806C(0, 0, v58, &unk_26CD46368, v61);
        sub_26CCC490C(v69);
        v64 = *(v41 + v26);
        *(v41 + v26) = v63;
      }
    }
  }
}

uint64_t sub_26CCC5984(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_26CD3ACFC();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  sub_26CD3A84C();
  *(v5 + 80) = sub_26CD3A83C();
  v10 = sub_26CD3A80C();
  *(v5 + 88) = v10;
  *(v5 + 96) = v9;

  return MEMORY[0x2822009F8](sub_26CCC5A7C, v10, v9);
}

uint64_t sub_26CCC5A7C()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = sub_26CD3B17C();
  v5 = v4;
  sub_26CD3B05C();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_26CCC5B58;
  v7 = v0[9];

  return sub_26CCC68A8(v3, v5, 0, 0, 1);
}

uint64_t sub_26CCC5B58()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  v5 = v2[12];
  v6 = v2[11];
  if (v0)
  {
    v7 = sub_26CCC5D80;
  }

  else
  {
    v7 = sub_26CCC5CE0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26CCC5CE0()
{
  v1 = v0[10];
  v2 = v0[6];

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_26CCD7DD4();
  }

  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCC5D80()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_26CCC5DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD568, &qword_26CD463E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations;
    v20 = v0;
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v10(v5, v12, v1);
      sub_26CD3A82C();
      (*(v9 - 8))(v5, v1);
      v12 += v13;
      --v8;
    }

    while (v8);

    v6 = v19;
    v0 = v20;
    v14 = *(v20 + v19);
  }

  *(v0 + v6) = MEMORY[0x277D84F90];

  v15 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask))
  {
    v16 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3A8DC();

    v17 = *(v0 + v15);
  }

  *(v0 + v15) = 0;
}

uint64_t TimerBasedMetadataVendor.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return TimerBasedMetadataVendor.init()();
}

uint64_t TimerBasedMetadataVendor.init()()
{
  v1 = v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  *v1 = xmmword_26CD3E690;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask) = 0;
  *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations) = MEMORY[0x277D84F90];
  sub_26CD3A43C();

  return TimedMetadataVendor.init()();
}

uint64_t sub_26CCC6108()
{
  sub_26CCC6DD0(*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 8), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 16), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 24), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 32), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 40), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 48), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 56), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 64), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 72), *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 80));
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);

  v3 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v4 = sub_26CD3A44C();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t TimerBasedMetadataVendor.deinit()
{
  v0 = TimedMetadataVendor.deinit();
  v1 = v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams;
  sub_26CCC6DD0(*(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams), *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);

  v4 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v5 = sub_26CD3A44C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t TimerBasedMetadataVendor.__deallocating_deinit()
{
  v0 = TimedMetadataVendor.deinit();
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams);
  v2 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 8);
  v3 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 16);
  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 24);
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 32);
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 40);
  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 48);
  v8 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 56);
  v17 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 64);
  v9 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParams + 80);

  sub_26CCC6DD0(v1, v2, v3, v4, v5, v6, v7, v8, v17, *(&v17 + 1), v9);
  v10 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_boundaryTask);

  v11 = *(v0 + OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_fetchParamsContinuations);

  v12 = OBJC_IVAR____TtC13TVAppServices24TimerBasedMetadataVendor_logger;
  v13 = sub_26CD3A44C();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  v14 = *(*v0 + 48);
  v15 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCC63D8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26CCC6424(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26CC246B8;

  return sub_26CCC5984(v6, a1, v4, v5, v7);
}

uint64_t sub_26CCC64E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_26CD39EBC();
    if (v10)
    {
      v11 = sub_26CD39EDC();
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
      result = sub_26CD39ECC();
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
  v10 = sub_26CD39EBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_26CD39EDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_26CD39ECC();
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

uint64_t sub_26CCC6718(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_26CCC7080(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26CC18C50(a3, a4);
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
  sub_26CCC64E8(v14, a3, a4, &v13);
  v10 = v4;
  sub_26CC18C50(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_26CCC68A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26CD3ACEC();
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

  return MEMORY[0x2822009F8](sub_26CCC69A8, 0, 0);
}

uint64_t sub_26CCC69A8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_26CD3ACFC();
  v7 = sub_26CCC7024(&qword_2804BD780, MEMORY[0x277D85928]);
  sub_26CD3B03C();
  sub_26CCC7024(&qword_2804BD788, MEMORY[0x277D858F8]);
  sub_26CD3AD0C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_26CCC6B38;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_26CCC6B38()
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

    return MEMORY[0x2822009F8](sub_26CCC6CF4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_26CCC6CF4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void sub_26CCC6D88(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

_BYTE **sub_26CCC6DC0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26CCC6DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  if (a2 != 1)
  {

    sub_26CC1D1B8(a10, a11);
  }
}

uint64_t type metadata accessor for TimerBasedMetadataVendor()
{
  result = qword_2804BD770;
  if (!qword_2804BD770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCC6EA4()
{
  result = sub_26CD3A44C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26CCC7024(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26CCC706C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26CCAE954(a1, a2);
  }

  return a1;
}

uint64_t sub_26CCC7080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_26CD39EBC();
  v11 = result;
  if (result)
  {
    result = sub_26CD39EDC();
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

  sub_26CD39ECC();
  sub_26CCC64E8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_26CCC7138(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_26CCAE954(a3, a4);
          return sub_26CCC6718(v13, a2, a3, a4) & 1;
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

uint64_t static AccountMonitor.notifyAccountDidChange()()
{
  v1 = sub_26CD3A49C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD3A4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC18F30();
  v11 = sub_26CD3A9DC();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_26CCC75F8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_8;
  v13 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CCC7600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCC7658();
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_26CCC751C()
{
  v0 = [objc_opt_self() defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  v1 = qword_2804BC8E8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD798, &unk_26CD46420);
  [v0 postNotificationName:v1 object:sub_26CD3B00C() userInfo:0];

  return swift_unknownObjectRelease();
}

unint64_t sub_26CCC7600()
{
  result = qword_280BBB7F0;
  if (!qword_280BBB7F0)
  {
    sub_26CD3A49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7F0);
  }

  return result;
}

unint64_t sub_26CCC7658()
{
  result = qword_280BBB7D0;
  if (!qword_280BBB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCC40, &unk_26CD45D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7D0);
  }

  return result;
}

uint64_t sub_26CCC7724(char a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC77E8(char a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v9 = sub_26CC181C4(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v9, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t Dictionary<>.dictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26CC181C4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a3 + 56) + 32 * v4, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC7944(char a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CCC79F8(char a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (*(a2 + 16))
  {
    v5 = sub_26CC181C4(v3, v4);
    v7 = v6;

    result = 2;
    if (v7)
    {
      sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 2;
      }
    }
  }

  else
  {

    return 2;
  }

  return result;
}

uint64_t sub_26CCC7AAC(char a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26CCC7B60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
        swift_dynamicCast();
        sub_26CC331CC(&v25, v27);
        sub_26CC331CC(v27, v28);
        sub_26CC331CC(v28, &v26);
        result = sub_26CC181C4(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_26CC331CC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_26CC331CC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26CCC7DC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_26CC168C0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_26CC331CC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26CC331CC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26CC331CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26CD3ABDC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26CC331CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26CCC8088(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26CC331CC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26CC331CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26CD3ABDC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26CC331CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_26CCC8340(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD00, &qword_26CD3CFC0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + v15);

        swift_dynamicCast();
        sub_26CC331CC(&v25, v27);
        sub_26CC331CC(v27, v28);
        sub_26CC331CC(v28, &v26);
        result = sub_26CC181C4(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_26CC331CC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_26CC331CC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26CCC8588(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v2 = sub_26CD3AD6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_26CC331CC(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_26CC331CC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26CD3ABDC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_26CC331CC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t HTTPMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4554454C4544;
  v3 = 0x4843544150;
  v4 = 1414745936;
  if (v1 != 3)
  {
    v4 = 5526864;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 5522759;
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

uint64_t sub_26CCC88BC(char a1)
{
  result = 0x6669726556656761;
  switch(a1)
  {
    case 1:
      result = 0x496D616441707061;
      break;
    case 2:
    case 66:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x6C646E7542707061;
      break;
    case 4:
      result = 0x6E6F6349707061;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656D614E707061;
      break;
    case 8:
      result = 0x65726F7453707061;
      break;
    case 9:
      result = 0x6C656E6E616863;
      break;
    case 10:
      result = 0x496C656E6E616863;
      break;
    case 11:
      result = 0x736C656E6E616863;
      break;
    case 12:
      result = 0x746E65746E6F63;
      break;
    case 13:
      result = 0x747865746E6F63;
      break;
    case 14:
      result = 0x55746E65746E6F63;
      break;
    case 15:
      result = 1635017060;
      break;
    case 16:
      result = 0x746C7561666544;
      break;
    case 17:
      result = 0x4E79616C70736964;
      break;
    case 18:
      result = 0x6E6F697461727564;
      break;
    case 19:
      result = 0x4E65646F73697065;
      break;
    case 20:
    case 57:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x4565727574616566;
      break;
    case 22:
    case 77:
      result = 0xD000000000000017;
      break;
    case 23:
      v3 = 1131963752;
      goto LABEL_74;
    case 24:
      result = 0x7365726E6567;
      break;
    case 25:
      result = 0x746867696568;
      break;
    case 26:
      result = 0x7461576F54776F68;
      break;
    case 27:
      result = 25705;
      break;
    case 28:
      result = 0x736567616D69;
      break;
    case 29:
      result = 0x43746C7564417369;
      break;
    case 30:
      result = 0x4F656C7070417369;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x6E65736E6F437369;
      break;
    case 33:
      result = 0x656E6F447369;
      break;
    case 34:
      result = 0xD000000000000010;
      break;
    case 35:
    case 84:
      result = 0xD000000000000018;
      break;
    case 36:
      result = 0x6C6174736E497369;
      break;
    case 37:
      result = 0x73656E7574497369;
      break;
    case 38:
      result = 0x5074737269467369;
      break;
    case 39:
      result = 860910441;
      break;
    case 40:
      result = 0x7263736275537369;
      break;
    case 41:
      result = 0x4270704176547369;
      break;
    case 42:
    case 44:
    case 52:
    case 62:
      result = 0xD000000000000012;
      break;
    case 43:
      result = 0x736D657469;
      break;
    case 45:
      v3 = 1130721130;
LABEL_74:
      result = v3 | 0x726F6C6F00000000;
      break;
    case 46:
      result = 1684957547;
      break;
    case 47:
      result = 0xD000000000000010;
      break;
    case 48:
    case 85:
      result = 0xD000000000000014;
      break;
    case 49:
      result = 1701667182;
      break;
    case 50:
      result = 0x656B6F547478656ELL;
      break;
    case 51:
      result = 1852141679;
      break;
    case 53:
      result = 2036427888;
      break;
    case 54:
      result = 0x656C626179616C70;
      break;
    case 55:
      result = 0x656C626179616C70;
      break;
    case 56:
      result = 0xD00000000000001ELL;
      break;
    case 58:
      result = 0x6E65764579616C70;
      break;
    case 59:
      result = 0x7241726574736F70;
      break;
    case 60:
      result = 0x74756F68636E7570;
      break;
    case 61:
      result = 0x74756F68636E7570;
      break;
    case 63:
      result = 0x676E69746172;
      break;
    case 64:
      result = 0x6E6F73616572;
      break;
    case 65:
      result = 0x44657361656C6572;
      break;
    case 67:
      result = 0xD000000000000011;
      break;
    case 68:
      result = 0x754E6E6F73616573;
      break;
    case 69:
      result = 0x736E6F73616573;
      break;
    case 70:
      result = 0x69546E6F73616573;
      break;
    case 71:
      result = 0x69546E6F73616573;
      break;
    case 72:
      result = 0x666C656873;
      break;
    case 73:
      result = 0x616D49666C656873;
      break;
    case 74:
      result = 0x616D49666C656873;
      break;
    case 75:
      result = 0x657449666C656873;
      break;
    case 76:
      result = 0x74695474726F6873;
      break;
    case 78:
      result = 0x6449776F6873;
      break;
    case 79:
      result = 0x74736F50776F6873;
      break;
    case 80:
      result = 0x6C746954776F6873;
      break;
    case 81:
      result = 0x6C7255776F6873;
      break;
    case 82:
      result = 0x616C507472616D73;
      break;
    case 83:
      result = 0x61467374726F7073;
      break;
    case 86:
      result = 0x6D6574737973;
      break;
    case 87:
      result = 0x79546D6574737973;
      break;
    case 88:
      result = 0x656C746974;
      break;
    case 89:
      result = 1701869940;
      break;
    case 90:
      result = 0x664F6C6C65737075;
      break;
    case 91:
      result = 7107189;
      break;
    case 92:
      result = 1802728565;
      break;
    case 93:
      result = 0x706F72506B737475;
      break;
    case 94:
      result = 0x65756C6176;
      break;
    case 95:
      result = 0x676F4C6574696877;
      break;
    case 96:
      result = 0x6874646977;
      break;
    case 97:
      result = 0x5574756F68746957;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t HeaderKeys.rawValue.getter()
{
  v1 = 0x2D746E65746E6F43;
  if (*v0 != 1)
  {
    v1 = 7169648;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556746E65696C63;
  }
}

uint64_t sub_26CCC9310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656B6F547478656ELL;
  v4 = 0xE90000000000006ELL;
  if (v2 != 1)
  {
    v3 = 0x6F43726579616C70;
    v4 = 0xEF6449746E65746ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x656B6F547478656ELL;
  v8 = 0xE90000000000006ELL;
  if (*a2 != 1)
  {
    v7 = 0x6F43726579616C70;
    v8 = 0xEF6449746E65746ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCC942C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCC94D4()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCC9568()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCC960C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26CCCACE4();
  *a2 = result;
  return result;
}

void sub_26CCC963C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x656B6F547478656ELL;
  if (v2 != 1)
  {
    v5 = 0x6F43726579616C70;
    v4 = 0xEF6449746E65746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

TVAppServices::HTTPMethod_optional __swiftcall HTTPMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCC9708()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCC97CC()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCC987C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCC9948(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4554454C4544;
  v5 = 0xE500000000000000;
  v6 = 0x4843544150;
  v7 = 0xE400000000000000;
  v8 = 1414745936;
  if (v2 != 3)
  {
    v8 = 5526864;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5522759;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t RequestHandlerError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

TVAppServices::HeaderKeys_optional __swiftcall HeaderKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCC9AAC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x2D746E65746E6F43;
  v4 = 0xEC00000065707954;
  if (v2 != 1)
  {
    v3 = 7169648;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6556746E65696C63;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00006E6F697372;
  }

  v7 = 0x2D746E65746E6F43;
  v8 = 0xEC00000065707954;
  if (*a2 != 1)
  {
    v7 = 7169648;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6556746E65696C63;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00006E6F697372;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCC9BB8()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCC9C68()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCC9D04()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CCC9DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697372;
  v4 = 0xEC00000065707954;
  v5 = 0x2D746E65746E6F43;
  if (v2 != 1)
  {
    v5 = 7169648;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6556746E65696C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Dictionary<>.dictionary<A>(for:)(uint64_t a1, uint64_t a2)
{
  sub_26CD3A75C();
  if (!*(a2 + 16))
  {

    return 0;
  }

  v3 = sub_26CC181C4(v8, v9);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id Dictionary<>.isEqual(to:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  sub_26CCC7DC0(a2);
  v3 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v4 = sub_26CD3A4DC();

  v5 = [v3 initWithDictionary_];

  sub_26CCC7DC0(a1);
  v6 = sub_26CD3A4DC();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_26CCCA00C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_46:
    v11 = sub_26CC1CAFC((a5 > 1), v6, 1, v11);
    goto LABEL_43;
  }

  v7 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v13 = HIBYTE(a4) & 0xF) : (v13 = a3 & 0xFFFFFFFFFFFFLL), !v13))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v12 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_26CD3A73C();
    v8 = v27;
    v9 = v28;
    v10 = v29;

    v11 = sub_26CC1CAFC(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v11 + 2);
    a5 = *(v11 + 3);
    goto LABEL_42;
  }

  v14 = 4 * v13;
  v11 = MEMORY[0x277D84F90];
  v10 = 15;
  v8 = 0xE100000000000000;
  do
  {
    v15 = v10 >> 14;
    if (v10 >> 14 == v14)
    {
      break;
    }

    v37 = v11;
    while (1)
    {
      while (1)
      {
        v9 = sub_26CD3A71C();
        v17 = v16;
        if (v9 == 44 && v16 == 0xE100000000000000 || (sub_26CD3AFDC() & 1) != 0 || v9 == 45 && v17 == 0xE100000000000000)
        {

          break;
        }

        v9 = sub_26CD3AFDC();

        if (v9)
        {
          break;
        }

        v15 = sub_26CD3A65C() >> 14;
        if (v15 == v14)
        {
          goto LABEL_35;
        }
      }

      if (v10 >> 14 != v15 || (a2 & 1) == 0)
      {
        break;
      }

      v10 = sub_26CD3A65C();
      v15 = v10 >> 14;
      if (v10 >> 14 == v14)
      {
        goto LABEL_35;
      }
    }

    if (v15 < v10 >> 14)
    {
      __break(1u);
      return result;
    }

    v19 = sub_26CD3A73C();
    v34 = v21;
    v35 = v20;
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_26CC1CAFC(0, *(v11 + 2) + 1, 1, v11);
    }

    v25 = *(v37 + 2);
    v24 = *(v37 + 3);
    v9 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v37 = sub_26CC1CAFC((v24 > 1), v25 + 1, 1, v37);
    }

    *(v37 + 2) = v9;
    v26 = &v37[32 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v35;
    *(v26 + 6) = v23;
    *(v26 + 7) = v34;
    v11 = v37;
    v10 = sub_26CD3A65C();
  }

  while (*(v37 + 2) != a1);
LABEL_35:
  if (v10 >> 14 == v14 && (a2 & 1) != 0)
  {

    return v11;
  }

  if (v14 < v10 >> 14)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_26CD3A73C();
    v8 = v30;
    v9 = v31;
    v10 = v32;

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_41;
    }
  }

  v11 = sub_26CC1CAFC(0, *(v11 + 2) + 1, 1, v11);
LABEL_41:
  v5 = *(v11 + 2);
  a5 = *(v11 + 3);
LABEL_42:
  v6 = v5 + 1;
  if (v5 >= a5 >> 1)
  {
    goto LABEL_46;
  }

LABEL_43:
  *(v11 + 2) = v6;
  v33 = &v11[32 * v5];
  *(v33 + 4) = v7;
  *(v33 + 5) = v8;
  *(v33 + 6) = v9;
  *(v33 + 7) = v10;
  return v11;
}

uint64_t sub_26CCCA404()
{
  v3 = _s13TVAppServices0A12AccountStoreC10storefrontSSSgvgZ_0();
  if (v1)
  {
    v4 = sub_26CCCA00C(0x7FFFFFFFFFFFFFFFLL, 1, v3, v1, v2);
    if (v4[2])
    {
      v6 = v4[4];
      v5 = v4[5];
      v7 = v4[6];
      v8 = v4[7];

      v3 = MEMORY[0x26D6AD010](v6, v5, v7, v8);
      v10 = v9;

      v1 = v10;
    }

    else
    {

      v3 = 0;
      v1 = 0;
    }
  }

  v11 = *(v0 + 8);

  return v11(v3, v1);
}

unint64_t sub_26CCCA4F8()
{
  result = qword_2804BD7A0;
  if (!qword_2804BD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7A0);
  }

  return result;
}

unint64_t sub_26CCCA550()
{
  result = qword_2804BD7A8;
  if (!qword_2804BD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7A8);
  }

  return result;
}

unint64_t sub_26CCCA5A8()
{
  result = qword_2804BD7B0;
  if (!qword_2804BD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7B0);
  }

  return result;
}

unint64_t sub_26CCCA640()
{
  result = qword_2804BD7B8;
  if (!qword_2804BD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7B8);
  }

  return result;
}

unint64_t sub_26CCCA694(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26CD3ABDC();

  return sub_26CCCA86C(a1, v5);
}

unint64_t sub_26CCCA6D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26CD3B0EC();

  return sub_26CCCA934(a1, v4);
}

unint64_t sub_26CCCA71C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_26CD3B0FC();
  sub_26CD3A54C();

  v4 = sub_26CD3B13C();

  return sub_26CCCA9A0(a1, v4);
}

unint64_t sub_26CCCA7E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26CD3A20C();
  sub_26CCCAD8C(&qword_280BBB1C0);
  v5 = sub_26CD3A52C();

  return sub_26CCCAB38(a1, v5);
}

unint64_t sub_26CCCA86C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_26CCCAD30(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D6AD5D0](v9, a1);
      sub_26CC579C4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26CCCA934(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26CCCA9A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x656B6F547478656ELL;
          v8 = 0xE90000000000006ELL;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x6F43726579616C70;
          v8 = 0xEF6449746E65746ELL;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE200000000000000;
            if (v7 != 25705)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v7 = 25705;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x656B6F547478656ELL;
      }

      else
      {
        v10 = 0x6F43726579616C70;
      }

      if (v9 == 1)
      {
        v11 = 0xE90000000000006ELL;
      }

      else
      {
        v11 = 0xEF6449746E65746ELL;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_26CD3AFDC();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26CCCAB38(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26CD3A20C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26CCCAD8C(&qword_280BBB1B8);
      v16 = sub_26CD3A56C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_26CCCACE4()
{
  v0 = sub_26CD3AD9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26CCCAD8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26CD3A20C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26CCCADD0()
{
  type metadata accessor for TVSubscriptionsFetcherActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2804BD7C0 = v0;
  return result;
}

uint64_t sub_26CCCAE10()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CCCAE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC37110;

  return v11(a1, a2, a3);
}

uint64_t sub_26CCCAF90()
{
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26CCCAFEC()
{
  v0 = type metadata accessor for TVSubscriptionsFetcherActor();

  return MEMORY[0x2822005F8](v0);
}

uint64_t sub_26CCCB028()
{
  v1[11] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v4 = sub_26CD3A07C();
  v1[14] = v4;
  v5 = *(v4 - 8);
  v1[15] = v5;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }

  v6 = qword_2804BD7C0;
  v1[19] = qword_2804BD7C0;

  return MEMORY[0x2822009F8](sub_26CCCB1A4, v6, 0);
}

uint64_t sub_26CCCB1A4()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[20] = (*(*(v1 + 24) + 8))();
  if (v3)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_26CC19E10();
    *(v4 + 32) = 0xD00000000000005BLL;
    *(v4 + 40) = 0x800000026CD51390;
    sub_26CD3A3DC();

    v6 = v0[17];
    v5 = v0[18];
    v8 = v0[12];
    v7 = v0[13];

    v9 = v0[1];

    return v9(0);
  }

  else
  {
    v11 = v0[11];
    v13 = *(v11 + 72);
    v12 = *(v11 + 80);
    v17 = (*(v12 + 8) + **(v12 + 8));
    v14 = *(*(v12 + 8) + 4);
    v15 = swift_task_alloc();
    v0[21] = v15;
    *v15 = v0;
    v15[1] = sub_26CCCB428;
    v16 = v0[13];

    return v17(v16, v13, v12);
  }
}

uint64_t sub_26CCCB428()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_26CCCBF7C;
  }

  else
  {
    v6 = sub_26CCCB554;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CCCB554()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(v3);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v4 + 64) = sub_26CC2E6E8();
    *(v4 + 32) = &unk_287DFA690;
    sub_26CD3A3DC();

    sub_26CC3D980();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    v7 = v0[17];
    v6 = v0[18];
    v9 = v0[12];
    v8 = v0[13];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[20];
    v13 = v0[11];
    v14 = *(v2 + 32);
    v14(v0[18], v3, v1);
    v0[8] = v12;
    v15 = sub_26CD3AF8C();
    MEMORY[0x26D6AD060](v15);

    swift_beginAccess();
    v16 = *(v13 + 88);
    if (*(v16 + 16) && (v17 = sub_26CC181C4(2970195, 0xE300000000000000), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v0[23] = v19;
      swift_endAccess();

      if (qword_280BB9C20 != -1)
      {
        swift_once();
      }

      sub_26CD3A99C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26CD3C1E0;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_26CC19E10();
      *(v20 + 32) = 0x1000000000000059;
      *(v20 + 40) = 0x800000026CD513F0;
      sub_26CD3A3DC();

      v21 = *(MEMORY[0x277D857C8] + 4);
      v22 = swift_task_alloc();
      v0[24] = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v22 = v0;
      v22[1] = sub_26CCCBBB4;
      v25 = MEMORY[0x277D84950];
      v26 = v0 + 10;
      v27 = v19;
      v28 = v23;
    }

    else
    {
      v49 = v14;
      v29 = v0[17];
      v45 = v0[18];
      v30 = v0[15];
      v46 = v0[16];
      v47 = v0[19];
      v31 = v0[14];
      v32 = v0[12];
      v48 = v32;
      swift_endAccess();
      v33 = sub_26CD3A86C();
      (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
      v34 = swift_allocObject();
      swift_weakInit();
      v35 = v31;
      (*(v30 + 16))(v29, v45, v31);
      v36 = sub_26CCCCBA4();
      v37 = (*(v30 + 80) + 56) & ~*(v30 + 80);
      v38 = swift_allocObject();
      *(v38 + 2) = v47;
      *(v38 + 3) = v36;
      *(v38 + 4) = v34;
      *(v38 + 5) = 2970195;
      *(v38 + 6) = 0xE300000000000000;
      v49(&v38[v37], v29, v35);

      v39 = sub_26CD27DF0(0, 0, v48, &unk_26CD468D0, v38);
      v0[26] = v39;
      swift_beginAccess();

      v40 = *(v13 + 88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v13 + 88);
      *(v13 + 88) = 0x8000000000000000;
      sub_26CD38C60(v39, 2970195, 0xE300000000000000, isUniquelyReferenced_nonNull_native);

      *(v13 + 88) = v50;
      swift_endAccess();
      v42 = *(MEMORY[0x277D857C8] + 4);
      v43 = swift_task_alloc();
      v0[27] = v43;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCA0, &qword_26CD45DA0);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
      *v43 = v0;
      v43[1] = sub_26CCCBD98;
      v25 = MEMORY[0x277D84950];
      v26 = v0 + 9;
      v27 = v39;
      v28 = v44;
    }

    return MEMORY[0x282200430](v26, v27, v28, v24, v25);
  }
}

uint64_t sub_26CCCBBB4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_26CCCC004;
  }

  else
  {
    v6 = sub_26CCCBCE0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CCCBCE0()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[10];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_26CCCBD98()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_26CCCC0B4;
  }

  else
  {
    v6 = sub_26CCCBEC4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CCCBEC4()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[9];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10(v5);
}

uint64_t sub_26CCCBF7C()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[12];
  v4 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CCCC004()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[25];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26CCCC0B4()
{
  v1 = v0[26];
  v2 = v0[18];
  v3 = v0[14];
  v4 = v0[15];

  (*(v4 + 8))(v2, v3);
  v5 = v0[28];
  v7 = v0[17];
  v6 = v0[18];
  v9 = v0[12];
  v8 = v0[13];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26CCCC164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[15] = a1;
  v8 = sub_26CD3A07C();
  v7[20] = v8;
  v9 = *(v8 - 8);
  v7[21] = v9;
  v10 = *(v9 + 64) + 15;
  v7[22] = swift_task_alloc();
  v11 = sub_26CD39D0C();
  v7[23] = v11;
  v12 = *(v11 - 8);
  v7[24] = v12;
  v13 = *(v12 + 64) + 15;
  v7[25] = swift_task_alloc();
  if (qword_2804BBA58 != -1)
  {
    swift_once();
  }

  v14 = qword_2804BD7C0;
  v7[26] = qword_2804BD7C0;

  return MEMORY[0x2822009F8](sub_26CCCC2C0, v14, 0);
}

uint64_t sub_26CCCC2C0()
{
  v1 = v0[16];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[27] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[25];
    (*(v0[21] + 16))(v0[22], v0[19], v0[20]);
    sub_26CD39C7C();
    v5 = v3[7];
    v6 = v3[8];
    __swift_project_boxed_opaque_existential_1(v3 + 4, v5);
    v7 = *(v6 + 16);
    v17 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[28] = v9;
    *v9 = v0;
    v9[1] = sub_26CCCC580;
    v10 = v0[25];

    return (v17)(v0 + 14, v10, v5, v6);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v12 = v0[15];
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_26CD3C1E0;
    *(v13 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v13 + 64) = sub_26CC2E6E8();
    *(v13 + 32) = &unk_287DFC358;
    sub_26CD3A3DC();

    *v12 = 0;
    v14 = v0[25];
    v15 = v0[22];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_26CCCC580()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_26CCCC934;
  }

  else
  {
    v6 = sub_26CCCC6AC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_26CCCC6AC()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[27];
    v4 = v0[17];
    v3 = v0[18];
    v5 = v0[15];
    (*(v0[24] + 8))(v0[25], v0[23]);
    *v5 = v1;
    swift_beginAccess();

    sub_26CCD644C(0, v4, v3);
    swift_endAccess();

    v6 = v0[25];
    v7 = v0[22];

    v8 = v0[1];
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = v0[27];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v0[23];
    v14 = v0[17];
    v13 = v0[18];
    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v15 + 64) = sub_26CC2E6E8();
    *(v15 + 32) = &unk_287DFC388;
    sub_26CD3A3DC();

    sub_26CC3D980();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
    swift_beginAccess();

    sub_26CCD644C(0, v14, v13);
    swift_endAccess();
    v17 = v0[27];
    v18 = v0[25];
    v19 = v0[22];

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_26CCCC934()
{
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];
  (*(v0[24] + 8))(v0[25], v0[23]);
  swift_beginAccess();

  sub_26CCD644C(0, v3, v2);
  swift_endAccess();
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  v7 = v0[22];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CCCCA10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v1 = *(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_26CCCCA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_26CC37110;

  return v11(a1, a2, a3);
}

unint64_t sub_26CCCCBA4()
{
  result = qword_2804BD7C8;
  if (!qword_2804BD7C8)
  {
    type metadata accessor for TVSubscriptionsFetcherActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7C8);
  }

  return result;
}

uint64_t sub_26CCCCC1C()
{
  if (qword_280BBB5E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_26CCCCCEC;

  return TVBagService.bag.getter(v0 + 16);
}

uint64_t sub_26CCCCCEC()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26CCCCEB0;
  }

  else
  {
    v3 = sub_26CCCCE00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCCCE00()
{
  v2 = v0[6];
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_26CD3A3BC();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_26CCCCEC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CCCCEE8, 0, 0);
}

uint64_t sub_26CCCCEE8()
{
  if (qword_280BBB0C0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26CCCCFC8;
  v2 = *(v0 + 24);

  return sub_26CD2BB90(v2);
}

uint64_t sub_26CCCCFC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_26CCCD114, 0, 0);
  }
}

uint64_t sub_26CCCD114()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = [v1 data];
  v4 = sub_26CD3A0BC();
  v6 = v5;

  v7 = Data.asDictionary()();
  sub_26CC18C50(v4, v6);

  *v2 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_26CCCD1D8(uint64_t a1)
{
  v4 = *(sub_26CD3A07C() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26CC246B8;

  return sub_26CCCC164(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t TimedMetadataRequest.RequestBuildError.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

unint64_t sub_26CCCD37C()
{
  result = qword_2804BD7D0;
  if (!qword_2804BD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7D0);
  }

  return result;
}

uint64_t sub_26CCCD3E0()
{
  sub_26CCCDDF0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_26CCCD448(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 128) = a2;
  v5 = sub_26CD39D0C();
  *(v3 + 24) = v5;
  v6 = *(v5 - 8);
  *(v3 + 32) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  v8 = *(a1 + 16);
  *(v3 + 56) = *a1;
  *(v3 + 72) = v8;
  *(v3 + 88) = *(a1 + 32);
  *(v3 + 129) = *(a1 + 48);

  return MEMORY[0x2822009F8](sub_26CCCD538, 0, 0);
}

uint64_t sub_26CCCD538()
{
  v1 = *(v0 + 129);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  v9 = *(v0 + 128);
  v10 = OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams;
  *(v0 + 104) = OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams;
  v11 = v8 + v10;
  *v11 = v7;
  *(v11 + 8) = v6;
  *(v11 + 16) = v5;
  *(v11 + 24) = v4;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
  *(v11 + 48) = v1;
  *(v8 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_allowExplicitContent) = v9;
  sub_26CCCDE58(v7, v6, v5, v4, v3, v2, v1);
  sub_26CCCDDF0(v7, v6, v5, v4, v3, v2, v1);
  type metadata accessor for UTSURLRequestFactory();
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_26CCCD6A4;
  v13 = *(v0 + 48);

  return sub_26CD027F0(v13, 0x656D2D64656D6974, 0xEE00617461646174, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CCCD6A4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_26CCCD888;
  }

  else
  {
    v3 = sub_26CCCD7B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCCD7B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  (*(v4 + 16))(v2, v1, v3);
  v6 = sub_26CD0881C(v2);
  (*(v4 + 8))(v1, v3);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_26CCCD888()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v4 = v3 + v0[13];
  sub_26CCCDDF0(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  _s27TimedMetadataRequestBuilderCMa();
  v5 = *(*v3 + 48);
  v6 = *(*v3 + 52);
  swift_deallocPartialClassInstance();

  v7 = v0[1];
  v8 = v0[15];

  return v7();
}

uint64_t sub_26CCCD960@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26CD39E2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = (v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams);
  v12 = *(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams);
  v13 = *(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 8);
  if (*(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 48))
  {
    v15 = v11[4];
    v14 = v11[5];
    v17 = v11 + 2;
    v16 = v11[2];
    v20[3] = v17[1];
    v20[1] = v14;
    v20[2] = v16;
    sub_26CD39DFC();
    v21 = a1;
    swift_beginAccess();
    sub_26CCDEE64(v10, v8);
    v18 = *(v4 + 8);
    v18(v10, v3);
    swift_endAccess();
    sub_26CD39DFC();
    swift_beginAccess();
    sub_26CCDEE64(v10, v8);
    v18(v10, v3);
    swift_endAccess();
    sub_26CD39DFC();
    swift_beginAccess();
    a1 = v21;
    sub_26CCDEE64(v10, v8);
  }

  else
  {
    sub_26CD39DFC();
    swift_beginAccess();
    sub_26CCDEE64(v10, v8);
    v18 = *(v4 + 8);
  }

  v18(v10, v3);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_allowExplicitContent);
  *(v1 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_allowExplicitContent);
  sub_26CD39DFC();

  swift_beginAccess();
  sub_26CCDEE64(v10, v8);
  v18(v10, v3);
  swift_endAccess();
  return sub_26CD08B34(a1);
}

uint64_t sub_26CCCDCCC()
{
  v0 = sub_26CD09390();
  sub_26CCCDDF0(*(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 8), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 16), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 24), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 32), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 40), *(v0 + OBJC_IVAR____TtCV13TVAppServices20TimedMetadataRequest27TimedMetadataRequestBuilder_fetchParams + 48));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s27TimedMetadataRequestBuilderCMa()
{
  result = qword_2804BD7D8;
  if (!qword_2804BD7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26CCCDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if (a7)
  {
  }

  return result;
}

uint64_t sub_26CCCDE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    v7 = vars8;
  }
}

__n128 TimedMetadataRequest.init(fetchParams:allowExplicitContent:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *(a1 + 32);
  *(a3 + 32) = result;
  *(a3 + 48) = v3;
  *(a3 + 49) = a2;
  return result;
}

uint64_t TimedMetadataRequest.response()()
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC3F8, &qword_26CD45490) - 8) + 64) + 15;
  *(v1 + 160) = swift_task_alloc();
  v3 = sub_26CD39D0C();
  *(v1 + 168) = v3;
  v4 = *(v3 - 8);
  *(v1 + 176) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 184) = swift_task_alloc();
  v6 = *(v0 + 16);
  *(v1 + 192) = *v0;
  *(v1 + 208) = v6;
  *(v1 + 224) = *(v0 + 32);
  *(v1 + 65) = *(v0 + 48);
  *(v1 + 66) = *(v0 + 49);

  return MEMORY[0x2822009F8](sub_26CCCDFD8, 0, 0);
}

uint64_t sub_26CCCDFD8()
{
  if (qword_280BBACD8 != -1)
  {
    swift_once();
  }

  if (!*(&xmmword_280BBACE0 + 1))
  {
    sub_26CC2E794();
    swift_allocError();
    v12 = 2;
    goto LABEL_26;
  }

  v1 = *(v0 + 65);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (*(v0 + 65))
  {
    if (!v4)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 9;
      goto LABEL_26;
    }

    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v7 = *(v0 + 224) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 10;
      goto LABEL_26;
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    if ((v9 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v10 = *(v0 + 208) & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 11;
LABEL_26:
      *v11 = v12;
      swift_willThrow();
      v19 = *(v0 + 184);
      v20 = *(v0 + 160);

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    if (!v4)
    {
      sub_26CC2E794();
      swift_allocError();
      v12 = 8;
      goto LABEL_26;
    }

    v8 = *(v0 + 208);
    v5 = *(v0 + 224);
  }

  v22 = v8;
  v23 = v5;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v8;
  *(v0 + 48) = v5;
  *(v0 + 64) = v1;
  v13 = _s27TimedMetadataRequestBuilderCMa();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_26CCCDE58(v3, v2, v22, *(&v22 + 1), v23, *(&v23 + 1), v1);
  v16 = swift_task_alloc();
  *(v0 + 240) = v16;
  *v16 = v0;
  v16[1] = sub_26CCCE298;
  v17 = *(v0 + 66);

  return sub_26CCCD448(v0 + 16, v17);
}

uint64_t sub_26CCCE298(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_26CCCE71C;
  }

  else
  {
    *(v4 + 256) = a1;
    v7 = sub_26CCCE3C0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26CCCE3C0()
{
  v1 = v0[32];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  sub_26CCCD960(v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_26CC5BF40(v0[20]);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = &unk_287DFC3B8;
    sub_26CD3A3DC();

    sub_26CC2E794();
    swift_allocError();
    *v6 = 12;
    swift_willThrow();
    v7 = v0[23];
    v8 = v0[20];

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v0[12] = &type metadata for FeatureFlagManager;
    v11 = sub_26CC30530();
    *(v0 + 72) = 0;
    v0[13] = v11;
    v12 = sub_26CD3A29C();
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
    if (v12)
    {
      if (qword_280BBAA78 != -1)
      {
        swift_once();
      }

      v13 = swift_task_alloc();
      v0[33] = v13;
      *v13 = v0;
      v13[1] = sub_26CCCE78C;
      v14 = v0[23];

      return UTSNetworkManager.execute(request:)(v14);
    }

    else
    {
      if (qword_280BBAA78 != -1)
      {
        swift_once();
      }

      v15 = swift_task_alloc();
      v0[35] = v15;
      *v15 = v0;
      v15[1] = sub_26CCCE988;
      v16 = v0[23];

      return sub_26CD2E7BC(v16);
    }
  }
}

uint64_t sub_26CCCE71C()
{
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCCE78C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[33];
  v8 = *v2;
  v4[34] = v1;

  if (v1)
  {
    v6 = sub_26CCCEB84;
  }

  else
  {
    v6 = sub_26CCCE8A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CCCE8A8()
{
  v1 = v0[15];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10(v7, v9);
}

uint64_t sub_26CCCE988(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[35];
  v8 = *v2;
  v4[36] = v1;

  if (v1)
  {
    v6 = sub_26CCCEC0C;
  }

  else
  {
    v6 = sub_26CCCEAA4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26CCCEAA4()
{
  v1 = v0[18];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v6 = [v1 data];
  v7 = sub_26CD3A0BC();
  v9 = v8;

  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10(v7, v9);
}

uint64_t sub_26CCCEB84()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[34];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26CCCEC0C()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[36];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
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

uint64_t sub_26CCCECBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_26CCCED04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26CCCED90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_26CCCEDD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_26CCCEE50()
{
  result = qword_2804BD7E8;
  if (!qword_2804BD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7E8);
  }

  return result;
}

TVAppServices::NotificationCategory_optional __swiftcall NotificationCategory.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t NotificationSetting.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

unint64_t sub_26CCCEF64()
{
  result = qword_2804BD7F0;
  if (!qword_2804BD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7F0);
  }

  return result;
}

unint64_t sub_26CCCEFBC()
{
  result = qword_2804BD7F8;
  if (!qword_2804BD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD7F8);
  }

  return result;
}

uint64_t TimedMetadata.EntityType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t TimedMetadata.EntityType.rawValue.getter()
{
  v1 = 1735290707;
  if (*v0 != 1)
  {
    v1 = 0x7473696C79616C50;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F73726550;
  }
}

uint64_t sub_26CCCF0DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1735290707;
  if (v2 != 1)
  {
    v4 = 0x7473696C79616C50;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F73726550;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1735290707;
  if (*a2 != 1)
  {
    v8 = 0x7473696C79616C50;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F73726550;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

uint64_t sub_26CCCF1CC()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCCF264()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CCCF2E8()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CCCF37C@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TimedMetadata.EntityType.init(rawValue:)(a1);
}

void sub_26CCCF388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1735290707;
  if (v2 != 1)
  {
    v5 = 0x7473696C79616C50;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F73726550;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TimedMetadata.ImageMetadata.joeColor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TimedMetadata.ImageMetadata.url.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}