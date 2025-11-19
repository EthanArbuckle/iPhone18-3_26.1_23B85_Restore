uint64_t sub_26CC8C5F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BCD98, &unk_26CD42AF8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26CC8C670()
{
  result = qword_2804BCDC8;
  if (!qword_2804BCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDC8);
  }

  return result;
}

unint64_t sub_26CC8C6C4()
{
  result = qword_2804BCDD0;
  if (!qword_2804BCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDD0);
  }

  return result;
}

uint64_t Playable.audioTrackFormats.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Playable.channelId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Playable.channelId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Playable.contentId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Playable.contentId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Playable.duration.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Playable.duration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Playable.externalId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Playable.externalId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Playable.externalServiceId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Playable.externalServiceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Playable.playableId.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Playable.playableId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t Playable.videoQuality.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t Playable.videoQuality.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t Playable.videoColorRange.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t Playable.videoColorRange.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

unint64_t sub_26CC8CC88(char a1)
{
  result = 0x7954676E69726961;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x49746E65746E6F63;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6C616E7265747865;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x73656E755469;
      break;
    case 10:
      result = 0x656C626179616C70;
      break;
    case 11:
      result = 0x656C746974627573;
      break;
    case 12:
      result = 0x6175516F65646976;
      break;
    case 13:
      result = 0x6C6F436F65646976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC8CE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC959F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC8CE5C(uint64_t a1)
{
  v2 = sub_26CC8D344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8CE98(uint64_t a1)
{
  v2 = sub_26CC8D344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Playable.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCDD8, &qword_26CD42B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v35 = *(v1 + 2);
  v36 = v9;
  v10 = *(v1 + 3);
  v33 = *(v1 + 4);
  v34 = v10;
  v11 = *(v1 + 5);
  v31 = *(v1 + 6);
  v32 = v11;
  v39 = v1[56];
  v30 = v1[57];
  v12 = *(v1 + 9);
  v28 = *(v1 + 8);
  v29 = v12;
  v13 = *(v1 + 11);
  v26 = *(v1 + 10);
  v27 = v13;
  LODWORD(v11) = v1[96];
  v24 = v1[97];
  v25 = v11;
  v14 = *(v1 + 14);
  v22 = *(v1 + 13);
  v23 = v14;
  v21 = v1[120];
  v15 = *(v1 + 17);
  v20[2] = *(v1 + 16);
  v20[3] = v15;
  v16 = *(v1 + 19);
  v20[1] = *(v1 + 18);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8D344();
  sub_26CD3B16C();
  LOBYTE(v38) = v8;
  v40 = 0;
  sub_26CC8D398();
  v18 = v37;
  sub_26CD3AF1C();
  if (!v18)
  {
    v37 = v16;
    v38 = v36;
    v40 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    sub_26CC3F22C(&qword_280BB9BE0);
    sub_26CD3AF1C();
    LOBYTE(v38) = 2;
    sub_26CD3AECC();
    LOBYTE(v38) = 3;
    sub_26CD3AECC();
    LOBYTE(v38) = 4;
    sub_26CD3AEEC();
    LOBYTE(v38) = 5;
    sub_26CD3AEDC();
    LOBYTE(v38) = 6;
    sub_26CD3AECC();
    LOBYTE(v38) = 7;
    sub_26CD3AECC();
    LOBYTE(v38) = 8;
    sub_26CD3AEDC();
    LOBYTE(v38) = 9;
    sub_26CD3AEDC();
    LOBYTE(v38) = 10;
    sub_26CD3AECC();
    LOBYTE(v38) = 11;
    sub_26CD3AEDC();
    LOBYTE(v38) = 12;
    sub_26CD3AECC();
    LOBYTE(v38) = 13;
    sub_26CD3AECC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC8D344()
{
  result = qword_2804BCDE0;
  if (!qword_2804BCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDE0);
  }

  return result;
}

unint64_t sub_26CC8D398()
{
  result = qword_2804BCDE8;
  if (!qword_2804BCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDE8);
  }

  return result;
}

uint64_t Playable.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCDF0, &qword_26CD42B18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v95 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC8D344();
  sub_26CD3B15C();
  if (v2)
  {
    v97 = v2;
    v50 = 0uLL;
    v52 = 0;
    v53 = 0;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0;
    v51 = 2;
    v54 = 2;
    __swift_destroy_boxed_opaque_existential_1(v46);
    LOBYTE(v66) = 3;
    *(&v66 + 1) = v96[0];
    HIDWORD(v66) = *(v96 + 3);
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = v49;
    v73 = v95;
    v74 = 2;
    v75 = v93;
    v76 = v94;
    v77 = v48;
    v78 = v47;
    v79 = 2;
    v80 = v54;
    v81 = v91;
    v82 = v92;
    v83 = v52;
    v84 = v53;
    v85 = v51;
    *v86 = *v90;
    *&v86[3] = *&v90[3];
    v87 = v50;
    v88 = 0;
    v89 = 0;
  }

  else
  {
    LOBYTE(v55) = 0;
    sub_26CC8DD3C();
    sub_26CD3AE2C();
    v45 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    LOBYTE(v55) = 1;
    sub_26CC3F22C(&qword_2804BBE98);
    sub_26CD3AE2C();
    v44 = v66;
    LOBYTE(v66) = 2;
    *&v43 = sub_26CD3ADDC();
    *(&v43 + 1) = v13;
    LOBYTE(v66) = 3;
    v14 = sub_26CD3ADDC();
    v41 = v15;
    v42 = v14;
    LOBYTE(v66) = 4;
    v49 = sub_26CD3ADFC();
    v95 = v16 & 1;
    LOBYTE(v66) = 5;
    v40 = sub_26CD3ADEC();
    LOBYTE(v66) = 6;
    *&v48 = sub_26CD3ADDC();
    *(&v48 + 1) = v17;
    LOBYTE(v66) = 7;
    *&v47 = sub_26CD3ADDC();
    *(&v47 + 1) = v18;
    LOBYTE(v66) = 8;
    v19 = sub_26CD3ADEC();
    v97 = 0;
    v39 = v19;
    LOBYTE(v66) = 9;
    v54 = sub_26CD3ADEC();
    v97 = 0;
    LOBYTE(v66) = 10;
    v52 = sub_26CD3ADDC();
    v53 = v20;
    v97 = 0;
    LOBYTE(v66) = 11;
    v51 = sub_26CD3ADEC();
    v97 = 0;
    LOBYTE(v66) = 12;
    *&v50 = sub_26CD3ADDC();
    *(&v50 + 1) = v21;
    v97 = 0;
    v65 = 13;
    v22 = sub_26CD3ADDC();
    v97 = 0;
    v23 = v22;
    v25 = v24;
    (*(v6 + 8))(v9, v5);
    v26 = v45;
    LOBYTE(v55) = v45;
    v27 = *(&v43 + 1);
    v28 = v43;
    *(&v55 + 1) = v44;
    v56 = v43;
    v29 = v41;
    *&v57 = v42;
    *(&v57 + 1) = v41;
    *&v58 = v49;
    HIDWORD(v38) = v95;
    BYTE8(v58) = v95;
    v30 = v40;
    BYTE9(v58) = v40;
    v59 = v48;
    v60 = v47;
    LOBYTE(v61) = v39;
    BYTE1(v61) = v54;
    *(&v61 + 1) = v52;
    *&v62 = v53;
    BYTE8(v62) = v51;
    v63 = v50;
    *&v64 = v23;
    *(&v64 + 1) = v25;
    v31 = v57;
    v32 = v58;
    v33 = v47;
    a2[4] = v48;
    a2[5] = v33;
    a2[2] = v31;
    a2[3] = v32;
    v34 = v56;
    *a2 = v55;
    a2[1] = v34;
    v35 = v61;
    v36 = v62;
    v37 = v64;
    a2[8] = v63;
    a2[9] = v37;
    a2[6] = v35;
    a2[7] = v36;
    sub_26CC8DD90(&v55, &v66);
    __swift_destroy_boxed_opaque_existential_1(v46);
    LOBYTE(v66) = v26;
    v67 = v44;
    v68 = v28;
    v69 = v27;
    v70 = v42;
    v71 = v29;
    v72 = v49;
    v73 = BYTE4(v38);
    v74 = v30;
    v75 = v93;
    v76 = v94;
    v77 = v48;
    v78 = v47;
    v79 = v39;
    v80 = v54;
    v82 = v92;
    v81 = v91;
    v83 = v52;
    v84 = v53;
    v85 = v51;
    *&v86[3] = *&v90[3];
    *v86 = *v90;
    v87 = v50;
    v88 = v23;
    v89 = v25;
  }

  return sub_26CC8DD0C(&v66);
}

unint64_t sub_26CC8DD3C()
{
  result = qword_2804BCDF8;
  if (!qword_2804BCDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCDF8);
  }

  return result;
}

uint64_t AiringType.rawValue.getter()
{
  v1 = 0x646E616D65446E4FLL;
  if (*v0 != 1)
  {
    v1 = 0x79616C706552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702259020;
  }
}

uint64_t sub_26CC8DE48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x646E616D65446E4FLL;
  if (v2 != 1)
  {
    v4 = 0x79616C706552;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1702259020;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x646E616D65446E4FLL;
  if (*a2 != 1)
  {
    v8 = 0x79616C706552;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1702259020;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_26CC8DF3C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC8DFD4()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC8E058()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC8E0F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x646E616D65446E4FLL;
  if (v2 != 1)
  {
    v5 = 0x79616C706552;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1702259020;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t Video.assets.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_26CC8E218(v2, v3);
}

uint64_t sub_26CC8E218(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 Video.assets.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  sub_26CC8E2B4(*v1, v1[1]);
  result = *a1;
  v10 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v10;
  v1[4] = v3;
  v1[5] = v4;
  return result;
}

uint64_t sub_26CC8E2B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t Video.duration.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t Video.duration.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t Video.externalId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t Video.externalId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Video.id.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t Video.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Video.images.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t Video.title.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

uint64_t Video.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 112);

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t sub_26CC8E550()
{
  v1 = *v0;
  v2 = 0x737465737361;
  v3 = 25705;
  v4 = 0x736567616D69;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26CC8E5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC95E74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC8E620(uint64_t a1)
{
  v2 = sub_26CC8E9BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8E65C(uint64_t a1)
{
  v2 = sub_26CC8E9BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Video.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE00, &qword_26CD42B20);
  v34 = *(v32 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = v23 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = v10;
  v41 = *(v1 + 56);
  v12 = *(v1 + 64);
  v27 = *(v1 + 72);
  v28 = v12;
  v13 = *(v1 + 80);
  v25 = *(v1 + 88);
  v26 = v13;
  v14 = *(v1 + 96);
  v23[0] = *(v1 + 104);
  v23[1] = *(v1 + 112);
  v24 = v14;
  v15 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = v30;
  sub_26CC8E218(v6, v7);
  sub_26CC8E9BC();
  v17 = v32;
  sub_26CD3B16C();
  v35 = v6;
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v18 = v5;
  v39 = v11;
  v40 = v16;
  v42 = 0;
  sub_26CC8EA10();
  v19 = v33;
  sub_26CD3AF1C();
  if (v19)
  {
    sub_26CC8E2B4(v35, v36);
    return (*(v34 + 8))(v5, v17);
  }

  else
  {
    v21 = v24;
    v22 = v34;
    sub_26CC8E2B4(v35, v36);
    LOBYTE(v35) = 1;
    sub_26CD3AEEC();
    LOBYTE(v35) = 2;
    sub_26CD3AECC();
    LOBYTE(v35) = 3;
    sub_26CD3AECC();
    v35 = v21;
    v42 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    sub_26CC8C5F8(&qword_2804BCDA0, sub_26CC8B6C4);
    sub_26CD3AF1C();
    LOBYTE(v35) = 5;
    sub_26CD3AECC();
    return (*(v22 + 8))(v18, v17);
  }
}

unint64_t sub_26CC8E9BC()
{
  result = qword_2804BCE08;
  if (!qword_2804BCE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE08);
  }

  return result;
}

unint64_t sub_26CC8EA10()
{
  result = qword_2804BCE10;
  if (!qword_2804BCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE10);
  }

  return result;
}

uint64_t Video.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE18, &qword_26CD42B28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v74 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC8E9BC();
  sub_26CD3B15C();
  if (v2)
  {
    v75 = v2;
    v45 = 0;
    v46 = 0uLL;
    v47 = 0;
    v44 = 0;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v58 = 0;
    v59 = 1;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = v74;
    *v66 = *v73;
    *&v66[3] = *&v73[3];
    v67 = v44;
    v68 = v47;
    v69 = v46;
    v71 = 0;
    v72 = 0;
    v70 = v45;
  }

  else
  {
    LOBYTE(v49) = 0;
    sub_26CC8EFC0();
    sub_26CD3AE2C();
    v13 = v58;
    v14 = v60;
    v41 = v59;
    v42 = v61;
    v40 = v62;
    v43 = v63;
    sub_26CC8E2B4(0, 1);
    LOBYTE(v58) = 1;
    v15 = a2;
    v38 = sub_26CD3ADFC();
    v39 = v14;
    v74 = v16 & 1;
    LOBYTE(v58) = 2;
    v17 = sub_26CD3ADDC();
    v47 = v18;
    LOBYTE(v58) = 3;
    v19 = sub_26CD3ADDC();
    v44 = v17;
    *&v46 = v19;
    *(&v46 + 1) = v20;
    v37 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCD98, &unk_26CD42AF8);
    LOBYTE(v49) = 4;
    sub_26CC8C5F8(&qword_2804BCDC0, sub_26CC8C670);
    sub_26CD3AE2C();
    v45 = v58;
    v57 = 5;
    v21 = sub_26CD3ADDC();
    v75 = 0;
    v23 = v22;
    v24 = v21;
    (*(v6 + 8))(v9, v5);
    v25 = v40;
    *&v49 = v37;
    *(&v49 + 1) = v41;
    *&v50 = v39;
    *(&v50 + 1) = v42;
    *&v51 = v40;
    *(&v51 + 1) = v43;
    *&v52 = v38;
    HIDWORD(v36) = v74;
    BYTE8(v52) = v74;
    *&v53 = v17;
    v27 = *(&v46 + 1);
    v26 = v47;
    v29 = v45;
    v28 = v46;
    *(&v53 + 1) = v47;
    v54 = v46;
    *&v55 = v45;
    *(&v55 + 1) = v24;
    v56 = v23;
    v31 = v53;
    v30 = v46;
    v32 = v55;
    *(v15 + 112) = v23;
    *(v15 + 80) = v30;
    *(v15 + 96) = v32;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    *(v15 + 48) = v52;
    *(v15 + 64) = v31;
    *(v15 + 16) = v34;
    *(v15 + 32) = v35;
    *v15 = v33;
    sub_26CC8F014(&v49, &v58);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v58 = v37;
    v59 = v41;
    v60 = v39;
    v61 = v42;
    v62 = v25;
    v63 = v43;
    v64 = v38;
    v65 = BYTE4(v36);
    v67 = v44;
    v68 = v26;
    *&v69 = v28;
    *(&v69 + 1) = v27;
    v70 = v29;
    v71 = v24;
    v72 = v23;
  }

  return sub_26CC8EF90(&v58);
}

unint64_t sub_26CC8EFC0()
{
  result = qword_2804BCE20;
  if (!qword_2804BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE20);
  }

  return result;
}

uint64_t Asset.assetId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Asset.assetId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Asset.hlsUrl.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Asset.hlsUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Asset.programId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Asset.programId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26CC8F214()
{
  v1 = 0x6C7255736C68;
  if (*v0 != 1)
  {
    v1 = 0x496D6172676F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64497465737361;
  }
}

uint64_t sub_26CC8F270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC96064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC8F298(uint64_t a1)
{
  v2 = sub_26CC8F4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8F2D4(uint64_t a1)
{
  v2 = sub_26CC8F4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Asset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE28, &qword_26CD42B30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8F4D4();
  sub_26CD3B16C();
  v18 = 0;
  v13 = v15[5];
  sub_26CD3AECC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_26CD3AECC();
  v16 = 2;
  sub_26CD3AECC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC8F4D4()
{
  result = qword_2804BCE30;
  if (!qword_2804BCE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE30);
  }

  return result;
}

uint64_t Asset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE38, &qword_26CD42B38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8F4D4();
  sub_26CD3B15C();
  if (!v2)
  {
    v29 = 0;
    v11 = sub_26CD3ADDC();
    v14 = v13;
    v15 = v11;
    v28 = 1;
    v16 = sub_26CD3ADDC();
    v18 = v17;
    v26 = v16;
    v27 = 2;
    v19 = sub_26CD3ADDC();
    v20 = *(v6 + 8);
    v25 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    *a2 = v15;
    a2[1] = v14;
    v24 = v25;
    a2[2] = v26;
    a2[3] = v18;
    a2[4] = v24;
    a2[5] = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ContentRating.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ContentRating.displayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ContentRating.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ContentRating.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ContentRating.system.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ContentRating.system.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ContentRating.value.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t ContentRating.value.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_26CC8F9C0()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC8FA14()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC8FA58@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26CD3AD9C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_26CC8FAC8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26CD3AD9C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26CC8FB20(uint64_t a1)
{
  v2 = sub_26CC8FF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8FB5C(uint64_t a1)
{
  v2 = sub_26CC8FF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC8FBBC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26CC8FBEC(uint64_t a1)
{
  v2 = sub_26CC8FF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC8FC28(uint64_t a1)
{
  v2 = sub_26CC8FF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentRating.SystemType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE40, &qword_26CD42B40);
  v19 = *(v3 - 8);
  v20 = v3;
  v4 = *(v19 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE48, &qword_26CD42B48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8FF28();
  sub_26CD3B16C();
  if (v12)
  {
    sub_26CC8FF7C();
    sub_26CD3AEAC();
    (*(v19 + 8))(v6, v20);
  }

  else
  {
    v15 = sub_26CD3ACBC();
    swift_allocError();
    v17 = v16;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE60, &qword_26CD42B50) + 48);
    *(v17 + 24) = &type metadata for ContentRating.SystemType;
    *v17 = 0;
    sub_26CD3AEBC();
    sub_26CD3AC8C();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D841A8], v15);
    swift_willThrow();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_26CC8FF28()
{
  result = qword_2804BCE50;
  if (!qword_2804BCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE50);
  }

  return result;
}

unint64_t sub_26CC8FF7C()
{
  result = qword_2804BCE58;
  if (!qword_2804BCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE58);
  }

  return result;
}

uint64_t ContentRating.SystemType.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t ContentRating.SystemType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE68, &qword_26CD42B58);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE70, &qword_26CD42B60);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC8FF28();
  sub_26CD3B15C();
  if (!v2)
  {
    v13 = v23;
    v21 = v8;
    if (*(sub_26CD3AE9C() + 16) == 1)
    {
      sub_26CC8FF7C();
      sub_26CD3ADBC();
      v14 = v21;
      (*(v13 + 8))(v7, v4);
      (*(v14 + 8))(v11, v24);
      swift_unknownObjectRelease();
      *v22 = 1;
    }

    else
    {
      v15 = sub_26CD3AC9C();
      swift_allocError();
      v17 = v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE78, &qword_26CD42B68) + 48);
      *v17 = &type metadata for ContentRating.SystemType;
      sub_26CD3ADCC();
      sub_26CD3AC8C();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
      swift_willThrow();
      (*(v21 + 8))(v11, v24);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC90398()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x6D6574737973;
  v4 = 0x79546D6574737973;
  if (v1 != 3)
  {
    v4 = 0x65756C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_26CC90430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC96180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC90458(uint64_t a1)
{
  v2 = sub_26CC90738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC90494(uint64_t a1)
{
  v2 = sub_26CC90738();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentRating.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE80, &qword_26CD42B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v21 = v1[3];
  v22 = v10;
  v11 = v1[4];
  v19 = v1[5];
  v20 = v11;
  v18 = *(v1 + 48);
  v17 = v1[7];
  v16[1] = *(v1 + 64);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC90738();
  sub_26CD3B16C();
  v29 = 0;
  v13 = v23;
  sub_26CD3AECC();
  if (!v13)
  {
    v14 = v18;
    v28 = 1;
    sub_26CD3AECC();
    v27 = 2;
    sub_26CD3AECC();
    v26 = v14;
    v25 = 3;
    sub_26CC9078C();
    sub_26CD3AF1C();
    v24 = 4;
    sub_26CD3AF0C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC90738()
{
  result = qword_2804BCE88;
  if (!qword_2804BCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE88);
  }

  return result;
}

unint64_t sub_26CC9078C()
{
  result = qword_2804BCE90;
  if (!qword_2804BCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCE90);
  }

  return result;
}

uint64_t ContentRating.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCE98, &qword_26CD42B78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v53 = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC90738();
  sub_26CD3B15C();
  if (v2)
  {
    v55 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    LOBYTE(v44) = 0;
    *&v37 = sub_26CD3ADDC();
    *(&v37 + 1) = v18;
    LOBYTE(v44) = 1;
    v14 = sub_26CD3ADDC();
    v35 = a2;
    v36 = v19;
    LOBYTE(v44) = 2;
    v20 = sub_26CD3ADDC();
    v55 = 0;
    v12 = v20;
    v11 = v21;
    LOBYTE(v38) = 3;
    sub_26CC90BD4();
    v22 = v55;
    sub_26CD3AE2C();
    if (!v22)
    {
      v23 = v44;
      v43 = 4;
      v24 = sub_26CD3AE1C();
      v55 = 0;
      v26 = v25;
      v27 = *(v6 + 8);
      v34 = v24;
      v27(v9, v5);
      v26 &= 1u;
      v53 = v26;
      v28 = v37;
      v38 = v37;
      v29 = v36;
      *&v39 = v14;
      *(&v39 + 1) = v36;
      *&v40 = v12;
      *(&v40 + 1) = v11;
      LOBYTE(v41) = v23;
      *(&v41 + 1) = v34;
      v42 = v26;
      v30 = v35;
      *(v35 + 64) = v26;
      v31 = v41;
      v30[2] = v40;
      v30[3] = v31;
      v32 = v39;
      *v30 = v38;
      v30[1] = v32;
      sub_26CC90C28(&v38, &v44);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v44 = v28;
      v45 = v14;
      v46 = v29;
      v47 = v12;
      v48 = v11;
      v49 = v23;
      v51 = v34;
      v52 = v26;
      return sub_26CC90BA4(&v44);
    }

    v55 = v22;
    (*(v6 + 8))(v9, v5);
    v15 = *(&v37 + 1);
    v16 = v37;
    v13 = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v44 = v16;
  *(&v44 + 1) = v15;
  v45 = v14;
  v46 = v13;
  v47 = v12;
  v48 = v11;
  v49 = 2;
  *v50 = v54[0];
  *&v50[3] = *(v54 + 3);
  v51 = 0;
  v52 = v53;
  return sub_26CC90BA4(&v44);
}

unint64_t sub_26CC90BD4()
{
  result = qword_2804BCEA0;
  if (!qword_2804BCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEA0);
  }

  return result;
}

uint64_t ArtworkVariant.artworkSize.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return result;
}

uint64_t ArtworkVariant.artworkSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t ArtworkVariant.artworkURLString.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ArtworkVariant.artworkURLString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ArtworkVariant.artworkURLTemplate.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ArtworkVariant.artworkURLTemplate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ArtworkVariant.format.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ArtworkVariant.format.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_26CC90EFC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x536B726F77747261;
    if (v1 != 1)
    {
      v5 = 0x546B726F77747261;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6168706C61;
    }
  }

  else
  {
    v2 = 0x74616D726F66;
    if (v1 != 5)
    {
      v2 = 0xD000000000000014;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26CC90FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC96334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC91018(uint64_t a1)
{
  v2 = sub_26CC91374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC91054(uint64_t a1)
{
  v2 = sub_26CC91374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArtworkVariant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEA8, &qword_26CD42B80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v19 - v6;
  v8 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = v8;
  v27 = v1[24];
  v20 = v1[25];
  v9 = *(v1 + 4);
  v19[5] = *(v1 + 5);
  v19[6] = v9;
  v10 = *(v1 + 7);
  v19[3] = *(v1 + 6);
  v19[4] = v10;
  v11 = *(v1 + 9);
  v19[1] = *(v1 + 8);
  v19[2] = v11;
  v12 = v1[80];
  v13 = a1[4];
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC91374();
  sub_26CD3B16C();
  LOBYTE(v24) = 0;
  v15 = v3;
  v16 = v23;
  sub_26CD3AEDC();
  if (!v16)
  {
    v17 = v20;
    v24 = v22;
    v25 = v21;
    v26 = v27;
    v28 = 1;
    type metadata accessor for CGSize(0);
    sub_26CC88084(&qword_2804BCEB8, type metadata accessor for CGSize);
    sub_26CD3AF1C();
    LOBYTE(v24) = v17;
    v28 = 2;
    sub_26CC913C8();
    sub_26CD3AF1C();
    LOBYTE(v24) = 3;
    sub_26CD3AECC();
    LOBYTE(v24) = 4;
    sub_26CD3AECC();
    LOBYTE(v24) = 5;
    sub_26CD3AECC();
    LOBYTE(v24) = 6;
    sub_26CD3AEDC();
  }

  return (*(v4 + 8))(v7, v15);
}

unint64_t sub_26CC91374()
{
  result = qword_2804BCEB0;
  if (!qword_2804BCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEB0);
  }

  return result;
}

unint64_t sub_26CC913C8()
{
  result = qword_2804BCEC0;
  if (!qword_2804BCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEC0);
  }

  return result;
}

uint64_t ArtworkVariant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEC8, &qword_26CD42B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v68 = 1;
  v10 = a1[3];
  v11 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26CC91374();
  sub_26CD3B15C();
  if (v2)
  {
    v70 = v2;
    v43 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 2;
  }

  else
  {
    LOBYTE(v52) = 0;
    v12 = sub_26CD3ADEC();
    v70 = 0;
    v42 = v12;
    type metadata accessor for CGSize(0);
    LOBYTE(v45) = 1;
    sub_26CC88084(&qword_2804BCED0, type metadata accessor for CGSize);
    v17 = v70;
    sub_26CD3AE2C();
    v70 = v17;
    if (v17)
    {
      (*(v6 + 8))(v9, v5);
      v43 = 0;
      v13 = 0;
      v14 = 0;
      v15 = v42;
    }

    else
    {
      v40 = v52;
      v41 = v53;
      v68 = v54;
      LOBYTE(v45) = 2;
      sub_26CC91AB4();
      v18 = v70;
      sub_26CD3AE2C();
      if (!v18)
      {
        v19 = v52;
        LOBYTE(v52) = 3;
        v39 = sub_26CD3ADDC();
        v37 = v19;
        v38 = v20;
        LOBYTE(v52) = 4;
        v21 = a2;
        v22 = sub_26CD3ADDC();
        v24 = v23;
        LOBYTE(v52) = 5;
        v25 = sub_26CD3ADDC();
        v43 = v26;
        v51 = 6;
        v27 = sub_26CD3ADEC();
        v70 = 0;
        v28 = v27;
        (*(v6 + 8))(v9, v5);
        LOBYTE(v45) = v42;
        DWORD1(v45) = *(v69 + 3);
        *(&v45 + 1) = v69[0];
        *(&v45 + 1) = v40;
        *&v46 = v41;
        v36 = v68;
        BYTE8(v46) = v68;
        LOBYTE(v19) = v37;
        BYTE9(v46) = v37;
        HIWORD(v46) = v67;
        *(&v46 + 10) = v66;
        v29 = v38;
        *&v47 = v39;
        *(&v47 + 1) = v38;
        *&v48 = v22;
        *(&v48 + 1) = v24;
        v30 = v25;
        *&v49 = v25;
        v31 = v43;
        *(&v49 + 1) = v43;
        v50 = v28;
        v32 = v46;
        *v21 = v45;
        *(v21 + 16) = v32;
        v33 = v47;
        v34 = v48;
        v35 = v49;
        *(v21 + 80) = v28;
        *(v21 + 48) = v34;
        *(v21 + 64) = v35;
        *(v21 + 32) = v33;
        sub_26CC91B08(&v45, &v52);
        __swift_destroy_boxed_opaque_existential_1(v44);
        LOBYTE(v52) = v42;
        *(&v52 + 1) = v69[0];
        HIDWORD(v52) = *(v69 + 3);
        v53 = v40;
        v54 = v41;
        v55 = v36;
        v56 = v19;
        v57 = v66;
        v58 = v67;
        v59 = v39;
        v60 = v29;
        v61 = v22;
        v62 = v24;
        v63 = v30;
        v64 = v31;
        v65 = v28;
        return sub_26CC91A84(&v52);
      }

      v70 = v18;
      (*(v6 + 8))(v9, v5);
      v43 = 0;
      v15 = v42;
      v13 = v41;
      v14 = v40;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  LOBYTE(v52) = v15;
  *(&v52 + 1) = v69[0];
  HIDWORD(v52) = *(v69 + 3);
  v53 = v14;
  v54 = v13;
  v55 = v68;
  v56 = 27;
  v57 = v66;
  v58 = v67;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = v43;
  v65 = 2;
  return sub_26CC91A84(&v52);
}

unint64_t sub_26CC91AB4()
{
  result = qword_2804BCED8;
  if (!qword_2804BCED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCED8);
  }

  return result;
}

TVAppServices::ArtworkType_optional __swiftcall ArtworkType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AFEC();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t ArtworkType.rawValue.getter()
{
  result = 0x6F636E6F69746361;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F6369707061;
      break;
    case 2:
      result = 0x72656E6E6162;
      break;
    case 3:
      result = 0x68636E6974736163;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x6C746E65746E6F63;
      break;
    case 6:
    case 7:
      result = 0x7472617265766F63;
      break;
    case 8:
      result = 0x74616566646F7665;
      break;
    case 9:
      result = 0x65736163776F6C66;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0x67616D696F726568;
      break;
    case 0xD:
      result = 0x656D61726679656BLL;
      break;
    case 0xE:
      result = 0x656D61726679656BLL;
      break;
    case 0xF:
      result = 0x70796C676F676F6CLL;
      break;
    case 0x10:
      result = 0xD000000000000011;
      break;
    case 0x11:
      result = 0x726568746FLL;
      break;
    case 0x12:
      result = 0x7261726574736F70;
      break;
    case 0x13:
      result = 0x6677656976657270;
      break;
    case 0x14:
      result = 0x616D69666C656873;
      break;
    case 0x15:
      result = 0xD000000000000014;
      break;
    case 0x16:
      result = 0x74736F70776F6873;
      break;
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 0x18:
      result = 0x6F676F6C776F6873;
      break;
    case 0x19:
      result = 0xD000000000000010;
      break;
    case 0x1A:
      result = 0x676F6C6574696877;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26CC92058@<X0>(unint64_t *a1@<X8>)
{
  result = ArtworkType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

TVAppServices::ContentType_optional __swiftcall ContentType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x65646F73697045;
  v3 = 0x6E6F73616553;
  v4 = 2003789907;
  if (v1 != 3)
  {
    v4 = 0x676E6974726F7053;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6569766F4DLL;
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

uint64_t sub_26CC92230()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC92310()
{
  *v0;
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC923DC()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC924C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65646F73697045;
  v5 = 0xE600000000000000;
  v6 = 0x6E6F73616553;
  v7 = 0xE400000000000000;
  v8 = 2003789907;
  if (v2 != 3)
  {
    v8 = 0x676E6974726F7053;
    v7 = 0xED0000746E657645;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6569766F4DLL;
    v3 = 0xE500000000000000;
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

uint64_t Genre.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Genre.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Genre.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Genre.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_26CC92720()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_26CC92748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

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

uint64_t sub_26CC9281C(uint64_t a1)
{
  v2 = sub_26CC92A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC92858(uint64_t a1)
{
  v2 = sub_26CC92A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Genre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEE0, &qword_26CD42B90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC92A28();
  sub_26CD3B16C();
  v16 = 0;
  v12 = v14[3];
  sub_26CD3AECC();
  if (!v12)
  {
    v15 = 1;
    sub_26CD3AECC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_26CC92A28()
{
  result = qword_2804BCEE8;
  if (!qword_2804BCEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEE8);
  }

  return result;
}

uint64_t Genre.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCEF0, &qword_26CD42B98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC92A28();
  sub_26CD3B15C();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_26CD3ADDC();
    v13 = v12;
    v19 = v11;
    v20 = 1;
    v15 = sub_26CD3ADDC();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

TVAppServices::ItemContext_optional __swiftcall ItemContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ItemContext.rawValue.getter()
{
  result = 0x556F546465646441;
  switch(*v0)
  {
    case 1:
    case 3:
      result = 0x6C62616C69617641;
      break;
    case 2:
      result = 0x656C62616C617641;
      break;
    case 4:
      result = 0x65756E69746E6F43;
      break;
    case 5:
      result = 0x657469726F766146;
      break;
    case 6:
      result = 1702259020;
      break;
    case 7:
      result = 0x6F7369704577654ELL;
      break;
    case 8:
      result = 0x6F7361655377654ELL;
      break;
    case 9:
      result = 0x736970457478654ELL;
      break;
    case 0xA:
      result = 0x736165537478654ELL;
      break;
    case 0xB:
      result = 0x6573616863727550;
      break;
    case 0xC:
      result = 0x6C61746E6552;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26CC92E94()
{
  result = qword_2804BCEF8;
  if (!qword_2804BCEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCEF8);
  }

  return result;
}

unint64_t sub_26CC92EEC()
{
  result = qword_2804BCF00;
  if (!qword_2804BCF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF00);
  }

  return result;
}

unint64_t sub_26CC92F44()
{
  result = qword_2804BCF08;
  if (!qword_2804BCF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF08);
  }

  return result;
}

unint64_t sub_26CC92F9C()
{
  result = qword_2804BCF10;
  if (!qword_2804BCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF10);
  }

  return result;
}

unint64_t sub_26CC92FF4()
{
  result = qword_2804BCF18;
  if (!qword_2804BCF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF18);
  }

  return result;
}

uint64_t sub_26CC93060(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26CD3AFDC();
  }

  return v11 & 1;
}

unint64_t sub_26CC9310C()
{
  result = qword_2804BCF20;
  if (!qword_2804BCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCF20);
  }

  return result;
}

uint64_t sub_26CC93178(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_26CD3B0FC();
  a3(v6);
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC93200(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_26CD3A54C();
}

uint64_t sub_26CC93280(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_26CD3B0FC();
  a4(v7);
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC932F8@<X0>(uint64_t *a1@<X8>)
{
  result = ItemContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26CC933F8()
{
  sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_26CC93A44(319, &qword_2804BCF38, &qword_2804BCD58, &qword_26CD42AD0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26CC934DC()
{
  sub_26CC939F8(319, &qword_280BB9BF8);
  if (v0 <= 0x3F)
  {
    sub_26CC93680(319, &qword_2804BCF50, type metadata accessor for ContentMetadata);
    if (v1 <= 0x3F)
    {
      sub_26CC93680(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_26CC939F8(319, &qword_2804BCF58);
        if (v3 <= 0x3F)
        {
          sub_26CC939F8(319, &qword_2804BCF60);
          if (v4 <= 0x3F)
          {
            sub_26CC939F8(319, &qword_2804BCF68);
            if (v5 <= 0x3F)
            {
              sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26CC93680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26CD3AADC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26CC9370C()
{
  sub_26CC939F8(319, &qword_2804BCF80);
  if (v0 <= 0x3F)
  {
    sub_26CC939F8(319, &qword_280BB9BF8);
    if (v1 <= 0x3F)
    {
      sub_26CC93A44(319, &qword_2804BCF88, &unk_2804BCA20, &unk_26CD3D4D0);
      if (v2 <= 0x3F)
      {
        sub_26CC939F8(319, &qword_2804BBB38);
        if (v3 <= 0x3F)
        {
          sub_26CC939F8(319, &qword_2804BCF90);
          if (v4 <= 0x3F)
          {
            sub_26CC939F8(319, &qword_2804BCF98);
            if (v5 <= 0x3F)
            {
              sub_26CC939F8(319, &qword_2804BCFA0);
              if (v6 <= 0x3F)
              {
                sub_26CC939F8(319, &qword_2804BCFA8);
                if (v7 <= 0x3F)
                {
                  sub_26CC939F8(319, &qword_2804BCF68);
                  if (v8 <= 0x3F)
                  {
                    sub_26CC93A44(319, &qword_2804BCFB0, &qword_2804BCD98, &unk_26CD42AF8);
                    if (v9 <= 0x3F)
                    {
                      sub_26CC939F8(319, &qword_2804BCFB8);
                      if (v10 <= 0x3F)
                      {
                        sub_26CC93680(319, &qword_280BBB690, MEMORY[0x277CC9578]);
                        if (v11 <= 0x3F)
                        {
                          sub_26CC93A44(319, &qword_2804BCFC0, &qword_2804BC050, &qword_26CD3EC00);
                          if (v12 <= 0x3F)
                          {
                            sub_26CC93680(319, &qword_280BBB1C8, MEMORY[0x277CC9260]);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26CC939F8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26CD3AADC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26CC93A44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26CD3AADC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_26CC93AE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_26CC93B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_26CC93BC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_26CC93C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26CC93CB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
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

uint64_t sub_26CC93D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26CC93DB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26CC93E14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Playable.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Playable.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26CC94090(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26CC94120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26CC94204()
{
  result = qword_2804BCFC8;
  if (!qword_2804BCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFC8);
  }

  return result;
}

unint64_t sub_26CC9425C()
{
  result = qword_2804BCFD0;
  if (!qword_2804BCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFD0);
  }

  return result;
}

unint64_t sub_26CC942B4()
{
  result = qword_2804BCFD8;
  if (!qword_2804BCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFD8);
  }

  return result;
}

unint64_t sub_26CC9430C()
{
  result = qword_2804BCFE0;
  if (!qword_2804BCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFE0);
  }

  return result;
}

unint64_t sub_26CC94364()
{
  result = qword_2804BCFE8;
  if (!qword_2804BCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFE8);
  }

  return result;
}

unint64_t sub_26CC943BC()
{
  result = qword_2804BCFF0;
  if (!qword_2804BCFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFF0);
  }

  return result;
}

unint64_t sub_26CC94414()
{
  result = qword_2804BCFF8;
  if (!qword_2804BCFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BCFF8);
  }

  return result;
}

unint64_t sub_26CC9446C()
{
  result = qword_2804BD000;
  if (!qword_2804BD000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD000);
  }

  return result;
}

unint64_t sub_26CC944C4()
{
  result = qword_2804BD008;
  if (!qword_2804BD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD008);
  }

  return result;
}

unint64_t sub_26CC9451C()
{
  result = qword_2804BD010;
  if (!qword_2804BD010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD010);
  }

  return result;
}

unint64_t sub_26CC94574()
{
  result = qword_2804BD018;
  if (!qword_2804BD018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD018);
  }

  return result;
}

unint64_t sub_26CC945CC()
{
  result = qword_2804BD020;
  if (!qword_2804BD020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD020);
  }

  return result;
}

unint64_t sub_26CC94624()
{
  result = qword_2804BD028;
  if (!qword_2804BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD028);
  }

  return result;
}

unint64_t sub_26CC9467C()
{
  result = qword_2804BD030;
  if (!qword_2804BD030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD030);
  }

  return result;
}

unint64_t sub_26CC946D4()
{
  result = qword_2804BD038;
  if (!qword_2804BD038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD038);
  }

  return result;
}

unint64_t sub_26CC9472C()
{
  result = qword_2804BD040;
  if (!qword_2804BD040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD040);
  }

  return result;
}

unint64_t sub_26CC94784()
{
  result = qword_2804BD048;
  if (!qword_2804BD048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD048);
  }

  return result;
}

unint64_t sub_26CC947DC()
{
  result = qword_2804BD050;
  if (!qword_2804BD050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD050);
  }

  return result;
}

unint64_t sub_26CC94834()
{
  result = qword_2804BD058;
  if (!qword_2804BD058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD058);
  }

  return result;
}

unint64_t sub_26CC9488C()
{
  result = qword_2804BD060;
  if (!qword_2804BD060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD060);
  }

  return result;
}

unint64_t sub_26CC948E4()
{
  result = qword_2804BD068;
  if (!qword_2804BD068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD068);
  }

  return result;
}

unint64_t sub_26CC9493C()
{
  result = qword_2804BD070;
  if (!qword_2804BD070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD070);
  }

  return result;
}

unint64_t sub_26CC94994()
{
  result = qword_2804BD078;
  if (!qword_2804BD078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD078);
  }

  return result;
}

unint64_t sub_26CC949EC()
{
  result = qword_2804BD080;
  if (!qword_2804BD080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD080);
  }

  return result;
}

unint64_t sub_26CC94A44()
{
  result = qword_2804BD088;
  if (!qword_2804BD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD088);
  }

  return result;
}

unint64_t sub_26CC94A9C()
{
  result = qword_2804BD090;
  if (!qword_2804BD090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD090);
  }

  return result;
}

unint64_t sub_26CC94AF4()
{
  result = qword_2804BD098;
  if (!qword_2804BD098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD098);
  }

  return result;
}

unint64_t sub_26CC94B4C()
{
  result = qword_2804BD0A0;
  if (!qword_2804BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0A0);
  }

  return result;
}

unint64_t sub_26CC94BA4()
{
  result = qword_2804BD0A8;
  if (!qword_2804BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0A8);
  }

  return result;
}

unint64_t sub_26CC94BFC()
{
  result = qword_2804BD0B0;
  if (!qword_2804BD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0B0);
  }

  return result;
}

unint64_t sub_26CC94C54()
{
  result = qword_2804BD0B8;
  if (!qword_2804BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0B8);
  }

  return result;
}

unint64_t sub_26CC94CAC()
{
  result = qword_2804BD0C0;
  if (!qword_2804BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0C0);
  }

  return result;
}

uint64_t sub_26CC94D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEF61746164617465 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026CD4FC50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70795461746C6564 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61746E65527369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168637275507369 && a2 == 0xEA00000000006573 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4DE70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEB000000004C5255 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 9;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26CC95050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC95174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF6F65646956646ELL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69726F6765746163 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x800000026CD4DE50 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEF74786554657669 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x444F56457369 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4F656C7070417369 && a2 == 0xEF6C616E69676972 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x64496E6F73616573 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6D496E6F73616573 && a2 == 0xEC00000073656761 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x74695474726F6873 && a2 == 0xEA0000000000656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6449776F6873 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x67616D49776F6873 && a2 == 0xEA00000000007365 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x7372656C69617274 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FC70 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067)
  {

    return 26;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t sub_26CC959F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954676E69726961 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FC90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026CD4DEB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026CD4DEF0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x73656E755469 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C626179616C70 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE900000000000064 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6175516F65646976 && a2 == 0xEC0000007974696CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6C6F436F65646976 && a2 == 0xEF65676E6152726FLL)
  {

    return 13;
  }

  else
  {
    v5 = sub_26CD3AFDC();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_26CC95E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC96064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496D6172676F7270 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC96180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79546D6574737973 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_26CC96334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6168706C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536B726F77747261 && a2 == 0xEB00000000657A69 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546B726F77747261 && a2 == 0xEB00000000657079 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FCB0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026CD4FCD0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026CD4DE30 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_26CC96580()
{
  result = qword_2804BD0C8;
  if (!qword_2804BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0C8);
  }

  return result;
}

unint64_t sub_26CC965D4()
{
  result = qword_2804BD0D0;
  if (!qword_2804BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0D0);
  }

  return result;
}

unint64_t sub_26CC96628()
{
  result = qword_2804BD0D8;
  if (!qword_2804BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0D8);
  }

  return result;
}

unint64_t sub_26CC9667C()
{
  result = qword_2804BD0E0;
  if (!qword_2804BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0E0);
  }

  return result;
}

unint64_t sub_26CC966D0()
{
  result = qword_2804BD0E8;
  if (!qword_2804BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0E8);
  }

  return result;
}

void sub_26CC96734(uint64_t a1, char a2)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  sub_26CD3AC6C();

  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_280BBA238 != -1)
      {
        swift_once();
      }

      v3 = &qword_280BBA240;
    }

    else
    {
      if (qword_280BBA248 != -1)
      {
        swift_once();
      }

      v3 = &qword_280BBA250;
    }
  }

  else
  {
    if (qword_280BBA228 != -1)
    {
      swift_once();
    }

    v3 = &qword_280BBA230;
  }

  v4 = *v3;
  v5 = sub_26CD3A5CC();
  MEMORY[0x26D6AD060](v5);

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26CC19E10();
  *(v6 + 32) = 0xD00000000000001BLL;
  *(v6 + 40) = 0x800000026CD4FDC0;
  sub_26CD3A3DC();

  v7 = [objc_opt_self() defaultCenter];
  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_280BBA238 != -1)
      {
        swift_once();
      }

      v8 = &qword_280BBA240;
    }

    else
    {
      if (qword_280BBA248 != -1)
      {
        swift_once();
      }

      v8 = &qword_280BBA250;
    }
  }

  else
  {
    if (qword_280BBA228 != -1)
    {
      swift_once();
    }

    v8 = &qword_280BBA230;
  }

  v9 = *v8;
  [v7 postNotificationName:v9 object:0];
}

uint64_t sub_26CC96A5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26CC96AB0(char a1)
{
  if (qword_280BB9C18 != -1)
  {
    swift_once();
  }

  sub_26CD3AC6C();

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD00000000000002ALL;
    }

    else
    {
      v2 = 0xD000000000000028;
    }

    if (a1 == 1)
    {
      v3 = "ervices.accountDidChange";
    }

    else
    {
      v3 = "ocess notification:";
    }
  }

  else
  {
    v2 = 0xD00000000000002CLL;
    v3 = "ervices.favoritesDidChange";
  }

  MEMORY[0x26D6AD060](v2, v3 | 0x8000000000000000);

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26CD3C1E0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26CC19E10();
  *(v4 + 32) = 0xD000000000000023;
  *(v4 + 40) = 0x800000026CD4FCF0;
  sub_26CD3A3DC();

  v5 = sub_26CD3A61C();

  notify_post((v5 + 32));
}

uint64_t SportsFavoriteService.UserConsent.Status.rawValue.getter()
{
  v1 = 0x64656E696C636564;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_26CC96D08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v3 = 0x6465747065636361;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x64656E696C636564;
  if (*a2 != 1)
  {
    v6 = 0x6465747065636361;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();
  }

  return v9 & 1;
}

uint64_t sub_26CC96E0C()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC96EB0()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC96F40()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

void sub_26CC96FE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v4 = 0x6465747065636361;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_26CC970E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC98834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC9710C(uint64_t a1)
{
  v2 = sub_26CC17780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC97148(uint64_t a1)
{
  v2 = sub_26CC17780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.UserConsent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD0F0, &qword_26CD44408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC17780();
  sub_26CD3B16C();
  v15[15] = *v3;
  v15[14] = 0;
  sub_26CC97370();
  sub_26CD3AF6C();
  if (!v2)
  {
    v11 = type metadata accessor for SportsFavoriteService.UserConsent.State();
    v12 = *(v11 + 20);
    v15[13] = 1;
    sub_26CD3A1EC();
    sub_26CC169F4(&qword_2804BCD30);
    sub_26CD3AF1C();
    v13 = v3[*(v11 + 24)];
    v15[12] = 2;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_26CC97370()
{
  result = qword_2804BD0F8;
  if (!qword_2804BD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD0F8);
  }

  return result;
}

uint64_t SportsFavoriteService.UserConsent.Modification.init(status:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = sub_26CD3AFDC();

    if ((v4 & 1) == 0)
    {
      *a2 = v2;
      return result;
    }
  }

  else
  {
  }

  sub_26CC974A4();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_26CC974A4()
{
  result = qword_2804BD108;
  if (!qword_2804BD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD108);
  }

  return result;
}

uint64_t SportsFavoriteService.UserConsent.State.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_26CD3A16C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_26CD3AC6C();

  v24 = 0x3A73757461747328;
  v25 = 0xE800000000000000;
  v11 = 0x64656E696C636564;
  if (*v0 != 1)
  {
    v11 = 0x6465747065636361;
  }

  if (*v0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v13 = 0xE800000000000000;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  MEMORY[0x26D6AD060](v12, v13);

  MEMORY[0x26D6AD060](0xD000000000000013, 0x800000026CD4FE70);
  v14 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  sub_26CC1B4DC(&v0[*(v14 + 20)], v10, &qword_2804BCA90, &qword_26CD3C200);
  v15 = sub_26CD3A1EC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_26CC1B544(v10, &qword_2804BCA90, &qword_26CD3C200);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    sub_26CC9783C(v6);
    v19 = sub_26CD3A0FC();
    v17 = v20;
    (*(v3 + 8))(v6, v2);
    (*(v16 + 8))(v10, v15);
    v18 = v19;
  }

  MEMORY[0x26D6AD060](v18, v17);

  MEMORY[0x26D6AD060](0x747269447369202CLL, 0xEA00000000003A79);
  if (v1[*(v14 + 24)])
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v1[*(v14 + 24)])
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v21, v22);

  MEMORY[0x26D6AD060](41, 0xE100000000000000);
  return v24;
}

uint64_t sub_26CC9783C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD128, &qword_26CD447E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = sub_26CD3A28C();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26CD3A15C();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26CD3A13C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26CD3A11C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26CD3A12C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_26CD3A27C();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_26CD3A14C();
  }

  return result;
}

unint64_t sub_26CC97C44()
{
  result = qword_2804BD110;
  if (!qword_2804BD110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD110);
  }

  return result;
}

unint64_t sub_26CC97D04()
{
  result = qword_2804BD118;
  if (!qword_2804BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD118);
  }

  return result;
}

unint64_t sub_26CC97D5C()
{
  result = qword_2804BD120;
  if (!qword_2804BD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD120);
  }

  return result;
}

uint64_t sub_26CC97DB0(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_26CD3A1EC();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  MEMORY[0x28223BE20](v6);
  v80 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD130, &qword_26CD447E8);
  v9 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v78[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v78[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v86 = &v78[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v87 = &v78[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v84 = &v78[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v78[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v81 = &v78[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v78[-v31];
  v33 = MEMORY[0x28223BE20](v30);
  v88 = &v78[-v34];
  MEMORY[0x28223BE20](v33);
  v36 = &v78[-v35];
  v37 = *a2;
  sub_26CC1B4DC(a3, v14, &qword_2804BC8C0, &qword_26CD447F0);
  v38 = _s10NetworkingO12FetchedValueOMa(0);
  if ((*(*(v38 - 8) + 48))(v14, 1, v38) == 1)
  {
    sub_26CC1B544(v14, &qword_2804BC8C0, &qword_26CD447F0);
    if (v37 == 3)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    LODWORD(v44) = *v14;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD138, &unk_26CD45540);
    v46 = *(v45 + 64);
    sub_26CC98950(&v14[*(v45 + 48)], v36);
    sub_26CC98950(&v14[v46], v88);
    v47 = 0x64656E696C636564;
    if (*a1 != 1)
    {
      v47 = 0x6465747065636361;
    }

    if (*a1)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0x6E776F6E6B6E75;
    }

    if (*a1)
    {
      v49 = 0xE800000000000000;
    }

    else
    {
      v49 = 0xE700000000000000;
    }

    v50 = v6;
    v51 = v83;
    if (v44)
    {
      v52 = 0xE800000000000000;
      if (v44 == 1)
      {
        v53 = 0x6E696C636564;
      }

      else
      {
        v53 = 0x747065636361;
      }

      if (v48 != (v53 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
      {
        goto LABEL_40;
      }
    }

    else
    {
      v52 = 0xE700000000000000;
      if (v48 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }

    if (v49 == v52)
    {

      v56 = v89;
LABEL_41:
      v58 = type metadata accessor for SportsFavoriteService.UserConsent.State();
      sub_26CC1B4DC(&a1[*(v58 + 20)], v32, &qword_2804BCA90, &qword_26CD3C200);
      v59 = *(v82 + 48);
      sub_26CC1B4DC(v32, v51, &qword_2804BCA90, &qword_26CD3C200);
      sub_26CC1B4DC(v36, v51 + v59, &qword_2804BCA90, &qword_26CD3C200);
      v60 = *(v56 + 48);
      if (v60(v51, 1, v50) == 1)
      {
        sub_26CC1B544(v32, &qword_2804BCA90, &qword_26CD3C200);
        if (v60(v51 + v59, 1, v50) == 1)
        {
          sub_26CC1B544(v51, &qword_2804BCA90, &qword_26CD3C200);
LABEL_49:
          v61 = 0;
          goto LABEL_50;
        }

        goto LABEL_46;
      }

      LODWORD(v82) = v44;
      v44 = v81;
      sub_26CC1B4DC(v51, v81, &qword_2804BCA90, &qword_26CD3C200);
      if (v60(v51 + v59, 1, v50) == 1)
      {
        sub_26CC1B544(v32, &qword_2804BCA90, &qword_26CD3C200);
        (*(v56 + 8))(v44, v50);
        LOBYTE(v44) = v82;
LABEL_46:
        sub_26CC1B544(v51, &qword_2804BD130, &qword_26CD447E8);
        goto LABEL_47;
      }

      v62 = v51 + v59;
      v63 = v80;
      (*(v56 + 32))(v80, v62, v50);
      sub_26CC169F4(&qword_2804BD140);
      v79 = sub_26CD3A56C();
      v64 = v51;
      v65 = *(v89 + 8);
      v65(v63, v50);
      sub_26CC1B544(v32, &qword_2804BCA90, &qword_26CD3C200);
      v65(v44, v50);
      v56 = v89;
      sub_26CC1B544(v64, &qword_2804BCA90, &qword_26CD3C200);
      LOBYTE(v44) = v82;
      if (v79)
      {
        goto LABEL_49;
      }

LABEL_47:
      v61 = 1;
LABEL_50:
      *a1 = v44;
      v66 = v84;
      sub_26CC98950(v36, v84);
      v67 = *(v56 + 48);
      if (v67(v66, 1, v50) == 1)
      {
        v68 = type metadata accessor for SportsFavoriteService.UserConsent.State();
        v69 = v85;
        sub_26CC1B4DC(&a1[*(v68 + 20)], v85, &qword_2804BCA90, &qword_26CD3C200);
        v70 = v67(v66, 1, v50);
        v72 = v86;
        v71 = v87;
        if (v70 != 1)
        {
          sub_26CC1B544(v66, &qword_2804BCA90, &qword_26CD3C200);
        }
      }

      else
      {
        v69 = v85;
        (*(v56 + 32))(v85, v66, v50);
        (*(v56 + 56))(v69, 0, 1, v50);
        v72 = v86;
        v71 = v87;
      }

      v73 = type metadata accessor for SportsFavoriteService.UserConsent.State();
      sub_26CC17CCC(v69, &a1[*(v73 + 20)]);
      sub_26CC98950(v88, v72);
      if (v67(v72, 1, v50) == 1)
      {
        v74 = &a1[*(_s5CacheC5ModelVMa(0) + 20)];
        v75 = type metadata accessor for SportsFavoriteService.Favorites.State();
        sub_26CC1B4DC(&v74[*(v75 + 20)], v71, &qword_2804BCA90, &qword_26CD3C200);
        if (v67(v72, 1, v50) != 1)
        {
          sub_26CC1B544(v72, &qword_2804BCA90, &qword_26CD3C200);
        }
      }

      else
      {
        (*(v56 + 32))(v71, v72, v50);
        (*(v56 + 56))(v71, 0, 1, v50);
      }

      v76 = &a1[*(_s5CacheC5ModelVMa(0) + 20)];
      v77 = type metadata accessor for SportsFavoriteService.Favorites.State();
      sub_26CC17CCC(v71, &v76[*(v77 + 20)]);
      a1[*(v73 + 24)] = 0;
      return v61;
    }

LABEL_40:
    v57 = sub_26CD3AFDC();

    v56 = v89;
    if ((v57 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  sub_26CC182B8(v14, _s10NetworkingO12FetchedValueOMa);
  if (v37 == 3)
  {
    return 0;
  }

LABEL_6:
  sub_26CD3A1CC();
  (*(v89 + 56))(v19, 0, 1, v6);
  v39 = type metadata accessor for SportsFavoriteService.UserConsent.State();
  sub_26CC17CCC(v19, &a1[*(v39 + 20)]);
  if (*a1)
  {
    v40 = 0xE800000000000000;
    if (*a1 == 1)
    {
      v41 = 0x64656E696C636564;
      if (v37)
      {
        goto LABEL_9;
      }

LABEL_23:
      v42 = 0xE700000000000000;
      if (v41 == 0x6E776F6E6B6E75)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v41 = 0x6465747065636361;
    if (!v37)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v40 = 0xE700000000000000;
    v41 = 0x6E776F6E6B6E75;
    if (!v37)
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v42 = 0xE800000000000000;
  if (v37 == 1)
  {
    v43 = 0x6E696C636564;
  }

  else
  {
    v43 = 0x747065636361;
  }

  if (v41 == (v43 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
  {
LABEL_29:
    if (v40 == v42)
    {

      return 0;
    }
  }

LABEL_31:
  v55 = sub_26CD3AFDC();

  if (v55)
  {
    return 0;
  }

  *a1 = v37;
  return 1;
}

uint64_t sub_26CC98834(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79747269447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC98950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC989C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_26CCEB1F8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_26CD3AB6C();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 32 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_26CCEB1F8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_26CC2FADC(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_26CC2FADC(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_26CC98BEC(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = 0;
  v3 = result + 32;
  v4 = MEMORY[0x277D84FA0];
  v23 = MEMORY[0x277D84FA0];
  v5 = MEMORY[0x277D84FA0];
  do
  {
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      v7 = v3 + 16 * v6;
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v9 != 2)
      {
        break;
      }

      v25 = v4;
      v10 = *(v8 + 16);

      if (v10)
      {
        v11 = (v8 + 40);
        do
        {
          v13 = *(v11 - 1);
          v12 = *v11;

          sub_26CC197B4(&v24, v13, v12);

          v11 += 2;
          --v10;
        }

        while (v10);
        v4 = v25;
      }

      v6 = v2;
      if (v2 == v1)
      {
        return v5;
      }
    }

    if (v9)
    {
      v25 = v23;
      v18 = *(v8 + 16);

      if (v18)
      {
        v22 = v5;
        v19 = (v8 + 40);
        do
        {
          v21 = *(v19 - 1);
          v20 = *v19;

          sub_26CC197B4(&v24, v21, v20);

          v19 += 2;
          --v18;
        }

        while (v18);
        v23 = v25;
        v5 = v22;
      }
    }

    else
    {
      v25 = v5;
      v14 = *(v8 + 16);

      if (v14)
      {
        v15 = (v8 + 40);
        do
        {
          v17 = *(v15 - 1);
          v16 = *v15;

          sub_26CC197B4(&v24, v17, v16);

          v15 += 2;
          --v14;
        }

        while (v14);
        v5 = v25;
      }
    }
  }

  while (v2 != v1);
  return v5;
}

uint64_t sub_26CC98DD8(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v27 = result + 40;
  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_6:
  v28 = v4;
  v6 = (v27 + 16 * v2);
  for (i = v2; i < v1; ++i)
  {
    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_55;
    }

    v8 = *(v6 - 1);
    v9 = *(v8 + 16);
    if (*v6 != 2)
    {
      if (!*v6)
      {
        v17 = *(v5 + 16);
        v18 = v17 + v9;
        v4 = v28;
        if (__OFADD__(v17, v9))
        {
          goto LABEL_61;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v18 <= *(v5 + 24) >> 1)
        {
          if (!*(v8 + 16))
          {
LABEL_4:

            if (v9)
            {
              goto LABEL_62;
            }

            goto LABEL_5;
          }
        }

        else
        {
          if (v17 <= v18)
          {
            v23 = v17 + v9;
          }

          else
          {
            v23 = v17;
          }

          result = sub_26CCBE3BC(result, v23, 1, v5);
          v5 = result;
          if (!*(v8 + 16))
          {
            goto LABEL_4;
          }
        }

        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v9)
        {
          goto LABEL_63;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v24 = *(v5 + 16);
          v15 = __OFADD__(v24, v9);
          v25 = v24 + v9;
          if (v15)
          {
            goto LABEL_65;
          }

          *(v5 + 16) = v25;
        }

LABEL_5:
        if (v2 == v1)
        {
          return v5;
        }

        goto LABEL_6;
      }

      v4 = v28;
      v19 = *(v28 + 16);
      v20 = v19 + v9;
      if (__OFADD__(v19, v9))
      {
        goto LABEL_60;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v20 <= *(v28 + 24) >> 1)
      {
        if (*(v8 + 16))
        {
LABEL_35:
          if ((*(v4 + 24) >> 1) - *(v4 + 16) < v9)
          {
            goto LABEL_64;
          }

          swift_arrayInitWithCopy();

          if (v9)
          {
            v21 = *(v4 + 16);
            v15 = __OFADD__(v21, v9);
            v22 = v21 + v9;
            if (v15)
            {
              goto LABEL_66;
            }

            *(v4 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v26 = v19 + v9;
        }

        else
        {
          v26 = v19;
        }

        result = sub_26CCBE3BC(result, v26, 1, v28);
        v4 = result;
        if (*(v8 + 16))
        {
          goto LABEL_35;
        }
      }

      if (v9)
      {
        __break(1u);
        return v5;
      }

      goto LABEL_5;
    }

    v10 = *(v3 + 16);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_56;
    }

    v12 = *(v6 - 1);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v3 + 24) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v13 = v10 + v9;
      }

      else
      {
        v13 = v10;
      }

      result = sub_26CCBE3BC(result, v13, 1, v3);
      v3 = result;
      if (*(v8 + 16))
      {
LABEL_21:
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v9)
        {
          goto LABEL_58;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v14 = *(v3 + 16);
          v15 = __OFADD__(v14, v9);
          v16 = v14 + v9;
          if (v15)
          {
            goto LABEL_59;
          }

          *(v3 + 16) = v16;
        }

        goto LABEL_8;
      }
    }

    if (v9)
    {
      goto LABEL_57;
    }

LABEL_8:
    v6 += 16;
    if (v2 == v1)
    {
      return v5;
    }
  }

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
  return result;
}

uint64_t sub_26CC99114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v6 = a2 + 56;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(a2 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v9))));
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      LOBYTE(v14) = *(v14 + 25);
      v19[0] = v16;
      v19[1] = v15;
      v19[2] = v17;
      v20 = v18;
      v21 = v14;

      sub_26CC9B3CC(&v22, v19, a3);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v22;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SportsFavoriteService.Favorites.Favorite.Type.init(rawValue:)@<X0>(char *a1@<X8>)
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

uint64_t SportsFavoriteService.Favorites.Favorite.Type.rawValue.getter()
{
  v1 = 0x65756761656CLL;
  if (*v0 != 1)
  {
    v1 = 0x746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1835099508;
  }
}

uint64_t sub_26CC99310(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1835099508;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x65756761656CLL;
  if (*a2 != 1)
  {
    v8 = 0x746E657665;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1835099508;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_26CC993FC()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC99490()
{
  *v0;
  *v0;
  sub_26CD3A54C();
}

uint64_t sub_26CC99510()
{
  v1 = *v0;
  sub_26CD3B0FC();
  sub_26CD3A54C();

  return sub_26CD3B13C();
}

uint64_t sub_26CC995A0@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return SportsFavoriteService.Favorites.Favorite.Type.init(rawValue:)(a1);
}

void sub_26CC995AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x65756761656CLL;
  if (v2 != 1)
  {
    v5 = 0x746E657665;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1835099508;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t SportsFavoriteService.Favorites.Favorite.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SportsFavoriteService.Favorites.Favorite.order.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t SportsFavoriteService.Favorites.Favorite.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26CD3A54C();
}

uint64_t sub_26CC99700()
{
  v1 = 0x726564726FLL;
  if (*v0 != 1)
  {
    v1 = 1701869940;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_26CC99744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC9C310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC9976C(uint64_t a1)
{
  v2 = sub_26CC9BC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC997A8(uint64_t a1)
{
  v2 = sub_26CC9BC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.Favorites.Favorite.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD148, &qword_26CD447F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v16 = v1[2];
  v18 = *(v1 + 24);
  v15 = *(v1 + 25);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC9BC80();
  sub_26CD3B16C();
  v22 = 0;
  v11 = v17;
  sub_26CD3AF2C();
  if (!v11)
  {
    v13 = v15;
    v21 = 1;
    sub_26CD3AEFC();
    v20 = v13;
    v19 = 2;
    sub_26CC9BCD4();
    sub_26CD3AF6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SportsFavoriteService.Favorites.Favorite.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t SportsFavoriteService.Favorites.Favorite.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD160, &qword_26CD44800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC9BC80();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_26CD3AE3C();
  v13 = v12;
  v14 = v11;
  v24 = 1;
  v15 = sub_26CD3AE0C();
  v21 = v16;
  v20 = v15;
  v22 = 2;
  sub_26CC9BD28();
  sub_26CD3AE7C();
  (*(v6 + 8))(v9, v5);
  v18 = v23;
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21 & 1;
  *(a2 + 25) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26CC99CA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC99CEC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_26CD3A54C();
}

uint64_t sub_26CC99CF4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t SportsFavoriteService.Favorites.Modification.FailureReason.hashValue.getter()
{
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](0);
  return sub_26CD3B13C();
}

uint64_t SportsFavoriteService.Favorites.State.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SportsFavoriteService.Favorites.State() + 20);

  return sub_26CC9BD7C(v3, a1);
}

uint64_t sub_26CC99E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v117 - v7;
  v121 = v2;
  v119 = *v2;
  v8 = sub_26CC989C4(v119);
  v9 = sub_26CCF3078(v8);

  v129[10] = v9;
  v123 = *(a1 + 16);
  if (v123)
  {
    v117 = 0;
    v118 = a2;
    v10 = 0;
    v122 = a1 + 32;
    v11 = MEMORY[0x277D84FA0];
    while (1)
    {
      v12 = (v122 + 16 * v10);
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v13 + 16);
      v127 = v15;
      if (!v14)
      {
        break;
      }

      if (v14 == 1)
      {
        if (v15)
        {
          v124 = v13;
          v125 = v10;
          v16 = v13 + 32;

          v17 = 0;
          v126 = v16;
          while (1)
          {
            v18 = (v16 + 16 * v17);
            v20 = *v18;
            v19 = v18[1];
            swift_bridgeObjectRetain_n();
            v21 = sub_26CC197B4(v129, v20, v19);

            if ((v21 & 1) == 0)
            {

              goto LABEL_10;
            }

            v22 = *(v11 + 40);
            sub_26CD3B0FC();
            sub_26CD3A54C();
            v23 = sub_26CD3B13C();
            v24 = -1 << *(v11 + 32);
            v25 = v23 & ~v24;
            if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
LABEL_26:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v128 = v11;
              v33 = *(v11 + 16);
              if (*(v11 + 24) > v33)
              {
                v16 = v126;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_26CCE2C18();
                  v11 = v128;
                }

LABEL_47:
                *(v11 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v25;
                v43 = *(v11 + 48) + 32 * v25;
                *v43 = v20;
                *(v43 + 8) = v19;
                *(v43 + 16) = 0;
                *(v43 + 24) = 257;
                v44 = *(v11 + 16);
                v45 = __OFADD__(v44, 1);
                v46 = v44 + 1;
                if (!v45)
                {
                  *(v11 + 16) = v46;
                  v15 = v127;
                  goto LABEL_10;
                }

                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                swift_bridgeObjectRelease_n();
                goto LABEL_150;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                sub_26CCE0C98(v33 + 1);
              }

              else
              {
                sub_26CCE3CA0(v33 + 1);
              }

              v11 = v128;
              v34 = *(v128 + 40);
              sub_26CD3B0FC();
              sub_26CD3A54C();
              v35 = sub_26CD3B13C();
              v36 = -1 << *(v11 + 32);
              v25 = v35 & ~v36;
              if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
LABEL_46:
                v16 = v126;
                goto LABEL_47;
              }

              v37 = ~v36;
              while (2)
              {
                v39 = *(v11 + 48) + 32 * v25;
                v41 = *(v39 + 25);
                if (*v39 == v20 && *(v39 + 8) == v19)
                {
                  if (*(v39 + 24))
                  {
LABEL_43:
                    if (v41 && v41 != 2)
                    {
                      goto LABEL_149;
                    }

                    v38 = sub_26CD3AFDC();

                    if (v38)
                    {
                      goto LABEL_150;
                    }
                  }
                }

                else
                {
                  v40 = *(v39 + 24);
                  if (sub_26CD3AFDC() & v40)
                  {
                    goto LABEL_43;
                  }
                }

                v25 = (v25 + 1) & v37;
                if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                {
                  goto LABEL_46;
                }

                continue;
              }
            }

            v26 = ~v24;
            while (1)
            {
              v28 = *(v11 + 48) + 32 * v25;
              v30 = *(v28 + 25);
              if (*v28 == v20 && *(v28 + 8) == v19)
              {
                if (!*(v28 + 24))
                {
                  goto LABEL_15;
                }
              }

              else
              {
                v29 = *(v28 + 24);
                if ((sub_26CD3AFDC() & v29 & 1) == 0)
                {
                  goto LABEL_15;
                }
              }

              if (v30 && v30 != 2)
              {
                break;
              }

              v27 = sub_26CD3AFDC();

              if (v27)
              {

                goto LABEL_51;
              }

LABEL_15:
              v25 = (v25 + 1) & v26;
              if (((*(v11 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            swift_bridgeObjectRelease_n();
LABEL_51:
            v16 = v126;
            v15 = v127;
LABEL_10:
            if (++v17 == v15)
            {
              goto LABEL_3;
            }
          }
        }

        goto LABEL_4;
      }

      if (v15)
      {
        v124 = v13;
        v125 = v10;
        v77 = v13 + 32;

        v78 = 0;
        v126 = v77;
        while (1)
        {
          v79 = (v77 + 16 * v78);
          v81 = *v79;
          v80 = v79[1];
          swift_bridgeObjectRetain_n();
          v82 = sub_26CC197B4(v129, v81, v80);

          if ((v82 & 1) == 0)
          {

            goto LABEL_99;
          }

          v83 = *(v11 + 40);
          sub_26CD3B0FC();
          sub_26CD3A54C();
          v84 = sub_26CD3B13C();
          v85 = -1 << *(v11 + 32);
          v86 = v84 & ~v85;
          if (((*(v11 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
          {
LABEL_114:
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v128 = v11;
            v94 = *(v11 + 16);
            if (*(v11 + 24) > v94)
            {
              v77 = v126;
              if ((v93 & 1) == 0)
              {
                sub_26CCE2C18();
                v11 = v128;
              }

              goto LABEL_134;
            }

            if (v93)
            {
              sub_26CCE0C98(v94 + 1);
            }

            else
            {
              sub_26CCE3CA0(v94 + 1);
            }

            v11 = v128;
            v95 = *(v128 + 40);
            sub_26CD3B0FC();
            sub_26CD3A54C();
            v96 = sub_26CD3B13C();
            v97 = -1 << *(v11 + 32);
            v86 = v96 & ~v97;
            if (((*(v11 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
            {
LABEL_133:
              v77 = v126;
LABEL_134:
              *(v11 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v86;
              v104 = *(v11 + 48) + 32 * v86;
              *v104 = v81;
              *(v104 + 8) = v80;
              *(v104 + 16) = 0;
              *(v104 + 24) = 513;
              v105 = *(v11 + 16);
              v45 = __OFADD__(v105, 1);
              v106 = v105 + 1;
              if (v45)
              {
                goto LABEL_147;
              }

              *(v11 + 16) = v106;
              v15 = v127;
              goto LABEL_99;
            }

            v98 = ~v97;
            while (2)
            {
              v100 = *(v11 + 48) + 32 * v86;
              v102 = *(v100 + 25);
              if (*v100 == v81 && *(v100 + 8) == v80)
              {
                if (*(v100 + 24))
                {
LABEL_131:
                  if (v102 > 1)
                  {
                    goto LABEL_149;
                  }

                  v99 = sub_26CD3AFDC();

                  if (v99)
                  {
                    goto LABEL_150;
                  }
                }
              }

              else
              {
                v101 = *(v100 + 24);
                if (sub_26CD3AFDC() & v101)
                {
                  goto LABEL_131;
                }
              }

              v86 = (v86 + 1) & v98;
              if (((*(v11 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
              {
                goto LABEL_133;
              }

              continue;
            }
          }

          v87 = ~v85;
          while (1)
          {
            v89 = *(v11 + 48) + 32 * v86;
            v91 = *(v89 + 25);
            if (*v89 == v81 && *(v89 + 8) == v80)
            {
              if (!*(v89 + 24))
              {
                goto LABEL_104;
              }
            }

            else
            {
              v90 = *(v89 + 24);
              if ((sub_26CD3AFDC() & v90 & 1) == 0)
              {
                goto LABEL_104;
              }
            }

            if (v91 > 1)
            {
              break;
            }

            v88 = sub_26CD3AFDC();

            if (v88)
            {

              goto LABEL_138;
            }

LABEL_104:
            v86 = (v86 + 1) & v87;
            if (((*(v11 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
            {
              goto LABEL_114;
            }
          }

          swift_bridgeObjectRelease_n();
LABEL_138:
          v77 = v126;
          v15 = v127;
LABEL_99:
          if (++v78 == v15)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_4:
      if (++v10 == v123)
      {
        a2 = v118;
        goto LABEL_141;
      }
    }

    if (!v15)
    {
      goto LABEL_4;
    }

    v124 = v13;
    v125 = v10;
    v47 = v13 + 32;

    v48 = 0;
    v126 = v47;
LABEL_56:
    v49 = (v47 + 16 * v48);
    v51 = *v49;
    v50 = v49[1];
    swift_bridgeObjectRetain_n();
    v52 = sub_26CC197B4(v129, v51, v50);

    if ((v52 & 1) == 0)
    {

      goto LABEL_55;
    }

    v53 = *(v11 + 40);
    sub_26CD3B0FC();
    sub_26CD3A54C();
    v54 = sub_26CD3B13C();
    v55 = -1 << *(v11 + 32);
    v56 = v54 & ~v55;
    if (((*(v11 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
    {
LABEL_71:
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v11;
      v64 = *(v11 + 16);
      if (*(v11 + 24) > v64)
      {
        if ((v63 & 1) == 0)
        {
          sub_26CCE2C18();
          v11 = v128;
        }

        goto LABEL_91;
      }

      if (v63)
      {
        sub_26CCE0C98(v64 + 1);
      }

      else
      {
        sub_26CCE3CA0(v64 + 1);
      }

      v11 = v128;
      v65 = *(v128 + 40);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      v66 = sub_26CD3B13C();
      v67 = -1 << *(v11 + 32);
      v56 = v66 & ~v67;
      if (((*(v11 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
LABEL_91:
        v47 = v126;
        *(v11 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v56;
        v74 = *(v11 + 48) + 32 * v56;
        *v74 = v51;
        *(v74 + 8) = v50;
        *(v74 + 16) = 0;
        *(v74 + 24) = 1;
        v75 = *(v11 + 16);
        v45 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v45)
        {
          goto LABEL_148;
        }

        *(v11 + 16) = v76;
        v15 = v127;
        goto LABEL_55;
      }

      v68 = ~v67;
      while (2)
      {
        v70 = *(v11 + 48) + 32 * v56;
        v72 = *(v70 + 25);
        if (*v70 == v51 && *(v70 + 8) == v50)
        {
          if (*(v70 + 24))
          {
            goto LABEL_88;
          }
        }

        else
        {
          v71 = *(v70 + 24);
          if (sub_26CD3AFDC() & v71)
          {
LABEL_88:
            if (v72 != 1 && v72 != 2)
            {
              goto LABEL_149;
            }

            v69 = sub_26CD3AFDC();

            if (v69)
            {
LABEL_150:
              result = sub_26CD3B01C();
              __break(1u);
              return result;
            }
          }
        }

        v56 = (v56 + 1) & v68;
        if (((*(v11 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          goto LABEL_91;
        }

        continue;
      }
    }

    v57 = ~v55;
    while (1)
    {
      v59 = *(v11 + 48) + 32 * v56;
      v61 = *(v59 + 25);
      if (*v59 == v51 && *(v59 + 8) == v50)
      {
        if (!*(v59 + 24))
        {
          goto LABEL_60;
        }
      }

      else
      {
        v60 = *(v59 + 24);
        if ((sub_26CD3AFDC() & v60 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      if (v61 != 1 && v61 != 2)
      {

        swift_bridgeObjectRelease_n();
LABEL_95:
        v47 = v126;
        v15 = v127;
LABEL_55:
        if (++v48 == v15)
        {
LABEL_3:

          v10 = v125;
          goto LABEL_4;
        }

        goto LABEL_56;
      }

      v58 = sub_26CD3AFDC();

      if (v58)
      {

        goto LABEL_95;
      }

LABEL_60:
      v56 = (v56 + 1) & v57;
      if (((*(v11 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
        goto LABEL_71;
      }
    }
  }

  v11 = MEMORY[0x277D84FA0];
LABEL_141:

  if (*(v11 + 16))
  {
    v107 = v119;

    v108 = sub_26CC9AA74(v11, v107);
    v109 = v120;
    sub_26CD3A1CC();
    v110 = sub_26CD3A1EC();
    v111 = *(*(v110 - 8) + 56);
    v111(v109, 0, 1, v110);
    v112 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v113 = *(v112 + 20);
    v114 = *(v121 + *(v112 + 24));
    v111(a2 + v113, 1, 1, v110);
    *a2 = v108;
    result = sub_26CC17CCC(v109, a2 + v113);
    *(a2 + *(v112 + 24)) = v114;
  }

  else
  {

    v116 = v121;

    return sub_26CC18B28(v116, a2);
  }

  return result;
}

uint64_t sub_26CC9AA74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v18 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(v2 + 48) + ((v9 << 11) | (32 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 25);

    sub_26CCDF54C(v17, v12, v13, v14, v15 | (v16 << 8));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v18;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC9AB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v48 - v8;
  v10 = MEMORY[0x277D84FA0];
  v56 = MEMORY[0x277D84FA0];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12;
      v12 += 2;

      v15 = sub_26CCF3078(v14);
      sub_26CC9AF2C(v15);

      --v11;
    }

    while (v11);
    v16 = v56;
    if (*(v56 + 16))
    {
      goto LABEL_5;
    }

LABEL_30:

    return sub_26CC18B28(v3, a2);
  }

  v16 = MEMORY[0x277D84FA0];
  if (!*(MEMORY[0x277D84FA0] + 16))
  {
    goto LABEL_30;
  }

LABEL_5:
  v49 = v9;
  v50 = v3;
  v17 = *v3;
  v19 = (*v3 + 56);
  v18 = *v19;
  v57 = v10;
  v20 = 1 << *(v17 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v24 = v16 + 56;
  v51 = a2;
  v52 = v17;

  v26 = 0;
  if (!v22)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    while (1)
    {
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = *(v52 + 48) + ((v26 << 11) | (32 * v28));
      v31 = *v29;
      v30 = *(v29 + 8);
      v55 = *(v29 + 16);
      v32 = *(v29 + 24);
      v53 = *(v29 + 25);
      v54 = v32;
      if (*(v16 + 16))
      {
        break;
      }

LABEL_11:

      sub_26CCDF54C(&v56, v31, v30, v55, v54 | (v53 << 8));

      if (!v22)
      {
        goto LABEL_12;
      }
    }

    v33 = *(v16 + 40);
    sub_26CD3B0FC();

    sub_26CD3A54C();
    v34 = sub_26CD3B13C();
    v35 = -1 << *(v16 + 32);
    v36 = v34 & ~v35;
    if (((*(v24 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
      goto LABEL_11;
    }

    v37 = ~v35;
    while (1)
    {
      v38 = (*(v16 + 48) + 16 * v36);
      v39 = *v38 == v31 && v38[1] == v30;
      if (v39 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v36 = (v36 + 1) & v37;
      if (((*(v24 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  while (v22);
LABEL_12:
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v23)
    {

      v40 = v57;
      v41 = v49;
      sub_26CD3A1CC();
      v42 = sub_26CD3A1EC();
      v43 = *(*(v42 - 8) + 56);
      v43(v41, 0, 1, v42);
      v44 = type metadata accessor for SportsFavoriteService.Favorites.State();
      v45 = *(v44 + 20);
      v46 = v51;
      v47 = *(v50 + *(v44 + 24));
      v43(v51 + v45, 1, 1, v42);
      *v46 = v40;
      result = sub_26CC17CCC(v41, v46 + v45);
      *(v46 + *(v44 + 24)) = v47;
      return result;
    }

    v22 = v19[v27];
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC9AF2C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_26CC197B4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_26CC9B030(uint64_t result)
{
  v1 = 0;
  v15 = result;
  v2 = result + 56;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v9 = *(v15 + 48) + ((v7 << 11) | (32 * v8));
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      v14 = *(v9 + 25);

      sub_26CCDF54C(v16, v10, v11, v12, v13 | (v14 << 8));

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }
}

uint64_t sub_26CC9B154@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v36[1] = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84F90];
  v36[0] = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v31 = v2;
    v32 = &v30 - v7;
    v11 = 0;
    v12 = a1 + 32;
    v33 = a2;
    v34 = a1 + 32;
    do
    {
      v13 = (v12 + 16 * v11);
      if (v13[8] == 1)
      {
        v14 = *v13;
        v15 = *(*v13 + 16);
        if (v15)
        {
          v16 = *v13;

          v17 = (v14 + 40);
          do
          {
            v19 = *(v17 - 1);
            v18 = *v17;
            swift_bridgeObjectRetain_n();
            v20 = sub_26CC197B4(&v35, v19, v18);

            if (v20)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_26CCBE3BC(0, *(v9 + 2) + 1, 1, v9);
              }

              v22 = *(v9 + 2);
              v21 = *(v9 + 3);
              if (v22 >= v21 >> 1)
              {
                v9 = sub_26CCBE3BC((v21 > 1), v22 + 1, 1, v9);
              }

              *(v9 + 2) = v22 + 1;
              v23 = &v9[16 * v22];
              *(v23 + 4) = v19;
              *(v23 + 5) = v18;
              v36[0] = v9;
            }

            else
            {
            }

            v17 += 2;
            --v15;
          }

          while (v15);

          v12 = v34;
        }
      }

      ++v11;
    }

    while (v11 != v10);
    v8 = v32;
    a2 = v33;
    v2 = v31;
  }

  v24 = sub_26CC99114(MEMORY[0x277D84FA0], *v2, v36);
  v25 = type metadata accessor for SportsFavoriteService.Favorites.State();
  sub_26CC9BD7C(v2 + *(v25 + 20), v8);
  v26 = *(v25 + 20);
  v27 = *(v2 + *(v25 + 24));
  v28 = sub_26CD3A1EC();
  (*(*(v28 - 8) + 56))(a2 + v26, 1, 1, v28);
  *a2 = v24;
  sub_26CC17CCC(v8, a2 + v26);

  *(a2 + *(v25 + 24)) = v27;
  return result;
}

uint64_t sub_26CC9B3CC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *(a2 + 25);
  v6 = *(*a3 + 16);
  if (!v6)
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD1D0, &unk_26CD44E50);
    inited = swift_initStackObject();
    *(inited + 32) = v4;
    *(inited + 16) = xmmword_26CD3C1E0;
    *(inited + 57) = v5;
    *(inited + 40) = v3;
    *(inited + 48) = 0;
    *(inited + 56) = 1;

    sub_26CC9C284(inited);
    swift_setDeallocating();
    v11 = inited + 32;
    return sub_26CC9C598(v11);
  }

  v7 = 0;
  v8 = (*a3 + 40);
  while (1)
  {
    v9 = *(v8 - 1) == v4 && *v8 == v3;
    if (v9 || (sub_26CD3AFDC() & 1) != 0)
    {
      break;
    }

    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD1D0, &unk_26CD44E50);
  result = swift_initStackObject();
  *(result + 16) = xmmword_26CD3C1E0;
  v13 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    *(result + 32) = v4;
    v14 = result + 32;
    *(result + 57) = v5;
    *(result + 40) = v3;
    *(result + 48) = v13;
    *(result + 56) = 0;
    v15 = result;

    sub_26CC9C284(v15);
    swift_setDeallocating();
    v11 = v14;
    return sub_26CC9C598(v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_26CC9B534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26CC9C41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26CC9B55C(uint64_t a1)
{
  v2 = sub_26CC18994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC9B598(uint64_t a1)
{
  v2 = sub_26CC18994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsFavoriteService.Favorites.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD170, &qword_26CD44808);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC18994();
  sub_26CD3B16C();
  v16 = *v3;
  v15[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD178, &qword_26CD44810);
  sub_26CC189F8(&qword_2804BD180, sub_26CC9BDEC);
  sub_26CD3AF6C();
  if (!v2)
  {
    v11 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v12 = *(v11 + 20);
    v15[6] = 1;
    sub_26CD3A1EC();
    sub_26CC169F4(&qword_2804BCD30);
    sub_26CD3AF1C();
    v13 = *(v3 + *(v11 + 24));
    v15[5] = 2;
    sub_26CD3AF3C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SportsFavoriteService.Favorites.State.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_26CD3A16C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-1] - v9;
  v25[0] = sub_26CC989C4(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC58138();
  v11 = sub_26CD3A55C();
  v13 = v12;

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_26CD3AC6C();

  strcpy(v25, "(favorites:[");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  MEMORY[0x26D6AD060](v11, v13);

  MEMORY[0x26D6AD060](0xD000000000000014, 0x800000026CD4FEB0);
  v14 = type metadata accessor for SportsFavoriteService.Favorites.State();
  sub_26CC9BD7C(v0 + *(v14 + 20), v10);
  v15 = sub_26CD3A1EC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_26CC9BE40(v10);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    sub_26CC9783C(v6);
    v19 = sub_26CD3A0FC();
    v17 = v20;
    (*(v3 + 8))(v6, v2);
    (*(v16 + 8))(v10, v15);
    v18 = v19;
  }

  MEMORY[0x26D6AD060](v18, v17);

  MEMORY[0x26D6AD060](0x747269447369202CLL, 0xEA00000000003A79);
  if (*(v1 + *(v14 + 24)))
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (*(v1 + *(v14 + 24)))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v21, v22);

  MEMORY[0x26D6AD060](41, 0xE100000000000000);
  return v25[0];
}

uint64_t _s13TVAppServices21SportsFavoriteServiceV9FavoritesO0D0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 25);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_26CD3AFDC() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    if (!v6)
    {
LABEL_8:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
    if (v2 == v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_8;
    }
  }

  v11 = 0xE600000000000000;
  v12 = 0x65756761656CLL;
  if (v4 != 1)
  {
    v12 = 0x746E657665;
    v11 = 0xE500000000000000;
  }

  if (v4)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1835099508;
  }

  if (v4)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  v15 = 0xE600000000000000;
  v16 = 0x65756761656CLL;
  if (v7 != 1)
  {
    v16 = 0x746E657665;
    v15 = 0xE500000000000000;
  }

  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1835099508;
  }

  if (v7)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  if (v13 == v17 && v14 == v18)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();
  }

  return v9 & 1;
}

unint64_t sub_26CC9BC80()
{
  result = qword_2804BD150;
  if (!qword_2804BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD150);
  }

  return result;
}

unint64_t sub_26CC9BCD4()
{
  result = qword_2804BD158;
  if (!qword_2804BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD158);
  }

  return result;
}

unint64_t sub_26CC9BD28()
{
  result = qword_2804BD168;
  if (!qword_2804BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD168);
  }

  return result;
}

uint64_t sub_26CC9BD7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26CC9BDEC()
{
  result = qword_2804BD188;
  if (!qword_2804BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD188);
  }

  return result;
}

uint64_t sub_26CC9BE40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC9BEAC()
{
  result = qword_2804BD198;
  if (!qword_2804BD198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD198);
  }

  return result;
}

unint64_t sub_26CC9BF04()
{
  result = qword_2804BD1A0;
  if (!qword_2804BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1A0);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26CC9BF7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_26CC9BFC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
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

uint64_t sub_26CC9C038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_26CC9C080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_26CC9C128()
{
  result = qword_2804BD1A8;
  if (!qword_2804BD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1A8);
  }

  return result;
}

unint64_t sub_26CC9C180()
{
  result = qword_2804BD1B0;
  if (!qword_2804BD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1B0);
  }

  return result;
}

unint64_t sub_26CC9C1D8()
{
  result = qword_2804BD1B8;
  if (!qword_2804BD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1B8);
  }

  return result;
}

unint64_t sub_26CC9C230()
{
  result = qword_2804BD1C0;
  if (!qword_2804BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1C0);
  }

  return result;
}

uint64_t sub_26CC9C284(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 57);
    do
    {
      v3 = *(v2 - 1);
      v4 = *(v2 - 9);
      v5 = *(v2 - 17);
      v6 = *(v2 - 25);
      v7 = *v2;
      v2 += 32;

      sub_26CCDF54C(v8, v6, v5, v4, v3 | (v7 << 8));

      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_26CC9C310(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC9C41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657469726F766166 && a2 == 0xE900000000000073;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026CD4FE90 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79747269447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

unint64_t sub_26CC9C544()
{
  result = qword_2804BD1C8;
  if (!qword_2804BD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD1C8);
  }

  return result;
}

uint64_t sub_26CC9C5CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_26CC9C624(uint64_t a1)
{
  v2 = v1;
  v90 = *v2;
  v4 = _s5CacheC5ModelVMa(0);
  v88 = *(v4 - 8);
  v5 = *(v88 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v92 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v91 = &v76 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v93 = &v76 - v11;
  v89 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v76 - v20;
  v22 = sub_26CD3A07C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v97 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  sub_26CC9EF14(0, v21);
  v29 = *(v23 + 48);
  if (v29(v21, 1, v22) == 1)
  {
    v19 = v21;
LABEL_5:
    sub_26CC3C0E0(v19);
    sub_26CC3BD30();
    swift_allocError();
    *v33 = 0;
    return swift_willThrow();
  }

  v87 = v14;
  v30 = v21;
  v31 = *(v23 + 32);
  v31(v28, v30, v22);
  sub_26CC9EF14(*(a1 + 48), v19);
  v32 = v22;
  if (v29(v19, 1, v22) == 1)
  {
    (*(v23 + 8))(v28, v22);
    goto LABEL_5;
  }

  v85 = v28;
  v86 = v23;
  v35 = v97;
  v31(v97, v19, v22);
  v36 = v87;
  v38 = v94;
  v37 = v95;
  sub_26CCA2DC4(0, v87);
  if (v38)
  {
    v39 = *(v86 + 8);
    v39(v35, v22);
    return (v39)(v85, v22);
  }

  v40 = v93;
  sub_26CCA2DC4(v37[6], v93);
  v84 = v32;
  v41 = swift_allocObject();
  v81 = v41;
  *(v41 + 16) = 0;
  v83 = (v41 + 16);
  v42 = swift_allocObject();
  v82 = v42;
  *(v42 + 16) = 0;
  v77 = (v42 + 16);
  v43 = objc_opt_self();
  v44 = sub_26CD39FCC();
  v45 = [v43 writingIntentWithURL:v44 options:0];

  v46 = sub_26CD39FCC();
  v47 = [v43 writingIntentWithURL:v46 options:0];

  v80 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_26CD44E60;
  *(v48 + 32) = v45;
  *(v48 + 40) = v47;
  sub_26CCA4F50();
  v94 = v45;
  v78 = v47;
  v79 = sub_26CD3A79C();

  v95 = v95[2];
  sub_26CC18BE8(v36, v91, _s5CacheC5ModelVMa);
  sub_26CC18BE8(v40, v92, _s5CacheC5ModelVMa);
  v49 = *(v88 + 80);
  v50 = (v49 + 24) & ~v49;
  v51 = (v89 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v49 + v51 + 8) & ~v49;
  v89 = (v89 + 7 + v52) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v89 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v81;
  sub_26CC183E0(v91, v54 + v50, _s5CacheC5ModelVMa);
  *(v54 + v51) = v94;
  sub_26CC183E0(v92, v54 + v52, _s5CacheC5ModelVMa);
  v55 = v78;
  *(v54 + v89) = v78;
  *(v54 + v53) = v82;
  *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v90;
  aBlock[4] = sub_26CCA4FE8;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_40;
  v56 = _Block_copy(aBlock);
  v57 = v94;
  v58 = v55;
  v59 = v95;

  v60 = v80;
  v61 = v79;
  [v80 coordinateAccessWithIntents:v79 queue:v59 byAccessor:v56];
  _Block_release(v56);

  v62 = v83;
  swift_beginAccess();
  v63 = *v62;
  if (*v62)
  {
    v64 = *v62;
    swift_willThrow();
    v65 = v63;

    sub_26CC18318(v93, _s5CacheC5ModelVMa);
    sub_26CC18318(v87, _s5CacheC5ModelVMa);
    v66 = *(v86 + 8);
    v67 = v84;
    v66(v97, v84);
    v66(v85, v67);
LABEL_12:
  }

  v68 = v77;
  swift_beginAccess();
  v69 = *v68;
  v70 = v84;
  v71 = v86;
  if (*v68)
  {
    v72 = *v68;
    swift_willThrow();
    v73 = v69;

    sub_26CC18318(v93, _s5CacheC5ModelVMa);
    sub_26CC18318(v87, _s5CacheC5ModelVMa);
    v74 = *(v71 + 8);
    v74(v97, v70);
    v74(v85, v70);
    goto LABEL_12;
  }

  sub_26CC18318(v93, _s5CacheC5ModelVMa);
  sub_26CC18318(v87, _s5CacheC5ModelVMa);
  v75 = *(v71 + 8);
  v75(v97, v70);
  v75(v85, v70);
}

uint64_t sub_26CC9CF58(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  v3 = _s5CacheC5ModelVMa(0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  *v6 = v2;
  v6[1] = sub_26CC9D038;

  return sub_26CC9F2CC(v5, 0);
}

uint64_t sub_26CC9D038()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_26CC9D834;
  }

  else
  {
    v3 = sub_26CC9D14C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC9D14C()
{
  v1 = *(v0[2] + 48);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_26CC9D1F0;
  v3 = v0[4];
  v4 = v0[2];

  return sub_26CC9F2CC(v3, v1);
}

uint64_t sub_26CC9D1F0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26CC9D8A4;
  }

  else
  {
    v3 = sub_26CC9D304;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CC9D304()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v1)
  {
    v4 = *(*(v0 + 24) + 20);
    v5 = *(type metadata accessor for SportsFavoriteService.Favorites.State() + 24);
    v6 = (v3 + v5 + v4);
    v7 = (v2 + v5 + v4);
  }

  else
  {
    v8 = *(type metadata accessor for SportsFavoriteService.UserConsent.State() + 24);
    v6 = (v3 + v8);
    v7 = (v2 + v8);
  }

  v9 = *v6;
  v10 = *v7;
  if (qword_280BB9C18 != -1)
  {
    swift_once();
    v1 = *(v0 + 80);
  }

  v11 = 0x65736C6166;
  sub_26CD3AC6C();

  v12 = v1 & 1;
  if (v12)
  {
    v13 = 0x657469726F766166;
  }

  else
  {
    v13 = 0x736E6F4372657375;
  }

  if (v12)
  {
    v14 = 0xE900000000000073;
  }

  else
  {
    v14 = 0xEB00000000746E65;
  }

  MEMORY[0x26D6AD060](v13, v14);

  MEMORY[0x26D6AD060](0x7974726944736920, 0xE90000000000003ALL);
  v34 = v9;
  v15 = v9 | v10;
  if ((v9 | v10))
  {
    v11 = 1702195828;
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x26D6AD060](v11, v16);

  sub_26CD3A99C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26CD3C1E0;
  *(v17 + 56) = MEMORY[0x277D837D0];
  v35 = sub_26CC19E10();
  *(v17 + 64) = v35;
  *(v17 + 32) = 0x656B206568636163;
  *(v17 + 40) = 0xEA00000000003A79;
  sub_26CD3A3DC();

  if (v12)
  {
    if (v15)
    {
LABEL_17:
      v18 = 1;
LABEL_35:
      sub_26CD3AC6C();

      if (v18)
      {
        v27 = 1702195828;
      }

      else
      {
        v27 = 0x65736C6166;
      }

      if (v18)
      {
        v28 = 0xE400000000000000;
      }

      else
      {
        v28 = 0xE500000000000000;
      }

      MEMORY[0x26D6AD060](v27, v28);

      v19 = 0xD00000000000001CLL;
      v20 = 0x800000026CD500C0;
      goto LABEL_42;
    }

    if (**(v0 + 40))
    {
      v21 = 0xE800000000000000;
      if (**(v0 + 40) == 1)
      {
        v22 = 0x64656E696C636564;
        if (**(v0 + 32))
        {
          goto LABEL_22;
        }

LABEL_25:
        v23 = 0xE700000000000000;
        if (v22 != 0x6E776F6E6B6E75)
        {
          goto LABEL_33;
        }

LABEL_31:
        if (v21 == v23)
        {

          goto LABEL_34;
        }

LABEL_33:
        v25 = sub_26CD3AFDC();

        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_34:
        v26 = *(*(v0 + 24) + 20);
        v18 = sub_26CCDE714(*(*(v0 + 40) + v26), *(*(v0 + 32) + v26)) ^ 1;
        goto LABEL_35;
      }

      v22 = 0x6465747065636361;
      if (!**(v0 + 32))
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = 0xE700000000000000;
      v22 = 0x6E776F6E6B6E75;
      if (!**(v0 + 32))
      {
        goto LABEL_25;
      }
    }

LABEL_22:
    v23 = 0xE800000000000000;
    if (**(v0 + 32) == 1)
    {
      v24 = 0x6E696C636564;
    }

    else
    {
      v24 = 0x747065636361;
    }

    if (v22 != (v24 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_26CD3AC6C();

  MEMORY[0x26D6AD060](v11, v16);

  v19 = 0xD00000000000001ELL;
  v20 = 0x800000026CD500E0;
  v18 = v34;
LABEL_42:
  v30 = *(v0 + 32);
  v29 = *(v0 + 40);
  sub_26CD3A99C();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26CD3C1E0;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = v35;
  *(v31 + 32) = v19;
  *(v31 + 40) = v20;
  sub_26CD3A3DC();

  sub_26CC18318(v30, _s5CacheC5ModelVMa);
  sub_26CC18318(v29, _s5CacheC5ModelVMa);

  v32 = *(v0 + 8);

  return v32(v18 & 1);
}

uint64_t sub_26CC9D834()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26CC9D8A4()
{
  sub_26CC18318(v0[5], _s5CacheC5ModelVMa);
  v1 = v0[9];
  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_26CC9D930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = sub_26CD3A07C();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v8 = *(v7 + 64) + 15;
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC9DA6C, 0, 0);
}

uint64_t sub_26CC9DA6C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  sub_26CC9EF14(0, v3);
  v5 = *(v2 + 48);
  if (v5(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(*(v0 + 64));
LABEL_5:
    sub_26CC3BD30();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    v16 = *(v0 + 88);
    v15 = *(v0 + 96);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);

    v19 = *(v0 + 8);

    return v19();
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v9 = *(*(v0 + 80) + 32);
  v9(*(v0 + 96), *(v0 + 64), v6);
  sub_26CC9EF14(*(v8 + 48), v7);
  v10 = v5(v7, 1, v6);
  v11 = *(v0 + 72);
  if (v10 == 1)
  {
    v12 = *(v0 + 96);
    v13 = *(v0 + 80);
    sub_26CC3C0E0(*(v0 + 56));
    (*(v13 + 8))(v12, v11);
    goto LABEL_5;
  }

  v22 = *(v0 + 40);
  v21 = *(v0 + 48);
  v28 = *(v0 + 24);
  v29 = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  v9(*(v0 + 88), *(v0 + 56), v11);
  v23 = swift_task_alloc();
  *(v0 + 104) = v23;
  *(v23 + 16) = v29;
  *(v23 + 32) = v22;
  *(v23 + 40) = v28;
  *(v23 + 56) = v21;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  *(v0 + 112) = v25;
  v26 = _s5CacheC5ValueOMa(0);
  *v25 = v0;
  v25[1] = sub_26CC9DD00;
  v27 = *(v0 + 16);

  return MEMORY[0x2822008A0](v27, 0, 0, 0xD00000000000001BLL, 0x800000026CD50000, sub_26CCA5150, v23, v26);
}

uint64_t sub_26CC9DD00()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_26CC9DEE8;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_26CC9DE1C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC9DE1C()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = *(v0[10] + 8);
  v5(v0[11], v2);
  v5(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26CC9DEE8()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[7];
  v10 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26CC9DFB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD210, &qword_26CD451F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC17304();
  sub_26CD3B16C();
  v11[15] = 0;
  type metadata accessor for SportsFavoriteService.UserConsent.State();
  sub_26CC16E20(&qword_2804BD218, type metadata accessor for SportsFavoriteService.UserConsent.State);
  sub_26CD3AF6C();
  if (!v1)
  {
    v9 = *(_s5CacheC5ModelVMa(0) + 20);
    v11[14] = 1;
    type metadata accessor for SportsFavoriteService.Favorites.State();
    sub_26CC16E20(&qword_2804BD220, type metadata accessor for SportsFavoriteService.Favorites.State);
    sub_26CD3AF6C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26CC9E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F4372657375 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_26CD3AFDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26CD3AFDC();

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

uint64_t sub_26CC9E29C(uint64_t a1)
{
  v2 = sub_26CC17304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC9E2D8(uint64_t a1)
{
  v2 = sub_26CC17304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC9E32C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26CCA53E0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26CC9E36C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  [v8 setMaxConcurrentOperationCount_];
  *(v4 + 16) = v8;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3 & 1;
  *(v4 + 48) = 2;
  sub_26CC9E590(0, 0);
  sub_26CC9E590(0, *(v4 + 48));
  return v4;
}

void sub_26CC9E590(int a1, uint64_t a2)
{
  LODWORD(v57) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - v6;
  v56 = _s5CacheC5ModelVMa(0);
  v8 = *(*(v56 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = sub_26CD3A07C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a2;
  v55 = v2;
  sub_26CC9EF14(a2, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_26CC3C0E0(v17);
    sub_26CC3BD30();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    return;
  }

  (*(v19 + 32))(v22, v17, v18);
  v24 = [objc_opt_self() defaultManager];
  v54 = v22;
  sub_26CD39FFC();
  v25 = sub_26CD3A59C();

  v26 = [v24 fileExistsAtPath_];

  if (!v26 || (v57 & 1) != 0)
  {
    v57 = v18;
    v55 = v19;
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26CD3C1E0;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_26CC19E10();
    *(v31 + 32) = 0xD000000000000013;
    *(v31 + 40) = 0x800000026CD50120;
    sub_26CD3A3DC();

    v32 = sub_26CD39D8C();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v53 = sub_26CD39D7C();
    v35 = sub_26CD3A1EC();
    v36 = *(*(v35 - 8) + 56);
    v36(v7, 1, 1, v35);
    v37 = type metadata accessor for SportsFavoriteService.UserConsent.State();
    v38 = *(v37 + 20);
    v36(&v13[v38], 1, 1, v35);
    *v13 = 0;
    sub_26CC17CCC(v7, &v13[v38]);
    v13[*(v37 + 24)] = 1;
    v36(v7, 1, 1, v35);
    v39 = &v13[*(v56 + 20)];
    v40 = type metadata accessor for SportsFavoriteService.Favorites.State();
    v41 = *(v40 + 20);
    v36(&v39[v41], 1, 1, v35);
    *v39 = MEMORY[0x277D84FA0];
    sub_26CC17CCC(v7, &v39[v41]);
    v39[*(v40 + 24)] = 1;
    sub_26CC16E20(&qword_2804BD228, _s5CacheC5ModelVMa);
    v42 = v58;
    v43 = sub_26CD39D6C();
    if (v42)
    {

      sub_26CC18318(v13, _s5CacheC5ModelVMa);
      (*(v55 + 8))(v54, v57);
      return;
    }

    v45 = v43;
    v46 = v44;
    sub_26CC18318(v13, _s5CacheC5ModelVMa);

    v47 = v54;
    sub_26CD3A0CC();
    (*(v55 + 8))(v47, v57);
  }

  else
  {
    v27 = v54;
    v28 = v58;
    v29 = sub_26CD3A08C();
    if (v28)
    {
      (*(v19 + 8))(v27, v18);
      return;
    }

    v45 = v29;
    v46 = v30;
    v57 = v18;
    v48 = sub_26CD39D5C();
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    sub_26CD39D3C();
    sub_26CC18318(v11, _s5CacheC5ModelVMa);

    if (*(v55 + 40) == 1)
    {
      v51 = *(v55 + 48);
      if ((v51 & 1) == 0)
      {
        *(v55 + 48) = v51 | 1;
      }
    }

    sub_26CC9F7E4();
    (*(v19 + 8))(v27, v57);
  }

  sub_26CC18C50(v45, v46);
}

uint64_t sub_26CC9EF14@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_26CD39F9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = *(v2 + 24);
  v18 = *(v2 + 32);
  v19 = sub_26CD3A59C();
  v20 = [v16 containerURLForSecurityApplicationGroupIdentifier_];

  if (v20)
  {
    sub_26CD39FEC();

    v21 = sub_26CD3A07C();
    (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  }

  else
  {
    v21 = sub_26CD3A07C();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  }

  sub_26CC16D64(v13, v15, &qword_2804BCA30, &qword_26CD3DA70);
  sub_26CD3A07C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v15, 1, v21) == 1)
  {
    sub_26CC3C0E0(v15);
    v23 = 1;
    v24 = v31;
  }

  else
  {
    v25 = "sportsfavorites.data";
    if ((a1 & 2) != 0)
    {
      v26 = "readonly-sportsfavorites.data";
    }

    else
    {
      v25 = "readonly-sportsfavoritesV2.data";
      v26 = "er";
    }

    if (*(v2 + 40))
    {
      v27 = 0xD00000000000001DLL;
    }

    else
    {
      v27 = 0xD000000000000014;
    }

    v28 = a1 & 2 | v27;
    if (*(v2 + 40))
    {
      v25 = v26;
    }

    v32 = v28;
    v33 = v25 | 0x8000000000000000;
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D8], v4);
    sub_26CC16DCC();
    v24 = v31;
    sub_26CD3A06C();
    (*(v5 + 8))(v8, v4);

    (*(v22 + 8))(v15, v21);
    v23 = 0;
  }

  return (*(v22 + 56))(v24, v23, 1, v21);
}

uint64_t sub_26CC9F2CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_26CD3A07C();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC9F3C8, 0, 0);
}

uint64_t sub_26CC9F3C8()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_26CC9EF14(v0[3], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26CC3C0E0(v0[5]);
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[8];
    v6 = v0[5];

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[8];
    v10 = v0[4];
    (*(v0[7] + 32))(v9, v0[5], v0[6]);
    v11 = swift_task_alloc();
    v0[9] = v11;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = *(MEMORY[0x277D85A40] + 4);
    v13 = swift_task_alloc();
    v0[10] = v13;
    v14 = _s5CacheC5ModelVMa(0);
    *v13 = v0;
    v13[1] = sub_26CC9F5A4;
    v15 = v0[2];

    return MEMORY[0x2822008A0](v15, 0, 0, 0x7469772864616572, 0xEB00000000293A68, sub_26CCA52C0, v11, v14);
  }
}

uint64_t sub_26CC9F5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_26CC9F748;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_26CC9F6C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC9F6C0()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26CC9F748()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC9F7E4()
{
  v71 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v63 - v7;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v63 - v14;
  v75 = v0;
  sub_26CC9EF14(0, v8);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v6 = v8;
LABEL_5:
    sub_26CC3C0E0(v6);
    sub_26CC3BD30();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v70 = v1;
  v17 = *(v10 + 32);
  v72 = v15;
  v17();
  sub_26CC9EF14(*(v75 + 48), v6);
  if (v16(v6, 1, v9) == 1)
  {
    (*(v10 + 8))(v72, v9);
    goto LABEL_5;
  }

  v69 = v10;
  (v17)(v73, v6, v9);
  v20 = objc_opt_self();
  v68 = v9;
  v21 = v20;
  v22 = sub_26CD39FCC();
  v23 = [v21 readingIntentWithURL:v22 options:0];

  v24 = sub_26CD39FCC();
  v65 = [v21 readingIntentWithURL:v24 options:0];

  v25 = sub_26CD39FCC();
  v26 = [v21 writingIntentWithURL:v25 options:0];

  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v67 = (v27 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v64 = (v28 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v63 = (v29 + 16);
  v66 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26CD44E70;
  v31 = v65;
  *(v30 + 32) = v23;
  *(v30 + 40) = v31;
  *(v30 + 48) = v26;
  sub_26CCA4F50();
  v32 = v23;
  v33 = v31;
  v34 = v26;
  v65 = sub_26CD3A79C();

  v35 = *(v75 + 16);
  v36 = swift_allocObject();
  v36[2] = v27;
  v36[3] = v32;
  v36[4] = v33;
  v36[5] = v34;
  v36[6] = v29;
  v36[7] = v28;
  v36[8] = v71;
  aBlock[4] = sub_26CCA5370;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_79_0;
  v37 = _Block_copy(aBlock);
  v71 = v32;
  v38 = v33;
  v39 = v34;
  v40 = v35;

  v75 = v28;

  v42 = v65;
  v41 = v66;
  [v66 coordinateAccessWithIntents:v65 queue:v40 byAccessor:v37];
  _Block_release(v37);

  v43 = v67;
  swift_beginAccess();
  v44 = *v43;
  if (*v43)
  {
    v45 = *v43;
    swift_willThrow();
    v46 = v44;

    v47 = v68;
    v48 = *(v69 + 8);
    v48(v73, v68);
    v48(v72, v47);
LABEL_13:
  }

  v50 = v71;
  v49 = v72;
  v51 = v63;
  v67 = v27;
  v52 = v68;
  v53 = v64;
  swift_beginAccess();
  v54 = *v53;
  v55 = v69;
  if (v54)
  {
    swift_willThrow();
    v56 = v54;

    v57 = *(v55 + 8);
    v57(v73, v52);
LABEL_12:
    v57(v49, v52);
    goto LABEL_13;
  }

  swift_beginAccess();
  v58 = *v51;
  v59 = v73;
  if (v58)
  {
    swift_willThrow();
    v60 = v58;

    v61 = v59;
    v57 = *(v55 + 8);
    v57(v61, v52);
    goto LABEL_12;
  }

  v62 = *(v55 + 8);
  v62(v59, v52);
  v62(v49, v52);
}

uint64_t sub_26CC9FEE8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  v5 = _s5CacheC5ModelVMa(0);
  *(v3 + 24) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  v8 = swift_task_alloc();
  *(v3 + 40) = v8;
  *v8 = v3;
  v8[1] = sub_26CC9FFC8;

  return sub_26CC9F2CC(v7, a3);
}

uint64_t sub_26CC9FFC8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_26CCA0414;
  }

  else
  {
    v3 = sub_26CCA00DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26CCA00DC()
{
  if (*(v0 + 56))
  {
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    sub_26CD3AC6C();

    v4 = *(v1 + 20);
    v5 = SportsFavoriteService.Favorites.State.debugDescription.getter();
    MEMORY[0x26D6AD060](v5);

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26CD3C1E0;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_26CC19E10();
    *(v6 + 32) = 0xD000000000000027;
    *(v6 + 40) = 0x800000026CD50060;
    sub_26CD3A3DC();

    sub_26CC18BE8(v2 + v4, v3, type metadata accessor for SportsFavoriteService.Favorites.State);
  }

  else
  {
    if (qword_280BB9C18 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 32);
    v8 = *(v0 + 16);
    sub_26CD3AC6C();

    v9 = SportsFavoriteService.UserConsent.State.debugDescription.getter();
    MEMORY[0x26D6AD060](v9);

    sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_26CD3C1E0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_26CC19E10();
    *(v10 + 32) = 0xD000000000000029;
    *(v10 + 40) = 0x800000026CD50090;
    sub_26CD3A3DC();

    sub_26CC18BE8(v7, v8, type metadata accessor for SportsFavoriteService.UserConsent.State);
  }

  v11 = *(v0 + 16);
  sub_26CC18318(*(v0 + 32), _s5CacheC5ModelVMa);
  _s5CacheC5ValueOMa(0);
  swift_storeEnumTagMultiPayload();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26CCA0414()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

void sub_26CCA0478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = objc_opt_self();
  v10 = sub_26CD39FCC();
  v11 = [v9 readingIntentWithURL:v10 options:0];

  v12 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_26CD42700;
  *(v13 + 32) = v11;
  sub_26CCA4F50();
  v14 = v11;
  v15 = sub_26CD3A79C();

  v16 = *(a3 + 16);
  (*(v5 + 16))(v8, v23, v4);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v5 + 32))(v18 + v17, v8, v4);
  *(v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_26CCA52C8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_67;
  v19 = _Block_copy(aBlock);
  v20 = v14;
  v21 = v16;

  [v12 coordinateAccessWithIntents:v15 queue:v21 byAccessor:v19];
  _Block_release(v19);
}

uint64_t sub_26CCA0734(void *a1, uint64_t a2, void *a3)
{
  v5 = _s5CacheC5ModelVMa(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = sub_26CD3A07C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26[0] = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
    return sub_26CD3A81C();
  }

  else
  {
    v18 = [a3 URL];
    sub_26CD39FEC();

    v19 = sub_26CD3A08C();
    v21 = v20;
    (*(v13 + 8))(v16, v12);
    v22 = sub_26CD39D5C();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_26CD39D4C();
    sub_26CC16E20(&qword_280BBB440, _s5CacheC5ModelVMa);
    sub_26CD39D3C();

    sub_26CC18BE8(v11, v9, _s5CacheC5ModelVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD238, &qword_26CD45218);
    sub_26CD3A82C();
    sub_26CC18C50(v19, v21);
    return sub_26CC18318(v11, _s5CacheC5ModelVMa);
  }
}

void sub_26CCA0A1C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_26CCA0A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a6;
  v76 = a7;
  v70 = a4;
  v71 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC8C0, &qword_26CD447F0);
  v74 = *(v8 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD230, &qword_26CD45200);
  v77 = *(v10 - 8);
  v78 = v10;
  v69 = *(v77 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v53 = &v53 - v11;
  v13 = objc_opt_self();
  v14 = sub_26CD39FCC();
  v15 = [v13 readingIntentWithURL:v14 options:0];

  v16 = sub_26CD39FCC();
  v17 = [v13 writingIntentWithURL:v16 options:8];

  v18 = sub_26CD39FCC();
  v19 = [v13 readingIntentWithURL:v18 options:0];

  v20 = sub_26CD39FCC();
  v21 = [v13 writingIntentWithURL:v20 options:8];

  v72 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) initWithFilePresenter_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA68, &qword_26CD42850);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26CD44E80;
  *(v22 + 32) = v15;
  *(v22 + 40) = v17;
  *(v22 + 48) = v19;
  *(v22 + 56) = v21;
  sub_26CCA4F50();
  v55 = v15;
  v57 = v17;
  v54 = v19;
  v56 = v21;
  v68 = sub_26CD3A79C();

  v61 = *(v70 + 16);
  v23 = v77;
  (*(v77 + 16))(v12, v71, v78);
  v24 = *(a5 + 16);
  v58 = *(a5 + 8);
  v60 = v24;
  v25 = *(a5 + 32);
  v59 = *(a5 + 24);
  v63 = v25;
  v26 = *(a5 + 48);
  v62 = *(a5 + 40);
  v65 = v26;
  v27 = *(a5 + 64);
  v64 = *(a5 + 56);
  v28 = *(a5 + 80);
  v66 = *(a5 + 72);
  v67 = v27;
  v70 = *(a5 + 88);
  v71 = v28;
  sub_26CC1B4DC(v75, v79, &qword_2804BC8C0, &qword_26CD447F0);
  v29 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v30 = (v69 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (*(v74 + 80) + v32 + 96) & ~*(v74 + 80);
  v34 = (v73 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v77 + 32))(v36 + v29, v53, v78);
  v37 = v55;
  *(v36 + v30) = v55;
  v38 = v54;
  *(v36 + v31) = v54;
  v39 = (v36 + v32);
  v40 = *(a5 + 48);
  v39[2] = *(a5 + 32);
  v39[3] = v40;
  v41 = *(a5 + 80);
  v39[4] = *(a5 + 64);
  v39[5] = v41;
  v42 = *(a5 + 16);
  *v39 = *a5;
  v39[1] = v42;
  sub_26CC16D64(v79, v36 + v33, &qword_2804BC8C0, &qword_26CD447F0);
  v43 = v57;
  *(v36 + v34) = v57;
  v44 = v56;
  *(v36 + v35) = v56;
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v76;
  aBlock[4] = sub_26CCA5160;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCA0A1C;
  aBlock[3] = &block_descriptor_57;
  v45 = _Block_copy(aBlock);
  v46 = v37;
  v47 = v43;
  v48 = v38;
  v49 = v44;
  v50 = v61;

  sub_26CC27044(v60);
  sub_26CC27044(v63);
  sub_26CC27044(v65);
  sub_26CC27044(v67);
  sub_26CC27044(v71);

  v51 = v72;
  v52 = v68;
  [v72 coordinateAccessWithIntents:v68 queue:v50 byAccessor:v45];
  _Block_release(v45);
}