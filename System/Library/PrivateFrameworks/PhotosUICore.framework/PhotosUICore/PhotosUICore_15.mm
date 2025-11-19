uint64_t SharedAlbumsAssetViewNavigationEnvironment.navigationContext.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A3DFEADC()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  xmmword_1EB1987F8 = 0u;
  unk_1EB198808 = 0u;
  xmmword_1EB198818 = 0u;
  return sub_1A3DF02DC(v1, &xmmword_1EB1987F8 + 8);
}

uint64_t sub_1A3DFEB20@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB1987F0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A3DF00A0(&xmmword_1EB1987F8, v2);
}

void (*EnvironmentValues.sharedAlbumsAssetViewNavigationEnvironment.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA0uLL);
  }

  *a1 = v3;
  *(v3 + 144) = v1;
  *(v3 + 152) = sub_1A3E00014();
  sub_1A5249244();
  return sub_1A3DFEC20;
}

void sub_1A3DFEC20(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3DF00A0(*a1, v2 + 48);
    sub_1A3DF00A0(v2 + 48, v2 + 96);
    sub_1A5249254();
    sub_1A3E00068(v2 + 48);
  }

  else
  {
    sub_1A3DF00A0(*a1, v2 + 48);
    sub_1A5249254();
  }

  sub_1A3E00068(v2);

  free(v2);
}

uint64_t sub_1A3DFECD0()
{
  v0 = sub_1A524D464();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF24();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1A3DF19A4(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3E09AF8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C70F90();
  sub_1A524E224();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = sub_1A524D4B4();
  qword_1EB198830 = result;
  return result;
}

uint64_t sub_1A3DFEF3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v11 = sub_1A524BEE4();
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(PXVideoRequestOptions) init];
  [v16 setNetworkAccessAllowed_];
  if (qword_1EB198828 != -1)
  {
    swift_once();
  }

  [v16 setResultHandlerQueue_];
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a2;
  v37 = sub_1A3E06BEC;
  v38 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1A3DD5B38;
  v36 = &block_descriptor_79_0;
  v18 = _Block_copy(&aBlock);
  v19 = v16;
  sub_1A3C66EE8(a3);

  swift_unknownObjectRetain();

  v20 = [v27 requestPlayerItemForVideo:a2 options:v19 resultHandler:v18];
  _Block_release(v18);

  sub_1A3C52C70(0, &qword_1EB12B180);
  v21 = sub_1A524D474();
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = v20;
  v37 = sub_1A3E06BFC;
  v38 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = sub_1A3C2E0D0;
  v36 = &block_descriptor_85;
  v23 = _Block_copy(&aBlock);
  sub_1A3C66EE8(a3);

  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1A3DF19A4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3E09AF8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v24 = v30;
  v25 = v32;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v15, v24, v23);
  _Block_release(v23);

  (*(v31 + 8))(v24, v25);
  return (*(v28 + 8))(v15, v29);
}

uint64_t sub_1A3DFF3A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a4;
  v54 = a6;
  v52 = a3;
  v8 = sub_1A524BEE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v13;
  v51 = a5;
  if (!a1)
  {
    if (qword_1EB1987D0 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v47 = v11;
  v49 = v9;
  v15 = a1;
  [v15 duration];
  sub_1A524D124();
  AVPlayerItem.loopTimeRange.setter();
  v46 = v15;
  v16 = [v15 tracks];
  sub_1A3C52C70(0, &qword_1EB12CDC0);
  v17 = sub_1A524CA34();

  v50 = v8;
  v48 = v12;
  if (v17 >> 62)
  {
    v18 = sub_1A524E2B4();
    if (v18)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_4:
      if (v18 >= 1)
      {
        v19 = 0;
        v57 = *MEMORY[0x1E69875A0];
        while (1)
        {
          if ((v17 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x1A59097F0](v19, v17);
          }

          else
          {
            v20 = *(v17 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = [v20 assetTrack];
          if (!v22)
          {
            goto LABEL_9;
          }

          v23 = v22;
          v24 = [v22 mediaType];
          v25 = sub_1A524C674();
          v27 = v26;
          if (v25 == sub_1A524C674() && v27 == v28)
          {
          }

          else
          {
            v30 = sub_1A524EAB4();

            if ((v30 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          [v21 setEnabled_];
LABEL_8:

LABEL_9:
          ++v19;

          if (v18 == v19)
          {
            goto LABEL_23;
          }
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
LABEL_21:
      v31 = sub_1A5246F24();
      __swift_project_value_buffer(v31, qword_1EB1987D8);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

LABEL_23:

  v32 = [objc_allocWithZone(MEMORY[0x1E69C1B20]) init];
  v33 = v46;
  [v32 replaceCurrentItemWithPlayerItem_];
  [v32 setAllowsExternalPlayback_];
  [v32 setIsAudioEnabled_];
  [v32 setLoopingEnabled_];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v34 = sub_1A524D474();
  v35 = swift_allocObject();
  v37 = v52;
  v36 = v53;
  v35[2] = v52;
  v35[3] = v36;
  v38 = v54;
  v35[4] = v51;
  v35[5] = v38;
  v35[6] = v32;
  v58[4] = sub_1A3E06C84;
  v58[5] = v35;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = sub_1A3C2E0D0;
  v58[3] = &block_descriptor_97;
  v39 = _Block_copy(v58);
  sub_1A3C66EE8(v37);

  v40 = v32;

  v41 = v55;
  sub_1A524BF14();
  v58[0] = MEMORY[0x1E69E7CC0];
  sub_1A3DF19A4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3E09AF8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v42 = v47;
  v43 = v50;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v41, v42, v39);
  _Block_release(v39);

  (*(v49 + 8))(v42, v43);
  return (*(v56 + 8))(v41, v48);
}

uint64_t sub_1A3DFFD50()
{
  sub_1A3E0420C();
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A3DFFD8C()
{
  sub_1A3E09208(0, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  return v1;
}

uint64_t sub_1A3DFFDFC()
{
  sub_1A3E09208(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A3DFFE6C()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  if (*(v0 + 120) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1A524D254();
    v6 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3E04274(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_1A3DFFFBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5248CB4();
  *a1 = result;
  return result;
}

unint64_t sub_1A3E00014()
{
  result = qword_1EB198888;
  if (!qword_1EB198888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB198888);
  }

  return result;
}

void sub_1A3E0011C()
{
  if (!qword_1EB12CB00)
  {
    sub_1A3E001C8();
    sub_1A3E05634(255, &qword_1EB1245E0, MEMORY[0x1E6981998], sub_1A3E004A0, MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CB00);
    }
  }
}

void sub_1A3E001C8()
{
  if (!qword_1EB12CB08)
  {
    sub_1A3E00268();
    sub_1A3E055C8(255, &qword_1EB127B00, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CB08);
    }
  }
}

void sub_1A3E00268()
{
  if (!qword_1EB12CB10)
  {
    sub_1A3E0036C();
    sub_1A52498E4();
    sub_1A3DF19A4(&qword_1EB12CB20, sub_1A3E0036C);
    sub_1A3DF19A4(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CB10);
    }
  }
}

void sub_1A3E0036C()
{
  if (!qword_1EB12CB18)
  {
    sub_1A3E0479C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3E003FC();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CB18);
    }
  }
}

unint64_t sub_1A3E003FC()
{
  result = qword_1EB128730;
  if (!qword_1EB128730)
  {
    sub_1A3E0479C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128730);
  }

  return result;
}

unint64_t sub_1A3E004D4()
{
  result = qword_1EB12CB30;
  if (!qword_1EB12CB30)
  {
    sub_1A3E0479C(255, &qword_1EB12CB28, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CB30);
  }

  return result;
}

void sub_1A3E00558()
{
  if (!qword_1EB12CB40)
  {
    sub_1A3C34400(255, &qword_1EB12CB48);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CB40);
    }
  }
}

uint64_t sub_1A3E005C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3E09AF8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A3E00630(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A3E00640@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1A3E06D74(v1 + 128, v11, &unk_1EB12CAE8, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E697DCB8], sub_1A3E09208);
  if (v12 == 1)
  {
    v8 = v11[1];
    *a1 = v11[0];
    a1[1] = v8;
    a1[2] = v11[2];
  }

  else
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_1A3E007DC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v99 = a2;
  v5 = sub_1A5249524();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241FC4();
  v94 = *(v7 - 8);
  v95 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1E69C27E0];
  v9 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &unk_1EB129020, MEMORY[0x1E69C27E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v79 - v11;
  v84 = MEMORY[0x1E69C27A0];
  sub_1A3E09AF8(0, &unk_1EB129030, MEMORY[0x1E69C27A0], v9);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v79 - v14;
  sub_1A3E04280();
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3E04B34(0, &qword_1EB12CC90, sub_1A3E04280, sub_1A3E04BC4);
  v20 = *(v19 - 8);
  v82 = v19;
  v83 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - v21;
  sub_1A3E04BF8();
  v86 = v23;
  v88 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E04CE4();
  v90 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v81 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v87 = &v79 - v29;
  sub_1A3E00640(v115);
  v30 = *&v115[0];

  sub_1A3E00068(v115);
  v101 = *(a1 + 16);
  v102 = v3;
  v31 = v101;
  v100 = v101;
  v79 = v3;
  v91 = a1;
  v32 = *(a1 - 8);
  v92 = *(v32 + 16);
  v93 = v32 + 16;
  v92(&v103, v3, a1);
  v33 = swift_allocObject();
  v34 = v112;
  *(v33 + 152) = v111;
  *(v33 + 168) = v34;
  *(v33 + 184) = v113;
  v35 = v108;
  *(v33 + 88) = v107;
  *(v33 + 104) = v35;
  v36 = v110;
  *(v33 + 120) = v109;
  *(v33 + 136) = v36;
  v37 = v104;
  *(v33 + 24) = v103;
  *(v33 + 40) = v37;
  v38 = v106;
  *(v33 + 56) = v105;
  *(v33 + 16) = v31;
  *(v33 + 200) = v114;
  *(v33 + 72) = v38;
  sub_1A3E04328(0);
  sub_1A3E049AC(&qword_1EB12CC70, sub_1A3E04328, sub_1A3E04A1C);
  sub_1A472916C(v30, sub_1A3E04D4C, 0, 0, sub_1A3E04D54, v33, v18);
  v39 = sub_1A5243A44();
  (*(*(v39 - 8) + 56))(v15, 1, 1, v39);
  v40 = sub_1A5243B34();
  v41 = v12;
  (*(*(v40 - 8) + 56))(v12, 1, 1, v40);
  v42 = v85;
  sub_1A5241FB4();
  v43 = sub_1A3E04BC4();
  v44 = v80;
  sub_1A524A6A4();
  (*(v94 + 8))(v42, v95);
  sub_1A3E005C0(v41, &unk_1EB129020, v89);
  sub_1A3E005C0(v15, &unk_1EB129030, v84);
  sub_1A3E09958(v18, sub_1A3E04280);
  v45 = v79;
  v46 = *v79;
  *(&v104 + 1) = v100;
  *&v103 = v46;
  swift_unknownObjectRetain();
  *&v115[0] = v44;
  *(&v115[0] + 1) = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v82;
  sub_1A524A534();
  (*(v83 + 8))(v22, v48);
  sub_1A3C2C408(&v103, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
  *&v103 = v48;
  *(&v103 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v81;
  v50 = v86;
  sub_1A524AA94();
  (*(v88 + 8))(v25, v50);
  *&v103 = sub_1A49C3BB0();
  *(&v103 + 1) = v51;
  sub_1A3D5F9DC();
  v52 = sub_1A524A464();
  v54 = v53;
  LOBYTE(v25) = v55;
  v56 = v87;
  sub_1A52487A4();
  sub_1A3E04DF4(v52, v54, v25 & 1);

  sub_1A3E08CD8(v49, sub_1A3E04CE4);
  v57 = v96;
  sub_1A52494F4();
  v58 = v99;
  sub_1A5248784();
  (*(v97 + 8))(v57, v98);
  sub_1A3E08CD8(v56, sub_1A3E04CE4);
  v59 = v45;
  v60 = v91;
  v61 = v92;
  v92(&v103, v45, v91);
  v62 = swift_allocObject();
  v63 = v112;
  *(v62 + 152) = v111;
  *(v62 + 168) = v63;
  *(v62 + 184) = v113;
  v64 = v108;
  *(v62 + 88) = v107;
  *(v62 + 104) = v64;
  v65 = v110;
  *(v62 + 120) = v109;
  *(v62 + 136) = v65;
  v66 = v104;
  *(v62 + 24) = v103;
  *(v62 + 40) = v66;
  v67 = v106;
  *(v62 + 56) = v105;
  v68 = v100;
  *(v62 + 16) = v100;
  *(v62 + 200) = v114;
  *(v62 + 72) = v67;
  sub_1A3E0516C(0);
  v70 = (v58 + *(v69 + 36));
  *v70 = sub_1A3E04EA4;
  v70[1] = v62;
  v70[2] = 0;
  v70[3] = 0;
  v61(&v103, v59, v60);
  v71 = swift_allocObject();
  v72 = v112;
  *(v71 + 152) = v111;
  *(v71 + 168) = v72;
  *(v71 + 184) = v113;
  v73 = v108;
  *(v71 + 88) = v107;
  *(v71 + 104) = v73;
  v74 = v110;
  *(v71 + 120) = v109;
  *(v71 + 136) = v74;
  v75 = v104;
  *(v71 + 24) = v103;
  *(v71 + 40) = v75;
  v76 = v106;
  *(v71 + 56) = v105;
  *(v71 + 16) = v68;
  *(v71 + 200) = v114;
  *(v71 + 72) = v76;
  sub_1A3E055C8(0, &qword_1EB12CCC0, sub_1A3E0516C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v78 = (v58 + *(v77 + 36));
  *v78 = 0;
  v78[1] = 0;
  v78[2] = sub_1A3E051A8;
  v78[3] = v71;
}

void sub_1A3E01244(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5243834();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E09AF8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  memset(v23, 0, sizeof(v23));
  v24 = 1;
  v13 = sub_1A52429A4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 104))(v9, *MEMORY[0x1E69C2678], v6);
  swift_unknownObjectRetain();
  sub_1A5243ED4();
  v14 = sub_1A524BC74();
  v16 = v15;
  sub_1A3E0435C();
  v18 = (a3 + *(v17 + 36));
  *v18 = sub_1A524BC74();
  v18[1] = v19;
  sub_1A3E06CDC();
  sub_1A3E014CC(a1, a2, v18 + *(v20 + 44));
  sub_1A3E05634(0, &qword_1EB12CBE0, sub_1A3E04408, sub_1A3E04978, MEMORY[0x1E697EC08]);
  v22 = (v18 + *(v21 + 36));
  *v22 = v14;
  v22[1] = v16;
}

uint64_t sub_1A3E014CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v84 = a3;
  sub_1A3E04648();
  v86 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1A3E09AF8(0, &qword_1EB12CC28, sub_1A3E04648, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v79 - v12;
  sub_1A3E04568(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E09AF8(0, &qword_1EB12CC00, sub_1A3E04568, v8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v79 - v22;
  v87 = *(a1 + 56);
  sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v24 = v99;
  if (v99)
  {
    sub_1A3C52C70(0, &qword_1EB12CC20);
    v25 = swift_allocObject();
    v80 = v15;
    v26 = a1;
    *(v25 + 16) = v24;
    v24 = v24;
    sub_1A52481D4();
    v27 = type metadata accessor for SharedAlbumsAssetView();
    v28 = *(v27 - 8);
    v81 = v14;
    v29 = v23;
    v30 = v20;
    v31 = *(v28 + 16);
    v82 = v6;
    v31(&v87, a1, v27);
    v32 = swift_allocObject();
    v33 = v96;
    *(v32 + 152) = v95;
    *(v32 + 168) = v33;
    *(v32 + 184) = v97;
    v34 = v92;
    *(v32 + 88) = v91;
    *(v32 + 104) = v34;
    v35 = v94;
    *(v32 + 120) = v93;
    *(v32 + 136) = v35;
    v36 = v88;
    *(v32 + 24) = v87;
    *(v32 + 40) = v36;
    v37 = v90;
    *(v32 + 56) = v89;
    *(v32 + 16) = a2;
    *(v32 + 200) = v98;
    *(v32 + 72) = v37;
    *(v32 + 208) = v24;
    sub_1A3E045A4(0);
    v39 = &v17[*(v38 + 36)];
    *v39 = sub_1A3E07094;
    v39[1] = v32;
    a1 = v26;
    v15 = v80;
    v39[2] = 0;
    v39[3] = 0;
    v31(&v87, a1, v27);
    v20 = v30;
    v23 = v29;
    v14 = v81;
    v6 = v82;
    v40 = swift_allocObject();
    *(v40 + 16) = a2;
    *(v40 + 24) = v24;
    v41 = v96;
    *(v40 + 160) = v95;
    *(v40 + 176) = v41;
    *(v40 + 192) = v97;
    *(v40 + 208) = v98;
    v42 = v92;
    *(v40 + 96) = v91;
    *(v40 + 112) = v42;
    v43 = v94;
    *(v40 + 128) = v93;
    *(v40 + 144) = v43;
    v44 = v88;
    *(v40 + 32) = v87;
    *(v40 + 48) = v44;
    v45 = v90;
    *(v40 + 64) = v89;
    *(v40 + 80) = v45;
    v46 = &v17[*(v14 + 36)];
    *v46 = 0;
    *(v46 + 1) = 0;
    *(v46 + 2) = sub_1A3E0717C;
    *(v46 + 3) = v40;
    sub_1A3E07240(v17, v23, sub_1A3E04568);
    v47 = 0;
  }

  else
  {
    v47 = 1;
  }

  v48 = 1;
  (*(v15 + 56))(v23, v47, 1, v14);
  v49 = type metadata accessor for SharedAlbumsAssetView();
  v50 = v24;
  if ((sub_1A3DFFDFC() & 1) == 0 && (*(a1 + 8) & 1) == 0)
  {
    v82 = v20;
    v51 = *a1;
    if (([*a1 respondsToSelector_] & 1) != 0 && objc_msgSend(v51, sel_playbackStyle) == 4 || (objc_msgSend(v51, sel_respondsToSelector_, sel_playbackStyle) & 1) != 0 && objc_msgSend(v51, sel_playbackStyle) == 5)
    {
      (*(*(v49 - 8) + 16))(&v87, a1, v49);
      v52 = swift_allocObject();
      v53 = v96;
      *(v52 + 152) = v95;
      *(v52 + 168) = v53;
      *(v52 + 184) = v97;
      v54 = v92;
      *(v52 + 88) = v91;
      *(v52 + 104) = v54;
      v55 = v94;
      *(v52 + 120) = v93;
      *(v52 + 136) = v55;
      v56 = v88;
      *(v52 + 24) = v87;
      *(v52 + 40) = v56;
      v57 = v90;
      *(v52 + 56) = v89;
      *(v52 + 16) = a2;
      *(v52 + 200) = v98;
      *(v52 + 72) = v57;
      sub_1A3E0479C(0, &qword_1EB12CC48, &type metadata for VideoPlaybackButtonView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
      sub_1A3E047F0();
      v58 = v79;
      sub_1A524B704();
      v59 = sub_1A524A064();
      sub_1A5247BC4();
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v67 = v66;
      sub_1A3E055C8(0, &qword_1EB12CC38, sub_1A3E0470C, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
      v69 = v58 + *(v68 + 36);
      *v69 = v59;
      *(v69 + 8) = v61;
      *(v69 + 16) = v63;
      *(v69 + 24) = v65;
      *(v69 + 32) = v67;
      *(v69 + 40) = 0;
      KeyPath = swift_getKeyPath();
      v71 = swift_allocObject();
      *(v71 + 16) = 1;
      v72 = (v58 + *(v86 + 9));
      *v72 = KeyPath;
      v72[1] = sub_1A3E07024;
      v72[2] = v71;
      sub_1A3E07240(v58, v85, sub_1A3E04648);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v20 = v82;
  }

  v73 = v85;
  (*(v6 + 7))(v85, v48, 1, v86);
  v74 = MEMORY[0x1E69E6720];
  sub_1A3E06D74(v23, v20, &qword_1EB12CC00, sub_1A3E04568, MEMORY[0x1E69E6720], sub_1A3E09AF8);
  v86 = v23;
  v75 = v83;
  sub_1A3E06D74(v73, v83, &qword_1EB12CC28, sub_1A3E04648, v74, sub_1A3E09AF8);
  v76 = v84;
  sub_1A3E06D74(v20, v84, &qword_1EB12CC00, sub_1A3E04568, v74, sub_1A3E09AF8);
  sub_1A3E0449C();
  sub_1A3E06D74(v75, v76 + *(v77 + 48), &qword_1EB12CC28, sub_1A3E04648, v74, sub_1A3E09AF8);
  sub_1A3E005C0(v73, &qword_1EB12CC28, sub_1A3E04648);
  sub_1A3E005C0(v86, &qword_1EB12CC00, sub_1A3E04568);
  sub_1A3E005C0(v75, &qword_1EB12CC28, sub_1A3E04648);
  return sub_1A3E005C0(v20, &qword_1EB12CC00, sub_1A3E04568);
}

uint64_t sub_1A3E01E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

__n128 sub_1A3E01EC4@<Q0>(_OWORD *a1@<X8>)
{
  [objc_opt_self() px_videoOverlayButtonSize];
  v3 = v2;
  v5 = v4;
  sub_1A524BC74();
  if (v3 < 44.0 || v5 < 44.0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();
  }

  sub_1A5248AD4();
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v15;
  *a1 = v9;
  a1[1] = v10;
  result = v12;
  a1[2] = v11;
  a1[3] = v12;
  return result;
}

id sub_1A3E01FE4()
{
  v0 = [objc_opt_self() px:0 videoOverlayButtonWithStyle:?];

  return v0;
}

uint64_t sub_1A3E02028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3E064E4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A3E0208C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3E064E4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A3E020F0()
{
  sub_1A3E064E4();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A3E02118@<X0>(char *a1@<X8>)
{
  sub_1A3E05634(0, &qword_1EB12CCC8, sub_1A3E056B4, sub_1A3E05A98, MEMORY[0x1E697BE58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  sub_1A524A044();
  sub_1A3E056B4();
  sub_1A3E05A98();
  sub_1A5247D14();
  v10 = *(v4 + 16);
  v10(v6, v9, v3);
  v17 = 1;
  v10(a1, v6, v3);
  sub_1A3E05ACC();
  v12 = &a1[*(v11 + 48)];
  v13 = v17;
  *v12 = 0;
  v12[8] = v13;
  v14 = *(v4 + 8);
  v14(v9, v3);
  return (v14)(v6, v3);
}

uint64_t sub_1A3E02304()
{
  v0 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A5249574();
  sub_1A3DF19A4(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  sub_1A524EE64();
  sub_1A3E09AF8(0, &qword_1EB12CCD8, sub_1A3E05748, MEMORY[0x1E6981F40]);
  sub_1A3E05A10();
  return sub_1A5247CC4();
}

uint64_t sub_1A3E0244C@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524B9A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v7;
  sub_1A3E0577C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  if (qword_1EB198838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EB1EB878 >> 62)
  {
    v13 = sub_1A524E2B4();
  }

  else
  {
    v13 = *((qword_1EB1EB878 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a1;
  v36 = v5;
  if (v13)
  {
    v37 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v14 = v3;
  v37 = MEMORY[0x1E69E7CC0];
  sub_1A3E09AF8(0, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
  sub_1A3E05634(0, &qword_1EB12CD00, sub_1A3E05888, sub_1A3E05954, type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell);
  sub_1A3E05988();
  sub_1A3E0658C();
  sub_1A3DF19A4(&qword_1EB12CD98, sub_1A3E05888);
  v30 = v12;
  sub_1A524B9C4();
  v15 = v35;
  sub_1A524B994();
  v17 = v31;
  v16 = v32;
  v18 = *(v32 + 16);
  v19 = v12;
  v20 = v33;
  v18(v31, v19, v33);
  v21 = *(v14 + 16);
  v21(v36, v15, v2);
  v22 = v34;
  v18(v34, v17, v20);
  sub_1A3E05748(0);
  v24 = &v22[*(v23 + 48)];
  v25 = v36;
  v21(v24, v36, v2);
  v26 = *(v14 + 8);
  v26(v35, v2);
  v27 = *(v16 + 8);
  v27(v30, v20);
  v26(v25, v2);
  return (v27)(v17, v20);
}

uint64_t sub_1A3E02920@<X0>(uint64_t a1@<X8>)
{
  sub_1A3E05634(0, &qword_1EB12CD00, sub_1A3E05888, sub_1A3E05954, type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell);
  v3 = v2;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v4 = a1 + v2[14];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  sub_1A3E05888();
  sub_1A3DF19A4(&qword_1EB12CDA0, sub_1A3E05888);

  sub_1A524BAC4();
  *(a1 + v3[9]) = 0;
  sub_1A3E09888(v9, a1 + v3[10], sub_1A3DF0038);
  sub_1A3E09888(v9, v8, sub_1A3DF0038);
  v5 = (a1 + v3[11]);
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  sub_1A3DF02DC(v8, v5 + 8);
  sub_1A3C52C70(0, &qword_1EB126910);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  LOBYTE(v4) = [v6 activityEntryFeedDrawDebugBackgrounds];

  *(a1 + v3[13]) = v4;
  sub_1A52434D4();
  sub_1A5247C74();
  return sub_1A3E09958(v9, sub_1A3DF0038);
}

id sub_1A3E02B2C()
{
  result = sub_1A3E02B4C();
  qword_1EB1EB878 = result;
  return result;
}

id sub_1A3E02B4C()
{
  v147 = sub_1A5241144();
  v149 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v126 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v148 = &v126 - v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v126 - v4;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v132 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v136 = &v126 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v126 - v12;
  v139 = [objc_opt_self() sharedPhotoLibrary];
  v14 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v15 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v16 = sub_1A524C634();
  v17 = [v15 initWithDisplayName:v16 email:0];

  sub_1A52411B4();
  v138 = sub_1A5241164();
  v18 = *(v7 + 8);
  v143 = v6;
  v142 = (v7 + 8);
  v141 = v18;
  v18(v13, v6);
  v144 = v5;
  sub_1A5241104();
  v19 = MEMORY[0x1E69E6F90];
  sub_1A3E09208(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v21 = v20;
  v22 = swift_allocObject();
  v150 = xmmword_1A52F9790;
  *(v22 + 16) = xmmword_1A52F9790;
  *(v22 + 32) = v17;
  v146 = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = v150;
  *(v23 + 32) = v14;
  sub_1A3E09208(0, &qword_1EB12B260, MEMORY[0x1E69E6158], v19);
  v140 = v24;
  v25 = swift_allocObject();
  v131 = xmmword_1A52F8E10;
  *(v25 + 16) = xmmword_1A52F8E10;
  v26 = qword_1EB198840;
  v130 = v17;
  v135 = v14;
  if (v26 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EB880 uuid];
  if (!result)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = result;
  v29 = sub_1A524C674();
  v31 = v30;

  *(v25 + 32) = v29;
  *(v25 + 40) = v31;
  v137 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v32 = v139;
  v134 = sub_1A524C634();

  v33 = sub_1A5241074();
  v139 = sub_1A3C52C70(0, &qword_1EB12CD78);
  v34 = sub_1A524CA14();

  v138 = sub_1A3C52C70(0, &unk_1EB12CD80);
  v35 = sub_1A524CA14();

  v36 = sub_1A524C634();
  v37 = sub_1A524C634();
  v38 = sub_1A524C634();
  v39 = sub_1A524CA14();

  v40 = sub_1A524CA14();
  LOBYTE(v123) = 1;
  v41 = v134;
  v133 = [v137 initWithPhotoLibrary:v32 uuid:v134 date:v33 type:0 isFromMe:0 contributors:v34 avatarConfigurations:v35 albumGUID:v36 albumName:v37 cloudOwnerIsAllowlisted:v123 message:v38 keyAssetUUIDs:v39 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v40 underlyingObject:0];
  v129 = v32;

  v42 = *(v149 + 8);
  v149 += 8;
  v137 = v42;
  (v42)(v144, v147);
  v43 = type metadata accessor for SharedAlbumsActivityEntryItem();
  v44 = swift_allocObject();
  *(v44 + 16) = v150;
  v45 = qword_1EB1EB880;
  *(v44 + 32) = qword_1EB1EB880;
  v46 = v133;
  v47 = v45;
  LOBYTE(v45) = sub_1A3C5A374();
  v48 = sub_1A3C5A374();
  v144 = v43;
  v134 = sub_1A4705FE8(v46, v45, v44, v48 & 1);
  v49 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v50 = sub_1A524C634();
  v51 = [v49 initWithDisplayName:v50 email:0];

  v52 = v136;
  sub_1A52411B4();
  sub_1A5241164();
  v141(v52, v143);
  sub_1A5241104();
  v53 = swift_allocObject();
  *(v53 + 16) = v150;
  *(v53 + 32) = v51;
  v54 = swift_allocObject();
  *(v54 + 16) = v150;
  v55 = v135;
  *(v54 + 32) = v135;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1A52FF950;
  v57 = qword_1EB198850;
  v136 = v55;
  v135 = v51;
  if (v57 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EB890 uuid];
  if (!result)
  {
    goto LABEL_18;
  }

  v58 = result;
  v59 = sub_1A524C674();
  v61 = v60;

  *(v56 + 32) = v59;
  *(v56 + 40) = v61;
  if (qword_1EB198858 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EB898 uuid];
  if (!result)
  {
    goto LABEL_19;
  }

  v62 = result;
  v63 = sub_1A524C674();
  v65 = v64;

  *(v56 + 48) = v63;
  *(v56 + 56) = v65;
  if (qword_1EB198848 != -1)
  {
    swift_once();
  }

  v133 = v46;
  swift_beginAccess();
  result = [qword_1EB1EB888 uuid];
  if (!result)
  {
    goto LABEL_20;
  }

  v66 = result;
  v67 = sub_1A524C674();
  v69 = v68;

  *(v56 + 64) = v67;
  *(v56 + 72) = v69;
  *&v128 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
  v70 = v129;
  v71 = sub_1A524C634();

  v72 = sub_1A5241074();
  v73 = sub_1A524CA14();

  v74 = sub_1A524CA14();

  v75 = sub_1A524C634();
  v76 = sub_1A524C634();
  v77 = sub_1A524CA14();

  v78 = v70;
  v79 = sub_1A524CA14();
  LOBYTE(v124) = 1;
  v80 = [v128 initWithPhotoLibrary:v70 uuid:v71 date:v72 type:0 isFromMe:0 contributors:v73 avatarConfigurations:v74 albumGUID:v75 albumName:v76 cloudOwnerIsAllowlisted:v124 message:0 keyAssetUUIDs:v77 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v79 underlyingObject:0];

  (v137)(v148, v147);
  v81 = swift_allocObject();
  v128 = xmmword_1A52FF960;
  *(v81 + 16) = xmmword_1A52FF960;
  v82 = qword_1EB1EB890;
  v83 = qword_1EB1EB898;
  *(v81 + 32) = qword_1EB1EB890;
  *(v81 + 40) = v83;
  v84 = qword_1EB1EB888;
  *(v81 + 48) = qword_1EB1EB888;
  v85 = v80;
  v86 = v82;
  v87 = v83;
  v88 = v84;
  LOBYTE(v82) = sub_1A3C5A374();
  v89 = sub_1A3C5A374();
  v129 = v85;
  v127 = sub_1A4705FE8(v85, v82, v81, v89 & 1);
  v90 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v91 = sub_1A524C634();
  v92 = [v90 initWithDisplayName:v91 email:0];

  v93 = v132;
  sub_1A52411B4();
  sub_1A5241164();
  v141(v93, v143);
  sub_1A5241104();
  v94 = swift_allocObject();
  *(v94 + 16) = v150;
  *(v94 + 32) = v92;
  v95 = swift_allocObject();
  *(v95 + 16) = v150;
  v96 = v136;
  *(v95 + 32) = v136;
  v97 = swift_allocObject();
  *(v97 + 16) = v131;
  v98 = qword_1EB198860;
  v142 = v96;
  v143 = v92;
  if (v98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EB8A0 uuid];
  if (result)
  {
    v99 = result;
    v100 = sub_1A524C674();
    v102 = v101;

    *(v97 + 32) = v100;
    *(v97 + 40) = v102;
    v103 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
    v148 = v78;
    v104 = sub_1A524C634();

    v105 = sub_1A5241074();
    v106 = sub_1A524CA14();

    v107 = sub_1A524CA14();

    v108 = sub_1A524C634();
    v109 = sub_1A524C634();
    v110 = sub_1A524CA14();

    v111 = sub_1A524CA14();
    LOBYTE(v125) = 1;
    v112 = v103;
    v113 = v148;
    v114 = [v112 initWithPhotoLibrary:v148 uuid:v104 date:v105 type:0 isFromMe:0 contributors:v106 avatarConfigurations:v107 albumGUID:v108 albumName:v109 cloudOwnerIsAllowlisted:v125 message:0 keyAssetUUIDs:v110 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v111 underlyingObject:0];

    (v137)(v145, v147);
    v115 = swift_allocObject();
    *(v115 + 16) = v150;
    v116 = qword_1EB1EB8A0;
    *(v115 + 32) = qword_1EB1EB8A0;
    v117 = v114;
    v118 = v116;
    LOBYTE(v116) = sub_1A3C5A374();
    v119 = sub_1A3C5A374();
    v120 = sub_1A4705FE8(v117, v116, v115, v119 & 1);
    v121 = swift_allocObject();
    *(v121 + 16) = v128;
    v122 = v127;
    *(v121 + 32) = v134;
    *(v121 + 40) = v122;
    *(v121 + 48) = v120;

    return v121;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A3E03B98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(off_1E77218F8);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1A3D77CC4;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithConfiguration_];
  _Block_release(v8);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *a4 = v9;
  }

  return result;
}

uint64_t sub_1A3E03C84(uint64_t a1)
{
  v2 = sub_1A3E06538();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A3E03CD0(uint64_t a1)
{
  v2 = sub_1A3E06538();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

id sub_1A3E03D1C(void *a1)
{
  v2 = [objc_opt_self() systemOrangeColor];
  [a1 setTintColor_];

  return [a1 setSize_];
}

void sub_1A3E03DCC(void *a1, SEL *a2)
{
  v3 = [objc_opt_self() *a2];
  [a1 setTintColor_];
}

id sub_1A3E03E40(void *a1)
{
  [a1 setMediaType_];
  [a1 setPlaybackStyle_];
  v2 = [objc_opt_self() systemGreenColor];
  [a1 setTintColor_];

  return [a1 setSize_];
}

uint64_t sub_1A3E03EF0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1A52491E4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1A3E03FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A3E04074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A52491C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A3E040CC(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  result = sub_1A524CAF4();
  if (__OFSUB__(result, a2))
  {
    __break(1u);
  }

  else
  {
    v4 = (result - a2) & ~((result - a2) >> 63);
    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    sub_1A524C674();
    sub_1A3E072BC();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E6530];
    *(v7 + 16) = xmmword_1A52F8E10;
    v9 = MEMORY[0x1E69E65A8];
    *(v7 + 56) = v8;
    *(v7 + 64) = v9;
    *(v7 + 32) = v4;
    v10 = sub_1A524C644();

    return v10;
  }

  return result;
}

id sub_1A3E041E4(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_1A3E041F8(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_1A3E0420C()
{
  if (!qword_1EB12CBB0)
  {
    sub_1A3C52C70(255, &unk_1EB12CBB8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CBB0);
    }
  }
}

uint64_t sub_1A3E04274(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1A3E04280()
{
  if (!qword_1EB12CBC8)
  {
    sub_1A3E04328(255);
    sub_1A3E049AC(&qword_1EB12CC70, sub_1A3E04328, sub_1A3E04A1C);
    v0 = type metadata accessor for LemonadeDetailsNavigationButton();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CBC8);
    }
  }
}

void sub_1A3E0435C()
{
  if (!qword_1EB12CBD8)
  {
    sub_1A5243EC4();
    sub_1A3E05634(255, &qword_1EB12CBE0, sub_1A3E04408, sub_1A3E04978, MEMORY[0x1E697EC08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CBD8);
    }
  }
}

void sub_1A3E04408()
{
  if (!qword_1EB12CBE8)
  {
    sub_1A3E09AF8(255, &qword_1EB12CBF0, sub_1A3E0449C, MEMORY[0x1E6981F40]);
    sub_1A3E048F0();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CBE8);
    }
  }
}

void sub_1A3E0449C()
{
  if (!qword_1EB12CBF8)
  {
    v0 = MEMORY[0x1E69E6720];
    sub_1A3E09AF8(255, &qword_1EB12CC00, sub_1A3E04568, MEMORY[0x1E69E6720]);
    sub_1A3E09AF8(255, &qword_1EB12CC28, sub_1A3E04648, v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12CBF8);
    }
  }
}

void sub_1A3E045E0()
{
  if (!qword_1EB12CC18)
  {
    sub_1A3C52C70(255, &qword_1EB12CC20);
    v0 = sub_1A52481E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CC18);
    }
  }
}

void sub_1A3E04648()
{
  if (!qword_1EB12CC30)
  {
    sub_1A3E055C8(255, &qword_1EB12CC38, sub_1A3E0470C, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3E09208(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CC30);
    }
  }
}

void sub_1A3E0470C()
{
  if (!qword_1EB12CC40)
  {
    sub_1A3E0479C(255, &qword_1EB12CC48, &type metadata for VideoPlaybackButtonView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A3E047F0();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CC40);
    }
  }
}

void sub_1A3E0479C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A3E047F0()
{
  result = qword_1EB12CC50;
  if (!qword_1EB12CC50)
  {
    sub_1A3E0479C(255, &qword_1EB12CC48, &type metadata for VideoPlaybackButtonView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A3E0489C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CC50);
  }

  return result;
}

unint64_t sub_1A3E0489C()
{
  result = qword_1EB198890[0];
  if (!qword_1EB198890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB198890);
  }

  return result;
}

unint64_t sub_1A3E048F0()
{
  result = qword_1EB12CC60;
  if (!qword_1EB12CC60)
  {
    sub_1A3E09AF8(255, &qword_1EB12CBF0, sub_1A3E0449C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CC60);
  }

  return result;
}

uint64_t sub_1A3E049AC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E04A98()
{
  result = qword_1EB12CC88;
  if (!qword_1EB12CC88)
  {
    sub_1A3E05634(255, &qword_1EB12CBE0, sub_1A3E04408, sub_1A3E04978, MEMORY[0x1E697EC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CC88);
  }

  return result;
}

void sub_1A3E04B34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3E04BF8()
{
  if (!qword_1EB12CCA0)
  {
    sub_1A3E04B34(255, &qword_1EB12CC90, sub_1A3E04280, sub_1A3E04BC4);
    sub_1A3E04280();
    sub_1A3E04BC4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12CCA0);
    }
  }
}

void sub_1A3E04CE4()
{
  if (!qword_1EB12CCA8)
  {
    sub_1A3E04BF8();
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CCA8);
    }
  }
}

uint64_t sub_1A3E04D54@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  sub_1A3E00640(v6);
  sub_1A3DFE444(v3, v6, v1 + 40, a1);
  sub_1A3E00068(v6);
  v4 = type metadata accessor for LemonadeNavigationDestination();
  return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
}

uint64_t sub_1A3E04DF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  }

  sub_1A3E04274(*(v0 + 136), *(v0 + 144));
  v1 = *(v0 + 200);

  if (v1 == 1 && *(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 160);
  }

  return swift_deallocObject();
}

void sub_1A3E04EA4()
{
  if (*(v0 + 32) == 1)
  {
    if (v2 = *(v0 + 16), v1 = *(v0 + 24), ([v1 respondsToSelector_]) && objc_msgSend(v1, sel_playbackStyle) == 4 || (objc_msgSend(v1, sel_respondsToSelector_, sel_playbackStyle) & 1) != 0 && objc_msgSend(v1, sel_playbackStyle) == 5)
    {
      v22[0] = *(v0 + 80);
      sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      if (*&v20[0])
      {
      }

      else
      {
        v3 = type metadata accessor for SharedAlbumsAssetView();
        if (sub_1A3DFFE6C())
        {
          objc_opt_self();
          v4 = swift_dynamicCastObjCClass();
          if (v4)
          {
            v5 = v4;
            v6 = *(*(v3 - 8) + 16);
            v6(v22, v0 + 24, v3);
            v7 = swift_allocObject();
            v8 = v22[9];
            *(v7 + 152) = v22[8];
            *(v7 + 168) = v8;
            *(v7 + 184) = v22[10];
            v9 = v22[5];
            *(v7 + 88) = v22[4];
            *(v7 + 104) = v9;
            v10 = v22[7];
            *(v7 + 120) = v22[6];
            *(v7 + 136) = v10;
            v11 = v22[1];
            *(v7 + 24) = v22[0];
            *(v7 + 40) = v11;
            v12 = v22[3];
            *(v7 + 56) = v22[2];
            *(v7 + 16) = v2;
            *(v7 + 200) = v23;
            *(v7 + 72) = v12;
            v6(v20, v0 + 24, v3);
            v13 = swift_allocObject();
            v14 = v20[9];
            *(v13 + 152) = v20[8];
            *(v13 + 168) = v14;
            *(v13 + 184) = v20[10];
            v15 = v20[5];
            *(v13 + 88) = v20[4];
            *(v13 + 104) = v15;
            v16 = v20[7];
            *(v13 + 120) = v20[6];
            *(v13 + 136) = v16;
            v17 = v20[1];
            *(v13 + 24) = v20[0];
            *(v13 + 40) = v17;
            v18 = v20[3];
            *(v13 + 56) = v20[2];
            *(v13 + 16) = v2;
            *(v13 + 200) = v21;
            *(v13 + 72) = v18;
            v19 = swift_unknownObjectRetain();
            sub_1A3E0688C(v19, v5, v7, v13);
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }
    }
  }
}

void sub_1A3E051A8()
{
  v1 = type metadata accessor for SharedAlbumsAssetView();
  if (sub_1A3DFFE6C())
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {

      goto LABEL_4;
    }

    v13 = v2;
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v16[0] = v3;
    LOBYTE(v16[1]) = v4;
    v17 = v5;
    sub_1A3DF154C(0, &qword_1EB12CDA8, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    if (v15 == 1)
    {
LABEL_4:
      swift_unknownObjectRelease();
      return;
    }

    *v16 = *(v0 + 80);
    sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    if (v14)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1EB1987D0 != -1)
      {
        swift_once();
      }

      v6 = sub_1A5246F24();
      __swift_project_value_buffer(v6, qword_1EB1987D8);
      v7 = *(v1 - 8);
      (*(v7 + 16))(v16, v0 + 24, v1);
      v8 = sub_1A5246F04();
      v9 = sub_1A524D234();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        swift_slowAlloc();
        *v10 = 134218242;
        *(v10 + 4) = 0;
        *(v10 + 12) = 2080;
        v11 = [v16[0] uuid];
        if (v11)
        {
          v12 = v11;
          sub_1A524C674();
        }

        sub_1A3E09208(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        sub_1A524C714();
        (*(v7 + 8))(v16, v1);
        sub_1A3C2EF94();
      }

      (*(v7 + 8))(v16, v1);
      [v13 cancelImageRequest_];
      v16[0] = v3;
      LOBYTE(v16[1]) = v4;
      v17 = v5;

      sub_1A524B6B4();
      swift_unknownObjectRelease();
    }
  }
}

void sub_1A3E055C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3E05634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A3E056B4()
{
  if (!qword_1EB12CCD0)
  {
    sub_1A3E09AF8(255, &qword_1EB12CCD8, sub_1A3E05748, MEMORY[0x1E6981F40]);
    sub_1A3E05A10();
    v0 = sub_1A5247CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CCD0);
    }
  }
}

void sub_1A3E0577C()
{
  if (!qword_1EB12CCE8)
  {
    sub_1A3E09AF8(255, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
    sub_1A3E05634(255, &qword_1EB12CD00, sub_1A3E05888, sub_1A3E05954, type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell);
    sub_1A3E05988();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CCE8);
    }
  }
}

void sub_1A3E05888()
{
  if (!qword_1EB1293C8)
  {
    type metadata accessor for SharedAlbumsActivityEntryItem();
    sub_1A3DF19A4(&unk_1EB129830, type metadata accessor for SharedAlbumsActivityEntryItem);
    sub_1A3DF19A4(&qword_1EB129850, type metadata accessor for SharedAlbumsActivityEntryItem);
    v0 = type metadata accessor for LemonadeObservableSharedAlbumActivityModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1293C8);
    }
  }
}

unint64_t sub_1A3E05988()
{
  result = qword_1EB12CD10;
  if (!qword_1EB12CD10)
  {
    sub_1A3E09AF8(255, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD10);
  }

  return result;
}

unint64_t sub_1A3E05A10()
{
  result = qword_1EB12CD18;
  if (!qword_1EB12CD18)
  {
    sub_1A3E09AF8(255, &qword_1EB12CCD8, sub_1A3E05748, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD18);
  }

  return result;
}

void sub_1A3E05ACC()
{
  if (!qword_1EB12CD28)
  {
    sub_1A3E05634(255, &qword_1EB12CCC8, sub_1A3E056B4, sub_1A3E05A98, MEMORY[0x1E697BE58]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12CD28);
    }
  }
}

unint64_t sub_1A3E05C48()
{
  result = qword_1EB12CD30;
  if (!qword_1EB12CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD30);
  }

  return result;
}

void sub_1A3E05CB8()
{
  sub_1A524BAE4();
  if (v0 <= 0x3F)
  {
    sub_1A3E09AF8(319, &qword_1EB129D40, type metadata accessor for LemonadeNavigationContext, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3DF0038();
      if (v2 <= 0x3F)
      {
        sub_1A3E09AF8(319, &unk_1EB124990, MEMORY[0x1E69C24E0], MEMORY[0x1E697DA80]);
        if (v3 <= 0x3F)
        {
          sub_1A3E09AF8(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3E05E50()
{
  if (!qword_1EB120AE8)
  {
    sub_1A3C52C70(255, &qword_1EB120AF0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120AE8);
    }
  }
}

void sub_1A3E05EB8()
{
  sub_1A524BAE4();
  if (v0 <= 0x3F)
  {
    sub_1A3E09208(319, &qword_1EB12CD38, &type metadata for SharedAlbumsAssetViewNavigationEnvironment, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A3E05F94(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A3E05FF0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A3E06060()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1A3E060F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1A3E06138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A3E061B8()
{
  result = qword_1EB12CD40;
  if (!qword_1EB12CD40)
  {
    sub_1A3E055C8(255, &qword_1EB12CCC0, sub_1A3E0516C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A3E06270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD40);
  }

  return result;
}

unint64_t sub_1A3E06270()
{
  result = qword_1EB12CD48;
  if (!qword_1EB12CD48)
  {
    sub_1A3E0516C(255);
    sub_1A3E062F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD48);
  }

  return result;
}

unint64_t sub_1A3E062F0()
{
  result = qword_1EB12CD50;
  if (!qword_1EB12CD50)
  {
    sub_1A3E04CE4();
    sub_1A3E04B34(255, &qword_1EB12CC90, sub_1A3E04280, sub_1A3E04BC4);
    sub_1A3E04280();
    sub_1A3E04BC4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3DF19A4(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD50);
  }

  return result;
}

unint64_t sub_1A3E06438()
{
  result = qword_1EB12CD60;
  if (!qword_1EB12CD60)
  {
    sub_1A3E09AF8(255, &qword_1EB12CD68, sub_1A3E05ACC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD60);
  }

  return result;
}

unint64_t sub_1A3E064E4()
{
  result = qword_1EB198DA0[0];
  if (!qword_1EB198DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB198DA0);
  }

  return result;
}

unint64_t sub_1A3E06538()
{
  result = qword_1EB12CD70;
  if (!qword_1EB12CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD70);
  }

  return result;
}

unint64_t sub_1A3E0658C()
{
  result = qword_1EB12CD90;
  if (!qword_1EB12CD90)
  {
    sub_1A3E05634(255, &qword_1EB12CD00, sub_1A3E05888, sub_1A3E05954, type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CD90);
  }

  return result;
}

uint64_t sub_1A3E06628()
{
  sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v1)
  {
  }

  sub_1A3DF154C(0, &qword_1EB12CDA8, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

id sub_1A3E06728(void *a1)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *&v20 = *(v1 + 96);
  BYTE8(v20) = v3;
  v21 = v4;
  v16 = 0;
  LOBYTE(v17) = 1;
  sub_1A3DF154C(0, &qword_1EB12CDA8, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
  result = sub_1A524B6B4();
  if (a1)
  {
    v20 = *(v1 + 80);
    v16 = a1;
    sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
    v6 = a1;
    sub_1A524B6B4();
    v7 = *MEMORY[0x1E6960CC0];
    v8 = *(MEMORY[0x1E6960CC0] + 16);
    v9 = *MEMORY[0x1E6960C88];
    v10 = *(MEMORY[0x1E6960C88] + 8);
    v11 = *(MEMORY[0x1E6960C88] + 12);
    v19 = *(MEMORY[0x1E6960C88] + 16);
    *&v20 = v7;
    *(&v20 + 1) = *(MEMORY[0x1E6960CC0] + 8);
    v21 = v8;
    v15 = v19;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v12 = v9;
    v13 = v10;
    v14 = v11;
    return [v6 seekToTime:&v20 toleranceBefore:&v16 toleranceAfter:&v12 completionHandler:0];
  }

  return result;
}

uint64_t sub_1A3E0688C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A524BEE4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BF64();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB198828 != -1)
  {
    swift_once();
  }

  v18 = qword_1EB198830;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = sub_1A3E06628;
  v14[5] = a3;
  v14[6] = sub_1A3E06728;
  v14[7] = a4;
  aBlock[4] = sub_1A3E06BDC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_73;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  swift_unknownObjectRetain();
  sub_1A3C66EE8(sub_1A3E06628);

  sub_1A524BF14();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1A3DF19A4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3E09AF8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v15);
  _Block_release(v15);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1A3E06BFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), 0);
  }

  return result;
}

uint64_t sub_1A3E06C30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    v1(0, 1);
  }

  return v2(0);
}

uint64_t sub_1A3E06C84()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  if (v1)
  {
    v1(0, 1);
  }

  return v2(v3);
}

void sub_1A3E06CDC()
{
  if (!qword_1EB12CDC8)
  {
    sub_1A3E09AF8(255, &qword_1EB12CBF0, sub_1A3E0449C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CDC8);
    }
  }
}

uint64_t sub_1A3E06D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A3E06DE8()
{
  if (*(v0 + 32) == 1)
  {
    v1 = v0;
    aBlock = *(v0 + 80);
    sub_1A3E09AF8(0, &unk_1EB12CDB0, sub_1A3E0420C, MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v2 = v17;
    if (v17)
    {
      v3 = *MEMORY[0x1E6960CC0];
      v4 = *(MEMORY[0x1E6960CC0] + 16);
      v5 = *MEMORY[0x1E6960C88];
      v6 = *(MEMORY[0x1E6960C88] + 8);
      v7 = *(MEMORY[0x1E6960C88] + 12);
      v8 = *(MEMORY[0x1E6960C88] + 16);
      v9 = swift_allocObject();
      *(v9 + 16) = v17;
      v23 = sub_1A3E072A8;
      v24 = v9;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v21 = sub_1A3E01E70;
      v22 = &block_descriptor_120;
      v10 = _Block_copy(&aBlock);
      v11 = v2;

      *&aBlock = v3;
      *(&aBlock + 1) = *(MEMORY[0x1E6960CC0] + 8);
      v21 = v4;
      v16 = v8;
      v17 = v5;
      v18 = __PAIR64__(v7, v6);
      v19 = v8;
      v13 = v5;
      v14 = v6;
      v15 = v7;
      [v11 seekToTime:&aBlock toleranceBefore:&v17 toleranceAfter:&v13 completionHandler:v10];
      _Block_release(v10);
      LOBYTE(v5) = *(v1 + 120);
      v12 = *(v1 + 128);
      LOBYTE(aBlock) = v5;
      *(&aBlock + 1) = v12;
      sub_1A3E09208(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

      sub_1A524B6A4();
      LOBYTE(v17) = v5;
      v18 = v12;
      sub_1A524B6B4();
    }
  }
}

id sub_1A3E0703C(void *a1)
{
  [a1 setPlayer_];
  v3 = *MEMORY[0x1E69874F0];

  return [a1 setVideoGravity_];
}

void sub_1A3E07094()
{
  if (*(v0 + 32) == 1)
  {
    v1 = *(v0 + 208);
    if ((sub_1A3DFFDFC() & 1) == 0)
    {
      LODWORD(v2) = 1.0;
      [v1 setRate_];
      sub_1A3E09208(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

      sub_1A524B6A4();
      sub_1A524B6B4();
    }
  }
}

uint64_t sub_1A3E0717C()
{
  [*(v0 + 24) pause];
  sub_1A3E09208(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  sub_1A524B6B4();
}

uint64_t sub_1A3E07240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3E072BC()
{
  if (!qword_1EB12B110)
  {
    sub_1A3C34400(255, &qword_1EB12B100);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B110);
    }
  }
}

uint64_t sub_1A3E07324@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SharedAlbumsAssetsCollageView() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A3DFC794(a1, *(v2 + 40), v2 + v8, *(v2 + v9), *(v2 + v10), *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), a2, *(v2 + 32), *(v2 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_1A3E0742C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3E0743C()
{
  sub_1A5249314();
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B774();
  v0 = sub_1A524B784();
  swift_getWitnessTable();
  v1 = *(v0 - 8);
  v7 = *(v1 + 16);
  v7(v14, v13, v0);
  v8 = *(v1 + 8);
  v8(v13, v0);
  sub_1A5249314();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B774();
  v2 = sub_1A524B784();
  swift_getWitnessTable();
  v3 = *(v2 - 8);
  v4 = *(v3 + 16);
  v4(v13, v12, v2);
  v5 = *(v3 + 8);
  v5(v12, v2);
  v7(v10, v14, v0);
  v11[0] = v10;
  v4(v12, v13, v2);
  v11[1] = v12;
  v9[0] = v0;
  v9[1] = v2;
  sub_1A3DF4988(v11, 2uLL, v9);
  v5(v13, v2);
  v8(v14, v0);
  v5(v12, v2);
  return (v8)(v10, v0);
}

uint64_t sub_1A3E077D8()
{
  sub_1A5249314();
  swift_getAssociatedTypeWitness();
  type metadata accessor for SharedAlbumsAssetView();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B774();
  v0 = sub_1A524B784();
  swift_getWitnessTable();
  v1 = *(v0 - 8);
  v2 = *(v1 + 16);
  v2(v10, v9, v0);
  v3 = *(v1 + 8);
  v3(v9, v0);
  sub_1A5249314();
  sub_1A524B774();
  v2(v9, v8, v0);
  v3(v8, v0);
  v2(v8, v10, v0);
  v7[0] = v8;
  v2(v6, v9, v0);
  v7[1] = v6;
  v5[0] = v0;
  v5[1] = v0;
  sub_1A3DF4988(v7, 2uLL, v5);
  v3(v9, v0);
  v3(v10, v0);
  v3(v6, v0);
  return (v3)(v8, v0);
}

uint64_t sub_1A3E07AB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v3 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  sub_1A524BAE4();
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v19 = v1;
  v20 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  sub_1A3DF5274(v4, v5, v18, v21);
  v6 = type metadata accessor for SharedAlbumsAssetView();
  swift_getWitnessTable();
  v7 = *(v6 - 8);
  v13 = *(v7 + 16);
  v13(v22, v21, v6);
  v14 = *(v7 + 8);
  v14(v21, v6);
  sub_1A5249574();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B884();
  v8 = sub_1A524B894();
  swift_getWitnessTable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v21, v18, v8);
  v11 = *(v9 + 8);
  v11(v18, v8);
  v13(v16, v22, v6);
  v17[0] = v16;
  v10(v18, v21, v8);
  v17[1] = v18;
  v15[0] = v6;
  v15[1] = v8;
  sub_1A3DF4988(v17, 2uLL, v15);
  v11(v21, v8);
  v14(v22, v6);
  v11(v18, v8);
  return (v14)(v16, v6);
}

uint64_t sub_1A3E07E04()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v3 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  sub_1A524BAE4();
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v19 = v1;
  v20 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  sub_1A3DF5274(v4, v5, v18, v21);
  v6 = type metadata accessor for SharedAlbumsAssetView();
  swift_getWitnessTable();
  v7 = *(v6 - 8);
  v13 = *(v7 + 16);
  v13(v22, v21, v6);
  v14 = *(v7 + 8);
  v14(v21, v6);
  sub_1A5249314();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B774();
  v8 = sub_1A524B784();
  swift_getWitnessTable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v21, v18, v8);
  v11 = *(v9 + 8);
  v11(v18, v8);
  v13(v16, v22, v6);
  v17[0] = v16;
  v10(v18, v21, v8);
  v17[1] = v18;
  v15[0] = v6;
  v15[1] = v8;
  sub_1A3DF4988(v17, 2uLL, v15);
  v11(v21, v8);
  v14(v22, v6);
  v11(v18, v8);
  return (v14)(v16, v6);
}

uint64_t sub_1A3E08158()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v1[6];
  v17 = v1[7];
  v14 = *(v4 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  sub_1A524BAE4();
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v30 = v3;
  v15 = v3;
  v31 = *(v2 + 16);
  v16 = v31;
  swift_getAssociatedTypeWitness();
  sub_1A3DF5274(v5, v14, v29, v26);
  v7 = type metadata accessor for SharedAlbumsAssetView();
  swift_getWitnessTable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v29, v26, v7);
  v10 = *(v8 + 8);
  v10(v26, v7);
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v27 = v15;
  v28 = v16;
  v11 = sub_1A3DF5274(v6, v14, v26, v23);
  (v9)(v26, v23, v7, v11);
  v10(v23, v7);
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v24 = v15;
  v25 = v16;
  v12 = sub_1A3DF5274(v17, v14, v23, v22);
  (v9)(v23, v22, v7, v12);
  v10(v22, v7);
  v9(v22, v29, v7);
  v21[0] = v22;
  v9(v20, v26, v7);
  v21[1] = v20;
  v9(v19, v23, v7);
  v21[2] = v19;
  v18[0] = v7;
  v18[1] = v7;
  v18[2] = v7;
  sub_1A3DF4988(v21, 3uLL, v18);
  v10(v23, v7);
  v10(v26, v7);
  v10(v29, v7);
  v10(v19, v7);
  v10(v20, v7);
  return (v10)(v22, v7);
}

uint64_t sub_1A3E084E4()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(v3 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  sub_1A524BAE4();
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v22 = v1;
  v23 = *(v2 + 16);
  swift_getAssociatedTypeWitness();
  sub_1A3DF5274(v4, v5, v21, v20);
  sub_1A52482B4();
  sub_1A524BC74();
  v6 = type metadata accessor for SharedAlbumsAssetView();
  WitnessTable = swift_getWitnessTable();
  sub_1A524AFD4();
  (*(*(v6 - 8) + 8))(v20, v6);
  v8 = sub_1A5248804();
  v24 = WitnessTable;
  v25 = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  v9 = *(v8 - 8);
  v15 = *(v9 + 16);
  v15(v26, v21, v8);
  v16 = *(v9 + 8);
  v16(v21, v8);
  sub_1A5249314();
  swift_getTupleTypeMetadata2();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B774();
  v10 = sub_1A524B784();
  swift_getWitnessTable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v21, v20, v10);
  v13 = *(v11 + 8);
  v13(v20, v10);
  v15(v18, v26, v8);
  v19[0] = v18;
  v12(v20, v21, v10);
  v19[1] = v20;
  v17[0] = v8;
  v17[1] = v10;
  sub_1A3DF4988(v19, 2uLL, v17);
  v13(v21, v10);
  v16(v26, v8);
  v13(v20, v10);
  return (v16)(v18, v8);
}

unint64_t sub_1A3E0892C()
{
  result = qword_1EB12CDE0;
  if (!qword_1EB12CDE0)
  {
    sub_1A3E000E0(255);
    sub_1A3E089F0(&qword_1EB12CDE8, sub_1A3E0011C, sub_1A3E08A7C, sub_1A3E08C3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CDE0);
  }

  return result;
}

uint64_t sub_1A3E089F0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3E08A7C()
{
  result = qword_1EB12CDF0;
  if (!qword_1EB12CDF0)
  {
    sub_1A3E001C8();
    sub_1A3E0036C();
    sub_1A52498E4();
    sub_1A3DF19A4(&qword_1EB12CB20, sub_1A3E0036C);
    sub_1A3DF19A4(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1A3E08BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12CDF0);
  }

  return result;
}

unint64_t sub_1A3E08BAC()
{
  result = qword_1EB127B08;
  if (!qword_1EB127B08)
  {
    sub_1A3E055C8(255, &qword_1EB127B00, MEMORY[0x1E6981C80], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127B08);
  }

  return result;
}

unint64_t sub_1A3E08C3C()
{
  result = qword_1EB1245F0;
  if (!qword_1EB1245F0)
  {
    sub_1A3E05634(255, &qword_1EB1245E0, MEMORY[0x1E6981998], sub_1A3E004A0, MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1245F0);
  }

  return result;
}

uint64_t sub_1A3E08CD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A3E08DCC@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E040CC(*(v1 + 40), 6);
  sub_1A3D5F9DC();
  v3 = sub_1A524A464();
  v5 = v4;
  v7 = v6;
  sub_1A524B434();
  v8 = sub_1A524A374();
  v10 = v9;
  v12 = v11;
  sub_1A3E04DF4(v3, v5, v7 & 1);

  sub_1A524A254();
  v13 = sub_1A524A3C4();
  v15 = v14;
  v17 = v16;

  sub_1A3E04DF4(v8, v10, v12 & 1);

  sub_1A524A164();
  v18 = sub_1A524A344();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  sub_1A3E04DF4(v13, v15, v17 & 1);

  v24 = sub_1A524A064();
  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  result = 6.0;
  *(a1 + 40) = xmmword_1A52FF970;
  *(a1 + 56) = xmmword_1A52FF970;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1A3E08F7C()
{
  v1 = v0;
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v14 = v1[6];
  v13 = *(v4 + *(type metadata accessor for SharedAlbumsAssetsCollageView() + 36));
  sub_1A524BAE4();
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v23 = v3;
  v24 = *(v2 + 16);
  v6 = v24;
  swift_getAssociatedTypeWitness();
  sub_1A3DF5274(v5, v13, v22, v19);
  v7 = type metadata accessor for SharedAlbumsAssetView();
  swift_getWitnessTable();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v22, v19, v7);
  v10 = *(v8 + 8);
  v10(v19, v7);
  swift_unknownObjectRetain();
  sub_1A524BAA4();
  v20 = v3;
  v21 = v6;
  v11 = sub_1A3DF5274(v14, v13, v19, v18);
  (v9)(v19, v18, v7, v11);
  v10(v18, v7);
  v9(v18, v22, v7);
  v17[0] = v18;
  v9(v16, v19, v7);
  v17[1] = v16;
  v15[0] = v7;
  v15[1] = v7;
  sub_1A3DF4988(v17, 2uLL, v15);
  v10(v19, v7);
  v10(v22, v7);
  v10(v16, v7);
  return (v10)(v18, v7);
}

void sub_1A3E09208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3E09258()
{
  if (!qword_1EB12CDF8)
  {
    sub_1A3E09AF8(255, &qword_1EB12C998, sub_1A3DF1290, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CDF8);
    }
  }
}

void sub_1A3E092F0()
{
  if (!qword_1EB12CE00)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA50, sub_1A3DF1BF4, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CE00);
    }
  }
}

uint64_t sub_1A3E09388(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3E055C8(0, a3, a4, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3E09414(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3E055C8(255, a2, a3, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3E09518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3E055C8(0, a2, a3, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A3E0959C()
{
  if (!qword_1EB12CE30)
  {
    sub_1A3E09AF8(255, &qword_1EB12CA68, sub_1A3DF1D30, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CE30);
    }
  }
}

uint64_t sub_1A3E09634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3E0969C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A3DF66E0(v5, v6, v0 + v4, v7, v1, v2);
}

void sub_1A3E0975C(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell() - 8);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_1A3DF6D84(a2, v6, v7, v8, v4);
}

void sub_1A3E097F0()
{
  if (!qword_1EB12CE40)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9B0, sub_1A3DF139C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CE40);
    }
  }
}

uint64_t sub_1A3E09888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E098F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3E09958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3E099B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 40);
  sub_1A524BAE4();
  sub_1A524BAA4();
  v4 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell();
  sub_1A3DF4534(v6, v3, v4, a1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1A3E09A40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell() - 8);
  v6 = *(v1 + ((*(v5 + 64) + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A3DF4598(v6, v3, v4, a1);
}

void sub_1A3E09AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3E09B5C()
{
  if (!qword_1EB12CE58)
  {
    sub_1A3E09AF8(255, &qword_1EB12C9F8, sub_1A3DF1744, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12CE58);
    }
  }
}

uint64_t sub_1A3E09C54()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF34();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A3C2A040(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1EADF0 = result;
  return result;
}

uint64_t *sub_1A3E09ED8()
{
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EADF0;
}

uint64_t sub_1A3E09F28()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1 + 1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3E09FA0()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1 + 1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3E09FE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A3E2CEF8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0A080()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
}

uint64_t sub_1A3E0A104@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0A158(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 408);

  return v2(v3);
}

uint64_t sub_1A3E0A1B4(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
  }

  KeyPath = swift_getKeyPath();
  v4 = MEMORY[0x1EEE9AC00](KeyPath);
  v6 = v1;
  v7 = a1;
  (*(*v1 + 1952))(v4);
}

void (*sub_1A3E0A2BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A3E0A40C;
}

void sub_1A3E0A418()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0A48C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[8];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0A540()
{
  v0 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0A778(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 64) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3E0A8D4()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0A948(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[9];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0A9FC(float32x4_t *a1)
{
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1A3E2C6A8(v1[9], a1))
  {
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB1EADF0;
    *v6 = qword_1EB1EADF0;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v8 = v7;
    LOBYTE(v7) = sub_1A524C024();
    result = (*(v4 + 8))(v6, v3);
    if (v7)
    {
      v1[9] = a1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    ((*v1)[122].i64[0])(v11);
  }

  return result;
}

uint64_t sub_1A3E0AC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 72) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3E0AD64()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0ADD8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[10];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0AE8C(float32x4_t *a1)
{
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1A3E2C6A8(v1[10], a1))
  {
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB1EADF0;
    *v6 = qword_1EB1EADF0;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v8 = v7;
    LOBYTE(v7) = sub_1A524C024();
    result = (*(v4 + 8))(v6, v3);
    if (v7)
    {
      v1[10] = a1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    ((*v1)[122].i64[0])(v11);
  }

  return result;
}

uint64_t sub_1A3E0B098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 80) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3E0B1F4()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0B268(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[11];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0B31C()
{
  v0 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0B544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 88) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3E0B6A0()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0B714(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[12];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E0B7C8()
{
  v0 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0B9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 96) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A3E0BB4C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0BBC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 696))();
  *a2 = result;
  return result;
}

void sub_1A3E0BC40()
{
  v0 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E0BE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 112) = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void *sub_1A3E0BFD4()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  v1 = v0[15];
  v2 = v1;
  return v1;
}

uint64_t sub_1A3E0C040@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  return result;
}

void sub_1A3E0C094(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3E0C0C4(v1);
}

void sub_1A3E0C0C4(void *a1)
{
  v3 = v1[15];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126630);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[15];
LABEL_8:
  v1[15] = a1;
}

uint64_t sub_1A3E0C28C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[17];
}

uint64_t sub_1A3E0C30C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 800))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0C3B0(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[17] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0C4A8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C23C();
  return sub_1A3E0C5F8;
}

uint64_t sub_1A3E0C654()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[18];
}

uint64_t sub_1A3E0C6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 848))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0C778(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[18] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0C870(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C604();
  return sub_1A3E0C9C0;
}

uint64_t sub_1A3E0C9CC()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  return v0[152];
}

uint64_t sub_1A3E0CA30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E0CAB0(uint64_t result)
{
  if (v1[152] == (result & 1))
  {
    v1[152] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v3);
  }

  return result;
}

uint64_t sub_1A3E0CB98()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  return v0[153];
}

uint64_t sub_1A3E0CBFC@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[153];
  return result;
}

uint64_t sub_1A3E0CC9C(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v1[153] == v3)
  {
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB1EADF0;
    *v7 = qword_1EB1EADF0;
    (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v12 = v11;
    LOBYTE(v11) = sub_1A524C024();
    result = (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v1[153] = a1 & 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[-16] = v1;
    v13[-8] = v3;
    (*(*v1 + 1952))(v9);
  }

  return result;
}

uint64_t sub_1A3E0CEA0(uint64_t a1, char a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 153) = a2 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3E0D03C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[20];
}

uint64_t sub_1A3E0D0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 992))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A3E0D178(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 168) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 160) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 160) = *&a1;
    *(v2 + 168) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  v8 = v2;
  v9 = a1;
  v10 = a2 & 1;
  (*(*v2 + 1952))(v7);
}

void (*sub_1A3E0D2A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0CFEC();
  return sub_1A3E0D3F4;
}

uint64_t sub_1A3E0D450()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[22];
}

uint64_t sub_1A3E0D4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A3E0D58C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  if ((*(v2 + 184) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 176) != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 176) = *&a1;
    *(v2 + 184) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  v8 = v2;
  v9 = a1;
  v10 = a2 & 1;
  (*(*v2 + 1952))(v7);
}

void (*sub_1A3E0D6B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0D400();
  return sub_1A3E0D808;
}

void *sub_1A3E0D864()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  v1 = v0[24];
  v2 = v1;
  return v1;
}

uint64_t sub_1A3E0D8EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1088))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0D940(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1096);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3E0D9A0(void *a1)
{
  swift_beginAccess();
  v3 = v1[24];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB126680);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[24];
LABEL_8:
  v1[24] = a1;
}

void (*sub_1A3E0DB0C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0D814();
  return sub_1A3E0DC5C;
}

void *sub_1A3E0DCB8()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  v1 = v0[25];
  v2 = v1;
  return v1;
}

uint64_t sub_1A3E0DD40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1136))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0DD94(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 1144);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3E0DDF4(void *a1)
{
  swift_beginAccess();
  v3 = v1[25];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB126680);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[25];
LABEL_8:
  v1[25] = a1;
}

void (*sub_1A3E0DF60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0DC68();
  return sub_1A3E0E0B0;
}

uint64_t sub_1A3E0E10C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[208];
}

uint64_t sub_1A3E0E18C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E0E230(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (v1[208] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0E32C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E0BC();
  return sub_1A3E0E47C;
}

double sub_1A3E0E4D8()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[27];
}

uint64_t sub_1A3E0E5FC(double a1)
{
  result = swift_beginAccess();
  if (v1[27] == a1)
  {
    v1[27] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0E700(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E488();
  return sub_1A3E0E850;
}

uint64_t sub_1A3E0E8AC()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[224];
}

uint64_t sub_1A3E0E92C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E0E9D4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[224] == v2)
  {
    v1[224] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0EAD0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E85C();
  return sub_1A3E0EC20;
}

uint64_t sub_1A3E0EC7C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[225];
}

uint64_t sub_1A3E0ECFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E0EDA4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[225] == v2)
  {
    v1[225] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1952))(v5);
  }

  return result;
}

void (*sub_1A3E0EEA0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0EC2C();
  return sub_1A3E0EFF0;
}

double sub_1A3E0F04C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[29];
}

uint64_t sub_1A3E0F170(double a1, double a2)
{
  result = swift_beginAccess();
  if (v2[29] == a1 && v2[30] == a2)
  {
    v2[29] = a1;
    v2[30] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1952))(v8);
  }

  return result;
}

void (*sub_1A3E0F27C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0EFFC();
  return sub_1A3E0F3CC;
}

void sub_1A3E0F3D8()
{
  (*(*v0 + 1376))();

  sub_1A524DA34();
}

void sub_1A3E0F428()
{
  v1 = [v0[4] camera];
  if (v1)
  {
    v2 = v1;
    [v1 setProjectionDirection_];
  }

  v3 = [v0[5] camera];
  if (v3)
  {
    v4 = v3;
    [v3 setProjectionDirection_];
  }

  v5 = [v0[6] camera];
  if (v5)
  {
    v6 = v5;
    [v5 setProjectionDirection_];
  }
}

void (*sub_1A3E0F594(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A3E0F5E8;
}

void sub_1A3E0F5E8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A3E0F428();
  }
}

uint64_t sub_1A3E0F61C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  return v0[31];
}

uint64_t sub_1A3E0F69C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1432))();
  *a2 = result;
  return result;
}

void sub_1A3E0F740(uint64_t a1)
{
  swift_beginAccess();
  if (v1[31] == a1)
  {
    sub_1A3E0F428();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v4);
  }
}

void (*sub_1A3E0F840(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0F594(v4);
  return sub_1A3E0F990;
}

uint64_t sub_1A3E0F9EC()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  swift_beginAccess();
  v1 = v0[32];
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A3E0FA80@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 1480))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3DDBE10;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A3E0FB18(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3E30F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 1488);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A3E0FBD8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v6 = v2;
  v7 = a1;
  v8 = a2;
  (*(*v2 + 1952))();
  sub_1A3C784D4(a1, a2);
}

void (*sub_1A3E0FC94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E0F99C();
  return sub_1A3E0FDE4;
}

uint64_t sub_1A3E0FDF0()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  return v0[272];
}

uint64_t sub_1A3E0FE54@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[272];
  return result;
}

uint64_t sub_1A3E0FEF4(uint64_t result)
{
  if (v1[272] == (result & 1))
  {
    v1[272] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1952))(v3);
  }

  return result;
}

uint64_t sub_1A3E0FFDC()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  v1 = v0[35];
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A3E10054@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  v5 = v3[35];
  v4 = v3[36];
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1A3C66EE8(v5);
}

uint64_t sub_1A3E1011C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v5;
  v9 = *(*v7 + 1952);
  sub_1A3C66EE8(v3);
  v9(KeyPath, sub_1A3E3105C, v11, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C784D4(v6, v5);
}

uint64_t sub_1A3E1026C()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  return v0[37];
}

uint64_t sub_1A3E102D0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1944))();

  *a2 = v3[37];
  return result;
}

uint64_t sub_1A3E10370(uint64_t a1)
{
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v1[37] == a1)
  {
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB1EADF0;
    *v6 = qword_1EB1EADF0;
    (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
    v8 = v7;
    LOBYTE(v7) = sub_1A524C024();
    result = (*(v4 + 8))(v6, v3);
    if (v7)
    {
      v1[37] = a1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v11 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 1952))(v11);
  }

  return result;
}

uint64_t sub_1A3E10568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1EADF0;
  *v7 = qword_1EB1EADF0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  LOBYTE(v8) = sub_1A524C024();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    *(a1 + 296) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3E106B0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 1672))(v9);
  if ((result & 1) != v2)
  {
    v19 = v7;
    v20 = v4;
    swift_getKeyPath();
    (*(*v1 + 1944))();

    v13 = v1[37];
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EB1EADF0;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1A3E30CB4;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_418;
    v16 = _Block_copy(aBlock);

    sub_1A524BF14();
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v17 = MEMORY[0x1E69E7F60];
    sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v11, v6, v16);
    _Block_release(v16);
    (*(v20 + 8))(v6, v3);
    (*(v8 + 8))(v11, v19);
  }

  return result;
}

uint64_t (*sub_1A3E10A88(uint64_t a1))(_BYTE *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 304);
  return sub_1A3E10AB4;
}

uint64_t sub_1A3E10AB4(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 304);
  *(v1 + 304) = v2;
  return sub_1A3E106B0(v3);
}

uint64_t sub_1A3E10AE4()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  return v0[304];
}

uint64_t sub_1A3E10B48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1672))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A3E10BF0(char a1)
{
  v2 = a1 & 1;
  v3 = v1[304];
  if (v3 == v2)
  {
    v1[304] = v2;

    return sub_1A3E106B0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v2;
    (*(*v1 + 1952))(v5);
  }
}

void (*sub_1A3E10CF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E10A88(v4);
  return sub_1A3E10E48;
}

uint64_t sub_1A3E10EB4()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  v1 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController__state;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3E10F3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1720))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3E10FE0(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController__state;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = a1;
    (*(*v1 + 1952))(v6);
  }

  return result;
}

void (*sub_1A3E110E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1944))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  v4[7] = sub_1A3E10E54();
  return sub_1A3E11234;
}

uint64_t sub_1A3E11240(uint64_t a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A3E11298(a1, a2, a3);
  return v6;
}

uint64_t sub_1A3E11298(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  LOBYTE(v3) = a2;
  v112 = a1;
  v121 = *MEMORY[0x1E69E9840];
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v107 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v106 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v104 = v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1A5240E64();
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v11 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  *(v4 + 8) = MEMORY[0x1E69E7CC0];
  *(v4 + 9) = v12;
  *(v4 + 10) = v12;
  *(v4 + 11) = sub_1A3E2CFD0(v12);
  v108 = v8;
  if (v12 >> 62)
  {
    goto LABEL_53;
  }

LABEL_2:
  v13 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    *(v4 + 12) = v13;
    *(v4 + 14) = v12;
    *(v4 + 15) = 0;
    *(v4 + 17) = 0;
    *(v4 + 18) = 0;
    *(v4 + 76) = 1;
    *(v4 + 20) = 0;
    v4[168] = 1;
    *(v4 + 22) = 0;
    v4[184] = 1;
    *(v4 + 24) = 0;
    *(v4 + 25) = 0;
    v4[208] = 0;
    sub_1A5240EE4();
    *(v4 + 27) = v14;
    *(v4 + 112) = 1;
    __asm { FMOV            V0.2D, #1.0 }

    *(v4 + 232) = _Q0;
    *(v4 + 32) = 0;
    *(v4 + 33) = 0;
    *(v4 + 31) = 1;
    v4[272] = 0;
    *(v4 + 36) = 0;
    *(v4 + 37) = 0;
    *(v4 + 35) = 0;
    v4[304] = 0;
    if (qword_1EB1579E8 != -1)
    {
      swift_once();
    }

    v20 = qword_1EB1579F0;
    sub_1A5246E74();
    sub_1A5241604();
    if (v3)
    {
      v21 = 0xD00000000000001CLL;
    }

    else
    {
      v21 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v22 = "dropTransitionExposureFactor";
    }

    else
    {
      v22 = "hand.thumbsup.fill";
    }

    type metadata accessor for TimelineVFXEngineController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v25 = sub_1A524C634();
    v26 = sub_1A524C634();
    v27 = [v24 URLForResource:v25 withExtension:v26];

    if (!v27)
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1A524E404();

      strcpy(&aBlock, "Did not find ");
      HIWORD(aBlock) = -4864;
      MEMORY[0x1A5907B60](v21, v22 | 0x8000000000000000);
      MEMORY[0x1A5907B60](2019980846, 0xE400000000000000);
LABEL_57:
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    }

    v110 = v6;
    v111 = v5;
    sub_1A5240DE4();

    v109 = v11;
    v28 = sub_1A5240D44();
    v29 = objc_opt_self();
    *&aBlock = 0;
    v30 = [v29 worldWithURL:v28 options:0 error:&aBlock];

    v31 = aBlock;
    if (!v30)
    {
      v95 = aBlock;
      sub_1A5240B84();

      swift_willThrow();
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1A524E404();

      *&aBlock = 0xD000000000000021;
      *(&aBlock + 1) = 0x80000001A53B8860;
      v96 = sub_1A5240CD4();
      MEMORY[0x1A5907B60](v96);

      MEMORY[0x1A5907B60](0x727245209380E220, 0xAC000000203A726FLL);
      swift_getErrorValue();
      v97 = sub_1A524EBE4();
      MEMORY[0x1A5907B60](v97);

      goto LABEL_57;
    }

    *(v4 + 3) = v30;
    v32 = v31;
    v33 = [v30 rootNode];
    v34 = sub_1A524C634();
    v35 = [v33 childNodeWithName_];

    if (!v35)
    {
      goto LABEL_57;
    }

    v36 = sub_1A524C634();
    v37 = [v35 childNodeWithName_];

    if (!v37)
    {
      goto LABEL_57;
    }

    v38 = sub_1A524C634();
    v39 = [v35 childNodeWithName_];

    if (!v39)
    {
      goto LABEL_57;
    }

    *(v4 + 4) = v35;
    *(v4 + 5) = v37;
    *(v4 + 6) = v39;
    *(v4 + 2) = v112;
    v40 = *(v4 + 3);

    v101 = v39;
    v100 = v37;
    v113 = v35;
    v41 = [v40 rootNode];
    v42 = sub_1A524C634();
    v43 = [v41 childNodeWithName_];

    if (!v43)
    {
      goto LABEL_57;
    }

    [v43 setOpacity_];
    *(v4 + 7) = v43;
    v99 = v43;
    [v99 removeFromParentNode];
    v44 = *(v4 + 7);
    v45 = sub_1A524C634();
    v46 = [v44 childNodeWithName_];

    if (v46)
    {
      v47 = [v46 model];

      if (v47)
      {
        v48 = [v47 firstMaterial];

        if (v48)
        {
          v49 = sub_1A524CF14();
          v50 = sub_1A524C634();
          [v48 setValue:v49 forKey:v50];

          v51 = sub_1A524CF14();
          v52 = sub_1A524C634();
          [v48 setValue:v51 forKey:v52];

          v53 = sub_1A524CF14();
          v54 = sub_1A524C634();
          [v48 setValue:v53 forKey:v54];

          v55 = sub_1A524CF14();
          v56 = sub_1A524C634();
          [v48 setValue:v55 forKey:v56];

          v57 = sub_1A524C634();
          v58 = [v48 valueForKey_];

          if (v58)
          {
            sub_1A524E0B4();
            swift_unknownObjectRelease();
          }

          else
          {
            v115 = 0u;
            v116 = 0u;
          }

          aBlock = v115;
          v118 = v116;
          if (*(&v116 + 1))
          {
            sub_1A3C52C70(0, &qword_1EB120930);
            if (swift_dynamicCast())
            {
              v59 = v114;
              [v114 setMipFilter_];
            }
          }

          else
          {
            sub_1A3C35B00(&aBlock);
          }

          v60 = sub_1A524C634();
          v61 = [v48 valueForKey_];

          if (v61)
          {
            sub_1A524E0B4();
            swift_unknownObjectRelease();
          }

          else
          {
            v115 = 0u;
            v116 = 0u;
          }

          aBlock = v115;
          v118 = v116;
          if (*(&v116 + 1))
          {
            sub_1A3C52C70(0, &qword_1EB120930);
            if (swift_dynamicCast())
            {
              v62 = v114;
              [v114 setMipFilter_];
            }
          }

          else
          {

            sub_1A3C35B00(&aBlock);
          }
        }
      }
    }

    v63 = *(v4 + 7);
    v64 = sub_1A524C634();
    v65 = [v63 childNodeWithName_];

    if (v65)
    {
      v66 = [v65 model];

      if (v66)
      {
        v67 = [v66 firstMaterial];

        if (v67)
        {
          v68 = sub_1A524CF14();
          v69 = sub_1A524C634();
          [v67 setValue:v68 forKey:v69];

          v70 = sub_1A524CF14();
          v71 = sub_1A524C634();
          [v67 setValue:v70 forKey:v71];
        }
      }
    }

    v72 = *(v4 + 7);
    v12 = sub_1A524C634();
    v73 = [v72 childNodeWithName_];

    if (v73)
    {
      v74 = [v73 model];

      if (v74)
      {
        v75 = [v74 firstMaterial];

        if (v75)
        {
          v76 = sub_1A524CF14();
          v77 = sub_1A524C634();
          [v75 setValue:v76 forKey:v77];

          v78 = sub_1A524CF14();
          v12 = sub_1A524C634();
          [v75 setValue:v78 forKey:v12];
        }
      }
    }

    v3 = [v113 animationKeys];
    v79 = sub_1A524CA34();

    v98[1] = 0;
    v80 = MEMORY[0x1E69E7CC0];
    *&aBlock = MEMORY[0x1E69E7CC0];
    v11 = *(v79 + 16);
    v5 = &_OBJC_LABEL_PROTOCOL___PXActivityActionDelegate;
    v98[2] = v79 + 40;
    if (!v11)
    {
      break;
    }

    if (*(v79 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
LABEL_53:
    if (!sub_1A524E2B4())
    {
      goto LABEL_2;
    }

    sub_1A3E2D0C0(MEMORY[0x1E69E7CC0]);
  }

  *(v4 + 16) = v80;
  [*(v4 + 4) removeAllAnimations];
  v4[OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController__state] = 0;
  *(v4 + 13) = v102;
  v81 = [objc_opt_self() px_accessibilityIsReduceMotionEnabled];
  v82 = v4[304];
  if (v81 == v82)
  {
    v4[304] = v81;
    v85 = sub_1A3E106B0(v82);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v84 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 1952))(v84);
  }

  v87 = v110;
  v86 = v111;
  v88 = MEMORY[0x1E69E7CC0];
  (*(*v4 + 1848))(v85);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v111 = qword_1EB1EADF0;
  v89 = swift_allocObject();
  swift_weakInit();
  v119 = sub_1A3E2D92C;
  v120 = v89;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_1A3C2E0D0;
  *(&v118 + 1) = &block_descriptor_24;
  v90 = _Block_copy(&aBlock);

  v91 = v104;
  sub_1A524BF14();
  *&v115 = v88;
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v92 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v92);
  v93 = v107;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v91, v93, v90);
  _Block_release(v90);

  (*(v87 + 8))(v93, v86);
  (*(v106 + 8))(v91, v108);
  (*(v103 + 8))(v109, v105);

  return v4;
}

uint64_t sub_1A3E125B4()
{
  v0 = sub_1A524BFF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246E84();
  sub_1A5246E24();
  v8 = sub_1A5246E84();
  v9 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v10 = swift_slowAlloc();
    v18 = v0;
    v11 = v10;
    *v10 = 0;
    v12 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, v9, v12, "controllerQueue_preheatVFXWorld()", "controllerQueue_preheatVFXWorld()", v11, 2u);
    v13 = v11;
    v0 = v18;
    MEMORY[0x1A590EEC0](v13, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB1EADF0;
  *v3 = qword_1EB1EADF0;
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
  v15 = v14;
  LOBYTE(v14) = sub_1A524C024();
  result = (*(v1 + 8))(v3, v0);
  if (v14)
  {
    sub_1A3E1FBE0();
    return sub_1A3E137E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3E12844()
{
  v1 = (*(*v0 + 1088))();
  [v1 invalidate];

  v2 = (*(*v0 + 1136))();
  [v2 invalidate];

  sub_1A3C784D4(*(v0 + 256), *(v0 + 264));
  sub_1A3C784D4(*(v0 + 280), *(v0 + 288));
  v3 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
  v4 = sub_1A5246E94();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1A3E12A0C()
{
  sub_1A3E12844();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3E12A64(char a1)
{
  isEscapingClosureAtFileLocation = v1;
  result = [objc_opt_self() isMainThread];
  if (result)
  {
    v5 = *(v1 + 152);
    LOBYTE(v1) = a1 & 1;
    if (v5 != (a1 & 1))
    {
      KeyPath = swift_getKeyPath();
      v7 = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*isEscapingClosureAtFileLocation + 1952))(v7);
    }
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v8 = sub_1A524D474();
    v1 = swift_allocObject();
    *(v1 + 16) = isEscapingClosureAtFileLocation;
    *(v1 + 24) = a1 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1A3E2FB3C;
    *(v9 + 24) = v1;
    aBlock[4] = sub_1A3C7146C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C71444;
    aBlock[3] = &block_descriptor_378;
    v10 = _Block_copy(aBlock);

    dispatch_sync(v8, v10);

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + 152) = v1;
  return result;
}

uint64_t sub_1A3E12CC4(uint64_t result, char a2)
{
  v2 = result;
  if (*(result + 152) == (a2 & 1))
  {
    *(result + 152) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1952))(v4);
  }

  return result;
}

uint64_t sub_1A3E12DB0()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1944))(KeyPath);

  if (v0[272] == 1)
  {
    v18 = v5;
    v19 = v2;
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v17[1] = qword_1EB1EADF0;
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A3E2D964;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_57_0;
    v11 = _Block_copy(aBlock);

    sub_1A524BF14();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v12 = MEMORY[0x1E69E7F60];
    sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v11);
    _Block_release(v11);
    (*(v19 + 8))(v4, v1);
    (*(v6 + 8))(v8, v18);
  }

  else
  {
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    v17[-4] = v0;
    v17[-3] = sub_1A3E2D944;
    v17[-2] = v14;
    v16 = *(*v0 + 1952);

    v16(v15, sub_1A3E2D94C, &v17[-6], MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1A3E13234()
{
  v0 = sub_1A524BEE4();
  v12 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524BF64();
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v10[1] = qword_1EB1EADF0;
  v6 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_1A3E30F6C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_408;
  v7 = _Block_copy(aBlock);

  sub_1A524BF14();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v8 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v8);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v5, v2, v7);
  _Block_release(v7);
  (*(v12 + 8))(v2, v0);
  (*(v3 + 8))(v5, v11);
}

uint64_t sub_1A3E1358C()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v4 = v0[13];
  if (v4 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_7:
      if (!(*(*v1 + 1720))(v3))
      {
        sub_1A3E137E4();
      }

      sub_1A3E143C4();
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v5 = (*(*v0 + 696))(v3);
  if (v5 >> 62)
  {
    v8 = sub_1A524E2B4();

    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v6)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_1A3E137E4()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BFF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB1EADF0;
  *v8 = qword_1EB1EADF0;
  v10 = *MEMORY[0x1E69E8020];
  v11 = *(v6 + 104);
  v11(v8, *MEMORY[0x1E69E8020], v5);
  v30 = v9;
  LOBYTE(v9) = sub_1A524C024();
  v12 = *(v6 + 8);
  result = v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = (*(*v1 + 1720))(result);
  if (result != 1)
  {
    v27 = v12;
    v28 = v11;
    v29 = v10;
    sub_1A5246E84();
    sub_1A5246E24();
    v14 = sub_1A5246E84();
    v15 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, v15, v17, "Reset", "", v16, 2u);
      MEMORY[0x1A590EEC0](v16, -1, -1);
    }

    (*(v31 + 8))(v4, v32);
    KeyPath = swift_getKeyPath();
    (*(*v1 + 1944))(KeyPath);

    v33 = v1;
    swift_getKeyPath();
    sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
    sub_1A52415F4();

    v19 = v1[37];
    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      v21 = v30;
      *v8 = v30;
      v28(v8, v29, v5);
      v22 = v21;
      LOBYTE(v21) = sub_1A524C024();
      result = v27(v8, v5);
      if (v21)
      {
        v1[37] = v20;
        v33 = v1;
        swift_getKeyPath();
        sub_1A52415E4();

        v23 = v1[4];
        [v23 removeAllAnimations];
        [v23 setPosition_];
        (*(*v1 + 1000))(0, 1);
        v24 = (*(*v1 + 1048))(0, 1);
        v25 = (*(*v1 + 1088))(v24);
        [v25 invalidate];

        v26 = (*(*v1 + 1136))();
        [v26 invalidate];

        (*(*v1 + 1096))(0);
        (*(*v1 + 1144))(0);
        sub_1A3E12A64(1);
        sub_1A3E20800();
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1A3E143C4()
{
  v30 = sub_1A524BEE4();
  v27[10] = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A524BF64();
  v27[9] = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27[15] = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A524BFC4();
  v27[8] = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v27[14] = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v27 - v5;
  KeyPath = swift_getKeyPath();
  v7 = *(*v0 + 1944);
  (v7)(KeyPath);

  v27[13] = v0[37];
  v9 = *(*v0 + 1672);
  v27[12] = *v0 + 1672;
  v27[11] = v9;
  v10 = v9(v8);
  v34 = v0;
  if (v10)
  {
    sub_1A3E1C218();
  }

  v11 = (*v0 + 400);
  v12 = *v11;
  v13 = (*v11)();
  v14 = (*(*v13 + 3376))(v13);

  v15 = (*(*v0 + 1728))(5);
  if (v14)
  {
    v33 = *(*v0 + 400);
    v16 = v33(v15);
    (*(*v16 + 3424))(v16);

    v17 = swift_getKeyPath();
    (*(*v0 + 1944))(v17);

    if (v0[8] >> 62)
    {
      sub_1A524E2B4();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_getKeyPath();
  v7();

  v18 = v0[37];
  v19 = objc_opt_self();
  v20 = *(v12)([v19 begin]);
  v21 = (*(v20 + 2512))();

  v22 = *(v12)([v19 setAnimationDuration_]);
  v23 = (*(v22 + 2560))();

  [v19 setAnimationTimingFunction_];

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v18;
  aBlock[4] = sub_1A3E2F378;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_320;
  v26 = _Block_copy(aBlock);

  [v19 setCompletionBlock_];
  _Block_release(v26);
  sub_1A3E1C218();
}

uint64_t sub_1A3E16514()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = MEMORY[0x1EEE9AC00](v2);
  result = (*(*v0 + 1720))(v3);
  if (!result)
  {
    return result;
  }

  v5 = v0[13];
  if (v5 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_6;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  v6 = (*(*v0 + 696))();
  if (v6 >> 62)
  {
    v8 = sub_1A524E2B4();

    if (!v8)
    {
      return result;
    }

LABEL_6:
    (*(*v1 + 696))();
    sub_1A3E137E4();
    sub_1A3E0BC40();
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v7)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1A3E167A4()
{
  v1 = v0;
  v2 = sub_1A5246EA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v52[1] = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v52 - v6;
  v8 = sub_1A5246E54();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52[2] = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v52 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v52 - v20;
  v62 = v1[13];
  v63 = v62 >> 62;
  if (v62 >> 62)
  {
    v40 = sub_1A524E2B4();
    v53 = v2;
    if (v40)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v22 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v2;
    if (v22)
    {
      goto LABEL_5;
    }
  }

  v23 = (*(*v1 + 696))(v19);
  if (v23 >> 62)
  {
    v51 = sub_1A524E2B4();

    if (!v51)
    {
      return result;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v24)
    {
      return result;
    }
  }

LABEL_5:
  swift_getKeyPath();
  v26 = *(*v1 + 1944);
  v64 = *v1 + 1944;
  v65 = v26;
  v26();

  v27 = v1[8];
  if (v27 >> 62)
  {
    v28 = sub_1A524E2B4();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v7;
  v56 = v3;
  if (!v28)
  {
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  v29 = *(*v1 + 696);
  v66 = *v1 + 696;
  v67 = v29;
  v30 = v29();
  if (v30 >> 62)
  {
    v41 = sub_1A524E2B4();

    if (v41)
    {
LABEL_10:
      v32 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
      sub_1A5246E84();
      sub_1A5246E24();
      v55 = v32;
      v33 = v21;
      v34 = sub_1A5246E84();
      v35 = sub_1A524D654();
      if (sub_1A524DEC4())
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v34, v35, v37, "Setup Cells – Assign Images", "", v36, 2u);
        MEMORY[0x1A590EEC0](v36, -1, -1);
      }

      v38 = *(v57 + 16);
      v61 = v33;
      v38(v17, v33, v58);
      sub_1A5246ED4();
      swift_allocObject();
      v54 = sub_1A5246EC4();
      swift_getKeyPath();
      v65();

      v39 = v1[8];
      v59 = v14;
      if (v39 >> 62)
      {
        sub_1A524E2B4();
      }

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v31)
    {
      goto LABEL_10;
    }
  }

  if (v63)
  {
    v42 = sub_1A524E2B4();
    v43 = v55;
    if (!v42)
    {
      goto LABEL_28;
    }

LABEL_23:
    v44 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
    sub_1A5246E84();
    sub_1A5246E24();
    v52[0] = v44;
    v45 = sub_1A5246E84();
    v46 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v45, v46, v48, "Setup Cells – Assign Placeholder Images", "", v47, 2u);
      MEMORY[0x1A590EEC0](v47, -1, -1);
    }

    (*(v57 + 16))(v17, v43, v58);
    sub_1A5246ED4();
    swift_allocObject();
    v49 = sub_1A5246EC4();
    swift_getKeyPath();
    v65();

    v50 = v1[8];
    v54 = v49;
    if (v50 >> 62)
    {
      sub_1A524E2B4();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v42 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = v55;
  if (v42)
  {
    goto LABEL_23;
  }

LABEL_28:
  result = (*(*v1 + 1720))(v42);
  if (result <= 1u)
  {
    return (*(*v1 + 1728))(1);
  }

  return result;
}

double sub_1A3E179C0(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A524BF64();
  *&result = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  if (*(a1 + 16))
  {
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    aBlock[4] = sub_1A3E2D994;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_68_0;
    _Block_copy(aBlock);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3E17D18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5246E54();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(a2 + 16);
    if (v7)
    {
      sub_1A524E554();
      v8 = (a2 + 32);
      do
      {
        v9 = *v8++;
        v10 = v9;
        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        result = sub_1A524E524();
        --v7;
      }

      while (v7);
    }

    if ((*(*v6 + 1720))(result) < 2u)
    {
      sub_1A3E137E4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3E1811C(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A524BEE4();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v9 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v19 = qword_1EB1EADF0;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1A3E2D99C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_75;
  v15 = _Block_copy(aBlock);

  v16 = v12;

  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v11, v8, v15);
  _Block_release(v15);
  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);
}

uint64_t sub_1A3E18484(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1EB15B518 != -1)
  {
    swift_once();
  }

  v8 = sub_1A5246F24();
  __swift_project_value_buffer(v8, qword_1EB15B520);
  v9 = a1;
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136315394;
    v13 = v9;
    v14 = [v13 description];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  v15 = *(*v4 + 1488);

  v15(a2, a3);
  v16 = v9;
  sub_1A3E0C0C4(v9);
  sub_1A3E186EC(v16);
  return sub_1A3E1930C();
}

void sub_1A3E186EC(void *a1)
{
  v2 = v1;
  v4 = sub_1A524BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v9 = *(*v1 + 1944);
  (v9)(KeyPath);

  v10 = *(v1 + 64);
  if (v10 >> 62)
  {
    if (!sub_1A524E2B4())
    {
      return;
    }
  }

  else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v59 = v5;
  if ((v10 & 0xC000000000000001) != 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v60 = *(v10 + 32);
    v11 = sub_1A524C634();
    v12 = [v60 childNodeWithName_];

    if (v12)
    {
      v13 = [v12 model];

      if (v13)
      {
        v58 = a1;
        v14 = [v13 firstMaterial];

        if (v14)
        {
          v57 = v14;
          v15 = [v14 presentationMaterial];
          v16 = sub_1A524C634();
          v56 = v15;
          v17 = [v15 valueForKey_];

          if (v17)
          {
            sub_1A524E0B4();
            swift_unknownObjectRelease();
          }

          else
          {
            v66 = 0u;
            v67 = 0u;
          }

          aBlock = v66;
          v62 = v67;
          v19 = v57;
          if (*(&v67 + 1))
          {
            sub_1A3C52C70(0, &qword_1EB126610);
            if (swift_dynamicCast())
            {
              v20 = v65;
              [v65 floatValue];
              v22 = v21;

              v23 = v60;
              if (v22 != 0.0)
              {
                if (v22 != 1.0)
                {
                  sub_1A3E22244();
                }

                sub_1A3E2EFD8(v60, v58);
                v24 = objc_opt_self();
                v25 = [v24 begin];
                v26 = *(*v2 + 400);
                v27 = *v26(v25);
                v28 = (*(v27 + 4048))();

                v29 = *v26([v24 setAnimationDuration_]);
                v30 = (*(v29 + 5536))();

                [v24 setAnimationTimingFunction_];

                goto LABEL_22;
              }

LABEL_21:
              v60 = v23;
              sub_1A3E2EFD8(v23, v58);
              v24 = objc_opt_self();
              v31 = [v24 begin];
              v32 = *(*v2 + 400);
              v33 = *v32(v31);
              v34 = (*(v33 + 4048))();

              v35 = *v32([v24 setAnimationDuration_]);
              v36 = (*(v35 + 5536))();

              [v24 setAnimationTimingFunction_];

LABEL_22:
              v37 = sub_1A524CF14();
              v38 = sub_1A524C634();
              [v19 setValue:v37 forKey:v38];

              [v24 commit];
              return;
            }
          }

          else
          {
            sub_1A3C35B00(&aBlock);
          }

          v23 = v60;
          goto LABEL_21;
        }
      }
    }

    v18 = v60;
  }

  else
  {
    __break(1u);
    __break(1u);
    swift_once();
    v39 = qword_1EB1EADF0;
    *v7 = qword_1EB1EADF0;
    v40 = v59;
    (*(v59 + 104))(v7, *MEMORY[0x1E69E8020], v4);
    v41 = v39;
    v42 = sub_1A524C024();
    (*(v40 + 8))(v7, v4);
    if (v42)
    {
      *(v1 + 64) = v1;

      *&aBlock = v1;
      swift_getKeyPath();
      sub_1A52415E4();

      v43 = v55;
      sub_1A3E2EFD8(v55, v58);
      v44 = [*(v1 + 24) rootNode];
      [v44 addChildNode_];

      swift_getKeyPath();
      v9();

      v45 = v2[37];
      v46 = objc_opt_self();
      v47 = *(*(*v2 + 400))([v46 begin]);
      v48 = (*(v47 + 4048))();

      [v46 setAnimationDuration_];
      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      v50[2] = v49;
      v50[3] = v45;
      v50[4] = v60;
      v63 = sub_1A3E2F20C;
      v64 = v50;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v62 = sub_1A3C2E0D0;
      *(&v62 + 1) = &block_descriptor_304;
      v51 = _Block_copy(&aBlock);
      v52 = v60;

      [v46 setCompletionBlock_];
      _Block_release(v51);
      [v52 setOpacity_];
      LODWORD(v53) = 1.0;
      [v43 setOpacity_];
      [v46 commit];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A3E1930C()
{
  v1 = v0;
  v107 = sub_1A5246EA4();
  v106 = *(v107 - 1);
  MEMORY[0x1EEE9AC00](v107);
  v3 = v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1A524BEE4();
  v122 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1A524BF64();
  v121 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v115 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1A524BFC4();
  v124 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v110 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v119 = v99 - v8;
  v9 = sub_1A5246E54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v123 = v99 - v14;
  v111 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v99 - v17;
  sub_1A5246E84();
  sub_1A5246E24();
  v19 = sub_1A5246E84();
  v20 = sub_1A524D654();
  v21 = sub_1A524DEC4();
  v125 = v18;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, v20, v23, "End Animation", "", v22, 2u);
    v24 = v22;
    v18 = v125;
    MEMORY[0x1A590EEC0](v24, -1, -1);
  }

  v25 = *(v10 + 16);
  v109 = v10 + 16;
  v108 = v25;
  v25(v123, v18, v9);
  sub_1A5246ED4();
  swift_allocObject();
  v117 = sub_1A5246EC4();
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1944))(KeyPath);

  v114 = v0[37];
  v27 = *(*v0 + 1728);
  v28 = v27(8);
  v29 = (*(*v0 + 1088))(v28);
  [v29 invalidate];

  v30 = (*(*v1 + 1096))(0);
  v31 = (*(*v1 + 1672))(v30);
  v32 = *v1;
  v118 = v10;
  if (v31)
  {
    v33 = (*(v32 + 1136))();
    [v33 invalidate];

    (*(*v1 + 1144))(0);
    v34 = v27(4);
    v35 = (*(*v1 + 1480))(v34);
    if (v35)
    {
      v37 = v36;
      v38 = v35;
      v35();
      sub_1A3C784D4(v38, v37);
    }

    (*(*v1 + 1488))(0, 0);
    v39 = sub_1A5246E84();
    sub_1A5246EB4();
    v40 = sub_1A524D644();
    v41 = sub_1A524DEC4();
    v42 = v125;
    if (v41)
    {

      sub_1A5246EE4();

      v43 = v106;
      v44 = v107;
      if ((v106[11])(v3, v107) == *MEMORY[0x1E69E93E8])
      {
        v45 = "[Error] Interval already ended";
      }

      else
      {
        (v43[1])(v3, v44);
        v45 = "";
      }

      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v39, v40, v62, "End Animation", v45, v61, 2u);
      MEMORY[0x1A590EEC0](v61, -1, -1);

      v59 = *(v118 + 8);
      v59(v12, v9);
      v60 = v125;
    }

    else
    {

      v59 = *(v118 + 8);
      v59(v12, v9);
      v60 = v42;
    }

    return (v59)(v60, v9);
  }

  v46 = (*(v32 + 896))();
  v105 = v9;
  if ((v46 & 1) == 0)
  {
    (*(*v1 + 992))();
    if ((v47 & 1) == 0)
    {
      sub_1A3E12A64(1);
      v48 = objc_opt_self();
      v49 = [v48 begin];
      v50 = *(*v1 + 400);
      v51 = *v50(v49);
      v52 = (*(v51 + 3856))();

      v53 = *v50([v48 setAnimationDuration_]);
      v54 = (*(v53 + 4000))();

      [v48 setAnimationTimingFunction_];

      v55 = swift_getKeyPath();
      (*(*v1 + 1944))(v55);

      v57 = v1[8];
      if (v57 >> 62)
      {
        result = sub_1A524E2B4();
        v58 = result;
        if (result)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
LABEL_13:
          v107 = v48;
          if (v58 >= 1)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          __break(1u);
          return result;
        }
      }

      [v48 commit];
      [v48 begin];
      [v48 setAnimationDuration_];
      v63 = [objc_opt_self() functionWithName_];
      [v48 setAnimationTimingFunction_];

      v64 = [v1[3] rootNode];
      v65 = sub_1A524C634();
      v66 = [v64 childNodeWithName_];

      if (v66)
      {
        [v66 setOpacity_];
      }

      [v48 commit];
    }
  }

  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v99[3] = qword_1EB1EADF0;
  v67 = v110;
  v68 = sub_1A524BFA4();
  v69 = (*v1 + 400);
  v103 = *v69;
  v104 = v69;
  v70 = *v103(v68);
  (*(v70 + 3952))();

  sub_1A524C014();
  v71 = *(v124 + 8);
  v124 += 8;
  v107 = v71;
  (v71)(v67, v120);
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  v74 = v114;
  *(v73 + 16) = v72;
  *(v73 + 24) = v74;
  v131 = sub_1A3E2E368;
  v132 = v73;
  aBlock = MEMORY[0x1E69E9820];
  v128 = 1107296256;
  v106 = &v129;
  v129 = sub_1A3C2E0D0;
  v130 = &block_descriptor_276;
  v75 = _Block_copy(&aBlock);

  v76 = v115;
  sub_1A524BF14();
  v126 = MEMORY[0x1E69E7CC0];
  v99[2] = sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v77 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  v99[1] = v78;
  v101 = sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v77);
  v79 = v112;
  v80 = v113;
  sub_1A524E224();
  v81 = v119;
  MEMORY[0x1A5908790](v119, v76, v79, v75);
  _Block_release(v75);
  v82 = *(v122 + 8);
  v122 += 8;
  v102 = v82;
  v82(v79, v80);
  v83 = *(v121 + 8);
  v121 += 8;
  v100 = v83;
  v83(v76, v116);
  v84 = v120;
  v85 = v107;
  (v107)(v81, v120);

  v86 = sub_1A524BFA4();
  v87 = *v103(v86);
  (*(v87 + 3904))();

  sub_1A524C014();
  v85(v67, v84);
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = v123;
  v90 = v125;
  v91 = v105;
  v108(v123, v125, v105);
  v92 = v118;
  v93 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v94 = swift_allocObject();
  v95 = v114;
  *(v94 + 16) = v88;
  *(v94 + 24) = v95;
  (*(v92 + 32))(v94 + v93, v89, v91);
  v131 = sub_1A3E2E96C;
  v132 = v94;
  aBlock = MEMORY[0x1E69E9820];
  v128 = 1107296256;
  v129 = sub_1A3C2E0D0;
  v130 = &block_descriptor_283;
  v96 = _Block_copy(&aBlock);

  v97 = v115;
  sub_1A524BF14();
  v126 = MEMORY[0x1E69E7CC0];
  sub_1A524E224();
  v98 = v119;
  MEMORY[0x1A5908790](v119, v97, v79, v96);
  _Block_release(v96);

  v102(v79, v80);
  v100(v97, v116);
  (v107)(v98, v120);
  (*(v92 + 8))(v90, v91);
}

uint64_t sub_1A3E1A568(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A524BEE4();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v7 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB1EADF0;
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a1;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a2;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v12 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v12);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v11);
  _Block_release(v11);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_1A3E1A884()
{
  result = (*(*v0 + 1672))();
  if ((result & 1) == 0)
  {
    result = (*(*v0 + 992))();
    if ((v2 & 1) == 0)
    {
      v3 = *&result;
      result = (*(*v0 + 896))();
      if ((result & 1) == 0)
      {
        swift_getKeyPath();
        (*(*v0 + 1944))();

        if ((*(v0 + 153) & 1) == 0)
        {
          v4 = v3;
          v5 = CACurrentMediaTime();
          v6 = (*v0 + 400);
          v7 = *v6;
          v8 = *(*v6)();
          v9 = (*(v8 + 3712))();

          if (v9)
          {
            v11 = (v7)(v10);
            v12 = (*(*v11 + 3760))(v11);

            v13.n128_f64[0] = pow(v12, v5 - v4);
            (*(*v0 + 1936))(v13);
            v14 = *v7();
            (*(v14 + 3808))();
          }

          else
          {
            v15 = v5 - v4;
            v16 = (v7)(v10);
            v17 = (*(*v16 + 3664))(v16);

            (*(*v0 + 1936))(v18, v15 / v17);
          }

          swift_getKeyPath();
          (*(*v0 + 1944))();

          if (*(v0 + 64) >> 62)
          {
            sub_1A524E2B4();
          }

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A3E1B024(char a1, char a2, char a3, double a4, double a5)
{
  v10 = sub_1A524BEE4();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A524BF64();
  v13 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EB1EADF0;
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a1 & 1;
  *(v17 + 25) = a2 & 1;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a3 & 1;
  aBlock[4] = sub_1A3E2DA30;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_86;
  v18 = _Block_copy(aBlock);

  sub_1A524BF14();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v19);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v15, v12, v18);
  _Block_release(v18);
  (*(v23 + 8))(v12, v10);
  (*(v13 + 8))(v15, v22);
}

uint64_t sub_1A3E1B3A4(int a1, char a2, char a3, double a4, double a5)
{
  v11 = sub_1A5246E54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246E84();
  sub_1A5246E24();
  v15 = sub_1A5246E84();
  v16 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v17 = swift_slowAlloc();
    v48 = a1;
    v18 = a3;
    v19 = a2;
    v20 = v17;
    *v17 = 0;
    v21 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v15, v16, v21, "Update Orientation", "", v20, 2u);
    v22 = v20;
    a2 = v19;
    a3 = v18;
    LOBYTE(a1) = v48;
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  (*(*v5 + 1288))(a1 & 1);
  v23 = (*(*v5 + 1336))(a3 & 1);
  (*(*v5 + 1384))(v23, a4, a5);
  v24 = (*(*v5 + 1440))((a2 & 1) == 0);
  result = (*(*v5 + 1720))(v24);
  if (result > 4u)
  {
    if (result > 6u)
    {
      if (result != 7)
      {
        v40 = objc_opt_self();
        v41 = [v40 begin];
        v42 = *(*v5 + 400);
        v43 = *v42(v41);
        v44 = (*(v43 + 4144))();

        v45 = *v42([v40 setAnimationDuration_]);
        v46 = (*(v45 + 4192))();

        [v40 setAnimationTimingFunction_];

        sub_1A3E1BAAC();
      }

LABEL_11:
      v26 = objc_opt_self();
      v27 = [v26 begin];
      v28 = *(*v5 + 400);
      v29 = *v28(v27);
      v30 = (*(v29 + 2512))();

      v31 = *v28([v26 setAnimationDuration_]);
      v32 = (*(v31 + 2560))();

      [v26 setAnimationTimingFunction_];

      sub_1A3E1C218();
    }

    if (result == 5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v33 = objc_opt_self();
    v34 = [v33 begin];
    v35 = *(*v5 + 400);
    v36 = *v35(v34);
    v37 = (*(v36 + 5104))();

    v38 = *v35([v33 setAnimationDuration_]);
    v39 = (*(v38 + 5152))();

    [v33 setAnimationTimingFunction_];

    sub_1A3E1C980();
  }

  if (result > 2u)
  {
    if (result != 3)
    {
      sub_1A3E1BAAC();
    }

    goto LABEL_13;
  }

  if (result >= 2u)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1A3E1BAAC()
{
  if ((*(*v0 + 1672))())
  {

    sub_1A3E1C218();
  }

  swift_getKeyPath();
  (*(*v0 + 1944))();

  if (v0[8] >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A3E1C124()
{
  v1 = (*(*v0 + 1672))();
  v2 = *(*(*v0 + 400))();
  if (v1)
  {
    (*(v2 + 5776))();
  }

  else
  {
    v3 = (*(v2 + 1408))();
  }

  v5 = LODWORD(v3);

  result.n128_u64[0] = 0;
  result.n128_u32[2] = v5;
  return result;
}

void sub_1A3E1C218()
{
  swift_getKeyPath();
  (*(*v0 + 1944))();

  if (v0[8] >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

__n128 sub_1A3E1C7A4()
{
  v1 = (*(*v0 + 1672))();
  v2 = *v0;
  if (v1)
  {
    v3 = (*(v2 + 400))();
    (*(*v3 + 5776))(v3);
  }

  else if (((*(v2 + 1280))() & 1) != 0 || ((*(*v0 + 1328))() & 1) == 0)
  {
    v6 = (*(*v0 + 400))();
    v4 = (*(*v6 + 1408))(v6);
  }

  else
  {
    v5 = (*(*v0 + 400))();
    (*(*v5 + 1504))(v5);
  }

  v8 = LODWORD(v4);

  result.n128_u64[0] = 0;
  result.n128_u32[2] = v8;
  return result;
}

void sub_1A3E1C980()
{
  if ((*(*v0 + 1672))())
  {

    sub_1A3E1C218();
  }

  swift_getKeyPath();
  (*(*v0 + 1944))();

  if (v0[8] >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3E1D064()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_reduceMotionDidChange name:*MEMORY[0x1E69DD918] object:0];
}

uint64_t sub_1A3E1D0E0()
{
  v1 = [objc_opt_self() px_accessibilityIsReduceMotionEnabled];
  v2 = *(*v0 + 1680);

  return v2(v1);
}

uint64_t sub_1A3E1D1E4()
{
  v1 = v0[13];
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v2 = (*(*v0 + 696))();
  if (v2 >> 62)
  {
    v5 = sub_1A524E2B4();

    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      return result;
    }
  }

LABEL_7:
  result = (*(*v0 + 1720))();
  if (result > 8u)
  {
LABEL_17:
    if (result)
    {

      return sub_1A3E137E4();
    }

    return result;
  }

  if (((1 << result) & 0xA4) == 0)
  {
    if (((1 << result) & 0x48) != 0)
    {
      sub_1A3E16514();

      return sub_1A3E1D87C();
    }

    if (((1 << result) & 0x110) != 0)
    {
      return result;
    }

    goto LABEL_17;
  }

  return sub_1A3E16514();
}

uint64_t sub_1A3E1D3B8()
{
  v0 = sub_1A524BFF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(result + 153) == 1)
    {
      if (qword_1EB1620C0 != -1)
      {
        swift_once();
      }

      v6 = qword_1EB1EADF0;
      *v3 = qword_1EB1EADF0;
      (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
      v7 = v6;
      LOBYTE(v6) = sub_1A524C024();
      result = (*(v1 + 8))(v3, v0);
      if (v6)
      {
        v5[153] = 1;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v9 = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v10 - 2) = v5;
      *(&v10 - 8) = 1;
      (*(*v5 + 1952))(v9);
    }
  }

  return result;
}

uint64_t sub_1A3E1D610()
{
  v0 = sub_1A524BFF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(result + 153))
    {
      KeyPath = swift_getKeyPath();
      v7 = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v10 - 2) = v5;
      *(&v10 - 8) = 0;
      (*(*v5 + 1952))(v7);
    }

    else
    {
      if (qword_1EB1620C0 != -1)
      {
        swift_once();
      }

      v8 = qword_1EB1EADF0;
      *v3 = qword_1EB1EADF0;
      (*(v1 + 104))(v3, *MEMORY[0x1E69E8020], v0);
      v9 = v8;
      LOBYTE(v8) = sub_1A524C024();
      result = (*(v1 + 8))(v3, v0);
      if (v8)
      {
        v5[153] = 0;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1A3E1D87C()
{
  v1 = sub_1A5246E54();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ((*v0)[112])(v3);
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    ((*v0)[243])();

    v7 = v0[37];
    sub_1A5246E84();
    sub_1A5246E24();
    v8 = sub_1A5246E84();
    v9 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, v9, v11, "Pause Animation", "", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v12 = CACurrentMediaTime();
    ((*v0)[131])(COERCE_CFTIMEINTERVAL(*&v12), 0);
    sub_1A3E12A64(1);
    v13 = (*v0)[216](6);
    v14 = *v0 + 50;
    v15 = *v14;
    v16 = *(*v14)(v13);
    v17 = (*(v16 + 2416))();

    if (v17)
    {
      v19 = *v0;
      v74 = v14;
      v19 += 50;
      v20 = *v19;
      v21 = *(*v19)(v18);
      v72 = (*(v21 + 2032))();

      v23 = *v20(v22);
      v24 = (*(v23 + 2080))();

      v26 = *v20(v25);
      v71 = (*(v26 + 5152))();

      v28 = *v20(v27);
      v29 = (*(v28 + 1888))();

      v31 = *v20(v30);
      v32 = (*(v31 + 1936))();

      v34 = *v20(v33);
      v35 = (*(v34 + 1744))();

      v37 = *v20(v36);
      v38 = (*(v37 + 1792))();

      v40 = *v20(v39);
      v41 = (*(v40 + 1600))();

      v43 = *v20(v42);
      v44 = (*(v43 + 1648))();

      v46 = *v20(v45);
      v47 = (*(v46 + 5008))();

      v49 = *v20(v48);
      v50 = (*(v49 + 5056))();

      v52 = (*v0)[209];
      v53 = (v52)(v51);
      if (v53)
      {
        v54 = 0;
      }

      else
      {
        v54 = LODWORD(v29) | (LODWORD(v32) << 32);
      }

      v73 = v7;
      v55 = v53 & 1;
      v56 = v52();
      if (v56)
      {
        v57 = 0;
      }

      else
      {
        v57 = LODWORD(v35) | (LODWORD(v38) << 32);
      }

      v58 = v56 & 1;
      v59 = v52();
      v60 = LODWORD(v41) | (LODWORD(v44) << 32);
      aBlock = v47;
      if (v59)
      {
        v60 = 0;
      }

      v76 = v50;
      v77 = LODWORD(v72) | (LODWORD(v24) << 32);
      v78 = v71;
      v79 = v54;
      v80 = v55;
      v81 = v57;
      v7 = v73;
      v82 = v58;
      v83 = v60;
      v84 = v59 & 1;
      v61 = v71;
      sub_1A3E27828(&aBlock);
      sub_1A3E2E0B0(&aBlock);
    }

    v62 = objc_opt_self();
    v63 = *v15([v62 begin]);
    v64 = (*(v63 + 5104))();

    v65 = *v15([v62 setAnimationDuration_]);
    v66 = (*(v65 + 5152))();

    [v62 setAnimationTimingFunction_];

    v67 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = v7;
    v79 = sub_1A3E2E214;
    v80 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1A3C2E0D0;
    v78 = &block_descriptor_256;
    v69 = _Block_copy(&aBlock);

    [v62 setCompletionBlock_];
    _Block_release(v69);
    sub_1A3E1C980();
  }

  return result;
}

uint64_t sub_1A3E1EBD4()
{
  v1 = v0;
  v2 = sub_1A5246E54();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = COERCE_DOUBLE((*(*v0 + 992))(v4));
  if (v8)
  {
    return result;
  }

  v9 = *&result;
  *&result = COERCE_DOUBLE((*(*v0 + 1040))());
  if (v10)
  {
    return result;
  }

  v11 = v9;
  v12 = *&result;
  swift_getKeyPath();
  (*(*v0 + 1944))();

  v13 = v0[37];
  sub_1A5246E84();
  sub_1A5246E24();
  v14 = sub_1A5246E84();
  v15 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, v15, v17, "Unpause Animation", "", v16, 2u);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v18 = CACurrentMediaTime() - v12 + v11;
  (*(*v0 + 1000))(*&v18, 0);
  (*(*v0 + 1048))(0, 1);
  sub_1A3E12A64(0);
  v19 = (*(*v0 + 1728))(7);
  v20 = *v0;
  v78 = *(*v0 + 400);
  v79 = v20 + 400;
  v21 = *v78(v19);
  v22 = (*(v21 + 2416))();

  if (v22)
  {
    v24 = (*v0 + 400);
    v25 = *v24;
    v26 = *(*v24)(v23);
    LODWORD(v77) = (*(v26 + 2080))();

    v28 = *v25(v27);
    v29 = (*(v28 + 2032))();

    v31 = *v25(v30);
    v32 = (*(v31 + 1936))();

    v34 = *v25(v33);
    v35 = (*(v34 + 1888))();

    v37 = *v25(v36);
    v38 = (*(v37 + 1792))();

    v40 = *v25(v39);
    v41 = (*(v40 + 1744))();

    v43 = *v25(v42);
    v44 = (*(v43 + 1648))();

    v46 = *v25(v45);
    v47 = (*(v46 + 1600))();

    v49 = *v25(v48);
    v50 = (*(v49 + 5248))();

    v52 = *v25(v51);
    v53 = (*(v52 + 5344))();

    v55 = *(*v0 + 1672);
    v56 = (v55)(v54);
    if (v56)
    {
      v57 = 0;
    }

    else
    {
      v57 = LODWORD(v32) | (LODWORD(v35) << 32);
    }

    v58 = v56 & 1;
    v59 = v55();
    if (v59)
    {
      v60 = 0;
    }

    else
    {
      v60 = LODWORD(v38) | (LODWORD(v41) << 32);
    }

    v61 = v59 & 1;
    v62 = v55();
    v63 = LODWORD(v44) | (LODWORD(v47) << 32);
    aBlock = v50;
    if (v62)
    {
      v63 = 0;
    }

    v81 = v53;
    v82 = v77 | (LODWORD(v29) << 32);
    v83 = 0;
    v84 = v57;
    v85 = v58;
    v86 = v60;
    v87 = v61;
    v88 = v63;
    v89 = v62 & 1;
    sub_1A3E27828(&aBlock);
    sub_1A3E2E0B0(&aBlock);
  }

  swift_getKeyPath();
  (*(*v0 + 1944))();
  *&result = COERCE_DOUBLE();
  v64 = v0[8];
  if (v64 >> 62)
  {
    *&result = COERCE_DOUBLE(sub_1A524E2B4());
    v65 = result;
    if (*&result != 0.0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v66 = objc_opt_self();
    v67 = [v66 begin];
    v68 = v78;
    v69 = *v78(v67);
    v70 = (*(v69 + 5248))();

    v71 = *v68([v66 setAnimationDuration_]);
    v72 = (*(v71 + 5296))();

    [v66 setAnimationTimingFunction_];

    v73 = swift_allocObject();
    swift_weakInit();
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v13;
    v84 = sub_1A3E2E070;
    v85 = v74;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1A3C2E0D0;
    v83 = &block_descriptor_242;
    v75 = _Block_copy(&aBlock);

    [v66 setCompletionBlock_];
    _Block_release(v75);
    sub_1A3E1C218();
  }

  v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_19;
  }

LABEL_17:
  v76[1] = v13;
  v77 = v1;
  if (v65 >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3E1F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A524BEE4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1EB1EADF0;
  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

double sub_1A3E1FA84(double result)
{
  if (result <= 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

void sub_1A3E1FBE0()
{
  v1 = v0;
  v2 = v0[4];
  if ((*(*v0 + 1672))([v2 removeAllAnimations]))
  {

    sub_1A3E20380();
  }

  else
  {
    v3 = [v2 camera];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 bloom];

      if (v5)
      {
        v6 = (*(*v1 + 400))();
        v7 = (*(*v6 + 1840))(v6);

        *&v8 = v7;
        [v5 setThreshold_];
      }
    }

    v9 = [v2 camera];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 bloom];

      if (v11)
      {
        v12 = (*(*v1 + 400))();
        v13 = (*(*v12 + 1696))(v12);

        *&v14 = v13;
        [v11 setIntensity_];
      }
    }

    v15 = [v2 camera];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 exposure];

      if (v17)
      {
        v18 = (*(*v1 + 400))();
        v19 = (*(*v18 + 1984))(v18);

        *&v20 = v19;
        [v17 setValue_];
      }
    }

    v21 = [v2 camera];
    if (v21)
    {
      v22 = v21;
      v26 = [v21 lensBlur];

      if (v26)
      {
        v23 = (*(*v1 + 400))();
        v24 = (*(*v23 + 2128))(v23);

        *&v25 = v24;
        [v26 setRadius_];
      }
    }
  }
}

uint64_t sub_1A3E1FFCC()
{
  v1 = v0;
  v2 = sub_1A524BFF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5246E84();
  sub_1A5246E24();
  v10 = sub_1A5246E84();
  v11 = sub_1A524D664();
  if (sub_1A524DEC4())
  {
    v12 = swift_slowAlloc();
    v24[0] = v2;
    v13 = v12;
    *v12 = 0;
    v14 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, v11, v14, "controllerQueue_preheatVFXWorldOnCompletion()", "controllerQueue_preheatVFXWorldOnCompletion()", v13, 2u);
    v15 = v13;
    v2 = v24[0];
    MEMORY[0x1A590EEC0](v15, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB1EADF0;
  *v5 = qword_1EB1EADF0;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v17 = v16;
  LOBYTE(v16) = sub_1A524C024();
  result = (*(v3 + 8))(v5, v2);
  if (v16)
  {
    if (*(v1 + 272) == 1)
    {
      *(v1 + 272) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v20 = MEMORY[0x1EEE9AC00](KeyPath);
      v24[-2] = v1;
      LOBYTE(v24[-1]) = 1;
      (*(*v1 + 1952))(v20);
    }

    swift_getKeyPath();
    (*(*v1 + 1944))();

    v21 = v1[35];
    if (v21)
    {
      v22 = v1[36];

      v21(v23);
      return sub_1A3C784D4(v21, v22);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3E20380()
{
  v1 = v0[4];
  v2 = [v1 camera];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 bloom];

    if (v4)
    {
      [v4 setEnabled_];
    }
  }

  v5 = [v1 camera];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 exposure];

    if (v7)
    {
      [v7 setEnabled_];
    }
  }

  v8 = [v1 camera];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 lensBlur];

    if (v10)
    {
      [v10 setEnabled_];
    }
  }

  v11 = [v1 camera];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 chromaticTransform];

    if (v13)
    {
      [v13 setEnabled_];
    }
  }

  v14 = v0[5];
  v15 = [v14 camera];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 bloom];

    if (v17)
    {
      [v17 setEnabled_];
    }
  }

  v18 = [v14 camera];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 lensBlur];

    if (v20)
    {
      [v20 setEnabled_];
    }
  }

  v21 = [v14 camera];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 chromaticTransform];

    if (v23)
    {
      [v23 setEnabled_];
    }
  }

  v24 = v0[6];
  v25 = [v24 camera];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 bloom];

    if (v27)
    {
      [v27 setEnabled_];
    }
  }

  v28 = [v24 camera];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 chromaticTransform];

    if (v30)
    {
      [v30 setEnabled_];
    }
  }

  v31 = v0[3];
  v32 = [v31 rootNode];
  v33 = sub_1A524C634();
  v34 = [v32 childNodeWithName_];

  if (v34)
  {
    [v34 setHidden_];
  }

  v35 = [v31 rootNode];
  v36 = sub_1A524C634();
  v37 = [v35 childNodeWithName_];

  if (v37)
  {
    [v37 setHidden_];
  }
}

void sub_1A3E20800()
{
  v6 = sub_1A524BFF4();
  v4[1] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v4[8] = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v3 = *v0;
  v7 = *(*v0 + 1944);
  v8 = v3 + 1944;
  v7(KeyPath);

  if (v0[8] >> 62)
  {
    sub_1A524E2B4();
  }

  v9 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  v5 = *MEMORY[0x1E69E8020];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E21058()
{
  v46 = sub_1A5246EA4();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A524BFF4();
  *&v64 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v56 = type metadata accessor for TimelineVFXEngineCell();
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C2A040(0, &qword_1EB120B30, sub_1A3E30A8C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - v7);
  v9 = sub_1A5246E54();
  v52 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v17 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
  sub_1A5246E84();
  sub_1A5246E24();
  v47 = v17;
  v18 = sub_1A5246E84();
  v19 = sub_1A524D654();
  v20 = sub_1A524DEC4();
  v51 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v18, v19, v22, "Setup Cells – Grid and Layout", "", v21, 2u);
    v23 = v21;
    v16 = v51;
    MEMORY[0x1A590EEC0](v23, -1, -1);
  }

  v24 = *(v52 + 16);
  v50 = v9;
  v24(v13, v16, v9);
  sub_1A5246ED4();
  swift_allocObject();
  v48 = sub_1A5246EC4();
  v25 = *(*v0 + 400);
  v55 = *v0 + 400;
  v54 = v25;
  v26 = *v25();
  v27 = (*(v26 + 1120))();

  v66 = 0;
  v67 = 0;
  v65 = v27;
  v62 = v64 + 8;
  v63 = v64 + 104;
  v61 = *MEMORY[0x1E69E8020];
  v57 = v2;
  v53 = v8;
  v59 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController___observationRegistrar;
  v28 = v58;
  sub_1A3E2206C(v58);
  sub_1A3E30AF8(v28, v8);
  sub_1A3E30A8C();
  v30 = v29;
  if ((*(*(v29 - 8) + 48))(v8, 1, v29) != 1)
  {
    *&v64 = *v8;
    sub_1A3E30C4C(v8 + *(v30 + 48), v60, type metadata accessor for TimelineVFXEngineCell);
    sub_1A3E22244();
  }

  v31 = sub_1A5246E84();
  v32 = v49;
  sub_1A5246EB4();
  v33 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    v34 = v44;
    sub_1A5246EE4();

    v35 = v45;
    v36 = v46;
    if ((*(v45 + 88))(v34, v46) == *MEMORY[0x1E69E93E8])
    {
      v37 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v34, v36);
      v37 = "";
    }

    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v31, v33, v39, "Setup Cells – Grid and Layout", v37, v38, 2u);
    MEMORY[0x1A590EEC0](v38, -1, -1);
  }

  v40 = *(v52 + 8);
  v41 = v50;
  v40(v32, v50);
  sub_1A3E224FC();

  return (v40)(v51, v41);
}

void sub_1A3E2206C(uint64_t a1@<X8>)
{
  sub_1A3E30A8C();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v5 + 56);

    v12(a1, 1, 1, v4, v6);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v5;
      v13 = *(type metadata accessor for TimelineVFXEngineCell() - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v4 + 48);
      v16 = v1[2];
      *v8 = v16;
      sub_1A3E30BE8(v14, v8 + v15);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_1A3E30C4C(v8, a1, sub_1A3E30A8C);
        (*(v18 + 56))(a1, 0, 1, v4);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1A3E22244()
{
  v1 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v1);
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1944))(KeyPath);

  swift_getKeyPath();
  sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
  sub_1A52415F4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3E224FC()
{
  v1 = sub_1A5246EA4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v34 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TimelineVFXEngineCell();
  v40 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  if ((*(*v0 + 1672))(v12))
  {
    sub_1A3E1C218();
  }

  v30 = v2;
  v31 = v1;
  v33 = v14;
  v32 = v7;
  v42 = *(*v0 + 400);
  v15 = *v42();
  (*(v15 + 1168))(&v51);

  sub_1A3E2F3B8();
  result = swift_dynamicCast();
  if (result)
  {
    v38 = v43;
    v35 = v44;
    v39 = v45;
    v27[5] = v46;
    v27[4] = v47;
    v27[3] = v48;
    v27[2] = v49;
    v27[1] = v50;
    v17 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
    sub_1A5246E84();
    v18 = v33;
    sub_1A5246E24();
    v27[6] = v17;
    v19 = sub_1A5246E84();
    v20 = sub_1A524D654();
    v21 = sub_1A524DEC4();
    v29 = v4;
    v28 = v5;
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v19, v20, v23, "Layout Cells – Initial", "", v22, 2u);
      v24 = v22;
      v5 = v28;
      v4 = v29;
      MEMORY[0x1A590EEC0](v24, -1, -1);
    }

    (*(v5 + 16))(v10, v18, v4);
    sub_1A5246ED4();
    swift_allocObject();
    v27[7] = sub_1A5246EC4();
    KeyPath = swift_getKeyPath();
    v26 = *(*v0 + 1944);
    v37 = *v0 + 1944;
    v36 = v26;
    v26(KeyPath);

    if (v0[8] >> 62)
    {
      sub_1A524E2B4();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A3E245AC()
{
  v1 = *v0;
  v2 = *v0 & 0xC000000000000001;
  if (!v2)
  {
    if (*(v1 + 16))
    {
      v3 = sub_1A524E234();
      v5 = *(v1 + 36);
      goto LABEL_6;
    }

    return 0;
  }

  if (!sub_1A524E2B4())
  {
    return 0;
  }

  v3 = sub_1A524E264();
  v5 = v4;
LABEL_6:
  v6 = v2 != 0;
  sub_1A3E2B044(v3, v5, v6);
  v8 = v7;
  sub_1A3CAD6E8(v3, v5, v6);
  return v8;
}

void sub_1A3E24670(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v21 = a7;
  v24 = a6;
  v23 = a5;
  v22 = a4;
  v25 = a3;
  v17 = a2;
  v16 = sub_1A524BEE4();
  v15 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v14 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v14);
  v13[2] = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A524BFC4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13[1] = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v18 = v13 - v11;
  *&v27 = sub_1A524BFF4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  KeyPath = swift_getKeyPath();
  (*(*v7 + 1944))(KeyPath);

  v26 = v7[37];
  sub_1A3E22244();
}

void sub_1A3E260F0()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v27 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A524BFC4();
  v7 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1944))(KeyPath);

  v14 = v0[37];
  v15 = CACurrentMediaTime();
  (*(*v0 + 1000))(COERCE_CFTIMEINTERVAL(*&v15), 0);
  v16 = sub_1A3E12A64(0);
  if ((*(*v0 + 1672))(v16))
  {

    sub_1A3E2663C();
  }

  else
  {
    v25 = v2;
    v26 = v1;
    if (qword_1EB1620C0 != -1)
    {
      swift_once();
    }

    v23[1] = qword_1EB1EADF0;
    sub_1A524BFA4();
    sub_1A524C014();
    v24 = *(v7 + 8);
    v24(v9, v30);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v14;
    aBlock[4] = sub_1A3E2FA10;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_362;
    v19 = _Block_copy(aBlock);

    sub_1A524BF14();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v20 = MEMORY[0x1E69E7F60];
    sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v20);
    v21 = v27;
    v22 = v26;
    sub_1A524E224();
    MEMORY[0x1A5908790](v12, v6, v21, v19);
    _Block_release(v19);
    (*(v25 + 8))(v21, v22);
    (*(v28 + 8))(v6, v29);
    v24(v12, v30);

    sub_1A3E2663C();
  }
}

void sub_1A3E2663C()
{
  v1 = v0;
  v2 = (*(*v0 + 1136))();
  if (v2)
  {
  }

  else
  {
    swift_getKeyPath();
    (*(*v0 + 1944))();

    v4 = v0[37];
    v5 = 1.0;
    if ((*(*v0 + 1672))(v3))
    {
      v6 = (*(*v0 + 400))();
      v5 = (*(*v6 + 5680))(v6);
    }

    v7 = sub_1A4731C60();
    swift_beginAccess();
    v8 = v5 * *v7;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v4;
    aBlock[4] = sub_1A3E2DBBC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_124;
    v11 = _Block_copy(aBlock);
    v12 = objc_opt_self();

    v13 = [v12 timerWithTimeInterval:1 repeats:v11 block:v8];
    _Block_release(v11);

    v14 = *(*v1 + 1144);
    v15 = v13;
    v14(v13);
    v16 = [objc_opt_self() mainRunLoop];
    [v16 addTimer:v15 forMode:*MEMORY[0x1E695DA28]];
  }
}

void sub_1A3E2697C()
{
  v1 = (*(*v0 + 1088))();
  if (v1)
  {
  }

  else
  {
    swift_getKeyPath();
    (*(*v0 + 1944))();

    v2 = v0[37];
    v3 = sub_1A4731C48();
    swift_beginAccess();
    v4 = *v3;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    aBlock[4] = sub_1A3E2DBFC;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_131_0;
    v7 = _Block_copy(aBlock);
    v8 = objc_opt_self();

    v9 = [v8 timerWithTimeInterval:1 repeats:v7 block:v4];
    _Block_release(v7);

    v10 = *(*v0 + 1096);
    v11 = v9;
    v10(v9);
    v12 = [objc_opt_self() mainRunLoop];
    [v12 addTimer:v11 forMode:*MEMORY[0x1E695DA28]];
  }
}

uint64_t sub_1A3E26C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5246E54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_getKeyPath();
    (*(*v9 + 1944))();

    if (v9[37] == a2)
    {
      v10 = objc_opt_self();
      v11 = [v10 begin];
      v12 = *v9;
      v22 = a3;
      v13 = *(v12 + 400);
      v14 = *v13(v11);
      v15 = (*(v14 + 4144))();

      v16 = *v13([v10 setAnimationDuration_]);
      v17 = (*(v16 + 4192))();

      [v10 setAnimationTimingFunction_];

      v18 = swift_allocObject();
      swift_weakInit();
      (*(v6 + 16))(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v5);
      v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v18;
      *(v20 + 24) = a2;
      (*(v6 + 32))(v20 + v19, &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
      aBlock[4] = sub_1A3E2E984;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_290;
      v21 = _Block_copy(aBlock);

      [v10 setCompletionBlock_];
      _Block_release(v21);
      sub_1A3E1BAAC();
    }
  }

  return result;
}

uint64_t sub_1A3E26FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v23 = a2;
  v3 = sub_1A524BEE4();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524BF64();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5246E54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EB1EADF0;
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v9);
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  (*(v10 + 32))(v15 + v14, v12, v9);
  aBlock[4] = sub_1A3E2EA60;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_297;
  v17 = _Block_copy(aBlock);

  sub_1A524BF14();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v5, v17);
  _Block_release(v17);
  (*(v25 + 8))(v5, v3);
  (*(v6 + 8))(v8, v24);
}

uint64_t sub_1A3E2740C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    v29 = v5;
    swift_getKeyPath();
    (*(*v16 + 1944))();

    if (v16[37] == a2)
    {
      v17 = (*(*v16 + 1728))(4);
      v18 = (*(*v16 + 1480))(v17);
      if (v18)
      {
        v20 = v19;
        v21 = v18;
        v18();
        sub_1A3C784D4(v21, v20);
      }

      (*(*v16 + 1488))(0, 0);
      (*(v9 + 16))(v14, v30, v8);
      sub_1A5246ED4();
      swift_allocObject();
      sub_1A5246EC4();
      v22 = sub_1A5246E84();
      sub_1A5246EB4();
      v23 = sub_1A524D644();
      if (sub_1A524DEC4())
      {

        sub_1A5246EE4();

        v24 = v29;
        if ((*(v29 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
        {
          v25 = "[Error] Interval already ended";
        }

        else
        {
          (*(v24 + 8))(v7, v4);
          v25 = "";
        }

        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = sub_1A5246E34();
        _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, v23, v27, "End Animation", v25, v26, 2u);
        MEMORY[0x1A590EEC0](v26, -1, -1);
      }

      return (*(v9 + 8))(v11, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A3E27828(uint64_t a1)
{
  v3 = v1[4];
  v4 = [v3 removeAllAnimations];
  v5 = (*v1 + 400);
  v6 = *v5;
  v7 = *(*v5)(v4);
  v8 = (*(v7 + 2176))();

  if (v8)
  {
    v10 = *(a1 + 72);
    if (v10 != 1)
    {
      v11 = *(a1 + 56);
      if (v11 != 1)
      {
        v12 = HIDWORD(*(a1 + 64));
        v13 = *(a1 + 48);
        v14 = HIDWORD(v13);
        v92 = *(a1 + 64);
        sub_1A3E2E0F0(v92, v10);
        v91 = v13;
        sub_1A3E2E0F0(v13, v11);
        v15 = sub_1A524C634();
        v16 = a1;
        v17 = objc_opt_self();
        v18 = [v17 animationWithKeyPath_];

        v19 = *v16;
        v20 = v18;
        [v20 setDuration_];
        v21 = sub_1A524CF14();
        [v20 setFromValue_];

        v22 = sub_1A524CF14();
        [v20 setToValue_];

        v93 = v11;
        if (v11)
        {
          v23 = v11;
        }

        else
        {
          v11 = *(v16 + 8);
          v23 = 0;
        }

        v24 = v23;
        [v20 setTimingFunction_];

        [v20 setRemovedOnCompletion_];
        v90 = "camera.bloom.threshold";
        v25 = sub_1A524C634();
        v26 = [v17 animationWithKeyPath_];

        v27 = v26;
        [v27 setDuration_];
        v28 = sub_1A524CF14();
        [v27 setFromValue_];

        v29 = sub_1A524CF14();
        [v27 setToValue_];

        if (v10)
        {
          v30 = v10;
          v31 = v10;
        }

        else
        {
          v31 = *(v16 + 8);
          v30 = 0;
        }

        v32 = v30;
        [v27 setTimingFunction_];

        [v27 setRemovedOnCompletion_];
        v33 = [v3 camera];
        v34 = [v33 bloom];

        LODWORD(v35) = v14;
        [v34 setThreshold_];

        v36 = [v3 camera];
        v37 = [v36 bloom];

        LODWORD(v38) = v12;
        [v37 setIntensity_];

        v39 = objc_opt_self();
        v40 = [v39 animationWithCAAnimation_];

        v41 = sub_1A524C634();
        [v3 _vfxDeprecatedAddAnimation_forKey_];

        v42 = [v39 animationWithCAAnimation_];
        v43 = sub_1A524C634();
        [v3 _vfxDeprecatedAddAnimation_forKey_];

        sub_1A3E2E0E0(v91, v93);
        sub_1A3E2E0E0(v92, v10);
        a1 = v16;
      }
    }
  }

  v44 = v6(v9);
  v45 = (*(*v44 + 2224))(v44);

  if (v45)
  {
    v47 = *(a1 + 40);
    if (v47 != 1)
    {
      v48 = *(a1 + 32);
      v49 = v47;
      v50 = sub_1A524C634();
      v51 = [objc_opt_self() animationWithKeyPath_];

      v94 = a1;
      v52 = *a1;
      v53 = v51;
      [v53 setDuration_];
      v54 = sub_1A524CF14();
      [v53 setFromValue_];

      v55 = sub_1A524CF14();
      [v53 setToValue_];

      v56 = v49;
      if (!v47)
      {
        v56 = *(v94 + 8);
      }

      v57 = v49;
      [v53 setTimingFunction_];

      [v53 setRemovedOnCompletion_];
      v58 = [v3 camera];
      v59 = [v58 exposure];

      LODWORD(v60) = HIDWORD(v48);
      [v59 setValue_];

      v61 = [objc_opt_self() animationWithCAAnimation_];
      v62 = sub_1A524C634();
      [v3 _vfxDeprecatedAddAnimation_forKey_];

      sub_1A3E2E0E0(v48, v47);
      a1 = v94;
    }
  }

  v63 = v6(v46);
  v64 = (*(*v63 + 2272))(v63);

  if (v64)
  {
    v65 = *(a1 + 24);
    if (v65 != 1)
    {
      v66 = *(a1 + 16);
      v67 = v65;
      v68 = sub_1A524C634();
      v69 = [objc_opt_self() animationWithKeyPath_];

      v70 = *a1;
      v71 = v69;
      [v71 setDuration_];
      v72 = sub_1A524CF14();
      [v71 setFromValue_];

      v73 = sub_1A524CF14();
      [v71 setToValue_];

      v74 = v67;
      if (!v65)
      {
        v74 = *(a1 + 8);
      }

      v75 = v67;
      [v71 setTimingFunction_];

      [v71 setRemovedOnCompletion_];
      v76 = [v3 camera];
      v77 = [v76 lensBlur];

      LODWORD(v78) = HIDWORD(v66);
      [v77 setRadius_];

      v79 = [objc_opt_self() animationWithCAAnimation_];
      v80 = sub_1A524C634();
      [v3 _vfxDeprecatedAddAnimation_forKey_];

      sub_1A3E2E0E0(v66, v65);
    }
  }

  v81 = [v3 animationKeys];
  v82 = sub_1A524CA34();

  v83 = MEMORY[0x1E69E7CC0];
  if (*(v82 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v83 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v85 = 0;
    while (1)
    {
      if ((v83 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x1A59097F0](v85, v83);
      }

      else
      {
        if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v86 = *(v83 + 8 * v85 + 32);
      }

      v87 = v86;
      v88 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      [v86 play];

      ++v85;
      if (v88 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

__n64 sub_1A3E28330()
{
  if (((*(*v0 + 1280))() & 1) != 0 || ((*(*v0 + 1328))() & 1) == 0)
  {
    v3 = (*(*v0 + 400))();
    v2 = (*(*v3 + 1312))(v3);
  }

  else
  {
    v1 = (*(*v0 + 400))();
    (*(*v1 + 1360))(v1);
  }

  v5 = LODWORD(v2);

  result.n64_u32[0] = 0;
  result.n64_u32[1] = v5;
  return result;
}

BOOL sub_1A3E28488(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1A524EC84();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1A3E28530(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1A524BEE4();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1A524BF64();
  v10 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1620C0 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1EB1EADF0;
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = v13;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1A3E2FA04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_355;
  v15 = _Block_copy(aBlock);

  v16 = a3;
  sub_1A524BF14();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1A3E30D84(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1A3C2A040(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A840(&qword_1EB12B1B0, &qword_1EB12B1C0, v17);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v12, v9, v15);
  _Block_release(v15);
  (*(v21 + 8))(v9, v7);
  (*(v10 + 8))(v12, v20);
}

uint64_t sub_1A3E288B4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A524BFF4();
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    (*(*v7 + 1944))();

    v8 = v7[37];

    if (v8 == a1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1A3E2EAF0(a3);
      }

      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        swift_getKeyPath();
        (*(*v10 + 1944))();

        swift_getKeyPath();
        sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
        sub_1A52415F4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v11 = result;
        swift_getKeyPath();
        (*(*v11 + 1944))();

        swift_getKeyPath();
        sub_1A3E30D84(&qword_1EB1255D8, type metadata accessor for TimelineVFXEngineController);
        sub_1A52415F4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  return result;
}

uint64_t sub_1A3E28DF0(__n128 a1)
{
  v44 = a1;
  v32 = sub_1A5246EA4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-v11];
  v13 = OBJC_IVAR____TtC12PhotosUICore27TimelineVFXEngineController_signposter;
  sub_1A5246E84();
  sub_1A5246E24();
  v39 = v1;
  v36 = v13;
  v14 = sub_1A5246E84();
  sub_1A524D654();
  v15 = sub_1A524DEC4();
  v34 = v2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v16 = 136315138;
    v45 = v44;
    sub_1A3E2F8A0();
    sub_1A3E30D84(&qword_1EB120230, sub_1A3E2F8A0);
    sub_1A524EB64();
    sub_1A3C2EF94();
  }

  (*(v5 + 16))(v9, v12, v4);
  sub_1A5246ED4();
  swift_allocObject();
  v17 = sub_1A5246EC4();
  v18 = v39;
  v38 = (*(*v39 + 1184))();
  v19 = [*(v18 + 32) camera];
  if (v19)
  {
    v37 = v17;
    v20 = v19;
    [v19 projectionTransform];
    v40 = v21;
    v41 = v22;
    v43 = v23;
    v42 = v24;

    sub_1A3C370B0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F9790;
    v26 = *(v18 + 56);
    *(inited + 32) = v26;
    v46 = inited;
    KeyPath = swift_getKeyPath();
    v28 = *(*v18 + 1944);
    v29 = v26;
    v28(KeyPath);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return (*(v5 + 8))(v12, v4);
}

id sub_1A3E29BE8()
{
  v1 = v0[13];
  v2 = (v1 >> 62);
  if (v1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v4 = (*(*v0 + 696))();
    if (v4 >> 62)
    {
      goto LABEL_51;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v5)
    {
      goto LABEL_52;
    }
  }

  while (1)
  {
    v6 = (*v0 + 696);
    v7 = *v6;
    v8 = (*v6)();
    if (v8 >> 62)
    {
      v21 = sub_1A524E2B4();

      if (v21)
      {
        goto LABEL_8;
      }

LABEL_22:
      if (v2)
      {
        if (!sub_1A524E2B4())
        {
LABEL_52:
          v34 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

          return [v34 init];
        }
      }

      else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v22 = (*v0 + 848);
      v23 = *v22;
      v24 = (*v22)();
      if (v2)
      {
        v25 = sub_1A524E2B4();
      }

      else
      {
        v25 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        __break(1u);
        goto LABEL_56;
      }

      if (v26 >= v24)
      {
        v26 = v24;
      }

      if (v26 <= 0)
      {
        v27 = 1;
        if (!v2)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = v26 + 1;
        if (!v2)
        {
LABEL_34:
          v28 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_37;
        }
      }

      v28 = sub_1A524E2B4();
LABEL_37:
      if (v28)
      {
        v29 = (*(*v0 + 856))(v27 % v28);
        v30 = (v23)(v29);
        if ((v1 & 0xC000000000000001) == 0)
        {
          if ((v30 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v30 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v31 = *(v1 + 8 * v30 + 32);

            return v31;
          }

          __break(1u);
LABEL_62:
          JUMPOUT(0x1A59097F0);
        }

LABEL_57:

        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v9)
    {
      goto LABEL_22;
    }

LABEL_8:
    v11 = (*v0 + 800);
    v2 = *v11;
    v12 = (*v11)(v10);
    v13 = v7();
    v14 = v13 >> 62 ? sub_1A524E2B4() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (__OFSUB__(v14, 1))
    {
      break;
    }

    if (v14 - 1 >= v12)
    {
      v14 = v12;
    }

    else
    {
      --v14;
    }

    v16 = (v7)(v15);
    if (v16 >> 62)
    {
      goto LABEL_46;
    }

    v1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      goto LABEL_47;
    }

LABEL_16:
    v18 = (*(*v0 + 808))(((v14 & ~(v14 >> 63)) + 1) % v1);
    v1 = v2(v18);
    v17 = v7();
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_48;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v17 + 8 * v1 + 32);

      return v19;
    }

    __break(1u);
LABEL_51:
    v33 = sub_1A524E2B4();

    if (!v33)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_46:
  v1 = sub_1A524E2B4();

  if (v1)
  {
    goto LABEL_16;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  v32 = MEMORY[0x1A59097F0](v1, v17);

  return v32;
}