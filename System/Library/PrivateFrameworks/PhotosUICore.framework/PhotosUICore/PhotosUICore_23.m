void sub_1A3F19508()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A5242D14();
    if (v1 <= 0x3F)
    {
      sub_1A3EFDB80(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3F1B044(319, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A3F19644(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v40 = *(a3 + 16);
  v4 = *(v40 - 8);
  v5 = *(v4 + 84);
  v39 = sub_1A5242D14();
  v6 = *(v39 - 8);
  v7 = *(v6 + 84);
  if (v5 <= v7)
  {
    v8 = *(v6 + 84);
  }

  else
  {
    v8 = v5;
  }

  v9 = *(sub_1A52486A4() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  sub_1A3F1B044(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v12 = *(v11 - 8);
  v13 = *(v4 + 64);
  if (v8 <= *(v12 + 84))
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = v8;
  }

  v15 = *(v6 + 80);
  v16 = *(v12 + 80);
  v17 = *(*(v11 - 8) + 64);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v14;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v9 + 80) & 0xF8 | 7;
  v20 = *(v6 + 64) + 1;
  v21 = v10 + v16 + 1;
  v22 = a1;
  if (a2 > v18)
  {
    v23 = ((v21 + ((v20 + v19 + ((v15 + ((v13 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15)) & ~v19)) & ~v16) + v17;
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_16;
    }

    v26 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 >= 2)
    {
LABEL_16:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

LABEL_23:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v28 = v23;
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

      v36 = v18 + (v29 | v27);
      return (v36 + 1);
    }
  }

LABEL_36:
  if (v5 == v18)
  {
    v30 = v40;
    v31 = *(v4 + 48);
    v32 = v5;

    return v31(v22, v32, v30);
  }

  v34 = a1 + v13;
  if (v14 <= 0xFE)
  {
    v35 = *v34;
    if (v35 < 2)
    {
      return 0;
    }

    v36 = (v35 + 2147483646) & 0x7FFFFFFF;
    return (v36 + 1);
  }

  v22 = (((v34 + 9) & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
  if (v7 == v18)
  {
    v31 = *(v6 + 48);
    v32 = v7;
    v30 = v39;

    return v31(v22, v32, v30);
  }

  v37 = *(v12 + 48);
  v38 = (v21 + ((v20 + v22 + v19) & ~v19)) & ~v16;

  return v37(v38);
}

void sub_1A3F19A8C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v37 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_1A5242D14() - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = v6;
  }

  v10 = *(sub_1A52486A4() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  sub_1A3F1B044(0, &qword_1EB128978, sub_1A3F185D4, MEMORY[0x1E69E63B0], MEMORY[0x1E697DF08]);
  v13 = *(v12 - 8);
  v14 = *(v5 + 64);
  if (v9 <= *(v13 + 84))
  {
    v15 = *(v13 + 84);
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v7 + 80);
  v17 = *(v13 + 80);
  v18 = *(*(v12 - 8) + 64);
  if (v15 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v15;
  }

  v20 = *(v10 + 80) & 0xF8 | 7;
  v21 = *(v7 + 64) + 1;
  v22 = v11 + v17 + 1;
  v23 = ((v22 + ((v21 + v20 + ((v16 + ((v14 + 9) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16)) & ~v20)) & ~v17) + v18;
  if (a3 <= v19)
  {
    v26 = 0;
    v24 = a1;
    v25 = a2;
  }

  else
  {
    v24 = a1;
    v25 = a2;
    if (v23 <= 3)
    {
      v29 = ((a3 - v19 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v29))
      {
        v26 = 4;
      }

      else
      {
        if (v29 < 0x100)
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        if (v29 >= 2)
        {
          v26 = v30;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v19 < v25)
  {
    v27 = ~v19 + v25;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v31 = v27 & ~(-1 << (8 * v23));
        bzero(v24, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *v24 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&v24[v23] = v28;
              }

              else
              {
                *&v24[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *v24 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v24 = v31;
        v24[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v24, v23);
      *v24 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      v24[v23] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&v24[v23] = 0;
      if (!v25)
      {
        return;
      }

      goto LABEL_40;
    }

    *&v24[v23] = 0;
  }

  else if (v26)
  {
    v24[v23] = 0;
    if (!v25)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v25)
  {
    return;
  }

LABEL_40:
  if (v6 == v19)
  {
    v32 = *(v37 + 56);
    v33 = v24;
LABEL_42:

    v32(v33);
    return;
  }

  v34 = &v24[v14];
  if (v15 <= 0xFE)
  {
    *v34 = v25 + 1;
    return;
  }

  v33 = (((v34 + 9) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16;
  if (v8 == v19)
  {
    v32 = *(v7 + 56);
    goto LABEL_42;
  }

  v35 = *(v13 + 56);
  v36 = (v22 + ((v21 + v33 + v20) & ~v20)) & ~v17;

  v35(v36);
}

void sub_1A3F19F28()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      sub_1A5242854();
      if (v2 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        sub_1A52431C4();
        if (v3 <= 0x3F)
        {
          sub_1A3E792C4(319, &qword_1EB129A90, &qword_1EB129A98);
          if (v4 <= 0x3F)
          {
            sub_1A3F1C93C(319, &unk_1EB124808, &type metadata for LemonadeCellSpec, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A3F1C93C(319, &qword_1EB1247F0, &type metadata for LemonadeFeedZoomLevel, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A3F1C93C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A3EFDB80(319, &qword_1EB1247D0, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCC0]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A3F1C93C(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A3F1C93C(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A3EFDB80(319, &qword_1EB124838, MEMORY[0x1E69C29F0], MEMORY[0x1E697DCC0]);
                        if (v11 <= 0x3F)
                        {
                          sub_1A3EFDB80(319, &qword_1EB124868, MEMORY[0x1E69C2320], MEMORY[0x1E697DCC0]);
                          if (v12 <= 0x3F)
                          {
                            sub_1A3EFDB80(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
                            if (v13 <= 0x3F)
                            {
                              sub_1A3F1AC14();
                              if (v14 <= 0x3F)
                              {
                                sub_1A3EFDB80(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1A3EFDB80(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1A3EFDB80(319, &qword_1EB1247D8, type metadata accessor for LemonadeShelfViewModel, MEMORY[0x1E697DCC0]);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1A3F1C93C(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1A3F1C93C(319, &qword_1EB124748, &type metadata for LemonadeShelvesViewModelDisplayState, MEMORY[0x1E697DCC0]);
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1A5243794();
                                          sub_1A524DF24();
                                          sub_1A524B6D4();
                                          if (v20 <= 0x3F)
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
        }
      }
    }
  }
}

uint64_t sub_1A3F1A524(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v30 = *(a3 + 16);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1A5242D14() - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  if (((v9 + 16) & ~v9) + v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = ((v9 + 16) & ~v9) + v10;
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v10;
  }

  v32 = v12;
  v13 = *(sub_1A52486A4() - 8);
  v14 = *(v13 + 64);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  v31 = v14;
  v15 = *(sub_1A5249A94() - 8);
  v16 = *(v15 + 64);
  v17 = *(v5 + 64);
  if (!*(v15 + 84))
  {
    ++v16;
  }

  if (v16 <= 8)
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_40;
  }

  v18 = *(v13 + 80) & 0xF8 | 7;
  v19 = *(v15 + 80) & 0xF8 | 7;
  v20 = ((v16 + ((v31 + v19 + ((v18 + ((v32 + (((v9 | 7) + 9 + ((v11 + (((v9 | 7) + 9 + (((((((v17 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8)) & ~(v9 | 7)) + 80) & 0xFFFFFFFFFFFFFFF8)) & ~(v9 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v18) + 1) & ~v19) + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v7 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_40;
      }
    }
  }

  else if (!v24 || (v25 = *(a1 + v20)) == 0)
  {
LABEL_40:
    if (v6 < 0x7FFFFFFF)
    {
      v29 = *(((a1 + v17) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v29 >= 0xFFFFFFFF)
      {
        LODWORD(v29) = -1;
      }

      return (v29 + 1);
    }

    else
    {
      v28 = *(v5 + 48);

      return v28(a1, v6, v30);
    }
  }

  v27 = v25 - 1;
  if (v21)
  {
    v27 = 0;
    LODWORD(v21) = *a1;
  }

  return v7 + (v21 | v27) + 1;
}

void sub_1A3F1A884(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v28 = v5;
  v29 = *(v5 + 84);
  if (v29 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v5 + 84);
  }

  v7 = *(sub_1A5242D14() - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  if (((v8 + 16) & ~v8) + v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = ((v8 + 16) & ~v8) + v9;
  }

  if (v9 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(sub_1A52486A4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(sub_1A5249A94() - 8);
  v15 = *(v14 + 64);
  v16 = *(v5 + 64);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = *(v14 + 80) & 0xF8 | 7;
  v19 = (v13 + v18 + ((v17 + ((v11 + (((v8 | 7) + 9 + ((v10 + (((v8 | 7) + 9 + (((((((v16 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8)) & ~(v8 | 7)) + 80) & 0xFFFFFFFFFFFFFFF8)) & ~(v8 | 7)) + 8) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v17) + 1) & ~v18;
  if (!*(v14 + 84))
  {
    ++v15;
  }

  if (v15 <= 8)
  {
    v15 = 8;
  }

  v20 = ((v15 + v19 + 56) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (((v15 + v19 + 56) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v21 = a3 - v6 + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (a2 > v6)
  {
    if (v20)
    {
      v24 = 1;
    }

    else
    {
      v24 = a2 - v6;
    }

    if (v20)
    {
      bzero(a1, v20);
      *a1 = ~v6 + a2;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        *(a1 + v20) = v24;
      }

      else
      {
        *(a1 + v20) = v24;
      }
    }

    else if (v23)
    {
      *(a1 + v20) = v24;
    }

    return;
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v20) = 0;
  }

  else if (v23)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v29 < 0x7FFFFFFF)
  {
    v26 = (a1 + v16) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = a2 - 1;
    }

    *(v26 + 8) = v27;
  }

  else
  {
    v25 = *(v28 + 56);

    v25(a1);
  }
}

void sub_1A3F1AC14()
{
  if (!qword_1EB124828)
  {
    sub_1A3F1C93C(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124828);
    }
  }
}

uint64_t sub_1A3F1ADBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Handler = type metadata accessor for LemonadeShelfContents.ScrollPhaseLoadHandler();
  v4 = v0 + ((*(*(Handler - 8) + 80) + 32) & ~*(*(Handler - 8) + 80));
  sub_1A3F1C93C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  if ((v6 & 1) == 0)
  {
    result = sub_1A5247EA4();
    if ((result & 1) == 0)
    {
      result = sub_1A5247EA4();
      if (result)
      {
        sub_1A524B6B4();
        return (*(v2 + 336))(*(v4 + *(Handler + 36)), v1, v2);
      }
    }
  }

  return result;
}

void sub_1A3F1AFEC()
{
  if (!qword_1EB1284E0)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1284E0);
    }
  }
}

void sub_1A3F1B044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A3F1B0E0()
{
  result = qword_1EB128040;
  if (!qword_1EB128040)
  {
    sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128040);
  }

  return result;
}

unint64_t sub_1A3F1B1BC()
{
  result = qword_1EB120958;
  if (!qword_1EB120958)
  {
    sub_1A3EFDB80(255, &qword_1EB120960, type metadata accessor for PHCollectionSortKey, MEMORY[0x1E69E6720]);
    sub_1A3F1D360(&qword_1EB120970, type metadata accessor for PHCollectionSortKey);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120958);
  }

  return result;
}

void sub_1A3F1B2AC()
{
  if (!qword_1EB1279E0)
  {
    sub_1A3E792C4(255, &qword_1EB129078, &qword_1EB129080);
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1279E0);
    }
  }
}

uint64_t sub_1A3F1B31C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3EFDB80(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F1B380(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F1C93C(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F1B45C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F1B4C4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1A3F1B4DC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1A3E792C4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A3F1B54C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1A3F1B558()
{
  if (!qword_1EB126150)
  {
    sub_1A52423C4();
    sub_1A3F1D360(&qword_1EB1292B8, MEMORY[0x1E69C1E00]);
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126150);
    }
  }
}

uint64_t sub_1A3F1B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A3F1B660()
{
  sub_1A524B3B4();
  sub_1A3F1AFEC();
  swift_getAssociatedTypeWitness();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  sub_1A5248804();
  swift_getAssociatedConformanceWitness();
  sub_1A3F1B0E0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1A524BE24();
  swift_getWitnessTable();
  sub_1A524B784();
  swift_getWitnessTable();
  sub_1A524B014();
}

uint64_t sub_1A3F1B8E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LemonadeShelfBody() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1A3F0F408(a1, v8, v5, v6, a2);
}

uint64_t sub_1A3F1B984()
{
  sub_1A524B3B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5249754();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  sub_1A3F18B84();
  swift_getWitnessTable();
  sub_1A52420C4();
  swift_getWitnessTable();
  sub_1A524B014();
}

unint64_t sub_1A3F1BD68(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_1A3F1BD7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LemonadeShelfBody() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = v2 + ((v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A3F0DD7C(a1, v2 + v8, v11, v12, v13, v5, v6, a2);
}

uint64_t sub_1A3F1BE58()
{
  sub_1A524B3B4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1A524CB74();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A3F18B84();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1A3F1D1FC(255, &qword_1EB128038, sub_1A3E73AC0, sub_1A3F1B0AC, MEMORY[0x1E697EC08]);
  sub_1A5248804();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1B0E0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v0 = MEMORY[0x1E6980A08];
  sub_1A3F1C93C(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeConformance2();
  sub_1A3F17CC4(&qword_1EB1277D0, &qword_1EB1277C8, v0);
  swift_getWitnessTable();
  sub_1A5243E24();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LemonadeShelfItemLoadingStatusModifier();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1A524B014();
}

uint64_t sub_1A3F1C4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F1C51C()
{
  sub_1A524B3C4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1A52497A4();
  swift_getOpaqueTypeConformance2();
  sub_1A3F1D360(&qword_1EB127CB0, MEMORY[0x1E697C688]);
  swift_getOpaqueTypeMetadata2();
  sub_1A5249754();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for LemonadeItemDetailsNavigationButton();
  sub_1A5249754();
  swift_getWitnessTable();
  sub_1A3F18B84();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A524B014();
}

uint64_t sub_1A3F1C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3F1C8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A3F1C93C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_143Tm_0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeShelfBody();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  (*(*(v1 - 8) + 8))(v3, v1);

  v4 = v3 + v2[14];
  if (*(v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(v4);
  }

  sub_1A3F1B54C(*(v3 + v2[15]), *(v3 + v2[15] + 8));
  sub_1A3C53AEC(*(v3 + v2[16]), *(v3 + v2[16] + 8));
  sub_1A3C53AEC(*(v3 + v2[17]), *(v3 + v2[17] + 8));
  v5 = v3 + v2[18];
  sub_1A3EFDB80(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v7 = sub_1A5242D14();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[19]), *(v3 + v2[19] + 8));
  v8 = v3 + v2[20];
  sub_1A3D35A84(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));

  v9 = v2[23];
  sub_1A3EFDB80(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5242D14();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  sub_1A3F1B4C4(*(v3 + v2[24]), *(v3 + v2[24] + 8), *(v3 + v2[24] + 9));
  v11 = v2[25];
  sub_1A3EFDB80(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A52486A4();
    (*(*(v12 - 8) + 8))(v3 + v11, v12);
  }

  else
  {
  }

  v13 = v2[26];
  sub_1A3EFDB80(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1A5249A94();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v3 + v13, 1, v14))
    {
      (*(v15 + 8))(v3 + v13, v14);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v3 + v2[28]), *(v3 + v2[28] + 8));
  sub_1A3C53AEC(*(v3 + v2[29]), *(v3 + v2[29] + 8));

  return swift_deallocObject();
}

uint64_t sub_1A3F1CEC0()
{
  sub_1A524B3C4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A524B014();
}

unint64_t sub_1A3F1CF90()
{
  result = qword_1EB1284E8;
  if (!qword_1EB1284E8)
  {
    sub_1A3F1AFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284E8);
  }

  return result;
}

unint64_t sub_1A3F1D008()
{
  result = qword_1EB125220;
  if (!qword_1EB125220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125220);
  }

  return result;
}

uint64_t sub_1A3F1D05C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for LemonadeAlbumNewEntryLabel(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1A3F1D138()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A3F1D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A3F1D27C()
{
  if (!qword_1EB128AC8)
  {
    sub_1A5248A14();
    sub_1A3F1D360(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128AC8);
    }
  }
}

uint64_t sub_1A3F1D360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3F1D3A8()
{
  result = qword_1EB12E7C8;
  if (!qword_1EB12E7C8)
  {
    sub_1A3F1D1FC(255, &qword_1EB12E7C0, sub_1A3F1D27C, sub_1A3F1D32C, MEMORY[0x1E697F930]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E7C8);
  }

  return result;
}

uint64_t type metadata accessor for PhotosDetailsTimeEditView()
{
  result = qword_1EB190CA0;
  if (!qword_1EB190CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F1D4BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for PhotosDetailsTimeEditView();
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A3F25650(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = (a3 + v6[7]);
  type metadata accessor for PhotosDetailsTimeEditViewModel();
  sub_1A3F256B4(&qword_1EB125EC0, type metadata accessor for PhotosDetailsTimeEditViewModel);
  *v9 = 0;
  v9[1] = 0;
  result = sub_1A5248494();
  *a3 = result;
  a3[1] = v11;
  v12 = (a3 + v6[8]);
  *v12 = a1;
  v12[1] = a2;
  return result;
}

void sub_1A3F1D5F0()
{
  if (!qword_1EB12E7D0)
  {
    sub_1A3F1D794();
    sub_1A3F1D918();
    sub_1A3F1E7D4();
    sub_1A3F1DA1C();
    sub_1A3F1DAF0();
    sub_1A5249904();
    sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F256B4(&qword_1EB12E940, sub_1A3F1E7D4);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5248484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E7D0);
    }
  }
}

void sub_1A3F1D794()
{
  if (!qword_1EB12E7D8)
  {
    sub_1A3F1D918();
    sub_1A3F1E7D4();
    sub_1A3F1DA1C();
    sub_1A3F1DAF0();
    sub_1A5249904();
    sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F256B4(&qword_1EB12E940, sub_1A3F1E7D4);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E7D8);
    }
  }
}

void sub_1A3F1D918()
{
  if (!qword_1EB12E7E0)
  {
    sub_1A3F1DA1C();
    sub_1A3F1DAF0();
    sub_1A5249904();
    sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E7E0);
    }
  }
}

void sub_1A3F1DA1C()
{
  if (!qword_1EB12E7E8)
  {
    sub_1A3F1DAF0();
    sub_1A5249904();
    sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E7E8);
    }
  }
}

void sub_1A3F1DAF0()
{
  if (!qword_1EB12E7F0)
  {
    sub_1A3F1DBA0();
    sub_1A3F256B4(&qword_1EB12E908, sub_1A3F1DBA0);
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E7F0);
    }
  }
}

void sub_1A3F1DBA0()
{
  if (!qword_1EB12E7F8)
  {
    sub_1A3F1E85C(255, &qword_1EB12E800, sub_1A3F1DC28, sub_1A3F1E184);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E7F8);
    }
  }
}

void sub_1A3F1DC48()
{
  if (!qword_1EB12E810)
  {
    sub_1A3F1E85C(255, &qword_1EB12E818, sub_1A3F1DCD0, sub_1A3F1DE58);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E810);
    }
  }
}

void sub_1A3F1DDC4()
{
  if (!qword_1EB12E840)
  {
    sub_1A3F1EAE8(255, &qword_1EB124060, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12E840);
    }
  }
}

void sub_1A3F1DEDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3F256B4(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A3F1DFCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3F256B4(a4, a5);
    v8 = sub_1A524B784();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3F1E094()
{
  if (!qword_1EB12E878)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12E878);
    }
  }
}

void sub_1A3F1E0F8()
{
  if (!qword_1EB143C90)
  {
    sub_1A3F1EAE8(255, &qword_1EB128720, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3D6D248();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143C90);
    }
  }
}

void sub_1A3F1E1A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3F25650(255, &qword_1EB12E890, sub_1A3F1E0F8, MEMORY[0x1E69E6720]);
    v4 = sub_1A524BA74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3F1E248()
{
  if (!qword_1EB12E8A0)
  {
    sub_1A3F1E85C(255, &qword_1EB12E8A8, sub_1A3F1E2D0, sub_1A3F1E6A0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E8A0);
    }
  }
}

void sub_1A3F1E2D0()
{
  if (!qword_1EB12E8B0)
  {
    sub_1A3F1E424();
    sub_1A5241144();
    sub_1A3F1E4F8(255);
    sub_1A5249C24();
    sub_1A3F1E568();
    sub_1A3F256B4(&qword_1EB12E8F0, MEMORY[0x1E697C900]);
    swift_getOpaqueTypeConformance2();
    sub_1A3F256B4(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E8B0);
    }
  }
}

void sub_1A3F1E424()
{
  if (!qword_1EB12E8B8)
  {
    sub_1A3F1E4F8(255);
    sub_1A5249C24();
    sub_1A3F1E568();
    sub_1A3F256B4(&qword_1EB12E8F0, MEMORY[0x1E697C900]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E8B8);
    }
  }
}

unint64_t sub_1A3F1E568()
{
  result = qword_1EB12E8D8;
  if (!qword_1EB12E8D8)
  {
    sub_1A3F1E4F8(255);
    sub_1A3F1E650(&qword_1EB12E8E0, &qword_1EB12E8C8, MEMORY[0x1E697BDB8]);
    sub_1A3F256B4(&qword_1EB12E8E8, sub_1A3F1E534);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E8D8);
  }

  return result;
}

uint64_t sub_1A3F1E650(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1A3F1EAE8(255, a2, MEMORY[0x1E6981138], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3F1E6E8()
{
  if (!qword_1EB12E900)
  {
    sub_1A3F1DF90(255);
    type metadata accessor for PhotosDetailsSearchView();
    sub_1A3F256B4(&qword_1EB12E888, sub_1A3F1DF90);
    sub_1A3F256B4(&qword_1EB13C5C0, type metadata accessor for PhotosDetailsSearchView);
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E900);
    }
  }
}

void sub_1A3F1E7D4()
{
  if (!qword_1EB12E918)
  {
    sub_1A3F1E85C(255, &qword_1EB12E920, sub_1A3F1E8D8, sub_1A3F1E978);
    v0 = sub_1A52495C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E918);
    }
  }
}

void sub_1A3F1E85C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3F1E8D8()
{
  if (!qword_1EB124618)
  {
    sub_1A3D6DF58();
    sub_1A3F256B4(&qword_1EB121B60, sub_1A3D6DF58);
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124618);
    }
  }
}

void sub_1A3F1E978()
{
  if (!qword_1EB12E928)
  {
    sub_1A3F24B8C(255, &qword_1EB12E930, sub_1A3F1EA2C, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
    sub_1A3F1EB3C();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E928);
    }
  }
}

void sub_1A3F1EA68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, void), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3F1EAE8(255, a3, MEMORY[0x1E6981138], a4);
    a5(255);
    v7 = sub_1A5248804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A3F1EAE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E6981148]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A3F1EB3C()
{
  result = qword_1EB12E938;
  if (!qword_1EB12E938)
  {
    sub_1A3F24B8C(255, &qword_1EB12E930, sub_1A3F1EA2C, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
    sub_1A3F1EC00();
    sub_1A3D6E470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E938);
  }

  return result;
}

unint64_t sub_1A3F1EC00()
{
  result = qword_1EB123CA8;
  if (!qword_1EB123CA8)
  {
    sub_1A3F1EA2C(255);
    sub_1A3F1E650(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    sub_1A3F256B4(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123CA8);
  }

  return result;
}

void sub_1A3F1ECE8()
{
  if (!qword_1EB12E948)
  {
    sub_1A3F1D5F0();
    sub_1A5249C44();
    sub_1A3F256B4(&qword_1EB12E950, sub_1A3F1D5F0);
    sub_1A3F256B4(&qword_1EB13A710, MEMORY[0x1E697C938]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12E948);
    }
  }
}

uint64_t sub_1A3F1EDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v49 = a2;
  v46 = sub_1A5249284();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5249904();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1DAF0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1DA1C();
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1D918();
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v50 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_1A3F1DBA0();
  sub_1A3F256B4(&qword_1EB12E908, sub_1A3F1DBA0);
  sub_1A524A2C4();
  sub_1A52498F4();
  v21 = sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
  v41 = v6;
  sub_1A524B1E4();
  (*(v7 + 8))(v9, v6);
  (*(v12 + 8))(v14, v11);
  v22 = sub_1A524C634();
  v23 = PXLocalizedString(v22);

  v24 = sub_1A524C674();
  v26 = v25;

  v53 = v24;
  v54 = v26;
  sub_1A3D5F9DC();
  v27 = sub_1A524A464();
  v29 = v28;
  LOBYTE(v7) = v30;
  v31 = v5;
  v32 = v5;
  v33 = v46;
  (*(v3 + 104))(v32, *MEMORY[0x1E697C438], v46);
  v53 = v11;
  v54 = v41;
  v55 = v21;
  v56 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v31;
  v36 = v44;
  v37 = v42;
  sub_1A524ACE4();
  sub_1A3E04DF4(v27, v29, v7 & 1);

  (*(v3 + 8))(v35, v33);
  (*(v45 + 8))(v37, v36);
  v51 = v43;
  sub_1A3F1E7D4();
  v53 = v36;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A3F256B4(&qword_1EB12E940, sub_1A3F1E7D4);
  v38 = v47;
  v39 = v50;
  sub_1A524B0E4();
  return (*(v48 + 8))(v39, v38);
}

uint64_t sub_1A3F1F3E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  sub_1A3F1E184(0);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v72 - v6;
  sub_1A3F1DC28(0);
  v76 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v75 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v82 = &v72 - v11;
  v12 = a1;
  v13 = *(a1 + 8);
  if ((*(*v13 + 176))(v10))
  {
    v14 = sub_1A524C634();
    v15 = PXLocalizedString(v14);

    v16 = sub_1A524C674();
    v18 = v17;

    v84 = v16;
    v85 = v18;
    sub_1A3D5F9DC();
    v19 = sub_1A524A464();
    v21 = v20;
    LOBYTE(v15) = v22;
    v24 = v23;
    LOBYTE(v18) = sub_1A524A064();
    sub_1A5247BC4();
    *(&v26 + 1) = v25;
    v73 = v26;
    *(&v28 + 1) = v27;
    v72 = v28;
    LOBYTE(v84) = v15 & 1;
    v83 = 0;
    v29 = v15 & 1;
    v30 = sub_1A524B4A4();
    KeyPath = swift_getKeyPath();
    v32 = v73;
    v33 = v72;
    v34 = v18;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v24 = 0;
    KeyPath = 0;
    v30 = 0;
    v34 = 0;
    v29 = 0;
    v33 = 0uLL;
    v32 = 0uLL;
  }

  v84 = v19;
  v85 = v21;
  v86 = v29;
  v87 = v24;
  v88 = v34;
  v89 = v33;
  v90 = v32;
  v91 = 0;
  v92 = KeyPath;
  v93 = v30;
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v72 - 2) = v12;
  sub_1A3F1DC48();
  sub_1A3F25650(0, &qword_1EB12E890, sub_1A3F1E0F8, MEMORY[0x1E69E6720]);
  sub_1A3F256B4(&qword_1EB12E960, sub_1A3F1DC48);
  sub_1A3F250A0();
  v35 = sub_1A524BA64();
  if ((*(*v13 + 184))(v35))
  {
    v36 = (*(*v13 + 256))();
    if (v37)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v39 = 0xE000000000000000;
    if (v37)
    {
      v39 = v37;
    }

    v84 = v38;
    v85 = v39;
    sub_1A3D5F9DC();
    v40 = sub_1A524A464();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = sub_1A524A064();
    sub_1A5247BC4();
    *(&v49 + 1) = v48;
    v73 = v49;
    *(&v51 + 1) = v50;
    v72 = v51;
    LOBYTE(v84) = v44 & 1;
    v83 = 0;
    v52 = v44 & 1;
    v53 = sub_1A524B4A4();
    v54 = swift_getKeyPath();
    v55 = v73;
    v56 = v72;
    v57 = v47;
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v46 = 0;
    v54 = 0;
    v53 = 0;
    v57 = 0;
    v52 = 0;
    v55 = 0uLL;
    v56 = 0uLL;
  }

  v84 = v40;
  v85 = v42;
  v86 = v52;
  v87 = v46;
  v88 = v57;
  v89 = v56;
  v90 = v55;
  v91 = 0;
  v92 = v54;
  v93 = v53;
  MEMORY[0x1EEE9AC00](v54);
  *(&v72 - 2) = v12;
  sub_1A3F1E248();
  sub_1A3F256B4(&qword_1EB12E978, sub_1A3F1E248);
  v58 = v81;
  sub_1A524BA64();
  v59 = v74;
  v60 = *(v74 + 16);
  v61 = v75;
  v62 = v76;
  v60(v75, v82, v76);
  v63 = v79;
  *&v73 = *(v79 + 16);
  v64 = v77;
  v65 = v58;
  v66 = v80;
  (v73)(v77, v65, v80);
  v67 = v78;
  v60(v78, v61, v62);
  sub_1A3F1E85C(0, &qword_1EB12E800, sub_1A3F1DC28, sub_1A3F1E184);
  (v73)(&v67[*(v68 + 48)], v64, v66);
  v69 = *(v63 + 8);
  v69(v81, v66);
  v70 = *(v59 + 8);
  v70(v82, v62);
  v69(v64, v66);
  return (v70)(v61, v62);
}

uint64_t sub_1A3F1FAB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A3F1E85C(0, &qword_1EB12E920, sub_1A3F1E8D8, sub_1A3F1E978);
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  sub_1A3F1E978();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3F1E8D8();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249824();
  v19[8] = a1;
  sub_1A3D6DF58();
  sub_1A3F256B4(&qword_1EB121B60, sub_1A3D6DF58);
  sub_1A5247F24();
  sub_1A5249834();
  v19[4] = a1;
  sub_1A3F24B8C(0, &qword_1EB12E930, sub_1A3F1EA2C, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
  sub_1A3F1EB3C();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A3F1FE38(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsTimeEditView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A3F24C28(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsTimeEditView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A3F24FA4(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PhotosDetailsTimeEditView);
  return MEMORY[0x1A5906A80](v7, sub_1A3F2500C, v9);
}

uint64_t sub_1A3F1FFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A3F1EAE8(0, &qword_1EB127480, MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v55 - v5;
  sub_1A3D6E2C8();
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F24B8C(0, &qword_1EB12E958, sub_1A3F1EA2C, sub_1A3D6E2C8, MEMORY[0x1E697F948]);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = type metadata accessor for PhotosDetailsTimeEditView();
  v58 = *(v13 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1A3F25650(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - v16;
  sub_1A3F1EA2C(0);
  v59 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(**(v1 + 8) + 192))(v19))
  {
    v22 = sub_1A524C634();
    v23 = PXLocalizedString(v22);

    v24 = sub_1A524C674();
    v26 = v25;

    v62 = v24;
    v63 = v26;
    sub_1A5247B14();
    v27 = sub_1A5247B54();
    (*(*(v27 - 8) + 56))(v17, 0, 1, v27);
    sub_1A3F24C28(v2, &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsTimeEditView);
    v28 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v29 = swift_allocObject();
    sub_1A3F24FA4(&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for PhotosDetailsTimeEditView);
    sub_1A3D5F9DC();
    sub_1A524B734();
    v30 = sub_1A524B3B4();
    KeyPath = swift_getKeyPath();
    v32 = &v21[*(v59 + 36)];
    *v32 = KeyPath;
    v32[1] = v30;
    sub_1A3F24C28(v21, v12, sub_1A3F1EA2C);
    swift_storeEnumTagMultiPayload();
    sub_1A3F1EC00();
    sub_1A3D6E470();
    sub_1A5249744();
    v33 = sub_1A3F1EA2C;
    v34 = v21;
  }

  else
  {
    v35 = sub_1A524C634();
    v36 = PXLocalizedString(v35);

    v37 = sub_1A524C674();
    v55 = a1;
    v39 = v38;

    v62 = v37;
    v63 = v39;
    sub_1A5247B44();
    v40 = sub_1A5247B54();
    (*(*(v40 - 8) + 56))(v17, 0, 1, v40);
    sub_1A3F24C28(v2, &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsTimeEditView);
    v41 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v42 = swift_allocObject();
    sub_1A3F24FA4(&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for PhotosDetailsTimeEditView);
    sub_1A3D5F9DC();
    sub_1A524B734();
    v43 = sub_1A524C634();
    v44 = PXLocalizedString(v43);

    v45 = sub_1A524C674();
    v47 = v46;

    v62 = v45;
    v63 = v47;
    v48 = sub_1A524A464();
    v50 = v49;
    v52 = v51;
    sub_1A3F1E650(&qword_1EB127490, &qword_1EB127480, MEMORY[0x1E697D670]);
    v53 = v57;
    sub_1A524AAB4();
    sub_1A3E04DF4(v48, v50, v52 & 1);

    (*(v56 + 8))(v6, v53);
    sub_1A3F24C28(v9, v12, sub_1A3D6E2C8);
    swift_storeEnumTagMultiPayload();
    sub_1A3F1EC00();
    sub_1A3D6E470();
    sub_1A5249744();
    v33 = sub_1A3D6E2C8;
    v34 = v9;
  }

  return sub_1A3CA5EA4(v34, v33);
}

uint64_t sub_1A3F20750(uint64_t a1)
{
  v2 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3EBE398(0);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_1A524C634();
  sub_1A3F25650(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v9;
  v10 = type metadata accessor for PhotosDetailsTimeEditView();
  v19[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1A3F24C28(a1, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeEditView);
  String.init(forType:)(v19);
  v12 = sub_1A524C634();

  *(inited + 48) = v12;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3CA5EA4(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v13 = sub_1A524C3D4();

  [v6 sendEvent:v7 withPayload:v13];

  v14 = a1 + *(v10 + 28);
  v15 = *v14;
  if (*v14)
  {
    v16 = *(v14 + 8);

    v15(0);
    return sub_1A3C784D4(v15, v16);
  }

  else
  {
    sub_1A3F24CA8(v5);
    MEMORY[0x1A5906C60](v18);
    sub_1A52489B4();
    sub_1A524B904();
    return sub_1A3CA5EA4(v5, sub_1A3EBE398);
  }
}

id sub_1A3F20A3C(uint64_t a1)
{
  v2 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EBE398(0);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241534();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosDetailsTimeEditView();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524D224();
  v17 = sub_1A475874C();
  swift_beginAccess();
  v18 = *v17;
  sub_1A3F24C28(a1, v15, type metadata accessor for PhotosDetailsTimeEditView);
  if (os_log_type_enabled(v18, v16))
  {
    v55 = v11;
    v56 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    *v20 = 136446210;
    result = [*(*(v15 + 1) + 16) uuid];
    if (result)
    {
      v22 = result;
      sub_1A524C674();

      sub_1A3CA5EA4(v15, type metadata accessor for PhotosDetailsTimeEditView);
      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    sub_1A3CA5EA4(v15, type metadata accessor for PhotosDetailsTimeEditView);
    v23 = objc_opt_self();
    v24 = sub_1A524C634();
    sub_1A3F25650(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v26;
    v61[3] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
    sub_1A3F24C28(a1, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeEditView);
    String.init(forType:)(v61);
    v28 = sub_1A524C634();

    *(inited + 48) = v28;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3CA5EA4(inited + 32, sub_1A3F24E98);
    sub_1A3C52C70(0, &qword_1EB12B160);
    v29 = sub_1A524C3D4();

    [v23 sendEvent:v24 withPayload:v29];

    v30 = (a1 + v13[8]);
    v31 = *v30;
    v55 = v30[1];
    v56 = v31;
    v32 = a1 + v13[6];
    v33 = *v32;
    if (*(v32 + 8) == 1)
    {
      v34 = v33;
    }

    else
    {

      sub_1A524D254();
      v35 = sub_1A524A014();
      sub_1A5246DF4();

      v36 = v54;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v33, 0);
      (*(v11 + 8))(v36, v10);
      v34 = v61[0];
      v33 = v61[0];
    }

    v37 = *(a1 + 8);
    v38 = *(*v37[5] + 112);

    v40 = v57;
    v38(v39);

    v41 = sub_1A5241144();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = *(*v37[5] + 136);

    v44 = v58;
    v42(v43);

    ((*v37)[31])(v45);
    v56(v33, v40, v44);

    (*(v59 + 8))(v44, v60);
    sub_1A3CA5EA4(v40, sub_1A3C41108);
    v46 = a1 + v13[7];
    v47 = *v46;
    if (*v46)
    {
      v48 = *(v46 + 8);

      v47(1);
      return sub_1A3C784D4(v47, v48);
    }

    else
    {
      v49 = v51;
      sub_1A3F24CA8(v51);
      MEMORY[0x1A5906C60](v52);
      sub_1A52489B4();
      sub_1A524B904();
      return sub_1A3CA5EA4(v49, sub_1A3EBE398);
    }
  }

  return result;
}

id sub_1A3F21244(uint64_t a1)
{
  v2 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EBE398(0);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241534();
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C41108(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5249234();
  v63 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241144();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for PhotosDetailsTimeEditView();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = sub_1A524D224();
  v23 = sub_1A475874C();
  swift_beginAccess();
  v24 = *v23;
  sub_1A3F24C28(a1, v21, type metadata accessor for PhotosDetailsTimeEditView);
  sub_1A3F24C28(a1, v18, type metadata accessor for PhotosDetailsTimeEditView);
  sub_1A3F24C28(a1, v15, type metadata accessor for PhotosDetailsTimeEditView);
  v25 = os_log_type_enabled(v24, v22);
  v70 = v13;
  if (v25)
  {
    v57 = v22;
    v58 = v10;
    v56 = v24;
    v26 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v71[0] = v55;
    *v26 = 136446723;
    result = [*(*(v21 + 1) + 16) uuid];
    if (result)
    {
      v28 = result;
      sub_1A524C674();

      sub_1A3CA5EA4(v21, type metadata accessor for PhotosDetailsTimeEditView);
      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    sub_1A3CA5EA4(v21, type metadata accessor for PhotosDetailsTimeEditView);
    sub_1A3CA5EA4(v18, type metadata accessor for PhotosDetailsTimeEditView);
    sub_1A3CA5EA4(v15, type metadata accessor for PhotosDetailsTimeEditView);
    v29 = objc_opt_self();
    v30 = sub_1A524C634();
    sub_1A3F25650(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v32;
    v71[3] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    sub_1A3F24C28(a1, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeEditView);
    String.init(forType:)(v71);
    v34 = sub_1A524C634();

    *(inited + 48) = v34;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A3CA5EA4(inited + 32, sub_1A3F24E98);
    sub_1A3C52C70(0, &qword_1EB12B160);
    v35 = sub_1A524C3D4();

    [v29 sendEvent:v30 withPayload:v35];

    v36 = *(a1 + *(v13 + 32));
    v37 = a1 + *(v13 + 24);
    v38 = *v37;
    if (*(v37 + 8) == 1)
    {
      v39 = v38;
    }

    else
    {

      sub_1A524D254();
      v40 = sub_1A524A014();
      sub_1A5246DF4();

      v41 = v62;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v38, 0);
      (*(v63 + 8))(v41, v10);
      v39 = v71[0];
      v38 = v71[0];
    }

    v42 = *(a1 + 8);
    v43 = *(*v42 + 120);
    v44 = v43();
    v45 = v64;
    (*(*v44 + 112))(v44);

    v46 = (*(v68 + 56))(v45, 0, 1, v69);
    v47 = (v43)(v46);
    v48 = v65;
    (*(*v47 + 136))(v47);

    (*(*v42 + 240))(v49);
    v36(v38, v45, v48);

    (*(v66 + 8))(v48, v67);
    sub_1A3CA5EA4(v45, sub_1A3C41108);
    v50 = a1 + *(v70 + 28);
    v51 = *v50;
    if (*v50)
    {
      v52 = *(v50 + 8);

      v51(1);
      return sub_1A3C784D4(v51, v52);
    }

    else
    {
      v53 = v59;
      sub_1A3F24CA8(v59);
      MEMORY[0x1A5906C60](v60);
      sub_1A52489B4();
      sub_1A524B904();
      return sub_1A3CA5EA4(v53, sub_1A3EBE398);
    }
  }

  return result;
}

void sub_1A3F21CC4()
{
  sub_1A3F1DE58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A3F1DCD0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3F21ED8(&v5 - v4);
}

void sub_1A3F21ED8(uint64_t a1@<X8>)
{
  v53 = a1;
  v1 = sub_1A5249D74();
  v47 = *(v1 - 8);
  v48 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v39[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F1DD18(0);
  v4 = *(v3 - 8);
  v50 = v3;
  v51 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F1DCD0(0);
  v52 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_1A5249314();
  v57 = 1;
  v8 = sub_1A524C634();
  v9 = PXLocalizedString(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v60 = v10;
  v61 = v12;
  v54 = sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_1A524A214();
  v17 = sub_1A524A3C4();
  v19 = v18;
  v21 = v20;

  sub_1A3E04DF4(v13, v15, v12 & 1);

  sub_1A524B484();
  v41 = sub_1A524A364();
  v42 = v22;
  v40 = v23;
  v43 = v24;

  sub_1A3E04DF4(v17, v19, v21 & 1);

  v45 = *(v45 + 8);
  v25 = *(**(v45 + 40) + 160);

  v27 = v25(v26);
  v29 = v28;

  v60 = v27;
  v61 = v29;
  v30 = sub_1A524A464();
  v32 = v31;
  LOBYTE(v29) = v33;
  sub_1A524A214();
  v34 = sub_1A524A3C4();
  v36 = v35;
  LOBYTE(v15) = v37;

  sub_1A3E04DF4(v30, v32, v29 & 1);

  sub_1A524B4A4();
  sub_1A524A364();
  LOBYTE(v17) = v38;

  sub_1A3E04DF4(v34, v36, v15 & 1);

  LOBYTE(v60) = v40 & 1;
  v56 = v40 & 1;
  v59 = 1;
  v58 = v17 & 1;
  v40 = v17 & 1;
  sub_1A3E75E68(v41, v42, v60);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F22724(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_1A5249D74();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v41[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F1DEA0(0);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3F1DE58(0);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = sub_1A5249314();
  v59 = 1;
  v8 = sub_1A524C634();
  v9 = PXLocalizedString(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  v62 = v10;
  v63 = v12;
  v56 = sub_1A3D5F9DC();
  v13 = sub_1A524A464();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_1A524A214();
  v17 = sub_1A524A3C4();
  v19 = v18;
  v21 = v20;

  sub_1A3E04DF4(v13, v15, v12 & 1);

  sub_1A524B484();
  v22 = sub_1A524A364();
  v43 = v23;
  v44 = v22;
  v42 = v24;
  v45 = v25;

  sub_1A3E04DF4(v17, v19, v21 & 1);

  v47 = v47[1];
  v27 = (*(*v47 + 120))(v26);
  v28 = (*(*v27 + 160))(v27);
  v30 = v29;

  v62 = v28;
  v63 = v30;
  v31 = sub_1A524A464();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_1A524A214();
  v35 = sub_1A524A3C4();
  v37 = v36;
  LOBYTE(v15) = v38;

  sub_1A3E04DF4(v31, v33, v30 & 1);

  sub_1A524B4A4();
  sub_1A524A364();
  v40 = v39;

  sub_1A3E04DF4(v35, v37, v15 & 1);

  LOBYTE(v62) = v42 & 1;
  v58 = v42 & 1;
  v61 = 1;
  v60 = v40 & 1;
  v42 = v40 & 1;
  sub_1A3E75E68(v44, v43, v62);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F22F78()
{
  sub_1A3F1E6A0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  sub_1A3F1E2D0();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A3F231CC(&v7 - v6);
  sub_1A3F23B0C(v3);
}

uint64_t sub_1A3F231CC@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for PhotosDetailsTimeEditView();
  v61 = *(v2 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v59 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A5249C24();
  v55 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A5249794();
  v47[2] = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6981948];
  sub_1A3F25650(0, &qword_1EB12D688, MEMORY[0x1E6969530], MEMORY[0x1E6981948]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A3F1E4F8(0);
  v65 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1E424();
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v50 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A524C634();
  v17 = PXLocalizedString(v16);

  v18 = sub_1A524C674();
  v20 = v19;

  v74 = v18;
  v75 = v20;
  v52 = v1;
  v21 = *(v1 + 8);
  type metadata accessor for PhotosDetailsTimeEditViewModel();
  sub_1A3F256B4(&qword_1EB125EC0, type metadata accessor for PhotosDetailsTimeEditViewModel);
  sub_1A52484A4();
  swift_getKeyPath();
  sub_1A52484B4();

  v22 = v66;
  v23 = v67;
  v24 = v68;
  swift_getKeyPath();
  v71 = v22;
  v72 = v23;
  v73 = v24;
  sub_1A3F25650(0, &qword_1EB12E988, type metadata accessor for PhotosDetailsAssetDate, v9);
  sub_1A524B914();

  sub_1A3F25650(0, &qword_1EB12E990, MEMORY[0x1E697C660], MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1A52FC9F0;
  sub_1A5249774();
  sub_1A5249784();
  v70 = v25;
  sub_1A3F256B4(&qword_1EB12E998, MEMORY[0x1E697C660]);
  sub_1A3F2561C(0);
  sub_1A3F256B4(&qword_1EB12E9A8, sub_1A3F2561C);
  sub_1A524E224();
  sub_1A3D5F9DC();
  v26 = v48;
  sub_1A5247B64();
  KeyPath = swift_getKeyPath();
  v47[1] = v21;
  v28 = *(*v21 + 120);
  v29 = *(*v28() + 136);
  v30 = (v26 + *(v65 + 36));
  sub_1A3F1E534(0);
  v29();

  *v30 = KeyPath;
  v31 = v53;
  sub_1A5249C14();
  v32 = sub_1A3F1E568();
  v33 = sub_1A3F256B4(&qword_1EB12E8F0, MEMORY[0x1E697C900]);
  v34 = v50;
  v35 = v54;
  sub_1A524AB64();
  v36 = v31;
  v37 = v35;
  (*(v55 + 8))(v36, v35);
  v38 = sub_1A3CA5EA4(v26, sub_1A3F1E4F8);
  v39 = (v28)(v38);
  v40 = v58;
  (*(*v39 + 112))(v39);

  v41 = v59;
  sub_1A3F24C28(v52, v59, type metadata accessor for PhotosDetailsTimeEditView);
  v42 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v43 = swift_allocObject();
  sub_1A3F24FA4(v41, v43 + v42, type metadata accessor for PhotosDetailsTimeEditView);
  v66 = v65;
  v67 = v37;
  v68 = v32;
  v69 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1A3F256B4(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  v44 = v56;
  v45 = v62;
  sub_1A524B154();

  (*(v63 + 8))(v40, v45);
  return (*(v57 + 8))(v34, v44);
}

void sub_1A3F23B0C(uint64_t a1@<X8>)
{
  v31 = a1;
  sub_1A3F1E6E8();
  v30 = v2;
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PhotosDetailsSearchView();
  MEMORY[0x1EEE9AC00](v28);
  v27 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v26 = v24 - v6;
  v7 = type metadata accessor for PhotosDetailsTimeEditView();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241534();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosDetailsTimeZoneSearchDataSource(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v24[0] = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(**(v1 + 8) + 120);
  v17 = v16(v14);
  v24[1] = (*(*v17 + 224))(v17);

  v19 = (v16)(v18);
  (*(*v19 + 136))(v19);

  sub_1A3F24C28(v1, v9, type metadata accessor for PhotosDetailsTimeEditView);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_1A3F24FA4(v9, v21 + v20, type metadata accessor for PhotosDetailsTimeEditView);
  v22 = v24[0];
  sub_1A48EBF58(v12, sub_1A3F25200, v21, v24[0]);
  v33[3] = v13;
  v33[4] = &off_1F172CC38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  sub_1A3F24C28(v22, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F240F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F24140(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t sub_1A3F241D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1, v5);
  return (*(**a2 + 120))(v7);
}

uint64_t sub_1A3F242E8(uint64_t a1)
{
  v2 = sub_1A5241534();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1A52491B4();
}

uint64_t sub_1A3F243B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241534();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 8);
  v10 = (*(*v9 + 120))(v6);
  (*(v5 + 16))(v8, a1, v4);
  (*(*v10 + 144))(v8);
  return (*(*v9 + 128))(v10);
}

uint64_t sub_1A3F24500@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1A5249C44();
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1D5F0();
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F1ECE8();
  v10 = *(v9 - 8);
  v33 = v9;
  v34 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v1;
  sub_1A3F1D794();
  v31 = v13;
  sub_1A3F1D918();
  v15 = v14;
  sub_1A3F1E7D4();
  v17 = v16;
  sub_1A3F1DA1C();
  v19 = v18;
  sub_1A3F1DAF0();
  v21 = v20;
  v22 = sub_1A5249904();
  v23 = sub_1A3F256B4(&qword_1EB12E910, sub_1A3F1DAF0);
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v19;
  v39 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1A3F256B4(&qword_1EB12E940, sub_1A3F1E7D4);
  v38 = v15;
  v39 = v17;
  v40 = v25;
  v41 = v26;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  v27 = sub_1A3F256B4(&qword_1EB12E950, sub_1A3F1D5F0);
  v28 = sub_1A3F256B4(&qword_1EB13A710, MEMORY[0x1E697C938]);
  sub_1A524A864();
  (*(v35 + 8))(v4, v2);
  (*(v32 + 8))(v8, v6);
  v38 = v6;
  v39 = v2;
  v40 = v27;
  v41 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_1A524AEF4();
  return (*(v34 + 8))(v12, v29);
}

void sub_1A3F24960()
{
  sub_1A3F24ABC();
  if (v0 <= 0x3F)
  {
    sub_1A3F25650(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3F25650(319, &qword_1EB1246B0, sub_1A3E05E50, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3F25650(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A3C3637C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A3F24ABC()
{
  if (!qword_1EB1243D0)
  {
    type metadata accessor for PhotosDetailsTimeEditViewModel();
    sub_1A3F256B4(&qword_1EB125EC0, type metadata accessor for PhotosDetailsTimeEditViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243D0);
    }
  }
}

void sub_1A3F24B8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A3F24C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F24CA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F25650(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1A3F24F10(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A3F24FA4(v10, a1, sub_1A3EBE398);
  }

  sub_1A524D254();
  v12 = sub_1A524A014();
  sub_1A5246DF4();

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void sub_1A3F24E98()
{
  if (!qword_1EB126F80)
  {
    sub_1A3C52C70(255, &qword_1EB12B160);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126F80);
    }
  }
}

uint64_t sub_1A3F24F10(uint64_t a1, uint64_t a2)
{
  sub_1A3F25650(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3F24FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F25024(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsTimeEditView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1A3F250A0()
{
  result = qword_1EB12E968;
  if (!qword_1EB12E968)
  {
    sub_1A3F25650(255, &qword_1EB12E890, sub_1A3F1E0F8, MEMORY[0x1E69E6720]);
    sub_1A3F25148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E968);
  }

  return result;
}

unint64_t sub_1A3F25148()
{
  result = qword_1EB12E970;
  if (!qword_1EB12E970)
  {
    sub_1A3F1E0F8();
    sub_1A3E003FC();
    sub_1A3F256B4(&qword_1EB127800, sub_1A3D6D248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E970);
  }

  return result;
}

uint64_t sub_1A3F25200(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosDetailsTimeEditView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A3F243B0(a1, v4);
}

void sub_1A3F25270()
{
  sub_1A5249314();
  v0 = sub_1A524C634();
  v1 = PXLocalizedString(v0);

  sub_1A524C674();
  sub_1A3D5F9DC();
  v2 = sub_1A524A464();
  v4 = v3;
  v6 = v5;
  sub_1A524A214();
  v7 = sub_1A524A3C4();
  v9 = v8;
  v11 = v10;

  sub_1A3E04DF4(v2, v4, v6 & 1);

  sub_1A524B484();
  sub_1A524A364();

  sub_1A3E04DF4(v7, v9, v11 & 1);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F25650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3F256B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for PhotosDetailsTimeEditView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  sub_1A3F25650(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v6 = *(v5 + 32);
    v7 = sub_1A52489C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  sub_1A3D35BAC(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  if (*(v2 + v1[7]))
  {
  }

  return swift_deallocObject();
}

void sub_1A3F2589C()
{
  v1 = type metadata accessor for PhotosDetailsTimeEditView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  sub_1A3F25650(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v6;
  v10[3] = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  sub_1A3F24C28(v0 + v2, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsTimeEditView);
  String.init(forType:)(v10);
  v8 = sub_1A524C634();

  *(inited + 48) = v8;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3CA5EA4(inited + 32, sub_1A3F24E98);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v9 = sub_1A524C3D4();

  [v3 sendEvent:v4 withPayload:v9];
}

uint64_t sub_1A3F25A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F25AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3F25B60(void *a1)
{
  v2 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4);
  v3 = a1;

  sub_1A4535158();
}

void sub_1A3F25EA4()
{
  v1 = *(v0 + 24);
  type metadata accessor for MacSyncedAssetsNotificationListManager();
  v2 = v1;
  sub_1A4A58378();
}

void sub_1A3F263B8(void *a1)
{
  sub_1A4536404();
  sub_1A3F27A3C();
  v2 = sub_1A524E114();
  sub_1A3C52C70(0, &qword_1EB126A10);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = v3;
  v5 = &selRef_maxNumberOfAccountViewUnreadSharedAlbumsActivityNotifications;
  if ((v2 & 1) == 0)
  {
    v5 = &selRef_maxNumberOfMainViewUnreadSharedAlbumsActivityNotifications;
  }

  v6 = [v3 *v5];

  type metadata accessor for SharedAlbumsActivityEntryItemListManager();
  v7 = a1;
  v8 = sub_1A3C30368();
  sub_1A4277A0C(v7, v6, 0, v8 & 1, 3, 1);
}

uint64_t sub_1A3F26570(uint64_t *a1)
{
  v21 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MacSyncedAssetsNotificationItem();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1A3F28220();
  sub_1A3C29B34(&qword_1EB124BA0, sub_1A3F28220);
  v12 = sub_1A524D004();
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3F27E2C(0, v12 & ~(v12 >> 63), 0);
    v13 = v23;
    sub_1A524CFD4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_4:
    sub_1A3F27E2C(v15 > 1, v1, 1);
    v13 = v23;
    while (1)
    {
      *(v13 + 16) = v1;
      sub_1A3DB1D94(v11, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v2);
      sub_1A524D044();
      if (!--v14)
      {
        break;
      }

LABEL_5:
      v16 = sub_1A524D0C4();
      sub_1A3F282B4(v17, v8, type metadata accessor for MacSyncedAssetsNotificationItem);
      v16(v22, 0);
      sub_1A3F282B4(v8, v5, type metadata accessor for MacSyncedAssetsNotificationItem);
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v5, v11);
      sub_1A3F2831C(v8, type metadata accessor for MacSyncedAssetsNotificationItem);
      v23 = v13;
      v2 = *(v13 + 16);
      v15 = *(v13 + 24);
      v1 = v2 + 1;
      if (v2 >= v15 >> 1)
      {
        goto LABEL_4;
      }
    }
  }

  return v13;
}

uint64_t sub_1A3F26878(uint64_t *a1)
{
  v21 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetsRecoveryNotificationItem();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1A3F2818C();
  sub_1A3C29B34(&unk_1EB128EA0, sub_1A3F2818C);
  v12 = sub_1A524D004();
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3F27E2C(0, v12 & ~(v12 >> 63), 0);
    v13 = v23;
    sub_1A524CFD4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_4:
    sub_1A3F27E2C(v15 > 1, v1, 1);
    v13 = v23;
    while (1)
    {
      *(v13 + 16) = v1;
      sub_1A3DB1D94(v11, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v2);
      sub_1A524D044();
      if (!--v14)
      {
        break;
      }

LABEL_5:
      v16 = sub_1A524D0C4();
      sub_1A3F282B4(v17, v8, type metadata accessor for AssetsRecoveryNotificationItem);
      v16(v22, 0);
      sub_1A3F282B4(v8, v5, type metadata accessor for AssetsRecoveryNotificationItem);
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v5, v11);
      sub_1A3F2831C(v8, type metadata accessor for AssetsRecoveryNotificationItem);
      v23 = v13;
      v2 = *(v13 + 16);
      v15 = *(v13 + 24);
      v1 = v2 + 1;
      if (v2 >= v15 >> 1)
      {
        goto LABEL_4;
      }
    }
  }

  return v13;
}

uint64_t sub_1A3F26B80(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InvitationsItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 40);
  v12[4] = *sub_1A4536410();
  v13 = v8;
  sub_1A3F28138();
  sub_1A524C9C4();
  result = sub_1A524C9C4();
  if (v12[3] == v12[2])
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      v12[0] = *(v2 + 32);
      v13 = MEMORY[0x1E69E7CC0];
      sub_1A3DB1D04(0, v10, 0);
      v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v12[1] = *(v5 + 72);
      sub_1A3F282B4(v11, v7, type metadata accessor for InvitationsItem);
      sub_1A3F644C8();
    }

    (*(**(v2 + 32) + 160))(0, MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1A3F26DC0(uint64_t a1)
{
  v20 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InvitationsItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationsPhotosItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*a1 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A3F27E2C(0, v13, 0);
    v14 = v21;
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_1A3F282B4(v15, v7, type metadata accessor for InvitationsItem);
      sub_1A3F282B4(v7, v3, type metadata accessor for InvitationsItem);
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v3, v11);
      sub_1A3F2831C(v7, type metadata accessor for InvitationsItem);
      v21 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A3F27E2C(v17 > 1, v18 + 1, 1);
        v14 = v21;
      }

      *(v14 + 16) = v18 + 1;
      sub_1A3DB1D94(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_1A3F27054(uint64_t *a1)
{
  v20 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CloudQuotaNotificationItem();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NotificationsPhotosItem(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A3F27E2C(0, v13, 0);
    v14 = v21;
    v15 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    do
    {
      sub_1A3F282B4(v15, v7, type metadata accessor for CloudQuotaNotificationItem);
      sub_1A3F282B4(v7, v3, type metadata accessor for CloudQuotaNotificationItem);
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v3, v11);
      sub_1A3F2831C(v7, type metadata accessor for CloudQuotaNotificationItem);
      v21 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1A3F27E2C(v17 > 1, v18 + 1, 1);
        v14 = v21;
      }

      *(v14 + 16) = v18 + 1;
      sub_1A3DB1D94(v11, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return v14;
}

size_t sub_1A3F272E4(void *a1)
{
  v16 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v16);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for NotificationsPhotosItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + OBJC_IVAR___PXSharedAlbumsActivityEntryItemList_items);
  if (v8 >> 62)
  {
    v9 = sub_1A524E2B4();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1A3F27E2C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v10 = v17;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1A59097F0](v12, v8);
      }

      else
      {
        v13 = *(v8 + 8 * v12 + 32);
      }

      *v3 = v13;
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v3, v7);
      v17 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1A3F27E2C(v14 > 1, v15 + 1, 1);
        v10 = v17;
      }

      ++v12;
      *(v10 + 16) = v15 + 1;
      sub_1A3DB1D94(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15);
    }

    while (v9 != v12);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F27508(uint64_t *a1)
{
  v2 = type metadata accessor for NotificationsPhotosItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v17 = *a1;
  sub_1A3DB0824(0);
  sub_1A3C29B34(&qword_1EB128EF8, sub_1A3DB0824);
  v6 = sub_1A524D004();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1A3F27E2C(0, v6 & ~(v6 >> 63), 0);
  v7 = v16;
  result = sub_1A524CFD4();
  if ((v8 & 0x8000000000000000) == 0)
  {
    do
    {
      v10 = sub_1A524D0C4();
      sub_1A3F282B4(v11, v5, type metadata accessor for NotificationsPhotosItem);
      v10(v15, 0);
      v16 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1A3F27E2C(v12 > 1, v13 + 1, 1);
        v7 = v16;
      }

      *(v7 + 16) = v13 + 1;
      sub_1A3DB1D94(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      sub_1A524D044();
      --v8;
    }

    while (v8);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3F27734(uint64_t *a1)
{
  v21 = type metadata accessor for NotificationsPhotosItem.NotificationType(0);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NotificationsPhotosItem(0);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_1A3F280A4();
  sub_1A3C29B34(&qword_1EB128EC8, sub_1A3F280A4);
  v12 = sub_1A524D004();
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = v12;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3F27E2C(0, v12 & ~(v12 >> 63), 0);
    v13 = v23;
    sub_1A524CFD4();
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
LABEL_4:
    sub_1A3F27E2C(v15 > 1, v1, 1);
    v13 = v23;
    while (1)
    {
      *(v13 + 16) = v1;
      sub_1A3DB1D94(v11, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v2);
      sub_1A524D044();
      if (!--v14)
      {
        break;
      }

LABEL_5:
      v16 = sub_1A524D0C4();
      sub_1A3F282B4(v17, v8, type metadata accessor for TestNotificationPhotosItem);
      v16(v22, 0);
      sub_1A3F282B4(v8, v5, type metadata accessor for TestNotificationPhotosItem);
      swift_storeEnumTagMultiPayload();
      sub_1A40560C4(v5, v11);
      sub_1A3F2831C(v8, type metadata accessor for TestNotificationPhotosItem);
      v23 = v13;
      v2 = *(v13 + 16);
      v15 = *(v13 + 24);
      v1 = v2 + 1;
      if (v2 >= v15 >> 1)
      {
        goto LABEL_4;
      }
    }
  }

  return v13;
}

unint64_t sub_1A3F27A3C()
{
  result = qword_1EB129948;
  if (!qword_1EB129948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129948);
  }

  return result;
}

uint64_t sub_1A3F27A90()
{
  ShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications = PXPreferencesShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications();
  sub_1A3F27B54();
  sub_1A524E384();
  v2 = sub_1A45366FC() & 1;
  result = sub_1A3D5FAFC(v4);
  if (ShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications != v2)
  {
    if ((ShouldIncludeSharedAlbumsActivityInMainViewInAppNotifications & PXPreferencesShowSharedAlbumsActivityInAppNotifications()) == 1)
    {
      sub_1A3F263B8(*(v0 + 24));
    }

    sub_1A524E384();
    sub_1A45369D8(v4);
    return sub_1A3D5FAFC(v4);
  }

  return result;
}

unint64_t sub_1A3F27B54()
{
  result = qword_1EB129968;
  if (!qword_1EB129968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129968);
  }

  return result;
}

unint64_t sub_1A3F27BAC()
{
  result = qword_1EB12E9B0;
  if (!qword_1EB12E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E9B0);
  }

  return result;
}

unint64_t sub_1A3F27C04()
{
  result = qword_1EB129960;
  if (!qword_1EB129960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129960);
  }

  return result;
}

uint64_t _s19ItemListManagerKindOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s19ItemListManagerKindOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

size_t sub_1A3F27E2C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3F27E4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A3F27E4C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C2A16C(0, &qword_1EB12C358, type metadata accessor for NotificationsPhotosItem, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
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
  v15 = *(type metadata accessor for NotificationsPhotosItem(0) - 8);
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

uint64_t sub_1A3F28048(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3F26B80(a1);
  }

  return result;
}

uint64_t sub_1A3F280A4()
{
  result = qword_1EB128EC0;
  if (!qword_1EB128EC0)
  {
    type metadata accessor for TestNotificationPhotosItem(255);
    sub_1A3C29B34(&qword_1EB12AE90, type metadata accessor for TestNotificationPhotosItem);
    sub_1A52458C4();
  }

  return result;
}

unint64_t sub_1A3F28138()
{
  result = qword_1EB129950;
  if (!qword_1EB129950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129950);
  }

  return result;
}

uint64_t sub_1A3F2818C()
{
  result = qword_1EB128E98;
  if (!qword_1EB128E98)
  {
    type metadata accessor for AssetsRecoveryNotificationItem();
    sub_1A3C29B34(&qword_1EB129818, type metadata accessor for AssetsRecoveryNotificationItem);
    sub_1A52458C4();
  }

  return result;
}

uint64_t sub_1A3F28220()
{
  result = qword_1EB124B98;
  if (!qword_1EB124B98)
  {
    type metadata accessor for MacSyncedAssetsNotificationItem();
    sub_1A3C29B34(&qword_1EB1253C0, type metadata accessor for MacSyncedAssetsNotificationItem);
    sub_1A52458C4();
  }

  return result;
}

uint64_t sub_1A3F282B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F2831C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F28388()
{
  if (*v0)
  {
    return 25965;
  }

  else
  {
    return 0x6974736567677573;
  }
}

uint64_t sub_1A3F283BC(void *a1)
{
  v2 = swift_allocObject();
  sub_1A3F283FC(a1);
  return v2;
}

uint64_t sub_1A3F283FC(void *a1)
{
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 120) = 0;
  sub_1A52411B4();
  sub_1A5241604();
  *(v1 + 48) = 1;
  *(v1 + 64) = 2;
  v3 = sub_1A524C634();
  v4 = PXLocalizedString(v3);

  v5 = sub_1A524C674();
  v7 = v6;

  *(v1 + 72) = v5;
  *(v1 + 80) = v7;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  v8 = sub_1A524C634();
  v9 = PXLocalizedString(v8);

  v10 = sub_1A524C674();
  v12 = v11;

  *(v1 + 104) = v10;
  *(v1 + 112) = v12;
  v13 = [objc_allocWithZone(PXPeopleMeDataSource) initWithPhotoLibrary_];
  *(v1 + 16) = v13;
  *(v1 + 32) = 0;
  if (v13)
  {
    v14 = v13;
    v15 = swift_allocObject();
    swift_weakInit();
    v19[4] = sub_1A3F28708;
    v19[5] = v15;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1A3F287DC;
    v19[3] = &block_descriptor_46;
    v16 = _Block_copy(v19);
    v17 = v14;

    [v17 requestSuggestedMePersonWithCompletion_];

    _Block_release(v16);
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1A3F2860C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[24] == v2)
  {
    v1[24] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 400))(v5);
  }

  return result;
}

void sub_1A3F28708(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v5[4] = sub_1A3F2A510;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3C2E0D0;
  v5[3] = &block_descriptor_65;
  _Block_copy(v5);
  v4 = a1;

  px_dispatch_on_main_queue();
}

void sub_1A3F287DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1A3F28848(void *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1A3F29F4C(a1, a2);

  return v4;
}

uint64_t sub_1A3F288A4(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 400))();

  return swift_unknownObjectRelease();
}

uint64_t sub_1A3F2899C()
{
  swift_getKeyPath();
  (*(*v0 + 392))();

  swift_beginAccess();
  return v0[24];
}

uint64_t sub_1A3F28A1C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A3F28AB4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 392))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore33LegacyPersonSuggestionBannerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3F2A200();
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C();
  return sub_1A3F28BD4;
}

id sub_1A3F28BE0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for LegacyPersonBannerModelProxy();
    v3 = swift_unknownObjectRetain();
    v4 = v0;
    v5 = sub_1A46BBB2C(v3, &off_1F16E8018);
    v6 = *(v0 + 40);
    *(v4 + 40) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_1A3F28C5C()
{
  swift_getKeyPath();
  (*(*v0 + 392))();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A3F28CE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F28D34(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 312);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A3F28D90(uint64_t *a1))(void *a1)
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
  (*(*v1 + 392))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore33LegacyPersonSuggestionBannerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3F2A200();
  sub_1A52415F4();

  v4[7] = sub_1A3DE3FB4();
  return sub_1A3F28EB0;
}

void *sub_1A3F28F0C()
{
  swift_getKeyPath();
  (*(*v0 + 392))();

  swift_beginAccess();
  v1 = v0[15];
  v2 = v1;
  return v1;
}

uint64_t sub_1A3F28F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F28FE8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 360);
  v4 = *a1;
  return v3(v2);
}

void sub_1A3F29048(void *a1)
{
  swift_beginAccess();
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
    (*(*v1 + 400))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3D63AC0();
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

void (*sub_1A3F291A4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 392))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore33LegacyPersonSuggestionBannerModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3F2A200();
  sub_1A52415F4();

  v4[7] = sub_1A3F28EBC();
  return sub_1A3F292C4;
}

uint64_t sub_1A3F292F0(id a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 48);
  *(v1 + 40) = v3;
  if (v3)
  {
    sub_1A524BD44();
    sub_1A52483D4();

    a1 = [*(v2 + 16) confirmSuggestedMePerson];
    v2 = *(v1 + 16);
LABEL_7:
    (*(*v2 + 304))(a1);
    v7 = sub_1A524D264();
    v8 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136315394;
      sub_1A3C2EF94();
    }

    swift_unknownObjectRelease();
    v11 = *(v1 + 8);

    return v11();
  }

  v4 = *(v2 + 32);
  *(v1 + 24) = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  sub_1A524CC54();
  *(v1 + 32) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A3F2960C, v6, v5);
}

uint64_t sub_1A3F2960C()
{
  v1 = *(v0 + 24);

  [v1 primaryButtonSelected];

  return MEMORY[0x1EEE6DFA0](sub_1A3F29684, 0, 0);
}

uint64_t sub_1A3F29684()
{
  (*(**(v0 + 16) + 304))();
  v1 = sub_1A524D264();
  v2 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    swift_slowAlloc();
    *v4 = 136315394;
    sub_1A3C2EF94();
  }

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1A3F298B0()
{
  v1 = v0[48];
  if (v1 == 1)
  {
    sub_1A524BD44();
    sub_1A52483D4();

    v2 = &selRef_rejectSuggestedMePerson;
    v3 = 16;
  }

  else
  {
    v2 = &selRef_notNowButtonSelected;
    v3 = 32;
  }

  (*(*v0 + 304))([*&v0[v3] *v2]);
  v4 = sub_1A524D264();
  v5 = *sub_1A3CAA3FC();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    *v7 = 136315394;
    sub_1A3C2EF94();
  }

  return swift_unknownObjectRelease();
}

id *sub_1A3F29BF8()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12PhotosUICore33LegacyPersonSuggestionBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore33LegacyPersonSuggestionBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

void (*sub_1A3F29D30(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 368))();
  return sub_1A3D3D728;
}

uint64_t sub_1A3F29DC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 40) = 0;
  *(v17 + 120) = 0;
  sub_1A52411B4();
  sub_1A5241604();
  *(v17 + 56) = a1;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = a4;
  *(v17 + 88) = a5;
  *(v17 + 96) = a6;
  *(v17 + 104) = a7;
  *(v17 + 112) = a8;
  *(v17 + 48) = a9 & 1;
  *(v17 + 16) = 0;
  *(v17 + 32) = 0;
  return v17;
}

uint64_t sub_1A3F29EF4()
{
  sub_1A3F29BF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A3F29F4C(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  *(v3 + 40) = 0;
  *(v3 + 56) = 0;
  *(v3 + 120) = 0;
  sub_1A52411B4();
  sub_1A5241604();
  *(v3 + 48) = 0;
  *(v3 + 32) = a2;
  v5 = a2;
  v6 = [v5 avatarStyle];
  if (v6 >= 3 || (*(v3 + 64) = 0x10200u >> (8 * v6), v7 = [v5 style], v7 >= 5))
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    v8 = [v5 *off_1E7729A88[v7]];
    swift_unknownObjectRelease();
    *(v3 + 56) = v8;
    v9 = [v5 suggestionTitle];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A524C674();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *(v3 + 72) = v11;
    *(v3 + 80) = v13;
    v14 = [v5 suggestionMessage];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1A524C674();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(v3 + 88) = v16;
    *(v3 + 96) = v18;
    v19 = [v5 primaryButtonTitle];
    v20 = sub_1A524C674();
    v22 = v21;

    *(v3 + 104) = v20;
    *(v3 + 112) = v22;
    *(v3 + 16) = 0;
    v23 = sub_1A3F28BE0();
    sub_1A46BBB18(v23);

    return v3;
  }

  return result;
}

uint64_t sub_1A3F2A19C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 56) = v1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

unint64_t sub_1A3F2A200()
{
  result = qword_1EB12E9C0;
  if (!qword_1EB12E9C0)
  {
    type metadata accessor for LegacyPersonSuggestionBannerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E9C0);
  }

  return result;
}

void sub_1A3F2A278()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 120);
  *(v2 + 120) = v1;
  v4 = v1;
}

unint64_t sub_1A3F2A33C()
{
  result = qword_1EB12E9D0;
  if (!qword_1EB12E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E9D0);
  }

  return result;
}

uint64_t sub_1A3F2A3A8()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A3F2A510()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(*result + 312);
    v4 = v1;
    v3(v1);
  }

  return result;
}

uint64_t sub_1A3F2A5C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697E6E8];
  v3 = sub_1A52486A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A3F2A638@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v15 = sub_1A5243D54();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A5242D14();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 & 1) != 0 && (v23 = *a2, v24 = *a3, ((1 << a7) & 0x7FFFD7FFFFFLL) != 0))
  {
    (*(v19 + 16))(v22, a1, v18, v20);
    v25 = (*(v19 + 88))(v22, v18);
    if (v25 == *MEMORY[0x1E69C2200])
    {
      v33 = v23;
      return sub_1A3F2ABA0(&v33, v30, v31 & 1, a7);
    }

    else
    {
      if (v25 == *MEMORY[0x1E69C21F8])
      {
        v35[1] = v23;
LABEL_10:
        sub_1A3F2B964();
      }

      if (v25 == *MEMORY[0x1E69C21F0])
      {
        v35[0] = v23;
        v34 = v24;
        return sub_1A3F2B2CC(v35, &v34, v31 & 1, a7);
      }

      else if (v25 == *MEMORY[0x1E69C21E8])
      {
        sub_1A5243D64();
        return (*(v27 + 32))(a9, v17, v28);
      }

      else
      {
        if (v25 == *MEMORY[0x1E69C2210])
        {
          switch(a7)
          {
            case 7:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 31:
            case 32:
            case 33:
            case 34:
            case 42:
              v32 = v23;
              goto LABEL_10;
            default:
              return sub_1A5243D64();
          }
        }

        sub_1A5243D64();
        return (*(v19 + 8))(v22, v18);
      }
    }
  }

  else
  {

    return sub_1A5243D64();
  }
}

uint64_t sub_1A3F2ABA0(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *a1;
  sub_1A5248684();
  switch(a4)
  {
    case 12:
      v10 = *(**sub_1A44E6630() + 160);

      v10((&v19 + 2), v11);

      BYTE1(v19) = v7;
      v12 = &v19 + 1;
      goto LABEL_11;
    case 14:
      if ((v7 - 4) <= 2)
      {
        sub_1A43A223C();
      }

      goto LABEL_16;
    case 16:
      if ((v7 - 5) < 2)
      {
        sub_1A43A223C();
      }

      if (v7 == 4)
      {
        sub_1A43A223C();
      }

      goto LABEL_16;
    case 17:
    case 31:
      v8 = *(**sub_1A44E6630() + 160);

      v8((&v19 + 3), v9);

      goto LABEL_16;
    case 32:
      sub_1A43A223C();
    case 33:
      v13 = *(**sub_1A44E6630() + 160);

      v13((&v19 + 4), v14);

      goto LABEL_16;
    case 42:
      v15 = *(**sub_1A44E6630() + 160);

      v15(&v19, v16);

      if (v19 != 1)
      {
        goto LABEL_16;
      }

      v18 = v7;
      v12 = &v18;
LABEL_11:
      result = sub_1A3F2ABA0(v12, a2, a3 & 1, 40);
      break;
    default:
LABEL_16:

      result = sub_1A5243D64();
      break;
  }

  return result;
}

uint64_t sub_1A3F2B2CC(unsigned __int8 *a1, char *a2, char a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = 1;
  switch(a4)
  {
    case 6:
    case 26:
      if ((v4 - 4) >= 3u)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      goto LABEL_96;
    case 10:
      if (*a1 > 4u)
      {
        if (v4 == 5 || v4 == 6)
        {
          goto LABEL_84;
        }
      }

      else if ((v4 - 2) < 2)
      {
        goto LABEL_2;
      }

      goto LABEL_85;
    case 13:
      if (*a1 > 4u)
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    case 14:
      if (*a1 <= 4u)
      {
LABEL_46:
        if ((v4 - 2) < 2)
        {
          goto LABEL_2;
        }

        goto LABEL_69;
      }

      if (v4 == 5)
      {
        goto LABEL_85;
      }

      if (v4 == 6)
      {
        goto LABEL_84;
      }

      goto LABEL_69;
    case 15:
      if (*a1 <= 4u && (v4 - 2) < 2)
      {
        goto LABEL_85;
      }

      v6 = 6;
      goto LABEL_96;
    case 17:
    case 31:
      if (*a1 > 4u)
      {
        if (v4 == 5)
        {
          goto LABEL_85;
        }

        if (v4 == 6)
        {
LABEL_84:
          v6 = 4;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v4 - 2) < 2)
        {
          goto LABEL_2;
        }

        if (v4 == 4)
        {
          goto LABEL_69;
        }
      }

      v6 = 2;
      goto LABEL_96;
    case 21:
      v9 = 5;
      if ((v4 - 5) >= 2)
      {
        v9 = 4;
      }

      if ((v4 - 2) >= 2)
      {
        v6 = v9;
      }

      else
      {
        v6 = 3;
      }

      goto LABEL_96;
    case 22:
      if ((v4 - 2) < 2)
      {
        goto LABEL_2;
      }

      v8 = 4;
      if (v4 != 6)
      {
        v8 = 2;
      }

      if (v4 == 5)
      {
        v6 = 3;
      }

      else
      {
        v6 = v8;
      }

      goto LABEL_96;
    case 24:
      if (*a1 <= 4u)
      {
        if ((v4 - 2) < 2)
        {
          goto LABEL_2;
        }

        if (v4 != 4)
        {
          goto LABEL_69;
        }

LABEL_85:
        v6 = 3;
        goto LABEL_96;
      }

LABEL_62:
      if (v4 == 5 || v4 == 6)
      {
        goto LABEL_85;
      }

LABEL_69:
      v6 = 2;
LABEL_96:
      BYTE1(v17) = v5;
      sub_1A44DAFA0(v6);

      return sub_1A5243D64();
    case 27:
      v7 = 3;
      if (v4 == 3)
      {
        v7 = 2;
      }

      if (v4 == 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = v7;
      }

      goto LABEL_96;
    case 28:
      v6 = 4;
      goto LABEL_96;
    case 29:
      v6 = 6;
      goto LABEL_96;
    case 30:
      if ((v4 & 0xFE) == 2)
      {
        v6 = 3;
      }

      else
      {
        v6 = 5;
      }

      goto LABEL_96;
    case 32:
      goto LABEL_85;
    case 34:
      goto LABEL_96;
    case 35:
      if ((v4 - 2) > 4)
      {
        v6 = 4;
      }

      else
      {
        v6 = qword_1A5307BB0[(v4 - 2)];
      }

      goto LABEL_96;
    case 36:
      if (*a1 > 4u)
      {
        if (v4 == 5)
        {
          v6 = 6;
          goto LABEL_96;
        }

        if (v4 == 6)
        {
          v6 = 7;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v4 - 2) < 2)
        {
          v6 = 3;
          goto LABEL_96;
        }

        if (v4 == 4)
        {
          v6 = 5;
          goto LABEL_96;
        }
      }

      v6 = 4;
      goto LABEL_96;
    case 39:
      if ((v4 & 0xFE) == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = 5;
      }

      v6 = v10;
      goto LABEL_96;
    case 40:
      if (*a1 > 4u)
      {
        if (v4 == 5)
        {
          v6 = 5;
          goto LABEL_96;
        }

        if (v4 == 6)
        {
          v6 = 5;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v4 - 2) < 2)
        {
          goto LABEL_22;
        }

        if (v4 == 4)
        {
          v6 = 4;
          goto LABEL_96;
        }
      }

      v6 = 3;
      goto LABEL_96;
    case 41:
      if (*a1 > 4u)
      {
        if (v4 == 5)
        {
          v6 = 3;
          goto LABEL_96;
        }

        if (v4 == 6)
        {
          v6 = 3;
          goto LABEL_96;
        }
      }

      else
      {
        if ((v4 - 2) < 2)
        {
LABEL_2:
          v6 = 1;
          goto LABEL_96;
        }

        if (v4 == 4)
        {
          v6 = 2;
          goto LABEL_96;
        }
      }

LABEL_22:
      v6 = 2;
      goto LABEL_96;
    case 42:
      v12 = *(**sub_1A44E6630() + 160);

      v12(&v17, v13);

      if (v17)
      {
        v16 = v4;
        v15 = v5;
        return sub_1A3F2B2CC(&v16, &v15, a3 & 1, 40);
      }

      if ((v4 - 2) >= 5)
      {
        v6 = 2;
      }

      else
      {
        v6 = qword_1A5307C00[(v4 - 2)];
      }

      goto LABEL_96;
    default:
      goto LABEL_2;
  }
}

uint64_t sub_1A3F2C700(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A5241604();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1A3F2C74C(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
    sub_1A52415C4();
  }
}

uint64_t sub_1A3F2C874()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
}

uint64_t sub_1A3F2C92C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

void (*sub_1A3F2CA18(uint64_t *a1))(void **a1)
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
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12PhotosUICore16LemonadeMapModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  swift_beginAccess();
  return sub_1A3F2CB58;
}

void sub_1A3F2CB58(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A3F2CBDC()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A3F2CCA4()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(*(v0 + 16) + 24);
}

uint64_t sub_1A3F2CD60()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeMapModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A3F2CE04()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F2CECC()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();

  v0 = MapItem.subtitle.getter();

  return v0;
}

double sub_1A3F2CFA4()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  return *(*(v1 + 16) + 24);
}

void sub_1A3F2D060()
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F2D170(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_allocObject();
  sub_1A5241604();
  *(v2 + 16) = v1;
  return v2;
}

uint64_t sub_1A3F2D1C4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  *a1 = *(v1 + 16);
}

void (*sub_1A3F2D28C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A3F2CA18(v2);
  return sub_1A3D3D728;
}

void sub_1A3F2D300(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_1A3CA56A8(&qword_1EB12A500, type metadata accessor for LemonadeMapModel);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v4 + 64);
  *a1 = *(v4 + 56);
  a1[1] = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PXObjectEqualToObject(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  if (a1 == a2)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

uint64_t sub_1A3F2D438()
{
  v1 = [*v0 uuid];
  if (!v1)
  {
    return 0x6E776F6E6B6E75;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

uint64_t sub_1A3F2D4AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v3)
  {
    if (([*(a1 + 8) hasContentEqualTo_] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6)
    {
      return 0;
    }

    v3 = 0;
  }

  result = PXObjectEqualToObject(v3, v6);
  if (result)
  {
    LODWORD(result) = PXObjectEqualToObject(v2, v5);
    if (v4 == v7)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1A3F2D53C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = swift_allocObject();
  v11 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  *(v10 + 72) = a4;
  *(v10 + 80) = a5;
  aBlock[4] = sub_1A3F2DA04;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_47;
  _Block_copy(aBlock);
  sub_1A3F2DAF8(a1, v12);

  px_dispatch_on_main_queue();
}

uint64_t sub_1A3F2D650(uint64_t a1)
{
  sub_1A3F2D6AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3F2D6AC()
{
  if (!qword_1EB126650)
  {
    sub_1A3DB58C8();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126650);
    }
  }
}

unint64_t sub_1A3F2D708()
{
  result = qword_1EB125358;
  if (!qword_1EB125358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125358);
  }

  return result;
}

unint64_t sub_1A3F2D760()
{
  result = qword_1EB125590;
  if (!qword_1EB125590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125590);
  }

  return result;
}

unint64_t sub_1A3F2D7B8()
{
  result = qword_1EB125360;
  if (!qword_1EB125360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125360);
  }

  return result;
}

uint64_t sub_1A3F2D938(uint64_t *a1)
{
  v1 = *a1;
  sub_1A3DD383C();

  sub_1A3DD49C4(v1);
}

void sub_1A3F2D9A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    sub_1A3F2D9F4(a1);
  }

  else
  {
  }
}

void sub_1A3F2D9F4(id a1)
{
  if (a1 >= 2)
  {
  }
}

void sub_1A3F2DA04()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  if ((*(v0 + 48) & 1) == 0)
  {
    sub_1A524D9B4();
  }

  sub_1A3F2DBC0();
  v3 = swift_allocError();
  *v4 = v2;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v9 = v3;
  v13 = v8;
  v14 = 1;
  sub_1A3F2DC14(v2);
  v1(&v9);
}

uint64_t sub_1A3F2DAF8(uint64_t a1, uint64_t a2)
{
  sub_1A3F2DB5C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3F2DB5C()
{
  if (!qword_1EB12E9D8)
  {
    sub_1A3F2DBC0();
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E9D8);
    }
  }
}

unint64_t sub_1A3F2DBC0()
{
  result = qword_1EB12E9E0;
  if (!qword_1EB12E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E9E0);
  }

  return result;
}

id sub_1A3F2DC14(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

id PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer.__allocating_init(viewModel:actionType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A524C634();

  v5 = [v3 initWithViewModel:a1 actionType:v4];

  return v5;
}

id PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer.init(viewModel:actionType:)(void *a1)
{
  v3 = sub_1A524C634();

  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer();
  v4 = objc_msgSendSuper2(&v6, sel_initWithViewModel_actionType_, a1, v3);

  return v4;
}

id PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridToggleIncludeOthersInSocialGroupAssetsFilterActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3F2DFE8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = sub_1A524C634();
  v7 = PXLocalizedSharedLibraryString(v6);

  v8 = sub_1A524C674();
  v10 = v9;

  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
}

uint64_t sub_1A3F2E0A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_1A5249D74();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F2E88C();
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v48 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F2F228();
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v49 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5243934();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = (v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = v43 - v15;
  v46 = v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v43 - v18;
  sub_1A5243904();
  sub_1A52438F4();
  v21 = v20 + -24.0 + 1.0 + 3.0;
  v22 = *(v12 + 16);
  v51 = v19;
  v59 = v11;
  v22(v16, v19, v11);
  v65 = *v2;
  v66 = *(v2 + 8);
  v63 = v2[2];
  v64 = *(v2 + 24);
  v43[1] = v2[4];
  v62 = *(v2 + 5);
  v22(v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v11);
  v23 = *(v12 + 80);
  v47 = v12;
  v24 = (v23 + 72) & ~v23;
  v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = *(v2 + 1);
  *(v30 + 16) = *v2;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(v2 + 2);
  *(v30 + 64) = v2[6];
  (*(v12 + 32))(v30 + v24, v45, v59);
  *(v30 + v25) = 0x4018000000000000;
  *(v30 + v26) = v21;
  *(v30 + v27) = 0x4038000000000000;
  *(v30 + v28) = 0x3FF0000000000000;
  *(v30 + v29) = 0x4024000000000000;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = 0x4008000000000000;
  v32 = swift_allocObject();
  v33 = *(v2 + 1);
  *(v32 + 16) = *v2;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v2 + 2);
  *(v32 + 64) = v2[6];
  v60 = 1;
  v45 = sub_1A3E7D368;
  sub_1A3F305E8(&v65, v61, &qword_1EB1246A0, sub_1A3E7D368);
  v44 = sub_1A3D639F0;
  sub_1A3F305E8(&v63, v61, &unk_1EB1247C0, sub_1A3D639F0);

  sub_1A3F30668(&v62, v61);
  sub_1A3F305E8(&v65, v61, &qword_1EB1246A0, sub_1A3E7D368);
  sub_1A3F305E8(&v63, v61, &unk_1EB1247C0, sub_1A3D639F0);

  sub_1A3F30668(&v62, v61);
  sub_1A524B954();
  sub_1A3F2E98C(0);
  sub_1A5243544();
  sub_1A3F2ED3C(&qword_1EB12EAA0, sub_1A3F2E98C);
  sub_1A3F2ED3C(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
  v34 = v48;
  sub_1A5242914();
  v35 = v50;
  sub_1A5249D54();
  v36 = sub_1A3F2ED3C(&qword_1EB12EAB8, sub_1A3F2E88C);
  v37 = v49;
  v38 = v52;
  sub_1A524ADB4();
  (*(v54 + 8))(v35, v55);
  (*(v53 + 8))(v34, v38);
  v39 = swift_allocObject();
  v40 = *(v2 + 1);
  *(v39 + 16) = *v2;
  *(v39 + 32) = v40;
  *(v39 + 48) = *(v2 + 2);
  *(v39 + 64) = v2[6];
  sub_1A3F305E8(&v65, v61, &qword_1EB1246A0, v45);
  sub_1A3F305E8(&v63, v61, &unk_1EB1247C0, v44);

  sub_1A3F30668(&v62, v61);
  v61[0] = v38;
  v61[1] = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v56;
  sub_1A524AA84();

  (*(v57 + 8))(v37, v41);
  return (*(v47 + 8))(v51, v59);
}

void sub_1A3F2E88C()
{
  if (!qword_1EB12E9E8)
  {
    sub_1A3F2E98C(255);
    sub_1A5243544();
    sub_1A3F2ED3C(&qword_1EB12EAA0, sub_1A3F2E98C);
    sub_1A3F2ED3C(&qword_1EB12EAA8, MEMORY[0x1E69C2510]);
    v0 = sub_1A5242904();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E9E8);
    }
  }
}

void sub_1A3F2EA04(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3F2EFA0(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3F2EA94()
{
  if (!qword_1EB12EA10)
  {
    sub_1A3F2EB28();
    sub_1A3F2ED3C(&qword_1EB12EA40, sub_1A3F2EB28);
    v0 = sub_1A5247FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA10);
    }
  }
}

void sub_1A3F2EB28()
{
  if (!qword_1EB12EA18)
  {
    sub_1A5248A14();
    sub_1A3F2EC14();
    sub_1A3F2ED3C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    sub_1A3F2ED3C(&qword_1EB12EA38, sub_1A3F2EC14);
    v0 = sub_1A5249324();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA18);
    }
  }
}

void sub_1A3F2EC14()
{
  if (!qword_1EB12EA20)
  {
    sub_1A3F2ECA8();
    sub_1A3F2ED3C(&qword_1EB12EA30, sub_1A3F2ECA8);
    v0 = sub_1A5247FF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA20);
    }
  }
}

void sub_1A3F2ECA8()
{
  if (!qword_1EB12EA28)
  {
    sub_1A5248A14();
    sub_1A3F2ED3C(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5247E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA28);
    }
  }
}

uint64_t sub_1A3F2ED3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3F2EDD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A3F2EE38()
{
  if (!qword_1EB12EA58)
  {
    sub_1A3F2EED0(255, &qword_1EB12EA60, sub_1A3F2EF64, &qword_1EB12EA90, sub_1A3F2EF64);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA58);
    }
  }
}

void sub_1A3F2EED0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3F2ED3C(a4, a5);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A3F2EFA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3F2F01C()
{
  if (!qword_1EB12EA78)
  {
    sub_1A5248A04();
    sub_1A3F2ED3C(&unk_1EB13D870, MEMORY[0x1E697EAB8]);
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA78);
    }
  }
}

void sub_1A3F2F0CC()
{
  if (!qword_1EB12EA80)
  {
    sub_1A3F2F15C(255, &qword_1EB12EA88, sub_1A3F2F1D0, sub_1A3D6D248);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EA80);
    }
  }
}

void sub_1A3F2F15C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3F2F1D0()
{
  if (!qword_1EB128580)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128580);
    }
  }
}

void sub_1A3F2F228()
{
  if (!qword_1EB12EAB0)
  {
    sub_1A3F2E88C();
    sub_1A3F2ED3C(&qword_1EB12EAB8, sub_1A3F2E88C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EAB0);
    }
  }
}

uint64_t sub_1A3F2F2DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D5>)
{
  sub_1A3F2ED84(0);
  v67 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v65 - v17);
  v19 = sub_1A5243834();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F30584(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v65 - v24;
  sub_1A3F2EA60(0);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v65 - v30;
  *a2 = sub_1A524BC34();
  a2[1] = v32;
  sub_1A3F31354(0, &qword_1EB12EAC0, sub_1A3F2E9C8);
  v65 = a2 + *(v33 + 44);
  (*(**(a1 + 32) + 200))();
  v72 = 0u;
  v73 = 0u;
  v74 = 1;
  v34 = sub_1A52429A4();
  (*(*(v34 - 8) + 56))(v25, 1, 1, v34);
  (*(v20 + 104))(v22, *MEMORY[0x1E69C2678], v19);
  sub_1A5243ED4();
  sub_1A52438C4();
  v36 = v35;
  v37 = &v31[*(v27 + 44)];
  v38 = sub_1A5248A14();
  v39 = *(v38 + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1A52494A4();
  v42 = *(*(v41 - 8) + 104);
  v42(&v37[v39], v40, v41);
  *v37 = v36;
  *(v37 + 1) = v36;
  sub_1A3F2EB28();
  v44 = v43;
  v45 = &v37[*(v43 + 52)];
  v42(v45 + *(v38 + 20), v40, v41);
  *v45 = a3;
  v45[1] = a3;
  sub_1A3F2ECA8();
  v47 = (v45 + *(v46 + 36));
  *v47 = a4;
  v47[1] = a4;
  sub_1A3F2EC14();
  v49 = (v45 + *(v48 + 36));
  *v49 = a5;
  v49[1] = a5;
  v37[*(v44 + 56)] = 0;
  sub_1A3F2EA94();
  *&v37[*(v50 + 36)] = 256;
  *v18 = sub_1A524BC74();
  v18[1] = v51;
  sub_1A3F31354(0, &qword_1EB12EAC8, sub_1A3F2EF64);
  sub_1A3F2F9DC(v18 + *(v52 + 44), a3, a6);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3F2EE38();
  v54 = (v18 + *(v53 + 36));
  v55 = v70;
  *v54 = v69;
  v54[1] = v55;
  v54[2] = v71;
  sub_1A3F2EDAC(0);
  v57 = (v18 + *(v56 + 36));
  *v57 = a7;
  v57[1] = a7;
  v58 = sub_1A524A064();
  v59 = v18 + *(v67 + 44);
  *v59 = v58;
  *(v59 + 1) = 0;
  *(v59 + 2) = 0;
  *(v59 + 3) = -a6;
  *(v59 + 4) = -a6;
  v59[40] = 0;
  v60 = v66;
  sub_1A3F313B8(v31, v66, sub_1A3F2EA60);
  v61 = v68;
  sub_1A3F313B8(v18, v68, sub_1A3F2ED84);
  v62 = v65;
  sub_1A3F313B8(v60, v65, sub_1A3F2EA60);
  sub_1A3F2EFA0(0, &qword_1EB12EA00, sub_1A3F2EA60, sub_1A3F2ED84);
  sub_1A3F313B8(v61, v62 + *(v63 + 48), sub_1A3F2ED84);
  sub_1A3F312C0(v18, sub_1A3F2ED84);
  sub_1A3F312C0(v31, sub_1A3F2EA60);
  sub_1A3F312C0(v61, sub_1A3F2ED84);
  return sub_1A3F312C0(v60, sub_1A3F2EA60);
}

uint64_t sub_1A3F2F900@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1A5243934() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 72) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v4);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A3F2F2DC(v1 + 16, a1, v8, v9, v10, v11, v12);
}

uint64_t sub_1A3F2F9DC@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v36 = a1;
  v5 = sub_1A524B554();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F2F01C();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v34 - v17);
  v19 = *(sub_1A5248A14() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_1A52494A4();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = a2;
  v18[1] = a2;
  *(v18 + *(sub_1A5248A04() + 20)) = a3;
  *(v18 + *(v14 + 60)) = sub_1A524B3C4();
  *(v18 + *(v14 + 64)) = 256;
  strcpy(v12, "person.2.fill");
  *(v12 + 7) = -4864;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D38], v9);
  sub_1A5242B94();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x1E6981630], v5);
  v22 = sub_1A524B5C4();

  (*(v6 + 8))(v8, v5);
  v23 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  v25 = v35;
  sub_1A3F313B8(v18, v35, sub_1A3F2F01C);
  v26 = v36;
  sub_1A3F313B8(v25, v36, sub_1A3F2F01C);
  sub_1A3F2EFA0(0, &qword_1EB12EA70, sub_1A3F2F01C, sub_1A3F2F0CC);
  v28 = v26 + *(v27 + 48);
  v42[0] = v22;
  v42[1] = 0;
  LOWORD(v43) = 257;
  *(&v43 + 2) = v40;
  WORD3(v43) = v41;
  *(&v43 + 1) = KeyPath;
  *v44 = v23;
  *&v44[8] = v37;
  *&v44[24] = v38;
  *&v44[40] = v39;
  v29 = v43;
  *v28 = v22;
  *(v28 + 16) = v29;
  v30 = *v44;
  v31 = *&v44[16];
  v32 = *&v44[32];
  *(v28 + 80) = *&v44[48];
  *(v28 + 48) = v31;
  *(v28 + 64) = v32;
  *(v28 + 32) = v30;
  sub_1A3F313B8(v42, v45, sub_1A3F2F0CC);
  sub_1A3F312C0(v18, sub_1A3F2F01C);
  v45[0] = v22;
  v45[1] = 0;
  v46 = 257;
  v47 = v40;
  v48 = v41;
  v49 = KeyPath;
  v50 = v23;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  sub_1A3F312C0(v45, sub_1A3F2F0CC);
  return sub_1A3F312C0(v25, sub_1A3F2F01C);
}

void sub_1A3F2FF14(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v27 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240744();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A5240754();
  v28 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3F30584(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - v11;
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A52407E4();
  v16 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v30 = &v27 - v19;
  v39 = sub_1A5243C24();
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v31 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v29 = &v27 - v22;
  sub_1A5243C14();
  v23 = *a1;
  v40 = a1;
  sub_1A3F30800(v23, *(a1 + 8) & 1);
  v24 = sub_1A5240E64();
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
  (*(v28 + 104))(v8, *MEMORY[0x1E6968750], v32);
  (*(v36 + 104))(v34, *MEMORY[0x1E6968728], v37);
  sub_1A5240764();
  sub_1A52407D4();
  v25 = v33;
  (*(v16 + 56))(v15, 0, 1, v33);
  v26 = v30;
  (*(v16 + 32))(v30, v15, v25);
  (*(v35 + 16))(v31, v29, v39);
  (*(v16 + 16))(v38, v26, v25);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F30584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3F305E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3F30584(0, a3, a4, MEMORY[0x1E697DCC0]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_4Tm()
{
  sub_1A3D35BAC(*(v0 + 16), *(v0 + 24));
  j__swift_release(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A3F3075C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A3F307A4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1A3F30800(void *a1, char a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a1;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35BAC(a1, 0);
    (*(v5 + 8))(v7, v4);
    a1 = v17[0];
    if (!v17[0])
    {
LABEL_10:
      v12 = sub_1A524C634();
      v11 = PXLocalizedSharedLibraryString(v12);

      v13 = sub_1A524C674();
      goto LABEL_13;
    }
  }

  v10 = [a1 px_sharedLibrarySharingSuggestionsCountsManager];

  if (!v10)
  {
    goto LABEL_10;
  }

  [v10 detailedUnreadCounts];
  if (v17[0] == 0x7FFFFFFFFFFFFFFFLL || v17[1] == 0x7FFFFFFFFFFFFFFFLL || v17[2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sub_1A524C634();
    v11 = PXLocalizedSharedLibraryString(v14);
  }

  else
  {
    v11 = PXLocalizedStringForDetailedCountsWithUsage(v17, 1);
  }

  v13 = sub_1A524C674();

LABEL_13:
  return v13;
}

void sub_1A3F30A70(void *a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v29);
  v28[2] = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28[3] = v28 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v28[1] = v28 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v30 = v28 - v17;
  v18 = sub_1A5249234();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    sub_1A524D254();
    v22 = a1;
    v23 = sub_1A524A014();
    sub_1A5246DF4();

    a1 = v22;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(a3, 0);
    (*(v19 + 8))(v21, v18);
    a3 = v31;
  }

  if (a3)
  {
    if (a2)
    {
      v24 = a1;
      if (a1)
      {
        goto LABEL_6;
      }
    }

    else
    {

      sub_1A524D254();
      v25 = a1;
      v26 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3D35BAC(v25, 0);
      v24 = (*(v19 + 8))(v21, v18);
      if (v31)
      {
LABEL_6:
        (*(*a5 + 368))(&v31, v24);
        swift_unknownObjectRelease();

        objc_opt_self();
        swift_dynamicCastObjCClassUnconditional();
        sub_1A3DB5914();
      }
    }
  }

  sub_1A524D244();
  v27 = *sub_1A3CAA3FC();
  sub_1A5246DF4();
}

uint64_t sub_1A3F312C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3F31354(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3F313B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3F31428@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeReorderView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = v4[7];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  v8 = v4[8];
  *(a2 + v8) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v9 = (a2 + v4[9]);
  result = sub_1A3C38BD4();
  *v9 = result;
  v9[1] = v11;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for LemonadeReorderView()
{
  result = qword_1EB19B650;
  if (!qword_1EB19B650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3F315AC()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeReorderView();
  sub_1A3F36A2C(v0 + *(v12 + 20), v7, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
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

  v14 = sub_1A5248684();
  (*(v9 + 8))(v11, v8);
  return v14 & 1;
}

BOOL sub_1A3F31830()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LemonadeReorderView() + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return (v7 - 7) < 0xFFFFFFFD;
}

void sub_1A3F31998(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = sub_1A52484F4();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31EAC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F33810();
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F338C4();
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A3F339B0;
  v38 = sub_1A3F33AEC;
  sub_1A3F320E0(0, &qword_1EB12EC20, sub_1A3F339B0, sub_1A3F33AEC);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v43 = v1;
  sub_1A3F320E0(0, &qword_1EB12EAD8, sub_1A3F31F5C, sub_1A3F33388);
  sub_1A3F3341C();
  sub_1A524A2C4();
  v22 = sub_1A3C4B134(&qword_1EB12EC10, sub_1A3F31EAC);
  sub_1A524ADD4();
  (*(v7 + 8))(v9, v6);
  v44 = v6;
  v45 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524AD24();
  (*(v34 + 8))(v13, v11);
  v24 = v37;
  sub_1A52484E4();
  v44 = v11;
  v45 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v40;
  sub_1A524B1E4();
  (*(v41 + 8))(v24, v26);
  (*(v36 + 8))(v17, v25);
  v27 = [objc_opt_self() secondarySystemBackgroundColor];
  v44 = sub_1A524B284();
  *&v21[*(v19 + 44)] = sub_1A524B8E4();
  v28 = sub_1A3F315AC();
  if (v28)
  {
    v29 = 0x4032000000000000;
  }

  else
  {
    v29 = 0;
  }

  KeyPath = swift_getKeyPath();
  v31 = v42;
  sub_1A3F3715C(v21, v42, &qword_1EB12EC20, v39, v38);
  sub_1A3F36740();
  v33 = v31 + *(v32 + 36);
  *v33 = KeyPath;
  *(v33 + 8) = v29;
  *(v33 + 16) = (v28 & 1) == 0;
}

void sub_1A3F31EAC()
{
  if (!qword_1EB12EAD0)
  {
    sub_1A3F320E0(255, &qword_1EB12EAD8, sub_1A3F31F5C, sub_1A3F33388);
    sub_1A3F3341C();
    v0 = sub_1A524A2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EAD0);
    }
  }
}

void sub_1A3F31F5C()
{
  if (!qword_1EB12EAE0)
  {
    sub_1A3F32024(255);
    sub_1A3F32058();
    sub_1A3C4B134(&qword_1EB126F20, sub_1A3F32024);
    sub_1A3C3DEB4();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EAE0);
    }
  }
}

void sub_1A3F32058()
{
  if (!qword_1EB12EAE8)
  {
    sub_1A3F320E0(255, &qword_1EB12EAF0, sub_1A3F32154, sub_1A3F332F4);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EAE8);
    }
  }
}

void sub_1A3F320E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A3F32154()
{
  if (!qword_1EB12EAF8)
  {
    sub_1A3F322E0();
    sub_1A3F32434();
    sub_1A5248A14();
    sub_1A3F32508();
    sub_1A3F331E4();
    sub_1A3F3258C(255);
    sub_1A3F33104();
    swift_getOpaqueTypeConformance2();
    sub_1A3F33244();
    swift_getOpaqueTypeConformance2();
    sub_1A3C4B134(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EAF8);
    }
  }
}

void sub_1A3F322E0()
{
  if (!qword_1EB12EB00)
  {
    sub_1A3F32434();
    sub_1A5248A14();
    sub_1A3F32508();
    sub_1A3F331E4();
    sub_1A3F3258C(255);
    sub_1A3F33104();
    swift_getOpaqueTypeConformance2();
    sub_1A3F33244();
    swift_getOpaqueTypeConformance2();
    sub_1A3C4B134(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB00);
    }
  }
}

void sub_1A3F32434()
{
  if (!qword_1EB12EB08)
  {
    sub_1A3F32508();
    sub_1A3F331E4();
    sub_1A3F3258C(255);
    sub_1A3F33104();
    swift_getOpaqueTypeConformance2();
    sub_1A3F33244();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB08);
    }
  }
}

void sub_1A3F32508()
{
  if (!qword_1EB12EB10)
  {
    sub_1A3F3258C(255);
    sub_1A3F33104();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB10);
    }
  }
}

void sub_1A3F325C0()
{
  if (!qword_1EB12EB20)
  {
    sub_1A3F32654(255);
    sub_1A3C4B134(&qword_1EB12EBA8, sub_1A3F32654);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EB20);
    }
  }
}

void sub_1A3F32688()
{
  if (!qword_1EB12EB30)
  {
    sub_1A3F326F8(255);
    sub_1A3F32AB4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12EB30);
    }
  }
}

void sub_1A3F3272C()
{
  if (!qword_1EB12EB40)
  {
    sub_1A3F327E0();
    sub_1A3C4B134(&qword_1EB12EB68, sub_1A3F327E0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB40);
    }
  }
}

void sub_1A3F327E0()
{
  if (!qword_1EB12EB48)
  {
    sub_1A3F32874(255);
    sub_1A3C4B134(&qword_1EB12EB60, sub_1A3F32874);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EB48);
    }
  }
}

void sub_1A3F328A8()
{
  if (!qword_1EB12EB58)
  {
    sub_1A3F32960(255);
    sub_1A3F32DC0(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB12EB58);
    }
  }
}

void sub_1A3F32994()
{
  if (!qword_1EB1282C0)
  {
    sub_1A3EE213C();
    sub_1A3F32A48(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1282C0);
    }
  }
}

void sub_1A3F32A48(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3F36FA0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3F32AE8()
{
  if (!qword_1EB12EB78)
  {
    sub_1A3F32BF4();
    sub_1A3F32CC8(255);
    sub_1A3EE1D04();
    sub_1A3F32E14();
    sub_1A3C4B134(&unk_1EB1263B0, sub_1A3EE1D04);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB78);
    }
  }
}

void sub_1A3F32BF4()
{
  if (!qword_1EB12EB80)
  {
    sub_1A3F32CC8(255);
    sub_1A3EE1D04();
    sub_1A3F32E14();
    sub_1A3C4B134(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EB80);
    }
  }
}

void sub_1A3F32CFC()
{
  if (!qword_1EB12EB90)
  {
    sub_1A3F320E0(255, &qword_1EB1236B0, sub_1A3E352FC, sub_1A3F32A14);
    sub_1A3F32DC0(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EB90);
    }
  }
}

void sub_1A3F32DC0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A3F32E14()
{
  result = qword_1EB12EB98;
  if (!qword_1EB12EB98)
  {
    sub_1A3F32CC8(255);
    sub_1A3F32EC4();
    sub_1A3C4B134(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EB98);
  }

  return result;
}

unint64_t sub_1A3F32EC4()
{
  result = qword_1EB12EBA0;
  if (!qword_1EB12EBA0)
  {
    sub_1A3F32CFC();
    sub_1A3F32F44();
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EBA0);
  }

  return result;
}

unint64_t sub_1A3F32F44()
{
  result = qword_1EB1236B8;
  if (!qword_1EB1236B8)
  {
    sub_1A3F320E0(255, &qword_1EB1236B0, sub_1A3E352FC, sub_1A3F32A14);
    sub_1A3E4509C();
    sub_1A3C4B134(&unk_1EB1277E0, sub_1A3F32A14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1236B8);
  }

  return result;
}

unint64_t sub_1A3F33024()
{
  result = qword_1EB127AD8;
  if (!qword_1EB127AD8)
  {
    sub_1A3F32DC0(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127AD8);
  }

  return result;
}

void sub_1A3F330A8()
{
  if (!qword_1EB127C70)
  {
    sub_1A3D6F4A4();
    v0 = sub_1A52499A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127C70);
    }
  }
}

unint64_t sub_1A3F33104()
{
  result = qword_1EB12EBB0;
  if (!qword_1EB12EBB0)
  {
    sub_1A3F3258C(255);
    sub_1A3C4B134(&qword_1EB12EBB8, sub_1A3F325C0);
    sub_1A3C4B134(&qword_1EB127C80, sub_1A3F330A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EBB0);
  }

  return result;
}

void sub_1A3F331E4()
{
  if (!qword_1EB12EBC0)
  {
    sub_1A3F32508();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EBC0);
    }
  }
}

unint64_t sub_1A3F33244()
{
  result = qword_1EB12EBC8;
  if (!qword_1EB12EBC8)
  {
    sub_1A3F331E4();
    sub_1A3F3258C(255);
    sub_1A3F33104();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EBC8);
  }

  return result;
}

void sub_1A3F332F4()
{
  if (!qword_1EB13E320)
  {
    sub_1A5249914();
    sub_1A3C4B134(&qword_1EB138340, MEMORY[0x1E697C768]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13E320);
    }
  }
}

void sub_1A3F33388()
{
  if (!qword_1EB12EBD0)
  {
    sub_1A52484D4();
    sub_1A3C4B134(&qword_1EB12EBD8, MEMORY[0x1E697C0D0]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EBD0);
    }
  }
}

unint64_t sub_1A3F3341C()
{
  result = qword_1EB12EBE0;
  if (!qword_1EB12EBE0)
  {
    sub_1A3F320E0(255, &qword_1EB12EAD8, sub_1A3F31F5C, sub_1A3F33388);
    sub_1A3F33588(&qword_1EB12EBE8, sub_1A3F31F5C, sub_1A3F33540);
    sub_1A3C4B134(&qword_1EB12EC00, sub_1A3F33388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EBE0);
  }

  return result;
}

uint64_t sub_1A3F33588(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A3F335F8()
{
  result = qword_1EB12EBF8;
  if (!qword_1EB12EBF8)
  {
    sub_1A3F320E0(255, &qword_1EB12EAF0, sub_1A3F32154, sub_1A3F332F4);
    sub_1A3F322E0();
    sub_1A3F32434();
    sub_1A5248A14();
    sub_1A3F32508();
    sub_1A3F331E4();
    sub_1A3F3258C(255);
    sub_1A3F33104();
    swift_getOpaqueTypeConformance2();
    sub_1A3F33244();
    swift_getOpaqueTypeConformance2();
    sub_1A3C4B134(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C4B134(&qword_1EB1383F0, sub_1A3F332F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EBF8);
  }

  return result;
}

void sub_1A3F33810()
{
  if (!qword_1EB12EC08)
  {
    sub_1A3F31EAC();
    sub_1A3C4B134(&qword_1EB12EC10, sub_1A3F31EAC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EC08);
    }
  }
}

void sub_1A3F338C4()
{
  if (!qword_1EB12EC18)
  {
    sub_1A3F33810();
    sub_1A3F31EAC();
    sub_1A3C4B134(&qword_1EB12EC10, sub_1A3F31EAC);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EC18);
    }
  }
}

void sub_1A3F339B0()
{
  if (!qword_1EB12EC28)
  {
    sub_1A3F338C4();
    sub_1A52484F4();
    sub_1A3F33810();
    sub_1A3F31EAC();
    sub_1A3C4B134(&qword_1EB12EC10, sub_1A3F31EAC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12EC28);
    }
  }
}

void sub_1A3F33AEC()
{
  if (!qword_1EB130140)
  {
    sub_1A5249CD4();
    sub_1A3C4B134(&qword_1EB12EC30, MEMORY[0x1E697C9E8]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130140);
    }
  }
}

void sub_1A3F33B80(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v3 = type metadata accessor for LemonadeReorderView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = (*(**a1 + 560))(v6);
  v16 = type metadata accessor for LemonadeReorderView;
  sub_1A3F36A2C(a1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeReorderView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v15 = type metadata accessor for LemonadeReorderView;
  sub_1A3F37390(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for LemonadeReorderView);
  sub_1A3F32024(0);
  sub_1A3F32058();
  sub_1A3C4B134(&qword_1EB126F20, sub_1A3F32024);
  sub_1A3F33540();
  sub_1A3C4B134(&qword_1EB12A158, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  v9 = v18;
  sub_1A524B9C4();
  sub_1A3F36A2C(v17, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v10 = swift_allocObject();
  sub_1A3F37390(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7, v15);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1A3F37694;
  *(v11 + 24) = v10;
  sub_1A3F320E0(0, &qword_1EB12EAD8, sub_1A3F31F5C, sub_1A3F33388);
  v13 = (v9 + *(v12 + 36));
  *v13 = sub_1A3F3768C;
  v13[1] = v11;
}

uint64_t sub_1A3F33E78@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v46 = a1;
  v3 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1A5242D14();
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v42 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v31 - v8;
  v9 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v35 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LemonadeReorderView();
  v32 = *(v36 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v33 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F3258C(0);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32508();
  v40 = v15;
  v39 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v38 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32434();
  v51 = v17;
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v44 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F322E0();
  v20 = v19;
  v50 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v47 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F320E0(0, &qword_1EB12EAF0, sub_1A3F32154, sub_1A3F332F4);
  v23 = v22;
  v52 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v43 = v31 - v24;
  if (sub_1A4870D30())
  {
    sub_1A3C53294(&v53);
    v31[5] = a2;
    v31[3] = v20;
    v25 = v54;
    v26 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v31[2] = v5;
    v31[4] = v23;
    v27 = *(v26 + 32);
    v31[1] = v3;
    v56[3] = swift_getAssociatedTypeWitness();
    v56[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v56);
    v27(v25, v26);
    __swift_destroy_boxed_opaque_existential_0(&v53);
    *v14 = sub_1A5249314();
    *(v14 + 1) = 0;
    v14[16] = 0;
    sub_1A3F371CC(0, &qword_1EB12EC78, sub_1A3F32654);
    sub_1A3F34944(v46, v56, &v14[*(v28 + 44)]);
  }

  v29 = *(v52 + 56);

  return v29(a2, 1, 1, v23);
}

void sub_1A3F34944(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v37[20] = a3;
  v5 = sub_1A52486A4();
  v37[30] = *(v5 - 8);
  v37[31] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37[29] = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04();
  v37[15] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37[10] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32CFC();
  v37[24] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37[23] = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32CC8(0);
  v37[7] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v37[28] = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32BF4();
  v37[11] = v13;
  v37[8] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v37[6] = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32AE8();
  v37[14] = v15;
  v37[12] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v37[9] = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32AB4(0);
  v37[17] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v37[19] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v37[13] = v37 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v37[16] = v37 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v37[18] = v37 - v24;
  v38 = sub_1A5249524();
  v37[25] = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37[4] = v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v27 = sub_1A5249D74();
  MEMORY[0x1EEE9AC00](v27);
  sub_1A3F327E0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F3272C();
  v37[21] = *(v31 - 8);
  v37[22] = v31;
  MEMORY[0x1EEE9AC00](v31);
  sub_1A3F326F8(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v37[5] = v37 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37[27] = v37 - v35;
  *v30 = sub_1A5249314();
  *(v30 + 1) = 0;
  v30[16] = 0;
  sub_1A3F371CC(0, &qword_1EB12EC80, sub_1A3F32874);
  sub_1A3F3571C(a1, a2, &v30[*(v36 + 44)]);
}

void sub_1A3F3571C(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v76 = a2;
  v83 = a3;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524A274();
  v80 = *(v6 - 8);
  v81 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1A5242D14();
  v8 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v71 - v11;
  v12 = sub_1A524B5B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE213C();
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3F32994();
  v74 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F32960(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v77 = &v71 - v26;
  v27 = *a1;
  sub_1A3C5322C();
  (*(*v27 + 432))(&v89);
  v28 = sub_1A524B544();
  v29 = sub_1A3F315AC();
  v30 = MEMORY[0x1E69816E0];
  if ((v29 & 1) == 0)
  {
    v30 = MEMORY[0x1E69816C0];
  }

  (*(v13 + 104))(v15, *v30, v12);
  KeyPath = swift_getKeyPath();
  v32 = (v19 + *(v17 + 44));
  sub_1A3F32A14(0);
  (*(v13 + 32))(v32 + *(v33 + 28), v15, v12);
  *v32 = KeyPath;
  *v19 = v28;
  type metadata accessor for LemonadeReorderView();
  v34 = v72;
  sub_1A3D61808(v72);
  v35 = v73;
  v36 = v75;
  (*(v8 + 104))(v73, *MEMORY[0x1E69C2210], v75);
  LOBYTE(KeyPath) = sub_1A5242D04();
  v37 = *(v8 + 8);
  v37(v35, v36);
  v37(v34, v36);
  if (KeyPath)
  {
    v38 = sub_1A524B434();
  }

  else
  {
    v38 = sub_1A524B3C4();
  }

  v39 = v38;
  v40 = swift_getKeyPath();
  sub_1A3F37390(v19, v22, sub_1A3EE213C);
  v41 = &v22[*(v74 + 36)];
  *v41 = v40;
  v41[1] = v39;
  sub_1A3F373F8();
  v42 = v77;
  sub_1A524AAE4();
  sub_1A3F370FC(v22, sub_1A3F32994);
  sub_1A524BC74();
  sub_1A52481F4();
  v75 = v89;
  v74 = v91;
  v73 = v93;
  v72 = v94;
  v88 = 1;
  v87 = v90;
  v86 = v92;
  v43 = v76[3];
  v44 = v76[4];
  __swift_project_boxed_opaque_existential_1(v76, v43);
  v84 = (*(v44 + 24))(v43, v44);
  v85 = v45;
  sub_1A3D5F9DC();
  v46 = sub_1A524A464();
  v48 = v47;
  v50 = v49;
  v52 = v79;
  v51 = v80;
  v53 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E6980F10], v81);
  v54 = sub_1A524A154();
  v55 = v82;
  (*(*(v54 - 8) + 56))(v82, 1, 1, v54);
  sub_1A524A164();
  sub_1A524A1C4();
  sub_1A3F370FC(v55, sub_1A3E75D84);
  (*(v51 + 8))(v52, v53);
  v56 = sub_1A524A3C4();
  v58 = v57;
  LODWORD(v82) = v59;
  v61 = v60;

  sub_1A3E04DF4(v46, v48, v50 & 1);

  v62 = v42;
  v63 = v78;
  sub_1A3F36A2C(v62, v78, sub_1A3F32960);
  LOBYTE(v46) = v88;
  LOBYTE(v48) = v87;
  v64 = v86;
  v65 = v83;
  sub_1A3F36A2C(v63, v83, sub_1A3F32960);
  sub_1A3F328A8();
  v67 = v65 + v66[12];
  *v67 = 0;
  *(v67 + 8) = v46;
  *(v67 + 16) = v75;
  *(v67 + 24) = v48;
  *(v67 + 32) = v74;
  *(v67 + 40) = v64;
  v68 = v72;
  *(v67 + 48) = v73;
  *(v67 + 56) = v68;
  v69 = v65 + v66[16];
  *v69 = v56;
  *(v69 + 8) = v58;
  LOBYTE(v40) = v82 & 1;
  *(v69 + 16) = v82 & 1;
  *(v69 + 24) = v61;
  v70 = v65 + v66[20];
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_1A3E75E68(v56, v58, v40);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F35F78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A064();
  sub_1A5247BC4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_1A3F32508();
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1A3F331E4();
  v15 = a2 + *(v14 + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
}

void sub_1A3F36030(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  v11 = (*(**v2 + 560))(v7);
  v45 = v11;
  v12 = (*v10 + 1104);
  v13 = *v12;
  v14 = (*v12)();
  v15 = sub_1A5241464();
  v40 = v12;
  v41 = v14;
  if ((v16 & 1) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(v11 + 16))
    {
      sub_1A3F36A2C(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A3DD1890(&v44);
      sub_1A3F370FC(v9, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v17 = v44;
      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v17 = 1;
LABEL_6:
  v38 = v17;
  v39 = v13;
  sub_1A3F32024(0);
  sub_1A3C4B134(&qword_1EB12EC40, sub_1A3F32024);
  sub_1A524C554();
  v18 = v45;
  v19 = *(v45 + 16);
  if (v19)
  {
    v36[1] = a1;
    v37 = a2;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v19, 0);
    v20 = v44;
    v21 = *(v6 + 80);
    v36[0] = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v23 = *(v6 + 72);
    do
    {
      sub_1A3F36A2C(v22, v9, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A3F370FC(v9, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v24 = v43;
      v44 = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1A3C4ED58((v25 > 1), v26 + 1, 1);
        v20 = v44;
      }

      *(v20 + 16) = v26 + 1;
      *(v20 + v26 + 32) = v24;
      v22 += v23;
      --v19;
    }

    while (v19);

    a2 = v37;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  (*(*v10 + 512))(v20);

  v27 = sub_1A5241464();
  v29 = v28;
  v30 = v27 > a2;
  v31 = (v39)(v27);
  type metadata accessor for LemonadeAnalyticsCustomization();
  v32 = sub_1A47E502C();
  LOBYTE(v44) = 0;
  LemonadeCustomizationAction.rawValue.getter();
  v33 = sub_1A524CFC4();
  v43 = v38;
  LemonadeCustomizationAnalyticsName.rawValue.getter(v33);
  v34 = sub_1A524CFC4();
  v42 = 0;
  LemonadeCustomizationContentType.rawValue.getter(v34);
  v35 = sub_1A524CFC4();
  (*(*v32 + 136))(v33, v30 & ~v29, v34, v35, v41, v31);
}

void sub_1A3F3649C()
{
  v0 = type metadata accessor for LemonadeMockShelvesDataSource();
  v1 = sub_1A42F8364();
  type metadata accessor for LemonadeShelvesViewModel(0);
  v3[3] = v0;
  v3[4] = sub_1A3C4B134(&qword_1EB12EC48, type metadata accessor for LemonadeMockShelvesDataSource);
  v3[0] = v1;

  v2 = sub_1A3C5A374();
  sub_1A3C5A7B8(v3, 0, v2);
}

uint64_t sub_1A3F36644(uint64_t a1)
{
  v2 = sub_1A3F36F4C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A3F36690(uint64_t a1)
{
  v2 = sub_1A3F36F4C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A3F366DC@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x1A5904310]();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1A3F36740()
{
  if (!qword_1EB12EC38)
  {
    sub_1A3F320E0(255, &qword_1EB12EC20, sub_1A3F339B0, sub_1A3F33AEC);
    sub_1A3F32A48(255, &qword_1EB122180, &qword_1EB12AF10, MEMORY[0x1E69E7DE0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12EC38);
    }
  }
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for LemonadeReorderView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v5 = v1[7];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5247E04();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A3F36A2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3F36AB4()
{
  result = qword_1EB12EC50;
  if (!qword_1EB12EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EC50);
  }

  return result;
}

void sub_1A3F36B4C()
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A3F3732C(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A3F36FA0(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3F3732C(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A3F3732C(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1A3F36CE4()
{
  result = qword_1EB12EC58;
  if (!qword_1EB12EC58)
  {
    sub_1A3F36740();
    sub_1A3F36D84();
    sub_1A3F37548(&qword_1EB122188, &qword_1EB122180, &qword_1EB12AF10, MEMORY[0x1E69E7DE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EC58);
  }

  return result;
}

unint64_t sub_1A3F36D84()
{
  result = qword_1EB12EC60;
  if (!qword_1EB12EC60)
  {
    sub_1A3F320E0(255, &qword_1EB12EC20, sub_1A3F339B0, sub_1A3F33AEC);
    sub_1A3F338C4();
    sub_1A52484F4();
    sub_1A3F33810();
    sub_1A3F31EAC();
    sub_1A3C4B134(&qword_1EB12EC10, sub_1A3F31EAC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3C4B134(&qword_1EB1302A0, sub_1A3F33AEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EC60);
  }

  return result;
}

unint64_t sub_1A3F36F4C()
{
  result = qword_1EB12EC70;
  if (!qword_1EB12EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12EC70);
  }

  return result;
}

void sub_1A3F36FA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A3F36FF0()
{
  v1 = *(type metadata accessor for LemonadeReorderView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v3 = *(v0 + v2);
  sub_1A3C5322C();
  return (*(*v3 + 520))(&v5);
}

uint64_t sub_1A3F370FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F3715C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1A3F320E0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1A3F371CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A3F37264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3F372C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3F3732C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3F37390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A3F373F8()
{
  result = qword_1EB12ECA0;
  if (!qword_1EB12ECA0)
  {
    sub_1A3F32994();
    sub_1A3F37498();
    sub_1A3F37548(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ECA0);
  }

  return result;
}

unint64_t sub_1A3F37498()
{
  result = qword_1EB128538;
  if (!qword_1EB128538)
  {
    sub_1A3EE213C();
    sub_1A3C4B134(&unk_1EB1277E0, sub_1A3F32A14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128538);
  }

  return result;
}

uint64_t sub_1A3F37548(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3F32A48(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A3F37598@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeReorderView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A3F33E78(v4, a1);
}

uint64_t sub_1A3F37698()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EB918);
  __swift_project_value_buffer(v0, qword_1EB1EB918);
  sub_1A524C814();
  return sub_1A5246F14();
}

uint64_t sub_1A3F37710()
{
  if (qword_1EB19B678 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();

  return __swift_project_value_buffer(v0, qword_1EB1EB918);
}

void sub_1A3F37774(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = sub_1A524C634();
  sub_1A3F37DA4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v7;
  v41 = sub_1A3C52C70(0, &qword_1EB126B10);
  aBlock[0] = a1;
  v8 = a1;
  String.init(forType:)(aBlock);
  v9 = sub_1A524C634();

  *(inited + 48) = v9;
  sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A3F37E0C(inited + 32);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v10 = sub_1A524C3D4();

  [v4 sendEvent:v5 withPayload:v10];

  v11 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
  v12 = [a2 actionConfirmationAlertTitle];
  if (v12 || (v12 = [a2 failureDescription]) != 0)
  {
    v13 = v12;
    sub_1A524C674();

    v14 = sub_1A524C634();

    [v11 setTitle_];
  }

  v15 = [a2 actionConfirmationAlertSubtitle];
  if (v15)
  {
    v16 = v15;
    [v11 setMessage_];
  }

  v17 = [a2 action];
  if (!v17)
  {
    v32 = sub_1A524C634();
    v33 = PXLocalizedString(v32);

    sub_1A524C674();
    v34 = sub_1A524C634();

    v35 = [objc_opt_self() actionWithTitle:v34 style:0 handler:0];

    [v11 addAction_];
LABEL_20:
    [v8 presentViewController:v11 animated:1 completion:0];

    return;
  }

  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = [a2 actionConfirmationAlertButtonTitle];
  if (!v20)
  {
    v20 = [a2 actionTitle];
    if (!v20)
    {
LABEL_19:

      goto LABEL_20;
    }
  }

  v21 = v20;
  sub_1A524C674();

  v22 = swift_allocObject();
  v22[2] = sub_1A3E79128;
  v22[3] = v19;
  v22[4] = a2;

  v23 = a2;
  v24 = sub_1A524C634();

  v42 = sub_1A3F37E68;
  v43 = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  v41 = &block_descriptor_48;
  v25 = _Block_copy(aBlock);

  v26 = objc_opt_self();
  v27 = [v26 actionWithTitle:v24 style:0 handler:v25];
  _Block_release(v25);

  [v11 addAction_];
  v28 = [v11 actions];
  sub_1A3C52C70(0, &qword_1EB12ECA8);
  v29 = sub_1A524CA34();

  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

LABEL_17:
    v31 = 0;
    goto LABEL_18;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1A59097F0](0, v29);
    goto LABEL_14;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
LABEL_14:
    v31 = v30;
LABEL_18:

    [v11 setPreferredAction_];

    v36 = sub_1A524C634();
    v37 = PXLocalizedString(v36);

    sub_1A524C674();
    v38 = sub_1A524C634();

    v39 = [v26 actionWithTitle:v38 style:1 handler:0];

    [v11 addAction_];
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1A3F37DA4()
{
  if (!qword_1EB126200)
  {
    sub_1A3F24E98();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126200);
    }
  }
}

uint64_t sub_1A3F37E0C(uint64_t a1)
{
  sub_1A3F24E98();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3F37EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v5 = *(a1 + 24);
  v43 = a4;
  v44 = v5;
  v6 = *(v5 - 8);
  v41 = a3;
  v42 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 + 32);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v25 = *(v18 + 16);
  v37 = v26;
  v25(&v36 - v23, v26, a1, v22);
  v27 = (*(v18 + 88))(v24, a1);
  if (v27 == *off_1E7720FE8)
  {
    (*(v18 + 96))(v24, a1);
    (*(v14 + 32))(v16, v24, v13);
    v28 = sub_1A5242A84();
    (*(v14 + 8))(v16, v13);
    return v28 & 1;
  }

  if (v27 == *off_1E7720FF8)
  {
    (*(v18 + 96))(v24, a1);
    v29 = v42;
    v30 = v39;
    v31 = v44;
    (*(v42 + 32))(v39, v24, v44);
    v28 = sub_1A5242A84();
    (*(v29 + 8))(v30, v31);
    return v28 & 1;
  }

  if (v27 == *off_1E7720FF0)
  {
    (*(v18 + 96))(v24, a1);
    v32 = v38;
    v33 = v40;
    (*(v38 + 32))(v11, v24, v40);
    v28 = sub_1A5242A84();
    (*(v32 + 8))(v11, v33);
    return v28 & 1;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A524E404();

  v46 = 0xD00000000000001ALL;
  v47 = 0x80000001A53BD470;
  (v25)(v20, v37, a1);
  v35 = sub_1A524C714();
  MEMORY[0x1A5907B60](v35);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F3835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v51 = a4;
  v53 = a2;
  v52 = a1;
  v7 = *(a3 + 24);
  v49 = a6;
  v50 = v7;
  v8 = *(v7 - 8);
  v47 = a5;
  v48 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v11 = *(v10 + 32);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v11;
  v44 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v42 - v28;
  v30 = *(v22 + 16);
  v43 = v31;
  v30(&v42 - v28, v31, v27);
  v32 = (*(v22 + 88))(v29, a3);
  if (v32 == *off_1E7720FE8)
  {
    (*(v22 + 96))(v29, a3);
    (*(v17 + 32))(v20, v29, v16);
    sub_1A5243534();
    return (*(v17 + 8))(v20, v16);
  }

  else if (v32 == *off_1E7720FF8)
  {
    (*(v22 + 96))(v29, a3);
    v34 = v48;
    v35 = v45;
    v36 = v29;
    v37 = v50;
    (*(v48 + 32))(v45, v36, v50);
    sub_1A5243534();
    return (*(v34 + 8))(v35, v37);
  }

  else if (v32 == *off_1E7720FF0)
  {
    (*(v22 + 96))(v29, a3);
    v38 = v44;
    v39 = v29;
    v40 = v46;
    (*(v44 + 32))(v14, v39, v46);
    sub_1A5243534();
    return (*(v38 + 8))(v14, v40);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_1A524E404();

    v54 = 0xD00000000000001ALL;
    v55 = 0x80000001A53BD470;
    (v30)(v25, v43, a3);
    v41 = sub_1A524C714();
    MEMORY[0x1A5907B60](v41);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A3F38828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41[1] = a6;
  v50 = a7;
  v51 = a5;
  v49 = a2;
  v8 = *(a1 + 24);
  v47 = a4;
  v48 = v8;
  v9 = *(v8 - 8);
  v45 = a3;
  v46 = v9;
  MEMORY[0x1EEE9AC00](a1);
  v12 = *(v11 + 32);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v41 - v26;
  v28 = *(v21 + 16);
  v41[0] = v29;
  v28(v41 - v26, v29, a1, v25);
  v30 = (*(v21 + 88))(v27, a1);
  if (v30 == *off_1E7720FE8)
  {
    (*(v21 + 96))(v27, a1);
    (*(v17 + 32))(v19, v27, v16);
    v51(v16, *(v49 + 8));
    return (*(v17 + 8))(v19, v16);
  }

  else
  {
    v32 = v51;
    if (v30 == *off_1E7720FF8)
    {
      (*(v21 + 96))(v27, a1);
      v33 = v46;
      v34 = v43;
      v35 = v27;
      v36 = v48;
      (*(v46 + 32))(v43, v35, v48);
      v32(v36, *(v45 + 8));
      return (*(v33 + 8))(v34, v36);
    }

    else if (v30 == *off_1E7720FF0)
    {
      (*(v21 + 96))(v27, a1);
      v37 = v42;
      v38 = v27;
      v39 = v44;
      (*(v42 + 32))(v14, v38, v44);
      v32(v39, *(v47 + 8));
      return (*(v37 + 8))(v14, v39);
    }

    else
    {
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1A524E404();

      v52 = 0xD00000000000001ALL;
      v53 = 0x80000001A53BD470;
      (v28)(v23, v41[0], a1);
      v40 = sub_1A524C714();
      MEMORY[0x1A5907B60](v40);

      result = sub_1A524E6E4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A3F38CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v5 = *(a1 + 24);
  v43 = a4;
  v44 = v5;
  v6 = *(v5 - 8);
  v41 = a3;
  v42 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = *(v8 + 32);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v25 = *(v18 + 16);
  v37 = v26;
  v25(&v36 - v23, v26, a1, v22);
  v27 = (*(v18 + 88))(v24, a1);
  if (v27 == *off_1E7720FE8)
  {
    (*(v18 + 96))(v24, a1);
    (*(v14 + 32))(v16, v24, v13);
    v28 = sub_1A5241E54();
    (*(v14 + 8))(v16, v13);
    return v28;
  }

  if (v27 == *off_1E7720FF8)
  {
    (*(v18 + 96))(v24, a1);
    v29 = v42;
    v30 = v39;
    v31 = v44;
    (*(v42 + 32))(v39, v24, v44);
    v28 = sub_1A5241E54();
    (*(v29 + 8))(v30, v31);
    return v28;
  }

  if (v27 == *off_1E7720FF0)
  {
    (*(v18 + 96))(v24, a1);
    v32 = v38;
    v33 = v40;
    (*(v38 + 32))(v11, v24, v40);
    v28 = sub_1A5241E54();
    (*(v32 + 8))(v11, v33);
    return v28;
  }

  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A524E404();

  v46 = 0xD00000000000001ALL;
  v47 = 0x80000001A53BD470;
  (v25)(v20, v37, a1);
  v35 = sub_1A524C714();
  MEMORY[0x1A5907B60](v35);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A3F39180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void), uint64_t a6)
{
  v41 = a6;
  v49 = a2;
  v50 = a5;
  v7 = *(a1 + 24);
  v47 = a4;
  v48 = v7;
  v8 = *(v7 - 8);
  v45 = a3;
  v46 = v8;
  MEMORY[0x1EEE9AC00](a1);
  v11 = *(v10 + 32);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v39 - v25;
  v27 = *(v20 + 16);
  v40 = v28;
  v27(&v39 - v25, v28, a1, v24);
  v29 = (*(v20 + 88))(v26, a1);
  if (v29 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v26, a1);
    (*(v16 + 32))(v18, v26, v15);
    v30 = v50(v15, *(v49 + 8));
    (*(v16 + 8))(v18, v15);
    return v30;
  }

  v31 = v50;
  if (v29 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v26, a1);
    v32 = v46;
    v33 = v43;
    v34 = v48;
    (*(v46 + 32))(v43, v26, v48);
    v30 = v31(v34, *(v45 + 8));
    (*(v32 + 8))(v33, v34);
    return v30;
  }

  if (v29 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v26, a1);
    v35 = v42;
    v36 = v44;
    (*(v42 + 32))(v13, v26, v44);
    v30 = v31(v36, *(v47 + 8));
    (*(v35 + 8))(v13, v36);
    return v30;
  }

  v51 = 0;
  v52 = 0xE000000000000000;
  sub_1A524E404();

  v51 = 0xD00000000000001ALL;
  v52 = 0x80000001A53BD470;
  (v27)(v22, v40, a1);
  v38 = sub_1A524C714();
  MEMORY[0x1A5907B60](v38);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t LemonadeCollectionCustomizationPreviewImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3A2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A3F3A30C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v32 = a2;
  v42 = sub_1A5243994();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v29 - v7;
  v31 = type metadata accessor for LemonadeSearchCollectionResultsFeedProvider(0);
  v39 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[2];
  v12 = *(v11 + 16);
  if (v12)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1A3F3CC04(0, v12, 0);
    v13 = v43;
    v38 = v2[1];
    v30 = v2;
    v45 = v2[9];
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v16 = (v11 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v36 = *(v14 + 56);
    v37 = v15;
    v35 = (v14 - 8);
    v17 = v41;
    do
    {
      v18 = v40;
      v19 = v42;
      v20 = v37;
      v37(v40, v16, v42);
      v21 = v14;
      v20(v17, v18, v19);
      v22 = v45;
      v23 = v38;
      sub_1A3F3CC54(&v45, v44);
      v34 = v23;
      sub_1A45D9CC0(v23, v17, v22, v10);
      (*v35)(v18, v19);
      v43 = v13;
      v25 = *(v13 + 16);
      v24 = *(v13 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1A3F3CC04(v24 > 1, v25 + 1, 1);
        v13 = v43;
      }

      *(v13 + 16) = v25 + 1;
      v8 = sub_1A3F3CD08(v10, v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25);
      v16 += v36;
      --v12;
      v14 = v21;
    }

    while (v12);
    v3 = v30;
    v26 = v34;
  }

  else
  {
    v26 = v2[1];
  }

  (*((*MEMORY[0x1E69E7D40] & *v26) + 0x280))(v8);
  v27 = v3[4];
  v28 = v3[5];
  v42 = v3[7];
  sub_1A3F3CBF0(v27, v28);
  sub_1A3C2E1A4(&unk_1EB129380, type metadata accessor for LemonadeSearchCollectionResultsFeedProvider);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3F3A74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A3C2E1A4(&qword_1EB12ECB0, MEMORY[0x1E69C2718]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1A3F3A960()
{
  v1 = v0;
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A3C2E1A4(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524DC04();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  MEMORY[0x1A590A010](v3);
  if (v3)
  {
    v4 = *(sub_1A5243994() - 8);
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_1A3C2E1A4(&qword_1EB124D30, MEMORY[0x1E69C2718]);
    do
    {
      sub_1A524C4B4();
      v5 += v6;
      --v3;
    }

    while (v3);
  }

  sub_1A524ECB4();
  sub_1A3F3D084();
  sub_1A524C4B4();
  sub_1A524C794();
  v7 = *(v1 + 72);
  sub_1A524ECB4();
  if (v7)
  {
    v8 = v7;
    sub_1A524DC04();
  }
}

uint64_t sub_1A3F3AB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = a4;
  v31 = a3;
  v28 = a1;
  v29 = a2;
  v4 = sub_1A5243994();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  result = sub_1A5243984();
  v40 = *(result + 16);
  if (v40)
  {
    v15 = 0;
    v37 = v5 + 16;
    v36 = *MEMORY[0x1E69C26D8];
    v39 = v7;
    v34 = (v5 + 32);
    v35 = v5 + 104;
    v16 = MEMORY[0x1E69E7CC0];
    v32 = v5 + 8;
    v33 = v10;
    v38 = result;
    while (v15 < *(result + 16))
    {
      v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = *(v5 + 72);
      (*(v5 + 16))(v13, result + v41 + v17 * v15, v4);
      (*(v5 + 104))(v10, v36, v4);
      sub_1A3C2E1A4(&qword_1EB12ECB0, MEMORY[0x1E69C2718]);
      v18 = v13;
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v10, v4);
      if (v19)
      {
        v20(v18, v4);
        v13 = v18;
      }

      else
      {
        v21 = *v34;
        (*v34)(v39, v18, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v16;
        v13 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A3F3CBA0(0, *(v16 + 16) + 1, 1);
          v13 = v18;
          v16 = v43;
        }

        v24 = *(v16 + 16);
        v23 = *(v16 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1A3F3CBA0(v23 > 1, v24 + 1, 1);
          v16 = v43;
        }

        *(v16 + 16) = v24 + 1;
        v21((v16 + v41 + v24 * v17), v39, v4);
        v10 = v33;
      }

      ++v15;
      result = v38;
      if (v40 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_13:

    v42 = *sub_1A4264C50();
    result = static LemonadeShelfUtilities.scrollViewAccessibilityIdentifierForDetailsOfShelf(withIdentifier:)();
    v25 = v30;
    v26 = v29;
    *v30 = v28;
    v25[1] = v26;
    v25[2] = v16;
    *(v25 + 24) = 1;
    *(v25 + 2) = xmmword_1A5301350;
    *(v25 + 48) = 0;
    v25[7] = result;
    v25[8] = v27;
    v25[9] = v31;
  }

  return result;
}

uint64_t sub_1A3F3AEC8()
{
  sub_1A524EC94();
  sub_1A3F3A960();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3AF0C()
{
  sub_1A524EC94();
  sub_1A3F3A960();
  return sub_1A524ECE4();
}

uint64_t sub_1A3F3AF48(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1A3F3CF60(v8, v9) & 1;
}

uint64_t sub_1A3F3B07C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x90))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3F3B150(uint64_t *a1))(void *a1)
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F3AFB4();
  return sub_1A3F3B2B0;
}

void sub_1A3F3B330(void *a1)
{
  KeyPath = swift_getKeyPath();
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x140);
  a1;
  v3(KeyPath);

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F3B444()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3F3B508(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_1A3F3B5B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v6 = a1;
    v6[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  v11 = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x148))(v11);
}

uint64_t sub_1A3F3B710@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A3F3B7E4(uint64_t *a1))(void *a1)
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F3B2BC();
  return sub_1A3F3B944;
}

void *sub_1A3F3BA78()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();

  v1 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A3F3BB74(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126610);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

uint64_t sub_1A3F3BD00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A3F3BD5C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF8);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A3F3BDC4(uint64_t *a1))(void *a1)
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C2E1A4(&qword_1EB12ECD8, type metadata accessor for LemonadeSearchCollectionResultsFeatureEmptyStateViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F3B950();
  return sub_1A3F3BF24;
}

uint64_t sub_1A3F3C0D4()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A3F3C2DC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x148))(KeyPath, sub_1A3F3D184, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C784D4(a1, a2);
}

uint64_t sub_1A3F3C3B4@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x120))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}