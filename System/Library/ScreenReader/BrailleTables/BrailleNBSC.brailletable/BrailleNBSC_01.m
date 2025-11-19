uint64_t ktoau::SetBuf(uint64_t a1, _DWORD *a2, _WORD *a3, int *a4, __int16 a5)
{
  v5 = *a4;
  if (*a4)
  {
    v6 = 0;
    result = 0;
    v8 = a4 + 1;
    do
    {
      if (v6 || v5 != 32)
      {
        v6 = 0;
        *a2++ = v5;
        *a3++ = a5;
        result = (result + 1);
      }

      else
      {
        ++a5;
        v6 = 1;
      }

      v9 = *v8++;
      v5 = v9;
    }

    while (v9);
  }

  else
  {
    result = 0;
  }

  *a2 = 0;
  return result;
}

uint64_t ktoau::IsSetsubi(uint64_t a1, const __int32 *a2)
{
  if (!dword_30488)
  {
    return 0;
  }

  v3 = 1;
  for (i = &dword_30488; ; i += 20)
  {
    v5 = wcslen(i);
    if (!wcsncmp(a2, i, v5))
    {
      break;
    }

    v6 = i[20];
    v3 = (v3 + 1);
    if (!v6)
    {
      return 0;
    }
  }

  return v3;
}

BOOL ktoau::IsDoushi(uint64_t a1, const __int32 *a2)
{
  if (!dword_322D8)
  {
    return *a2 == 25620;
  }

  v3 = 1;
  for (i = &dword_322D8; ; i += 10)
  {
    v5 = wcslen(i);
    if (!wcsncmp(a2, i, v5))
    {
      break;
    }

    v6 = i[10];
    v3 = (v3 + 1);
    if (!v6)
    {
      return *a2 == 25620;
    }
  }

  return v3;
}

uint64_t ktoau::IsDoushiHira(uint64_t a1, _DWORD *a2)
{
  v2 = 12356;
  v3 = &dword_24308;
  while (v2 != *a2)
  {
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ktoau::IsDoushiHira2(uint64_t a1, _DWORD *a2)
{
  v2 = 12356;
  v3 = &dword_2435C;
  while (v2 != *a2)
  {
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ktoau::IsHiraDoushi(int a1, __int32 *a2, __int32 *a3)
{
  if (!wcsncmp(a2, dword_243A4, 4uLL))
  {
    v6 = a2[4];
    if ((v6 - 12425) < 5 || v6 == 12387)
    {
      v5 = &unk_243B8;
      goto LABEL_48;
    }
  }

  if (!wcsncmp(a2, dword_243DC, 4uLL))
  {
    v11 = a2[4];
    if ((v11 - 12425) < 5 || v11 == 12387)
    {
      v5 = &unk_243F0;
      goto LABEL_48;
    }
  }

  if (wcsncmp(a2, dword_24410, 4uLL) || a2[4] != 12428)
  {
    if (!wcsncmp(a2, dword_24444, 4uLL))
    {
      v13 = a2[4] - 12400;
      if (v13 <= 0x23 && ((1 << v13) & 0x800001249) != 0)
      {
        v5 = &unk_24458;
        goto LABEL_48;
      }
    }

    if (!wcsncmp(a2, dword_24478, 3uLL))
    {
      v15 = a2[3];
      v9 = 3;
      v5 = &unk_24488;
      if ((v15 - 12356) < 7 || v15 == 12387 || v15 == 12431)
      {
        goto LABEL_49;
      }
    }

    if (!wcsncmp(a2, dword_244A4, 3uLL))
    {
      v16 = a2[3];
      v9 = 3;
      v5 = &unk_244B4;
      if ((v16 - 12356) < 7 || v16 == 12387 || v16 == 12431)
      {
        goto LABEL_49;
      }
    }

    if (!wcsncmp(a2, dword_244CC, 3uLL))
    {
      v17 = a2[3] - 12385;
      if (v17 <= 0x2C && ((1 << v17) & 0x1F000000003FLL) != 0)
      {
        v5 = &unk_244DC;
        goto LABEL_62;
      }
    }

    if (!wcsncmp(a2, dword_244F4, 3uLL))
    {
      v18 = a2[3];
      v9 = 3;
      v5 = &unk_24504;
      if ((v18 - 12356) < 7 || v18 == 12387 || v18 == 12431)
      {
        goto LABEL_49;
      }
    }

    if (!wcsncmp(a2, dword_2451C, 3uLL))
    {
      v19 = a2[3];
      v9 = 3;
      v5 = &unk_2452C;
      if (v19 == 12414 || v19 == 12417)
      {
        goto LABEL_49;
      }
    }

    if (!wcsncmp(a2, dword_24544, 3uLL))
    {
      v20 = a2[3];
      v9 = 3;
      v5 = &unk_24554;
      if ((v20 - 12356) < 7 || v20 == 12387 || v20 == 12431)
      {
        goto LABEL_49;
      }
    }

    if (wcsncmp(a2, dword_24570, 3uLL))
    {
LABEL_20:
      if (!wcsncmp(a2, dword_24598, 3uLL))
      {
        v22 = a2[3] - 12375;
        if (v22 <= 0x36 && ((1 << v22) & 0x7C000000001001) != 0)
        {
          v5 = &unk_245A8;
          goto LABEL_62;
        }
      }

      if (!wcsncmp(a2, dword_245C0, 3uLL))
      {
        v23 = a2[3];
        v9 = 3;
        v5 = &unk_245D0;
        if ((v23 - 12414) < 5 || v23 == 12435)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_245E8, 3uLL))
      {
        v8 = a2[3];
        v9 = 3;
        v5 = &unk_245F8;
        if (v8 == 12356 || (v8 - 12363) < 9)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_24614, 3uLL))
      {
        v24 = a2[3];
        v9 = 3;
        v5 = &unk_24624;
        if ((v24 - 12425) < 5 || v24 == 12387)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_2463C, 3uLL))
      {
        v25 = a2[3];
        v9 = 3;
        v5 = &unk_2464C;
        if ((v25 - 12356) < 7 || v25 == 12387 || v25 == 12431)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_24664, 3uLL))
      {
        v10 = a2[3];
        v9 = 3;
        v5 = &unk_24674;
        if (v10 == 12356 || (v10 - 12363) < 9)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_24690, 3uLL))
      {
        v26 = a2[3];
        v9 = 3;
        v5 = &unk_246A0;
        if ((v26 - 12356) < 7 || v26 == 12387 || v26 == 12431)
        {
          goto LABEL_49;
        }
      }

      if (!wcsncmp(a2, dword_246BC, 3uLL))
      {
        v27 = a2[3];
        v9 = 3;
        v5 = &unk_246CC;
        if ((v27 - 12356) < 7 || v27 == 12387 || v27 == 12431)
        {
          goto LABEL_49;
        }
      }

      if (wcsncmp(a2, dword_246E4, 3uLL))
      {
LABEL_33:
        if (!wcsncmp(a2, dword_2470C, 3uLL))
        {
          v29 = a2[3];
          v9 = 3;
          v5 = &unk_2471C;
          if ((v29 - 12356) < 7 || v29 == 12387 || v29 == 12431)
          {
            goto LABEL_49;
          }
        }

        if (!wcsncmp(a2, dword_24734, 3uLL))
        {
          v30 = a2[3];
          v9 = 3;
          v5 = &unk_24744;
          if ((v30 - 12425) < 5 || v30 == 12387)
          {
            goto LABEL_49;
          }
        }

        if (!wcsncmp(a2, dword_2475C, 3uLL))
        {
          v33 = a2[3];
          v9 = 3;
          v5 = &unk_2476C;
          if ((v33 - 12425) < 5 || v33 == 12387)
          {
            goto LABEL_49;
          }
        }

        if (!wcsncmp(a2, dword_24784, 3uLL) && a2[3] == 12428)
        {
          v5 = &unk_24794;
LABEL_62:
          v9 = 3;
          goto LABEL_49;
        }

        if (!wcsncmp(a2, dword_247B0, 3uLL) && a2[3] == 12360)
        {
          v5 = &unk_247C0;
          goto LABEL_62;
        }

        if (!wcsncmp(a2, dword_247D8, 3uLL))
        {
          v31 = a2[3];
          v9 = 3;
          v5 = &unk_247E8;
          if (v31 == 12356 || (v31 - 12363) < 9)
          {
            goto LABEL_49;
          }
        }

        if (!wcsncmp(a2, dword_24804, 3uLL))
        {
          v32 = a2[3];
          v9 = 3;
          v5 = &unk_24814;
          if (v32 == 12356 || (v32 - 12363) < 9)
          {
            goto LABEL_49;
          }
        }

        if (!wcsncmp(a2, dword_2482C, 3uLL) && a2[3] == 12360)
        {
          v5 = &unk_2483C;
          goto LABEL_62;
        }

        if (wcsncmp(a2, dword_24858, 3uLL))
        {
LABEL_131:
          if (!wcsncmp(a2, dword_24880, 3uLL) && a2[3] == 12390)
          {
            v5 = &unk_24890;
            goto LABEL_62;
          }

          if (!wcsncmp(a2, dword_248AC, 3uLL) && (a2[3] & 0xFFFFFFFD) == 0x3058)
          {
            v5 = &unk_248BC;
            goto LABEL_62;
          }

          if (!wcsncmp(a2, dword_248D4, 3uLL) && a2[3] == 12415)
          {
            v5 = &unk_248E4;
            goto LABEL_62;
          }

          if (!wcsncmp(a2, dword_248FC, 3uLL))
          {
            v35 = a2[3];
            v9 = 3;
            v5 = &unk_2490C;
            if ((v35 - 12425) < 5 || v35 == 12387)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24924, 3uLL))
          {
            v36 = a2[3];
            v9 = 3;
            v5 = &unk_24934;
            if ((v36 - 12356) < 7 || v36 == 12387 || v36 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_2494C, 3uLL))
          {
            v38 = a2[3];
            v9 = 3;
            v5 = &unk_2495C;
            if ((v38 - 12414) < 5 || v38 == 12435)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24978, 3uLL) && a2[3] == 12370)
          {
            v5 = &unk_24988;
            goto LABEL_62;
          }

          if (!wcsncmp(a2, dword_249A0, 3uLL))
          {
            v39 = a2[3];
            v9 = 3;
            v5 = &unk_249B0;
            if ((v39 - 12356) < 7 || v39 == 12387 || v39 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_249CC, 3uLL))
          {
            v40 = a2[3];
            if (v40 - 12382) >= 0xFFFFFFF7 && (v40)
            {
              v5 = &unk_249DC;
              goto LABEL_62;
            }
          }

          if (!wcsncmp(a2, dword_249F8, 3uLL))
          {
            v37 = a2[3];
            v9 = 3;
            v5 = &unk_24A08;
            if (v37 == 12356 || (v37 - 12363) < 9)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24A24, 3uLL))
          {
            v41 = a2[3];
            v9 = 3;
            v5 = &unk_24A34;
            if ((v41 - 12356) < 7 || v41 == 12387 || v41 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24A4C, 3uLL))
          {
            v45 = a2[3];
            v9 = 3;
            v5 = &unk_24A5C;
            if ((v45 - 12414) < 5 || v45 == 12435)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24A74, 3uLL) && a2[3] == 12360)
          {
            v5 = &unk_24A84;
            goto LABEL_62;
          }

          if (!wcsncmp(a2, dword_24A9C, 3uLL))
          {
            v46 = a2[3];
            v9 = 3;
            v5 = &unk_24AAC;
            if (v46 == 12360 || v46 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24AC8, 3uLL))
          {
            v47 = a2[3];
            v9 = 3;
            v5 = &unk_24AD8;
            if ((v47 - 12356) < 7 || v47 == 12387 || v47 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24AF0, 3uLL))
          {
            v48 = a2[3];
            v9 = 3;
            v5 = &unk_24B00;
            if ((v48 - 12356) < 7 || v48 == 12387 || v48 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24B1C, 3uLL))
          {
            v49 = a2[3];
            v9 = 3;
            v5 = &unk_24B2C;
            if ((v49 - 12356) < 7 || v49 == 12387 || v49 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24B44, 3uLL))
          {
            v50 = a2[3];
            if (v50 - 12382) >= 0xFFFFFFF7 && (v50)
            {
              v5 = &unk_24B54;
              goto LABEL_62;
            }
          }

          if (!wcsncmp(a2, dword_24B6C, 3uLL))
          {
            v51 = a2[3];
            v9 = 3;
            v5 = &unk_24B7C;
            if ((v51 - 12414) < 5 || v51 == 12435)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24B94, 3uLL))
          {
            v42 = a2[3];
            v9 = 3;
            v5 = &unk_24BA4;
            if (v42 == 12356 || (v42 - 12363) < 9)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24BBC, 3uLL))
          {
            v52 = a2[3];
            v9 = 3;
            v5 = &unk_24BCC;
            if ((v52 - 12356) < 7 || v52 == 12387 || v52 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24BE4, 3uLL))
          {
            v53 = a2[3];
            v9 = 3;
            v5 = &unk_24BF4;
            if ((v53 - 12356) < 7 || v53 == 12387 || v53 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24C0C, 3uLL))
          {
            v54 = a2[3];
            v9 = 3;
            v5 = &unk_24C1C;
            if ((v54 - 12356) < 7 || v54 == 12387 || v54 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24C38, 3uLL))
          {
            v55 = a2[3];
            v9 = 3;
            v5 = &unk_24C48;
            if ((v55 - 12425) < 5 || v55 == 12387)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24C60, 3uLL))
          {
            v56 = a2[3];
            v9 = 3;
            v5 = &unk_24C70;
            if ((v56 - 12414) < 5 || v56 == 12435)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24C8C, 3uLL))
          {
            v43 = a2[3];
            v9 = 3;
            v5 = &unk_24C9C;
            if (v43 == 12356 || (v43 - 12363) < 9)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24CB4, 3uLL))
          {
            v57 = a2[3];
            v9 = 3;
            v5 = &unk_24CC4;
            if ((v57 - 12425) < 5 || v57 == 12387)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24CE0, 3uLL))
          {
            v58 = a2[3];
            v9 = 3;
            v5 = &unk_24CF0;
            if ((v58 - 12425) < 5 || v58 == 12387)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24D0C, 3uLL))
          {
            v59 = a2[3];
            v9 = 3;
            v5 = &unk_24D1C;
            if ((v59 - 12425) < 5 || v59 == 12387)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24D34, 3uLL))
          {
            v44 = a2[3];
            v9 = 3;
            v5 = &unk_24D44;
            if (v44 == 12356 || (v44 - 12363) < 9)
            {
              goto LABEL_49;
            }
          }

          if (!wcsncmp(a2, dword_24D60, 3uLL))
          {
            v60 = a2[3];
            v9 = 3;
            v5 = &unk_24D70;
            if ((v60 - 12356) < 7 || v60 == 12387 || v60 == 12431)
            {
              goto LABEL_49;
            }
          }

          if (wcsncmp(a2, dword_24D88, 3uLL))
          {
LABEL_207:
            if (!wcsncmp(a2, dword_24DB0, 3uLL))
            {
              v62 = a2[3] - 12400;
              if (v62 <= 0x23 && ((1 << v62) & 0x800001249) != 0)
              {
                v5 = &unk_24DC0;
                goto LABEL_62;
              }
            }

            if (!wcsncmp(a2, dword_24DD8, 2uLL))
            {
              v63 = a2[2];
              if (v63 - 12382) >= 0xFFFFFFF7 && (v63)
              {
                v5 = &unk_24DE4;
                goto LABEL_310;
              }
            }

            if (!wcsncmp(a2, dword_24DF4, 2uLL))
            {
              v64 = a2[2];
              if ((v64 - 12364) > 8)
              {
                v9 = 2;
                v5 = &unk_24E00;
                if ((v64 - 12387) <= 0x2A && ((1 << (v64 - 99)) & 0x7C000000001) != 0 || v64 == 12356)
                {
                  goto LABEL_49;
                }
              }

              else if ((v64 & 1) == 0)
              {
                v5 = &unk_24E00;
                goto LABEL_310;
              }
            }

            if (!wcsncmp(a2, dword_24E10, 2uLL))
            {
              v65 = a2[2];
              if (v65 - 12382) >= 0xFFFFFFF7 && (v65)
              {
                v5 = &unk_24E1C;
                goto LABEL_310;
              }
            }

            if (wcsncmp(a2, dword_24E2C, 2uLL))
            {
LABEL_212:
              if (!wcsncmp(a2, dword_24E4C, 2uLL))
              {
                v67 = a2[2];
                v9 = 2;
                v5 = &unk_24E58;
                if ((v67 - 12425) < 5 || v67 == 12387)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24E68, 2uLL))
              {
                v68 = a2[2];
                v9 = 2;
                v5 = &unk_24E74;
                if (v68 == 12363 || v68 == 12369)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24E88, 2uLL))
              {
                v69 = a2[2] - 12400;
                if (v69 <= 0x23 && ((1 << v69) & 0x800001249) != 0)
                {
                  v5 = &unk_24E94;
                  goto LABEL_310;
                }
              }

              if (!wcsncmp(a2, dword_24EA4, 2uLL))
              {
                v70 = a2[2];
                v9 = 2;
                v5 = &unk_24EB0;
                if ((v70 - 12425) < 5 || v70 == 12387)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24EC0, 2uLL))
              {
                v71 = a2[2];
                v9 = 2;
                v5 = &unk_24ECC;
                if ((v71 - 12387) <= 0x2A && ((1 << (v71 - 99)) & 0x7C000000001) != 0)
                {
                  goto LABEL_49;
                }

                if (v71 == 12360)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24EDC, 2uLL) && (a2[2] - 12414) < 5)
              {
                v5 = &unk_24EE8;
LABEL_310:
                v9 = 2;
                goto LABEL_49;
              }

              if (!wcsncmp(a2, dword_24EF8, 2uLL) && a2[2] == 12428)
              {
                v5 = &unk_24F04;
                goto LABEL_310;
              }

              if (!wcsncmp(a2, dword_24F18, 2uLL) && a2[2] == 12428)
              {
                v5 = &unk_24F24;
                goto LABEL_310;
              }

              if (!wcsncmp(a2, dword_24F34, 2uLL))
              {
                v73 = a2[2];
                v9 = 2;
                v5 = &unk_24F40;
                if ((v73 - 12425) < 5 || v73 == 12387)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24F54, 2uLL))
              {
                v74 = a2[2];
                if (v74 - 12382) >= 0xFFFFFFF7 && (v74)
                {
                  v5 = &unk_24F60;
                  goto LABEL_310;
                }

                v9 = 2;
                v5 = &unk_24F60;
                if ((v74 - 12425) < 5 || v74 == 12387)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24F70, 2uLL))
              {
                v75 = a2[2];
                v9 = 2;
                v5 = &unk_24F7C;
                if ((v75 - 12356) < 7 || v75 == 12387 || v75 == 12431)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24F8C, 2uLL))
              {
                v72 = a2[2];
                v9 = 2;
                v5 = &unk_24F98;
                if (v72 == 12356 || (v72 - 12363) < 9)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24FA8, 2uLL))
              {
                v79 = a2[2];
                v9 = 2;
                v5 = &unk_24FB4;
                if ((v79 - 12414) < 5 || v79 == 12435)
                {
                  goto LABEL_49;
                }
              }

              if (!wcsncmp(a2, dword_24FC4, 2uLL))
              {
                v80 = a2[2];
                if (v80 - 12382) >= 0xFFFFFFF7 && (v80)
                {
                  v5 = &unk_24FD0;
                  goto LABEL_310;
                }
              }

              if (!wcsncmp(a2, dword_24FE0, 2uLL) && a2[2] == 12417)
              {
                v5 = &unk_24FEC;
                goto LABEL_310;
              }

              if (wcsncmp(a2, dword_25000, 2uLL))
              {
LABEL_352:
                if (!wcsncmp(a2, dword_2501C, 2uLL))
                {
                  v76 = a2[2];
                  v9 = 2;
                  v5 = &unk_25028;
                  if (v76 == 12356 || (v76 - 12363) < 9)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_2503C, 2uLL))
                {
                  v82 = a2[2];
                  v9 = 2;
                  v5 = &unk_25048;
                  if ((v82 - 12356) < 7 || v82 == 12387 || v82 == 12431)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_25058, 2uLL))
                {
                  v77 = a2[2];
                  v9 = 2;
                  v5 = &unk_25064;
                  if (v77 == 12356 || (v77 - 12363) < 9)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_25078, 2uLL))
                {
                  v83 = a2[2];
                  v9 = 2;
                  v5 = &unk_25084;
                  if ((v83 - 12356) < 7 || v83 == 12387 || v83 == 12431)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_25094, 2uLL))
                {
                  v84 = a2[2];
                  if (v84 - 12382) >= 0xFFFFFFF7 && (v84)
                  {
                    v5 = &unk_250A0;
                    goto LABEL_310;
                  }

                  v9 = 2;
                  v5 = &unk_250A0;
                  if ((v84 - 12425) < 5 || v84 == 12387)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_250B0, 2uLL))
                {
                  v85 = a2[2];
                  v9 = 2;
                  v5 = &unk_250BC;
                  if ((v85 - 12356) < 7 || v85 == 12387 || v85 == 12431)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_250D0, 2uLL))
                {
                  v86 = a2[2];
                  v9 = 2;
                  v5 = &unk_250DC;
                  if ((v86 - 12414) < 5 || v86 == 12435)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_250EC, 2uLL))
                {
                  v87 = a2[2] - 12356;
                  if (v87 <= 0x19 && ((1 << v87) & 0x2022881) != 0)
                  {
                    v5 = &unk_250F8;
                    goto LABEL_310;
                  }
                }

                if (!wcsncmp(a2, dword_25108, 2uLL))
                {
                  v88 = a2[2] - 12400;
                  if (v88 <= 0x23 && ((1 << v88) & 0x800001249) != 0)
                  {
                    v5 = &unk_25114;
                    goto LABEL_62;
                  }
                }

                if (!wcsncmp(a2, dword_25124, 2uLL))
                {
                  v78 = a2[3];
                  v9 = 3;
                  v5 = &unk_25130;
                  if (v78 == 12356 || (v78 - 12363) < 9)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_25144, 2uLL) && (a2[2] & 0xFFFFFFFD) == 0x3058)
                {
                  v5 = &unk_25150;
                  goto LABEL_310;
                }

                if (!wcsncmp(a2, dword_25160, 2uLL))
                {
                  v89 = a2[2];
                  v9 = 2;
                  v5 = &unk_2516C;
                  if ((v89 - 12356) < 7)
                  {
                    goto LABEL_49;
                  }

                  v90 = v89 - 12379;
                  if (v90 <= 0x34 && ((1 << v90) & 0x10000000000101) != 0)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_2517C, 2uLL))
                {
                  v91 = a2[2];
                  if (v91 - 12382) >= 0xFFFFFFF7 && (v91)
                  {
                    v5 = &unk_25188;
                    goto LABEL_310;
                  }
                }

                if (!wcsncmp(a2, dword_25198, 2uLL))
                {
                  v92 = a2[2];
                  v9 = 2;
                  v5 = &unk_251A4;
                  if ((v92 - 12414) < 5 || v92 == 12435)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_251B8, 2uLL) && (a2[2] - 12425) < 4)
                {
                  v5 = &unk_251C4;
                  goto LABEL_310;
                }

                if (!wcsncmp(a2, dword_251D4, 2uLL))
                {
                  v94 = a2[2];
                  if (v94 - 12382) >= 0xFFFFFFF7 && (v94)
                  {
                    v5 = &unk_251E0;
                    goto LABEL_310;
                  }

                  v9 = 2;
                  v5 = &unk_251E0;
                  if ((v94 - 12425) < 5 || v94 == 12387)
                  {
                    goto LABEL_49;
                  }
                }

                if (!wcsncmp(a2, dword_251F0, 2uLL))
                {
                  v95 = a2[2] - 12360;
                  if (v95 <= 0x39 && ((1 << v95) & 0x240000000000001) != 0)
                  {
                    v5 = &unk_251FC;
                    goto LABEL_310;
                  }
                }

                if (!wcsncmp(a2, dword_2520C, 2uLL) && a2[2] == 12360)
                {
                  v5 = &unk_25218;
                  goto LABEL_310;
                }

                if (wcsncmp(a2, dword_25228, 2uLL))
                {
LABEL_431:
                  if (!wcsncmp(a2, dword_25244, 2uLL))
                  {
                    v97 = a2[2];
                    if (v97 - 12382) >= 0xFFFFFFF7 && (v97)
                    {
                      v5 = &unk_25250;
                      goto LABEL_310;
                    }

                    v9 = 2;
                    v5 = &unk_25250;
                    if ((v97 - 12425) < 5 || v97 == 12387)
                    {
                      goto LABEL_49;
                    }
                  }

                  if (!wcsncmp(a2, dword_25264, 2uLL))
                  {
                    v93 = a2[2];
                    v9 = 2;
                    v5 = &unk_25270;
                    if (v93 == 12360 || (v93 - 12363) < 9)
                    {
                      goto LABEL_49;
                    }
                  }

                  if (!wcsncmp(a2, dword_25284, 2uLL) && a2[2] == 12360)
                  {
                    v5 = &unk_25290;
                    goto LABEL_310;
                  }

                  if (wcsncmp(a2, dword_252A4, 2uLL))
                  {
LABEL_452:
                    if (!wcsncmp(a2, dword_252C0, 2uLL))
                    {
                      v103 = a2[2];
                      if ((v103 - 12364) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_252CC;
                        if ((v103 - 12400) <= 0x23 && ((1 << (v103 - 112)) & 0x800001249) != 0 || v103 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if ((v103 & 1) == 0)
                      {
                        v5 = &unk_252CC;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_252DC, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_252E8;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_252F8, 2uLL))
                    {
                      v98 = a2[2];
                      v9 = 2;
                      v5 = &unk_25304;
                      if (v98 == 12356 || (v98 - 12363) < 9)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25318, 2uLL))
                    {
                      v104 = a2[2];
                      if (v104 - 12382) >= 0xFFFFFFF7 && (v104)
                      {
                        v5 = &unk_25324;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25324;
                      if ((v104 - 12425) < 5 || v104 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25334, 2uLL))
                    {
                      v105 = a2[2];
                      v9 = 2;
                      v5 = &unk_25340;
                      if ((v105 - 12425) < 5 || v105 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25350, 2uLL))
                    {
                      v106 = a2[2];
                      v9 = 2;
                      v5 = &unk_2535C;
                      if ((v106 - 12370) <= 0x3D && ((1 << (v106 - 82)) & 0x2F80000000020001) != 0)
                      {
                        goto LABEL_49;
                      }

                      if (v106 == 12360)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2536C, 2uLL))
                    {
                      v99 = a2[2];
                      v9 = 2;
                      v5 = &unk_25378;
                      if ((v99 - 12414) < 5 || v99 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2538C, 2uLL))
                    {
                      v100 = a2[2];
                      if (v100 == 12428 || (v100 - 12382) >= 0xFFFFFFF7 && (v100 & 1) != 0)
                      {
                        v5 = &unk_25398;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_253A8, 2uLL))
                    {
                      v107 = a2[2];
                      v9 = 2;
                      v5 = &unk_253B4;
                      if ((v107 - 12425) < 5 || v107 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_253C4, 2uLL))
                    {
                      v108 = a2[2];
                      v9 = 2;
                      v5 = &unk_253D0;
                      if ((v108 - 12387) <= 0x30 && ((1 << (v108 - 99)) & 0x11000F8000001) != 0)
                      {
                        goto LABEL_49;
                      }

                      if ((v108 - 12356) < 7)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_253E0, 2uLL))
                    {
                      v109 = a2[2];
                      v9 = 2;
                      v5 = &unk_253EC;
                      if (v109 == 12394 || v109 == 12397)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_253FC, 2uLL))
                    {
                      v110 = a2[2];
                      v9 = 2;
                      v5 = &unk_25408;
                      if ((v110 - 12425) < 5 || v110 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2541C, 2uLL))
                    {
                      v111 = a2[2];
                      if ((v111 - 12364) > 8)
                      {
                        if (v111 == 12356)
                        {
                          goto LABEL_522;
                        }
                      }

                      else if ((v111 & 1) == 0)
                      {
LABEL_522:
                        v5 = &unk_25428;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25438, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_25444;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_25458, 2uLL))
                    {
                      if ((v112 = a2[2], (v112 - 12356) <= 0x3D) && ((1 << (v112 - 68)) & 0x2400000080020881) != 0 || (v112 - 12425) < 5)
                      {
                        v5 = &unk_25464;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25474, 2uLL))
                    {
                      v113 = a2[2];
                      if ((v113 - 12364) > 8)
                      {
                        if (v113 == 12356)
                        {
                          goto LABEL_539;
                        }
                      }

                      else if ((v113 & 1) == 0)
                      {
LABEL_539:
                        v5 = &unk_25480;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25490, 2uLL))
                    {
                      v114 = a2[2];
                      v9 = 2;
                      v5 = &unk_2549C;
                      if ((v114 - 12356) < 7 || v114 == 12387 || v114 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_254AC, 2uLL))
                    {
                      v115 = a2[2];
                      v9 = 2;
                      v5 = &unk_254B8;
                      if ((v115 - 12356) < 7 || v115 == 12387 || v115 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_254C8, 2uLL))
                    {
                      v116 = a2[2];
                      v9 = 2;
                      v5 = &unk_254D4;
                      if (v116 == 12356 || (v116 - 12363) < 9)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_254E4, 2uLL))
                    {
                      v117 = a2[2];
                      v9 = 2;
                      v5 = &unk_254F0;
                      if (v117 == 12356 || (v117 - 12363) < 9 || (v117 - 12425) < 5 || (((v117 - 12373) < 9) & v117) != 0)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25500, 2uLL) && (a2[2] & 0xFFFFFFFD) == 0x3058)
                    {
                      v5 = &unk_2550C;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_2551C, 2uLL))
                    {
                      v118 = a2[2];
                      v9 = 2;
                      v5 = &unk_25528;
                      if ((v118 - 12414) < 5 || v118 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2553C, 2uLL))
                    {
                      v119 = a2[2];
                      v9 = 2;
                      v5 = &unk_25548;
                      if ((v119 - 12356) < 7 || v119 == 12387 || v119 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25558, 2uLL))
                    {
                      v120 = a2[2];
                      v9 = 2;
                      v5 = &unk_25564;
                      if ((v120 - 12425) < 5 || v120 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25574, 2uLL))
                    {
                      v121 = a2[2];
                      v9 = 2;
                      v5 = &unk_25580;
                      if ((v121 - 12356) < 7 || v121 == 12387 || v121 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25590, 2uLL))
                    {
                      v122 = a2[2];
                      v9 = 2;
                      v5 = &unk_2559C;
                      if ((v122 - 12425) < 5 || v122 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_255AC, 2uLL))
                    {
                      v123 = a2[2];
                      if ((v123 - 12373) > 8)
                      {
                        if (v123 == 12428)
                        {
                          goto LABEL_580;
                        }
                      }

                      else if (v123)
                      {
LABEL_580:
                        v5 = &unk_255B8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_255CC, 2uLL))
                    {
                      v124 = a2[2];
                      if ((v124 - 12363) < 9)
                      {
LABEL_586:
                        v5 = &unk_255D8;
                        goto LABEL_310;
                      }

                      if ((v124 - 12373) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_255D8;
                        if ((v124 - 12387) <= 0x2A && ((1 << (v124 - 99)) & 0x7C000000001) != 0 || v124 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v124)
                      {
                        goto LABEL_586;
                      }
                    }

                    if (!wcsncmp(a2, dword_255EC, 2uLL))
                    {
                      v125 = a2[2];
                      v9 = 2;
                      v5 = &unk_255F8;
                      if ((v125 - 12425) < 5 || v125 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2560C, 2uLL))
                    {
                      v126 = a2[2];
                      v9 = 2;
                      v5 = &unk_25618;
                      if ((v126 - 12425) < 5 || v126 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25628, 2uLL))
                    {
                      v127 = a2[2] - 12375;
                      if (v127 <= 0x3C && ((1 << v127) & 0x10000F8000000001) != 0)
                      {
                        v5 = &unk_25634;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25644, 2uLL))
                    {
                      v128 = a2[2];
                      v9 = 2;
                      v5 = &unk_25650;
                      if ((v128 - 12356) < 7 || v128 == 12387 || v128 == 12431)
                      {
                        goto LABEL_49;
                      }

                      if ((v128 - 12373) > 8)
                      {
                        if (v128 == 12409)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v128)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25660, 2uLL))
                    {
                      v129 = a2[2];
                      v9 = 2;
                      v5 = &unk_2566C;
                      if ((v129 - 12356) < 7)
                      {
                        goto LABEL_49;
                      }

                      v130 = v129 - 12375;
                      if (v130 <= 0x38 && ((1 << v130) & 0x100000000001001) != 0)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2567C, 2uLL))
                    {
                      v131 = a2[2];
                      v9 = 2;
                      v5 = &unk_25688;
                      if (v131 == 12360 || v131 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25698, 2uLL))
                    {
                      v132 = a2[2];
                      v9 = 2;
                      v5 = &unk_256A4;
                      if ((v132 - 12425) < 5 || v132 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_256B8, 2uLL))
                    {
                      v133 = a2[2];
                      v9 = 2;
                      v5 = &unk_256C4;
                      if ((v133 - 12425) < 5 || v133 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_256D4, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_256E0;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_256F4, 2uLL))
                    {
                      v134 = a2[2];
                      v9 = 2;
                      v5 = &unk_25700;
                      if ((v134 - 12425) < 5 || v134 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25710, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_2571C;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_2572C, 2uLL))
                    {
                      v135 = a2[2];
                      v9 = 2;
                      v5 = &unk_25738;
                      if ((v135 - 12414) < 5 || v135 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25748, 2uLL))
                    {
                      v136 = a2[2];
                      v9 = 2;
                      v5 = &unk_25754;
                      if ((v136 - 12425) < 5 || v136 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25764, 2uLL))
                    {
                      v137 = a2[2];
                      v9 = 2;
                      v5 = &unk_25770;
                      if ((v137 - 12425) < 5 || v137 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25780, 2uLL))
                    {
                      v138 = a2[2];
                      if ((v138 - 12364) <= 8 && (v138 & 1) == 0)
                      {
                        goto LABEL_647;
                      }

                      if ((v138 - 12373) <= 8)
                      {
                        if ((v138 & 1) == 0)
                        {
                          goto LABEL_648;
                        }

LABEL_647:
                        v5 = &unk_2578C;
                        goto LABEL_310;
                      }

                      v139 = v138 - 12400;
                      if (v139 <= 0x23 && ((1 << v139) & 0x800001249) != 0)
                      {
                        goto LABEL_647;
                      }
                    }

LABEL_648:
                    if (!wcsncmp(a2, dword_2579C, 2uLL))
                    {
                      v140 = a2[2];
                      if ((v140 - 12373) > 8)
                      {
                        if (v140 == 12428)
                        {
                          goto LABEL_651;
                        }
                      }

                      else if (v140)
                      {
LABEL_651:
                        v5 = &unk_257A8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_257B8, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_257C4;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_257D4, 2uLL))
                    {
                      v141 = a2[2];
                      if (v141 - 12382) >= 0xFFFFFFF7 && (v141)
                      {
                        v5 = &unk_257E0;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_257E0;
                      if ((v141 - 12425) < 5 || v141 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_257F4, 2uLL))
                    {
                      v142 = a2[2];
                      v9 = 2;
                      v5 = &unk_25800;
                      if ((v142 - 12425) < 5 || v142 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25814, 2uLL))
                    {
                      v143 = a2[2] - 12400;
                      if (v143 <= 0x23 && ((1 << v143) & 0x800001249) != 0)
                      {
                        v5 = &unk_25820;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25830, 2uLL))
                    {
                      v144 = a2[2];
                      v9 = 2;
                      v5 = &unk_2583C;
                      if (v144 == 12360 || v144 == 12370)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2584C, 2uLL))
                    {
                      v145 = a2[2];
                      v9 = 2;
                      v5 = &unk_25858;
                      if ((v145 - 12356) < 7 || v145 == 12387 || v145 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25868, 2uLL))
                    {
                      v146 = a2[2];
                      v9 = 2;
                      v5 = &unk_25874;
                      if (v146 == 12414 || v146 == 12417)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25888, 2uLL))
                    {
                      v147 = a2[2];
                      if ((v147 - 12363) > 8)
                      {
                        if (v147 == 12356)
                        {
                          goto LABEL_682;
                        }
                      }

                      else if (v147)
                      {
LABEL_682:
                        v5 = &unk_25894;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_258A8, 2uLL))
                    {
                      v148 = a2[2];
                      if (v148 - 12382) >= 0xFFFFFFF7 && (v148)
                      {
                        v5 = &unk_258B4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_258C4, 2uLL))
                    {
                      v149 = a2[2];
                      if ((v149 - 12364) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_258D0;
                        if ((v149 - 12387) <= 0x2A && ((1 << (v149 - 99)) & 0x7C000000001) != 0 || v149 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if ((v149 & 1) == 0)
                      {
                        v5 = &unk_258D0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_258E0, 2uLL))
                    {
                      v150 = a2[2];
                      if ((v150 - 12363) > 8)
                      {
                        if (v150 == 12356)
                        {
                          goto LABEL_698;
                        }
                      }

                      else if (v150)
                      {
LABEL_698:
                        v5 = &unk_258EC;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25900, 2uLL))
                    {
                      v151 = a2[2];
                      v9 = 2;
                      v5 = &unk_2590C;
                      if (v151 == 12390 || v151 == 12427)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2591C, 2uLL))
                    {
                      v152 = a2[2];
                      if (v152 - 12382) >= 0xFFFFFFF7 && (v152)
                      {
                        v5 = &unk_25928;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25928;
                      if ((v152 - 12425) < 5 || v152 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2593C, 2uLL))
                    {
                      v153 = a2[2];
                      v9 = 2;
                      v5 = &unk_25948;
                      if ((v153 - 12414) <= 0x15 && ((1 << (v153 - 126)) & 0x20001F) != 0)
                      {
                        goto LABEL_49;
                      }

                      if (v153 == 12363)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2595C, 2uLL))
                    {
                      v154 = a2[2];
                      v9 = 2;
                      v5 = &unk_25968;
                      if ((v154 - 12425) < 5 || v154 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2597C, 2uLL))
                    {
                      v155 = a2[2];
                      if ((v155 - 12414) < 5 || (v156 = v155 - 12387, v156 <= 0x30) && ((1 << v156) & 0x107C000000001) != 0)
                      {
                        v5 = &unk_25988;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_2599C, 2uLL))
                    {
                      v157 = a2[2];
                      if (v157 - 12382) >= 0xFFFFFFF7 && (v157)
                      {
                        v5 = &unk_259A8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_259B8, 2uLL) && a2[2] == 12409)
                    {
                      v5 = &unk_259C4;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_259D4, 2uLL))
                    {
                      v158 = a2[2];
                      if (v158 - 12382) >= 0xFFFFFFF7 && (v158)
                      {
                        v5 = &unk_259E0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_259F0, 2uLL))
                    {
                      v159 = a2[2];
                      v9 = 2;
                      v5 = &unk_259FC;
                      if ((v159 - 12356) < 7 || v159 == 12387 || v159 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25A0C, 2uLL))
                    {
                      v160 = a2[2];
                      if (v160 - 12382) >= 0xFFFFFFF7 && (v160)
                      {
                        v5 = &unk_25A18;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25A2C, 2uLL))
                    {
                      v161 = a2[2];
                      v9 = 2;
                      v5 = &unk_25A38;
                      if (v161 == 12416 || v161 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25A48, 2uLL))
                    {
                      v162 = a2[2];
                      if ((v162 - 12364) <= 8 && (v162 & 1) == 0)
                      {
                        v5 = &unk_25A54;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25A54;
                      if ((v162 - 12414) < 5 || v162 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25A64, 2uLL))
                    {
                      v163 = a2[2];
                      v9 = 2;
                      v5 = &unk_25A70;
                      if ((v163 - 12425) < 5 || v163 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25A84, 2uLL))
                    {
                      v164 = a2[2];
                      v9 = 2;
                      v5 = &unk_25A90;
                      if ((v164 - 12425) < 5 || v164 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25AA0, 2uLL))
                    {
                      v165 = a2[2];
                      v9 = 2;
                      v5 = &unk_25AAC;
                      if ((v165 - 12425) < 5 || v165 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25ABC, 2uLL))
                    {
                      v166 = a2[2];
                      if ((v166 - 12364) > 8)
                      {
                        if (v166 == 12356)
                        {
                          goto LABEL_761;
                        }
                      }

                      else if ((v166 & 1) == 0)
                      {
LABEL_761:
                        v5 = &unk_25AC8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25AD8, 2uLL) && (a2[2] - 12383) < 0xA)
                    {
                      v5 = &unk_25AE4;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_25AF8, 2uLL))
                    {
                      v167 = a2[2];
                      v9 = 2;
                      v5 = &unk_25B04;
                      if (v167 == 12360 || v167 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25B14, 2uLL))
                    {
                      v168 = a2[2];
                      if ((v168 - 12363) > 8)
                      {
                        if (v168 == 12356)
                        {
                          goto LABEL_772;
                        }
                      }

                      else if (v168)
                      {
LABEL_772:
                        v5 = &unk_25B20;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25B30, 2uLL))
                    {
                      v169 = a2[2];
                      v9 = 2;
                      v5 = &unk_25B3C;
                      if ((v169 - 12356) < 7 || v169 == 12387 || v169 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25B4C, 2uLL))
                    {
                      v170 = a2[2];
                      if ((v170 - 12373) > 8)
                      {
                        if (v170 == 12428)
                        {
                          goto LABEL_781;
                        }
                      }

                      else if (v170)
                      {
LABEL_781:
                        v5 = &unk_25B58;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25B68, 2uLL))
                    {
                      v171 = a2[2];
                      v9 = 2;
                      v5 = &unk_25B74;
                      if ((v171 - 12425) < 5 || v171 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25B84, 2uLL))
                    {
                      v172 = a2[2];
                      v9 = 2;
                      v5 = &unk_25B90;
                      if ((v172 - 12356) < 7 || v172 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25BA4, 2uLL))
                    {
                      v173 = a2[2];
                      if (v173 - 12372) >= 0xFFFFFFF7 && (v173)
                      {
                        v5 = &unk_25BB0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25BC0, 2uLL) && a2[2] == 12397)
                    {
                      v5 = &unk_25BCC;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_25BE0, 2uLL))
                    {
                      v174 = a2[2];
                      if (v174 - 12382) >= 0xFFFFFFF7 && (v174)
                      {
                        v5 = &unk_25BEC;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25C00, 2uLL))
                    {
                      v175 = a2[2];
                      if (v175 - 12382) >= 0xFFFFFFF7 && (v175)
                      {
                        v5 = &unk_25C0C;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25C20, 2uLL))
                    {
                      v176 = a2[2];
                      if (v176 - 12382) >= 0xFFFFFFF7 && (v176)
                      {
                        v5 = &unk_25C2C;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25C2C;
                      if ((v176 - 12425) < 5 || v176 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25C40, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_25C4C;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_25C5C, 2uLL))
                    {
                      v177 = a2[2];
                      v9 = 2;
                      v5 = &unk_25C68;
                      if ((v177 - 12425) < 5 || v177 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25C7C, 2uLL))
                    {
                      v178 = a2[2];
                      if (v178 - 12382) >= 0xFFFFFFF7 && (v178)
                      {
                        v5 = &unk_25C88;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25C98, 2uLL))
                    {
                      v179 = a2[2];
                      v9 = 2;
                      v5 = &unk_25CA4;
                      if ((v179 - 12425) < 5 || v179 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25CB4, 2uLL))
                    {
                      v180 = a2[2];
                      v9 = 2;
                      v5 = &unk_25CC0;
                      if ((v180 - 12356) < 7 || v180 == 12387 || v180 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25CD0, 2uLL))
                    {
                      v181 = a2[2];
                      v9 = 2;
                      v5 = &unk_25CDC;
                      if ((v181 - 12356) < 7 || v181 == 12387 || v181 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25CF0, 2uLL))
                    {
                      v182 = a2[2];
                      v9 = 2;
                      v5 = &unk_25CFC;
                      if ((v182 - 12425) < 5 || v182 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25D10, 2uLL))
                    {
                      v183 = a2[2] - 12414;
                      if (v183 <= 0x15 && ((1 << v183) & 0x20401F) != 0)
                      {
                        v5 = &unk_25D1C;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25D2C, 2uLL))
                    {
                      v184 = a2[2];
                      if (v184 - 12382) >= 0xFFFFFFF7 && (v184)
                      {
                        v5 = &unk_25D38;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25D38;
                      if ((v184 - 12425) < 5 || v184 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25D48, 2uLL))
                    {
                      v185 = a2[2];
                      if ((v185 - 12363) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_25D54;
                        if ((v185 - 12387) <= 0x2A && ((1 << (v185 - 99)) & 0x7C000000001) != 0 || v185 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v185)
                      {
                        v5 = &unk_25D54;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25D68, 2uLL))
                    {
                      v186 = a2[2];
                      v9 = 2;
                      v5 = &unk_25D74;
                      if (v186 == 12360 || v186 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25D84, 2uLL))
                    {
                      v187 = a2[2];
                      v9 = 2;
                      v5 = &unk_25D90;
                      if ((v187 - 12414) < 5 || v187 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25DA0, 2uLL))
                    {
                      v188 = a2[2];
                      v9 = 2;
                      v5 = &unk_25DAC;
                      if (v188 == 12414 || v188 == 12417)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25DBC, 2uLL))
                    {
                      v189 = a2[2];
                      v9 = 2;
                      v5 = &unk_25DC8;
                      if ((v189 - 12356) < 7 || v189 == 12387 || v189 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25DDC, 2uLL))
                    {
                      v190 = a2[2];
                      if ((v190 - 12364) > 8)
                      {
                        if (v190 == 12356)
                        {
                          goto LABEL_867;
                        }
                      }

                      else if ((v190 & 1) == 0)
                      {
LABEL_867:
                        v5 = &unk_25DE8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25DF8, 2uLL))
                    {
                      v191 = a2[2];
                      if ((v191 - 12363) > 8)
                      {
                        v192 = v191 - 12356;
                        if (v192 <= 0x3D && ((1 << v192) & 0x2C00000002020001) != 0)
                        {
                          v5 = &unk_25E04;
                          goto LABEL_310;
                        }
                      }

                      else
                      {
                        v9 = 2;
                        v5 = &unk_25E04;
                        if (v191 == 12364 || (v191 & 1) != 0)
                        {
                          goto LABEL_49;
                        }
                      }
                    }

                    if (!wcsncmp(a2, dword_25E14, 2uLL))
                    {
                      v193 = a2[2];
                      if (v193 - 12382) >= 0xFFFFFFF7 && (v193)
                      {
                        v5 = &unk_25E20;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25E30, 2uLL))
                    {
                      v194 = a2[2];
                      if (v194 - 12382) >= 0xFFFFFFF7 && (v194)
                      {
                        v5 = &unk_25E3C;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25E3C;
                      if ((v194 - 12425) < 5 || v194 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25E4C, 2uLL))
                    {
                      v195 = a2[2];
                      if ((v195 - 12363) <= 8)
                      {
                        if ((v195 & 1) == 0)
                        {
                          goto LABEL_894;
                        }

LABEL_893:
                        v5 = &unk_25E58;
                        goto LABEL_310;
                      }

                      v196 = v195 - 12356;
                      if (v196 <= 0x3D && ((1 << v196) & 0x2400000000000001) != 0)
                      {
                        goto LABEL_893;
                      }
                    }

LABEL_894:
                    if (!wcsncmp(a2, dword_25E6C, 2uLL) && a2[2] == 12360)
                    {
                      v5 = &unk_25E78;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_25E88, 2uLL))
                    {
                      v197 = a2[2];
                      if (v197 - 12382) >= 0xFFFFFFF7 && (v197)
                      {
                        v5 = &unk_25E94;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25E94;
                      if ((v197 - 12425) < 5 || v197 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25EA4, 2uLL))
                    {
                      v198 = a2[2];
                      if (v198 - 12382) >= 0xFFFFFFF7 && (v198)
                      {
                        v5 = &unk_25EB0;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25EB0;
                      if ((v198 - 12425) < 5 || v198 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25EC0, 2uLL))
                    {
                      v199 = a2[2] - 12414;
                      if (v199 <= 0x15 && ((1 << v199) & 0x20005F) != 0)
                      {
                        v5 = &unk_25ECC;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25EE0, 2uLL))
                    {
                      v200 = a2[2];
                      if ((v200 - 12363) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_25EEC;
                        if (v200 == 12356 || v200 == 12428 || (v200 - 12382) >= 0xFFFFFFF7 && (v200 & 1) != 0)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v200)
                      {
                        v5 = &unk_25EEC;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_25EEC;
                      if ((v200 - 12425) < 5 || v200 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F00, 2uLL))
                    {
                      v201 = a2[2];
                      v9 = 2;
                      v5 = &unk_25F0C;
                      if ((v201 - 12425) < 5 || v201 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F20, 2uLL))
                    {
                      v202 = a2[2];
                      v9 = 2;
                      v5 = &unk_25F2C;
                      if ((v202 - 12425) < 5 || v202 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F40, 2uLL))
                    {
                      v203 = a2[2];
                      v9 = 2;
                      v5 = &unk_25F4C;
                      if ((v203 - 12414) < 5 || v203 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F5C, 2uLL))
                    {
                      v204 = a2[2];
                      if ((v204 - 12400) <= 0x23 && ((1 << (v204 - 112)) & 0x800001249) != 0 || (v204 - 12356) < 7)
                      {
                        goto LABEL_938;
                      }

                      if ((v204 - 12373) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_25F68;
                        if (v204 == 12387 || v204 == 12431)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v204)
                      {
LABEL_938:
                        v5 = &unk_25F68;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F78, 2uLL))
                    {
                      v205 = a2[2] - 12356;
                      if (v205 <= 0x11 && ((1 << v205) & 0x22881) != 0)
                      {
                        v5 = &unk_25F84;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_25F98, 2uLL))
                    {
                      v206 = a2[2];
                      v9 = 2;
                      v5 = &unk_25FA4;
                      if ((v206 - 12425) < 5 || v206 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25FB8, 2uLL))
                    {
                      v207 = a2[2];
                      v9 = 2;
                      v5 = &unk_25FC4;
                      if ((v207 - 12414) < 5 || v207 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25FD8, 2uLL))
                    {
                      v208 = a2[2];
                      v9 = 2;
                      v5 = &unk_25FE4;
                      if ((v208 - 12414) < 5 || v208 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_25FF4, 2uLL))
                    {
                      v209 = a2[2];
                      v9 = 2;
                      v5 = &unk_26000;
                      if ((v209 - 12356) < 7 || v209 == 12387 || v209 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26014, 2uLL))
                    {
                      v210 = a2[2];
                      v9 = 2;
                      v5 = &unk_26020;
                      if ((v210 - 12425) < 5 || v210 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26034, 2uLL))
                    {
                      v211 = a2[2];
                      if ((v211 - 12363) <= 8)
                      {
                        goto LABEL_965;
                      }

                      if (v211 == 12356)
                      {
LABEL_966:
                        v5 = &unk_26040;
                        goto LABEL_310;
                      }

                      if ((v211 - 12382) >= 0xFFFFFFF7)
                      {
LABEL_965:
                        if (v211)
                        {
                          goto LABEL_966;
                        }
                      }

                      v9 = 2;
                      v5 = &unk_26040;
                      if ((v211 - 12425) < 5 || v211 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26050, 2uLL))
                    {
                      v212 = a2[2];
                      v9 = 2;
                      v5 = &unk_2605C;
                      if ((v212 - 12356) < 7 || v212 == 12387 || v212 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2606C, 2uLL))
                    {
                      v213 = a2[2];
                      if ((v213 - 12373) > 8)
                      {
                        if (v213 == 12428)
                        {
                          goto LABEL_976;
                        }
                      }

                      else if (v213)
                      {
LABEL_976:
                        v5 = &unk_26078;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_2608C, 2uLL))
                    {
                      v214 = a2[2];
                      if (v214 - 12382) >= 0xFFFFFFF7 && (v214)
                      {
                        v5 = &unk_26098;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_26098;
                      if ((v214 - 12425) < 5 || v214 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_260A8, 2uLL))
                    {
                      v215 = a2[2];
                      if ((v215 - 12363) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_260B4;
                        if ((v215 - 12414) <= 0x15 && ((1 << (v215 - 126)) & 0x20001F) != 0 || v215 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v215)
                      {
                        v5 = &unk_260B4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_260C8, 2uLL))
                    {
                      v216 = a2[2] - 12379;
                      if (v216 <= 0x32 && ((1 << v216) & 0x7C00000000101) != 0)
                      {
                        v5 = &unk_260D4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_260E8, 2uLL))
                    {
                      v217 = a2[2];
                      v9 = 2;
                      v5 = &unk_260F4;
                      if ((v217 - 12356) < 7 || v217 == 12387 || v217 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26108, 2uLL))
                    {
                      v218 = a2[2];
                      v9 = 2;
                      v5 = &unk_26114;
                      if ((v218 - 12414) < 5 || v218 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26124, 2uLL))
                    {
                      v219 = a2[2];
                      v9 = 2;
                      v5 = &unk_26130;
                      if ((v219 - 12425) < 5 || v219 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26140, 2uLL))
                    {
                      v220 = a2[2];
                      v9 = 2;
                      v5 = &unk_2614C;
                      if ((v220 - 12414) < 5 || v220 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2615C, 2uLL))
                    {
                      v221 = a2[2];
                      v9 = 2;
                      v5 = &unk_26168;
                      if ((v221 - 12425) < 5 || v221 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26178, 2uLL))
                    {
                      v222 = a2[2];
                      if ((v222 - 12363) > 8)
                      {
                        v223 = v222 - 12356;
                        if (v223 > 0x3D || ((1 << v223) & 0x2400000000000001) == 0)
                        {
                          goto LABEL_1018;
                        }
                      }

                      else if ((v222 & 1) == 0)
                      {
                        goto LABEL_1018;
                      }

                      v5 = &unk_26184;
                      goto LABEL_310;
                    }

LABEL_1018:
                    if (!wcsncmp(a2, dword_26198, 2uLL))
                    {
                      if ((v224 = a2[2], (v224 - 12382) >= 0xFFFFFFF7) && (v224 & 1) != 0 || (v225 = v224 - 12414, v225 <= 0x15) && ((1 << v225) & 0x20401F) != 0)
                      {
                        v5 = &unk_261A4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_261B8, 2uLL))
                    {
                      v226 = a2[2];
                      if (v226 - 12382) >= 0xFFFFFFF7 && (v226)
                      {
                        v5 = &unk_261C4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_261D4, 2uLL))
                    {
                      v227 = a2[2];
                      if ((v227 - 12373) > 8)
                      {
                        v228 = v227 - 12387;
                        if (v228 > 0x29 || ((1 << v228) & 0x20000000003) == 0)
                        {
                          goto LABEL_1035;
                        }
                      }

                      else if ((v227 & 1) == 0)
                      {
                        goto LABEL_1035;
                      }

                      v5 = &unk_261E0;
                      goto LABEL_310;
                    }

LABEL_1035:
                    if (!wcsncmp(a2, dword_261F0, 2uLL))
                    {
                      v229 = a2[2];
                      v9 = 2;
                      v5 = &unk_261FC;
                      if ((v229 - 12424) < 6 || v229 == 12383 || v229 == 12390)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2620C, 2uLL))
                    {
                      v230 = a2[2];
                      v9 = 2;
                      v5 = &unk_26218;
                      if ((v230 - 12425) < 5 || v230 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26228, 2uLL))
                    {
                      v231 = a2[2] - 12383;
                      if (v231 <= 0x2E && ((1 << v231) & 0x500000000081) != 0)
                      {
                        v5 = &unk_26234;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26244, 2uLL))
                    {
                      v232 = a2[2];
                      v9 = 2;
                      v5 = &unk_26250;
                      if ((v232 - 12356) < 7 || v232 == 12387 || v232 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26260, 2uLL))
                    {
                      v233 = a2[2];
                      v9 = 2;
                      v5 = &unk_2626C;
                      if ((v233 - 12425) < 5 || v233 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2627C, 2uLL))
                    {
                      v234 = a2[2];
                      v9 = 2;
                      v5 = &unk_26288;
                      if ((v234 - 12425) < 5 || (((v234 - 12373) < 9) & v234) != 0)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26298, 2uLL))
                    {
                      v235 = a2[2];
                      v9 = 2;
                      v5 = &unk_262A4;
                      if ((v235 - 12425) < 5 || v235 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_262B4, 2uLL))
                    {
                      v236 = a2[2];
                      if ((v236 - 12363) > 8)
                      {
                        if (v236 == 12356)
                        {
                          goto LABEL_1062;
                        }
                      }

                      else if (v236)
                      {
LABEL_1062:
                        v5 = &unk_262C0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_262D4, 2uLL))
                    {
                      v237 = a2[2];
                      if ((v237 - 12363) > 8)
                      {
                        if (v237 == 12356)
                        {
                          goto LABEL_1067;
                        }
                      }

                      else if (v237)
                      {
LABEL_1067:
                        v5 = &unk_262E0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_262F0, 2uLL))
                    {
                      v238 = a2[2];
                      v9 = 2;
                      v5 = &unk_262FC;
                      if ((v238 - 12356) <= 0x3D && ((1 << (v238 - 68)) & 0x24000000800249FFLL) != 0)
                      {
                        goto LABEL_49;
                      }

                      if (v238 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2630C, 2uLL))
                    {
                      v239 = a2[2] - 12414;
                      if (v239 <= 0x15 && ((1 << v239) & 0x20481F) != 0)
                      {
                        v5 = &unk_26318;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26328, 2uLL))
                    {
                      v240 = a2[2];
                      if ((v240 - 12364) > 8)
                      {
                        if (v240 == 12356)
                        {
                          goto LABEL_1080;
                        }
                      }

                      else if ((v240 & 1) == 0)
                      {
LABEL_1080:
                        v5 = &unk_26334;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26344, 2uLL))
                    {
                      v241 = a2[2];
                      if ((v241 - 12364) > 8)
                      {
                        if (v241 == 12356)
                        {
                          goto LABEL_1085;
                        }
                      }

                      else if ((v241 & 1) == 0)
                      {
LABEL_1085:
                        v5 = &unk_26350;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26360, 2uLL))
                    {
                      v242 = a2[2];
                      if ((v242 - 12363) > 8)
                      {
                        if (((v242 - 12356) > 0x1F || ((1 << (v242 - 68)) & 0x80020001) == 0) && (v242 - 12425) >= 5)
                        {
                          goto LABEL_1097;
                        }
                      }

                      else if ((v242 & 1) == 0)
                      {
                        v9 = 2;
                        v5 = &unk_2636C;
                        if (v242 == 12367 || v242 == 12369)
                        {
                          goto LABEL_49;
                        }

                        goto LABEL_1097;
                      }

                      v5 = &unk_2636C;
                      goto LABEL_310;
                    }

LABEL_1097:
                    if (!wcsncmp(a2, dword_2637C, 2uLL))
                    {
                      v243 = a2[2];
                      if ((v243 - 12363) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_26388;
                        if (v243 == 12356 || v243 == 12360)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v243)
                      {
                        v5 = &unk_26388;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26398, 2uLL))
                    {
                      v244 = a2[2] - 12400;
                      if (v244 <= 0x23 && ((1 << v244) & 0x800001249) != 0)
                      {
                        v5 = &unk_263A4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_263B4, 2uLL))
                    {
                      v245 = a2[2];
                      if (v245 - 12382) >= 0xFFFFFFF7 && (v245)
                      {
                        v5 = &unk_263C0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_263D0, 2uLL))
                    {
                      v246 = a2[2];
                      v9 = 2;
                      v5 = &unk_263DC;
                      if ((v246 - 12425) < 5 || v246 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_263F0, 2uLL) && (a2[2] - 12425) < 5)
                    {
                      v5 = &unk_263FC;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_26410, 2uLL))
                    {
                      v247 = a2[2];
                      v9 = 2;
                      v5 = &unk_2641C;
                      if ((v247 - 12425) < 5 || v247 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2642C, 2uLL))
                    {
                      v248 = a2[2];
                      v9 = 2;
                      v5 = &unk_26438;
                      if ((v248 - 12425) < 5 || v248 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26448, 2uLL))
                    {
                      v249 = a2[2];
                      v9 = 2;
                      v5 = &unk_26454;
                      if ((v249 - 12356) < 7 || v249 == 12387 || v249 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26468, 2uLL))
                    {
                      v250 = a2[2] - 12400;
                      if (v250 <= 0x23 && ((1 << v250) & 0x800001249) != 0)
                      {
                        v5 = &unk_26474;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26484, 2uLL))
                    {
                      v251 = a2[2];
                      if ((v251 - 12363) > 8)
                      {
                        if (v251 == 12356)
                        {
                          goto LABEL_1134;
                        }
                      }

                      else if (v251)
                      {
LABEL_1134:
                        v5 = &unk_26490;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_264A0, 2uLL))
                    {
                      v252 = a2[2];
                      v9 = 2;
                      v5 = &unk_264AC;
                      if ((v252 - 12356) < 7 || v252 == 12387 || v252 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_264BC, 2uLL))
                    {
                      v253 = a2[2] - 12356;
                      if (v253 <= 0x3D && ((1 << v253) & 0x2C00000000000001) != 0)
                      {
                        v5 = &unk_264C8;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_264D8, 2uLL))
                    {
                      v254 = a2[2];
                      if (v254 - 12382) >= 0xFFFFFFF7 && (v254)
                      {
                        v5 = &unk_264E4;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_264E4;
                      if ((v254 - 12425) < 5 || v254 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_264F4, 2uLL))
                    {
                      v255 = a2[2];
                      if ((v255 - 12363) > 8)
                      {
                        if (v255 == 12356)
                        {
LABEL_1158:
                          v5 = &unk_26500;
                          goto LABEL_310;
                        }
                      }

                      else if (v255)
                      {
                        goto LABEL_1158;
                      }
                    }

                    if (!wcsncmp(a2, dword_26514, 2uLL))
                    {
                      v256 = a2[2];
                      if ((v256 - 12373) > 8)
                      {
                        if (v256 == 12428)
                        {
                          goto LABEL_1158;
                        }
                      }

                      else if (v256)
                      {
                        goto LABEL_1158;
                      }
                    }

                    if (!wcsncmp(a2, dword_26520, 2uLL) && a2[2] == 12417)
                    {
                      v5 = &unk_2652C;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_2653C, 2uLL))
                    {
                      v257 = a2[2];
                      v9 = 2;
                      v5 = &unk_26548;
                      if ((v257 - 12425) < 5 || v257 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26558, 2uLL))
                    {
                      v258 = a2[2];
                      v9 = 2;
                      v5 = &unk_26564;
                      if ((v258 - 12356) < 7 || v258 == 12387 || v258 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26574, 2uLL))
                    {
                      v259 = a2[2];
                      if ((v259 - 12363) > 8)
                      {
                        if (v259 == 12356)
                        {
                          goto LABEL_1173;
                        }
                      }

                      else if (v259)
                      {
LABEL_1173:
                        v5 = &unk_26580;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26594, 2uLL))
                    {
                      v260 = a2[2] - 12400;
                      if (v260 <= 0x23 && ((1 << v260) & 0x800001249) != 0)
                      {
                        v5 = &unk_265A0;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_265B0, 2uLL))
                    {
                      v261 = a2[2];
                      if (v261 - 12382) >= 0xFFFFFFF7 && (v261)
                      {
                        v5 = &unk_265BC;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_265CC, 2uLL) && a2[2] >> 1 == 6208)
                    {
                      v5 = &unk_265D8;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_265E8, 2uLL))
                    {
                      v262 = a2[2];
                      if (v262 - 12382) >= 0xFFFFFFF7 && (v262)
                      {
                        v5 = &unk_265F4;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26608, 2uLL))
                    {
                      v263 = a2[2];
                      if ((v263 - 12363) > 8)
                      {
                        v9 = 2;
                        v5 = &unk_26614;
                        if ((v263 - 12373) <= 0x3E && ((1 << (v263 - 85)) & 0x40003E0000000001) != 0 || v263 == 12356)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v263)
                      {
                        v5 = &unk_26614;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26624, 2uLL))
                    {
                      v264 = a2[2];
                      v9 = 2;
                      v5 = &unk_26630;
                      if ((v264 - 12425) < 5 || v264 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26644, 2uLL))
                    {
                      v265 = a2[2];
                      if ((v265 - 12364) > 8)
                      {
                        if (v265 == 12356)
                        {
                          goto LABEL_1203;
                        }
                      }

                      else if ((v265 & 1) == 0)
                      {
LABEL_1203:
                        v5 = &unk_26650;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_26660, 2uLL))
                    {
                      v266 = a2[2];
                      v9 = 2;
                      v5 = &unk_2666C;
                      if ((v266 - 12425) < 5 || v266 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26680, 2uLL))
                    {
                      v267 = a2[2];
                      if (v267 - 12382) >= 0xFFFFFFF7 && (v267)
                      {
                        v5 = &unk_2668C;
                        goto LABEL_310;
                      }
                    }

                    if (!wcsncmp(a2, dword_2669C, 2uLL))
                    {
                      v268 = a2[2];
                      v9 = 2;
                      v5 = &unk_266A8;
                      if ((v268 - 12425) < 5 || v268 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_266BC, 2uLL))
                    {
                      v269 = a2[2];
                      if ((v269 - 12363) <= 8)
                      {
                        if ((v269 & 1) == 0)
                        {
                          goto LABEL_1223;
                        }

LABEL_1222:
                        v5 = &unk_266C8;
                        goto LABEL_310;
                      }

                      if ((v269 - 12356) <= 0x3D && ((1 << (v269 - 68)) & 0x2400000082020001) != 0 || (v269 - 12425) < 5)
                      {
                        goto LABEL_1222;
                      }
                    }

LABEL_1223:
                    if (!wcsncmp(a2, dword_266D8, 2uLL))
                    {
                      v270 = a2[2];
                      v9 = 2;
                      v5 = &unk_266E4;
                      if ((v270 - 12425) < 5 || v270 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_266F4, 2uLL) && a2[2] == 12428)
                    {
                      v5 = &unk_26700;
                      goto LABEL_310;
                    }

                    if (!wcsncmp(a2, dword_26710, 2uLL))
                    {
                      v271 = a2[2];
                      if (v271 - 12382) >= 0xFFFFFFF7 && (v271)
                      {
                        v5 = &unk_2671C;
                        goto LABEL_310;
                      }

                      v9 = 2;
                      v5 = &unk_2671C;
                      if ((v271 - 12425) < 5 || v271 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_2672C, 2uLL))
                    {
                      v272 = a2[2];
                      v9 = 2;
                      v5 = &unk_26738;
                      if (v272 == 12356 || (v272 - 12363) < 9)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, dword_26748, 2uLL))
                    {
                      v273 = a2[2];
                      v9 = 2;
                      v5 = &unk_26754;
                      if ((v273 - 12356) < 7 || v273 == 12387 || v273 == 12431)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_26764, 1uLL))
                    {
                      v274 = a2[1];
                      if (v274 - 12356) < 7 || (v274 - 12372) >= 0xFFFFFFF7 && (v274)
                      {
                        v5 = &unk_2676C;
LABEL_1327:
                        v9 = 1;
                        goto LABEL_49;
                      }

                      v9 = 1;
                      v5 = &unk_2676C;
                      if ((v274 - 12364) <= 0x36 && ((1 << (v274 - 76)) & 0x7C008004800041) != 0)
                      {
                        goto LABEL_49;
                      }

                      v275 = v274 - 12425;
                      if (v275 <= 0xA && ((1 << v275) & 0x45F) != 0)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_26774, 1uLL))
                    {
                      v276 = a2[1] - 12383;
                      if (v276 <= 0x2E && ((1 << v276) & 0x7C0080000881) != 0)
                      {
                        v5 = &unk_2677C;
                        goto LABEL_1327;
                      }
                    }

                    if (!wcsncmp(a2, &unk_26784, 1uLL))
                    {
                      v277 = a2[1];
                      if (v277 == 12360)
                      {
LABEL_1259:
                        v5 = &unk_2678C;
                        goto LABEL_1327;
                      }

                      if ((v277 - 12363) > 8)
                      {
                        v9 = 1;
                        v5 = &unk_2678C;
                        if (v277 == 12387 || v277 == 12417 || (v277 - 12425) < 5)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v277)
                      {
                        goto LABEL_1259;
                      }
                    }

                    if (!wcsncmp(a2, &unk_26794, 1uLL))
                    {
                      v278 = a2[1];
                      if ((v278 - 12364) <= 8 && (v278 & 1) == 0)
                      {
                        goto LABEL_1271;
                      }

                      if ((v278 - 12373) <= 8)
                      {
                        if ((v278 & 1) == 0)
                        {
                          goto LABEL_1272;
                        }

LABEL_1271:
                        v5 = &unk_2679C;
                        goto LABEL_1327;
                      }

                      v279 = v278 - 12356;
                      if (v279 <= 0xD && ((1 << v279) & 0x2011) != 0)
                      {
                        goto LABEL_1271;
                      }
                    }

LABEL_1272:
                    if (!wcsncmp(a2, &unk_267A4, 1uLL))
                    {
                      v280 = a2[1];
                      if ((v280 - 12364) <= 8)
                      {
                        if (v280)
                        {
                          goto LABEL_1280;
                        }

LABEL_1279:
                        v5 = &unk_267AC;
                        goto LABEL_1327;
                      }

                      if ((v280 - 12356) <= 0x3D && ((1 << (v280 - 68)) & 0x2400000080000011) != 0 || (v280 - 12425) < 5)
                      {
                        goto LABEL_1279;
                      }
                    }

LABEL_1280:
                    if (!wcsncmp(a2, &unk_267B4, 1uLL))
                    {
                      v281 = a2[1];
                      if (v281 - 12382) >= 0xFFFFFFF7 && (v281)
                      {
                        v5 = &unk_267BC;
                        goto LABEL_1327;
                      }
                    }

                    if (!wcsncmp(a2, &unk_267C8, 1uLL))
                    {
                      v282 = a2[1];
                      v9 = 1;
                      v5 = &unk_267D0;
                      if ((v282 - 12425) < 5 || v282 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_267D8, 1uLL))
                    {
                      v283 = a2[1];
                      v9 = 1;
                      v5 = &unk_267E0;
                      if (v283 == 12356 || (v283 - 12363) < 0xA || (v283 - 12414) < 5 || v283 == 12435)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_267E8, 1uLL))
                    {
                      v284 = a2[1];
                      v9 = 1;
                      v5 = &unk_267F0;
                      if ((v284 - 12356) < 7 || v284 == 12387 || v284 == 12431 || (v284 - 12363) < 0xA || (v284 - 12425) < 5)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_267F8, 1uLL))
                    {
                      v285 = a2[1];
                      v9 = 1;
                      v5 = &unk_26800;
                      if ((v285 - 12425) < 5 || v285 == 12387)
                      {
                        goto LABEL_49;
                      }
                    }

                    if (!wcsncmp(a2, &unk_26808, 1uLL))
                    {
                      v286 = a2[1];
                      if ((v286 - 12363) > 8)
                      {
                        v9 = 1;
                        v5 = &unk_26810;
                        if (v286 == 12356 || v286 == 12387)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if (v286)
                      {
                        v5 = &unk_26810;
                        goto LABEL_1327;
                      }
                    }

                    if (wcsncmp(a2, &unk_26818, 1uLL))
                    {
                      goto LABEL_1315;
                    }

                    v287 = a2[1];
                    if (v287 != 12360)
                    {
                      if ((v287 - 12363) > 8)
                      {
                        v288 = v287 - 12387;
                        if (v288 > 0x30 || ((1 << v288) & 0x107C2F8000001) == 0)
                        {
                          goto LABEL_1315;
                        }
                      }

                      else if ((v287 & 1) == 0)
                      {
LABEL_1315:
                        if (!wcsncmp(a2, &unk_26828, 1uLL))
                        {
                          v289 = a2[1];
                          v9 = 1;
                          v5 = &unk_26830;
                          if (v289 == 12383 || v289 == 12390 || (v289 - 12425) < 5)
                          {
                            goto LABEL_49;
                          }
                        }

                        if (wcsncmp(a2, &unk_26838, 1uLL))
                        {
                          return 0;
                        }

                        v290 = a2[1];
                        if ((v290 - 12363) <= 8)
                        {
                          goto LABEL_1323;
                        }

                        if (v290 == 12356)
                        {
                          goto LABEL_1326;
                        }

                        if ((v290 - 12373) > 8)
                        {
                          if (v290 != 12428)
                          {
                            return 0;
                          }
                        }

                        else
                        {
LABEL_1323:
                          if ((v290 & 1) == 0)
                          {
                            return 0;
                          }
                        }

LABEL_1326:
                        v5 = &unk_26840;
                        goto LABEL_1327;
                      }
                    }

                    v5 = &unk_26820;
                    goto LABEL_1327;
                  }

                  v101 = a2[2];
                  if ((v101 - 12356) >= 7 && ((v101 - 12372) < 0xFFFFFFF7 || (v101 & 1) == 0))
                  {
                    if ((v101 - 12373) > 8)
                    {
                      v9 = 2;
                      v5 = &unk_252B0;
                      if (v101 == 12356 || v101 == 12387 || v101 == 12431)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_452;
                    }

                    if ((v101 & 1) == 0)
                    {
                      goto LABEL_452;
                    }
                  }

                  v5 = &unk_252B0;
                  goto LABEL_310;
                }

                v96 = a2[2];
                if ((v96 - 12356) >= 7)
                {
                  if ((v96 - 12363) > 8)
                  {
                    v102 = v96 - 12373;
                    if (v102 > 0x3A || ((1 << v102) & 0x480000000004001) == 0)
                    {
                      goto LABEL_431;
                    }
                  }

                  else if ((v96 & 1) == 0)
                  {
                    goto LABEL_431;
                  }
                }

                v5 = &unk_25234;
                goto LABEL_310;
              }

              v81 = a2[2];
              if ((v81 - 12364) > 8)
              {
                if (v81 != 12356)
                {
                  goto LABEL_352;
                }
              }

              else if (v81)
              {
                goto LABEL_352;
              }

              v5 = &unk_2500C;
              goto LABEL_310;
            }

            v66 = a2[2];
            if ((v66 - 12425) >= 5)
            {
              if ((v66 - 12363) > 8)
              {
                v9 = 2;
                v5 = &unk_24E38;
                if (v66 == 12387 || v66 == 12417)
                {
                  goto LABEL_49;
                }

                goto LABEL_212;
              }

              if ((v66 & 1) == 0)
              {
                goto LABEL_212;
              }
            }

            v5 = &unk_24E38;
            goto LABEL_310;
          }

          v61 = a2[3];
          if ((v61 - 12364) > 8)
          {
            if (v61 != 12356)
            {
              goto LABEL_207;
            }
          }

          else if (v61)
          {
            goto LABEL_207;
          }

          v5 = &unk_24D98;
          goto LABEL_62;
        }

        v34 = a2[3];
        if ((v34 - 12364) > 8)
        {
          if (v34 != 12356)
          {
            goto LABEL_131;
          }
        }

        else if (v34)
        {
          goto LABEL_131;
        }

        v5 = &unk_24868;
        goto LABEL_62;
      }

      v28 = a2[3];
      if ((v28 - 12356) >= 7)
      {
        if ((v28 - 12373) > 8)
        {
          v9 = 3;
          v5 = &unk_246F4;
          if (v28 == 12387 || v28 == 12431)
          {
            goto LABEL_49;
          }

          goto LABEL_33;
        }

        if ((v28 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      v5 = &unk_246F4;
      goto LABEL_62;
    }

    v21 = a2[3];
    if ((v21 - 12373) > 8)
    {
      if ((v21 - 12427) >= 2)
      {
        goto LABEL_20;
      }
    }

    else if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }

    v5 = &unk_24580;
    goto LABEL_62;
  }

  v5 = &unk_24424;
LABEL_48:
  v9 = 4;
LABEL_49:
  wcscpy(a3, v5);
  return v9;
}

size_t ktoau::IsHira2(uint64_t a1, const __int32 *a2, __int32 *a3)
{
  if (!dword_38160[0])
  {
    return 0;
  }

  v5 = 1;
  for (i = dword_38160; ; i += 10)
  {
    v7 = wcslen(i);
    if (!wcsncmp(a2, i, v7))
    {
      break;
    }

    v8 = i[10];
    ++v5;
    if (!v8)
    {
      return 0;
    }
  }

  wcscpy(a3, &dword_38160[10 * v5]);
  return wcslen(i);
}

size_t ktoau::IsHiraKatu(uint64_t a1, const __int32 *a2, __int32 *a3)
{
  if (!dword_322D8)
  {
    return 0;
  }

  v5 = &dword_322D8;
  v6 = 1;
  for (i = dword_38160; ; i += 10)
  {
    v8 = wcslen(v5);
    if (!wcsncmp(a2, v5, v8))
    {
      break;
    }

    v9 = v5[10];
    v5 += 10;
    ++v6;
    if (!v9)
    {
      return 0;
    }
  }

  wcscpy(a3, &dword_38160[10 * v6]);
  return wcslen(i);
}

size_t ktoau::ZenToHan(uint64_t a1, const __int32 *a2, __int32 *a3)
{
  *a3 = 0;
  if (!dword_388B8[0])
  {
    return 0;
  }

  v5 = 0;
  for (i = dword_388B8; ; i += 6)
  {
    v7 = wcslen(i);
    if (!wcsncmp(a2, i, v7))
    {
      break;
    }

    v5 += 2;
    if (!i[6])
    {
      return 0;
    }
  }

  wcscpy(a3, &dword_388B8[3 * (v5 & 0xFFFFFFFE | 1)]);
  return wcslen(a3);
}

uint64_t ktoau::IsHenSuushi(uint64_t a1, __int32 *a2)
{
  v4 = wcsncmp(a2, dword_28380, 2uLL);
  if (!v4)
  {
    IsMojiMode = ktoau::IsMojiMode(v4, a2 + 2);
    if (IsMojiMode <= 0xE && ((1 << IsMojiMode) & 0x4108) != 0)
    {
      return 0;
    }
  }

  IsKanjiNa = ktoau::IsKanjiNa(a1, a2, 0);
  v6 = 0;
  if (!IsKanjiNa && dword_3A184)
  {
    v6 = 1;
    for (i = &dword_3A184; wcsncmp(i, a2, 1uLL); i += 3)
    {
      v8 = i[3];
      v6 = (v6 + 1);
      if (!v8)
      {
        return 0;
      }
    }
  }

  return v6;
}

uint64_t ktoau::SetHenSuushi(int a1, __int32 *a2, int16x4_t *a3, __int32 *a4, unsigned int a5)
{
  v9 = 0;
  v10 = a2 - 1;
  v11 = a2 - 2;
  for (i = a2 - 2; ; --i)
  {
    v13 = i[1];
    v14 = v13 - 48;
    if (v13 != 48 && v13 != 44)
    {
      break;
    }

    if (v13 == 48)
    {
      ++v9;
    }
  }

  if (!v9)
  {
    result = wcsncmp(a4, &unk_2838C, 1uLL);
    if (result)
    {
      v27 = v10;
      v16 = 1;
      result = wcsncmp(a4, &unk_283C0, 1uLL);
      if (result)
      {
        goto LABEL_13;
      }

      if (v13 > 0x39)
      {
        return result;
      }

      if (((1 << v13) & 0x2B5000000000000) == 0)
      {
        if (((1 << v13) & 0x14A000000000000) == 0)
        {
          return result;
        }

        goto LABEL_66;
      }

LABEL_56:
      v20 = &unk_268AC;
      goto LABEL_57;
    }

    if (v13 > 0x39)
    {
      return result;
    }

    if (((1 << v13) & 0x2B5000000000000) == 0)
    {
      if (((1 << v13) & 0x142000000000000) == 0)
      {
        if (v13 != 51)
        {
          return result;
        }

        goto LABEL_74;
      }

LABEL_60:
      v18 = &unk_283B0;
      goto LABEL_146;
    }

LABEL_53:
    v19 = &unk_28394;
    goto LABEL_67;
  }

  v27 = a2 - 1;
  v15 = v13 - 58;
  v16 = (v13 - 58) < 0xFFFFFFF7;
  if (!wcsncmp(a4, &unk_2838C, 1uLL))
  {
    if (v15 >= 0xFFFFFFF7 && v9 - 8 > 0xFFFFFFF8)
    {
      if (v9 > 2)
      {
LABEL_74:
        v18 = &unk_283A0;
        goto LABEL_146;
      }

      goto LABEL_60;
    }

    goto LABEL_53;
  }

  if (!wcsncmp(a4, &unk_283C0, 1uLL))
  {
    if (v15 >= 0xFFFFFFF7)
    {
LABEL_66:
      v19 = &unk_283C8;
      goto LABEL_67;
    }

    goto LABEL_56;
  }

  v14 = 0;
LABEL_13:
  if (!wcsncmp(a4, &unk_283D4, 1uLL) || !wcsncmp(a4, &unk_283DC, 1uLL) || !wcsncmp(a4, &unk_283E4, 1uLL))
  {
    if (v16)
    {
      if (v14 > 9)
      {
        return 0;
      }

      if (((1 << v14) & 0x2B5) != 0)
      {
        goto LABEL_42;
      }
    }

    else if (v9 - 8 <= 0xFFFFFFF8)
    {
LABEL_42:
      v19 = &unk_283EC;
LABEL_67:
      v22 = a2;
LABEL_68:
      wcscpy(v22, v19);
      a3->i16[0] = a5;
      a3->i16[1] = a5;
      return 2;
    }

    v18 = &unk_283F8;
    goto LABEL_146;
  }

  if (!wcsncmp(a4, &unk_28408, 1uLL))
  {
    if (v16)
    {
      if (v14 > 9)
      {
        return 0;
      }

      if (((1 << v14) & 0x2B5) != 0)
      {
        goto LABEL_72;
      }
    }

    else if (v9 - 8 <= 0xFFFFFFF8)
    {
LABEL_72:
      v19 = &unk_28410;
      goto LABEL_67;
    }

    v18 = &unk_2841C;
    goto LABEL_146;
  }

  if (wcsncmp(a4, &unk_2842C, 1uLL) && wcsncmp(a4, &unk_28434, 1uLL))
  {
    if (wcsncmp(a4, &unk_28474, 1uLL))
    {
      if (wcsncmp(a4, &unk_2849C, 1uLL) && wcsncmp(a4, &unk_284A4, 1uLL) && wcsncmp(a4, &unk_284AC, 2uLL))
      {
        if (wcsncmp(a4, &unk_284C4, 1uLL))
        {
          if (wcsncmp(a4, &unk_284E8, 1uLL))
          {
            if (wcsncmp(a4, &unk_28510, 1uLL) && wcsncmp(a4, &unk_28518, 2uLL))
            {
              if (wcsncmp(a4, &unk_2853C, 1uLL))
              {
                if (wcsncmp(a4, &unk_28564, 1uLL))
                {
                  if (wcsncmp(a4, &unk_2856C, 1uLL))
                  {
                    if (!wcsncmp(a4, &unk_267D8, 1uLL))
                    {
                      if (!v16)
                      {
                        goto LABEL_199;
                      }

                      if (v14 <= 4)
                      {
                        if (v14 > 2)
                        {
                          if (v14 == 3)
                          {
                            if ((*i - 48) < 0xA)
                            {
                              goto LABEL_199;
                            }

                            v19 = &unk_28644;
                          }

                          else
                          {
                            if ((*i - 48) < 0xA)
                            {
                              goto LABEL_199;
                            }

                            v19 = &unk_28654;
                          }
                        }

                        else if (v14 == 1)
                        {
                          if ((*i - 48) < 0xA)
                          {
                            goto LABEL_199;
                          }

                          v19 = &unk_28624;
                        }

                        else
                        {
                          if (v14 != 2 || (*i - 48) < 0xA)
                          {
                            goto LABEL_199;
                          }

                          v19 = &unk_28634;
                        }
                      }

                      else if (v14 <= 6)
                      {
                        if (v14 == 5)
                        {
                          if ((*i - 48) < 0xA)
                          {
                            goto LABEL_199;
                          }

                          v19 = &unk_28664;
                        }

                        else
                        {
                          if ((*i - 48) < 0xA)
                          {
                            goto LABEL_199;
                          }

                          v19 = &unk_28674;
                        }
                      }

                      else if (v14 == 7)
                      {
                        if ((*i - 48) < 0xA)
                        {
                          goto LABEL_199;
                        }

                        v19 = &unk_28684;
                      }

                      else
                      {
                        if (v14 != 8)
                        {
                          if (v14 == 9 && (*i - 48) >= 0xA)
                          {
                            v18 = &unk_286A4;
LABEL_172:
                            v26 = v27;
                            goto LABEL_147;
                          }

                          goto LABEL_199;
                        }

                        if ((*i - 48) < 0xA)
                        {
LABEL_199:
                          v20 = &unk_267E0;
                          goto LABEL_57;
                        }

                        v19 = &unk_28694;
                      }

                      goto LABEL_203;
                    }

                    return 0;
                  }

                  if (v16)
                  {
                    if (v14 > 5)
                    {
                      if (v14 > 7)
                      {
                        if (v14 == 8)
                        {
                          if ((*i - 48) >= 0xA)
                          {
                            v19 = &unk_28600;
                            goto LABEL_203;
                          }
                        }

                        else if (v14 == 9 && (*i - 48) >= 0xA)
                        {
                          v18 = &unk_28610;
                          goto LABEL_172;
                        }
                      }

                      else if (v14 == 6)
                      {
                        if ((*i - 48) >= 0xA)
                        {
                          v19 = &unk_285E0;
                          goto LABEL_203;
                        }
                      }

                      else if ((*i - 48) >= 0xA)
                      {
                        v19 = &unk_285F0;
                        goto LABEL_203;
                      }

                      goto LABEL_189;
                    }

                    if (v14 <= 3)
                    {
                      if (v14 == 2)
                      {
                        if ((*i - 48) >= 0xA)
                        {
                          v19 = &unk_285A0;
                          goto LABEL_203;
                        }
                      }

                      else if (v14 == 3 && (*i - 48) >= 0xA)
                      {
                        v19 = &unk_285B0;
LABEL_203:
                        v22 = v27;
                        goto LABEL_68;
                      }

                      goto LABEL_189;
                    }

                    if (v14 != 4)
                    {
                      if ((*i - 48) >= 0xA)
                      {
                        v19 = &unk_285D0;
                        goto LABEL_203;
                      }

                      goto LABEL_189;
                    }

                    if ((*i - 48) >= 0xA)
                    {
                      v19 = &unk_285C0;
                      goto LABEL_203;
                    }

                    v20 = &unk_26B70;
LABEL_57:
                    v21 = a2;
LABEL_58:
                    wcscpy(v21, v20);
                    a3->i16[0] = a5;
                    return 1;
                  }

                  if (v9 == 1)
                  {
                    if (v13 == 50)
                    {
                      if ((*i - 48) >= 0xA)
                      {
                        v20 = &unk_28584;
                        goto LABEL_175;
                      }
                    }

                    else if (v13 == 49 && (*i - 48) >= 0xA)
                    {
                      v20 = &unk_28574;
LABEL_175:
                      v21 = v11;
                      goto LABEL_58;
                    }
                  }

LABEL_189:
                  v19 = &unk_28594;
                  goto LABEL_67;
                }

                if (v16)
                {
                  if (v14 > 9)
                  {
                    return 0;
                  }

                  if (((1 << v14) & 0x2B5) == 0)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_150;
                }

                if (v9 == 1)
                {
LABEL_145:
                  v18 = &unk_28544;
                  goto LABEL_146;
                }

LABEL_150:
                v19 = &unk_27D00;
                goto LABEL_67;
              }

              if (v16)
              {
                if (v14 > 9)
                {
                  return 0;
                }

                if (((1 << v14) & 0x2B5) != 0)
                {
                  goto LABEL_150;
                }

                if (((1 << v14) & 0x142) != 0)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                if (v9 - 8 <= 0xFFFFFFF8)
                {
                  goto LABEL_150;
                }

                if (v9 <= 2)
                {
                  goto LABEL_145;
                }
              }

              v18 = &unk_28554;
LABEL_146:
              v26 = a2;
LABEL_147:
              wcscpy(v26, v18);
              a3->i16[0] = a5;
              a3->i16[1] = a5;
              result = 3;
              goto LABEL_148;
            }

            if (v16)
            {
              if (v14 > 9)
              {
                return 0;
              }

              if (((1 << v14) & 0x2B5) != 0)
              {
                goto LABEL_110;
              }
            }

            else if (v9 != 1)
            {
LABEL_110:
              v19 = &unk_28520;
              goto LABEL_67;
            }

            v18 = &unk_2852C;
            goto LABEL_146;
          }

          if (v16)
          {
            if (v14 > 9)
            {
              return 0;
            }

            if (((1 << v14) & 0x2B7) == 0)
            {
LABEL_122:
              v18 = &unk_284F0;
              goto LABEL_146;
            }
          }

          else if (v9 - 8 > 0xFFFFFFF8)
          {
            if (v9 > 2)
            {
              v18 = &unk_28500;
              goto LABEL_146;
            }

            goto LABEL_122;
          }

          v19 = &unk_26A2C;
          goto LABEL_67;
        }

        if (v16)
        {
          if (v14 > 9)
          {
            return 0;
          }

          if (((1 << v14) & 0x2B5) != 0)
          {
            goto LABEL_106;
          }
        }

        else if (v9 - 8 <= 0xFFFFFFF8)
        {
LABEL_106:
          v19 = &unk_284CC;
          goto LABEL_67;
        }

        v18 = &unk_284D8;
        goto LABEL_146;
      }

      if (v16)
      {
        if (v14 > 9)
        {
          return 0;
        }

        if (((1 << v14) & 0x2B5) != 0)
        {
          goto LABEL_82;
        }
      }

      else if (v9 - 8 <= 0xFFFFFFF8)
      {
LABEL_82:
        v19 = &unk_27E0C;
        goto LABEL_67;
      }

      v18 = &unk_284B4;
      goto LABEL_146;
    }

    if (v16)
    {
      if (v14 > 9)
      {
        return 0;
      }

      if (((1 << v14) & 0x2B5) == 0)
      {
        if (((1 << v14) & 0x142) != 0)
        {
LABEL_89:
          v18 = &unk_2847C;
          goto LABEL_146;
        }

LABEL_99:
        v18 = &unk_2848C;
        goto LABEL_146;
      }
    }

    else if (v9 - 8 > 0xFFFFFFF8)
    {
      if (v9 <= 2)
      {
        goto LABEL_89;
      }

      goto LABEL_99;
    }

    v19 = &unk_281E4;
    goto LABEL_67;
  }

  if (v16)
  {
    if (v14 > 9)
    {
      return 0;
    }

    if (((1 << v14) & 0x2B5) != 0)
    {
      v18 = dword_2843C;
      goto LABEL_146;
    }

    if (((1 << v14) & 0x142) != 0)
    {
      v25 = &unk_2844C;
    }

    else
    {
      v25 = &unk_28460;
    }

    wcscpy(a2, v25);
    *a3 = vdup_n_s16(a5);
    return 4;
  }

  if (v9 - 8 > 0xFFFFFFF8)
  {
    v23 = vdup_n_s16(a5);
    if (v9 > 2)
    {
      v24 = &unk_28460;
    }

    else
    {
      v24 = &unk_2844C;
    }

    wcscpy(a2, v24);
    *a3 = v23;
    return 4;
  }

  wcscpy(a2, dword_2843C);
  a3->i16[0] = a5;
  a3->i16[1] = a5;
  result = 2;
LABEL_148:
  a3->i16[2] = a5;
  return result;
}

uint64_t ktoau::IsFukuKanji(int a1, const __int32 *a2, __int32 *a3)
{
  if (dword_3A2C8[0])
  {
    v5 = 1;
    v6 = dword_3A2C8;
    while (1)
    {
      v7 = wcslen(v6);
      if (!wcsncmp(a2, v6, v7))
      {
        break;
      }

      v8 = v6[5];
      v6 += 5;
      v5 = (v5 + 1);
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v9 = &dword_3A2C8[5 * v5];
    goto LABEL_9;
  }

LABEL_5:
  if (*a2 == 25620)
  {
    v5 = 1;
    v9 = &unk_286B8;
LABEL_9:
    wcscpy(a3, v9);
    return v5;
  }

  return 0;
}

uint64_t ktoau::IsKanSuujiLen(uint64_t IsMojiMode, uint64_t a2)
{
  LODWORD(v2) = 0;
  v3 = (a2 + 4);
  do
  {
    IsMojiMode = ktoau::IsMojiMode(IsMojiMode, v3);
    v2 = (v2 + 1);
    ++v3;
  }

  while (IsMojiMode == 14);
  return v2;
}

uint64_t ktoau::SetKanSuuji(uint64_t a1, __int32 *a2, _WORD *a3, int *a4, int a5)
{
  v5 = a3;
  v6 = *a4;
  if (*a4 == 21315)
  {
    v7 = 0;
    *a2++ = 49;
    *a3 = a5;
    v5 = a3 + 1;
    ++a5;
    v8 = a4[1];
    ++a4;
    v6 = v8;
    result = 1;
  }

  else if (a4[1] == 21315)
  {
    v10 = 12295;
    v11 = &dword_286E4;
    v12 = 1;
    while (v6 != v10)
    {
      v13 = *v11++;
      v10 = v13;
      if (++v12 == 11)
      {
        v12 = 0;
        break;
      }
    }

    *a2++ = v12 + 47;
    *a3 = a5;
    v14 = a4[2];
    a4 += 2;
    v6 = v14;
    if (!v14)
    {
      v30 = a5 + 1;
      if (v12 == 3)
      {
        wcscpy(a2, dword_286C4);
        v5[1] = v30;
        v5[2] = v30;
        result = 4;
        v5[3] = v30;
      }

      else
      {
        wcscpy(a2, dword_286D4);
        v5[1] = v30;
        v5[2] = v30;
        return 3;
      }

      return result;
    }

    v7 = 0;
    a5 += 2;
    result = 1;
    v5 = a3 + 1;
  }

  else
  {
    result = 0;
    v7 = 1;
  }

  if (v6 == 30334)
  {
    v15 = 0;
    *a2++ = 49;
    *v5++ = a5;
    result = (result + 1);
    ++a5;
    ++a4;
  }

  else if (a4[1] == 30334)
  {
    v16 = 12295;
    v17 = &dword_286E4;
    v18 = 48;
    while (v6 != v16)
    {
      v19 = *v17++;
      v16 = v19;
      if (++v18 == 58)
      {
        v18 = 47;
        break;
      }
    }

    v15 = 0;
    *a2++ = v18;
    *v5++ = a5;
    result = (result + 1);
    a5 += 2;
    a4 += 2;
  }

  else if (v7)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a2++ = 48;
    *v5++ = a5;
    result = (result + 1);
  }

  v20 = *a4;
  if (*a4 == 21313)
  {
    *a2 = 49;
    *v5 = a5++;
    ++a4;
  }

  else if (a4[1] == 21313)
  {
    v21 = 12295;
    v22 = &dword_286E4;
    v23 = 48;
    while (v20 != v21)
    {
      v24 = *v22++;
      v21 = v24;
      if (++v23 == 58)
      {
        v23 = 47;
        break;
      }
    }

    *a2 = v23;
    *v5 = a5;
    a5 += 2;
    a4 += 2;
  }

  else
  {
    if (v15)
    {
      if (!v20)
      {
        return result;
      }

      goto LABEL_36;
    }

    *a2 = 48;
    *v5 = a5++;
  }

  ++v5;
  ++a2;
  v20 = *a4;
  if (!*a4)
  {
    *a2 = 48;
    *v5 = a5;
    return (result + 2);
  }

  LODWORD(result) = result + 1;
  do
  {
LABEL_36:
    v25 = 12295;
    v26 = 48;
    v27 = &dword_286E4;
    while (v20 != v25)
    {
      v28 = *v27++;
      v25 = v28;
      if (++v26 == 58)
      {
        v26 = 47;
        break;
      }
    }

    *a2++ = v26;
    *v5++ = a5;
    result = (result + 1);
    v29 = a4[1];
    ++a4;
    v20 = v29;
    ++a5;
  }

  while (v29);
  return result;
}

uint64_t ktoau::IsKanSuuji(uint64_t a1, _DWORD *a2)
{
  v2 = 12295;
  v3 = &dword_286E4;
  result = 1;
  while (*a2 != v2)
  {
    v5 = *v3++;
    v2 = v5;
    result = (result + 1);
    if (result == 11)
    {
      return 0;
    }
  }

  return result;
}

size_t ktoau::TanKanji1Set(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a2 == 19132 || v3 == 19410;
  v5 = v3 - 64256;
  if (!v4 && v5 < 0xFFFF5300)
  {
    return 0;
  }

  fseek(*(a1 + 112), 0, 0);
  bzero(&__ptr, 0x400uLL);
  result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 112));
  if (result)
  {
    v10 = 0;
    do
    {
      while (v24[v10 - 1])
      {
        result = fread(&v24[v10++], 2uLL, 1uLL, *(a1 + 112));
        if (!result)
        {
          return result;
        }
      }

      v11 = __ptr;
      if (__ptr)
      {
        v12 = v24;
        do
        {
          *(v12 - 1) = ~v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
        v14 = __ptr;
        if (__ptr == *a2)
        {
          if (__ptr == 32)
          {
            result = 0;
LABEL_26:
            v16 = 0;
            v17 = result;
LABEL_27:
            v18 = v17 + 1;
            v19 = &v24[v17];
            while (1)
            {
              v21 = *v19++;
              v20 = v21;
              if (!v21)
              {
                break;
              }

              v17 = v18;
              if ((v20 - 65382) > 0x39)
              {
                ++v18;
                if (v20 != 32)
                {
                  continue;
                }
              }

              *(a3 + 4 * v16++) = v20;
              goto LABEL_27;
            }

            *(a3 + 4 * v16) = 0;
            return result;
          }

LABEL_23:
          v15 = 0;
          while (v14 == a2[v15])
          {
            result = v15 + 1;
            v14 = v24[v15++];
            if (v14 == 32)
            {
              goto LABEL_26;
            }
          }
        }
      }

      else
      {
        v14 = *a2;
        if (!*a2)
        {
          goto LABEL_23;
        }
      }

      bzero(&__ptr, 0x400uLL);
      result = fread(&__ptr, 2uLL, 1uLL, *(a1 + 112));
      v10 = 0;
    }

    while (result);
  }

  return result;
}

size_t ktoau::IsJoshi(uint64_t a1, const __int32 *a2, __int32 *a3)
{
  if (!dword_3B27C[0])
  {
    return 0;
  }

  v5 = 1;
  for (i = dword_3B27C; ; i += 10)
  {
    v7 = wcslen(i);
    if (!wcsncmp(a2, i, v7))
    {
      break;
    }

    v8 = i[10];
    ++v5;
    if (!v8)
    {
      return 0;
    }
  }

  wcscpy(a3, &dword_3B27C[10 * v5]);
  return wcslen(i);
}

size_t ktoau::IsSetKei(uint64_t a1, const __int32 *a2, __int32 *a3)
{
  if (!dword_3B7A4[0])
  {
    return 0;
  }

  v5 = 1;
  for (i = dword_3B7A4; ; i += 10)
  {
    v7 = wcslen(i);
    if (!wcsncmp(a2, i, v7))
    {
      break;
    }

    v8 = i[10];
    ++v5;
    if (!v8)
    {
      return 0;
    }
  }

  wcscpy(a3, &dword_3B7A4[10 * v5]);
  return wcslen(i);
}

uint64_t ktoau::IsHirakiKako(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 65288;
  v4 = &dword_28710;
  while (v2 != v3)
  {
    v5 = *v4++;
    v3 = v5;
    if (!v5)
    {
      v6 = 40;
      v7 = &dword_28744;
      while (v6 != v2)
      {
        v8 = *v7++;
        v6 = v8;
        if (!v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 1;
}

uint64_t ktoau::IsToziKako(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 12289;
  v4 = &dword_28760;
  while (v2 != v3)
  {
    v5 = *v4++;
    v3 = v5;
    if (!v5)
    {
      v6 = 46;
      v7 = &dword_287B4;
      while (v6 != v2)
      {
        v8 = *v7++;
        v6 = v8;
        if (!v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 1;
}

size_t ktoau::IsTokuSuji(uint64_t a1, int *a2, __int32 *a3)
{
  v3 = *(a2 - 1);
  v4 = v3 - 49;
  v5 = v3 - 65297;
  if (v4 < 9 || v5 < 9)
  {
    return 0;
  }

  IsKanjiNa = ktoau::IsKanjiNa(a1, a2, 0);
  result = 0;
  if (!IsKanjiNa && dword_3BA4C[0])
  {
    v11 = 0;
    for (i = dword_3BA4C; ; i += 20)
    {
      v13 = wcslen(i);
      if (!wcsncmp(a2, i, v13))
      {
        break;
      }

      v11 += 2;
      if (!i[20])
      {
        return 0;
      }
    }

    wcscpy(a3, &dword_3BA4C[10 * (v11 & 0xFFFFFFFE | 1)]);
    return wcslen(i);
  }

  return result;
}

uint64_t ktoau::SetKigou(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  fseek(*(a1 + 128), 0, 0);
  fread(&__ptr, 2uLL, 1uLL, *(a1 + 128));
  bzero(&__ptr, 0x400uLL);
  if (!fread(&__ptr, 2uLL, 1uLL, *(a1 + 128)))
  {
    return 0;
  }

  v10 = 0;
  v11 = &v34;
  p_ptr = &__ptr;
  while (1)
  {
    while (*(&__ptr + v10) != 13)
    {
      ++v10;
      p_ptr = &__ptr + v10;
      if (!fread(p_ptr, 2uLL, 1uLL, *(a1 + 128)))
      {
        return 0;
      }
    }

    v13 = fread(p_ptr, 2uLL, 1uLL, *(a1 + 128));
    if (__ptr == *a2 && (v33 == 32 || v33 == a2[1]))
    {
      break;
    }

    p_ptr = &__ptr;
    bzero(&__ptr, 0x400uLL);
    v10 = 0;
    if (!fread(&__ptr, 2uLL, 1uLL, *(a1 + 128)))
    {
      return 0;
    }
  }

  *p_ptr = 0;
  if (v33 == 32)
  {
    v14 = 2;
  }

  else
  {
    if (v34 != 32)
    {
      return 0;
    }

    v14 = 3;
    v11 = &v35;
  }

  v15 = *v11;
  if (!*v11)
  {
    return 0;
  }

  v16 = 0;
  v17 = &__ptr + v14;
  v18 = 0uLL;
  do
  {
    v31[6] = v18;
    v31[7] = v18;
    v31[4] = v18;
    v31[5] = v18;
    v31[2] = v18;
    v31[3] = v18;
    v31[0] = v18;
    v31[1] = v18;
    if (v15 >> 8 == 40 || v15 - 65376 < 0x40 || v15 - 32 <= 0x5F)
    {
      *(a3 + 4 * v16) = v15;
      v16 = (v16 + 1);
    }

    else
    {
      v13 = ktoau::ZenToHan(v13, v17, v31);
      if (v13)
      {
        wcscpy((a3 + 4 * v16), v31);
        v13 = wcslen(v31);
        v16 = (v16 + v13);
      }

      v18 = 0uLL;
    }

    v19 = v17[1];
    ++v17;
    v15 = v19;
  }

  while (v19);
  if (v16 >= 1)
  {
    v20 = (v16 + 7) & 0xFFFFFFF8;
    v21 = vdupq_n_s64(v16 - 1);
    v22 = xmmword_24230;
    v23 = xmmword_24240;
    v24 = xmmword_24250;
    v25 = xmmword_24260;
    v26 = (a4 + 8);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v21, v25));
      if (vuzp1_s8(vuzp1_s16(v28, *v21.i8), *v21.i8).u8[0])
      {
        *(v26 - 4) = a5;
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v21), *&v21).i8[1])
      {
        *(v26 - 3) = a5;
      }

      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v24))), *&v21).i8[2])
      {
        *(v26 - 2) = a5;
        *(v26 - 1) = a5;
      }

      v29 = vmovn_s64(vcgeq_u64(v21, v23));
      if (vuzp1_s8(*&v21, vuzp1_s16(v29, *&v21)).i32[1])
      {
        *v26 = a5;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v29, *&v21)).i8[5])
      {
        v26[1] = a5;
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v22)))).i8[6])
      {
        v26[2] = a5;
        v26[3] = a5;
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 8;
      v22 = vaddq_s64(v22, v27);
      v20 -= 8;
    }

    while (v20);
  }

  return v16;
}

uint64_t ktoau::KToA(uint64_t result, int *a2, int16x4_t *a3, __int32 *a4, int a5)
{
  v6 = a4;
  v7 = a3;
  v9 = result;
  *(result + 8) = 0;
  v10 = (result + 8);
  *(result + 40) = 0;
  v11 = (result + 40);
  *(result + 16) = 0;
  *(result + 48) = 0;
  *a4 = 0;
  *a3 = 0;
  *result = 288;
  v12 = 1;
  while (1)
  {
    result = ktoau::IsMojiMode(result, a2);
    v13 = result;
    v14 = *a2;
    v15 = (*a2 - 12) < 2 || v14 == 1;
    if (v15)
    {
      if (a5 && (*v9 & 1) != 0)
      {
        *v6 = 0x283400002838;
        v6 += 2;
        v7->i16[0] = v12;
        v7->i16[1] = v12;
        v7 = (v7 + 4);
        v14 = *a2;
      }

      goto LABEL_12;
    }

    if (!v14)
    {
      break;
    }

    if (v14 <= 32)
    {
      goto LABEL_12;
    }

    if (v14 > 0x3F)
    {
      goto LABEL_17;
    }

    if (((1 << v14) & 0xC000720200000000) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v14) & 0x1000010400000000) != 0)
    {
LABEL_12:
      *v6++ = v14;
      v7->i16[0] = v12;
      v7 = (v7 + 2);
      ++v12;
      ++a2;
      *v9 = *v9 & 0xFE00 | (2 * result) | 0x120;
    }

    else
    {
LABEL_17:
      if (v14 == 65379)
      {
LABEL_15:
        *v6++ = v14;
        v7->i16[0] = v12;
        v7 = (v7 + 2);
        ++v12;
        ++a2;
        *v9 = *v9 & 0xFE00 | (2 * result) | 0x80;
      }

      else
      {
        if (v14 == 65378)
        {
          goto LABEL_12;
        }

        result = ktoau::IsTokuSuji(v9, a2, v373);
        if (result)
        {
          if ((*v9 & 0x20) == 0)
          {
            *v6++ = 32;
            v7->i16[0] = v12;
            v7 = (v7 + 2);
          }

          v16 = v373[0];
          if (v373[0])
          {
            v17 = 0;
            LODWORD(v18) = 0;
            v19 = &v373[1];
            v20 = v12;
            v21 = v7;
            v22 = v6;
            do
            {
              if (v16 != 32 || v17)
              {
                v17 = 0;
                *v22++ = v16;
                v21->i16[0] = v20;
                v21 = (v21 + 2);
                LODWORD(v18) = v18 + 1;
              }

              else
              {
                ++v20;
                v17 = 1;
              }

              v23 = *v19++;
              v16 = v23;
            }

            while (v23);
            v18 = v18;
          }

          else
          {
            v18 = 0;
            v22 = v6;
          }

          *v22 = 0;
          v6 += v18;
          v7 = (v7 + 2 * v18);
          a2 += result;
          v26 = *v9 & 0xFE00 | 0x99;
LABEL_45:
          *v9 = v26;
          v12 += result;
        }

        else
        {
          v24 = *a2;
          if (*a2 <= 127)
          {
            v25 = *v9;
            if (*v9 & 0x1C) != 0x10 && (v25 & 0x20) == 0 && ((v25 & 0x1E) == 0xC || (v25))
            {
              *v6++ = 32;
              v7->i16[0] = v12;
              v7 = (v7 + 2);
              v24 = *a2;
            }

            *v6++ = v24;
            v7->i16[0] = v12;
            v7 = (v7 + 2);
            ++a2;
            v26 = *v9 & 0xFE00 | (2 * v13) | 0x80;
LABEL_44:
            result = 1;
            goto LABEL_45;
          }

          if (v13 == 6)
          {
            v27 = (*v9 >> 1) & 0xF;
            if (v27 == 5 || v27 == 9)
            {
              *v6++ = 32;
              v7->i16[0] = v12;
              v7 = (v7 + 2);
              v24 = *a2;
            }

            *v6++ = v24;
            v7->i16[0] = v12;
            v7 = (v7 + 2);
            ++a2;
            v26 = *v9 & 0xFE00 | 0x8C;
            goto LABEL_44;
          }

          v371 = v11;
          if ((*v10 & 0x400) != 0)
          {
            result = ktoau::IsSetKei(result, a2, v373);
            if (result)
            {
              v28 = result;
              v29 = wcsncmp(a2, dword_287EC, 3uLL);
              if (v29)
              {
                *v6++ = 32;
                v7->i16[0] = v12;
                v7 = (v7 + 2);
              }

              v30 = v373[0];
              if (v373[0])
              {
                v31 = 0;
                LODWORD(v32) = 0;
                v33 = &v373[1];
                v34 = v12;
                v35 = v7;
                v36 = v6;
                do
                {
                  if (v30 != 32 || v31)
                  {
                    v31 = 0;
                    *v36++ = v30;
                    v35->i16[0] = v34;
                    v35 = (v35 + 2);
                    LODWORD(v32) = v32 + 1;
                  }

                  else
                  {
                    ++v34;
                    v31 = 1;
                  }

                  v37 = *v33++;
                  v30 = v37;
                }

                while (v37);
                v32 = v32;
              }

              else
              {
                v32 = 0;
                v36 = v6;
              }

              *v36 = 0;
              a2 += v28;
              v12 += v28;
              v6 += v32;
              v7 = (v7 + 2 * v32);
              v66 = *v9 & 0xFE1E | 0x81;
              *v9 = v66;
              result = ktoau::IsMojiMode(v29, a2 - 1);
              v67 = v66 & 0xFF81 | (2 * result);
              goto LABEL_108;
            }
          }

          if (v13 != 10)
          {
            v46 = v13 == 12;
            if (v13 != 12)
            {
              if (v13 == 8)
              {
                v360 = 1;
                v361 = 0;
                v358 = 0;
                goto LABEL_282;
              }

              v46 = 0;
              goto LABEL_183;
            }

            goto LABEL_75;
          }

          v404 = 0u;
          v403 = 0u;
          v401 = 0u;
          v402 = 0u;
          v399 = 0u;
          v400 = 0u;
          v397 = 0u;
          v398 = 0u;
          v395 = 0u;
          v396 = 0u;
          v393 = 0u;
          v394 = 0u;
          v391 = 0u;
          v392 = 0u;
          v389 = 0u;
          v390 = 0u;
          v387 = 0u;
          v388 = 0u;
          v385 = 0u;
          v386 = 0u;
          v383 = 0u;
          v384 = 0u;
          v381 = 0u;
          v382 = 0u;
          v379 = 0u;
          v380 = 0u;
          v377 = 0u;
          v378 = 0u;
          v375 = 0u;
          v376 = 0u;
          *v373 = 0u;
          v374 = 0u;
          result = ktoau::IsHiraMatch(v9, a2, v373);
          if (result)
          {
            if ((*v9 & 0x20) == 0 && *v9)
            {
              *v6++ = 32;
              v7->i16[0] = v12;
              v7 = (v7 + 2);
            }

            v38 = v373[0];
            if (v373[0])
            {
              v39 = 0;
              LODWORD(v40) = 0;
              v41 = &v373[1];
              v42 = v12;
              v43 = v7;
              v44 = v6;
              do
              {
                if (v38 != 32 || v39)
                {
                  v39 = 0;
                  *v44++ = v38;
                  v43->i16[0] = v42;
                  v43 = (v43 + 2);
                  LODWORD(v40) = v40 + 1;
                }

                else
                {
                  ++v42;
                  v39 = 1;
                }

                v45 = *v41++;
                v38 = v45;
              }

              while (v45);
              v40 = v40;
            }

            else
            {
              v40 = 0;
              v44 = v6;
            }

            *v44 = 0;
            a2 += result;
            v12 += result;
            v6 += v40;
            v7 = (v7 + 2 * v40);
            v68 = *v9 & 0xFE1E | 0x81;
            *v9 = v68;
            result = ktoau::IsMojiMode(result, a2 - 1);
            v69 = 2 * result;
            v70 = v68 & 0xFF81;
            if (result == 12)
            {
              v69 = 26;
            }

LABEL_107:
            v67 = v69 | v70;
LABEL_108:
            *v9 = v67;
            v11 = v371;
          }

          else
          {
            v46 = 0;
LABEL_75:
            v364 = v10;
            v47 = *v9;
            if ((*v9 & 0x80) != 0)
            {
              result = ktoau::IsSetsubi(result, a2);
              if (result)
              {
                v48 = v47 & 0x1E;
                v10 = v364;
                if (v48 == 10)
                {
                  goto LABEL_78;
                }

                if (*a2 == 12373)
                {
                  if (v48 == 18 || a2[1] == 12435)
                  {
LABEL_78:
                    *v6++ = 32;
                    v7->i16[0] = v12;
                    v7 = (v7 + 2);
                  }
                }

                else if (v48 == 18)
                {
                  goto LABEL_78;
                }

                v49 = dword_30488[20 * result];
                if (v49)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = &dword_30488[20 * result + 1];
                  v53 = v12;
                  v54 = v7;
                  v55 = v6;
                  do
                  {
                    if (v49 != 32 || v50)
                    {
                      v50 = 0;
                      *v55++ = v49;
                      v54->i16[0] = v53;
                      v54 = (v54 + 2);
                      ++v51;
                    }

                    else
                    {
                      ++v53;
                      v50 = 1;
                    }

                    v56 = *v52++;
                    v49 = v56;
                  }

                  while (v56);
                  v57 = v51;
                }

                else
                {
                  v57 = 0;
                  v55 = v6;
                }

                *v55 = 0;
                result = wcslen(&dword_30488[20 * result - 20]);
                v12 += result;
                a2 += result;
                v6 += v57;
                *v9 = *v9 & 0xFE00 | (2 * v13) | 0x181;
                v7 = (v7 + 2 * v57);
                goto LABEL_122;
              }
            }

            if (v13 == 10)
            {
              result = ktoau::IsHiraDoushi(result, a2, v373);
              v10 = v364;
              if (result)
              {
                if ((*v9 & 0x20) == 0 && *v9)
                {
                  *v6++ = 32;
                  v7->i16[0] = v12;
                  v7 = (v7 + 2);
                }

                v58 = v373[0];
                if (v373[0])
                {
                  v59 = 0;
                  LODWORD(v60) = 0;
                  v61 = &v373[1];
                  v62 = v12;
                  v63 = v7;
                  v64 = v6;
                  do
                  {
                    if (v58 != 32 || v59)
                    {
                      v59 = 0;
                      *v64++ = v58;
                      v63->i16[0] = v62;
                      v63 = (v63 + 2);
                      LODWORD(v60) = v60 + 1;
                    }

                    else
                    {
                      ++v62;
                      v59 = 1;
                    }

                    v65 = *v61++;
                    v58 = v65;
                  }

                  while (v65);
                  v60 = v60;
                }

                else
                {
                  v60 = 0;
                  v64 = v6;
                }

                *v64 = 0;
                v75 = &a2[result];
                v76 = result + v12;
                v77 = &v6[v60];
                v78 = v7 + v60;
                result = ktoau::ZenToHan(result, v75, v77);
                *v78 = v76;
                if (result == 2)
                {
                  v78[1] = v76;
                }

                v80 = *v75;
                a2 = (v75 + 1);
                v79 = v80;
                v12 = v76 + 1;
                v81 = 12356;
                v82 = &dword_24308;
                v6 = &v77[result];
                v7 = &v78[result];
                while (v81 != v79)
                {
                  v83 = *v82++;
                  v81 = v83;
                  if (!v83)
                  {
                    goto LABEL_135;
                  }
                }

                result = ktoau::IsMojiMode(result, a2);
                if (result == 10 && (result = ktoau::IsHiraDoushi(10, a2, v373), result) || (result = ktoau::IsMojiMode(result, a2), result == 12) && (result = ktoau::IsDoushi(result, a2), result))
                {
                  v84 = *v9 | 0x20;
                  goto LABEL_136;
                }

LABEL_135:
                v84 = *v9 & 0xFEDF | 0x100;
LABEL_136:
                v11 = v371;
                *v9 = v84 & 0xFF20 | 0x95;
LABEL_137:
                *(v9 + 1) = 0;
                *(v9 + 5) = 0;
              }

              else
              {
                if (!v46)
                {
                  v46 = 0;
                  goto LABEL_183;
                }

LABEL_114:
                IsDoushi = ktoau::IsDoushi(result, a2);
                if (IsDoushi)
                {
                  IsDoushi = ktoau::IsMojiMode(IsDoushi, a2 + 1);
                  if (IsDoushi == 10)
                  {
                    v72 = 12356;
                    v73 = &dword_24308;
                    while (v72 != a2[1])
                    {
                      v74 = *v73++;
                      v72 = v74;
                      if (!v74)
                      {
                        goto LABEL_146;
                      }
                    }

                    IsDoushi = ktoau::IsMojiMode(IsDoushi, a2 + 2);
                    if (IsDoushi == 10)
                    {
                      IsDoushi = ktoau::IsHiraDoushi(10, a2 + 2, v373);
                      if (IsDoushi)
                      {
                        goto LABEL_155;
                      }
                    }

                    else if (IsDoushi == 12)
                    {
                      IsDoushi = ktoau::IsDoushi(IsDoushi, a2 + 2);
                      if (IsDoushi)
                      {
                        IsDoushi = ktoau::IsMojiMode(IsDoushi, a2 + 3);
                        if (IsDoushi == 10)
                        {
LABEL_155:
                          if (*v9 && (*v9 & 0x20) == 0)
                          {
                            *v6++ = 32;
                            v7->i16[0] = v12;
                            v7 = (v7 + 2);
                          }

                          v89 = ktoau::TanKanji2Set(v9, a2, v373);
                          v90 = v373[0];
                          if (v373[0])
                          {
                            v91 = 0;
                            LODWORD(v92) = 0;
                            v93 = &v373[1];
                            v94 = v12;
                            v95 = v7;
                            v96 = v6;
                            do
                            {
                              if (v90 != 32 || v91)
                              {
                                v91 = 0;
                                *v96++ = v90;
                                v95->i16[0] = v94;
                                v95 = (v95 + 2);
                                LODWORD(v92) = v92 + 1;
                              }

                              else
                              {
                                ++v94;
                                v91 = 1;
                              }

                              v97 = *v93++;
                              v90 = v97;
                            }

                            while (v97);
                            v98 = a2 + 2;
                            v92 = v92;
                          }

                          else
                          {
                            v98 = a2 + 2;
                            v92 = 0;
                            v96 = v6;
                          }

                          *v96 = 0;
                          v213 = &v6[v92];
                          v214 = v7 + v92;
                          result = ktoau::ZenToHan(v89, a2 + 1, v213);
                          *v214 = v12 + 1;
                          if (result == 2)
                          {
                            v214[1] = v12 + 1;
                          }

                          v6 = &v213[result];
                          *v9 = *v9 & 0xFE00 | 0x1B5;
                          v7 = &v214[result];
                          v12 += 2;
                          goto LABEL_433;
                        }
                      }
                    }
                  }
                }

LABEL_146:
                result = ktoau::IsDoushi(IsDoushi, a2);
                if (!result || (result = ktoau::IsMojiMode(result, a2 + 1), result != 10) || (result = ktoau::IsMojiMode(result, a2 + 2), result != 10) || (v85 = a2[2], v85 == 12356))
                {
LABEL_182:
                  v46 = 1;
                  goto LABEL_183;
                }

                v86 = 12356;
                v87 = &dword_2435C;
                while (v86 != v85)
                {
                  v88 = *v87++;
                  v86 = v88;
                  if (!v88)
                  {
                    goto LABEL_182;
                  }
                }

                result = ktoau::IsMojiMode(result, a2 + 3);
                if (result == 10)
                {
                  result = ktoau::IsHiraDoushi(10, a2 + 3, v373);
                  if (!result)
                  {
                    goto LABEL_182;
                  }
                }

                else
                {
                  if (result != 12)
                  {
                    goto LABEL_182;
                  }

                  result = ktoau::IsDoushi(result, a2 + 3);
                  if (!result)
                  {
                    goto LABEL_182;
                  }

                  result = ktoau::IsMojiMode(result, a2 + 4);
                  if (result != 10)
                  {
                    goto LABEL_182;
                  }
                }

                if (*v9 && (*v9 & 0x20) == 0)
                {
                  *v6++ = 32;
                  v7->i16[0] = v12;
                  v7 = (v7 + 2);
                }

                v223 = ktoau::TanKanji2Set(v9, a2, v373);
                v224 = v373[0];
                if (v373[0])
                {
                  v98 = a2 + 3;
                  v225 = 0;
                  LODWORD(v226) = 0;
                  v227 = &v373[1];
                  v228 = v12;
                  v229 = v7;
                  v230 = v6;
                  do
                  {
                    if (v224 != 32 || v225)
                    {
                      v225 = 0;
                      *v230++ = v224;
                      v229->i16[0] = v228;
                      v229 = (v229 + 2);
                      LODWORD(v226) = v226 + 1;
                    }

                    else
                    {
                      ++v228;
                      v225 = 1;
                    }

                    v231 = *v227++;
                    v224 = v231;
                  }

                  while (v231);
                  v226 = v226;
                }

                else
                {
                  v98 = a2 + 3;
                  v226 = 0;
                  v230 = v6;
                }

                *v230 = 0;
                v256 = &v6[v226];
                v257 = v7 + v226;
                v258 = ktoau::ZenToHan(v223, a2 + 1, v256);
                *v257 = v12 + 1;
                if (v258 == 2)
                {
                  v257[1] = v12 + 1;
                }

                v259 = &v256[v258];
                v260 = &v257[v258];
                result = ktoau::ZenToHan(v258, a2 + 2, v259);
                *v260 = v12 + 2;
                if (result == 2)
                {
                  v260[1] = v12 + 2;
                }

                v6 = &v259[result];
                *v9 = *v9 & 0xFE00 | 0x1B5;
                v7 = &v260[result];
                v12 += 3;
LABEL_433:
                *(v9 + 1) = 0;
                *(v9 + 5) = 0;
                a2 = v98;
                v11 = v371;
              }
            }

            else
            {
              v10 = v364;
              if (v46)
              {
                goto LABEL_114;
              }

LABEL_183:
              v100 = (*v9 >> 1) & 0xF;
              if (v100 == 8 || v100 == 3)
              {
                IsHenSuushi = ktoau::IsHenSuushi(v9, a2);
                if (IsHenSuushi)
                {
                  v103 = wcscpy(v373, &dword_3A184[3 * IsHenSuushi - 3]);
                  result = ktoau::SetHenSuushi(v103, v6, v7, v373, v12);
                  ++a2;
                  ++v12;
                  *v9 = *v9 & 0xFE00 | (2 * v13) | 0x81;
                  v11 = v371;
                  goto LABEL_381;
                }

                result = ktoau::IsSuushiu(v9, a2, v373);
                if (result)
                {
                  v104 = result;
                  v105 = v373[0];
                  if (v373[0])
                  {
                    v106 = 0;
                    result = 0;
                    v11 = v371;
                    v107 = &v373[1];
                    v108 = v12;
                    v109 = v7;
                    v110 = v6;
                    do
                    {
                      if (v105 != 32 || v106)
                      {
                        v106 = 0;
                        *v110++ = v105;
                        v109->i16[0] = v108;
                        v109 = (v109 + 2);
                        result = (result + 1);
                      }

                      else
                      {
                        ++v108;
                        v106 = 1;
                      }

                      v111 = *v107++;
                      v105 = v111;
                    }

                    while (v111);
                  }

                  else
                  {
                    result = 0;
                    v110 = v6;
                    v11 = v371;
                  }

                  *v110 = 0;
                  *v9 = *v9 & 0xFE00 | (2 * v13) | 0x81;
                  a2 += v104;
                  v12 += v104;
                  goto LABEL_380;
                }
              }

              v365 = v46;
              v361 = v13 == 14;
              if ((v13 | 2) == 0xE)
              {
                result = ktoau::IsKanjiMatch(v9, a2, v373);
                v112 = result;
                if (result)
                {
                  wcscpy(v372, v373);
                  *(v9 + 3) = *(v9 + 1);
                  IsSettouu = ktoau::IsSettouu(v9, a2, v373);
                  v359 = v112;
                  if (v112 <= 2 && IsSettouu == 1 && !*(v9 + 3) && (result = ktoau::IsKanjiNa(v9, a2 + 1, 0), result) && ((v360 = 0, v140 = *a2, *a2 == 20803) || v140 == 21069))
                  {
                    v358 = v365;
LABEL_289:
                    if ((v13 == 12 || v13 == 10) && ((v366 = a2 + 1, ktoau::IsMojiMode(result, a2 + 1) == 12) && !ktoau::TanKanji2SetSub(12, v373, a2[1], a2[2], v140, v366) || ktoau::IsHiraNa(v9, v366, 1) || ktoau::IsKataNa(v9, v366, 1) || (IsSetubiNa = ktoau::IsSetubiNa(v9, v366, 0), IsSetubiNa) || *a2 == 12362 || (result = ktoau::IsMojiMode(IsSetubiNa, v366), result <= 0xE) && ((1 << result) & 0x4108) != 0) && (result = ktoau::IsSettouu(v9, a2, v373), result))
                    {
                      if ((*v9 & 0x20) == 0)
                      {
                        *v6++ = 32;
                        v7->i16[0] = v12;
                        v7 = (v7 + 2);
                      }

                      v11 = v371;
                      v143 = v373[0];
                      if (v373[0])
                      {
                        v144 = 0;
                        LODWORD(v145) = 0;
                        v146 = &v373[1];
                        v147 = v12;
                        v148 = v7;
                        v149 = v6;
                        do
                        {
                          if (v143 != 32 || v144)
                          {
                            v144 = 0;
                            *v149++ = v143;
                            v148->i16[0] = v147;
                            v148 = (v148 + 2);
                            LODWORD(v145) = v145 + 1;
                          }

                          else
                          {
                            ++v147;
                            v144 = 1;
                          }

                          v150 = *v146++;
                          v143 = v150;
                        }

                        while (v150);
                        v145 = v145;
                      }

                      else
                      {
                        v145 = 0;
                        v149 = v6;
                      }

                      *v149 = 0;
                      if ((v9[20] & 0x480) != 0)
                      {
                        v200 = 154;
                        v201 = -511;
                      }

                      else
                      {
                        if ((*v10 & 0x7E) != 0)
                        {
                          v201 = -511;
                        }

                        else
                        {
                          v201 = -483;
                        }

                        if ((*v10 & 0x7E) != 0)
                        {
                          v200 = 154;
                        }

                        else
                        {
                          v200 = 288;
                        }
                      }

                      v6 += v145;
                      v7 = (v7 + 2 * v145);
                      ++v12;
                      *v9 = (*v9 & 0xFE00 | (2 * v13) | 1) & v201 | v200;
                      ++a2;
                    }

                    else if (v358 && (result = ktoau::IsMojiMode(result, a2 + 1), result == 10) && (v159 = (*v9 >> 1) & 0xF, v159 != 3) && v159 != 8 && (result = ktoau::TanKanji2SetSub(10, v373, *a2, a2[1], *(a2 - 1), a2), result))
                    {
                      v160 = a2 + 1;
                      v367 = v10;
                      if ((*v9 & 0x20) == 0)
                      {
                        *v6++ = 32;
                        v7->i16[0] = v12;
                        v7 = (v7 + 2);
                      }

                      v161 = ktoau::TanKanji2Set(v9, a2, v373);
                      v362 = v161;
                      v162 = v373[0];
                      if (v373[0])
                      {
                        v163 = 0;
                        LODWORD(v164) = 0;
                        v165 = &v373[1];
                        v166 = v12;
                        v167 = v7;
                        v168 = v6;
                        do
                        {
                          if (v162 != 32 || v163)
                          {
                            v163 = 0;
                            *v168++ = v162;
                            v167->i16[0] = v166;
                            v167 = (v167 + 2);
                            LODWORD(v164) = v164 + 1;
                          }

                          else
                          {
                            ++v166;
                            v163 = 1;
                          }

                          v169 = *v165++;
                          v162 = v169;
                        }

                        while (v169);
                        v164 = v164;
                      }

                      else
                      {
                        v164 = 0;
                        v168 = v6;
                      }

                      *v168 = 0;
                      v266 = v12 + 1;
                      v6 += v164;
                      v7 = (v7 + 2 * v164);
                      IsMojiMode = ktoau::IsMojiMode(v161, a2 + 1);
                      if (IsMojiMode != 10)
                      {
                        v269 = 24;
                        goto LABEL_762;
                      }

                      v268 = ktoau::ZenToHan(IsMojiMode, a2 + 1, v6);
                      v7->i16[0] = v266;
                      if (v268 == 1)
                      {
                        if (*v6 == 12387)
                        {
                          v286 = *v9 | 0x20;
                          goto LABEL_594;
                        }
                      }

                      else if (v268 == 2)
                      {
                        v7->i16[1] = v266;
                      }

                      v286 = *v9 & 0xFFDF;
LABEL_594:
                      *v9 = v286;
                      if (*v6 == 65421)
                      {
                        if (v6[1] >> 1 == 32719)
                        {
                          goto LABEL_601;
                        }

                        v287 = 65396;
                        goto LABEL_600;
                      }

                      if (*v6 == 65418 && v6[1] >> 1 != 32719)
                      {
                        v287 = 65436;
LABEL_600:
                        *v6 = v287;
                      }

LABEL_601:
                      v6 += v268;
                      v7 = (v7 + 2 * v268);
                      *v9 |= 1u;
                      v288 = a2 + 2;
                      v266 = v12 + 2;
                      if (a2[2] != 12358)
                      {
                        goto LABEL_746;
                      }

                      v289 = *a2;
                      if (*a2 <= 28417)
                      {
                        if (v289 > 25341)
                        {
                          if (v289 <= 25612)
                          {
                            if (v289 != 25342)
                            {
                              v290 = 25539;
                              goto LABEL_744;
                            }
                          }

                          else if (v289 != 25613 && v289 != 25972)
                          {
                            v290 = 27468;
                            goto LABEL_744;
                          }
                        }

                        else
                        {
                          if (v289 <= 24916)
                          {
                            if (v289 == 21521)
                            {
                              v289 = *v160;
                              v290 = 12363;
                            }

                            else
                            {
                              v290 = 21764;
                            }

LABEL_744:
                            if (v289 != v290)
                            {
                              goto LABEL_746;
                            }

                            goto LABEL_745;
                          }

                          if (v289 != 24917 && v289 != 25201)
                          {
                            v290 = 25325;
                            goto LABEL_744;
                          }
                        }
                      }

                      else if (v289 <= 33309)
                      {
                        if (v289 <= 31068)
                        {
                          if (v289 != 28418)
                          {
                            v290 = 30097;
                            goto LABEL_744;
                          }
                        }

                        else if (v289 != 31069 && v289 != 32299)
                        {
                          v290 = 32341;
                          goto LABEL_744;
                        }
                      }

                      else if (v289 > 35634)
                      {
                        if (v289 != 35635 && v289 != 36855)
                        {
                          v290 = 36889;
                          goto LABEL_744;
                        }
                      }

                      else if (v289 != 33310 && v289 != 35475)
                      {
                        v290 = 35617;
                        goto LABEL_744;
                      }

LABEL_745:
                      *v6++ = 65395;
                      v7->i16[0] = v266;
                      v7 = (v7 + 2);
                      v288 = a2 + 3;
                      v266 = v12 + 3;
LABEL_746:
                      IsKanjiMatch = ktoau::IsDoushi(v268, v288 - 2);
                      if (!IsKanjiMatch)
                      {
                        goto LABEL_753;
                      }

                      v347 = 12356;
                      v348 = &dword_24308;
                      while (v347 != *(v288 - 1))
                      {
                        v349 = *v348++;
                        v347 = v349;
                        if (!v349)
                        {
                          goto LABEL_753;
                        }
                      }

                      if (*v288 == 26041 && (IsKanjiMatch = ktoau::IsKanjiMatch(v9, v288, v373), !IsKanjiMatch))
                      {
                        IsKanjiMatch = wcscpy(v6, dword_27220);
                        v7->i16[0] = v266;
                        v7->i16[1] = v266;
                        v6 += 2;
                        v7 = (v7 + 4);
                        v160 = v288 + 1;
                        ++v266;
                      }

                      else
                      {
LABEL_753:
                        v160 = v288;
                      }

                      IsMojiMode = ktoau::IsDoushi(IsKanjiMatch, v160 - 2);
                      if (IsMojiMode)
                      {
                        v350 = 12356;
                        v351 = &dword_24308;
                        while (v350 != *(v160 - 1))
                        {
                          v352 = *v351++;
                          v350 = v352;
                          if (!v352)
                          {
                            goto LABEL_761;
                          }
                        }

                        if (*v160 == 20808)
                        {
                          IsMojiMode = wcscpy(v6, dword_288D8);
                          v6 += 2;
                          v7->i16[0] = v266;
                          v7->i16[1] = v266;
                          v7 = (v7 + 4);
                          ++v160;
                          ++v266;
                        }
                      }

LABEL_761:
                      v269 = 20;
LABEL_762:
                      result = ktoau::IsMojiMode(IsMojiMode, v160);
                      if (v362 == 2 && result == 10)
                      {
                        result = ktoau::ZenToHan(result, v160, v6);
                        v7->i16[0] = v266;
                        if (result == 2)
                        {
                          v7->i16[1] = v266;
                        }

                        v6 += result;
                        ++v160;
                        ++v266;
                        v7 = (v7 + 2 * result);
                      }

                      *v9 = *v9 & 0xFE01 | v269 | 0x180;
                      *(v9 + 1) = 0;
                      *(v9 + 5) = 0;
                      a2 = v160;
                      v12 = v266;
                      v10 = v367;
                      v11 = v371;
                    }

                    else
                    {
                      if (v361)
                      {
                        v368 = v10;
                        v170 = 0;
                        v171 = a2 + 1;
                        do
                        {
                          result = ktoau::IsMojiMode(result, v171);
                          ++v170;
                          ++v171;
                        }

                        while (result == 14);
                        v172 = v170 >= 2;
                        v10 = v368;
                        if (v172)
                        {
                          if ((*v9 & 0x20) == 0)
                          {
                            *v6++ = 32;
                            v7->i16[0] = v12;
                            v7 = (v7 + 2);
                          }

                          v173 = 0;
                          v98 = a2;
                          do
                          {
                            result = ktoau::IsMojiMode(result, ++v98);
                            ++v173;
                          }

                          while (result == 14);
                          v404 = 0u;
                          v403 = 0u;
                          v401 = 0u;
                          v402 = 0u;
                          v399 = 0u;
                          v400 = 0u;
                          v397 = 0u;
                          v398 = 0u;
                          v395 = 0u;
                          v396 = 0u;
                          v393 = 0u;
                          v394 = 0u;
                          v391 = 0u;
                          v392 = 0u;
                          v389 = 0u;
                          v390 = 0u;
                          v387 = 0u;
                          v388 = 0u;
                          v385 = 0u;
                          v386 = 0u;
                          v383 = 0u;
                          v384 = 0u;
                          v381 = 0u;
                          v382 = 0u;
                          v379 = 0u;
                          v380 = 0u;
                          v377 = 0u;
                          v378 = 0u;
                          v375 = 0u;
                          v376 = 0u;
                          *v373 = 0u;
                          v374 = 0u;
                          v174 = wcsncpy(v373, a2, v173);
                          result = ktoau::SetKanSuuji(v174, v6, v7, v373, v12);
                          v12 += v173;
                          v6 += result;
                          *v9 = *v9 & 0xFE00 | 0x91;
                          v7 = (v7 + 2 * result);
                          goto LABEL_433;
                        }
                      }

                      v11 = v371;
                      if (v358 && (result = ktoau::IsNaSetubiu(v9, a2, v373), result))
                      {
                        *v6 = 32;
                        v185 = v6 + 1;
                        v7->i16[0] = v12;
                        v186 = v7 + 1;
                        v187 = v373[0];
                        if (v373[0])
                        {
                          v188 = 0;
                          LODWORD(v189) = 0;
                          v190 = &v373[1];
                          v191 = v12;
                          v192 = v186;
                          v193 = v185;
                          do
                          {
                            if (v187 != 32 || v188)
                            {
                              v188 = 0;
                              *v193++ = v187;
                              *v192++ = v191;
                              LODWORD(v189) = v189 + 1;
                            }

                            else
                            {
                              ++v191;
                              v188 = 1;
                            }

                            v194 = *v190++;
                            v187 = v194;
                          }

                          while (v194);
                          v189 = v189;
                        }

                        else
                        {
                          v189 = 0;
                          v193 = v185;
                        }

                        *v193 = 0;
                        v6 = &v185[v189];
                        v7 = &v186[v189];
                        v12 += result;
                        *v371 = 0;
                        a2 += result;
                      }

                      else if ((v13 | 2) == 0xE)
                      {
                        v196 = *v9;
                        if ((v196 & 0x1E) != 0x1C && (v196 & 0x20) == 0 || ((v196 & 0x40) != 0 || (v197 = (v196 >> 1) & 0xF, v197 == 5) || v197 == 9 || (v198 = ktoau::IsMojiMode(result, a2 + 1), v198 == 7) || v198 == 10) && (v196 & 0x20) == 0)
                        {
                          *v6++ = 32;
                          v7->i16[0] = v12;
                          v7 = (v7 + 2);
                          LOWORD(v196) = *v9;
                          v369 = 1;
                        }

                        else
                        {
                          v369 = 0;
                        }

                        if ((v196 & 0x100) == 0 && !ktoau::IsKanjiMatch(v9, a2 + 1, v373))
                        {
                          IsHiraMatch = ktoau::IsHiraMatch(v9, a2 + 1, v373);
                          if (!IsHiraMatch)
                          {
                            v261 = ktoau::IsDoushi(IsHiraMatch, a2 + 1);
                            if (v261)
                            {
                              v262 = 12356;
                              v263 = &dword_24308;
                              while (v262 != a2[2])
                              {
                                v264 = *v263++;
                                v262 = v264;
                                if (!v264)
                                {
                                  goto LABEL_518;
                                }
                              }
                            }

                            else
                            {
LABEL_518:
                              IsFukuKanji = ktoau::IsFukuKanji(v261, a2 + 1, v373);
                              if (!IsFukuKanji || (IsFukuKanji = ktoau::IsDoushi(IsFukuKanji, a2 + 2), !IsFukuKanji) || (LODWORD(IsFukuKanji) = ktoau::IsMojiMode(IsFukuKanji, a2 + 3), IsFukuKanji != 10))
                              {
                                if (((ktoau::TanKanji2SetSub(IsFukuKanji, v373, *a2, a2[1], *(a2 - 1), a2) == 0) & ~v369) != 0)
                                {
                                  v373[0] = 0;
                                  ktoau::TanKanji1Set(v9, a2, v373);
                                  goto LABEL_465;
                                }
                              }
                            }
                          }
                        }

                        v373[0] = 0;
                        ktoau::TanKanji2Set(v9, a2, v373);
LABEL_465:
                        v233 = v373[0];
                        v11 = v371;
                        if (v373[0])
                        {
                          if (v373[0] != 32 || v373[1] != 0)
                          {
                            goto LABEL_474;
                          }
                        }

                        result = ktoau::SetKigou(v9, a2, v6, v7, v12);
                        if (!result)
                        {
                          v233 = 10276;
                          *v373 = vdup_n_s32(0x2824u);
                          v373[2] = 0;
LABEL_474:
                          v235 = 0;
                          result = 0;
                          v236 = &v373[1];
                          v237 = v12;
                          v238 = v7;
                          v239 = v6;
                          do
                          {
                            if (v233 != 32 || v235)
                            {
                              v235 = 0;
                              *v239++ = v233;
                              v238->i16[0] = v237;
                              v238 = (v238 + 2);
                              result = (result + 1);
                            }

                            else
                            {
                              ++v237;
                              v235 = 1;
                            }

                            v240 = *v236++;
                            v233 = v240;
                          }

                          while (v240);
                          *v239 = 0;
                          if (v361)
                          {
                            v241 = 16;
                          }

                          else
                          {
                            v241 = 28;
                          }

                          *v9 = *v9 & 0xFE00 | v241 | 0x81;
                          ++a2;
                          ++v12;
LABEL_380:
                          *(v9 + 1) = 0;
                          *(v9 + 5) = 0;
                          goto LABEL_381;
                        }

                        *v9 = *v9 & 0xFFE0 | (2 * v13) | 1;
                        a2 += 2;
                        v12 += 2;
LABEL_381:
                        v6 += result;
                        v7 = (v7 + 2 * result);
                      }

                      else if (v13 == 10)
                      {
                        v202 = *v9;
                        if ((v202 & 0x40) != 0)
                        {
                          result = ktoau::IsHira2(result, a2, v373);
                          if (result)
                          {
                            *v6 = 32;
                            v203 = v6 + 1;
                            v7->i16[0] = v12;
                            v204 = v7 + 1;
                            v205 = v373[0];
                            if (v373[0])
                            {
                              v206 = 0;
                              LODWORD(v207) = 0;
                              v208 = &v373[1];
                              v209 = v12;
                              v210 = v204;
                              v211 = v203;
                              do
                              {
                                if (v205 != 32 || v206)
                                {
                                  v206 = 0;
                                  *v211++ = v205;
                                  *v210++ = v209;
                                  LODWORD(v207) = v207 + 1;
                                }

                                else
                                {
                                  ++v209;
                                  v206 = 1;
                                }

                                v212 = *v208++;
                                v205 = v212;
                              }

                              while (v212);
                              v207 = v207;
                            }

                            else
                            {
                              v207 = 0;
                              v211 = v203;
                            }

                            *v211 = 0;
                            a2 += result;
                            v12 += result;
                            v6 = &v203[v207];
                            *v9 = *v9 & 0xFE00 | 0x95;
                            v7 = &v204[v207];
                            goto LABEL_122;
                          }

                          v202 = *v9;
                        }

                        if ((v202 & 0x80) == 0 || (result = ktoau::IsJoshi(result, a2, v373), v202 = *v9, !result))
                        {
                          if ((v202 & 0x20) == 0)
                          {
                            v280 = (v202 >> 1) & 0xF;
                            if (v280 == 5 || v280 == 9)
                            {
                              goto LABEL_574;
                            }
                          }

                          if ((v202 & 0x1E) == 0x1A)
                          {
                            if (*a2 == 12375)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_288E4, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_288F0, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }
                          }

                          if (*(a2 - 1) == 12367)
                          {
                            result = wcsncmp(a2, dword_288FC, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }
                          }

                          result = ktoau::IsJoshi(result, a2 - 1, v373);
                          if (result)
                          {
                            result = wcsncmp(a2, dword_28908, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28914, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28920, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_252DC, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_2892C, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28938, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28944, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_288F0, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_288E4, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28950, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_2895C, 2uLL);
                            if (!result)
                            {
                              goto LABEL_574;
                            }

                            result = wcsncmp(a2, dword_28968, 2uLL);
                            if (!result || (result = wcsncmp(a2, dword_288FC, 2uLL), !result) || (result = wcsncmp(a2, dword_28974, 2uLL), !result) || (result = wcsncmp(a2, dword_28980, 2uLL), !result) || (result = wcsncmp(a2, dword_2898C, 2uLL), !result) || (result = wcsncmp(a2, dword_28998, 2uLL), !result) || (result = wcsncmp(a2, dword_289A4, 2uLL), !result) || (result = wcsncmp(a2, dword_289B0, 2uLL), !result))
                            {
LABEL_574:
                              *v6++ = 32;
                              v7->i16[0] = v12;
                              v7 = (v7 + 2);
                            }
                          }

                          result = ktoau::ZenToHan(result, a2, v6);
                          v281 = result;
                          v7->i16[0] = v12;
                          if (result != 1)
                          {
                            if (result == 2)
                            {
                              v7->i16[1] = v12;
                            }

                            goto LABEL_578;
                          }

                          if (*v6 == 65395 && v12 != 1)
                          {
                            if ((*(v6 - 1) - 65383) > 0x38)
                            {
                              goto LABEL_578;
                            }

                            v283 = a2[1] - 12353;
                            if (v283 <= 6 && ((1 << v283) & 0x55) != 0)
                            {
                              goto LABEL_578;
                            }

                            result = (a2 - 1);
                            v284 = *(a2 - 1);
                            if (v284 <= 27467)
                            {
                              if (v284 == 20282)
                              {
                                goto LABEL_578;
                              }

                              v285 = 21764;
                            }

                            else
                            {
                              if (v284 == 27468 || v284 == 35036)
                              {
                                goto LABEL_578;
                              }

                              v285 = 35635;
                            }

                            if (v284 == v285)
                            {
                              goto LABEL_578;
                            }

                            result = wcsncmp(result, dword_289BC, 2uLL);
                            if (!result)
                            {
                              goto LABEL_578;
                            }

                            if (v284 > 35616)
                            {
                              if (v284 == 35617 || v284 == 36000)
                              {
                                goto LABEL_578;
                              }

                              v353 = 36861;
                            }

                            else
                            {
                              if (v284 == 25613 || v284 == 30097)
                              {
                                goto LABEL_578;
                              }

                              v353 = 31069;
                            }

                            if (v284 == v353)
                            {
                              goto LABEL_578;
                            }

                            v354 = *(a2 - 2);
                            v370 = a2 - 2;
                            if (v354 == 25201)
                            {
                              goto LABEL_578;
                            }

                            if (v354 == 21521)
                            {
                              if (v284 <= 24961)
                              {
                                if (v284 <= 21343)
                                {
                                  if (v284 == 12363)
                                  {
                                    goto LABEL_578;
                                  }

                                  v355 = 20105;
                                }

                                else
                                {
                                  if (v284 == 21344 || v284 == 22890)
                                  {
                                    goto LABEL_578;
                                  }

                                  v355 = 24605;
                                }

                                goto LABEL_807;
                              }

                              if (v284 <= 35479)
                              {
                                if (v284 == 24962)
                                {
                                  goto LABEL_578;
                                }

LABEL_801:
                                if (v284 == 31478)
                                {
                                  goto LABEL_578;
                                }

                                v355 = 35186;
LABEL_807:
                                if (v284 != v355)
                                {
                                  result = wcsncmp(v370, dword_289C8, 2uLL);
                                  if (result)
                                  {
                                    if (v284 > 27926)
                                    {
                                      if (v284 > 36889)
                                      {
                                        if (v284 > 38597)
                                        {
                                          if ((v284 - 38598) < 2 || v284 == 39000)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 39178;
                                        }

                                        else if (v284 > 36972)
                                        {
                                          if (v284 == 36973)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 38360;
                                        }

                                        else
                                        {
                                          if (v284 == 36890)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 36963;
                                        }
                                      }

                                      else if (v284 > 32079)
                                      {
                                        if (v284 > 35012)
                                        {
                                          if (v284 == 35013)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 35206;
                                        }

                                        else
                                        {
                                          if (v284 == 32080)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 32722;
                                        }
                                      }

                                      else if (v284 > 29400)
                                      {
                                        if (v284 == 29401)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 31505;
                                      }

                                      else
                                      {
                                        if (v284 == 27927)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 28516;
                                      }
                                    }

                                    else if (v284 > 21838)
                                    {
                                      if (v284 > 25125)
                                      {
                                        if (v284 > 25238)
                                        {
                                          if (v284 == 25239)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 25285;
                                        }

                                        else
                                        {
                                          if (v284 == 25126)
                                          {
                                            goto LABEL_578;
                                          }

                                          v356 = 25173;
                                        }
                                      }

                                      else if (v284 > 24466)
                                      {
                                        if (v284 == 24467)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 24785;
                                      }

                                      else
                                      {
                                        if (v284 == 21839)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 23244;
                                      }
                                    }

                                    else if (v284 > 20350)
                                    {
                                      if (v284 > 21493)
                                      {
                                        if (v284 == 21494)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 21809;
                                      }

                                      else
                                      {
                                        if (v284 == 20351)
                                        {
                                          goto LABEL_578;
                                        }

                                        v356 = 21172;
                                      }
                                    }

                                    else if (v284 > 20275)
                                    {
                                      if (v284 == 20276)
                                      {
                                        goto LABEL_578;
                                      }

                                      v356 = 20303;
                                    }

                                    else
                                    {
                                      if (v284 == 20132)
                                      {
                                        goto LABEL_578;
                                      }

                                      v356 = 20181;
                                    }

                                    if (v284 != v356)
                                    {
                                      result = wcsncmp(v370, dword_289D4, 2uLL);
                                      if (result)
                                      {
                                        result = wcsncmp(v370, dword_289E0, 2uLL);
                                        if (result)
                                        {
                                          result = wcsncmp(v370, dword_289EC, 2uLL);
                                          if (result)
                                          {
                                            result = wcsncmp(v370, dword_289F8, 4uLL);
                                            if (result)
                                            {
                                              result = wcsncmp(v370, dword_28A08, 2uLL);
                                              if (result)
                                              {
                                                result = wcsncmp(v370, dword_28A14, 2uLL);
                                                if (result)
                                                {
                                                  v363 = a2 - 3;
                                                  result = wcsncmp(a2 - 3, dword_28A20, 3uLL);
                                                  if (result)
                                                  {
                                                    result = wcsncmp(v363, dword_28A30, 3uLL);
                                                    if (result)
                                                    {
                                                      result = wcsncmp(v363, dword_28A40, 3uLL);
                                                      if (result)
                                                      {
                                                        result = wcsncmp(v370, dword_28A50, 2uLL);
                                                        if (result)
                                                        {
                                                          result = wcsncmp(v370, dword_28A5C, 2uLL);
                                                          if (result)
                                                          {
                                                            result = wcsncmp(v370, dword_28A68, 2uLL);
                                                            if (result)
                                                            {
                                                              if (v284 > 21511)
                                                              {
                                                                if (v284 == 21512)
                                                                {
                                                                  goto LABEL_578;
                                                                }

                                                                v357 = 36898;
                                                              }

                                                              else
                                                              {
                                                                if (v284 == 12361)
                                                                {
                                                                  goto LABEL_578;
                                                                }

                                                                v357 = 20250;
                                                              }

                                                              if (v284 != v357)
                                                              {
                                                                *v6 = 65392;
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

LABEL_578:
                                v282 = *v9 & 0xFFDF;
LABEL_579:
                                v6 += v281;
                                *v9 = v282 & 0xFE20 | 0x195;
                                v7 = (v7 + 2 * v281);
                                ++a2;
                                ++v12;
                                goto LABEL_122;
                              }
                            }

                            else
                            {
                              if (v284 <= 31477)
                              {
                                if (v284 <= 22889)
                                {
                                  if (v284 == 20105)
                                  {
                                    goto LABEL_578;
                                  }

                                  v355 = 21344;
                                }

                                else
                                {
                                  if (v284 == 22890 || v284 == 24605)
                                  {
                                    goto LABEL_578;
                                  }

                                  v355 = 24962;
                                }

                                goto LABEL_807;
                              }

                              if (v284 <= 35479)
                              {
                                goto LABEL_801;
                              }
                            }

                            if (v284 == 35480 || v284 == 36036)
                            {
                              goto LABEL_578;
                            }

                            v355 = 39164;
                            goto LABEL_807;
                          }

                          if (*v6 != 65391)
                          {
                            goto LABEL_578;
                          }

                          v282 = *v9 | 0x20;
                          goto LABEL_579;
                        }

                        v270 = (v202 >> 1) & 0xF;
                        if (v270 == 9 || v270 == 5)
                        {
                          v271 = *(a2 - 1);
                          if (v271 != 41 && v271 != 8221)
                          {
                            *v6++ = 32;
                            v7->i16[0] = v12;
                            v7 = (v7 + 2);
                          }
                        }

                        v272 = v373[0];
                        if (v373[0])
                        {
                          v273 = 0;
                          LODWORD(v274) = 0;
                          v275 = &v373[1];
                          v276 = v12;
                          v277 = v7;
                          v278 = v6;
                          do
                          {
                            if (v272 != 32 || v273)
                            {
                              v273 = 0;
                              *v278++ = v272;
                              v277->i16[0] = v276;
                              v277 = (v277 + 2);
                              LODWORD(v274) = v274 + 1;
                            }

                            else
                            {
                              ++v276;
                              v273 = 1;
                            }

                            v279 = *v275++;
                            v272 = v279;
                          }

                          while (v279);
                          v274 = v274;
                        }

                        else
                        {
                          v274 = 0;
                          v278 = v6;
                        }

                        *v278 = 0;
                        a2 += result;
                        v12 += result;
                        v6 += v274;
                        *v9 = *v9 & 0xFE00 | 0x1D5;
                        v7 = (v7 + 2 * v274);
LABEL_122:
                        *(v9 + 1) = 0;
                        *(v9 + 5) = 0;
                        v11 = v371;
                      }

                      else
                      {
                        v373[0] = 0;
                        result = ktoau::ZenToHan(result, a2 - 1, v373);
                        v242 = *a2;
                        v243 = 65288;
                        v244 = &dword_28710;
                        while (v242 != v243)
                        {
                          v245 = *v244++;
                          v243 = v245;
                          if (!v245)
                          {
                            v246 = 40;
                            v247 = &dword_28744;
                            while (v246 != v242)
                            {
                              v248 = *v247++;
                              v246 = v248;
                              if (!v248)
                              {
                                goto LABEL_499;
                              }
                            }

                            break;
                          }
                        }

                        if ((*v9 & 0x20) == 0)
                        {
                          *v9 = *v9 & 0xFE1F | 0x120;
                          if (*a2 != 40 && *a2 != 65288)
                          {
                            *v6++ = 32;
                            v7->i16[0] = v12;
                            v7 = (v7 + 2);
                          }

                          goto LABEL_648;
                        }

LABEL_499:
                        v250 = 12289;
                        v251 = &dword_28760;
                        do
                        {
                          if (v242 == v250)
                          {
                            goto LABEL_648;
                          }

                          v252 = *v251++;
                          v250 = v252;
                        }

                        while (v252);
                        v253 = 46;
                        v254 = &dword_287B4;
                        do
                        {
                          if (v253 == v242)
                          {
                            goto LABEL_648;
                          }

                          v255 = *v254++;
                          v253 = v255;
                        }

                        while (v255);
                        if (*(a2 - 1) >= 128)
                        {
                          if ((v373[0] - 32) <= 0x5F && (v13 & 0xE) == 8)
                          {
                            goto LABEL_648;
                          }
                        }

                        else if ((v13 & 0xE) == 8)
                        {
                          goto LABEL_648;
                        }

                        if (v242 >> 8 != 40 && (*v9 & 0x20) == 0)
                        {
                          if (v242 <= 65292)
                          {
                            if (v242 != 8208 && v242 != 12288)
                            {
LABEL_647:
                              *v6++ = 32;
                              v7->i16[0] = v12;
                              v7 = (v7 + 2);
                              *v9 = *v9 & 0xFF5F | 0x80;
                            }
                          }

                          else if (v242 != 65293 && v242 != 65306 && v242 != 65374)
                          {
                            goto LABEL_647;
                          }
                        }

LABEL_648:
                        v292 = *a2;
                        v293 = 65288;
                        v294 = &dword_28710;
                        while (v292 != v293)
                        {
                          v295 = *v294++;
                          v293 = v295;
                          if (!v295)
                          {
                            v296 = 40;
                            v297 = &dword_28744;
                            while (v296 != v292)
                            {
                              v298 = *v297++;
                              v296 = v298;
                              if (!v298)
                              {
                                v299 = *v9;
                                if (!v360)
                                {
                                  v308 = v299 & 0xFE1F | 0x180;
                                  goto LABEL_668;
                                }

                                if ((v299 & 0x1E) == 0x10 || (result = ktoau::IsTokuSuji(v9, a2, v373), v299 = *v9, !result))
                                {
                                  v308 = v299 & 0xFE01 | 0xB0;
                                  goto LABEL_668;
                                }

                                if ((v299 & 0x20) == 0)
                                {
                                  *v6++ = 32;
                                  v7->i16[0] = v12;
                                  v7 = (v7 + 2);
                                }

                                v300 = v373[0];
                                if (v373[0])
                                {
                                  v301 = 0;
                                  LODWORD(v302) = 0;
                                  v303 = &v373[1];
                                  v304 = v12;
                                  v305 = v7;
                                  v306 = v6;
                                  do
                                  {
                                    if (v300 != 32 || v301)
                                    {
                                      v301 = 0;
                                      *v306++ = v300;
                                      v305->i16[0] = v304;
                                      v305 = (v305 + 2);
                                      LODWORD(v302) = v302 + 1;
                                    }

                                    else
                                    {
                                      ++v304;
                                      v301 = 1;
                                    }

                                    v307 = *v303++;
                                    v300 = v307;
                                  }

                                  while (v307);
                                  v302 = v302;
                                }

                                else
                                {
                                  v302 = 0;
                                  v306 = v6;
                                }

                                *v306 = 0;
                                a2 += result;
                                v12 += result;
                                v6 += v302;
                                v7 = (v7 + 2 * v302);
                                v69 = *v9 & 0xFE80;
                                v70 = 27;
                                goto LABEL_107;
                              }
                            }

                            break;
                          }
                        }

                        v308 = *v9 & 0xFE1F | 0x120;
LABEL_668:
                        *v9 = v308;
                        result = ktoau::ZenToHan(result, a2, v6);
                        if (result)
                        {
                          v309 = *v6;
                          if (*v6 != 34)
                          {
                            v7->i16[0] = v12;
                            if (result == 2)
                            {
                              v7->i16[1] = v12;
                            }

                            if (v309 > 92)
                            {
                              if ((v309 - 65380) < 2)
                              {
                                goto LABEL_695;
                              }

                              if (v309 != 93)
                              {
                                if (v309 != 65377 || a2[2] < 32)
                                {
                                  goto LABEL_723;
                                }

                                v313 = a2[1];
                                v314 = 12289;
                                v315 = &dword_28760;
                                while (v313 != v314)
                                {
                                  v316 = *v315++;
                                  v314 = v316;
                                  if (!v316)
                                  {
                                    v317 = 46;
                                    v318 = &dword_287B4;
                                    while (v317 != v313)
                                    {
                                      v319 = *v318++;
                                      v317 = v319;
                                      if (!v319)
                                      {
                                        v320 = 0;
                                        goto LABEL_722;
                                      }
                                    }

                                    break;
                                  }
                                }

                                v320 = 1;
LABEL_722:
                                if (v320 | a5)
                                {
                                  goto LABEL_723;
                                }

                                *(v6 + 1) = 0x2000000020;
                                v7->i16[1] = v12;
                                v7->i16[2] = v12;
                                v6 += 3;
                                v7 = (v7 + 6);
                                v336 = *v9 & 0xFE1F | 0x120;
                                goto LABEL_731;
                              }
                            }

                            else
                            {
                              if (v309 == 32)
                              {
                                ++v6;
                                v7 = (v7 + 2);
                                v329 = *v9 & 0xFE00 | (2 * v13);
                                v330 = 289;
                                goto LABEL_730;
                              }

                              if (v309 != 33)
                              {
                                if (v309 == 91 && !a5 && a2[2] >= 128)
                                {
                                  v331 = 65378;
                                  goto LABEL_718;
                                }

LABEL_723:
                                v6 += result;
                                v7 = (v7 + 2 * result);
                                v333 = *v9;
                                v334 = v333 | 1;
                                *v9 = v333 | 1;
                                v335 = (v333 >> 1) & 0xF;
                                if (v335 == 9)
                                {
                                  if (!v360)
                                  {
                                    goto LABEL_725;
                                  }

LABEL_729:
                                  v329 = v334 & 0xFFE3;
                                  v330 = 18;
LABEL_730:
                                  v336 = v329 | v330;
                                }

                                else
                                {
                                  v15 = v335 == 5;
                                  v337 = v360;
                                  if (!v15)
                                  {
                                    v337 = 0;
                                  }

                                  if (v337)
                                  {
                                    goto LABEL_729;
                                  }

LABEL_725:
                                  v336 = v334 & 0xFFE1 | (2 * v13);
                                }

LABEL_731:
                                *v9 = v336;
LABEL_732:
                                v310 = *v9;
                                v338 = *v9 | 1;
                                *v9 = v338;
                                v339 = *a2;
                                v340 = 65288;
                                v341 = &dword_28710;
                                while (v339 != v340)
                                {
                                  v342 = *v341++;
                                  v340 = v342;
                                  if (!v342)
                                  {
                                    v343 = 40;
                                    v344 = &dword_28744;
                                    while (v343 != v339)
                                    {
                                      v345 = *v344++;
                                      v343 = v345;
                                      if (!v345)
                                      {
                                        v311 = 129;
                                        goto LABEL_739;
                                      }
                                    }

                                    break;
                                  }
                                }

                                v312 = v338 & 0xFF7F;
                                goto LABEL_741;
                              }

LABEL_695:
                              v321 = a2[1];
                              v322 = 12289;
                              v323 = &dword_28760;
                              while (v321 != v322)
                              {
                                v324 = *v323++;
                                v322 = v324;
                                if (!v324)
                                {
                                  v325 = 46;
                                  v326 = &dword_287B4;
                                  while (v325 != v321)
                                  {
                                    v327 = *v326++;
                                    v325 = v327;
                                    if (!v327)
                                    {
                                      v328 = 0;
                                      goto LABEL_704;
                                    }
                                  }

                                  break;
                                }
                              }

                              v328 = 1;
LABEL_704:
                              if (!(v328 | a5))
                              {
                                v6[1] = 32;
                                v7->i16[1] = v12;
                                v6 += 2;
                                v7 = (v7 + 4);
                                *v9 = 288;
                                goto LABEL_732;
                              }

                              if (v309 != 93)
                              {
                                goto LABEL_723;
                              }
                            }

                            v332 = (*v9 >> 1) & 0xF;
                            if (v332 == 6)
                            {
                              if (a5)
                              {
                                goto LABEL_723;
                              }
                            }

                            else if (a5 || v332 < 0xA)
                            {
                              goto LABEL_723;
                            }

                            v331 = 65379;
LABEL_718:
                            *v6++ = v331;
                            v7 = (v7 + 2);
                            goto LABEL_732;
                          }
                        }

                        result = ktoau::SetKigou(v9, a2, v6, v7, v12);
                        if (result)
                        {
                          v6 += result;
                          v7 = (v7 + 2 * result);
                          v310 = *v9 & 0xFFE0 | (2 * v13);
                          *v9 = v310 | 1;
                          if (*a2 != 65374 && *a2 != 8208)
                          {
                            v11 = v371;
                            goto LABEL_742;
                          }

                          v311 = 33;
LABEL_739:
                          v312 = v310 | v311;
                        }

                        else
                        {
                          *v6++ = *a2;
                          v7->i16[0] = v12;
                          v7 = (v7 + 2);
                          v312 = *v9 & 0xFFE0 | (2 * v13);
                        }

LABEL_741:
                        v11 = v371;
                        *v9 = v312;
LABEL_742:
                        ++v12;
                        ++a2;
                      }
                    }
                  }

                  else if ((*v9 & 0x80) != 0 && v359 <= 2 && (*v9 & 0x1E) == 0x1A && ktoau::IsSetubiu(v9, a2, v373) == 1 && *a2 != 20013 && *a2 != 22823 && (ktoau::IsKanjiNa(v9, a2 + 1, 0) && !ktoau::IsKanjiNa(v9, a2 + 2, 0) && ((v116 = *(v9 + 3)) == 0 || (v116 & 0x200) != 0) && (result = ktoau::TanKanji2SetSub(0, v373, a2[2], a2[3], *a2 + 1, (a2 + 2)), !result) || (!wcsncmp(a2, dword_287FC, 2uLL) || !wcsncmp(a2, dword_28808, 2uLL)) && (result = ktoau::IsKanjiMatch(v9, a2 + 1, v373), result) || (*v10 & 2) != 0 && (result = wcsncmp(a2, dword_28814, 2uLL), !result) || ktoau::IsKanjiMatch(v9, a2 + 1, v373) && (result = ktoau::IsKanjiMatch(v9, a2 + 3, v373), result)))
                  {
                    v360 = 0;
                    v112 = 0;
                    if (!v365)
                    {
                      goto LABEL_247;
                    }

LABEL_231:
                    if ((*v371 & 0x80) == 0 && ((*v371 & 0x200) == 0 || (result = ktoau::IsSetubiNa(v9, a2, 1), !result)) && (*v10 & 0x80) == 0 || (result = ktoau::IsSetubiu(v9, a2, v373), !result))
                    {
                      v112 = 1;
                      goto LABEL_247;
                    }

                    if ((*v371 & 0x400) != 0)
                    {
                      *v6++ = 32;
                      v7->i16[0] = v12;
                      v7 = (v7 + 2);
                    }

                    v117 = v373[0];
                    if (v373[0])
                    {
                      v118 = 0;
                      LODWORD(v119) = 0;
                      v120 = &v373[1];
                      v121 = v12;
                      v122 = v7;
                      v123 = v6;
                      do
                      {
                        if (v117 != 32 || v118)
                        {
                          v118 = 0;
                          *v123++ = v117;
                          v122->i16[0] = v121;
                          v122 = (v122 + 2);
                          LODWORD(v119) = v119 + 1;
                        }

                        else
                        {
                          ++v121;
                          v118 = 1;
                        }

                        v124 = *v120++;
                        v117 = v124;
                      }

                      while (v124);
                      v119 = v119;
                    }

                    else
                    {
                      v119 = 0;
                      v123 = v6;
                    }

                    *v123 = 0;
                    v6 += v119;
                    v7 = (v7 + 2 * v119);
                    a2 += result;
                    v12 += result;
                    *v9 = *v9 & 0xFE01 | 0x9A;
                    v175 = v9[20];
                    if ((v175 & 0x300) == 0)
                    {
                      goto LABEL_385;
                    }

                    result = ktoau::IsKei(result, a2);
                    if (result)
                    {
                      *v10 = 1024;
                      goto LABEL_386;
                    }

                    if ((v175 & 0x200) != 0 && (result = ktoau::IsSetubiNa(v9, a2 + 1, 1), result))
                    {
                      *v10 = 0;
                      v11 = v371;
                      *v371 = 512;
                    }

                    else
                    {
LABEL_385:
                      *v10 = 0;
LABEL_386:
                      v11 = v371;
                      *v371 = 0;
                    }
                  }

                  else
                  {
                    result = wcscpy(v373, v372);
                    *(v9 + 1) = *(v9 + 3);
                    v114 = *v9;
                    if ((v114 & 0x20) != 0)
                    {
                      v11 = v371;
                    }

                    else
                    {
                      v115 = (v114 >> 1) & 0xF;
                      v11 = v371;
                      if (v115 != 3 && v115 != 8)
                      {
                        *v6++ = 32;
                        v7->i16[0] = v12;
                        v7 = (v7 + 2);
                      }
                    }

                    v177 = v373[0];
                    if (v373[0])
                    {
                      v178 = 0;
                      LODWORD(v179) = 0;
                      v180 = &v373[1];
                      v181 = v12;
                      v182 = v7;
                      v183 = v6;
                      do
                      {
                        if (v177 != 32 || v178)
                        {
                          v178 = 0;
                          *v183++ = v177;
                          v182->i16[0] = v181;
                          v182 = (v182 + 2);
                          LODWORD(v179) = v179 + 1;
                        }

                        else
                        {
                          ++v181;
                          v178 = 1;
                        }

                        v184 = *v180++;
                        v177 = v184;
                      }

                      while (v184);
                      v179 = v179;
                    }

                    else
                    {
                      v179 = 0;
                      v183 = v6;
                    }

                    *v183 = 0;
                    a2 += v359;
                    v12 += v359;
                    v6 += v179;
                    v7 = (v7 + 2 * v179);
                    *v9 = *v9 & 0xFE00 | 0x9B;
                    *(v9 + 5) = 0;
                  }
                }

                else
                {
                  v360 = 0;
                  if (v365)
                  {
                    goto LABEL_171;
                  }

LABEL_247:
                  if ((v13 - 11) > 1)
                  {
                    v358 = v112;
                  }

                  else
                  {
                    if ((*v9 & 0x19E) == 0x9A)
                    {
                      if (!wcsncmp(a2, dword_28848, 2uLL) || !wcsncmp(a2, dword_28854, 2uLL) || !wcsncmp(a2, dword_28860, 2uLL) || !wcsncmp(a2, dword_2886C, 2uLL) || !wcsncmp(a2, dword_28878, 2uLL) || !wcsncmp(a2, dword_28884, 2uLL) || !wcsncmp(a2, dword_28890, 2uLL) || !wcsncmp(a2, dword_2889C, 2uLL) || (v125 = wcsncmp(a2, &unk_288A8, 1uLL)) == 0 || (result = ktoau::TanKanji2SetSub(v125, v373, *a2, a2[1], *(a2 - 1), a2), !result))
                      {
                        result = ktoau::IsSetubiu(v9, a2, v373);
                        if (result)
                        {
                          v11 = v371;
                          if ((*v371 & 0x400) != 0)
                          {
                            *v6++ = 32;
                            v7->i16[0] = v12;
                            v7 = (v7 + 2);
                          }

                          v126 = *(v9 + 2);
                          *(v9 + 1) = v126;
                          v127 = *a2;
                          if (*a2 == 30010 && ((v126 & 8) == 0 || (v128 = result, wcscpy(v373, dword_288B0), result = v128, v127 = *a2, *a2 == 30010)))
                          {
                            if ((*v10 & 0x10) != 0)
                            {
                              v129 = result;
                              wcscpy(v373, dword_288C0);
                              result = v129;
                              v127 = *a2;
                              goto LABEL_267;
                            }
                          }

                          else
                          {
LABEL_267:
                            if (v127 == 26449)
                            {
                              if ((*v10 & 0x40) == 0 || (v130 = result, wcscpy(v373, dword_288CC), result = v130, *a2 == 26449))
                              {
                                if ((*v10 & 0x20) != 0)
                                {
                                  v131 = result;
                                  wcscpy(v373, dword_270A0);
                                  result = v131;
                                }
                              }
                            }
                          }

                          v132 = v373[0];
                          if (v373[0])
                          {
                            v133 = 0;
                            LODWORD(v134) = 0;
                            v135 = &v373[1];
                            v136 = v12;
                            v137 = v7;
                            v138 = v6;
                            do
                            {
                              if (v132 != 32 || v133)
                              {
                                v133 = 0;
                                *v138++ = v132;
                                v137->i16[0] = v136;
                                v137 = (v137 + 2);
                                LODWORD(v134) = v134 + 1;
                              }

                              else
                              {
                                ++v136;
                                v133 = 1;
                              }

                              v139 = *v135++;
                              v132 = v139;
                            }

                            while (v139);
                            v134 = v134;
                          }

                          else
                          {
                            v134 = 0;
                            v138 = v6;
                          }

                          *v138 = 0;
                          v6 += v134;
                          v7 = (v7 + 2 * v134);
                          *v9 = *v9 & 0xFE01 | 0x9A;
                          a2 += result;
                          v12 += result;
                          goto LABEL_137;
                        }
                      }
                    }

                    v358 = v112;
                    if (v13 == 11)
                    {
                      goto LABEL_285;
                    }
                  }

LABEL_282:
                  v140 = *a2;
                  if (*a2 != 65288 && (v140 != 12540 || (*v9 & 0x1E) != 0x16))
                  {
                    goto LABEL_289;
                  }

LABEL_285:
                  result = ktoau::IsKataMatch(v9, a2, v373);
                  v141 = *a2;
                  if (result)
                  {
                    if (v141 == 65288)
                    {
                      v11 = v371;
                    }

                    else
                    {
                      v11 = v371;
                      if ((*v9 & 0x20) == 0 && *v9)
                      {
                        *v6++ = 32;
                        v7->i16[0] = v12;
                        v7 = (v7 + 2);
                      }
                    }

                    v151 = v373[0];
                    if (v373[0])
                    {
                      v152 = 0;
                      LODWORD(v153) = 0;
                      v154 = &v373[1];
                      v155 = v12;
                      v156 = v7;
                      v157 = v6;
                      do
                      {
                        if (v151 != 32 || v152)
                        {
                          v152 = 0;
                          *v157++ = v151;
                          v156->i16[0] = v155;
                          v156 = (v156 + 2);
                          LODWORD(v153) = v153 + 1;
                        }

                        else
                        {
                          ++v155;
                          v152 = 1;
                        }

                        v158 = *v154++;
                        v151 = v158;
                      }

                      while (v158);
                      v153 = v153;
                    }

                    else
                    {
                      v153 = 0;
                      v157 = v6;
                    }

                    *v157 = 0;
                    a2 += result;
                    v6 += v153;
                    v7 = (v7 + 2 * v153);
                    v176 = *v9 & 0xFE00 | 0x9B;
                  }

                  else
                  {
                    v140 = 65288;
                    if (v141 == 65288)
                    {
                      goto LABEL_289;
                    }

                    if ((*v9 & 0x20) != 0)
                    {
                      v11 = v371;
                    }

                    else
                    {
                      v11 = v371;
                      if (*v9)
                      {
                        v195 = *v9 & 0x1F;
                        if (v195 != 23 && v195 != 27)
                        {
                          *v6++ = 32;
                          v7->i16[0] = v12;
                          v7 = (v7 + 2);
                        }
                      }
                    }

                    v199 = ktoau::ZenToHan(result, a2, v6);
                    v7->i16[0] = v12;
                    if (v199 == 2)
                    {
                      v7->i16[1] = v12;
                    }

                    v6 += v199;
                    v7 = (v7 + 2 * v199);
                    ++a2;
                    v176 = *v9 & 0xFE00 | (2 * v13) | 0x81;
                    result = 1;
                  }

                  v12 += result;
                  *v9 = v176;
                }
              }

              else
              {
                v360 = 0;
                v112 = 0;
                if (!v365)
                {
                  goto LABEL_247;
                }

LABEL_171:
                result = wcsncmp(a2, dword_28820, 2uLL);
                if (!result)
                {
                  goto LABEL_231;
                }

                result = wcsncmp(a2, dword_2882C, 2uLL);
                if (!result)
                {
                  goto LABEL_231;
                }

                result = ktoau::IsFukuKanji(result, a2, v373);
                if (!result)
                {
                  goto LABEL_231;
                }

                v99 = a2 + 1;
                result = ktoau::IsMojiMode(result, a2 + 1);
                if (result != 12 || (result = ktoau::TanKanji2SetSub(12, v373, a2[1], a2[2], *a2, (a2 + 1)), !result) || (result = ktoau::IsMojiMode(result, a2 + 2), result != 10))
                {
                  result = ktoau::IsMojiMode(result, a2 + 1);
                  if (result != 10)
                  {
                    goto LABEL_231;
                  }

                  result = ktoau::IsHiraDoushi(10, a2 + 1, v373);
                  if (!result)
                  {
                    goto LABEL_231;
                  }
                }

                if (*v9 && (*v9 & 0x20) == 0)
                {
                  *v6++ = 32;
                  v7->i16[0] = v12;
                  v7 = (v7 + 2);
                }

                result = ktoau::IsFukuKanji(result, a2, v373);
                if (*a2 == 22823 && (*v99 == 23244 || *v99 == 22909))
                {
                  result = wcscpy(v373, dword_28838);
                }

                v215 = v373[0];
                v11 = v371;
                if (v373[0])
                {
                  v216 = 0;
                  LODWORD(v217) = 0;
                  v218 = &v373[1];
                  v219 = v12;
                  v220 = v7;
                  v221 = v6;
                  do
                  {
                    if (v215 != 32 || v216)
                    {
                      v216 = 0;
                      *v221++ = v215;
                      v220->i16[0] = v219;
                      v220 = (v220 + 2);
                      LODWORD(v217) = v217 + 1;
                    }

                    else
                    {
                      ++v219;
                      v216 = 1;
                    }

                    v222 = *v218++;
                    v215 = v222;
                  }

                  while (v222);
                  v217 = v217;
                }

                else
                {
                  v217 = 0;
                  v221 = v6;
                }

                *v221 = 0;
                ++v12;
                v6 += v217;
                *v9 = *v9 & 0xFE1E | 0x121;
                v7 = (v7 + 2 * v217);
                *(v9 + 1) = 0;
                *(v9 + 5) = 0;
                ++a2;
              }
            }
          }
        }
      }
    }
  }

  if (a5 && (*v9 & 1) != 0)
  {
    v7->i16[0] = v12;
    v7->i16[1] = v12;
    v7 = (v7 + 4);
    *v6 = 0x283400002838;
    v6 += 2;
  }

  *v6 = 0;
  v7->i16[0] = 0;
  return result;
}

uint64_t IsKanaCode(int a1)
{
  v1 = 0;
  v2 = 65377;
  v3 = &dword_28A7C;
  while (v2 != a1)
  {
    ++v1;
    v4 = *v3;
    v3 += 2;
    v2 = v4;
    if (v1 == 63)
    {
      return 0;
    }
  }

  return (v1 + 1);
}

uint64_t EChk1(char *a1)
{
  if (!aYourselves[0])
  {
    return 0;
  }

  v2 = strlen(a1);
  v3 = 1;
  for (i = aYourselves; memcmp(a1, i, v2) || strlen(i) != v2; i += 40)
  {
    v5 = i[40];
    v3 = (v3 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t EChk2(char *a1)
{
  if (!byte_3E850)
  {
    return 0;
  }

  v2 = strlen(a1);
  v3 = 1;
  for (i = &byte_3E850; memcmp(a1, i, v2) || strlen(i) != v2; i += 40)
  {
    v5 = i[40];
    v3 = (v3 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t EChk3(char *a1)
{
  if (!byte_3E8DC)
  {
    return 0;
  }

  v2 = 1;
  for (i = &byte_3E8DC; ; i += 40)
  {
    v4 = strlen(i);
    if (!memcmp(a1, i, v4) && *a1 != 1852138850)
    {
      break;
    }

    v5 = i[40];
    v2 = (v2 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EChk4(char *a1)
{
  if (!byte_3E990)
  {
    return 0;
  }

  v2 = 1;
  for (i = &byte_3E990; ; i += 40)
  {
    v4 = strlen(i);
    if (!memcmp(a1, i, v4) && strlen(a1) > v4)
    {
      break;
    }

    v5 = i[40];
    v2 = (v2 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EChk5(char *a1)
{
  if (!aYoung[0])
  {
    return 0;
  }

  v2 = 1;
  for (i = aYoung; ; i += 40)
  {
    v4 = strlen(i);
    if (!memcmp(a1, i, v4))
    {
      break;
    }

    v5 = i[40];
    v2 = (v2 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EChk6(char *a1)
{
  if (!byte_3F2C8)
  {
    return 0;
  }

  v2 = 1;
  for (i = &byte_3F2C8; ; i += 40)
  {
    v4 = strlen(i);
    if (!memcmp(a1, i, v4))
    {
      break;
    }

    v5 = i[40];
    v2 = (v2 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EChk7(char *a1)
{
  if (!byte_3F548)
  {
    return 0;
  }

  v2 = strlen(a1);
  v3 = 1;
  for (i = &byte_3F548; memcmp(a1, i, v2) || strlen(i) != v2; i += 40)
  {
    v5 = i[40];
    v3 = (v3 + 2);
    if (!v5)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t IsEijiTo2(char *a1, char *a2, int a3)
{
  if (!a3)
  {
    LODWORD(result) = EChk6(a1);
    if (result)
    {
      v8 = &byte_3F2C8;
LABEL_15:
      v10 = &v8[20 * result];
      strcpy(a2, v10);
      v6 = v10 - 20;
      return strlen(v6);
    }

    LODWORD(result) = EChk5(a1);
    if (!result)
    {
      result = EChk4(a1);
      if (!result)
      {
        return result;
      }

      if (*a1 == 24933 && *(a1 + 1) == 29281)
      {
        return 0;
      }

      v8 = &byte_3E990;
      goto LABEL_15;
    }

LABEL_14:
    v8 = aYoung;
    goto LABEL_15;
  }

  v5 = EChk1(a1);
  if (v5)
  {
    strcpy(a2, &aYourselves[20 * v5]);
    v6 = a1;
    return strlen(v6);
  }

  v9 = EChk2(a1);
  if (v9)
  {
    strcpy(a2, &byte_3E850[20 * v9]);
    return strlen(a1) + 1;
  }

  LODWORD(result) = EChk5(a1);
  if (result)
  {
    goto LABEL_14;
  }

  result = EChk3(a1);
  if (result)
  {
    v8 = &byte_3E8DC;
    goto LABEL_15;
  }

  return result;
}

uint64_t Is1To2Inyou(int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (v1 < 128)
  {
    v3 = *v2++;
    v1 = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL IsInyouTozi(const __int32 *a1)
{
  while (1)
  {
    v1 = *a1;
    if (*a1 > 0x29u || ((1 << *a1) & 0x30100000000) == 0)
    {
      break;
    }

    ++a1;
  }

  if ((v1 - 33) < 0x5F)
  {
    return 0;
  }

  if ((m_PinInfo & 0x80) != 0)
  {
    v4 = v1 - 8216;
    if (v4 <= 5 && ((1 << v4) & 0x31) != 0)
    {
      return 0;
    }
  }

  memset(v5, 0, sizeof(v5));
  ZenToHan(a1, v5);
  return (LODWORD(v5[0]) - 128) < 0xFFFFFFA1;
}

size_t ZenToHan(const __int32 *a1, __int32 *a2)
{
  *a2 = 0;
  if (!dword_3F624[0])
  {
    return 0;
  }

  v4 = 1;
  for (i = dword_3F624; ; i += 3)
  {
    v6 = wcslen(i);
    if (!wcsncmp(a1, i, v6))
    {
      break;
    }

    v7 = i[3];
    ++v4;
    if (!v7)
    {
      return 0;
    }
  }

  wcscpy(a2, &dword_3F624[3 * v4]);
  return wcslen(a2);
}

size_t Eiji1To2(size_t result, __int32 *a2, __int16 *a3, __int16 *a4)
{
  v5 = *result;
  if (*result)
  {
    v8 = result;
    v9 = 4;
    v10 = *result;
    while (v10 < 128)
    {
      v10 = *(result + v9);
      v9 += 4;
      if (!v10)
      {
        v11 = 0;
        if (!v5)
        {
          goto LABEL_105;
        }

LABEL_8:
        v57 = 0;
        v12 = result;
        v56 = result;
        while (2)
        {
          if ((v5 & 0xFFFFFFDF) - 65 > 0x19)
          {
            if ((v5 <= 0x29 && ((1 << v5) & 0x30100000000) != 0 || v5 >= 128) && v12 > v8 && !v11)
            {
              result = IsInyouTozi(v12);
              if (result)
              {
                *a2++ = 10292;
                *a4++ = *a3;
                v11 = 1;
              }

              else
              {
                v11 = 0;
              }
            }

            v54 = *v12++;
            v53 = v54;
            if ((v54 - 65377) < 0x3F)
            {
              v11 = 1;
            }

            *a2++ = v53;
            v55 = *a3++;
            *a4++ = v55;
          }

          else
          {
            v13 = 0;
            v14 = 0;
            *v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            *__s = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            do
            {
              v15 = v12[v13];
              if ((v15 - 65) > 0x19)
              {
                if ((v15 - 97) > 0x19)
                {
                  break;
                }

                v62[v13] = v15;
              }

              else
              {
                v62[v13] = v15 | 0x20;
                if (v14 == 1)
                {
                  v16 = 2;
                }

                else
                {
                  v16 = v14;
                }

                if (v14)
                {
                  v14 = v16;
                }

                else
                {
                  v14 = 1;
                }
              }

              ++v13;
            }

            while (v13 != 64);
            v17 = *(v12 - 1);
            v18 = v17 == 32 || v17 == 40 || v17 == 12288 || v12 == v8;
            result = IsEijiTo2(v62, __s, v18);
            if (result)
            {
              v19 = result;
              v20 = strlen(__s);
              if (v57)
              {
                v21 = v18;
              }

              else
              {
                v21 = 0;
              }

              if (v21 && v19 == strlen(v62) && EChk7(v62))
              {
                v22 = *(a2 - 1);
                if (v22 == 32)
                {
                  --a2;
                }

                v23 = -2;
                if (v22 != 32)
                {
                  v23 = 0;
                }

                a4 = (a4 + v23);
              }

              if (v18 && v19 == strlen(v62) && EChk7(v62))
              {
                v57 = 1;
                if (!v11)
                {
LABEL_52:
                  if (v14)
                  {
                    v24 = v18;
                  }

                  else
                  {
                    v24 = 0;
                  }

                  if (v24)
                  {
                    if (v14 >= 1)
                    {
                      v25 = v14;
                      v26 = *a3;
                      v27 = a2;
                      v28 = a4;
                      do
                      {
                        *v27++ = 10272;
                        *v28++ = v26;
                        --v25;
                      }

                      while (v25);
                    }

                    a2 += v14;
                    a4 += v14;
                  }

                  if (v20 >= 1)
                  {
                    v29 = v20 & 0x7FFFFFFF;
                    v30 = __s;
                    v31 = a4;
                    v32 = a2;
                    do
                    {
                      v34 = *v30++;
                      v33 = v34;
                      v35 = v34 - 129;
                      v36 = v34 + 10112;
                      v37 = v34 + 10048;
                      if (v34 > 0xDF)
                      {
                        v33 = v37;
                      }

                      if (v35 < 0x1F)
                      {
                        v33 = v36;
                      }

                      *v32++ = v33;
                      *v31++ = *a3;
                      --v29;
                    }

                    while (v29);
                  }

                  a2 += v20;
                  a4 += v20;
                  result = strlen(v62);
                  v38 = &v12[v19];
                  v39 = &a3[v19];
                  if (v19 <= result)
                  {
                    a3 += v19;
                  }

                  else
                  {
                    v40 = *(v38 - 1);
                    v41 = v19 - 1;
                    v42 = &v12[v41];
                    v43 = &a3[v41];
                    if (v40 != 32)
                    {
                      v38 = v42;
                      v39 = v43;
                    }

                    if (v40 == 12288)
                    {
                      v38 = &v12[v19 + 1];
                      a3 += v19 + 1;
                    }

                    else
                    {
                      a3 = v39;
                    }
                  }

                  v8 = v56;
                  goto LABEL_99;
                }
              }

              else
              {
                v57 = 0;
                if (!v11)
                {
                  goto LABEL_52;
                }
              }

              *a2++ = 10278;
              *a4++ = *a3;
              goto LABEL_52;
            }

            if (v57)
            {
              v44 = v18;
            }

            else
            {
              v44 = 0;
            }

            if (v44)
            {
              result = strlen(v62);
              if (result == 1 && v62[0] - 97 <= 0x19)
              {
                v45 = *(a2 - 1) - 31;
                if (v45 < 2)
                {
                  --a2;
                }

                v46 = -2;
                if (v45 >= 2)
                {
                  v46 = 0;
                }

                a4 = (a4 + v46);
              }
            }

            if (v11)
            {
              *a2++ = 10278;
              *a4++ = *a3;
            }

            if (v14)
            {
              v47 = v18;
            }

            else
            {
              v47 = 0;
            }

            if (v47)
            {
              if (v14 >= 1)
              {
                v48 = v14;
                v49 = *a3;
                v50 = a2;
                v51 = a4;
                do
                {
                  *v50++ = 10272;
                  *v51++ = v49;
                  --v48;
                }

                while (v48);
              }

              a2 += v14;
              a4 += v14;
            }

            v57 = 0;
            *a2++ = *v12;
            v52 = *a3++;
            *a4++ = v52;
            v38 = v12 + 1;
LABEL_99:
            v11 = 0;
            v12 = v38;
          }

          v5 = *v12;
          if (!*v12)
          {
            goto LABEL_105;
          }

          continue;
        }
      }
    }

    v11 = 1;
    if (v5)
    {
      goto LABEL_8;
    }
  }

LABEL_105:
  *a2 = 0;
  return result;
}

uint64_t IsMoji(int *a1)
{
  v1 = *a1;
  v2 = 12289;
  v3 = &dword_28C78;
  while (v1 != v2)
  {
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      v5 = 65380;
      v6 = &dword_28C98;
      while (v5 != v1)
      {
        v7 = *v6++;
        v5 = v7;
        if (!v7)
        {
          v8 = 65288;
          v9 = &dword_28CF0;
          while (v1 != v8)
          {
            v10 = *v9++;
            v8 = v10;
            if (!v10)
            {
              v11 = 40;
              v12 = &dword_28D14;
              while (v11 != v1)
              {
                v13 = *v12++;
                v11 = v13;
                if (!v13)
                {
                  v14 = 65289;
                  v15 = &dword_28CB8;
                  while (v1 != v14)
                  {
                    v16 = *v15++;
                    v14 = v16;
                    if (!v16)
                    {
                      v17 = 41;
                      v18 = &dword_28CDC;
                      while (v17 != v1)
                      {
                        v19 = *v18++;
                        v17 = v19;
                        if (!v19)
                        {
                          result = 4;
                          if (v1 > 65291)
                          {
                            if (v1 == 65292 || v1 == 65294)
                            {
                              return result;
                            }
                          }

                          else if (v1 == 44 || v1 == 46)
                          {
                            return result;
                          }

                          v21 = v1 - 65313;
                          v22 = v1 - 65345;
                          v23 = (v1 & 0xFFFFFFDF) - 65;
                          v24 = v1 - 65296;
                          v25 = v1 - 48;
                          if (v24 >= 0xA && v25 >= 0xA)
                          {
                            v27 = 0;
                          }

                          else
                          {
                            v27 = 6;
                          }

                          if (v22 < 0x1A)
                          {
                            v27 = 5;
                          }

                          if (v21 < 0x1A)
                          {
                            v27 = 5;
                          }

                          if (v23 >= 0x1A)
                          {
                            return v27;
                          }

                          else
                          {
                            return 5;
                          }
                        }
                      }

                      return 3;
                    }
                  }

                  return 3;
                }
              }

              return 2;
            }
          }

          return 2;
        }
      }

      return 1;
    }
  }

  return 1;
}