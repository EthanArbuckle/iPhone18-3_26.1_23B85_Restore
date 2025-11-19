double sub_1A421D1B8(uint64_t a1)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421A594(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A421E06C(v1 + *(a1 + 56), v9, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A421DFE8(v9, v12);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = *v12;
  sub_1A421DF88(v12, type metadata accessor for LemonadeItemsLayoutSpec);
  return v14;
}

uint64_t sub_1A421D420@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421A594(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1A421E06C(v2, &v13 - v9, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A421DFE8(v10, a1);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A421D694()
{
  sub_1A421DEF0(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A421A594(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A421DEF0(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A421A594(319, &qword_1EB124690, type metadata accessor for CGSize, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A421A594(319, &qword_1EB135948, type metadata accessor for UIEdgeInsets, MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A421DEF0(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A421A594(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A421DEF0(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  swift_checkMetadataState();
                  if (v8 <= 0x3F)
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

uint64_t sub_1A421D914(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1A5242D14() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v6 + 64);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + v7;
  v11 = *(*(a3 + 16) - 8);
  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v13 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v9 | 7;
  v18 = v8 + 88;
  v19 = (v9 | 7) + 9;
  v20 = v12 + 8;
  v21 = v14 + 9;
  if (a2 <= v16)
  {
    goto LABEL_34;
  }

  v22 = ((v15 + v14 + ((v21 + ((v20 + ((v19 + ((v18 + ((v17 + 33) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v14)) & ~v14) + v15;
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v13 > 0xFE)
      {
        v31 = *(*(*(a3 + 16) - 8) + 48);

        return v31((v21 + ((v20 + ((v19 + ((v18 + ((a1 + v17 + 33) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 32);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v16 + (v29 | v27) + 1;
}

void sub_1A421DBB4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1A5242D14() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v8 + 64);
  }

  v11 = *(v8 + 80);
  v12 = ((v11 + 16) & ~v11) + v9;
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  if (v15 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  v18 = v11 | 7;
  v19 = ((*(v14 + 64) + v16 + ((v16 + 9 + ((v13 + 8 + ((v18 + 9 + ((v10 + 88 + (((v11 | 7) + 33) & ~(v11 | 7))) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v16)) & ~v16) + *(v14 + 64);
  if (a3 <= v17)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v17 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v17 < a2)
  {
    v21 = ~v17 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_52:
              if (v20 == 2)
              {
                *(a1 + v19) = v22;
              }

              else
              {
                *(a1 + v19) = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v25;
        *(a1 + 2) = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v20)
    {
      *(a1 + v19) = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(a1 + v19) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v19) = 0;
  }

  else if (v20)
  {
    *(a1 + v19) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v15 > 0xFE)
  {
    v26 = *(v14 + 56);

    v26((v16 + 9 + ((v13 + 8 + ((v18 + 9 + ((v10 + 88 + ((a1 + v18 + 33) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v16, a2);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 32) = 0;
    *a1 = (a2 - 255);
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 32) = -a2;
  }
}

void sub_1A421DEF0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A421DF40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A421DF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A421DFE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A421E06C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A421A594(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void PXExtendedTraitCollection.storyChromeLayoutSpec.getter()
{
  swift_getKeyPath();
  sub_1A421E254();
  sub_1A52457F4();
}

unint64_t sub_1A421E254()
{
  result = qword_1EB126868;
  if (!qword_1EB126868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126868);
  }

  return result;
}

uint64_t sub_1A421E2E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3E87388(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosSearchMapView.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotosSearchMapView() + 20);

  return sub_1A3EED680(v3, a1);
}

uint64_t type metadata accessor for PhotosSearchMapView()
{
  result = qword_1EB174070;
  if (!qword_1EB174070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSearchMapView.completion.getter()
{
  v1 = *(v0 + *(type metadata accessor for PhotosSearchMapView() + 24));

  return v1;
}

__n128 PhotosSearchMapView.init(configuration:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_1A524D464();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v9 - 8);
  *a4 = swift_getKeyPath();
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for PhotosSearchMapView();
  v11 = a4 + v10[7];
  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  sub_1A421E988(0);
  sub_1A524B694();
  v12 = v36;
  v13 = v37;
  v14 = v35;
  *v11 = v34;
  *(v11 + 1) = v14;
  v11[32] = v12;
  *(v11 + 5) = v13;
  v15 = v10[8];
  *&v31 = 0;
  sub_1A421EA88();
  sub_1A524B694();
  *(a4 + v15) = v34;
  v16 = a4 + v10[9];
  sub_1A421EAF0(0);
  v31 = 0uLL;
  sub_1A524B694();
  v17 = v35;
  *v16 = v34;
  *(v16 + 2) = v17;
  v25 = v10[10];
  sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  *&v34 = MEMORY[0x1E69E7CC0];
  sub_1A421EBB8(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A421EB84(0);
  sub_1A421EBB8(&qword_1EB126E30, sub_1A421EB84);
  sub_1A524E224();
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8090], v28);
  *(a4 + v25) = sub_1A524D4B4();
  v18 = a4 + v10[5];
  v19 = *(a1 + 48);
  *(v18 + 2) = *(a1 + 32);
  *(v18 + 3) = v19;
  v20 = *(a1 + 16);
  *v18 = *a1;
  *(v18 + 1) = v20;
  *(v18 + 107) = *(a1 + 107);
  result = *(a1 + 80);
  v22 = *(a1 + 96);
  *(v18 + 5) = result;
  *(v18 + 6) = v22;
  *(v18 + 4) = *(a1 + 64);
  v23 = (a4 + v10[6]);
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  return result;
}

void sub_1A421E9BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A421EA20()
{
  if (!qword_1EB120840)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB120840);
    }
  }
}

void sub_1A421EA88()
{
  if (!qword_1EB120A40)
  {
    sub_1A3C52C70(255, &qword_1EB126B10);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120A40);
    }
  }
}

unint64_t sub_1A421EB24()
{
  result = qword_1EB124A70;
  if (!qword_1EB124A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB124A70);
  }

  return result;
}

uint64_t sub_1A421EBB8(unint64_t *a1, void (*a2)(uint64_t))
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

void PhotosSearchMapView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PhotosSearchMapView();
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v15 = v1;
  sub_1A421F7F4();
  sub_1A421F974();
  v6 = v5;
  sub_1A421FF24(255);
  v8 = v7;
  sub_1A421FA74();
  sub_1A421FB44();
  sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
  sub_1A3D5F9DC();
  swift_getOpaqueTypeConformance2();
  v16 = v6;
  v17 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24);
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A4222CD0(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v9 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v10 = swift_allocObject();
  sub_1A42210EC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1A421FD50(0, &qword_1EB135A50, sub_1A4221168);
  v12 = (a1 + *(v11 + 36));
  *v12 = sub_1A4221150;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
}

uint64_t sub_1A421EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = sub_1A5249B64();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421FA74();
  v60 = v4;
  v56 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421F974();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BC74();
  v53 = v9;
  v54 = v8;
  v10 = *(type metadata accessor for PhotosSearchMapView() + 32);
  v64 = a1;
  v95 = *(a1 + v10);
  sub_1A421E9BC(0, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v11 = v68;
  if (v68)
  {
    *(swift_allocObject() + 16) = v11;
    v12 = v11;
    PXDisplayCollectionDetailedCountsMake(sub_1A403478C);
    v51 = v13;
    v15 = v14;
    v52 = sub_1A5248874();
    v50 = sub_1A524A084();

    v16 = v15;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v16 = 0;
    v50 = 0;
  }

  sub_1A524B3C4();
  v17 = sub_1A524B474();
  v46 = v17;

  v18 = sub_1A524B3C4();
  v49 = v18;
  sub_1A5247EE4();
  v19 = v83;
  v20 = v84;
  v21 = HIDWORD(v84);
  v48 = HIDWORD(v84);
  v22 = v85;
  v23 = *v86;
  v47 = *v86;
  v24 = *&v86[8];
  v25 = sub_1A524BC74();
  v27 = v26;
  LOBYTE(v95) = 0;
  v28 = sub_1A524A064();
  *&v68 = v19;
  *(&v68 + 1) = __PAIR64__(v21, v20);
  *&v69 = v22;
  *(&v69 + 1) = v23;
  *&v70 = v24;
  *(&v70 + 1) = v18;
  LOWORD(v71) = 256;
  *(&v71 + 1) = v17;
  LOWORD(v72) = 256;
  *(&v72 + 1) = v25;
  *&v73 = v27;
  *(&v73 + 1) = 0x3FF0000000000000;
  LOWORD(v74) = 0;
  BYTE8(v74) = v28;
  v75 = 0u;
  v76 = 0u;
  LOWORD(v77) = 1;
  v29 = v51;
  v30 = v52;
  LOBYTE(v23) = v50;
  sub_1A3C66EE8(v51);
  sub_1A4222CD0(&v68, &v95, sub_1A421FD00);
  sub_1A3C33378(v29);
  *(&v108[6] + 7) = v74;
  *(&v108[7] + 7) = v75;
  *(&v108[8] + 7) = v76;
  *(&v108[2] + 7) = v70;
  *(&v108[3] + 7) = v71;
  *(&v108[4] + 7) = v72;
  *(&v108[5] + 7) = v73;
  *(v108 + 7) = v68;
  *(&v108[9] + 7) = v77;
  *(&v108[1] + 7) = v69;
  *&v95 = v19;
  *(&v95 + 1) = __PAIR64__(v48, v20);
  *&v96 = v22;
  *(&v96 + 1) = v47;
  *&v97 = v24;
  *(&v97 + 1) = v49;
  LOWORD(v98) = 256;
  *(&v98 + 1) = v46;
  LOWORD(v99) = 256;
  *(&v99 + 1) = v25;
  *&v100 = v27;
  *(&v100 + 1) = 0x3FF0000000000000;
  LOWORD(v101) = 0;
  BYTE8(v101) = v28;
  v102 = 0u;
  v103 = 0u;
  LOWORD(v104) = 1;
  sub_1A4222860(&v95, sub_1A421FD00);
  sub_1A3C33378(v29);
  *&v82[105] = v108[6];
  *&v82[121] = v108[7];
  *&v82[137] = v108[8];
  *&v82[146] = *(&v108[8] + 9);
  *&v82[41] = v108[2];
  *&v82[57] = v108[3];
  *&v82[73] = v108[4];
  *&v82[89] = v108[5];
  *&v82[9] = v108[0];
  *&v82[25] = v108[1];
  v92 = v108[6];
  v93 = v108[7];
  *v94 = v108[8];
  *&v94[9] = *(&v108[8] + 9);
  v88 = v108[2];
  v89 = v108[3];
  v90 = v108[4];
  v91 = v108[5];
  *&v86[1] = v108[0];
  *&v81 = v29;
  *(&v81 + 1) = v16;
  *v82 = v30;
  v82[8] = v23;
  v83 = v29;
  v84 = v16;
  v85 = v30;
  v86[0] = v23;
  v87 = v108[1];
  sub_1A4222CD0(&v81, &v95, sub_1A421FBD8);
  sub_1A4222860(&v83, sub_1A421FBD8);
  v77 = *&v82[112];
  v78 = *&v82[128];
  v79 = *&v82[144];
  v80 = *&v82[160];
  v73 = *&v82[48];
  v74 = *&v82[64];
  v75 = *&v82[80];
  v76 = *&v82[96];
  v69 = v81;
  v70 = *v82;
  v71 = *&v82[16];
  v72 = *&v82[32];
  *&v68 = v54;
  *(&v68 + 1) = v53;
  v66 = sub_1A3C38BD4();
  v67 = v31;
  sub_1A421FB44();
  v33 = v32;
  v34 = sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
  v35 = sub_1A3D5F9DC();
  v36 = MEMORY[0x1E69E6158];
  v37 = v55;
  sub_1A524ABB4();

  v105 = v78;
  v106 = v79;
  v107 = v80;
  v101 = v74;
  v102 = v75;
  v103 = v76;
  v104 = v77;
  v97 = v70;
  v98 = v71;
  v99 = v72;
  v100 = v73;
  v95 = v68;
  v96 = v69;
  sub_1A4222860(&v95, sub_1A421FB44);
  v38 = v57;
  sub_1A5249B54();
  *&v68 = v33;
  *(&v68 + 1) = v36;
  *&v69 = v34;
  *(&v69 + 1) = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v59;
  v40 = v60;
  sub_1A524AED4();
  (*(v58 + 8))(v38, v61);
  v42 = (*(v56 + 8))(v37, v40);
  MEMORY[0x1EEE9AC00](v42);
  *(&v45 - 2) = v64;
  sub_1A421FF24(0);
  *&v68 = v40;
  *(&v68 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24);
  v43 = v63;
  sub_1A524B0E4();
  return (*(v62 + 8))(v41, v43);
}

void sub_1A421F7F4()
{
  if (!qword_1EB1359B8)
  {
    sub_1A421F974();
    sub_1A421FF24(255);
    sub_1A421FA74();
    sub_1A421FB44();
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359B8);
    }
  }
}

void sub_1A421F974()
{
  if (!qword_1EB1359C0)
  {
    sub_1A421FA74();
    sub_1A421FB44();
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359C0);
    }
  }
}

void sub_1A421FA74()
{
  if (!qword_1EB1359C8)
  {
    sub_1A421FB44();
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1359C8);
    }
  }
}

void sub_1A421FB44()
{
  if (!qword_1EB1359D0)
  {
    sub_1A421FBD8(255);
    sub_1A421EBB8(&qword_1EB135A20, sub_1A421FBD8);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1359D0);
    }
  }
}

void sub_1A421FC0C()
{
  if (!qword_1EB1359E0)
  {
    sub_1A421FC7C();
    sub_1A421FD00(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1359E0);
    }
  }
}

void sub_1A421FC7C()
{
  if (!qword_1EB1359E8)
  {
    sub_1A4222A2C(255, &qword_1EB1359F0, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1359E8);
    }
  }
}

void sub_1A421FD50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A421FDDC()
{
  if (!qword_1EB135A10)
  {
    sub_1A421FEA8();
    sub_1A3FA9580();
    sub_1A421EBB8(&qword_1EB128AC0, sub_1A421FEA8);
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135A10);
    }
  }
}

void sub_1A421FEA8()
{
  if (!qword_1EB128AB0)
  {
    sub_1A3FA9580();
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128AB0);
    }
  }
}

void sub_1A421FF58()
{
  if (!qword_1EB135A40)
  {
    sub_1A3F1E8D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135A40);
    }
  }
}

uint64_t sub_1A421FFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_1A421FF58();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3F1E8D8();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v20 - v14;
  sub_1A5249844();
  v20[8] = a1;
  sub_1A3D6DF58();
  sub_1A421EBB8(&qword_1EB121B60, sub_1A3D6DF58);
  sub_1A5247F24();
  sub_1A5249814();
  v20[4] = a1;
  sub_1A5247F24();
  v16 = *(v4 + 48);
  v17 = *(v10 + 16);
  v17(v6, v15, v9);
  v17(&v6[v16], v12, v9);
  sub_1A52495D4();
  v18 = *(v10 + 8);
  v18(v12, v9);
  return (v18)(v15, v9);
}

uint64_t sub_1A422025C(uint64_t a1)
{
  v2 = sub_1A5248284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E2E0(v5);
  sub_1A5248274();
  (*(v3 + 8))(v5, v2);
  v6 = type metadata accessor for PhotosSearchMapView();
  return (*(a1 + *(v6 + 24)))(0);
}

uint64_t sub_1A4220354(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PhotosSearchMapView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = sub_1A5247B54();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  sub_1A4222CD0(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_1A42210EC(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  return MEMORY[0x1A5906A80](v13, a4, v15);
}

uint64_t sub_1A42204C8(uint64_t a1)
{
  v20 = sub_1A524BEE4();
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v18 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosSearchMapView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = sub_1A5248284();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A421E2E0(v11);
  sub_1A5248274();
  (*(v9 + 8))(v11, v8);
  sub_1A4222CD0(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosSearchMapView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1A42210EC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_1A4222978;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_45_1;
  v14 = _Block_copy(aBlock);
  sub_1A524BF14();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1A421EBB8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A421EBB8(&qword_1EB12B1B0, sub_1A3C38394);
  v15 = v18;
  v16 = v20;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v4, v15, v14);
  _Block_release(v14);
  (*(v22 + 8))(v15, v16);
  (*(v19 + 8))(v4, v21);
}

uint64_t sub_1A42208EC(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v62 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosSearchMapView();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + *(v9 + 28);
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = *(v10 + 16);
  aBlock = *v10;
  v73 = v13;
  LOBYTE(v74) = v11;
  v75 = v12;
  sub_1A421E9BC(0, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v65 = v3;
  v66 = v2;
  v64 = v5;
  if (v71)
  {
    goto LABEL_24;
  }

  v14 = v67;
  v15 = v68;
  v16 = v69;
  v17 = v70;
  v18 = objc_opt_self();
  v19 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  v58 = a1;
  v20 = [v19 initWithLatitude:v14 longitude:v15];
  v21 = objc_allocWithZone(MEMORY[0x1E6985C40]);
  a1 = v58;
  v22 = [v21 initWithLatitude:v16 longitude:v17];
  v23 = [*(a1 + *(v7 + 20)) px_standardLibrarySpecificFetchOptions];
  v24 = [v18 fetchAssetsInBoundingBoxWithTopLeftLocation:v20 bottomRightLocation:v22 options:v23];

  if (!v24)
  {
    goto LABEL_24;
  }

  v25 = [v24 fetchedObjects];
  if (!v25)
  {

LABEL_24:
    v42 = 0;
    goto LABEL_25;
  }

  v26 = v25;
  v56 = v24;
  sub_1A3C52C70(0, &qword_1EB126660);
  v27 = sub_1A524CA34();

  if (v27 >> 62)
  {
LABEL_28:
    v28 = sub_1A524E2B4();
    if (v28)
    {
LABEL_6:
      v29 = 0;
      v57 = MEMORY[0x1E69E7CC0];
      do
      {
        v30 = v29;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1A59097F0](v30, v27);
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v30 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v31 = *(v27 + 8 * v30 + 32);
            v29 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          v32 = v31;
          v33 = [v32 uuid];
          if (v33)
          {
            break;
          }

          ++v30;
          if (v29 == v28)
          {
            goto LABEL_30;
          }
        }

        v34 = v33;
        v35 = sub_1A524C674();
        v55 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1A3D3D914(0, *(v57 + 2) + 1, 1, v57);
        }

        v38 = *(v57 + 2);
        v37 = *(v57 + 3);
        if (v38 >= v37 >> 1)
        {
          v57 = sub_1A3D3D914((v37 > 1), v38 + 1, 1, v57);
        }

        v39 = v57;
        *(v57 + 2) = v38 + 1;
        v40 = &v39[16 * v38];
        v41 = v55;
        *(v40 + 4) = v35;
        *(v40 + 5) = v41;
      }

      while (v29 != v28);
      goto LABEL_30;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_6;
    }
  }

  v57 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v57 + 2))
  {
    v42 = sub_1A3C4467C(v57);
  }

  else
  {

    v42 = 0;
  }

  a1 = v58;
LABEL_25:
  v43 = v60;
  v44 = v59;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1A3C52C70(0, &qword_1EB12B180);
  v46 = sub_1A524D474();
  sub_1A4222CD0(a1, v43, type metadata accessor for PhotosSearchMapView);
  v47 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v48 = swift_allocObject();
  sub_1A42210EC(v43, v48 + v47);
  *(v48 + ((v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;
  v74 = sub_1A4222990;
  v75 = v48;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v73 = sub_1A3C2E0D0;
  *(&v73 + 1) = &block_descriptor_51_1;
  v49 = _Block_copy(&aBlock);

  v50 = v61;
  sub_1A524BF14();
  *&aBlock = v45;
  sub_1A421EBB8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A421EBB8(&qword_1EB12B1B0, sub_1A3C38394);
  v51 = v63;
  v52 = v66;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v50, v51, v49);
  _Block_release(v49);

  (*(v65 + 8))(v51, v52);
  return (*(v62 + 8))(v50, v64);
}

uint64_t sub_1A422105C()
{
  sub_1A4221318();
  type metadata accessor for PhotosSearchMapView();
  sub_1A421E9BC(0, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A42210EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchMapView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4221168()
{
  if (!qword_1EB135A58)
  {
    sub_1A5248464();
    sub_1A421F7F4();
    sub_1A421F974();
    sub_1A421FF24(255);
    sub_1A421FA74();
    sub_1A421FB44();
    sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135A58);
    }
  }
}

uint64_t sub_1A4221318()
{
  v1 = sub_1A524BEE4();
  v29 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v32 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A524BF64();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v30 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PhotosSearchMapView();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = v6;
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + *(v8 + 20));
  v10 = v9[8];
  v11 = sub_1A3C6E9EC();
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(v11, v10, 0, 0, 0, &v37);
  v35 = v0;
  v12 = objc_allocWithZone(PXPlacesMapContainerConfiguration);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1A4222260;
  *(v13 + 24) = &v34;
  aBlock[4] = sub_1A3D78DD0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D77CC4;
  aBlock[3] = &block_descriptor_128;
  v14 = _Block_copy(aBlock);

  v15 = [v12 initWithConfiguration_];
  _Block_release(v14);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v17 = *v9;
    v18 = objc_allocWithZone(PXPlacesMapContainerViewController);
    v26 = v15;
    v27 = [v18 initWithPhotoLibrary:v17 configuration:v15];
    v25 = [v27 fetchResultViewController];
    v19 = [v25 mapFetchResultsController];
    v20 = [v19 mapView];
    [v20 observable];

    v24[2] = type metadata accessor for PhotosSearchMapView;
    sub_1A4222CD0(v0, v7, type metadata accessor for PhotosSearchMapView);
    v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v22 = swift_allocObject();
    v24[4] = v1;
    *(v22 + 16) = v19;
    sub_1A42210EC(v7, v22 + v21);
    v23 = v19;
    v24[1] = v7;
    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A4221A68(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = *(a1 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_1A421F7F4();
  sub_1A421F974();
  v8 = v7;
  sub_1A421FF24(255);
  v10 = v9;
  sub_1A421FA74();
  v12 = v11;
  sub_1A421FB44();
  v14 = v13;
  v15 = sub_1A421EBB8(&unk_1EB135A28, sub_1A421FB44);
  v16 = sub_1A3D5F9DC();
  v27 = v14;
  v28 = MEMORY[0x1E69E6158];
  v29 = v15;
  v30 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v12;
  v28 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1A421EBB8(&qword_1EB135A48, sub_1A421FF24);
  v27 = v8;
  v28 = v10;
  v29 = v18;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1A5248824();
  sub_1A4222CD0(v3, v6, type metadata accessor for PhotosSearchMapView);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_1A42210EC(v6, v21 + v20);
  sub_1A421FD50(0, &qword_1EB135A50, sub_1A4221168);
  v23 = (a2 + *(v22 + 36));
  *v23 = sub_1A4222D48;
  v23[1] = v21;
  v23[2] = 0;
  v23[3] = 0;
}

void sub_1A4221D14(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedPhotoLibrary];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_1A3C6C180(&v13);
  v11 = v13;
  v12 = v14;
  v3 = sub_1A412FAA0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1A3C30368();
  LemonadeMapConfiguration.init(photoLibrary:representedItem:collectionConfiguration:libraryFilterViewMode:boundingRegion:centerCoordinate:wantsDismissButton:enableGridView:)(v2, v15, &v11, 0, 0, 0, 1, 1, v17, v3, v5, v7, v9, v10 & 1);
  PhotosSearchMapView.init(configuration:completion:)(v17, PXDisplayCollectionDetailedCountsMake, 0, a1);
}

unint64_t sub_1A4221E38()
{
  result = qword_1EB135A60;
  if (!qword_1EB135A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A60);
  }

  return result;
}

uint64_t sub_1A4221EAC(uint64_t a1)
{
  v2 = sub_1A422220C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4221EF8(uint64_t a1)
{
  v2 = sub_1A422220C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A4221F6C()
{
  sub_1A421E9BC(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v1 <= 0x3F)
    {
      sub_1A421E9BC(319, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1A421E9BC(319, &qword_1EB121BC8, sub_1A421EA88, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1A421E9BC(319, &qword_1EB121C10, sub_1A421EAF0, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A3C52C70(319, &qword_1EB12B180);
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

unint64_t sub_1A4222138()
{
  result = qword_1EB135A68;
  if (!qword_1EB135A68)
  {
    sub_1A421FD50(255, &qword_1EB135A50, sub_1A4221168);
    sub_1A421EBB8(&qword_1EB135A70, sub_1A4221168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A68);
  }

  return result;
}

unint64_t sub_1A422220C()
{
  result = qword_1EB135A78;
  if (!qword_1EB135A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135A78);
  }

  return result;
}

id sub_1A4222260(void *a1)
{
  v3 = *(v1 + 16);
  [a1 setGridViewEnabled_];
  v4 = type metadata accessor for PhotosSearchMapView();
  [a1 setInitialCoordinateRegion_];
  sub_1A3C38BD4();
  v5 = sub_1A524C634();

  [a1 setLocalizedNavigationItemTitle_];

  return [a1 setEnableNearbyAssetsAffordance_];
}

uint64_t sub_1A422232C()
{
  type metadata accessor for PhotosSearchMapView();
  v1 = [*(v0 + 16) mapView];
  [v1 bounds];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v6 = CGRectGetHeight(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v7 = v6 - CGRectGetWidth(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v8 = CGRectGetWidth(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetHeight(v14) - v7;
  [v1 convertPoint:v1 toCoordinateFromView:{0.0, v7}];
  [v1 convertPoint:v1 toCoordinateFromView:{v8, v9}];

  sub_1A421E9BC(0, &qword_1EB121BA0, sub_1A421E988, MEMORY[0x1E6981790]);

  sub_1A524B6B4();
}

void sub_1A4222518()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v4);
  v6 = *(v0 + ((v4 + 55) & 0xFFFFFFFFFFFFFFF8));
  v7 = v0 + *(v1 + 20) + v3;
  PHPhotoLibrary.fetcher.getter();
  v8 = v5[1];
  aBlock = *v5;
  v16 = v8;
  v17 = v5[2];
  v9 = PhotoKitFetcher.fetchPlacesAlbum(for:)(&aBlock);

  v10 = [v9 firstObject];

  if (v10)
  {
    PHPhotoLibrary.fetcher.getter();
    v11 = PhotoKitFetcher.fetchAssetsWithLocation(inCollection:libraryFilterViewMode:)(v10, *(v7 + 64));

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      *&v17 = sub_1A422271C;
      *(&v17 + 1) = v6;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v16 = sub_1A3C2E0D0;
      *(&v16 + 1) = &block_descriptor_33_0;
      v14 = _Block_copy(&aBlock);

      [v13 loadFetchResult:v11 withCompletion:v14];

      _Block_release(v14);
      v10 = v13;
    }

    else
    {
    }
  }
}

void sub_1A422271C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    aBlock[4] = sub_1A4222804;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_36_0;
    v3 = _Block_copy(aBlock);

    [v2 reloadContentModeWithCompletion_];
    _Block_release(v3);
  }
}

void sub_1A4222804()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong resumeWithCompletion_];
  }
}

uint64_t sub_1A4222860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4222990()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 24) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1A4222A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for PhotosSearchMapView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1A421E9BC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248284();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + v1[5];

  if (*(v5 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0(v5 + 8);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A4222C5C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosSearchMapView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A4222CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for GenerativeStorySystemPromptInputView()
{
  result = qword_1EB160070;
  if (!qword_1EB160070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4222DB0()
{
  if (!qword_1EB1249A8)
  {
    sub_1A4222E14();
    sub_1A4222E64();
    v0 = sub_1A5247C54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1249A8);
    }
  }
}

void sub_1A4222E14()
{
  if (!qword_1EB1257B0)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1257B0);
    }
  }
}

unint64_t sub_1A4222E64()
{
  result = qword_1EB1257A8;
  if (!qword_1EB1257A8)
  {
    sub_1A4222E14();
    sub_1A4222EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257A8);
  }

  return result;
}

unint64_t sub_1A4222EDC()
{
  result = qword_1EB1257C0;
  if (!qword_1EB1257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257C0);
  }

  return result;
}

uint64_t sub_1A4222F30@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v129 = MEMORY[0x1E69790B8];
  v2 = MEMORY[0x1E69E6720];
  sub_1A4226964(0, &qword_1EB120E50, MEMORY[0x1E69790B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v128 = &v103 - v4;
  v127 = sub_1A523FBA4();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v122 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1A523FBD4();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v141 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = MEMORY[0x1E6979018];
  sub_1A4226964(0, &qword_1EB120E58, MEMORY[0x1E6979018], v2);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v140 = &v103 - v8;
  v9 = type metadata accessor for GenerativeStorySystemPromptInputView();
  v10 = v9 - 8;
  v111 = *(v9 - 8);
  v142 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v143 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v144 = v12;
  v145 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v103 - v15;
  v16 = type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42243E4();
  v130 = v19;
  v133 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224500();
  v135 = v22;
  v110 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A422461C();
  v137 = v24;
  v112 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224A3C();
  v115 = v26;
  v118 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224C1C();
  v119 = v28;
  v120 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224E30();
  v117 = v30;
  v121 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v116 = &v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4225078();
  v105 = v32;
  v104 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v113 = &v103 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524BAA4();
  sub_1A3FC72AC(v163, v18);
  v34 = v1 + *(v10 + 28);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v34) = *(v34 + 16);
  LOBYTE(v163) = v35;
  v164 = v36;
  LOBYTE(v165) = v34;
  sub_1A4222DB0();
  sub_1A5247C24();
  v163 = v160;
  v164 = v161;
  LOBYTE(v165) = v162;
  LOBYTE(v160) = 0;
  sub_1A4222E14();
  v38 = v37;
  v39 = sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
  v40 = sub_1A4222E64();
  sub_1A524B064();

  sub_1A4226B04(v18, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
  v41 = sub_1A52471E4();
  v163 = v16;
  v164 = v38;
  v165 = v39;
  v166 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v130;
  sub_1A524A874();
  (*(v133 + 8))(v21, v43);
  v44 = v132;
  v45 = v144;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v133 = *(v145 + 8);
  v145 += 8;
  (v133)(v44, v45);
  v46 = v163;
  v47 = v164;
  v48 = v165;
  swift_getKeyPath();
  v160 = v46;
  v161 = v47;
  v162 = v48;
  sub_1A4226964(0, &qword_1EB1214E0, type metadata accessor for GenerativeStoryAmbiguityManager, MEMORY[0x1E6981948]);
  v131 = v49;
  sub_1A524B914();

  v50 = v1;
  v51 = v143;
  sub_1A4225788(v1, v143);
  v52 = *(v111 + 80);
  v53 = (v52 + 16) & ~v52;
  v54 = swift_allocObject();
  sub_1A42257EC(v51, v54 + v53);
  sub_1A4224788();
  v108 = v55;
  v157 = v130;
  v158 = v41;
  v159 = OpaqueTypeConformance2;
  v109 = swift_getOpaqueTypeConformance2();
  v130 = sub_1A42248D4();
  v56 = v135;
  v57 = v134;
  sub_1A524AFF4();

  (*(v110 + 8))(v57, v56);
  v58 = v132;
  v59 = v144;
  v60 = v50;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (v133)(v58, v59);
  v61 = v160;
  v62 = v161;
  v63 = v162;
  swift_getKeyPath();
  v157 = v61;
  v158 = v62;
  v159 = v63;
  sub_1A524B914();

  v64 = v60;
  v65 = v143;
  sub_1A4225788(v60, v143);
  v103 = v52;
  v66 = swift_allocObject();
  v110 = v53;
  sub_1A42257EC(v65, v66 + v53);
  v111 = type metadata accessor for PhotosSearchMapView();
  v163 = v135;
  v164 = v108;
  v165 = v109;
  v166 = v130;
  v135 = MEMORY[0x1E697D510];
  v130 = swift_getOpaqueTypeConformance2();
  v134 = sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
  v67 = v137;
  v68 = v136;
  sub_1A524AFF4();

  (*(v112 + 8))(v68, v67);
  v69 = v144;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v70 = v133;
  (v133)(v58, v69);
  v71 = v160;
  v72 = v161;
  v73 = v162;
  swift_getKeyPath();
  v157 = v71;
  v158 = v72;
  v159 = v73;
  sub_1A524B914();

  v132 = v154;
  v112 = v155;
  LODWORD(v136) = v156;

  v74 = v114;
  v107 = v64;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  v70(v74, v69);
  v75 = v151;
  v76 = v152;
  v77 = v153;
  swift_getKeyPath();
  v148 = v75;
  v149 = v76;
  v150 = v77;
  sub_1A524B914();

  v145 = v146;
  v133 = v147;

  v78 = sub_1A524C1F4();
  (*(*(v78 - 8) + 56))(v140, 1, 1, v78);
  sub_1A524BAA4();
  v79 = *(v163 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);

  sub_1A523FBC4();
  v80 = v122;
  sub_1A523FB94();
  v163 = v137;
  v164 = v111;
  v165 = v130;
  v166 = v134;
  v102 = swift_getOpaqueTypeConformance2();
  v81 = v115;
  v82 = v139;
  sub_1A524A794();

  v83 = v107;

  (*(v126 + 8))(v80, v127);
  v84 = v113;
  (*(v124 + 8))(v141, v125);
  sub_1A4225EB8(v140, &qword_1EB120E58, v123);
  (*(v118 + 8))(v82, v81);
  v163 = v81;
  v164 = v102;
  v85 = v117;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v116;
  v88 = v119;
  v89 = v138;
  sub_1A524A7B4();
  v90 = v88;
  (*(v120 + 8))(v89, v88);
  v91 = v128;
  sub_1A524C304();
  v92 = sub_1A524C314();
  (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
  v163 = v90;
  v164 = v86;
  v93 = swift_getOpaqueTypeConformance2();
  sub_1A524A7F4();
  sub_1A4225EB8(v91, &qword_1EB120E50, v129);
  (*(v121 + 8))(v87, v85);
  v94 = sub_1A524BAA4();
  v95 = (*(*v163 + 1184))(v94);

  if (v95)
  {
    v97 = (*(*v95 + 656))(result);

    LOBYTE(v160) = v97 & 1;
    v98 = v143;
    sub_1A4225788(v83, v143);
    v99 = v110;
    v100 = swift_allocObject();
    sub_1A42257EC(v98, v100 + v99);
    v163 = v85;
    v164 = v93;
    swift_getOpaqueTypeConformance2();
    v101 = v105;
    sub_1A524B144();

    return (*(v104 + 8))(v84, v101);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A42243E4()
{
  if (!qword_1EB135AE0)
  {
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AE0);
    }
  }
}

uint64_t sub_1A42244B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4224500()
{
  if (!qword_1EB135AE8)
  {
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AE8);
    }
  }
}

void sub_1A422461C()
{
  if (!qword_1EB135AF0)
  {
    sub_1A4224500();
    sub_1A4224788();
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135AF0);
    }
  }
}

void sub_1A4224788()
{
  if (!qword_1EB135AF8)
  {
    sub_1A4224820();
    sub_1A4226964(255, &qword_1EB122190, MEMORY[0x1E69C29F0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135AF8);
    }
  }
}

void sub_1A4224820()
{
  if (!qword_1EB122018)
  {
    type metadata accessor for GenerativeStoryEventOrDatePickerView();
    sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122018);
    }
  }
}

unint64_t sub_1A42248D4()
{
  result = qword_1EB135B00;
  if (!qword_1EB135B00)
  {
    sub_1A4224788();
    type metadata accessor for GenerativeStoryEventOrDatePickerView();
    sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView);
    swift_getOpaqueTypeConformance2();
    sub_1A42249B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135B00);
  }

  return result;
}

unint64_t sub_1A42249B4()
{
  result = qword_1EB122198;
  if (!qword_1EB122198)
  {
    sub_1A4226964(255, &qword_1EB122190, MEMORY[0x1E69C29F0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122198);
  }

  return result;
}

void sub_1A4224A3C()
{
  if (!qword_1EB135B08)
  {
    sub_1A422461C();
    type metadata accessor for PhotosSearchMapView();
    sub_1A4224500();
    sub_1A4224788();
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B08);
    }
  }
}

void sub_1A4224C1C()
{
  if (!qword_1EB135B10)
  {
    sub_1A4224A3C();
    sub_1A422461C();
    type metadata accessor for PhotosSearchMapView();
    sub_1A4224500();
    sub_1A4224788();
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B10);
    }
  }
}

void sub_1A4224E30()
{
  if (!qword_1EB135B18)
  {
    sub_1A4224C1C();
    sub_1A4224A3C();
    sub_1A422461C();
    type metadata accessor for PhotosSearchMapView();
    sub_1A4224500();
    sub_1A4224788();
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B18);
    }
  }
}

void sub_1A4225078()
{
  if (!qword_1EB135B20)
  {
    sub_1A4224E30();
    sub_1A4224C1C();
    sub_1A4224A3C();
    sub_1A422461C();
    type metadata accessor for PhotosSearchMapView();
    sub_1A4224500();
    sub_1A4224788();
    sub_1A42243E4();
    sub_1A52471E4();
    type metadata accessor for GenerativeStoryPromptEntryViewRepresentable(255);
    sub_1A4222E14();
    sub_1A42244B8(&qword_1EB125050, type metadata accessor for GenerativeStoryPromptEntryViewRepresentable);
    sub_1A4222E64();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A42248D4();
    swift_getOpaqueTypeConformance2();
    sub_1A42244B8(&qword_1EB125F88, type metadata accessor for PhotosSearchMapView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B20);
    }
  }
}

uint64_t sub_1A4225318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A422536C(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 1192);

  return v2(v3);
}

uint64_t sub_1A42253C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result & 1;
  return result;
}

void sub_1A4225470(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerativeStoryEventOrDatePickerView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4224820();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  sub_1A3E7B250(v20, v4);
  sub_1A42244B8(&qword_1EB125250, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  sub_1A524A514();
  sub_1A4226B04(v4, type metadata accessor for GenerativeStoryEventOrDatePickerView);
  KeyPath = swift_getKeyPath();
  v11 = sub_1A524BAA4();
  v12 = (*(*v20 + 1184))(v11);

  if (v12)
  {
    v14 = (*(*v12 + 840))(v13);

    (*(*v14 + 360))(v15);

    sub_1A5244244();
    swift_allocObject();
    v16 = sub_1A5244214();
    (*(v7 + 32))(a1, v9, v6);
    sub_1A4224788();
    v18 = (a1 + *(v17 + 36));
    *v18 = KeyPath;
    v18[1] = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4225788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySystemPromptInputView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42257EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStorySystemPromptInputView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4225868@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result & 1;
  return result;
}

void sub_1A4225910()
{
  v0 = type metadata accessor for GenerativeStorySystemPromptInputView();
  MEMORY[0x1EEE9AC00](v0 - 8);
  type metadata accessor for MapDataProvider();
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v1 = *(v2 + OBJC_IVAR____TtC12PhotosUICore32GenerativeStoryCreationViewModel_photoLibrary);

  static MapDataProvider.sharedProvider(for:)(v1);
}

uint64_t objectdestroyTm_36()
{
  v1 = *(type metadata accessor for GenerativeStorySystemPromptInputView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A4225CDC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for GenerativeStorySystemPromptInputView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A4225D60@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4225E08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4225EB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4226964(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4225F28(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v37 = a3;
  v5 = sub_1A524BEE4();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BF64();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenerativeStorySystemPromptInputView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = sub_1A524BFC4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      v22 = v18;
      v32 = v18;
      v30 = v5;
      v23 = v19;
      sub_1A3C29A58();
      v31 = sub_1A524D474();
      sub_1A524BFA4();
      sub_1A524C014();
      v33 = *(v23 + 8);
      v33(v16, v22);
      sub_1A4225788(v37, &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v25 = swift_allocObject();
      sub_1A42257EC(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
      aBlock[4] = sub_1A4226904;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_129;
      v26 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A42244B8(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      sub_1A4226964(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v27 = v30;
      sub_1A524E224();
      v28 = v31;
      MEMORY[0x1A5908790](v21, v10, v7, v26);
      _Block_release(v26);

      (*(v36 + 8))(v7, v27);
      (*(v34 + 8))(v10, v35);
      v33(v21, v32);
    }
  }

  else if (*a2)
  {
    sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
    sub_1A524BAA4();
    (*(*aBlock[0] + 592))(0);

    v29 = sub_1A524BAA4();
    (*(*aBlock[0] + 608))(v29);
  }
}

void sub_1A4226484(_BYTE *a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for GenerativeStorySystemPromptInputView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A4225F28(a1, a2, v6);
}

uint64_t sub_1A4226504(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + *(type metadata accessor for GenerativeStorySystemPromptInputView() + 24) + 8);

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A52441E4();

  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v8 = sub_1A524BAA4();
  (*(*v10[1] + 616))(v8);
}

uint64_t sub_1A42266F4@<X0>(char a1@<W1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  type metadata accessor for GenerativeStoryCreationViewModel(0);
  sub_1A42244B8(&qword_1EB125388, type metadata accessor for GenerativeStoryCreationViewModel);
  sub_1A524BAC4();
  v8 = type metadata accessor for GenerativeStorySystemPromptInputView();
  v9 = a4 + *(v8 + 20);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  v10 = a4 + *(v8 + 24);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

void sub_1A4226808()
{
  sub_1A4226964(319, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1A4222DB0();
    if (v1 <= 0x3F)
    {
      sub_1A4226964(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4226904()
{
  v1 = *(type metadata accessor for GenerativeStorySystemPromptInputView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4226504(v2);
}

void sub_1A4226964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A42269C8()
{
  type metadata accessor for GenerativeStorySystemPromptInputView();
  sub_1A4226964(0, &qword_1EB121438, type metadata accessor for GenerativeStoryCreationViewModel, MEMORY[0x1E6981AA0]);
  v0 = sub_1A524BAA4();
  v1 = (*(*v3 + 1184))(v0);

  if (v1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4226B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4226B64(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1A422E6F4(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t sub_1A4226BE4(char a1)
{
  v2 = v1;
  v4 = *(*v2 + 112);
  swift_beginAccess();
  result = sub_1A524C594();
  if (result)
  {
    *(v2 + v4) = a1 & 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 504))(v7);
  }

  return result;
}

uint64_t sub_1A4226DA8(uint64_t a1)
{
  v3 = *v1;
  v9 = *(*v1 + 80);
  v10 = *(v3 + 96);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 504))(KeyPath, sub_1A422F3D4, &v6, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4226EA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-v6];
  sub_1A42271DC(&v11[-v6]);
  v8 = *(v5 + 8);
  v8(v7, v4);
  v14 = v4;
  v15 = *(v3 + 88);
  KeyPath = swift_getKeyPath();
  v12 = v1;
  v13 = a1;
  (*(*v1 + 504))(KeyPath, sub_1A422EA6C, v11, MEMORY[0x1E69E7CA8] + 8);

  return v8(a1, v4);
}

uint64_t sub_1A4227050(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1A4034618();
  if (v4 == a1)
  {
  }

  v9 = MEMORY[0x1EEE9AC00](v5);
  KeyPath = swift_getKeyPath();
  v7 = MEMORY[0x1EEE9AC00](KeyPath);
  v10 = v1;
  v11 = a1;
  (*(*v1 + 504))(v7);
}

uint64_t sub_1A42271DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t (*sub_1A422727C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A42272EC;
}

uint64_t sub_1A42272EC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A42291CC();
  }

  return result;
}

uint64_t sub_1A4227320@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  return sub_1A42271DC(a1);
}

uint64_t sub_1A4227438(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 184))(v4);
}

void (*sub_1A4227518(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A422727C(v4);
  return sub_1A4227710;
}

void sub_1A422771C(uint64_t a1)
{
  v2 = *v1;
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 176))(v3);
  sub_1A5246224();
}

uint64_t sub_1A4227838(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 24))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42279D0()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  v2 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A4227ABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4227B54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A4227964();
  return sub_1A4227D4C;
}

uint64_t sub_1A4227D58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 40))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4227E84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 48))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4227FB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 56))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42280E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 64))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4228210(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 72))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A422833C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v2 + 176))(v5);
  (*(*(v2 + 88) + 104))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A4228468(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 80))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4228594(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 88))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A42286C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 96))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4228868()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  swift_beginAccess();
}

uint64_t sub_1A4228958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  return result;
}

uint64_t sub_1A42289AC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 368);

  return v2(v3);
}

void (*sub_1A4228A08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  MEMORY[0x1EEE9AC00](v3);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 496))(KeyPath);

  *v4 = v1;
  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel();
  swift_getWitnessTable();
  sub_1A52415F4();

  v4[5] = sub_1A42287FC();
  return sub_1A4228C00;
}

void sub_1A4228C0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1, 0);
  swift_getKeyPath();
  type metadata accessor for LemonadeObservableSharedAlbumActivityModel();
  swift_getWitnessTable();
  sub_1A52415E4();

  free(v1);
}

uint64_t sub_1A4228D30()
{
  (*(*v0 + 360))();
  sub_1A5242804();

  return v2;
}

uint64_t sub_1A4228D98()
{
  (*(*v0 + 360))();
  sub_1A5242814();
}

uint64_t (*sub_1A4228E10(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1A4228D30();
  a1[1] = v3;
  return sub_1A4228E58;
}

uint64_t sub_1A4228E58(uint64_t a1, char a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A4228D98();
}

uint64_t sub_1A4228ECC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v3 + 176))(v6);
  v9 = (*(*(v3 + 88) + 120))(a1, v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_1A4229000(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v10 - v7;
  (*(v3 + 176))(v6);
  (*(*(v3 + 88) + 128))(a1, v4);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1A422913C()
{
  sub_1A422F614();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4229164@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A422F614();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A42291CC()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = PXSharedAlbumsActivityLastSeenDate();
  sub_1A52410F4();

  (*(*v1 + 288))();
  v10 = sub_1A5241074();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = sub_1A5241074();
  IsUnread = PXSharedAlbumsActivityDateIsUnread(v10, v12);

  (*(*v1 + 248))(IsUnread);
  return (v11)(v8, v2);
}

id sub_1A4229384()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB1B0FA0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB1B0FA8);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "Marking shared album activity as read in response to dismissal of a shared album activity notification", v7, 2u);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  sub_1A5241104();
  v8 = sub_1A5241074();
  (*(v1 + 8))(v3, v0);
  PXSetSharedAlbumsActivityLastSeenDateToDate(v8);

  return [objc_opt_self() userDidViewCloudFeedContent_];
}

uint64_t sub_1A4229534(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - v6;
  (*(v2 + 176))(v5);
  v8 = (*(*(v2 + 88) + 112))(v3);
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_1A4229800()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_unknownObjectRelease();
  v1 = *(*v0 + 136);
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A42298FC()
{
  sub_1A4229800();

  return swift_deallocClassInstance();
}

void (*sub_1A42299AC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 400))();
  return sub_1A3E658B0;
}

void (*sub_1A4229ACC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 192))();
  return sub_1A3E62A10;
}

void sub_1A4229FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 px_standardLibrarySpecificFetchOptions];
  objc_opt_self();
  sub_1A3C8B488(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422A0DC(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (*(a1 + 24) <= 1u)
  {
    if (!*(a1 + 24))
    {
      if (!(v4 >> 62))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D435C4();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    type metadata accessor for SharedAlbumsActivityItem();
    if (v5)
    {
      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v2);
    }

    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (*(a1 + 24) == 2)
  {
    if (!(v5 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3D435C4();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = v5 | v3;
  if (v5 | v3 | v4)
  {
    if (v4 != 1 || v6 != 0)
    {
      if (v4 == 2 && !v6)
      {
        type metadata accessor for SharedAlbumsActivityItem();
        objc_opt_self();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v4 == 3 && !v6)
      {
        type metadata accessor for SharedAlbumsActivityItem();
        objc_opt_self();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      type metadata accessor for SharedAlbumsActivityItem();
      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v2);
    }

    type metadata accessor for SharedAlbumsActivityItem();
    objc_opt_self();
    sub_1A524C634();
    sub_1A422E23C(v2);
  }

  type metadata accessor for SharedAlbumsActivityItem();
  objc_opt_self();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422ABE8(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v2 = SharedAlbumsActivityItem.albumId.getter();
  sub_1A4229FC0(v1, v2, v3);
}

uint64_t sub_1A422AD24()
{
  if (*(v0 + 24) > 1u)
  {
    if (*(v0 + 24) == 2)
    {
      return 1;
    }

    else
    {
      v2 = *v0;
      if (v0[1] | v0[2] | *v0)
      {
        if (v2 == 1 && *(v0 + 1) == 0)
        {
          return 3;
        }

        else if (v2 == 2 && *(v0 + 1) == 0)
        {
          return 6;
        }

        else if (*(v0 + 1) == 0 && v2 == 3)
        {
          return 7;
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 5;
      }
    }
  }

  else if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A422AE08()
{
  v0 = objc_opt_self();
  v1 = sub_1A5241074();
  v2 = [v0 textForDate_];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A422AE94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52407E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1A422AF00()
{
  v0 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A422EC20(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  type metadata accessor for ShareParticipantImageConfiguration(0);
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A422B0B8(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 36)) uuid];
  if (v2)
  {
    v3 = v2;
    sub_1A524C674();

    PXDisplayCollectionDetailedCountsMake(7);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1A422B1A8()
{
  result = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type);
  if (result >= 8)
  {
    sub_1A524E404();

    v2 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v2);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

BOOL sub_1A422B288()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = PXForYouLastExitedDate();
  sub_1A52410F4();

  v5 = sub_1A5241114();
  (*(v1 + 8))(v3, v0);
  return v5 == 1;
}

uint64_t sub_1A422B388(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type);
  if (v4 > 3)
  {
    if (v4 <= 5)
    {
      if (v4 == 4)
      {
        objc_opt_self();
        sub_1A524C634();
        sub_1A422E23C(v3);
      }

      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();
      sub_1A524C634();

      sub_1A422E23C(v3);
    }

    if (v4 == 6)
    {
      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v3);
    }

    if (v4 == 7)
    {
      sub_1A47063AC();
      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v3);
    }
  }

  else
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (*(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message + 8))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (qword_1EB1B0FA0 != -1)
        {
          swift_once();
        }

        v5 = sub_1A5246F24();
        __swift_project_value_buffer(v5, qword_1EB1B0FA8);
        v6 = sub_1A5246F04();
        v7 = sub_1A524D244();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_1A3C1C000, v6, v7, "Received an comment activity item, but with a nil message", v8, 2u);
          MEMORY[0x1A590EEC0](v8, -1, -1);
        }

        v9 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe);
        sub_1A47063AC();
        if (v9 == 1)
        {

          objc_opt_self();
          sub_1A524C634();

          sub_1A422E23C(v3);
        }

        objc_opt_self();
        sub_1A524C634();

        sub_1A524C634();

        sub_1A422E23C(v3);
      }

      objc_opt_self();
      sub_1A524C634();
      sub_1A422E23C(v3);
    }

    if (!v4)
    {
      sub_1A47060CC();
    }

    if (v4 == 1)
    {
      sub_1A47060CC();
    }
  }

  sub_1A524E404();

  v10 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v10);

  MEMORY[0x1A5907B60](0xD000000000000014, 0x80000001A53CE390);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A422C0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_type) && *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_message + 8))
  {
    v4 = *(a2 + 48);
    v5 = *(a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_isFromMe);
    sub_1A47063AC();
    if (v5 == 1)
    {

      v6 = sub_1A524C634();
      v7 = PXLocalizedString(v6);

      sub_1A524C674();
    }

    v8 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v9 = sub_1A524C634();

    type metadata accessor for Key(0);
    sub_1A3C8C150(&unk_1EB1208B0, type metadata accessor for Key);
    v10 = sub_1A524C3D4();
    [v8 initWithString:v9 attributes:v10];

    v11 = sub_1A524C634();
    v12 = PXLocalizedString(v11);

    if (!v12)
    {
      sub_1A524C674();
      sub_1A524C634();
    }

    objc_opt_self();
    sub_1A422E23C(v4);
  }

  v13 = sub_1A52407E4();
  v14 = *(*(v13 - 8) + 56);

  return v14(a3, 1, 1, v13);
}

void *sub_1A422C45C()
{
  v1 = sub_1A5248714();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - v7;
  v9 = *(v0 + OBJC_IVAR___PXSharedAlbumsActivityEntryItem_avatarInfos);
  if (v9 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    v11 = 0;
    v46 = v9 & 0xFFFFFFFFFFFFFF8;
    v47 = v9 & 0xC000000000000001;
    v12 = MEMORY[0x1E69E7CC0];
    v44 = v9;
    v45 = v8;
    v43 = i;
    while (1)
    {
      if (v47)
      {
        v13 = MEMORY[0x1A59097F0](v11, v9, v6);
      }

      else
      {
        if (v11 >= *(v46 + 16))
        {
          goto LABEL_28;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v53 = v11 + 1;
      v15 = [v13 email];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1A524C674();
        v51 = v18;
        v52 = v17;
      }

      else
      {
        v51 = 0;
        v52 = 0;
      }

      v19 = [v14 phone];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1A524C674();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v24 = [v14 firstName];
      if (v24)
      {
        v25 = v24;
        v26 = sub_1A524C674();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v14 lastName];
      if (v29)
      {
        v31 = v29;
        v32 = sub_1A524C674();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v50;
      sub_1A482211C(v30);
      v36 = sub_1A41F7694();
      v41 = v35;
      v37 = v48;
      sub_1A481E150(v52, v51, v21, v23, v26, v28, v32, v34, v48, v36, v41);

      v8 = v45;
      sub_1A422EBBC(v37, v45);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1A422E4F8(0, v12[2] + 1, 1, v12);
      }

      v39 = v12[2];
      v38 = v12[3];
      if (v39 >= v38 >> 1)
      {
        v12 = sub_1A422E4F8(v38 > 1, v39 + 1, 1, v12);
      }

      v12[2] = v39 + 1;
      sub_1A422EBBC(v8, v12 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v39);
      ++v11;
      v9 = v44;
      if (v53 == v43)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

BOOL sub_1A422C95C()
{
  v0 = sub_1A5241144();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = PXForYouLastExitedDate();
  sub_1A52410F4();

  v5 = sub_1A5241114();
  (*(v1 + 8))(v3, v0);
  return v5 == 1;
}

uint64_t sub_1A422CA9C()
{
  v0 = objc_opt_self();
  v1 = sub_1A5241074();
  v2 = [v0 textForDate_];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A422CCD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A4706D34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A422CD04@<X0>(char *a1@<X8>)
{
  v2 = sub_1A5248714();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A482211C(v3);
  v6 = sub_1A41F7694();
  return sub_1A481E150(0, 0, 0, 0, 0, 0, 0, 0, a1, v6, v5);
}

void sub_1A422CDA8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a7;
  v26[3] = a6;
  v28 = a4;
  v29 = a5;
  v35 = a3;
  v36 = a2;
  v27 = a1;
  v33 = a10;
  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v26[4] = v26 - v12;
  v13 = sub_1A52411C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v17 = sub_1A5241164();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  *a8 = v17;
  a8[1] = v19;
  v20 = type metadata accessor for LemonadeMockSharedAlbumActivityModel();
  v21 = *(v20 + 36);
  v22 = sub_1A52407E4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v31 = v23 + 56;
  v32 = v21;
  v30 = v24;
  v24(a8 + v21, 1, 1, v22);
  v25 = (a8 + *(v20 + 48));
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  LemonadeSharedAlbumsActivityCellSpecs.init()(&v37);
}

uint64_t sub_1A422D5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_1A52407E4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A422D628()
{
  v0 = objc_opt_self();
  v1 = sub_1A5241074();
  v2 = [v0 textForDate_];

  v3 = sub_1A524C674();
  return v3;
}

uint64_t sub_1A422D6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_1A5241144();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1A422D7B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 52);
  memcpy(__dst, (v2 + v4), sizeof(__dst));
  memcpy(a2, (v2 + v4), 0x108uLL);
  return sub_1A422ED64(__dst, &v6);
}

void sub_1A422D854()
{
  sub_1A3C8C150(&qword_1EB135B78, type metadata accessor for LemonadeMockSharedAlbumActivityModel);

    ;
  }
}

void sub_1A422D8C0()
{
  sub_1A3C8C150(&qword_1EB135B78, type metadata accessor for LemonadeMockSharedAlbumActivityModel);

    ;
  }
}

void sub_1A422D92C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B0FA8);
  __swift_project_value_buffer(v0, qword_1EB1B0FA8);
  sub_1A5246EF4();
}

uint64_t sub_1A422D998(char a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 16);
  v10 = v9 + (a1 & 1);
  if (__OFADD__(v9, a1 & 1))
  {
    __break(1u);
  }

  else
  {
    v6 = a3;
    v7 = *(a6 + 48);
    v8 = a3 >> 62;
    if (!(a3 >> 62))
    {
      v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= 1)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  v30 = a2;
  v31 = sub_1A524E2B4();
  a2 = v30;
  v11 = v31;
  if (v31 >= 1)
  {
LABEL_4:
    v39 = v7;
    sub_1A3D3B558(a2);
    v12 = objc_allocWithZone(MEMORY[0x1E695DFA0]);
    v13 = sub_1A524CA14();

    v14 = [v12 initWithArray_];

    v40 = v14;
    if (v11 == 1)
    {
      if (v8)
      {
        if (sub_1A524E2B4())
        {
          goto LABEL_7;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1A59097F0](0, v6);
LABEL_10:
          [v15 mediaType];
          objc_opt_self();
          sub_1A422E23C(v39);
        }

        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v6 + 32);
          swift_unknownObjectRetain();
          goto LABEL_10;
        }

        __break(1u);
        swift_once();
        v25 = sub_1A5246F24();
        __swift_project_value_buffer(v25, qword_1EB1B0FA8);
        v26 = sub_1A5246F04();
        v27 = sub_1A524D244();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *&v43[0] = swift_slowAlloc();
          *v28 = 136315138;
          sub_1A3C2EF94();
        }

        v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v24 = sub_1A524C634();
        [v29 initWithString_];
        swift_unknownObjectRelease();

        goto LABEL_20;
      }
    }

    v16 = sub_1A422F424(v6);
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v16 countForObject_];

    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v16 countForObject_];

    if (v10 == 1)
    {
      if ([v40 firstObject])
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
      }

      v43[0] = v41;
      v43[1] = v42;
      if (*(&v42 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1A3C2C718(v43, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A3C8B488);
      }

      objc_opt_self();
      sub_1A524C634();

      sub_1A524C634();
      sub_1A422E23C(v39);
    }

    if (qword_1EB1B0FA0 != -1)
    {
      swift_once();
    }

    v19 = sub_1A5246F24();
    __swift_project_value_buffer(v19, qword_1EB1B0FA8);
    v20 = sub_1A5246F04();
    v21 = sub_1A524D244();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1A3C1C000, v20, v21, "ERROR: Could not form attributed string for like title. Multiple people liked multiple assets.", v22, 2u);
      MEMORY[0x1A590EEC0](v22, -1, -1);
    }

    v23 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v24 = sub_1A524C634();
    [v23 initWithString_];

LABEL_20:
    return sub_1A5240834();
  }

LABEL_31:
  if (qword_1EB1B0FA0 != -1)
  {
    swift_once();
  }

  v32 = sub_1A5246F24();
  __swift_project_value_buffer(v32, qword_1EB1B0FA8);
  v33 = sub_1A5246F04();
  v34 = sub_1A524D244();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1A3C1C000, v33, v34, "ERROR: Asset was nil in a section info for a like", v35, 2u);
    MEMORY[0x1A590EEC0](v35, -1, -1);
  }

  v36 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v37 = sub_1A524C634();
  [v36 initWithString_];

  return sub_1A5240834();
}

void sub_1A422E23C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A3FDA25C();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

size_t sub_1A422E4F8(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A422EC20(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
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
  v15 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
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

uint64_t sub_1A422E6F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = aBlock - v7;
  *(v2 + v4[14]) = 0;
  *(v2 + *(*v2 + 128)) = 0;
  sub_1A5241604();
  (*(v6 + 16))(v8, a1, v5);
  (*(v6 + 32))(v2 + *(*v2 + 104), v8, v5);
  sub_1A4034618();
  swift_allocObject();
  *(v2 + *(*v2 + 120)) = sub_1A5242844();
  v9 = [objc_opt_self() defaultCenter];
  v10 = [objc_opt_self() mainQueue];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v4[11];
  v12[4] = v4[12];
  v12[5] = v11;
  aBlock[4] = sub_1A422F744;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C7C848;
  aBlock[3] = &block_descriptor_130;
  v13 = _Block_copy(aBlock);

  v14 = [v9 addObserverForName:@"PXSharedAlbumsActivityLastSeenDateChangeNotification" object:0 queue:v10 usingBlock:v13];
  _Block_release(v13);

  sub_1A4226DA8(v14);
  sub_1A42291CC();
  return v2;
}

uint64_t sub_1A422EA04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 112);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A422EA6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v2;
  v4 = *(*v2 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v2 + v4, v1);
  swift_endAccess();
  return sub_1A42291CC();
}

uint64_t sub_1A422EB2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*v2 + 120);
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1A422EBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareParticipantImageConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A422EC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LemonadeMockSharedAlbumActivityModel()
{
  result = qword_1EB15FD50;
  if (!qword_1EB15FD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A422ECD0(uint64_t a1, uint64_t a2)
{
  sub_1A422EC20(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A422EDC4(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A422EE64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422EEDC(uint64_t a1)
{
  result = sub_1A3C8C150(&qword_1EB129E30, type metadata accessor for SharedAlbumsActivityItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422EF7C(uint64_t a1)
{
  result = sub_1A3C8C150(&unk_1EB129858, type metadata accessor for SharedAlbumsActivityEntryItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422F01C(uint64_t a1)
{
  result = sub_1A3C8C150(&qword_1EB135B30, type metadata accessor for LemonadeMockSharedAlbumActivityModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A422F15C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A422F274()
{
  sub_1A404B7BC();
  if (v0 <= 0x3F)
  {
    sub_1A52407E4();
    if (v1 <= 0x3F)
    {
      sub_1A422EC20(319, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A422EC20(319, &qword_1EB135B58, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1A5241144();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A422F3D4()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 128)) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id sub_1A422F424(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1A524E2B4();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return v3;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      if ([v8 respondsToSelector_])
      {
        v9 = [v8 playbackStyle];
      }

      else
      {
        v9 = 1;
      }

      if ([v8 respondsToSelector_])
      {
        v10 = [v8 playbackVariation];
        if (v9 > 2)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        if (v9 > 2)
        {
LABEL_15:
          switch(v9)
          {
            case 3:
              goto LABEL_28;
            case 4:
              v6 = 2;
              goto LABEL_6;
            case 5:
              v11 = 2;
              if (v10 == 2)
              {
                v11 = 3;
              }

              if (v10 == 1)
              {
                v6 = 4;
              }

              else
              {
                v6 = v11;
              }

              goto LABEL_6;
          }

          goto LABEL_5;
        }
      }

      if (v9)
      {
        if (v9 == 1)
        {
LABEL_28:
          if (v10 == 3)
          {
            v6 = 5;
          }

          else
          {
            v6 = 1;
          }

          goto LABEL_6;
        }

        if (v9 == 2)
        {
          v6 = 6;
          goto LABEL_6;
        }
      }

LABEL_5:
      v6 = 1;
LABEL_6:
      ++v5;
      v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      [v3 addObject_];
      swift_unknownObjectRelease();

      if (v4 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A422F614()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 496))(KeyPath);

  return *(v0 + *(*v0 + 128));
}

uint64_t sub_1A422F6EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 2)
    {
    }

    else if (a4 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1A422F744()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A42291CC();
  }

  return result;
}

uint64_t sub_1A422F7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(v1 + *(v12 + 36), v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A422F9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A422FA44()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(v0 + *(v12 + 40), v8, &qword_1EB128A80, sub_1A3D63A58, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A423B168(v8, v11, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v14 - 8) + 48))(v11, 1, v14) != 1)
  {
    sub_1A5245C94();
  }

  sub_1A3C309BC(v11, sub_1A3D63A58);
  return 0;
}

uint64_t (*sub_1A422FD60())(uint64_t, uint64_t)
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 44));
  v6 = *v5;
  LODWORD(v5) = *(v5 + 16);
  v7 = v6;
  v11 = v6;
  if (v5 == 1)
  {
    sub_1A3C66EE8(v6);
    v8 = v11;
    if (v11)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v8;
      return sub_1A423CCD0;
    }
  }

  else
  {

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A4235DE4(v7, *(&v11 + 1), 0);
    (*(v2 + 8))(v4, v1);
    v8 = v12;
    if (v12)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_1A422FF28@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.customAssetSelectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1A423CEBC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1A422FF98(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1A423D2C0;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_1A3C66EE8(v1);
  return EnvironmentValues.customAssetSelectionHandler.setter(v4, v3);
}

id sub_1A4230058@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  *a1 = result;
  return result;
}

uint64_t sub_1A4230094@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  result = sub_1A4371A78();
  *a1 = result;
  return result;
}

uint64_t sub_1A42300C8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  result = LemonadeActiveSearchViewModel.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:container:onCancellation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  type metadata accessor for LemonadeActiveSearchUpdater();
  active = LemonadeActiveSearchUpdater.__allocating_init()();
  sub_1A3C341C8(a3, &v30);
  LemonadeActiveSearchUpdater.updateContainer(_:)(&v30);
  sub_1A3C309BC(&v30, sub_1A3DA26DC);
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  v14 = v13[8];
  *(a6 + v14) = swift_getKeyPath();
  v15 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = v13[9];
  *(a6 + v16) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v15);
  swift_storeEnumTagMultiPayload();
  v17 = v13[10];
  *(a6 + v17) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v15);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v13[11];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = a6 + v13[12];

  sub_1A524B694();
  v20 = *(&v30 + 1);
  *v19 = v30;
  *(v19 + 1) = v20;
  v21 = a6 + v13[13];
  sub_1A524B694();
  v22 = *(&v30 + 1);
  *v21 = v30;
  *(v21 + 1) = v22;
  v23 = a6 + v13[14];
  sub_1A524A0C4();
  sub_1A524B694();
  v24 = *(&v30 + 1);
  *v23 = v30;
  *(v23 + 1) = v24;
  v25 = v13[15];
  sub_1A4230024(0);
  sub_1A524B694();
  *(a6 + v25) = v30;
  v26 = a6 + v13[16];
  sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  v27 = BYTE8(v30);
  v28 = v31;
  *v26 = v30;
  v26[8] = v27;
  *(v26 + 2) = v28;
  sub_1A3C52C70(0, &unk_1EB126900);
  sub_1A5247C74();
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  sub_1A5247C74();
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  sub_1A42300FC(0);
  sub_1A5247C74();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = active;
  a6[3] = a4;
  a6[4] = a5;
  PXPreferencesEnsureDefaultEnhancedVisualSearch();

  return __swift_destroy_boxed_opaque_existential_0(a3);
}

void LemonadeSearchOverlayView.init(searchQueryManager:suggestedQueryFetcher:updater:onCancellation:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for LemonadeSearchOverlayView(0);
  v13 = v12[8];
  *(a6 + v13) = swift_getKeyPath();
  v14 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v15 = v12[9];
  *(a6 + v15) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v14);
  swift_storeEnumTagMultiPayload();
  v16 = v12[10];
  *(a6 + v16) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v14);
  swift_storeEnumTagMultiPayload();
  v17 = a6 + v12[11];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = a6 + v12[12];
  sub_1A524B694();
  *v18 = v23;
  *(v18 + 1) = *(&v23 + 1);
  v19 = a6 + v12[13];
  sub_1A524B694();
  *v19 = v23;
  *(v19 + 1) = *(&v23 + 1);
  v20 = a6 + v12[14];
  sub_1A524A0C4();
  sub_1A524B694();
  *v20 = v23;
  *(v20 + 1) = *(&v23 + 1);
  v21 = v12[15];
  sub_1A4230024(0);
  sub_1A524B694();
  *(a6 + v21) = v23;
  v22 = a6 + v12[16];
  sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  sub_1A524B694();
  *v22 = v23;
  v22[8] = BYTE8(v23);
  *(v22 + 2) = v24;
  sub_1A3C52C70(0, &unk_1EB126900);
  sub_1A5247C74();
  type metadata accessor for LemonadeSearchIndexingStatus(0);
  sub_1A5247C74();
  type metadata accessor for LemonadeActiveSearchViewModel(0);
  sub_1A5247C74();
  sub_1A42300FC(0);
  sub_1A5247C74();
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  PXPreferencesEnsureDefaultEnhancedVisualSearch();
}

uint64_t sub_1A42308AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1A422F7AC(&v18 - v7);
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x1E69C21F8], v2);
  v10 = sub_1A5242D04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10 & 1) != 0 || (sub_1A422F7AC(v8), v9(v5, *MEMORY[0x1E69C2210], v2), v12 = sub_1A5242D04(), v11(v5, v2), v11(v8, v2), (v12))
  {
    *a1 = 0x4030000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0x4028000000000000;
    *(a1 + 40) = 1;
    v13 = 41;
    v14 = MEMORY[0x1E69C1CE0];
  }

  else
  {
    *a1 = 0x4030000000000000;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    *(a1 + 32) = 0x4028000000000000;
    v13 = 40;
    v14 = MEMORY[0x1E69C1CE8];
  }

  *(a1 + v13) = 1;
  v15 = *v14;
  v16 = sub_1A5242074();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t sub_1A4230B04()
{
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4370FD0();
  v1 = v0;

  if ((v1 & 1) != 0 || (sub_1A5247C84(), v2 = sub_1A4371098(), , v2))
  {
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    active = LemonadeActiveSearchViewModel.isEditing.getter();

    v4 = active ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A4230C40()
{
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.searchResults.getter(v2);

  v3 = type metadata accessor for PhotosSearchResults(0);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_1A3C309BC(v2, sub_1A423357C);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    sub_1A5247C84();
    v6 = sub_1A3EA2A38();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

void sub_1A4230DBC()
{
  v1 = sub_1A5242074();
  v2 = *(v1 - 8);
  v15[2] = v1;
  v15[3] = v2;
  MEMORY[0x1EEE9AC00](v1);
  v15[1] = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52436F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v15[9] = MEMORY[0x1E69E7CD0];
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v11 = sub_1A3EA2A38();

  v12 = *(v5 + 104);
  v13 = (v5 + 8);
  if (v11)
  {
    v12(v7, *MEMORY[0x1E69C25A8], v4);
    sub_1A423B928(v10, v7);
    (*v13)(v10, v4);
  }

  else
  {
    v12(v7, *MEMORY[0x1E69C25C8], v4);
    sub_1A423B928(v10, v7);
    v14 = *v13;
    (*v13)(v10, v4);
    v12(v7, *MEMORY[0x1E69C25C0], v4);
    sub_1A423B928(v10, v7);
    v14(v10, v4);
  }

  v15[4] = *(v0 + 8);
  sub_1A3FAE988();
}

size_t sub_1A4231460()
{
  sub_1A422F9E0(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v22[1] = v22 - v1;
  sub_1A423CD68();
  v3 = *(v2 - 8);
  v26 = v2;
  v27 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A3FAF454();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v35 = MEMORY[0x1E69E7CC0];
      result = sub_1A423C780(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        break;
      }

      v10 = 0;
      v11 = v35;
      v24 = v7;
      v25 = v7 & 0xC000000000000001;
      v22[0] = v7 & 0xFFFFFFFFFFFFFF8;
      v22[2] = v27 + 32;
      v23 = v8;
      while (!__OFADD__(v10, 1))
      {
        v29 = v10 + 1;
        v30 = v11;
        if (v25)
        {
          v12 = MEMORY[0x1A59097F0](v10, v7);
        }

        else
        {
          if (v10 >= *(v22[0] + 16))
          {
            goto LABEL_21;
          }

          v12 = *(v7 + 8 * v10 + 32);
        }

        v13 = sub_1A3FAE220();
        v15 = v14;
        v16 = sub_1A3CB2058();
        if (v16)
        {

          v33 = v13;
          v34 = v15;
          v31 = 32;
          v32 = 0xE100000000000000;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v28 = v13;
        v17 = sub_1A3FAE1D8();
        if ((v18 & 1) == 0)
        {
          v33 = v17;
          sub_1A3DA24EC();
          sub_1A524E054();
        }

        v33 = v12;

        sub_1A3FADF58();
        v19 = sub_1A3FAE428();
        if (v19)
        {
        }

        sub_1A5243EC4();
        type metadata accessor for LemonadeSuggestedSearchCollection(0);
        sub_1A4234388(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
        sub_1A5243704();
        v11 = v30;
        v35 = v30;
        v21 = *(v30 + 16);
        v20 = *(v30 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1A423C780(v20 > 1, v21 + 1, 1);
          v11 = v35;
        }

        *(v11 + 16) = v21 + 1;
        (*(v27 + 32))(v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v5, v26);
        ++v10;
        v7 = v24;
        if (v29 == v23)
        {

          return v11;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v8 = sub_1A524E2B4();
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1A4231C5C()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A422F9E0(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  sub_1A3FADC38();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

void LemonadeSearchOverlayView.body.getter(uint64_t a1@<X8>)
{
  v87 = a1;
  sub_1A423357C(0);
  v83 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242074();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v72 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSearchOverlayView(0);
  v98 = *(v6 - 8);
  v97 = *(v98 + 64);
  v7 = v6 - 8;
  v96 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v63 = v54 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v59 = v54 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v100 = v54 - v16;
  v17 = MEMORY[0x1E6981948];
  sub_1A422F9E0(0, &qword_1EB1214F8, MEMORY[0x1E69C1CD0], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = v54 - v19;
  sub_1A42335B0();
  v21 = *(v20 - 8);
  v70 = v20;
  v71 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v69 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234A50();
  v24 = *(v23 - 8);
  v73 = v23;
  v74 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v89 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234B04();
  v27 = *(v26 - 8);
  v77 = v26;
  v78 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v91 = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234C80();
  v79 = v29;
  v81 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v92 = v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234E50();
  v82 = v31;
  v84 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v93 = v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4235028();
  v34 = *(v33 - 8);
  v85 = v33;
  v86 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v94 = v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v1;
  v95 = *(v1 + 8);
  v36 = *(v7 + 84);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  v38 = v37;
  sub_1A5247CA4();
  v39 = v101;
  v40 = v102;
  v41 = v103;
  swift_getKeyPath();
  v128 = v39;
  v129 = v40;
  v130 = v41;
  sub_1A422F9E0(0, &qword_1EB135CC0, type metadata accessor for LemonadeActiveSearchViewModel, v17);
  sub_1A524B914();

  v66 = v126;
  v67 = v125;
  v65 = v127;

  sub_1A5247CA4();
  v42 = v101;
  v43 = v102;
  v44 = v103;
  swift_getKeyPath();
  v122 = v42;
  v123 = v43;
  v124 = v44;
  sub_1A524B914();

  v61 = v120;
  v62 = v119;
  v60 = v121;

  sub_1A5247CA4();
  v45 = v101;
  v46 = v102;
  v47 = v103;
  swift_getKeyPath();
  v116 = v45;
  v117 = v46;
  v118 = v47;
  sub_1A524B914();

  v131 = v113;
  v132 = v114;
  v133 = v115;

  v88 = v36;
  sub_1A5247CA4();
  v48 = v101;
  v49 = v102;
  v50 = v103;
  swift_getKeyPath();
  v110 = v48;
  v111 = v49;
  v112 = v50;
  sub_1A524B914();

  sub_1A5247CA4();
  v51 = v101;
  v52 = v102;
  v53 = v103;
  swift_getKeyPath();
  v107 = v51;
  v108 = v52;
  v109 = v53;
  sub_1A524B914();

  v56 = v105;
  v57 = v104;
  v55 = v106;

  v58 = v38;
  sub_1A5247C84();
  v54[14] = sub_1A3EA5B84();

  sub_1A3FAE988();
}

void sub_1A42335B0()
{
  if (!qword_1EB135B80)
  {
    sub_1A422F9E0(255, &qword_1EB135B88, sub_1A42337B4, MEMORY[0x1E69E6720]);
    sub_1A4233D70();
    sub_1A423475C(255);
    sub_1A5243EC4();
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A4234790();
    sub_1A4234388(&qword_1EB135C68, sub_1A4233D70);
    sub_1A4234494(&qword_1EB135C70, sub_1A423475C, sub_1A4209428);
    sub_1A4234388(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A4234388(&qword_1EB1358A8, type metadata accessor for LemonadeSuggestedSearchCollection);
    v0 = sub_1A5242BF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135B80);
    }
  }
}

void sub_1A42337B4()
{
  if (!qword_1EB135B90)
  {
    sub_1A423396C();
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4233AB0();
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC();
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B90);
    }
  }
}

void sub_1A423396C()
{
  if (!qword_1EB135B98)
  {
    sub_1A4233AB0();
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC();
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135B98);
    }
  }
}

void sub_1A4233AB0()
{
  if (!qword_1EB135BA0)
  {
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC();
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135BA0);
    }
  }
}

void sub_1A4233BBC()
{
  if (!qword_1EB135BA8)
  {
    sub_1A422F9E0(255, &qword_1EB135BB0, type metadata accessor for PhotosSearchResultsGridView, MEMORY[0x1E697FEC0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135BA8);
    }
  }
}

unint64_t sub_1A4233C4C()
{
  result = qword_1EB135BC8;
  if (!qword_1EB135BC8)
  {
    sub_1A422F9E0(255, &qword_1EB135BB0, type metadata accessor for PhotosSearchResultsGridView, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135BC8);
  }

  return result;
}

unint64_t sub_1A4233CD4()
{
  result = qword_1EB125FD8;
  if (!qword_1EB125FD8)
  {
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A3E75420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FD8);
  }

  return result;
}

void sub_1A4233D70()
{
  if (!qword_1EB135BD0)
  {
    sub_1A4233E64();
    sub_1A4233F38();
    sub_1A3EE1D04();
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135BD0);
    }
  }
}

void sub_1A4233E64()
{
  if (!qword_1EB135BD8)
  {
    sub_1A4233F38();
    sub_1A3EE1D04();
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135BD8);
    }
  }
}

void sub_1A4233F38()
{
  if (!qword_1EB135BE0)
  {
    sub_1A4233FCC(255);
    sub_1A3F32DC0(255, &qword_1EB135C20, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135BE0);
    }
  }
}

void sub_1A4234048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A42340CC()
{
  if (!qword_1EB135BF8)
  {
    sub_1A3F32DC0(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A423418C(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135BF8);
    }
  }
}

void sub_1A423418C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A423C99C(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4234208()
{
  if (!qword_1EB135C00)
  {
    sub_1A422F9E0(255, &qword_1EB135C08, sub_1A423429C, MEMORY[0x1E6981F40]);
    sub_1A4234300();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135C00);
    }
  }
}

void sub_1A423429C()
{
  if (!qword_1EB135C10)
  {
    sub_1A42340CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB135C10);
    }
  }
}

unint64_t sub_1A4234300()
{
  result = qword_1EB135C18;
  if (!qword_1EB135C18)
  {
    sub_1A422F9E0(255, &qword_1EB135C08, sub_1A423429C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C18);
  }

  return result;
}

uint64_t sub_1A4234388(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A42343D0()
{
  result = qword_1EB135C28;
  if (!qword_1EB135C28)
  {
    sub_1A4233F38();
    sub_1A4234494(&qword_1EB135C30, sub_1A4233FCC, sub_1A4234504);
    sub_1A42346D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C28);
  }

  return result;
}

uint64_t sub_1A4234494(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A4234504()
{
  result = qword_1EB135C38;
  if (!qword_1EB135C38)
  {
    sub_1A4234000(255);
    sub_1A42345B4();
    sub_1A4234388(&qword_1EB135C48, sub_1A4234208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C38);
  }

  return result;
}

unint64_t sub_1A42345B4()
{
  result = qword_1EB135C40;
  if (!qword_1EB135C40)
  {
    sub_1A42340CC();
    sub_1A4234634();
    sub_1A400FBC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C40);
  }

  return result;
}

unint64_t sub_1A4234634()
{
  result = qword_1EB124068;
  if (!qword_1EB124068)
  {
    sub_1A3F32DC0(255, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124068);
  }

  return result;
}

unint64_t sub_1A42346D8()
{
  result = qword_1EB135C50;
  if (!qword_1EB135C50)
  {
    sub_1A3F32DC0(255, &qword_1EB135C20, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C50);
  }

  return result;
}

unint64_t sub_1A4234790()
{
  result = qword_1EB135C60;
  if (!qword_1EB135C60)
  {
    sub_1A422F9E0(255, &qword_1EB135B88, sub_1A42337B4, MEMORY[0x1E69E6720]);
    sub_1A423396C();
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4233AB0();
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4233BBC();
    sub_1A4234388(&qword_1EB135BB8, type metadata accessor for PhotosSearchResultsGridView);
    sub_1A423499C(&qword_1EB135BC0, sub_1A4233BBC, sub_1A4233C4C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C60);
  }

  return result;
}

uint64_t sub_1A423499C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A4234A50()
{
  if (!qword_1EB135C78)
  {
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C78);
    }
  }
}

void sub_1A4234B04()
{
  if (!qword_1EB135C88)
  {
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C88);
    }
  }
}

unint64_t sub_1A4234C18()
{
  result = qword_1EB135C90;
  if (!qword_1EB135C90)
  {
    sub_1A3C52C70(255, &qword_1EB120920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135C90);
  }

  return result;
}

void sub_1A4234C80()
{
  if (!qword_1EB135C98)
  {
    sub_1A4234B04();
    sub_1A423357C(255);
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135C98);
    }
  }
}

void sub_1A4234E50()
{
  if (!qword_1EB135CA8)
  {
    sub_1A4234C80();
    sub_1A4234B04();
    sub_1A423357C(255);
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CA8);
    }
  }
}

void sub_1A4235028()
{
  if (!qword_1EB135CB0)
  {
    sub_1A4234E50();
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80();
    sub_1A4234B04();
    sub_1A423357C(255);
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CB0);
    }
  }
}

uint64_t sub_1A4235264@<X0>(uint64_t a1@<X0>, int a2@<W1>, id *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v27 = a2;
  v8 = type metadata accessor for LemonadeSearchOverlayView(0);
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = v9;
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v31);
  v29 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4233AB0();
  v34 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v30 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423396C();
  v38 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v35 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42337B4();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v33 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a3 + *(v8 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v22 = v42;
  if (v42)
  {
    v26[11] = [*a3 photoLibrary];
    v26[15] = a5;
    sub_1A4239F14();
    sub_1A5247C84();
    v26[10] = v43;
    v39 = a1;
    v26[13] = v10;
    v23 = MEMORY[0x1E697DA80];
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    v26[14] = v20;
    v40 = v22;
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v41);

    sub_1A5247C84();
    LemonadeActiveSearchViewModel.container.getter(&v43);

    v26[9] = sub_1A422FD60();
    v26[8] = v24;
    sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, v23);
    sub_1A5247C84();
    v26[6] = v42[6];

    sub_1A422F9E0(0, &qword_1EB135D18, sub_1A42300FC, v23);
    sub_1A5247C84();
    v26[5] = v42;
    sub_1A5247C84();
    sub_1A3EA1C00();
  }

  return (*(v20 + 56))(a5, 1, 1, v19);
}

uint64_t sub_1A4235DE4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1A3C33378(result);
  }

  else
  {
  }
}

void sub_1A4235DF0()
{
  if (!qword_1EB135CC8)
  {
    sub_1A3C52C70(255, &unk_1EB126900);
    v0 = sub_1A524BD74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135CC8);
    }
  }
}

void sub_1A4235E58()
{
  if (!qword_1EB1271D0)
  {
    sub_1A3C52C70(255, &unk_1EB126900);
    v0 = sub_1A524BD84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1271D0);
    }
  }
}

uint64_t sub_1A4235EC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A4235264(a1, a2 & 1, (v3 + v8), v9, a3);
}

uint64_t sub_1A4235FA4@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  *a3 = sub_1A5249314();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  sub_1A423CA18();
  return sub_1A4236044(v3 + v8, a2, a1);
}

uint64_t sub_1A4236044(uint64_t a1, char a2, char a3)
{
  sub_1A3EE1D04();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42362C4(a1, a2, v24);
  if (a3)
  {
    *&v22[0] = sub_1A524B434();
  }

  v9 = sub_1A5248204();
  v19 = v24[6];
  v20[0] = v25[0];
  *(v20 + 10) = *(v25 + 10);
  v15 = v24[2];
  v16 = v24[3];
  v17 = v24[4];
  v18 = v24[5];
  v13 = v24[0];
  v14 = v24[1];
  v21 = v9;
  v10 = *MEMORY[0x1E697E728];
  v11 = sub_1A52486A4();
  (*(*(v11 - 8) + 104))(v8, v10, v11);
  sub_1A4234388(&unk_1EB1288C0, MEMORY[0x1E697E730]);
  result = sub_1A524C594();
  if (result)
  {
    sub_1A4233F38();
    sub_1A42343D0();
    sub_1A4234388(&unk_1EB1263B0, sub_1A3EE1D04);
    sub_1A524AB84();
    sub_1A3C309BC(v8, sub_1A3EE1D04);
    v22[6] = v19;
    v22[7] = v20[0];
    v22[8] = v20[1];
    v23 = v21;
    v22[2] = v15;
    v22[3] = v16;
    v22[4] = v17;
    v22[5] = v18;
    v22[0] = v13;
    v22[1] = v14;
    return sub_1A3C309BC(v22, sub_1A4233F38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1A42362C4@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5242074();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42308AC(v9);
  v10 = sub_1A5242064();
  (*(v7 + 8))(v9, v6);
  if (v10 & 1) == 0 || (v11 = (a1 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52)), v12 = *v11, v13 = *(v11 + 1), LOBYTE(v34) = v12, *(&v34 + 1) = v13, sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]), sub_1A524B6A4(), (v32[0]))
  {
    v21[7] = a3;
    if (a2)
    {
      v14 = sub_1A5249574();
    }

    else
    {
      v14 = sub_1A5249584();
    }

    v21[6] = v14;
    v21[5] = sub_1A52492D4();
    sub_1A4236AFC(a2 & 1, &v34);
    v15 = v34;
    v31[0] = *(v35.n128_u32 + 1);
    *(v31 + 3) = v35.n128_u32[1];
    v21[1] = *(&v36 + 1);
    *&v32[0] = v37;
    BYTE8(v32[0]) = BYTE8(v37);
    v16 = v35.n128_u8[0];
    sub_1A423685C(a2 & 1, &v34);
    v30[0] = *(v35.n128_u32 + 1);
    *(v30 + 3) = v35.n128_u32[1];
    v21[0] = *(&v36 + 1);
    *&v22 = v37;
    BYTE8(v22) = BYTE8(v37);
    sub_1A3E75E68(v15, *(&v15 + 1), v16 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A423685C(a2 & 1, v32);
  sub_1A423CAFC(v32);
  v28 = v32[6];
  v29[0] = v33[0];
  *(v29 + 10) = *(v33 + 10);
  v24 = v32[2];
  v25 = v32[3];
  v26 = v32[4];
  v27 = v32[5];
  v22 = v32[0];
  v23 = v32[1];
  sub_1A42340CC();
  sub_1A4234208();
  sub_1A42345B4();
  sub_1A4234388(&qword_1EB135C48, sub_1A4234208);
  sub_1A5249744();
  v17 = v41[0];
  *(a3 + 96) = v40;
  *(a3 + 112) = v17;
  *(a3 + 122) = *(v41 + 10);
  v18 = v37;
  *(a3 + 32) = v36;
  *(a3 + 48) = v18;
  v19 = v39;
  *(a3 + 64) = v38;
  *(a3 + 80) = v19;
  result = v35;
  *a3 = v34;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1A423685C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A3C38BD4();
  v29 = v8;
  sub_1A3D5F9DC();
  v9 = sub_1A524A464();
  v11 = v10;
  v13 = v12;
  if (a1)
  {
    sub_1A524A264();
  }

  else
  {
    sub_1A524A0D4();
  }

  sub_1A524A104();

  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  sub_1A524A234();

  (*(v5 + 8))(v7, v4);
  v14 = sub_1A524A3C4();
  v16 = v15;
  v18 = v17;
  v26[0] = v19;

  sub_1A3E04DF4(v9, v11, v13 & 1);

  v20 = (v26[1] + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52));
  v21 = *v20;
  v22 = *(v20 + 1);
  LOBYTE(v28) = *v20;
  v29 = v22;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v27)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  LOBYTE(v28) = v21;
  v29 = v22;
  sub_1A524B6A4();
  v24 = v27;
  result = swift_getKeyPath();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v26[0];
  *(a2 + 32) = v23;
  *(a2 + 40) = result;
  *(a2 + 48) = v24;
  *(a2 + 56) = v24 ^ 1;
  return result;
}

uint64_t sub_1A4236AFC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_1A524A204();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for LemonadeSearchOverlayView(0);
  v35 = v2;
  v37 = *(v2 + *(v34 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  v9 = sub_1A524B6A4();
  v10 = v36;
  if (v36)
  {
    v11 = (*((*MEMORY[0x1E69E7D40] & *v36) + 0x280))(v9);
    v13 = v12;
  }

  else
  {
    v11 = sub_1A3C38BD4();
    v13 = v14;
  }

  *&v37 = v11;
  *(&v37 + 1) = v13;
  sub_1A3D5F9DC();
  v15 = sub_1A524A464();
  v17 = v16;
  v19 = v18;
  if (a1)
  {
    sub_1A524A264();
  }

  else
  {
    sub_1A524A1D4();
  }

  sub_1A524A104();

  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  sub_1A524A234();

  (*(v6 + 8))(v8, v5);
  v20 = sub_1A524A3C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1A3E04DF4(v15, v17, v19 & 1);

  v27 = (v35 + *(v34 + 52));
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v37) = *v27;
  *(&v37 + 1) = v29;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v36)
  {
    v30 = 1.0;
  }

  else
  {
    v30 = 0.0;
  }

  LOBYTE(v37) = v28;
  *(&v37 + 1) = v29;
  sub_1A524B6A4();
  v31 = v36;
  v32 = (v36 & 1) == 0;
  result = swift_getKeyPath();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v30;
  *(a2 + 40) = result;
  *(a2 + 48) = v32;
  *(a2 + 56) = v31;
  return result;
}

uint64_t sub_1A4236E4C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_1A5242074();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = type metadata accessor for LemonadeFeatureAvailabilityProcessingView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v18 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4208E10();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v10);
  if (sub_1A4230B04())
  {
    v15[4] = v4;
    v15[5] = v3;
    v16 = a2;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v11 = sub_1A437125C();

    if (v11)
    {
      v12 = v11;
      sub_1A5247C84();
      v13 = sub_1A4371304();

      v15[1] = LODWORD(v13);
      sub_1A5247C84();
      sub_1A43708CC();
    }

    a2 = v16;
  }

  return (*(v9 + 56))(a2, 1, 1, v8);
}

uint64_t sub_1A4237260@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  type metadata accessor for LemonadeSearchOverlayView(0);

  return sub_1A4236E4C(a1, a2);
}

uint64_t sub_1A42372FC(uint64_t a1)
{
  v2 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (a1 + *(type metadata accessor for LemonadeSearchOverlayView(0) + 52));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v11) = *v5;
  v12 = v7;
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v10 == 1)
  {
    LOBYTE(v11) = v6;
    v12 = v7;
    v10 = 0;
    return sub_1A524B6B4();
  }

  else
  {
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchText.setter([objc_allocWithZone(MEMORY[0x1E696AAB0]) init]);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v4);
  }
}

uint64_t sub_1A42374C0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadeSearchOverlayView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A4237534()
{
  type metadata accessor for LemonadeSearchOverlayView(0);
  v0 = [objc_opt_self() sharedSession];
  [v0 reportInitialSuggestionSelected];

  sub_1A524BD24();
  sub_1A52483D4();
}

void sub_1A4237678()
{
  v0 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A3CB2058();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v10[3] = sub_1A3C52C70(0, &qword_1EB126AC0);
    v10[4] = &protocol witness table for PHAssetCollection;
    v10[0] = v4;
    v5 = v4;
    LemonadeActiveSearchViewModel.container.setter(v10);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v2);
  }

  v6 = sub_1A3FAE428();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for LemonadeSearchOverlayView(0);
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v8 = v7;
    LemonadeActiveSearchViewModel.searchText.setter(v8);

    sub_1A5247C84();
    sub_1A5242034();
    sub_1A3C9C5D4(v2);
  }
}

void sub_1A42378E4()
{
  v0 = sub_1A52436F4();
  MEMORY[0x1EEE9AC00](v0);
  sub_1A4230DBC();
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if (!(*(v10 + 48))(v2 + v7, 1, v8))
    {
      (*(v10 + 8))(v2 + v7, v9);
    }
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16));

  v11 = v2 + v1[17];
  sub_1A4235DF0();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4235E58();

  v13 = v2 + v1[18];
  v14 = MEMORY[0x1E6981E90];
  sub_1A422F9E0(0, &qword_1EB135CD0, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  v16 = MEMORY[0x1E6981E98];
  sub_1A422F9E0(0, &qword_1EB127230, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E98]);

  v17 = v2 + v1[19];
  sub_1A422F9E0(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, v14);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A422F9E0(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, v16);

  v19 = v2 + v1[20];
  sub_1A422F9E0(0, &qword_1EB135CE0, sub_1A42300FC, v14);
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_1A422F9E0(0, &qword_1EB127270, sub_1A42300FC, v16);

  return swift_deallocObject();
}

void sub_1A4238090()
{
  type metadata accessor for LemonadeSearchOverlayView(0);

  sub_1A42378E4();
}

uint64_t sub_1A423811C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A52436F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]), v7 = sub_1A524C4A4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0]);
      v15 = sub_1A524C594();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1A4238334()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0) - 8;
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = MEMORY[0x1E697DA80];
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v4 = *v2;
  v5 = *(v2 + 16);
  v6 = sub_1A3C30368();
  v7 = sub_1A3C30368();
  sub_1A3EA41E4(v4, v5, v6 & 1, v7 & 1);

  sub_1A422F9E0(0, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, v3);
  sub_1A5247C84();
  v8 = [v4 photoLibrary];
  sub_1A4371C4C(v8);

  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v9)
  {
  }

  else
  {
    type metadata accessor for PhotosSearchCollectionSectionProvider();
    PhotosSearchCollectionSectionProvider.__allocating_init(photoLibrary:)([v4 photoLibrary]);
    sub_1A524B6B4();
  }
}

void sub_1A4238540()
{
  sub_1A423357C(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  v42 = *(v0 + *(v13 + 60));
  sub_1A422F9E0(0, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v40)
  {
    v37 = v3;
    v38 = v13;
    v39 = v40;
    sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v12);

    v14 = type metadata accessor for PhotosSearchResults(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = v15(v12, 1, v14);
    v17 = sub_1A423357C;
    if (v16 == 1)
    {
      v36 = 0;
    }

    else
    {
      v36 = *&v12[*(v14 + 40)];
      v18 = v36;
      v17 = type metadata accessor for PhotosSearchResults;
    }

    sub_1A3C309BC(v12, v17);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v9);

    if (v15(v9, 1, v14) != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v9, sub_1A423357C);
    v19 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A5247C84();
    LemonadeActiveSearchViewModel.searchResults.getter(v6);

    v20 = v15(v6, 1, v14);
    if (v20 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v6, sub_1A423357C);
    v21 = sub_1A3DAEED0(MEMORY[0x1E69E7CC0]);
    sub_1A5247C84();
    v22 = v37;
    LemonadeActiveSearchViewModel.searchResults.getter(v37);

    v23 = v15(v22, 1, v14);
    if (v23 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C309BC(v22, sub_1A423357C);
    v24 = sub_1A3DAF0C0(MEMORY[0x1E69E7CC0]);
    v25 = v38;
    v26 = (v0 + *(v38 + 48));
    v27 = *v26;
    v28 = *(v26 + 1);
    LOBYTE(v42) = v27;
    *(&v42 + 1) = v28;
    sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v29 = v40;
    v30 = (v0 + *(v25 + 64));
    v31 = *v30;
    v32 = *(v30 + 8);
    v33 = v30[2];
    *&v42 = v31;
    BYTE8(v42) = v32;
    v43 = v33;
    sub_1A423418C(0, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    v34 = v39;
    v35 = v36;
    (*((*MEMORY[0x1E69E7D40] & *v39) + 0x278))(v36, v19, v21, v24, v29, v41);
  }
}

void sub_1A4238B00()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  LOBYTE(v4) = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 52));
  sub_1A423C99C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if ((v3 & 1) == 0)
  {
    sub_1A4239F14();
    sub_1A5247C84();
    v2 = [v4 popToRootViewControllerAnimated_];
  }
}

void sub_1A4238C08()
{
  if (!qword_1EB135CE8)
  {
    sub_1A524D6B4();
    sub_1A4238ED4();
    sub_1A4234388(&qword_1EB133870, MEMORY[0x1E6969F20]);
    sub_1A4235028();
    sub_1A4234E50();
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80();
    sub_1A4234B04();
    sub_1A423357C(255);
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248A54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135CE8);
    }
  }
}

void sub_1A4238ED4()
{
  if (!qword_1EB135CF0)
  {
    sub_1A4235028();
    sub_1A4234E50();
    sub_1A423C99C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A4234C80();
    sub_1A4234B04();
    sub_1A423357C(255);
    sub_1A4234A50();
    sub_1A3C52C70(255, &qword_1EB120920);
    sub_1A42335B0();
    sub_1A4234388(&qword_1EB135C80, sub_1A42335B0);
    swift_getOpaqueTypeConformance2();
    sub_1A4234C18();
    swift_getOpaqueTypeConformance2();
    sub_1A4234494(&qword_1EB135CA0, sub_1A423357C, sub_1A4234E1C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A4233CD4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135CF0);
    }
  }
}

uint64_t sub_1A4239134(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697DCB8];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423CA80(a1 + *(v13 + 40), v9, &qword_1EB128A80, sub_1A3D63A58, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A423B168(v9, v12, sub_1A3D63A58);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A3D63A8C(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) != 1)
  {
    sub_1A5245C94();
  }

  result = sub_1A3C309BC(v12, sub_1A3D63A58);
  v17 = *(a1 + 24);
  if (v17)
  {
    return v17(result);
  }

  return result;
}

void sub_1A42394F4()
{
  sub_1A422F9E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_1A524CC54();
  v4 = sub_1A524CC44();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E85E0];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  sub_1A3D4D930(0, 0, v2, &unk_1A53277F0, v5);

  v7 = sub_1A422FA44();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 px_splitViewController];

    if (v9)
    {
      [v9 setPresentsWithGesture_];
      if ([v9 isSidebarVisible])
      {
        [v9 toggleSidebarVisibilityAnimated];
      }
    }
  }
}

uint64_t objectdestroy_30Tm_0()
{
  v1 = type metadata accessor for LemonadeSearchOverlayView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v1[8];
  sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5247E04();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[9];
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[10];
  sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v9 = v8;
    v10 = *(v8 - 8);
    if (!(*(v10 + 48))(v2 + v7, 1, v8))
    {
      (*(v10 + 8))(v2 + v7, v9);
    }
  }

  else
  {
  }

  sub_1A4235DE4(*(v2 + v1[11]), *(v2 + v1[11] + 8), *(v2 + v1[11] + 16));

  v11 = v2 + v1[17];
  sub_1A4235DF0();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A4235E58();

  v13 = v2 + v1[18];
  v14 = MEMORY[0x1E6981E90];
  sub_1A422F9E0(0, &qword_1EB135CD0, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  v16 = MEMORY[0x1E6981E98];
  sub_1A422F9E0(0, &qword_1EB127230, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E6981E98]);

  v17 = v2 + v1[19];
  sub_1A422F9E0(0, &qword_1EB135CD8, type metadata accessor for LemonadeActiveSearchViewModel, v14);
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_1A422F9E0(0, &qword_1EB127210, type metadata accessor for LemonadeActiveSearchViewModel, v16);

  v19 = v2 + v1[20];
  sub_1A422F9E0(0, &qword_1EB135CE0, sub_1A42300FC, v14);
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_1A422F9E0(0, &qword_1EB127270, sub_1A42300FC, v16);

  return swift_deallocObject();
}

uint64_t sub_1A4239C48()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4239CDC, v2, v1);
}

uint64_t sub_1A4239CDC()
{

  sub_1A4A5597C(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4239D44(uint64_t a1, void *a2)
{
  v3 = sub_1A5242054();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A422F9E0(0, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  LemonadeActiveSearchViewModel.isEditing.setter(0);

  sub_1A5247C84();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1A5243464();
  LemonadeActiveSearchViewModel.searchText.setter(v6);

  sub_1A5247C84();
  sub_1A5242034();
  sub_1A3C9C5D4(v5);
}

void sub_1A4239F14()
{
  if (!qword_1EB135D08)
  {
    sub_1A3C52C70(255, &unk_1EB126900);
    v0 = sub_1A5247CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135D08);
    }
  }
}

void sub_1A4239F90()
{
  sub_1A3C52C70(319, &qword_1EB120920);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeSuggestedSearchQueryFetcher(319);
    if (v1 <= 0x3F)
    {
      sub_1A422F9E0(319, &qword_1EB125650, type metadata accessor for LemonadeActiveSearchUpdater, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A422F9E0(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A422F9E0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A422F9E0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A422F9E0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A422F9E0(319, &unk_1EB1246D0, sub_1A423A3CC, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A423C99C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A423C99C(319, &qword_1EB121C08, MEMORY[0x1E6980D50], MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A422F9E0(319, &qword_1EB121C68, sub_1A4230024, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A423418C(319, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A4239F14();
                          if (v12 <= 0x3F)
                          {
                            sub_1A422F9E0(319, &qword_1EB135D10, type metadata accessor for LemonadeSearchIndexingStatus, MEMORY[0x1E697DA80]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A422F9E0(319, &qword_1EB135CB8, type metadata accessor for LemonadeActiveSearchViewModel, MEMORY[0x1E697DA80]);
                              if (v14 <= 0x3F)
                              {
                                sub_1A422F9E0(319, &qword_1EB135D18, sub_1A42300FC, MEMORY[0x1E697DA80]);
                                if (v15 <= 0x3F)
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
  }
}

unint64_t sub_1A423A400()
{
  result = qword_1EB120BC8;
  if (!qword_1EB120BC8)
  {
    sub_1A3C52C70(255, &qword_1EB126B50);
    sub_1A3C52C70(255, &qword_1EB120760);
    result = swift_getFunctionTypeMetadata2();
    atomic_store(result, &qword_1EB120BC8);
  }

  return result;
}

unint64_t sub_1A423A494()
{
  result = qword_1EB135D20;
  if (!qword_1EB135D20)
  {
    sub_1A4234048(255, &qword_1EB135D00, sub_1A4239C20, type metadata accessor for LemonadeAnalyticsViewTimeTracker, MEMORY[0x1E697E830]);
    sub_1A423499C(&qword_1EB135D28, sub_1A4239C20, sub_1A423A5C0);
    sub_1A4234388(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135D20);
  }

  return result;
}

unint64_t sub_1A423A5F4()
{
  result = qword_1EB1879C0[0];
  if (!qword_1EB1879C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1879C0);
  }

  return result;
}

uint64_t sub_1A423A674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = type metadata accessor for LemonadeSearchRootOverlayView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A423AB04(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4234048(0, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  sub_1A423ADB4();
  v17 = *(v16 - 8);
  v36 = v16;
  v37 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);

  v21 = LemonadeSearchViewModel.searchIsActive.getter(v20);
  sub_1A423AB90();
  v23 = (*(*(v22 - 8) + 16))(v11, a1, v22);
  v11[*(v9 + 36)] = (v21 & 1) == 0;
  LemonadeSearchViewModel.searchIsActive.getter(v23);
  sub_1A423499C(&qword_1EB128798, sub_1A423AB04, sub_1A423B058);
  sub_1A524AAE4();
  sub_1A3C309BC(v11, sub_1A423AB04);
  v24 = sub_1A524BC74();
  v26 = v25;
  v27 = &v15[*(v13 + 36)];
  *v7 = a2;
  v28 = *(v5 + 20);
  *(v7 + v28) = swift_getKeyPath();
  sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v29 = v7 + *(v5 + 24);
  *v29 = swift_getKeyPath();
  *(v29 + 1) = 0;
  v29[16] = 0;
  sub_1A423AD5C();
  sub_1A524AF04();
  sub_1A3C309BC(v7, type metadata accessor for LemonadeSearchRootOverlayView);
  sub_1A423AC34();
  v31 = &v27[*(v30 + 36)];
  *v31 = v24;
  v31[1] = v26;
  v32 = sub_1A423AE7C();
  sub_1A524AE44();
  v33 = sub_1A3CE6F7C(v15);
  v41 = LemonadeSearchViewModel.searchIsActive.getter(v33) & 1;

  v39 = v13;
  v40 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v36;
  sub_1A524B154();

  return (*(v37 + 8))(v19, v34);
}

void sub_1A423AB2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A423AB90()
{
  if (!qword_1EB127B98)
  {
    sub_1A423A5F4();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127B98);
    }
  }
}

void sub_1A423AC34()
{
  if (!qword_1EB135D40)
  {
    sub_1A423ACD8();
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    sub_1A423AD5C();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135D40);
    }
  }
}

void sub_1A423ACD8()
{
  if (!qword_1EB135D48)
  {
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    sub_1A423AD5C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135D48);
    }
  }
}

unint64_t sub_1A423AD5C()
{
  result = qword_1EB17DEC0[0];
  if (!qword_1EB17DEC0[0])
  {
    type metadata accessor for LemonadeSearchRootOverlayView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17DEC0);
  }

  return result;
}

void sub_1A423ADB4()
{
  if (!qword_1EB135D50)
  {
    sub_1A4234048(255, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
    sub_1A423AE7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB135D50);
    }
  }
}

unint64_t sub_1A423AE7C()
{
  result = qword_1EB135D58;
  if (!qword_1EB135D58)
  {
    sub_1A4234048(255, &qword_1EB135D38, sub_1A423ABEC, sub_1A423AC34, MEMORY[0x1E697E830]);
    sub_1A423AF70();
    sub_1A4234388(&qword_1EB135D60, sub_1A423AC34);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135D58);
  }

  return result;
}

unint64_t sub_1A423AF70()
{
  result = qword_1EB128440;
  if (!qword_1EB128440)
  {
    sub_1A423ABEC(255);
    sub_1A423499C(&qword_1EB128798, sub_1A423AB04, sub_1A423B058);
    sub_1A4234388(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128440);
  }

  return result;
}

uint64_t sub_1A423B08C(uint64_t a1)
{
  v1 = LemonadeSearchViewModel.searchIsActive.getter(a1);
  LemonadeSearchViewModel.suggestedQueryFetcher.getter();
  if (v1)
  {
    LemonadeSuggestedSearchQueryFetcher.boostBackgroundTasks()();
  }

  else
  {
    LemonadeSuggestedSearchQueryFetcher.resetInitialSuggestions()();
  }
}

uint64_t sub_1A423B0DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A4239C48();
}

uint64_t sub_1A423B168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A423B1D0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_1A5242D14();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v47 - v6;
  v50 = type metadata accessor for LemonadeSearchRootOverlayView(0);
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v10 = type metadata accessor for LemonadeSearchOverlayView(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A423D038();
  v14 = v13;
  v55 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v51 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  v17 = *v1;
  if (LemonadeSearchViewModel.searchIsActive.getter(v18))
  {
    v49 = LemonadeSearchViewModel.searchQueryManager.getter();
    v19 = LemonadeSearchViewModel.suggestedQueryFetcher.getter();
    v47[1] = v16;
    v48 = v19;
    v20 = *(v17 + 16);
    sub_1A423D0EC(v16, v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSearchRootOverlayView);
    v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v22 = swift_allocObject();
    sub_1A423B168(v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for LemonadeSearchRootOverlayView);
    v23 = v10[8];
    *(v12 + v23) = swift_getKeyPath();
    v24 = MEMORY[0x1E697DCB8];
    sub_1A422F9E0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v25 = v10[9];
    *(v12 + v25) = swift_getKeyPath();
    sub_1A422F9E0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v24);
    swift_storeEnumTagMultiPayload();
    v26 = v10[10];
    *(v12 + v26) = swift_getKeyPath();
    sub_1A422F9E0(0, &qword_1EB128A80, sub_1A3D63A58, v24);
    swift_storeEnumTagMultiPayload();
    v27 = v12 + v10[11];
    *v27 = swift_getKeyPath();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v28 = v12 + v10[12];
    LOBYTE(v56) = 0;

    sub_1A524B694();
    v29 = *(&v58 + 1);
    *v28 = v58;
    *(v28 + 1) = v29;
    v30 = v12 + v10[13];
    LOBYTE(v56) = 0;
    sub_1A524B694();
    v31 = *(&v58 + 1);
    *v30 = v58;
    *(v30 + 1) = v31;
    v32 = v12 + v10[14];
    LOBYTE(v56) = sub_1A524A0C4();
    sub_1A524B694();
    v33 = *(&v58 + 1);
    *v32 = v58;
    *(v32 + 1) = v33;
    v34 = v10[15];
    v56 = 0;
    sub_1A4230024(0);
    sub_1A524B694();
    *(v12 + v34) = v58;
    v35 = v12 + v10[16];
    v56 = 0;
    v57 = 1;
    sub_1A423C99C(0, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A524B694();
    v36 = BYTE8(v58);
    v37 = v59;
    *v35 = v58;
    v35[8] = v36;
    *(v35 + 2) = v37;
    sub_1A3C52C70(0, &unk_1EB126900);
    sub_1A5247C74();
    type metadata accessor for LemonadeSearchIndexingStatus(0);
    sub_1A5247C74();
    type metadata accessor for LemonadeActiveSearchViewModel(0);
    sub_1A5247C74();
    sub_1A42300FC(0);
    sub_1A5247C74();
    v38 = v48;
    *v12 = v49;
    v12[1] = v38;
    v12[2] = v20;
    v12[3] = sub_1A423D154;
    v12[4] = v22;
    PXPreferencesEnsureDefaultEnhancedVisualSearch();
    sub_1A3D61808(v7);
    v39 = v52;
    v40 = v53;
    (*(v52 + 104))(v4, *MEMORY[0x1E69C2200], v53);
    sub_1A5242D04();
    v41 = *(v39 + 8);
    v41(v4, v40);
    v41(v7, v40);
    sub_1A4234388(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView);
    v42 = v51;
    sub_1A524B214();
    sub_1A3C309BC(v12, type metadata accessor for LemonadeSearchOverlayView);
    v43 = v54;
    (*(v55 + 32))(v54, v42, v14);
    return (*(v55 + 56))(v43, 0, 1, v14);
  }

  else
  {
    v45 = v54;
    v46 = *(v55 + 56);

    return v46(v45, 1, 1, v14);
  }
}

uint64_t sub_1A423B928(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A52436F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]);
  v33 = a2;
  v11 = sub_1A524C4A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0]);
      v21 = sub_1A524C594();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A423BF58(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1A423BC08()
{
  v1 = v0;
  v35 = sub_1A52436F4();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1A423CCD4();
  result = sub_1A524E3B4();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]);
      result = sub_1A524C4A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1A423BF58(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1A52436F4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A423BC08();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1A423C1FC();
      goto LABEL_12;
    }

    sub_1A423C424();
  }

  v13 = *v3;
  sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]);
  v14 = sub_1A524C4A4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1A4234388(&qword_1EB135D70, MEMORY[0x1E69C25E0]);
      v22 = sub_1A524C594();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void *sub_1A423C1FC()
{
  v1 = v0;
  v2 = sub_1A52436F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A423CCD4();
  v6 = *v0;
  v7 = sub_1A524E3A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1A423C424()
{
  v1 = v0;
  v32 = sub_1A52436F4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1A423CCD4();
  v6 = sub_1A524E3B4();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]);
      result = sub_1A524C4A4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_1A423C734(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1A524C8E4();
  }

  __break(1u);
  return result;
}

size_t sub_1A423C780(size_t a1, int64_t a2, char a3)
{
  result = sub_1A423C7A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A423C7A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A422F9E0(0, &unk_1EB135D90, sub_1A423CD68, MEMORY[0x1E69E6F90]);
  sub_1A423CD68();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1A423CD68();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

void sub_1A423C99C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A423CA18()
{
  if (!qword_1EB135D78)
  {
    sub_1A4233E64();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135D78);
    }
  }
}

uint64_t sub_1A423CA80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A422F9E0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1A423CB08(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1A4230C40())
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  sub_1A422F9E0(0, &qword_1EB135BB0, type metadata accessor for PhotosSearchResultsGridView, MEMORY[0x1E697FEC0]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  sub_1A4233BBC();
  *(a2 + *(v6 + 36)) = v4;
}

uint64_t sub_1A423CBD0()
{
  type metadata accessor for LemonadeSearchOverlayView(0);
  sub_1A423418C(0, &qword_1EB121C88, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A423CCD4()
{
  if (!qword_1EB135D80)
  {
    sub_1A52436F4();
    sub_1A4234388(&qword_1EB135D68, MEMORY[0x1E69C25E0]);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135D80);
    }
  }
}

void sub_1A423CD68()
{
  if (!qword_1EB135D88)
  {
    sub_1A5243EC4();
    type metadata accessor for LemonadeSuggestedSearchCollection(255);
    sub_1A4234388(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v0 = sub_1A5243714();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135D88);
    }
  }
}

uint64_t sub_1A423CE1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A422F9E0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A423CE78(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t sub_1A423CEBC@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result & 1;
  return result;
}

void sub_1A423CF20()
{
  type metadata accessor for LemonadeSearchViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A422F9E0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A422F9E0(319, &unk_1EB1246D0, sub_1A423A3CC, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A423D038()
{
  if (!qword_1EB127580)
  {
    type metadata accessor for LemonadeSearchOverlayView(255);
    sub_1A4234388(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127580);
    }
  }
}

uint64_t sub_1A423D0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A423D1B4()
{
  result = qword_1EB127570;
  if (!qword_1EB127570)
  {
    sub_1A422F9E0(255, &qword_1EB127578, sub_1A423D038, MEMORY[0x1E69E6720]);
    type metadata accessor for LemonadeSearchOverlayView(255);
    sub_1A4234388(&qword_1EB129D38, type metadata accessor for LemonadeSearchOverlayView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127570);
  }

  return result;
}

void *sub_1A423D334()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_interactiveTransition);
  v2 = v1;
  return v1;
}

void sub_1A423D364(void *a1)
{
  v3 = [a1 view];
  v9 = [v3 window];

  v4 = [a1 state];
  if ((v4 - 4) < 2)
  {
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_interactiveTransition);
    goto LABEL_7;
  }

  if (v4 == 3)
  {
    [a1 velocityInView_];
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_interactiveTransition);
    if (v8 >= 0.0)
    {
      [v7 finishInteractiveTransition];
      goto LABEL_8;
    }

LABEL_7:
    [v7 cancelInteractiveTransition];
    goto LABEL_8;
  }

  if (v4 == 2 && (*(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_verticalOffset + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_verticalOffset);
    [a1 translationInView_];
    [*(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_interactiveTransition) updateInteractiveTransition_];
  }

LABEL_8:
}

void sub_1A423D540(void *a1)
{
  [objc_msgSend(a1 containerView)];
  Height = CGRectGetHeight(v21);
  if (Height > 1.0)
  {
    v4 = Height;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = (v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_verticalOffset);
  *v5 = v4;
  *(v5 + 8) = 0;
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_grabAffordanceView);
  v7 = objc_opt_self();
  v8 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(a1);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v4;
  v19 = sub_1A423DAE4;
  v20 = v9;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3C2E0D0;
  v18 = &block_descriptor_131;
  v10 = _Block_copy(&v15);
  v11 = v6;

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = v1;
  v19 = sub_1A423DB40;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3E01E70;
  v18 = &block_descriptor_6_4;
  v13 = _Block_copy(&v15);
  v14 = v11;
  swift_unknownObjectRetain();
  v1;

  [v7 animateWithDuration:196608 delay:v10 options:v13 animations:v8 completion:0.0];
  _Block_release(v13);
  _Block_release(v10);
  sub_1A52459B4();
}

id sub_1A423D838()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BasicInteractiveSwipeDownTransition();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A423DAE4()
{
  v1 = *(v0 + 16);
  CGAffineTransformMakeTranslation(&v3, 0.0, *(v0 + 24));
  return [v1 setTransform_];
}

uint64_t sub_1A423DB40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = [*(v0 + 16) transitionWasCancelled];
  if (v3)
  {
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v1 setTransform_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v16 = sub_1A3EF7388;
    v17 = v5;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1A3C2E0D0;
    v15 = &block_descriptor_16_3;
    v6 = _Block_copy(&v12);
    v7 = v1;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v16 = sub_1A3EF739C;
    v17 = v8;
    v12 = MEMORY[0x1E69E9820];
    v13 = 1107296256;
    v14 = sub_1A3E01E70;
    v15 = &block_descriptor_22_1;
    v9 = _Block_copy(&v12);
    v10 = v7;

    [v4 animateWithDuration:v6 animations:v9 completion:0.2];
    _Block_release(v9);
    _Block_release(v6);
  }

  return (*(v2 + OBJC_IVAR____TtC12PhotosUICore35BasicInteractiveSwipeDownTransition_completionHandler))(v3 ^ 1);
}

id sub_1A423DD6C()
{
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

id sub_1A423DE00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

unint64_t sub_1A423DEC8()
{
  result = qword_1EB135E90;
  if (!qword_1EB135E90)
  {
    type metadata accessor for LemonadePeopleSortModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135E90);
  }

  return result;
}

uint64_t type metadata accessor for LemonadePeopleSortModel()
{
  result = qword_1EB185DA0;
  if (!qword_1EB185DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A423DF6C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  sub_1A3C4B4AC();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A423DEC8();
    sub_1A52415C4();
  }
}

void sub_1A423E08C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  v4 = v1;
}

uint64_t sub_1A423E0E8()
{
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  return *(v0 + 24);
}

uint64_t sub_1A423E158@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1A423E1F8(uint64_t a1)
{
  sub_1A3D7AC7C();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A423DEC8();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A423E304()
{
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  return *(v0 + 32);
}

uint64_t sub_1A423E374@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1A423E414(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A423DEC8();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A423E4F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3EBECA4(v1 + 40, a1);
}

uint64_t sub_1A423E584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  swift_beginAccess();
  return sub_1A3EBECA4(v3 + 40, a2);
}

uint64_t sub_1A423E614(uint64_t a1)
{
  sub_1A3EBECA4(a1, v2);
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415C4();

  return sub_1A3C35B00(v2);
}

uint64_t sub_1A423E6C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1A423EEB8(a2, a1 + 40);
  return swift_endAccess();
}

uint64_t sub_1A423E718(void *a1)
{
  v2 = swift_allocObject();
  sub_1A423E758(a1);
  return v2;
}

uint64_t sub_1A423E758(void *a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  sub_1A5241604();
  *(v2 + 16) = a1;
  v4 = a1;
  sub_1A423E8C0();
  v5 = [v4 px_localDefaults];
  v6 = swift_allocObject();
  swift_weakInit();

  sub_1A40E91F8(sub_1A423EBA0, v6, v8);

  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415C4();

  sub_1A3C35B00(v8);
  return v2;
}

uint64_t sub_1A423E8C0()
{
  type metadata accessor for PeopleUtilities();
  swift_getKeyPath();
  sub_1A423DEC8();
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = sub_1A3D78460(v1);

  sub_1A3D7AC7C();
  if (sub_1A524C594())
  {
    *(v0 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();
  }

  swift_getKeyPath();
  sub_1A52415D4();

  v5 = *(v0 + 24);
  if (v5)
  {
    if (v5 == 2)
    {
      if (*(v0 + 32) == 1)
      {
        *(v0 + 32) = 1;
        return result;
      }

      goto LABEL_10;
    }

    if (v5 == 1)
    {
      if (*(v0 + 32))
      {
LABEL_10:
        v6 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v6);
        sub_1A52415C4();
      }

      *(v0 + 32) = 0;
    }

    else
    {
      result = sub_1A524EB44();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A423EBA0(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v4 == a2)
  {

LABEL_8:
    v8[4] = sub_1A423EF1C;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1A3C2E0D0;
    v8[3] = &block_descriptor_132;
    _Block_copy(v8);

    px_dispatch_on_main_queue();
  }

  v6 = sub_1A524EAB4();

  if (v6)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1A423ECDC()
{
  sub_1A3C35B00(v0 + 40);
  v1 = OBJC_IVAR____TtC12PhotosUICore23LemonadePeopleSortModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1A423ED8C()
{
  result = qword_1EB135E98;
  if (!qword_1EB135E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135E98);
  }

  return result;
}

uint64_t sub_1A423EDE8()
{
  result = sub_1A5241614();
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

uint64_t sub_1A423EEB8(uint64_t a1, uint64_t a2)
{
  sub_1A3C35B84();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A423EF1C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A423E8C0();
  }

  return result;
}

uint64_t sub_1A423EFA0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B14D8);
  __swift_project_value_buffer(v0, qword_1EB1B14D8);
  return sub_1A5246F14();
}

uint64_t sub_1A423F020(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 16) = a1;
  swift_unownedRetain();

  return v2;
}

uint64_t sub_1A423F094(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  v5 = [objc_allocWithZone(MEMORY[0x1E69B3C18]) initWithPurpose_];
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  *(v4 + 16) = a1;
  *(v4 + 40) = a2;
  swift_unownedRetain();

  return v4;
}

uint64_t PhotoStyleRenderUpdater.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t PhotoStyleRenderUpdater.__deallocating_deinit()
{
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A423F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A423F1AC, 0, 0);
}

void sub_1A423F20C()
{
  swift_beginAccess();
  if (*(v0 + 32) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A423F5B0()
{
  swift_beginAccess();
  if (*(v0 + 32) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A423F704()
{
  sub_1A424307C(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  if (*(v0 + 64))
  {

    sub_1A524CD94();
  }

  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  *(v0 + 64) = sub_1A3D4D930(0, 0, v3, &unk_1A5327E78, v5);
}

uint64_t sub_1A423F984()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 32) = v0;

    return MEMORY[0x1EEE6DFA0](sub_1A423FACC, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1A423FACC()
{
  if (qword_1EB1B14D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1B14D8);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Error updating cache: %@", v8, 0xCu);
    sub_1A4243004(v9, &qword_1EB12B150, sub_1A3C7B6A4);
    MEMORY[0x1A590EEC0](v9, -1, -1);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1A423FC7C()
{
  swift_beginAccess();
  if (*(v0 + 32) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42401A4()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  if (*(v1 + 32) >> 62)
  {
    sub_1A524E2B4();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4240620()
{

  if (v0)
  {

    v1 = sub_1A4240980;
  }

  else
  {

    v1 = sub_1A4240768;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

void sub_1A4240768()
{
  v17 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 64);
  swift_unknownObjectRetain();
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_27;
    }

LABEL_6:
    v4 = 0;
    v15 = v3;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](v4, *(v0 + 64));
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v5 = *(v2 + 32 + 8 * v4);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      v7 = *(v0 + 112);
      *(v5 + 24) = v1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v8 = v7 >= *(v5 + 16);
      if (v7 >= *(v5 + 16))
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(v5 + 17) = v9;
      if (v8 && *(v5 + 32) == 1)
      {
        *(v5 + 32) = 2;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v5 + 48);
        if (v1)
        {
          v11 = [v1 CVPixelBuffer];
        }

        else
        {
          v11 = 0;
        }

        v12 = *(v0 + 112);
        ObjectType = swift_getObjectType();
        v16 = v12;
        (*(v10 + 8))(v11, &v16, ObjectType, v10);
        swift_unknownObjectRelease();

        v3 = v15;
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  v3 = sub_1A524E2B4();
  v2 = *(v0 + 64);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_27:
  swift_unknownObjectRelease_n();

  v14 = *(v0 + 8);

  v14();
}

void sub_1A4240980()
{
  v14 = v0;
  v1 = *(v0 + 64);
  if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
  {
    v2 = *(v1 + 16);
    if (!v2)
    {
      goto LABEL_23;
    }

LABEL_6:
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1A59097F0](v3, *(v0 + 64));
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      else
      {
        if (v3 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v4 = *(v1 + 32 + 8 * v3);

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_22;
        }
      }

      v6 = *(v0 + 112);
      *(v4 + 24) = 0;
      swift_unknownObjectRelease();
      v7 = v6 >= *(v4 + 16);
      if (v6 >= *(v4 + 16))
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      *(v4 + 17) = v8;
      if (v7 && *(v4 + 32) == 1)
      {
        *(v4 + 32) = 2;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v4 + 48);
        v10 = *(v0 + 112);
        ObjectType = swift_getObjectType();
        v13 = v10;
        (*(v9 + 8))(0, &v13, ObjectType, v9);
        swift_unknownObjectRelease();
      }

      ++v3;
      if (v5 == v2)
      {
        goto LABEL_23;
      }
    }
  }

  v2 = sub_1A524E2B4();
  v1 = *(v0 + 64);
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_23:

  v12 = *(v0 + 8);

  v12();
}

uint64_t sub_1A4240B30()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1A4240E90;
  }

  else
  {

    v2 = sub_1A4240C78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1A4240C78()
{
  v17 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 64);
  swift_unknownObjectRetain();
  if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
  {
    v3 = *(v2 + 16);
    if (!v3)
    {
      goto LABEL_27;
    }

LABEL_6:
    v4 = 0;
    v15 = v3;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](v4, *(v0 + 64));
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
          return;
        }

        v5 = *(v2 + 32 + 8 * v4);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      v7 = *(v0 + 112);
      *(v5 + 24) = v1;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v8 = v7 >= *(v5 + 16);
      if (v7 >= *(v5 + 16))
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(v5 + 17) = v9;
      if (v8 && *(v5 + 32) == 1)
      {
        *(v5 + 32) = 2;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v5 + 48);
        if (v1)
        {
          v11 = [v1 CVPixelBuffer];
        }

        else
        {
          v11 = 0;
        }

        v12 = *(v0 + 112);
        ObjectType = swift_getObjectType();
        v16 = v12;
        (*(v10 + 8))(v11, &v16, ObjectType, v10);
        swift_unknownObjectRelease();

        v3 = v15;
      }

      else
      {
      }

      ++v4;
      if (v6 == v3)
      {
        goto LABEL_27;
      }
    }
  }

  v3 = sub_1A524E2B4();
  v2 = *(v0 + 64);
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_27:
  swift_unknownObjectRelease_n();

  v14 = *(v0 + 8);

  v14();
}

void sub_1A4240EA8(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A4242CFC();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  if (*(a2 + 72))
  {
    sub_1A4242E80();
    aBlock[0] = swift_allocError();
    sub_1A524CBD4();
  }

  else
  {
    v10 = *(a2 + 40);
    v11 = objc_allocWithZone(MEMORY[0x1E69B3A68]);
    v12 = v10;
    if (a3)
    {
      v13 = 512.0;
      if (a3 == 1)
      {
        v14 = 512.0;
      }

      else
      {
        v14 = 1024.0;
      }

      if (a3 != 1)
      {
        v13 = 1024.0;
      }
    }

    else
    {
      v14 = 128.0;
      v13 = 128.0;
    }

    [v12 setScalePolicy_];
    swift_unknownObjectRelease();

    v15 = *(a2 + 24);
    v16 = *(a2 + 40);
    v17 = [v15 composition];
    [v16 setComposition_];

    v18 = *(a2 + 40);
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = swift_allocObject();
    (*(v8 + 32))(v20 + v19, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    aBlock[4] = sub_1A4242D6C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_133;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    [v22 submit_];
    _Block_release(v21);
  }
}

uint64_t sub_1A4241170()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A42411D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  if (*(v2 + 17) == 1)
  {
    v3 = *(v2 + 24);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v2 + 48);
      v5 = *(v2 + 16);
      if (v3)
      {
        v6 = [swift_unknownObjectRetain() CVPixelBuffer];
      }

      else
      {
        v6 = 0;
      }

      ObjectType = swift_getObjectType();
      v8 = v5;
      (*(v4 + 8))(v6, &v8, ObjectType, v4);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1A42412B8()
{
  swift_unknownObjectRelease();
  sub_1A3D35A10(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t PhotoStyleRenderPreference.description.getter()
{
  MEMORY[0x1A5907B60](0x203A657A6973, 0xE600000000000000);
  sub_1A524E624();
  return 0;
}

uint64_t PhotoStyleRenderPreference.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4241450()
{
  MEMORY[0x1A5907B60](0x203A657A6973, 0xE600000000000000);
  sub_1A524E624();
  return 0;
}

void *sub_1A42414C4(uint64_t a1, uint64_t a2)
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

  sub_1A3C4D548(0, &qword_1EB126180);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A4241554(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1A3D35B98(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1A4241708(v6);
  return sub_1A524E524();
}

uint64_t sub_1A42415D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1A4242ED4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1A524EA34();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1A524CAC4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1A4241DE4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1A4241708(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A524EA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for RenderEntry();
        v6 = sub_1A524CAC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1A4241874(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1A4241808(0, v2, 1, a1);
  }

  return result;
}