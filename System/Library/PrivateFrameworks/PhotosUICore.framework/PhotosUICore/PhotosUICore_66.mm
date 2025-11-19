uint64_t sub_1A447E31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34[2] = a2;
  v3 = type metadata accessor for LemonadeCustomizeButton();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475DE4(0, &qword_1EB13B6C8, sub_1A4481748, type metadata accessor for LemonadeCustomizeButton, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  sub_1A448177C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4481748(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v18 = v11;
    v34[1] = v15;
    v38 = *(a1 + 96);
    sub_1A4482548(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v19 = 1;
    if (v35 == 1)
    {
      *v13 = sub_1A5249314();
      *(v13 + 1) = 0;
      v13[16] = 1;
      sub_1A44821FC(0, &qword_1EB1244F0, sub_1A4481990);
      sub_1A447E8D8(a1, &v13[*(v20 + 44)]);
      sub_1A524A1D4();
      sub_1A524A1A4();
      v21 = sub_1A524A1F4();

      KeyPath = swift_getKeyPath();
      sub_1A448187C();
      v24 = &v13[*(v23 + 36)];
      *v24 = KeyPath;
      v24[1] = v21;
      v25 = sub_1A524B294();
      v26 = swift_getKeyPath();
      *&v38 = v25;
      v27 = sub_1A5248204();
      sub_1A44817FC();
      v29 = &v13[*(v28 + 36)];
      *v29 = v26;
      v29[1] = v27;
      v30 = sub_1A524B3C4();
      v31 = swift_getKeyPath();
      v32 = &v13[*(v10 + 36)];
      *v32 = v31;
      v32[1] = v30;
      sub_1A4482CF8(v13, v17, sub_1A448177C);
      v19 = 0;
    }

    (*(v18 + 56))(v17, v19, 1, v10);
    sub_1A4482288(v17, v8, sub_1A4481748);
    swift_storeEnumTagMultiPayload();
    sub_1A4473B4C(&qword_1EB13B6A0, sub_1A4481748, sub_1A4481D18);
    sub_1A4473744(&qword_1EB125878, type metadata accessor for LemonadeCustomizeButton);
    sub_1A5249744();
    return sub_1A447A880(v17, sub_1A4481748);
  }

  else
  {
    v38 = *(a1 + 56);
    v39 = *(a1 + 72);
    sub_1A4482548(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    sub_1A524B924();
    sub_1A4250B54(v35, v36, v37, v5);
    sub_1A4480FE8(v5, v8, type metadata accessor for LemonadeCustomizeButton);
    swift_storeEnumTagMultiPayload();
    sub_1A4473B4C(&qword_1EB13B6A0, sub_1A4481748, sub_1A4481D18);
    sub_1A4473744(&qword_1EB125878, type metadata accessor for LemonadeCustomizeButton);
    sub_1A5249744();
    return sub_1A447AACC(v5, type metadata accessor for LemonadeCustomizeButton);
  }
}

uint64_t sub_1A447E8D8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_1A4481A74();
  v60 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4475DE4(0, &qword_1EB122BC0, sub_1A41C3F80, sub_1A4481A74, MEMORY[0x1E697F948]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - v9;
  sub_1A4482990(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v12 = v11;
  v57 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v56 - v13;
  sub_1A41C3F80();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4481A2C(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v59 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v63 = &v56 - v23;
  (*(**a1 + 632))(&v64, v22);
  LOBYTE(v68) = v64;
  v70[0] = 1;
  v24 = static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v68, v70);
  v61 = v8;
  v62 = v16;
  if (v24)
  {
    v25 = v14;
    v26 = v57;
    sub_1A3C52C70(0, &unk_1EB120978);
    v27 = [swift_getObjCClassFromMetadata() sharedInstance];
    v28 = [v27 showShelvesOrderResetButton];

    if (v28)
    {
      v68 = sub_1A3C38BD4();
      v69 = v29;
      v30 = swift_allocObject();
      v31 = a1[5];
      v30[5] = a1[4];
      v30[6] = v31;
      v30[7] = a1[6];
      v32 = a1[1];
      v30[1] = *a1;
      v30[2] = v32;
      v33 = a1[3];
      v30[3] = a1[2];
      v30[4] = v33;
      sub_1A4482148(a1, &v64);
      sub_1A3D5F9DC();
      sub_1A524B754();
      v34 = v12;
      (*(v26 + 32))(v18, v25, v12);
      (*(v26 + 56))(v18, 0, 1, v12);
    }

    else
    {
      v34 = v12;
      (*(v26 + 56))(v18, 1, 1, v12);
    }

    sub_1A4480FE8(v18, v10, sub_1A41C3F80);
    swift_storeEnumTagMultiPayload();
    sub_1A4473B4C(&qword_1EB121AA8, sub_1A41C3F80, sub_1A3D6E520);
    sub_1A3FF7760(255);
    v47 = v46;
    v48 = sub_1A3D6E520();
    v49 = sub_1A4473744(&qword_1EB121040, sub_1A3FF7760);
    v64 = v34;
    v65 = v47;
    v66 = v48;
    v67 = v49;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    sub_1A447AACC(v18, sub_1A41C3F80);
  }

  else
  {
    v68 = sub_1A3C38BD4();
    v69 = v35;
    v36 = swift_allocObject();
    v37 = a1[5];
    v36[5] = a1[4];
    v36[6] = v37;
    v36[7] = a1[6];
    v38 = a1[1];
    v36[1] = *a1;
    v36[2] = v38;
    v39 = a1[3];
    v36[3] = a1[2];
    v36[4] = v39;
    sub_1A4482148(a1, &v64);
    sub_1A3D5F9DC();
    v40 = sub_1A524B754();
    v41 = v60;
    v56 = &v56;
    MEMORY[0x1EEE9AC00](v40);
    *(&v56 - 2) = a1;
    sub_1A3FF7760(0);
    v43 = v42;
    v44 = sub_1A3D6E520();
    v45 = sub_1A4473744(&qword_1EB121040, sub_1A3FF7760);
    sub_1A524A954();
    (*(v57 + 8))(v14, v12);
    (*(v4 + 16))(v10, v6, v41);
    swift_storeEnumTagMultiPayload();
    sub_1A4473B4C(&qword_1EB121AA8, sub_1A41C3F80, sub_1A3D6E520);
    v64 = v12;
    v65 = v43;
    v66 = v44;
    v67 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    (*(v4 + 8))(v6, v41);
  }

  v50 = v63;
  v51 = v59;
  sub_1A4482288(v63, v59, sub_1A4481A2C);
  v52 = v58;
  sub_1A4482288(v51, v58, sub_1A4481A2C);
  sub_1A44819C4();
  v54 = v52 + *(v53 + 48);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_1A447A880(v50, sub_1A4481A2C);
  return sub_1A447A880(v51, sub_1A4481A2C);
}

uint64_t sub_1A447F140@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  sub_1A4482990(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v35 = sub_1A3C38BD4();
  v36 = v17;
  v18 = swift_allocObject();
  v19 = a1[5];
  v18[5] = a1[4];
  v18[6] = v19;
  v18[7] = a1[6];
  v20 = a1[1];
  v18[1] = *a1;
  v18[2] = v20;
  v21 = a1[3];
  v18[3] = a1[2];
  v18[4] = v21;
  sub_1A4482148(a1, v34);
  sub_1A3D5F9DC();
  sub_1A524B754();
  v35 = sub_1A3C38BD4();
  v36 = v22;
  v23 = swift_allocObject();
  v24 = a1[5];
  v23[5] = a1[4];
  v23[6] = v24;
  v23[7] = a1[6];
  v25 = a1[1];
  v23[1] = *a1;
  v23[2] = v25;
  v26 = a1[3];
  v23[3] = a1[2];
  v23[4] = v26;
  sub_1A4482148(a1, v34);
  sub_1A524B754();
  v27 = *(v5 + 16);
  v27(v10, v16, v4);
  v27(v7, v13, v4);
  v28 = v33;
  v27(v33, v10, v4);
  sub_1A3FF7794();
  v27(&v28[*(v29 + 48)], v7, v4);
  v30 = *(v5 + 8);
  v30(v13, v4);
  v30(v16, v4);
  v30(v7, v4);
  return (v30)(v10, v4);
}

uint64_t sub_1A447F4B0()
{
  v1 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v1;
  sub_1A524BD24();
  sub_1A52483D4();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A447F5B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4483ED4(0, &qword_1EB127B78, sub_1A44813A8);
  v5 = (*(*(v4 - 8) + 16))(a2, a1, v4);
  v6 = sub_1A46E2258(v5);
  sub_1A447303C(0, &qword_1EB128428, sub_1A44813FC);
  v8 = (a2 + *(v7 + 36));
  *v8 = 0.0;
  v8[1] = v6;
}

uint64_t sub_1A447F690()
{
  v0 = sub_1A52425F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46593C4(v3);
  sub_1A4483ED4(0, &qword_1EB127BE8, sub_1A44763C0);
  v5 = v4;
  v6 = sub_1A44811E8(&qword_1EB127BF0, &qword_1EB127BE8, sub_1A44763C0);
  View.lemonadeInlinePlaybackEnvironment(allowedPlayState:)(v3, v5, v6);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A447F7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a3;
  v39 = a4;
  sub_1A44810B8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44744DC(0, &qword_1EB13B638, sub_1A44810B8, sub_1A448113C);
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1A524A074();
  v35 = a2;
  v14 = *((*MEMORY[0x1E69E7D40] & **(a2 + 32)) + 0x178);
  v14();
  if (v15)
  {
  }

  sub_1A5247BC4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1A4483ED4(0, &qword_1EB1222D0, sub_1A4475214);
  (*(*(v24 - 8) + 16))(v9, a1, v24);
  v25 = &v9[*(v7 + 36)];
  *v25 = v13;
  *(v25 + 1) = v17;
  *(v25 + 2) = v19;
  *(v25 + 3) = v21;
  *(v25 + 4) = v23;
  v25[40] = 0;
  v26 = sub_1A448113C();
  v27 = v36;
  sub_1A425D474(v36, v7, v26);
  v28 = sub_1A447AACC(v9, sub_1A44810B8);
  v42 = (v14)(v28);
  v43 = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = v35;
  *(v30 + 24) = v27;
  sub_1A4482548(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);

  v31 = v27;
  v40 = v7;
  v41 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1A4444FB4();
  v32 = v38;
  sub_1A524B144();

  return (*(v37 + 8))(v12, v32);
}

id sub_1A447FB94@<X0>(void *a1@<X8>)
{
  type metadata accessor for LemonadeExpandableCuratedLibraryGestureController();
  result = _s12PhotosUICore22PeopleRemovalUtilitiesCACycfC_0();
  *a1 = result;
  return result;
}

void sub_1A447FC0C()
{
  type metadata accessor for LemonadeRootViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A4483044(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4483044(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A4482548(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A4482548(319, &qword_1EB121BF0, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1A4480958(319, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
              if (v6 <= 0x3F)
              {
                sub_1A4483044(319, &qword_1EB124920, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E697DA80]);
                if (v7 <= 0x3F)
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1A447FE7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1A447FEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A447FF30()
{
  type metadata accessor for LemonadeRootViewModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1A4482548(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A4483044(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A4483044(319, &qword_1EB124908, type metadata accessor for LemonadeExpandableCuratedLibraryGestureController, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A448009C(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  sub_1A4483044(0, &qword_1EB1272A8, type metadata accessor for LemonadeExpandableCuratedLibraryGestureController, MEMORY[0x1E6981E90]);
  v13 = *(v12 - 8);
  v14 = *(v6 + 80);
  if (*(v13 + 84) <= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v10)
  {
    v17 = v11;
  }

  else
  {
    v17 = v11 + 1;
  }

  if (v17 <= 8)
  {
    v18 = 8;
  }

  else
  {
    v18 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + 7;
  v20 = *(v9 + 80) & 0xF8;
  v21 = ~v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 23;
  v23 = *(v13 + 80) & 0xF8 | 7;
  v24 = v18 + v23 + 1;
  if (v16 >= a2)
  {
    goto LABEL_36;
  }

  v25 = ((*(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + ((v22 + ((v19 + ((v14 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & v21)) & ~v23) + 8;
  v26 = v25 & 0xFFFFFFF8;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = a2 - v16 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v30 = *(a1 + v25);
      if (!v30)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v30 = *(a1 + v25);
      if (!v30)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v32 = v30 - 1;
    if (v26)
    {
      v32 = 0;
      v33 = *a1;
    }

    else
    {
      v33 = 0;
    }

    return v16 + (v33 | v32) + 1;
  }

  if (v29)
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) != 0)
  {
    v35 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 8) & ~v14;
    if (v7 == v16)
    {
      v36 = *(v6 + 48);

      return v36(v35, v7, v5);
    }

    else
    {
      v37 = *(v13 + 48);
      v38 = (v24 + ((v22 + ((v19 + v35) & 0xFFFFFFFFFFFFFFF8)) & v21)) & ~v23;

      return v37(v38);
    }
  }

  else
  {
    v34 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v34) = -1;
    }

    return (v34 + 1);
  }
}

void sub_1A4480428(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v43 = v8;
  v9 = *(v8 + 84);
  sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 64);
  sub_1A4483044(0, &qword_1EB1272A8, type metadata accessor for LemonadeExpandableCuratedLibraryGestureController, MEMORY[0x1E6981E90]);
  v15 = *(v14 - 8);
  v16 = *(v8 + 80);
  if (*(v15 + 84) <= 0x7FFFFFFEu)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = *(v15 + 84);
  }

  if (v9 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v9;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v8 + 64) + 7;
  v21 = *(v11 + 80) & 0xF8;
  v22 = ~v21 & 0xFFFFFFFFFFFFFFF8;
  v23 = v21 + 23;
  if (v12)
  {
    v24 = v13;
  }

  else
  {
    v24 = v13 + 1;
  }

  v25 = 8;
  if (v24 > 8)
  {
    v25 = v24;
  }

  v26 = *(v15 + 80) & 0xF8 | 7;
  v27 = v25 + v26 + 1;
  v28 = ((*(v15 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v29 = ((v27 + ((v23 + ((v20 + ((v16 + 16) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v26) + v28;
  if (v19 >= a3)
  {
    v32 = 0;
    v33 = a2 - v19;
    if (a2 <= v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v29)
    {
      v30 = 2;
    }

    else
    {
      v30 = a3 - v19 + 1;
    }

    if (v30 >= 0x10000)
    {
      v31 = 4;
    }

    else
    {
      v31 = 2;
    }

    if (v30 < 0x100)
    {
      v31 = 1;
    }

    if (v30 >= 2)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = a2 - v19;
    if (a2 <= v19)
    {
LABEL_28:
      if (v32 > 1)
      {
        if (v32 != 2)
        {
          *(a1 + v29) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_44;
        }

        *(a1 + v29) = 0;
      }

      else if (v32)
      {
        *(a1 + v29) = 0;
        if (!a2)
        {
          return;
        }

LABEL_44:
        if ((v18 & 0x80000000) != 0)
        {
          v37 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16;
          if (v9 == v19)
          {
            v38 = *(v43 + 56);

            v38(v37, a2, v9, v7);
          }

          else
          {
            v39 = ((v27 + ((v23 + ((v20 + v37) & 0xFFFFFFFFFFFFFFF8)) & v22)) & ~v26);
            if (v17 >= a2)
            {
              v42 = *(v15 + 56);

              v42(v39, a2);
            }

            else if (v28)
            {
              v40 = ~v17 + a2;
              v41 = v39;
              bzero(v39, v28);
              *v41 = v40;
            }
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v36 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v36 = (a2 - 1);
          }

          *a1 = v36;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }
  }

  if (v29)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  if (v29)
  {
    v35 = ~v19 + a2;
    bzero(a1, v29);
    *a1 = v35;
  }

  if (v32 > 1)
  {
    if (v32 == 2)
    {
      *(a1 + v29) = v34;
    }

    else
    {
      *(a1 + v29) = v34;
    }
  }

  else if (v32)
  {
    *(a1 + v29) = v34;
  }
}

unint64_t sub_1A44808D4()
{
  result = qword_1EB128E08;
  if (!qword_1EB128E08)
  {
    sub_1A3EECF3C(255, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128E08);
  }

  return result;
}

void sub_1A4480958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t))
{
  if (!*a2)
  {
    v7 = a3();
    v8 = a4(a1, MEMORY[0x1E69E7DE0], v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A44809F4@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for LemonadeRootScrollView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_1A447D534(v5, v3, a1);
}

uint64_t objectdestroy_47Tm()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeRootScrollView();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  v4 = v2[12];
  sub_1A44809C0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v6 = v5;
    v7 = *(v5 - 8);
    if (!(*(v7 + 48))(v3 + v4, 1, v5))
    {
      (*(v7 + 8))(v3 + v4, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v2[13];
  sub_1A4483044(0, &qword_1EB1272A8, type metadata accessor for LemonadeExpandableCuratedLibraryGestureController, MEMORY[0x1E6981E90]);
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_1A4483044(0, &qword_1EB1271D8, type metadata accessor for LemonadeExpandableCuratedLibraryGestureController, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

void sub_1A4480D04(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for LemonadeRootScrollView() - 8);
  v5 = (v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  sub_1A447D640(a2, v5);
}

uint64_t sub_1A4480D90()
{
  type metadata accessor for LemonadeRootScrollView();
  sub_1A4482548(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A4480E50(double *a1, double *a2)
{
  result = type metadata accessor for LemonadeRootScrollView();
  v5 = a2[1];
  if (*a1 != *a2 || a1[1] != v5)
  {

    v8 = sub_1A46E20FC(v7);

    sub_1A4482548(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);

    sub_1A524B6A4();
    v9 = v8 - (v5 + v10);
    if (v9 < 0.0)
    {
      v9 = 0.0;
    }

    sub_1A46DF504(v9 / v8);
  }

  return result;
}

unint64_t sub_1A4480F94()
{
  result = qword_1EB179150[0];
  if (!qword_1EB179150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179150);
  }

  return result;
}

uint64_t sub_1A4480FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4481050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A44810B8()
{
  if (!qword_1EB13B630)
  {
    sub_1A4483ED4(255, &qword_1EB1222D0, sub_1A4475214);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B630);
    }
  }
}

unint64_t sub_1A448113C()
{
  result = qword_1EB13B640;
  if (!qword_1EB13B640)
  {
    sub_1A44810B8();
    sub_1A44811E8(&qword_1EB1222D8, &qword_1EB1222D0, sub_1A4475214);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B640);
  }

  return result;
}

uint64_t sub_1A44811E8(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A4483ED4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A4481238(uint64_t a1, uint64_t *a2)
{
  v3 = *(v2 + 24);
  v4 = *a2;
  v5 = a2[1];
  v6 = *(*(v2 + 16) + 32);
  v7 = MEMORY[0x1E69E7D40];
  v8 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0x1A8))();
  v10 = v9;
  v11 = (*((*v7 & *v6) + 0x1D8))();
  v12 = (*((*v7 & *v6) + 0x208))();
  v14 = v13;
  sub_1A409043C(v4, v5, v8, v10, v11, v12, v13);
  sub_1A3C784D4(v12, v14);

  return [v3 setNeedsLayout];
}

unint64_t sub_1A44813A8()
{
  result = qword_1EB1796B8[0];
  if (!qword_1EB1796B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1796B8);
  }

  return result;
}

void sub_1A44813FC()
{
  if (!qword_1EB128780)
  {
    sub_1A4483ED4(255, &qword_1EB127B78, sub_1A44813A8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128780);
    }
  }
}

void sub_1A44814D0()
{
  if (!qword_1EB13B660)
  {
    sub_1A4481564();
    sub_1A4473744(&qword_1EB13B6B0, sub_1A4481564);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B660);
    }
  }
}

void sub_1A4481564()
{
  if (!qword_1EB13B668)
  {
    sub_1A44747A4(255, &qword_1EB13B670, sub_1A44815EC, sub_1A4481F78);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B668);
    }
  }
}

void sub_1A44815EC()
{
  if (!qword_1EB13B678)
  {
    sub_1A44816A0();
    sub_1A4473744(&qword_1EB13B6A8, sub_1A44816A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B678);
    }
  }
}

void sub_1A44816A0()
{
  if (!qword_1EB13B680)
  {
    sub_1A4475DE4(255, &qword_1EB13B688, sub_1A4481748, type metadata accessor for LemonadeCustomizeButton, MEMORY[0x1E697F960]);
    sub_1A4481BE0();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B680);
    }
  }
}

void sub_1A448177C()
{
  if (!qword_1EB1232C0)
  {
    sub_1A44817FC();
    sub_1A4481B74(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1232C0);
    }
  }
}

void sub_1A44817FC()
{
  if (!qword_1EB123620)
  {
    sub_1A448187C();
    sub_1A4481B74(255, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123620);
    }
  }
}

void sub_1A448187C()
{
  if (!qword_1EB123C10)
  {
    sub_1A44818FC();
    sub_1A4481B74(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123C10);
    }
  }
}

void sub_1A44818FC()
{
  if (!qword_1EB1218C8)
  {
    sub_1A4481990(255);
    sub_1A4473744(&qword_1EB121090, sub_1A4481990);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1218C8);
    }
  }
}

void sub_1A44819C4()
{
  if (!qword_1EB122638)
  {
    sub_1A4481A2C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB122638);
    }
  }
}

void sub_1A4481A74()
{
  if (!qword_1EB121EC8)
  {
    sub_1A4482990(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A3FF7760(255);
    sub_1A3D6E520();
    sub_1A4473744(&qword_1EB121040, sub_1A3FF7760);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EC8);
    }
  }
}

void sub_1A4481B74(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4482548(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4481BE0()
{
  result = qword_1EB13B698;
  if (!qword_1EB13B698)
  {
    sub_1A4475DE4(255, &qword_1EB13B688, sub_1A4481748, type metadata accessor for LemonadeCustomizeButton, MEMORY[0x1E697F960]);
    sub_1A4473B4C(&qword_1EB13B6A0, sub_1A4481748, sub_1A4481D18);
    sub_1A4473744(&qword_1EB125878, type metadata accessor for LemonadeCustomizeButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B698);
  }

  return result;
}

unint64_t sub_1A4481D18()
{
  result = qword_1EB1232C8;
  if (!qword_1EB1232C8)
  {
    sub_1A448177C();
    sub_1A4481DB8();
    sub_1A4481F28(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1232C8);
  }

  return result;
}

unint64_t sub_1A4481DB8()
{
  result = qword_1EB123628;
  if (!qword_1EB123628)
  {
    sub_1A44817FC();
    sub_1A4481E58();
    sub_1A4481F28(&qword_1EB127870, &qword_1EB127868, &qword_1EB128960, MEMORY[0x1E697E0B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123628);
  }

  return result;
}

unint64_t sub_1A4481E58()
{
  result = qword_1EB123C18;
  if (!qword_1EB123C18)
  {
    sub_1A448187C();
    sub_1A4473744(&qword_1EB1218D0, sub_1A44818FC);
    sub_1A4481F28(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C18);
  }

  return result;
}

uint64_t sub_1A4481F28(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4481B74(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4481FAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A4482548(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A4482008()
{
  if (!qword_1EB13B6C0)
  {
    sub_1A4475DE4(255, &qword_1EB13B688, sub_1A4481748, type metadata accessor for LemonadeCustomizeButton, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B6C0);
    }
  }
}

uint64_t sub_1A44820B4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3D60150;

  return sub_1A447F490(v0 + 16);
}

void sub_1A44821FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4482288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4482308()
{
  sub_1A3EFDF74();
  sub_1A52483D4();

  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v2 = sub_1A524C3D4();

  [v0 sendEvent:v1 withPayload:v2];
}

uint64_t objectdestroy_65Tm()
{

  sub_1A3D35A84(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1A44824DC()
{
  v1 = **(v0 + 16);
  v3 = 1;
  return (*(*v1 + 640))(&v3);
}

void sub_1A4482548(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A44825A0(void *a1@<X8>)
{

  PXDisplayCollectionDetailedCountsMake(v2);
  *a1 = v3;
}

uint64_t sub_1A44825E4@<X0>(void *a1@<X8>)
{
  v2 = sub_1A4473744(&qword_1EB1258F8, type metadata accessor for LemonadeRootViewModel);

  return sub_1A4166058(v3, v2, a1);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = type metadata accessor for LemonadeRootView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[7];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249A94();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[11];
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = v2 + v1[12];
  sub_1A4483044(0, &qword_1EB121410, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E90]);
  (*(*(v9 - 8) + 8))(v8, v9);
  sub_1A4483044(0, &qword_1EB1213E0, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

void sub_1A4482990(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1A44829E4()
{
  type metadata accessor for LemonadeRootView();
  [*(v0 + 16) dismissViewControllerAnimated:0 completion:0];
  sub_1A4482548(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A4482AD8(uint64_t (*a1)(void, uint64_t, void))
{
  v2 = 0x100000000;
  if (!*(v1 + 28))
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!*(v1 + 27))
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!*(v1 + 26))
  {
    v4 = 0;
  }

  v5 = 256;
  if (!*(v1 + 25))
  {
    v5 = 0;
  }

  return a1(*(v1 + 16), v5 | *(v1 + 24) | v4 | v3 | v2, *(v1 + 32));
}

uint64_t sub_1A4482B40()
{
  sub_1A4471DAC();
  v1 = v0;
  v2 = sub_1A4473744(&qword_1EB13B598, sub_1A4471DAC);

  sub_1A4239EB0(v3, v1, v2);
}

void sub_1A4482BF4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeRootView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 12) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = v9[4] == 0;
  v15 = 0x100000000;
  if (v14)
  {
    v15 = 0;
  }

  v14 = v13 == 0;
  v16 = 0x1000000;
  if (v14)
  {
    v16 = 0;
  }

  v14 = v12 == 0;
  v17 = 0x10000;
  if (v14)
  {
    v17 = 0;
  }

  v14 = v11 == 0;
  v18 = 256;
  if (v14)
  {
    v18 = 0;
  }

  v19 = *(v2 + v8);

  sub_1A44777C4(a1, (v2 + v6), v18 | v10 | v17 | v16 | v15, v19, a2);
}

uint64_t sub_1A4482CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4482D60(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeRootView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A4479464(v4, a1);
}

double sub_1A4482DF4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(*v3 + 64);

  return sub_1A4107114(v5, v4, a1);
}

void sub_1A4482E54()
{
  v1 = type metadata accessor for LemonadeRootView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  sub_1A4483044(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v6;
  v10[3] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1A4480FE8(v0 + v2, boxed_opaque_existential_1, type metadata accessor for LemonadeRootView);
  String.init(forType:)(v10);
  v8 = sub_1A524C634();

  *(inited + 48) = v8;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A447AACC(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v9 = sub_1A524C3D4();

  [v3 sendEvent:v4 withPayload:v9];
}

void sub_1A4483044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44830A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_1A524A074();
  v7 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v6)
  {
    v7 = sub_1A524A0A4();
  }

  type metadata accessor for LemonadeRootView();
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  v8 = sub_1A52480D4();
  (*(**v5 + 552))(v8);
  sub_1A5247BC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1A4480FE8(a1, a2, sub_1A4473334);
  sub_1A447303C(0, &qword_1EB123AE0, sub_1A4473334);
  v18 = a2 + *(v17 + 36);
  *v18 = v7;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

uint64_t sub_1A4483250()
{
  v1 = v0;
  v2 = *(type metadata accessor for LemonadeRootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52488B4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = sub_1A4658FA8();

  return sub_1A4478EB0(v1 + v6, v7);
}

uint64_t objectdestroy_106Tm()
{
  v1 = type metadata accessor for LemonadeRootView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v15 = sub_1A52488B4();
  v4 = *(v15 - 8);
  v5 = *(v4 + 80);
  v16 = v0;
  v6 = v0 + v2;

  v7 = v1[7];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5249A94();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[11];
  sub_1A4480958(0, &qword_1EB128980, sub_1A3F93828, MEMORY[0x1E697DF08]);
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = v6 + v1[12];
  sub_1A4483044(0, &qword_1EB121410, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E90]);
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_1A4483044(0, &qword_1EB1213E0, type metadata accessor for LemonadeRootTitleSubtitleView, MEMORY[0x1E6981E98]);

  (*(v4 + 8))(v16 + ((v2 + v3 + v5) & ~v5), v15);

  return swift_deallocObject();
}

uint64_t sub_1A4483680()
{
  v1 = v0;
  v2 = *(type metadata accessor for LemonadeRootView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1A52488B4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(**(v1 + v3) + 448))();

  return sub_1A4478EB0(v1 + v6, v7);
}

uint64_t sub_1A4483788()
{
  v1 = *(type metadata accessor for LemonadeRootView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1A52488B4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1A4478EB0(v5, 0.0);
}

uint64_t sub_1A4483854(uint64_t a1, uint64_t a2)
{
  v4 = *(sub_1A52488B4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for LemonadeRootView() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1A4479128(a2, v2 + v5, v8);
}

uint64_t sub_1A4483928(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A4482548(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A44839A8()
{
  v1 = *(v0 + 24);
  sub_1A524BE94();
  return sub_1A3F68170(v1);
}

uint64_t sub_1A4483A48()
{
  sub_1A52488B4();
  sub_1A524BE74();
  return sub_1A52488A4();
}

unint64_t sub_1A4483B18()
{
  result = qword_1EB128430;
  if (!qword_1EB128430)
  {
    sub_1A447303C(255, &qword_1EB128428, sub_1A44813FC);
    sub_1A4483BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128430);
  }

  return result;
}

unint64_t sub_1A4483BBC()
{
  result = qword_1EB128788;
  if (!qword_1EB128788)
  {
    sub_1A44813FC();
    sub_1A44811E8(&qword_1EB127B80, &qword_1EB127B78, sub_1A44813A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128788);
  }

  return result;
}

void sub_1A4483C68()
{
  if (!qword_1EB13B6E8)
  {
    sub_1A447303C(255, &qword_1EB13B648, sub_1A4481480);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B6E8);
    }
  }
}

unint64_t sub_1A4483CE4()
{
  result = qword_1EB13B6F0;
  if (!qword_1EB13B6F0)
  {
    sub_1A447303C(255, &qword_1EB13B648, sub_1A4481480);
    sub_1A4483D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B6F0);
  }

  return result;
}

unint64_t sub_1A4483D88()
{
  result = qword_1EB13B6F8;
  if (!qword_1EB13B6F8)
  {
    sub_1A4481480(255);
    sub_1A4483E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B6F8);
  }

  return result;
}

unint64_t sub_1A4483E08()
{
  result = qword_1EB13B700;
  if (!qword_1EB13B700)
  {
    sub_1A44814A8(255);
    sub_1A4473744(&qword_1EB13B708, sub_1A44814D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B700);
  }

  return result;
}

void sub_1A4483ED4(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52499C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t static PhotosPPTTestUtilities.requestTargetSelector(testName:testOptions:application:gesturePerformer:scrollTestPerformer:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v30 = a8;
  v31 = a7;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v32 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v32);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v15 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v33 = 0xD000000000000014;
  v34 = 0x80000001A53D8D10;
  sub_1A524E384();
  if (!*(a3 + 16) || (v17 = sub_1A3D5C0BC(v35), (v18 & 1) == 0))
  {
    sub_1A3D5FAFC(v35);
LABEL_8:
    v35[0] = v8;
    swift_getMetatypeMetadata();
    sub_1A524C714();
    sub_1A5246EF4();
  }

  sub_1A3C2F0BC(*(a3 + 56) + 32 * v17, v36);
  sub_1A3D5FAFC(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v25[3] = v13;
  v19 = v34;
  v26 = v33;
  v35[0] = v33;
  v35[1] = v34;
  v36[0] = 47;
  v36[1] = 0xE100000000000000;
  v20 = sub_1A3D5F9DC();
  v21 = sub_1A524DF84();
  v22 = *(v21 + 16);
  v25[2] = a1;
  if (v22 != 2)
  {

    sub_1A44848F4();
    swift_allocError();
    *v24 = v26;
    *(v24 + 8) = v19;
    *(v24 + 16) = 0;
    swift_willThrow();
    v35[0] = v9;
    swift_getMetatypeMetadata();
    sub_1A524C714();
    sub_1A5246EF4();
  }

  v25[0] = 2;
  v26 = v20;

  if (*(v21 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  __break(1u);
  return result;
}

id PhotosPPTTestUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosPPTTestUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPPTTestUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosPPTTestUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosPPTTestUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A44848F4()
{
  result = qword_1EB1C30A0[0];
  if (!qword_1EB1C30A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C30A0);
  }

  return result;
}

void sub_1A4484988(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  (*(v3 + 16))(v3, a1, v4);
}

__n128 sub_1A44849F0@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, __n128 *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v9 = *a6;
  v10 = *(a6 + 24);
  v11 = *(a6 + 32);
  a7->n128_u64[0] = a1;
  a7->n128_u64[1] = a2;
  a7[1].n128_u64[0] = a3;
  a7[1].n128_u64[1] = a4;
  a7[2].n128_f64[0] = a8;
  a7[2].n128_f64[1] = a9;
  a7[3].n128_u8[0] = a5;
  a7[3].n128_u64[1] = v9;
  result = *(a6 + 8);
  a7[4] = result;
  a7[5].n128_u64[0] = v10;
  a7[5].n128_u64[1] = v11;
  return result;
}

uint64_t sub_1A4484A24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_1A4484A80(v9, v10) & 1;
}

uint64_t sub_1A4484A80(uint64_t a1, uint64_t a2)
{
  sub_1A3C7B6A4();
  if (sub_1A524DBF4() & 1) != 0 && (*(a1 + 8) == *(a2 + 8) ? (v4 = *(a1 + 16) == *(a2 + 16)) : (v4 = 0), (v4 || (sub_1A524EAB4()) && (sub_1A524DBF4() & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && ((*(a1 + 48) ^ *(a2 + 48)) & 1) == 0))
  {
    v7 = *(a1 + 72);
    v11[0] = *(a1 + 56);
    v11[1] = v7;
    v12 = *(a1 + 88);
    v8 = *(a2 + 72);
    v9[0] = *(a2 + 56);
    v9[1] = v8;
    v10 = *(a2 + 88);
    v5 = sub_1A3FF14A8(v11, v9);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

__n128 PhotosDynamicHeaderLegibilityDebugOverlay.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A524BC74();
  v5 = v4;
  sub_1A4484C38(v1, &v10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[6] = v16;
  sub_1A4484D78(&v17, &v9);
  sub_1A4484EBC(v24);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v6;
  *(a1 + 112) = v23;
  v7 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  result = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = result;
  return result;
}

void sub_1A4484C38(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() systemBackgroundColor];
  v25 = sub_1A524B284();
  v5 = sub_1A5248874();
  v6 = sub_1A524A064();
  v7 = sub_1A524B464();
  v8 = sub_1A524B424();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1A524B454();
  v20 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v21 = (*(v19 + 16))(v20, v19);
  *a2 = v25;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
}

uint64_t sub_1A4484D78(uint64_t a1, uint64_t a2)
{
  sub_1A44863E0(0, &qword_1EB13B710, sub_1A4484E0C, MEMORY[0x1E6981F40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4484E0C()
{
  if (!qword_1EB13B718)
  {
    sub_1A44865E4(255, &qword_1EB123D58, MEMORY[0x1E69815C0], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13B718);
    }
  }
}

uint64_t sub_1A4484EBC(uint64_t a1)
{
  sub_1A44863E0(0, &qword_1EB13B710, sub_1A4484E0C, MEMORY[0x1E6981F40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1A4484F48@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A524BC74();
  v5 = v4;
  sub_1A4484C38(v1, &v10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[5] = v15;
  v24[6] = v16;
  sub_1A4484D78(&v17, &v9);
  sub_1A4484EBC(v24);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v6;
  *(a1 + 112) = v23;
  v7 = v18;
  *(a1 + 16) = v17;
  *(a1 + 32) = v7;
  result = v20;
  *(a1 + 48) = v19;
  *(a1 + 64) = result;
  return result;
}

__n128 sub_1A4484FF8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1A524BC74();
  v6 = v5;

  v7 = sub_1A524A064();
  v8 = sub_1A5248874();
  v9 = sub_1A524A064();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v7;
  result = *(v1 + 1);
  v11 = *(v1 + 3);
  *(a1 + 32) = result;
  *(a1 + 48) = v11;
  *(a1 + 64) = 0;
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  return result;
}

uint64_t sub_1A448508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A5247EE4();
  v6 = v30;
  v7 = v30 * 0.5;
  v8 = v31;
  v9 = DWORD1(v31);
  v10 = *(&v31 + 1);
  v11 = v32;

  v12 = sub_1A524BC74();
  *v33 = v30 * 0.5;
  *(v33 + 1) = v30;
  v33[1] = v31;
  *v34 = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v28 = v31;
  *v29 = v32;
  *&v29[10] = *&v34[10];
  v27 = v33[0];
  v13 = *v29;
  v14 = *&v29[16];
  v36 = *v29;
  v37 = *&v29[16];
  v35[0] = v33[0];
  v35[1] = v31;
  *&v38 = v12;
  *(&v38 + 1) = v15;
  v16 = v31;
  *(a3 + 8) = v33[0];
  v17 = v37;
  *(a3 + 72) = v38;
  v18 = v36;
  *(a3 + 56) = v17;
  *a3 = a2;
  *(a3 + 40) = v18;
  *(a3 + 24) = v16;
  v39[2] = v13;
  v39[3] = v14;
  v39[0] = v27;
  v39[1] = v28;
  v40 = v12;
  v41 = v15;
  sub_1A448627C(v33, v20, sub_1A3E73AC0);

  sub_1A448627C(v35, v20, sub_1A3E73A2C);
  sub_1A448632C(v39, sub_1A3E73A2C);
  *v20 = v7;
  *&v20[1] = v6;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = a1;
  v26 = 256;
  return sub_1A448632C(v20, sub_1A3E73AC0);
}

double sub_1A4485248@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1A524B2D4();
  v5 = [v4 colorWithAlphaComponent_];

  v6 = sub_1A524B284();
  sub_1A448508C(v3, v6, v10);

  v7 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v11;
  result = *v10;
  v9 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v9;
  return result;
}

uint64_t PhotosDynamicHeaderLegibilityDebugOverlayPreview.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  result = sub_1A524B694();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4485350@<X0>(void *a1@<X8>)
{
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  result = sub_1A524B694();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A44853A4(uint64_t a1)
{
  v2 = sub_1A448638C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A44853F0(uint64_t a1)
{
  v2 = sub_1A448638C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

double PhotosDynamicHeaderLegibilityDebugOverlayPreview.body.getter@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1A524BC74();
  a1[1] = v5;
  sub_1A4485918();
  sub_1A44854C8(v4, v3, a1 + *(v6 + 44));
  v7 = sub_1A524BC74();
  v9 = v8;
  sub_1A4485A18();
  v11 = a1 + *(v10 + 36);
  result = 1.1448411e243;
  *v11 = xmmword_1A533F750;
  v11[16] = 0;
  *(v11 + 3) = MEMORY[0x1E69E7CC0];
  *(v11 + 4) = v7;
  *(v11 + 5) = v9;
  return result;
}

uint64_t sub_1A44854C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_1A5243054();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v34 - v8;
  v74 = a1;
  v75 = a2;
  *&v35 = a2;
  sub_1A44863E0(0, &qword_1EB13B790, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v72 = type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  v73 = &protocol witness table for PhotosDynamicHeaderMockGeometryModel;
  v48 = a1;
  v49 = a2;
  sub_1A524B6C4();
  v9 = v74;
  v10 = v75;
  v11 = v76;
  swift_getKeyPath();
  v68 = v9;
  v69 = v10;
  v70 = v11;
  sub_1A44863E0(0, &qword_1EB13B798, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v41 = v67;
  v42 = v66;

  v12 = a1;
  v48 = a1;
  v13 = v35;
  v49 = v35;
  sub_1A524B6C4();
  v14 = v74;
  v15 = v75;
  v16 = v76;
  swift_getKeyPath();
  v63 = v14;
  v64 = v15;
  v65 = v16;
  sub_1A524B914();

  v39 = v62;
  v40 = v61;

  v48 = v12;
  v49 = v13;
  sub_1A524B6C4();
  v18 = v74;
  v17 = v75;
  v19 = v76;
  swift_getKeyPath();
  v58 = v18;
  v59 = v17;
  v60 = v19;
  sub_1A524B914();

  v37 = v56;
  v38 = v55;
  v36 = v57;

  v48 = v12;
  v49 = v13;
  sub_1A524B6C4();
  v20 = v74;
  v21 = v75;
  v22 = v76;
  swift_getKeyPath();
  v52 = v20;
  v53 = v21;
  v54 = v22;
  sub_1A524B914();

  v23 = v48;
  v24 = v49;
  v34 = v51;
  v35 = v50;

  v74 = v23;
  v75 = v24;
  v76 = v35;
  v77 = v34;
  v25 = v43;
  sub_1A5243044();
  sub_1A3DEAD00(v71, &v48);
  v27 = v44;
  v26 = v45;
  v28 = *(v45 + 16);
  v29 = v46;
  v28(v44, v25, v46);
  v30 = v47;
  sub_1A3DEAD00(&v48, v47);
  sub_1A44859B0();
  v28((v30 + *(v31 + 48)), v27, v29);
  v32 = *(v26 + 8);
  v32(v25, v29);
  sub_1A3DEAD5C(v71);
  v32(v27, v29);
  return sub_1A3DEAD5C(&v48);
}

void sub_1A4485918()
{
  if (!qword_1EB13B720)
  {
    sub_1A44863E0(255, &qword_1EB13B728, sub_1A44859B0, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B720);
    }
  }
}

void sub_1A44859B0()
{
  if (!qword_1EB13B730)
  {
    sub_1A5243054();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13B730);
    }
  }
}

void sub_1A4485A18()
{
  if (!qword_1EB13B738)
  {
    sub_1A4485F44(255, &qword_1EB13B740, &qword_1EB13B728, sub_1A44859B0, &qword_1EB13B748);
    sub_1A44865E4(255, &qword_1EB122EA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697EC08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B738);
    }
  }
}

unint64_t sub_1A4485AF8()
{
  result = qword_1EB13B750;
  if (!qword_1EB13B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B750);
  }

  return result;
}

void sub_1A4485D60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 248))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A4485E04@<D0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_1A524BC74();
  a1[1] = v5;
  sub_1A4485918();
  sub_1A44854C8(v4, v3, a1 + *(v6 + 44));
  v7 = sub_1A524BC74();
  v9 = v8;
  sub_1A4485A18();
  v11 = a1 + *(v10 + 36);
  result = 1.1448411e243;
  *v11 = xmmword_1A533F750;
  v11[16] = 0;
  *(v11 + 3) = MEMORY[0x1E69E7CC0];
  *(v11 + 4) = v7;
  *(v11 + 5) = v9;
  return result;
}

unint64_t sub_1A4485EC0()
{
  result = qword_1EB13B758;
  if (!qword_1EB13B758)
  {
    sub_1A4485F44(255, &qword_1EB13B760, &qword_1EB13B710, sub_1A4484E0C, &qword_1EB13B768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B758);
  }

  return result;
}

void sub_1A4485F44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_1A44863E0(255, a3, a4, MEMORY[0x1E6981F40]);
    sub_1A4485FE4(a5, a3, a4);
    v9 = sub_1A524B8B4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4485FE4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A44863E0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4486048()
{
  result = qword_1EB13B770;
  if (!qword_1EB13B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B770);
  }

  return result;
}

unint64_t sub_1A448609C()
{
  result = qword_1EB13B778;
  if (!qword_1EB13B778)
  {
    sub_1A4485A18();
    sub_1A448611C();
    sub_1A44861A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B778);
  }

  return result;
}

unint64_t sub_1A448611C()
{
  result = qword_1EB13B780;
  if (!qword_1EB13B780)
  {
    sub_1A4485F44(255, &qword_1EB13B740, &qword_1EB13B728, sub_1A44859B0, &qword_1EB13B748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B780);
  }

  return result;
}

unint64_t sub_1A44861A0()
{
  result = qword_1EB122EB0;
  if (!qword_1EB122EB0)
  {
    sub_1A44865E4(255, &qword_1EB122EA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697EC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122EB0);
  }

  return result;
}

uint64_t sub_1A448627C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44862E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A448632C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A448638C()
{
  result = qword_1EB13B788;
  if (!qword_1EB13B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B788);
  }

  return result;
}

void sub_1A44863E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4486444()
{
  result = qword_1EB13B7A0;
  if (!qword_1EB13B7A0)
  {
    sub_1A44864F4();
    sub_1A44862E4(&qword_1EB13B7C8, sub_1A4486554);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B7A0);
  }

  return result;
}

void sub_1A44864F4()
{
  if (!qword_1EB13B7A8)
  {
    sub_1A4486554();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B7A8);
    }
  }
}

void sub_1A4486554()
{
  if (!qword_1EB13B7B0)
  {
    sub_1A44865E4(255, &qword_1EB13B7B8, &type metadata for AreaColor, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A4486638();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B7B0);
    }
  }
}

void sub_1A44865E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4486638()
{
  result = qword_1EB13B7C0;
  if (!qword_1EB13B7C0)
  {
    sub_1A44865E4(255, &qword_1EB13B7B8, &type metadata for AreaColor, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A44866E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B7C0);
  }

  return result;
}

unint64_t sub_1A44866E4()
{
  result = qword_1EB1C33D0[0];
  if (!qword_1EB1C33D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C33D0);
  }

  return result;
}

unint64_t sub_1A4486738()
{
  result = qword_1EB13B7D0;
  if (!qword_1EB13B7D0)
  {
    sub_1A44867E8();
    sub_1A44862E4(&qword_1EB128040, sub_1A3E73A2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B7D0);
  }

  return result;
}

void sub_1A44867E8()
{
  if (!qword_1EB13B7D8)
  {
    sub_1A3E73A2C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B7D8);
    }
  }
}

uint64_t sub_1A4486848()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4487FC8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadeSocialGroupFeedToolbar();
  sub_1A3FF2F74(v0 + *(v11 + 28), v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A44882B0(v7, v10, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A408BBE8(v10);
  return 0;
}

uint64_t sub_1A4486B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for LemonadeSocialGroupFeedToolbar() + 28);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A4487FC8(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = *(a1 + 40) != 0;
  return result;
}

uint64_t type metadata accessor for LemonadeSocialGroupFeedToolbar()
{
  result = qword_1EB163840;
  if (!qword_1EB163840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4486C38@<X0>(uint64_t a1@<X8>)
{
  sub_1A448718C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A4487240();
  v9 = v8;
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4487FC8(0, &qword_1EB13B820, sub_1A448718C, MEMORY[0x1E69E6720]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  if (*(v1 + 16))
  {
    (*(v5 + 56))(v15, 1, 1, v4, v17);
    v20 = sub_1A4487710(&qword_1EB13B818, sub_1A4487240);
    v48 = v9;
    v49 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v15, v4, OpaqueTypeConformance2);
    sub_1A3CFFD00(v15);
  }

  else
  {
    v22 = sub_1A5249834();
    v44 = &v40;
    MEMORY[0x1EEE9AC00](v22);
    v43 = &v40 - 4;
    *(&v40 - 2) = v1;
    sub_1A4487398();
    v42 = v23;
    sub_1A44874D8();
    v25 = v24;
    sub_1A448760C();
    v40 = v26;
    v27 = sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
    v41 = v9;
    v28 = v13;
    v29 = v27;
    v30 = sub_1A5243474();
    v45 = a1;
    v31 = v30;
    v32 = sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v48 = v25;
    v49 = v31;
    v50 = v29;
    v51 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v48 = v25;
    v49 = v40;
    v50 = v29;
    v51 = v33;
    v13 = v28;
    swift_getOpaqueTypeConformance2();
    sub_1A5248A74();
    v34 = sub_1A4487710(&qword_1EB13B818, sub_1A4487240);
    v35 = v47;
    v36 = v41;
    MEMORY[0x1A5904CD0](v11, v41, v34);
    (*(v5 + 16))(v15, v35, v4);
    (*(v5 + 56))(v15, 0, 1, v4);
    v48 = v36;
    v49 = v34;
    v37 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v15, v4, v37);
    sub_1A3CFFD00(v15);
    (*(v5 + 8))(v35, v4);
    (*(v46 + 8))(v11, v36);
  }

  v38 = sub_1A4487A5C();
  MEMORY[0x1A5904CD0](v19, v13, v38);
  return sub_1A3CFFD00(v19);
}

void sub_1A448718C()
{
  if (!qword_1EB13B7E0)
  {
    sub_1A4487240();
    sub_1A4487710(&qword_1EB13B818, sub_1A4487240);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B7E0);
    }
  }
}

void sub_1A4487240()
{
  if (!qword_1EB13B7E8)
  {
    sub_1A4487398();
    sub_1A44874D8();
    sub_1A448760C();
    sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
    sub_1A5243474();
    sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B7E8);
    }
  }
}

void sub_1A4487398()
{
  if (!qword_1EB13B7F0)
  {
    sub_1A44874D8();
    sub_1A448760C();
    sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
    sub_1A5243474();
    sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B7F0);
    }
  }
}

void sub_1A44874D8()
{
  if (!qword_1EB13B7F8)
  {
    sub_1A4488140(255, &qword_1EB13EAA0, MEMORY[0x1E6981748], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A4487568();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B7F8);
    }
  }
}

unint64_t sub_1A4487568()
{
  result = qword_1EB13B800;
  if (!qword_1EB13B800)
  {
    sub_1A4488140(255, &qword_1EB13EAA0, MEMORY[0x1E6981748], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B800);
  }

  return result;
}

void sub_1A448760C()
{
  if (!qword_1EB13B808)
  {
    sub_1A44874D8();
    sub_1A5243474();
    sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
    sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B808);
    }
  }
}

uint64_t sub_1A4487710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4487758(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSocialGroupFeedToolbar();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A44874D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4488318(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSocialGroupFeedToolbar);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A44882B0(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadeSocialGroupFeedToolbar);
  sub_1A4488140(0, &qword_1EB13EAA0, MEMORY[0x1E6981748], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
  sub_1A4487568();
  sub_1A524B704();
  sub_1A448760C();
  v12 = sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
  v13 = sub_1A5243474();
  v14 = sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v16[0] = v6;
  v16[1] = v13;
  v16[2] = v12;
  v16[3] = v14;
  swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A4487A5C()
{
  result = qword_1EB13B828;
  if (!qword_1EB13B828)
  {
    sub_1A4487FC8(255, &qword_1EB13B820, sub_1A448718C, MEMORY[0x1E69E6720]);
    sub_1A4487240();
    sub_1A4487710(&qword_1EB13B818, sub_1A4487240);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B828);
  }

  return result;
}

void sub_1A4487B80(char a1, NSObject *a2)
{
  if (!a2)
  {
    if (a1)
    {
      sub_1A524D224();
    }

    else
    {
      sub_1A524D244();
    }

    log = *sub_1A3CAA3FC();
    sub_1A5246DF4();
    goto LABEL_11;
  }

  v4 = a2;
  v5 = sub_1A524D244();
  v6 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v6, v5))
  {
    log = v6;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    v9 = a2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 10) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1A3C1C000, log, v5, "Social Group Feed: Error presenting the create new Social Group view with success: %{BOOL}d and error: %@", v7, 0x12u);
    sub_1A3CB65E4(v8);
    MEMORY[0x1A590EEC0](v8, -1, -1);
    MEMORY[0x1A590EEC0](v7, -1, -1);

LABEL_11:
    v11 = log;

    goto LABEL_8;
  }

  v11 = a2;

LABEL_8:
}

double sub_1A4487D64@<D0>(uint64_t a1@<X8>)
{
  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A524B544();
  }

  else
  {
    *&v4 = sub_1A3C38BD4();
    *(&v4 + 1) = v2;
    sub_1A3D5F9DC();
    sub_1A524A464();
  }

  sub_1A5249744();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1A4487E3C()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A44874D8();
  sub_1A4487710(&qword_1EB13B810, sub_1A44874D8);
  sub_1A4487710(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

void sub_1A4487FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4488040()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  if (v0 <= 0x3F)
  {
    sub_1A4488140(319, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4487FC8(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4488140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A4488194()
{
  v1 = *(type metadata accessor for LemonadeSocialGroupFeedToolbar() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  sub_1A4965E9C((*v2)[2], *v2);
}

uint64_t sub_1A44882B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4488318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A44883B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  sub_1A44809C0(0);
  swift_storeEnumTagMultiPayload();
  v10 = a4 + v8[8];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = v8[9];
  *(a4 + v11) = swift_getKeyPath();
  sub_1A4488380(0);
  swift_storeEnumTagMultiPayload();
  v12 = v8[10];
  *(a4 + v12) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v13 = a4 + v8[12];
  sub_1A524B694();
  *v13 = v17;
  *(v13 + 8) = v18;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  type metadata accessor for GenerativeStorySuggestionViewModel(0);
  v15 = a1;
  return sub_1A5247C74();
}

uint64_t sub_1A4488550@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GenerativeStorySuggestionViewModel(0);
  v9 = a1;
  sub_1A417BFB0(v8);
  result = sub_1A417C020(v9, a2, v8);
  *a3 = result;
  return result;
}

uint64_t sub_1A448860C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  v45 = *(v3 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4488C3C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4488DAC(0);
  v9 = v8;
  v38[1] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4488DE8();
  v43 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v40 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A490(0, &qword_1EB13B890, sub_1A4488DE8, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v38 - v15;
  *v7 = sub_1A524BC74();
  v7[1] = v17;
  sub_1A4499D8C(0, &qword_1EB13B898, sub_1A4488CD0);
  sub_1A448919C(v2, v7 + *(v18 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A4489E14(v7, v11, sub_1A4488C3C);
  v19 = &v11[*(v9 + 36)];
  v20 = v57;
  *(v19 + 4) = v56;
  *(v19 + 5) = v20;
  *(v19 + 6) = v58;
  v21 = v53;
  *v19 = v52;
  *(v19 + 1) = v21;
  v22 = v55;
  *(v19 + 2) = v54;
  *(v19 + 3) = v22;
  sub_1A3C52C70(0, &qword_1EB126860);
  v23 = [swift_getObjCClassFromMetadata() sharedInstance];
  [v23 preferInternalEvaluationUI];

  v47 = v2;
  sub_1A4488F44();
  sub_1A44890EC();
  sub_1A4489048(255);
  v25 = v24;
  v26 = sub_1A52498E4();
  v27 = sub_1A449ABF0(&qword_1EB13B888, sub_1A4489048);
  v28 = sub_1A449ABF0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  v48 = v25;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v40;
  sub_1A524A584();
  sub_1A449A92C(v11, sub_1A4488DAC);
  v30 = v2;
  v31 = v2;
  v32 = v39;
  sub_1A448A5D8(v31, v39, type metadata accessor for GenerativeStoryEntryCardCommonView);
  v33 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v34 = swift_allocObject();
  sub_1A4489E14(v32, v34 + v33, type metadata accessor for GenerativeStoryEntryCardCommonView);
  (*(v42 + 32))(v16, v29, v43);
  v35 = &v16[*(v41 + 36)];
  *v35 = sub_1A4489E7C;
  v35[1] = v34;
  v35[2] = 0;
  v35[3] = 0;
  sub_1A448A5D8(v30, v32, type metadata accessor for GenerativeStoryEntryCardCommonView);
  v36 = swift_allocObject();
  sub_1A4489E14(v32, v36 + v33, type metadata accessor for GenerativeStoryEntryCardCommonView);
  sub_1A448A150();
  sub_1A524A634();

  return sub_1A3D001B8(v16);
}

void sub_1A4488C3C()
{
  if (!qword_1EB13B830)
  {
    sub_1A4488CD0();
    sub_1A449ABF0(&qword_1EB13B850, sub_1A4488CD0);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B830);
    }
  }
}

void sub_1A4488CD0()
{
  if (!qword_1EB13B838)
  {
    sub_1A449A014(255, &qword_1EB13B840, type metadata accessor for GenerativeStoryBackgroundView, sub_1A4488D58);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B838);
    }
  }
}

void sub_1A4488DE8()
{
  if (!qword_1EB13B860)
  {
    sub_1A4488DAC(255);
    sub_1A4488F44();
    sub_1A44890EC();
    sub_1A4489048(255);
    sub_1A52498E4();
    sub_1A449ABF0(&qword_1EB13B888, sub_1A4489048);
    sub_1A449ABF0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B860);
    }
  }
}

void sub_1A4488F44()
{
  if (!qword_1EB13B868)
  {
    sub_1A4489048(255);
    sub_1A52498E4();
    sub_1A449ABF0(&qword_1EB13B888, sub_1A4489048);
    sub_1A449ABF0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13B868);
    }
  }
}

void sub_1A448907C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A524B764();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A44890EC()
{
  result = qword_1EB13B878;
  if (!qword_1EB13B878)
  {
    sub_1A4488DAC(255);
    sub_1A449ABF0(&qword_1EB13B880, sub_1A4488C3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B878);
  }

  return result;
}

uint64_t sub_1A448919C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v35 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4488D58(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33[-v9];
  v11 = type metadata accessor for GenerativeStoryBackgroundView();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v36 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33[-v14];
  v16 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  sub_1A449A4FC(0, &qword_1EB13B9F8, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v17 = 1;
  v34 = *(a1 + 16);
  sub_1A44B5B14(v40, v34, 1, 0, v15);
  v18 = (a1 + *(v16 + 48));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v40) = v19;
  v41 = v20;
  sub_1A3C48AEC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v39 == 1)
  {
    sub_1A5247C84();
    v21 = v40;
    *&v5[v3[6]] = swift_getKeyPath();
    sub_1A3E31270(0);
    swift_storeEnumTagMultiPayload();
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    v22 = v3[5];
    *&v5[v22] = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    v23 = &v5[v3[7]];
    v39 = 0;
    sub_1A524B694();
    v24 = v41;
    *v23 = v40;
    v23[1] = v24;
    v25 = &v5[v3[8]];
    v39 = 0;
    sub_1A524B694();
    v26 = v41;
    *v25 = v40;
    v25[1] = v26;
    *&v5[v3[9]] = v21;
    v5[v3[10]] = v34;
    v27 = &v5[v3[11]];
    *v27 = 0;
    v27[1] = 0;
    sub_1A4489E14(v5, v10, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    v17 = 0;
  }

  (*(v35 + 56))(v10, v17, 1, v3);
  v28 = v36;
  sub_1A448A5D8(v15, v36, type metadata accessor for GenerativeStoryBackgroundView);
  v29 = v37;
  sub_1A448A5D8(v10, v37, sub_1A4488D58);
  v30 = v38;
  sub_1A448A5D8(v28, v38, type metadata accessor for GenerativeStoryBackgroundView);
  sub_1A449A014(0, &qword_1EB13B840, type metadata accessor for GenerativeStoryBackgroundView, sub_1A4488D58);
  sub_1A448A5D8(v29, v30 + *(v31 + 48), sub_1A4488D58);
  sub_1A449A92C(v10, sub_1A4488D58);
  sub_1A449A92C(v15, type metadata accessor for GenerativeStoryBackgroundView);
  sub_1A449A92C(v29, sub_1A4488D58);
  return sub_1A449A92C(v28, type metadata accessor for GenerativeStoryBackgroundView);
}

double sub_1A4489674@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  v12 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v13 = v12[5];
  *(a6 + v13) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  sub_1A448A564(a1, a6 + v12[6], &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0], sub_1A449A4FC);
  v14 = (a6 + v12[7]);
  sub_1A524B694();
  *v14 = v18;
  *(v14 + 1) = v19;
  v15 = (a6 + v12[8]);
  sub_1A524B694();
  result = v18;
  *v15 = v18;
  *(v15 + 1) = v19;
  *(a6 + v12[9]) = a2;
  *(a6 + v12[10]) = a3;
  v17 = (a6 + v12[11]);
  *v17 = a4;
  v17[1] = a5;
  return result;
}

uint64_t sub_1A44897E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1A52498E4();
  v19[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A4489048(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448A5D8(a2, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryEntryCardCommonView);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1A4489E14(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativeStoryEntryCardCommonView);
  v19[4] = a1;
  sub_1A4488DAC(0);
  sub_1A44890EC();
  sub_1A524B704();
  sub_1A52498D4();
  sub_1A449ABF0(&qword_1EB13B888, sub_1A4489048);
  sub_1A449ABF0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
  sub_1A524A934();
  (*(v19[0] + 8))(v7, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1A4489B20(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44809C0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  sub_1A448A5D8(a1 + *(v12 + 28), v8, sub_1A44809C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A4489E14(v8, v11, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
  {
    sub_1A5245C94();
  }

  return sub_1A449A92C(v11, sub_1A3D63A58);
}

uint64_t sub_1A4489E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4489E7C()
{
  v1 = type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  if (!*(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 16))
  {
    objc_opt_self();
    sub_1A4036568();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A4489FCC()
{
  v1 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v1;
  sub_1A524BD24();
  sub_1A52483D4();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A448A084()
{
  v2 = *(type metadata accessor for GenerativeStoryEntryCardCommonView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4489FAC(v0 + v3);
}

unint64_t sub_1A448A150()
{
  result = qword_1EB13B8A8;
  if (!qword_1EB13B8A8)
  {
    sub_1A449A490(255, &qword_1EB13B890, sub_1A4488DE8, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A4488DAC(255);
    sub_1A4488F44();
    sub_1A44890EC();
    sub_1A4489048(255);
    sub_1A52498E4();
    sub_1A449ABF0(&qword_1EB13B888, sub_1A4489048);
    sub_1A449ABF0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B8A8);
  }

  return result;
}

uint64_t sub_1A448A314@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A448A5D8(v1 + *(v10 + 24), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A448A510@<X0>(void (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  a1(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A448A564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A448A5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A448A640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v49 = sub_1A5242D14();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v53 = *(v55 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448ACA4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A448CA0C(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A448CA0C;
  v50 = sub_1A410AB24;
  sub_1A449A780(0, &qword_1EB13B9A0, sub_1A448CA0C, sub_1A410AB24, MEMORY[0x1E697E830]);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  sub_1A448CA48();
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448CAEC();
  v54 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_1A524BC74();
  v8[1] = v24;
  sub_1A448F768();
  sub_1A448CB78(v2, v8 + *(v25 + 44));
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A4489E14(v8, v12, sub_1A448ACA4);
  v26 = &v12[*(v10 + 44)];
  v27 = v63;
  *(v26 + 4) = v62;
  *(v26 + 5) = v27;
  *(v26 + 6) = v64;
  v28 = v59;
  *v26 = v58;
  *(v26 + 1) = v28;
  v29 = v61;
  *(v26 + 2) = v60;
  *(v26 + 3) = v29;
  sub_1A448A5D8(v2, v5, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
  v30 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v31 = swift_allocObject();
  sub_1A4489E14(v5, v31 + v30, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
  sub_1A4489E14(v12, v16, sub_1A448CA0C);
  v32 = &v16[*(v14 + 44)];
  *v32 = sub_1A410AEF4;
  *(v32 + 1) = 0;
  *(v32 + 2) = sub_1A44915D4;
  *(v32 + 3) = v31;
  sub_1A44916D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v14) = sub_1A524A064();
  sub_1A4491A20(v16, v20, &qword_1EB13B9A0, v51, v50);
  v41 = &v20[*(v18 + 44)];
  *v41 = v14;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  KeyPath = swift_getKeyPath();
  v43 = v56;
  if (*(v2 + *(v55 + 40)) == 1)
  {
    sub_1A3D61808(v56);
  }

  else
  {
    (*(v48 + 104))(v56, *MEMORY[0x1E69C2200], v49);
  }

  v44 = sub_1A49489EC(v43);
  sub_1A4489E14(v20, v23, sub_1A448CA48);
  v45 = &v23[*(v54 + 36)];
  *v45 = KeyPath;
  v45[8] = v44;
  sub_1A4491B6C(0);
  sub_1A4491BA8();
  sub_1A4491E80(&qword_1EB13B9F0, sub_1A4491B6C, sub_1A4491BA8);
  sub_1A524A584();
  return sub_1A449A92C(v23, sub_1A448CAEC);
}

void sub_1A448ACA4()
{
  if (!qword_1EB13B8B0)
  {
    sub_1A449A780(255, &qword_1EB13B8B8, sub_1A448AD4C, sub_1A448BC1C, MEMORY[0x1E697F960]);
    sub_1A448BFE0();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B8B0);
    }
  }
}

void sub_1A448ADB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4499680(255, &qword_1EB13B8D0);
    v7 = v6;
    sub_1A448AE34(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A448AEB8()
{
  if (!qword_1EB1245B0)
  {
    sub_1A448AF4C(255);
    sub_1A449ABF0(&qword_1EB1211F0, sub_1A448AF4C);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1245B0);
    }
  }
}

void sub_1A448AF80()
{
  if (!qword_1EB123AC8)
  {
    sub_1A448AFE4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB123AC8);
    }
  }
}

void sub_1A448B020()
{
  if (!qword_1EB121668)
  {
    sub_1A448B0B4(255);
    sub_1A449ABF0(&qword_1EB120F90, sub_1A448B0B4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121668);
    }
  }
}

void sub_1A448B0E8()
{
  if (!qword_1EB121808)
  {
    type metadata accessor for TitleAndSubtitleView(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121808);
    }
  }
}

void sub_1A448B174()
{
  if (!qword_1EB124580)
  {
    sub_1A448B208(255);
    sub_1A449ABF0(&qword_1EB120ED0, sub_1A448B208);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124580);
    }
  }
}

void sub_1A448B23C()
{
  if (!qword_1EB121630)
  {
    sub_1A448B2B0();
    sub_1A448B5A0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB121630);
    }
  }
}

void sub_1A448B2B0()
{
  if (!qword_1EB121638)
  {
    sub_1A448B344(255);
    sub_1A449ABF0(&qword_1EB120F50, sub_1A448B344);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121638);
    }
  }
}

void sub_1A448B378()
{
  if (!qword_1EB1217E8)
  {
    sub_1A448B3F0(255);
    sub_1A448B54C(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1217E8);
    }
  }
}

void sub_1A448B42C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A449A780(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A448B4D0()
{
  if (!qword_1EB121370)
  {
    sub_1A449A560(255, &qword_1EB1259D8, type metadata accessor for TitleAndSubtitleView);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121370);
    }
  }
}

void sub_1A448B5A0()
{
  if (!qword_1EB121658)
  {
    sub_1A448B634(255);
    sub_1A449ABF0(&qword_1EB120F80, sub_1A448B634);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121658);
    }
  }
}

void sub_1A448B77C()
{
  if (!qword_1EB121778)
  {
    sub_1A448B810();
    sub_1A449ABF0(&qword_1EB121368, sub_1A448B810);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121778);
    }
  }
}

void sub_1A448B810()
{
  if (!qword_1EB121360)
  {
    sub_1A449A014(255, &qword_1EB1259D0, type metadata accessor for TitleAndSubtitleView, sub_1A448B65C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121360);
    }
  }
}

void sub_1A448B898()
{
  if (!qword_1EB121640)
  {
    sub_1A448B92C(255);
    sub_1A449ABF0(&qword_1EB120F70, sub_1A448B92C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121640);
    }
  }
}

void sub_1A448B954(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A448B9AC(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A448B9AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for TitleAndSubtitleView(255);
    a3(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

void sub_1A448BACC()
{
  if (!qword_1EB1245A0)
  {
    sub_1A448BB60(255);
    sub_1A449ABF0(&qword_1EB121080, sub_1A448BB60);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1245A0);
    }
  }
}

void sub_1A448BB94()
{
  if (!qword_1EB1225E0)
  {
    sub_1A448BA84(255);
    sub_1A448B5A0();
    sub_1A448AFE4(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1225E0);
    }
  }
}

void sub_1A448BCAC()
{
  if (!qword_1EB124590)
  {
    sub_1A448BD40();
    sub_1A449ABF0(&qword_1EB120EE0, sub_1A448BD40);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124590);
    }
  }
}

void sub_1A448BD40()
{
  if (!qword_1EB120ED8)
  {
    sub_1A448BF2C(255, &qword_1EB121650, sub_1A448B5A0, sub_1A448AFE4);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120ED8);
    }
  }
}

void sub_1A448BE10()
{
  if (!qword_1EB13B910)
  {
    sub_1A448BEA4();
    sub_1A449ABF0(&qword_1EB13B930, sub_1A448BEA4);
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B910);
    }
  }
}

void sub_1A448BEA4()
{
  if (!qword_1EB13B918)
  {
    sub_1A448BF2C(255, &qword_1EB13B920, sub_1A448BFAC, sub_1A448B2B0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B918);
    }
  }
}

void sub_1A448BF2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

unint64_t sub_1A448BFE0()
{
  result = qword_1EB13B938;
  if (!qword_1EB13B938)
  {
    sub_1A449A780(255, &qword_1EB13B8B8, sub_1A448AD4C, sub_1A448BC1C, MEMORY[0x1E697F960]);
    sub_1A448C0A4();
    sub_1A448C7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B938);
  }

  return result;
}

unint64_t sub_1A448C0A4()
{
  result = qword_1EB13B940;
  if (!qword_1EB13B940)
  {
    sub_1A448AD4C(255);
    sub_1A448C124();
    sub_1A448C3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B940);
  }

  return result;
}

unint64_t sub_1A448C124()
{
  result = qword_1EB13B948;
  if (!qword_1EB13B948)
  {
    sub_1A448AD94(255);
    sub_1A448C1A4();
    sub_1A448C280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B948);
  }

  return result;
}

unint64_t sub_1A448C1A4()
{
  result = qword_1EB13B950;
  if (!qword_1EB13B950)
  {
    sub_1A4499680(255, &qword_1EB13B8D0);
    sub_1A448C22C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B950);
  }

  return result;
}

unint64_t sub_1A448C22C()
{
  result = qword_1EB125378;
  if (!qword_1EB125378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125378);
  }

  return result;
}

unint64_t sub_1A448C280()
{
  result = qword_1EB13B958;
  if (!qword_1EB13B958)
  {
    sub_1A448AE34(255);
    sub_1A448C330();
    sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B958);
  }

  return result;
}

unint64_t sub_1A448C330()
{
  result = qword_1EB13B960;
  if (!qword_1EB13B960)
  {
    sub_1A448AE7C(255);
    sub_1A449ABF0(&qword_1EB1245B8, sub_1A448AEB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B960);
  }

  return result;
}

unint64_t sub_1A448C3E0()
{
  result = qword_1EB13B968;
  if (!qword_1EB13B968)
  {
    sub_1A448B6B0(255);
    sub_1A448C460();
    sub_1A448C5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B968);
  }

  return result;
}

unint64_t sub_1A448C460()
{
  result = qword_1EB1227C0;
  if (!qword_1EB1227C0)
  {
    sub_1A448B6F8(255);
    sub_1A448C510();
    sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1227C0);
  }

  return result;
}

unint64_t sub_1A448C510()
{
  result = qword_1EB123B38;
  if (!qword_1EB123B38)
  {
    sub_1A448B740(255);
    sub_1A449ABF0(&qword_1EB121780, sub_1A448B77C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B38);
  }

  return result;
}

unint64_t sub_1A448C5C0()
{
  result = qword_1EB13B970;
  if (!qword_1EB13B970)
  {
    sub_1A448BA3C(255);
    sub_1A448C670();
    sub_1A449ABF0(&qword_1EB1245A8, sub_1A448BACC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B970);
  }

  return result;
}

unint64_t sub_1A448C670()
{
  result = qword_1EB1225F0;
  if (!qword_1EB1225F0)
  {
    sub_1A448BA84(255);
    sub_1A449ABF0(&qword_1EB121660, sub_1A448B5A0);
    sub_1A448C720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1225F0);
  }

  return result;
}

unint64_t sub_1A448C720()
{
  result = qword_1EB123AD8;
  if (!qword_1EB123AD8)
  {
    sub_1A448AFE4(255);
    sub_1A449ABF0(&qword_1EB121670, sub_1A448B020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123AD8);
  }

  return result;
}

unint64_t sub_1A448C7D0()
{
  result = qword_1EB13B978;
  if (!qword_1EB13B978)
  {
    sub_1A448BC1C(255);
    sub_1A448C850();
    sub_1A448C930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B978);
  }

  return result;
}

unint64_t sub_1A448C850()
{
  result = qword_1EB13B980;
  if (!qword_1EB13B980)
  {
    sub_1A448BC64(255);
    sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
    sub_1A449ABF0(&qword_1EB124598, sub_1A448BCAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B980);
  }

  return result;
}

unint64_t sub_1A448C930()
{
  result = qword_1EB13B988;
  if (!qword_1EB13B988)
  {
    sub_1A448BDC8(255);
    sub_1A449ABF0(&qword_1EB13B990, sub_1A448BE10);
    sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B988);
  }

  return result;
}

void sub_1A448CA48()
{
  if (!qword_1EB13B9A8)
  {
    sub_1A449A780(255, &qword_1EB13B9A0, sub_1A448CA0C, sub_1A410AB24, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B9A8);
    }
  }
}

void sub_1A448CAEC()
{
  if (!qword_1EB13B9B0)
  {
    sub_1A448CA48();
    sub_1A3C48AEC(255, &qword_1EB122108, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B9B0);
    }
  }
}

uint64_t sub_1A448CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v223 = a2;
  v3 = MEMORY[0x1E697F948];
  sub_1A449A780(0, &qword_1EB13BAA8, sub_1A448BE10, sub_1A448B174, MEMORY[0x1E697F948]);
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v175 = &v170 - v5;
  sub_1A448BDC8(0);
  v210 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448BE10();
  v174 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v171 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448BCAC();
  v202 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v190 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A780(0, &qword_1EB13BAB0, sub_1A448BC64, sub_1A448BDC8, v3);
  v207 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v209 = &v170 - v13;
  sub_1A449A780(0, &qword_1EB13BAB8, sub_1A448B898, sub_1A448BCAC, v3);
  v199 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v200 = &v170 - v15;
  sub_1A448BC64(0);
  v208 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v201 = &v170 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448BC1C(0);
  v229 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v211 = &v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448BACC();
  v188 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A780(0, &qword_1EB13BAC0, sub_1A448BA84, sub_1A448BACC, v3);
  v185 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v187 = &v170 - v23;
  sub_1A448BA3C(0);
  v197 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v189 = &v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448BA84(0);
  v186 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v177 = &v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448B898();
  v212 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v183 = (&v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A449A780(0, &qword_1EB13BAC8, sub_1A448B6F8, sub_1A448BA3C, v3);
  v194 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v196 = &v170 - v31;
  sub_1A449A780(0, &qword_1EB122C30, sub_1A448B740, sub_1A448B898, v3);
  v180 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v181 = &v170 - v33;
  sub_1A448B6F8(0);
  v195 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v182 = &v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448B6B0(0);
  v221 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v198 = &v170 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448B740(0);
  v179 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v172 = &v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448B174();
  v213 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v184 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A780(0, &qword_1EB13BAD0, sub_1A448AE7C, sub_1A448B174, v3);
  v204 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v205 = &v170 - v43;
  sub_1A448AE34(0);
  v216 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v206 = &v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448AEB8();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v192 = &v170 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448AE7C(0);
  v203 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v191 = &v170 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v193 = &v170 - v51;
  sub_1A449A780(0, &qword_1EB13BAD8, sub_1A448AD4C, sub_1A448BC1C, v3);
  v226 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v170 - v53;
  sub_1A449A780(0, &qword_1EB13BAE0, sub_1A448AD94, sub_1A448B6B0, v3);
  v218 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v220 = &v170 - v56;
  sub_1A448ADB4(0, &qword_1EB13BAE8, MEMORY[0x1E697F948]);
  v214 = v57;
  MEMORY[0x1EEE9AC00](v57);
  v215 = (&v170 - v58);
  sub_1A448AD94(0);
  v219 = v59;
  MEMORY[0x1EEE9AC00](v59);
  v217 = &v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448AD4C(0);
  v227 = v61;
  MEMORY[0x1EEE9AC00](v61);
  v222 = &v170 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A64C();
  v64 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v225 = &v170 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1A5249234();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v170 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1A5242D14();
  v224 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v71 = &v170 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A3D61808(v71);
  v73 = *a1;
  v74 = a1;
  v75 = *(a1 + 8);
  v228 = v54;
  if (v75 == 1)
  {
    v240 = v73 & 1;
  }

  else
  {

    sub_1A524D254();
    v76 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v73, 0);
    (*(v67 + 8))(v69, v66);
    LOBYTE(v73) = v240;
  }

  v77 = v74;
  v78 = *(v74 + *(v72 + 40));
  v79 = *(v64 + 48);
  v80 = *(v64 + 64);
  v81 = v224;
  v82 = v225;
  v83 = v230;
  (*(v224 + 32))(v225, v71, v230);
  v82[v79] = v73 & 1;
  v82[v80] = v78;
  if (v78 == 3)
  {
    sub_1A4958BC0(3, &v236);
    v103 = *(&v236 + 1);
    v104 = v237;
    v105 = *(&v237 + 1);
    v106 = v238;
    v231 = v236;
    v232 = *(&v236 + 1);
    v233 = v237;
    v234 = *(&v237 + 1);
    LOBYTE(v235) = v238;
    HIBYTE(v235) = 1;
    sub_1A3D35B8C(*(&v236 + 1), v237);
    sub_1A3D35B8C(v105, v106);
    sub_1A448C22C();
    sub_1A5249744();
    v107 = v238;
    v108 = v239;
    v109 = v237;
    v110 = v215;
    *v215 = v236;
    v110[1] = v109;
    *(v110 + 32) = v107;
    *(v110 + 33) = v108;
    swift_storeEnumTagMultiPayload();
    sub_1A4499680(0, &qword_1EB13B8D0);
    sub_1A448C1A4();
    sub_1A448C280();
    v111 = v82;
    v112 = v217;
    sub_1A5249744();
    sub_1A448A5D8(v112, v220, sub_1A448AD94);
    swift_storeEnumTagMultiPayload();
    sub_1A448C124();
    sub_1A448C3E0();
    v113 = v222;
    sub_1A5249744();
    sub_1A449A92C(v112, sub_1A448AD94);
    sub_1A448A5D8(v113, v228, sub_1A448AD4C);
    swift_storeEnumTagMultiPayload();
    sub_1A448C0A4();
    sub_1A448C7D0();
    sub_1A5249744();
    sub_1A3C53AEC(v103, v104);
    sub_1A3C53AEC(v105, v106);
    sub_1A449A92C(v113, sub_1A448AD4C);
    return (*(v81 + 8))(v111, v230);
  }

  v84 = v82[v79];
  if (!v78 && shouldUseNewCollectionsLayout()())
  {
    sub_1A4958BC0(0, &v236);
    v85 = *(&v236 + 1);
    v86 = v237;
    v87 = *(&v237 + 1);
    v88 = v238;
    v231 = v236;
    v232 = *(&v236 + 1);
    v233 = v237;
    v234 = *(&v237 + 1);
    v235 = v238;
    sub_1A3D35B8C(*(&v236 + 1), v237);
    sub_1A3D35B8C(v87, v88);
    sub_1A448C22C();
    sub_1A5249744();
    v89 = v238;
    v90 = v239;
    v91 = v237;
    v92 = v215;
    *v215 = v236;
    v92[1] = v91;
    *(v92 + 32) = v89;
    *(v92 + 33) = v90;
    swift_storeEnumTagMultiPayload();
    sub_1A4499680(0, &qword_1EB13B8D0);
    sub_1A448C1A4();
    sub_1A448C280();
    v93 = v217;
    sub_1A5249744();
    sub_1A448A5D8(v93, v220, sub_1A448AD94);
    swift_storeEnumTagMultiPayload();
    sub_1A448C124();
    sub_1A448C3E0();
    v94 = v222;
    sub_1A5249744();
    sub_1A449A92C(v93, sub_1A448AD94);
    sub_1A448A5D8(v94, v228, sub_1A448AD4C);
    swift_storeEnumTagMultiPayload();
    sub_1A448C0A4();
    sub_1A448C7D0();
    sub_1A5249744();
    sub_1A3C53AEC(v85, v86);
    sub_1A3C53AEC(v87, v88);
    sub_1A449A92C(v94, sub_1A448AD4C);
    return (*(v81 + 8))(v82, v230);
  }

  v96 = *(v81 + 88);
  v97 = v96(v82, v83);
  if (v97 != *MEMORY[0x1E69C2200])
  {
    if (v97 == *MEMORY[0x1E69C21F0])
    {
      if (!v78)
      {
        v115 = v177;
        sub_1A448FD64(v177);
        sub_1A448A5D8(v115, v187, sub_1A448BA84);
        swift_storeEnumTagMultiPayload();
        sub_1A448C670();
        sub_1A449ABF0(&qword_1EB1245A8, sub_1A448BACC);
        v151 = v189;
        sub_1A5249744();
        sub_1A448A5D8(v151, v196, sub_1A448BA3C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C460();
        sub_1A448C5C0();
        v152 = v198;
        sub_1A5249744();
        sub_1A449A92C(v151, sub_1A448BA3C);
        sub_1A448A5D8(v152, v220, sub_1A448B6B0);
        swift_storeEnumTagMultiPayload();
        sub_1A448C124();
        sub_1A448C3E0();
        v153 = v222;
        sub_1A5249744();
        sub_1A449A92C(v152, sub_1A448B6B0);
        sub_1A448A5D8(v153, v228, sub_1A448AD4C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C0A4();
        sub_1A448C7D0();
        sub_1A5249744();
        sub_1A449A92C(v153, sub_1A448AD4C);
        v131 = sub_1A448BA84;
        goto LABEL_35;
      }

      if (v78 != 1)
      {
        v154 = sub_1A524A044();
        v115 = v178;
        *v178 = v154;
        sub_1A449A710(0, &qword_1EB13BB10, sub_1A448BB60);
        sub_1A449046C(v74, v115 + *(v155 + 44));
        sub_1A448A5D8(v115, v187, sub_1A448BACC);
        swift_storeEnumTagMultiPayload();
        sub_1A448C670();
        sub_1A449ABF0(&qword_1EB1245A8, sub_1A448BACC);
        v156 = v189;
        sub_1A5249744();
        sub_1A448A5D8(v156, v196, sub_1A448BA3C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C460();
        sub_1A448C5C0();
        v157 = v198;
        sub_1A5249744();
        sub_1A449A92C(v156, sub_1A448BA3C);
        sub_1A448A5D8(v157, v220, sub_1A448B6B0);
        swift_storeEnumTagMultiPayload();
        sub_1A448C124();
        sub_1A448C3E0();
        v158 = v222;
        sub_1A5249744();
        sub_1A449A92C(v157, sub_1A448B6B0);
        sub_1A448A5D8(v158, v228, sub_1A448AD4C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C0A4();
        sub_1A448C7D0();
        sub_1A5249744();
        sub_1A449A92C(v158, sub_1A448AD4C);
        v131 = sub_1A448BACC;
        goto LABEL_35;
      }

      v114 = sub_1A5249574();
      v115 = v183;
      *v183 = v114;
      *(v115 + 8) = 0;
      *(v115 + 16) = 1;
      sub_1A4499D8C(0, &qword_1EB13BB08, sub_1A448B92C);
      sub_1A4492028(v74, (v115 + *(v116 + 44)));
      sub_1A448A5D8(v115, v200, sub_1A448B898);
      swift_storeEnumTagMultiPayload();
      sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
      sub_1A449ABF0(&qword_1EB124598, sub_1A448BCAC);
      v117 = v201;
      sub_1A5249744();
      sub_1A448A5D8(v117, v209, sub_1A448BC64);
      swift_storeEnumTagMultiPayload();
      sub_1A448C850();
      sub_1A448C930();
      v118 = v211;
      sub_1A5249744();
      sub_1A449A92C(v117, sub_1A448BC64);
      sub_1A448A5D8(v118, v228, sub_1A448BC1C);
      swift_storeEnumTagMultiPayload();
      sub_1A448C0A4();
      sub_1A448C7D0();
      sub_1A5249744();
      v119 = sub_1A448BC1C;
    }

    else
    {
      if (v97 != *MEMORY[0x1E69C2210])
      {
        if (v78 != 1)
        {
          goto LABEL_30;
        }

        v140 = (v96(v82, v83) == *MEMORY[0x1E69C21F8]) & v84;
        v141 = sub_1A524A044();
        if (v140 != 1)
        {
          v166 = v184;
          *v184 = v141;
          sub_1A449A710(0, &qword_1EB13BAF0, sub_1A448B208);
          sub_1A4490EE8(v74, v166 + *(v167 + 44));
          sub_1A448A5D8(v166, v175, sub_1A448B174);
          swift_storeEnumTagMultiPayload();
          sub_1A449ABF0(&qword_1EB13B990, sub_1A448BE10);
          sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
          v168 = v176;
          sub_1A5249744();
          sub_1A448A5D8(v168, v209, sub_1A448BDC8);
          swift_storeEnumTagMultiPayload();
          sub_1A448C850();
          sub_1A448C930();
          v169 = v211;
          sub_1A5249744();
          sub_1A449A92C(v168, sub_1A448BDC8);
          sub_1A448A5D8(v169, v228, sub_1A448BC1C);
          swift_storeEnumTagMultiPayload();
          sub_1A448C0A4();
          sub_1A448C7D0();
          sub_1A5249744();
          sub_1A449A92C(v169, sub_1A448BC1C);
          sub_1A449A92C(v166, sub_1A448B174);
          v149 = sub_1A449A64C;
          v150 = v82;
          return sub_1A449A92C(v150, v149);
        }

        v115 = v171;
        *v171 = v141;
        sub_1A449A710(0, &qword_1EB13BAF8, sub_1A448BEA4);
        sub_1A44908E8(v74, v115 + *(v142 + 44));
        sub_1A448A5D8(v115, v175, sub_1A448BE10);
        swift_storeEnumTagMultiPayload();
        sub_1A449ABF0(&qword_1EB13B990, sub_1A448BE10);
        sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
        v143 = v176;
        sub_1A5249744();
        sub_1A448A5D8(v143, v209, sub_1A448BDC8);
        swift_storeEnumTagMultiPayload();
        sub_1A448C850();
        sub_1A448C930();
        v144 = v211;
        sub_1A5249744();
        sub_1A449A92C(v143, sub_1A448BDC8);
        sub_1A448A5D8(v144, v228, sub_1A448BC1C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C0A4();
        sub_1A448C7D0();
        sub_1A5249744();
        sub_1A449A92C(v144, sub_1A448BC1C);
        v131 = sub_1A448BE10;
        goto LABEL_35;
      }

      if (v78 == 2)
      {
        goto LABEL_30;
      }

      if (v78 != 1)
      {
        v161 = v228;
        v162 = v172;
        sub_1A448FA74(v172);
        sub_1A448A5D8(v162, v181, sub_1A448B740);
        swift_storeEnumTagMultiPayload();
        sub_1A448C510();
        sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
        v163 = v182;
        sub_1A5249744();
        sub_1A448A5D8(v163, v196, sub_1A448B6F8);
        swift_storeEnumTagMultiPayload();
        sub_1A448C460();
        sub_1A448C5C0();
        v164 = v198;
        sub_1A5249744();
        sub_1A449A92C(v163, sub_1A448B6F8);
        sub_1A448A5D8(v164, v220, sub_1A448B6B0);
        swift_storeEnumTagMultiPayload();
        sub_1A448C124();
        sub_1A448C3E0();
        v165 = v222;
        sub_1A5249744();
        sub_1A449A92C(v164, sub_1A448B6B0);
        sub_1A448A5D8(v165, v161, sub_1A448AD4C);
        swift_storeEnumTagMultiPayload();
        sub_1A448C0A4();
        sub_1A448C7D0();
        sub_1A5249744();
        sub_1A449A92C(v165, sub_1A448AD4C);
        v159 = sub_1A448B740;
        v160 = v162;
        goto LABEL_36;
      }

      v127 = sub_1A5249574();
      v115 = v183;
      *v183 = v127;
      *(v115 + 8) = 0;
      *(v115 + 16) = 1;
      sub_1A4499D8C(0, &qword_1EB13BB08, sub_1A448B92C);
      sub_1A4492028(v74, (v115 + *(v128 + 44)));
      sub_1A448A5D8(v115, v181, sub_1A448B898);
      swift_storeEnumTagMultiPayload();
      sub_1A448C510();
      sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
      v129 = v182;
      sub_1A5249744();
      sub_1A448A5D8(v129, v196, sub_1A448B6F8);
      swift_storeEnumTagMultiPayload();
      sub_1A448C460();
      sub_1A448C5C0();
      v130 = v198;
      sub_1A5249744();
      sub_1A449A92C(v129, sub_1A448B6F8);
      sub_1A448A5D8(v130, v220, sub_1A448B6B0);
      swift_storeEnumTagMultiPayload();
      sub_1A448C124();
      sub_1A448C3E0();
      v118 = v222;
      sub_1A5249744();
      sub_1A449A92C(v130, sub_1A448B6B0);
      sub_1A448A5D8(v118, v228, sub_1A448AD4C);
      swift_storeEnumTagMultiPayload();
      sub_1A448C0A4();
      sub_1A448C7D0();
      sub_1A5249744();
      v119 = sub_1A448AD4C;
    }

    sub_1A449A92C(v118, v119);
    v131 = sub_1A448B898;
LABEL_35:
    v159 = v131;
    v160 = v115;
LABEL_36:
    sub_1A449A92C(v160, v159);
    return (*(v81 + 8))(v82, v83);
  }

  if (!v84)
  {
    if (v78 <= 1)
    {
      (*(v81 + 8))(v82, v83);
      v120 = sub_1A524A044();
      v121 = v184;
      *v184 = v120;
      sub_1A449A710(0, &qword_1EB13BAF0, sub_1A448B208);
      sub_1A4490EE8(v74, v121 + *(v122 + 44));
      sub_1A448A5D8(v121, v205, sub_1A448B174);
      swift_storeEnumTagMultiPayload();
      sub_1A448C330();
      sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
      v123 = v206;
      sub_1A5249744();
      sub_1A448A5D8(v123, v215, sub_1A448AE34);
      swift_storeEnumTagMultiPayload();
      sub_1A4499680(0, &qword_1EB13B8D0);
      sub_1A448C1A4();
      sub_1A448C280();
      v124 = v217;
      sub_1A5249744();
      sub_1A449A92C(v123, sub_1A448AE34);
      sub_1A448A5D8(v124, v220, sub_1A448AD94);
      swift_storeEnumTagMultiPayload();
      sub_1A448C124();
      sub_1A448C3E0();
      v125 = v222;
      sub_1A5249744();
      sub_1A449A92C(v124, sub_1A448AD94);
      sub_1A448A5D8(v125, v228, sub_1A448AD4C);
      swift_storeEnumTagMultiPayload();
      sub_1A448C0A4();
      sub_1A448C7D0();
      sub_1A5249744();
      sub_1A449A92C(v125, sub_1A448AD4C);
      v126 = sub_1A448B174;
LABEL_31:
      v149 = v126;
      v150 = v121;
      return sub_1A449A92C(v150, v149);
    }

LABEL_30:
    (*(v81 + 8))(v82, v83);
    v145 = sub_1A524A044();
    v121 = v190;
    *v190 = v145;
    sub_1A449A710(0, &qword_1EB13BB00, sub_1A448BD40);
    sub_1A4491218(v74, v121 + *(v146 + 44));
    sub_1A448A5D8(v121, v200, sub_1A448BCAC);
    swift_storeEnumTagMultiPayload();
    sub_1A449ABF0(&qword_1EB121648, sub_1A448B898);
    sub_1A449ABF0(&qword_1EB124598, sub_1A448BCAC);
    v147 = v201;
    sub_1A5249744();
    sub_1A448A5D8(v147, v209, sub_1A448BC64);
    swift_storeEnumTagMultiPayload();
    sub_1A448C850();
    sub_1A448C930();
    v148 = v211;
    sub_1A5249744();
    sub_1A449A92C(v147, sub_1A448BC64);
    sub_1A448A5D8(v148, v228, sub_1A448BC1C);
    swift_storeEnumTagMultiPayload();
    sub_1A448C0A4();
    sub_1A448C7D0();
    sub_1A5249744();
    sub_1A449A92C(v148, sub_1A448BC1C);
    v126 = sub_1A448BCAC;
    goto LABEL_31;
  }

  v98 = sub_1A524A044();
  v99 = v192;
  *v192 = v98;
  sub_1A449A710(0, &qword_1EB13BB18, sub_1A448AF4C);
  sub_1A448F814(v77, v99 + *(v100 + 44));
  v101 = sub_1A5248894();
  if (v78 == 1)
  {
    v102 = sub_1A524A074();
  }

  else
  {
    v102 = sub_1A524A0A4();
  }

  v132 = v102;
  v133 = v228;
  v134 = v217;
  v135 = v191;
  sub_1A4489E14(v99, v191, sub_1A448AEB8);
  v136 = v135 + *(v203 + 36);
  *v136 = v101;
  *(v136 + 8) = v132;
  v137 = v193;
  sub_1A4489E14(v135, v193, sub_1A448AE7C);
  sub_1A448A5D8(v137, v205, sub_1A448AE7C);
  swift_storeEnumTagMultiPayload();
  sub_1A448C330();
  sub_1A449ABF0(&qword_1EB124588, sub_1A448B174);
  v138 = v206;
  sub_1A5249744();
  sub_1A448A5D8(v138, v215, sub_1A448AE34);
  swift_storeEnumTagMultiPayload();
  sub_1A4499680(0, &qword_1EB13B8D0);
  sub_1A448C1A4();
  sub_1A448C280();
  sub_1A5249744();
  sub_1A449A92C(v138, sub_1A448AE34);
  sub_1A448A5D8(v134, v220, sub_1A448AD94);
  swift_storeEnumTagMultiPayload();
  sub_1A448C124();
  sub_1A448C3E0();
  v139 = v222;
  sub_1A5249744();
  sub_1A449A92C(v134, sub_1A448AD94);
  sub_1A448A5D8(v139, v133, sub_1A448AD4C);
  swift_storeEnumTagMultiPayload();
  sub_1A448C0A4();
  sub_1A448C7D0();
  sub_1A5249744();
  sub_1A449A92C(v139, sub_1A448AD4C);
  sub_1A449A92C(v137, sub_1A448AE7C);
  return (*(v81 + 8))(v82, v230);
}

void sub_1A448F768()
{
  if (!qword_1EB13B9B8)
  {
    sub_1A449A780(255, &qword_1EB13B8B8, sub_1A448AD4C, sub_1A448BC1C, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13B9B8);
    }
  }
}

uint64_t sub_1A448F814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A448AFE4(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  *v16 = sub_1A5249574();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_1A4499D8C(0, &qword_1EB13BB20, sub_1A448B0B4);
  v18 = v17;
  sub_1A44949B0(1, a1, &v16[*(v17 + 44)]);
  v19 = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v20 = &v16[*(v5 + 44)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  *v13 = sub_1A5249574();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A44949B0(0, a1, &v13[*(v18 + 44)]);
  LOBYTE(v18) = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v25 = &v13[*(v5 + 44)];
  *v25 = v18;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_1A448A5D8(v16, v10, sub_1A448AFE4);
  sub_1A448A5D8(v13, v7, sub_1A448AFE4);
  sub_1A448A5D8(v10, a2, sub_1A448AFE4);
  sub_1A448AF80();
  sub_1A448A5D8(v7, a2 + *(v30 + 48), sub_1A448AFE4);
  sub_1A449A92C(v13, sub_1A448AFE4);
  sub_1A449A92C(v16, sub_1A448AFE4);
  sub_1A449A92C(v7, sub_1A448AFE4);
  return sub_1A449A92C(v10, sub_1A448AFE4);
}

void sub_1A448FA74(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  sub_1A448B77C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v15 = (v1 + *(v14 + 28));
  v16 = *v15;
  v17 = v15[1];
  v31[2] = v16;
  v31[3] = v17;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v31[1] < 450.0 || *(v1 + *(v14 + 40)))
  {
    v18 = 0x4038000000000000;
  }

  else
  {
    v18 = 0x4040000000000000;
  }

  *v13 = sub_1A5249574();
  *(v13 + 1) = v18;
  v13[16] = 0;
  sub_1A4499D8C(0, &qword_1EB13BB30, sub_1A448B810);
  sub_1A449412C(v2, &v13[*(v19 + 44)]);
  v20 = sub_1A524A074();
  sub_1A3D61808(v10);
  (*(v5 + 32))(v7, v10, v4);
  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x1E69C2210])
  {
    (*(v5 + 8))(v7, v4, 30.0);
  }

  sub_1A5247BC4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1A4489E14(v13, a1, sub_1A448B77C);
  sub_1A448B740(0);
  v30 = a1 + *(v29 + 36);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
}

uint64_t sub_1A448FD64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v57 - v6;
  v7 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  sub_1A448B020();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448AFE4(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v57 - v21;
  sub_1A449A780(0, &qword_1EB13BB38, sub_1A448B5A0, sub_1A448AFE4, MEMORY[0x1E697F948]);
  v65 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v66 = &v57 - v23;
  sub_1A448B5A0();
  v67 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v28 = (v1 + *(v27 + 28));
  v29 = *v28;
  v30 = v28[1];
  v69 = v29;
  v70 = v30;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v68 < 250.0 || *(v1 + *(v27 + 40)) == 1)
  {
    v58 = v17;
    v59 = a1;
    *v15 = sub_1A5249574();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_1A4499D8C(0, &qword_1EB13BB20, sub_1A448B0B4);
    v32 = &v15[*(v31 + 44)];
    sub_1A449377C(v12);
    sub_1A448A5D8(v12, v9, type metadata accessor for TitleAndSubtitleView);
    *v32 = 0;
    v32[8] = 1;
    sub_1A448B0E8();
    v34 = v33;
    sub_1A448A5D8(v9, &v32[*(v33 + 48)], type metadata accessor for TitleAndSubtitleView);
    v35 = &v32[*(v34 + 64)];
    *v35 = 0;
    v35[8] = 1;
    sub_1A449A92C(v12, type metadata accessor for TitleAndSubtitleView);
    sub_1A449A92C(v9, type metadata accessor for TitleAndSubtitleView);
    v36 = sub_1A524A074();
    v37 = v60;
    sub_1A3D61808(v60);
    v39 = v61;
    v38 = v62;
    v40 = v63;
    (*(v62 + 32))(v61, v37, v63);
    if ((*(v38 + 88))(v39, v40) != *MEMORY[0x1E69C2210])
    {
      (*(v38 + 8))(v39, v40);
    }

    v41 = v58;
    sub_1A5247BC4();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    sub_1A4489E14(v15, v19, sub_1A448B020);
    v50 = &v19[*(v41 + 36)];
    *v50 = v36;
    *(v50 + 1) = v43;
    *(v50 + 2) = v45;
    *(v50 + 3) = v47;
    *(v50 + 4) = v49;
    v50[40] = 0;
    v51 = v19;
    v52 = v64;
    sub_1A4489E14(v51, v64, sub_1A448AFE4);
    sub_1A448A5D8(v52, v66, sub_1A448AFE4);
    swift_storeEnumTagMultiPayload();
    sub_1A449ABF0(&qword_1EB121660, sub_1A448B5A0);
    sub_1A448C720();
    sub_1A5249744();
    v53 = sub_1A448AFE4;
    v54 = v52;
  }

  else
  {
    *v26 = sub_1A5249574();
    *(v26 + 1) = 0;
    v26[16] = 1;
    sub_1A4499D8C(0, &qword_1EB124468, sub_1A448B634);
    sub_1A449325C(v1, &v26[*(v55 + 44)]);
    sub_1A448A5D8(v26, v66, sub_1A448B5A0);
    swift_storeEnumTagMultiPayload();
    sub_1A449ABF0(&qword_1EB121660, sub_1A448B5A0);
    sub_1A448C720();
    sub_1A5249744();
    v53 = sub_1A448B5A0;
    v54 = v26;
  }

  return sub_1A449A92C(v54, v53);
}

uint64_t sub_1A449046C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_1A448AFE4(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v48 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  sub_1A448B5A0();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  sub_1A448BA84(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v55 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v50 = &v48 - v22;
  sub_1A448FD64(&v48 - v22);
  *v18 = sub_1A5249574();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1A4499D8C(0, &qword_1EB124468, sub_1A448B634);
  v25 = &v18[*(v24 + 44)];
  v49 = v18;
  sub_1A44939A4(a1, v25);
  *v13 = sub_1A5249574();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A4499D8C(0, &qword_1EB13BB20, sub_1A448B0B4);
  v27 = v26;
  sub_1A44949B0(1, a1, &v13[*(v26 + 44)]);
  v28 = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v29 = &v13[*(v4 + 44)];
  *v29 = v28;
  *(v29 + 1) = v30;
  *(v29 + 2) = v31;
  *(v29 + 3) = v32;
  *(v29 + 4) = v33;
  v29[40] = 0;
  *v10 = sub_1A5249574();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_1A44949B0(0, a1, &v10[*(v27 + 44)]);
  LOBYTE(v27) = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v34 = &v10[*(v4 + 44)];
  *v34 = v27;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = v55;
  sub_1A448A5D8(v23, v55, sub_1A448BA84);
  v40 = v51;
  sub_1A448A5D8(v18, v51, sub_1A448B5A0);
  v41 = v52;
  sub_1A448A5D8(v13, v52, sub_1A448AFE4);
  v42 = v53;
  sub_1A448A5D8(v10, v53, sub_1A448AFE4);
  v43 = v39;
  v44 = v54;
  sub_1A448A5D8(v43, v54, sub_1A448BA84);
  sub_1A448BB94();
  v46 = v45;
  sub_1A448A5D8(v40, v44 + *(v45 + 48), sub_1A448B5A0);
  sub_1A448A5D8(v41, v44 + *(v46 + 64), sub_1A448AFE4);
  sub_1A448A5D8(v42, v44 + *(v46 + 80), sub_1A448AFE4);
  sub_1A449A92C(v10, sub_1A448AFE4);
  sub_1A449A92C(v13, sub_1A448AFE4);
  sub_1A449A92C(v49, sub_1A448B5A0);
  sub_1A449A92C(v50, sub_1A448BA84);
  sub_1A449A92C(v42, sub_1A448AFE4);
  sub_1A449A92C(v41, sub_1A448AFE4);
  sub_1A449A92C(v40, sub_1A448B5A0);
  return sub_1A449A92C(v55, sub_1A448BA84);
}

uint64_t sub_1A44908E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_1A448B2B0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v56 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  sub_1A448BFAC(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v26 = (a1 + *(v25 + 32));
  v27 = *v26;
  v28 = v26[1];
  v62 = v27;
  v63 = v28;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v29.n128_f64[0] = v61;
  v30 = 1;
  if (v61 >= 350.0)
  {
    *v19 = sub_1A5249574();
    *(v19 + 1) = 0;
    v19[16] = 1;
    sub_1A4499D8C(0, &qword_1EB13BB28, sub_1A448B344);
    sub_1A4492914(a1, 0, 3, &v19[*(v31 + 44)]);
    sub_1A4489E14(v19, v24, sub_1A448B2B0);
    v30 = 0;
  }

  v32 = (*(v5 + 56))(v24, v30, 1, v4, v29);
  v33 = *(a1 + *(v25 + 36));
  v34 = *(*v33 + 464);
  if (v34(v32))
  {
    v35 = (*(*v33 + 216))();
    v37 = v36;

    v38 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v38 = v35 & 0xFFFFFFFFFFFFLL;
    }

    v39 = v38 == 0;
  }

  else
  {
    v39 = 0;
  }

  *v14 = sub_1A5249574();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1A4499D8C(0, &qword_1EB13BB28, sub_1A448B344);
  v41 = v40;
  sub_1A4492914(a1, v39, 3, &v14[*(v40 + 44)]);
  v42 = sub_1A4489E14(v14, v60, sub_1A448B2B0);
  if (v34(v42))
  {
    v43 = (*(*v33 + 216))();
    v45 = v44;

    v46 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v46 = v43 & 0xFFFFFFFFFFFFLL;
    }

    v47 = v46 == 0;
  }

  else
  {
    v47 = 0;
  }

  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A4492914(a1, v47, 2, &v9[*(v41 + 44)]);
  v48 = v57;
  sub_1A4489E14(v9, v57, sub_1A448B2B0);
  v49 = v56;
  sub_1A448A5D8(v24, v56, sub_1A448BFAC);
  v50 = v60;
  sub_1A448A5D8(v60, v19, sub_1A448B2B0);
  v51 = v59;
  sub_1A448A5D8(v48, v59, sub_1A448B2B0);
  v52 = v58;
  sub_1A448A5D8(v49, v58, sub_1A448BFAC);
  sub_1A448BF2C(0, &qword_1EB13B920, sub_1A448BFAC, sub_1A448B2B0);
  v54 = v53;
  sub_1A448A5D8(v19, v52 + *(v53 + 48), sub_1A448B2B0);
  sub_1A448A5D8(v51, v52 + *(v54 + 64), sub_1A448B2B0);
  sub_1A449A92C(v48, sub_1A448B2B0);
  sub_1A449A92C(v50, sub_1A448B2B0);
  sub_1A449A92C(v24, sub_1A448BFAC);
  sub_1A449A92C(v51, sub_1A448B2B0);
  sub_1A449A92C(v19, sub_1A448B2B0);
  return sub_1A449A92C(v49, sub_1A448BFAC);
}

uint64_t sub_1A4490EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A448B5A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  sub_1A448B2B0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  *v21 = sub_1A5249574();
  *(v21 + 1) = 0;
  v21[16] = 1;
  sub_1A4499D8C(0, &qword_1EB13BB28, sub_1A448B344);
  v23 = v22;
  sub_1A4492914(a1, 0, 3, &v21[*(v22 + 44)]);
  *v18 = sub_1A5249574();
  *(v18 + 1) = 0;
  v18[16] = 1;
  sub_1A4492914(a1, 0, 2, &v18[*(v23 + 44)]);
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A4499D8C(0, &qword_1EB124468, sub_1A448B634);
  sub_1A44939A4(a1, &v9[*(v24 + 44)]);
  sub_1A448A5D8(v21, v15, sub_1A448B2B0);
  sub_1A448A5D8(v18, v12, sub_1A448B2B0);
  sub_1A448A5D8(v9, v6, sub_1A448B5A0);
  sub_1A448A5D8(v15, a2, sub_1A448B2B0);
  sub_1A448B23C();
  v26 = v25;
  sub_1A448A5D8(v12, a2 + *(v25 + 48), sub_1A448B2B0);
  sub_1A448A5D8(v6, a2 + *(v26 + 64), sub_1A448B5A0);
  sub_1A449A92C(v9, sub_1A448B5A0);
  sub_1A449A92C(v18, sub_1A448B2B0);
  sub_1A449A92C(v21, sub_1A448B2B0);
  sub_1A449A92C(v6, sub_1A448B5A0);
  sub_1A449A92C(v12, sub_1A448B2B0);
  return sub_1A449A92C(v15, sub_1A448B2B0);
}

uint64_t sub_1A4491218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1A448AFE4(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  sub_1A448B5A0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  *v20 = sub_1A5249574();
  *(v20 + 1) = 0;
  v20[16] = 1;
  sub_1A4499D8C(0, &qword_1EB124468, sub_1A448B634);
  sub_1A44939A4(a1, &v20[*(v21 + 44)]);
  *v14 = sub_1A5249574();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_1A4499D8C(0, &qword_1EB13BB20, sub_1A448B0B4);
  v23 = v22;
  sub_1A44949B0(1, a1, &v14[*(v22 + 44)]);
  v24 = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v25 = &v14[*(v4 + 44)];
  *v25 = v24;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  *v11 = sub_1A5249574();
  *(v11 + 1) = 0;
  v11[16] = 1;
  sub_1A44949B0(0, a1, &v11[*(v23 + 44)]);
  LOBYTE(v23) = sub_1A524A074();
  sub_1A44916D0();
  sub_1A5247BC4();
  v30 = &v11[*(v4 + 44)];
  *v30 = v23;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_1A448A5D8(v20, v17, sub_1A448B5A0);
  sub_1A448A5D8(v14, v8, sub_1A448AFE4);
  v35 = v40;
  sub_1A448A5D8(v11, v40, sub_1A448AFE4);
  v36 = v41;
  sub_1A448A5D8(v17, v41, sub_1A448B5A0);
  sub_1A448BF2C(0, &qword_1EB121650, sub_1A448B5A0, sub_1A448AFE4);
  v38 = v37;
  sub_1A448A5D8(v8, v36 + *(v37 + 48), sub_1A448AFE4);
  sub_1A448A5D8(v35, v36 + *(v38 + 64), sub_1A448AFE4);
  sub_1A449A92C(v11, sub_1A448AFE4);
  sub_1A449A92C(v14, sub_1A448AFE4);
  sub_1A449A92C(v20, sub_1A448B5A0);
  sub_1A449A92C(v35, sub_1A448AFE4);
  sub_1A449A92C(v8, sub_1A448AFE4);
  return sub_1A449A92C(v17, sub_1A448B5A0);
}

uint64_t sub_1A44915D4()
{
  type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  return sub_1A524B6B4();
}

uint64_t sub_1A44916D0()
{
  v1 = sub_1A5242D14();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  result = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v21 = *(v0 + *(result + 40));
  if (v21 != 1)
  {
    if (v21 == 3)
    {
      return sub_1A5247BA4();
    }

    v35 = v2;
    v22 = result;
    v23 = shouldUseNewCollectionsLayout()();
    if (!v21 && v23)
    {
      return sub_1A5247BA4();
    }

    else
    {
      v24 = *(v22 + 20);
      v34 = v0;
      v32 = v24;
      sub_1A3D61808(v19);
      v25 = v35;
      v26 = *(v35 + 32);
      v26(v16, v19, v1);
      v31 = *(v25 + 88);
      v27 = v31(v16, v1);
      v33 = *MEMORY[0x1E69C2210];
      if (v27 != v33)
      {
        (*(v25 + 8))(v16, v1);
      }

      sub_1A3D61808(v13);
      v26(v10, v13, v1);
      v28 = v31;
      v29 = v31(v10, v1);
      if (v29 != v33)
      {
        (*(v35 + 8))(v10, v1);
      }

      sub_1A3D61808(v7);
      v26(v4, v7, v1);
      result = v28(v4, v1);
      if (result != v33)
      {
        return (*(v35 + 8))(v4, v1);
      }
    }
  }

  return result;
}

uint64_t sub_1A4491A20(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1A449A780(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A4491AA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4945980();
  *a1 = result;
  return result;
}

void sub_1A4491AF8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5248874();
  v5 = sub_1A524A064();
  sub_1A448A5D8(a1, a2, sub_1A448CAEC);
  sub_1A4491B6C(0);
  v7 = a2 + *(v6 + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
}

unint64_t sub_1A4491BA8()
{
  result = qword_1EB13B9C8;
  if (!qword_1EB13B9C8)
  {
    sub_1A448CAEC();
    sub_1A4491E80(&qword_1EB13B9D0, sub_1A448CA48, sub_1A4491C78);
    sub_1A4491E1C(&qword_1EB122110, &qword_1EB122108, &type metadata for GenerativeStorySuggestionsStyleSpec);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B9C8);
  }

  return result;
}

unint64_t sub_1A4491C78()
{
  result = qword_1EB13B9D8;
  if (!qword_1EB13B9D8)
  {
    sub_1A449A780(255, &qword_1EB13B9A0, sub_1A448CA0C, sub_1A410AB24, MEMORY[0x1E697E830]);
    sub_1A4491D6C();
    sub_1A449ABF0(&unk_1EB127B30, sub_1A410AB24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B9D8);
  }

  return result;
}

unint64_t sub_1A4491D6C()
{
  result = qword_1EB13B9E0;
  if (!qword_1EB13B9E0)
  {
    sub_1A448CA0C(255);
    sub_1A449ABF0(&qword_1EB13B9E8, sub_1A448ACA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13B9E0);
  }

  return result;
}

uint64_t sub_1A4491E1C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C48AEC(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4491E80(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

double sub_1A4491F0C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 34.0;
  }

  (*(v3 + 8))(v6, v2);
  return 22.0;
}

uint64_t sub_1A4492028@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v75 = type metadata accessor for FullSuggestionStackView(0);
  MEMORY[0x1EEE9AC00](v75);
  v80 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = (&v66 - v5);
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v66 - v7;
  v73 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v66 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v66 - v12;
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v74 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v66 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v66 - v29;
  v83 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v86 = v83[5];
  sub_1A3D61808(v30);
  v87 = *(v14 + 32);
  v88 = v14 + 32;
  v87(v27, v30, v13);
  v84 = *(v14 + 88);
  v85 = v14 + 88;
  v31 = v84(v27, v13);
  v81 = *MEMORY[0x1E69C2210];
  if (v31 == v81)
  {
    v32 = 0x4041000000000000;
  }

  else
  {
    (*(v14 + 8))(v27, v13);
    v32 = 0x4036000000000000;
  }

  v71 = v32;
  v33 = v14;
  sub_1A3D61808(v24);
  v34 = *(a1 + v83[10]);
  v35 = (a1 + v83[7]);
  v37 = v35[1];
  v89 = *v35;
  v36 = v89;
  v90 = v37;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v66 = sub_1A4498430(v24, v34);
  v38 = *(v33 + 8);
  v38(v24, v13);
  sub_1A3D61808(v24);
  v89 = v36;
  v90 = v37;
  sub_1A524B6A4();
  v82 = v34;
  v39 = sub_1A4498838(v24, v34);
  v38(v24, v13);
  v40 = v68;
  sub_1A3D61808(v68);
  v41 = v69;
  v87(v69, v40, v13);
  v42 = v84(v41, v13);
  v43 = 20.0;
  v44 = v13;
  if (v42 != *MEMORY[0x1E69C21F0])
  {
    v43 = 14.0;
    if (v42 != v81)
    {
      (v38)(v41, v13, 14.0);
      v43 = 80.0;
    }
  }

  v45 = v67;
  *v67 = 1;
  *(v45 + 8) = v66;
  *(v45 + 16) = v39;
  *(v45 + 24) = v43;
  *(v45 + 32) = v82;
  *(v45 + 40) = swift_getKeyPath();
  *(v45 + 48) = 0;
  v46 = *(v73 + 40);
  *(v45 + v46) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v47 = v76;
  sub_1A4489E14(v45, v76, type metadata accessor for TitleAndSubtitleView);
  v48 = *(a1 + v83[9]);
  v49 = (a1 + v83[11]);
  v50 = *v49;
  v51 = v49[1];

  sub_1A3C66EE8(v50);
  v52 = v72;
  sub_1A3D61808(v72);
  v53 = v74;
  v87(v74, v52, v44);
  v54 = v84(v53, v44);
  v55 = 12.0;
  if (v54 != v81)
  {
    (v38)(v53, v44, 12.0);
    v55 = 4.0;
  }

  v56 = v70;
  *v70 = v48;
  *(v56 + 8) = v82;
  *(v56 + 16) = v50;
  *(v56 + 24) = v51;
  *(v56 + 32) = 3;
  *(v56 + 40) = v55;
  v57 = *(v75 + 36);
  *(v56 + v57) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v58 = v78;
  sub_1A4489E14(v56, v78, type metadata accessor for FullSuggestionStackView);
  v59 = v77;
  sub_1A448A5D8(v47, v77, type metadata accessor for TitleAndSubtitleView);
  v60 = v80;
  sub_1A448A5D8(v58, v80, type metadata accessor for FullSuggestionStackView);
  v61 = v79;
  *v79 = v71;
  *(v61 + 8) = 0;
  sub_1A448B9AC(0, &qword_1EB1217F8, type metadata accessor for FullSuggestionStackView);
  v63 = v62;
  sub_1A448A5D8(v59, v61 + *(v62 + 48), type metadata accessor for TitleAndSubtitleView);
  v64 = v61 + *(v63 + 64);
  *v64 = 0x4054000000000000;
  v64[8] = 0;
  sub_1A448A5D8(v60, v61 + *(v63 + 80), type metadata accessor for FullSuggestionStackView);
  sub_1A449A92C(v58, type metadata accessor for FullSuggestionStackView);
  sub_1A449A92C(v47, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A92C(v60, type metadata accessor for FullSuggestionStackView);
  return sub_1A449A92C(v59, type metadata accessor for TitleAndSubtitleView);
}

double sub_1A4492800(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  result = 12.0;
  if (v7 != *MEMORY[0x1E69C2210])
  {
    (*(v3 + 8))(v6, v2, 12.0);
    return 4.0;
  }

  return result;
}

uint64_t sub_1A4492914@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a3;
  v50 = a2;
  v59 = a4;
  v5 = type metadata accessor for FullSuggestionStackView(0);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448B54C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v49 - v11;
  sub_1A449A780(0, &qword_1EB123D00, sub_1A448B49C, sub_1A400F5B4, MEMORY[0x1E697E830]);
  v51 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - v14;
  sub_1A448B3F0(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v49 - v19;
  v20 = sub_1A5242D14();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  v27 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A3D61808(v26);
  (*(v21 + 32))(v23, v26, v20);
  if ((*(v21 + 88))(v23, v20) == *MEMORY[0x1E69C2210])
  {
    v28 = 0x4041000000000000;
  }

  else
  {
    (*(v21 + 8))(v23, v20);
    v28 = 0x4036000000000000;
  }

  v52 = v28;
  v29 = a1;
  if (v50)
  {
    v30 = v53;
    (*(v13 + 56))(v53, 1, 1, v51);
    v31 = v57;
LABEL_8:
    v37 = *(v29 + v27[10]);
    v38 = (v29 + v27[11]);
    v39 = *v38;
    v40 = v38[1];
    *v7 = *(v29 + v27[9]);
    v7[8] = v37;
    *(v7 + 2) = v39;
    *(v7 + 3) = v40;
    *(v7 + 4) = v49;
    *(v7 + 5) = 0x4010000000000000;
    v41 = v56;
    v42 = *(v56 + 36);
    *&v7[v42] = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    sub_1A4489E14(v7, v31, type metadata accessor for FullSuggestionStackView);
    (*(v55 + 56))(v31, 0, 1, v41);

    sub_1A3C66EE8(v39);
    goto LABEL_9;
  }

  sub_1A449301C(a1, v15);
  sub_1A5248234();
  sub_1A524BD54();
  sub_1A524BCD4();

  sub_1A5248254();

  sub_1A5248234();
  sub_1A524BD44();
  sub_1A5248254();

  v32 = sub_1A5248214();

  v33 = v51;
  *&v15[*(v51 + 36)] = v32;
  v30 = v53;
  sub_1A4491A20(v15, v53, &qword_1EB123D00, sub_1A448B49C, sub_1A400F5B4);
  (*(v13 + 56))(v30, 0, 1, v33);
  v34 = (v29 + v27[8]);
  v35 = *v34;
  v36 = v34[1];
  v61 = v35;
  v62 = v36;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v31 = v57;
  if (v60 >= 350.0)
  {
    goto LABEL_8;
  }

  (*(v55 + 56))(v57, 1, 1, v56, v60);
LABEL_9:
  v43 = v54;
  sub_1A448A5D8(v30, v54, sub_1A448B3F0);
  v44 = v58;
  sub_1A448A5D8(v31, v58, sub_1A448B54C);
  v45 = v59;
  *v59 = v52;
  *(v45 + 8) = 0;
  sub_1A448B378();
  v47 = v46;
  sub_1A448A5D8(v43, v45 + *(v46 + 48), sub_1A448B3F0);
  sub_1A448A5D8(v44, v45 + *(v47 + 64), sub_1A448B54C);
  sub_1A449A92C(v31, sub_1A448B54C);
  sub_1A449A92C(v30, sub_1A448B3F0);
  sub_1A449A92C(v44, sub_1A448B54C);
  return sub_1A449A92C(v43, sub_1A448B3F0);
}

uint64_t sub_1A449301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + *(type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0) + 40));
  if (qword_1EB166D50 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB1EAE88;
  v12 = qword_1EB166D40;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB1EAE80;
  *v9 = 1;
  *(v9 + 1) = v11;
  *(v9 + 2) = v13;
  *(v9 + 3) = 0x402C000000000000;
  v9[32] = v10;
  *(v9 + 5) = swift_getKeyPath();
  v9[48] = 0;
  v14 = *(v4 + 40);
  *&v9[v14] = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  sub_1A448A5D8(v9, v6, type metadata accessor for TitleAndSubtitleView);
  sub_1A448A5D8(v6, a2, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A560(0, &qword_1EB1259D8, type metadata accessor for TitleAndSubtitleView);
  v16 = a2 + *(v15 + 48);
  *v16 = 0x4020000000000000;
  *(v16 + 8) = 0;

  sub_1A449A92C(v9, type metadata accessor for TitleAndSubtitleView);
  return sub_1A449A92C(v6, type metadata accessor for TitleAndSubtitleView);
}

uint64_t sub_1A449325C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlaceholderInputView(0);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = (&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A448B65C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A3D61808(v22);
  (*(v17 + 32))(v19, v22, v16);
  if ((*(v17 + 88))(v19, v16) == *MEMORY[0x1E69C2210])
  {
    v24 = 0x4041000000000000;
  }

  else
  {
    (*(v17 + 8))(v19, v16);
    v24 = 0x4036000000000000;
  }

  sub_1A449377C(v15);
  v25 = (a1 + v23[7]);
  v26 = *v25;
  v27 = v25[1];
  v48 = v26;
  v49 = v27;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28.n128_f64[0] = v47;
  if (v47 < 250.0 || *(a1 + v23[10]) == 1)
  {
    (*(v43 + 56))(v10, 1, 1, v44, v28);
  }

  else
  {
    v29 = *(a1 + v23[9]);
    v30 = (a1 + v23[11]);
    v31 = *v30;
    v32 = v30[1];
    v33 = v42;
    *v42 = v29;
    *(v33 + 8) = v31;
    *(v33 + 16) = v32;
    v34 = v44;
    v35 = *(v44 + 24);
    *(v33 + v35) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    sub_1A4489E14(v33, v10, type metadata accessor for PlaceholderInputView);
    (*(v43 + 56))(v10, 0, 1, v34);

    sub_1A3C66EE8(v31);
  }

  v36 = v45;
  sub_1A448A5D8(v15, v45, type metadata accessor for TitleAndSubtitleView);
  v37 = v46;
  sub_1A448A5D8(v10, v46, sub_1A448B65C);
  *a2 = v24;
  *(a2 + 8) = 0;
  sub_1A448B9AC(0, &qword_1EB121800, sub_1A448B65C);
  v39 = v38;
  sub_1A448A5D8(v36, a2 + *(v38 + 48), type metadata accessor for TitleAndSubtitleView);
  v40 = a2 + *(v39 + 64);
  *v40 = 0x4020000000000000;
  *(v40 + 8) = 0;
  sub_1A448A5D8(v37, a2 + *(v39 + 80), sub_1A448B65C);
  sub_1A449A92C(v10, sub_1A448B65C);
  sub_1A449A92C(v15, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A92C(v37, sub_1A448B65C);
  return sub_1A449A92C(v36, type metadata accessor for TitleAndSubtitleView);
}

uint64_t sub_1A449377C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v17 = v7[5];
  sub_1A3D61808(v6);
  v8 = (v1 + v7[7]);
  v10 = v8[1];
  LOBYTE(v7) = *(v1 + v7[10]);
  v18 = *v8;
  v9 = v18;
  v19 = v10;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v16 = sub_1A4498430(v6, v7);
  v11 = *(v4 + 8);
  v11(v6, v3);
  sub_1A3D61808(v6);
  v18 = v9;
  v19 = v10;
  sub_1A524B6A4();
  v12 = sub_1A4498838(v6, v7);
  v11(v6, v3);
  *a1 = 1;
  *(a1 + 8) = v16;
  *(a1 + 16) = v12;
  *(a1 + 24) = 0x4020000000000000;
  *(a1 + 32) = v7;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  v13 = *(type metadata accessor for TitleAndSubtitleView(0) + 40);
  *(a1 + v13) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A44939A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for PlaceholderInputView(0);
  v67 = *(v3 - 8);
  v68 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1A52486A4();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v60 - v8;
  sub_1A448B65C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v12;
  v65 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v17 = sub_1A5242D14();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v60 - v25;
  v27 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  sub_1A3D61808(v26);
  (*(v18 + 32))(v23, v26, v17);
  if ((*(v18 + 88))(v23, v17) == *MEMORY[0x1E69C2210])
  {
    v28 = 0x4041000000000000;
  }

  else
  {
    (*(v18 + 8))(v23, v17);
    v28 = 0x4036000000000000;
  }

  v66 = v28;
  sub_1A3D61808(v20);
  v29 = sub_1A44980F0(v20, MEMORY[0x1E6980EE8], MEMORY[0x1E6980F00]);
  v30 = *(v18 + 8);
  v30(v20, v17);
  sub_1A3D61808(v20);
  v31 = sub_1A44980F0(v20, MEMORY[0x1E6980F20], MEMORY[0x1E6980F30]);
  v30(v20, v17);
  v32 = *(a1 + v27[10]);
  *v16 = 1;
  *(v16 + 1) = v29;
  *(v16 + 2) = v31;
  *(v16 + 3) = 0x4020000000000000;
  v16[32] = v32;
  *(v16 + 5) = swift_getKeyPath();
  v16[48] = 0;
  v33 = *(v65 + 40);
  *&v16[v33] = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v34 = (a1 + v27[7]);
  v35 = *v34;
  v36 = v34[1];
  v74 = v35;
  v75 = v36;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v37.n128_f64[0] = v73;
  if (v73 < 250.0 || v32 == 1 || (v38 = v61, sub_1A448A314(v61), v40 = v62, v39 = v63, v41 = v64, (*(v63 + 104))(v62, *MEMORY[0x1E697E728], v64), sub_1A449ABF0(&qword_1EB1288D0, MEMORY[0x1E697E730]), v42 = sub_1A524C534(), v43 = *(v39 + 8), v43(v40, v41), v43(v38, v41), (v42 & 1) != 0))
  {
    v44 = v70;
    (*(v67 + 56))(v70, 1, 1, v68, v37);
  }

  else
  {
    v45 = *(a1 + v27[9]);
    v46 = (a1 + v27[11]);
    v47 = *v46;
    v48 = v46[1];
    v49 = v60;
    *v60 = v45;
    v49[1] = v47;
    v49[2] = v48;
    v50 = v68;
    v51 = *(v68 + 24);
    *(v49 + v51) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v52 = v49;
    v44 = v70;
    sub_1A4489E14(v52, v70, type metadata accessor for PlaceholderInputView);
    (*(v67 + 56))(v44, 0, 1, v50);

    sub_1A3C66EE8(v47);
  }

  v53 = v69;
  sub_1A448A5D8(v16, v69, type metadata accessor for TitleAndSubtitleView);
  v54 = v71;
  sub_1A448A5D8(v44, v71, sub_1A448B65C);
  v55 = v72;
  *v72 = v66;
  *(v55 + 8) = 0;
  sub_1A448B9AC(0, &qword_1EB121800, sub_1A448B65C);
  v57 = v56;
  sub_1A448A5D8(v53, v55 + *(v56 + 48), type metadata accessor for TitleAndSubtitleView);
  v58 = v55 + *(v57 + 64);
  *v58 = 0x4020000000000000;
  v58[8] = 0;
  sub_1A448A5D8(v54, v55 + *(v57 + 80), sub_1A448B65C);
  sub_1A449A92C(v44, sub_1A448B65C);
  sub_1A449A92C(v16, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A92C(v54, sub_1A448B65C);
  return sub_1A449A92C(v53, type metadata accessor for TitleAndSubtitleView);
}

uint64_t sub_1A449412C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v55 = type metadata accessor for PlaceholderInputView(0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v49 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A448B65C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = sub_1A5242D14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v50 = sub_1A44947B4();
  v20 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v21 = (a1 + v20[7]);
  v22 = *v21;
  v23 = v21[1];
  v61 = v22;
  v59 = v23;
  v62 = v23;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v56 = v8;
  v52 = v19;
  if (v60 < 450.0 || *(a1 + v20[10]))
  {
    sub_1A3D61808(v12);
    v24 = sub_1A44980F0(v12, MEMORY[0x1E6980EE8], MEMORY[0x1E6980F00]);
  }

  else
  {
    sub_1A3D61808(v12);
    v61 = v22;
    v62 = v59;
    sub_1A524B6A4();
    v24 = sub_1A4498430(v12, 0);
  }

  v25 = v24;
  v26 = *(v10 + 8);
  v26(v12, v9);
  sub_1A3D61808(v12);
  v27 = sub_1A44980F0(v12, MEMORY[0x1E6980F20], MEMORY[0x1E6980F30]);
  v28 = v9;
  v29 = v27;
  v26(v12, v28);
  v61 = v22;
  v30 = v59;
  v62 = v59;
  sub_1A524B6A4();
  v31 = *(a1 + v20[10]);
  if (v31)
  {
    v32 = 1;
  }

  else
  {
    v32 = v60 < 450.0;
  }

  v33 = 8.0;
  *v16 = !v50;
  if (!v32)
  {
    v33 = 12.0;
  }

  *(v16 + 1) = v25;
  *(v16 + 2) = v29;
  *(v16 + 3) = v33;
  v16[32] = v31;
  *(v16 + 5) = swift_getKeyPath();
  v16[48] = 0;
  v34 = *(v51 + 40);
  *&v16[v34] = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v35 = v52;
  sub_1A4489E14(v16, v52, type metadata accessor for TitleAndSubtitleView);
  v61 = v22;
  v62 = v30;
  sub_1A524B6A4();
  v36.n128_f64[0] = v60;
  if (v60 < 250.0 || v31 || sub_1A44947B4())
  {
    v37 = v56;
    (*(v53 + 56))(v56, 1, 1, v55, v36);
  }

  else
  {
    v38 = (a1 + v20[11]);
    v39 = *v38;
    v40 = v38[1];
    v41 = v49;
    *v49 = *(a1 + v20[9]);
    *(v41 + 8) = v39;
    *(v41 + 16) = v40;
    v42 = v55;
    v43 = *(v55 + 24);
    *(v41 + v43) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v37 = v56;
    sub_1A4489E14(v41, v56, type metadata accessor for PlaceholderInputView);
    (*(v53 + 56))(v37, 0, 1, v42);

    sub_1A3C66EE8(v39);
  }

  v44 = v54;
  sub_1A448A5D8(v35, v54, type metadata accessor for TitleAndSubtitleView);
  v45 = v57;
  sub_1A448A5D8(v37, v57, sub_1A448B65C);
  v46 = v58;
  sub_1A448A5D8(v44, v58, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A014(0, &qword_1EB1259D0, type metadata accessor for TitleAndSubtitleView, sub_1A448B65C);
  sub_1A448A5D8(v45, v46 + *(v47 + 48), sub_1A448B65C);
  sub_1A449A92C(v37, sub_1A448B65C);
  sub_1A449A92C(v35, type metadata accessor for TitleAndSubtitleView);
  sub_1A449A92C(v45, sub_1A448B65C);
  return sub_1A449A92C(v44, type metadata accessor for TitleAndSubtitleView);
}

BOOL sub_1A44947B4()
{
  v1 = v0;
  v2 = sub_1A52486A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  sub_1A448A314(v15 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x1E697E728], v2);
  sub_1A449ABF0(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  v9 = sub_1A524C534();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v11 = (v1 + *(type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0) + 32));
  v12 = *v11;
  v13 = v11[1];
  v15[2] = v12;
  v15[3] = v13;
  sub_1A3C48AEC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v15[1] <= 320.0;
}

uint64_t sub_1A44949B0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TitleAndSubtitleView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  if (qword_1EB1C33F8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB1EBE10;
  v13 = qword_1EB1C3418;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB1EBE20;
  v15 = *(a2 + *(type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0) + 40));
  *v11 = a1 & 1;
  *(v11 + 1) = v12;
  *(v11 + 2) = v14;
  *(v11 + 3) = 0x4020000000000000;
  v11[32] = v15;
  *(v11 + 5) = swift_getKeyPath();
  v11[48] = 0;
  v16 = *(v6 + 40);
  *&v11[v16] = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  sub_1A448A5D8(v11, v8, type metadata accessor for TitleAndSubtitleView);
  *a3 = 0;
  *(a3 + 8) = 1;
  sub_1A448B0E8();
  v18 = v17;
  sub_1A448A5D8(v8, a3 + *(v17 + 48), type metadata accessor for TitleAndSubtitleView);
  v19 = a3 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = 1;

  sub_1A449A92C(v11, type metadata accessor for TitleAndSubtitleView);
  return sub_1A449A92C(v8, type metadata accessor for TitleAndSubtitleView);
}

uint64_t sub_1A4494BD8@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_1A5242D14();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v52 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v41 - v5;
  sub_1A4499E34();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A449A23C();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2854();
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_1A52486A4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  sub_1A3EC1A14();
  v47 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v1;
  sub_1A4495428();
  v26 = sub_1A524C634();
  v27 = PXMemoryCreationLocalizedString(v26);

  v44 = sub_1A524C674();
  v29 = v28;

  v30 = v18[13];
  v30(v23, *MEMORY[0x1E697E718], v17);
  v30(v20, *MEMORY[0x1E697E6D0], v17);
  sub_1A449ABF0(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v32 = v18[4];
    v32(v16, v23, v17);
    v42 = v8;
    v43 = v29;
    v33 = v46;
    v32(&v16[*(v46 + 48)], v20, v17);
    sub_1A448A5D8(v16, v13, sub_1A3EC2854);
    v34 = *(v33 + 48);
    v35 = v45;
    v32(v45, v13, v17);
    v36 = v18[1];
    v36(&v13[v34], v17);
    sub_1A4489E14(v16, v13, sub_1A3EC2854);
    v32(&v35[*(v47 + 36)], &v13[*(v33 + 48)], v17);
    v36(v13, v17);
    v37 = sub_1A5249574();
    v38 = *(v51 + 24);
    v39 = v42;
    *v42 = v37;
    v39[1] = v38;
    *(v39 + 16) = 0;
    sub_1A4499D8C(0, &qword_1EB13BA90, sub_1A4499F8C);
    sub_1A44957C8(v44, v43, v39 + *(v40 + 44));
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4495428()
{
  v1 = v0;
  v2 = sub_1A5249234();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  type metadata accessor for TitleAndSubtitleView(0);
  sub_1A3D61808(v10);
  v11 = *MEMORY[0x1E69C2210];
  v27 = *(v5 + 104);
  v27(v7, v11, v4);
  v12 = sub_1A5242D04();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if ((v12 & 1) != 0 && !*(v1 + 32))
  {
    v21 = 1;
  }

  else
  {
    sub_1A3D61808(v10);
    v27(v7, *MEMORY[0x1E69C2200], v4);
    v14 = sub_1A5242D04();
    v13(v7, v4);
    v13(v10, v4);
    if (v14)
    {
      v15 = *(v1 + 40);
      if (*(v1 + 48) == 1)
      {
        v30 = v15 & 1;
      }

      else
      {

        v23[1] = sub_1A524D254();
        v17 = sub_1A524A014();
        v24 = v2;
        v18 = v17;
        sub_1A5246DF4();

        v19 = v25;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3C53AEC(v15, 0);
        (*(v26 + 8))(v19, v24);
        LOBYTE(v15) = v30;
      }

      v29 = v15 & 1;
      v28 = 0;
      v16 = static LemonadeRootViewOrientation.== infix(_:_:)(&v29, &v28);
    }

    else
    {
      v16 = 0;
    }

    sub_1A3D61808(v10);
    v27(v7, *MEMORY[0x1E69C21F0], v4);
    v20 = sub_1A5242D04();
    v13(v7, v4);
    v13(v10, v4);
    v21 = v16 | v20;
  }

  return v21 & 1;
}

void sub_1A44957C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v19 = sub_1A5242D14();
  v18[4] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18[6] = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A449A170(0, &qword_1EB124020, sub_1A449A1D4);
  v18[5] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v20 = v18 - v8;
  sub_1A449A0CC();
  v21 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v24 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A780(0, &qword_1EB123420, sub_1A449A0CC, sub_1A449A208, MEMORY[0x1E697E830]);
  v27 = v11;
  v26 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v22 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v23 = v18 - v14;
  sub_1A449A090(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v17);
  v28 = a1;
  v29 = a2;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4496374(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69C21F0] || v7 == *MEMORY[0x1E69C2210])
  {
    return 600.0;
  }

  (*(v3 + 8))(v6, v2);
  return 500.0;
}

void sub_1A44964B8(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  sub_1A4499C34();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4499D50(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5249574();
  v18 = *(v1 + 40);
  *v12 = v17;
  *(v12 + 1) = v18;
  v12[16] = 0;
  sub_1A4499D8C(0, &qword_1EB13BA30, sub_1A4499CC8);
  sub_1A44967E4(v1, &v12[*(v19 + 44)]);
  type metadata accessor for FullSuggestionStackView(0);
  sub_1A3D61808(v9);
  (*(v4 + 32))(v6, v9, v3);
  v20 = (*(v4 + 88))(v6, v3);
  if (v20 != *MEMORY[0x1E69C21F0] && v20 != *MEMORY[0x1E69C2210])
  {
    (*(v4 + 8))(v6, v3);
  }

  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A4489E14(v12, v16, sub_1A4499C34);
  v22 = &v16[*(v14 + 36)];
  v23 = v27[5];
  *(v22 + 4) = v27[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v27[6];
  v24 = v27[1];
  *v22 = v27[0];
  *(v22 + 1) = v24;
  v25 = v27[3];
  *(v22 + 2) = v27[2];
  *(v22 + 3) = v25;
  sub_1A4489E14(v16, a1, sub_1A4499D50);
  sub_1A4499DF8(0);
  *(a1 + *(v26 + 36)) = 1;
}

uint64_t sub_1A44967E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = type metadata accessor for PlaceholderInputView(0);
  v3 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A448B65C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for GenerativeStorySuggestionsView();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  LODWORD(a1) = *(a1 + 8);

  sub_1A3C66EE8(v18);
  v22 = sub_1A49ED614(v17, v18, v19, v20, a1, v16, v21);
  if (a1 == 1)
  {
    (*(v3 + 56))(v10, 1, 1, v30, v22);
  }

  else
  {
    *v5 = v17;
    v5[1] = v18;
    v5[2] = v19;
    v23 = v30;
    v24 = *(v30 + 24);
    *(v5 + v24) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    sub_1A4489E14(v5, v10, type metadata accessor for PlaceholderInputView);
    (*(v3 + 56))(v10, 0, 1, v23);

    sub_1A3C66EE8(v18);
  }

  sub_1A448A5D8(v16, v13, type metadata accessor for GenerativeStorySuggestionsView);
  v25 = v31;
  sub_1A448A5D8(v10, v31, sub_1A448B65C);
  v26 = v32;
  sub_1A448A5D8(v13, v32, type metadata accessor for GenerativeStorySuggestionsView);
  sub_1A449A014(0, &qword_1EB13BA18, type metadata accessor for GenerativeStorySuggestionsView, sub_1A448B65C);
  sub_1A448A5D8(v25, v26 + *(v27 + 48), sub_1A448B65C);
  sub_1A449A92C(v10, sub_1A448B65C);
  sub_1A449A92C(v16, type metadata accessor for GenerativeStorySuggestionsView);
  sub_1A449A92C(v25, sub_1A448B65C);
  return sub_1A449A92C(v13, type metadata accessor for GenerativeStorySuggestionsView);
}

void sub_1A4496B84(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_1A5242D14();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v38 - v5;
  sub_1A449A4FC(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v38 - v7;
  v46 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1A5241F84();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PlaceholderInputView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1A44994D4(0);
  v15 = v14;
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44998A0();
  v40 = v18;
  v42 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A448A5D8(v1, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaceholderInputView);
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_1A4489E14(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PlaceholderInputView);
  v52 = v1;
  sub_1A4499508();
  sub_1A4499738();
  sub_1A524B704();
  sub_1A524B404();
  sub_1A524B474();

  sub_1A5241F64();
  v23 = sub_1A449ABF0(&qword_1EB121B28, sub_1A44994D4);
  v24 = sub_1A3D6F4A4();
  v25 = MEMORY[0x1E6981EF8];
  sub_1A524A504();
  (*(v41 + 8))(v10, v43);
  v26 = (*(v39 + 8))(v17, v15);
  v27 = v45;
  sub_1A4949A28(v26);
  v28 = v44;
  sub_1A4947AD4(1, v27, v44);
  v53 = v15;
  v54 = v25;
  v55 = v23;
  v56 = v24;
  swift_getOpaqueTypeConformance2();
  sub_1A449ABF0(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle);
  v29 = v48;
  v30 = v40;
  sub_1A524A944();
  sub_1A449A92C(v28, type metadata accessor for GenerativeStoryCommonButtonStyle);
  (*(v42 + 8))(v20, v30);
  v31 = v47;
  sub_1A3D61808(v47);
  v33 = v49;
  v32 = v50;
  v34 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x1E69C21F0], v51);
  sub_1A449ABF0(&qword_1EB129148, MEMORY[0x1E69C2218]);
  v35 = v34;
  LOBYTE(v34) = sub_1A524C594();
  v36 = *(v32 + 8);
  v36(v33, v35);
  v36(v31, v35);
  sub_1A449A490(0, &qword_1EB13BA00, sub_1A44999D8, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
  *(v29 + *(v37 + 36)) = (v34 & 1) == 0;
}

uint64_t sub_1A4497298(void *a1)
{
  sub_1A4499C00(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(**a1 + 424))(0, 1, v3);
  v7 = a1[1];
  if (v7)
  {
    v8 = type metadata accessor for GenerativeStorySuggestion(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v7(v5);
    return sub_1A449A92C(v5, sub_1A4499C00);
  }

  return result;
}

void sub_1A44973C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  sub_1A44995C0();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A490(0, &qword_1EB123CC0, sub_1A44995C0, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v25 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v29 = a1;
  sub_1A4499680(0, &unk_1EB122710);
  sub_1A449A170(0, &qword_1EB128530, sub_1A3F32A14);
  sub_1A424D1BC();
  sub_1A3F37498();
  sub_1A524B5F4();
  type metadata accessor for PlaceholderInputView(0);
  sub_1A3D61808(v9);
  (*(v4 + 32))(v6, v9, v3);
  v16 = (*(v4 + 88))(v6, v3);
  if (v16 != *MEMORY[0x1E69C21F0] && v16 != *MEMORY[0x1E69C2210])
  {
    (*(v4 + 8))(v6, v3);
  }

  sub_1A524BC84();
  sub_1A5248AD4();
  (*(v26 + 32))(v15, v12, v27);
  v17 = &v15[*(v25 + 36)];
  v18 = v35;
  *(v17 + 4) = v34;
  *(v17 + 5) = v18;
  *(v17 + 6) = v36;
  v19 = v31;
  *v17 = v30;
  *(v17 + 1) = v19;
  v20 = v33;
  *(v17 + 2) = v32;
  *(v17 + 3) = v20;
  KeyPath = swift_getKeyPath();
  v22 = v28;
  sub_1A4499B30(v15, v28);
  sub_1A4499508();
  v24 = v22 + *(v23 + 36);
  *v24 = KeyPath;
  *(v24 + 8) = 1;
  *(v24 + 16) = 0;
}

uint64_t sub_1A44977B8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaceholderInputView(0);
  sub_1A3D61808(v5);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69C2210])
  {
    v6 = sub_1A524C634();
    v7 = PXMemoryCreationLocalizedString(v6);

    v8 = sub_1A524C674();
    v10 = v9;

    *&v41 = v8;
    *(&v41 + 1) = v10;
    sub_1A3D5F9DC();
    v11 = sub_1A524A464();
    v13 = v12;
    LOBYTE(v10) = v14;
    sub_1A524A0F4();
    v15 = sub_1A524A3C4();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_1A3E04DF4(v11, v13, v10 & 1);

    v36 = v15;
    v37 = v17;
    v38 = v19 & 1;
    v39 = v21;
    v40 = 0;
    result = sub_1A5249744();
    v23 = v41;
    v24 = v42;
    v25 = v43;
  }

  else
  {
    v26 = sub_1A524C634();
    v27 = PXMemoryCreationLocalizedString(v26);

    v28 = sub_1A524C674();
    v30 = v29;

    *&v41 = v28;
    *(&v41 + 1) = v30;
    sub_1A3D5F9DC();
    v36 = sub_1A524A464();
    v37 = v32;
    v38 = v31 & 1;
    v39 = v33;
    v40 = 1;
    sub_1A5249744();
    v34 = v42;
    v35 = v41;
    v25 = v43;
    result = (*(v3 + 8))(v5, v2);
    v24 = v34;
    v23 = v35;
  }

  *a1 = v23;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  return result;
}

uint64_t sub_1A4497A94@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4499BCC(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524B574();
  sub_1A52495A4();
  v5 = sub_1A52495B4();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_1A524B584();

  sub_1A449A92C(v4, sub_1A4499BCC);
  sub_1A449A170(0, &qword_1EB128530, sub_1A3F32A14);
  v8 = (a1 + *(v7 + 36));
  sub_1A3F32A14(0);
  v10 = *(v9 + 28);
  v11 = *MEMORY[0x1E69816C0];
  v12 = sub_1A524B5B4();
  (*(*(v12 - 8) + 104))(v8 + v10, v11, v12);
  result = swift_getKeyPath();
  *v8 = result;
  *a1 = v6;
  return result;
}

uint64_t sub_1A4497CAC(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524A274();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a2, v8, v10);
  v13 = sub_1A524A154();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = sub_1A524A1C4();
  sub_1A449A92C(v7, sub_1A3E75D84);
  result = (*(v9 + 8))(v12, v8);
  *a3 = v14;
  return result;
}

uint64_t sub_1A4497E50()
{
  result = sub_1A524A174();
  qword_1EB1EAE90 = v1;
  return result;
}

double sub_1A4497E88(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  result = 16.0;
  if (v7 != *MEMORY[0x1E69C2210])
  {
    (*(v3 + 8))(v6, v2, 16.0);
    return 4.0;
  }

  return result;
}

double sub_1A4497F9C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1A5242D14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  (*(v5 + 16))(v8, a2, v4, v6);
  v10 = (*(v5 + 88))(v8, v4);
  if (v10 == *MEMORY[0x1E69C2200])
  {
    result = 0.0;
    if (v9)
    {
      return 16.0;
    }
  }

  else if (v10 == *MEMORY[0x1E69C2210])
  {
    return 120.0;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    return 16.0;
  }

  return result;
}

uint64_t sub_1A44980F0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524A274();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  v19 = *(v10 + 104);
  v20 = (v10 + 8);
  if (v18 == *MEMORY[0x1E69C2210])
  {
    v19(v12, *a2, v9);
    v21 = sub_1A524A154();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = sub_1A524A1C4();
    sub_1A449A92C(v8, sub_1A3E75D84);
    (*v20)(v12, v9);
  }

  else
  {
    v19(v12, *a3, v9);
    v23 = sub_1A524A154();
    (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
    v22 = sub_1A524A1C4();
    sub_1A449A92C(v8, sub_1A3E75D84);
    (*v20)(v12, v9);
    (*(v14 + 8))(v17, v13);
  }

  return v22;
}

uint64_t sub_1A4498430(uint64_t a1, unsigned __int8 a2)
{
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A560(0, &qword_1EB13BAA0, MEMORY[0x1E69C2218]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v15 = *(v14 + 56);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a1, v16);
  v13[v15] = a2;
  if ((*(v17 + 88))(v13, v16) == *MEMORY[0x1E69C21F0] && a2 <= 1u)
  {
    v19 = [objc_opt_self() preferredFontForTextStyle_];
    [v19 pointSize];
    v20 = sub_1A524A154();
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = sub_1A524A1B4();

    sub_1A449A92C(v10, sub_1A3E75D84);
    (*(v17 + 8))(v13, v16);
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E6980EE8], v4);
    v18 = sub_1A524A154();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v21 = sub_1A524A1C4();
    sub_1A449A92C(v10, sub_1A3E75D84);
    (*(v5 + 8))(v7, v4);
    sub_1A449A5CC(v13);
  }

  return v21;
}

uint64_t sub_1A4498838(uint64_t a1, char a2)
{
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449A560(0, &qword_1EB13BAA0, MEMORY[0x1E69C2218]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v15 = *(v14 + 56);
  v16 = sub_1A5242D14();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a1, v16);
  v13[v15] = a2;
  if ((*(v17 + 88))(v13, v16) == *MEMORY[0x1E69C21F0])
  {
    if (a2 == 1)
    {
      (*(v5 + 104))(v7, *MEMORY[0x1E6980F08], v4);
      v21 = sub_1A524A154();
      (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
      v20 = sub_1A524A1C4();
      sub_1A449A92C(v10, sub_1A3E75D84);
      (*(v5 + 8))(v7, v4);
      goto LABEL_9;
    }

    if (!a2)
    {
      v18 = [objc_opt_self() preferredFontForTextStyle_];
      [v18 pointSize];
      v19 = sub_1A524A154();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
      v20 = sub_1A524A1B4();

      sub_1A449A92C(v10, sub_1A3E75D84);
LABEL_9:
      (*(v17 + 8))(v13, v16);
      return v20;
    }
  }

  if (qword_1EB1C3408 != -1)
  {
    swift_once();
  }

  v20 = qword_1EB1EBE18;

  sub_1A449A5CC(v13);
  return v20;
}

void sub_1A4498CA0()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A449A4FC(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A449A4FC(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A449A4FC(319, &qword_1EB124858, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A449A4FC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A449A4FC(319, &qword_1EB13B9F8, type metadata accessor for GenerativeStorySuggestionViewModel, MEMORY[0x1E697DA80]);
            if (v5 <= 0x3F)
            {
              sub_1A3C48AEC(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
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

void sub_1A4498F00()
{
  sub_1A3C48AEC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A449A4FC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A449A4FC(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C48AEC(319, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for GenerativeStorySuggestionViewModel(319);
          if (v4 <= 0x3F)
          {
            sub_1A449A4FC(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1A449910C()
{
  type metadata accessor for GenerativeStorySuggestionViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A449A4FC(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A449A4FC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4499230()
{
  type metadata accessor for GenerativeStorySuggestionViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A449A4FC(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A449A4FC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4499374()
{
  sub_1A3C48AEC(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A449A4FC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4499508()
{
  if (!qword_1EB123678)
  {
    sub_1A449A490(255, &qword_1EB123CC0, sub_1A44995C0, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A44996CC(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123678);
    }
  }
}

void sub_1A44995C0()
{
  if (!qword_1EB121CA8)
  {
    sub_1A4499680(255, &unk_1EB122710);
    sub_1A449A170(255, &qword_1EB128530, sub_1A3F32A14);
    sub_1A424D1BC();
    sub_1A3F37498();
    v0 = sub_1A524B624();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121CA8);
    }
  }
}

void sub_1A4499680(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A5249754();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1A44996CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C48AEC(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A4499738()
{
  result = qword_1EB123680;
  if (!qword_1EB123680)
  {
    sub_1A4499508();
    sub_1A44997B8();
    sub_1A400FBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123680);
  }

  return result;
}

unint64_t sub_1A44997B8()
{
  result = qword_1EB123CC8;
  if (!qword_1EB123CC8)
  {
    sub_1A449A490(255, &qword_1EB123CC0, sub_1A44995C0, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A449ABF0(&unk_1EB121CB0, sub_1A44995C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CC8);
  }

  return result;
}

void sub_1A44998A0()
{
  if (!qword_1EB122020)
  {
    sub_1A44994D4(255);
    sub_1A449ABF0(&qword_1EB121B28, sub_1A44994D4);
    sub_1A3D6F4A4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122020);
    }
  }
}

uint64_t sub_1A4499970()
{
  v1 = *(type metadata accessor for PlaceholderInputView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1A4497298(v2);
}

void sub_1A44999D8()
{
  if (!qword_1EB121EE0)
  {
    sub_1A44998A0();
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A44994D4(255);
    sub_1A449ABF0(&qword_1EB121B28, sub_1A44994D4);
    sub_1A3D6F4A4();
    swift_getOpaqueTypeConformance2();
    sub_1A449ABF0(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121EE0);
    }
  }
}

uint64_t sub_1A4499B30(uint64_t a1, uint64_t a2)
{
  sub_1A449A490(0, &qword_1EB123CC0, sub_1A44995C0, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4499C34()
{
  if (!qword_1EB13BA08)
  {
    sub_1A4499CC8();
    sub_1A449ABF0(&qword_1EB13BA20, sub_1A4499CC8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BA08);
    }
  }
}

void sub_1A4499CC8()
{
  if (!qword_1EB13BA10)
  {
    sub_1A449A014(255, &qword_1EB13BA18, type metadata accessor for GenerativeStorySuggestionsView, sub_1A448B65C);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BA10);
    }
  }
}

void sub_1A4499D8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4499E34()
{
  if (!qword_1EB13BA40)
  {
    sub_1A449A490(255, &qword_1EB13BA48, sub_1A4499EF8, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A3C48AEC(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BA40);
    }
  }
}

void sub_1A4499EF8()
{
  if (!qword_1EB13BA50)
  {
    sub_1A4499F8C();
    sub_1A449ABF0(&qword_1EB13BA68, sub_1A4499F8C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BA50);
    }
  }
}

void sub_1A4499F8C()
{
  if (!qword_1EB13BA58)
  {
    sub_1A449A014(255, &qword_1EB13BA60, sub_1A405D330, sub_1A449A090);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BA58);
    }
  }
}

void sub_1A449A014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A449A0CC()
{
  if (!qword_1EB123840)
  {
    sub_1A449A170(255, &qword_1EB124020, sub_1A449A1D4);
    sub_1A44996CC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123840);
    }
  }
}

void sub_1A449A170(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A449A23C()
{
  if (!qword_1EB13BA70)
  {
    sub_1A4499E34();
    sub_1A3EC1A14();
    sub_1A449A310();
    sub_1A449ABF0(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BA70);
    }
  }
}

unint64_t sub_1A449A310()
{
  result = qword_1EB13BA78;
  if (!qword_1EB13BA78)
  {
    sub_1A4499E34();
    sub_1A449A3A8();
    sub_1A4491E1C(&qword_1EB127850, &unk_1EB127840, MEMORY[0x1E697E1E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BA78);
  }

  return result;
}

unint64_t sub_1A449A3A8()
{
  result = qword_1EB13BA80;
  if (!qword_1EB13BA80)
  {
    sub_1A449A490(255, &qword_1EB13BA48, sub_1A4499EF8, MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A449ABF0(&qword_1EB13BA88, sub_1A4499EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BA80);
  }

  return result;
}

void sub_1A449A490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A449A4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A449A560(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A449A5CC(uint64_t a1)
{
  sub_1A449A560(0, &qword_1EB13BAA0, MEMORY[0x1E69C2218]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A449A64C()
{
  if (!qword_1EB124E28)
  {
    sub_1A5242D14();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB124E28);
    }
  }
}

unint64_t sub_1A449A6BC()
{
  result = qword_1EB122E70;
  if (!qword_1EB122E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E70);
  }

  return result;
}

void sub_1A449A710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A449A6BC();
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A449A780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A449A804()
{
  type metadata accessor for GenerativeStoryEntryCardCommonView(0);
  sub_1A3C48AEC(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A449A898()
{
  v1 = *(type metadata accessor for GenerativeStoryEntryCardCommonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4489B20(v2);
}

uint64_t sub_1A449A92C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A449A98C()
{
  result = qword_1EB13BB40;
  if (!qword_1EB13BB40)
  {
    sub_1A449A490(255, &qword_1EB13BA00, sub_1A44999D8, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1A44998A0();
    type metadata accessor for GenerativeStoryCommonButtonStyle(255);
    sub_1A44994D4(255);
    sub_1A449ABF0(&qword_1EB121B28, sub_1A44994D4);
    sub_1A3D6F4A4();
    swift_getOpaqueTypeConformance2();
    sub_1A449ABF0(&qword_1EB1253B0, type metadata accessor for GenerativeStoryCommonButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BB40);
  }

  return result;
}

unint64_t sub_1A449AB40()
{
  result = qword_1EB13BB50;
  if (!qword_1EB13BB50)
  {
    sub_1A4499D50(255);
    sub_1A449ABF0(&qword_1EB13BB58, sub_1A4499C34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BB50);
  }

  return result;
}

uint64_t sub_1A449ABF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A449AC38()
{
  result = qword_1EB13BB60;
  if (!qword_1EB13BB60)
  {
    sub_1A449A490(255, &qword_1EB13BA98, sub_1A449A23C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4499E34();
    sub_1A3EC1A14();
    sub_1A449A310();
    sub_1A449ABF0(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BB60);
  }

  return result;
}

void sub_1A449ADB0(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for TTRWorkflowView(0);
  v46 = *(v2 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449BB14(0);
  v5 = v4;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A449BE94(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v39 = v1;
  sub_1A449BC5C();
  sub_1A44A5D0C(255, &qword_1EB13BB80, &type metadata for TTRStepView, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  v11 = v10;
  v12 = sub_1A449BD40();
  v13 = sub_1A449BD94();
  v14 = sub_1A449BDE8();
  v49 = &type metadata for TTRStepView;
  v50 = &type metadata for TTRWorkflowStep;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  swift_getOpaqueTypeConformance2();
  v41 = v7;
  sub_1A5248824();
  v15 = &v7[*(v5 + 36)];
  sub_1A524BBB4();
  v16 = sub_1A524A084();
  sub_1A41CD494(0);
  v15[*(v17 + 36)] = v16;
  sub_1A449BAB0(0, &unk_1EB13DA30, MEMORY[0x1E697C4F8], MEMORY[0x1E69E6F90]);
  v18 = sub_1A5249484();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F8E10;
  sub_1A449BAB0(0, &qword_1EB13BBC8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v22 = v49;
  swift_getKeyPath();
  v49 = v22;
  sub_1A449CB58();
  sub_1A52415D4();

  sub_1A5249464();
  sub_1A44A1F10(v21);
  swift_setDeallocating();
  (*(v19 + 8))(v21 + v20, v18);
  swift_deallocClassInstance();
  sub_1A449BFC0();
  v23 = v41;
  v24 = v42;
  sub_1A524AD94();

  sub_1A44A23E8(v23, sub_1A449BB14);
  KeyPath = swift_getKeyPath();
  v26 = v39;
  sub_1A5247C84();
  v27 = v49;
  v28 = (v24 + *(v43 + 36));
  *v28 = KeyPath;
  v28[1] = v27;
  sub_1A5247C84();
  v29 = v49;
  swift_getKeyPath();
  v49 = v29;
  sub_1A52415D4();

  LOBYTE(v15) = v29[5].Kind;

  LOBYTE(v49) = v15;
  v30 = v44;
  sub_1A44A46E4(v26, v44, type metadata accessor for TTRWorkflowView);
  v31 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v32 = swift_allocObject();
  sub_1A44A2224(v30, v32 + v31);
  sub_1A44A2308();
  v33 = v47;
  sub_1A524B144();

  sub_1A44A23E8(v24, sub_1A449BE94);
  v34 = sub_1A43F2548();
  v35 = swift_getKeyPath();
  sub_1A44A2448();
  v37 = (v33 + *(v36 + 36));
  *v37 = v35;
  v37[1] = v34;
}

uint64_t sub_1A449B374@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for TTRWorkflowView(0);
  v14[0] = *(v3 - 8);
  v4 = *(v14[0] + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = a1[3];
  v6 = a1[1];
  v32 = a1[2];
  v33[0] = v5;
  *(v33 + 9) = *(a1 + 57);
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = a1[3];
  v29 = v32;
  v30[0] = v8;
  *(v30 + 9) = *(a1 + 57);
  v27 = v31[0];
  v28 = v6;
  sub_1A44A3430(v31, &v41);
  sub_1A449BAB0(0, &qword_1EB13BBC8, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247CA4();
  v9 = v41;
  v10 = v42;
  swift_getKeyPath();
  v25 = v9;
  v26 = v10;
  sub_1A449BAB0(0, &qword_1EB13BD08, type metadata accessor for TTRWorkflowViewModel, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v36 = v22;
  v37 = v23;
  v38 = v24;
  v34 = v20;
  v35 = v21;

  v17 = v36;
  v18 = v37;
  v19 = v38;
  v15 = v34;
  v16 = v35;
  sub_1A44A46E4(a1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRWorkflowView);
  v11 = (*(v14[0] + 80) + 16) & ~*(v14[0] + 80);
  v12 = swift_allocObject();
  sub_1A44A2224(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1A44A5D0C(0, &qword_1EB13BB80, &type metadata for TTRStepView, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A449BD40();
  sub_1A449BD94();
  sub_1A449BDE8();
  sub_1A524AE14();

  v39[2] = v17;
  v39[3] = v18;
  v40 = v19;
  v39[0] = v15;
  v39[1] = v16;
  sub_1A44A3A18(v39);
  v43 = v29;
  v44[0] = v30[0];
  *(v44 + 9) = *(v30 + 9);
  v41 = v27;
  v42 = v28;
  return sub_1A44A3AA0(&v41);
}

void sub_1A449B6A8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  v4 = v3[3];
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v10 = v3[9];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v10;
  sub_1A44A384C(v4, v5);
}

uint64_t sub_1A449B73C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  *&v8 = *a1;
  *(&v8 + 1) = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  sub_1A44A384C(v8, v1);
  return sub_1A449C4B4(&v8);
}

void sub_1A449B798(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRWorkflowView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v19 = a1[2];
  v20 = v9;
  v12 = a1[5];
  v18 = a1[4];
  v13 = a1[6];
  KeyPath = swift_getKeyPath();
  v21 = 0;
  sub_1A44A46E4(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRWorkflowView);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1A44A2224(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = v19;
  *a3 = v20;
  *(a3 + 8) = v10;
  *(a3 + 16) = v17;
  *(a3 + 24) = v11;
  *(a3 + 32) = v18;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = 0;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = sub_1A44A3D10;
  *(a3 + 104) = v16;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A449B930()
{
  sub_1A44A3D70();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A449B96C@<X0>(void *a1@<X8>)
{
  sub_1A44A3D70();
  result = sub_1A5249244();
  *a1 = v3;
  return result;
}

uint64_t sub_1A449B9BC()
{
  sub_1A44A3D70();

  return sub_1A5249254();
}

uint64_t sub_1A449BA1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A449BAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A449BB48()
{
  if (!qword_1EB13BB70)
  {
    sub_1A5248464();
    sub_1A449BC5C();
    sub_1A44A5D0C(255, &qword_1EB13BB80, &type metadata for TTRStepView, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A449BD40();
    sub_1A449BD94();
    sub_1A449BDE8();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13BB70);
    }
  }
}

void sub_1A449BC5C()
{
  if (!qword_1EB13BB78)
  {
    sub_1A44A5D0C(255, &qword_1EB13BB80, &type metadata for TTRStepView, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A449BD40();
    sub_1A449BD94();
    sub_1A449BDE8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BB78);
    }
  }
}

unint64_t sub_1A449BD40()
{
  result = qword_1EB1C3528;
  if (!qword_1EB1C3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1C3528);
  }

  return result;
}

unint64_t sub_1A449BD94()
{
  result = qword_1EB13BB88;
  if (!qword_1EB13BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BB88);
  }

  return result;
}

unint64_t sub_1A449BDE8()
{
  result = qword_1EB13BB90;
  if (!qword_1EB13BB90)
  {
    sub_1A44A5D0C(255, &qword_1EB13BB80, &type metadata for TTRStepView, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A449BD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BB90);
  }

  return result;
}

void sub_1A449BEC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A449BF3C()
{
  if (!qword_1EB13BBA0)
  {
    sub_1A449BB14(255);
    sub_1A449BFC0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13BBA0);
    }
  }
}

unint64_t sub_1A449BFC0()
{
  result = qword_1EB13BBA8;
  if (!qword_1EB13BBA8)
  {
    sub_1A449BB14(255);
    sub_1A449C0A0(&qword_1EB13BBB0, sub_1A449BB48);
    sub_1A449C0A0(&qword_1EB127B08, sub_1A41CD494);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13BBA8);
  }

  return result;
}

uint64_t sub_1A449C0A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A449C158(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      type metadata accessor for TTRWorkflowView(0);
      sub_1A3E86EA0(v7);
      sub_1A5248274();
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1A449C258(uint64_t result)
{
  if (*(v1 + 80) == (result & 1))
  {
    *(v1 + 80) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A449CB58();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A449C338(double a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A449CB58();
    sub_1A52415C4();
  }
}

void sub_1A449C420(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = v1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  sub_1A44A384C(v3, v4);
}

uint64_t sub_1A449C4B4(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v19 = a1[2];
  v20 = *(a1 + 6);
  v4 = *(v1 + 40);
  v21 = *(v1 + 24);
  v22 = v4;
  v23 = *(v1 + 56);
  v24 = *(v1 + 72);
  sub_1A44A36BC(&v21, v28, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
  v5 = *(&v21 + 1);
  v6 = *(&v17 + 1);
  if (*(&v21 + 1))
  {
    v28[0] = v21;
    v28[1] = v22;
    v28[2] = v23;
    v29 = v24;
    v7 = v21;
    if (*(&v17 + 1))
    {
      v26[0] = v17;
      v26[1] = v18;
      v26[2] = v19;
      v27 = v20;
      sub_1A44A36BC(&v21, v25, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
      sub_1A44A36BC(&v17, v25, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
      sub_1A44A384C(v7, v5);
      sub_1A44A38B0();
      v15 = sub_1A524C594();

      sub_1A44A373C(v7, v5);
      sub_1A3C2C8A8(&v21, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v28[0] = v2;
      sub_1A449CB58();
      sub_1A52415C4();
      sub_1A3C2C8A8(&v17, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    }

    v14 = v17;
    sub_1A44A36BC(&v21, v26, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    sub_1A44A36BC(&v17, v26, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    sub_1A44A384C(v7, v5);

    v8 = v7;
LABEL_8:
    sub_1A44A373C(v8, v5);
    sub_1A44A373C(v14, v6);
    sub_1A3C2C8A8(&v21, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    goto LABEL_9;
  }

  v16 = v21;
  if (*(&v17 + 1))
  {
    v14 = v17;
    sub_1A44A36BC(&v21, v28, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    sub_1A44A36BC(&v17, v28, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
    v8 = v16;
    goto LABEL_8;
  }

  sub_1A44A36BC(&v21, v28, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
  sub_1A44A36BC(&v17, v28, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
  sub_1A44A373C(v16, 0);
  sub_1A3C2C8A8(&v21, &qword_1EB13BCE8, &type metadata for TTRWorkflowStep);
LABEL_11:
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = v18;
  *(v2 + 24) = v17;
  *(v2 + 40) = v13;
  *(v2 + 56) = v19;
  *(v2 + 72) = v20;
  return sub_1A44A373C(v11, v12);
}

uint64_t sub_1A449C938()
{
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  return *(v0 + 80);
}

uint64_t sub_1A449C9A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  *a2 = *(v3 + 80);
  return result;
}

double sub_1A449CA48()
{
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  return *(v0 + 88);
}

double sub_1A449CAB8@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A449CB58();
  sub_1A52415D4();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

unint64_t sub_1A449CB58()
{
  result = qword_1EB1C3538[0];
  if (!qword_1EB1C3538[0])
  {
    type metadata accessor for TTRWorkflowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C3538);
  }

  return result;
}

uint64_t sub_1A449CBB0(uint64_t result, uint64_t (*a2)(void))
{
  if (*(v2 + 80) != 1)
  {
    v4 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A449CB58();
    sub_1A52415C4();

    result = v4;
    if (!a2)
    {
      return result;
    }

    return a2();
  }

  *(v2 + 80) = 1;
  if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1A449CCC0()
{

  sub_1A44A373C(*(v0 + 24), *(v0 + 32));
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_305A4B5AB4AFF50DE413F9BA216CA8C220TTRWorkflowViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A449CD7C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10[2] = a2;
  sub_1A44A2AA4(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A29FC(0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A44A292C();
  v10[1] = v7;
  v10[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  sub_1A449BEC8(0, &qword_1EB13BC08, sub_1A44A292C, sub_1A410AB24);
  MEMORY[0x1EEE9AC00](v8);
  *v5 = sub_1A5249574();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  sub_1A44A4E24(0, &qword_1EB13BCC0, sub_1A44A2BB0);
  sub_1A449D1B8(a1, &v5[*(v9 + 44)]);
}

void sub_1A449D1B8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14[4] = a2;
  sub_1A44A3034();
  v14[10] = *(v3 - 8);
  v14[11] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v14[12] = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v14[9] = v14 - v6;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A44A2C90();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v14[8] = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14[7] = v14 - v11;
  sub_1A449D7A0();
  v12 = a1[2];
  v13 = a1[3];
  v14[2] = a1[6];
  v14[16] = v12;
  v14[17] = v13;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A449D7A0()
{
  sub_1A44A354C();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A44A2D24();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0[3];
  v21[2] = v0[2];
  v22[0] = v7;
  *(v22 + 9) = *(v0 + 57);
  v8 = v0[1];
  v21[0] = *v0;
  v21[1] = v8;
  if (BYTE8(v22[0]))
  {
    *v6 = sub_1A5249314();
    *(v6 + 1) = 0;
    v6[16] = 1;
    sub_1A44A4E24(0, &qword_1EB13BCE0, sub_1A44A2DB8);
    sub_1A449DD94(v21, &v6[*(v9 + 44)]);
    sub_1A44A35E0(v6, v3, sub_1A44A2D24);
    swift_storeEnumTagMultiPayload();
    sub_1A44A5D0C(0, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A449C0A0(&qword_1EB13BCD8, sub_1A44A2D24);
    sub_1A3F1CF90();
    sub_1A5249744();
    return sub_1A44A23E8(v6, sub_1A44A2D24);
  }

  else
  {
    sub_1A524BC74();
    sub_1A52481F4();
    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15[24] = 1;
    v15[16] = v17;
    v15[8] = v19;
    *v3 = 0;
    v3[8] = 1;
    *(v3 + 2) = v11;
    v3[24] = v12;
    *(v3 + 4) = v13;
    v3[40] = v14;
    *(v3 + 3) = v20;
    swift_storeEnumTagMultiPayload();
    sub_1A44A5D0C(0, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A449C0A0(&qword_1EB13BCD8, sub_1A44A2D24);
    sub_1A3F1CF90();
    return sub_1A5249744();
  }
}

unint64_t sub_1A449DAC8@<X0>(unint64_t *a1@<X8>)
{
  result = TTRWorkflowAction.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A449DB14@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[3];
  v9 = a1[2];
  v10[0] = v2;
  *(v10 + 9) = *(a1 + 57);
  v3 = *(v10 + 9);
  v4 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v4;
  a2[2] = v9;
  a2[3] = v2;
  *(a2 + 57) = v3;
  *a2 = v5;
  a2[1] = v4;
  return sub_1A44A34F0(v8, &v7);
}

void sub_1A449DB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 56))
  {
    v8 = *(a1 + 8);
    v16 = *(a2 + 72);
    v9 = *(a2 + 64);
    v15 = v9;
    v10 = v16;

    if ((v10 & 1) == 0)
    {
      sub_1A524D254();
      v11 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A449BA1C(&v15, sub_1A44A3468);
      (*(v5 + 8))(v7, v4);
      v9 = v14;
    }

    if (v9)
    {
      if (*(v9 + 88) == v8)
      {
        *(v9 + 88) = v8;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v13 - 2) = v9;
        *(&v13 - 1) = v8;
        v14 = v9;
        sub_1A449CB58();
        sub_1A52415C4();
      }
    }
  }
}

uint64_t sub_1A449DD94@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v31 = sub_1A5242424();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A5D0C(0, &unk_1EB121A38, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697D670]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1A44A2E14();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = swift_allocObject();
  v19 = a1[3];
  v18[3] = a1[2];
  v18[4] = v19;
  *(v18 + 73) = *(a1 + 57);
  v20 = a1[1];
  v18[1] = *a1;
  v18[2] = v20;
  sub_1A44A3430(a1, v33);
  v21 = MEMORY[0x1E6981E70];
  v22 = MEMORY[0x1E6981E60];
  sub_1A524B704();
  sub_1A5242414();
  sub_1A44A2FD0(&qword_1EB121A48, &unk_1EB121A38, v21, v22);
  sub_1A449C0A0(&qword_1EB124F48, MEMORY[0x1E69C1E30]);
  v23 = v31;
  sub_1A524A944();
  (*(v3 + 8))(v5, v23);
  (*(v8 + 8))(v10, v7);
  v24 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  v26 = &v17[*(v12 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_1A44A35E0(v17, v14, sub_1A44A2E14);
  v27 = v32;
  *v32 = 0;
  *(v27 + 8) = 1;
  v28 = v27;
  sub_1A44A2DEC(0);
  sub_1A44A35E0(v14, v28 + *(v29 + 64), sub_1A44A2E14);
  sub_1A44A23E8(v17, sub_1A44A2E14);
  return sub_1A44A23E8(v14, sub_1A44A2E14);
}

uint64_t sub_1A449E148(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 72);
  v6 = *(a1 + 64);
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A449BA1C(&v13, sub_1A44A3468);
    result = (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (v6)
  {
    if (*(v6 + 80) == 1)
    {
      *(v6 + 80) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v11 - 2) = v6;
      *(&v11 - 8) = 1;
      v12 = v6;
      sub_1A449CB58();
      sub_1A52415C4();
    }
  }

  return result;
}

uint64_t sub_1A449E368()
{
  sub_1A524A044();
  sub_1A449BEC8(0, &qword_1EB13BC08, sub_1A44A292C, sub_1A410AB24);
  sub_1A44A32CC();
  return sub_1A5247D14();
}

void sub_1A449E430()
{
  sub_1A43203D4(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v13 - v3 + 56);
  v5 = sub_1A524B544();
  sub_1A3EE213C();
  v7 = (v4 + *(v6 + 36));
  sub_1A449BAB0(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
  v9 = *(v8 + 28);
  v10 = *MEMORY[0x1E69816C0];
  v11 = sub_1A524B5B4();
  (*(*(v11 - 8) + 104))(v7 + v9, v10, v11);
  *v7 = swift_getKeyPath();
  *v4 = v5;
  *(v4 + *(v1 + 44)) = sub_1A43F2548();
  sub_1A5249574();
  LOBYTE(v14) = 1;
  sub_1A449E70C(v13);
}

void sub_1A449E70C(uint64_t *a1@<X8>)
{
  v47 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249434();
  v4 = sub_1A524A444();
  v6 = v5;
  v8 = v7;
  sub_1A524A164();
  v42 = sub_1A524A154();
  v9 = *(v42 - 8);
  v41 = *(v9 + 56);
  v43 = v9 + 56;
  v41(v3, 1, 1, v42);
  sub_1A524A1B4();
  v40 = sub_1A3E75D84;
  sub_1A449BA1C(v3, sub_1A3E75D84);
  v10 = sub_1A524A3C4();
  v12 = v11;
  v14 = v13;

  sub_1A3E04DF4(v4, v6, v8 & 1);

  v49 = sub_1A5249A14();
  v15 = sub_1A524A374();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v44 = v19;
  sub_1A3E04DF4(v10, v12, v14 & 1);

  sub_1A5249434();
  v20 = sub_1A524A444();
  v22 = v21;
  LOBYTE(v10) = v23;
  v41(v3, 1, 1, v42);
  sub_1A524A1B4();
  sub_1A449BA1C(v3, v40);
  v24 = sub_1A524A3C4();
  v26 = v25;
  v28 = v27;

  sub_1A3E04DF4(v20, v22, v10 & 1);

  v49 = sub_1A5249A14();
  v29 = sub_1A524A374();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1A3E04DF4(v24, v26, v28 & 1);

  v36 = v44 & 1;
  v48 = v44 & 1;
  LOBYTE(v49) = v44 & 1;
  v50 = v33 & 1;
  v38 = v46;
  v37 = v47;
  *v47 = v46;
  v37[1] = v18;
  *(v37 + 16) = v36;
  v37[3] = v45;
  v37[4] = v29;
  v37[5] = v31;
  *(v37 + 48) = v33 & 1;
  v37[7] = v35;
  sub_1A3E75E68(v38, v18, v36);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A449EAE4(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A44A4E24(0, &qword_1EB13BD78, sub_1A44A4640);
  sub_1A449E430();
}

uint64_t sub_1A449EB54()
{
  v1 = v0[1];
  v35 = *v0;
  v36 = v1;
  *&v37[25] = *(v0 + 57);
  v2 = v0[3];
  *v37 = v0[2];
  *&v37[16] = v2;
  v3 = v35;
  v4 = (*&v37[1] << 8) | ((*&v37[5] | (v37[7] << 16)) << 40);
  if (v37[40] <= 1u)
  {
    if (v37[40])
    {
      v13 = v35;
      v14 = 0uLL;
      *v15 = 1;
      v5 = v36;
      *&v15[8] = v36;
      *&v15[24] = v4 | v37[0];
      *&v15[32] = *&v37[8];
      *&v15[48] = swift_getKeyPath();
      v15[56] = 0;
      v20 = *v15;
      v21 = *&v15[16];
      *v22 = *&v37[8];
      *&v22[9] = *&v15[41];
      v18 = v35;
      v19 = 0uLL;
      v16 = 1;
      v22[25] = 1;
    }

    else
    {
      v5 = v4 | v37[0];
      v13 = v35;
      v14 = v36;
      *v15 = 257;
      *&v15[8] = v5;
      *&v15[16] = *&v37[8];
      *&v15[32] = *&v37[24];
      *&v15[48] = swift_getKeyPath();
      v15[56] = 0;
      v20 = *v15;
      v21 = *&v37[8];
      *v22 = *&v37[24];
      *&v22[9] = *&v15[41];
      v18 = v35;
      v19 = v36;
      v16 = 0;
      v22[25] = 0;
    }

    sub_1A44A34F0(&v35, &v25);
    sub_1A3C66EE8(v5);
    sub_1A44A45D8(&v13, &v25);
    sub_1A44A4328();
    sub_1A5249744();
    v20 = v32;
    v21 = v33;
    *v22 = *v34;
    *&v22[10] = *&v34[10];
    v18 = v30;
    v19 = v31;
    v17 = 0;
    v22[26] = 0;
    v9 = MEMORY[0x1E697F960];
    sub_1A44A5D0C(0, &qword_1EB13BD48, &type metadata for TTRActionButtonView, &type metadata for TTRActionButtonView, MEMORY[0x1E697F960]);
    sub_1A44A5D0C(0, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, &type metadata for TTRActionSwitchView, v9);
    sub_1A44A437C(&qword_1EB13BD60, &qword_1EB13BD48, &type metadata for TTRActionButtonView, sub_1A44A4328);
    sub_1A44A437C(&qword_1EB13BD68, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, sub_1A44A4064);
    sub_1A5249744();
    v20 = v27;
    v21 = v28;
    *v22 = v29[0];
    *&v22[11] = *(v29 + 11);
    v18 = v25;
    v19 = v26;
    v24 = 0;
    sub_1A44A419C();
    sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, v9);
    sub_1A44A4250();
    sub_1A44A440C();
    sub_1A5249744();
    sub_1A3C33378(v5);
    return sub_1A44A4610(&v13);
  }

  else
  {
    if (v37[40] == 2)
    {
      LOBYTE(v25) = v37[0] & 1;
      v11 = v36;
      v12 = *&v37[8];
      sub_1A44A34F0(&v35, &v18);

      sub_1A524B694();
      v13 = v3;
      v14 = v11;
      v15[0] = 0;
      v15[8] = v18;
      *&v15[16] = *(&v18 + 1);
      *&v15[24] = v12;
      *&v15[40] = swift_getKeyPath();
      v15[48] = 0;
      v20 = *v15;
      v21 = *&v15[16];
      *v22 = *&v15[32];
      *&v22[16] = 0;
      v18 = v3;
      v19 = v11;
      v16 = 0;
      sub_1A44A4570(&v13, &v25);
      sub_1A44A4064();
      sub_1A5249744();
      v20 = v32;
      v21 = v33;
      *v22 = *v34;
      *&v22[16] = *&v34[16];
      v18 = v30;
      v19 = v31;
      v17 = 1;
      v22[26] = 1;
      v6 = MEMORY[0x1E697F960];
      sub_1A44A5D0C(0, &qword_1EB13BD48, &type metadata for TTRActionButtonView, &type metadata for TTRActionButtonView, MEMORY[0x1E697F960]);
      sub_1A44A5D0C(0, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, &type metadata for TTRActionSwitchView, v6);
      sub_1A44A437C(&qword_1EB13BD60, &qword_1EB13BD48, &type metadata for TTRActionButtonView, sub_1A44A4328);
      sub_1A44A437C(&qword_1EB13BD68, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, sub_1A44A4064);
      sub_1A5249744();
      v20 = v27;
      v21 = v28;
      *v22 = v29[0];
      *&v22[11] = *(v29 + 11);
      v18 = v25;
      v19 = v26;
      v24 = 0;
      sub_1A44A419C();
      sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, v6);
      sub_1A44A4250();
      sub_1A44A440C();
      sub_1A5249744();
    }

    else
    {
      if (v37[40] == 3)
      {
        v30 = v35;
        v31 = v36;
        LOBYTE(v32) = 0;
        *(&v32 + 1) = v4 | v37[0];
        v33 = *&v37[8];
        *&v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_1A44A46E4(&v18, &v25, sub_1A44A3F94);
        sub_1A44A3F94(0);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v7 = vorrq_s8(*&v37[8], *&v37[24]);
      if (v4 | v37[0] | *&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v36 | *(&v35 + 1) | *(&v36 + 1) | v35)
      {
        LOBYTE(v25) = 1;
        sub_1A524B694();
        *&v30 = 0xD000000000000012;
        *(&v30 + 1) = 0x80000001A53D8F80;
        *&v31 = 0xD000000000000055;
        *(&v31 + 1) = 0x80000001A53D8FA0;
        LOBYTE(v32) = 0;
        BYTE8(v32) = v18;
        *&v33 = *(&v18 + 1);
        *(&v33 + 1) = sub_1A449F798;
        *v34 = 0;
        *&v34[8] = swift_getKeyPath();
        v34[16] = 0;
        v20 = v32;
        v21 = v33;
        *v22 = *v34;
        v22[16] = 0;
        v18 = v30;
        v19 = v31;
        v23 = 0;
        sub_1A44A4570(&v30, &v25);
        sub_1A44A4064();
        sub_1A44A40B8();
        sub_1A5249744();
        sub_1A44A410C(&v25, &v18);
        v24 = 1;
        sub_1A44A419C();
        sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, MEMORY[0x1E697F960]);
        sub_1A44A4250();
        sub_1A44A440C();
        sub_1A5249744();
        sub_1A44A45A8(&v30);
        return sub_1A44A44B8(&v25);
      }

      LOBYTE(v25) = 1;
      sub_1A524B694();
      *&v13 = 0xD000000000000012;
      *(&v13 + 1) = 0x80000001A53D9000;
      *&v14 = 0xD00000000000002ELL;
      *(&v14 + 1) = 0x80000001A53D9020;
      v15[0] = 0;
      v15[8] = v18;
      *&v15[16] = *(&v18 + 1);
      *&v15[24] = sub_1A449F6C4;
      *&v15[32] = 0;
      *&v15[40] = swift_getKeyPath();
      v15[48] = 0;
      v20 = *v15;
      v21 = *&v15[16];
      *v22 = *&v15[32];
      *&v22[16] = 256;
      v18 = v13;
      v19 = v14;
      v16 = 1;
      sub_1A44A4570(&v13, &v25);
      sub_1A44A4064();
      sub_1A5249744();
      v20 = v32;
      v21 = v33;
      *v22 = *v34;
      *&v22[16] = *&v34[16];
      v18 = v30;
      v19 = v31;
      v17 = 1;
      v22[26] = 1;
      v10 = MEMORY[0x1E697F960];
      sub_1A44A5D0C(0, &qword_1EB13BD48, &type metadata for TTRActionButtonView, &type metadata for TTRActionButtonView, MEMORY[0x1E697F960]);
      sub_1A44A5D0C(0, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, &type metadata for TTRActionSwitchView, v10);
      sub_1A44A437C(&qword_1EB13BD60, &qword_1EB13BD48, &type metadata for TTRActionButtonView, sub_1A44A4328);
      sub_1A44A437C(&qword_1EB13BD68, &qword_1EB13BD50, &type metadata for TTRActionSwitchView, sub_1A44A4064);
      sub_1A5249744();
      v20 = v27;
      v21 = v28;
      *v22 = v29[0];
      *&v22[11] = *(v29 + 11);
      v18 = v25;
      v19 = v26;
      v24 = 0;
      sub_1A44A419C();
      sub_1A44A5D0C(0, &qword_1EB13BD38, &type metadata for TTRActionSwitchView, &type metadata for TTRActionMenuView, v10);
      sub_1A44A4250();
      sub_1A44A440C();
      sub_1A5249744();
    }

    return sub_1A44A45A8(&v13);
  }
}

uint64_t sub_1A449F6DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1A3C57128(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_1A44A1BB0(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1A3D5FAFC(a2);
    *v2 = v7;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CA0];
    sub_1A3C2C8A8(a1, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8);
    sub_1A44A16BC(a2, v8);
    sub_1A3D5FAFC(a2);
    return sub_1A3C2C8A8(v8, &qword_1EB126130, v6 + 8);
  }

  return result;
}

void sub_1A449F7B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = *v3;
  v4 = v3[1];
  v6 = v5;
  v7 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A449F8A0(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 88);
  v6 = *(a1 + 80);
  v17 = v6;
  v7 = v18;

  if ((v7 & 1) == 0)
  {
    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A449BA1C(&v17, sub_1A44A3468);
    result = (*(v3 + 8))(v5, v2);
    v6 = v14;
  }

  if (v6)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = sub_1A457FAB4();
      v10();
    }

    v15 = *(a1 + 56);
    v16 = *(a1 + 72);
    v12 = *(a1 + 56);
    v13 = *(a1 + 72);
    sub_1A44A36BC(&v15, &v14, &qword_1EB125C80, &type metadata for TTRWorkflow);
    sub_1A457FC00(&v12, &v14);
    sub_1A3DAECB8(v12, *(&v12 + 1));
    sub_1A449C4B4(&v14);
  }

  return result;
}

uint64_t sub_1A449FAB8@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1A5249E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A60D0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249E54();
  sub_1A44A5BE4();
  v11 = v10;
  v12 = sub_1A449C0A0(&qword_1EB13BEB0, sub_1A44A5BE4);
  v13 = sub_1A449C0A0(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  sub_1A524A934();
  (*(v2 + 8))(v4, v1);
  sub_1A524A1A4();
  v15[2] = v11;
  v15[3] = v1;
  v15[4] = v12;
  v15[5] = v13;
  swift_getOpaqueTypeConformance2();
  sub_1A524A8F4();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A449FD10()
{
  sub_1A44A5BE4();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[3];
  v24[2] = v0[2];
  v24[3] = v6;
  v25[0] = v0[4];
  *(v25 + 9) = *(v0 + 73);
  v7 = v0[1];
  v24[0] = *v0;
  v24[1] = v7;
  v8 = swift_allocObject();
  v9 = v0[3];
  v8[3] = v0[2];
  v8[4] = v9;
  v8[5] = v0[4];
  *(v8 + 89) = *(v0 + 73);
  v10 = v0[1];
  v8[1] = *v0;
  v8[2] = v10;
  v19 = v24;
  sub_1A44A45D8(v24, &v20);
  sub_1A44A5C80();
  sub_1A44A319C(&qword_1EB13BE90, sub_1A44A5C80, sub_1A44A5D60);
  sub_1A524B704();
  sub_1A44A5F94();
  v11 = sub_1A449C0A0(&qword_1EB13BEB0, sub_1A44A5BE4);
  sub_1A44A60D0();
  v13 = v12;
  v14 = sub_1A5249E64();
  v15 = sub_1A449C0A0(&qword_1EB127A50, MEMORY[0x1E697CB70]);
  v20 = v2;
  v21 = v14;
  v22 = v11;
  v23 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v13;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A524A584();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A44A0010@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  sub_1A44A4D08();
  v26 = v3;
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A4C40();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v31 = *(a1 + 40);
  v32 = v31;
  sub_1A44A6498(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v29 = a1;
  sub_1A44A4D64();
  sub_1A524B854();
  v30 = v32;
  sub_1A524B6A4();
  v14 = swift_allocObject();
  v15 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v15;
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = *(a1 + 80);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  sub_1A44A4570(a1, &v30);
  sub_1A449C0A0(&qword_1EB13BDE0, sub_1A44A4D08);
  v17 = v26;
  sub_1A524B154();

  (*(v27 + 8))(v5, v17);
  v18 = *(v8 + 16);
  v18(v10, v13, v7);
  LOBYTE(v30) = 1;
  v19 = v28;
  v18(v28, v10, v7);
  sub_1A44A4BD8();
  v21 = &v19[*(v20 + 48)];
  v22 = v30;
  *v21 = 0;
  v21[8] = v22;
  v23 = *(v8 + 8);
  v23(v13, v7);
  return (v23)(v10, v7);
}

void sub_1A44A03A4(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + 80);
  v6 = *(a1 + 72);
  v13 = v6;
  v7 = v14;

  if ((v7 & 1) == 0)
  {
    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A449BA1C(&v13, sub_1A44A3468);
    (*(v3 + 8))(v5, v2);
    v6 = v12;
  }

  if (v6)
  {

    v9 = sub_1A457FAB4();

    v10 = *(a1 + 56);
    v12 = *(a1 + 40);
    sub_1A44A6498(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v10(v9, v11[15]);
  }
}

uint64_t sub_1A44A0590@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v7[4] = *(v1 + 64);
  v8 = *(v1 + 80);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_1A44A4E24(0, &qword_1EB13BDB8, sub_1A44A4BA4);
  return sub_1A44A0010(v7, (a1 + *(v5 + 44)));
}

void sub_1A44A0628(uint64_t *a1)
{
  v2 = sub_1A524BDC4();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v21 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A5014();
  v20 = v4;
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44A4F60();
  v16 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v23 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v18 = &v12 - v9;
  v10 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v15 = v10;
  v13 = *(a1 + 32);
  sub_1A449BAB0(0, &qword_1EB13BE68, sub_1A44A3F94, MEMORY[0x1E6981790]);
  v22 = v11;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}