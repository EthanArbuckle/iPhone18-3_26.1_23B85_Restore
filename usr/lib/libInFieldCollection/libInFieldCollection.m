const char *NAAP()
{
  v0 = NSClassFromString(&cfstr_Nfsecureelemen.isa);
  if (v0)
  {
    v1 = v0;
    if (off_2A1A904B0())
    {
      v2 = [(objc_class *)off_2A1A904B0() sharedHardwareManager];
      v3 = [v2 getHwSupport];
      if (v3 == 2)
      {
LABEL_15:
        v15 = [-[objc_class embeddedSecureElement](v1 "embeddedSecureElement")];
        if (v15)
        {
          v16 = [v15 UTF8String];
          if (v16)
          {
            goto LABEL_17;
          }

LABEL_45:
          NSLog(&cfstr_ErrorSeidUtf8s.isa);
          goto LABEL_46;
        }

        NSLog(&cfstr_ErrorFailedToR_0.isa);
        return 0;
      }

      if (v3 != 4)
      {
        NSLog(&cfstr_InfoAttemptDSt.isa, 1, v3);
        usleep(0xF4240u);
        v4 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v4);
        if (v4 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 2, v4);
        usleep(0xF4240u);
        v5 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v5);
        if (v5 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 3, v5);
        usleep(0xF4240u);
        v6 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v6);
        if (v6 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 4, v6);
        usleep(0xF4240u);
        v7 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v7);
        if (v7 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 5, v7);
        usleep(0xF4240u);
        v8 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v8);
        if (v8 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 6, v8);
        usleep(0xF4240u);
        v9 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v9);
        if (v9 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 7, v9);
        usleep(0xF4240u);
        v10 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v10);
        if (v10 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 8, v10);
        usleep(0xF4240u);
        v11 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v11);
        if (v11 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 9, v11);
        usleep(0xF4240u);
        v12 = [v2 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v12);
        if (v12 == 2)
        {
          goto LABEL_15;
        }

        NSLog(&cfstr_InfoAttemptDSt.isa, 10, v12);
        usleep(0xF4240u);
        v13 = [v2 queryHardwareSupport:0];
        v14 = v13;
        NSLog(&cfstr_InfoNewStateD.isa, v13);
        if (v14 == 2)
        {
          goto LABEL_15;
        }

LABEL_50:
        NSLog(&cfstr_ErrorHardwareS.isa);
        return 0;
      }

LABEL_26:
      NSLog(&cfstr_ErrorHwstateRe.isa);
      return 0;
    }

LABEL_27:
    NSLog(&cfstr_ErrorCanTGetSo.isa);
    return 0;
  }

  v21 = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 1);
  if (!v21)
  {
    NSLog(&cfstr_ErrorFailedToO.isa);
    return 0;
  }

  v22 = v21;
  if (!off_2A1A904B0())
  {
    goto LABEL_27;
  }

  v23 = [(objc_class *)off_2A1A904B0() sharedHardwareManager];
  v24 = [v23 getHwSupport];
  if (v24 != 2)
  {
    if (v24 == 4)
    {
      goto LABEL_26;
    }

    NSLog(&cfstr_InfoAttemptDSt.isa, 1, v24);
    usleep(0xF4240u);
    v25 = [v23 queryHardwareSupport:0];
    NSLog(&cfstr_InfoNewStateD.isa, v25);
    if (v25 != 2)
    {
      NSLog(&cfstr_InfoAttemptDSt.isa, 2, v25);
      usleep(0xF4240u);
      v26 = [v23 queryHardwareSupport:0];
      NSLog(&cfstr_InfoNewStateD.isa, v26);
      if (v26 != 2)
      {
        NSLog(&cfstr_InfoAttemptDSt.isa, 3, v26);
        usleep(0xF4240u);
        v27 = [v23 queryHardwareSupport:0];
        NSLog(&cfstr_InfoNewStateD.isa, v27);
        if (v27 != 2)
        {
          NSLog(&cfstr_InfoAttemptDSt.isa, 4, v27);
          usleep(0xF4240u);
          v28 = [v23 queryHardwareSupport:0];
          NSLog(&cfstr_InfoNewStateD.isa, v28);
          if (v28 != 2)
          {
            NSLog(&cfstr_InfoAttemptDSt.isa, 5, v28);
            usleep(0xF4240u);
            v29 = [v23 queryHardwareSupport:0];
            NSLog(&cfstr_InfoNewStateD.isa, v29);
            if (v29 != 2)
            {
              NSLog(&cfstr_InfoAttemptDSt.isa, 6, v29);
              usleep(0xF4240u);
              v30 = [v23 queryHardwareSupport:0];
              NSLog(&cfstr_InfoNewStateD.isa, v30);
              if (v30 != 2)
              {
                NSLog(&cfstr_InfoAttemptDSt.isa, 7, v30);
                usleep(0xF4240u);
                v31 = [v23 queryHardwareSupport:0];
                NSLog(&cfstr_InfoNewStateD.isa, v31);
                if (v31 != 2)
                {
                  NSLog(&cfstr_InfoAttemptDSt.isa, 8, v31);
                  usleep(0xF4240u);
                  v32 = [v23 queryHardwareSupport:0];
                  NSLog(&cfstr_InfoNewStateD.isa, v32);
                  if (v32 != 2)
                  {
                    NSLog(&cfstr_InfoAttemptDSt.isa, 9, v32);
                    usleep(0xF4240u);
                    v33 = [v23 queryHardwareSupport:0];
                    NSLog(&cfstr_InfoNewStateD.isa, v33);
                    if (v33 != 2)
                    {
                      NSLog(&cfstr_InfoAttemptDSt.isa, 10, v33);
                      usleep(0xF4240u);
                      v34 = [v23 queryHardwareSupport:0];
                      v35 = v34;
                      NSLog(&cfstr_InfoNewStateD.isa, v34);
                      if (v35 != 2)
                      {
                        goto LABEL_50;
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

  v36 = NSClassFromString(&cfstr_Nfsecureelemen.isa);
  if (!v36)
  {
    NSLog(&cfstr_ErrorFailedToF.isa);
LABEL_49:
    dlclose(v22);
    return 0;
  }

  v37 = [-[objc_class embeddedSecureElement](v36 "embeddedSecureElement")];
  if (!v37)
  {
    NSLog(&cfstr_ErrorFailedToR.isa);
    goto LABEL_49;
  }

  v38 = v37;
  dlclose(v22);
  v16 = [v38 UTF8String];
  if (!v16)
  {
    goto LABEL_45;
  }

LABEL_17:
  v17 = strlen(v16);
  if (!v17)
  {
LABEL_46:
    NSLog(&cfstr_ErrorSeidRetri.isa);
    return v16;
  }

  result = v16;
  v19 = 0;
  v20 = 1;
  while (v16[v19] == 48)
  {
    v19 = v20++;
    if (v17 <= v19)
    {
      goto LABEL_46;
    }
  }

  return result;
}

Class sub_2979B8278()
{
  if (qword_2A13A4BA0 != -1)
  {
    sub_297A00950();
  }

  result = objc_getClass("NFHardwareManager");
  qword_2A13A4B98 = result;
  off_2A1A904B0 = sub_2979B82CC;
  return result;
}

void *sub_2979B82D8()
{
  result = dlopen("/System/Library/PrivateFrameworks/NearField.framework/NearField", 2);
  qword_2A13A4B90 = result;
  return result;
}

void sub_2979B8304(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(a1 + 16) - 1864516333 * ((((2 * a1) | 0xC04A8A2) - a1 - 100815953) ^ 0x692F6541);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2979B841C()
{
  result = (*(v1 + 8 * (v4 ^ (v0 - 7))))(qword_2A13A4DD8);
  v9 = qword_2A13A4E10[0] + 888;
  do
  {
    v10 = *(v9 + 16);
    if ((*(v9 + 24) & 9) == 1)
    {
      result = (off_2A1E5DED0[v4 ^ 0x74CF093F])(*v9, *(v9 + 8));
    }

    v9 = v10;
  }

  while (v10);
  v11 = qword_2A13A4E18 + 888;
  do
  {
    v12 = *(v11 + 16);
    if ((*(v11 + 24) & 9) == 1)
    {
      result = (off_2A1E5DED0[v15 ^ 0x74CF093F])(*v11, *(v11 + 8));
    }

    v11 = v12;
  }

  while (v12);
  *v6 = v3;
  *v5 = v2;
  v13 = *(v7 - 96);
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2979BC1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v48 = (xmmword_2A13A3880 & ((v47 + 2127547500) & 0xF5FF3CBF ^ 0xB30F379) | dword_2A13A423C & 0x80000000) ^ a9;
  dword_2A13A423C = dword_2A13A3EB0 ^ *(&STACK[0x428] + (xmmword_2A13A3880 & 1)) ^ ((v48 + (((v47 + 76217510) | 0x70440C86) ^ 0x6FB956C9) - ((2 * v48) & 0x36ECB49Cu)) >> 1) ^ 0x6B48AC48;
  return (*(a7 + 8 * ((63 * (HIDWORD(a44) < 0x270)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_2979BC278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, unsigned int a44)
{
  v46 = v44;
  LODWORD(STACK[0x24C]) = *(&xmmword_2A13A3880 + a44);
  dword_2A13A385C = a44 + 1306450981;
  v47 = dword_2A13A3858;
  LODWORD(STACK[0x250]) = dword_2A13A3858;
  v48 = (v47 + 1875003782);
  LODWORD(STACK[0x254]) = v48;
  STACK[0x258] = v48;
  v49 = *(a7 + 8 * ((v44 - 1068497741) ^ 0x351F11A3));
  v50 = 912661583 * ((2 * ((v45 - 152) & 0x2298EAAC4A27AEB0) - (v45 - 152) + 0x5D671553B5D8514CLL) ^ 0xA8D348C8A1D99CB9);
  *(v45 - 136) = 912661583 * ((2 * ((v45 - 152) & 0x4A27AEB0) - (v45 - 152) - 1244114612) ^ 0xA1D99CB9) + 1;
  *(v45 - 152) = (912661583 * ((2 * ((v45 - 152) & 0x4A27AEB0) - (v45 - 152) - 1244114612) ^ 0xA1D99CB9)) ^ (v46 - 1068497741) ^ 1;
  *(v45 - 148) = v46 - 1068497741 + 912661583 * ((2 * ((v45 - 152) & 0x4A27AEB0) - (v45 - 152) - 1244114612) ^ 0xA1D99CB9);
  *(v45 - 144) = v50 + 3900290308u;
  *(v45 - 128) = v48 ^ v50;
  *(v45 - 120) = v49 ^ v50;
  *(v45 - 112) = (v46 - 1068497633) ^ (912661583 * ((2 * ((v45 - 152) & 0x4A27AEB0) - (v45 - 152) - 1244114612) ^ 0xA1D99CB9));
  *(v45 - 108) = -25530558 - 912661583 * ((2 * ((v45 - 152) & 0x4A27AEB0) - (v45 - 152) - 1244114612) ^ 0xA1D99CB9) + v46;
  (*(a7 + 8 * (a8 + v46 + 1610)))(v45 - 152);
  return off_2A1E5DED0[*(v45 - 104)](off_2A1E5DED0, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_2979BC3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v56 = (v52 + v51);
  v57 = (v52 + 1940564093);
  v58 = (((((~STACK[0x258] + v57) ^ ~(v57 - LODWORD(STACK[0x250]) - 1875003783)) + v56) | (~STACK[0x258] + v57)) & 0x8000000000000000) == 0;
  v59 = v57 ^ v50;
  v60 = v56 ^ 0x2C6;
  if (LODWORD(STACK[0x254]) >= HIDWORD(a41))
  {
    v61 = *(v49 + 2136) + 1;
  }

  else
  {
    v61 = 2025286526;
  }

  *(v49 + 2136) = v61;
  v62 = LODWORD(STACK[0x24C]) ^ (LODWORD(STACK[0x24C]) >> 11) ^ 0x89C92B63;
  v63 = ((((v58 ^ v56 ^ v62) << 7) ^ 0x51E9A480) - ((v60 - 1826132935) & (2 * (((v58 ^ v56 ^ v62) << 7) ^ 0x51E9A480))) + 1234417607) & 0x9D2C5680 ^ v62;
  v64 = (((v63 << 15) ^ 0xE2E48000) - 987797423 + (~(2 * ((v63 << 15) ^ 0xE2E48000)) | 0x75C1FFFF)) ^ 0x720EFB80;
  v67 = v64 & (v59 ^ 0xEFC60C25) ^ v63 ^ ((v64 & (v59 ^ 0xEFC60C25) ^ v63) >> 18) ^ 0x47838909;
  v65 = STACK[0x208];
  *(&STACK[0x430] + (LODWORD(STACK[0x208]) - 1526519395)) = (((v67 ^ 0x31205168) >> (v55 - 23)) - (((v67 ^ 0x31205168) >> (v55 - 23) << (v60 + 58)) & (((v60 + 57) | 0x24) + v53)) - 2) ^ 0x8F;
  LODWORD(a46) = v65 - ((((v67 ^ 0x31205168) >> (v55 - 23)) - (((v67 ^ 0x31205168) >> (v55 - 23) << (v60 + 58)) & (((v60 + 57) | 0x24) + v53)) - 2) != 143);
  return (*(a1 + 8 * ((1661 * (a46 == v54)) ^ v60)))(a1, 1959725772, 2335241082, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, __PAIR64__(v67, v55 + 687), a46, a47, a48, a49);
}

uint64_t sub_2979BC664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a64 = 1727234415;
  *a65 = -314960;
  v68 = dword_2A13A3858;
  LODWORD(STACK[0x20C]) = dword_2A13A3858;
  STACK[0x3D8] = *(a1 + 8 * (v65 - 1959726127));
  LODWORD(STACK[0x3E0]) = 0;
  STACK[0x3E8] = v68;
  STACK[0x3F0] = 2025286526;
  LODWORD(STACK[0x3F8]) = (v65 + 1449717863) ^ 0x5E;
  LODWORD(STACK[0x3FC]) = v65 + 1449717832;
  LODWORD(STACK[0x400]) = v65 + 1449717863;
  *(v67 - 136) = v65 - 490657303 * ((v67 - 1091460198 - 2 * ((v67 - 152) & 0xBEF1A432)) ^ 0x5307AAFF) + 560289151;
  *(v67 - 144) = &STACK[0x3D8];
  v69 = (*(a1 + 8 * (v66 + 1561)))(v67 - 152);
  return (off_2A1E5DED0[*(v67 - 152)])(v69);
}

uint64_t sub_2979BC780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (v66 + 27806934) & 0x8988A7F6;
  v69 = v67 + v66;
  STACK[0x210] = (*(a7 + 8 * (v69 + 1612)))(a66, 0x100004077774924);
  v70 = (off_2A1E5DED0[v69 + 1558])();
  LODWORD(xmmword_2A13A3880) = v68 + 1365300272 + v70 - ((2 * v70) & 0xA2C1A860) - 340;
  v71 = *(&xmmword_2A13A3880 + v68 - 340);
  v72 = ((-670100790 * (v71 ^ 0x5160D431 ^ (v71 >> 30))) & 0xECBE9FF6) + 2000168920 + ((1812433253 * (v71 ^ 0x5160D431 ^ (v71 >> 30))) ^ 0xF65F4FFB);
  DWORD1(xmmword_2A13A3880) = v72 - ((2 * v72 + 617680988) & 0xA2C1A860) - 473342882;
  return (off_2A1E5DED0[(v66 + 27806934) & 0x8988A7F4 | 0xA])(&xmmword_2A13A3880);
}

uint64_t sub_2979BCA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  LODWORD(STACK[0x21C]) = v72;
  v77 = (v73 + 2110749511) & 0xF6FF8DC7;
  v78 = (*(a2 + 8 * (v73 ^ 0x527)))(a67, 0);
  *a69 = *a68 - ((*a68 << (v77 ^ (v75 - 70))) & 0x7AF4A1FE) - 1116057345;
  *a71 = *a70 - ((2 * *a70) & 0x7AF4A1FE) - 1116057345;
  v79 = (off_2A1E5DED0[v73 ^ 0x56F])(v78);
  *a72 = v79 - ((2 * v79) & 0x7AF4A1FE) - 1116057345;
  v80 = (off_2A1E5DED0[v73 + 671])();
  *STACK[0x200] = v80 - ((2 * v80) & 0x7AF4A1FE) - 1116057345;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x210]) - ((2 * LODWORD(STACK[0x210])) & 0x419F05B4) + 550470362;
  v88 = STACK[0x210];
  v81 = 912661583 * ((v76 - 152) ^ 0xF5B45D9B1401CDF5);
  v82 = (DWORD1(xmmword_2A13A3880) ^ 0x180B5A15 ^ (1664525 * (xmmword_2A13A3880 ^ 0x6D6126D ^ ((xmmword_2A13A3880 >> 30) | 0x57B6C65C)) - ((3329050 * (xmmword_2A13A3880 ^ 0x6D6126D ^ ((xmmword_2A13A3880 >> 30) | 0x57B6C65C))) & 0x92D71C4A) + 1231785509)) + (*a63 ^ 0xBD7A50FF);
  v83 = (v82 ^ 0x5DEBEEFF) + 279224712 + ((2 * v82) & 0xBBD7DDFE);
  DWORD1(xmmword_2A13A3880) = v83 - ((2 * v83 + 585031410) & v74) - 489667671;
  *(v76 - 144) = v81 + 887702718;
  v84 = off_2A1E5DED0[v77 - 1959726113];
  *(v76 - 136) = ((v77 - 1748798037) ^ 0x7D) + v81;
  v85 = (v77 - 1748798037) ^ v81;
  *(v76 - 128) = v81 ^ 0x34E944BC;
  *(v76 - 120) = v84 ^ v81;
  *(v76 - 112) = v85 ^ 0xF8;
  *(v76 - 108) = -25530558 - v81 + v77;
  *(v76 - 152) = v85;
  *(v76 - 148) = v81;
  v86 = (off_2A1E5DED0[v77 - 1959724604])(v76 - 152);
  return (off_2A1E5DED0[*(v76 - 104)])(v86);
}

uint64_t sub_2979BCE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, uint64_t a37, int a38, uint64_t a39, uint64_t a40, int a41, int a42)
{
  LODWORD(xmmword_2A13A3880) = dword_2A13A423C;
  v46 = 912661583 * ((0xD6E5CF958617E4B1 - ((v45 - 152) | 0xD6E5CF958617E4B1) + a39) ^ 0xDCAE6DF16DE9D6BBLL);
  v47 = *(v42 + 8 * a35);
  *(v45 - 144) = v46 + 1849181880;
  *(v45 - 136) = v46 + 1;
  *(v45 - 112) = a36 ^ v46;
  *(v45 - 108) = -25530558 - v46 + a42;
  *(v45 - 128) = (v44 + 1569957169) ^ v46;
  *(v45 - 120) = v47 ^ v46;
  *(v45 - 152) = a38 ^ v46;
  *(v45 - 148) = a42 + v46 - 1939018932;
  v48 = (*(v42 + 8 * (a42 ^ v43)))(v45 - 152);
  return (off_2A1E5DED0[*(v45 - 104)])(v48);
}

void sub_2979BD100()
{
  LODWORD(STACK[0x224]) = v3;
  LODWORD(STACK[0x228]) = v0;
  LODWORD(STACK[0x22C]) = v4;
  LODWORD(STACK[0x230]) = v2;
  LODWORD(STACK[0x234]) = v1;
  LODWORD(STACK[0x238]) = v6;
  LODWORD(STACK[0x23C]) = v5;
  JUMPOUT(0x2979BC0BCLL);
}

uint64_t sub_2979BD158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v65 = v64 + v63 + 977;
  v67 = (*(a1 + 8 * (v64 + v63 + 1321)))(1, &STACK[0x430], 16, 0, 0, &a42, &a44);
  a63 = -42929;
  return (*(a1 + 8 * ((((v65 + 675998120) & 0xD7B513FA ^ 0x24A) * (v67 >> 31)) ^ v65)))(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54);
}

void sub_2979BD228()
{
  *(v0 - 0x2800D80E2920DCDELL) = 0;
  *(v0 - 0x2800D80E2920DCD6) = 458219685;
  *(v0 - 0x2800D80E2920DCE6) = 144770227;
  JUMPOUT(0x2979BBFC8);
}

uint64_t sub_2979BD404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, unint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  STACK[0x278] = a42;
  STACK[0x280] = a44 + 1078067893;
  LOBYTE(STACK[0x28F]) = a44 > ((v54 + 1347893908) ^ 0xFFFFFFFFEFEAC565) + (v54 - 395);
  return (*(v53 + 8 * ((52 * (a44 == 0)) ^ v54)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

void sub_2979BD474(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55)
{
  *(v56 - 0x2800D80E2920DCD6) = a55 - ((a55 << (a1 ^ 9)) & 0x369FC14A) + 458219685;
  (*(v55 + 8 * (a1 ^ 0x534)))(a54);
  JUMPOUT(0x2979BD258);
}

void sub_2979BD6BC(uint64_t a1)
{
  v3 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = *(v1 + 8);
  __asm { BRAA            X9, X17 }
}

void sub_2979BD708(uint64_t a1@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = v5 > v4;
  v7 = v5 == v4;
  v8 = v6;
  if (v2)
  {
    v7 = v8;
  }

  v9 = !v7;
  v10 = 36;
  if (!v9)
  {
    v10 = 40;
  }

  *v1 = *(a1 + v10) ^ *(a1 + 32);
  v11 = *(v3 - 104);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2979BD740@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = *(v39 + 16) + 490657303 * ((-1541722138 - (v39 | 0xA41B2FE6) + (v39 | 0x5BE4D019)) ^ 0xB612DED4);
  v49 = *(a1 + 48);
  v50 = *(a1 + 56);
  v51 = (off_2A1E5DED0[v40 + 1774953531])();
  return (off_2A1E5DED0[(25 * (v51 != 0)) ^ (v40 + 1774953220)])(v51, v41, v42, v43, v44, v45, v46, v47, a2, v49, v50, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_2979BD860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  LODWORD(STACK[0x650]) = v23 - v20 - 777;
  HIDWORD(a12) = -44;
  return (*(v18 + 8 * ((((v23 - v20 + 517196116) & 0x4AF7D3FF ^ 0x2D0) * (v21 == v22)) ^ v23)))(a1, a2, a3, a4, a5, a6, a7, a8, v19, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2979BD8EC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x69C]) = a1;
  v7[180] = v7[13];
  LODWORD(STACK[0x6AC]) = (v4 ^ v5) + 1774783619;
  LODWORD(STACK[0x38C]) = a1;
  LODWORD(STACK[0x390]) = 1774783620;
  v8 = LODWORD(STACK[0x390]);
  LODWORD(STACK[0x394]) = v8;
  v9 = STACK[0x38C];
  LODWORD(STACK[0x398]) = STACK[0x38C];
  LODWORD(STACK[0x39C]) = v9 - 253;
  v10 = v8 - 1774783620 + ((v8 < 0x69C90C84) << 32);
  v7[84] = v10;
  v11 = a3 + v10;
  v7[85] = v11;
  v7[80] = v11 - 0x5F9955DC0BC2CB12;
  v7[78] = *(v3 + 8 * (v9 + 888));
  v12 = ((v7[80] - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8;
  v13 = (*(*(v6 + 3544) + 32 * *(v12 + 8) + 8))(*v12, &STACK[0x3B7], 1);
  LOBYTE(STACK[0x37F]) = STACK[0x3B7];
  return (v7[78])(v13);
}

void sub_2979C5C64()
{
  v1 = LOBYTE(STACK[0x37F]);
  v2 = LOBYTE(STACK[0x482]) ^ LOBYTE(STACK[0x483]) ^ 0xF6;
  v3 = (((v2 - ((2 * v2) & 0x66666666)) << 8) - 2077674752) ^ 0x84293300;
  LODWORD(STACK[0x48C]) = v3 - 1783478770 - ((2 * v3) & 0x2B648C00);
  v4 = ((-50 * (LOBYTE(STACK[0x488]) ^ 0xFFFFFF99)) & 0xFFFFFF96) + v1 + ((-25 * (LOBYTE(STACK[0x488]) ^ 0xFFFFFF99)) ^ 0xFFFFFFCB);
  v5 = v4 - ((2 * v4 + 56) & 0x76) + 23;
  v6 = byte_297A243F0[v5 ^ 0xC0] ^ v5;
  v7 = ((((v6 ^ 0x48) - ((2 * v6) & 0x16C)) << 8) + 1631630848) ^ 0x6140B600;
  v8 = (v7 - 310248747 - ((2 * v7) & 0x5B03F400)) ^ 0xED81FAD5 | LODWORD(STACK[0x47C]) ^ 0x3726372C;
  LODWORD(STACK[0x490]) = v8 - 138754967 - ((2 * v8) & 0xEF7588D2);
  v9 = (STACK[0x424] & 0xEEF9FFF4 ^ 0xAA82B62) + (STACK[0x40C] & 0xFFFFFFFA ^ 0x72A8EA4E);
  LODWORD(STACK[0x494]) = v9;
  v10 = v0[193] + v9 + 142802949;
  v0[115] = v10;
  v0[80] = v10;
  JUMPOUT(0x2979C5C08);
}

void sub_2979C5DFC()
{
  v1 = STACK[0x37F];
  v2 = LOBYTE(STACK[0x557]) ^ LOBYTE(STACK[0x567]) ^ 0xFB;
  v3 = (((v2 - ((2 * v2) & 0xC0)) << 24) - 0x20000000) ^ 0xE0000000;
  v4 = (v3 - 819319699 - ((2 * v3) & 0x9E000000)) ^ 0xCF2A2C6D | LODWORD(STACK[0x504]) ^ 0x9CF630A0;
  LODWORD(STACK[0x570]) = v4 + 483359920 - ((2 * v4) & 0x399EF960);
  v5 = ~(-25 * (LOBYTE(STACK[0x560]) ^ 0x1D)) + v1 - 50 * (LOBYTE(STACK[0x560]) ^ 0x1D);
  v6 = byte_297A1D3D0[(v5 - 2 * ((v5 + 40) & 0x27 ^ v5 & 1) + 78) ^ 6];
  LOBYTE(STACK[0x577]) = ((34 * v6 + 43) | 0xDB) - 17 * v6 + 125;
  v7 = v0[202] + (LODWORD(STACK[0x56C]) ^ 0x23A965EBu);
  v0[143] = v7;
  v0[80] = v7;
  JUMPOUT(0x2979C5C08);
}

void sub_2979C5F28()
{
  v1 = ((-50 * (LOBYTE(STACK[0x50C]) ^ 0x13)) & 0xBF) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x50C]) ^ 0x13)) ^ 0xDF);
  v2 = v1 - 2 * ((v1 + 72) & 0x47 ^ v1 & 7) - 120;
  LOBYTE(STACK[0x542]) = v2;
  LOBYTE(STACK[0x543]) = byte_297A1D0D0[v2 ^ 0x57];
  v3 = LODWORD(STACK[0x40C]) ^ 0x85D415B0;
  LODWORD(STACK[0x544]) = v3;
  v4 = v0[200] + v3;
  v0[137] = v4;
  v0[80] = v4;
  JUMPOUT(0x2979C5C08);
}

void sub_2979C5FC4()
{
  v2 = LOBYTE(STACK[0x4F7]) ^ LOBYTE(STACK[0x503]);
  v3 = (v0 + (((v2 ^ 4) - ((2 * v2) & 0x140)) << 16) + 45613056) ^ 0x2A00000;
  v4 = ((78 * (LOBYTE(STACK[0x4FC]) ^ 0x2D)) & 0x7E) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x4FC]) ^ 0x2D)) ^ 0x3F);
  v5 = (v3 - 837359256 - ((2 * v3) & 0x1C2C0000)) ^ 0xCE16E968 | LODWORD(STACK[0x4C8]) ^ 0x3230ECBA;
  LODWORD(STACK[0x504]) = v5 - 1661587296 - ((2 * v5) & 0x39EC6140);
  v6 = byte_297A20BA0[(v4 - 2 * ((v4 + 104) & 0x57 ^ v4 & 4) - 69) ^ 0x5ELL];
  v7 = STACK[0x40C] & 0xFFFFFFF7 ^ 0x85D415B8;
  LODWORD(STACK[0x508]) = v7;
  v8 = v7 + 530739731 - ((2 * v7) & 0x3F44E426);
  LODWORD(STACK[0x50C]) = v8;
  v9 = v6 ^ (v6 >> 3) ^ (v6 >> 1) ^ 0x99;
  v10 = ((v9 - ((2 * v9) & 0x124)) << 16) + 9568256;
  LODWORD(STACK[0x510]) = (v10 ^ 0x920000) + 2113971458 - (v10 >> 25 << 26);
  *(v1 + 640) = *(v1 + 1592) + (v8 ^ 0x1FA27213u);
  JUMPOUT(0x2979C5C08);
}

void sub_2979C6148()
{
  v1 = LOBYTE(STACK[0x37F]) - 50 * (LOBYTE(STACK[0x4B0]) ^ 0x7E) + ((-25 * (LOBYTE(STACK[0x4B0]) ^ 0x7E)) ^ 0x7F) - 111;
  v2 = (STACK[0x40C] & 0xFFFFFFF8 ^ 0x85D415B7) + 780937840 - ((2 * (STACK[0x40C] & 0xFFFFFFF8 ^ 0x85D415B7)) & 0x5D1854E0);
  LODWORD(STACK[0x4C4]) = v2;
  v3 = LOBYTE(STACK[0x4AF]) ^ LOBYTE(STACK[0x4B7]) ^ 0xDC;
  v4 = (((v3 - ((2 * v3) & 0x56)) << 8) + 275589888) ^ 0x106D2B00;
  LODWORD(STACK[0x4C8]) = v4 + 842067130 - ((2 * v4) & 0x6461D800);
  LOBYTE(STACK[0x4CF]) = (v1 - ((2 * v1 + 46) & 0xA8) - 21) ^ 0x55;
  v5 = v0[196] + (v2 ^ 0x2E8C2A70);
  v0[122] = v5;
  v0[80] = v5;
  JUMPOUT(0x2979C5C08);
}

void sub_2979C6238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  v24 = byte_297A20BA0[LOBYTE(STACK[0x4CF])];
  v25 = ((-50 * (LOBYTE(STACK[0x4C4]) ^ 0x70)) & 0xBF) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x4C4]) ^ 0x70)) ^ 0xDF);
  v26 = ((((v24 ^ (v24 >> 3) ^ (v24 >> 1) ^ 0xC2) - ((2 * (v24 ^ (v24 >> 3) ^ (v24 >> 1))) & 0x72)) << 16) + 1379467264) ^ 0x52390000;
  v27 = (v26 + 75241706 - ((2 * v26) & 0x8F80000)) ^ 0x47C18EA | LODWORD(STACK[0x48C]) ^ 0x95B2460E;
  LODWORD(STACK[0x4DC]) = v27 + 1108559361 - ((2 * v27) & 0x4268C02);
  v28 = (STACK[0x40C] & 0xFFFFFFFE ^ 0x85D415B1) + 1796608153 + ((2 * ((STACK[0x40C] & 0xFFFFFFFE ^ 0x85D415B1) & 0x6B16109E ^ (LODWORD(STACK[0x40C]) | 0x7FFFFFF9))) ^ 0xF) + 1;
  v29 = byte_297A1D3D0[(v25 - ((2 * v25 - 112) & 0x8C) - 114) ^ 0xC0];
  LODWORD(STACK[0x4E0]) = v28;
  v30 = 38 - 17 * v29 - ((a23 + 94 * v29) & 0x78);
  LOBYTE(STACK[0x4E5]) = v30;
  LOBYTE(STACK[0x4E6]) = ((v30 & 0x80) != 0) | 0x7E;
  LOBYTE(STACK[0x4E7]) = v30 >> 4;
  v31 = v23[197] + (v28 ^ 0x6B161099);
  v23[125] = v31;
  v23[80] = v31;
  JUMPOUT(0x2979C5C04);
}

void sub_2979C63C8()
{
  v1 = (231 * LODWORD(STACK[0x494]) - ((14 * LODWORD(STACK[0x494]) + 6) & 0x18) - 113) ^ 0xC;
  v2 = ((2 * (v1 & LOBYTE(STACK[0x37F])) - ((4 * (v1 & LOBYTE(STACK[0x37F]))) & 0x70) - 72) ^ 0xB8) + (v1 ^ LOBYTE(STACK[0x37F]));
  v3 = byte_297A20BA0[(((2 * v2) & 0xF7) + (v2 ^ 0xFB) - ((2 * (((2 * v2) & 0xF7) + (v2 ^ 0xFB)) + 88) & 0x83) - 19) ^ 0x68];
  v4 = STACK[0x40C] & 0xFFFFFFFD ^ 0x85D415B2;
  LODWORD(STACK[0x4A0]) = v4;
  v5 = v4 + 1264267020 - ((2 * v4) & 0x96B65E18);
  LODWORD(STACK[0x4A4]) = v5;
  HIDWORD(v6) = v3 ^ 0x15;
  LODWORD(v6) = ~v3 << 24;
  v7 = ((((v3 ^ (4 * v3)) & 0xFFFFFFF8 | (~v3 >> 6)) ^ 0x20) - 2 * (~v3 >> 6) - 121) ^ ((v6 >> 29) - 2 * ((v6 >> 29) & 0x3F) - 65);
  HIDWORD(v6) = v7 ^ 1;
  LODWORD(v6) = (v7 ^ 0xE0) << 24;
  v8 = ((((((v6 >> 27) - ((2 * (v6 >> 27)) & 0x82) + 65) ^ 0xE) - ((2 * (((v6 >> 27) - ((2 * (v6 >> 27)) & 0x82) + 65) ^ 0xE)) & 0x5E)) << 16) + 942604288) ^ 0x382F0000;
  v9 = (v8 - 681637903 - ((2 * v8) & 0x2EBE0000)) ^ 0xD75F07F1 | LODWORD(STACK[0x490]) ^ 0xF7BAC469;
  LODWORD(STACK[0x4A8]) = v9 + 16830009 - ((2 * v9) & 0x2019C72);
  *(v0 + 640) = *(v0 + 1552) + (v5 ^ 0x4B5B2F0C);
  JUMPOUT(0x2979C5C08);
}

void sub_2979C6580()
{
  v1 = STACK[0x40C];
  v2 = ((-50 * (LODWORD(STACK[0x40C]) ^ 0xFFFFFFB0)) & 0xFFFFFFE7) + LOBYTE(STACK[0x37F]) + ((-25 * (LODWORD(STACK[0x40C]) ^ 0xFFFFFFB0)) ^ 0xFFFFFFF3);
  v3 = LOBYTE(STACK[0x543]) ^ LOBYTE(STACK[0x542]);
  LOBYTE(v2) = (v2 ^ 0x80) - 2 * ((v2 + 52) & 0x4D ^ v2 & 1);
  LOBYTE(STACK[0x557]) = v2;
  v4 = LODWORD(STACK[0x510]) ^ 0x7E00A502 | LODWORD(STACK[0x464]) ^ 0xE01DD386;
  LODWORD(STACK[0x558]) = v4 + 2048522987 + (~(2 * v4) | 0xBCC0A2B);
  v5 = (((v3 - ((2 * v3) & 0xC8)) << 24) + 1677721600) ^ 0x64000000;
  v6 = v1 & 0xFFFFFFF4 ^ 0x85D415BB;
  LODWORD(STACK[0x55C]) = v6;
  v7 = v6 - 1910050275 - ((2 * v6) & 0x1C4DE43A);
  LODWORD(STACK[0x560]) = v7;
  LOBYTE(STACK[0x567]) = byte_297A1D0D0[v2 ^ 0x20];
  v8 = LODWORD(STACK[0x4DC]) ^ 0x42134601 | (v5 - 1003027571 - ((2 * v5) & 0x88000000)) ^ 0xC437038D;
  LODWORD(STACK[0x568]) = v8 + 1072909904 + (~(2 * v8) | 0x8019635F) + 1;
  LODWORD(STACK[0x56C]) = (v1 & 0xFFFFFFFC ^ 0x85D415B3) + 598304235 - ((2 * (v1 & 0xFFFFFFFC ^ 0x85D415B3)) & 0x4752CBD6);
  *(v0 + 640) = *(v0 + 1608) + (v7 ^ 0x8E26F21D);
  JUMPOUT(0x2979C5C08);
}

void sub_2979C6728()
{
  v1 = ((-50 * (LOBYTE(STACK[0x4A4]) ^ 0xC)) & 0xEF) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x4A4]) ^ 0xC)) ^ 0xF7);
  v2 = v1 - ((2 * v1) & 0xC) - 74;
  LOBYTE(STACK[0x4AF]) = v2;
  v3 = (STACK[0x40C] & 0xFFFFFFF6 ^ 0x85D415B9) + 1208651390 - ((2 * (STACK[0x40C] & 0xFFFFFFF6 ^ 0x85D415B9)) & 0x90151CFC);
  LODWORD(STACK[0x4B0]) = v3;
  LOBYTE(STACK[0x4B7]) = byte_297A243F0[v2 ^ 0xA8];
  v4 = v0[195] + (v3 ^ 0x480A8E7E);
  v0[119] = v4;
  v0[80] = v4;
  JUMPOUT(0x2979C5C08);
}

void sub_2979C67DC()
{
  v1 = ((-50 * (LOBYTE(STACK[0x4E0]) ^ 0x99)) & 0xEF) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x4E0]) ^ 0x99)) ^ 0xF7);
  v2 = LOBYTE(STACK[0x4E6]) ^ LOBYTE(STACK[0x4E7]) ^ LOBYTE(STACK[0x4E5]) ^ 0x41;
  v3 = (v2 - 2014410912 - ((2 * v2) & 0xC0)) ^ 0x87EE8760 | LODWORD(STACK[0x4A8]) ^ 0x100CE39;
  LODWORD(STACK[0x4F0]) = v3 + 2084735976 - ((2 * v3) & 0xF88517D0);
  v4 = byte_297A20BA0[(v1 - 2 * ((v1 + 48) & 0x27 ^ v1 & 5) - 46) ^ 0xACLL];
  LOBYTE(STACK[0x4F7]) = v4;
  v5 = STACK[0x40C] & 0xFFFFFFF2 ^ 0x85D415BD;
  LODWORD(STACK[0x4F8]) = v5;
  v6 = v5 - 14739155 + ((2 * v5) & 0xFE3E3240 ^ 0xFFFFFFE5) + 1;
  LODWORD(STACK[0x4FC]) = v6;
  LOBYTE(STACK[0x503]) = (v4 >> 1) ^ (v4 >> 3) | 0x80;
  *(v0 + 640) = *(v0 + 1584) + (v6 ^ 0xFF1F192D);
  JUMPOUT(0x2979C5C08);
}

uint64_t sub_2979C692C()
{
  v4 = LOBYTE(STACK[0x37F]);
  LODWORD(STACK[0x648]) = v4 ^ 0x7E6DD5BF;
  LODWORD(STACK[0x64C]) = (2 * v4) & 0xFFFFFF7F;
  v5 = (LOBYTE(STACK[0x604]) - (((LOBYTE(STACK[0x60C]) ^ 0x75) + 2 * LOBYTE(STACK[0x604])) & 0xDA) + 124) ^ 0xED;
  LOBYTE(v4) = v4 + ((25 * v5) ^ 0xB7) + ((50 * v5) & 0x6E) + 34;
  v6 = v3[162];
  LOBYTE(STACK[0x3CA]) = v4;
  v3[88] = v6;
  v3[87] = *(v0 + 8 * (v1 + 682));
  v7 = v3[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v8 = (*(*(v2 + 3544) + 32 * *(((v7 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v3[87])(v8);
}

uint64_t sub_2979C69B8()
{
  v1 = STACK[0x678];
  v2 = (v1 - ((2 * v1 + 50) & 0x7E) - 40) ^ 0x3F;
  v3 = (((LODWORD(STACK[0x674]) - 926205843) % 3u) ^ 0x6FFAAFD7) + 2 * ((LODWORD(STACK[0x674]) - 926205843) % 3u);
  v4 = LOBYTE(STACK[0x37F]) + ((-50 * v2) & 0xFA) + ((v2 * (LODWORD(STACK[0x680]) ^ 0x8A)) ^ 0x7D) - 86;
  v5 = (v4 - 1877795516 - ((2 * v4) & 0x88)) ^ (LODWORD(STACK[0x670]) - 1260744126);
  v6 = (((v5 ^ 0x90131D44) - 2104758543 - 2 * ((v5 ^ 0x90131D44) & 0x28BEEFB ^ v5 & 0xA)) ^ 0x828BEEF1) + 1250300187;
  v7 = (v6 ^ 0x5FB57DFF) - 344985665 + ((2 * v6) & 0xBF6AFBFE);
  LODWORD(STACK[0x688]) = v7;
  ++v1;
  v8 = STACK[0x67C];
  v9 = *(v0 + 8 * ((1150 * (v3 == 1878699991)) ^ LODWORD(STACK[0x67C])));
  LODWORD(STACK[0x68C]) = v1;
  LODWORD(STACK[0x660]) = v8;
  LODWORD(STACK[0x664]) = v1;
  LODWORD(STACK[0x668]) = STACK[0x684];
  LODWORD(STACK[0x66C]) = v7;
  return v9();
}

uint64_t sub_2979C6B1C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, int a61, int a62)
{
  LODWORD(a15) = (a1 + 1760480330) & 0x971133DC;
  HIDWORD(a24) = STACK[0x68C];
  LODWORD(v75) = a61;
  HIDWORD(v75) = STACK[0x684];
  LODWORD(v76) = a62;
  HIDWORD(v76) = STACK[0x688];
  v64 = 1407535765 * ((a15 ^ 0x53FB7E79 ^ **(v63 + 160)) - 2144776805 + ((2 * **(v63 + 160)) & 0x1DA)) - a61;
  v65 = (((v64 + 559943778) % 0x101u) ^ 0x7FD1F3FB) - v64 + ((2 * ((v64 + 559943778) % 0x101u)) & 0x3F6) + 131518763;
  v66 = (v65 - ((2 * v65 + 770594032) & 0x6975FF08) - 1951258116) ^ (LODWORD(STACK[0x688]) - 1260744126);
  v67 = LODWORD(STACK[0x684]) - 926205844;
  v68 = (((v66 ^ 0x34BAFF84) + 582996462 - 2 * ((v66 ^ 0x34BAFF84) & 0x22BFD1FF ^ v66 & 0x11)) ^ 0x22BFD1EE) + v67;
  v69 = ((2 * v68) & 0xFF95FF7C) + (v68 ^ 0xFFCAFFBE);
  HIDWORD(v70) = a62 + v69 + 2061314289;
  LODWORD(v70) = a62 + v69 - 1159911183;
  v71 = (LODWORD(STACK[0x688]) - (a62 + v69) - 100832943) ^ 0x98471D2A ^ ((v70 >> 29) - 1740169942 - ((2 * (v70 >> 29)) & 0x308E3A54));
  v72 = (((v70 ^ v67) + 1007956569 - ((2 * (v70 ^ v67)) & 0x782864B2)) ^ 0xB05DF642 ^ (v71 - ((2 * v71) & 0x18938836) - 1941322725)) - v69 - 798433305;
  v73 = ((2 * v72) & 0xEDEDDBFA) + (v72 ^ 0xF6F6EDFD);
  return (*(v62 + 8 * a1))((v73 - 778417468), v73, ((2 * ((v73 + 1468047065) ^ (-798433305 - v69))) & 0xFFF7EFF2) + ((v73 + 1468047065) ^ (-798433305 - v69) ^ 0x7FFBF7F9), 4143377917, 3991788538, 3516549828, 1468047065, 2138501015, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, STACK[0x684], 2150190491, v75, v76, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_2979C6E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v17 = ((-50 * (LOBYTE(STACK[0x56C]) ^ 0xEB)) & 0xA0) + LOBYTE(STACK[0x37F]) + ((-25 * (LOBYTE(STACK[0x56C]) ^ 0xEB)) ^ 0xD0);
  v18 = byte_297A1D3D0[((v17 ^ 0x80) - ((2 * v17 + 46) & 0x52)) ^ 0x91];
  v19 = 50 - 17 * v18 - ((a13 - 34 * v18) & 0xFFFFFF90);
  v20 = (((LOBYTE(STACK[0x577]) >> 7) | 0x2A) ^ ((LOBYTE(STACK[0x577]) >> 4) | 0x20) | 0x90) ^ LOBYTE(STACK[0x577]);
  v21 = (v20 + 113016305 + (~(2 * v20) | 0xFFFFFE1D) + 1) ^ 0x6BC7DF1 | LODWORD(STACK[0x568]) ^ 0x3FF34E50;
  v22 = ((v19 ^ 0x48) - 30448241 - ((2 * (v19 ^ 0x48)) & 0x11E)) ^ 0xFE2F658F | LODWORD(STACK[0x570]) ^ 0x1CCF7CB0;
  v23 = LODWORD(STACK[0x4F0]) ^ 0x7C428BE8;
  v24 = (2 * ((v23 & STACK[0x75C]) - ((2 * (v23 & STACK[0x75C])) & 0x3EF54762)) - 1091221662) ^ 0xBEF54762;
  v25 = ((v19 >> 7) & 1 | 4) ^ (v19 >> 4);
  v26 = ((LODWORD(STACK[0x760]) + v23) ^ 0x5EF77C3E) + ((2 * (LODWORD(STACK[0x760]) + v23)) & 0xBDEEF87C) - 1593277501 + ((v24 - ((2 * v24) & 0x8EECDBF8) + 1198943741) ^ 0xB8899202);
  v27 = LODWORD(STACK[0x764]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x76C]) ^ (v25 - ((2 * v25) & 0xC) - 1724058682) ^ (v22 - ((2 * v22) & 0xB8396A4A) + 1545385253);
  v28 = LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x76C]) ^ (v26 - ((2 * v26) & 0xEDCD7E50) + 1994833704);
  v29 = LODWORD(STACK[0x3FC]) ^ LODWORD(STACK[0x770]) ^ LODWORD(STACK[0x774]) ^ LODWORD(STACK[0x778]) ^ (v21 - ((2 * v21) & 0x15792A96) + 180131147);
  v30 = *(v15[209] + 4 * (HIBYTE(v27) ^ 0x5B));
  v31 = LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x410]) ^ LODWORD(STACK[0x77C]) ^ LODWORD(STACK[0x780]) ^ LODWORD(STACK[0x784]);
  v32 = (v30 & 0x80) - 570426889 + ((2 * (v30 & 0x80)) ^ 0x100);
  v33 = v32 + 2079972713;
  v34 = *(v15[210] + 4 * (BYTE2(v28) ^ 0xD9u)) ^ *(v15[212] + 4 * (((LOWORD(STACK[0x3FC]) ^ LOWORD(STACK[0x770]) ^ LOWORD(STACK[0x774]) ^ LOWORD(STACK[0x778]) ^ (v21 - ((2 * v21) & 0x2A96) - 27317)) >> 8) ^ 0x2Bu)) ^ 0x52E42AE0;
  v35 = (v34 & (v32 + 570426761)) - 947509597 - ((2 * (v34 & (v32 + 570426761))) & 0x8F0C4D3C);
  v36 = v15[214];
  v37 = *(v15[218] + 4 * (BYTE2(v27) ^ 0x42u));
  v38 = 939119191 - v32;
  v39 = v30 & 0xFFFFFF7F;
  if (v35 == -947509597)
  {
    v38 = v33;
  }

  v40 = *(v36 + 4 * ((LOBYTE(STACK[0x558]) ^ LOBYTE(STACK[0x410]) ^ LOBYTE(STACK[0x77C]) ^ LOBYTE(STACK[0x780]) ^ LOBYTE(STACK[0x784])) ^ 0x6Bu)) ^ v39 ^ (v34 - 1509545952 + v38 - ((2 * (v34 - 1509545952 + v38)) & 0x9F0667D4) - 813485078);
  v41 = *(v15[213] + 4 * (v27 ^ 0x7Au)) ^ *(v15[211] + 4 * (HIBYTE(v28) ^ 0xF9)) ^ *(v15[216] + 4 * (BYTE2(v29) ^ 0x92u)) ^ *(v15[217] + 4 * (BYTE1(v31) ^ 0x49u));
  v42 = *(v15[215] + 4 * (HIBYTE(v29) ^ 0xC4)) ^ *(v15[219] + 4 * (BYTE2(v31) ^ 0x4Fu)) ^ *(v36 + 4 * ((LOBYTE(STACK[0x768]) ^ LOBYTE(STACK[0x418]) ^ LOBYTE(STACK[0x76C]) ^ (v26 - ((2 * v26) & 0x50) + 40)) ^ 0x27u)) ^ *(v15[222] + 4 * (BYTE1(v27) ^ 0x4Eu));
  v43 = *(v15[223] + 4 * (v29 ^ 0xF5u));
  HIDWORD(v44) = v42 ^ 0x44444444;
  LODWORD(v44) = v42 ^ 0x76CB800;
  v45 = (v44 >> 11) - ((2 * (v44 >> 11)) & 0x579FA67C) + 735040318;
  v46 = *(v15[220] + 4 * (((LOWORD(STACK[0x768]) ^ LOWORD(STACK[0x418]) ^ LOWORD(STACK[0x76C]) ^ (v26 - ((2 * v26) & 0x7E50) - 16600)) >> 8) ^ 0x37u)) ^ *(v15[221] + 4 * (HIBYTE(v31) ^ 0xD1)) ^ v43 ^ v37;
  HIDWORD(v44) = v45 ^ 0xDFBE;
  LODWORD(v44) = v45 ^ 0xD9200000;
  v47 = (v44 >> 21) - ((2 * (v44 >> 21)) & 0x635BBEE4) - 1314005134;
  v48 = *(v15[224] + 4 * (HIBYTE(v40) ^ 0x5B));
  v49 = v15[225];
  v50 = *(v49 + 4 * (BYTE1(v40) ^ 0x40u));
  v51 = *(v15[227] + 4 * (BYTE2(v47) ^ 0xBCu)) ^ *(v15[226] + 4 * (HIBYTE(v41) ^ 0x33));
  v52 = *(v49 + 4 * (BYTE1(v47) ^ 0xE7u)) ^ *(v15[228] + 4 * (v46 ^ 0xD5u));
  v53 = *(v15[231] + 4 * (v40 ^ 0xDBu));
  v54 = *(v15[232] + 4 * (BYTE1(v46) ^ 0x26u));
  v55 = *(v15[230] + 4 * (HIBYTE(v47) ^ 0xF1)) ^ *(v15[229] + 4 * (BYTE2(v46) ^ 0xC4u));
  if (v42 == 2131278803)
  {
    v56 = *(v15[227] + 4 * (BYTE2(v47) ^ 0xBCu)) ^ *(v15[226] + 4 * (HIBYTE(v41) ^ 0x33));
  }

  else
  {
    v56 = v51 ^ v54 ^ 0x73C56BCA;
  }

  v57 = v54 ^ 0x8C3A9435;
  v58 = v57 + (v51 ^ 0x40A04571);
  v59 = (2 * (v55 & 0x4000)) ^ 0x8000 | v55 & 0x4000;
  v60 = (2 * (((v56 ^ 0x40A04571) & v57) - ((2 * ((v56 ^ 0x40A04571) & v57)) & 0x4DCEC682)) + 1305396866) ^ 0x4DCEC682;
  v61 = v60 - ((2 * v60) & 0xFED3F08C) + 2137651271;
  v62 = *(v15[234] + 4 * (BYTE2(v40) ^ 0xE0u));
  v63 = (v58 ^ 0x9EE5F7FF) + ((2 * v58) & 0x3DCBEFFE) + 1629095938 + (v61 ^ 0x809607B8);
  v64 = v52 ^ *(v15[233] + 4 * (BYTE2(v41) ^ 0x91u)) ^ v48;
  v65 = (v63 - ((2 * v63) & 0x54E4BD18) - 1435345268) ^ v53;
  v66 = v59 ^ 0x24C1C0F4;
  if (((v59 - 0x4000) & (v50 ^ 0x8C3A8000)) - 810333453 - ((2 * ((v59 - 0x4000) & (v50 ^ 0x8C3A8000))) & 0x9F6695A8) == -810333453)
  {
    v66 = v59 + 616644852;
  }

  v67 = *(v15[235] + 4 * (HIBYTE(v46) ^ 0xDF)) ^ *(v15[236] + 4 * (BYTE1(v41) ^ 0xC5u)) ^ *(v15[237] + 4 * (v47 ^ 0x54u)) ^ v62;
  v68 = *(v15[238] + 4 * (v41 ^ 0x6Bu)) ^ v55 & 0xFFFFBFFF ^ ((v50 ^ 0x8C3A9435) - 616661236 + v66 - ((2 * ((v50 ^ 0x8C3A9435) - 616661236 + v66)) & 0xEF87FE18) - 138150132);
  v69 = *(v15[243] + 4 * (BYTE2(v68) ^ 0xEBu));
  v70 = *(v15[244] + 4 * (HIBYTE(v65) ^ 0x5D));
  v71 = v15[246];
  v72 = *(v15[240] + 4 * (BYTE2(v65) ^ 0x8Fu)) ^ *(v15[239] + 4 * (HIBYTE(v64) ^ 0xF)) ^ *(v15[241] + 4 * (v67 ^ 0xB9u)) ^ *(v15[242] + 4 * (BYTE1(v68) ^ 0x92u));
  v73 = (v69 ^ ((v69 ^ 0x2121412A) - ((2 * (v69 ^ 0x2121412A) + 2) & 0xA01922A4) - 804482733) ^ 0xA1942481 ^ ((v70 ^ 0x9E7EFBA4) - (v69 ^ 0x40A04571 ^ v70) - ((2 * ((v70 ^ 0x9E7EFBA4) - (v69 ^ 0x40A04571 ^ v70))) & 0x5E8C160C) - 1354364154)) + (v70 ^ 0x9E7EFBA4);
  v74 = *(v15[251] + 4 * (v68 ^ 0x11u));
  v75 = *(v71 + 4 * (v64 ^ 0xB6u)) ^ *(v15[245] + 4 * (BYTE1(v67) ^ 0x23u)) ^ (v73 + 558653497 + (~(2 * v73) | 0xBD673F8F));
  v76 = *(v15[247] + 4 * (HIBYTE(v68) ^ 0x78)) ^ *(v15[248] + 4 * ~(v64 >> 8)) ^ *(v15[250] + 4 * (BYTE2(v67) ^ 0xBAu)) ^ *(v71 + 4 * (v65 ^ 0x51u));
  v77 = v74 ^ *(v15[249] + 4 * (HIBYTE(v67) ^ 0xDB)) ^ *(v15[253] + 4 * (BYTE2(v64) ^ 0x9Au)) ^ *(v15[252] + 4 * (BYTE1(v65) ^ 9u));
  v78 = *(v15[260] + 4 * (HIBYTE(v77) ^ 0x77));
  v79 = v15[262];
  v80 = *(v79 + 4 * (v72 ^ 0x9Eu));
  v81 = *(v15[258] + 4 * (BYTE2(v76) ^ 0xF0u)) ^ *(v15[261] + 4 * (BYTE1(v77) ^ 0xF6u));
  v82 = *(v15[256] + 4 * (HIBYTE(v72) ^ 0x93)) ^ *(v15[257] + 4 * (BYTE1(v76) ^ 0x69u)) ^ *(v15[259] + 4 * (v77 ^ 0xD2u)) ^ *(v15[255] + 4 * (BYTE2(v75) ^ 0x62u));
  v83 = *(v15[263] + 4 * (BYTE2(v77) ^ 0x26u)) ^ *(v15[265] + 4 * (HIBYTE(v76) ^ 0xAB)) ^ *(v15[266] + 4 * (BYTE1(v72) ^ 0x56u)) ^ *(v79 + 4 * (v75 ^ 0xAu));
  v84 = *(v15[264] + 4 * (BYTE1(v75) ^ 0x49u)) ^ v78 ^ *(v15[267] + 4 * (v76 ^ 0x2Fu)) ^ *(v15[268] + 4 * (BYTE2(v72) ^ 0x85u));
  v85 = v81 ^ v80 ^ *(v15[254] + 4 * (HIBYTE(v75) ^ 0xCE));
  v86 = v15[274];
  LODWORD(v71) = *(v15[275] + 4 * (BYTE2(v84) ^ 0xEAu));
  v87 = *(v15[270] + 4 * (BYTE1(v83) ^ 0x7Cu)) ^ *(v15[269] + 4 * (HIBYTE(v82) ^ 0x21)) ^ *(v15[273] + 4 * (v84 ^ 0x2Cu)) ^ *(v86 + 4 * (BYTE2(v85) ^ 0x3Cu));
  v88 = *(v15[272] + 4 * (HIBYTE(v85) ^ 0x89)) ^ *(v15[271] + 4 * (BYTE1(v84) ^ 0x36u)) ^ *(v86 + 4 * (BYTE2(v83) ^ 0xA0u)) ^ *(v15[276] + 4 * (v82 ^ 0xD6u));
  v89 = v15[69];
  v90 = v15[62];
  v91 = *(v89 + 4 * (HIBYTE(v84) ^ 0x55)) ^ 0x9E7EFBA4;
  v92 = *(v90 + 4 * (BYTE2(v82) ^ 0xDEu)) ^ 0xDEDEBED5;
  v93 = (2 * ((v92 & v91) - ((2 * (v92 & v91)) & 0x13C5CB5A)) + 331729754) ^ 0x13C5CB5A;
  v94 = v15[52];
  v95 = v15[59];
  v96 = *(v15[277] + 4 * (HIBYTE(v83) ^ 0x25)) ^ v71 ^ *(v94 + 4 * (v85 ^ 0xD1u)) ^ *(v95 + 4 * (BYTE1(v82) ^ 0x79u));
  v97 = ((v92 + v91) ^ 0x4EFF2EE6) + ((2 * (v92 + v91)) & 0x9DFE5DCC) - 1325346533 + ((v93 - ((2 * v93) & 0x8C83AFBC) + 1178720222) ^ 0xB9BE2821);
  v98 = *(v95 + 4 * (BYTE1(v85) ^ 0xA9u)) ^ *(v94 + 4 * (v83 ^ 0xBAu)) ^ (v97 - ((2 * v97) & 0xEC72C022) - 164012015);
  v99 = *(v94 + 4 * (v98 ^ 0xC4u)) ^ *(v90 + 4 * (BYTE2(v88) ^ 0xF6u));
  HIDWORD(v100) = v99 ^ 0x55555555;
  LODWORD(v100) = v99 ^ 0x1528D3C0;
  v101 = (v100 >> 6) - ((2 * (v100 >> 6)) & 0xD20D0540) - 385449312;
  HIDWORD(v100) = v101 ^ 0x3308839;
  LODWORD(v100) = v101 ^ 0x66666666;
  v102 = BYTE2(v98) ^ 0x25;
  v103 = *(v95 + 4 * (BYTE1(v96) ^ 0x2Au)) ^ *(v89 + 4 * (HIBYTE(v87) ^ 0x1D)) ^ ((v100 >> 26) - ((2 * (v100 >> 26)) & 0x855D2EE) - 2077562505);
  v104 = *(v90 + 4 * (BYTE2(v87) ^ 0xA6u));
  v105 = HIBYTE(v98) ^ 0x55;
  v106 = *(v95 + 4 * (BYTE1(v98) ^ 0x85u)) ^ *(v90 + 4 * (BYTE2(v96) ^ 0x3Au)) ^ *(v89 + 4 * (HIBYTE(v88) ^ 0x93)) ^ *(v94 + 4 * (v87 ^ 0xA7u));
  v107 = *(v89 + 4 * v105);
  v108 = *(v90 + 4 * v102) ^ *(v89 + 4 * (HIBYTE(v96) ^ 0xB1)) ^ *(v95 + 4 * ~(v87 >> 8)) ^ *(v94 + 4 * (v88 ^ 0x32u));
  v109 = (v104 ^ ((v104 ^ 0x2121412A) - ((2 * (v104 ^ 0x2121412A) + 2) & 0x65B8D372) - 1294177862) ^ 0x37610CFB ^ ((v107 ^ 0x9E7EFBA4) - (v104 ^ 0x40A04571 ^ v107) - ((2 * ((v107 ^ 0x9E7EFBA4) - (v104 ^ 0x40A04571 ^ v107))) & 0xB6C7B72E) + 1533270935)) + (v107 ^ 0x9E7EFBA4);
  v110 = *(v94 + 4 * (v96 ^ 0xCCu)) ^ *(v95 + 4 * (BYTE1(v88) ^ 0xEAu)) ^ (v109 - ((2 * v109) & 0xD7748E46) + 1807370019);
  v248 = *(v94 + 4 * (v110 ^ 0x73u)) ^ *(v95 + 4 * (BYTE1(v108) ^ 0xBBu));
  v111 = *(v90 + 4 * (BYTE2(v108) ^ 0xEDu));
  v112 = *(v89 + 4 * (HIBYTE(v106) ^ 0x42));
  v253 = *(v95 + 4 * (BYTE1(v110) ^ 0xA5u));
  HIDWORD(v100) = v112 ^ v111 ^ 0xC9AD144 ^ v253;
  LODWORD(v100) = v112 ^ v111 ^ ~v253;
  v113 = v100 >> 30;
  HIDWORD(v100) = 3 - v113;
  LODWORD(v100) = (v113 - ((2 * v113) & 0x3B81E930) - 1648298856) ^ 0x145BD4;
  v114 = *(v90 + 4 * (BYTE2(v110) ^ 0x27u)) ^ *(v89 + 4 * (HIBYTE(v108) ^ 0xF4)) ^ *(v94 + 4 * (v106 ^ 0x49u)) ^ *(v95 + 4 * (BYTE1(v103) ^ 0xE7u));
  v115 = *(v89 + 4 * (HIBYTE(v110) ^ 0x3B)) ^ *(v95 + 4 * (BYTE1(v106) ^ 0x2Du)) ^ *(v94 + 4 * (v108 ^ 0xC1u)) ^ *(v90 + 4 * (BYTE2(v103) ^ 0xA1u));
  v116 = (v114 ^ 0x885B1C90) % 0x5567BE9B;
  LOBYTE(v108) = (v114 ^ 0x90) + (v116 ^ 4) - ((2 * v116) & 0xF6) - 4;
  LOBYTE(v108) = ((2 * v116) & 0xB8) + (v116 ^ 0xDC) + (v108 ^ 0xFA) + ((2 * v108) & 0xF4);
  LOBYTE(v70) = v108 - ((2 * v108 + 84) & 0xA2);
  v251 = *(v94 + 4 * (v103 ^ 0xFEu));
  v117 = v251 ^ ((v100 >> 2) - ((2 * (v100 >> 2)) & 0xF4AE4438) - 94952932);
  v249 = v115 ^ 0xF5;
  v252 = *(v90 + 4 * (BYTE2(v114) ^ 0x5Bu));
  v118 = *(v89 + 4 * (HIBYTE(v117) ^ 0xAA));
  v119 = (v118 ^ ((v252 ^ 0xDEDEBED5) - (v252 ^ 0x40A04571 ^ v118) - ((2 * ((v252 ^ 0xDEDEBED5) - (v252 ^ 0x40A04571 ^ v118))) & 0x1781DCD2) + 197193321) ^ ((v118 ^ 0x6181045B) - ((2 * (v118 ^ 0x6181045B) + 2) & 0xBC2C7E10) + 1578516233) ^ 0xCBA82AC5) + (v252 ^ 0xDEDEBED5);
  v120 = v119 - ((2 * v119) & 0x3C370330) + 505119128;
  v121 = *(v90 + 4 * (BYTE2(v106) ^ 0xBBu));
  v246 = *(v89 + 4 * (HIBYTE(v103) ^ 0xCA));
  v122 = v248 ^ v121 ^ v246;
  v250 = *(v95 + 4 * (BYTE1(v114) ^ 0x1Cu));
  v123 = *(v90 + 4 * (BYTE2(v117) ^ 0x62u)) ^ *(v89 + 4 * (HIBYTE(v122) ^ 0x3E)) ^ v250 ^ *(v94 + 4 * v249);
  HIDWORD(v100) = v120 ^ 0xDC85C;
  LODWORD(v100) = v120 ^ 0xC2600000;
  v124 = (v100 >> 21) - ((2 * (v100 >> 21)) & 0x383B5BBE) + 471707103;
  HIDWORD(v100) = v124 ^ 0x33C;
  LODWORD(v100) = v124 ^ 0xAE538800;
  v125 = ((2 * (v100 >> 11)) & 0x5BAFFFDA) + ((v100 >> 11) ^ 0x2DD7FFED);
  v247 = BYTE1(v115) ^ 7;
  v126 = v125 - 769130477;
  v127 = *(v95 + 4 * v247);
  v128 = (((v127 ^ 0x8C3A9435 ^ (v125 - 769130477)) - ((2 * (v127 ^ 0x8C3A9435 ^ (v125 - 769130477))) & 0xFEA67A2C) + 2136161558) ^ 0x80ACC2E9) + v125;
  v129 = (v127 ^ ((v127 ^ 0x73C56BCA) - ((2 * (v127 ^ 0x73C56BCA) + 2) & 0x140901F0) - 1979416327) ^ 0x56C4469B ^ (v128 - ((2 * v128 - 1538260952) & 0xA1F4A4AC) + 589451882)) + v126;
  v130 = (v129 - ((2 * v129) & 0x4FC2179A) - 1478423603) ^ *(v94 + 4 * ((v248 ^ v121 ^ v246) ^ 0x18u));
  v244 = HIBYTE(v115) ^ 0x9F;
  v243 = *(v89 + 4 * (HIBYTE(v114) ^ 0x88));
  v131 = BYTE2(v115) ^ 0xA;
  v132 = v94;
  v254 = *(v90 + 4 * v131) ^ v243 ^ *(v95 + 4 * (BYTE1(v122) ^ 0x8Au)) ^ *(v94 + 4 * (v117 ^ 0x9Eu));
  v133 = v95;
  v134 = *(v90 + 4 * (BYTE2(v122) ^ 0xDu)) ^ *(v89 + 4 * v244) ^ *(v95 + 4 * (BYTE1(v117) ^ 0xC3u));
  v135 = ((v130 ^ 0x53BBF561) - ((2 * (v130 ^ 0x53BBF561) + 2) & 0xDDF6A7F0) - 285518855) ^ (699274204 - (v130 ^ 0xB7C43176) - ((385906640 - 2 * (v130 ^ 0xB7C43176)) & 0x1C5BAFE8)) ^ 0xE0D6840C;
  LODWORD(STACK[0x584]) = v130;
  v136 = v130 ^ 0xE466956E ^ (v135 - ((2 * v135) & 0x90453FE0) + 1210228720);
  v137 = v136 - ((2 * v136 + 922777552) & 0x76AE5820) - 690526216;
  v138 = v134 ^ *(v94 + 4 * ((v70 - 5) ^ 0xD1u));
  v139 = (v112 ^ 0x9E7EFBA4) + (v111 ^ 0xDEDEBED5);
  v140 = v139 ^ 0x7FCEF7FF;
  v141 = (2 * v139) & 0xFF9DEFFE;
  v142 = v15[69];
  v143 = v123;
  v144 = v15[62];
  v245 = *(v94 + 4 * (v137 ^ 0x10u)) ^ *(v142 + 4 * (HIBYTE(v254) ^ 0x53)) ^ *(v95 + 4 * (BYTE1(v123) ^ 0x4Cu)) ^ *(v144 + 4 * (BYTE2(v138) ^ 0xEEu));
  LODWORD(v71) = (2 * (((v112 ^ 0x9E7EFBA4) & (v111 ^ 0xDEDEBED5)) - ((2 * ((v112 ^ 0x9E7EFBA4) & (v111 ^ 0xDEDEBED5))) & 0x3957A200)) + 962044416) ^ 0x3957A200;
  v145 = (v121 ^ ((v121 ^ 0x2121412A) - ((2 * (v121 ^ 0x2121412A) + 2) & 0xF38CBB84) + 2043043267) ^ 0x716D2575 ^ ((v246 ^ 0x9E7EFBA4) - (v121 ^ v246 ^ 0x40A04571) - ((2 * ((v246 ^ 0x9E7EFBA4) - (v121 ^ v246 ^ 0x40A04571))) & 0xACEB8CC4) - 696924574)) + (v246 ^ 0x9E7EFBA4);
  v146 = v140 + v141 - 2144270334 + ((v71 - ((2 * v71) & 0x9E769E3C) - 818196705) ^ 0x30C4B0E0);
  v147 = v248 ^ (v145 - ((2 * v145) & 0xEB80A9D8) - 171944724);
  v148 = (v146 - ((2 * v146) & 0x193BC60E) - 1935809785) ^ v253 ^ v251;
  v149 = BYTE1(v147) ^ 0x9B;
  LODWORD(v71) = BYTE2(v147) ^ 0x6D;
  v150 = *(v95 + 4 * v247);
  LODWORD(v95) = *(v142 + 4 * (HIBYTE(v147) ^ 0x8B)) ^ v250 ^ *(v94 + 4 * v249) ^ *(v144 + 4 * (BYTE2(v148) ^ 0xE7u));
  v151 = *(v142 + 4 * (HIBYTE(v148) ^ 0xB7)) ^ v252 ^ v150 ^ *(v94 + 4 * (v147 ^ 0x85u));
  v152 = *(v90 + 4 * v131);
  v153 = BYTE1(v148) ^ 0xBD;
  v154 = *(v133 + 4 * v149);
  v155 = *(v133 + 4 * v153);
  v156 = v154 ^ v243 ^ v152 ^ *(v94 + 4 * (((v146 - ((2 * v146) & 0xE) + 7) ^ v253 ^ v251) ^ 0x63u));
  v157 = v155 ^ *(v94 + 4 * (v114 ^ 0x90u)) ^ *(v89 + 4 * v244) ^ *(v144 + 4 * v71);
  v158 = BYTE2(v157) ^ 0xEE;
  v159 = BYTE1(v95) ^ 0x4C;
  LODWORD(v71) = *(v133 + 4 * (BYTE1(v156) ^ 0x4Bu)) ^ *(v142 + 4 * (BYTE3(v95) ^ 0xA0)) ^ *(v144 + 4 * (BYTE2(v151) ^ 0xBFu)) ^ *(v94 + 4 * (v157 ^ 0x9Au));
  LODWORD(v89) = *(v144 + 4 * (BYTE2(v156) ^ 0x88u)) ^ *(v94 + 4 * (v95 ^ 0xAEu));
  v160 = *(v142 + 4 * (HIBYTE(v151) ^ 0xDC)) ^ *(v133 + 4 * (BYTE1(v157) ^ 0xF0u));
  v161 = HIBYTE(v157) ^ 0xCB;
  v162 = *(v142 + 4 * (HIBYTE(v137) ^ 0xBB));
  v163 = *(v142 + 4 * (HIBYTE(v138) ^ 0xCB));
  v164 = *(v142 + 4 * (HIBYTE(v156) ^ 0x53));
  v165 = *(v142 + 4 * v161);
  v166 = *(v144 + 4 * (BYTE2(v137) ^ 0x57u));
  v167 = *(v144 + 4 * (BYTE2(v254) ^ 0x88u));
  LODWORD(v94) = *(v144 + 4 * (BYTE2(v143) ^ 9u));
  v168 = *(v144 + 4 * v158);
  LODWORD(v95) = *(v144 + 4 * (BYTE2(v95) ^ 9u));
  LODWORD(v144) = *(v133 + 4 * (BYTE1(v137) ^ 0x2Cu));
  v169 = *(v133 + 4 * (BYTE1(v151) ^ 0xEBu));
  v170 = *(v132 + 4 * (v156 ^ 0x2Bu));
  v171 = (*(v142 + 4 * (HIBYTE(v143) ^ 0xA0)) ^ *(v133 + 4 * (BYTE1(v254) ^ 0x4Bu)) ^ *(v132 + 4 * (v138 ^ 0x9Au)) ^ 0xF4C25758 ^ v166) - 1953300930;
  v172 = ((2 * v171) & 0xB8FCEFFE) + (v171 ^ 0xDC7E77FF);
  v173 = (v162 ^ v167 ^ *(v132 + 4 * (v143 ^ 0xAEu)) ^ *(v133 + 4 * (BYTE1(v138) ^ 0xF0u)) ^ 0x2F1100E3) + 1286597588;
  LODWORD(v142) = ((2 * v173) & 0xB17CEBFE) + (v173 ^ 0xD8BE75FF);
  HIDWORD(v100) = v245 ^ 0xC44;
  LODWORD(v100) = v245 ^ 0x76CB000;
  v174 = (v100 >> 12) - ((2 * (v100 >> 12)) & 0x9F86AA1A) - 809282291;
  v175 = (*(v132 + 4 * (v254 ^ 0x2Bu)) ^ v94 ^ v163 ^ 0xB777BB52 ^ v144) + 1302949155;
  v176 = ((2 * v175) & 0xCEF7FD7A) + (v175 ^ 0xE77BFEBD);
  LODWORD(v132) = v164 ^ v168 ^ *(v133 + 4 * v159) ^ *(v132 + 4 * ~v151);
  v177 = ((2 * (v95 ^ v165 ^ v169 ^ v170)) & 0xF7FBEFF4 ^ 0x66EB66A4) + (v95 ^ v165 ^ v169 ^ v170 ^ 0x4C8A4CA8);
  HIDWORD(v100) = v174 ^ 0x11FBD;
  LODWORD(v100) = v174 ^ 0x47600000;
  v178 = ((((v176 - v177 + 344062269) ^ 0xCEAFE8FC) - ((2 * ((v176 - v177 + 344062269) ^ 0xCEAFE8FC)) & 0x38B40ACC) - 1671821978) ^ 0x63A5FA99) + v176 - v177;
  v179 = ((v178 - ((2 * v178 + 688124540) & 0xE7C479C6) + 140785185) ^ 0xC1DC31B) + v176 - v177 + 344062269;
  LODWORD(v95) = ((2 * v179) & 0x7FFFC2FE) + (v179 ^ 0xBFFFE17F);
  v180 = ((2 * v71) & 0x62D7B9FE ^ 0x6084A8B0) + (v71 ^ 0x45A98BA7);
  v181 = ((2 * (v89 ^ v160)) & 0x9FFBFBBE ^ 0x1E220186) + (v89 ^ v160 ^ 0x60ECFD3C);
  v182 = (((v100 >> 20) - ((2 * (v100 >> 20)) & 0x6E1AB7E) - 2089757249) ^ 0xDB4296FD) - 1879360707;
  v183 = ((2 * v182) & 0xF7F4F5FE) + (v182 ^ 0x7BFA7AFF);
  v184 = ((2 * v132) & 0xEAE6FFFE ^ 0xE2E2EF18) + (v132 ^ 0xE868873);
  LODWORD(v142) = (v142 - v181 - 2 * ((v142 - v181 + 20940768) & 0x1260EBB ^ (v142 - v181) & 0xA) - 127560047) ^ 0x78F59D3A;
  LODWORD(v142) = -138290639 * v142 - ((797160546 * v142) & 0x3A1BBDAC) - 1660035370;
  v185 = (v172 - v180 - 2 * ((v172 - v180 + 82666752) & 0x8203F1B ^ (v172 - v180) & 0x11) + 1561175050) ^ 0x16D3A6BE;
  v186 = (v183 - v184 - 2 * ((v183 - v184 + 964232448) & 0x3012233F ^ (v183 - v184) & 8) - 1450497993) ^ 0x19DA38C2;
  v187 = ((2047712667 * v186) ^ 0x9BFFFDFE) + ((874199862 * v186) & 0x37FFFBFC);
  LODWORD(v132) = ((2 * ((v187 + 1677722114) ^ v142)) & 0xBF65FAFA ^ 0x3A01B8A8) + ((v187 + 1677722114) ^ v142 ^ 0xC2BF23AB);
  v188 = v142 ^ (927481157 * v185 - ((1854962314 * v185) & 0xD23B7A10) + 1763556616);
  LODWORD(v142) = (v188 ^ 0xBEF9C21) + 1381245408 - 1182740385 * v95;
  v189 = v187 - -1182740385 * v95 + 296476707;
  v190 = (v188 ^ 0xF41063DE ^ v189) + 195400787 - ((2 * (v188 ^ 0xF41063DE ^ v189)) & 0x174B28A6);
  v191 = (v190 ^ 0xBA59453) + v189 - ((2 * ((v190 ^ 0xBA59453) + v189)) & 0x4F9C21A4) + 667816146;
  v192 = v190 ^ (1909148886 - v132 - ((1063647994 - 2 * v132) & 0x24309EB2));
  v193 = ((2 * v192) & 0xFF67FF3E ^ 0x3363B614) + (v192 ^ 0xE60E2495);
  LODWORD(v142) = (v142 ^ 0xBFFDFEFF) + ((2 * v142) & 0x7FFBFDFE) + v132 + v193;
  v194 = ((2 * ((v142 - 526711835) ^ v191)) & 0xC66FED4E ^ 0x460C2104) + ((v142 - 526711835) ^ v191 ^ 0xC4F9E675);
  v195 = v180 - v193 - ((2 * (v180 - v193) + 745829446) & 0x51E5C19A) + 1059920624;
  v196 = v181 - v142;
  v197 = v132 - v194 + v177 - ((2 * (v132 - v194 + v177) + 170738160) & 0xD1B8484) + 463758138;
  v198 = v196 - ((2 * v196 - 1560128204) & 0xFB183EB4) + 1326270964;
  LODWORD(v95) = v184 - v194 - ((2 * (v184 - v194) + 36900686) & 0x28CBE58) + 1382016723;
  v199 = v15[67];
  LODWORD(v94) = *(v199 + 4 * (HIBYTE(v195) ^ 0xA8));
  v200 = v15[65];
  v201 = *(v200 + 4 * (v197 ^ 0x42u));
  v202 = v15[71];
  v203 = *(v202 + 4 * (BYTE2(v95) ^ 0x46u)) ^ *(v199 + 4 * (HIBYTE(v198) ^ 0x7D));
  HIDWORD(v100) = v203 ^ 0x67;
  LODWORD(v100) = v203 ^ 0x73B0B800;
  v204 = (v100 >> 8) - ((2 * (v100 >> 8)) & 0x339CDF68) - 1714524236;
  v205 = ((v204 << 8) ^ 0x585F6500) - ((2 * ((v204 << 8) ^ 0x585F6500)) & 0x49078200) + 612614499;
  v206 = ((((v204 ^ 0x42585F65u) >> (HIBYTE(v151) & 0x18 ^ 0x18)) - 828827916 - ((2 * ((v204 ^ 0x42585F65u) >> (HIBYTE(v151) & 0x18 ^ 0x18))) & 0x9D322DE8)) ^ 0xCE9916F4) >> (HIBYTE(v151) & 0x18);
  v207 = v206 - ((2 * v206) & 0xB8683360) + 1546918320;
  v208 = *(v199 + 4 * (HIBYTE(v197) ^ 0x86));
  v209 = *(v199 + 4 * (BYTE3(v95) ^ 0x81));
  v210 = *(v200 + 4 * (v195 ^ 0xCDu));
  v211 = *(v200 + 4 * (v198 ^ 0x5Au));
  v212 = *(v200 + 4 * (v95 ^ 0x2Cu));
  v213 = v15[56];
  v214 = *(v213 + 4 * (BYTE1(v95) ^ 0x5Fu));
  v215 = *(v213 + 4 * (BYTE1(v195) ^ 0xE0u));
  v216 = *(v213 + 4 * (BYTE1(v197) ^ 0xC2u));
  v217 = *(v202 + 4 * (BYTE2(v195) ^ 0xF2u));
  LODWORD(v144) = v214 ^ v94 ^ v201;
  v218 = STACK[0x29C];
  v219 = v144 ^ *(v202 + 4 * (BYTE2(v198) ^ 0x8Cu)) ^ LODWORD(STACK[0x29C]);
  v220 = *(v202 + 4 * (BYTE2(v197) ^ 0x8Du));
  v221 = (v219 & 0x40000 ^ 0x1DFE97FF) + 2 * (v219 & 0x40000);
  v222 = *(v213 + 4 * (BYTE1(v198) ^ 0x1Fu));
  v223 = ((v221 - 503224319) & STACK[0x34C]) - 950241060 - ((2 * ((v221 - 503224319) & STACK[0x34C])) & 0x8EB80000);
  if ((v151 ^ 0xDC000000) >> 24)
  {
    v224 = v219 ^ 0x9F0F6A45;
  }

  else
  {
    v224 = -262145;
  }

  v225 = v221 - 21234032;
  v226 = (v224 & (v219 ^ 0x9F0B6A45)) - ((2 * (v224 & (v219 ^ 0x9F0B6A45))) & 0xC155BEBC) + 1621811038;
  v227 = 985214606 - v221;
  if (v223 == -950241060)
  {
    v227 = v225;
  }

  v228 = v210 ^ v216 ^ v205;
  v229 = STACK[0x234];
  v230 = STACK[0x260];
  v231 = v228 ^ LODWORD(STACK[0x234]) ^ LODWORD(STACK[0x260]) ^ LODWORD(STACK[0x29C]) ^ v207;
  v232 = LODWORD(STACK[0x230]) ^ v226;
  HIDWORD(v233) = v232 ^ 0x7EDDC3;
  LODWORD(v233) = v232 ^ 0x64000000;
  v234 = (v233 >> 24) - ((2 * (v233 >> 24)) & 0xEDCC2CAC) - 152693162;
  HIDWORD(v233) = v234 ^ 0x66666666;
  LODWORD(v233) = v234 ^ 0x7D9E5800;
  v235 = ((v233 >> 8) - ((2 * (v233 >> 8)) & 0x49F4D226) + 620390675) ^ (v227 + LODWORD(STACK[0x350]) - ((2 * (v227 + LODWORD(STACK[0x350]))) & 0xE4A42408) + 1917981188);
  LODWORD(STACK[0x358]) = v235;
  v236 = v211 ^ v215 ^ v209 ^ v220 ^ v229 ^ v230 ^ v218;
  LODWORD(STACK[0x588]) = HIBYTE(v235);
  LODWORD(STACK[0x58C]) = HIBYTE(v231);
  v237 = v208 ^ v217 ^ v212 ^ v222 ^ v229 ^ v230 ^ v218;
  LODWORD(STACK[0x590]) = v236 >> 8;
  LODWORD(STACK[0x354]) = v231;
  LODWORD(STACK[0x35C]) = v236;
  LODWORD(STACK[0x594]) = HIBYTE(v236);
  LODWORD(STACK[0x598]) = HIBYTE(v237);
  LODWORD(STACK[0x59C]) = v231 >> 8;
  v238 = byte_297A1FC60[v237 ^ 0xE1];
  LODWORD(STACK[0x5A0]) = v235 >> 8;
  LODWORD(STACK[0x360]) = v237;
  LODWORD(STACK[0x5A4]) = v237 >> 8;
  LOBYTE(v237) = (97 * (v238 ^ 0xE1) - ((66 * (v238 ^ 0xE1)) & 0x42) - 95) ^ (((16 * v238) ^ 0x10 | 0xA0) - ((2 * ((16 * v238) ^ 0x10)) & 0x20) + 27) ^ 0x54;
  v239 = LODWORD(STACK[0x41C]);
  LOBYTE(STACK[0x3CA]) = v237;
  v15[88] = v15[12] + v239;
  v15[87] = *(v13 + 8 * (v16 + 1774953442));
  v240 = v15[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v241 = (*(*(v14 + 3544) + 32 * *(((v240 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v15[87])(v241);
}

void sub_2979C9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(v11 + 1056) + a11;
  v13 = 233206231 * (((v12 - 205298567) ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358))) & (LODWORD(STACK[0x52C]) ^ 0xE9CB9DF9));
  v14 = v13 ^ HIWORD(v13);
  HIDWORD(v15) = STACK[0x538];
  LODWORD(v15) = 233206231 * v14;
  LOBYTE(STACK[0x3CA]) = byte_297A1E340[(v15 >> 24) & 0xFFF] ^ LOBYTE(STACK[0x37F]) ^ (-41 * v14);
  *(v11 + 704) = v12 - 0x5F9955DC17FF6699;
  JUMPOUT(0x2979C9384);
}

uint64_t sub_2979C93E0()
{
  v7 = byte_297A20990[LOBYTE(STACK[0x5A8]) ^ 0x96];
  HIDWORD(v8) = v7 ^ 6;
  LODWORD(v8) = (v7 ^ 0x40) << 24;
  v9 = (v8 >> 30) - ((2 * (v8 >> 30)) & 0xFFFFFFB2);
  v10 = ((v9 + 89) & 0xFFFFFFDA ^ 0x7D) - 2 * (((v9 + 89) & 0xFFFFFFDA ^ 0x7D) & 0xF);
  v11 = ((((v10 + 15) >> 2) & 0x1F) - (v10 << 6) + 7104) ^ 0x43;
  HIDWORD(v8) = v9 - 39;
  LODWORD(v8) = ((v9 - 39) ^ 0x28) << 24;
  v12 = (v11 - ((2 * v11) & 0x14) + 42) ^ ((v8 >> 27) - 16 * ((v8 >> 27) >> 3) - 8);
  v13 = LOBYTE(STACK[0x5A4]);
  LODWORD(STACK[0x5AC]) = v13;
  LODWORD(STACK[0x5B0]) = (v13 ^ 0xFFFFFFA7) - ((2 * (v13 ^ 0xFFFFFFA7) + 2) & 0xF5520A28) + 2057897237;
  LODWORD(STACK[0x5B4]) = 365695813 - (v13 ^ 0xD0) - ((272 - 2 * (v13 ^ 0xD0)) & 0x2B98257A);
  HIDWORD(v8) = v12 ^ 0x19;
  LODWORD(v8) = (v12 ^ 0x80) << 24;
  v14 = v6[115];
  LOBYTE(STACK[0x3CA]) = ((v8 >> 29) - ((2 * (v8 >> 29)) & 0x2E) + 23) ^ 0x4D;
  v6[88] = v14;
  v6[87] = *(v3 + 8 * (v4 ^ 0x57C));
  v0 = v6[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v5 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v6[87])(v1);
}

void sub_2979C952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LODWORD(STACK[0x544]) - 2049698368 - 2 * ((LODWORD(STACK[0x544]) + 16) & 0x5D415B9 ^ STACK[0x40C] & 9);
  LODWORD(STACK[0x364]) = v68;
  v69 = LODWORD(STACK[0x588]);
  v70 = byte_297A217A0[v69 ^ 0x73];
  LOBYTE(STACK[0x5DB]) = (v68 ^ 0x85D415B0) < a67;
  LOBYTE(v68) = v70 ^ ((v69 ^ 0xB9) - (v69 ^ 0x98) - ((2 * ((v69 ^ 0xB9) - (v69 ^ 0x98))) & 0x88) + 68) ^ 0xDC;
  v71 = *(v67 + 1096);
  LOBYTE(STACK[0x3CA]) = v68;
  *(v67 + 704) = v71;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C95D4()
{
  v8 = byte_297A20990[LOBYTE(STACK[0x5C8]) ^ 0xF1];
  v9 = ((4 * v8) ^ 0x18) + ((8 * v8) & 0x80) - 64;
  v10 = (((v8 ^ 0x46) + 1973152182 - ((2 * (v8 ^ 0x46)) & 0x16C)) ^ 0x759BE9B6u) >> (LODWORD(STACK[0x5C0]) ^ 4);
  v11 = ((v10 + v4 - ((2 * v10) & 0x3D86517E)) ^ v4) >> LODWORD(STACK[0x5C4]);
  LOBYTE(v11) = (v11 - ((2 * v11) & 0xFC) - 2) ^ 0xFE | v9 ^ 0xC0;
  LOBYTE(v11) = v11 - 2 * (v11 & 7) - 121;
  v12 = (((2 * v11) ^ 0xE) - ((2 * ((2 * v11) ^ 0xE)) & 0x28) - 107) & 0xB4 ^ 0xDE;
  v13 = v7[12] + LODWORD(STACK[0x4F8]);
  LOBYTE(STACK[0x3CA]) = v11 ^ 0x41 ^ (v12 - ((2 * v12) & 0x70) - 71);
  v7[88] = v13;
  v7[87] = *(v3 + 8 * (v5 + 640));
  v0 = v7[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v6 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v7[87])(v1);
}

void sub_2979C96DC()
{
  v1 = byte_297A20990[(LODWORD(STACK[0x5D0]) ^ 0xFFFFFF7F) + 559431720 + (((LODWORD(STACK[0x5CC]) ^ 0xC5) + 68) ^ 0xDEA7BFD9) + ((2 * ((LODWORD(STACK[0x5CC]) ^ 0xC5) + 68)) & 0x3B2)];
  HIDWORD(v2) = v1 ^ 6;
  LODWORD(v2) = (v1 ^ 0x40) << 24;
  v3 = (v2 >> 30) - ((2 * (v2 >> 30)) & 0xFFFFFFF4) + 122;
  v4 = ((2 * v3) ^ 0xF4) + (~(2 * ((2 * v3) ^ 0xF4)) | 0x3F) - 31;
  LOBYTE(v3) = v3 ^ ((v4 & 0xB4 ^ 0xEA) + (~(2 * v4) | 0xF7) - 123) ^ 0x3C;
  v5 = *(v0 + 952);
  LOBYTE(STACK[0x3CA]) = v3;
  *(v0 + 704) = v5;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C979C()
{
  v8 = STACK[0x5A0];
  v9 = byte_297A19710[v8 ^ 0x9ALL];
  v10 = STACK[0x35C];
  v11 = HIWORD(LODWORD(STACK[0x35C]));
  LODWORD(STACK[0x5CC]) = BYTE2(LODWORD(STACK[0x35C]));
  LODWORD(STACK[0x5D0]) = (((2 * v11) ^ 0x8A) - ((v10 >> 14) & 0x88888888) + 197) & 0x88;
  v12 = v6[12] + LODWORD(STACK[0x4A0]);
  LOBYTE(STACK[0x3CA]) = v9 ^ v8 ^ 0xA7;
  v6[88] = v12;
  v6[87] = *(v4 + 8 * (v3 + v7 + 1453));
  v0 = v6[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v5 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v6[87])(v1);
}

void sub_2979C9818()
{
  v1 = byte_297A1FC60[LOBYTE(STACK[0x35C]) ^ 0xFALL];
  v2 = (~(2 * v1) | 0xC3) + 97 * (v1 ^ 0xE1) + 31;
  v3 = (((16 * v1) & 0x50 ^ 0xB0) - ((2 * ((16 * v1) & 0x50 ^ 0xB0)) & 0x60) + 59) ^ 0x3B;
  v2 ^= 0xA4u;
  v4 = (v3 + v2) ^ 0x1B;
  v5 = (2 * (v3 + v2)) & 0x36;
  v6 = 2 * ((v3 & v2) - ((2 * (v3 & v2)) & 0x12)) + 18;
  v7 = v4 + v5 + (((v6 ^ 0x12) - 2 * ((v6 ^ 0x12) & 0x4E ^ v6 & 4) - 54) ^ 0x35) - 26;
  v0[151] = LODWORD(STACK[0x598]) ^ 0xA7;
  v8 = v0[12] + LODWORD(STACK[0x55C]);
  LOBYTE(STACK[0x3CA]) = (v7 ^ 0xB7) + ((2 * v7) & 0x6E) + 73;
  v0[88] = v8;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C9918()
{
  v7 = v6[102];
  LOBYTE(STACK[0x3CA]) = byte_297A19710[(LODWORD(STACK[0x5B0]) ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x5AC]) ^ 0x6F6517F1) + 136] ^ LOBYTE(STACK[0x5A4]) ^ 0xA0;
  v6[88] = v7;
  v6[87] = *(v3 + 8 * (v4 + 677));
  v0 = v6[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v5 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v6[87])(v1);
}

uint64_t sub_2979C996C()
{
  v7 = STACK[0x59C];
  v8 = byte_297A19710[v7 ^ 0x97];
  v9 = (LODWORD(STACK[0x594]) ^ 0xC5) - (LODWORD(STACK[0x594]) ^ 0xE4);
  LODWORD(STACK[0x5D4]) = v9 - ((2 * v9) & 0xEC) + 3;
  v10 = v6[12] + LODWORD(STACK[0x484]);
  LOBYTE(STACK[0x3CA]) = v8 ^ v7 ^ 0xD4;
  v6[88] = v10;
  v6[87] = *(v3 + 8 * (v4 + 689));
  v0 = v6[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v5 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v6[87])(v1);
}

void sub_2979C99DC()
{
  v1 = byte_297A20990[LOBYTE(STACK[0x35A]) ^ 7];
  HIDWORD(v2) = v1 ^ 6;
  LODWORD(v2) = (v1 ^ 0x40) << 24;
  v3 = (v2 >> 30) - ((2 * (v2 >> 30)) & 0x28) - 108;
  v4 = *(v0 + 1000);
  LOBYTE(STACK[0x3CA]) = v3 ^ 0xC8 ^ (((((2 * v3) ^ 0x28) - 2 * (((2 * v3) ^ 0x28) & 0x76 ^ (2 * v3) & 2) - 12) & 0xB4 ^ 0xFE) + 56);
  *(v0 + 704) = v4;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C9A60()
{
  v7 = byte_297A1FC60[LOBYTE(STACK[0x354]) ^ 0xB2];
  v8 = 97 * (v7 ^ 0xE1) - ((-62 * (v7 ^ 0xE1)) & 0x9F) + 79;
  v9 = (115 - ((16 * v7) ^ 0x10)) & 0x50 ^ 0xF0;
  v10 = v8 ^ (v9 - ((2 * v9) & 0xC0) + 96) ^ 0xEA;
  v11 = v6[122];
  LOBYTE(STACK[0x3CA]) = v10;
  v6[88] = v11;
  v6[87] = *(v3 + 8 * (v4 ^ 0x687));
  v0 = v6[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v1 = (*(*(v5 + 3544) + 32 * *(((v0 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v6[87])(v1);
}

void sub_2979C9AE8()
{
  v1 = byte_297A1FC60[LOBYTE(STACK[0x358]) ^ 0xA8];
  v2 = 97 * (v1 ^ 0xE1) - ((2 * v1) & 0x20) + 16;
  v3 = ((16 * v1) ^ 0x10) - ((2 * ((16 * v1) ^ 0x10)) & 0x20) + 26;
  v4 = v2 ^ ((v3 & 0x50 ^ 0xB0) + ((2 * v3) & 0x80 ^ 0xBF) - 18) ^ 0xE;
  v5 = *(v0 + 1144);
  LOBYTE(STACK[0x3CA]) = v4;
  *(v0 + 704) = v5;
  JUMPOUT(0x2979C9380);
}

void sub_2979C9B74()
{
  v1 = byte_297A217A0[v0[151]];
  v2 = (LODWORD(STACK[0x598]) ^ 0x6D) - (LODWORD(STACK[0x598]) ^ 0x4C);
  v3 = LODWORD(STACK[0x444]) ^ 0x85D415BC;
  v4 = STACK[0x584] & 6;
  LODWORD(STACK[0x5C0]) = v4;
  LODWORD(STACK[0x5C4]) = v4 ^ 2;
  LODWORD(STACK[0x5C8]) = LOWORD(STACK[0x362]);
  v5 = v0[12] + v3;
  LOBYTE(STACK[0x3CA]) = v1 ^ 0x92 ^ (v2 - ((2 * v2) & 0xF8) + 124);
  v0[88] = v5;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C9C00()
{
  v3 = LODWORD(STACK[0x638]) + 1808743618;
  v4 = *(v2 - 197) ^ (v3 < 0xD5984944);
  v5 = v3 < *(v2 - 196);
  if (v4)
  {
    v5 = *(v2 - 197);
  }

  v6 = *(v0 + 8 * ((197 * (v1 & ~v5)) ^ LODWORD(STACK[0x63C])));
  LODWORD(STACK[0x630]) = STACK[0x63C];
  LODWORD(STACK[0x634]) = STACK[0x644];
  return v6();
}

void sub_2979C9C6C()
{
  v1 = *(v0 + 96) + LODWORD(STACK[0x508]);
  LOBYTE(STACK[0x3CA]) = byte_297A217A0[LODWORD(STACK[0x594]) ^ 0xFLL] ^ (LOBYTE(STACK[0x5D4]) - 13) ^ 0xB6;
  *(v0 + 704) = v1;
  JUMPOUT(0x2979C9380);
}

uint64_t sub_2979C9CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57)
{
  v58 = a57 + 1808743617 < (a52 - 699897531);
  if ((a57 + 1808743617) < 0xD5984944 != (a52 - 699897531) < 0xD5984944)
  {
    v58 = (a52 - 699897531) < 0xD5984944;
  }

  return (*(v57 + 8 * ((1341 * v58) ^ LODWORD(STACK[0x65C]))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_2979C9D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, __int16 a59, char a60, char a61)
{
  v70 = STACK[0x658];
  v67[280] = v67[13];
  *(v69 - 197) = a61;
  *(v69 - 196) = a58;
  LODWORD(STACK[0x630]) = v70;
  LODWORD(STACK[0x634]) = a57;
  v71 = STACK[0x634];
  LODWORD(STACK[0x638]) = STACK[0x634];
  v72 = STACK[0x630];
  LODWORD(STACK[0x63C]) = STACK[0x630];
  v73 = v72 ^ (v68 + 1230);
  LODWORD(STACK[0x640]) = v73;
  v74 = (v71 + 1);
  LODWORD(STACK[0x644]) = v74;
  v75 = v67[280] + v74 + v65 + ((v74 < 0x69C90C84) << 32);
  v76 = v75 - 0x5F6D5B641B564E1CLL;
  LODWORD(v75) = 233206231 * ((v75 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x1DCC14DC))) & 0x7FFFFFFF);
  v77 = (v75 ^ WORD1(v75)) * (v73 + 2008158161);
  LOBYTE(STACK[0x3CA]) = byte_297A20160[v77 >> 24] ^ byte_297A1FA40[v77 >> 24] ^ byte_297A1B970[v77 >> 24] ^ v77 ^ (-85 * BYTE3(v77));
  v67[88] = v76;
  v67[87] = *(v64 + 8 * (v72 + 1230));
  v61 = v67[88];
  LOBYTE(STACK[0x3CB]) = STACK[0x3CA];
  v62 = (*(*(v66 + 3544) + 32 * *(((v61 - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 16))();
  return (v67[87])(v62);
}

uint64_t sub_2979C9E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = v40[62];
  *v40 = v40[69];
  v40[1] = v41;
  v42 = v40[65];
  v40[2] = v40[71];
  v40[3] = v42;
  v43 = v40[56];
  v40[4] = v40[67];
  v40[5] = v43;
  v40[7] = v40[59];
  v44 = LODWORD(STACK[0x408]);
  return (*(v39 + 8 * ((1003 * LOBYTE(STACK[0x5DB])) ^ LODWORD(STACK[0x400]))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

void sub_2979C9E90()
{
  v0 = LODWORD(STACK[0x35C]) ^ 0x57FF3820u;
  v1 = LODWORD(STACK[0x358]) ^ 0x9BDC7B80;
  v2 = (LODWORD(STACK[0x404]) - 891) ^ LODWORD(STACK[0x354]) ^ 0x6174FCu;
  v3 = LODWORD(STACK[0x360]) ^ 0x9CBA16FD;
  v4 = LODWORD(STACK[0x364]);
  JUMPOUT(0x2979C9EFCLL);
}

uint64_t sub_2979C9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, int a48)
{
  v51 = v48 + 37;
  v62 = v50[7];
  v60 = v50[4];
  v61 = v50[5];
  v52 = v50[3];
  v53 = v50[1];
  v59 = *v50;
  v54 = *(v49 + 8 * (v48 ^ 0x683));
  v54(v50[2]);
  v55 = *(v49 + 8 * (v48 + 1405));
  v55(v50[52]);
  v54(v52);
  v55(v53);
  v55(v60);
  v54(v59);
  v55(v61);
  v56 = (v54)(v62);
  if ((a48 ^ 0x6BE6FDDE) - 16826442 + ((((v51 - 1777057504) | 0x202002) ^ 0x41F999BA) & (2 * a48)) == 1793473940)
  {
    v57 = 0;
  }

  else
  {
    v57 = -45011;
  }

  LODWORD(STACK[0x368]) = v57;
  return (*(v49 + 8 * ((771 * ((a48 ^ 0x6BE6FDDE) - 16826442 + ((((v51 - 1777057504) | 0x202002) ^ 0x41F999BA) & (2 * a48)) == 1793473940)) | v51)))(v56);
}

void sub_2979CA0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52)
{
  LODWORD(STACK[0x36C]) = a52 + 1185213888;
  v53[9] = 205298567;
  *(v55 - 220) = a52 + 1185213888;
  v53[279] = v53[12];
  LODWORD(STACK[0x514]) = v52 + 976535803;
  v53[131] = 205298567;
  v56 = v53[131];
  v53[132] = v56;
  v57 = STACK[0x514];
  LODWORD(STACK[0x528]) = STACK[0x514];
  LODWORD(STACK[0x52C]) = v57 + v54;
  v58 = (*(v55 - 220) + v56);
  v59 = v58 < 0x52316956;
  v58 -= 1378969942;
  v53[135] = v58;
  v53[80] = v53[279] + v58 + (v59 << 32);
  JUMPOUT(0x2979C5C08);
}

uint64_t sub_2979CA1D0()
{
  v1 = STACK[0x604];
  v2 = LODWORD(STACK[0x648]) + v1 + LODWORD(STACK[0x64C]) - 2 * ((LODWORD(STACK[0x648]) + v1 + LODWORD(STACK[0x64C]) + 906545360) & 0x3367B07D ^ (LODWORD(STACK[0x648]) + v1 + LODWORD(STACK[0x64C])) & 8) - 1452246715;
  v3 = (((2 * v2) ^ 0x66CF60EA) - ((2 * ((2 * v2) ^ 0x66CF60EA)) & 0x1B4A838) + 14308381) & 0x1596419A;
  v4 = 2 * (((v3 ^ 0x924018) & (v2 ^ 0x39AC90B8)) - ((2 * ((v3 ^ 0x924018) & (v2 ^ 0x39AC90B8))) & 0x240230)) + 16206456;
  v5 = (((v4 ^ 0xF74A78) + 1088723833 - 2 * ((v4 ^ 0xF74A78) & 0x40E49B7E ^ v4 & 4)) ^ 0x40E49B79) + (v2 ^ 0x393ED0A0 ^ v3);
  v6 = LODWORD(STACK[0x600]) + 176195185 * (((2 * v5) & 0xEBB9CFF6) + (v5 ^ 0xF5DCE7FB));
  v7 = v6 + LODWORD(STACK[0x5FC]) + LODWORD(STACK[0x5F4]) + (((v6 - 1837724598) % 0x101) ^ 0x57FF7FBF) + ((2 * ((v6 - 1837724598) % 0x101)) & 0x37E) - 99959547;
  v8 = LODWORD(STACK[0x5F8]) - 1958344488;
  v9 = v8 ^ 0x17101F0B ^ (v7 - ((2 * v7 + 1009005672) & 0x2E203E16) - 719177409);
  v10 = (v9 + 1885912255 - ((2 * v9) & 0xE0D1797E)) ^ 0x7068BCBF;
  v11 = v10 - ((2 * v10 + 1666197500) & 0x88E64384) - 165988928;
  v12 = ((2 * (v11 ^ (LODWORD(STACK[0x5FC]) - 926205844))) & 0x7FCAFFFE ^ 0x8C24384) + (v11 ^ (LODWORD(STACK[0x5FC]) - 926205844) ^ 0x7B965E3D);
  v13 = ((2 * (v11 ^ (LODWORD(STACK[0x5F4]) - 1260744126))) & 0x77DDFE5E ^ 0xC44204) + (v11 ^ (LODWORD(STACK[0x5F4]) - 1260744126) ^ 0x7F9DDEED);
  v14 = (v11 ^ 0x447321C2) + v8 - ((2 * ((v11 ^ 0x447321C2) + v8)) & 0x7D07522) - 2081932655;
  HIDWORD(v15) = v11 ^ 0x47321C2;
  LODWORD(v15) = v11 ^ 0x40000000;
  v16 = ((2 * (v15 >> 30)) & 0x7FF79EFE) + ((v15 >> 30) ^ 0x3FFBCF7F) - v13 + v12;
  v17 = (v14 ^ 0x3D722260 ^ (v16 - ((2 * v16 + 2015059810) & 0x7D3431E2) + 2057816226)) - 701265807;
  v18 = ((2 * v17) & 0xF4F77FD6) + (v17 ^ 0x7A7BBFEB);
  LODWORD(STACK[0x61C]) = v18 - 6427648;
  v19 = ((v18 - 2054930411) ^ v14 ^ 0x7657CDE8) + 2130313135 + ((2 * ((v18 - 2054930411) ^ v14)) & 0xEB7FEEF2 ^ 0x3506422);
  LODWORD(STACK[0x620]) = v19;
  v20 = v1 + 1;
  LODWORD(STACK[0x624]) = v1 + 1;
  v21 = v13 - v18 - 1984811398;
  LODWORD(STACK[0x628]) = v21;
  v22 = v12 - v18 + 1909131136;
  LODWORD(STACK[0x62C]) = v22;
  v23 = *(v0 + 8 * (((v1 == LODWORD(STACK[0x6BC])) | (8 * (v1 == LODWORD(STACK[0x6BC])))) ^ LODWORD(STACK[0x608])));
  LODWORD(STACK[0x5DC]) = STACK[0x608];
  LODWORD(STACK[0x5E0]) = v20;
  LODWORD(STACK[0x5E4]) = v18 - 6427648;
  LODWORD(STACK[0x5E8]) = v22;
  LODWORD(STACK[0x5EC]) = v19;
  LODWORD(STACK[0x5F0]) = v21;
  return v23();
}

void sub_2979CA5CC()
{
  v1 = STACK[0x60C];
  v5 = STACK[0x624];
  v8 = STACK[0x61C];
  v9 = STACK[0x620];
  v6 = STACK[0x62C];
  v7 = STACK[0x628];
  v0[178] = v0[12];
  LODWORD(STACK[0x660]) = v1;
  LODWORD(STACK[0x664]) = 423855975;
  LODWORD(STACK[0x668]) = v6;
  LODWORD(STACK[0x66C]) = v7;
  LODWORD(STACK[0x670]) = STACK[0x66C];
  v2 = STACK[0x668];
  LODWORD(STACK[0x674]) = STACK[0x668];
  v3 = STACK[0x664];
  LODWORD(STACK[0x678]) = STACK[0x664];
  v4 = STACK[0x660];
  LODWORD(STACK[0x67C]) = STACK[0x660];
  LODWORD(STACK[0x680]) = 5 * (v4 ^ 0x122);
  LODWORD(STACK[0x684]) = v2 + 1;
  v0[80] = v0[178] + (v3 - 423855975);
  JUMPOUT(0x2979C5C08);
}

void sub_2979CA6FC(int a1@<W8>)
{
  (*(v1 + 8 * (a1 ^ (v3 + 1442))))(*(v2 + 152));
  v4 = STACK[0x368];
  JUMPOUT(0x2979CA724);
}

void vsPHbdGf()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = *MEMORY[0x29EDCA608];
  qword_2A13A4278 = 1460649907 * ((qword_2A13A4260 - qword_2A13A4278 - &v0) ^ 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = qword_2A13A4278;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_2979CA8C4(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2 + 1011448404;
  v5 = *(a3 + 8 * (a2 + 1011448404));
  v6 = 1864516333 * ((~(v3 - 224) & 0x130C0D92BAD18415 | (v3 - 224) & 0xECF3F26D452E7BEALL) ^ 0x6377CF19D5FCB505);
  *(v3 - 216) = &unk_2A13A4258;
  *(v3 - 208) = v6 + 1959726215;
  *(v3 - 200) = v5 + v6;
  v7 = (*(a3 + 8 * (a2 + 1011449819)))(v3 - 224);
  return (off_2A1E5DED0[v4 ^ 0x1BE ^ (110 * (*(v3 - 224) != 0))])(v7);
}

uint64_t sub_2979CA8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v51 = 59 * ((a1 + 830569503) ^ 0x6DCAFC2C);
  v52 = 29 * ((v51 + 1045283270) & 0xFDFBBBB8 ^ (a1 + 22)) == 638;
  return (*(a3 + 8 * ((v52 | (16 * v52)) ^ v51)))(a1, a2, a3, 4048185836, 246777855, 1615001421, 1615001933, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_2979CAA14()
{
  v2 = v0 + 685;
  v3 = (*(v1 + 8 * (v2 + 270)))(STACK[0x15B0], 0);
  STACK[0x11C0] = v3;
  return (off_2A1E5DED0[((v3 == 0) * (v2 ^ 0x1F0 ^ ((v2 - 1135) | 0x409))) ^ v2])();
}

uint64_t sub_2979CAA8C()
{
  v2 = (*(v0 + 8 * (v1 - 1011448276)))(STACK[0x15B0]);
  LODWORD(STACK[0x130C]) = -45000;
  STACK[0x1310] = &STACK[0x18D0];
  return (off_2A1E5DED0[((((12 * (v1 ^ 0x3C498039) - 1880117885) & 0x701053F4) - 940) * (SLODWORD(STACK[0x18D0]) < 458219711)) ^ (12 * (v1 ^ 0x3C498039))])(v2);
}

uint64_t sub_2979CCF94@<X0>(int a1@<W8>)
{
  STACK[0x438] = STACK[0x1330];
  v3 = LODWORD(STACK[0x132C]);
  return (*(v2 + 8 * (((((a1 - 42093163) & 0x3ECBC92C) - 1011448253 + ((a1 - 511433097) & 0x1E7BDCD6) - 1929) * v1) ^ a1)))();
}

uint64_t sub_2979CCFF8()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x531)))(STACK[0x1558]);
  v3 = v2 - ((2 * v2) & 0xFDDEDE9A) + ((v1 + 695781554) ^ 0xD6873434) - 17862814;
  LODWORD(STACK[0x11CC]) = v3 ^ 0xE5A08FE8;
  LODWORD(STACK[0x224]) = v3 ^ 0xE5A08FE8;
  v4 = (off_2A1E5DED0[v1 + 800])((v1 + 695781554) & 0xD68736EF ^ 0xFEEF6D82 ^ v3, 0x100004077774924);
  STACK[0x11D0] = v4;
  return (off_2A1E5DED0[(109 * (v4 != 0)) ^ v1])();
}

uint64_t sub_2979CD0D4()
{
  v4 = v3 ^ (v2 + 459);
  v5 = (STACK[0x12C8] + STACK[0x12D0] + ((v1 - 99) ^ 0x20427304E00026AFLL));
  *v5 = 0;
  v5[1] = (v4 ^ 0xB76FFBFEFDD66BEDLL) + 0x4890040102299413 + ((v4 << (((v1 + 89) | 0x12) ^ 0x3Bu)) & 0x1FBACD7DALL);
  v6 = STACK[0x11D0];
  (*(v0 + 8 * (v1 ^ 0x4E3)))(STACK[0x1558], 0);
  v7 = (off_2A1E5DED0[v1 + 882])(v4, 50, 4226108523);
  STACK[0x14E0] = v7;
  return (off_2A1E5DED0[(462 * (v7 != 0)) ^ v1])();
}

uint64_t sub_2979CD1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v5 ^ 0x7DDB6EFFDFBBEB3DLL) - 0x7DDB6EFEF5F841FBLL + (v4 & 0x1BF77D67ALL);
  STACK[0x1400] = v6;
  LOBYTE(STACK[0x140B]) = v6 < 0xE9C3A942;
  v7 = *(a3 + 8 * (((v6 == 3921914178) * (v3 - 398)) ^ v3));
  LODWORD(STACK[0xCF4]) = v3;
  STACK[0xCF8] = 0x2DC06C62AACB3D7;
  STACK[0xD00] = 0x50F257C7600C2EE8;
  STACK[0xD08] = 0x761EA849E1EE7513;
  return v7();
}

void sub_2979CD2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xD08];
  STACK[0xD10] = STACK[0xD08];
  v4 = STACK[0xD00];
  STACK[0xD18] = STACK[0xD00];
  STACK[0xD20] = STACK[0xCF8];
  v5 = STACK[0xCF4];
  LODWORD(STACK[0xD2C]) = STACK[0xCF4];
  LOBYTE(v3) = *(v3 + STACK[0x11D0] - 0x761EA849E1EE7513);
  v6 = v4 + STACK[0x14E0] - 0x50F257C7600C2EE8;
  v7 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v6) & 0x7FFFFFFF);
  v8 = (v7 ^ HIWORD(v7)) * ((v5 - 306) ^ 0xDE670ED);
  v9 = byte_297A20DA0[v8 >> 24];
  LODWORD(STACK[0xD30]) = v5 - 306;
  LOBYTE(STACK[0x5D2]) = v9 ^ v3 ^ byte_297A242D0[(v8 >> 24) + 4] ^ byte_297A1DA20[(v8 >> 24) + 1] ^ v8 ^ (103 * BYTE3(v8));
  STACK[0x5C8] = v6;
  STACK[0x5C0] = *(a3 + 8 * (v5 + 848));
  JUMPOUT(0x2979FAF54);
}

uint64_t sub_2979CD3A8()
{
  v3 = STACK[0x5D8];
  LODWORD(STACK[0x5DC]) = STACK[0x5D8];
  v4 = STACK[0x5D4];
  LODWORD(STACK[0x5E0]) = STACK[0x5D4];
  v5 = 183 * (v4 ^ 0x4EE);
  LODWORD(STACK[0x5E4]) = v5;
  v6 = (v3 + 1);
  LODWORD(STACK[0x5E8]) = v6;
  v7 = v6 - 2041346659 + ((v6 < 0x79AC764F) << 32) + STACK[0x15A0];
  v8 = 233206231 * (((v7 + 1044) ^ *(qword_2A13A4DA8 + ((v5 ^ 0x8240B9AA) & dword_2A13A4DB4))) & 0x7FFFFFFF);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  LOBYTE(STACK[0x5D2]) = byte_297A194F0[(v9 >> 24) + 2] ^ byte_297A1D1D0[v9 >> 24] ^ byte_297A19810[v9 >> 24] ^ v9 ^ (57 * BYTE3(v9));
  STACK[0x5C8] = v7 - 0xB757426B61DC3FELL;
  STACK[0x5C0] = *(v2 + 8 * (v4 ^ 0x17D));
  v10 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v11 = (*(qword_2A13A4DD8 + 32 * *(((v10 - *(v1 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v0 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v11);
}

uint64_t sub_2979CD4B0()
{
  v1 = LODWORD(STACK[0x5DC]) - 1496981770;
  v2 = LOBYTE(STACK[0x11AF]) ^ (v1 < 0x20725543);
  v3 = v1 < LODWORD(STACK[0x11A8]);
  if (v2)
  {
    v3 = LOBYTE(STACK[0x11AF]);
  }

  v4 = off_2A1E5DED0[(456 * (v0 & ~v3)) ^ LODWORD(STACK[0x5E0])];
  LODWORD(STACK[0x5D4]) = STACK[0x5E0];
  LODWORD(STACK[0x5D8]) = STACK[0x5E8];
  v5 = LODWORD(STACK[0x5E4]);
  return v4();
}

uint64_t sub_2979CD52C()
{
  v2 = STACK[0x1260];
  *v2 = (v1 - 106) ^ (HIBYTE(STACK[0x3F0]) - ((STACK[0x3F0] >> 55) & 0x74) - 70) ^ 0x1D;
  v2[1] = (HIWORD(STACK[0x3F0]) - ((STACK[0x3F0] >> 47) & 0x10) - 120) ^ 0x88;
  v2[2] = ((WORD2(STACK[0x3F0]) >> 8) - ((STACK[0x3F0] >> 39) & 0x7C) + 62) ^ 0x3E;
  v2[3] = (HIDWORD(STACK[0x3F0]) - ((STACK[0x3F0] >> 31) & 0xFA) - 3) ^ 0xFD;
  v2[4] = (HIBYTE(LODWORD(STACK[0x3F0])) - ((LODWORD(STACK[0x3F0]) >> 23) & 0x9A) - 51) ^ 0xCD;
  v2[5] = (HIWORD(LODWORD(STACK[0x3F0])) - ((LODWORD(STACK[0x3F0]) >> 15) & 0x94) + 74) ^ 0x4A;
  v2[6] = (BYTE1(LODWORD(STACK[0x3F0])) - ((LODWORD(STACK[0x3F0]) >> 7) & 0xFA) - 3) ^ 0xFD;
  v2[7] = (LOBYTE(STACK[0x3F0]) - ((2 * LOBYTE(STACK[0x3F0])) & 0xE8) - 12) ^ 0xF4;
  v3 = (*(v0 + 8 * ((v1 - 897) ^ 0x7D1)))(8, 50, 4034577921);
  STACK[0x11D8] = v3;
  v4 = off_2A1E5DED0[((v3 != 0) | (4 * (v3 != 0))) ^ (v1 - 897)];
  LODWORD(STACK[0x7CC]) = v1 - 897;
  STACK[0x7D0] = 0x62804B5244AB6EB8;
  STACK[0x7D8] = 0x64647FB800A17B79;
  STACK[0x7E0] = 0x3E03B52D590ABE5CLL;
  return v4();
}

uint64_t sub_2979CD6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LODWORD(STACK[0x39C]) = v61;
  v65 = 3 * (((v62 + 98) | 0x260) ^ 0x27B);
  v66 = ((&STACK[0x410] ^ 0xFFD1DFFF6E4FF6EBLL) + 0x2E200091B00915 + ((2 * &STACK[0x410]) & 0xFFA3BFFEDC9FEDD0)) % 0x25;
  v67 = 0x68E75BB500000008;
  LODWORD(a32) = HIDWORD(v67);
  HIDWORD(a31) = v67;
  v68 = STACK[0x1438] + STACK[0x1430] - 0x63BDFBCFDFF7AFB7;
  LODWORD(a35) = 202;
  v69.i64[0] = 0x100000001;
  v69.i64[1] = 0x100000001;
  v70 = vnegq_f32(v69);
  v71 = vdupq_n_s32(0x5160D430u);
  v72 = vdupq_n_s32(0x6EAE2A3Eu);
  v73 = vdupq_n_s32(0x6EAE2A3Cu);
  v74 = vdupq_n_s32(0xFE62C601);
  v75 = vdupq_n_s32(0xFC9B484u);
  v76 = vdupq_n_s32(0x87E4DA43);
  v77 = vdupq_n_s32(0x8AC7BE3E);
  LODWORD(a33) = 1990565819;
  v78 = STACK[0x330];
  v79 = STACK[0x3A8];
  v80 = STACK[0x3C8];
  HIDWORD(a29) = ((8 << (v65 - 53)) & 0x1DDFC) == 8;
  LODWORD(a30) = ((8 << (v65 - 53)) & 0x1DDFC) + 1868981932;
  return (*(a4 + 8 * (v65 | HIDWORD(a29))))(2220211218, 1011449864, 3283519043, a4, 1868981940, 656222407, 1893236189, 2401730557, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, STACK[0x1260], STACK[0x11D8], a29, a30, a31, a32, a33, 3661670469, a35, a36, (v66 ^ 0x7FD77F76FD9E03B7) - 0x7FD77F76FD9E03A7, a38, (2 * v66) & 0x6E, a40, a41, a42, 912661583 * ((2 * ((v63 - 224) & 0x2A76CAA8E097F1F8) - (v63 - 224) + 0x558935571F680E00) ^ 0xA03D68CC0B69C3F5), a44, v77.i64[0], v77.i64[1], v76.i64[0], v76.i64[1], v75.i64[0], v75.i64[1], v74.i64[0], v74.i64[1], v73.i64[0], v73.i64[1], v72.i64[0], v72.i64[1], v71.i64[0], v71.i64[1], v70.i64[0], v70.i64[1], a61, STACK[0x1260]);
}

uint64_t sub_2979CD724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v5 / 2 - (((v5 / 2) << (v3 + (v4 ^ 0x4C) - 60 + (((v4 ^ 0x4C) - 58) | 0xF4u) + 3)) & 0xF7BE963A) + 2078231325;
  LODWORD(STACK[0x274]) = v6 ^ 0x6090ABB8;
  v7 = (*(a3 + 8 * ((v4 ^ 0x64C) + 773)))(v6 ^ 0x7BDF4B1Du, 50, 231452543);
  STACK[0x11E0] = v7;
  return (off_2A1E5DED0[(122 * (v7 == 0)) ^ v4 ^ 0x64C])();
}

uint64_t sub_2979CD85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + 1523411322;
  v8 = (v7 + v5) ^ v6;
  if (v8 <= 1)
  {
    v8 = 1;
  }

  LODWORD(STACK[0x149C]) = v8 + 715246979;
  LODWORD(STACK[0x157C]) = 715246980;
  v9 = STACK[0x11E0];
  return (*(a3 + 8 * (((*STACK[0x1538] == 0) * ((v4 + v7 - 111 - 1158) ^ v7 ^ (v4 + 1268))) ^ v7)))();
}

uint64_t sub_2979CD890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x600];
  STACK[0x608] = STACK[0x600];
  v6 = STACK[0x5F8];
  STACK[0x610] = STACK[0x5F8];
  STACK[0x618] = STACK[0x5F0];
  v7 = STACK[0x5EC];
  LODWORD(STACK[0x624]) = STACK[0x5EC];
  LODWORD(STACK[0x628]) = v7 + 685;
  v8 = v6 + STACK[0x1378] - 0x1EF1D7EF09BEDAA8;
  v9 = 233206231 * ((*(qword_2A13A4DA8 + ((v7 - 1326284464) & dword_2A13A4DB4)) ^ v8) & 0x7FFFFFFF);
  v10 = 233206231 * (v9 ^ HIWORD(v9));
  LOBYTE(STACK[0x5D2]) = byte_297A216A0[v10 >> 24] ^ *(v5 + STACK[0x1748] - 0x1D811451A3158149) ^ byte_297A1F840[v10 >> 24] ^ byte_297A1AF40[v10 >> 24] ^ v10 ^ (107 * BYTE3(v10));
  STACK[0x5C8] = v8;
  STACK[0x5C0] = *(a3 + 8 * (v7 ^ 0x59D));
  v11 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v12 = (*(qword_2A13A4DD8 + 32 * *(((v11 - *(v4 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v3 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v12);
}

uint64_t sub_2979CD994()
{
  v0 = STACK[0x610] + 1;
  v1 = STACK[0x608] + 1;
  v2 = off_2A1E5DED0[((21 * (((STACK[0x618] - 0x1F693CE7DB2FD1F7 - LODWORD(STACK[0x624])) & ~(STACK[0x618] - 0x1F693CE7DB2FD1F7)) >> 63)) ^ (LODWORD(STACK[0x624]) + 807))];
  v3 = STACK[0x618] + 1;
  LODWORD(STACK[0x5EC]) = STACK[0x624];
  STACK[0x5F0] = v3;
  STACK[0x5F8] = v0;
  STACK[0x600] = v1;
  v4 = LODWORD(STACK[0x628]);
  return v2();
}

uint64_t sub_2979CDA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = v10 & 0x80000000;
  v14 = *(a8 + 4 * (v9 + v11 + 86 * (v8 ^ 0x30Fu)));
  *(a8 + 4 * (v9 + v11) + 1028) = *(a8 + 4 * (v9 + v11) + 2616) ^ *(&STACK[0x19F0] + (v14 & 1)) ^ ((((v14 & 0x7FFFFFFE | v13) ^ 0x5160D430) - ((2 * ((v14 & 0x7FFFFFFE | v13) ^ 0x5160D430)) & 0x78FAF5D8) - 1132627219) >> 1) ^ 0x84F0BD4F;
  return (*(a6 + 8 * ((1960 * (v9 + 1 == v12 + 3)) ^ v8)))();
}

uint64_t sub_2979CDAB4@<X0>(uint64_t a1@<X5>, int a2@<W8>, int8x16_t a3@<Q7>)
{
  v4 = &xmmword_2A13A3C0C;
  v5 = vld1q_dup_f32(v4);
  v6.i64[0] = 0x8000000080000000;
  v6.i64[1] = 0x8000000080000000;
  v7.i64[0] = 0x100000001;
  v7.i64[1] = 0x100000001;
  a3.i64[0] = *(&xmmword_2A13A3C0C + 4);
  a3.i32[2] = HIDWORD(xmmword_2A13A3C0C);
  v8 = vextq_s8(v5, a3, 0xCuLL);
  v9 = a3;
  v9.i32[3] = dword_2A13A3C1C;
  v10 = veorq_s8(vorrq_s8(vandq_s8(v9, vnegq_f32(v7)), vandq_s8(v8, v6)), vdupq_n_s32(0x5160D430u));
  v11.i32[0] = *(v3 + 4 * (BYTE4(xmmword_2A13A3C0C) & 1));
  v11.i32[1] = *(v3 + 4 * (DWORD2(xmmword_2A13A3C0C) & (((a2 + 431908507) & 0xE6419BF6) - 915)));
  v11.i32[2] = *(v3 + 4 * (BYTE12(xmmword_2A13A3C0C) & 1));
  v11.i32[3] = *(v3 + 4 * (dword_2A13A3C1C & 1));
  xmmword_2A13A3C0C = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3880, v11), vdupq_n_s32(0xFEAF5416)), vshrq_n_u32(vaddq_s32(vsubq_s32(v10, vandq_s8(vaddq_s32(v10, v10), vdupq_n_s32(0x918550BC))), vdupq_n_s32(0x48C2A85Fu)), 1uLL));
  return (*(a1 + 8 * a2))();
}

uint64_t sub_2979CDBD8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v9 = (*a8 & 0x7FFFFFFE | a8[623] & 0x80000000) ^ 0x5160D430;
  a8[623] = a8[396] ^ *(&STACK[0x19F0] + (*a8 & 1)) ^ ((((v8 + 470350964) | 0x20408000) + v9 - 2 * (v9 & 0x649FE9DC ^ (((v8 + 742390892) | 0x10098008) ^ (a4 + 4)) & *a8) + 676751825) >> 1) ^ 0xE881F4D5;
  return (*(a6 + 8 * ((1845 * (LODWORD(STACK[0x3D4]) > 0x26F)) ^ v8)))();
}

uint64_t sub_2979CDCA8@<X0>(int a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  LODWORD(STACK[0x3D4]) = 0;
  v9 = LODWORD(STACK[0x3D4]);
  v10 = *(a4 + 4 * v9);
  LODWORD(STACK[0x3D4]) = v9 + 1;
  *(v7 + 2140) = v9 + 1306450981;
  v11 = (*(a3 + 2136) - 1068086437);
  v12 = ((~((v8 - 224) | v6) + ((v8 - 224) & v6)) ^ 0x2C588AEE4F294B4ELL) * v5;
  v13 = *(a2 + 8 * ((a5 + 1829474328) ^ 0x1FFFFFFFA9551046)) ^ v12;
  *(v8 - 200) = v12 ^ 0x390DB6D9;
  *(v8 - 192) = v13;
  *(v8 - 224) = (a5 + 1829474328) ^ v12;
  *(v8 - 220) = v12;
  *(v8 - 216) = v11 + v12;
  *(v8 - 184) = (a5 + 1829474345) ^ v12;
  *(v8 - 180) = 922745793 - v12 + a5;
  *(v8 - 208) = ((a5 + 1829474328) ^ 0x68) + v12;
  v14 = (*(a2 + 8 * (a5 + a1)))(v8 - 224);
  return (off_2A1E5DED0[*(v8 - 176)])(v14);
}

uint64_t sub_2979CDDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62)
{
  if (v63 >= 0x390DB6D9)
  {
    v66 = dword_2A13A3858 + 1;
  }

  else
  {
    v66 = v64;
  }

  dword_2A13A3858 = v66;
  v67 = ((((v62 ^ (v62 >> 11)) << 7) ^ 0xB57C1500) - ((2 * (((v62 ^ (v62 >> 11)) << 7) ^ 0xB57C1500)) & 0xB166F00) + 93009799) & 0x9D2C5680 ^ v62 ^ (v62 >> 11);
  v68 = (((v67 << 15) ^ 0x77550000) - ((2 * ((v67 << 15) ^ 0x77550000)) & 0xA6EA0000) - 747291423) & 0xEFC60000 ^ v67;
  v69 = v68 ^ (v68 >> 18) ^ 0xB8BFA7FD;
  v70 = STACK[0x1278];
  *(STACK[0x15C0] + (a62 - 761705751)) = ((v69 ^ 0x9E) - ((2 * (v69 ^ 0x9E)) & 0xE6) - 13) ^ 0x75;
  return (*(v65 + 8 * ((1841 * (a62 - (((v69 ^ 0x9E) - ((2 * (v69 ^ 0x9E)) & 0xE6) - 13) != 117) == 761705750)) ^ 0x204)))(3283519043, 1953928255, 798583966, 761705750);
}

uint64_t sub_2979CDF70@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v3 = 7 * (a2 ^ 0x156);
  STACK[0x1718] = (v3 ^ 0x77E8C429u) + v2;
  STACK[0x1758] = 2011744032;
  return (*(a1 + 8 * (((*(STACK[0x11E8] + ((2 * (v3 ^ 0x38A)) ^ 0x102E70C6u) - 271479232) == 0) * (((v3 ^ 0x38A) + 262) ^ 0x195)) ^ v3)))();
}

uint64_t sub_2979CE09C(int a1, uint64_t a2, uint64_t a3)
{
  STACK[0x1A00] = 0x377EE656AE765689;
  LODWORD(STACK[0x264]) = *(v5 + 2140) - 1306450980;
  v8 = *(v6 + 2136);
  STACK[0x538] = *(a3 + 8 * (v3 - 1011449776));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v8;
  STACK[0x550] = v4;
  LODWORD(STACK[0x558]) = v3 - 1686843608;
  LODWORD(STACK[0x55C]) = (v3 - 1686843509) ^ 0x10;
  LODWORD(STACK[0x560]) = v3 - 1686843509;
  *(v7 - 216) = &STACK[0x538];
  *(v7 - 208) = 1508565502 - 490657303 * ((v7 - 224) ^ 0xEDF60ECD) + v3;
  v9 = (*(a3 + 8 * (v3 ^ (a1 + 1546))))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 224)])(v9);
}

uint64_t sub_2979CE180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v64 = v62 ^ (v62 + 353);
  (*(a5 + 8 * (v62 ^ (v62 + 1597))))(a62 - 0x7FEBA63FBBF626EFLL, 0x100004077774924);
  v65 = (*(&off_2A1E5DED0[v63 - 52] + v62))();
  v66 = v65 + (v64 ^ 0x5160D550) + ~((2 * v65) & 0xA2C1A860);
  LODWORD(xmmword_2A13A3880) = v66;
  v67 = v66 ^ 0x86B6E99 ^ ((v66 >> (((v64 - 97) | 0xD6) + 72)) | 0x590BBAA8);
  DWORD1(xmmword_2A13A3880) = 1904956482 - ((2 * (((1812433253 * v67) ^ 0xDFD57FEF) + ((-670100790 * v67) & 0xBFAAFFDE) + 779233738) - 479155056) & 0xA2C1A860) + ((1812433253 * v67) ^ 0xDFD57FEF) + ((-670100790 * v67) & 0xBFAAFFDE);
  return (off_2A1E5DED0[v64 ^ 0xE6u])(&xmmword_2A13A3880, 3624866506, 1812433253, 1370785864);
}

uint64_t sub_2979CE324(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = vld1q_dup_f32(&xmmword_2A13A3880);
  a2.i64[0] = *(&xmmword_2A13A3880 + 4);
  a2.i32[2] = *(&xmmword_2A13A3880 + v7 + 535019522);
  v9 = vextq_s8(v8, a2, 0xCuLL);
  v10 = a2;
  v10.i32[3] = dword_2A13A3890;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = vandq_s8(v9, v11);
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  v13 = veorq_s8(vorrq_s8(vandq_s8(v10, vnegq_f32(v9)), v12), vdupq_n_s32(0x5160D430u));
  v14.i32[0] = *(&STACK[0x1A00] + (BYTE4(xmmword_2A13A3880) & 1));
  v14.i32[1] = *(&STACK[0x1A00] + (BYTE8(xmmword_2A13A3880) & 1));
  v14.i32[2] = *(&STACK[0x1A00] + (*(&xmmword_2A13A3880 + v7 + 535019522) & 1));
  v14.i32[3] = *(&STACK[0x1A00] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v14), vdupq_n_s32(0xE9E8777E)), vshrq_n_u32(vaddq_s32(vsubq_s32(v13, vandq_s8(vaddq_s32(v13, v13), vdupq_n_s32(0x1E7887DCu))), vdupq_n_s32(0x8F3C43EE)), 1uLL));
  return (*(a7 + 1320))();
}

uint64_t sub_2979CEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v16 = (a6 + 4 * (v14 + v9));
  v16[224] = v16[621] ^ *(v12 + 4 * (v16[225] & 1)) ^ ((((v16[225] & 0x7FFFFFFE | v10 & 0x80000000) ^ a7) - (v8 & (2 * ((v16[225] & 0x7FFFFFFE | v10 & 0x80000000) ^ a7))) + v11) >> 1) ^ v13;
  return (*(a5 + 8 * (v7 ^ (v15 + 785) ^ (1207 * (((((v7 - v15) ^ 0x231) + v9 - v7) | (v7 - (((v7 - v15) ^ 0x231) + v9))) >= 0)))))();
}

uint64_t sub_2979CEEC8@<X0>(uint64_t a1@<X4>, int a2@<W8>, int8x16_t a3@<Q1>)
{
  v3 = &xmmword_2A13A3C0C;
  v4 = vld1q_dup_f32(v3);
  a3.i64[0] = *(&xmmword_2A13A3C0C + 4);
  a3.i32[2] = HIDWORD(xmmword_2A13A3C0C);
  v5 = vextq_s8(v4, a3, 0xCuLL);
  v6 = a3;
  v6.i32[3] = dword_2A13A3C1C;
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vandq_s8(v5, v7);
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v9 = veorq_s8(vorrq_s8(vandq_s8(v6, vnegq_f32(v5)), v8), vdupq_n_s32(0x5160D430u));
  v10.i32[0] = *(&STACK[0x1A00] + (BYTE4(xmmword_2A13A3C0C) & 1));
  v10.i32[1] = *(&STACK[0x1A00] + (DWORD2(xmmword_2A13A3C0C) & (((a2 + 18) | 0x2D) ^ 0x26Eu)));
  v10.i32[2] = *(&STACK[0x1A00] + (BYTE12(xmmword_2A13A3C0C) & 1));
  v10.i32[3] = *(&STACK[0x1A00] + (dword_2A13A3C1C & 1));
  xmmword_2A13A3C0C = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3880, v10), vdupq_n_s32(0xEE8C59EE)), vshrq_n_u32(vaddq_s32(vsubq_s32(v9, vandq_s8(vaddq_s32(v9, v9), vdupq_n_s32(0x3E83D9Cu))), vdupq_n_s32(0x81F41ECF)), 1uLL));
  return (*(a1 + 8 * a2))();
}

uint64_t sub_2979CEFEC(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, _DWORD *a6, int a7)
{
  v9 = (*a6 & 0x7FFFFFFE | a6[623] & 0x80000000) ^ a7;
  a6[623] = a6[396] ^ *(v8 + 4 * (*a6 & 1)) ^ 0xA396D2AF ^ ((v9 - ((2 * v9) & 0x37821098) + 465635404) >> (a4 + a3 + v7 - 111 - 74));
  return (*(a5 + 8 * ((29 * ((((LODWORD(STACK[0x264]) | v7) - v7) | (LODWORD(STACK[0x264]) | ~v7) & (v7 - LODWORD(STACK[0x264]))) >= 0)) ^ (v7 - 358))))();
}

uint64_t sub_2979CF098@<X0>(int a1@<W2>, uint64_t a2@<X4>, uint64_t a3@<X5>, int a4@<W8>)
{
  v7 = LODWORD(STACK[0x264]);
  LODWORD(STACK[0x264]) = v7 + 1;
  v8 = *(a3 + 4 * v7);
  *(v4 + 2140) = v7 + 1306450981;
  v9 = *(a2 + 8 * ((a4 + 692006613) ^ 0x6588AEBBLL));
  v10 = 912661583 * ((v6 + 0x5A8B1BB38898375ELL - 2 * ((v6 - 224) & 0x5A8B1BB38898383ELL)) ^ 0xAF3F46289C99F5CBLL);
  *(v6 - 216) = (*(v5 + 2136) - 644971749) + v10;
  v11 = (a4 + 692006613) ^ (912661583 * ((v6 - 2003290274 - 2 * ((v6 - 224) & 0x8898383E)) ^ 0x9C99F5CB));
  *(v6 - 224) = v11;
  *(v6 - 220) = 912661583 * ((v6 - 2003290274 - 2 * ((v6 - 224) & 0x8898383E)) ^ 0x9C99F5CB);
  *(v6 - 200) = v10 ^ 0x5245EE99;
  *(v6 - 192) = v9 ^ v10;
  *(v6 - 184) = v11 ^ 0xF;
  *(v6 - 180) = 922745793 - 912661583 * ((v6 - 2003290274 - 2 * ((v6 - 224) & 0x8898383E)) ^ 0x9C99F5CB) + a4;
  *(v6 - 208) = 912661583 * ((v6 - 2003290274 - 2 * ((v6 - 224) & 0x8898383E)) ^ 0x9C99F5CB) + a4 + 692006613 - 131;
  v12 = (*(a2 + 8 * (a4 ^ (a1 + 1595))))(v6 - 224);
  return (off_2A1E5DED0[*(v6 - 176)])(v12);
}

uint64_t sub_2979CF1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67 >= v68)
  {
    v70 = *(v69 + 2136) + 1;
  }

  else
  {
    v70 = 2025286526;
  }

  *(v69 + 2136) = v70;
  return sub_2979CDFA0(1011449864, a65, a3, 37, 1077600065, 1070961253, 0x74901D9u, a67);
}

uint64_t sub_2979CF330@<X0>(int a1@<W1>, uint64_t a2@<X2>, _DWORD *a3@<X3>, int a4@<W8>)
{
  v5 = (*a3 & ((a4 + 381) ^ (a1 + 543) ^ 0x43B67FF6) | a3[623] & 0x80000000) ^ v4;
  a3[623] = a3[396] ^ *(&STACK[0x22F8] + (*a3 & 1)) ^ ((v5 - ((2 * v5) & 0x2C40D818) - 1776260084) >> 1) ^ 0x4D8C97BD;
  return (*(a2 + 8 * ((26 * (LODWORD(STACK[0x418]) > 0x26F)) ^ (a4 + 381))))();
}

uint64_t sub_2979CF3CC@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>)
{
  LODWORD(STACK[0x418]) = 0;
  v6 = 912661583 * ((((v5 - 224) | 0xB35F16DAEB0D780FLL) - (v5 - 224) + ((v5 - 224) & 0x4CA0E92514F287F0)) ^ 0x46EB4B41FF0CB5FALL);
  v7 = LODWORD(STACK[0x418]);
  LODWORD(STACK[0x418]) = v7 + 1;
  v8 = *(a3 + 4 * v7);
  dword_2A13A385C = v7 + 1306450981;
  v9 = (*(v4 + 2136) + 1842595107);
  v10 = *(a2 + 8 * (a4 - 1011449711)) ^ v6;
  *(v5 - 224) = (a4 + 1317180689) ^ v6;
  *(v5 - 220) = a4 + 1317180710 + v6;
  *(v5 - 208) = v6 + 1;
  *(v5 - 216) = v6 + 3867881633u;
  *(v5 - 200) = v9 ^ v6;
  *(v5 - 192) = v10;
  *(v5 - 184) = (a4 + 1317180798) ^ v6;
  *(v5 - 180) = 922745793 - v6 + a4;
  v11 = (*(a2 + 8 * (a4 ^ (a1 + 1595))))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 176)])(v11);
}

uint64_t sub_2979CF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = (v8 - 1438535527);
  if (v5 >= v7)
  {
    v15 = *(v12 + 2136) + 1;
  }

  else
  {
    v15 = 2025286526;
  }

  *(v12 + 2136) = v15;
  v14 = ((((v13 + ~v5) ^ (v13 - v6 - 1842595108)) - 1) & (v5 - v13)) >> 63;
  v16 = ((((v4 ^ (v4 >> 11) ^ v14 ^ 1) << 7) ^ 0xB57C1500) + 1475940314 - ((2 * (((v4 ^ (v4 >> 11) ^ v14 ^ 1) << 7) ^ 0xB57C1500)) & 0xAFF21F00)) & 0x9D2C5680 ^ v4 ^ (v4 >> 11) ^ v14 ^ 1;
  v17 = ((((v16 << 15) ^ 0x7F550000) - ((2 * ((v16 << 15) ^ 0x7F550000)) & 0xACD60000) - 697598925) ^ v13 & 0x974420C) & 0xEFC60000 ^ v16;
  *(v9 + (v11 - 1121786406)) = ((v17 ^ (v17 >> 18) ^ 0x2A) - ((2 * (v17 ^ (v17 >> 18) ^ 0x2A)) & 0x98) + 76) ^ 0x25;
  return (*(a4 + 8 * ((767 * (v11 - (((v17 ^ (v17 >> 18) ^ 0x2A) - ((2 * (v17 ^ (v17 >> 18) ^ 0x2A)) & 0x98) + 76) != 37) == v10)) ^ 0x14E)))(2729239647, a2, 3283519043);
}

uint64_t sub_2979CF668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, int a62)
{
  v63 = (v62 | 0x10) + 564;
  v64 = ((a12 ^ 0xB71F48E7 ^ LODWORD(STACK[0x146C]) ^ v63) - ((2 * (a12 ^ 0xB71F48E7 ^ LODWORD(STACK[0x146C]) ^ v63) - 1785222058) & 0xC1C5229E) + 732850042) ^ 0xB71F4B2C;
  LOBYTE(v64) = (v64 - ((2 * v64 + 86) & 0x9E) + 122) ^ 0x2C;
  LOBYTE(v64) = ((v64 - ((2 * v64 + 86) & 0x9E) + 122) ^ 0x4F) + (a55 ^ 0x7C);
  LOBYTE(v64) = (((v64 - ((2 * v64) & 0x7E) + 69) & 0xFE) - 6) ^ 0x9B;
  v65 = HIDWORD(a12) ^ a43 ^ HIDWORD(a11) ^ a11 ^ a12 ^ a13 ^ HIDWORD(a10) ^ 0x1BABD039;
  v66 = (v63 - 31 * v64 - ((-62 * v64) & 0x68) + 105);
  *(STACK[0x1370] + 4 * (v66 ^ 0x34u)) = v65 ^ dword_297A20EA0[a59 ^ a62 ^ 0xAC170373 ^ a57 ^ v66];
  return (off_2A1E5DED0[v63])(v65, 52, 2048215600, 1191911620, 546321786, 2743439458, 1132736444, 3000527652, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_2979CF930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (off_2A1E5DED0[a65 + 336])(1028);
  STACK[0x1200] = v65;
  STACK[0x520] = v65;
  v66 = STACK[0x14C0];
  return (off_2A1E5DED0[((v65 != 0) * ((a65 + 477485760) & 0xFFEEEAFF ^ 0x1C64CB3A)) ^ a65])(v65, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979CF9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = (v56 - 620) | 4;
  LODWORD(a51) = a13 ^ a47;
  v59 = (((a13 ^ a47 ^ 0x608D28B6) - ((((a13 ^ a47 ^ 0x608D28B6) << (((v56 - 108) | 4) + 107)) - 611149906) & 0xFAD5D258) - 348900093) ^ 0xFD6AE92C) + LODWORD(STACK[0x16A8]);
  v60 = ((2 * v59) & 0xFBFBAE7C) + (v59 ^ 0x7DFDD73E);
  HIDWORD(v61) = v60 + 10434;
  LODWORD(v61) = v60 - 2113787710;
  v62 = (((v61 >> 16) - ((2 * (v61 >> 16)) & 0xDD492270) - 291204808) >> 16) ^ 0x836B;
  v63 = (((v62 - ((2 * v62) & 0x8B58) - 1496496706) & 0xA6CFFFFE) - 18) ^ 0x473A4D63;
  v64 = -1724264910 - 1575184811 * v63;
  v65 = 1144597674 * v63;
  LODWORD(a55) = a39 - 1176215519;
  v66 = (((8 * ((v64 - (v65 & 0x32739C64)) ^ v57)) ^ 0x90AF8A98) + 1751339649) ^ 0x68635281 | (((v64 - (v65 & 0x32739C64)) ^ v57) >> ((v58 - 23) & 0xF7 ^ 0x72)) & 7 ^ 2;
  v67 = v66 - ((2 * v66) & 0x5C);
  HIDWORD(v61) = -47 - v67;
  LODWORD(v61) = ((v67 + 46) ^ 0xFFFFFFEF) << 24;
  v68 = (v61 >> 27) - ((2 * (v61 >> 27)) & 0xA) - 123;
  v69 = v68 ^ 0xFFFFFFAD;
  v70 = (2 * ((v68 & 0x9F ^ 0x8D) - ((2 * (v68 & 0xFFFFFF9F ^ 0xFFFFFF8D)) & 0x1FC)) + 1005932924) ^ 0x3BF5517C;
  v71 = (v69 ^ 0x5FEF1EFA) + ((2 * v69) & 0x1F4) - 1609506394 + ((v70 - ((2 * v70) & 0x957E4288) + 1254039876) ^ 0xB540DEBB);
  v72 = (a39 - 1176215519) ^ a37 ^ 0x2315C25A ^ dword_297A1FD60[(v71 + 653892206 - ((2 * v71) & 0x4DF334DC)) ^ 0x26F99A6ELL];
  v73 = STACK[0x1200];
  *(STACK[0x1200] + 4 * ((v64 - (v65 & 0x64)) ^ 0x32u)) = a41 ^ 0xF9C4CE7E ^ (v72 - ((2 * v72) & 0x13A17D80) + 164675264);
  v74 = off_2A1E5DED0[v58 ^ 0x45];
  return (v74)((v58 + 1197921513) & 0xB8992AF7 ^ 0x272, 329350528, 164675264, 50, 69, v74, v73, 500, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_2979CFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (off_2A1E5DED0[a65 ^ 0x439])(1032);
  STACK[0x1750] = v65;
  STACK[0x518] = v65;
  v66 = STACK[0x14C0];
  return (off_2A1E5DED0[(216 * ((((a65 ^ 0xC9) + 125) ^ (v65 == 0)) & 1)) ^ a65])(v65, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979CFF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (*(v59 + 8 * (v58 + 1233)))(1028);
  STACK[0x11F0] = v60;
  STACK[0x528] = v60;
  v61 = STACK[0x14C0];
  return (off_2A1E5DED0[((v60 == 0) * (((v58 + 67127595) | 0x18648016) ^ (v58 - 279836291) & 0x10ADF7FF ^ 0x1C64C8BA)) ^ v58])(v60, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979D0008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, uint64_t a56, int a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  v66 = (v64 - 725) | 0x2D0;
  v67 = (((a51 ^ 0x32200ACA) - ((2 * (a51 ^ 0x32200ACA) + 858755674) & 0xFAD5D258) + (v66 ^ 0x1702B0AC)) ^ 0xFD6AE92C) + a64;
  v68 = (((v67 - ((2 * v67) & 0x9D3CAD4E) - 828483929) & 0xFFFFF7FE ^ 0x5A4A031D) - 788965373 + ((2 * ((v67 - ((2 * v67) & 0x9D3CAD4E) - 828483929) & 4 ^ ~(((v67 - ((2 * v67) & 0x9D3CAD4E) - 828483929) & 0xFFFFF7FE ^ 0x5A4A031D) & 0x50F95006))) ^ 0xB) + 1) ^ 0xD0F95803;
  v69 = -1461173458 * v68;
  v70 = -14 - -45 * v68;
  v71 = 90 * v68;
  v72 = 242 - v68 - 1461173459 * v68;
  v73 = 1372620376 * v68;
  v74 = 242 - 1461173461 * v68;
  v75 = 1372620374 * v68;
  v76 = vdupq_n_s32(0xDE412145);
  v77 = vdupq_n_s32(0x8E1641E5);
  v78 = vdupq_n_s32(0x4DC0BE43u);
  v79.i64[0] = 0x900000009;
  v79.i64[1] = 0x900000009;
  v80.i64[0] = 0x800000008;
  v80.i64[1] = 0x800000008;
  v81 = (-14 - -43 * v68 - ((86 * v68) & 0xE4));
  v82 = (v72 - (v73 & 0xE0)) & 0xFE;
  v83 = (v70 - (v71 & 0xE4));
  v84 = (v69 - ((v69 << ((((v64 + 43) | 0xD0) - 66) & 0x5D ^ 0x10)) & 0xE4) - 14) & 0xFE;
  v85 = a59 ^ a62 ^ 0xAC17033C ^ a57;
  v86.i32[0] = dword_297A1AB40[v85 ^ v81];
  v86.i32[1] = dword_297A1AB40[v85 ^ v82];
  v86.i32[2] = dword_297A1AB40[v85 ^ v83];
  v86.i32[3] = dword_297A1AB40[v85 ^ v84];
  v87 = veorq_s8(vshlq_n_s32(v86, 5uLL), vdupq_n_s32(0xF238FAA0));
  v88 = veorq_s8(veorq_s8(vdupq_n_s32(a33 - 519830836), v76), vaddq_s32(vsubq_s32(v87, vandq_s8(vaddq_s32(v87, v87), vdupq_n_s32(0xBC824280))), v76));
  v89 = veorq_s8(vandq_s8(v88, vdupq_n_s32(0xE1641E7u)), vdupq_n_s32(a34 & 2));
  v90 = veorq_s8(veorq_s8(vdupq_n_s32(a32 + 815866897), v77), vaddq_s32(vsubq_s32(v88, vaddq_s32(v89, v89)), v77));
  v91 = veorq_s8(vaddq_s32(vaddq_s32(v90, vdupq_n_s32(0x45620B8Eu)), vmvnq_s8(vandq_s8(vaddq_s32(v90, v90), vdupq_n_s32(0x8AC4171A)))), vdupq_n_s32(a55 ^ a35));
  v92 = veorq_s8(v91, vdupq_n_s32(0x258FEA86u));
  v93 = veorq_s8(vandq_s8(v92, vdupq_n_s32(0x849800Fu)), vandq_s8(v91, v79));
  v94 = veorq_s8(veorq_s8(vdupq_n_s32(HIDWORD(a31) ^ (a30 - 652132861)), vdupq_n_s32(0x4117B07Au)), vaddq_s32(vsubq_s32(v92, vaddq_s32(v93, v93)), vdupq_n_s32(0x8498006u)));
  v95 = veorq_s8(veorq_s8(v86, vdupq_n_s32(a28 + 20980097)), vaddq_s32(vsubq_s32(v94, vandq_s8(vaddq_s32(v94, v94), vdupq_n_s32(0xD738B680))), vdupq_n_s32(0x6B9C5B40u)));
  v96 = veorq_s8(v95, vdupq_n_s32(0x840D9C95));
  v97 = veorq_s8(vandq_s8(v96, vdupq_n_s32(0x4DC0BE4Bu)), vandq_s8(v95, v80));
  v98 = veorq_s8(veorq_s8(vdupq_n_s32(a27 + 50855953), v78), vaddq_s32(vsubq_s32(v96, vaddq_s32(v97, v97)), v78));
  v99 = veorq_s8(veorq_s8(vdupq_n_s32(HIDWORD(a29)), vdupq_n_s32(0xEA55653E)), vaddq_s32(vsubq_s32(v98, vandq_s8(vaddq_s32(v98, v98), vdupq_n_s32(0xE952276C))), vdupq_n_s32(0x74A913B6u)));
  v100 = STACK[0x11F0];
  v101 = (STACK[0x11F0] + 4 * (v82 ^ 0xF2u));
  v102 = (STACK[0x11F0] + 4 * (v83 ^ 0xF2u));
  *(v100 + 4 * (v81 ^ 0xF2u)) = v99.i32[0];
  *v101 = v99.i32[1];
  *v102 = v99.i32[2];
  *(v100 + 4 * (v84 ^ 0xF2u)) = v99.i32[3];
  return (*(v65 + 8 * (v66 ^ 0xF)))(v72, v73, v74, v75, 252, (v66 + 227308734) & 0xF2738A5D ^ 0x210, 228, dword_297A1AB40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

uint64_t sub_2979D04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (*(v59 + 8 * (v58 + 1085)))(1028);
  STACK[0x1650] = v60;
  STACK[0x4E8] = v60;
  v61 = STACK[0x14C0];
  return (off_2A1E5DED0[((v60 != 0) * (v58 ^ 0x6D ^ (v58 + 19))) ^ v58])(v60, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979D0514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v66 = (v65 + 1593283986) & 0xA1086A5B;
  v67 = (v66 + (a13 ^ 0x2BEC777A ^ LODWORD(STACK[0x16A4])) - 235471011 - ((2 * (a13 ^ 0x2BEC777A ^ LODWORD(STACK[0x16A4])) + 203559664) & 0x57CBEBCA) - 530) ^ 0x2BEC777A;
  v68 = (v67 - ((2 * v67 + 203559664) & 0x57CBEBCA) - 235471011) ^ 0x2BEC777A;
  v69 = (v68 - ((2 * v68 + 203559664) & 0x57CBEBCA) - 235471011) ^ 0x2BEC777A;
  v70 = ((v69 - ((2 * v69 + 203559664) & 0x57CBEBCA) - 235471011) ^ 0xABE5F5E5) + a62;
  v71 = (((v70 - ((2 * v70) & 0x76E6587E) + 997403717) & 0xFFFFFFFE) - 6) ^ 0x2D74AE19;
  v72 = ((((4 * a10) ^ 0x4613DC) - ((2 * ((4 * a10) ^ 0x4613DC)) & 0xD0)) & 0xFFFFFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232;
  v73 = vdupq_n_s32(a18 ^ v64);
  v100 = 1234636973 * v71;
  LODWORD(a52) = 4 * v71;
  v99 = -1825693350 * v71;
  LODWORD(a50) = 8 * v71;
  LODWORD(a56) = 1234636971 * v71;
  LODWORD(a54) = -1825693354 * v71;
  v74 = 71 * (v66 ^ 0x215);
  v75.i64[0] = 0xFF000000FFLL;
  v75.i64[1] = 0xFF000000FFLL;
  v76 = (4 * (((v74 + 1234636477) * v71 + 1715049703 - ((2 * (v74 + 1234636477) * v71) & 0xCC7329CC)) ^ a64)) ^ 0xFB1419D0;
  v77 = v76 + 289333803 - ((2 * v76) & 0x227DC450);
  LOWORD(v66) = (((4 * ((a56 - 27417 - (a54 & 0x29CE)) ^ a64)) ^ 0x19D0) - 7637 - ((2 * ((4 * ((a56 - 27417 - (a54 & 0x29CE)) ^ a64)) ^ 0x19D0)) & 0xC450)) ^ 0xE22B | (((a56 - 25 - (a54 & 0xCE)) ^ a64) >> 6);
  v78 = (((4 * ((4268 * v71 - 27417 - ((8536 * v71) & 0x29C8)) ^ a64)) ^ 0x19D0) - 7637 - ((2 * ((4 * ((4268 * v71 - 27417 - ((8536 * v71) & 0x29C8)) ^ a64)) ^ 0x19D0)) & 0xC450)) ^ 0xE22B | (((-84 * v71 - 25 - ((88 * v71) & 0xC8)) ^ a64) >> 6);
  v79 = (((4 * ((v100 - 27417 - (v99 & 0x29CE)) ^ a64)) ^ 0x19D0) - 7637 - ((2 * ((4 * ((v100 - 27417 - (v99 & 0x29CE)) ^ a64)) ^ 0x19D0)) & 0xC450)) ^ 0xE22B | (((v100 - 25 - (v99 & 0xCE)) ^ a64) >> 6);
  v80 = v77 ^ 0x113EE22B | ((((v74 - 67) * v71 - 25 - ((2 * (v74 - 67) * v71) & 0xCC)) ^ a64) >> 6);
  LOWORD(v66) = (v66 ^ 1) - ((2 * v66) & 0xB4) + 218;
  v81 = (v78 ^ 1) - ((2 * v78) & 0xB4) + 218;
  v82 = (v79 ^ 1) - ((2 * v79) & 0xB4) + 218;
  v83 = (v80 ^ 1) - ((2 * v80) & 0xB4) + 218;
  v84.i16[0] = v66 ^ ~(((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232);
  v84.i16[1] = v81 ^ ~(((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232);
  v84.i16[2] = v82 ^ ~(((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232);
  v85 = v83 ^ ~v72;
  v84.i16[3] = v83 ^ ~(((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232);
  v86.i16[0] = v66 ^ (((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232) ^ 0x60;
  v86.i16[1] = v81 ^ (((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232) ^ 0x60;
  v86.i16[2] = v82 ^ (((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232) ^ 0x60;
  v86.i16[3] = v83 ^ (((((4 * a10) ^ 0x13DC) - ((2 * ((4 * a10) ^ 0x13DC)) & 0xD0)) & 0xFFFC | (LODWORD(STACK[0x14A8]) >> 14)) + 232) ^ 0x60;
  v87 = vshr_n_u16(vsli_n_s16(*v86.i8, v84, 8uLL), 2uLL);
  v88 = (v87.i16[2] & 0xC0FF) - ((2 * (v87.i16[2] & 0xC0FF)) & 0x1C4u);
  v86.i32[0] = dword_297A228A0[(v87.i8[0] - ((2 * v87.i8[0]) & 0xC4) + 98) ^ 0x7E];
  v89 = v87.i16[3] & 0xC0FF;
  v87.i16[0] = (v87.i16[0] & 0xC0FF) - ((2 * (v87.i16[0] & 0xC0FF)) & 0x1C4) + 98;
  v87.i16[1] = (v87.i16[1] & 0xC0FF) - ((2 * (v87.i16[1] & 0xC0FF)) & 0x1C4) + 98;
  v86.i32[1] = dword_297A228A0[v87.i8[2] ^ 0x7E];
  v87.i16[2] = (v87.i16[2] & 0xC0FF) - ((2 * (v87.i16[2] & 0xC0FF)) & 0x1C4) + 98;
  v86.i32[2] = dword_297A228A0[v87.i8[4] ^ 0x7E];
  v87.i16[3] = v89 - ((2 * v89) & 0x1C4) + 98;
  v90 = vandq_s8(vmovl_u16(veor_s8(v87, 0x62006200620062)), v75);
  v86.i32[3] = dword_297A228A0[v87.i8[6] ^ 0x7E];
  v91 = vandq_s8(vmovl_u16(veor_s8(v87, 0xF500F500F500F5)), v75);
  v92 = vaddq_s32(vaddq_s32(vaddq_s32(veorq_s8(v91, vdupq_n_s32(0x6FFFFF9Fu)), (*&vaddq_s32(v91, v91) & __PAIR128__(0xFFFFFF3FFFFFFF3FLL, 0xFFFFFF3FFFFFFF3FLL))), vdupq_n_s32(0x90000061)), veorq_s8(vaddq_s32(vsubq_s32(v90, (*&vaddq_s32(v90, v90) & __PAIR128__(0xFFFFFF39FFFFFF39, 0xFFFFFF39FFFFFF39))), vdupq_n_s32(0x9D4E679C)), vdupq_n_s32(0xA4F0827C)));
  v93 = veorq_s8(veorq_s8(veorq_s8(a45, v86), vdupq_n_s32(0xED83137C)), vaddq_s32(vsubq_s32(v92, vandq_s8(vaddq_s32(v92, v92), vdupq_n_s32(0xBE2500Au))), vdupq_n_s32(0x85F12805)));
  v94 = veorq_s8(veorq_s8(v73, vdupq_n_s32(0x9C25278E)), vaddq_s32(vsubq_s32(v93, vandq_s8(vaddq_s32(v93, v93), vdupq_n_s32(0xE0DD04F6))), vdupq_n_s32(0x706E827Bu)));
  v95 = veorq_s8(vaddq_s32(vsubq_s32(v94, vandq_s8(vaddq_s32(v94, v94), vdupq_n_s32(0xC1F93C5A))), vdupq_n_s32(0xE0FC9E2D)), vdupq_n_s32(0x37AC744Du));
  v96 = STACK[0x1650];
  *(v96 + 4 * ((a56 - 25 - (a54 & 0xCE)) ^ 0xE7u)) = v95.i32[0];
  v97 = (v96 + 4 * ((-83 * v71 - 25 - ((90 * v71) & 0xCE)) ^ 0xE7u));
  *(v96 + 4 * ((-84 * v71 - 25 - ((88 * v71) & 0xC8)) ^ 0xE7u)) = v95.i32[1];
  *v97 = v95.i32[2];
  *(v96 + 4 * (((v74 - 67) * v71 - 25 - ((2 * (v74 - 67) * v71) & 0xCC)) ^ 0xE7u)) = v95.i32[3];
  return (off_2A1E5DED0[(v65 + 1593283986) & 0xA1086A5B ^ 0x36])(v72, v97, v96, v88, v89, v85, ((4 * ((v100 + 1715049703 - (v99 & 0xCC7329CE)) ^ a64)) ^ 0xFB1419D0) + 289333803 - ((2 * ((4 * ((v100 + 1715049703 - (v99 & 0xCC7329CE)) ^ a64)) ^ 0xFB1419D0)) & 0x227DC450), v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45.i64[0], a45.i64[1], a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_2979D0AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v59 = (off_2A1E5DED0[v58 ^ 0x7BF])(1028);
  STACK[0x12D8] = v59;
  STACK[0x4F8] = v59;
  v60 = STACK[0x14C0];
  return (off_2A1E5DED0[(1011 * (((((v58 + 33) | 0xAC) - 79) ^ (v59 == 0)) & 1)) ^ v58])(v59, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979D0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = ((a12 ^ LODWORD(STACK[0x16A4]) ^ 0x62AE9807) - ((2 * (a12 ^ LODWORD(STACK[0x16A4]) ^ 0x62AE9807) - 875780838) & 0xBC4C7172) - 1005810874) ^ 0x9108A08F;
  v72 = (v71 - ((((v70 - 1681619200) ^ 0xCBCCA475) + 2 * v71) & 0xBC4C7172) - 1005810874) ^ 0x9108A08F;
  v73 = ((v72 - ((2 * v72 - 875780838) & 0xBC4C7172) - 1005810874) ^ 0x5E2638B9) + (LODWORD(STACK[0x1690]) ^ 0x772659AD);
  v74 = (v73 - ((2 * v73) & 0x5C) - 82) & 0xFE ^ 0x1D;
  v75 = 103 - 17 * v74;
  v76 = -34 * v74;
  v77 = a49 ^ dword_297A1F440[(v70 - 670169703) ^ 0x3C498083 ^ ((v75 - (v76 & 0xCE)) ^ a70)] ^ ((((v75 - (v76 & 0xCE)) ^ a70) ^ 0xEF) - ((2 * (((v75 - (v76 & 0xCE)) ^ a70) ^ 0xEF) + 156) & 0x34E) - 352827403) ^ 0x40317FDE;
  v78 = a41 ^ 0x30BF3A7E ^ (v77 + 817838718 - ((2 * v77) & 0x617E74FC));
  v79 = a43 ^ 0x151B2E46 ^ (v78 + 354102854 - ((2 * v78) & 0x2A365C8C));
  *(STACK[0x12D8] + 4 * ((v75 - (v76 & 0xCE)) ^ 0x67u)) = (v79 - ((2 * v79) & 0xAEEC5786) + 1467362243) ^ 0x52892320;
  return (off_2A1E5DED0[v70 - 1681619200])(97274574, dword_297A1F440, 239, 846, 3942139893, 1076985822, 1635677436);
}

uint64_t sub_2979D0D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  STACK[0x1600] = STACK[0x500];
  v49 = STACK[0x146C];
  v50 = STACK[0x16B4];
  LODWORD(STACK[0x898]) = a47;
  LODWORD(STACK[0x89C]) = v50;
  LODWORD(STACK[0x8A0]) = 212460135;
  LODWORD(STACK[0x8A4]) = v49;
  LODWORD(STACK[0x8A8]) = a14;
  LODWORD(STACK[0x8AC]) = v47 - 1011449684;
  LODWORD(STACK[0x8B0]) = v47 - v48 + 554;
  LODWORD(STACK[0x8B4]) = v47 - 1011448690;
  LODWORD(STACK[0x8B8]) = 212460128;
  LODWORD(STACK[0x8BC]) = 424920270;
  LODWORD(STACK[0x8C0]) = ((v47 - v48 + 1911693242) ^ 0xCA9E260) + 10;
  STACK[0x588] = STACK[0x1600] + ((v47 - v48 + 1911693242) ^ 0xCA9E260u) - 2103180755;
  STACK[0x578] = off_2A1E5DED0[v47 ^ (v48 + 1466)];
  v51 = (*(qword_2A13A4DD8 + 32 * *(((STACK[0x588] - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 8))(*(((STACK[0x588] - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8), &STACK[0x5BF], 1);
  LOBYTE(STACK[0x587]) = STACK[0x5BF];
  return (STACK[0x578])(v51);
}

uint64_t sub_2979D0E10()
{
  v0 = STACK[0x870] + 1;
  v1 = STACK[0x878] + 1;
  v2 = off_2A1E5DED0[(505 * (STACK[0x878] != 0x179C26C826280FC4)) ^ LODWORD(STACK[0x880])];
  v3 = STACK[0x868] + 1;
  LODWORD(STACK[0x84C]) = STACK[0x880];
  STACK[0x850] = v1;
  STACK[0x858] = v0;
  STACK[0x860] = v3;
  return v2();
}

uint64_t sub_2979D0E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = LODWORD(STACK[0x884]) - 651529277;
  STACK[0x1928] = STACK[0x15D8];
  v4 = STACK[0x2B0];
  v7 = STACK[0x468];
  v6 = STACK[0x1278];
  return (*(a3 + 8 * ((((v3 - 35806232) & 0x3E6BD96F) - 1011447938) ^ v3)))(1011449864);
}

uint64_t sub_2979D0FC4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v10 = (v7 + 1864435998) & 0x90DEF7B7;
  *(STACK[0x15C8] + (a7 - 999612500)) = (((v8 ^ (v10 + a4)) >> (v9 + 101)) - ((2 * ((v8 ^ (v10 + a4)) >> (v9 + 101))) & 0x44) + 34) ^ (v7 - 3);
  return (*(a3 + 8 * ((a7 - ((((v8 ^ (v10 + a4)) >> (v9 + 101)) - ((2 * ((v8 ^ (v10 + a4)) >> (v9 + 101))) & 0x44) + 34) != 215) != a5) | v7)))();
}

uint64_t sub_2979D3E80@<X0>(char a1@<W0>, uint64_t a2@<X2>, unint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 + 632;
  v67 = ((v65 + 38) | 8) - a1 + 49;
  STACK[0x2B0] = a3;
  STACK[0x468] = a65;
  v68 = (*(a2 + 8 * ((v65 + 632) ^ 0x26E)))(STACK[0x15C8]);
  LODWORD(STACK[0x1908]) = 144770233;
  LODWORD(STACK[0x1920]) = 144770235;
  v69 = off_2A13A3878;
  LOBYTE(STACK[0x1863]) = *off_2A13A3878 - 58;
  LOBYTE(STACK[0x1864]) = v69[1] - 58;
  LOBYTE(STACK[0x1865]) = v69[2] - 58;
  LOBYTE(STACK[0x1866]) = v69[3] - 58;
  LOBYTE(STACK[0x1867]) = v69[4] - 58;
  LOBYTE(STACK[0x1868]) = v67 + v69[5] - 107;
  LOBYTE(STACK[0x1869]) = v69[6] - 58;
  LOBYTE(STACK[0x186A]) = v69[7] - 58;
  LOBYTE(STACK[0x186B]) = v69[8] - 58;
  LOBYTE(STACK[0x186C]) = v69[9] - 58;
  LOBYTE(STACK[0x186D]) = v69[10] - 58;
  LOBYTE(STACK[0x186E]) = v69[11] - 58;
  LOBYTE(STACK[0x186F]) = v69[12] - 58;
  LOBYTE(STACK[0x1870]) = v69[13] - 58;
  LOBYTE(STACK[0x1871]) = v69[14] - 58;
  LOBYTE(STACK[0x1872]) = v69[15] - 58;
  LOBYTE(STACK[0x1873]) = v69[16] - 58;
  LOBYTE(STACK[0x1874]) = v69[17] - 58;
  LOBYTE(STACK[0x1875]) = v69[18] - 58;
  LOBYTE(STACK[0x1876]) = v69[19] - 58;
  v70 = off_2A13A3878;
  LOBYTE(STACK[0x1877]) = off_2A13A3878[20] - 58;
  LOBYTE(STACK[0x1878]) = v70[21] - 58;
  LOBYTE(STACK[0x1879]) = v70[22] - 58;
  v71 = (off_2A1E5DED0[v66 ^ 0x25C])(v68);
  v72 = (off_2A1E5DED0[v66 ^ 0x247])(0, &STACK[0x1863], v71);
  STACK[0x1818] = v72;
  return (off_2A1E5DED0[(61 * (v72 != 0)) ^ v66])();
}

uint64_t sub_2979D408C()
{
  v2 = (*(v1 + 8 * (v0 + 268)))(STACK[0x1818], 0);
  STACK[0x17D8] = v2;
  return (off_2A1E5DED0[((v2 != 0) * ((v0 ^ 0x53A) + 1600 + 53 * (v0 ^ 0x53A) - 2121)) ^ v0])();
}

uint64_t sub_2979D4100()
{
  v2 = STACK[0x438];
  STACK[0x14F8] = STACK[0x438];
  STACK[0x1500] = &STACK[0x1A70] + v2;
  STACK[0x438] = v2 + 64;
  v3 = (~((&STACK[0x1A70] + v2) << (((v1 - 107) ^ 0x21u) + 7)) - 32 * (&STACK[0x1A70] + v2)) & 0x20;
  STACK[0x1508] = (v3 ^ 0x7FFF7EBF63D8FDF9) + 2 * v3 - 0x3253240E020044A0;
  v4 = (*(v0 + 8 * (v1 ^ 0x448)))(STACK[0x17D8]);
  v5 = (v4 ^ 0x6479F7517F989FFELL) - (off_2A1E5DED0[v1 ^ 0x414])() + ((2 * v4) & 0xC8F3EEA2FF313FFCLL) == 0x6479F7517F989FFELL;
  return (off_2A1E5DED0[(38 * v5) ^ v1])();
}

uint64_t sub_2979D41FC()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x2B4)))(STACK[0x17D8]);
  v3 = ((v2 << ((-114 * (v1 ^ 0xFE)) ^ 0xABu)) & 0xAFFDF7FEF677ACFALL) + (v2 ^ 0xD7FEFBFF7B3BD67DLL);
  STACK[0x1358] = v3;
  v4 = (off_2A1E5DED0[v1 ^ 0x2B0])((v3 - ((2 * v3 + 0x5002080109885308) & 0xA5DAAC036440D736) + 0x7AEE5A0236E4951FLL) ^ 0x52ED5601B2206B9BLL, 0x100004077774924);
  STACK[0x1360] = v4;
  STACK[0x310] = v4;
  return (off_2A1E5DED0[(497 * (v4 == 0)) ^ v1])();
}

uint64_t sub_2979D4328()
{
  v4 = v1 ^ 0x78E;
  v5 = (*(v0 + 8 * (v4 ^ 0x57D)))();
  v6 = (off_2A1E5DED0[v4 + 632])(STACK[0x17D8], STACK[0x1360], v2 ^ v3, v5);
  return (off_2A1E5DED0[(161 * ((((2 * v6) & 0x2C) + (v6 ^ 0x96)) == (((v4 - 86) & 0xE7) - 111))) ^ v4])();
}

uint64_t sub_2979D43E0(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x3A0]) = v3 ^ 0xA96F8B3E;
  v4 = (*(a2 + 8 * ((v2 + 190) ^ 0x270)))(((v2 - 874) + 4294967286) & v3 ^ 0xB2206B9BLL, 50, 3047523154);
  STACK[0x1410] = v4;
  return (off_2A1E5DED0[(108 * (v4 == 0)) ^ (v2 + 190)])();
}

uint64_t sub_2979D4470(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + 597);
  v4 = STACK[0x1358] + 0x2801040091CB405FLL;
  STACK[0x1768] = v4;
  LOBYTE(STACK[0x1777]) = v4 < (v3 ^ 0xD071482uLL);
  v5 = *(a2 + 8 * ((247 * (v4 != 218568412)) ^ v2));
  LODWORD(STACK[0xBB4]) = v2;
  STACK[0xBB8] = 0x1256C97460CEF7D7;
  STACK[0xBC0] = 0x54AB92740CE37254;
  STACK[0xBC8] = 0x241F1EDF394E5A77;
  LODWORD(STACK[0xD34]) = v3;
  return v5();
}

void sub_2979D451C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xD34];
  v3 = (LODWORD(STACK[0xD34]) - 602) | 1;
  LODWORD(STACK[0xD38]) = v3;
  v4 = STACK[0x1358] + STACK[0x1410] + 0x2801040084C42983;
  v5 = 233206231 * ((v3 ^ 0x7FFFFFFA) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ (LODWORD(STACK[0x1358]) + LODWORD(STACK[0x1410]) - 2067519101)));
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  LOBYTE(STACK[0x5D2]) = byte_297A242D0[(v6 >> 24) + 4] ^ byte_297A20DA0[v6 >> 24] ^ byte_297A1DA20[(v6 >> 24) + 1] ^ v6 ^ (103 * BYTE3(v6));
  STACK[0x5C8] = v4;
  STACK[0x5C0] = *(a2 + 8 * (v2 + 859));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D45F0()
{
  v0 = STACK[0xD48] + 1;
  v1 = off_2A1E5DED0[(29 * (STACK[0xD48] == 188786082)) ^ LODWORD(STACK[0xD54])];
  LODWORD(STACK[0xD3C]) = STACK[0xD54];
  STACK[0xD40] = v0;
  return v1();
}

uint64_t sub_2979D4638()
{
  v1 = (LODWORD(STACK[0xD58]) - 1242403392) | 0x102;
  LODWORD(STACK[0x1960]) = 458219692;
  STACK[0x1958] = STACK[0x14C8];
  LODWORD(STACK[0x1950]) = 144770231;
  STACK[0x1440] = &STACK[0x1978];
  LODWORD(STACK[0x1978]) = 458219685;
  STACK[0x1448] = &STACK[0x1970];
  STACK[0x1970] = 0;
  v2 = off_2A13A4250;
  LOBYTE(STACK[0x1A51]) = *off_2A13A4250 - 43;
  LOBYTE(STACK[0x1A52]) = v2[1] + ((((v1 + 42) | 0xC) + 108) ^ 0xDD);
  LOBYTE(STACK[0x1A53]) = v2[2] - 43;
  LOBYTE(STACK[0x1A54]) = v2[3] - 43;
  LOBYTE(STACK[0x1A55]) = v2[4] - 43;
  LOBYTE(STACK[0x1A56]) = v2[5] - 43;
  LOBYTE(STACK[0x1A57]) = v2[6] - 43;
  LOBYTE(STACK[0x1A58]) = v2[7] - 43;
  LOBYTE(STACK[0x1A59]) = v2[8] - 43;
  LOBYTE(STACK[0x1A5A]) = v2[9] - 43;
  LOBYTE(STACK[0x1A5B]) = v2[10] - 43;
  LOBYTE(STACK[0x1A5C]) = v2[11] - 43;
  LOBYTE(STACK[0x1A5D]) = v2[12] - 43;
  LOBYTE(STACK[0x1A5E]) = v2[13] - 43;
  LOBYTE(STACK[0x1A5F]) = v2[14] - 43;
  LOBYTE(STACK[0x1A60]) = v2[15] - 43;
  LOBYTE(STACK[0x1A61]) = v2[16] - 43;
  LOBYTE(STACK[0x1A62]) = v2[17] - 43;
  LOBYTE(STACK[0x1A63]) = v2[18] - 43;
  LOBYTE(STACK[0x1A64]) = v2[19] - 43;
  v3 = off_2A13A4250;
  LOBYTE(STACK[0x1A65]) = off_2A13A4250[20] - 43;
  LOBYTE(STACK[0x1A66]) = v3[21] - 43;
  LOBYTE(STACK[0x1A67]) = v3[22] - 43;
  v4 = (*(v0 + 8 * (v1 + 168)))();
  v5 = (off_2A1E5DED0[v1 + 175])(0, &STACK[0x1A51], v4);
  STACK[0x1450] = v5;
  return (*(v0 + 8 * (((4 * (v5 == 0)) | (16 * (v5 == 0))) ^ v1)))();
}

uint64_t sub_2979D4670()
{
  v0 = STACK[0xCD8] + 1;
  v1 = STACK[0xCE0];
  v2 = (42 * ((STACK[0xCE0] & 0x7FFFFFFFFFFFFFF8) == 0x2143AFD2B010D418)) ^ LODWORD(STACK[0xCEC]);
  LODWORD(STACK[0xCB4]) = STACK[0xCEC];
  v3 = STACK[0xCD0] + 1;
  v4 = off_2A1E5DED0[v2];
  STACK[0xCB8] = v1 + 1;
  STACK[0xCC0] = v0;
  STACK[0xCC8] = v3;
  v5 = LODWORD(STACK[0xCF0]);
  return v4();
}

void sub_2979D46E0()
{
  v0 = STACK[0xCC8];
  STACK[0xCD0] = STACK[0xCC8];
  v1 = STACK[0xCC0];
  STACK[0xCD8] = STACK[0xCC0];
  STACK[0xCE0] = STACK[0xCB8];
  v2 = STACK[0xCB4];
  LODWORD(STACK[0xCEC]) = STACK[0xCB4];
  v3 = (v2 - 424) | 0xA;
  LODWORD(STACK[0xCF0]) = v3;
  v4 = v1 + STACK[0x1678] - 0x7F86CEBD7B30B1D4;
  v5 = 233206231 * ((v3 + 2147483333) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v4));
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  LOBYTE(STACK[0x5D2]) = byte_297A20DA0[v6 >> 24] ^ *(v0 + STACK[0x13E8] - 0x45CA8A100B0AEF82) ^ byte_297A242D0[(v6 >> 24) + 4] ^ byte_297A1DA20[(v6 >> 24) + 1] ^ v6 ^ (103 * BYTE3(v6));
  STACK[0x5C8] = v4;
  JUMPOUT(0x2979CD984);
}

void sub_2979D47F0()
{
  LODWORD(STACK[0x1930]) = 458220708;
  STACK[0x11B8] = STACK[0x15D8] + 1;
  LODWORD(STACK[0x84C]) = STACK[0x11B4];
  STACK[0x850] = 0x179C26C826280BC5;
  STACK[0x858] = 0x33914E3C8A7CA108;
  STACK[0x860] = 0x6B883D246377E73ALL;
  v0 = STACK[0x860];
  STACK[0x868] = STACK[0x860];
  v1 = STACK[0x858];
  STACK[0x870] = STACK[0x858];
  STACK[0x878] = STACK[0x850];
  v2 = STACK[0x84C];
  LODWORD(STACK[0x880]) = STACK[0x84C];
  LOBYTE(v0) = *(v0 + STACK[0x13F8] - 0x6B883D246377E73ALL);
  v3 = v1 + STACK[0x11B8] - 0x33914E3C8A7CA108;
  v4 = 233206231 * ((v2 + 2147483413) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v3));
  v5 = 233206231 * (v4 ^ HIWORD(v4));
  v6 = byte_297A20DA0[v5 >> 24];
  LODWORD(STACK[0x884]) = v2 + 651529731;
  LOBYTE(STACK[0x5D2]) = v6 ^ v0 ^ byte_297A242D0[(v5 >> 24) + 4] ^ byte_297A1DA20[(v5 >> 24) + 1] ^ v5 ^ (103 * BYTE3(v5));
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979CD988);
}

void sub_2979D4964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v27 = STACK[0xF00];
  LODWORD(STACK[0xEFC]) = LODWORD(STACK[0x17E4]) - 275686515;
  v28 = (LODWORD(STACK[0xF0C]) | ((LODWORD(STACK[0xF0C]) < 0x47E25893uLL) << 32)) + STACK[0xEF0];
  v29 = 233206231 * (((LODWORD(STACK[0xF0C]) + LODWORD(STACK[0xEF0]) - 1206016147) ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358))) & 0x7FFFFFFF);
  v30 = 233206231 * (v29 ^ HIWORD(v29));
  LOBYTE(STACK[0x5D2]) = v27 ^ byte_297A19D20[v30 >> 24] ^ byte_297A1BA70[v30 >> 24] ^ byte_297A1BC80[v30 >> 24] ^ v30 ^ (5 * BYTE3(v30)) ^ 0x4F;
  STACK[0x5C8] = v28 - 0x5F9955DC53A523A5;
  STACK[0x5C0] = off_2A1E5DED0[a27 ^ 0x3C4985DA];
  JUMPOUT(0x2979D0DC0);
}

void sub_2979D4A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v27 = LOBYTE(STACK[0x8C8]);
  LODWORD(STACK[0xA4C]) = v27;
  LODWORD(STACK[0xA50]) = (v27 ^ 0xF7) - ((2 * (v27 ^ 0xF7) + 94) & 0x4E) + 86;
  v28 = STACK[0x1600] + LODWORD(STACK[0xA48]);
  LOBYTE(STACK[0x5D2]) = byte_297A1F340[LODWORD(STACK[0x8C4]) ^ 0x5ALL] ^ LODWORD(STACK[0x8C4]) ^ ((LOBYTE(STACK[0x8C4]) ^ 0x95) - ((2 * (LOBYTE(STACK[0x8C4]) ^ 0x95) + 30) & 0x28) + 67) ^ 0xA5;
  STACK[0x5C8] = v28;
  STACK[0x5C0] = off_2A1E5DED0[a27 - 1011448398];
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D4AFC()
{
  v0 = STACK[0x1130] + 1;
  v1 = STACK[0x1128] + 1;
  v2 = STACK[0x1138];
  v3 = STACK[0x124F];
  if (((LOBYTE(STACK[0x124F]) ^ (STACK[0x1138] - 0x7B3829763BB7EDBLL < 0xBD9CFFFA)) & 1) == 0)
  {
    v3 = STACK[0x1138] - 0x7B3829763BB7EDBLL < STACK[0x1240];
  }

  v4 = off_2A1E5DED0[v3 & 1 ^ LODWORD(STACK[0x1144])];
  LODWORD(STACK[0x110C]) = STACK[0x1144];
  STACK[0x1110] = v2 + 1;
  STACK[0x1118] = v0;
  STACK[0x1120] = v1;
  v5 = LODWORD(STACK[0x1148]);
  return v4();
}

void sub_2979D4B90()
{
  v0 = STACK[0x1120];
  STACK[0x1128] = STACK[0x1120];
  v1 = STACK[0x1118];
  STACK[0x1130] = STACK[0x1118];
  STACK[0x1138] = STACK[0x1110];
  v2 = (LODWORD(STACK[0x110C]) - 250);
  LOBYTE(v0) = *(v2 + v0 + STACK[0x17F8] - 0x18E8EBB465C31B87);
  LODWORD(STACK[0x1144]) = STACK[0x110C];
  v3 = v1 + STACK[0x1520] - 0x3A2BABBE223DBCFALL;
  v4 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v3) & 0x7FFFFFFF);
  v5 = 233206231 * (v4 ^ HIWORD(v4));
  v6 = byte_297A20DA0[v5 >> 24];
  LODWORD(STACK[0x1148]) = v2;
  LOBYTE(STACK[0x5D2]) = v6 ^ v0 ^ byte_297A242D0[(v5 >> 24) + 4] ^ byte_297A1DA20[(v5 >> 24) + 1] ^ v5 ^ (103 * BYTE3(v5));
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979D4C88);
}

void sub_2979D4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27)
{
  v27 = byte_297A1B870[LOBYTE(STACK[0xA3C]) ^ 0x45];
  LODWORD(STACK[0xA40]) = (((2 * LODWORD(STACK[0x8D0])) & 0x1FE ^ 0x168) - 2 * (((2 * LODWORD(STACK[0x8D0])) & 0x1FE ^ 0x168) & 0x36 ^ (2 * LODWORD(STACK[0x8D0])) & 6) + 113) & 0x5E ^ 0x50;
  LODWORD(STACK[0xA44]) = LODWORD(STACK[0x8B8]) ^ 0xCA9E267;
  v28 = STACK[0x940];
  LOBYTE(STACK[0x5D2]) = v27 ^ 0xB4;
  STACK[0x5C8] = v28;
  STACK[0x5C0] = off_2A1E5DED0[a27 - 1011448431];
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D4D28()
{
  v5 = *(&unk_297A1E240 + (LODWORD(STACK[0xA24]) ^ 0xFFFFFECD) + LODWORD(STACK[0xA2C]) + LODWORD(STACK[0xA30]) + 34082838) + 116;
  v6 = LODWORD(STACK[0x8C8]) >> 8;
  LODWORD(STACK[0xA34]) = v6;
  LOBYTE(STACK[0xA39]) = v6;
  LOBYTE(v6) = v6 ^ 0x6F;
  v7 = v6 - ((2 * v6 + 82) & 0xA6) + 124;
  LOBYTE(STACK[0xA3A]) = v7;
  LOBYTE(STACK[0xA3B]) = ((2 * (((v7 ^ 0xD3) & v6) - ((2 * ((v7 ^ 0xD3) & v6)) & 0x12)) + 18) ^ 0x12) - ((2 * ((2 * (((v7 ^ 0xD3) & v6) - ((2 * ((v7 ^ 0xD3) & v6)) & 0x12)) + 18) ^ 0x12)) & 0xC7) - 29;
  v8 = STACK[0x1600] + LODWORD(STACK[0x8E8]);
  LOBYTE(STACK[0x5D2]) = v5 ^ 0xB7 ^ ((v5 >> 1) & 0x12 | 0x68);
  STACK[0x5C8] = v8;
  STACK[0x5C0] = off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4278) ^ 0xC9)) ^ byte_297A25000[byte_297A24F00[(-77 * ((qword_2A13A4260 - qword_2A13A4278) ^ 0xC9))] ^ 0x87]) + 1208];
  v0 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v1 = (*(qword_2A13A4DD8 + 32 * *(((v0 - *(v4 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v3 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v1);
}

uint64_t sub_2979D4E68()
{
  v0 = STACK[0xD38];
  v1 = STACK[0x1410];
  LODWORD(STACK[0x29C]) = 0;
  v2 = STACK[0x1360];
  v3 = off_2A1E5DED0[v0];
  return (off_2A1E5DED0[(1271 * (((((v0 + 380) ^ 0xC4) + 32451) ^ 0x228u ^ (LOWORD(STACK[0x1358]) - ((v0 + 380 + 2 * LOWORD(STACK[0x1358]) + 389) & 0x442) - 21596)) > 1)) ^ (v0 + 380)])(0);
}

uint64_t sub_2979D6A9C(uint64_t a1, uint64_t a2)
{
  v3 = STACK[0x228];
  v6 = STACK[0x338];
  v4 = STACK[0x1508];
  return (*(a2 + 8 * ((493 * (((((((v2 - 1173) | 0x268) + 2108419321) & 0xFBFDB98E) - 1029712254) ^ 0x79305345) != 1165611853)) ^ ((v2 - 1173) | 0x268))))(2253805177);
}

uint64_t sub_2979D6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = STACK[0x1500] + a6 - 0x4DAC5AB161D8B959;
  STACK[0x1A68] = 0x9AC19DC203C92D1DLL;
  LODWORD(STACK[0x298]) = *(v9 + 2140) - 1306450980;
  v13 = *(v10 + 2136);
  STACK[0x538] = *(a2 + 8 * ((v6 - 1486340354) ^ 0x1FFFFFFFE3B1BF5ELL));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v13;
  STACK[0x550] = v8;
  LODWORD(STACK[0x558]) = v6 - 1486340332;
  LODWORD(STACK[0x55C]) = (v6 - 1486340354) ^ 0x29;
  LODWORD(STACK[0x560]) = v6 - 1486340354;
  *(v11 - 216) = &STACK[0x538];
  *(v11 - 208) = 1508565502 - 490657303 * ((v11 - 1852652400 - 2 * ((v11 - 224) & 0x9192C570)) ^ 0x7C64CBBD) + v6;
  v14 = (*(a2 + 8 * (v6 ^ (v7 + 1546))))(v11 - 224);
  return (off_2A1E5DED0[*(v11 - 224)])(v14, 1011449864);
}

void *sub_2979D6D18(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v59 = 7 * (a2 ^ (a2 + 73));
  (*(a3 + 8 * (a2 ^ (a2 + 1597))))(a57 + a59, 0x100004077774924);
  v60 = unk_2A1E60F88();
  v61 = v60 + 1365300272 - ((v59 - 1564367375) & (2 * v60));
  LODWORD(xmmword_2A13A3880) = v61;
  DWORD1(xmmword_2A13A3880) = -772613950 - ((2 * (((1812433253 * (v61 ^ (v61 >> 30) ^ (v59 + 1365299650))) ^ 0x7F6DFB6F) + ((-670100790 * (v61 ^ (v61 >> 30) ^ (v59 + 1365299650))) & 0xFEDBF6DE) + 1076866014) - 2134593176) & 0xA2C1A860) + ((1812433253 * (v61 ^ (v61 >> 30) ^ (v59 + 1365299650))) ^ 0x7F6DFB6F) + ((-670100790 * (v61 ^ (v61 >> 30) ^ (v59 + 1365299650))) & 0xFEDBF6DE);
  return (off_2A1E5DED0[(952 * (((v59 & 0xFFFFFFFE | (~v59 ^ 1) & (1 - v59)) & 0x80000000) == 0)) ^ (v59 - 178)])(&xmmword_2A13A3880 + 1);
}

uint64_t sub_2979D6EB4(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = vld1q_dup_f32(&xmmword_2A13A3880);
  a2.i64[0] = *(&xmmword_2A13A3880 + 4);
  a2.i32[2] = HIDWORD(xmmword_2A13A3880);
  v6 = vextq_s8(v5, a2, 0xCuLL);
  v7 = a2;
  v7.i32[3] = dword_2A13A3890;
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9 = vandq_s8(v6, v8);
  v6.i64[0] = 0x100000001;
  v6.i64[1] = 0x100000001;
  v10 = veorq_s8(vorrq_s8(vandq_s8(v7, vnegq_f32(v6)), v9), vdupq_n_s32(0x5160D430u));
  v11.i64[0] = 0x400000004;
  v11.i64[1] = 0x400000004;
  v12 = veorq_s8(vandq_s8(v10, vdupq_n_s32(0x7C8A6294u)), vandq_s8(v7, v11));
  v11.i32[0] = *(&STACK[0x1A68] + (BYTE4(xmmword_2A13A3880) & 1));
  v11.i32[1] = *(&STACK[0x1A68] + (BYTE8(xmmword_2A13A3880) & 1));
  v11.i32[2] = *(&STACK[0x1A68] + (BYTE12(xmmword_2A13A3880) & 1));
  v11.i32[3] = *(&STACK[0x1A68] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v11), vdupq_n_s32(0x3D8C1C55u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v10, vaddq_s32(v12, v12)), vdupq_n_s32(0x7C8A6291u)), 1uLL));
  return (*(a5 + 3672))();
}

uint64_t sub_2979D7968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v13 = v9 & 0x80000000;
  v14 = *(a4 + 4 * (v8 + a6 + ((v7 - 466) | 0x410u)));
  *(a4 + 4 * (v8 + a6) + 4316) = *(a4 + 4 * (v8 + a6) + 5904) ^ *(v10 + 4 * (v14 & 1)) ^ ((((v14 & 0x7FFFFFFE | v13) ^ a5) + v12 - 2 * (((v14 & 0x7FFFFFFE | v13) ^ a5) & (v12 + 3) ^ v14 & 4)) >> 1) ^ v11;
  return (*(a3 + 8 * ((1212 * (v8 + 1 == a7 + 3)) ^ v7)))();
}

uint64_t sub_2979D79F0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>, int8x16_t a4@<Q1>)
{
  v4 = (a2 + 908);
  v5 = vld1q_dup_f32(v4);
  v6 = 4 * (a3 - 76) - 3104;
  a4.i32[0] = *(a2 + v6);
  a4.i32[1] = *(a2 + 916);
  a4.i32[2] = *(a2 + 920);
  v7 = vextq_s8(v5, a4, 0xCuLL);
  v8 = a4;
  v8.i32[3] = *(a2 + 924);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vandq_s8(v7, v9);
  v7.i64[0] = 0x100000001;
  v7.i64[1] = 0x100000001;
  v11 = veorq_s8(vorrq_s8(vandq_s8(v8, vnegq_f32(v7)), v10), vdupq_n_s32(0x5160D430u));
  v12.i64[0] = 0x800000008;
  v12.i64[1] = 0x800000008;
  v13 = veorq_s8(vandq_s8(v11, vdupq_n_s32(0xA95F1DEu)), vandq_s8(v8, v12));
  v12.i32[0] = *(&STACK[0x1A68] + (*(a2 + v6) & 1));
  v12.i32[1] = *(&STACK[0x1A68] + (*(a2 + 916) & 1));
  v12.i32[2] = *(&STACK[0x1A68] + (*(a2 + 920) & 1));
  v12.i32[3] = *(&STACK[0x1A68] + (v8.i8[12] & 1));
  *(a2 + 908) = veorq_s8(veorq_s8(veorq_s8(*a2, v12), vdupq_n_s32(0x683D5F6u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v11, vaddq_s32(v13, v13)), vdupq_n_s32(0xA95F1D6u)), 1uLL));
  return (*(a1 + 8 * a3))();
}

uint64_t sub_2979D7B18(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = (*a4 & 0x7FFFFFFE | a4[623] & 0x80000000) ^ (((v4 - 16936785) & 0x3D4BEB6C) + 353850408);
  a4[623] = a4[396] ^ *(v5 + 4 * (*a4 & 1)) ^ 0x5CA75CF1 ^ ((v6 - ((2 * v6) & 0x7DB9C7B0) - 1092820007) >> (((v4 - 111) & 0xF7) - 116));
  return (*(a3 + 8 * ((1958 * (LODWORD(STACK[0x298]) > 0x26F)) ^ v4)))();
}

uint64_t sub_2979D7BE0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = (v4 + 1193873465) & 0x7DEDAB59;
  LODWORD(STACK[0x298]) = 0;
  v9 = LODWORD(STACK[0x298]);
  LODWORD(STACK[0x298]) = v9 + 1;
  v10 = *(a4 + 4 * v9);
  *(v5 + 2140) = v9 + 1306450981;
  v11 = (*(v6 + 2136) + 1725786962);
  v12 = *(a3 + 8 * ((v8 - 1485044807) ^ 0x1FFFFFFFE3C58358));
  v13 = 912661583 * ((((v7 - 224) | 0x8C1C821249DD747ELL) - (v7 - 224) + ((v7 - 224) & 0x73E37DEDB6228B80)) ^ 0x79A8DF895DDCB98BLL);
  *(v7 - 208) = v13 + 1;
  *(v7 - 216) = v13 + 3751073488u;
  *(v7 - 184) = (v8 - 1485044860) ^ v13;
  *(v7 - 180) = 922745793 - v13 + v8;
  *(v7 - 224) = (v8 - 1485044782) ^ v13;
  *(v7 - 220) = v8 - 1485044807 + v13;
  *(v7 - 200) = v11 ^ v13;
  *(v7 - 192) = v12 ^ v13;
  v14 = (*(a3 + 8 * (v8 ^ (a2 + 1595))))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 176)])(v14);
}

uint64_t sub_2979D7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v69 >= v68 + 1)
  {
    v72 = *(v71 + 2136) + ((v70 + 1029712254) ^ 0x79A9A987);
  }

  else
  {
    v72 = 2025286526;
  }

  *(v71 + 2136) = v72;
  v73 = ((((v67 ^ (v67 >> 11)) << 7) ^ 0xB57C1500) - 1345344741 + ~(2 * ((v70 - 1011449863) ^ (((v67 ^ (v67 >> 11)) << 7) ^ 0xB57C1500) & 0x2FCFAB00))) & 0x9D2C5680 ^ v67 ^ (v67 >> 11);
  v74 = (((v73 << 15) ^ 0x7D150000) - ((2 * ((v73 << 15) ^ 0x7D150000)) & 0xFBFBFBFB) - 33696177) & 0xEFC60000 ^ v73;
  *(a63 + (a67 - 2041162119)) = ((v74 ^ (v74 >> 18) ^ 0x42) - (((v74 ^ (v74 >> 18) ^ 0x31A2F642) << ((((v70 - 9) & 0xFE) - 125) ^ 0x80)) & 0xCC) + 102) ^ 0x36;
  v75 = ((v74 ^ (v74 >> 18) ^ 0x42) - (((v74 ^ (v74 >> 18) ^ 0x31A2F642) << ((((v70 - 9) & 0xFE) - 125) ^ 0x80)) & 0xCC) + 102) != 54;
  return (*(a2 + 8 * ((49 * (((a67 - v75 - (v70 + 1029712254)) | (v70 + 1029712254 - (a67 - v75))) >> 31)) ^ (v70 - 1011448558))))();
}

uint64_t sub_2979D7EF0()
{
  v1 = STACK[0xF78];
  v2 = STACK[0xF88];
  v3 = STACK[0xF88] - 0x562CCC9FFB6BD0EFLL;
  v4 = LOBYTE(STACK[0x164F]) ^ (v3 < 0x5D4BF742);
  v5 = v3 < STACK[0x1640];
  if (v4)
  {
    v5 = LOBYTE(STACK[0x164F]);
  }

  v6 = STACK[0xF94];
  v7 = off_2A1E5DED0[(247 * (v0 & ~v5)) ^ LODWORD(STACK[0xF94])];
  v8 = STACK[0xF80] + 1;
  LODWORD(STACK[0x6E8]) = STACK[0xF98];
  LODWORD(STACK[0xF5C]) = v6;
  STACK[0xF60] = v2 + 1;
  STACK[0xF68] = v8;
  STACK[0xF70] = v1 + 1;
  return v7();
}

void sub_2979D7F90(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xF70];
  STACK[0xF78] = STACK[0xF70];
  v3 = STACK[0xF68];
  STACK[0xF80] = STACK[0xF68];
  STACK[0xF88] = STACK[0xF60];
  v4 = STACK[0xF5C];
  LODWORD(STACK[0xF94]) = STACK[0xF5C];
  v5 = 8 * (v4 ^ 0x128);
  LODWORD(STACK[0xF98]) = v5;
  v6 = v3 + STACK[0x13A0] - 0x64BF76FFD1F46D68;
  v7 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v6) & 0x7FFFFFFF);
  v8 = 233206231 * ((v7 >> (v5 ^ 0xE8)) ^ v7);
  LOBYTE(STACK[0x5D2]) = byte_297A1CEB0[v8 >> 24] ^ *(v2 + STACK[0x1780] - 0x2CEFADA161AE67BBLL) ^ byte_297A20260[(v8 >> 24) + 6] ^ byte_297A231B0[v8 >> 24] ^ v8 ^ (117 * BYTE3(v8));
  STACK[0x5C8] = v6;
  STACK[0x5C0] = *(a2 + 8 * (v4 ^ 0x4BF));
  JUMPOUT(0x2979D0DC0);
}

void sub_2979D809C()
{
  v0 = LODWORD(STACK[0x1008]);
  v1 = STACK[0x1348];
  JUMPOUT(0x2979CB290);
}

uint64_t sub_2979D80B4()
{
  v0 = LODWORD(STACK[0x10C0]) + 1062337378 - ((2 * LODWORD(STACK[0x10C0]) + 2) & 0x7EA3F6C4) + 1;
  v1 = off_2A1E5DED0[(509 * ((v0 ^ 0x3F51FB60u) < 0x14)) ^ LODWORD(STACK[0x10B4])];
  LODWORD(STACK[0xB88]) = STACK[0x10B8];
  LODWORD(STACK[0xB8C]) = v0;
  v2 = LODWORD(STACK[0x10BC]);
  return v1();
}

uint64_t sub_2979D812C()
{
  v0 = STACK[0xEB0] + 1;
  v1 = STACK[0xEB8];
  v2 = (1991 * (STACK[0xEB8] - 0x6310D5DA34E1AFBBLL < 8)) ^ LODWORD(STACK[0xEC0]);
  LODWORD(STACK[0xE8C]) = STACK[0xEC0];
  v3 = STACK[0xEA8] + 1;
  v4 = off_2A1E5DED0[v2];
  STACK[0xE90] = v1 + 1;
  STACK[0xE98] = v0;
  STACK[0xEA0] = v3;
  v5 = LODWORD(STACK[0xEC4]);
  return v4();
}

uint64_t sub_2979D819C@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  LODWORD(STACK[0x238]) = a2;
  LODWORD(a21) = 1693068224;
  v59 = (v56 - 1011449410);
  v60 = (((2 * &STACK[0x31C]) & 0xFEFFB7B6EF6F6FD8) + 0x80242488484811 + (&STACK[0x31C] ^ 0xFF7FDBDB77B7B629 ^ v59)) % 0x25;
  LODWORD(a24) = -65528;
  v65 = (2 * v60) & 0x68;
  v64 = (v60 ^ 0x59F8FBBFF9F67FF4) - 0x59F8FBBFF9F67FE4;
  v61 = STACK[0x420];
  v62 = STACK[0x2D0];
  v74 = STACK[0x328];
  HIDWORD(a23) = 1335012372;
  LODWORD(a22) = 0;
  HIDWORD(a25) = -1611282526;
  LODWORD(a53) = -1741612385;
  v63.i64[0] = 0x100000001;
  v63.i64[1] = 0x100000001;
  v72 = vdupq_n_s32(0x5160D430u);
  v73 = vnegq_f32(v63);
  v70 = vdupq_n_s32(0xDBD67F12);
  v71 = vdupq_n_s32(0x5BD67F1Eu);
  v68 = vdupq_n_s32(0x1BC226CCu);
  v69 = vdupq_n_s32(0x1F02F886u);
  v66 = vdupq_n_s32(0x34194EBCu);
  v67 = vdupq_n_s32(0x8DE11366);
  return (*(a1 + 8 * v59))(1011449864, a1, 1335012364, 1276156776, STACK[0x17A0], 27, 3018810552, 228, a3, a4, a5, a6, a7, a8, a9, a10, STACK[0x17A0], STACK[0x1208], a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v64, v65, (912661583 * ((2 * ((v57 - 224) & 0x527F8E9557578F60) - (v57 - 224) - 0x527F8E9557578F63) ^ 0x58342CF1BCA9BD68)) ^ 0x36BE790C, 912661583 * ((2 * ((v57 - 224) & 0x527F8E9557578F60) - (v57 - 224) - 0x527F8E9557578F63) ^ 0x58342CF1BCA9BD68), a30, v66.i64[0], v66.i64[1], v67.i64[0], v67.i64[1], v68.i64[0], v68.i64[1], v69.i64[0], v69.i64[1], v70.i64[0], v70.i64[1], v71.i64[0], v71.i64[1], v72.i64[0], v72.i64[1], v73.i64[0], v73.i64[1], STACK[0x17A0], a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_2979D81D0()
{
  v0 = STACK[0xC58] + 1;
  v1 = STACK[0xC50] + 1;
  v2 = STACK[0xC60] + 1;
  v3 = STACK[0xC60] - 0x14F1F00CB0580F74;
  v4 = LOBYTE(STACK[0x1553]) ^ (v3 < 0x2BCEDF85);
  v5 = v3 < STACK[0x1548];
  if (v4)
  {
    v5 = STACK[0x1553];
  }

  v6 = off_2A1E5DED0[(39 * (v5 & 1)) ^ LODWORD(STACK[0xC6C])];
  LODWORD(STACK[0xC34]) = STACK[0xC6C];
  STACK[0xC38] = v2;
  STACK[0xC40] = v0;
  STACK[0xC48] = v1;
  LODWORD(STACK[0x1004]) = STACK[0xC70];
  return v6();
}

void sub_2979D8270(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x1004];
  v3 = 147 * (LODWORD(STACK[0x1004]) ^ 0x27B);
  LODWORD(STACK[0x1008]) = v3;
  v4 = STACK[0x17C8] + STACK[0x1348] - 0x7DDEBFF6ECF3FCB4;
  v5 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ (LODWORD(STACK[0x17C8]) + LODWORD(STACK[0x1348]) + 319554380)) & 0x7FFFFFFF);
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  LOBYTE(STACK[0x5D2]) = byte_297A20260[(v3 - 288) + (v6 >> 24)] ^ byte_297A1CEB0[v6 >> 24] ^ byte_297A231B0[v6 >> 24] ^ v6 ^ (117 * BYTE3(v6));
  STACK[0x5C8] = v4;
  STACK[0x5C0] = *(a2 + 8 * (v2 + 816));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D833C()
{
  v0 = STACK[0xB4C];
  v1 = 998890405 * (LODWORD(STACK[0xB4C]) + LODWORD(STACK[0xB70]) + LODWORD(STACK[0xB74]));
  v2 = ((v1 + (LODWORD(STACK[0xB3C]) ^ 0x8D2E3852) + 610213751) ^ 0x7FEFF6D6) - 2146432726 + ((2 * (v1 + (LODWORD(STACK[0xB3C]) ^ 0x8D2E3852) + 610213751)) & 0xFFDFEDAC);
  v3 = v2 ^ 0xFA11D5ED ^ (v2 % 0x101 - ((2 * (v2 % 0x101)) & 0x3DA) - 99494419);
  v4 = v3 - ((2 * v3) & 0x300F5342) - 1744328287;
  v5 = LODWORD(STACK[0xB48]) ^ 0xE6EEF8D9;
  v6 = 2 * (((v4 ^ 0x9807A9A1) & v5) - ((2 * ((v4 ^ 0x9807A9A1) & v5)) & 0xEE6D590)) - 1897474672;
  v7 = (((v6 ^ 0x8EE6D590) - 2 * ((v6 ^ 0x8EE6D590) & 0x265EA2DC ^ v6 & 8) - 1503747372) ^ 0xA65EA2D4) + (LODWORD(STACK[0xB48]) ^ 0x7EE95178 ^ v4);
  v8 = ((((2 * LODWORD(STACK[0xB48])) ^ 0xCDDDF1B2) - ((2 * ((2 * LODWORD(STACK[0xB48])) ^ 0xCDDDF1B2)) & 0x8B3F2F28) - 979396716) ^ 0x3A60686B) + (v7 ^ 0xEBDFFB8D) + ((2 * v7) & 0xD7BFF71A) + 337642612;
  v9 = (v8 ^ 0x7DF5EFFD) + LODWORD(STACK[0xB40]) + ((2 * v8) & 0xFBEBDFFA);
  v10 = LODWORD(STACK[0xB44]) - 491984708;
  v11 = (v9 - ((2 * v9 + 128317034) & 0x456DFF8) + 704539441) ^ v10;
  v12 = ((v11 ^ 0x22B6FFC) - 2 * ((v11 ^ 0x22B6FFC) & 0xD4489BF ^ v11 & 1) + 222595518) ^ 0xD4489BE;
  v13 = v12 - ((2 * v12 + 2080369312) & 0x5B4A177E) - 341507825;
  LOBYTE(v12) = (v1 + 118) & 0x1E;
  v14 = (v13 ^ 0x2DA50BBF ^ v10) - 1309271759 + (~(2 * (v13 ^ 0x2DA50BBF ^ v10)) | 0x9C13CD9D) + 1;
  v15 = ((((v13 ^ 0x2DA50BBFu) >> v12) - ((2 * ((v13 ^ 0x2DA50BBFu) >> v12)) & 0x6C24549C) + 907160142) ^ 0x36122A4E) >> (v12 ^ 0x1E);
  v16 = v15 - ((2 * v15) & 0xCA) - 27;
  v17 = ((v13 ^ 0xBF ^ v10) + 49 + (~(2 * (v13 ^ 0xBF ^ v10)) | 0x9D) + 1) & 4;
  v18 = (v13 ^ 0x2DA50BBF) + v5 - ((2 * ((v13 ^ 0x2DA50BBF) + v5)) & 0x287E7EE8) - 1807794316;
  v19 = LODWORD(STACK[0xB40]) - 1513559246 + (v13 ^ 0xD25AF440) + 1;
  v20 = (v19 ^ 0x7BBFE777) - 2076174199 + ((2 * v19) & 0xF77FCEEE);
  v21 = (((4 * v13) ^ 0xB6942EFC) - ((2 * ((4 * v13) ^ 0xB6942EFC)) & 0x45FF5968) - 1560302410) ^ v20 ^ v18 ^ 0x36C09327 ^ v16;
  v22 = ((v21 - ((2 * v21) & 0x54304F62) - 1441257551) ^ 0xAA1827B1) + (v14 ^ 0xB1F61931);
  v23 = v22 - ((2 * v22) & 0x20BAA6B6) + 274551643;
  LODWORD(STACK[0xB60]) = v23 ^ 0x7E6F508;
  v24 = v18 ^ v23 ^ 0x7E6F508;
  LODWORD(STACK[0xB64]) = v24;
  v25 = (v23 ^ 0x753732A5) - (v14 & 4) - 2 * (((v23 ^ 0x753732A5) - (v14 & 4)) & 0x6DBDFFD7 ^ (v23 ^ 0x753732A5) & 1) + 1841168342;
  v26 = (v14 & 4 | 0x1F6C387B) ^ v23 ^ 0x7E6F508;
  v27 = (((v23 ^ 0x753732A5) + v20) ^ 0xFF37DFCE) + 1526674688 + ((2 * ((v23 ^ 0x753732A5) + v20)) & 0xFE6FBF9C);
  LODWORD(STACK[0xB68]) = v27;
  v28 = v14 & 0xFFFFFFFB;
  if ((v17 & ~v23) != 0)
  {
    v29 = v25;
  }

  else
  {
    v29 = v26;
  }

  v30 = (v29 ^ v28 ^ 0x2338F998) + 501217221 + ((2 * (v29 ^ v28)) & 0xFEE63EFE ^ 0xB8860CCE);
  LODWORD(STACK[0xB6C]) = v30;
  v31 = off_2A1E5DED0[(56 * (v0 == LODWORD(STACK[0x16CC]))) ^ LODWORD(STACK[0xB50])];
  LODWORD(STACK[0xB24]) = STACK[0xB50];
  LODWORD(STACK[0xB28]) = v0 + 1;
  LODWORD(STACK[0xB2C]) = v24;
  LODWORD(STACK[0xB30]) = v30;
  LODWORD(STACK[0xB34]) = v27;
  LODWORD(STACK[0xB38]) = v23 ^ 0x7E6F508;
  return v31();
}

uint64_t sub_2979D8810()
{
  v3 = LODWORD(STACK[0xB54]) - 74;
  LODWORD(STACK[0x146C]) = LODWORD(STACK[0x16B0]) - LODWORD(STACK[0x16AC]);
  STACK[0x1470] = STACK[0x500];
  v4 = STACK[0xB68];
  v5 = STACK[0xB6C];
  LODWORD(STACK[0xE20]) = v3;
  LODWORD(STACK[0xE24]) = v5;
  LODWORD(STACK[0xE28]) = v4;
  LODWORD(STACK[0xE2C]) = 98223041;
  v9 = STACK[0xE2C];
  LODWORD(STACK[0xE30]) = STACK[0xE2C];
  LODWORD(STACK[0xE34]) = STACK[0xE28];
  LODWORD(STACK[0xE38]) = STACK[0xE24];
  v10 = STACK[0xE20];
  LODWORD(STACK[0xE3C]) = STACK[0xE20];
  LODWORD(STACK[0xE40]) = v10 ^ 0x3C49815A;
  STACK[0x588] = STACK[0x1470] + (v9 - 98223041);
  STACK[0x578] = *(v2 + 8 * (v10 + 1210));
  v6 = ((STACK[0x588] - *(v1 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v0 + 3512);
  v7 = (*(qword_2A13A4DD8 + 32 * *(v6 + 8) + 8))(*v6, &STACK[0x5BF], 1);
  LOBYTE(STACK[0x587]) = STACK[0x5BF];
  return (STACK[0x578])(v7);
}

uint64_t sub_2979D8888()
{
  v11 = (LODWORD(STACK[0x8AC]) + 69486974) | 0x1840808C;
  LODWORD(STACK[0x534]) = 0;
  v1 = STACK[0x4F0];
  v2 = (v11 + 982547425) & 0xA90ABD6E;
  v3 = *(v0 + 8 * (v11 ^ 0x1C64CC82));
  v3(STACK[0x518]);
  v4 = off_2A1E5DED0[v11 - 476365954];
  v4(STACK[0x520]);
  v4(STACK[0x528]);
  v3(v1);
  v4(STACK[0x4F8]);
  v4(STACK[0x4E8]);
  v3(STACK[0x4E0]);
  v5 = (v3)(STACK[0x510]);
  if (LODWORD(STACK[0x534]))
  {
    v6 = -42885;
  }

  else
  {
    v6 = 0;
  }

  v7 = STACK[0x4D8];
  LODWORD(STACK[0x1624]) = v2 - 4 + (v6 ^ 0x81DFBFFB) + ((2 * v6) & 0x3BE30F6) + 2134768102;
  STACK[0x4D8] = v7 - 32;
  v8 = (LODWORD(STACK[0x1594]) ^ 0x5E75FBE7) + (STACK[0x1484] & 0xBCEBF7CE) + 1503724304;
  LODWORD(STACK[0x1628]) = v8;
  LOBYTE(STACK[0x162F]) = v8 < 0xB816FEF7;
  v9 = off_2A1E5DED0[(42 * (v8 == -1206452489)) ^ v2];
  LODWORD(STACK[0xA64]) = v2;
  LODWORD(STACK[0xA68]) = 1992678518;
  return v9(v5);
}

uint64_t sub_2979D88B4()
{
  LODWORD(STACK[0x394]) = STACK[0x774];
  v0 = STACK[0x388];
  LODWORD(STACK[0x778]) = STACK[0x388];
  return (off_2A1E5DED0[(70 * (v0 != 754590252)) ^ LODWORD(STACK[0x74C])])();
}

void sub_2979D88F8(uint64_t a1, uint64_t a2)
{
  v2 = (LODWORD(STACK[0x750]) - 667205029) & 0x27C4BF5F;
  STACK[0x13C8] = STACK[0x380];
  v3 = LODWORD(STACK[0x778]) - 1595359993;
  LODWORD(STACK[0x13D0]) = v3;
  LOBYTE(STACK[0x13D7]) = v3 < (v2 ^ 0xCDE2DA6C);
  v4 = STACK[0x774];
  LODWORD(STACK[0xFDC]) = v2;
  LODWORD(STACK[0xFE0]) = v4;
  LODWORD(STACK[0xFE4]) = 374087582;
  v5 = LODWORD(STACK[0xFE4]);
  LODWORD(STACK[0xFE8]) = v5;
  LODWORD(STACK[0xFEC]) = STACK[0xFE0];
  v6 = STACK[0xFDC];
  LODWORD(STACK[0xFF0]) = STACK[0xFDC];
  LODWORD(STACK[0xFF4]) = v6 + 1011448489;
  v7 = (v5 | ((v5 < 0x164C1F9E) << 32)) + STACK[0x13C8];
  STACK[0xFF8] = v7 - 374087582;
  STACK[0x588] = v7 - 0x3B04667E7128D384;
  v8 = *(a2 + 8 * (v6 + 76));
  JUMPOUT(0x2979DA8ECLL);
}

uint64_t sub_2979D8970()
{
  v0 = STACK[0xC18] + 1;
  v1 = STACK[0xC10] + 1;
  v2 = STACK[0xC20] - 0x5AE36B3053BCA85ELL;
  v3 = v2 < 0x52D57725;
  v4 = v2 >= STACK[0x1820];
  v5 = STACK[0x182B];
  v6 = LOBYTE(STACK[0x182B]) ^ v3;
  v7 = !v4;
  if ((v6 & 1) == 0)
  {
    v5 = v7;
  }

  v8 = off_2A1E5DED0[(1721 * (v5 & 1)) ^ LODWORD(STACK[0xC2C])];
  v9 = STACK[0xC20] + 1;
  LODWORD(STACK[0xBF4]) = STACK[0xC2C];
  STACK[0xBF8] = v9;
  STACK[0xC00] = v0;
  STACK[0xC08] = v1;
  v10 = LODWORD(STACK[0xC30]);
  return v8();
}

uint64_t sub_2979D8A10(uint64_t a1)
{
  v1 = LODWORD(STACK[0x890]);
  v2 = STACK[0x11E0];
  return (off_2A1E5DED0[(54 * (LODWORD(STACK[0x157C]) != LODWORD(STACK[0x149C]))) ^ LODWORD(STACK[0x88C])])(a1, 3283519043);
}

uint64_t sub_2979D8BCC(uint64_t a1)
{
  v1 = LODWORD(STACK[0x9A0]);
  v2 = STACK[0x1760];
  return (off_2A1E5DED0[(995 * (LODWORD(STACK[0x13F4]) == LODWORD(STACK[0x1354]))) ^ LODWORD(STACK[0x99C])])(a1, 3283519043);
}

uint64_t sub_2979D8C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 1;
  v5 = STACK[0x9A4];
  LODWORD(STACK[0x13F4]) = v4;
  v6 = STACK[0x1760];
  return (*(a3 + 8 * (((*(STACK[0x12E8] + (2 * v4 - 1583504806)) == (((v5 - 116) | 8) - 8)) * ((v5 + 357) ^ 0x2D5)) ^ v5)))();
}

uint64_t sub_2979D8C20()
{
  v0 = STACK[0x830] + 1;
  v1 = STACK[0x828] + 1;
  v2 = STACK[0x838] - 0x2B8383EC5CFD132FLL;
  v3 = v2 < 0xED57C78E;
  v4 = v2 >= STACK[0x1630];
  v5 = STACK[0x163F];
  v6 = LOBYTE(STACK[0x163F]) ^ v3;
  v7 = !v4;
  if ((v6 & 1) == 0)
  {
    v5 = v7;
  }

  v8 = off_2A1E5DED0[(57 * (v5 & 1)) ^ LODWORD(STACK[0x844])];
  v9 = STACK[0x838] + 1;
  LODWORD(STACK[0x80C]) = STACK[0x844];
  STACK[0x810] = v9;
  STACK[0x818] = v0;
  STACK[0x820] = v1;
  v10 = LODWORD(STACK[0x848]);
  return v8();
}

void sub_2979D8CC0()
{
  LODWORD(STACK[0x4B0]) = v0;
  v2 = (v1 + 1060455888) & 0xC0CAB9CF ^ LODWORD(STACK[0x183C]) ^ 0xFFFFB417;
  v4 = STACK[0x1670];
  v3 = STACK[0x1840];
  JUMPOUT(0x2979D8D00);
}

uint64_t sub_2979D8FCC()
{
  v0 = STACK[0x690] + 1;
  v1 = STACK[0x688] + 1;
  v2 = STACK[0x698] - 0x59A4647674A72A38;
  v3 = v2 < 0xF10DB5B8;
  v4 = v2 >= STACK[0x12F0];
  v5 = STACK[0x12FB];
  v6 = LOBYTE(STACK[0x12FB]) ^ v3;
  v7 = !v4;
  if ((v6 & 1) == 0)
  {
    v5 = v7;
  }

  v8 = off_2A1E5DED0[(1022 * (v5 & 1)) ^ LODWORD(STACK[0x6A4])];
  v9 = STACK[0x698] + 1;
  LODWORD(STACK[0x66C]) = STACK[0x6A4];
  STACK[0x670] = v9;
  STACK[0x678] = v0;
  STACK[0x680] = v1;
  v10 = LODWORD(STACK[0x6A8]);
  return v8();
}

uint64_t sub_2979D9068()
{
  v0 = LODWORD(STACK[0x704]) + 893003881 - ((2 * LODWORD(STACK[0x704]) + 2) & 0x6A7450D2) + 1;
  v1 = off_2A1E5DED0[((v0 ^ 0x353A2869u) < 0x19) | (2 * ((v0 ^ 0x353A2869u) < 0x19)) | LODWORD(STACK[0x700])];
  LODWORD(STACK[0x6F0]) = STACK[0x6F8];
  LODWORD(STACK[0x6F4]) = v0;
  return v1();
}

uint64_t sub_2979D915C()
{
  v3 = (*(v2 + 8 * (v0 + v1 - 12)))();
  STACK[0x18C8] = STACK[0x1830];
  *STACK[0x1310] = 458219708;
  LODWORD(STACK[0x18C0]) = 144770238;
  v4 = off_2A13A4248[0];
  LOBYTE(STACK[0x19C9]) = -3 * *off_2A13A4248[0] - 55;
  LOBYTE(STACK[0x19CA]) = -3 * v4[1] - 55;
  LOBYTE(STACK[0x19CB]) = -3 * v4[2] + ((7 * (v1 ^ 0x85)) ^ 0x12);
  LOBYTE(STACK[0x19CC]) = -3 * v4[3] - 55;
  LOBYTE(STACK[0x19CD]) = -3 * v4[4] - 55;
  LOBYTE(STACK[0x19CE]) = -3 * v4[5] - 55;
  LOBYTE(STACK[0x19CF]) = -3 * v4[6] - 55;
  LOBYTE(STACK[0x19D0]) = -3 * v4[7] - 55;
  LOBYTE(STACK[0x19D1]) = -3 * v4[8] - 55;
  LOBYTE(STACK[0x19D2]) = -3 * v4[9] - 55;
  LOBYTE(STACK[0x19D3]) = -3 * v4[10] - 55;
  LOBYTE(STACK[0x19D4]) = -3 * v4[11] - 55;
  LOBYTE(STACK[0x19D5]) = -3 * v4[12] - 55;
  LOBYTE(STACK[0x19D6]) = -3 * v4[13] - 55;
  LOBYTE(STACK[0x19D7]) = -3 * v4[14] - 55;
  LOBYTE(STACK[0x19D8]) = -3 * v4[15] - 55;
  LOBYTE(STACK[0x19D9]) = -3 * v4[16] - 55;
  v5 = off_2A13A4248[0];
  LOBYTE(STACK[0x19DA]) = -3 * off_2A13A4248[0][17] - 55;
  LOBYTE(STACK[0x19DB]) = -3 * v5[18] - 55;
  LOBYTE(STACK[0x19DC]) = -3 * v5[19] - 55;
  LOBYTE(STACK[0x19DD]) = -3 * v5[20] - 55;
  LOBYTE(STACK[0x19DE]) = -3 * v5[21] - 55;
  LOBYTE(STACK[0x19DF]) = -3 * v5[22] - 55;
  v6 = (*(v2 + 8 * (v1 ^ 0x3C498606)))(v3);
  v7 = (off_2A1E5DED0[v1 ^ 0x3C49861D])(0, &STACK[0x19C9], v6);
  STACK[0x1490] = v7;
  return (*(v2 + 8 * ((250 * (v7 == 0)) ^ (v1 - 1011449239))))();
}

uint64_t sub_2979D9198(uint64_t a1, uint64_t a2)
{
  v2 = LODWORD(STACK[0xF18]);
  v3 = STACK[0x1738];
  return (off_2A1E5DED0[(1809 * (LODWORD(STACK[0x182C]) == LODWORD(STACK[0x140C]))) ^ LODWORD(STACK[0xF14])])(a1, a2, 3283519043);
}

uint64_t sub_2979D91E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 1;
  v6 = STACK[0xF1C];
  LODWORD(STACK[0x182C]) = v5;
  v7 = STACK[0x1738];
  return (*(a4 + 8 * ((117 * (*(STACK[0x1850] + ((v5 << (((a3 + v6 + 79 + 88) | 8) ^ 0xAA)) + 2111389478)) != 0)) ^ v6)))();
}

void sub_2979D91EC()
{
  v0 = STACK[0x6EC];
  v3 = STACK[0x13A0];
  LODWORD(STACK[0x398]) = 0;
  v1 = LOWORD(STACK[0x1778]) - ((v0 + 1011449343 + 2 * LOWORD(STACK[0x1778]) - 11842) & 0xFFFFC2EC) - 30119;
  v2 = STACK[0x1780];
  JUMPOUT(0x2979F3CF4);
}

uint64_t sub_2979D9208()
{
  v0 = STACK[0x7B0] + 1;
  v1 = STACK[0x7B8];
  v2 = (243 * (STACK[0x7B8] - 0x3A9F0EEAC627C921 > 7)) ^ LODWORD(STACK[0x7C4]);
  LODWORD(STACK[0x78C]) = STACK[0x7C4];
  v3 = STACK[0x7A8] + 1;
  v4 = off_2A1E5DED0[v2];
  STACK[0x790] = v1 + 1;
  STACK[0x798] = v0;
  STACK[0x7A0] = v3;
  v5 = LODWORD(STACK[0x7C8]);
  return v4();
}

void sub_2979D9278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x7A0];
  STACK[0x7A8] = STACK[0x7A0];
  v5 = STACK[0x798];
  STACK[0x7B0] = STACK[0x798];
  STACK[0x7B8] = STACK[0x790];
  v6 = STACK[0x78C];
  LODWORD(STACK[0x7C4]) = STACK[0x78C];
  v7 = (v6 - 345);
  LOBYTE(v4) = *(STACK[0x1228] + (v7 ^ 0xAA31518BC6A20347) + v4);
  LODWORD(STACK[0x7C8]) = v7;
  v8 = v5 + STACK[0x1528] - 0x473EA542B3F91B5ALL;
  LODWORD(v7) = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v8) & 0x7FFFFFFF);
  v9 = 233206231 * (v7 ^ WORD1(v7));
  LOBYTE(STACK[0x5D2]) = byte_297A20DA0[v9 >> 24] ^ v4 ^ byte_297A242D0[(v9 >> 24) + 4] ^ byte_297A1DA20[(v9 >> 24) + 1] ^ v9 ^ (103 * BYTE3(v9));
  STACK[0x5C8] = v8;
  STACK[0x5C0] = *(a4 + 8 * (v6 ^ 0x4FA));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D9378()
{
  v0 = STACK[0xE70] + 1;
  v1 = STACK[0xE68] + 1;
  v2 = STACK[0xE78] - 0x75427ED698E954E2;
  v3 = v2 < 0xAE2BB9EB;
  v4 = v2 >= STACK[0x1680];
  v5 = STACK[0x168F];
  v6 = LOBYTE(STACK[0x168F]) ^ v3;
  v7 = !v4;
  if ((v6 & 1) == 0)
  {
    v5 = v7;
  }

  v8 = off_2A1E5DED0[(101 * (v5 & 1)) ^ LODWORD(STACK[0xE84])];
  v9 = STACK[0xE78] + 1;
  LODWORD(STACK[0xE4C]) = STACK[0xE84];
  STACK[0xE50] = v9;
  STACK[0xE58] = v0;
  STACK[0xE60] = v1;
  v10 = LODWORD(STACK[0xE88]);
  return v8();
}

uint64_t sub_2979D94C0(uint64_t a1, uint64_t a2)
{
  *STACK[0x17A8] = STACK[0x17C0];
  *STACK[0x17B0] = STACK[0x17BC];
  v4 = (((v2 - 1790638767) & 0x6ABAF97F) - 82) | 0x3C498000;
  LODWORD(STACK[0x1998]) = 144770228;
  v5 = *(a2 + 8 * (v4 - 1011449691));
  v6 = 1864516333 * ((((2 * (v3 - 224)) | 0xDB43F566D78F425ALL) - (v3 - 224) - 0x6DA1FAB36BC7A12DLL) ^ 0x1DDA383804EA903DLL);
  *(v3 - 216) = &STACK[0x2800D80E2920F696];
  *(v3 - 208) = v6 + v4 + 948276351;
  *(v3 - 200) = v5 + v6;
  v7 = (*(a2 + 8 * (v4 ^ 0x3C498616)))(v3 - 224);
  return (off_2A1E5DED0[(1523 * (*(v3 - 224) == (((v4 - 1011449584) | 0x42) ^ 0x15A))) ^ ((v4 ^ 0x3C498040) + v4 - 1011449691)])(v7);
}

uint64_t sub_2979D94F4()
{
  v1 = LODWORD(STACK[0xA6C]) + 1;
  v2 = LODWORD(STACK[0xA6C]) + 1095836290;
  v3 = LOBYTE(STACK[0x162F]) ^ (v2 < 0xB816FEF7);
  v4 = v2 < LODWORD(STACK[0x1628]);
  if (v3)
  {
    v4 = LOBYTE(STACK[0x162F]);
  }

  v5 = off_2A1E5DED0[(42 * (v0 & ~v4)) ^ LODWORD(STACK[0xA70])];
  LODWORD(STACK[0xA64]) = STACK[0xA70];
  LODWORD(STACK[0xA68]) = v1;
  v6 = LODWORD(STACK[0xA74]);
  return v5();
}

void sub_2979D9570()
{
  v0 = LODWORD(STACK[0xA68]);
  v1 = v0 < 0x76C5DC76;
  LODWORD(STACK[0xA6C]) = v0;
  v2 = STACK[0xA64];
  LODWORD(STACK[0xA70]) = STACK[0xA64];
  LODWORD(STACK[0xA74]) = 11 * (v2 ^ 0x450);
  v0 += 0x7BF443B9B3A5758ALL;
  STACK[0xA78] = v0;
  v3 = v0 + (v1 << 32) - 0x7BF443BA2A6B5200;
  STACK[0xA80] = v3;
  v4 = STACK[0x1478] + v3;
  STACK[0xA88] = v4;
  STACK[0x588] = v4 - 0x3B04667E5ADCB3E6;
  JUMPOUT(0x2979CB8A4);
}

uint64_t sub_2979D9608()
{
  v0 = STACK[0x1170] + 1;
  v1 = STACK[0x1178];
  v2 = (39 * (STACK[0x1178] - 0x2E6DB1C6301DC63FLL > 7)) ^ LODWORD(STACK[0x1180]);
  LODWORD(STACK[0x114C]) = STACK[0x1180];
  v3 = STACK[0x1168] + 1;
  v4 = off_2A1E5DED0[v2];
  STACK[0x1150] = v1 + 1;
  STACK[0x1158] = v0;
  STACK[0x1160] = v3;
  v5 = LODWORD(STACK[0x1184]);
  return v4();
}

void sub_2979D9678()
{
  v0 = STACK[0x1160];
  STACK[0x1168] = STACK[0x1160];
  v1 = STACK[0x1158];
  STACK[0x1170] = STACK[0x1158];
  STACK[0x1178] = STACK[0x1150];
  v2 = STACK[0x114C];
  LODWORD(STACK[0x1180]) = STACK[0x114C];
  LOBYTE(v0) = *(v0 + STACK[0x1668] - 0x536F709775931119);
  v3 = v1 + STACK[0x1368] - 0x21EA83EFFAA363E8;
  v4 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v3) & 0x7FFFFFFF);
  v5 = 233206231 * (v4 ^ HIWORD(v4));
  v6 = v5 >> (v2 + 83);
  v7 = byte_297A1CEB0[v6];
  LODWORD(STACK[0x1184]) = v2 + 499397463;
  LOBYTE(STACK[0x5D2]) = v7 ^ v0 ^ byte_297A20260[v6 + 6] ^ byte_297A231B0[v6] ^ v5 ^ (117 * v6);
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979D977CLL);
}

uint64_t sub_2979D9788()
{
  LODWORD(STACK[0x3C4]) = STACK[0xEFC];
  v0 = ((LODWORD(STACK[0xECC]) - *STACK[0x17E8]) | (*STACK[0x17E8] - LODWORD(STACK[0xECC]))) >> 31;
  return (off_2A1E5DED0[(v0 | (4 * v0)) ^ (LODWORD(STACK[0xECC]) - 458218701)])();
}

void sub_2979D97D4()
{
  v0 = LODWORD(STACK[0xED0]) ^ 0x4073AF2;
  STACK[0x1740] = STACK[0xED8] - 0x2800D80E2920DCDELL;
  v1 = STACK[0xEFC];
  LODWORD(STACK[0x104C]) = v0;
  LODWORD(STACK[0x1050]) = v1;
  LODWORD(STACK[0x1054]) = 930106465;
  v2 = STACK[0x1054];
  LODWORD(STACK[0x1058]) = STACK[0x1054];
  LODWORD(STACK[0x105C]) = STACK[0x1050];
  v3 = STACK[0x104C];
  LODWORD(STACK[0x1060]) = STACK[0x104C];
  LODWORD(STACK[0x1064]) = v3 ^ 0x3C498461;
  v4 = *STACK[0x1740] + (v2 - 930106465);
  STACK[0x1068] = v4;
  STACK[0x588] = v4;
  JUMPOUT(0x2979D9BD0);
}

uint64_t sub_2979D981C()
{
  v0 = STACK[0xA9C];
  v1 = LODWORD(STACK[0xA9C]) + 1;
  LODWORD(STACK[0xABC]) = v1;
  v0 += 2134358013;
  v2 = LOBYTE(STACK[0x125F]) ^ (v0 < 0xF8E42E4B);
  v3 = v0 < LODWORD(STACK[0x1258]);
  if (v2)
  {
    v3 = STACK[0x125F];
  }

  v4 = off_2A1E5DED0[(104 * (v3 & 1)) ^ LODWORD(STACK[0xAA0])];
  LODWORD(STACK[0xA94]) = STACK[0xAA0];
  LODWORD(STACK[0xA98]) = v1;
  return v4();
}

void sub_2979D989C()
{
  v2 = LODWORD(STACK[0xAA4]) ^ 0xF8;
  v3 = STACK[0xABC];
  v4 = LODWORD(STACK[0xABC]) < (v2 ^ (v0 - 940));
  LODWORD(STACK[0x1188]) = v2;
  LODWORD(STACK[0x118C]) = v3;
  STACK[0x1190] = v4 << 32;
  v5 = STACK[0x1190];
  v6 = LODWORD(STACK[0x118C]);
  LODWORD(STACK[0x119C]) = v6;
  v7 = STACK[0x1188];
  LODWORD(STACK[0x11A0]) = STACK[0x1188];
  v8 = 122 * (v7 ^ 0x4EFu);
  LODWORD(STACK[0x11A4]) = v8;
  v9 = v5 - 2041346659 + v6 + STACK[0x15A0] + v8;
  LODWORD(v6) = 233206231 * (((v9 + 678) ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8240B8C4))) & 0x7FFFFFFF);
  v10 = 233206231 * (v6 ^ WORD1(v6));
  LOBYTE(STACK[0x5D2]) = byte_297A1D1D0[v10 >> 24] ^ byte_297A194F0[(v10 >> 24) + 2] ^ byte_297A19810[v10 >> 24] ^ v10 ^ (57 * BYTE3(v10)) ^ 0x80;
  STACK[0x5C8] = v9 - 0xB757426B61DC56CLL;
  STACK[0x5C0] = *(v1 + 8 * (v7 ^ 0x123));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979D98CC()
{
  v0 = STACK[0xFC0] + 1;
  v1 = STACK[0xFB8] + 1;
  v2 = STACK[0xFC8] - 0x5F82A4504C8F14F9;
  v3 = v2 < 0x25A0BABA;
  v4 = v2 >= STACK[0x16D0];
  v5 = STACK[0x16DF];
  v6 = LOBYTE(STACK[0x16DF]) ^ v3;
  v7 = !v4;
  if ((v6 & 1) == 0)
  {
    v5 = v7;
  }

  v8 = off_2A1E5DED0[(414 * (v5 & 1)) ^ LODWORD(STACK[0xFD4])];
  v9 = STACK[0xFC8] + 1;
  LODWORD(STACK[0xF9C]) = STACK[0xFD4];
  STACK[0xFA0] = v9;
  STACK[0xFA8] = v0;
  STACK[0xFB0] = v1;
  v10 = LODWORD(STACK[0xFD8]);
  return v8();
}

uint64_t sub_2979D996C()
{
  v0 = STACK[0xFE8];
  v1 = LODWORD(STACK[0xFEC]) + 1;
  LODWORD(STACK[0x1000]) = v1;
  v2 = (v0 - 1214857322) < LODWORD(STACK[0x13D0]);
  if ((LOBYTE(STACK[0x13D7]) ^ ((v0 - 1214857322) < 0xCDE2DF33)))
  {
    v2 = STACK[0x13D7];
  }

  v3 = off_2A1E5DED0[(61 * (v2 & 1)) ^ LODWORD(STACK[0xFF0])];
  LODWORD(STACK[0xFDC]) = STACK[0xFF0];
  LODWORD(STACK[0xFE0]) = v1;
  LODWORD(STACK[0xFE4]) = v0 + 1;
  return v3();
}

uint64_t sub_2979D9A6C()
{
  v0 = STACK[0xD80] + 1;
  v1 = STACK[0xD88];
  v2 = (2 * (STACK[0xD88] - 0x1D6C5EA9D99D85E5 > 7)) | (4 * (STACK[0xD88] - 0x1D6C5EA9D99D85E5 > 7)) | LODWORD(STACK[0xD94]);
  LODWORD(STACK[0xD5C]) = STACK[0xD94];
  v3 = STACK[0xD78] + 1;
  v4 = off_2A1E5DED0[v2];
  STACK[0xD60] = v1 + 1;
  STACK[0xD68] = v0;
  STACK[0xD70] = v3;
  v5 = LODWORD(STACK[0xD98]);
  return v4();
}

uint64_t sub_2979D9ADC@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x2BC]) = a2;
  v3 = *(a1 + 8 * v2);
  v5 = STACK[0x1390];
  return (*(a1 + 8 * ((93 * (((v2 - 117) ^ (((v2 + 1011449850) ^ 0x1E0EC653) == 575096419)) & 1)) ^ (v2 + 908))))(STACK[0x15A8], 3283519043);
}

uint64_t sub_2979D9B10()
{
  v0 = STACK[0x1058];
  v1 = LODWORD(STACK[0x1058]) + 1;
  v2 = LODWORD(STACK[0x105C]) + 1;
  LODWORD(STACK[0x1070]) = v2;
  v3 = off_2A1E5DED0[(195 * (v0 - 930106464 < (*STACK[0x17E8] ^ 0x1B4FE0A5u))) ^ LODWORD(STACK[0x1060])];
  LODWORD(STACK[0x104C]) = STACK[0x1060];
  LODWORD(STACK[0x1050]) = v2;
  LODWORD(STACK[0x1054]) = v1;
  return v3();
}

void sub_2979D9BD8()
{
  v1 = (&STACK[0x2300] + v0);
  *v1 = 0x183FEAB2B9147812;
  v1[1] = 0xEE58EF86C187B0C5;
  v1[2] = 0x183FEAB2B9147812;
  v1[3] = 0xEE58EF86C187B0C5;
  JUMPOUT(0x2979D9C24);
}

void sub_2979D9C70(int a1@<W8>)
{
  v2 = STACK[0x14D0];
  v3 = STACK[0x14D0];
  v4 = byte_297A20CA0[*(STACK[0x14D0] + 1) ^ 0xDCLL];
  v5 = byte_297A20AA0[*(STACK[0x14D0] + 4) ^ 3];
  v6 = *(STACK[0x14D0] + 7);
  v7 = byte_297A20AA0[*STACK[0x14D0] ^ 0x73];
  STACK[0x4F8] = 0;
  STACK[0x520] = 0;
  STACK[0x4E0] = 0;
  STACK[0x528] = 0;
  STACK[0x518] = 0;
  v8 = ((-65536 * (v4 ^ 0xD5) + 218038272) ^ 0xCFF0000) - ((2 * ((-65536 * (v4 ^ 0xD5) + 218038272) ^ 0xCFF0000)) & 0x5D1E0000) + 1854909013;
  STACK[0x510] = 0;
  STACK[0x4E8] = 0;
  LODWORD(STACK[0x534]) = 496760140;
  v9 = ((((v7 ^ 0x8A) - ((2 * (v7 ^ 0x8A)) & 0x50)) << 24) + 671088640) ^ 0x28000000;
  v10 = v9 - ((2 * v9) & 0x5A000000) + 760518735;
  v11 = (v6 ^ 0x62CDFFED98DBDE8FLL) - 0x62CDFFED98DBDDEFLL;
  v12 = v11 + ((2 * v6) & 0xFFFFFFFFFFFFFF1FLL) - 2 * (v6 & 0xA0);
  v13 = v2[12];
  v14 = byte_297A1CFD0[(v12 + 3143226473u - 2 * (v12 & 0x3B59D475 ^ v11 & 1) + 11) ^ 0xBB59D469];
  v15 = v2[6];
  if (v5)
  {
    v16 = (v5 ^ 0xFFFFFF9A) - 1;
  }

  else
  {
    v16 = (v5 ^ 0xFFFFFF9A) + 1;
  }

  v17 = (v10 ^ 0x2D54984F | v8 ^ 0x6E8FAA55) - ((2 * (v10 ^ 0x2D54984F | v8 ^ 0x6E8FAA55)) & 0xD63494DA) - 350598547;
  v18 = ((v16 - ((2 * v16) & 0xAC) + 86) ^ 0x2A) - ((2 * ((v16 - ((2 * v16) & 0xAC) + 86) ^ 0x2A)) & 0x5C);
  v19 = (((v18 << 24) + 771751936) ^ 0x2E000000) - ((2 * (((v18 << 24) + 771751936) ^ 0x2E000000)) & 0xC7FFFFFF);
  v20 = byte_297A1CFD0[v2[11] ^ 0xC2];
  v21 = (v19 - 478464693) ^ 0xE37B354B | ((v14 - 125) - ((2 * (v14 - 125)) & 0x18A) - 1130347579) ^ 0xBCA043C5;
  v22 = v21 - ((2 * v21) & 0xE7EBB13A) - 201992035;
  v23 = ((2 * (v13 ^ 0xF9)) & 0x178) + (v13 ^ 0x7BFDEA45);
  v24 = ((((byte_297A20CA0[v2[9] ^ 0x3ELL] ^ 0x64) - ((2 * (byte_297A20CA0[v2[9] ^ 0x3ELL] ^ 0x64)) & 0xBE)) << 16) - 161546240) ^ 0xF65F0000;
  v25 = v23 - 2080238114 + ((((4 * (v13 ^ 0x7BFDEA45)) & 0x18 ^ 0xFFFFFFEF) + 2 * v23 + 405) & 0x132 ^ 0xFFFFFEFF);
  v26 = (v15 ^ 0xFFFFFFB9) - ((2 * (v15 ^ 0xFFFFFFB9) - 106) & 0x9A) + 24;
  v27 = byte_297A1D4D0[v15 ^ 0x57];
  v28 = (v24 - ((2 * v24) & 0x3FC0000) - 1040300331) ^ 0xC1FE46D5 | ((v20 - 125) - ((2 * (v20 - 125)) & 0x130) - 1168433512) ^ 0xBA5B1E98;
  v29 = v28 - ((2 * v28) & 0xC77D65FE) + 1673442047;
  v30 = (((v27 ^ 0xFFFFFF96) + 85) ^ 0xFFFFFFFA) + ((2 * ((v27 ^ 0xFFFFFF96) + 85)) & 0xFFFFFFF4) + ((((2 * v27) ^ 0x2C) - 2 * (((2 * v27) ^ 0x2C) & 0x62 ^ (2 * v27) & 2) - 32) & 0xFFFFFFAA ^ 0x5F) + 7;
  v31 = v2[14];
  v32 = byte_297A20AA0[v25] ^ 0xDA;
  v33 = (((v32 - ((2 * v32) & 0x36)) << 24) - 1694498816) ^ 0x9B000000;
  v34 = ((v2[2] ^ 0xA3) - ((((2 * v2[2]) ^ 0x46) + 22) & 0x6A)) ^ byte_297A1D4D0[v2[2] ^ 0xCDLL];
  v35 = ((((v26 ^ 0x55 ^ (v30 - ((2 * v30) & 0x30) - 104)) - ((2 * (v26 ^ 0x55 ^ (v30 - ((2 * v30) & 0x30) - 104))) & 0xC6)) << 8) - 815111424) ^ 0xCF6A6300;
  v36 = (v35 - ((2 * v35) & 0x2B51D800) - 710349813) ^ 0xD5A8EC0B | v22 ^ 0xF3F5D89D;
  v37 = ((2 * (v31 ^ 0xC0)) & 0xFFFFFF9F) + (v31 ^ 0xBD4D6D2F);
  v38 = ((((v34 & 0xF7 ^ 0xAC ^ ((v34 & 8 | (2 * (v34 & 8)) ^ 0xF7) + 84)) - ((2 * (v34 & 0xF7 ^ 0xAC ^ ((v34 & 8 | (2 * (v34 & 8)) ^ 0xF7) + 84))) & 0x70)) << 8) + 953563136) ^ 0x38D63800;
  LOBYTE(v31) = ((2 * v31) ^ 0x1C) + (v31 ^ 0x71);
  v39 = (v31 - 73);
  v40 = (-308075894 - v37 - ((2056969594 - 2 * v37) & 0x60AB679A)) ^ ((v39 | ((v39 < 0x36) << 8)) - 54) ^ (-1721900649 - (v39 | ((v39 < 0x36) << 8)) - ((435345498 - 2 * ((v39 | ((v39 < 0x36) << 8)) + 217672695)) & 0x32BBC2C2));
  v41 = (v31 - ((2 * v31) & 4) - 50);
  v42 = ((((byte_297A20CA0[v2[5] ^ 0xC1] ^ 0x36) - ((2 * (byte_297A20CA0[v2[5] ^ 0xC1] ^ 0x36)) & 0xF8)) << 16) - 360972288) ^ 0xEA7C0000;
  v43 = v42 - ((2 * v42) & 0x36520000) - 618040334;
  v44 = v2[13];
  v45 = byte_297A20AA0[v2[8] ^ 0xCFLL];
  v46 = v2[10];
  v47 = v41 ^ byte_297A1D4D0[(((v40 ^ 0xA90852AC) - 2 * ((v40 ^ 0xA90852AC) & 0x4AC4E756 ^ v40 & 0x12) + 1254418244) ^ 0x4AC4E744) + 238] ^ 0x7F;
  v48 = (((v47 - ((2 * v47) & 0x194)) << 8) + 1323354624) ^ 0x4EE0CA00;
  v49 = (v48 - ((2 * v48) & 0x55BD3000) + 1792972974) ^ 0x6ADE98AE | (v33 - ((2 * v33) & 0x14000000) + 177318791) ^ 0xA91AB87;
  v50 = v49 - ((2 * v49) & 0xAF0C1E86) + 1468403523;
  v51 = ((2 * v46) & 0xFFFFFFEF) + (v46 ^ 0xDBF3F4F7);
  v52 = ((v36 - ((2 * v36) & 0x3C90D710) + 508062600) ^ 0x1E486B88 | v43 ^ 0xDB2973F2) + 1999002029 - ((2 * ((v36 - ((2 * v36) & 0x3C90D710) + 508062600) ^ 0x1E486B88 | v43 ^ 0xDB2973F2)) & 0xEE4CB3F0) + 75;
  LODWORD(STACK[0x1690]) = v52;
  v53 = ((((v45 ^ 0xAD) - ((2 * (v45 ^ 0xAD)) & 0x99999999)) << 24) - 872415232) ^ 0xCC000000;
  v54 = (v46 ^ 0x24A9042D) - ((2 * (v46 ^ 0x2D)) & 0xFFFFFFFB) + v51 + 1;
  v55 = v51 + 604769033 + ((v54 - ((2 * v54 + 113643020) & 0x6FD2774) - 2099144000) ^ 0x7C816C44);
  v56 = v55 + 1521500238 - ((2 * v55) & 0xB5608140) + 82;
  v57 = (v53 - ((2 * v53) & 0x2E000000) + 392989868) ^ 0x176C8CAC | v29 ^ 0x63BEB2FF;
  v58 = v57 - ((2 * v57) & 0xA96280D0) - 726581144;
  v59 = byte_297A20CA0[v44 ^ 0x60] ^ 0x85;
  v60 = ((v59 - ((2 * v59) & 0x158)) << 16) + 1085014016;
  v61 = ((v60 ^ 0x40AC0000) - ((2 * v60) & 0x6A00000) - 2091885023) ^ 0x83505E21 | v50 ^ 0x57860F43;
  v62 = byte_297A1D4D0[v56 ^ 0x5AB0404E] ^ 0xE9 ^ ((v56 ^ 0xA0) + ((104 - 2 * (v56 ^ 0xA0)) | 7) + 72);
  v63 = (((v62 - ((2 * v62) & 0x12C)) << 8) + 758617600) ^ 0x2D379600;
  v64 = byte_297A1CFD0[*(v3 + 15) ^ 0x36];
  v65 = (v63 - ((2 * v63) & 0x1FE38000) - 1879981884) ^ 0x8FF1C0C4 | v58 ^ 0xD4B14068;
  LODWORD(STACK[0x1694]) = (2 * v65) & 0x520DD06A;
  LODWORD(STACK[0x1698]) = v65 - 1459165131;
  v66 = (2 * v64 - 2 * ((2 * v64 + 16) & 0x66 ^ (2 * v64) & 4) + 115) & 0xFFFFFFF6 ^ 0x62;
  v67 = ((v64 - 120) ^ 0xFFFFFFFB) - ((2 * ((v64 - 120) ^ 0xFFFFFFFB)) & 0x30) - 104;
  v68 = byte_297A1CFD0[*(v3 + 3) ^ 0x55] - ((2 * byte_297A1CFD0[*(v3 + 3) ^ 0x55] + 6) & 0x4C) + 41;
  v69 = (v66 + (v67 ^ 0xFFFFFF98) - ((2 * (v66 + (v67 ^ 0xFFFFFF98))) & 0x9A) - 51) ^ 0xD2;
  v70 = (v69 - ((2 * v69) & 0x26) - 1098380781) ^ 0xBE880A13 | (v61 - ((2 * v61) & 0xDE3C87E6) + 1864254451) ^ 0x6F1E43F3;
  LODWORD(STACK[0x169C]) = (2 * v70) & 0x609FD10;
  LODWORD(STACK[0x16A0]) = v70 - 2096824696;
  v71 = (v68 ^ 0xBB) - ((2 * (v68 ^ 0xBB)) & 0x82) - 712252863;
  LODWORD(STACK[0x16A4]) = v71;
  v71 ^= 0xD58BE241;
  LODWORD(STACK[0x16A8]) = v71;
  v72 = (v38 - ((2 * v38) & 0xD614000) + 1185980596) ^ 0x46B0A0B4;
  v73 = v71 | ((v72 | v17 ^ 0xEB1A4A6D) - ((2 * (v72 | v17 ^ 0xEB1A4A6D)) & 0x79F85464) - 1124324814) ^ 0xBCFC2A32;
  LODWORD(STACK[0x16AC]) = (2 * v73) & 0x31D2E67E;
  LODWORD(STACK[0x16B0]) = v73 + 417952575;
  LODWORD(STACK[0x16B4]) = v52 ^ 0xF101BD38;
  STACK[0x16B8] = STACK[0x508];
  STACK[0x16C0] = STACK[0x500];
  v74 = a1 ^ 0xA2410A5E;
  LODWORD(STACK[0x16C8]) = v74;
  if (v74 <= 1)
  {
    v74 = 1;
  }

  LODWORD(STACK[0x16CC]) = v74 + 1195877895;
  LODWORD(STACK[0xB24]) = v1;
  LODWORD(STACK[0xB28]) = 1195877896;
  LODWORD(STACK[0xB2C]) = 172057078;
  LODWORD(STACK[0xB30]) = -1258342058;
  LODWORD(STACK[0xB34]) = 160670852;
  LODWORD(STACK[0xB38]) = -855467400;
  LODWORD(STACK[0xB3C]) = STACK[0xB38];
  LODWORD(STACK[0xB40]) = STACK[0xB34];
  LODWORD(STACK[0xB44]) = STACK[0xB30];
  LODWORD(STACK[0xB48]) = STACK[0xB2C];
  v75 = STACK[0xB28];
  LODWORD(STACK[0xB4C]) = STACK[0xB28];
  v76 = STACK[0xB24];
  LODWORD(STACK[0xB50]) = STACK[0xB24];
  LODWORD(STACK[0xB54]) = 2 * (v76 ^ 0x307);
  v77 = (v75 - 1195877896);
  STACK[0xB58] = v77;
  STACK[0x588] = STACK[0x16B8] + v77;
  JUMPOUT(0x2979CB8A0);
}

void sub_2979DA7E8()
{
  v0 = LODWORD(STACK[0x8D0]) ^ 0x72EAB93Au;
  v1 = LODWORD(STACK[0x8CC]) ^ 0xE39B2981;
  v2 = LODWORD(STACK[0x8C8]) ^ 0x5B73ADF8u;
  v3 = LODWORD(STACK[0x8B0]) ^ 0x3C498222 ^ LODWORD(STACK[0x8C4]) ^ 0x2D0B5BF5u;
  v4 = LODWORD(STACK[0x8D4]);
  JUMPOUT(0x2979DA844);
}

uint64_t sub_2979DA8F8(uint64_t a1, uint64_t a2)
{
  v4 = STACK[0x754];
  v5 = STACK[0x768] - 1823871950;
  v6 = (LODWORD(STACK[0x774]) | ((LODWORD(STACK[0x774]) < 0x6CB613CEuLL) << 32)) + v5;
  v7 = v2 - LODWORD(STACK[0x1544]) - 614532515;
  v8 = *(a2 + 8 * (LODWORD(STACK[0x754]) - 1011449833));
  STACK[0x538] = *(a2 + 8 * (LODWORD(STACK[0x754]) - 1011449694));
  LODWORD(STACK[0x540]) = v7 - ((2 * v7 + 1455237804) & 0x7C0915E4) - 1453121464;
  STACK[0x568] = v6;
  STACK[0x570] = (v2 | ((v2 < 0x6CB613CE) << 32)) + v5;
  *(v3 - 208) = 1508565502 - 490657303 * ((((v3 - 224) | 0x2A63C413) - ((v3 - 224) & 0x2A63C413)) ^ 0xC795CADE) + v4;
  *(v3 - 216) = &STACK[0x538];
  v9 = (*(a2 + 8 * (v4 - 1011448302)))(v3 - 224);
  v10 = *(v3 - 224);
  return v8(v9);
}

uint64_t sub_2979DAACC()
{
  v2 = LODWORD(STACK[0x35C]) + 1;
  LODWORD(STACK[0x1544]) = LODWORD(STACK[0x394]) - 960655416;
  LODWORD(STACK[0x35C]) = v2;
  return (*(v0 + 8 * ((60 * (v2 == 941099186)) ^ 0x2D4)))();
}

uint64_t sub_2979DAB50()
{
  v2 = (v0 + 1612564044) & 0x9FE238EA;
  v3 = LODWORD(STACK[0x3C4]) + 275686304 + v2;
  v4 = LODWORD(STACK[0x244])++;
  return (*(v1 + 8 * ((483 * (v4 - 1175586933 < ((v2 + 202537751) & 0xF3ED860F ^ 0x203))) ^ v2)))();
}

uint64_t sub_2979DAB8C@<X0>(int a1@<W8>)
{
  v3 = (a1 - 565) | 0x24C;
  v4 = (*(v2 + 8 * (a1 + 986)))(STACK[0x200] - 0x5F9955DC0BC2CB12);
  return (off_2A1E5DED0[((v1 == (v3 ^ 0x27C)) * ((569 * (v3 ^ 0x27E)) ^ 0x27F)) ^ v3])(v4);
}

uint64_t sub_2979DAE10@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v3 - 413519159;
  v7 = 10 * (v5 ^ (v4 + 63));
  v9 = a3 + 2015539965 < 0 && v6 + 618002985 <= v7 - 791;
  v10 = *(a2 + 8 * ((58 * v9) ^ (a1 + v5 - 1402)));
  LODWORD(STACK[0x888]) = v7;
  return v10();
}

void sub_2979DAF08(char a1@<W8>)
{
  v3 = STACK[0x888];
  LODWORD(STACK[0x88C]) = STACK[0x888];
  v4 = (v3 + 1038843193) & 0xFE5DFFB8;
  LODWORD(STACK[0x890]) = v4;
  v5 = v4 - v2 + 1268;
  LODWORD(STACK[0x894]) = v5;
  v6 = ((v5 ^ 0xDD) + v1) | (16 * a1 - ((32 * a1 - 96) & 0xE0) + 65) ^ 0x71;
  v7 = STACK[0x11E0] + (LODWORD(STACK[0x157C]) - 715246980);
  v8 = 233206231 * ((v7 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158))) & 0x7FFFFFFF);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  LOBYTE(STACK[0x5D2]) = byte_297A1BB80[v9 >> 24] ^ byte_297A230A0[(v9 >> 24) + 1] ^ (v6 - ((2 * v6) & 0x94) - 54) ^ byte_297A1E040[v9 >> 24] ^ v9 ^ (9 * BYTE3(v9)) ^ 0xCA;
  STACK[0x5C8] = v7;
  JUMPOUT(0x2979CD988);
}

uint64_t sub_2979DB044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8 * (v4 ^ (v3 + 1583))))(STACK[0x11E0]);
  v11 = STACK[0x11E0];
  v5 = v4 - 1011449863;
  v6 = v4 - 1011449852;
  LODWORD(STACK[0x3FC]) = -45002;
  v7 = LOWORD(STACK[0x1530]) ^ (v4 + 1679);
  v8 = STACK[0x1538];
  v9 = off_2A1E5DED0[v6];
  return (off_2A1E5DED0[v5 ^ 0x39B ^ (1847 * (((((v5 - 32761) ^ v7 ^ 0x7AAA) & ~v5 | (v5 ^ ~((v5 - 32761) ^ v7 ^ 0x7AAA)) & (v5 - ((v5 - 32761) ^ v7 ^ 0x7AAA))) >> ((-51 * (v5 ^ 3)) ^ 0x95)) & 1))])(0);
}

uint64_t sub_2979DB138@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v5 = v4 ^ 0x4B9F26D9;
  v6 = a1 + (v4 ^ 0x4B9F26D9) - 1298;
  v8 = a3 + 1588394362 > (v6 ^ 0xFFFFFEC6) || v3 + v5 - 1376666815 + 1774544276 >= 0;
  v9 = *(a2 + 8 * (((4 * v8) | (8 * v8)) ^ (a1 + v5 - 1435)));
  LODWORD(STACK[0xF20]) = v6;
  return v9();
}

uint64_t sub_2979DB244@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v8 = STACK[0xF20];
  LODWORD(STACK[0xF24]) = STACK[0xF20];
  LODWORD(STACK[0xF28]) = v8 + 80;
  v9 = 37 * (v8 ^ 0x12C);
  LODWORD(STACK[0xF2C]) = v9;
  v10 = (16 * a2 - ((v9 + 1436494903 + (a2 << ((v8 + 80) ^ 0x8C))) & 0x49CD0B60) + 263593307) ^ 0x24E685BB | (v5 - 372939372);
  v11 = STACK[0x1758] + STACK[0x17C0] - 2011744032;
  v12 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v11) & 0x7FFFFFFF);
  v13 = 233206231 * (v12 ^ HIWORD(v12));
  LOBYTE(STACK[0x5D2]) = byte_297A216A0[v13 >> 24] ^ byte_297A1F840[v13 >> 24] ^ byte_297A1AF40[v13 >> 24] ^ v13 ^ (v10 - ((2 * v10) & 0x2E) - 105) ^ (107 * BYTE3(v13)) ^ 0x97;
  STACK[0x5C8] = v11;
  STACK[0x5C0] = *(a1 + 8 * (v8 + 1163));
  v2 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v3 = (*(qword_2A13A4DD8 + 32 * *(((v2 - *(v7 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v6 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v3);
}

uint64_t sub_2979DB3A0()
{
  (*(v2 + 8 * (v1 ^ (v0 + 1583))))(STACK[0x1830]);
  v3 = LODWORD(STACK[0x130C]);
  return (*(v2 + 8 * (((STACK[0x18B0] != 0) * ((v1 ^ 0x3C4983A5) - 832)) ^ (v1 - 1011448923))))();
}

uint64_t sub_2979DB3C0()
{
  v2 = (*(v0 + 8 * (v1 + 714)))(STACK[0x1558]);
  v3 = (v2 ^ 0xFF4D7D6FBCBE5E7FLL) + (((v1 - 829) | 0x4A7u) ^ 0x533B496A620173A6) - (off_2A1E5DED0[v1 ^ 0x500])() + ((2 * v2) & 0xFE9AFADF797CBCFELL) == 0x5288C6DA1EBFD588;
  return (off_2A1E5DED0[(1940 * v3) ^ v1])();
}

uint64_t sub_2979DB510()
{
  LODWORD(STACK[0x224]) = 458219693;
  v2 = (*(v0 + 8 * (v1 + 275)))(8, 0x100004077774924);
  STACK[0x13E8] = v2;
  return (off_2A1E5DED0[((v2 == 0) * (((91 * (v1 ^ 0x532) + 649814823) & 0x19449EAF) - 1106)) ^ v1])();
}

uint64_t sub_2979DB59C()
{
  v2 = STACK[0x13E8];
  *v2 = (HIBYTE(STACK[0x470]) - ((STACK[0x470] >> 55) & 0x88) - 60) ^ 0xC4;
  v2[1] = ((STACK[0x470] >> (v1 ^ 0xE8)) - ((2 * (STACK[0x470] >> (v1 ^ 0xE8))) & 0xB4) - 38) ^ 0xDA;
  v2[2] = ((WORD2(STACK[0x470]) >> 8) - ((STACK[0x470] >> 39) & 0x80) - 64) ^ 0xC0;
  v2[3] = (HIDWORD(STACK[0x470]) - ((STACK[0x470] >> 31) & 0x2C) + 22) ^ 0x16;
  v2[4] = (HIBYTE(LODWORD(STACK[0x470])) - ((LODWORD(STACK[0x470]) >> 23) & 0x28) - 108) ^ 0x94;
  v2[5] = (HIWORD(LODWORD(STACK[0x470])) - ((LODWORD(STACK[0x470]) >> 15) & 8) + 4) ^ 4;
  v2[6] = (BYTE1(LODWORD(STACK[0x470])) - ((LODWORD(STACK[0x470]) >> 7) & 0x86) - 61) ^ 0xC3;
  v2[7] = (LOBYTE(STACK[0x470]) - ((2 * LOBYTE(STACK[0x470])) & 0x34) - 102) ^ 0x9A;
  v3 = (*(v0 + 8 * (v1 + 873)))(8, 50, 1862535657);
  STACK[0x1678] = v3;
  v4 = off_2A1E5DED0[(42 * (v3 != 0)) ^ v1];
  LODWORD(STACK[0xCB4]) = v1;
  STACK[0xCB8] = 0x2143AFD2B010D419;
  STACK[0xCC0] = 0x7F86CEBD7B30B1D4;
  STACK[0xCC8] = 0x45CA8A100B0AEF82;
  return v4();
}

void sub_2979DB76C(int a1@<W8>)
{
  LODWORD(STACK[0x484]) = a1;
  v2 = STACK[0x1678];
  v1 = STACK[0x13E8];
  JUMPOUT(0x2979F9C7CLL);
}

uint64_t sub_2979DB92C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  v14 = 2 * (v10 ^ 0x3A9);
  *(a5 + ((v14 + 96) ^ v12) + v11) = (((v8 ^ 0x9ECF42C4) >> (v9 + a7)) - (((v8 ^ 0x9ECF42C4) >> (v9 + a7) << (v14 + 59)) & a8) - 14) ^ 0xC7;
  return (*(a2 + 8 * (((v11 - ((((v8 ^ 0x9ECF42C4) >> (v9 + a7)) - (((v8 ^ 0x9ECF42C4) >> (v9 + a7) << (v14 + 59)) & a8) - 14) != 199) == a3) * v13) ^ v14)))();
}

uint64_t sub_2979DB9D4(int a1, uint64_t a2)
{
  v6 = (v2 + 877231286) | 0x8000008;
  STACK[0x19F8] = 0xEBE177D072E9C70FLL;
  LODWORD(STACK[0x31C]) = *(v4 + 2140) - 1306450980;
  v7 = dword_2A13A3858;
  STACK[0x538] = *(a2 + 8 * ((v6 - 456484487) ^ 0x211419D9));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v3;
  STACK[0x550] = v7;
  LODWORD(STACK[0x558]) = v6 - 456484416;
  LODWORD(STACK[0x55C]) = v6 - 456484405;
  LODWORD(STACK[0x560]) = v6 - 456484487;
  *(v5 - 216) = &STACK[0x538];
  *(v5 - 208) = 1508565502 - 490657303 * ((((v5 - 224) | 0xE37F38A8) - (v5 - 224) + ((v5 - 224) & 0x1C80C750)) ^ 0xE893665) + v6;
  v8 = (*(a2 + 8 * (v6 ^ (a1 + 1546))))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 224)])(v8);
}

uint64_t sub_2979DBAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34)
{
  v36 = v35 + v34;
  (*(a3 + 8 * (v36 + 2)))(a33 + a34, 0x100004077774924);
  v37 = (off_2A1E5DED0[v36 - 52])();
  v38 = v37 + 1365300272 - ((2 * v37) & 0xA2C1A860);
  LODWORD(xmmword_2A13A3880) = v38;
  DWORD1(xmmword_2A13A3880) = 23457888 - ((2 * (((1812433253 * (v38 ^ 0x20B6219D ^ ((v38 >> 30) | 0x71D6F5AC))) ^ 0x4FFAE3D1) + ((-670100790 * (v38 ^ 0x20B6219D ^ ((v38 >> 30) | 0x71D6F5AC))) & a32) + 1504002374) - 1396722220) & 0xA2C1A860) + ((1812433253 * (v38 ^ 0x20B6219D ^ ((v38 >> 30) | 0x71D6F5AC))) ^ 0x4FFAE3D1) + ((-670100790 * (v38 ^ 0x20B6219D ^ ((v38 >> 30) | 0x71D6F5AC))) & a32);
  return (off_2A1E5DED0[1396])(&xmmword_2A13A3880, 3624866506, 1812433253, 671645704);
}

uint64_t sub_2979DBC54(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int8x16_t a45, int32x4_t a46, int8x16_t a47, int8x16_t a48, int8x16_t a49)
{
  v51 = (v49 + 202292157) & 0xB7A7C4FB;
  v52 = vld1q_dup_f32(&xmmword_2A13A3880);
  v53.i64[0] = 0x8000000080000000;
  v53.i64[1] = 0x8000000080000000;
  v54.i64[0] = 0xC0000000CLL;
  v54.i64[1] = 0xC0000000CLL;
  a2.i64[0] = *(&xmmword_2A13A3880 + 4);
  a2.i32[2] = HIDWORD(xmmword_2A13A3880);
  v55 = vextq_s8(v52, a2, 0xCuLL);
  v56 = a2;
  v56.i32[3] = dword_2A13A3890;
  v57 = veorq_s8(vorrq_s8(vandq_s8(v56, a49), vandq_s8(v55, v53)), a48);
  v58 = veorq_s8(vandq_s8(v57, a47), vandq_s8(v56, v54));
  v59.i32[0] = *(v50 + 4 * (BYTE4(xmmword_2A13A3880) & 1));
  v59.i32[1] = *(v50 + 4 * (BYTE8(xmmword_2A13A3880) & 1));
  v59.i32[2] = *(v50 + 4 * (BYTE12(xmmword_2A13A3880) & 1));
  v59.i32[3] = *(v50 + 4 * (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(*(&xmmword_2A13A3880 + 4 * ((v51 + 520384190) & 0xE0FB94CF ^ 0x5C2)), v59), a45), vshrq_n_u32(vaddq_s32(vsubq_s32(v57, vaddq_s32(v58, v58)), a46), 1uLL));
  return (*(a5 + 8 * v51))(1011449864, 3283519043);
}

uint64_t sub_2979DC66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v15 = (a4 + 4 * (v10 + a5));
  v16 = v10 + 1;
  v17 = (v8 + v14) & 0x7C4FAE8F ^ a7 ^ (*(a4 + 4 * (v16 + a5)) & 0x7FFFFFFE | v9 & 0x80000000);
  *v15 = v15[397] ^ (a8 + 1511) ^ *(v13 + 4 * (*(a4 + 4 * (v16 + a5)) & 1)) ^ ((v17 - 2 * (v17 & v11 ^ *(a4 + 4 * (v16 + a5)) & 0xC) + v12) >> 1);
  return (*(a3 + 8 * ((347 * (v16 == a6 + 3)) ^ v8)))();
}

uint64_t sub_2979DC700@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, int8x16_t *a4@<X3>, int a5@<W8>, int8x16_t a6@<Q1>, int8x16_t a7@<Q4>, int8x16_t a8@<Q5>, int8x16_t a9@<Q6>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int8x16_t a38, int32x4_t a39, int8x16_t a40)
{
  v41 = &a4[56].i32[3];
  v42 = vld1q_dup_f32(v41);
  a6.i64[0] = a4[57].i64[0];
  a6.i32[2] = a4[57].i32[2];
  v43 = vextq_s8(v42, a6, 0xCuLL);
  v44 = a6;
  v44.i32[3] = a4[57].i32[3];
  v45 = veorq_s8(vorrq_s8(vandq_s8(v44, a8), vandq_s8(v43, a7)), a9);
  v46.i32[0] = *(v40 + 4 * (a4[57].i32[0] & 1));
  v46.i32[1] = *(v40 + 4 * (a4[57].i32[1] & 1));
  v46.i32[2] = *(v40 + 4 * (a4[57].i32[2] & 1));
  v46.i32[3] = *(v40 + 4 * (v44.i8[12] & 1));
  *(a4 + 204 * (a5 ^ (a1 + 5)) - 112) = veorq_s8(veorq_s8(veorq_s8(*a4, v46), a38), vshrq_n_u32(vaddq_s32(vsubq_s32(v45, vandq_s8(vaddq_s32(v45, v45), a40)), a39), 1uLL));
  return (*(a3 + 8 * (a2 + a5 - 1368)))();
}

uint64_t sub_2979DC7F0(int a1, int a2, uint64_t a3, _DWORD *a4)
{
  v6 = (*a4 & 0x7FFFFFFE | a4[623] & 0x80000000) ^ 0x5160D430;
  a4[623] = a4[396] ^ *(v5 + 4 * (*a4 & 1)) ^ ((v6 - 763713222 + ((a2 + ((a1 + v4 - 407437575) | 0x18490008) - 1612) ^ (2 * (v6 & 0x527AA93C ^ *a4 & 4)))) >> 1) ^ 0x1BD49393;
  return (*(a3 + 8 * ((1455 * (LODWORD(STACK[0x31C]) > 0x26F)) ^ v4)))();
}

uint64_t sub_2979DC8A4@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  LODWORD(STACK[0x31C]) = 0;
  v33 = LODWORD(STACK[0x31C]);
  LODWORD(STACK[0x31C]) = v33 + 1;
  v34 = *(a3 + 4 * v33);
  *(v31 + 2140) = v33 + 1306450981;
  v35 = (dword_2A13A3858 - 1106834034);
  v36 = *(a2 + 8 * (a4 - 1011449762));
  v37 = (a4 - 1474108353) ^ a31;
  *(v32 - 208) = a31 + a4 - 1474108353 + 51;
  *(v32 - 216) = v35 + a31;
  *(v32 - 184) = v37 ^ 0x47;
  *(v32 - 180) = 922745793 - a31 + a4;
  *(v32 - 224) = v37;
  *(v32 - 220) = a31;
  *(v32 - 200) = a30;
  *(v32 - 192) = v36 ^ a31;
  v38 = (*(a2 + 8 * (a4 + a1)))(v32 - 224);
  return (off_2A1E5DED0[*(v32 - 176)])(v38);
}

void sub_2979DC97C()
{
  if (v0 >= 0x36BE790C)
  {
    v2 = dword_2A13A3858 + 1;
  }

  else
  {
    v2 = v1;
  }

  dword_2A13A3858 = v2;
  JUMPOUT(0x2979DB938);
}

uint64_t sub_2979DCB84@<X0>(uint64_t a1@<X1>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, unint64_t a57)
{
  v59 = v58 - 226;
  STACK[0x420] = v57;
  STACK[0x2D0] = a2;
  STACK[0x328] = a57;
  v61 = (*(a1 + 8 * (v58 ^ 0x6DE)))(a11);
  v62 = (v59 + 69) ^ (((LODWORD(STACK[0x414]) - v59) | (v59 - LODWORD(STACK[0x414]))) < 0);
  return (*(a1 + 8 * (v59 ^ 0x14C ^ ((8 * (v62 & 1)) & 0x7F | ((v62 & 1) << 7)))))(v61);
}

uint64_t sub_2979DCC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, unint64_t a19, uint64_t a20)
{
  LODWORD(STACK[0x18B8]) = STACK[0x360];
  STACK[0x18B0] = a18;
  STACK[0x438] = a19;
  (*(v20 + 8 * (v21 + 1588)))(v22);
  v23 = (off_2A1E5DED0[(v21 + 581) ^ 0x471])(a20);
  return (off_2A1E5DED0[(((3 * ((v21 + 581) ^ 0x293) + 872447366) | 0x8490000) - 1011449444) ^ (v21 + 581)])(v23);
}

uint64_t sub_2979DCD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LODWORD(STACK[0x18A8]) = 144770239;
  v15 = off_2A13A3850;
  LOBYTE(STACK[0x1A3A]) = *off_2A13A3850 ^ 0x26;
  LOBYTE(STACK[0x1A3B]) = v15[1] ^ 0x26;
  LOBYTE(STACK[0x1A3C]) = v15[2] ^ 0x26;
  LOBYTE(STACK[0x1A3D]) = v15[3] ^ 0x26;
  LOBYTE(STACK[0x1A3E]) = v15[4] ^ 0x26;
  LOBYTE(STACK[0x1A3F]) = v15[5] ^ 0x26;
  LOBYTE(STACK[0x1A40]) = (v13 - 122) ^ v15[6] ^ 0x2E;
  LOBYTE(STACK[0x1A41]) = v15[7] ^ (v13 - 92);
  LOBYTE(STACK[0x1A42]) = v15[8] ^ 0x26;
  LOBYTE(STACK[0x1A43]) = v15[9] ^ 0x26;
  LOBYTE(STACK[0x1A44]) = v15[10] ^ 0x26;
  LOBYTE(STACK[0x1A45]) = v15[11] ^ 0x26;
  LOBYTE(STACK[0x1A46]) = v15[12] ^ 0x26;
  LOBYTE(STACK[0x1A47]) = v15[13] ^ 0x26;
  LOBYTE(STACK[0x1A48]) = v15[14] ^ 0x26;
  LOBYTE(STACK[0x1A49]) = v15[15] ^ 0x26;
  LOBYTE(STACK[0x1A4A]) = v15[16] ^ 0x26;
  LOBYTE(STACK[0x1A4B]) = v15[17] ^ 0x26;
  LOBYTE(STACK[0x1A4C]) = v15[18] ^ 0x26;
  LOBYTE(STACK[0x1A4D]) = v15[19] ^ 0x26;
  v16 = off_2A13A3850;
  LOBYTE(STACK[0x1A4E]) = off_2A13A3850[20] ^ 0x26;
  LOBYTE(STACK[0x1A4F]) = v16[21] ^ 0x26;
  LOBYTE(STACK[0x1A50]) = v16[22] ^ 0x26;
  v17 = (*(v14 + 8 * (v13 + 908)))();
  v18 = (off_2A1E5DED0[v13 + 915])(0, &STACK[0x1A3A], v17);
  STACK[0x15B0] = v18;
  return (*(v14 + 8 * ((92 * (v18 == 0)) ^ v13)))(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13);
}

uint64_t sub_2979DCF9C()
{
  v2 = (*(v1 + 8 * (v0 + 664)))(20, 50, 139609578);
  STACK[0x15B8] = v2;
  return (off_2A1E5DED0[((v2 == 0) * (((v0 + 2087571904) & 0xBFDBAA9E ^ 0xFFFF006D) + (v0 ^ 0x3C4983A1))) ^ v0])();
}

void sub_2979DD01C()
{
  STACK[0x1730] = &STACK[0x18C8];
  LODWORD(STACK[0xB88]) = v0;
  LODWORD(STACK[0xB8C]) = 1062337378;
  v1 = STACK[0xB8C];
  LODWORD(STACK[0xB90]) = STACK[0xB8C];
  v2 = STACK[0xB88];
  v3 = (LODWORD(STACK[0xB88]) - 1011449784) | 0x84;
  LODWORD(STACK[0xB94]) = v3;
  LODWORD(STACK[0xB98]) = v2 ^ 0x3C4981A7;
  LODWORD(STACK[0xB9C]) = v2 - 1011448958;
  v4 = *STACK[0x1730];
  v1 *= 2;
  LODWORD(STACK[0xBA0]) = v1;
  v5 = v3 ^ v1 ^ 0x7EA3F610;
  LODWORD(STACK[0xBA4]) = v5;
  v6 = v4 + ((v5 + 371168298 - ((2 * v5) & 0x2C3F2BB0) + 431) ^ ((v2 ^ 0x3C4981A7) + 371168298));
  STACK[0xBA8] = v6;
  STACK[0x588] = v6;
  JUMPOUT(0x2979F5910);
}

uint64_t sub_2979DD140()
{
  v2 = (*(v1 + 8 * (v0 + 777)))(25, 50, 3158783082);
  STACK[0x1830] = v2;
  return (off_2A1E5DED0[(v2 == 0) | v0])();
}

void sub_2979DD1A0()
{
  STACK[0x1858] = &STACK[0x18C8];
  LODWORD(STACK[0x6F0]) = v0 + 1011449040;
  LODWORD(STACK[0x6F4]) = 893003881;
  v1 = STACK[0x6F4];
  v2 = STACK[0x6F0];
  LODWORD(STACK[0x6F8]) = STACK[0x6F0];
  LODWORD(STACK[0x6FC]) = (v2 - 22881297) & 0xC513A6DF;
  LODWORD(STACK[0x700]) = v2 - 1011448968;
  v3 = *STACK[0x1858];
  v1 ^= 0x353A2869u;
  LODWORD(STACK[0x704]) = v1;
  STACK[0x708] = v1;
  v4 = v3 + v1;
  STACK[0x710] = v4;
  STACK[0x588] = v4;
  JUMPOUT(0x2979CB8A0);
}

uint64_t sub_2979DD244(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 8 * (v2 ^ 0x58F)))();
  STACK[0x11E8] = v3;
  return (off_2A1E5DED0[((((v2 + 46) ^ (v3 == 0)) & 1) * (((v2 + 2024608403) & 0x8752E9DB) + 1947)) ^ v2])();
}

void sub_2979DD370()
{
  LODWORD(STACK[0x19A8]) = 458219685;
  STACK[0x19A0] = 0;
  JUMPOUT(0x2979F1C08);
}

uint64_t sub_2979DD3A8(uint64_t a1, uint64_t a2)
{
  v8 = ((v7 - 1818931113 - ((2 * v7 + 2) & 0x272AA0AE) + 1) ^ 0x93955057);
  v9 = v8 - ((v8 << ((v6 ^ (v2 - 55)) - 7)) & 0x46E0374E45FBCE54) + 0x23701BA722FDE72ALL;
  v10 = (*(a2 + 8 * (v6 + 1390)))(STACK[0x11E8]);
  return (off_2A1E5DED0[(725 * ((v10 ^ v5) + v4 + ((v3 + 217) & (2 * v10)) > (v9 ^ 0x23701BA722FDE72AuLL))) ^ (v6 - 127)])();
}

uint64_t sub_2979DD4B8(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 1057;
  v4 = (*(a2 + 8 * (v3 ^ 0x2BD)))(STACK[0x11E8]);
  STACK[0x17A8] = &STACK[0x19A0];
  STACK[0x17B0] = &STACK[0x19A8];
  v5 = (v4 - ((2 * v4) & 0xE38E2E2A) - 238610667) >> 1;
  LODWORD(STACK[0x17BC]) = v3 ^ 0x63AC6FD5 ^ v5;
  v6 = (off_2A1E5DED0[v3 + 327])(v5 ^ 0x78E38B8A, 50, 905063911);
  STACK[0x17C0] = v6;
  return (off_2A1E5DED0[((v6 == 0) * (((v3 + 671152910) | 0x14488000) ^ 0x3C4981F2)) ^ v3])();
}

uint64_t sub_2979DD5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 - 1821455321) & 0x6C9136FF;
  v6 = STACK[0x450];
  v9 = STACK[0x2E8];
  v7 = STACK[0x1298] + STACK[0x1278] - 0x2B63E36587BDB9C3;
  return (*(a4 + 8 * (((((2 * v5) ^ 0x66C5C4FD) == 1724238871) * (v5 - 950)) ^ v5)))(2729239647);
}

uint64_t sub_2979DD7B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  STACK[0x22F8] = 0x9F941164069CA1BBLL;
  LODWORD(STACK[0x418]) = dword_2A13A385C - 1306450980;
  v8 = *(v6 + 2136);
  STACK[0x538] = *(a4 + 8 * ((v4 + 828997114) ^ 0x6DB2FE5ALL));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v5;
  STACK[0x550] = v8;
  LODWORD(STACK[0x558]) = v4 + 828997157;
  LODWORD(STACK[0x55C]) = (v4 + 828997114) ^ 0x10;
  LODWORD(STACK[0x560]) = v4 + 828997114;
  *(v7 - 216) = &STACK[0x538];
  *(v7 - 208) = 1508565502 - 490657303 * ((((v7 - 224) | 0xE6BD3A59) - (v7 - 224) + ((v7 - 224) & 0x1942C5A0)) ^ 0xB4B3494) + v4;
  v9 = (*(a4 + 8 * (a3 + v4 - 49)))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 224)])(v9);
}

uint64_t sub_2979DD8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  (*(a3 + 12904))(a55 + a57, 0x100004077774924);
  v58 = unk_2A1E60F88();
  v59 = v58 + v57 - ((2 * v58) & 0xA2C1A860);
  LODWORD(xmmword_2A13A3880) = v59;
  DWORD1(xmmword_2A13A3880) = 1600181574 - ((2 * (((1812433253 * (v59 ^ (v57 + 1) ^ (v59 >> 30))) ^ 0xF1FFFEEB) + ((-670100790 * (v59 ^ (v57 + 1) ^ (v59 >> 30))) & 0xE3FFFDD6) + 1480415919) + 1803898062) & 0xA2C1A860) + ((1812433253 * (v59 ^ (v57 + 1) ^ (v59 >> 30))) ^ 0xF1FFFEEB) + ((-670100790 * (v59 ^ (v57 + 1) ^ (v59 >> 30))) & 0xE3FFFDD6);
  return (off_2A1E5DED0[(88 * (((0x26Eu >> (__clz(0x26Fu) ^ 0x1F)) & 1) == 0)) ^ 0x3ABu])(2);
}

uint64_t sub_2979DDA50(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = vld1q_dup_f32(&xmmword_2A13A3880);
  v12.i64[0] = 0x8000000080000000;
  v12.i64[1] = 0x8000000080000000;
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  a8.i64[0] = *(&xmmword_2A13A3880 + 4);
  a8.i32[2] = HIDWORD(xmmword_2A13A3880);
  v14 = vextq_s8(v11, a8, 0xCuLL);
  v15 = a8;
  v15.i32[3] = dword_2A13A3890;
  v16 = veorq_s8(vorrq_s8(vandq_s8(v15, vnegq_f32(v13)), vandq_s8(v14, v12)), vdupq_n_s32(0x5160D430u));
  v17.i32[0] = *(&STACK[0x22F8] + (BYTE4(xmmword_2A13A3880) & 1));
  v17.i32[1] = *(&STACK[0x22F8] + (BYTE8(xmmword_2A13A3880) & 1));
  v17.i32[2] = *(&STACK[0x22F8] + (BYTE12(xmmword_2A13A3880) & 1));
  v17.i32[3] = *(&STACK[0x22F8] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v17), vdupq_n_s32(0x4CACF8DBu)), vshrq_n_u32(vaddq_s32(vsubq_s32(v16, vandq_s8(vaddq_s32(v16, v16), vdupq_n_s32(0x28C16580u))), vdupq_n_s32(0x9460B2C1)), 1uLL));
  return (*(a11 + 6040))();
}

uint64_t sub_2979DE544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v11 = v9 + a6;
  v12 = v8 & 0x80000000;
  v13 = v9 + 1;
  v14 = *(a4 + 4 * (v13 + a6));
  v15 = (a4 + 4 * v11);
  LODWORD(v11) = (v14 & (v7 ^ 0x220 ^ (a5 + 855)) | v12) ^ v10;
  *v15 = v15[397] ^ *(&STACK[0x22F8] + (v14 & 1)) ^ ((v11 - ((2 * v11) & 0x28C16580) - 1805602111) >> 1) ^ 0x4CACF8DB;
  return (*(a3 + 8 * (((4 * (v13 != a7 + 3)) | (8 * (v13 != a7 + 3))) ^ v7)))();
}

uint64_t sub_2979DE5E4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W8>)
{
  v5 = (a2 + 908);
  v6 = vld1q_dup_f32(v5);
  v7 = 4 * a3 + 200;
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v9.i64[0] = 0x100000001;
  v9.i64[1] = 0x100000001;
  v10.i64[0] = 0xE0000000ELL;
  v10.i64[1] = 0xE0000000ELL;
  v4.i32[0] = *(a2 + v7);
  v4.i32[1] = *(a2 + 916);
  v4.i32[2] = *(a2 + 920);
  v11 = vextq_s8(v6, v4, 0xCuLL);
  v12 = v4;
  v12.i32[3] = *(a2 + 924);
  v13 = veorq_s8(vorrq_s8(vandq_s8(v12, vnegq_f32(v9)), vandq_s8(v11, v8)), vdupq_n_s32(0x5160D430u));
  v14 = veorq_s8(vandq_s8(v13, vdupq_n_s32(0x3A77511Eu)), vandq_s8(v12, v10));
  v15.i32[0] = *(v3 + 4 * (*(a2 + v7) & 1));
  v15.i32[1] = *(v3 + 4 * (*(a2 + 916) & 1));
  v15.i32[2] = *(v3 + 4 * (*(a2 + 920) & 1));
  v15.i32[3] = *(v3 + 4 * (v12.i8[12] & 1));
  *(a2 + 908) = veorq_s8(veorq_s8(veorq_s8(*a2, v15), vdupq_n_s32(0x5BA70933u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v13, vaddq_s32(v14, v14)), vdupq_n_s32(0xBA775110)), 1uLL));
  return (*(a1 + 8 * a3))();
}

uint64_t sub_2979DE700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t (*a49)(uint64_t), uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x450] = v70;
  STACK[0x2E8] = a70;
  return a49(a51);
}

void sub_2979DE71C()
{
  v1 = STACK[0x62C];
  LODWORD(STACK[0x630]) = STACK[0x62C];
  LODWORD(STACK[0x634]) = v1 + 1011449652;
  LODWORD(STACK[0x638]) = v1 ^ 0x5DA;
  v2 = *STACK[0x1730];
  v3 = LODWORD(STACK[0xBA4]) - 1988826737 + v1 + 1011449652 - 2 * (STACK[0xBA0] & 2 ^ STACK[0xBA4] & 0x45BE76BE) + 3365;
  LODWORD(STACK[0x63C]) = v3;
  v4 = v2 + (v3 ^ 0xC5BE76BC);
  STACK[0x640] = v4;
  STACK[0x588] = v4;
  STACK[0x578] = *(v0 + 8 * (v1 + 1316));
  JUMPOUT(0x2979DE7E8);
}

void sub_2979DE7A4()
{
  LOBYTE(STACK[0x90B]) = STACK[0x587];
  STACK[0x588] = STACK[0x1600] + (LODWORD(STACK[0x8EC]) ^ 0x965E9576);
  STACK[0x578] = off_2A1E5DED0[v0 - 1011448341];
  JUMPOUT(0x2979DE7E8);
}

uint64_t sub_2979DE838()
{
  v0 = STACK[0x587];
  LOBYTE(STACK[0x64F]) = STACK[0x587];
  v1 = 233206231 * ((*(qword_2A13A4DA8 + ((LODWORD(STACK[0x638]) ^ 0xB0F28456) & dword_2A13A4DB4)) ^ LODWORD(STACK[0x640])) & 0x7FFFFFFF);
  v2 = 233206231 * (v1 ^ HIWORD(v1));
  v3 = HIBYTE(v2);
  LODWORD(STACK[0x650]) = v3;
  LOBYTE(STACK[0x657]) = v2;
  STACK[0x658] = v3;
  v4 = byte_297A1BB80[v3];
  v5 = byte_297A230A0[v3 + 1];
  v6 = byte_297A1E040[v3];
  LOBYTE(STACK[0x666]) = HIBYTE(v2);
  v7 = v5 ^ v4 ^ v6 ^ (9 * HIBYTE(v2)) ^ v2 ^ v0;
  LOBYTE(STACK[0x667]) = v7;
  LODWORD(STACK[0x668]) = ((2 * v7) & 0xF37A37FE) + (v7 ^ 0x79BD1BFF);
  v8 = off_2A1E5DED0[(2 * (v7 > 47)) | (8 * (v7 > 47)) | LODWORD(STACK[0x630])];
  LODWORD(STACK[0xF30]) = STACK[0x634];
  LODWORD(STACK[0xF34]) = 2134457487;
  return v8(3283519043);
}

void sub_2979DE9E8(int a1, uint64_t a2)
{
  v3 = LODWORD(STACK[0x668]) + 92020833;
  LODWORD(STACK[0xF30]) = v2;
  LODWORD(STACK[0xF34]) = v3;
  LODWORD(STACK[0xF38]) = STACK[0xF34];
  v4 = STACK[0xF30];
  LODWORD(STACK[0xF3C]) = STACK[0xF30];
  v5 = a1 + v4;
  LODWORD(STACK[0xF40]) = v5 - 1322;
  LODWORD(STACK[0xF44]) = v5 - 1180;
  v6 = *STACK[0x1730] + ((v5 - 1322 + (LODWORD(STACK[0x63C]) ^ 0xC5BE76BD) + 1961887458 + ((2 * (LODWORD(STACK[0x63C]) ^ 0xC5BE76BD)) & 0xE9E01006 ^ 0xFFFFFFFD)) ^ 0x74F00802);
  STACK[0xF48] = v6;
  STACK[0x588] = v6;
  v7 = *(a2 + 8 * (v5 - 89));
  JUMPOUT(0x2979DE7E4);
}

void sub_2979E0130()
{
  v1 = (LODWORD(STACK[0x668]) + 92020826);
  LODWORD(STACK[0xF30]) = v0;
  JUMPOUT(0x2979DEA00);
}

uint64_t sub_2979E0148()
{
  v0 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ LODWORD(STACK[0xBA8])) & 0x7FFFFFFF);
  v1 = 233206231 * (v0 ^ HIWORD(v0));
  LODWORD(v1) = byte_297A20260[(v1 >> 24) + 6] ^ byte_297A1CEB0[v1 >> 24] ^ byte_297A231B0[v1 >> 24] ^ v1 ^ (117 * (v1 >> 24));
  v2 = off_2A1E5DED0[(7 * ((((v1 - LOBYTE(STACK[0x587])) | (LOBYTE(STACK[0x587]) - v1)) >> 7) & 1)) ^ LODWORD(STACK[0xB9C])];
  LODWORD(STACK[0x62C]) = STACK[0xB94];
  v3 = LODWORD(STACK[0xB98]);
  return v2();
}

void sub_2979E0294()
{
  (*(v2 + 8 * (v1 ^ (v0 + 1583))))();
  STACK[0x18C8] = STACK[0x15B8];
  JUMPOUT(0x2979E02CCLL);
}

uint64_t sub_2979E0500()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x5E6)))(STACK[0x1490], 0);
  STACK[0x1250] = v2;
  return (off_2A1E5DED0[((v2 == 0) * ((((v0 + 1038859501) ^ 0x3DEBC28B) + 1011449292) ^ (v0 + 1038859501) & 0xFE5DBF3F)) ^ v0])();
}

uint64_t sub_2979E0578()
{
  v2 = STACK[0x438];
  STACK[0x1270] = STACK[0x438];
  v3 = &STACK[0x1A70] + v2;
  STACK[0x1278] = &STACK[0x1A70] + v2;
  v2 += 64;
  STACK[0x1280] = v2;
  STACK[0x438] = v2;
  STACK[0x1288] = v3;
  v4 = (32 * v3 + 16 * ~v3) & ((v1 ^ 0x6B1u) - 1234);
  STACK[0x1290] = (v4 << ((v1 ^ 0x6Eu) - 44)) + (v4 ^ 0x3B47FFFDA6F6776FLL) - 0x2804CAD002023463;
  v5 = (*(v0 + 8 * (v1 + 972)))(STACK[0x1250]);
  v6 = (v5 ^ 0xE9DFAC0DEF7FF7E9) - (off_2A1E5DED0[v1 ^ 0x410])() + ((2 * v5) & 0xD3BF581BDEFFEFD2) != 0xE9DFAC0DEF7FF7E9;
  return (off_2A1E5DED0[(4 * v6) | (8 * v6) | v1])();
}

uint64_t sub_2979E0684()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x2FD)))(STACK[0x1250]);
  v3 = (v2 ^ 0xB5DB99F9EFEFF91BLL) - (off_2A1E5DED0[v1 + 324])() + ((v2 << (((v1 + 54) | 4u) - 43)) & 0x6BB733F3DFDFF236) == 0xB5DB99F9EFEFF91BLL;
  return (off_2A1E5DED0[(v3 * (((v1 - 1196) | 0x200) - 83)) ^ v1])();
}

uint64_t sub_2979E072C()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x230)))(STACK[0x1250]);
  v3 = v2 - ((2 * v2) & 0xE2E88F48) + 1903445924;
  v4 = v3 ^ ((v1 ^ 0x62A) + 1782293755);
  LODWORD(STACK[0x156C]) = v4;
  LODWORD(STACK[0x274]) = v4;
  v5 = (off_2A1E5DED0[v1 + 545])(v3 ^ 0x717447A4, 0x100004077774924);
  STACK[0x1570] = v5;
  return (off_2A1E5DED0[(104 * (v5 != 0)) ^ v1])();
}

uint64_t sub_2979E07F4()
{
  v3 = (STACK[0x1290] + STACK[0x1278] - 0x1343352DA4F4430CLL);
  *v3 = 0;
  v3[1] = (v2 ^ 0x7BD9FFFF5FDDB63DLL) + ((2 * v2) & 0xBFBB6C7ALL) - 0x7BD9FFFF5FDDB63DLL;
  v4 = STACK[0x1570];
  (*(v0 + 8 * (v1 + 1062)))(STACK[0x1250], 0);
  v5 = (off_2A1E5DED0[v1 + 1083])(v2, 50, 2793011899);
  STACK[0x15F8] = v5;
  return (off_2A1E5DED0[((v5 != 0) * ((((v1 - 190) | 0xA1) - 470) ^ 9)) ^ v1])();
}

uint64_t sub_2979E08DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v5 ^ 0xA27F2DFBEFFBFBFELL) + (v4 & 0x1DFF7F7FCLL) + 0x5D80D2050111B9BALL;
  STACK[0x12F0] = v6;
  LOBYTE(STACK[0x12FB]) = v6 < 0xF10DB5B8;
  v7 = *(a3 + 8 * ((1022 * (v6 != 4044207544)) ^ v3));
  LODWORD(STACK[0x66C]) = v3;
  STACK[0x670] = 0x59A4647765B4DFF1;
  STACK[0x678] = 0x58F44AE0B7EE909FLL;
  STACK[0x680] = 0x5FEA9432EE28A0F2;
  return v7();
}

void sub_2979E09A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x680];
  STACK[0x688] = STACK[0x680];
  v4 = STACK[0x678];
  STACK[0x690] = STACK[0x678];
  STACK[0x698] = STACK[0x670];
  v5 = STACK[0x66C];
  LODWORD(STACK[0x6A4]) = STACK[0x66C];
  LOBYTE(v3) = *(v3 + STACK[0x1570] - 0x5FEA9432EE28A0F2);
  v6 = v4 + STACK[0x15F8] - 0x58F44AE0B7EE909FLL;
  v7 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v6) & 0x7FFFFFFF);
  v8 = 233206231 * ((v7 >> (v5 ^ 0xF9)) ^ v7);
  v9 = byte_297A20DA0[v8 >> 24];
  LODWORD(STACK[0x6A8]) = v5 ^ 0x1FA;
  LOBYTE(STACK[0x5D2]) = v9 ^ v3 ^ byte_297A242D0[(v8 >> 24) + 4] ^ byte_297A1DA20[(v8 >> 24) + 1] ^ v8 ^ (103 * BYTE3(v8));
  STACK[0x5C8] = v6;
  STACK[0x5C0] = *(a3 + 8 * (v5 + 933));
  JUMPOUT(0x2979FAF54);
}

void sub_2979E0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  v24 = LOBYTE(STACK[0x587]);
  LODWORD(STACK[0xB70]) = v24 ^ 0x75EF7FBD;
  LODWORD(STACK[0xB74]) = (2 * v24) & 0x17A;
  v25 = STACK[0x16C0] + STACK[0xB58];
  LOBYTE(STACK[0x5D2]) = v24 ^ 0xB3 ^ (9 * ((LOBYTE(STACK[0xB4C]) + LOBYTE(STACK[0xB54]) - ((2 * LOBYTE(STACK[0xB4C]) + 112) & 0x44) - 2) ^ 0xA2) - ((18 * ((LOBYTE(STACK[0xB4C]) + LOBYTE(STACK[0xB54]) - ((2 * LOBYTE(STACK[0xB4C]) + 112) & 0x44) - 2) ^ 0xA2)) & 0x30) - 104);
  STACK[0x5C8] = v25;
  STACK[0x5C0] = off_2A1E5DED0[a24 + 891];
  JUMPOUT(0x2979D0DC0);
}

void sub_2979E0B38()
{
  v0 = STACK[0x15A0] + STACK[0xAA8];
  v1 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358)) ^ LODWORD(STACK[0xAB0])) & 0x7FFFFFFF);
  v2 = 233206231 * (v1 ^ HIWORD(v1));
  v3 = v0 - 0xB757426B61DC812;
  LODWORD(v0) = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8240B8C4)) ^ v0) & 0x7FFFFFFF);
  v4 = 233206231 * (v0 ^ WORD1(v0));
  LOBYTE(STACK[0x5D2]) = byte_297A19D20[v2 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1BA70[v2 >> 24] ^ byte_297A1BC80[v2 >> 24] ^ byte_297A1D1D0[v4 >> 24] ^ byte_297A194F0[(v4 >> 24) + 2] ^ v2 ^ byte_297A19810[v4 >> 24] ^ (5 * BYTE3(v2)) ^ v4 ^ (57 * BYTE3(v4));
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979E0C54);
}

void sub_2979E0C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v26 = 233206231 * ((*(qword_2A13A4DA8 + ((LODWORD(STACK[0xFF4]) - 1253409056) & dword_2A13A4DB4)) ^ LODWORD(STACK[0xFF8])) & 0x7FFFFFFF);
  v27 = 233206231 * (v26 ^ HIWORD(v26));
  v28 = (LODWORD(STACK[0xFEC]) | ((LODWORD(STACK[0xFEC]) < 0x6CB613CEuLL) << 32)) + STACK[0x768] - 1823871950 - 0x5F9955DC0BC2CB12;
  v29 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358)) ^ (LODWORD(STACK[0xFEC]) + LODWORD(STACK[0x768]) - 1823871950)) & 0x7FFFFFFF);
  v30 = 233206231 * (v29 ^ HIWORD(v29));
  LOBYTE(STACK[0x5D2]) = byte_297A1DB40[v27 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A20480[(v27 >> 24) + 3] ^ byte_297A20370[v27 >> 24] ^ byte_297A19D20[v30 >> 24] ^ byte_297A1BA70[v30 >> 24] ^ v27 ^ byte_297A1BC80[v30 >> 24] ^ (-111 * BYTE3(v27)) ^ v30 ^ (5 * BYTE3(v30));
  STACK[0x5C8] = v28;
  STACK[0x5C0] = off_2A1E5DED0[a26 ^ 0x8Fu];
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979E0DB0()
{
  v0 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFA6821A68)) ^ LODWORD(STACK[0xAE8])) & 0x7FFFFFFF);
  v1 = (v0 ^ HIWORD(v0)) * (LODWORD(STACK[0xAD8]) + 233205776);
  v2 = LODWORD(STACK[0xAD0]);
  return (off_2A1E5DED0[(105 * (((LODWORD(STACK[0xADC]) ^ 0x37) + LOBYTE(STACK[0xAE7])) != (byte_297A193F0[v1 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[(v1 >> 24) + 4] ^ byte_297A244F0[v1 >> 24] ^ v1 ^ (-11 * (((v0 ^ HIWORD(v0)) * (LODWORD(STACK[0xAD8]) + 233205776)) >> 24))))) ^ LODWORD(STACK[0xAD4])])();
}

uint64_t sub_2979E0E98@<X0>(int a1@<W8>)
{
  v4 = v1 ^ v2;
  v5 = a1 + LODWORD(STACK[0xAE0]) - ((2 * LODWORD(STACK[0xAE0]) + 2) & 0xBF683EF6) + 1;
  v6 = *(v3 + 8 * ((((v5 ^ a1) < 7) * (v4 + 732)) ^ v1));
  LODWORD(STACK[0xAC8]) = v4;
  LODWORD(STACK[0xACC]) = v5;
  return v6();
}

uint64_t sub_2979E0EF0()
{
  v3 = STACK[0xACC];
  LODWORD(STACK[0xAD0]) = STACK[0xACC];
  v4 = STACK[0xAC8];
  LODWORD(STACK[0xAD4]) = STACK[0xAC8];
  LODWORD(STACK[0xAD8]) = v4 + 25;
  LODWORD(STACK[0xADC]) = (v4 + 1637288521) & 0x9E68F7DF;
  v3 ^= 0xDFB41F7B;
  v5 = *(&STACK[0x47D] + v3);
  LODWORD(STACK[0xAE0]) = v3;
  LOBYTE(STACK[0xAE7]) = v5;
  v6 = *STACK[0x1340] + v3;
  STACK[0xAE8] = v6;
  STACK[0x588] = v6;
  STACK[0x578] = *(v2 + 8 * (v4 ^ 0x41B));
  v0 = (*(qword_2A13A4DD8 + 32 * *(((STACK[0x588] - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8 + 8) + 8))(*(((STACK[0x588] - qword_2A13A4DC0) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8), &STACK[0x5BF], 1);
  LOBYTE(STACK[0x587]) = STACK[0x5BF];
  return (STACK[0x578])(v0);
}

uint64_t sub_2979E0F78()
{
  v0 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFA6821A68)) ^ LODWORD(STACK[0xDF0])) & 0x7FFFFFFF);
  v1 = (233206231 * ((v0 >> (LODWORD(STACK[0xDE8]) ^ 0x40)) ^ v0)) >> (LODWORD(STACK[0xDE4]) ^ 0x10u);
  return (off_2A1E5DED0[(2020 * ((LOBYTE(STACK[0xDEF]) - 74) != (byte_297A193F0[v1] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[v1 + 4] ^ byte_297A244F0[v1] ^ (-41 * ((v0 >> (LODWORD(STACK[0xDE8]) ^ 0x40)) ^ v0)) ^ (-11 * v1)))) ^ LODWORD(STACK[0xDE0])])();
}

uint64_t sub_2979E1068@<X0>(int a1@<W8>)
{
  v3 = (v1 - 1011449798) | 0x384;
  v4 = LODWORD(STACK[0xDD8]) == (v3 ^ a1);
  return (*(v2 + 8 * (((*STACK[0x12A8] == 0) * ((v3 - 251) ^ v3 ^ 0x106)) ^ v3)))();
}

uint64_t sub_2979E1078()
{
  v5 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ LODWORD(STACK[0x1068])) & 0x7FFFFFFF);
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  v7 = (LODWORD(STACK[0x105C]) | ((LODWORD(STACK[0x105C]) < LODWORD(STACK[0x1064]) + 136373159) << 32)) + STACK[0xEF0] - 1147823023 - 0x5F9955DC0BC2CB12;
  v8 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358)) ^ (LODWORD(STACK[0x105C]) + LODWORD(STACK[0xEF0]) - 1147823023)) & 0x7FFFFFFF);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  LOBYTE(STACK[0x5D2]) = byte_297A216A0[v6 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1F840[v6 >> 24] ^ byte_297A1AF40[v6 >> 24] ^ byte_297A19D20[v9 >> 24] ^ byte_297A1BA70[v9 >> 24] ^ v6 ^ byte_297A1BC80[v9 >> 24] ^ (107 * BYTE3(v6)) ^ v9 ^ (5 * BYTE3(v9));
  STACK[0x5C8] = v7;
  STACK[0x5C0] = qword_2A1E60C38;
  v0 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v1 = (*(qword_2A13A4DD8 + 32 * *(((v0 - *(v4 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v3 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v1);
}

uint64_t sub_2979E11C4()
{
  v0 = STACK[0x10E8];
  v1 = LODWORD(STACK[0x10FC]);
  v2 = (SLODWORD(STACK[0x10FC]) ^ 0xFFFFFFFFB3103350) & dword_2A13A4DB4;
  v3 = 233206231 * ((233206231 * ((*(qword_2A13A4DA8 + v2) ^ LODWORD(STACK[0x1100])) & 0x7FFFFFFF)) ^ ((233206231 * ((*(qword_2A13A4DA8 + v2) ^ LODWORD(STACK[0x1100])) & 0x7FFFFFFFu)) >> 16));
  *(STACK[0x10E8] + STACK[0x1810] - 0x279A5DA3FDCF75F5) = byte_297A1E140[v3 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A19600[(v3 >> 24) + 4] ^ byte_297A24600[v3 >> 24] ^ v3 ^ (-101 * BYTE3(v3));
  v4 = STACK[0x10E0];
  v5 = STACK[0x10F0];
  v6 = STACK[0x10F0] - 0x30361E61F451D962 < STACK[0x1230];
  if ((LOBYTE(STACK[0x123F]) ^ (STACK[0x10F0] - 0x30361E61F451D962 < 0x909B5CEA)))
  {
    v6 = STACK[0x123F];
  }

  v7 = off_2A1E5DED0[((2 * (v6 & 1)) & 0xEF | (16 * (v6 & 1))) ^ LODWORD(STACK[0x10F8])];
  LODWORD(STACK[0x10C4]) = STACK[0x10F8];
  STACK[0x10C8] = v5 + 1;
  STACK[0x10D0] = v0 + 1;
  STACK[0x10D8] = v4 + 1;
  return v7();
}

void sub_2979E1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22)
{
  *a22 = STACK[0x180C];
  v22 = STACK[0x1800];
  JUMPOUT(0x2979E1330);
}

uint64_t sub_2979E137C()
{
  v0 = 233206231 * ((*(qword_2A13A4DA8 + ((SLODWORD(STACK[0x738]) ^ 0xFFFFFFFFC12833F7) & dword_2A13A4DB4)) ^ LODWORD(STACK[0x740])) & 0x7FFFFFFF);
  v1 = 233206231 * (v0 ^ HIWORD(v0));
  return (off_2A1E5DED0[(237 * ((LOBYTE(STACK[0x73F]) - 69) != (byte_297A193F0[v1 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[(v1 >> 24) + 4] ^ byte_297A244F0[v1 >> 24] ^ v1 ^ (-11 * BYTE3(v1))))) ^ LODWORD(STACK[0x730])])();
}

uint64_t sub_2979E1454@<X0>(int a1@<W8>)
{
  v2 = LODWORD(STACK[0x734]) - 1011448954;
  v3 = LODWORD(STACK[0x728]) == v2 + a1;
  return (*(v1 + 8 * (((8 * (*STACK[0x15E8] != 0)) | (16 * (*STACK[0x15E8] != 0))) ^ v2)))();
}

uint64_t sub_2979E1470()
{
  v0 = ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFA6821A68)) ^ LODWORD(STACK[0xB18])) & 0x7FFFFFFF) * (LODWORD(STACK[0xB10]) + 233205510);
  v1 = 233206231 * (v0 ^ HIWORD(v0));
  return (off_2A1E5DED0[(57 * ((LOBYTE(STACK[0xB17]) - 74) == (byte_297A193F0[v1 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[(v1 >> 24) + 4] ^ byte_297A244F0[v1 >> 24] ^ v1 ^ (-11 * BYTE3(v1))))) ^ LODWORD(STACK[0xB08])])();
}

uint64_t sub_2979E1548()
{
  v2 = (v0 + 526);
  v3 = (v2 ^ 0x4DE) + STACK[0xB00];
  v4 = *(v1 + 8 * (((v3 == 1884009192) * (((v0 + 939621679) | 0x4480008) ^ 0x3C498141)) ^ v0));
  LODWORD(STACK[0xAF4]) = v2;
  STACK[0xAF8] = v3;
  return v4();
}

void sub_2979E15C0()
{
  v0 = byte_297A20AA0[(LOBYTE(STACK[0xA02]) ^ LOBYTE(STACK[0xA03])) ^ 0xBF] ^ 0xF8;
  v1 = (((v0 - ((2 * v0) & 0xD0)) << 24) + 1744830464) ^ 0x68000000;
  v2 = v1 - ((2 * v1) & 0xBC000000) + 1586842705;
  v3 = (v2 & 0xF0000000 | STACK[0x9A8] & 0xCCB6D9) ^ 0x50CC3049;
  v211 = STACK[0x9F0] & 0xF6 ^ (LOBYTE(STACK[0x587]) - 1539624099 - ((2 * LOBYTE(STACK[0x587])) & 0xEC) + 25);
  v4 = (v3 - ((2 * v3) & 0x894092) + 89565259) ^ 0x556A84B | (((v2 & 0xF000000 | LODWORD(STACK[0x9E4])) ^ 0xE220804) - ((2 * ((v2 & 0xF000000 | LODWORD(STACK[0x9E4])) ^ 0xE220804)) & 0xC061048) - 960021852) ^ 0xC6C73AA4;
  v5 = byte_297A1D4D0[v211 ^ 0xA43B335D] ^ ((v211 ^ 0xB3) - 53) ^ 0x75;
  v6 = (((v5 - ((2 * v5) & 0x112)) << 8) - 1409513216) ^ 0xABFC8900;
  v7 = (v6 - ((2 * v6) & 0x26E99000) - 747321274) ^ 0xD374C846 | LODWORD(STACK[0x9C0]) ^ 0xAA4D9D24;
  v8 = LODWORD(STACK[0x14A8]) ^ LODWORD(STACK[0x898]) ^ LODWORD(STACK[0x14B0]) ^ LODWORD(STACK[0x14B8]) ^ (v4 - ((2 * v4) & 0x1CAFC41E) - 1906843121);
  v9 = LODWORD(STACK[0x8A4]) ^ LODWORD(STACK[0x9F4]) ^ LODWORD(STACK[0x14B8]) ^ 0x32E5EB43;
  v10 = LODWORD(STACK[0x14A8]) ^ LODWORD(STACK[0x89C]) ^ LODWORD(STACK[0x14B0]) ^ LODWORD(STACK[0x14B8]) ^ (v7 - ((2 * v7) & 0x5D7A13EE) + 784140791);
  HIDWORD(v11) = v8 ^ 0x943B6D2;
  LODWORD(v11) = v8 ^ 0xE0000000;
  v12 = LODWORD(STACK[0x14A8]) ^ LODWORD(STACK[0x14B0]) ^ (v9 - ((2 * v9) & 0xED1E2154) - 158396246);
  v13 = (v11 >> 28) - 524066304 - ((2 * (v11 >> 28)) & 0xC186C408) + 4;
  v14 = LODWORD(STACK[0x8A8]) ^ LODWORD(STACK[0x9CC]) ^ LODWORD(STACK[0x14B0]) ^ LODWORD(STACK[0x14B8]) ^ LODWORD(STACK[0x14A8]) ^ 0xC10B6B9E;
  v15 = v14 - ((2 * v14) & 0xAE8907B2) - 683375655;
  HIDWORD(v11) = v13 ^ 4;
  LODWORD(v11) = v13 ^ 0xE0C36200;
  v16 = STACK[0x11F0];
  v17 = (v11 >> 4) - ((2 * (v11 >> 4)) & 0xFE1219C) + 133206222;
  v18 = STACK[0x1200];
  v19 = STACK[0x1650];
  v20 = STACK[0x12D8];
  v21 = *(STACK[0x1200] + 4 * (BYTE2(v10) ^ 0x55u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v12) ^ 0xC)) ^ *(STACK[0x1650] + 4 * (BYTE1(v15) ^ 0x6Bu)) ^ *(STACK[0x12D8] + 4 * (((v11 >> 4) - ((2 * (v11 >> 4)) & 0x9C) - 50) ^ 0xA0u));
  v22 = *(STACK[0x1200] + 4 * (BYTE2(v12) ^ 0xF2u));
  v23 = *(STACK[0x1200] + 4 * (BYTE2(v15) ^ 0xB2u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v10) ^ 0x1E)) ^ *(STACK[0x12D8] + 4 * (v12 ^ 0xA6u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v17) ^ 0xFBu));
  v24 = *(STACK[0x1650] + 4 * (BYTE1(v12) ^ 0xD0u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v15) ^ 0xA)) ^ *(STACK[0x12D8] + 4 * (v10 ^ 0x8Fu)) ^ *(STACK[0x1200] + 4 * (BYTE2(v17) ^ 0x8Du));
  v25 = *(STACK[0x12D8] + 4 * ((v14 - ((2 * v14) & 0xB2) - 39) ^ 0x68u)) ^ v22 ^ *(STACK[0x1650] + 4 * (BYTE1(v10) ^ 0x1Au)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v17) ^ 0xCB));
  v26 = HIBYTE(v25) ^ 0xA8;
  v27 = BYTE1(v25);
  v28 = *(STACK[0x11F0] + 4 * (HIBYTE(v21) ^ 0x15)) ^ *(STACK[0x1200] + 4 * (BYTE2(v23) ^ 2u)) ^ *(STACK[0x12D8] + 4 * (v25 ^ 0xE7u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v24) ^ 0x12u));
  v29 = *(STACK[0x1200] + 4 * (BYTE2(v25) ^ 0xAAu)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v24) ^ 0x75));
  v30 = v28 & 0xBE84E1B7;
  v31 = (v28 ^ 0xDE055F6) - 1098587721;
  v32 = v31 ^ 0x7EBBACFA;
  v33 = (2 * v31) & 0xFD7759F4;
  v34 = v23 ^ 0x6D;
  v35 = BYTE1(v23) ^ 0xC7;
  v36 = *(STACK[0x1650] + 4 * (v27 ^ 0x63u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v23) ^ 0x13)) ^ *(STACK[0x1200] + 4 * (BYTE2(v24) ^ 0x57u)) ^ *(STACK[0x12D8] + 4 * (v21 ^ 0xF7u));
  v37 = *(STACK[0x11F0] + 4 * v26) ^ *(STACK[0x1200] + 4 * (BYTE2(v21) ^ 0xFEu));
  v38 = *(STACK[0x1650] + 4 * (BYTE1(v21) ^ 0xD5u));
  v39 = v32 + v33 - 2126228730 + ((((2 * v30) ^ 0x1900836C) - ((2 * ((2 * v30) ^ 0x1900836C)) & 0x2812021C) - 1800461937) ^ 0x94AF218F);
  v40 = v29 ^ *(STACK[0x12D8] + 4 * v34) ^ v38;
  v41 = ((((4 * v30) ^ 0x320106D8) - ((2 * ((4 * v30) ^ 0x320106D8)) & 0xC02205A0) - 529188109) ^ 0x1F8AC50C) + (v39 ^ 0x7FFBDDFF) + ((2 * v39) & 0xFFF7BBFE) - 2147212798;
  v42 = v41 - ((2 * v41) & 0xA09EC2FE) + 1347379583;
  HIDWORD(v11) = v42 ^ 0x23E;
  LODWORD(v11) = v42 ^ 0xE2951800;
  v43 = (v11 >> 11) - ((2 * (v11 >> 11)) & 0xEBA10E4C) + 1976600358;
  HIDWORD(v11) = v43 ^ 0x6DC69;
  LODWORD(v11) = v43 ^ 0x1DE00000;
  v44 = (v11 >> 21) - ((2 * (v11 >> 21)) & 0xF0B59972) + 2019216569;
  v45 = v37 ^ *(STACK[0x12D8] + 4 * (v24 ^ 0xEFu)) ^ *(STACK[0x1650] + 4 * v35);
  v46 = *(STACK[0x1200] + 4 * (BYTE2(v36) ^ 0xD6u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v40) ^ 0x61u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v44) ^ 0x78));
  v47 = BYTE2(v44) ^ 0x5A;
  v48 = BYTE1(v44) ^ 0xCC;
  v49 = ((v46 ^ 0x9F35C18) - 2 * ((v46 ^ 0x9F35C18) & 0x41D7FABF ^ v46 & 4) + 1104673467) ^ *(STACK[0x12D8] + 4 * (v45 ^ 0x3Du));
  v50 = *(STACK[0x11F0] + 4 * (HIBYTE(v36) ^ 0x1C)) ^ *(STACK[0x1200] + 4 * (BYTE2(v40) ^ 0x31u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v45) ^ 0x25u)) ^ *(STACK[0x12D8] + 4 * (((v11 >> 21) - ((2 * (v11 >> 21)) & 0x72) - 71) ^ 0xB9u));
  v51 = *(STACK[0x11F0] + 4 * (HIBYTE(v45) ^ 0xC1)) ^ *(STACK[0x12D8] + 4 * (v40 ^ 0xC3u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v36) ^ 0x54u)) ^ *(STACK[0x1200] + 4 * v47);
  v52 = *(STACK[0x1650] + 4 * v48) ^ *(STACK[0x1200] + 4 * (BYTE2(v45) ^ 0x2Bu)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v40) ^ 0xD5)) ^ *(STACK[0x12D8] + 4 * (v36 ^ 0x35u));
  v53 = *(v19 + 4 * (BYTE1(v52) ^ 0x12u)) ^ *(v18 + 4 * (BYTE2(v50) ^ 0x2Du)) ^ *(v20 + 4 * ((*(v16 + 4 * (HIBYTE(v45) ^ 0xC1)) ^ *(v20 + 4 * (v40 ^ 0xC3u)) ^ *(v19 + 4 * (BYTE1(v36) ^ 0x54u)) ^ *(v18 + 4 * v47)) ^ 0x61u)) ^ *(v16 + 4 * (HIBYTE(v49) ^ 0x82));
  v54 = *(STACK[0x11F0] + 4 * (HIBYTE(v50) ^ 0x6A)) ^ *(STACK[0x1200] + 4 * (BYTE2(v52) ^ 0xACu)) ^ *(STACK[0x1650] + 4 * (BYTE1(v51) ^ 0x10u)) ^ *(v20 + 4 * ((((v46 ^ 0x18) - 2 * ((v46 ^ 0x18) & 0xBF ^ v46 & 4) - 69) ^ *(v20 + 4 * (v45 ^ 0x3Du))) ^ 0x10u));
  v55 = *(STACK[0x11F0] + 4 * (HIBYTE(v52) ^ 3)) ^ *(STACK[0x1200] + 4 * (BYTE2(v51) ^ 0x37u)) ^ *(v20 + 4 * (v50 ^ 0x9Fu)) ^ *(STACK[0x1650] + 4 * (((((v46 ^ 0x5C18) - 2 * ((v46 ^ 0x5C18) & 0xFABF ^ v46 & 4) - 1349) ^ *(v20 + 4 * (v45 ^ 0x3Du))) >> 8) ^ 0x81u));
  v56 = *(STACK[0x1650] + 4 * (BYTE1(v50) ^ 0x54u));
  v57 = *(STACK[0x1200] + 4 * (BYTE2(v49) ^ 0x6Fu)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v51) ^ 0x7E)) ^ v56 ^ *(STACK[0x12D8] + 4 * (v52 ^ 0x45u));
  v58 = *(v16 + 4 * (HIBYTE(v53) ^ 0xD5)) ^ *(v18 + 4 * (BYTE2(v54) ^ 0x3Au)) ^ *(STACK[0x1650] + 4 * (BYTE1(v55) ^ 0x2Cu)) ^ *(v20 + 4 * ((*(v18 + 4 * (BYTE2(v49) ^ 0x6Fu)) ^ *(v16 + 4 * (HIBYTE(v51) ^ 0x7E)) ^ v56 ^ *(v20 + 4 * (v52 ^ 0x45u))) ^ 0x79u));
  v59 = *(STACK[0x11F0] + 4 * (HIBYTE(v55) ^ 0xBC)) ^ *(STACK[0x12D8] + 4 * (v54 ^ 0x5Du)) ^ *(STACK[0x1650] + 4 * (BYTE1(v53) ^ 0x6Au)) ^ *(STACK[0x1200] + 4 * (BYTE2(v57) ^ 0xA1u));
  v60 = *(STACK[0x11F0] + 4 * (HIBYTE(v54) ^ 3)) ^ *(STACK[0x1200] + 4 * (BYTE2(v55) ^ 0x26u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v57) ^ 0x1Bu)) ^ *(STACK[0x12D8] + 4 * (v53 ^ 0xDBu));
  v61 = *(STACK[0x1200] + 4 * (BYTE2(v53) ^ 0xA7u)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v57) ^ 0x7E)) ^ *(STACK[0x1650] + 4 * (BYTE1(v54) ^ 0x19u)) ^ *(STACK[0x12D8] + 4 * (v55 ^ 1u));
  v62 = *(STACK[0x11F0] + 4 * (HIBYTE(v58) ^ 0x63)) ^ *(STACK[0x1200] + 4 * (BYTE2(v60) ^ 0xA2u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v59) ^ 0xB1u)) ^ *(STACK[0x12D8] + 4 * (v61 ^ 0x8Fu));
  v63 = *(STACK[0x11F0] + 4 * (HIBYTE(v60) ^ 0xDC)) ^ *(STACK[0x12D8] + 4 * (v58 ^ 0xB3u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v61) ^ 0x8Du)) ^ *(STACK[0x1200] + 4 * (BYTE2(v59) ^ 0x34u));
  v64 = *(STACK[0x11F0] + 4 * (HIBYTE(v59) ^ 0xDC)) ^ *(STACK[0x1200] + 4 * (BYTE2(v61) ^ 0x25u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v58) ^ 0x84u)) ^ *(STACK[0x12D8] + 4 * (v60 ^ 0xF7u));
  v65 = *(STACK[0x1200] + 4 * (BYTE2(v58) ^ 0x28u)) ^ *(STACK[0x1650] + 4 * (BYTE1(v60) ^ 0xBAu)) ^ *(STACK[0x12D8] + 4 * (v59 ^ 0xEFu)) ^ *(STACK[0x11F0] + 4 * (HIBYTE(v61) ^ 0x1E));
  if (LODWORD(STACK[0x92C]) == -1224213004)
  {
    v66 = -1;
  }

  else
  {
    v66 = BYTE2(v65) ^ 0x82;
  }

  v67 = (v66 & (BYTE2(v65) ^ 0x82)) - ((2 * (v66 & (BYTE2(v65) ^ 0x82))) & 0xC);
  v68 = *(v18 + 4 * (BYTE2(v63) ^ 0x93u)) ^ *(v16 + 4 * (HIBYTE(v62) ^ 0xD1)) ^ *(v19 + 4 * (BYTE1(v64) ^ 0x60u));
  HIDWORD(v69) = v68 ^ 0x1F35C18;
  LODWORD(v69) = v68 ^ 0x8000000;
  v70 = (v69 >> 26) - ((2 * (v69 >> 26)) & 0xAD75BF28) + 1455087508;
  HIDWORD(v69) = v70 ^ 0xFFFFFFFB;
  LODWORD(v69) = v70 ^ 0x6E4D0880;
  v71 = (v69 >> 6) - ((2 * (v69 >> 6)) & 0x83D61160) - 1041561424;
  v72 = *(v20 + 4 * (v63 ^ 0xAu)) ^ *(v16 + 4 * (HIBYTE(v64) ^ 0xD1)) ^ *(v19 + 4 * (BYTE1(v62) ^ 0x6Bu));
  v73 = *(v20 + 4 * (v62 ^ 0xE4u)) ^ *(v19 + 4 * (BYTE1(v65) ^ 0xCAu)) ^ *(v16 + 4 * (HIBYTE(v63) ^ 0xB1)) ^ *(v18 + 4 * (BYTE2(v64) ^ 0x17u));
  v74 = BYTE2(v62) ^ 0x81;
  v75 = *(v18 + 4 * ((v67 + 6) ^ 6u));
  v76 = v72 ^ v75;
  HIDWORD(v69) = v72 ^ v75 ^ 0x3CB02719;
  LODWORD(v69) = v72 ^ ~v75;
  v77 = v69 >> 31;
  v78 = *(v16 + 4 * (HIBYTE(v65) ^ 0x73)) ^ *(v18 + 4 * v74) ^ *(v19 + 4 * (BYTE1(v63) ^ 0xF6u));
  HIDWORD(v69) = v77;
  LODWORD(v69) = (v77 - ((2 * v77) & 0x5321FF5C) + 697368494) ^ 0x2990FFAE;
  v79 = ((v69 >> 1) - ((2 * (v69 >> 1)) & 0x90FE8B12) - 931183223) ^ 0xC8000000;
  HIDWORD(v69) = v76 ^ 0xB02719;
  LODWORD(v69) = v79;
  v80 = (v69 >> 26) - ((2 * (v69 >> 26)) & 0xAC06325E) + 1443043631;
  v81 = ((v80 << 26) ^ 0xBC000000) - (((v80 << 26) ^ 0xBC000000) >> 29 << 30) - 499648712;
  v82 = *(v20 + 4 * (v64 ^ 0xFCu));
  v83 = ((v81 & 0x6E260200 ^ (v80 >> 6) & 0x22F3A94 | v81 & 0x9000C420 ^ (v80 >> 6) & 0x1D0C56B) ^ 0x6BAAE04C) - 2 * (((v81 & 0x6E260200 ^ (v80 >> 6) & 0x22F3A94 | v81 & 0x9000C420 ^ (v80 >> 6) & 0x1D0C56B) ^ 0x6BAAE04C) & 0x32C17FB9 ^ (v80 >> 6) & 1) + 851541944;
  v84 = *(v20 + 4 * (v65 ^ 0x6Au));
  v85 = *(v18 + 4 * (BYTE2(v73) ^ 0xC3u)) ^ *(v20 + 4 * ((v82 ^ v78) ^ 0x62u)) ^ *(v16 + 4 * (((v71 ^ v84) >> 24) ^ 0x20)) ^ *(v19 + 4 * (BYTE1(v83) ^ 0x7Fu));
  v86 = *(v18 + 4 * (((v82 ^ v78) >> 16) ^ 0x56u)) ^ *(v16 + 4 * (HIBYTE(v83) ^ 0x32));
  v87 = *(v19 + 4 * (((v71 ^ v84) >> 8) ^ 0x10u));
  v88 = *(v18 + 4 * (BYTE2(v83) ^ 0xC1u)) ^ *(v16 + 4 * (HIBYTE(v73) ^ 0x59)) ^ *(v20 + 4 * ((v71 ^ v84) ^ 0x13u)) ^ *(v19 + 4 * (((v82 ^ v78) >> 8) ^ 0xE0u));
  v89 = (v87 ^ ((v87 ^ 0xA282A800) - ((2 * (v87 ^ 0xA282A800) + 2) & 0x9948668C) - 861654201) ^ 0xFC98428E ^ ((v86 ^ 0x548E0BE7) - (v86 ^ v87 ^ 0x9F35C18) - ((2 * ((v86 ^ 0x548E0BE7) - (v86 ^ v87 ^ 0x9F35C18))) & 0xDA824C6E) + 1832986167)) + (v86 ^ 0x548E0BE7);
  v90 = v89 - ((2 * v89) & 0x7946EF0A) - 1130137723;
  v91 = *(v20 + 4 * (v73 ^ 0xF4u));
  v92 = (v90 ^ ((v91 ^ 0xB5437B01) - (v91 ^ 0x9E00C84 ^ v90) - ((2 * ((v91 ^ 0xB5437B01) - (v91 ^ 0x9E00C84 ^ v90))) & 0xC4E3FB9E) - 495845937) ^ ((v90 ^ 0x435C887A) - ((2 * (v90 ^ 0x435C887A) + 2) & 0x3E6E6B4A) - 1623771738) ^ 0xC1E5BFEF) + (v91 ^ 0xB5437B01);
  v93 = v92 - ((2 * v92) & 0xD36E429A) - 373874355;
  v94 = *(v19 + 4 * (BYTE1(v73) ^ 0x4Au)) ^ *(v16 + 4 * (((v82 ^ v78) >> 24) ^ 0xFB)) ^ *(v18 + 4 * ((BYTE2(v71) ^ BYTE2(v84)) ^ 0x1Bu)) ^ *(v20 + 4 * (v83 ^ 0xB8u));
  if ((v88 & 0x20) != 0)
  {
    v95 = -32;
  }

  else
  {
    v95 = 32;
  }

  v210[0] = v95 + (v88 ^ 0x19) - 2 * ((v95 + (v88 ^ 0x19)) & 0x3D ^ (v88 ^ 0x19) & 5);
  v96 = BYTE1(v93) ^ 0x4F;
  v97 = *(v18 + 4 * (BYTE2(v93) ^ 0x37u));
  v98 = *(v19 + 4 * (BYTE1(v94) ^ 0x8Eu));
  v99 = (*(v19 + 4 * (BYTE1(v73) ^ 0x4Au)) ^ *(v16 + 4 * (((v82 ^ v78) >> 24) ^ 0xFB)) ^ *(v18 + 4 * ((BYTE2(v71) ^ BYTE2(v84)) ^ 0x1Bu)) ^ *(v20 + 4 * (v83 ^ 0xB8u))) ^ 0x6A;
  v100 = (v97 ^ ((v97 ^ 0xD68692F) - ((2 * (v97 ^ 0xD68692F) + 2) & 0xDC3AF0FA) + 1847425150) ^ ((v98 ^ 0x5D7D57FF) - (v97 ^ v98 ^ 0xAFEAC12F) - ((2 * ((v98 ^ 0x5D7D57FF) - (v97 ^ v98 ^ 0xAFEAC12F))) & 0xC1476F38) + 1621342108) ^ 0xFC295931) + (v98 ^ 0x5D7D57FF);
  v101 = HIBYTE(v93) ^ 0x8D;
  v102 = v84 ^ v68;
  HIDWORD(v103) = v73 ^ 0xCB02719;
  LODWORD(v103) = v73 ^ 0xB0000000;
  v104 = *(v16 + 4 * (HIBYTE(v94) ^ 0x9F)) ^ *(v18 + 4 * (BYTE2(v85) ^ 0x97u)) ^ *(v19 + 4 * (BYTE1(v88) ^ 0x63u)) ^ *(v20 + 4 * (v93 ^ 0x45u));
  v105 = (v103 >> 28) - ((2 * (v103 >> 28)) & 0xC9EE1BAA) + 1693912533;
  HIDWORD(v103) = v105 ^ 3;
  LODWORD(v103) = v105 ^ 0x75E6D7A0;
  v106 = (v103 >> 4) - ((2 * (v103 >> 4)) & 0x28FA884A) - 1803729883;
  v107 = (2 * (((v82 ^ 0xB5437B01) & (v78 ^ 0x4E159B63)) - ((2 * ((v82 ^ 0xB5437B01) & (v78 ^ 0x4E159B63))) & 0x2306929C)) - 1559850340) ^ 0xA306929C;
  v108 = (((v82 ^ 0xB5437B01) + (v78 ^ 0x4E159B63)) ^ 0x7FDE7F77) + ((2 * ((v82 ^ 0xB5437B01) + (v78 ^ 0x4E159B63))) & 0xFFBCFEEE) - 2145288054 + ((v107 + 188530753 + (~(2 * v107) | 0xE9867F7F)) ^ 0xF4C33FBF);
  v109 = v108 - ((2 * v108) & 0x83C60436) + 1105396251;
  v110 = *(v19 + 4 * (BYTE1(v76) ^ 0xDu)) ^ *(v16 + 4 * (HIBYTE(v102) ^ 0x54)) ^ *(v18 + 4 * (BYTE2(v106) ^ 0x1Fu)) ^ *(v20 + 4 * (v109 ^ 0x1Bu));
  v111 = *(v18 + 4 * (BYTE2(v102) ^ 0xE0u)) ^ *(v16 + 4 * (HIBYTE(v109) ^ 0x41));
  v112 = *(v16 + 4 * (HIBYTE(v76) ^ 0x34)) ^ *(v18 + 4 * (BYTE2(v109) ^ 0xE3u));
  HIDWORD(v103) = v112 ^ 7;
  LODWORD(v103) = v112 ^ 0x548E0BE0;
  v113 = (v103 >> 5) - ((2 * (v103 >> 5)) & 0x6ADD1734) - 1251046502;
  HIDWORD(v103) = v113 ^ 0x74A34C3;
  LODWORD(v103) = v113;
  v114 = (v103 >> 27) - ((2 * (v103 >> 27)) & 0x21B2956E) + 282675895;
  v115 = BYTE1(v106) ^ 0x34;
  HIDWORD(v103) = v111 ^ 0x2B411;
  LODWORD(v103) = v111 ^ 0x57BC0000;
  v116 = (v103 >> 18) - ((2 * (v103 >> 18)) & 0x8D4EA0EE) - 962113417;
  v117 = *(v18 + 4 * (BYTE2(v76) ^ 0x64u)) ^ *(v20 + 4 * (v102 ^ 0xE7u)) ^ *(v16 + 4 * (HIBYTE(v106) ^ 0x10)) ^ *(v19 + 4 * (BYTE1(v109) ^ 2u));
  v118 = *(v19 + 4 * (BYTE1(v102) ^ 0x9Bu)) ^ v114;
  HIDWORD(v103) = v116 ^ 0x10BB;
  LODWORD(v103) = v116 ^ 0xE95AC000;
  v119 = (v103 >> 14) - ((2 * (v103 >> 14)) & 0x127108A0) + 154698832;
  v120 = *(v20 + 4 * (v106 ^ 0x6Fu));
  HIDWORD(v103) = v118 ^ ~v120;
  LODWORD(v103) = v118 ^ v120 ^ 0xBC708D70;
  v121 = (v103 >> 4) - ((2 * (v103 >> 4)) & 0xBDB78D6A) - 556022091;
  v122 = *(v20 + 4 * (v76 ^ 0x11u)) ^ *(v19 + 4 * v115) ^ v119;
  HIDWORD(v103) = v121 ^ 0x78AD989;
  LODWORD(v103) = v121 ^ 0x20000000;
  v123 = (v103 >> 28) - ((2 * (v103 >> 28)) & 0x44BE367E) + 576658239;
  v124 = ((((v110 ^ 0xB5970EF4) >> (BYTE1(v63) & 0x18 ^ 0x10)) - ((2 * ((v110 ^ 0xB5970EF4) >> (BYTE1(v63) & 0x18 ^ 0x10))) & 0xC5690A84) + 1655997762) ^ 0x62B48542) >> (BYTE1(v63) & 0x18 ^ 8);
  v125 = *(v18 + 4 * (BYTE2(v88) ^ 0xE4u));
  v126 = *(v18 + 4 * (BYTE2(v94) ^ 0xD6u));
  v127 = *(v18 + 4 * (BYTE2(v123) ^ 0xCEu));
  v128 = *(v18 + 4 * (BYTE2(v110) ^ 0x97u));
  v129 = *(v18 + 4 * (BYTE2(v122) ^ 0x60u));
  v130 = *(v18 + 4 * (BYTE2(v117) ^ 0xE4u)) ^ *(v16 + 4 * ((v124 - ((2 * v124) & 0x87) + 67) ^ 0x43u)) ^ *(v20 + 4 * (v122 ^ 0xDDu)) ^ *(v19 + 4 * (BYTE1(v123) ^ 0x86u));
  v131 = HIBYTE(v122) ^ 0xC2;
  v132 = *(v19 + 4 * (BYTE1(v85) ^ 0xEu));
  v133 = *(v19 + 4 * v96);
  v134 = *(v16 + 4 * (HIBYTE(v117) ^ 0x50)) ^ *(v19 + 4 * (BYTE1(v122) ^ 1u)) ^ *(v20 + 4 * (v110 ^ 0xF4u)) ^ v127;
  v135 = *(v20 + 4 * (v85 ^ 0xF4u));
  v136 = *(v20 + 4 * ((v210[0] + 56) ^ 0x18u));
  v137 = *(v16 + 4 * (HIBYTE(v85) ^ 0xB5));
  v138 = *(v16 + 4 * (HIBYTE(v88) ^ 0x50));
  v139 = *(v16 + 4 * v101);
  v140 = v129 ^ *(v19 + 4 * (BYTE1(v110) ^ 0xEu)) ^ *(v20 + 4 * (v117 ^ 0x19u)) ^ *(v16 + 4 * (HIBYTE(v123) ^ 0xD3));
  v141 = *(v20 + 4 * (((v103 >> 28) - ((2 * (v103 >> 28)) & 0x7E) + 63) ^ 0xF8u)) ^ v128 ^ *(v19 + 4 * (BYTE1(v117) ^ 0x63u)) ^ *(v16 + 4 * v131);
  HIDWORD(v103) = v140 ^ 0x2719;
  LODWORD(v103) = v140 ^ 0xBCB00000;
  v142 = (v103 >> 19) - ((2 * (v103 >> 19)) & 0xB9A0E88C) + 1557165126;
  v143 = ((2 * ((v132 ^ v126 ^ v136 ^ 0xC86FD442 ^ v139) - 144013926)) & 0xDFEE64EE) + (((v132 ^ v126 ^ v136 ^ 0xC86FD442 ^ v139) - 144013926) ^ 0x6FF73277);
  HIDWORD(v103) = v142 ^ 0x376;
  LODWORD(v103) = v142 ^ 0x9B6E4000;
  v144 = (v103 >> 13) - ((2 * (v103 >> 13)) & 0xD39041C0) + 1774723296;
  v145 = (v135 ^ v138 ^ 0xD0DD9BFE ^ (v100 - ((2 * v100) & 0xA7B1C136) - 740761445)) + 1102270972;
  v146 = ((2 * v134) & 0xAFFF7D56 ^ 0x9DF7414) + (v134 ^ 0x7B1004E1);
  v147 = ((2 * v145) & 0xFFEA4FCA) + (v145 ^ 0x7FF527E5) - v146;
  v148 = (v125 ^ v137 ^ *(v20 + 4 * v99) ^ 0x40BBFE4A ^ v133) - 159434004;
  v149 = ((2 * v148) & 0xFFBBFDD4) + (v148 ^ 0x7FDDFEEA);
  HIDWORD(v103) = v104 ^ 0x719;
  LODWORD(v103) = v104 ^ 0xBCB02000;
  v150 = (v103 >> 11) - ((2 * (v103 >> 11)) & 0xAEB94A9C) + 1465689422;
  v151 = ((2 * v130) & 0xD73FFC7A ^ 0x8137FC10) + (v130 ^ 0xAB240077);
  HIDWORD(v103) = v150 ^ 0x1CBE6F;
  LODWORD(v103) = v150 ^ 0xDF600000;
  v152 = v149 - v151 - ((2 * (v149 - v151) - 679215450) & 0xC7244692) + 1330913948;
  v153 = (((v103 >> 21) - ((2 * (v103 >> 21)) & 0xF84EBC26) + 2082954771) ^ 0x2B47087A) - 1578532833;
  v154 = ((2 * v153) & 0x9F47FFDE) + (v153 ^ 0xCFA3FFEF);
  v155 = ((2 * v141) & 0xBBFBDF98 ^ 0x9212DA00) + (v141 ^ 0x36F492FD);
  v156 = v154 - v155 - ((2 * (v154 - v155) + 481550266) & 0x6BB01CE0) + 1144127053;
  v157 = ((2 * v144) & 0xD5FF76DE ^ 0x41235494) + (v144 ^ 0xCE6E5525);
  v158 = v143 - v157 - ((2 * (v143 - v157) + 907088368) & 0x2853E316) - 1892517245;
  v159 = (v147 - ((2 * v147 - 1340789364) & 0x8D50ACA4) + 515042584) ^ 0x890C6CA7;
  v160 = 203001467 * v159 - ((406002934 * v159) & 0xE2029A5C) + 1895910702;
  v161 = ((1895436971 * (v152 ^ 0x9AE1E207)) ^ 0x7BB2FB7F) + ((-504093354 * (v152 ^ 0x9AE1E207)) & 0xF765F6FE);
  v162 = v161 - 2075327359;
  v163 = ((2 * (v160 ^ v162)) & 0xFF7EDD26 ^ 0xE2029804) + (v160 ^ v162 ^ 0x8EBE23BD);
  v164 = v160 ^ ((v160 ^ 0x71014D2E) - ((2 * (v160 ^ 0x71014D2E) + 134217726) & 0x6605DD2) - 2093994264) ^ 0xA1DE8288 ^ (v161 - v163 - ((2 * (v161 - v163) + 135849512) & 0xA7DFC29E) - 671329181);
  v165 = v164 - v161 - ((2 * (v164 - v161) - 144312578) & 0xE2029A5C) - 323729235;
  if (v211 == -1539623952)
  {
    v165 = 203001467 * v159 - ((406002934 * v159) & 0xE2029A5C) + 1895910702;
  }

  v166 = 354402571 * (v158 ^ 0xB811AD3) - ((708805142 * (v158 ^ 0xB811AD3)) & 0xCF54CF1A) + 1739220877;
  v167 = -1308167097 * (v156 ^ 0x798E0FD) - ((1678633102 * (v156 ^ 0x798E0FD)) & 0xCFF831BA) - 402908963;
  v168 = ((2 * (v166 ^ v160)) & 0xF7EFCCFE ^ 0x25464446) + (v166 ^ v160 ^ 0xED5CCCDC);
  v169 = 2 * (((v165 ^ 0x71014D2E) & v162) - ((2 * ((v165 ^ 0x71014D2E) & v162)) & 0x3A35C1D4)) - 1170882092;
  v170 = v166 ^ v167;
  v171 = v163 + 4231533 + (((v169 ^ 0xBA35C1D4) - 2 * ((v169 ^ 0xBA35C1D4) & 0x35394AFA ^ v169 & 0xA) + 892947185) ^ 0x35394AF1);
  v172 = ((2 * v171) & 0x83821FDA) + (v171 ^ 0xC1C10FED) + 1044312083;
  v173 = (v167 ^ 0xE7FC18DD ^ v172) - ((2 * (v167 ^ 0xE7FC18DD ^ v172)) & 0x36C02C9E) - 1688201649;
  v174 = ((2 * (v172 + (v166 ^ v167 ^ 0x7FA980AF) + 1)) & 0x1F9BEFE6) + ((v172 + (v166 ^ v167 ^ 0x7FA980AF) + 1) ^ 0x8FCDF7F3);
  v175 = (v170 ^ 0x80567F50 ^ (v174 + 1882327053)) - ((2 * (v170 ^ 0x80567F50 ^ (v174 + 1882327053))) & 0xD659EFC2) - 349374495;
  v176 = v168 + 67639681 + (v173 ^ 0x9B60164F) - ((2 * (v168 + 67639681 + (v173 ^ 0x9B60164F))) & 0x44421A8C) - 1574892218;
  v177 = 204873999 - v168 - ((938462462 - 2 * v168) & 0x207C7520);
  v178 = v174 - v168;
  v179 = ((2 * (v176 ^ (v178 + 1814687372))) & 0x737DFCFE ^ 0x4040188C) + (v176 ^ (v178 + 1814687372) ^ 0x9B9FF339);
  v180 = v151 - v178;
  v181 = (v175 ^ 0xEB2CF7E1) - 968818303 + v179 - ((2 * ((v175 ^ 0xEB2CF7E1) - 968818303 + v179)) & 0x2D12EF60) + 378107824;
  v182 = 2 * (((v181 ^ 0x168977B0) & (v177 ^ 0x103E3A90)) - ((2 * ((v181 ^ 0x168977B0) & (v177 ^ 0x103E3A90))) & 0x3363A94C));
  v183 = v146 - v179;
  v184 = ((((v182 + 862169420) ^ 0x3363A94C) - 2 * (((v182 + 862169420) ^ 0x3363A94C) & 0x3F0A20F2 ^ (v182 + 0x80) & 2) + 1057628400) ^ 0x3F0A20F0) + (v177 ^ 0x6B74D20 ^ v181);
  v185 = ((v157 - 1795144559 + (v181 ^ 0x168977B0)) ^ 0x75EFF55F) + ((2 * (v157 - 1795144559 + (v181 ^ 0x168977B0))) & 0xEBDFEABE) - 1978660190 + ((((2 * v181) ^ 0x2D12EF60) - 2 * (((2 * v181) ^ 0x2D12EF60) & 0x430C29DC ^ (2 * v181) & 0xC) + 1124870609) ^ 0xBCF3D62E);
  v186 = v155 + (v184 ^ 0x91C088) - ((2 * v184) & 0xFEDC7EEE) + 1;
  v187 = v186 - ((2 * v186 + 455730974) & 0xB95D38CC) - 364670987;
  v188 = v180 + 1766131690 + ((642685656 - 2 * v180) | 0x87275553);
  v189 = ((2 * v185) & 0x7FADF996) + (v185 ^ 0x3FD6FCCB) - ((2 * (((2 * v185) & 0x7FADF996) + (v185 ^ 0x3FD6FCCB)) - 263312324) & 0x884490DE) + 1011441293;
  v190 = v183 - 2 * ((v183 + 64191092) & 0x1F2B277B ^ v183 & 1) + 50242030;
  v191 = STACK[0x14D8];
  v192 = STACK[0x1370];
  v193 = STACK[0x1750];
  v194 = v187 ^ 0x66;
  v195 = STACK[0x14C0];
  HIDWORD(v197) = *(STACK[0x1750] + 4 * (BYTE1(v187) ^ 0x9Cu)) ^ *(STACK[0x1370] + 4 * (HIBYTE(v190) ^ 0x9F)) ^ *(STACK[0x14D8] + 4 * (BYTE2(v189) ^ 0x22u)) ^ 0x5C2B16A3;
  LODWORD(v197) = *(STACK[0x1750] + 4 * (BYTE1(v187) ^ 0x9Cu)) ^ *(STACK[0x1370] + 4 * (HIBYTE(v190) ^ 0x9F)) ^ *(STACK[0x14D8] + 4 * (BYTE2(v189) ^ 0x22u));
  v196 = v197 >> 31;
  HIDWORD(v197) = v196;
  LODWORD(v197) = (v196 - ((2 * v196) & 0x70996124) - 1202933614) ^ 0xB84CB092;
  v198 = STACK[0x14AC];
  v199 = STACK[0x14B4];
  v200 = STACK[0x14BC];
  LODWORD(STACK[0x8C8]) = *(STACK[0x14C0] + 4 * (v190 ^ 0x7Au)) ^ *(STACK[0x1750] + 4 * (BYTE1(v188) ^ 0x55u)) ^ *(STACK[0x1370] + 4 * (HIBYTE(v189) ^ 0x44)) ^ LODWORD(STACK[0x14AC]) ^ LODWORD(STACK[0x14B4]) ^ LODWORD(STACK[0x14BC]) ^ *(STACK[0x14D8] + 4 * (BYTE2(v187) ^ 0xAEu));
  v201 = ((v197 >> 1) - ((2 * (v197 >> 1)) & 0x4ABC0E18) - 1520564468) ^ *(v195 + 4 * ((v180 - 22 + ((-40 - 2 * v180) | 0x53)) ^ 0x56u)) ^ v198 ^ v199 ^ v200;
  LODWORD(STACK[0x8D0]) = v201;
  LODWORD(STACK[0xA04]) = v201 >> 8;
  v202 = *(v192 + 4 * (HIBYTE(v187) ^ 0x5C));
  v203 = *(v191 + 4 * (BYTE2(v190) ^ 0x2Bu));
  v204 = *(v193 + 4 * (BYTE1(v190) ^ 0x27u));
  v205 = *(v192 + 4 * (HIBYTE(v188) ^ 0xBC)) ^ v203 ^ *(v193 + 4 * (BYTE1(v189) ^ 0x48u)) ^ LODWORD(STACK[0x14AC]) ^ LODWORD(STACK[0x14B4]) ^ LODWORD(STACK[0x14BC]) ^ *(v195 + 4 * v194);
  v206 = *(v195 + 4 * (v189 ^ 0x6Fu)) ^ *(v191 + 4 * (BYTE2(v188) ^ 0x6Cu));
  LODWORD(STACK[0x8C4]) = v205;
  LODWORD(STACK[0xA08]) = WORD1(v205);
  v207 = v206 ^ v204 ^ v198 ^ v199 ^ v200 ^ v202;
  LODWORD(STACK[0x8CC]) = v207;
  LODWORD(STACK[0xA0C]) = v207 >> 8;
  v208 = byte_297A1E240[(v205 >> 24) ^ 0x22];
  LODWORD(STACK[0xA10]) = LOWORD(STACK[0x8CA]);
  v209 = v208 + ((22 - 2 * v208) | 0xFFFFFFCF) + 13;
  LOBYTE(STACK[0x5D2]) = v209 ^ 0xD6 ^ (v209 >> 1) & 0x12;
  STACK[0x5C8] = STACK[0x9D8];
  JUMPOUT(0x2979E3714);
}

void sub_2979E3720()
{
  v0 = STACK[0x1830] + STACK[0x708];
  v1 = *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158));
  v2 = 233206231 * ((233206231 * ((v1 ^ LODWORD(STACK[0x710])) & 0x7FFFFFFF)) ^ ((233206231 * ((v1 ^ LODWORD(STACK[0x710])) & 0x7FFFFFFFu)) >> 16));
  v3 = v2 >> (LODWORD(STACK[0x6FC]) + 65);
  v4 = 233206231 * ((233206231 * ((v1 ^ v0) & 0x7FFFFFFF)) ^ ((233206231 * ((v1 ^ v0) & 0x7FFFFFFF)) >> 16));
  LOBYTE(STACK[0x5D2]) = byte_297A1BB80[v3] ^ LOBYTE(STACK[0x587]) ^ byte_297A230A0[v3 + 1] ^ byte_297A1E040[v3] ^ byte_297A1BB80[v4 >> 24] ^ byte_297A230A0[(v4 >> 24) + 1] ^ v2 ^ byte_297A1E040[v4 >> 24] ^ v4 ^ (9 * v3) ^ (9 * BYTE3(v4));
  STACK[0x5C8] = v0;
  JUMPOUT(0x2979E380CLL);
}

uint64_t sub_2979E3820()
{
  v0 = 233206231 * ((LODWORD(STACK[0xDB8]) ^ 0x7FFFFE8F) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFA6821A68)) ^ LODWORD(STACK[0xDC0])));
  v1 = (v0 ^ HIWORD(v0)) * (LODWORD(STACK[0xDB4]) ^ 0x31AFF1DF);
  return (off_2A1E5DED0[(21 * ((LOBYTE(STACK[0xDBF]) - 69) != (byte_297A193F0[v1 >> 24] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[(v1 >> 24) + 4] ^ byte_297A244F0[v1 >> 24] ^ v1 ^ (-11 * (((v0 ^ HIWORD(v0)) * (LODWORD(STACK[0xDB4]) ^ 0x31AFF1DF)) >> 24))))) | LODWORD(STACK[0xDB0])])();
}

void sub_2979E3920()
{
  v0 = STACK[0x1598] + STACK[0xA80];
  v1 = 233206231 * ((LODWORD(STACK[0xA74]) ^ 0x7FFFFBF5) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFF193FEE8)) ^ LODWORD(STACK[0xA88])));
  LOBYTE(STACK[0x5D2]) = byte_297A218A0[STACK[0xA78] & 0xF | (16 * ((233206231 * (v1 ^ HIWORD(v1))) >> 24))] ^ LOBYTE(STACK[0x587]) ^ (-41 * (v1 ^ BYTE2(v1)));
  STACK[0x5C8] = v0;
  v2 = ((-77 * ((qword_2A13A4260 - qword_2A13A4278) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 - qword_2A13A4278) ^ 0xC9))] ^ 0x46]) + 1170;
  JUMPOUT(0x2979E3A18);
}

uint64_t sub_2979E3A2C()
{
  v0 = LOBYTE(STACK[0x587]);
  v1 = STACK[0xE34];
  v2 = LODWORD(STACK[0xE34]) + 1;
  LODWORD(STACK[0xE44]) = v2;
  v3 = v0 ^ 0xC6 ^ (9 * ((LOBYTE(STACK[0xE30]) - ((2 * LOBYTE(STACK[0xE30]) + 126) & (LOBYTE(STACK[0xE40]) - 112)) + 11) ^ 0xCC) + (~(18 * ((LOBYTE(STACK[0xE30]) - ((2 * LOBYTE(STACK[0xE30]) + 126) & (LOBYTE(STACK[0xE40]) - 112)) + 11) ^ 0xCC)) | 0x25) - 18);
  v4 = (LODWORD(STACK[0xE38]) - 491984708) ^ 0xB1FE74DD ^ (v3 - 1308724003 + (~(2 * v3) | 0xFFFFFE45) + 1);
  v5 = ((v4 - ((2 * v4) & 0xAECAFD76) + 1466269371) ^ 0x57657EBB) - 2059006340;
  v6 = (v5 ^ 0x9FD37F5F) + 2105513957 + ((2 * v5) & 0x3FA6FEBE);
  LODWORD(STACK[0xE48]) = v6;
  v7 = off_2A1E5DED0[(206 * (((v1 + 3) & 3) != ((2 * (v1 + 3)) & 4))) ^ LODWORD(STACK[0xE3C])];
  v8 = STACK[0xE30];
  LODWORD(STACK[0xE20]) = STACK[0xE3C];
  LODWORD(STACK[0xE24]) = v6;
  LODWORD(STACK[0xE28]) = v2;
  LODWORD(STACK[0xE2C]) = v8 + 1;
  return v7();
}

uint64_t sub_2979E3BBC()
{
  v0 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xFFFFFFFFA6821A68)) ^ LODWORD(STACK[0xE18])) & 0x7FFFFFFF);
  v1 = (233206231 * (v0 ^ HIWORD(v0))) >> (LODWORD(STACK[0xE0C]) ^ 0xAEu);
  v2 = LODWORD(STACK[0xE00]);
  return (off_2A1E5DED0[(241 * ((LOBYTE(STACK[0xE17]) - 92) != (byte_297A193F0[v1] ^ LOBYTE(STACK[0x587]) ^ byte_297A1FB40[v1 + 4] ^ byte_297A244F0[v1] ^ (-41 * (v0 ^ BYTE2(v0))) ^ (-11 * v1)))) ^ LODWORD(STACK[0xE04])])();
}

uint64_t sub_2979E3C98@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0xE08]) ^ v1;
  v4 = a1 + LODWORD(STACK[0xE10]) - ((2 * LODWORD(STACK[0xE10]) + 2) & (v3 + 1616580541)) + 1;
  v5 = *(v2 + 8 * ((1841 * ((v4 ^ a1) < 7)) ^ LODWORD(STACK[0xE08])));
  LODWORD(STACK[0xDF8]) = v3;
  LODWORD(STACK[0xDFC]) = v4;
  return v5();
}

uint64_t sub_2979E3D50()
{
  v3 = (*(v2 + 8 * (v1 | 0x21A)))();
  STACK[0x438] = STACK[0x1700];
  return (*(v2 + 8 * (((((9 * (v1 ^ 0x42F)) ^ 0xC3B68096) + ((v1 + 805829603) | 0xC418000)) * v0) ^ v1)))(v3);
}

uint64_t sub_2979E3DC0()
{
  v0 = STACK[0x587];
  v1 = STACK[0xF48];
  v2 = *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158));
  LODWORD(STACK[0xF50]) = v2;
  v3 = 233206231 * ((233206231 * ((v2 ^ v1) & 0x7FFFFFFF)) ^ ((233206231 * ((v2 ^ v1) & 0x7FFFFFFFu)) >> 16));
  v4 = byte_297A1BB80[v3 >> 24] ^ v0 ^ byte_297A230A0[(v3 >> 24) + 1] ^ byte_297A1E040[v3 >> 24] ^ v3 ^ (9 * BYTE3(v3));
  LOBYTE(STACK[0xF57]) = v4;
  LODWORD(STACK[0xF58]) = ((2 * v4) & 0xFE97BFBE) + (v4 ^ 0xFF4BDFDF);
  v5 = LODWORD(STACK[0xF3C]);
  return (off_2A1E5DED0[(27 * (v4 > 47)) ^ LODWORD(STACK[0xF44])])();
}

uint64_t sub_2979E3EFC()
{
  v3 = (v0 + v1 - 1019) | 0xAD;
  v5 = LODWORD(STACK[0xF38]) + 13026160 < 0 && LODWORD(STACK[0xF58]) - 2135678991 <= v3 - 766;
  v6 = *(v2 + 8 * ((2022 * v5) ^ (v0 + v1 - 604)));
  LODWORD(STACK[0x10B0]) = v3;
  return v6();
}

uint64_t sub_2979E3F64()
{
  v3 = (*(v2 + 8 * (v1 + 1135)))();
  STACK[0x438] = STACK[0x1330];
  return (*(v2 + 8 * ((((((v1 + 1006730800) | 0x480008) - 1011448692) ^ 0x7A1) * v0) ^ v1)))(v3);
}

uint64_t sub_2979E3FC0(uint64_t a1, int a2)
{
  v4 = 20 * (v2 ^ 0x363);
  v5 = STACK[0xDD8] + 1;
  v6 = *(v3 + 8 * (((STACK[0xDD8] == 453262895) * ((v4 ^ (a2 + 1004)) - 1011448257)) ^ v2));
  LODWORD(STACK[0xDCC]) = v4;
  STACK[0xDD0] = v5;
  return v6();
}

uint64_t sub_2979E40C0()
{
  v2 = (v0 + 348515294) & 0x838FEEFF;
  v3 = STACK[0x728] - 1011449863 + (v0 - 727755159);
  v4 = *(v1 + 8 * ((1739 * ((((v3 - v0) | (v0 - v3)) & 0x8000000000000000) == 0)) ^ ((v2 ^ 0x9855DD64) + v0)));
  LODWORD(STACK[0x71C]) = v2;
  STACK[0x720] = v3;
  return v4();
}

uint64_t sub_2979E41A4()
{
  STACK[0x438] = STACK[0x1700];
  v4 = LODWORD(STACK[0x16FC]);
  return (*(v3 + 8 * (((10 * (v2 ^ (v0 + 526) ^ (v0 - 7)) + 52) * v1) ^ v2)))();
}

void sub_2979E41E0()
{
  v0 = LODWORD(STACK[0xB0C]);
  v1 = LODWORD(STACK[0xB00]);
  JUMPOUT(0x2979E41E8);
}

uint64_t sub_2979E42A0()
{
  v2 = (v0 + 944) | 0xA;
  v3 = STACK[0xDA8] + 1;
  v4 = *(v1 + 8 * (((STACK[0xDA8] == 1937170921) * ((v0 + 1011449496) ^ 0x3C4987F3 ^ v2)) ^ v0));
  LODWORD(STACK[0xD9C]) = v2;
  STACK[0xDA0] = v3;
  return v4();
}

uint64_t sub_2979E4308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v62 = LODWORD(STACK[0x16A0]) - LODWORD(STACK[0x169C]);
  v46 = (*STACK[0x14D0] ^ 0x5FCEF5DE) - 1634437591 + ((2 * *STACK[0x14D0]) & 0x1BC);
  v47 = (1145702285 * v46 - ((-2003562726 * v46 + 410194696) & 0xADAEC5C0) - 485430172) ^ LODWORD(STACK[0xB60]);
  v48 = ((2 * v47) & 0x5FFDF7A2 ^ 0x480D4282) + (v47 ^ 0x8BF85E9C);
  v49 = (((v48 + 1342243887) % 0x101) ^ 0xA7DDFFFE) - v48 + ((2 * ((v48 + 1342243887) % 0x101)) & 0x3FC);
  v50 = (v49 - ((2 * v49 + 272758694) & 0xB27F7DC6) - 513754442) ^ (LODWORD(STACK[0xE44]) - 1513559246);
  v51 = LODWORD(STACK[0xB64]) ^ 0xE6EEF8D9;
  v52 = (((v50 ^ 0xD93FBEE3) - 244723253 - 2 * ((v50 ^ 0xD93FBEE3) & 0x7169D1DB ^ v50 & 0x10)) ^ 0xF169D1CB) - v51;
  v53 = (LODWORD(STACK[0xE48]) - 491984708) ^ 0x4DCC9F15 ^ (v52 + 1305255701 - ((2 * v52) & 0x9B993E2A));
  v54 = ((v53 + 682012010 - ((2 * v53) & 0x514D5AD4)) ^ 0x28A6AD6A) + 1831290754;
  v55 = ((2 * v54) & 0x6EAFDFBE) + (v54 ^ 0x3757EFDF);
  v56 = (v51 ^ (v55 - 928509919)) - ((2 * (v51 ^ (v55 - 928509919))) & 0x9852D294) - 869701302;
  HIDWORD(v57) = v55 + 145231905;
  LODWORD(v57) = v55 - 928509919;
  v58 = (((v57 >> 30) - ((2 * (v57 >> 30)) & 0xDE296574) + 1863627450) ^ (v55 + LODWORD(STACK[0xE44]) - ((2 * (v55 + LODWORD(STACK[0xE44])) + 484570790) & 0x326107A4) - 2019459291) ^ 0x76243168) + 2109765915;
  v59 = (v56 ^ 0x33D696B5) + (v58 ^ 0xFFFDBFBC) + ((2 * v58) & 0xFFFB7F78) + 147525;
  v60 = ((v55 + LODWORD(STACK[0xE48]) - ((2 * (v55 + LODWORD(STACK[0xE48])) + 1453978042) & 0xF6C2AD8A) + 649482146) ^ 0x7B6156C5) + (v59 ^ 0x33A977F6) + ((2 * v59) & 0x6752EFEC) - 866744310;
  return (off_2A1E5DED0[LODWORD(STACK[0xE40]) - 1011449557])(1305255701, 682012010, 431545854, 0x100000000, 2660529705, 15, 3428222986, (v60 + 1926350765 - ((2 * v60) & 0xE5A38F5A)) ^ v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_2979E4760()
{
  v6 = LODWORD(STACK[0x1698]) - LODWORD(STACK[0x1694]);
  v4 = v2 ^ 0x355EBA6E ^ (*STACK[0x14D0] + ((22 * (v0 ^ 0x3C498023)) ^ 0x478F7E71) - ((2 * *STACK[0x14D0]) & 0xFF87));
  return (off_2A1E5DED0[(55 * ((((v1 + v3 - 1599553396) % 3u) ^ 0xEBFDD77F) + 2 * (v1 + v3) + 1431546265 - 6 * ((v1 + v3 - 1599553396) / 3u) != 0)) ^ (v0 - 1011448899)])(1011449864, 3283519043);
}

uint64_t sub_2979E490C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v68 = (((1696595968 * v66 - ((171966464 * v66 + 343932928) & 0x31000000) - 2100572349) ^ 0x988BCF43) & 0xFFE00000 | ((-1682834647 * v66 - (((((v67 ^ 0x15) + 1458950486) & 0xA90A2BBF) - 252755487) & (929298002 * v66 - 154169692)) + 1944021153) >> 11)) ^ 0x1F0EF4;
  v69 = v68 - ((2 * v68) & 0xCC0ADF30) - 435851368;
  v70 = (((487915520 * (v62 ^ v67 ^ 0x72D1C41F) - ((975831040 * (v62 ^ v67 ^ 0x72D1C41F)) & 0x68AA0000) - 1269446155) ^ 0xB455C9F5) & 0xFFFF0000 | ((666049813 * (v62 ^ v67 ^ 0x72D1C41F) - ((1332099626 * (v62 ^ v67 ^ 0x72D1C41F)) & 0xC354F2AE) + 1638562135) >> 16)) ^ 0x61AA;
  HIDWORD(v71) = ~a8;
  LODWORD(v71) = ((695265326 * (a8 ^ 0xBEF8AEE7)) & 0x5FD3F3FC) + ((347632663 * (a8 ^ 0xBEF8AEE7)) ^ 0xAFE9F9FE) + 1343620610;
  v72 = ((2 * (v71 >> 1)) & 0xF7F5BF6E) + ((v71 >> 1) ^ 0xFBFADFB7);
  v73 = (v69 ^ 0x5CA0DB3E ^ (v70 - ((2 * v70) & 0x754B694C) - 1163545434)) - v72 - 67444809;
  v74 = v73 ^ 0x3DCEF9FD;
  v75 = (2 * v73) & 0x7B9DF3FA;
  v76 = (-v64 - (v63 & 0xCCAA0000)) ^ 0xE6557C01 | ((-v65 - (v61 & 0xBC2C15Eu)) >> 17);
  v77 = ((2 * v76) & 0xFEF77F3C ^ 0x520) + (v76 ^ 0xFF7BFD6E);
  v78 = 32667635 * (v69 ^ 0xE6056F98) - ((65335270 * (v69 ^ 0xE6056F98)) & 0x1B2CBDFC) + 227958526;
  v79 = 662646784 * (v69 ^ 0xE6056F98) - ((1325293568 * (v69 ^ 0xE6056F98)) & 0xF6F6E000) + 2071690977;
  v80 = (((-442341376 * (v77 + v74 + v75 + 702232358) - ((1262800896 * (v77 + v74 + v75 + 702232358) + 773795840) & 0x5CEA7000) - 981150081) ^ 0x2E753E7F) & 0xFFFFF800 | ((1964815437 * (v77 + v74 + v75 + 702232358) - ((-365336422 * (v77 + v74 + v75 + 702232358) - 2073705498) & 0xF5B15D88) + 1024168119) >> 21)) ^ 0x3D6;
  v81 = v80 - ((2 * v80) & 0xDF8F364C) + 1875352358;
  v82 = (((354677248 * v72 - ((709354496 * v72 + 2130707456) & 0x53D22400) + 1768494305) ^ 0x29E912E1) & 0xFFFFFE00 | ((1997181433 * v72 - ((773137394 * v72 + 71270402) & 0x24743CA2u) - 1806049710) >> 23)) ^ 0x124;
  v83 = v82 - ((2 * v82) & 0x555F0230) - 1431338728;
  v84 = ((v79 ^ 0x7B7B7EE1) & 0xFFFFF000 | (v78 >> 20)) ^ 0xD9;
  v85 = v84 - ((2 * v84) & 0xAA484498) - 719052212;
  v86 = ((((2 * v81) ^ 0xDF8F364C) - ((2 * ((2 * v81) ^ 0xDF8F364C)) & 0x3A395268) - 1659066059) ^ 0x9D1CA935) + (v81 ^ 0x903864D9);
  v87 = ((((1927540736 * v77 + 927064063) | 0xBAFF5FFF) - 963770368 * v77 + 1189044931) ^ 0xA28052C2) & 0xFFFFF800 | ((-1334259263 * v77 - ((1626448770 * v77 - 731310140) & 0xCC3EB9F8) - 799807266) >> 21);
  v88 = ((2 * v87) & 0xB7BBB77A ^ 0x660) + (v87 ^ 0x5BDDDC8D);
  v89 = 340637393 * (((2 * v86) & 0xB3F357CE) + (v86 ^ 0xD9F9ABE7));
  v90 = (-2057378579 * v88 - ((180210138 * v88 + 1996651534) & 0x7DA606D4) + 978600305) >> 10;
  v91 = (((-1658847232 * (v83 ^ 0xAAAF8118) - ((171966464 * (v83 ^ 0xAAAF8118)) & 0xE000000) + 117603758) ^ 0x7027DAE) & 0xFFE00000 | ((251077865 * (v83 ^ 0xAAAF8118) - ((502155730 * (v83 ^ 0xAAAF8118)) & 0x9E0D5730) + 1325837208) >> 11)) ^ 0x9E0D5;
  v92 = 994050048 * v88 - ((1988100096 * v88 + 58720256) & 0xDA000000) + 1859666833;
  HIDWORD(v71) = v89 + 58;
  LODWORD(v71) = v89 - 557374150;
  v93 = ((2 * (v71 >> 7)) & 0xD7BF7F76) + ((v71 >> 7) ^ 0x6BDFBFBB);
  HIDWORD(v71) = (v83 ^ v85 ^ 0x104C3872 ^ v81) - v88 + 1541266365;
  LODWORD(v71) = 1346970681 * (((2 * HIDWORD(v71)) & 0x97A2BFFA) + (HIDWORD(v71) ^ 0x4BD15FFD)) + 1035799723;
  v94 = (v71 >> 1) - 1249575045 - ((2 * (v71 >> 1)) & 0x6B09FEF6);
  v95 = (v91 - ((2 * v91) & 0x6F06574A) - 1216140379) ^ 0xB7832BA5 ^ (v93 - 1809825723);
  v96 = v95 - ((2 * v95) & 0x67ECE8F2) - 1275693959;
  v97 = -2013659076 * v93 - ((267649144 * v93 + 1004675160) & 0x5BE31290) - 1948083851;
  HIDWORD(v71) = -17 - v94;
  LODWORD(v71) = ((1848145762 * (v94 ^ 0xB584FF7B)) & 0xBF5FFE7C) + ((-1223410767 * (v94 ^ 0xB584FF7B)) ^ 0x5FAFFF3E) - 1605369662;
  v98 = (((v92 ^ 0xED184391) & 0xFFC00000 | v90) ^ 0x2FB4C0) - 2 * ((((v92 ^ 0xED184391) & 0xFFC00000 | v90) ^ 0x2FB4C0) & 0x1F02F29F ^ v90 & 9) - 1627196778;
  v99 = (v71 >> 2) - ((2 * (v71 >> 2)) & 0x103C295C) + 136189102;
  v100 = ((2 * (v94 ^ v98 ^ v96)) & 0xFF7BF5BE ^ 0x3260F128) + (v94 ^ v98 ^ v96 ^ 0xE6CD834B);
  v101 = -1286616825 * (v98 ^ 0x9F02F296) - ((1721733646 * (v98 ^ 0x9F02F296)) & 0x52F837CC) - 1451484186;
  v102 = ((v97 ^ 0xADF18949) & 0xFFFFFFFC | ((((-1006829538 * v93 + 1861781526) & 0xFC1D147A) - 1644068879 * v93 + 1249194423) >> 30)) + 1249925080 - ((2 * (v97 ^ 0xADF18949)) & 0x9500AFB0);
  v103 = ((-805306368 * v100 + 1352208256) ^ 0x80990F80) & 0xF0000000 | ((-1075493843 * v100 - ((2143979610 * v100 - 1795598950) & 0xAD467FC0) - 1591743827) >> 4);
  v104 = ((v98 << 30) ^ 0x40000000) + (v90 << 31) - 1547893851;
  v105 = v101 >> 2;
  v106 = (v103 ^ 0x72B68112) - 2010952428 + ((2 * v103) & 0xEFB965D8 ^ 0xA9065D8);
  v107 = v106 + (v99 ^ 0x81E14AE);
  v108 = (v102 ^ 0x4A8057D8) + (v107 ^ 0x4087887C) - ((2 * v107) & 0x7EF0EF06) - 1082624124;
  v109 = ((v104 ^ 0x63BD03A5) & 0xC0000000 | (v101 >> 2)) ^ 0x2A5F06F9;
  v110 = ((v109 - 2 * (v109 & 0x6134DBE ^ v105 & 4) + 101928378) ^ 0x4C931A62 ^ v102) + (v107 ^ 0x1380968) - ((2 * v107) & 0xFD8FED2E) - 20449640;
  v111 = v110 - ((2 * v110) & 0xC1DBC216) + 1626202379;
  v112 = v111 ^ 0x378D894D ^ (-1282759113 * (((2 * v108) & 0x9FB77FDE) + (v108 ^ 0x4FDBBFEF)) - ((1729449070 * (((2 * v108) & 0x9FB77FDE) + (v108 ^ 0x4FDBBFEF)) + 778681898) & 0xAEC0D08C) + 1855276891);
  v113 = v112 - ((2 * v112 + 16625646) & 0x2309EF1A) - 1308373116;
  v114 = (2 * (((v99 ^ 0x81E14AE) & (v113 ^ 0x1184F78D)) - ((2 * ((v99 ^ 0x81E14AE) & (v113 ^ 0x1184F78D))) & 0x57701698)) + 1466963608) ^ 0x57701698;
  LODWORD(a34) = ((v114 - ((2 * v114) & 0xC5512AC0) + 1655215456) ^ 0x62A89560) + (v113 ^ v99 ^ 0x199AE323);
  LODWORD(a35) = v111;
  LODWORD(a41) = v111 ^ v113;
  v115 = v111 ^ v113 ^ 0x71691686;
  v116 = -1517927727 * v115 - ((1259111842 * v115) & 0xDEE5E9A0) + 1869804752;
  LODWORD(a33) = ((2 * a34) & 0x3DF7FA68) + (a34 ^ 0x1EFBFD34);
  v117 = 420168704 * v115 - ((840337408 * v115) & 0xBEE42000) + 1601311240;
  v118 = ((104981900 * a33 - ((209963800 * a33 + 1157367584) & 0x66469F80)) & 0xFFFFFFFC | ((26245475 * a33 - 984783381 - ((52490950 * a33 - 1858141752) & 0xF95BDB26) + 2188) >> 30)) - 710847664;
  v119 = ((2 * v118) & 0xFF35DD9E ^ 0x66049D82) + (v118 ^ 0x4CB9A10E);
  v120 = (((49870592 * (v113 ^ 0x1184F78D) - ((99741184 * (v113 ^ 0x1184F78D)) & 0x81B9FE00) + 1088225222) ^ 0x40DCFFC6) & 0xFFFFFF00 | ((2063792375 * (v113 ^ 0x1184F78D) - ((-167382546 * (v113 ^ 0x1184F78D)) & 0xDF0A27CE) - 276491289) >> 24)) ^ 0xEF;
  v121 = ((v117 ^ 0x5F721208) & 0xFFFFFC00 | (v116 >> 22)) ^ 0x1BD;
  v122 = v121 - ((2 * v121) & 0xE79E6374) - 204525126;
  LODWORD(a32) = ((2 * (v106 + (v113 ^ 0x1184F78D))) & 0x9EBDB7DE) + ((v106 + (v113 ^ 0x1184F78D)) ^ 0xCF5EDBEF);
  v123 = ((1484259328 * a32 - ((821035008 * a32 + 1072693248) & 0x23800000) + 1371217737) ^ 0x91C31F49) & 0xFFF80000 | ((-495891697 * a32 - ((81958430 * a32 + 419835902) & 0x17F181D8u) - 2005149461) >> 13);
  v124 = ((2 * v123) & 0xFEF77EDE ^ 0x3E8C) + (v123 ^ 0x7F7FE0A9);
  v125 = ((v120 - ((2 * v120) & 0xE4713FF6) + 1916313595) ^ 0x72389FFB) - v119 - v124 + 2132192830;
  v126 = v122 ^ 0xF3CF31BA;
  v127 = -365831505 * (v122 ^ 0xF3CF31BA) - ((-731663010 * (v122 ^ 0xF3CF31BA)) & 0x9765A50E) + 1270010503;
  v128 = (v125 - ((2 * v125) & 0xFC76AC38) - 29665764) ^ v122;
  v129 = ((2 * v128) & 0xF1D5901E ^ 0x11C0800C) + (v128 ^ 0x751EAFA9);
  v130 = (((-1252130816 * v126 - ((1790705664 * v126) & 0x50A00000) + 676445745) ^ 0x2851BE31) & 0xFFFE0000 | (v127 >> 15)) ^ 0x9765;
  v131 = v130 - ((2 * v130) & 0x19950084) + 214597698;
  v132 = -248512512 * v129 - ((576716800 * v129 + 1012924416) & 0x3F600000) - 35072350;
  v133 = (((-2059403264 * v119 - ((41943040 * v119 + 41943040) & 0x2800000) + 1118730772) ^ 0x816E7A14) & 0xFFC00000 | ((-1777071595 * v119 - ((740824106 * v119 + 294954506) & 0x60AA5C3C) - 1189117661) >> 10)) ^ 0x2C154B;
  v134 = (-1434181869 * v129 - ((1426603558 * v129 + 1966779334) & 0x5200D34C) + 597540745) >> 12;
  v135 = (((v132 ^ 0x9FB8D6A2) & 0xFFF00000 | v134) ^ 0xA9006) - 2 * ((((v132 ^ 0x9FB8D6A2) & 0xFFF00000 | v134) ^ 0xA9006) & 0x681E43AF ^ v134 & 8) + 1746813863;
  v136 = -670615775 * (v135 ^ 0x681E43A7) - ((-1341231550 * (v135 ^ 0x681E43A7)) & 0xF5ADCCA6) + 2060904019;
  v137 = -595329024 * (v135 ^ 0x681E43A7) - ((-1190658048 * (v135 ^ 0x681E43A7)) & 0x89200000) + 1150350449;
  v138 = (((-279294690 * v124 - ((-558589380 * v124 - 775267332) & 0xC3EBD394)) & 0xFFFFFFFE | ((((257576222 * v124 + 149237246) & 0x161EB998) - 2007836303 * v124 + 8260660) >> 31)) - 891611192) ^ 0xE1F5E9CA;
  v139 = v138 - ((2 * v138) & 0x59D1AA58) + 753456428;
  v140 = v139 ^ 0x2CE8D52C;
  v141 = 44309709 * (v139 ^ 0x2CE8D52C) - ((88619418 * (v139 ^ 0x2CE8D52C)) & 0xFB4B6F50) + 2108012456;
  v142 = v139 ^ v131 ^ (v133 - ((2 * v133) & 0x1961CCC2) + 212919905) ^ v135;
  v143 = ((2 * v142) & 0xEF96EFBE ^ 0x8910E110) + (v142 ^ 0xB3478777);
  v144 = ((2 * ((v137 ^ 0x4490F471) & 0xFFFC0000 | (v136 >> 14))) & 0xEEBF7CDE ^ 0x35496) + (((v137 ^ 0x4490F471) & 0xFFFC0000 | (v136 >> 14)) ^ 0x775E5534);
  v145 = (((-1459145920 * v140 - ((1376675456 * v140) & 0x997A3400) - 860022264) ^ 0xCCBD1A08) & 0xFFFFFFC0 | (v141 >> 26)) ^ 0x1F;
  v146 = ((v145 + 462508010 + (~(2 * v145) | 0xC8DD602B) + 1) ^ 0x1B914FEA) - v144 + 2002763375;
  v147 = (((770488320 * v143 - ((1540976640 * v143 + 445083648) & 0xA28CF000) - 561368098) ^ 0xD1467BDE) & 0xFFFFF800 | ((((1823769810 * v143 + 1954328337) | 0x8974E98F) + 1235598743 * v143 + 17249200) >> 21)) ^ 0x1DA;
  v148 = v147 - ((2 * v147) & 0xCD6AD6E2) + 1723165553;
  v149 = 658896125 * (v148 ^ 0x66B56B71) + 1262431535;
  v150 = (((-470680224 * (v131 ^ 0xCCA8042) - ((-941360448 * (v131 ^ 0xCCA8042)) & 0xA35E5000) - 777050109) ^ 0xD1AF2803) & 0xFFFFFFE0 | ((-685797397 * (v131 ^ 0xCCA8042) - ((-1371594794 * (v131 ^ 0xCCA8042)) & 0xEA5F9D8C) - 181416250) >> 27)) ^ 0x1E;
  v151 = v150 - ((2 * v150) & 0xB45B4D30) + 1512941208;
  v152 = ((2 * ((v146 - ((2 * v146) & 0x5F65732A) + 800242069) ^ v151 ^ v148)) & 0xDEFB69FC ^ 0x65068F8) + ((v146 - ((2 * v146) & 0x5F65732A) + 800242069) ^ v151 ^ v148 ^ 0xFC57C082);
  v153 = 484666813 * v152 - ((969333626 * v152 + 1238267124) & 0x7083F932) - 1658243309;
  v154 = ((-1096835072 * (v148 ^ 0x66B56B71) - ((490684416 * (v148 ^ 0x66B56B71)) & 0x1B234000) + 227648041) ^ 0xD91A229) & 0xFFFFE000 | ((v149 - ((1317792250 * (v148 ^ 0x66B56B71)) & 0x967E5A5E)) >> 19);
  v155 = ((2 * v154) & 0xBDEF97EE ^ 0x12CE) + (v154 ^ 0x5EF7C290);
  v156 = v151 ^ 0x5A2DA698;
  v157 = -1836092117 * (v151 ^ 0x5A2DA698) - ((622783062 * (v151 ^ 0x5A2DA698)) & 0x49FBBB34) - 1526866534;
  v158 = (((-165822848 * v144 - ((742096128 * v144 + 141479168) & 0x2A498F00) - 1722012044) ^ 0x9524C7F4) & 0xFFFFFF80 | ((-403948675 * v144 - ((1339586298 * v144 + 1544609178) & 0x7AF608FE) - 1417448628) >> 25)) ^ 0x5E;
  v159 = v158 - ((2 * v158) & 0xB06EE886) + 1480029251;
  v160 = (v159 ^ 0x58377443) + 1593295504 - v155 + 2407;
  v161 = -201326592 * v152 - ((-805306368 - 402653184 * v152) & 0xD0000000) + 1408443502;
  v162 = ((2 * ((v161 ^ 0x6BF3246E) & 0xFC000000 | (v153 >> 6))) & 0xDBF3FF3C ^ 0x1C20F24) + (((v161 ^ 0x6BF3246E) & 0xFC000000 | (v153 >> 6)) ^ 0xED18F86C);
  v163 = (((1203410304 * v156 - ((259336960 * v156) & 0x25D51A00) - 1830122139) ^ 0x92EA8D65) & 0xFFFFFF80 | (v157 >> 25)) ^ 0x52;
  v164 = (v160 ^ 0x6EDFD3FF) + ((2 * v160) & 0xDDBFA7FE) + v162 + 897755961 - ((2 * ((v160 ^ 0x6EDFD3FF) + ((2 * v160) & 0xDDBFA7FE) + v162 + 897755961) + 827612130) & 0x3869557E) - 1797334864;
  v165 = ((v163 - 2 * (v163 & 0x2349EA7C ^ (v157 >> 25) & 4) + 592046712) ^ 0x7B7E9E3B ^ v159) - v155 - v162 - 1531348987;
  v166 = v165 - ((2 * v165 + 1349560096) & 0xA6E035A2) + 2074635873;
  v167 = (v164 & 0x10000 | 0x7BB0F105) ^ v164 & 0xFFFEFFFF;
  v168 = v167 ^ v166;
  LODWORD(STACK[0x14AC]) = v167 ^ v166 ^ 0x5FBBF056;
  v169 = (2 * ((v168 ^ 0x5FBBF056) & 0x8000000)) ^ 0x10000000 | (v168 ^ 0x5FBBF056) & 0x8000000;
  v170 = v169 + 1779731922;
  v171 = v155 - 1593297910 + (v167 ^ v166 ^ 0x6B874352);
  v172 = ((v162 + 302383202) & (v169 - 0x8000000)) == ((2 * ((v162 + 302383202) & (v169 - 0x8000000))) & 0x4EE69130);
  v173 = v166 & 0x2703CE6E;
  v174 = v169 ^ 0x7A148DD2;
  if (v172)
  {
    v174 = v170;
  }

  v175 = v168 ^ 0x9478BCAD;
  v422 = (v174 + v162 - ((2 * (v174 + v162) + 1071834400) & 0x8ACE4DD2) + 1700305273) ^ v168 & 0xF7FFFFFF;
  v176 = 27843015 * (v422 ^ 0x511F9A44) - ((55686030 * (v422 ^ 0x511F9A44)) & 0xA123A128) - 795750252;
  v177 = (((v167 & 0xD8FC3191 | v173) ^ 0x43082A50) - ((2 * ((v167 & 0xD8FC3191 | v173) ^ 0x43082A50)) & 0x596DECDE) - 1397295505) ^ v168 & 0x2703CE6E;
  v178 = 456712192 * (v422 ^ 0x511F9A44) - ((913424384 * (v422 ^ 0x511F9A44)) & 0xB6424000) + 1528900290;
  LODWORD(a43) = v177;
  v179 = ((((((v171 ^ 0x8FFF35EA) << 26) | 0xF7FFFFFF) + 301989888 * (((2 * v171) & 0x1FFE6BD4) + (v171 ^ 0x8FFF35EA)) + 268816676) ^ 0x8405D123) & 0xFE000000 | ((-1840097143 * (((2 * v171) & 0x1FFE6BD4) + (v171 ^ 0x8FFF35EA)) - ((614773010 * (((2 * v171) & 0x1FFE6BD4) + (v171 ^ 0x8FFF35EA)) - 102798452) & 0x8A091E30) - 1040956194) >> 7)) ^ 0x8A091E;
  v180 = v179 - ((2 * v179) & 0x28B48ADA) - 1806023315;
  v181 = (((-285212672 * v175 - ((-570425344 * v175) & 0x90000000) - 938308091) ^ 0xC8128E05) & 0xFF000000 | ((1109406959 * v175 - ((-2076153378 * v175) & 0xA1A37D5E) - 791560529) >> 8)) ^ 0xD0D1BE;
  LODWORD(a45) = v177 ^ 0xA8B67A43;
  v182 = ((2 * ((v178 ^ 0x5B212AC2) & 0xFFFFE000 | (v176 >> 19))) & 0xBFFB757E ^ 0x3424) + (((v178 ^ 0x5B212AC2) & 0xFFFFE000 | (v176 >> 19)) ^ 0x5FFDA0AD);
  v183 = v180 ^ 0x945A456D;
  v184 = -1528368315 * (v180 ^ 0x945A456D) - ((164488842 * (v180 ^ 0x945A456D)) & 0xF827CC0) + 130104928;
  v185 = ((v181 - ((2 * v181) & 0x18099D32) + 201641625) ^ 0x985E8BF4 ^ v180) - v182 + 1610463935;
  v186 = v185 ^ 0x3934EEED;
  v187 = (2 * v185) & 0x7269DDDA;
  v188 = -1189717869 * v182 - ((1915531558 * v182 + 727988390) & 0xFD86D1E2) - 1804237500;
  v189 = ((-1211807548 * (v177 ^ 0xA8B67A43) - ((1871352200 * (v177 ^ 0xA8B67A43)) & 0xA7AAC480) + 1406493250) ^ 0x53D56242) & 0xFFFFFFFC | ((-1376693711 * (v177 ^ 0xA8B67A43) - ((467838050 * (v177 ^ 0xA8B67A43)) & 0x1EBC4DB2) - 1889655079) >> 30);
  v190 = ((2 * v189) & 0xFFF5B5D6 ^ 4) + (v189 ^ 0x7FFADAE9);
  v191 = (((2040692736 * v183 - ((860160000 * v183) & 0x22930000) + 290048971) ^ 0x1149CBCB) & 0xFFFF8000 | (v184 >> 17)) ^ 0x3E0;
  v192 = v191 - ((2 * v191) & 0xDF492FDC) - 274425874;
  v193 = ((1455947776 * (v190 + v186 + v187 - 830508277) - ((227540992 * (v190 + v186 + v187 - 830508277) + 424673280) & 0x10E00000) + 891234539) ^ 0x87728EB) & 0xFFF80000 | ((2074569433 * (v190 + v186 + v187 - 830508277) - ((-145828430 * (v190 + v186 + v187 - 830508277) + 1213516586) & 0x8B7C875A) - 370628286) >> 13);
  v194 = ((2 * v193) & 0x1FBFDE0E ^ 0x45A04) + (v193 ^ 0xFDDC2F5);
  v195 = (v192 ^ 0xEFA497EE) - 266333959 + v194 - ((2 * ((v192 ^ 0xEFA497EE) - 266333959 + v194)) & 0xBE651ADA) - 550335123;
  v196 = (((-1960031872 * v182 - ((374903552 * v182 - 1306766592) & 0xA37DBE00) + 718080193) ^ 0x51BEDF41) & 0xFFFFFF80 | (v188 >> 25)) ^ 0x7F;
  v197 = v196 - ((2 * v196) & 0x14E6C38A) - 1972149819;
  v198 = -2107757795 * v194 - ((79451706 * v194 - 2016182678) & 0xA8834DEA) - 1741986262;
  HIDWORD(v199) = v190 + 5;
  LODWORD(v199) = 1828008177 * v190 - 723199803;
  v200 = ((2 * (v199 >> 4)) & 0xD09BFFFE) + ((v199 >> 4) ^ 0xE84DFFFF);
  v201 = ((2 * ((v197 ^ 0x5541ECA8 ^ v195) - v200 - 397541377)) & 0xB72E2FF2) + (((v197 ^ 0x5541ECA8 ^ v195) - v200 - 397541377) ^ 0x5B9717F9);
  v202 = ((-1388632245 * (v197 ^ 0x8A7361C5) - ((175525526 * (v197 ^ 0x8A7361C5)) & 0xB538B64) + 95012274) ^ 0x5A9C5B2) >> !(v149 & 1);
  v203 = v202 - ((2 * v202) & 0xA160EB92) + 1353741769;
  v204 = (~(v188 >> 25) << 31) - 1634515979;
  v205 = (((-952107008 * v194 - ((243269632 * v194 + 444596224) & 0x35000000) - 404883485) ^ 0x1A9DF7E3) & 0xFFC00000 | (v198 >> 10)) ^ 0x151069;
  v206 = v205 - 2 * (v205 & 0x25DFF57 ^ (v198 >> 10) & 0x12) - 2107769019;
  v207 = ((v203 ^ 0x50B075C9) >> (v149 & 1)) - ((2 * ((v203 ^ 0x50B075C9) >> (v149 & 1))) & 0xBF887DE) - 2047065105;
  v208 = ((-717988732 * v201 - ((711506184 * v201 + 1540116280) & 0x6FDDA8C8) + 634715138) ^ 0xB7EED466) & 0xFFFFFFFC | ((-1253239007 * v201 - ((177876546 * v201 + 385029070) & 0x1F8B59B0) - 348178753) >> 30);
  v209 = ((2 * v208) & 0xFF16CBEA) + (v208 ^ 0xFF8B65F7);
  v210 = -1437750357 * (v206 ^ 0x825DFF45) - ((1419466582 * (v206 ^ 0x825DFF45)) & 0x95B9C9AC) - 891493162;
  v211 = -1529169232 * (v206 ^ 0x825DFF45) - ((1236628832 * (v206 ^ 0x825DFF45)) & 0xE84D2480) - 198798773;
  v212 = (v206 ^ 0xCF460439 ^ ((v207 ^ 0x85FC43EF | v204 ^ 0x9E9343F5) - ((2 * (v207 ^ 0x85FC43EF)) & 0x9A37F6F8) + 1293679484)) - v209 - 7641611;
  v213 = v212 ^ 0xA6EFDD7F;
  v214 = (2 * v212) & 0x4DDFBAFE;
  v215 = ((-888668160 * v200 - ((370147328 * v200 + 370147328) & 0x24B00000) - 580716326) ^ 0x125AF8DA) & 0xFFF80000 | ((255334753 * v200 - ((510669506 * v200 - 682347838) & 0xEE6FDEAA) + 1658980534) >> 13);
  v216 = ((2 * v215) & 0x33F7F76E ^ 0x7736E) + (v215 ^ 0x99FC4208);
  v217 = ((-1074716016 * v209 - ((2145535264 * v209 - 288475040) & 0xFD4A5C60) - 166966676) ^ 0xFEA52E3C) & 0xFFFFFFF0 | ((-872476119 * v209 - ((-1744952238 * v209 - 554900602) & 0xC468F444) - 777327643) >> 28);
  v218 = (v217 ^ 6) - ((2 * v217) & 0x97EC7902) - 873055103;
  v219 = ((v211 ^ 0xF426924B) & 0xFFFFFFF0 | (v210 >> 28)) ^ 0xC;
  v220 = v219 - 2 * (v219 & 0x493F0C8F ^ (v210 >> 28) & 3) + 1228868748;
  v221 = (((-1436684288 * (v213 + v216 + v214) - ((1421598720 * (v213 + v216 + v214) + 1065271296) & 0x786AE000) + 1542772823) ^ 0x3C357857) & 0xFFFFF000 | ((1860871647 * (v213 + v216 + v214 - 17410777) - ((-573224002 * (v213 + v216 + v214 - 17410777) + 1982552058) & 0xC8D06FC8) + 528344033) >> 20)) ^ 0xE46;
  v222 = v221 - ((2 * v221) & 0x92BC60F8) + 1230909564;
  v223 = (((1577762816 * v216 - ((-1139441664 * v216 - 132022272) & 0xBC0F8000) - 635927642) ^ 0xDE07C3A6) & 0xFFFFC000 | ((-1552582613 * v216 - ((1189802070 * v216 - 367533946) & 0xD4D5E416) + 1601626702) >> 18)) ^ 0x3A9A;
  v224 = v223 - ((2 * v223) & 0xD9580480) - 324271552;
  v225 = (2 * (((v220 ^ 0x493F0C8C) & (v224 ^ 0xECAC0240)) - ((2 * ((v220 ^ 0x493F0C8C) & (v224 ^ 0xECAC0240))) & 0x28D1A48)) + 42801736) ^ 0x28D1A48;
  v226 = ((409969326 * (v220 ^ 0x82C9300D ^ v218)) & 0xF6BF5FFE) + ((204984663 * (v220 ^ 0x82C9300D ^ v218)) ^ 0xFB5FAFFF) + (v222 ^ 0xB6A1CF83) + 77615106;
  v227 = ((v225 - ((2 * v225) & 0x1BA4F67C) + 231897919) ^ 0xDD27B3F) + (v224 ^ 0xA5930ECC ^ v220);
  v228 = v218 ^ 0xCBF63C81;
  v229 = (v218 ^ 0xCBF63C81) + (v227 ^ 0xF7BFB5FA) + ((2 * v227) & 0xEF7F6BF4) + 138430982;
  v230 = (v222 ^ 0x495E307C) + (v229 ^ 0x776FEFE7) + ((2 * v229) & 0xEEDFDFCE) - 2003824615;
  v231 = ((2 * v230) & 0xBB612F3E) + (v230 ^ 0x5DB0979F);
  v232 = ((v226 - ((2 * v226) & 0x6E4FEE6E) + 925366071) ^ 0xF89045E0) - 1571854239 + v231;
  v233 = ((2 * v232) & 0xCEBF7F86) + (v232 ^ 0x675FBFC3);
  v234 = -1658040081 * v233 - ((978887134 * v233 + 173412838) & 0x4A2B2B12) - 1438605700;
  v235 = ((2 * ((v234 ^ 0x5AEA6A76) + v231 - 1571854239 + 1)) & 0x8C373FBE) + (((v234 ^ 0x5AEA6A76) + v231 - 1571854239 + 1) ^ 0x461B9FDF);
  v236 = -589444161 * v235 - ((968595326 * v235 + 1144375102) & 0x71259ADA) + 1521332492;
  v237 = ((2 * (v228 - (v234 ^ 0xA5159589))) & 0x4DBD83FA) + ((v228 - (v234 ^ 0xA5159589)) ^ 0x26DEC1FD);
  HIDWORD(a31) = v222;
  v238 = (((-1455423488 * v233 - ((1384120320 * v233 - 1468006400) & 0xC3000000) - 1241545612) ^ 0x61BF8474) & 0xFFC00000 | ((-96680283 * v233 - ((-193360566 * v233 - 494327134) & 0xD2CA8056) - 626403972) >> 10)) ^ 0x3A5950;
  LODWORD(a39) = v235;
  v239 = -1090519040 * v235 - ((1040187392 - (v235 << 25)) & 0x7E000000) + 1579460064;
  LODWORD(a18) = v222 ^ v234;
  LODWORD(a30) = v237;
  v240 = ((-1699217408 * v237 - ((896532480 * v237 - 1068498944) & 0xC2300000) - 1052679342) ^ 0x61196352) & 0xFFF80000 | ((1922446167 * v237 - ((86795950 * v237 + 47273994) & 0x5DFFF74) + 408464319) >> 13);
  v241 = ((2 * v240) & 0x39E3DFFE ^ 0xEFE) + (v240 ^ 0x1CF1F880);
  v242 = v241 + ((v238 - ((2 * v238) & 0x542F278) - 2103346884) ^ 0x82A1793C) - 485617663;
  v243 = v242 ^ 0x6BFB5B96;
  v244 = (2 * v242) & 0xD7F6B72C;
  v245 = 974834645 * v241 - ((1949669290 * v241 - 688113750) & 0xE9CE33CA) - 530238022;
  v246 = ((736493568 * (a18 ^ 0xEC4BA5F5) - ((1472987136 * (a18 ^ 0xEC4BA5F5)) & 0x87540000) + 1135332237) ^ 0x43ABCB8D) & 0xFFFE0000 | ((605984243 * (a18 ^ 0xEC4BA5F5) - ((4008934 * (a18 ^ 0xEC4BA5F5)) & 0x26394FC) - 2127443330) >> 15);
  v247 = ((2 * v246) & 0xFF96F738 ^ 0x20400) + (v246 ^ 0x7FCA79FF);
  v248 = ((v239 ^ 0xBF24A5E0) & 0xFF000000 | (v236 >> 8)) ^ 0x3892CD;
  v249 = v248 - ((2 * v248) & 0x9DD64F6A) - 823449675;
  v250 = (v243 + v247 + v244 - ((2 * (v243 + v247 + v244) + 7491996) & 0x2CAC9FC) - 1784771124) ^ v249;
  v251 = ((2 * v250) & 0xB6FFBEDC ^ 0x961C8694) + (v250 ^ 0x14F19C25);
  v252 = (((-172228608 * v251 - ((-344457216 * v251 + 1248854016) & 0xC6C00000) - 2003209577) ^ 0xE3617297) & 0xFFFC0000 | ((-1282572945 * v251 - ((1729821406 * v251 - 742468964) & 0x8440EFD4) - 1409294024) >> 14)) ^ 0x30881;
  v253 = -698439680 * v241 - ((213733376 * v241 + 29184000) & 0x14CD3000) + 2068136560;
  v254 = (((796917760 * v247 - ((1593835520 * v247 + 469762048) & 0x67000000) - 1047902689) ^ 0x338A461F) & 0xFF800000 | ((-808406433 * v247 - ((-1616812866 * v247 + 160780856) & 0xEEA11DDE) - 65325045) >> 9)) ^ 0x3BA847;
  v255 = v254 - ((2 * v254) & 0x991CC616);
  v256 = ((-1792194560 * (v249 ^ 0xCEEB27B5) - ((710578176 * (v249 ^ 0xCEEB27B5)) & 0xF0AF6000) - 128470238) ^ 0xF857B322) & 0xFFFFF800 | ((265463209 * (v249 ^ 0xCEEB27B5) - ((530926418 * (v249 ^ 0xCEEB27B5)) & 0xB77737C4) - 608461854) >> 21);
  v257 = ((2 * v256) & 0xED6FDE52 ^ 0xC12) + (v256 ^ 0x76B7E9F4);
  v258 = ((v253 ^ 0x8A669A70) & 0xFFFFF800 | (v245 >> 21)) ^ 0x7A7;
  v259 = v252 - ((2 * v252) & 0xB5AFA5BA) - 623389987;
  v260 = ((v258 - ((2 * v258) & 0x835AF7DE) - 1045595153) ^ (v255 - 863083765) ^ 0xD7F4CA39 ^ v259) - v257 + 1991765801;
  v261 = ((2 * v260) & 0x3F7EFEDA) + (v260 ^ 0x9FBF7F6D);
  v262 = (((1048792064 * ((v255 - 863083765) ^ 0xCC8E630B) - ((2097584128 * ((v255 - 863083765) ^ 0xCC8E630B)) & 0xE25A0800) - 248707246) ^ 0xF12D0752) & 0xFFFFFC00 | ((-11558701 * ((v255 - 863083765) ^ 0xCC8E630B) - ((-23117402 * ((v255 - 863083765) ^ 0xCC8E630B)) & 0xF090199A) - 129495859) >> 22)) ^ 0x3E1;
  v263 = ((1274956864 * (v259 ^ 0xDAD7D2DD) - ((-1745053568 * (v259 ^ 0xDAD7D2DD)) & 0xC7717180) - 474433309) ^ 0xE3B8B8E3) & 0xFFFFFFC0 | ((892336433 * (v259 ^ 0xDAD7D2DD) - ((1784672866 * (v259 ^ 0xDAD7D2DD)) & 0xE03951B8) + 1880926428) >> 26);
  v264 = ((2 * v263) & 0x7F3DEBFE ^ 0x38) + (v263 ^ 0xBF9EF5E3);
  v265 = ((v262 - ((2 * v262) & 0xCE85AB08) + 1732433284) ^ 0x6742D584) + 1080101377 + v264;
  v266 = ((557842432 * v257 - ((1115684864 * v257 + 1501560832) & 0x56800000) - 1742121356) ^ 0xAB695674) & 0xFFC00000 | ((724038789 * v257 - ((374335754 * v257 + 545085286) & 0x2A8E923E) + 1166406866) >> 10);
  v267 = ((2 * v266) & 0xFFAFEF30 ^ 0xAA320) + (v266 ^ 0x7FF2A64A);
  v268 = (v265 ^ 0xDDFFBD96) + ((2 * v265) & 0xBBFF7B2C) + 570442347 + ((2 * v264 - ((4 * v264 + 25438212) & 0x5AC57820) - 1373319149) ^ 0xD29D43EE);
  v269 = v268 ^ 0x37FBF7AC;
  v270 = (2 * v268) & 0x6FF7EF58;
  v271 = ((1583087616 * v261 - ((-1128792064 * v261 + 1571291136) & 0xC6600000) + 302370446) ^ 0xE331CE8E) & 0xFFFC0000 | ((1322801047 * v261 - ((498118446 * v261 + 1871419242) & 0x6C5F76D0) - 1376418019) >> 14);
  v272 = ((2 * v271) & 0xDFE9EFBC ^ 0x1A13C) + (v271 ^ 0x6FF62F60);
  v273 = 1690776883 * v267 - 2 * ((1690776883 * v267 + 982463672) & 0x27B7017E ^ (1690776883 * v267) & 2) - 1572456908;
  v274 = -850608128 * v267 - ((446267392 * v267 + 442236928) & 0x23C70000) + 1594993677;
  v275 = v267 + ((2 * v267 - 2 * ((2 * v267 + 5247184) & 0x64F2AE7C ^ (2 * v267) & 0xC) - 448610495) ^ 0x1B0D518E) + v272 - 667477793 + v269;
  v276 = (v275 + v270) ^ 0xD7FFFFF6;
  v277 = (2 * (v275 + v270)) & 0xAFFFFFEC;
  v278 = ((1009683456 * v272 - ((945625088 * v272 + 756887552) & 0x3494A000) - 1864832357) ^ 0x1A4A529B) & 0xFFFFFC00 | ((((828500154 * v272 + 1044691123) | 0x30EFF3F5) - 414250077 * v272 + 1214622124) >> 22);
  v279 = ((2 * v278) & 0x7B3FDEF6 ^ 0x634) + (v278 ^ 0x3D9FECE5);
  v280 = ((1140850688 * v264 - (((v264 << 27) + 0x8000000) & 0x40000000) - 421475888) ^ 0xA2E0C9D0) & 0xFC000000 | ((1291197393 * v264 - ((-1712572510 * v264 + 1752861602) & 0xB662D662) - 1888571134) >> 6);
  v281 = ((2 * v280) & 0xEBF97F72 ^ 0x2D90B50) + (v280 ^ 0xF6907A15);
  v282 = ((v274 ^ 0x91E3AC0D) & 0xFFFFC000 | (v273 >> 18)) ^ 0x29ED;
  v283 = ((v275 << 31) - (v276 << 30) + 1562929116) ^ 0xDD2867DC;
  v284 = ((1187649351 * (v277 + v276) - ((227815054 * (v277 + v276) + 935973260) & 0x7E6266FE) + 454433861) >> 2) ^ 0xFCC4CDF;
  v285 = ((v284 | v283) ^ 0xABEFEF6B) + ((2 * v284) & 0x57DFDED6);
  v286 = ((v282 - ((2 * v282) & 0x572BEFDE) - 1416235025) ^ 0xAB95F7EF) + 167985223 + v281;
  v287 = (v286 ^ 0xDF3AFCFD) + ((2 * v286) & 0xBE75F9FA) - v279 - v285 + 173335017;
  v288 = (v281 + v279 - v285 + 112578561 - ((2 * (v281 + v279 - v285 + 112578561) - 603371270) & 0x9175EB64) - 1228957137) ^ v287;
  v289 = ((2 * v288) & 0x67C75F64 ^ 0x1454B64) + (v288 ^ 0xFB595A00);
  v290 = -1666779167 * v289 - ((961408962 * v289 + 568569116) & 0x66C839F4) - 2074741880;
  v279 -= 1033891707;
  v291 = (v279 & (v290 ^ 0x33641CFA)) - ((2 * (v279 & (v290 ^ 0x33641CFA))) & 0x7E761CCE);
  LODWORD(a59) = v290 ^ 0x33641CFA;
  v292 = ((2 * (v287 + (v290 ^ 0x33641CFA))) & 0xEE7BF59A) + ((v287 + (v290 ^ 0x33641CFA)) ^ 0x773DFACD);
  v293 = ((v279 + (v290 ^ 0x33641CFA)) ^ 0x7FD7FD9F) + ((2 * (v279 + (v290 ^ 0x33641CFA))) & 0xFFAFFB3E) - 2144861598 + ((((2 * v291 + 2121669838) ^ 0x7E761CCE) + 1369379107 + (~(2 * ((2 * v291 + 2121669838) ^ 0x7E761CCE)) | 0x5CC1DDBB)) ^ 0xAE60EEDD);
  v294 = ((2 * v293) & 0x5DCEFEDE) + (v293 ^ 0xAEE77F6F);
  v295 = 475166415 * v294 - ((950332830 * v294 + 285841022) & 0x29CCD676) - 43305350;
  LODWORD(STACK[0x14B4]) = v290;
  v296 = v285 + (v290 ^ 0xCC9BE305);
  LODWORD(a53) = v296 - ((2 * v296 - 1474289364) & 0xB0C65CDA) + 745750275;
  LODWORD(a51) = v294;
  v297 = 1993277440 * v294 - ((-308412416 * v294 - 1770127360) & 0xBB020000) - 1463751517;
  v298 = -1644559513 * v289;
  v299 = -1644559513 * v289 - 1232600212 + ((263886 * v289 - ((3484 * v289 + 58760) & 0x8188) + 701320) & 0xD9412 ^ 0xFFF7FFFF);
  v300 = ((v297 ^ 0xDD81ECA3) & 0xFFFF0000 | HIWORD(v295)) ^ 0x14E6;
  HIDWORD(v199) = (v299 ^ 0x7FB97F) + 18049 + ((2 * v299) & 0x7F72FE);
  LODWORD(v199) = v298 - 1233045150;
  v301 = (v199 >> 23) - ((2 * (v199 >> 23)) & 0xCD11704E) - 427247577;
  v302 = v300 - ((2 * v300) & 0xC7B03730) - 472376424;
  v303 = (1829507847 * (v302 ^ 0xE3D81B98)) ^ 0x1D7B6D4F;
  v304 = (437790222 * (v302 ^ 0xE3D81B98)) & 0x3AF6DA9E;
  LODWORD(a57) = v292;
  v305 = (((2124791808 * v292 - ((-45383680 * v292 - 276135936) & 0x945A8000) + 1106423045) ^ 0x4A2D6D05) & 0xFFFFC000 | ((1559624343 * v292 - ((-1175718610 * v292 - 492323286) & 0xB28CB8D6) - 895861888) >> 18)) ^ 0x1651;
  HIDWORD(v199) = v296;
  LODWORD(v199) = ((641770566 * (a53 ^ 0xD8632E6D)) & 0xAFFEFB0E) + ((-1826598365 * (a53 ^ 0xD8632E6D)) ^ 0x57FF7D87) - 1476361607;
  v306 = ((2 * (v199 >> 1)) & 0xF77CE9A4) + ((v199 >> 1) ^ 0x7BBE74D2);
  v307 = (v302 ^ v301 ^ 0x8C4B1BF) - v306 - ((2 * ((v302 ^ v301 ^ 0x8C4B1BF) - v306) - 142808668) & 0xB1095D04) + 1413686100;
  v308 = v305 - ((2 * v305) & 0x6F7BD730) + 935193496;
  v309 = ((2 * (v307 ^ v308)) & 0x79FC3DBA ^ 0x58700830) + (v307 ^ v308 ^ 0xD3C75BC7);
  v310 = ((-(((v309 << 25) + 1174405120) & 0xBC000000) - 2130706432 * v309 - 2123818762) ^ 0xDE6918F6) & 0xFF000000 | ((1467387265 * v309 - ((-1360192766 * v309 - 265718970) & 0x95A4D346) - 1025039546) >> 8);
  v311 = ((2 * v310) & 0xB3FAEB9A ^ 0x190A092) + (v310 ^ 0x5937A7A4);
  v312 = ((-731104512 * v306 - ((-1462209024 * v306 - 721996800) & 0xF9028400) - 419636118) ^ 0xFC81426A) & 0xFFFFFF00 | ((181693499 * v306 - 2 * ((181693499 * v306 + 803896218) & 0x5D15297D ^ (181693499 * v306) & 1u) + 218080534) >> 24);
  v313 = ((2 * v312) & 0x3E3F3F9E ^ 0x19A) + (v312 ^ 0x1F1F9F12);
  v314 = ((764801024 * (v308 ^ 0x37BDEB98) - ((1529602048 * (v308 ^ 0x37BDEB98)) & 0x6C022000) - 1241440539) ^ 0xB6011EE5) & 0xFFFFF000 | ((-350037665 * (v308 ^ 0x37BDEB98) - ((373666494 * (v308 ^ 0x37BDEB98)) & 0x3C05F69Eu) + 503511887) >> 20);
  v315 = ((2 * v314) & 0xD7923DCC ^ 0x1C0) + (v314 ^ 0x6BC91F06);
  HIDWORD(v199) = HIWORD(v295);
  LODWORD(v199) = v304 + v303 - 494628175;
  v316 = -402653184 * v313 - (((v313 << 28) + 0x10000000) & 0x20000000);
  v317 = 266431453 * v313 - ((532862906 * v313 + 670108314) & 0x7C221452) - 1844867210;
  v318 = v313 + v315 + ((v199 >> 1) ^ 0x757FE4FF) + ((2 * (v199 >> 1)) & 0xEAFFC9FE) + v311;
  v319 = 519624971 * (v318 - 385145628) - ((1039249942 * (v318 - 385145628) + 684550482) & 0x7D356C40) - 1828623671;
  v320 = (((1683457856 * v311 - ((-928051584 * v311 + 1974526848) & 0xB055FB80) + 318992304) ^ 0x582AFDF0) & 0xFFFFFFC0 | ((831610397 * v311 - ((1663220794 * v311 - 1915305074) & 0xE5737E08) + 967123147) >> 26)) ^ 0x1C;
  v321 = (((v318 << 30) ^ 0x40000000) & 0xC0000000 | (v319 >> 2)) ^ 0x2FA6AD88;
  v322 = v321 - 2 * (v321 & 0x2B07273D ^ (v319 >> 2) & 0x20);
  v323 = (((v316 + 2144245520) ^ 0x17CE9710) & 0xF8000000 | (v317 >> 5)) ^ 0x1F08851;
  v324 = v323 - ((2 * v323) & 0x8398883A) + 1103905821;
  v325 = ((1774010368 * v315 - ((-746946560 * v315 + 619773952) & 0xCA5E8000) + 2007491507) ^ 0xE52F63B3) & 0xFFFFC000 | ((744859381 * v315 - ((1489718762 * v315 + 1803326404) & 0x7F22F526) + 1968161909) >> 18);
  v326 = ((2 * v325) & 0xA7BEEFE8 ^ 0x4FC8) + (v325 ^ 0xD3DF5810);
  v327 = v320 - ((2 * v320) & 0x6DAD4AF6) - 1227446917;
  v322 += 721889053;
  v328 = v322 ^ 0x2B07271D;
  v329 = -1902411965 * (v322 ^ 0x2B07271D) - ((490143366 * (v322 ^ 0x2B07271D)) & 0x4A2F41EC) - 1525178122;
  v330 = v326 + 740329484 + (v324 ^ v327 ^ 0xDC1DC67B ^ v322);
  v331 = ((2 * v330) & 0xED2FF352) + (v330 ^ 0xF697F9A9);
  v332 = ((1747868890 * v331 - 528569835) | 0x5156460B) + 1273549203 * v331 - 418019344;
  v333 = 439508992 * v331 - ((879017984 * v331 + 717045760) & 0x5E870000) - 996006841;
  v334 = (((749993984 * (v327 ^ 0xB6D6A57B) - ((1499987968 * (v327 ^ 0xB6D6A57B)) & 0xE9B80000) - 186809718) ^ 0xF4DD828A) & 0xFFFC0000 | ((778177325 * (v327 ^ 0xB6D6A57B) - ((1556354650 * (v327 ^ 0xB6D6A57B)) & 0x862B5074) + 1125492794) >> 14)) ^ 0x10C56;
  v335 = 67559229 * v326 - ((135118458 * v326 + 353746360) & 0x13B4D0CE) - 999995581;
  v326 *= 1080947664;
  v336 = (v326 + 682487232) & 0x497697E0 ^ v326 & 0x20;
  v337 = v326 + 1914996109;
  v338 = ((v333 ^ 0xAF438447) & 0xFFFFE000 | (v332 >> 19)) ^ 0xAEA;
  v339 = (((v337 - 2 * v336) ^ 0xC97697CD) & 0xFFFFFFF0 | (v335 >> 28)) ^ 8;
  v340 = ((-1610612736 * v328 - 3829153) ^ 0xFFC5925F) & 0xE0000000 | (v329 >> 3);
  v341 = ((2 * v340) & 0xF63ECF30 ^ 0x2004C830) + (v340 ^ 0x6FBD9386);
  v342 = v334 - ((2 * v334) & 0xE029D74C) - 267064410;
  v343 = v341 + (((v342 ^ 0xF014EBA6) - 2007291303) ^ 0xFA45FBE7) + ((2 * ((v342 ^ 0xF014EBA6) - 2007291303)) & 0xF48BF7CE);
  v341 -= 2065655704;
  v344 = ((v339 - 2 * (v339 & 0x4B94E79F ^ v337 & 0x10) + 1268049807) ^ 0xBB800C29 ^ v342) + v341;
  v345 = v338 - ((2 * v338) & 0x80F348AC) - 1065769898;
  v346 = (v344 ^ 0xF83D6FFF) + ((2 * v344) & 0xF07ADFFE) + 130191362 + (v345 ^ 0x3F865BA9);
  v347 = v346 - ((2 * v346) & 0xBF045EE) + 100147959;
  v348 = (v347 ^ 0x5F822F7) + (v345 ^ 0xB55121AE ^ (v343 - ((2 * v343 + 355809538) & 0x8A0063D0) + 1335545449));
  v349 = ((2 * v348) & 0x7FC5F4DE) + (v348 ^ 0xBFE2FA6F);
  v350 = 503906993 * v349 - ((1007813986 * v349 + 2087319170) & 0xDC7F5F40) - 1401640223;
  v351 = ((2 * ((v350 ^ 0x11C0505F) + v341 + 1)) & 0xFD7FBCFE) + (((v350 ^ 0x11C0505F) + v341 + 1) ^ 0xFEBFDE7F);
  v352 = -2133567689 * v351 - ((27831918 * v351 + 503059310) & 0x25AFECA4) + 1641414665;
  LODWORD(a28) = v351;
  v353 = ((45780112 * v351 + 2057359) | 0xFA22277F) + 111327672 * v351;
  HIDWORD(a29) = v347;
  LODWORD(a37) = v347 ^ v350;
  v354 = v347 ^ v350 ^ 0xEBC78D57;
  v355 = -182601181 * v354 - ((708539462 * v354) & 0x21140982) + 277480641;
  v356 = ((v353 + (v352 >> 29) + 2061449721) ^ 0x2EEEC40) - 2 * (((v353 + (v352 >> 29) + 2061449721) ^ 0x2EEEC40) & 0x5FB28D3D ^ (v352 >> 29) & 4) - 541946567;
  v357 = ((872415232 * (v356 ^ 0xDFB28D39)) & 0x80000000) - 1711276032 * (v356 ^ 0xDFB28D39);
  v358 = 1243091277 * (v356 ^ 0xDFB28D39) - ((-1808784742 * (v356 ^ 0xDFB28D39)) & 0xD1A66A32) - 388811495;
  LODWORD(a27) = ((2 * ((v345 ^ 0xC079A456) - (v350 ^ 0xEE3FAFA0))) & 0xF9EFFFDE) + (((v345 ^ 0xC079A456) - (v350 ^ 0xEE3FAFA0)) ^ 0xFCF7FFEF);
  v359 = (-(((a27 << 27) - 2013265920) & 0xBFFFFFFF) - 2080374784 * a27 + 591652592) ^ 0x5F43E6F0 | ((((1012039358 * a27 + 829057693) | 0x53DCDBA7u) + 1641463969 * a27 + 1029463262) >> 6);
  v360 = ((2 * v359) & 0x7BFDF662 ^ 0x2B08400) + (v359 ^ 0xBEA6BD79);
  v361 = -393478144 * v354 - ((-786956288 * v354) & 0xE5900000);
  v362 = -1677777185 * v360 - ((939412926 * v360 + 160814242) & 0x4C754EF0) + 1795527113;
  v363 = ((v361 + 1925967199) ^ 0x72CBED5F) & 0xFFFC0000 | (v355 >> 14);
  v364 = ((2 * v363) & 0xF75BBFFE ^ 0x8450) + (v363 ^ 0x7BAD9DD7);
  v365 = (((1643642880 * v349 - ((-1007681536 * v349 - 1427111936) & 0xA9E00000) + 711594802) ^ 0xD4F21332) & 0xFFF80000 | ((2042768447 * v349 - ((-209430402 * v349 + 167155038) & 0xE6D1A778) + 2019827307) >> 13)) ^ 0x79B46;
  v366 = (v356 ^ (v365 - ((2 * v365) & 0xF5031DDE) + 2055311087) ^ 0xA53303D6) - v360 - 1107363023;
  v367 = v366 ^ 0xB3674FFC;
  v368 = (2 * v366) & 0x66CE9FF8;
  v369 = -110973767 * v364 - ((1925536114 * v364 + 209164658) & 0x570B3AEA) - 1312724434;
  v370 = v367 + v364;
  v371 = -910704640 * v360;
  v372 = 901760895 * (v368 + v370 + 1946084976) - ((192909054 * (v368 + v370 + 1946084976) + 361588694) & 0x1B6C0FCE) + 679263186;
  v373 = 1487613504 * v364 - ((827743360 * v364 + 501636224) & 0x23D84600) - 1595977362;
  v374 = v371 - 1164689408;
  v375 = ((v371 - 1164689408) & 0xFFFFC000 | (v362 >> 18)) ^ 0x298E;
  v376 = (((v357 - 1047241850) ^ 0xC1945B86) & 0xFE000000 | (v358 >> 7)) ^ 0x1D1A66A;
  v377 = v376 - ((2 * v376) & 0xB3DFF9AE);
  v378 = ((2 * ((v372 >> 3) - (v370 << 29) + 1610612736)) & 0x7BFFFB10 ^ 0x236D8110) + (((v372 >> 3) - (v370 << 29) + 1610612736) ^ 0x2C493D74);
  v379 = ((v375 - ((2 * v375) & 0x2A68AEEE) - 1791731849) ^ 0x6ACBA888) + v371;
  v380 = ((v362 >> 18) ^ (((v362 >> 18) ^ 0xFFFFD671) - ((2 * ((v362 >> 18) ^ 0xFFFFD671) + 2) & 0xCE37AE2) - 2039366286) ^ 0xDE697D9D ^ (v379 - ((2 * v379 + 1965588482) & 0xB031D2C4) + 313338211)) + v374;
  v381 = ((2 * v380) & 0xEF771FDC) + (v380 ^ 0xF7BB8FEE);
  v382 = ((2 * ((v373 ^ 0x11EC232E) & 0xFFFFFFC0 | (v369 >> 26))) & 0xB7EEDF7E ^ 0x54) + (((v373 ^ 0x11EC232E) & 0xFFFFFFC0 | (v369 >> 26)) ^ 0xDBF76F95);
  v383 = (((v377 - 638583593) ^ 0xD9EFFCD7) - v378 + 1040186760 - ((2 * (((v377 - 638583593) ^ 0xD9EFFCD7) - v378 + 1040186760)) & 0xB8885058) - 599513044) ^ 0xDC44282C;
  v384 = (v383 ^ (v381 + 138702866)) - ((2 * (v383 ^ (v381 + 138702866))) & 0x5AFF3B14);
  v385 = (2 * ((v383 & (v381 + 138702866)) - ((2 * (v383 & (v381 + 138702866))) & 0x5A48185E)) - 632809378) ^ 0xDA48185E;
  v386 = v385 - ((2 * v385) & 0x606BFCF8);
  v387 = 1783562108 * v381 - 968608072;
  v388 = 1519632351 * v381;
  v381 *= -1255702594;
  v389 = v388 - ((v381 - 484304036) & 0xFD7881C6) + 1884114577;
  v390 = ((v386 - 1338638723) ^ 0xB035FE7D) + ((v384 + 763338122) ^ 0x2D7F9D8A);
  v391 = v382 + (v390 ^ 0x6A1F77DE) + ((2 * v390) & 0xD43EEFBC) + 367180635;
  v392 = v381 - (v387 & 0xFF40714C) - 490580989;
  v393 = -1188422873 * v378 - ((1918121550 * v378 + 1541804176) & 0xF1F25946) + 653014251;
  v394 = 1356412928 * v378 - ((565342208 * v378 + 813989888) & 0x575E6000) + 1139897981;
  v395 = ((v392 ^ 0xFFA038A7) & 0xFFFFFFFE | (v389 >> 31)) - 1026159696 - ((2 * (v392 ^ 0xFFA038A7)) & 0x85AC1760);
  v396 = ((1026031616 * v391 - ((2052063232 * v391 - 494927872) & 0xD0800000) - 645830683) ^ 0x684167E5) & 0xFFF80000 | ((-1525192795 * v391 - ((1244581706 * v391 - 1769972656) & 0xC9DFA7B0) - 1339031040) >> 13);
  v397 = ((2 * v396) & 0x2FB7C9DA ^ 0x648D8) + (v396 ^ 0x97DCC393);
  v398 = ((2 * ((v394 ^ 0xABAF367D) & 0xFFFFF800 | (v393 >> 21))) & 0x7BFB367A ^ 0x60A) + (((v394 ^ 0xABAF367D) & 0xFFFFF800 | (v393 >> 21)) ^ 0x3DFD98FA);
  v399 = (-630489088 * v382 - ((886505472 * v382 + 446103552) & 0x3BDF0000) - 1959061649) ^ 0x9DEF976F;
  v400 = (1813361879 * v382 - ((-668243538 * v382 + 333952302) & 0xD7903990) - 172230817) >> 17;
  v401 = ((2 * (v400 | v399)) & 0xF9A5F8FE ^ 0x68C8) + ((v400 | v399) ^ 0x7CD2C99B);
  v402 = (((v395 ^ 0xC2D60BB0) + v398 - 1040030525) ^ 0x6FA5E7F7) - v401 + ((2 * ((v395 ^ 0xC2D60BB0) + v398 - 1040030525)) & 0xDF4BCFEE) + 1020279451 + v397;
  v403 = ((-(((v397 << 25) + 637534208) & 0x36000000) - 520093696 * v397 + 1315466753) ^ 0x9B686E01 | ((1650680033 * v397 - ((-993607230 * v397 - 1602758810) & 0x84D00486) - 1834750474) >> 8)) ^ 0xC26802;
  v404 = (((656767872 * v398 - ((239793920 * v398 + 429270272) & 0x1EBEB600) + 2083155424) ^ 0xF5F5B60) & 0xFFFFFF80 | ((-1471264009 * v398 - ((278697454 * v398 + 431172682) & 0x21D5D972) + 499417822) >> 25)) ^ 0x48;
  v405 = v404 - ((2 * v404) & 0xD3D2C59A) + 1776902861;
  v406 = ((__PAIR64__(v400, -225844677 * v401 - 897535813) >> 1) ^ 0xDEFFCB77) + ((2 * (__PAIR64__(v400, -225844677 * v401 - 897535813) >> 1)) & 0xBDFF96EE) + 553661577 + (v405 ^ 0x69E962CD);
  v407 = ((-916129792 * v402 - ((315224064 * v402 + 1118830592) & 0x66FCF000) - 724140748) ^ 0x337E7D34) & 0xFFFFF800 | ((-1728500577 * v402 - 2 * ((-1728500577 * v402 + 255077120) & 0x2EC359FD ^ (-1728500577 * v402) & 0x19) + 1039631588) >> 21);
  v408 = ((2 * v407) & 0xF39FE9FE ^ 0x8EC) + (v407 ^ 0x79CFF189);
  v409 = v403 - ((2 * v403) & 0x3F21E5B0) + 529593048;
  v410 = (v406 ^ 0x6BFDB370) + ((2 * v406) & 0xD7FB66E0) - 1811788655 + (v409 ^ 0xE06F0D27);
  v411 = v408 + (v410 ^ 0xF8FB9ECB) + ((2 * v410) & 0xF1F73D96);
  v412 = ((v408 - 2043671807 + (v405 ^ 0x521743C2 ^ v409)) ^ 0xDF9CBFFF) + ((2 * (v408 - 2043671807 + (v405 ^ 0x521743C2 ^ v409))) & 0xBF397FFE) - 1171857937 + ((v411 - ((2 * v411 + 443078764) & 0xD011C67E) - 180531339) ^ 0x6808E33F);
  LODWORD(STACK[0x14A8]) = v113;
  LODWORD(STACK[0x14B0]) = v234;
  LODWORD(a49) = v350;
  LODWORD(STACK[0x14B8]) = v350;
  LODWORD(STACK[0x14BC]) = v412 - ((2 * v412) & 0xA964EBA2) - 726501935;
  v413 = (off_2A1E5DED0[v67 ^ 0x5FC])(1028);
  STACK[0x14C0] = v413;
  STACK[0x4F0] = v413;
  return (off_2A1E5DED0[(109 * (v413 == 0)) ^ v67 ^ 0x15])(v413, v414, v415, v416, v417, v418, v419, v420, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_2979E9468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, int a63)
{
  LODWORD(a14) = a55 ^ 0x28C4F112;
  LODWORD(v113) = v76 >> 8;
  HIDWORD(v115) = a62 ^ 0xBAF23BCE;
  HIDWORD(v114) = (a64 ^ (a66 + 1879099926)) - ((2 * (a64 ^ (a66 + 1879099926))) & 0xF9C134A8) - 52389292;
  HIDWORD(v116) = a57 - 2000550605;
  v79 = a53 ^ ((a59 ^ (a57 - 2000550605)) - ((2 * (a59 ^ (a57 - 2000550605))) & 0xC7CEC48E) + 1676108359) ^ 0xBB844C2A ^ (a51 + 1360560273);
  LODWORD(v114) = v79 - ((2 * v79) & 0x55CAE39A) + 719679949;
  HIDWORD(v80) = v77 ^ v78 ^ 0x296EE;
  LODWORD(v80) = v77 ^ v78 ^ 0xBCB80000;
  v81 = (v80 >> 18) - ((2 * (v80 >> 18)) & 0xB8FA8D76) + 1551713979;
  HIDWORD(v80) = v81 ^ 0xC8C;
  LODWORD(v80) = v81 ^ 0x2A348000;
  v82 = (v78 ^ v72) - (((v80 >> 14) - ((2 * (v80 >> 14)) & 0x8D1239B2) - 964092711) ^ 0xEE54C5FE);
  v83 = (v77 ^ ((v77 ^ 0x97F71CC0) - ((2 * (v77 ^ 0x97F71CC0) + 2) & 0x9CA6E530) + 1314091673) ^ 0xDDEE5472 ^ (v82 - ((2 * v82) & 0xF76B8BAA) - 71973419)) + (v78 ^ v72);
  LODWORD(a17) = v83 - ((2 * v83) & 0x9FB9B4AC) + 1339873878;
  HIDWORD(v113) = (v78 ^ 0x9B6EAF87 ^ a17) - ((2 * (v78 ^ 0x9B6EAF87 ^ a17)) & 0xB5B2DEF8) + 1524199292;
  v84 = (a71 - 1395604238) & 0x532F3AF9;
  LODWORD(v115) = (v73 ^ v71) + (v78 ^ v72) - ((2 * ((v73 ^ v71) + (v78 ^ v72))) & 0xF017C4E0) + 2014044784;
  v117 = vdupq_n_s32(a51 + 1360560273);
  LODWORD(v116) = v74 + (v78 ^ v72) - ((2 * (v74 + (v78 ^ v72))) & 0xFCDC2F48) + 2121144228;
  v85 = (((v116 ^ LODWORD(STACK[0x1690]) ^ 0x7FCD7B8B) - ((2 * (v116 ^ LODWORD(STACK[0x1690]) ^ 0x7FCD7B8B) + 361619600) & 0x451FDCC6) + 1834409643) ^ (v84 + 579857850)) + LODWORD(STACK[0x16A8]);
  v86 = vdupq_n_s32(0xB5597170);
  v87 = (((v85 - ((2 * v85) & 0xB46A742E) - 634045917) & 0xFFFFFFFE) - 12) ^ 0xC321F76F;
  v118 = LODWORD(STACK[0x14B0]) ^ LODWORD(STACK[0x14A8]) ^ LODWORD(STACK[0x14B8]);
  LOBYTE(v85) = -117 - 30 * ((((v85 - ((2 * v85) & 0x2E) + 35) & 0xFE) - 12) ^ 0x6F);
  v88 = -338261534 * v87;
  v89 = vdupq_n_s32(0xFF22643C);
  v90 = vdupq_n_s32(0xFF91321E);
  LODWORD(a59) = HIBYTE(v75) ^ 0x683D11AD;
  LODWORD(a57) = BYTE3(a49) ^ 0x7809E9A1;
  LODWORD(a51) = v84 ^ 0x4CB;
  v91.i64[0] = 0x200000002;
  v91.i64[1] = 0x200000002;
  v92.i32[0] = dword_297A212A0[((-117 - 33 * v87 - ((-66 * v87) & 0x16)) ^ v118) ^ 0x69];
  v92.i32[1] = dword_297A212A0[((-117 - 32 * v87) ^ v118) ^ 0x69];
  v92.i32[2] = dword_297A212A0[((-117 - 31 * v87 - ((-62 * v87) & 0x16)) ^ v118) ^ 0x69];
  v92.i32[3] = dword_297A212A0[((v85 - ((v88 << (v84 ^ 0xA8)) & 0x14)) ^ v118) ^ 0x69];
  v93 = vsraq_n_u32(vshlq_n_s32(veorq_s8(v92, vdupq_n_s32(0x3F29u)), 0x11uLL), veorq_s8(v92, vdupq_n_s32(0x52918000u)), 0xFuLL);
  v94 = vaddq_s32(vsubq_s32(v93, vandq_s8(vaddq_s32(v93, v93), vdupq_n_s32(0x28B13F78u))), vdupq_n_s32(0x94589FBC));
  v95 = vsraq_n_u32(vshlq_n_s32(veorq_s8(v94, vdupq_n_s32(0x1EBE5u)), 0xFuLL), veorq_s8(v94, vdupq_n_s32(0x739C0000u)), 0x11uLL);
  v96 = vaddq_s32(vaddq_s32(v95, vdupq_n_s32(0x4BCE1BEDu)), vmvnq_s8(vandq_s8(vaddq_s32(v95, v95), vdupq_n_s32(0x979C37D8))));
  v97 = veorq_s8(v96, vdupq_n_s32(0x5E1E71EDu));
  v98 = vmulq_s32(v97, v97);
  v99 = veorq_s8(vaddq_s32(vshlq_n_s32(vsubq_s32(v98, vandq_s8(vaddq_s32(v98, v98), vdupq_n_s32(0x6AB2E2Eu))), 4uLL), v86), v86);
  v100 = veorq_s8(veorq_s8(veorq_s8(v117, v96), vdupq_n_s32(0x22D4D05Au)), vaddq_s32(vsubq_s32(v99, vandq_s8(vaddq_s32(v99, v99), vdupq_n_s32(0xF9954360))), vdupq_n_s32(0x7CCAA1B7u)));
  v101 = vaddq_s32(vsubq_s32(v100, vandq_s8(vaddq_s32(v100, v100), v89)), v90);
  v102 = vaddq_s32(v101, v101);
  v103 = veorq_s8(v102, v89);
  v104 = veorq_s8(vandq_s8(v103, vdupq_n_s32(0x287DF1Eu)), vandq_s8(v102, v91));
  v105 = vaddq_s32(veorq_s8(v101, v90), vdupq_n_s32(0x84F81E9E));
  v106 = vaddq_s32(vaddq_s32(vaddq_s32(veorq_s8(v105, vdupq_n_s32(0xFFAD38BD)), vandq_s8(vaddq_s32(v105, v105), vdupq_n_s32(0xFF5A717A))), vdupq_n_s32(0x52C744u)), veorq_s8(vandq_s8(vaddq_s32(vsubq_s32(v103, vaddq_s32(v104, v104)), vdupq_n_s32(0xA87DF1Cu)), vdupq_n_s32(0x9F03D3Cu)), vdupq_n_s32(0xF77FE2E3)));
  v107 = veorq_s8(veorq_s8(vdupq_n_s32(a66 + 1879099926), vdupq_n_s32(0x925C2EC6)), vaddq_s32(vaddq_s32(v106, vdupq_n_s32(0x925C2EC7)), vmvnq_s8(vandq_s8(vaddq_s32(v106, v106), vdupq_n_s32(0x24B85D8Cu)))));
  v108 = veorq_s8(veorq_s8(vdupq_n_s32(v115), vdupq_n_s32(0x8A0431FB)), vaddq_s32(vsubq_s32(v107, vandq_s8(vaddq_s32(v107, v107), vdupq_n_s32(0x4458E3Eu))), vdupq_n_s32(0x8222C71F)));
  v109 = STACK[0x14C0];
  v110 = (STACK[0x14C0] + 4 * ((-117 - 32 * v87) ^ 0x8Bu));
  v111 = (STACK[0x14C0] + 4 * ((-117 - 31 * v87 - ((-62 * v87) & 0x16)) ^ 0x8Bu));
  *(v109 + 4 * ((-117 - 33 * v87 - ((-66 * v87) & 0x16)) ^ 0x8Bu)) = v108.i32[0];
  *v110 = v108.i32[1];
  *v111 = v108.i32[2];
  *(v109 + 4 * ((v85 - ((v88 << (v84 ^ 0xA8)) & 0x14)) ^ 0x8Bu)) = v108.i32[3];
  return (off_2A1E5DED0[v84 ^ 0x14u])(v88, -161000053 - 338261535 * v87, -161000053 - 338261536 * v87, -161000053 - 338261537 * v87, -676523070 * v87, -676523074 * v87, 8 * v87, 105, a9, v113, v114, v115, v116, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_2979E9C6C()
{
  v3 = (v0 + v1 - 1019) | 0xAD;
  v5 = LODWORD(STACK[0xF38]) + 13026160 < 0 && LODWORD(STACK[0xF58]) - 2135678998 <= v3 - 766;
  v6 = *(v2 + 8 * ((2022 * v5) ^ (v0 + v1 - 604)));
  LODWORD(STACK[0x10B0]) = v3;
  return v6();
}

uint64_t sub_2979E9C84()
{
  v2 = (*(v0 + 8 * (v1 + 284)))(STACK[0x1250]);
  v3 = v2 - 0x8A59BD603E78569 - ((v1 ^ 0xEEB4C853F830FD45) & (2 * v2)) + 413;
  STACK[0x1530] = v3;
  v4 = (off_2A1E5DED0[v1 ^ 0x360])((v3 ^ (v1 - 912 - 0x8A59BD603E78569)) + 1, 0x100004077774924);
  STACK[0x1538] = v4;
  STACK[0x3B8] = v4;
  return (off_2A1E5DED0[(110 * (v4 != 0)) ^ v1])();
}

uint64_t sub_2979E9D5C()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x37E)))();
  v4 = (off_2A1E5DED0[v1 + 123])(STACK[0x1250], STACK[0x1538], v2 + 1, v3);
  return (off_2A1E5DED0[(245 * (((v1 ^ (((v4 ^ 0x7F) + (v4 << (((v1 - 86) ^ 9) & 0xED))) == 127)) & 1) == 0)) ^ v1])();
}

uint64_t sub_2979E9E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v58 = (off_2A1E5DED0[a51 + 492])(1032);
  STACK[0x14D8] = v58;
  STACK[0x4E0] = v58;
  v59 = STACK[0x14C0];
  return (off_2A1E5DED0[(26 * ((((a51 + 6614562) ^ (v58 == 0)) & 1) == 0)) ^ a51])(v58, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979E9EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, uint64_t a47, char a48)
{
  v50 = (v48 | 0x75010500) - 1969615879;
  v51 = ((a15 ^ 0x12285DD ^ LODWORD(STACK[0x14BC])) + (v50 ^ 0x76D4F47) - ((2 * (a15 ^ 0x12285DD ^ LODWORD(STACK[0x14BC])) + 1677311734) & 0xAAE0D97E)) ^ 0x12285DD;
  LOBYTE(v51) = (v51 - ((2 * v51 - 10) & 0x7E) + 58) ^ 0xDD;
  LOBYTE(v51) = ((v51 - ((2 * v51 - 10) & 0x7E) + 58) ^ 0xBF) + (a48 ^ 0x88);
  LOBYTE(v51) = (v51 - ((2 * v51) & 0x58) + 44) & 0xFE ^ 0xF3;
  v52 = 2 * (((a18 ^ 0x4FDCDA56) & a46) - ((2 * ((a18 ^ 0x4FDCDA56) & a46)) & 0x6823AB60)) - 400315552;
  v53 = (((a18 ^ 0x4FDCDA56) + a46) ^ 0xF9FBBD72) + ((2 * ((a18 ^ 0x4FDCDA56) + a46)) & 0xF3F77AE4) + 100942479 + (((v52 ^ 0xE823AB60) - 2 * ((v52 ^ 0xE823AB60) & 0x34AFD75C ^ v52 & 8) - 1263544491) ^ 0x4B5028AA);
  v54 = v53 - ((2 * v53) & 0x2CB0473A) - 1772608611;
  LOBYTE(v53) = -69 * v51 + 32;
  v55 = v54 ^ a14 ^ dword_297A1DC40[((v53 - ((118 * v51) & 0x40)) ^ (((LODWORD(STACK[0x14B0]) ^ LODWORD(STACK[0x14A8])) ^ LODWORD(STACK[0x14B8])) >> 16) ^ 0xCF) ^ 0xBD];
  *(STACK[0x14D8] + 4 * ((v53 - ((118 * v51) & 0x40)) ^ 0x20u)) = ((v55 ^ 0x98343F00) + 1061671067 - 2 * ((v55 ^ 0x98343F00) & ((((v48 | 0x75010500) + 1187899003) & 0x43CC26FC) + 1061671067) ^ v55 & 0x15) + 1255) ^ 0xA1F188D6;
  return (*(v49 + 8 * v50))(189);
}

void sub_2979EA1D0()
{
  v0 = LODWORD(STACK[0xF58]) + 996587999;
  LOBYTE(STACK[0xF57]);
  JUMPOUT(0x2979EA210);
}

uint64_t sub_2979EA268@<X0>(int a1@<W8>)
{
  v9 = STACK[0x10B0];
  LODWORD(STACK[0x10B4]) = STACK[0x10B0];
  v10 = v9 - v5 + 846;
  LODWORD(STACK[0x10B8]) = v10;
  v11 = v10 ^ (v4 + 415);
  LODWORD(STACK[0x10BC]) = v11;
  v12 = (v11 + 16 * LODWORD(STACK[0xF38]) - 2 * ((16 * LODWORD(STACK[0xF38]) + 208418560) & 0x1134E5D0 ^ (16 * LODWORD(STACK[0xF38])) & 0x10) - 1650386150) ^ 0x9134E5C9 | (a1 - 984783381);
  v13 = LODWORD(STACK[0xB90]) ^ 0x3F51FB62;
  LODWORD(STACK[0x10C0]) = v13;
  v14 = STACK[0x15B8] + v13;
  v15 = 233206231 * ((233206231 * ((v14 ^ LODWORD(STACK[0xF50])) & 0x7FFFFFFF)) ^ ((233206231 * ((v14 ^ LODWORD(STACK[0xF50])) & 0x7FFFFFFF)) >> 16));
  LOBYTE(STACK[0x5D2]) = byte_297A1BB80[v15 >> 24] ^ byte_297A230A0[(v15 >> 24) + 1] ^ byte_297A1E040[v15 >> 24] ^ (v12 - ((2 * v12) & 0xD2) - 23) ^ v15 ^ (9 * ((233206231 * ((233206231 * ((v14 ^ LODWORD(STACK[0xF50])) & 0x7FFFFFFF)) ^ ((233206231 * ((v14 ^ LODWORD(STACK[0xF50])) & 0x7FFFFFFF)) >> 16))) >> 24)) ^ 0xE9;
  STACK[0x5C8] = v14;
  STACK[0x5C0] = *(v8 + 8 * (v9 + 716));
  v1 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v2 = (*(qword_2A13A4DD8 + 32 * *(((v1 - *(v7 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v6 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v2);
}

uint64_t sub_2979EA39C()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x449)))(STACK[0x1250]);
  v3 = ((v1 + 1790380375) & 0x9548F5FF) + (v2 ^ 0x36D515EAF7D6FFF7) - (off_2A1E5DED0[v1 ^ 0x403])() + ((v1 ^ 0x6DAA2BD5EFADFDA8) & (2 * v2)) == 0x36D515EAF7D70194;
  return (off_2A1E5DED0[(484 * v3) ^ v1])();
}

uint64_t sub_2979EA4D4()
{
  LODWORD(STACK[0x274]) = 458219693;
  v2 = (*(v0 + 8 * ((v1 + 753) ^ 0x2C3)))(8, 0x100004077774924);
  STACK[0x15A8] = v2;
  return (off_2A1E5DED0[(61 * (((7 * ((v1 - 32) & 0xFB ^ 0x42)) ^ (v2 == 0)) & 1)) ^ (v1 + 753)])();
}

uint64_t sub_2979EA578()
{
  v2 = STACK[0x15A8];
  *v2 = (2 * v1) ^ 0xFC ^ (HIBYTE(STACK[0x2C0]) - ((STACK[0x2C0] >> 55) & 0x76) + 59) ^ 0x35;
  v2[1] = (HIWORD(STACK[0x2C0]) - ((STACK[0x2C0] >> 47) & 0x14) + 10) ^ 0xA;
  v2[2] = ((WORD2(STACK[0x2C0]) >> 8) - ((STACK[0x2C0] >> 39) & 0x12) - 119) ^ 0x89;
  v2[3] = (HIDWORD(STACK[0x2C0]) - ((STACK[0x2C0] >> 31) & 0xB8) + 92) ^ 0x5C;
  v2[4] = (HIBYTE(LODWORD(STACK[0x2C0])) - ((LODWORD(STACK[0x2C0]) >> 23) & 0x5A) + 45) ^ 0x2D;
  v2[5] = (HIWORD(LODWORD(STACK[0x2C0])) - ((LODWORD(STACK[0x2C0]) >> 15) & 0xD6) - 21) ^ 0xEB;
  v2[6] = (((LODWORD(STACK[0x2C0]) >> 7) & 0xD2) - BYTE1(LODWORD(STACK[0x2C0])) - 106) ^ 0x96;
  v2[7] = (LOBYTE(STACK[0x2C0]) - ((2 * LOBYTE(STACK[0x2C0])) & 0xBF) - 33) ^ 0xDF;
  v3 = (*(v0 + 8 * (v1 + 712)))(8, 50, 419375082);
  STACK[0x1390] = v3;
  v4 = off_2A1E5DED0[((2 * (v3 == 0)) | (4 * (v3 == 0))) ^ v1];
  LODWORD(STACK[0xD5C]) = v1;
  STACK[0xD60] = 0x1D6C5EA9D99D85E6;
  STACK[0xD68] = 0x6E6E00437B0F0783;
  STACK[0xD70] = 0x497FF81E2D61B8BLL;
  return v4();
}

void sub_2979EA750()
{
  v0 = STACK[0xD70];
  STACK[0xD78] = STACK[0xD70];
  v1 = STACK[0xD68];
  STACK[0xD80] = STACK[0xD68];
  STACK[0xD88] = STACK[0xD60];
  v2 = STACK[0xD5C];
  LODWORD(STACK[0xD94]) = STACK[0xD5C];
  LOBYTE(v0) = *(v0 + STACK[0x15A8] - 0x497FF81E2D61B8BLL);
  v3 = v1 + STACK[0x1390] - 0x6E6E00437B0F0783;
  v4 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v3) & 0x7FFFFFFF);
  v5 = 233206231 * ((v4 >> (v2 - 105)) ^ v4);
  v6 = byte_297A20DA0[v5 >> 24];
  LODWORD(STACK[0xD98]) = v2 - 875;
  LOBYTE(STACK[0x5D2]) = v6 ^ v0 ^ byte_297A242D0[(v5 >> 24) + 4] ^ byte_297A1DA20[(v5 >> 24) + 1] ^ v5 ^ (103 * BYTE3(v5));
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979CD988);
}

uint64_t sub_2979EA850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v60 = (*(v59 + 8 * (v58 + 338)))(1032);
  STACK[0x1370] = v60;
  STACK[0x510] = v60;
  v61 = STACK[0x14C0];
  return (off_2A1E5DED0[((((v58 - 117) ^ (v60 == 0)) & 1) * ((v58 + 528468419) & 0xFCE4FBFE ^ 0x1C64CB59)) ^ v58])(v60, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_2979EAAD0()
{
  STACK[0x380] = STACK[0x1478];
  v2 = STACK[0x1590];
  LODWORD(STACK[0x388]) = STACK[0x1590];
  LODWORD(STACK[0x378]) = -532518613;
  if (v2 == 754590252)
  {
    v3 = 1314146714;
  }

  else
  {
    v3 = LODWORD(STACK[0x158C]) + ((2 * ((v0 - 1748880603) & 0x683DCCF9 ^ 0x5D2)) ^ 0xCE5909A4);
  }

  LODWORD(STACK[0x20C]) = v3;
  v4 = (*(v1 + 8 * (v0 ^ 0x2D8)))(v3 - 1314146714, 50, 1681510395);
  STACK[0x430] = v4 + 0x5F9955DC0BC2CB12;
  return (*(v1 + 8 * (((2 * (v4 != 0)) | (4 * (v4 != 0))) ^ v0)))();
}

uint64_t sub_2979EABA8()
{
  LODWORD(STACK[0x1544]) = 863216518;
  LODWORD(STACK[0x35C]) = 941099186;
  return (*(v1 + 8 * ((60 * (((v0 - 589) | 0x450) == 1239)) ^ v0)))();
}

void sub_2979EABE0(int a1@<W8>)
{
  LODWORD(STACK[0x4D4]) = a1;
  v2 = v1 ^ 0x12 ^ LODWORD(STACK[0x156C]) ^ 0x1A07u;
  v4 = STACK[0x15F8];
  v3 = STACK[0x1570];
  JUMPOUT(0x2979EAC1CLL);
}

uint64_t sub_2979EAD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v66 = (((v62 - 400) | 0x40) - 585) | 0x230u;
  v67 = (&STACK[0x21C] ^ 0x78FFF41F75FBFD33) - 0x78FFF41F75FBFD33 + ((2 * &STACK[0x21C]) & 0xF1FFE83EEBF7FA60);
  v68 = STACK[0x300];
  v70 = STACK[0x320];
  v71 = STACK[0x1290] + STACK[0x1278] - 0x1343352DA4F4430CLL;
  return (*(a3 + 8 * ((152 * (((v66 + 25) ^ 0x2CA24954) + v64 + v66 - 561 == 1760283430)) ^ v66)))(3982445107, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, v63, a52, a1, a54, a55, a56, ((v67 % (v66 ^ 0x214uLL)) ^ 0xADBFF3CF4FB73EFFLL) + 2 * (v67 % (v66 ^ 0x214uLL)), a58, v65, a60, a61, a62);
}

uint64_t sub_2979EAE58()
{
  v2 = (v0 + 742456360) | 0x10088000;
  v3 = v2 - 1011449228;
  v4 = (*(v1 + 8 * (v2 ^ 0x3C498637)))(STACK[0x288] - 0xB757426B61DC812);
  return (*(v1 + 8 * ((252 * ((((v3 - 1551830146) ^ (STACK[0x2E0] == 0x5F9955DC0BC2CB12)) & 1) == 0)) ^ v3)))(v4);
}

uint64_t sub_2979EB160(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  STACK[0x22C8] = 0x503D63C0C935D31FLL;
  LODWORD(STACK[0x410]) = *(v6 + 2140) - 1306450980;
  v9 = *(v7 + 2136);
  STACK[0x538] = *(a4 + 8 * ((v4 + 1061288928) ^ 0x7B8B76F6));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v9;
  STACK[0x550] = v5;
  LODWORD(STACK[0x558]) = (v4 + 1061288928) ^ 0x1E;
  LODWORD(STACK[0x55C]) = (v4 + 1061288928) ^ 0x19;
  LODWORD(STACK[0x560]) = v4 + 1061288928;
  *(v8 - 208) = 1508565502 - 490657303 * ((v8 - 1516150432 - 2 * ((v8 - 224) & 0xA5A16240)) ^ 0x48576C8D) + v4 + 1338;
  *(v8 - 216) = &STACK[0x538];
  v10 = (*(a4 + 8 * ((v4 + 1338) ^ (a2 + 1546))))(v8 - 224);
  return (off_2A1E5DED0[*(v8 - 224)])(v10);
}

uint64_t sub_2979EB26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  (*(a2 + 8 * (v60 + v59 + 2)))(a37 + a39, 0x100004077774924);
  v61 = (off_2A1E5DED0[v59 ^ (v59 + 1559)])();
  v62 = a35 + 1365300272 + v61 - ((2 * v61) & 0xA2C1A860) - 202;
  LODWORD(xmmword_2A13A3880) = v62;
  DWORD1(xmmword_2A13A3880) = -780831694 - ((2 * (((1812433253 * (v62 ^ 0x5160D431 ^ (v62 >> 30))) ^ 0x7FEB5FFF) + ((-670100790 * (v62 ^ 0x5160D431 ^ (v62 >> 30))) & (((a35 - 823972207) & 0x311CD3BD) - 2704155)) + 3388811) - 4074258) & 0xA2C1A860) + ((1812433253 * (v62 ^ 0x5160D431 ^ (v62 >> 30))) ^ 0x7FEB5FFF) + ((-670100790 * (v62 ^ 0x5160D431 ^ (v62 >> 30))) & (((a35 - 823972207) & 0x311CD3BD) - 2704155));
  v63 = off_2A1E5DED0[(a35 ^ 0x3D)];
  return (v63)(v63, off_2A1E5DED0, 3624866506, 1812433253, a35, 2146131967, 4290893038, 3510746791, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_2979EB3D8(double a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int8x16_t a53, int32x4_t a54, int8x16_t a55, int8x16_t a56, int8x16_t a57)
{
  v59 = vld1q_dup_f32(&xmmword_2A13A3880);
  v60.i64[0] = 0x8000000080000000;
  v60.i64[1] = 0x8000000080000000;
  v61.i64[0] = 0x200000002;
  v61.i64[1] = 0x200000002;
  a2.i64[0] = *(&xmmword_2A13A3880 + 4);
  a2.i32[2] = HIDWORD(xmmword_2A13A3880);
  v62 = vextq_s8(v59, a2, 0xCuLL);
  v63 = a2;
  v63.i32[3] = dword_2A13A3890;
  v64 = veorq_s8(vorrq_s8(vandq_s8(v63, a57), vandq_s8(v62, v60)), a56);
  v65 = veorq_s8(vandq_s8(v64, a55), vandq_s8(v63, v61));
  v66.i32[0] = *(v58 + 4 * (BYTE4(xmmword_2A13A3880) & 1));
  v66.i32[1] = *(v58 + 4 * (BYTE8(xmmword_2A13A3880) & 1));
  v66.i32[2] = *(v58 + 4 * (BYTE12(xmmword_2A13A3880) & 1));
  v66.i32[3] = *(v58 + 4 * (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v66), a53), vshrq_n_u32(vaddq_s32(vsubq_s32(v64, vaddq_s32(v65, v65)), a54), 1uLL));
  return (*(a4 + 8 * (((v57 - 1011449847) | 0x306) ^ 0x59)))(3283519043);
}

uint64_t sub_2979EBE30(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v14 = (a3 + 4 * (v8 + v10));
  v15 = v9 & 0x80000000;
  v16 = v14[1];
  *v14 = v14[397] ^ *(v13 + 4 * (v16 & 1)) ^ ((((v16 & 0x7FFFFFFE | v15) ^ a4) + a6 - 2 * (((v16 & 0x7FFFFFFE | v15) ^ a4) & (a6 + 2) ^ v16 & 2)) >> 1) ^ a7;
  return (*(a2 + 8 * (((((v7 - 19) ^ v11) + v8 == a5 + 3) * v12) ^ v7)))();
}

uint64_t sub_2979EBEAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int8x16_t a44, int32x4_t a45, int8x16_t a46)
{
  v47 = &xmmword_2A13A3C0C;
  v48 = vld1q_dup_f32(v47);
  a4.i64[0] = *(&xmmword_2A13A3C0C + 4);
  a4.i32[2] = HIDWORD(xmmword_2A13A3C0C);
  v49 = vextq_s8(v48, a4, 0xCuLL);
  v50 = a4;
  v50.i32[3] = *(a2 + 4 * ((a3 + 62) ^ 0x3A5));
  v51 = veorq_s8(vorrq_s8(vandq_s8(v50, a6), vandq_s8(v49, a5)), a7);
  v52.i32[0] = *(v46 + 4 * (BYTE4(xmmword_2A13A3C0C) & 1));
  v52.i32[1] = *(v46 + 4 * (BYTE8(xmmword_2A13A3C0C) & 1));
  v52.i32[2] = *(v46 + 4 * (BYTE12(xmmword_2A13A3C0C) & 1));
  v52.i32[3] = *(v46 + 4 * (v50.i8[12] & 1));
  xmmword_2A13A3C0C = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3880, v52), a44), vshrq_n_u32(vaddq_s32(vsubq_s32(v51, vandq_s8(vaddq_s32(v51, v51), a46)), a45), 1uLL));
  return (*(a1 + 8 * a3))();
}

uint64_t sub_2979EBF8C(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  v6 = (((v4 - 1099176841) ^ 0xC1841847) & *a3 | (((v4 - 1099176841) & 0x7DCD984E) + 1136033784) & a3[623]) ^ a4;
  a3[623] = a3[396] ^ *(v5 + 4 * (*a3 & 1)) ^ ((v6 + 1806774387 - 2 * (v6 & 0x6BB13076 ^ *a3 & 4)) >> 1) ^ 0xFCED4B26;
  return (*(a2 + 8 * ((29 * (LODWORD(STACK[0x410]) > 0x26F)) | v4)))();
}

uint64_t sub_2979EC044@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  LODWORD(STACK[0x410]) = 0;
  v42 = LODWORD(STACK[0x410]);
  v43 = *(a3 + 4 * v42);
  LODWORD(STACK[0x410]) = v42 + 1;
  *(v39 + 2140) = v42 + 1306450981;
  v44 = (*(v40 + 2136) + 1636383943);
  v45 = *(a2 + 8 * (a4 - 1011449711)) ^ a39;
  *(v41 - 184) = (a4 - 2021279093) ^ a39;
  *(v41 - 180) = 922745793 - a39 + a4;
  *(v41 - 200) = v44 ^ a39;
  *(v41 - 192) = v45;
  *(v41 - 208) = a39 + 1;
  *(v41 - 224) = (a4 - 2021279013) ^ a39;
  *(v41 - 220) = a4 - 2021278990 + a39;
  *(v41 - 216) = a39 + 3661670469;
  v46 = (*(a2 + 8 * (a4 + a1)))(v41 - 224);
  return (off_2A1E5DED0[*(v41 - 176)])(v46);
}

void sub_2979EC134()
{
  if (v0 >= v1)
  {
    v3 = *(v2 + 2136) + 1;
  }

  else
  {
    v3 = 2025286526;
  }

  *(v2 + 2136) = v3;
  JUMPOUT(0x2979EB0CCLL);
}

uint64_t sub_2979EC320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = v74 - 697;
  STACK[0x330] = v73;
  STACK[0x3A8] = v72;
  STACK[0x3C8] = a67;
  v77 = (*(a4 + 8 * (v74 + 899)))(a27);
  return (*(a4 + 8 * (((8 * (((a72 - v75) | (v75 - a72)) >> 31)) | (16 * (((a72 - v75) | (v75 - a72)) >> 31))) ^ (v75 + 175))))(v77);
}

uint64_t sub_2979EC40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = ((v29 + 33) | 0x96) + 256;
  *STACK[0x1440] = STACK[0x34C];
  *STACK[0x1448] = a28;
  STACK[0x438] = STACK[0x1428];
  v31 = *(v28 + 8 * (v30 ^ 0x783));
  v31(STACK[0x1268]);
  v32 = (v31)(STACK[0x1450]);
  return (off_2A1E5DED0[(706 * (((((v29 + 33) | 0x96) + 223114558) ^ 0xF2B38E99) + ((((v29 + 33) | 0x96) + 223114558) & 0xF2B38E9E) == 0)) ^ v30])(v32);
}

uint64_t sub_2979EC710(int a1, uint64_t a2, uint64_t a3)
{
  STACK[0x19E8] = 0x14C161308DC9D1EFLL;
  LODWORD(STACK[0x3E8]) = *(v5 + 2140) - 1306450980;
  v8 = *(v6 + 2136);
  STACK[0x538] = *(a3 + 8 * (v3 - 1011449776));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v4;
  STACK[0x550] = v8;
  LODWORD(STACK[0x558]) = v3 + 488905396;
  LODWORD(STACK[0x55C]) = (v3 + 488905459) ^ 0x36;
  LODWORD(STACK[0x560]) = v3 + 488905459;
  *(v7 - 216) = &STACK[0x538];
  *(v7 - 208) = 1508565502 - 490657303 * ((((v7 - 224) | 0x14F66CCD) - (v7 - 224) + ((v7 - 224) & 0xEB099330)) ^ 0xF9006200) + v3;
  v9 = (*(a3 + 8 * (v3 ^ (a1 + 1546))))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 224)])(v9);
}

uint64_t sub_2979EC814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = v63 + v64 - 1301;
  (*(a2 + 8 * (v64 ^ (v64 + 1597))))(a62 + a63, 0x100004077774924);
  v66 = (off_2A1E5DED0[v64 ^ (v64 + 1559)])();
  v67 = v66 + 1365300272 - ((v65 - 1564367062) & (2 * v66));
  LODWORD(xmmword_2A13A3880) = v67;
  DWORD1(xmmword_2A13A3880) = 1939031378 - ((2 * (((1812433253 * (v67 ^ (v67 >> 30) ^ (v65 + 1365299963))) ^ 0xDDCD8EDF) + ((-670100790 * (v67 ^ (v67 >> 30) ^ (v65 + 1365299963))) & 0xBB9B1DBE) + 965853179) - 784244146) & 0xA2C1A860) + ((1812433253 * (v67 ^ (v67 >> 30) ^ (v65 + 1365299963))) ^ 0xDDCD8EDF) + ((-670100790 * (v67 ^ (v67 >> 30) ^ (v65 + 1365299963))) & 0xBB9B1DBE);
  return (off_2A1E5DED0[v65])(&xmmword_2A13A3880, 3624866506, 1812433253);
}

uint64_t sub_2979EC970(double a1, int8x16_t a2, uint64_t a3, uint64_t a4)
{
  v4 = vld1q_dup_f32(&xmmword_2A13A3880);
  a2.i64[0] = *(&xmmword_2A13A3880 + 4);
  a2.i32[2] = HIDWORD(xmmword_2A13A3880);
  v5 = vextq_s8(v4, a2, 0xCuLL);
  v6 = a2;
  v6.i32[3] = dword_2A13A3890;
  v7.i64[0] = 0x8000000080000000;
  v7.i64[1] = 0x8000000080000000;
  v8 = vandq_s8(v5, v7);
  v5.i64[0] = 0x100000001;
  v5.i64[1] = 0x100000001;
  v9 = veorq_s8(vorrq_s8(vandq_s8(v6, vnegq_f32(v5)), v8), vdupq_n_s32(0x5160D430u));
  v5.i64[0] = 0xA0000000ALL;
  v5.i64[1] = 0xA0000000ALL;
  v10 = veorq_s8(vandq_s8(v9, vdupq_n_s32(0xDBB9E5Eu)), vandq_s8(v6, v5));
  v11.i32[0] = *(&STACK[0x19E8] + (BYTE4(xmmword_2A13A3880) & 1));
  v11.i32[1] = *(&STACK[0x19E8] + (BYTE8(xmmword_2A13A3880) & 1));
  v11.i32[2] = *(&STACK[0x19E8] + (BYTE12(xmmword_2A13A3880) & 1));
  v11.i32[3] = *(&STACK[0x19E8] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v11), vdupq_n_s32(0x8B141EC5)), vshrq_n_u32(vaddq_s32(vsubq_s32(v9, vaddq_s32(v10, v10)), vdupq_n_s32(0xDBB9E54u)), 1uLL));
  return (*(a4 + 8808))(1011449864);
}

uint64_t sub_2979ED4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v12 = (a3 + 4 * (v7 + v11));
  v13 = v8 & 0x80000000;
  v14 = v7 + 1;
  v15 = *(a3 + 4 * (v14 + v11));
  *v12 = v12[397] ^ *(v9 + 4 * (v15 & 1)) ^ ((((v15 & 0x7FFFFFFE | v13) ^ a5) + a6 - 2 * (((v15 & 0x7FFFFFFE | v13) ^ a5) & (a6 + 10) ^ v15 & ((v6 + 174653577) & 0xF596FFBF ^ 0x19B))) >> 1) ^ v10;
  return (*(a2 + 8 * (((8 * (v14 == a4 + 3)) | (32 * (v14 == a4 + 3))) ^ v6)))();
}

uint64_t sub_2979ED558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W8>, int8x16_t a4@<Q1>)
{
  v4 = (a2 + 908);
  v5 = vld1q_dup_f32(v4);
  v6 = 4 * a3 - 684;
  a4.i64[0] = *(a2 + 912);
  a4.i32[2] = *(a2 + v6);
  v7 = vextq_s8(v5, a4, 0xCuLL);
  v8 = a4;
  v8.i32[3] = *(a2 + 924);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vandq_s8(v7, v9);
  v7.i64[0] = 0x100000001;
  v7.i64[1] = 0x100000001;
  v11 = veorq_s8(vorrq_s8(vandq_s8(v8, vnegq_f32(v7)), v10), vdupq_n_s32(0x5160D430u));
  v12.i32[0] = *(&STACK[0x19E8] + (*(a2 + 912) & 1));
  v12.i32[1] = *(&STACK[0x19E8] + (*(a2 + 916) & 1));
  v12.i32[2] = *(&STACK[0x19E8] + (*(a2 + v6) & 1));
  v12.i32[3] = *(&STACK[0x19E8] + (v8.i8[12] & 1));
  *(a2 + 908) = veorq_s8(veorq_s8(veorq_s8(*a2, v12), vdupq_n_s32(0xAE8B6E1E)), vshrq_n_u32(vaddq_s32(vsubq_s32(v11, vandq_s8(vaddq_s32(v11, v11), vdupq_n_s32(0x8D0AFFC4))), vdupq_n_s32(0x46857FE3u)), 1uLL));
  return (*(a1 + 8 * a3))();
}

uint64_t sub_2979ED670@<X0>(uint64_t a1@<X1>, _DWORD *a2@<X2>, int a3@<W4>, int a4@<W8>)
{
  v5 = (*a2 & 0x7FFFFFFE | a2[623] & 0x80000000) ^ a3;
  a2[623] = a2[396] ^ *(v4 + 4 * (*a2 & 1)) ^ ((((a4 + 1019973433) & 0xFF7DEF3D) + v5 - ((2 * v5) & 0xB34F2B70) + 492705201) >> 1) ^ 0xA11A1B33;
  return (*(a1 + 8 * ((1668 * (LODWORD(STACK[0x3E8]) > 0x26F)) ^ (a4 + 355))))();
}

uint64_t sub_2979ED70C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  LODWORD(STACK[0x3E8]) = 0;
  v7 = LODWORD(STACK[0x3E8]);
  LODWORD(STACK[0x3E8]) = v7 + 1;
  v8 = *(a3 + 4 * v7);
  *(v4 + 2140) = v7 + 1306450981;
  v9 = *(a2 + 8 * (a4 - 1011449762));
  v10 = 912661583 * ((v6 - 224) ^ 0xF5B45D9B1401CDF5);
  *(v6 - 216) = (*(v5 + 2136) - 365942938) + v10;
  *(v6 - 224) = (a4 - 2019344876) ^ v10;
  *(v6 - 220) = v10;
  *(v6 - 184) = (a4 - 2019344876) & 0xC3FDFEC0 ^ v10;
  *(v6 - 180) = 922745793 - v10 + a4;
  *(v6 - 200) = v10 ^ 0x62E792E4;
  *(v6 - 192) = v9 ^ v10;
  *(v6 - 208) = ((a4 - 2019344876) & 0xE7FEBF95) + v10;
  v11 = (*(a2 + 8 * (a4 ^ (a1 + 1595))))(v6 - 224);
  return (off_2A1E5DED0[*(v6 - 176)])(v11);
}

uint64_t sub_2979ED818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v67 >= 0x62E792E4)
  {
    v69 = *(v68 + 2136) + 1;
  }

  else
  {
    v69 = 2025286526;
  }

  *(v68 + 2136) = v69;
  return sub_2979EC644(1011449864, 3283519043, a3, -1020152216, a5, a67);
}

uint64_t sub_2979EDA28@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (v65 - 245026651) & 0xE9ACF59;
  STACK[0x210] = v64;
  STACK[0x448] = a2;
  STACK[0x248] = a64;
  v68 = (*(a1 + 8 * (v65 + 738)))(a43);
  return (*(a1 + 8 * ((63 * (LODWORD(STACK[0x3A4]) != ((v66 - 473) | 0x74) - 500)) ^ v66)))(v68);
}

uint64_t sub_2979EDB30()
{
  STACK[0x438] = STACK[0x12C0];
  (*(v0 + 8 * (v1 + 1088)))(STACK[0x1558]);
  v4 = (off_2A1E5DED0[(v1 + 243) ^ 0x4D3])(STACK[0x1388]);
  return (off_2A1E5DED0[(((v1 + 243 - v2 + 868) ^ 0x3C498019) * (v3 == -45000)) ^ (v1 + 243)])(v4);
}

void sub_2979EDBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  LODWORD(STACK[0x1960]) = STACK[0x224];
  STACK[0x1958] = a51;
  STACK[0x438] = STACK[0x12C0];
  (*(v51 + 8 * (v52 ^ 0x7C0)))(STACK[0x1558]);
  (off_2A1E5DED0[v52 + 1088])(STACK[0x1388]);
  JUMPOUT(0x2979EDC20);
}

uint64_t sub_2979EDDF4()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x2A1)))(STACK[0x1450], 0);
  STACK[0x1268] = v3;
  return (off_2A1E5DED0[((v3 == 0) * (v1 + ((v0 + 2138822093) & 0xBCCDA59E) - 1554)) ^ v0])();
}

uint64_t sub_2979EDE58()
{
  v2 = v1 - 739;
  v3 = STACK[0x438];
  STACK[0x1428] = STACK[0x438];
  STACK[0x1430] = &STACK[0x1A70] + v3;
  STACK[0x438] = v3 + 64;
  v4 = (~(16 * (&STACK[0x1A70] + v3)) - 32 * (&STACK[0x1A70] + v3)) & 0x20;
  STACK[0x1438] = (v4 & 0xFFFFFFFFFFFFFFBFLL | (((v4 >> 5) & 1) << 6)) ^ 0x63BDFBCFDFF7AFB7;
  v5 = (*(v0 + 8 * (v2 ^ 0x7B6)))(STACK[0x1268]);
  v6 = (v5 ^ (((((2 * v2) ^ 0x10) + 1782049875) & 0x95C813FA) + 0x7F9FFFDAF7FBE9EFLL)) - (off_2A1E5DED0[v2 + 1178])() + ((2 * v5) & 0xFF3FFFB5EFF7DB3ELL) == 0x7F9FFFDAF7FBED9FLL;
  return (off_2A1E5DED0[(115 * v6) ^ v2])();
}

uint64_t sub_2979EDF68()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x52B)))(STACK[0x1268]);
  v3 = v2 - ((v2 << ((v1 + 85) ^ 0xB6u)) & 0xA93F9E06133FEAECLL) + 0x549FCF03099FF576;
  STACK[0x13D8] = v3;
  v4 = (off_2A1E5DED0[v1 ^ 0x52F])((v3 ^ 0x549FCF03099FF576) + 1, 0x100004077774924);
  STACK[0x13E0] = v4;
  STACK[0x408] = v4;
  return (off_2A1E5DED0[((2 * (((v1 + 65) ^ (v4 == 0)) & 1)) & 0xEF | (16 * (((v1 + 65) ^ (v4 == 0)) & 1))) ^ v1])();
}

uint64_t sub_2979EE04C()
{
  v3 = (*(v0 + 8 * (v2 & 0x732D87FD ^ 0x6AFu)))();
  v4 = (off_2A1E5DED0[v2 & 0x732D87FD ^ 0x54Au])(STACK[0x1268], STACK[0x13E0], v1 + 1, v3);
  return (off_2A1E5DED0[(99 * ((((2 * v4) & 0x74) + (v4 ^ ((((v2 & 0xFD) + 95) | 8) + 50))) == 58)) ^ v2 & 0x732D87FDu])();
}

uint64_t sub_2979EE124(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v6 = v5 / 2 - (((v5 / 2) << (((a3 + a2 + v4 - 73) | 0xC0u) + 63)) & 0x67205EBC) - 1282396322;
  LODWORD(STACK[0x34C]) = v6 ^ 0xA8DFCFFB;
  v7 = (*(a4 + 8 * ((v4 + 1142) ^ 0x237)))(v6 ^ 0xB3902F5E, 50, 3586302018);
  STACK[0x1720] = v7;
  return (off_2A1E5DED0[(198 * (v7 == 0)) ^ (v4 + 1142)])();
}

void sub_2979EE22C(int a1@<W8>)
{
  v3 = 89 * (a1 ^ 0x21F);
  v4 = v2 ^ v1;
  if ((v2 ^ v1) <= 1)
  {
    v4 = 1;
  }

  LODWORD(STACK[0x11FC]) = v4 + v3 + 1488896841;
  JUMPOUT(0x2979EE260);
}

uint64_t sub_2979EE404()
{
  v2 = (*(v0 + 8 * (v1 + 607)))(STACK[0x1268]);
  v3 = ((2 * v2) & 0xFDFFE5EFEFB97D36) - (off_2A1E5DED0[v1 + 646])() + ((((v1 - 797) | 0x24u) + ((v1 - 942) | 0x501u) - 0x1000D080823471FLL) ^ v2) == 0xFEFFF2F7F7DCBE9BLL;
  return (off_2A1E5DED0[((2 * v3) | (8 * v3)) ^ v1])();
}

uint64_t sub_2979EE4C8()
{
  v2 = (*(v0 + 8 * (v1 + 281)))(STACK[0x1268]);
  v3 = v2 - ((2 * v2) & 0x54D18042) - 1435975647;
  LODWORD(STACK[0x13BC]) = v3 ^ 0xB1272084;
  LODWORD(STACK[0x34C]) = v3 ^ 0xB1272084;
  v4 = (off_2A1E5DED0[v1 + 330])(v3 ^ 0xAA68C021, 0x100004077774924);
  STACK[0x13C0] = v4;
  return (off_2A1E5DED0[((v4 != 0) * ((((v1 - 1891994884) ^ 0x8F3A7497) - 485) ^ (v1 - 1891994884) & 0x70C589B7)) | v1])();
}

uint64_t sub_2979EE590()
{
  v3 = (STACK[0x1438] + STACK[0x1430] - 0x63BDFBCFDFF7AFB7);
  *v3 = 0;
  v3[1] = (v2 ^ 0xFFFFFDDCFED753DFLL) + 0x2230128AC21 + ((v2 << ((v1 - 105) & 0xA7 ^ 0xA6u)) & 0x1FDAEA7BELL);
  v4 = STACK[0x13C0];
  (*(v0 + 8 * (v1 + 708)))(STACK[0x1268], 0);
  v5 = (off_2A1E5DED0[v1 + 729])(v2, 50, 3505148446);
  STACK[0x1618] = v5;
  return (off_2A1E5DED0[(236 * (v5 != 0)) ^ v1])();
}

uint64_t sub_2979EE688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 - 767356283) & 0x2DBCEBBA;
  v8 = (v7 + 448);
  v9 = (v6 ^ 0xFEEFDBD6BB37FEDFLL) + 0x110242A025933B1 + ((v8 + 0x1766FFA56) & v5);
  STACK[0x1608] = v9;
  LOBYTE(STACK[0x1613]) = v9 < 0xBD913290;
  v10 = *(a4 + 8 * ((103 * (v9 == 3180409488)) ^ v7));
  LODWORD(STACK[0x100C]) = v8;
  STACK[0x1010] = 0xB84E9E10E7603ELL;
  STACK[0x1018] = 0x3472CEDE59FE06E1;
  STACK[0x1020] = 0x190AFB969E1F0FFBLL;
  return v10();
}

void sub_2979EE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x1020];
  STACK[0x1028] = STACK[0x1020];
  v5 = STACK[0x1018];
  STACK[0x1030] = STACK[0x1018];
  STACK[0x1038] = STACK[0x1010];
  v6 = STACK[0x100C];
  LODWORD(STACK[0x1044]) = STACK[0x100C];
  LOBYTE(v4) = *(v4 + STACK[0x13C0] - 0x190AFB969E1F0FFBLL);
  v7 = v5 + STACK[0x1618] - 0x3472CEDE59FE06E1;
  v8 = ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v7) & 0x7FFFFFFF) * ((v6 - 705) ^ 0xDE67170);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  v10 = byte_297A216A0[v9 >> 24];
  LODWORD(STACK[0x1048]) = v6 - 705;
  LOBYTE(STACK[0x5D2]) = v10 ^ v4 ^ byte_297A1F840[v9 >> 24] ^ byte_297A1AF40[v9 >> 24] ^ v9 ^ (107 * BYTE3(v9));
  STACK[0x5C8] = v7;
  v11 = *(a4 + 8 * (v6 + 559));
  JUMPOUT(0x2979EE860);
}

uint64_t sub_2979EE884()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x6B8)))(STACK[0x1268]);
  v3 = (v2 ^ 0x7EDABEC0CBE9FFF1) - (off_2A1E5DED0[v1 ^ 0x6F2])() + (((v1 + 875) ^ 0xFDB57D8197D3FBC0) & (2 * v2)) - 0x457066A60C6E7536 == ((v1 - 479203072) & 0x1C900FFF ^ 0x396A581ABF7B8B0CLL);
  return (off_2A1E5DED0[(533 * v3) ^ v1])();
}

uint64_t sub_2979EE9BC()
{
  v2 = v1 + 239;
  LODWORD(STACK[0x34C]) = 458219693;
  v3 = (*(v0 + 8 * (v2 ^ 0x35C)))(8, 0x100004077774924);
  STACK[0x1260] = v3;
  return (off_2A1E5DED0[((v3 != 0) * ((v2 + 563913966) & 0xDE6357B7 ^ (v2 - 907))) ^ v2])();
}

uint64_t sub_2979EEAB8@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W8>)
{
  v6 = v4 - 1312061389;
  v7 = 266 * (v5 ^ (a1 + 2));
  v9 = a4 + 401240700 > v7 - 533 || v6 + 1451098206 >= 0;
  v10 = *(a3 + 8 * ((a2 + v5 - 387) | (4 * v9)));
  LODWORD(STACK[0xB78]) = v7;
  return v10();
}

void sub_2979EEBE0(int a1@<W1>, char a2@<W8>)
{
  v3 = STACK[0xB78];
  LODWORD(STACK[0xB7C]) = STACK[0xB78];
  v4 = 2 * (v3 ^ 0x2A6);
  LODWORD(STACK[0xB80]) = v4;
  v5 = v3 ^ (a1 + 532);
  LODWORD(STACK[0xB84]) = v5;
  v6 = (16 * a2 - (((v5 ^ 0x88) + 32 * a2) & (v4 ^ 0x44)) - 45) ^ 0x13 | (v2 + 94);
  v7 = STACK[0x1720] + (LODWORD(STACK[0x13F0]) - 1488897198);
  v8 = 233206231 * ((v7 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158))) & 0x7FFFFFFF);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  LOBYTE(STACK[0x5D2]) = byte_297A216A0[v9 >> 24] ^ byte_297A1F840[v9 >> 24] ^ byte_297A1AF40[v9 >> 24] ^ v9 ^ (v6 + (~(2 * v6) | 0x93) + 55) ^ (107 * BYTE3(v9)) ^ 0x36;
  STACK[0x5C8] = v7;
  JUMPOUT(0x2979EED10);
}

uint64_t sub_2979EED1C()
{
  (*(v0 + 8 * (v1 ^ 0x3C49863C)))(STACK[0x1450]);
  LODWORD(STACK[0x132C]) = -45000;
  v5 = v2 + v1 - 1440;
  v6 = STACK[0x438];
  STACK[0x1330] = STACK[0x438];
  v7 = &STACK[0x1A70] + v6;
  STACK[0x1338] = &STACK[0x1A70] + v6;
  LODWORD(STACK[0x47D]) = -1986895223;
  LOWORD(STACK[0x481]) = -30844;
  LOBYTE(STACK[0x483]) = -123;
  *(v7 + 1) = 0;
  STACK[0x1340] = &STACK[0x1A70] + v6 + 8;
  *(v7 + 4) = 1379999023;
  v8 = 1864516333 * ((~(v4 - 224) & 0xCA16CB5C9FDE90B7 | (v4 - 224) & 0x35E934A360216F48) ^ 0xBA6D09D7F0F3A1A7);
  *(v4 - 200) = *(v3 + 8 * v5) + v8;
  *(v4 - 208) = v8 + 948276351 + v1;
  *(v4 - 216) = &STACK[0x1A70] + v6 + 0x4027DD4F4C01BDCBLL;
  (*(v3 + 8 * (v2 + v1 - 45)))(v4 - 224);
  return (*(v3 + 8 * ((1676 * (*(v4 - 224) == (v1 ^ 0x517EBD29))) ^ (v1 - 1011449407 + v5 + 355))))(*STACK[0x1340]);
}

uint64_t sub_2979EEED8@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * ((((a1 - 175 + *(v1 + 16) - 1380000282 + 822) > 0xFFFFFFF8) * (a1 - 285)) ^ a1));
  LODWORD(STACK[0xAC8]) = a1 - 175;
  LODWORD(STACK[0xACC]) = -541843589;
  return v3();
}

uint64_t sub_2979EEF30@<X0>(int a1@<W8>)
{
  v4 = a1 - v1 + 1006;
  (*(v2 + 8 * (a1 + 994)))();
  v5 = v1 + v4 - 1440;
  STACK[0x12A0] = STACK[0x1338] + 0x4027DD4F4C01BDDBLL;
  (*(v2 + 8 * (v4 ^ 0x3C49865F)))(&unk_297A20470);
  v6 = STACK[0x1338];
  *(v6 + 24) = 0;
  v6 += 24;
  STACK[0x12A8] = v6;
  *(v6 + 8) = 1379999023;
  STACK[0x12B0] = v6 + 8;
  v7 = off_2A1E5DED0[v5];
  *(v3 - 216) = STACK[0x12A0];
  *(v3 - 200) = &v7[1864516333 * ((2 * ((v3 - 224) & 0x253908513D036010) - (v3 - 224) + 0x5AC6F7AEC2FC9FECLL) ^ 0x2ABD3525ADD1AEFCLL)];
  *(v3 - 208) = 1864516333 * ((2 * ((v3 - 224) & 0x3D036010) - (v3 - 224) - 1023631380) ^ 0xADD1AEFC) + 948276351 + v4;
  (off_2A1E5DED0[v4 ^ 0x3C498616])(v3 - 224);
  return (*(v2 + 8 * ((((v4 - 603088946) & 0xE7A8EBEB) + 188) ^ v5 ^ (59 * (*(v3 - 224) == 1832336673)))))(*STACK[0x12A8]);
}

uint64_t sub_2979EF19C@<X0>(unsigned int a1@<W8>)
{
  v3 = 255 * (a1 ^ 0x32E);
  v4 = *(v2 + 8 * ((122 * ((v3 ^ 0xADBEE139) + *STACK[0x12B0] < v1 + (a1 ^ 0x32E) + 1011449860 - 1623)) ^ a1));
  LODWORD(STACK[0xDCC]) = v3;
  STACK[0xDD0] = 453262884;
  return v4();
}

void sub_2979EF220(uint64_t a1, int a2)
{
  v2 = STACK[0xDD0];
  STACK[0xDD8] = STACK[0xDD0];
  v3 = STACK[0xDCC];
  LODWORD(STACK[0xDE0]) = STACK[0xDCC];
  LODWORD(STACK[0xDE4]) = v3 ^ (a2 + 1004);
  LODWORD(STACK[0xDE8]) = v3 - 172;
  v2 -= 453262884;
  LOBYTE(STACK[0xDEF]) = *(STACK[0x1338] + v2);
  v4 = *STACK[0x12A8] + v2;
  STACK[0xDF0] = v4;
  STACK[0x588] = v4;
  JUMPOUT(0x2979CB8A4);
}

uint64_t sub_2979EF2B8(uint64_t a1, int a2)
{
  v5 = (2 * v3) ^ 0x114 ^ (a2 + 1172);
  v6 = (*(v4 + 8 * (v3 + 895)))();
  STACK[0x438] = STACK[0x1330];
  return (*(v4 + 8 * (((v5 - 1011449819) * v2) | v3)))(v6);
}

uint64_t sub_2979EF304()
{
  (*(v2 + 8 * (v0 - 12)))();
  (*(v2 + 8 * (v1 - 1011448241)))(&unk_297A1D5D0, STACK[0x1338], 13);
  *STACK[0x12A8] = 0;
  *STACK[0x12B0] = 1379999023;
  v4 = 1864516333 * ((((2 * (v3 - 224)) | 0x73FC6A1171A5F6A6) - (v3 - 224) + 0x4601CAF7472D04ADLL) ^ 0xC985F783D7FFCA43);
  *(v3 - 200) = off_2A1E5DED0[v1 - 1011449693] + v4;
  *(v3 - 216) = STACK[0x12A0];
  *(v3 - 208) = v4 + 948276351 + v1;
  (off_2A1E5DED0[v1 - 1011448298])(v3 - 224);
  return (*(v2 + 8 * ((v1 - 1011449693) ^ (9 * (v1 ^ 0x3C49805F)) ^ 0x1D0 ^ ((*(v3 - 224) == 1832336673) * ((v1 - 593288203) & 0xE7135F93 ^ 0x2B6)))))(*STACK[0x12A8]);
}

uint64_t sub_2979EF4B8@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x44F;
  v3 = *(v1 + 8 * ((((((a1 + 402718363) | 0x24488008) ^ 0x91F762CC) + *STACK[0x12B0] < 0xFFFFFFF3) * ((a1 ^ 0x44F) - 1301)) ^ a1));
  LODWORD(STACK[0xD9C]) = v2;
  STACK[0xDA0] = 1937170909;
  return v3();
}

void sub_2979EF53C()
{
  v2 = STACK[0xDA0];
  STACK[0xDA8] = STACK[0xDA0];
  v3 = STACK[0xD9C];
  LODWORD(STACK[0xDB0]) = STACK[0xD9C];
  LODWORD(STACK[0xDB4]) = v3 ^ (v0 + 1306);
  LODWORD(STACK[0xDB8]) = (v3 - 1018) | 0x40;
  v2 -= 1937170909;
  LOBYTE(STACK[0xDBF]) = *(STACK[0x1338] + v2);
  v4 = *STACK[0x12A8] + v2;
  STACK[0xDC0] = v4;
  STACK[0x588] = v4;
  STACK[0x578] = *(v1 + 8 * (v3 + 202));
  JUMPOUT(0x2979DE7E8);
}

uint64_t sub_2979EF5D4()
{
  v4 = 2 * ((v2 - 1110603913) & 0x7E7BF4FF ^ (v0 + 570));
  v5 = (*(v3 + 8 * (v2 + 686)))();
  STACK[0x438] = STACK[0x1330];
  v6 = LODWORD(STACK[0x132C]);
  return (*(v3 + 8 * (((v4 ^ 0x36B) * v1) ^ v2)))(v5);
}

uint64_t sub_2979EF638()
{
  LODWORD(STACK[0x1968]) = 144770230;
  STACK[0x16E0] = &STACK[0x1990];
  LODWORD(STACK[0x1990]) = 458219685;
  STACK[0x16E8] = &STACK[0x1988];
  STACK[0x1988] = 0;
  v2 = off_2A13A3870;
  LOBYTE(STACK[0x1891]) = ((v0 + 52) & 0xF7 ^ 0x57) + *off_2A13A3870 * (((v0 + 21) & 0x5E) - 99);
  LOBYTE(STACK[0x1892]) = -91 * v2[1] - 105;
  LOBYTE(STACK[0x1893]) = -91 * v2[2] - 105;
  LOBYTE(STACK[0x1894]) = -91 * v2[3] - 105;
  LOBYTE(STACK[0x1895]) = -91 * v2[4] - 105;
  LOBYTE(STACK[0x1896]) = -91 * v2[5] - 105;
  LOBYTE(STACK[0x1897]) = -91 * v2[6] - 105;
  LOBYTE(STACK[0x1898]) = -91 * v2[7] - 105;
  LOBYTE(STACK[0x1899]) = -91 * v2[8] - 105;
  LOBYTE(STACK[0x189A]) = -91 * v2[9] - 105;
  LOBYTE(STACK[0x189B]) = -91 * v2[10] - 105;
  LOBYTE(STACK[0x189C]) = -91 * v2[11] - 105;
  LOBYTE(STACK[0x189D]) = -91 * v2[12] - 105;
  LOBYTE(STACK[0x189E]) = -91 * v2[13] - 105;
  LOBYTE(STACK[0x189F]) = -91 * v2[14] - 105;
  LOBYTE(STACK[0x18A0]) = -91 * v2[15] - 105;
  LOBYTE(STACK[0x18A1]) = -91 * v2[16] - 105;
  v3 = off_2A13A3870;
  LOBYTE(STACK[0x18A2]) = -91 * off_2A13A3870[17] - 105;
  LOBYTE(STACK[0x18A3]) = -91 * v3[18] - 105;
  LOBYTE(STACK[0x18A4]) = -91 * v3[19] - 105;
  LOBYTE(STACK[0x18A5]) = -91 * v3[20] - 105;
  LOBYTE(STACK[0x18A6]) = -91 * v3[21] - 105;
  LOBYTE(STACK[0x18A7]) = -91 * v3[22] - 105;
  v4 = (*(v1 + 8 * (v0 + 378)))();
  v5 = (off_2A1E5DED0[v0 ^ 0x281])(0, &STACK[0x1891], v4);
  STACK[0x16F0] = v5;
  return (*(v1 + 8 * ((15 * (v5 == 0)) ^ v0)))();
}

uint64_t sub_2979EF854()
{
  v3 = v0 + v1 - 1216;
  v4 = (*(v2 + 8 * (v1 + 381)))(STACK[0x16F0], 0);
  STACK[0x1318] = v4;
  return (off_2A1E5DED0[((v4 == 0) * (v1 - 1011449192 + v3 - 1863)) ^ v1])();
}

uint64_t sub_2979EF8B4()
{
  (*(v1 + 8 * (v0 + v2 - 23)))(STACK[0x16F0]);
  LODWORD(STACK[0x16FC]) = -45000;
  v5 = STACK[0x438];
  STACK[0x1700] = STACK[0x438];
  v6 = &STACK[0x1A70] + v5;
  STACK[0x1708] = &STACK[0x1A70] + v5;
  LODWORD(STACK[0x259]) = -976314683;
  LOWORD(STACK[0x25D]) = -15424;
  LOBYTE(STACK[0x25F]) = -63;
  *(v6 + 1) = 0;
  STACK[0x1710] = &STACK[0x1A70] + v5 + 8;
  *(v6 + 4) = 1379999023;
  v7 = *(v3 + 8 * (v2 - 1011449693));
  v8 = 1864516333 * ((-2 - ((~(v4 - 224) | 0x97B142BDB0DF05E9) + ((v4 - 224) | 0x684EBD424F20FA16))) ^ 0xE7CA8036DFF234F9);
  *(v4 - 216) = &STACK[0x1A70] + v5 + 0x4027DD4F4C01BDCBLL;
  *(v4 - 200) = v7 + v8;
  *(v4 - 208) = v8 + 948276351 + v2;
  (*(v3 + 8 * (v2 - 1011448298)))(v4 - 224);
  return (*(v3 + 8 * (((*(v4 - 224) == 1832336673) * ((v2 ^ 0xC3B67C34) + (v2 ^ 0x3C49857D))) ^ (v2 - 1011449170))))(*STACK[0x1710]);
}

uint64_t sub_2979EF8E4()
{
  v2 = STACK[0x438];
  STACK[0x1788] = STACK[0x438];
  STACK[0x1790] = &STACK[0x1A70] + v2;
  STACK[0x438] = v2 + 64;
  STACK[0x1798] = ((&STACK[0x1A70] + v2) * (((v1 - 85) | 0x3B) + 53)) & 0x20 ^ 0xBFBF6C3E7F7BF2F5;
  v3 = (*(v0 + 8 * (v1 + 1274)))(STACK[0x1318]);
  v4 = (v3 ^ 0xDF6FDFFEDB6EEBFFLL) - (off_2A1E5DED0[v1 + 1342])() + ((2 * v3) & 0xBEDFBFFDB6DDD7FELL) == 0xDF6FDFFEDB6EEBFFLL;
  return (off_2A1E5DED0[(42 * v4) | v1])();
}

uint64_t sub_2979EF9C0()
{
  v2 = v1 + 1036;
  v3 = (*(v0 + 8 * (v2 ^ 0x368)))(STACK[0x1318]);
  v4 = v3 - 0x673D8C4C7A34BA20 + (~(v3 << ((v2 + 96) ^ 0x80u)) | 0xCE7B1898F469743FLL) + 1;
  STACK[0x12E0] = v4;
  v5 = (off_2A1E5DED0[v2 ^ 0x36C])((v4 ^ 0x98C273B385CB45E0) + 1, 0x100004077774924);
  STACK[0x12E8] = v5;
  STACK[0x340] = v5;
  return (off_2A1E5DED0[(19 * (v5 == 0)) ^ v2])();
}

uint64_t sub_2979EFA9C()
{
  v4 = (v3 - 101) ^ (v0 - 84);
  v5 = (*(v1 + 8 * ((v3 - 101) ^ 0x2B2)))();
  v6 = (off_2A1E5DED0[v3 + 202])(STACK[0x1318], STACK[0x12E8], v2 + 1, v5);
  return (off_2A1E5DED0[(125 * ((((v6 << (v4 ^ 9)) & 0xBE) + (v6 ^ 0xDF)) != ((43 * ((v3 - 101) ^ 0xA7)) ^ 0x56))) ^ (v3 - 101)])();
}

uint64_t sub_2979EFB5C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = v3 / 2 - ((2 * (v3 / 2)) & 0x6C1475FA) + a2 + ((v4 + 2144195729) & 0xBC7BA6ED) + 906638514;
  LODWORD(STACK[0x45C]) = v5 ^ 0x2D45DA58;
  v6 = (*(a3 + 8 * (v4 ^ 0x2C8)))(v5 ^ 0x360A3AFDu, 50, 3127822454);
  STACK[0x1760] = v6;
  return (off_2A1E5DED0[((v6 != 0) | (2 * (v6 != 0))) ^ v4])();
}

void sub_2979EFC7C()
{
  v3 = v0 ^ 0x88;
  v4 = v1 ^ v2;
  if ((v1 ^ v2) <= 1)
  {
    v4 = 1;
  }

  LODWORD(STACK[0x1354]) = v4 + v3 + 791752030;
  JUMPOUT(0x2979EFCA8);
}

uint64_t sub_2979EFDC8()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x5F4)))(STACK[0x1318]);
  v3 = (v1 + 55) + (v2 ^ 0xFFFDBA7AE26FCB7FLL) - (off_2A1E5DED0[v1 ^ 0x5CD])() + (((v1 - 353) - 0x48B0A3B206B9CLL) & (2 * v2)) == 0xFFFDBA7AE26FCFB1;
  return (off_2A1E5DED0[(1991 * v3) ^ v1])();
}

uint64_t sub_2979EFE78()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x22E)))(STACK[0x1318]);
  v3 = v2 - ((2 * v2) & 0xCF630976) + ((5 * (v1 ^ 0x441)) ^ 0xFFFFFDF3) - 407796497;
  LODWORD(STACK[0x12FC]) = v3 ^ 0xFCFE641E;
  LODWORD(STACK[0x45C]) = v3 ^ 0xFCFE641E;
  v4 = (off_2A1E5DED0[v1 + 539])(v3 ^ 0xE7B184BB, 0x100004077774924);
  STACK[0x1300] = v4;
  return (off_2A1E5DED0[(11 * (v4 != 0)) ^ v1])();
}

uint64_t sub_2979EFF58()
{
  v3 = (STACK[0x1790] + STACK[0x1798] + (((v1 - 575) | 0x2B5u) ^ 0x404093C180840F9ELL));
  *v3 = 0;
  v3[1] = ((2 * v2) & 0x1FC1D6CFELL) + 0x1927BAC301F14981 + (v2 ^ (3 * (v1 ^ 0x204)) ^ 0xE6D8453CFE0EB6CELL);
  v4 = STACK[0x1300];
  (*(v0 + 8 * (v1 ^ 0x413)))(STACK[0x1318], 0);
  v5 = (off_2A1E5DED0[v1 ^ 0x47E])(v2, 50, 3902972318);
  STACK[0x1398] = v5;
  return (off_2A1E5DED0[(84 * (v5 != 0)) ^ v1])();
}

uint64_t sub_2979F0064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + 329998158) & 0xEC54A23F;
  v7 = (v4 & 0x1FFBFFFCELL) + 0x2784003052F5773ELL + ((v6 - 0x2784003000200258) ^ v5);
  STACK[0x1820] = v7;
  LOBYTE(STACK[0x182B]) = v7 < 0x52D57725;
  v8 = *(a3 + 8 * (((v7 != 1389721381) * (((v3 + 495) | 0x15) - 580)) ^ v3));
  LODWORD(STACK[0xBF4]) = v6;
  STACK[0xBF8] = 0x5AE36B30A6921F84;
  STACK[0xC00] = 0x239F7C1047EC492ALL;
  STACK[0xC08] = 0x5655A771453E50E1;
  return v8();
}

void sub_2979F0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0xC08];
  STACK[0xC10] = STACK[0xC08];
  v4 = STACK[0xC00];
  STACK[0xC18] = STACK[0xC00];
  STACK[0xC20] = STACK[0xBF8];
  v5 = STACK[0xBF4];
  LODWORD(STACK[0xC2C]) = STACK[0xBF4];
  v6 = (v5 - 62) | 0xB4;
  LODWORD(STACK[0xC30]) = v6;
  v7 = v4 + STACK[0x1398] - 0x239F7C1047EC492ALL;
  v8 = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v7) & 0x7FFFFFFF);
  v9 = (v8 ^ HIWORD(v8)) * (v6 ^ 0xDE67362);
  LOBYTE(STACK[0x5D2]) = byte_297A216A0[v9 >> 24] ^ *(v3 + STACK[0x1300] - 0x5655A771453E50E1) ^ byte_297A1F840[v9 >> 24] ^ byte_297A1AF40[v9 >> 24] ^ v9 ^ (107 * BYTE3(v9));
  STACK[0x5C8] = v7;
  STACK[0x5C0] = *(a3 + 8 * (v5 ^ 0x798));
  JUMPOUT(0x2979FAF54);
}

uint64_t sub_2979F0250()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x495)))(STACK[0x1318]);
  v3 = (v2 ^ 0x4FFFF3F7F1FBB9FFLL) - (off_2A1E5DED0[v1 ^ 0x4DF])() + ((v2 << ((v1 + 59) & 0xAB ^ 0x80u)) & 0x9FFFE7EFE3F773FELL) + 0x364E6363C530329ALL == ((v1 + 617272379) ^ 0x24CAD70Du) - 0x79B1A8A448D4153FLL;
  return (off_2A1E5DED0[(1923 * v3) ^ v1])();
}

uint64_t sub_2979F03C8()
{
  LODWORD(STACK[0x45C]) = 458219693;
  v2 = (*(v0 + 8 * (v1 + 1055)))(8, 0x100004077774924);
  STACK[0x1748] = v2;
  return (off_2A1E5DED0[((v2 == 0) * (((v1 - 1180771951) & 0x4661276F) - 635)) ^ v1])();
}

uint64_t sub_2979F0458()
{
  v2 = STACK[0x2A0] >> (((v1 - 122) ^ 0xBD) + 48);
  v3 = v2 - ((2 * v2) & 0xBC) - 34;
  v4 = STACK[0x1748];
  *v4 = v3 ^ 0xDE;
  v4[1] = (HIWORD(STACK[0x2A0]) - ((STACK[0x2A0] >> 47) & 0x7C) + 62) ^ 0x3E;
  v4[2] = ((WORD2(STACK[0x2A0]) >> 8) - ((STACK[0x2A0] >> 39) & 0x96) + 75) ^ 0x4B;
  v4[3] = (HIDWORD(STACK[0x2A0]) - ((STACK[0x2A0] >> 31) & 0xF4) - 6) ^ 0xFA;
  v4[4] = (HIBYTE(LODWORD(STACK[0x2A0])) - ((LODWORD(STACK[0x2A0]) >> 23) & 0x1A) - 115) ^ 0x8D;
  v4[5] = (HIWORD(LODWORD(STACK[0x2A0])) - ((LODWORD(STACK[0x2A0]) >> 15) & 0x9C) + 78) ^ 0x4E;
  v4[6] = (BYTE1(LODWORD(STACK[0x2A0])) - ((LODWORD(STACK[0x2A0]) >> 7) & 0xA8) - 44) ^ 0xD4;
  v4[7] = (LOBYTE(STACK[0x2A0]) - ((2 * LOBYTE(STACK[0x2A0])) & 0xDA) - 19) ^ 0xED;
  v5 = (*(v0 + 8 * (v1 + 786)))(8, 50, 530587096);
  STACK[0x1378] = v5;
  v6 = off_2A1E5DED0[(21 * (v5 != 0)) ^ v1];
  LODWORD(STACK[0x5EC]) = (v1 - 122) ^ 0x2BD;
  STACK[0x5F0] = 0x1F693CE7DB2FD1F8;
  STACK[0x5F8] = 0x1EF1D7EF09BEDAA8;
  STACK[0x600] = 0x1D811451A3158149;
  return v6();
}

uint64_t sub_2979F0630@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x42C]) = a2;
  v7 = STACK[0x1378];
  v8 = STACK[0x1748];
  v3 = STACK[0x1798] + STACK[0x1790] + 0x404093C180840D2BLL;
  v4 = STACK[0x350];
  v5 = STACK[0x498];
  v9 = STACK[0x460];
  return (*(a1 + 8 * ((((((v2 ^ 0x620) + 1070960486) ^ 0x24D6888A) + (v2 ^ 0x620) - 453189587) * ((((v2 ^ 0x620) - 767) ^ 0x643BDEE3) == 1681645421)) ^ ((v2 ^ 0x620) - 767))))(1011449864);
}

uint64_t sub_2979F0668@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  LODWORD(STACK[0x41C]) = a2;
  v3 = v2 ^ 0x620 ^ LODWORD(STACK[0x12FC]) ^ 0x53A9;
  v10 = STACK[0x1398];
  v11 = STACK[0x1300];
  v5 = (v3 ^ 0xB798u) < 2 || (((v2 ^ 0x620) - 767) ^ 0x643BDEEB ^ v3 ^ 0xB799) + ((2 * (v3 ^ 0xB799)) & 0x1BEFA) == 1681645437;
  v6 = STACK[0x1798] + STACK[0x1790] + 0x404093C180840D2BLL;
  v7 = STACK[0x350];
  v8 = STACK[0x498];
  v13 = STACK[0x460];
  v12 = STACK[0x1300];
  return (*(a1 + 8 * ((((((v2 ^ 0x620) + 1070960486) ^ 0x24D6888A) + (v2 ^ 0x620) - 453189587) * v5) ^ ((v2 ^ 0x620) - 767))))(1011449864);
}

void sub_2979F06AC()
{
  v1 = ((v0 + 706) ^ LODWORD(STACK[0x13BC])) ^ 0x202Au;
  v3 = STACK[0x1618];
  v2 = STACK[0x13C0];
  JUMPOUT(0x2979F06E4);
}

void sub_2979F06F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 ^ (a2 + 1583))))(STACK[0x1720]);
  v7 = STACK[0x1720];
  LODWORD(STACK[0x30C]) = -45002;
  v5 = ((9 * (v4 ^ 0x8069)) ^ LOWORD(STACK[0x13D8])) ^ 0x35F9u;
  v6 = STACK[0x13E0];
  JUMPOUT(0x2979F0768);
}

uint64_t sub_2979F0A0C()
{
  (*(v1 + 8 * (v0 - 1011448265)))();
  v2 = LODWORD(STACK[0x132C]);
  return (*(v1 + 8 * (((STACK[0x1958] == 0) * (((2 * (v0 ^ 0x3C498160)) ^ 0xFFFFFE3B) + (v0 ^ 0x3C49832F))) ^ (v0 - 1011448709))))();
}

uint64_t sub_2979F0B4C@<X0>(int a1@<W1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v4 + v3 + 39;
  v7 = (a1 + v5 - 1551) | 0x1C0;
  v8 = *(a2 + 8 * ((510 * (((a3 + 485394614) & ((v7 ^ 0x145B7C8A) + v6)) >= 0)) ^ (a1 + v5 - 1400)));
  LODWORD(STACK[0x998]) = v7;
  return v8();
}

void sub_2979F0C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8 * (v3 - 12)))(STACK[0x1760]);
  v7 = STACK[0x1760];
  LODWORD(STACK[0x3EC]) = -45002;
  v5 = LOWORD(STACK[0x12E0]) ^ (v4 - 1011453327);
  v6 = STACK[0x12E8];
  JUMPOUT(0x2979F0CA4);
}

uint64_t sub_2979F0F68@<X0>(uint64_t a1@<X2>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 ^ 0x28A;
  v67 = 37 * (v66 ^ 0x37E);
  STACK[0x350] = v64;
  STACK[0x498] = a2;
  STACK[0x460] = a64;
  v69 = (*(a1 + 8 * (v66 + 720)))(STACK[0x340]);
  return (*(a1 + 8 * (((LODWORD(STACK[0x3EC]) == 0) * ((v67 + 1100736583) & 0xBE64179F ^ 0x2BA)) ^ v67)))(v69);
}

uint64_t sub_2979F107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = (v52 + 779237457) & 0xD18DC795;
  *STACK[0x16E0] = STACK[0x45C];
  *STACK[0x16E8] = a49;
  v54 = (v53 - v50 + 970) ^ (v49 + 74);
  STACK[0x438] = STACK[0x1788];
  v55 = *(v51 + 8 * (v53 ^ 0x4B5));
  v55(STACK[0x1318]);
  v56 = (v55)(STACK[0x16F0]);
  return (off_2A1E5DED0[(v54 - 77) ^ v53])(v56);
}

uint64_t sub_2979F12C8@<X0>(int a1@<W8>)
{
  v4 = a1 + 519;
  v5 = *(v3 + 8 * ((35 * (((a1 + 7) ^ ((a1 ^ (v1 + 336)) + *(v2 + 16) + 1903518402 < 0xFFFFFFF9)) & 1)) | a1));
  LODWORD(STACK[0xDF8]) = v4;
  LODWORD(STACK[0xDFC]) = -1339192950;
  return v5();
}

uint64_t sub_2979F1320()
{
  (*(v1 + 8 * (v0 - 1011448265)))();
  STACK[0x15E0] = STACK[0x1708] + 0x4027DD4F4C01BDDBLL;
  (*(v1 + 8 * (v0 - 1011448241)))(&unk_297A20470);
  v3 = STACK[0x1708];
  *(v3 + 24) = 0;
  v3 += 24;
  STACK[0x15E8] = v3;
  *(v3 + 8) = 1379999023;
  STACK[0x15F0] = v3 + 8;
  v4 = (v2 - 224) & 0x8BEC1C0568FBB7C6;
  *(v2 - 200) = off_2A1E5DED0[v0 - 1011449693] + 1864516333 * ((v2 - 224 - 2 * v4 - 0x7413E3FA9704483ALL) ^ 0xFB97DE8E07D686D6);
  *(v2 - 216) = STACK[0x15E0];
  *(v2 - 208) = 1864516333 * ((v2 - 224 - 2 * v4 + 1761327046) ^ 0x7D686D6) + v0 + 948276351;
  (off_2A1E5DED0[v0 ^ 0x3C498616])(v2 - 224);
  return (*(v1 + 8 * (((*(v2 - 224) == ((v0 - 1011449225) ^ 0x6D373F5E)) * (v0 - 1011447825)) ^ (v0 - 1011449119))))(*STACK[0x15E8]);
}

uint64_t sub_2979F1564@<X0>(int a1@<W8>)
{
  v4 = (a1 - 487) | 0x403;
  v5 = v4 + *STACK[0x15F0] - 1380000282 < (v2 + v1 - 707 - 1623);
  v6 = *(v3 + 8 * (((2 * v5) | (16 * v5)) ^ a1));
  LODWORD(STACK[0xAF4]) = v4;
  STACK[0xAF8] = 1884009180;
  return v6();
}

uint64_t sub_2979F15C8()
{
  v6 = STACK[0xAF8];
  STACK[0xB00] = STACK[0xAF8];
  v7 = STACK[0xAF4];
  LODWORD(STACK[0xB08]) = STACK[0xAF4];
  v8 = (v7 - 43402080) & 0x3EDFBE88;
  LODWORD(STACK[0xB0C]) = v8;
  LODWORD(STACK[0xB10]) = (v7 - 1166) | 0x280;
  v9 = v8 + v6 - 2895459044u;
  LOBYTE(STACK[0xB17]) = *(STACK[0x1708] + v9);
  v10 = *STACK[0x15E8] + v9;
  STACK[0xB18] = v10;
  STACK[0x588] = v10;
  STACK[0x578] = *(v5 + 8 * (v7 + 228));
  v0 = ((STACK[0x588] - *(v4 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v3 + 3512);
  v1 = (*(qword_2A13A4DD8 + 32 * *(v0 + 8) + 8))(*v0, &STACK[0x5BF], 1);
  LOBYTE(STACK[0x587]) = STACK[0x5BF];
  return (STACK[0x578])(v1);
}

uint64_t sub_2979F16A8()
{
  v3 = (*(v2 + 8 * (v1 | 0x403)))();
  STACK[0x438] = STACK[0x1700];
  return (*(v2 + 8 * ((((((v1 + 311979934) & 0xED678E7F) + 1011449836) ^ (v1 + 2130551340) & 0xBD4BDB9F) * v0) ^ v1)))(v3);
}

uint64_t sub_2979F1724()
{
  v5 = STACK[0xDFC];
  LODWORD(STACK[0xE00]) = STACK[0xDFC];
  v6 = STACK[0xDF8];
  LODWORD(STACK[0xE04]) = STACK[0xDF8];
  LODWORD(STACK[0xE08]) = v6 + 79;
  LODWORD(STACK[0xE0C]) = (v6 + 79) ^ 0x110;
  v5 ^= 0xB02D898A;
  v7 = *(&STACK[0x259] + v5);
  LODWORD(STACK[0xE10]) = v5;
  LOBYTE(STACK[0xE17]) = v7;
  v8 = *STACK[0x1710] + v5;
  STACK[0xE18] = v8;
  STACK[0x588] = v8;
  STACK[0x578] = *(v4 + 8 * (v6 ^ 0x555));
  v0 = ((STACK[0x588] - *(v3 + 3520)) & 0xFFFFFFFFFFFFFFF0) + qword_2A13A4DB8;
  v1 = (*(qword_2A13A4DD8 + 32 * *(v0 + 8) + 8))(*v0, &STACK[0x5BF], 1);
  LOBYTE(STACK[0x587]) = STACK[0x5BF];
  return (STACK[0x578])(v1);
}

uint64_t sub_2979F17B4()
{
  (*(v2 + 8 * (v0 - 12)))();
  (*(v2 + 8 * (v1 - 1011448241)))(&unk_297A1D5D0, STACK[0x1708], 13);
  *STACK[0x15E8] = 0;
  *STACK[0x15F0] = 1379999023;
  v4 = off_2A1E5DED0[v1 - 1011449693];
  v5 = (v3 - 224) & 0x252F17CC8D46478ELL;
  *(v3 - 208) = 1864516333 * ((v3 - 224 - 2 * v5 - 1924774002) ^ 0xE26B769E) + 948276351 + v1;
  *(v3 - 216) = STACK[0x15E0];
  *(v3 - 200) = &v4[1864516333 * ((v3 - 224 - 2 * v5 + 0x252F17CC8D46478ELL) ^ 0x5554D547E26B769ELL)];
  (off_2A1E5DED0[v1 - 1011448298])(v3 - 224);
  return (*(v2 + 8 * ((v1 - 1011448937) ^ (v1 - 1011449693) ^ ((*(v3 - 224) == 1832336673) * (((v1 - 208480281) & 0xD023AC78) - 1030)))))(*STACK[0x15E8]);
}

uint64_t sub_2979F196C@<X0>(int a1@<W8>)
{
  v3 = (a1 - 659) | 0x458;
  v4 = *(v2 + 8 * ((((((a1 ^ (v1 - 88)) + 1) ^ ((*STACK[0x15F0] - 1379999036) < 0xFFFFFFF3)) & 1) * (v3 - 1066)) ^ a1));
  LODWORD(STACK[0x71C]) = v3;
  STACK[0x720] = 1739205010;
  return v4();
}

void sub_2979F19F4()
{
  v2 = STACK[0x720];
  STACK[0x728] = STACK[0x720];
  v3 = STACK[0x71C];
  LODWORD(STACK[0x730]) = STACK[0x71C];
  v4 = (v3 - v0 + 462);
  LODWORD(STACK[0x734]) = v4;
  LODWORD(STACK[0x738]) = v3 ^ 0x67AA2DE2;
  v5 = (v4 ^ 0xFFFFFFFFA41C5666) + v2;
  LOBYTE(STACK[0x73F]) = *(STACK[0x1708] + v5);
  v6 = *STACK[0x15E8] + v5;
  STACK[0x740] = v6;
  STACK[0x588] = v6;
  STACK[0x578] = *(v1 + 8 * (v3 + 364));
  JUMPOUT(0x2979DE7E8);
}

uint64_t sub_2979F1AAC()
{
  v4 = v2 - v0 + 1069;
  v5 = (*(v3 + 8 * (v2 ^ 0x421u)))();
  STACK[0x438] = STACK[0x1700];
  v6 = LODWORD(STACK[0x16FC]);
  return (*(v3 + 8 * ((((v4 ^ 0x3C49803C) + (v2 ^ 0x244)) * v1) ^ v2)))(v5);
}

uint64_t sub_2979F1B0C()
{
  v3 = v1 - v0 + 1521;
  LODWORD(STACK[0x1980]) = 144770229;
  v4 = (*(v2 + 8 * (v1 + 1494)))(@"0dnM19zBqLw5ZPhIo4GEkg");
  return (off_2A1E5DED0[(v4 * ((v1 + 1011449807) ^ v3)) | v1])();
}

void sub_2979F1BC0()
{
  LODWORD(STACK[0x19A8]) = 458219685;
  STACK[0x19A0] = 0;
  JUMPOUT(0x2979F1BE0);
}

uint64_t sub_2979F1E0C@<X0>(int a1@<W8>)
{
  v3 = v1 ^ 0x67A;
  STACK[0x14A0] = &STACK[0x2800D80E2920F58E];
  LODWORD(STACK[0x260]) = a1;
  v4 = (*(v2 + 8 * ((v1 ^ 0x67A) + 1012)))((((v1 ^ 0x67A) + 1011449275) ^ 0xCF8C8FB2) + a1, 50, 2021831466);
  STACK[0x200] = v4 + 0x5F9955DC0BC2CB12;
  return (off_2A1E5DED0[((8 * (v4 == 0)) | (32 * (v4 == 0))) ^ v3])();
}

uint64_t sub_2979F1F0C()
{
  LODWORD(STACK[0x244]) = 1175586934;
  LODWORD(STACK[0x17E4]) = 1423509543;
  v2 = &STACK[0x18A8] + 3 * (v0 - 1011449632) - 696;
  v3 = *(v2 + 4);
  STACK[0x17E8] = (v2 + 2);
  v4 = *(v1 + 8 * ((29 * (v3 == v0 - 553230179)) ^ (v0 - 1011449436)));
  LODWORD(STACK[0xEC8]) = v0 - 553230179;
  return v4(3283519043);
}

uint64_t sub_2979F1F58()
{
  (*(v2 + 8 * (v1 ^ (v0 + 1583))))();
  v3 = LODWORD(STACK[0x16FC]);
  return (*(v2 + 8 * (((*STACK[0x1448] == 0) * (((v1 - 478256178) & 0xE0381D6F) + 1653)) ^ (v1 - 1011448913))))();
}

void sub_2979F1F7C(char a1@<W1>, char a2@<W8>)
{
  v3 = STACK[0x998];
  LODWORD(STACK[0x99C]) = STACK[0x998];
  v4 = (v3 + 1010859524) | 0x90008;
  LODWORD(STACK[0x9A0]) = v4;
  LODWORD(STACK[0x9A4]) = (v3 - 168) | 0x20;
  v5 = (v2 + 118) | (16 * a2 - ((32 * a2 - 64) & 0x40) + 6) ^ 0xA6;
  v6 = v5 - ((2 * v5) & 0x98) + (((v3 + 88) | 0x20) ^ (a1 + v4 + 74));
  v7 = STACK[0x1760] + (LODWORD(STACK[0x13F4]) - 791752403);
  v8 = 233206231 * ((v7 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158))) & 0x7FFFFFFF);
  v9 = 233206231 * (v8 ^ HIWORD(v8));
  LOBYTE(STACK[0x5D2]) = (v6 - 21) ^ byte_297A216A0[v9 >> 24] ^ byte_297A1F840[v9 >> 24] ^ byte_297A1AF40[v9 >> 24] ^ v9 ^ (107 * BYTE3(v9)) ^ 0xCC;
  STACK[0x5C8] = v7;
  JUMPOUT(0x2979CD988);
}

uint64_t sub_2979F20C4()
{
  if (v0 >= 0x8B2AF75D)
  {
    v2 = *(v1 + 2136) + 1;
  }

  else
  {
    v2 = 2025286526;
  }

  *(v1 + 2136) = v2;
  return sub_2979F21FC();
}

uint64_t sub_2979F21FC@<X0>(int a1@<W0>, uint64_t a2@<X2>, char a3@<W3>, int a4@<W5>, int a5@<W6>, int a6@<W8>)
{
  v8 = ((a1 + a6 - 323403058) ^ v7) >> ((((a6 - 126) | 0x89) ^ a3) + v6);
  LOBYTE(v8) = v8 - ((2 * v8) & 4) - 126;
  byte_2A13A4BA8[a5 - 1615001422] = v8 ^ 0x29;
  return (*(a2 + 8 * ((249 * (a5 - (v8 != 41) != a4)) ^ a6)))();
}

uint64_t sub_2979F22D8(int a1, uint64_t a2, uint64_t a3)
{
  STACK[0x22E8] = 0x3790A6C3AE98161CLL;
  LODWORD(STACK[0x240]) = *(v6 + 2140) - 1306450980;
  v8 = *(v4 + 2136);
  STACK[0x538] = *(a3 + 8 * ((v3 - 2011084460) & 0x2810259));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = 2025286526;
  STACK[0x550] = v8;
  LODWORD(STACK[0x558]) = v3 - 2011084497;
  LODWORD(STACK[0x55C]) = v3 - 2011084461;
  LODWORD(STACK[0x560]) = v3 - 2011084460;
  *(v7 - 208) = 1508565502 - 490657303 * ((v7 - 224 + v5 - 2 * ((v7 - 224) & v5)) ^ 0x372BCE59) + v3;
  *(v7 - 216) = &STACK[0x538];
  v9 = (*(a3 + 8 * (v3 ^ (a1 + 1546))))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 224)])(v9);
}

uint64_t sub_2979F23D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v62 = (v59 - 1420389641) & 0x185FEF6F;
  (*(a6 + 8 * (v59 ^ (v59 + 1597))))(a59 + 0xC04109304822A11, 0x100004077774924);
  v63 = (*(&off_2A1E5DED0[v60 - 52] + v59))();
  v64 = v61 + v62 + v63 - ((2 * v63) & 0xA2C1A860) - 623;
  LODWORD(xmmword_2A13A3880) = v64;
  v65 = v64 ^ (v61 + 1) ^ (v64 >> 30);
  v66 = (1812433253 * v65) ^ 0x7B7B78B5;
  v67 = (-670100790 * v65) & ((2 * (v62 ^ 0x29B)) ^ 0xF6F6F082);
  v68 = (2 * (v66 + v67 + 1605567683) + 1235420434) & 0xA2C1A860;
  DWORD1(xmmword_2A13A3880) = -706389124 - v68 + v66 + v67;
  v69 = (v62 + 4294967294u) >> 32;
  v70 = off_2A1E5DED0[(2047 * v69) ^ (v62 + 398)];
  return (v70)(v67, v68, v70, (v69 << 11), off_2A1E5DED0, 3624866506, 1812433253, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_2979F2554(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = &xmmword_2A13A3880;
  v15 = vld1q_dup_f32(v14);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  a8.i64[0] = *(&xmmword_2A13A3880 + 4);
  a8.i32[2] = HIDWORD(xmmword_2A13A3880);
  v18 = vextq_s8(v15, a8, 0xCuLL);
  v19 = a8;
  v19.i32[3] = dword_2A13A3890;
  v20 = veorq_s8(vorrq_s8(vandq_s8(v19, vnegq_f32(v17)), vandq_s8(v18, v16)), vdupq_n_s32(0x5160D430u));
  v21.i32[0] = *(&STACK[0x22E8] + (BYTE4(xmmword_2A13A3880) & 1));
  v21.i32[1] = *(&STACK[0x22E8] + (BYTE8(xmmword_2A13A3880) & 1));
  v21.i32[2] = *(&STACK[0x22E8] + (BYTE12(xmmword_2A13A3880) & 1));
  v21.i32[3] = *(&STACK[0x22E8] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v21), vdupq_n_s32(0x9792DE79)), vshrq_n_u32(vaddq_s32(vsubq_s32(v20, vandq_s8(vaddq_s32(v20, v20), vdupq_n_s32(0xE42B2194))), vdupq_n_s32(0x721590CAu)), 1uLL));
  return (*(a14 + 6256))();
}

uint64_t sub_2979F307C@<X0>(int a1@<W4>, uint64_t a2@<X5>, uint64_t a3@<X6>, int a4@<W8>)
{
  v9 = (a3 + 4 * (v4 + v7));
  v10 = v4 + 1;
  *v9 = v9[397] ^ *(&STACK[0x22E8] + (*(a3 + 4 * (v10 + v7)) & 1)) ^ ((((*(a3 + 4 * (v10 + v7)) & 0x7FFFFFFE | v5 & 0x80000000) ^ v6) - (((a4 - a1 + 1054) ^ 0xD862A19C) & (2 * ((*(a3 + 4 * (v10 + v7)) & 0x7FFFFFFE | v5 & 0x80000000) ^ v6))) + 1914015946) >> 1) ^ 0x9792DE79;
  return (*(a2 + 8 * ((94 * (v10 == v8 + 3)) ^ a4)))();
}

uint64_t sub_2979F3118(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14)
{
  v16 = &xmmword_2A13A3C0C;
  v17 = vld1q_dup_f32(v16);
  v18 = a13 + v15;
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  v20.i64[0] = 0x100000001;
  v20.i64[1] = 0x100000001;
  a8.i64[0] = *(&xmmword_2A13A3C0C + 4);
  a8.i32[2] = HIDWORD(xmmword_2A13A3C0C);
  v21 = vextq_s8(v17, a8, 0xCuLL);
  v22 = a8;
  v22.i32[3] = dword_2A13A3C1C;
  v23 = veorq_s8(vorrq_s8(vandq_s8(v22, vnegq_f32(v20)), vandq_s8(v21, v19)), vdupq_n_s32(0x5160D430u));
  v24.i32[0] = *(v14 + 4 * (BYTE4(xmmword_2A13A3C0C) & 1));
  v24.i32[1] = *(v14 + 4 * (BYTE8(xmmword_2A13A3C0C) & 1));
  v24.i32[2] = *(v14 + 4 * (HIDWORD(xmmword_2A13A3C0C) & ((v18 - 1092) ^ 0x206u)));
  v24.i32[3] = *(v14 + 4 * (dword_2A13A3C1C & 1));
  xmmword_2A13A3C0C = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3880, v24), vdupq_n_s32(0xF003AB58)), vshrq_n_u32(vaddq_s32(vsubq_s32(v23, vandq_s8(vaddq_s32(v23, v23), vdupq_n_s32(0x7A6EF510u))), vdupq_n_s32(0xBD377A88)), 1uLL));
  return (*(a14 + 8 * ((v18 - 1117) ^ 0x3E3)))();
}

uint64_t sub_2979F3234@<X0>(char a1@<W3>, int a2@<W4>, uint64_t a3@<X5>, _DWORD *a4@<X6>, int a5@<W8>)
{
  v6 = (*a4 & 0x7FFFFFFE | a4[623] & 0x80000000) ^ v5;
  a4[623] = a4[396] ^ *(&STACK[0x22E8] + (*a4 & 1)) ^ 0x977E1E46 ^ ((v6 + 1942753461 - 2 * (v6 & 0x73CC10BE ^ (a2 + ((a5 + 1053664247) & 0xFD7BDA09) - 1601) & *a4)) >> (a2 + a1 + a5 - 7 - 74));
  return (*(a3 + 8 * ((324 * (LODWORD(STACK[0x240]) > 0x26F)) ^ a5)))();
}

uint64_t sub_2979F32F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  LODWORD(STACK[0x240]) = 0;
  v12 = LODWORD(STACK[0x240]);
  LODWORD(STACK[0x240]) = v12 + 1;
  v13 = *(a7 + 4 * v12);
  *(v10 + 2140) = v12 + 1306450981;
  v14 = (*(v8 + 2136) + 309562335);
  v15 = *(a6 + 8 * (v7 - 1011449711));
  v16 = 912661583 * ((v11 - 224 + v9 - 2 * ((v11 - 224) & v9)) ^ 0xBDE9617D27003D9ALL);
  *(v11 - 208) = v16 + 1;
  *(v11 - 200) = v14 ^ v16;
  *(v11 - 192) = v15 ^ v16;
  LODWORD(v15) = v16 ^ (v7 + 1525574131);
  *(v11 - 184) = v15 ^ 0x61;
  *(v11 - 180) = 922745793 - v16 + v7;
  *(v11 - 216) = v16 + 2334848861u;
  *(v11 - 224) = v15 ^ 0x48;
  *(v11 - 220) = v7 + 1525574131 + v16;
  v17 = (*(a6 + 8 * (v7 + a5)))(v11 - 224);
  return (off_2A1E5DED0[*(v11 - 176)])(v17);
}

uint64_t sub_2979F3468()
{
  STACK[0x438] = 0;
  if (!qword_2A13A4DA8)
  {
    qword_2A13A4DA8 = v0;
    dword_2A13A4DB4 = 255;
    v2 = -4;
    v3 = v0;
    do
    {
      *v3 |= ~*(v0 + 4 * (*v3 & 0x3ELL)) << 16;
      v3 += 4;
      v2 += 4;
    }

    while (v2 < 0x3B);
    byte_2A13A4DB0 = 1;
    JUMPOUT(0x2979F34CCLL);
  }

  return sub_2979F9658();
}

uint64_t sub_2979F3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(STACK[0x18A8]) = 144770303;
  STACK[0x18B0] = 0;
  LODWORD(STACK[0x18B8]) = 458219685;
  v17 = ((v16 - 1011449283) ^ 0x244) + 1374585165;
  v18 = *(a7 + 8 * ((867 * (v17 == 1374585177)) ^ (v16 - 1011449478)));
  return v18(867, v17, v18, &STACK[0x7AE5C37E0], 1011449864, 3283519043, a7, 458219685, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2979F3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  STACK[0x380] = 0x3B04667E5ADCB3E6;
  LODWORD(STACK[0x388]) = 754590252;
  v24 = off_2A13A4240[0];
  LOBYTE(STACK[0x22D1]) = -11 * *off_2A13A4240[0] + 76;
  LOBYTE(STACK[0x22D2]) = a5 + ((a24 + 90) & 0x7C) - 28 - 11 * v24[1] + 68;
  LOBYTE(STACK[0x22D3]) = -11 * v24[2] + 76;
  LOBYTE(STACK[0x22D4]) = -11 * v24[3] + 76;
  LOBYTE(STACK[0x22D5]) = -11 * v24[4] + 76;
  LOBYTE(STACK[0x22D6]) = -11 * v24[5] + 76;
  LOBYTE(STACK[0x22D7]) = -11 * v24[6] + 76;
  LOBYTE(STACK[0x22D8]) = -11 * v24[7] + 76;
  LOBYTE(STACK[0x22D9]) = -11 * v24[8] + 76;
  LOBYTE(STACK[0x22DA]) = -11 * v24[9] + 76;
  LOBYTE(STACK[0x22DB]) = -11 * v24[10] + 76;
  LOBYTE(STACK[0x22DC]) = -11 * v24[11] + 76;
  LOBYTE(STACK[0x22DD]) = -11 * v24[12] + 76;
  LOBYTE(STACK[0x22DE]) = -11 * v24[13] + 76;
  LOBYTE(STACK[0x22DF]) = -11 * v24[14] + 76;
  LOBYTE(STACK[0x22E0]) = -11 * v24[15] + 76;
  LOBYTE(STACK[0x22E1]) = -11 * v24[16] + 76;
  v25 = off_2A13A4240[0];
  LOBYTE(STACK[0x22E2]) = -11 * off_2A13A4240[0][17] + 76;
  LOBYTE(STACK[0x22E3]) = -11 * v25[18] + 76;
  LOBYTE(STACK[0x22E4]) = -11 * v25[19] + 76;
  LOBYTE(STACK[0x22E5]) = -11 * v25[20] + 76;
  LOBYTE(STACK[0x22E6]) = -11 * v25[21] + 76;
  LOBYTE(STACK[0x22E7]) = -11 * v25[22] + 76;
  v26 = (*(a7 + 8 * (a24 + 969)))();
  v27 = (off_2A1E5DED0[a24 + 976])(0, &STACK[0x22D1], v26);
  return (off_2A1E5DED0[(207 * (v27 != 0)) ^ a24])(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2979F3870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v28 = v26 + (a26 ^ 0x3C498514) - 1308;
  v29 = (*(v27 + 8 * (a26 + 289)))(a1, 0) == 0;
  return (off_2A1E5DED0[(v29 * (v28 ^ 0x171)) ^ a26])();
}

uint64_t sub_2979F38D0()
{
  (*(v0 + 8 * (v2 ^ (v1 + 1588))))(v3);
  v6 = *(v4 + 8 * (v2 - 1011449746));
  v7 = 1864516333 * ((v5 - 224) ^ 0x707BC28B6F2D3110);
  *(v5 - 208) = v7 + v2 + 948276351;
  *(v5 - 216) = &unk_2A13A4258;
  *(v5 - 200) = v6 + v7;
  v8 = (*(v4 + 8 * (v2 ^ 0x3C498616)))(v5 - 224);
  return sub_2979F9658(v8);
}

uint64_t sub_2979F38F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v19 = &STACK[0x1A70] + STACK[0x438];
  STACK[0x438] += 64;
  v20 = ((((2 * (v19 & 1) + (v19 ^ 0xFFC35FED)) << (((v18 - 84) & 0xFEu) + 42)) ^ 0x20) + 32 * (v19 ^ 0xED) + 16) & 0x20;
  return (*(v17 + 8 * (v18 ^ (99 * (&STACK[0x18A8] == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, (v20 ^ 0xFFE7FFBF67D7FCFFLL) + 2 * v20 + 0x1DFEF3C9BBF8DFF8, v19, a17);
}

uint64_t sub_2979F39C8()
{
  v3 = (*(v0 + 8 * (v1 + 821)))(v2);
  v4 = (v3 ^ 0xF9FCB7FFFDD743F7) - (off_2A1E5DED0[v1 + 889])() + ((v3 << ((v1 ^ 0xABu) - 112)) & 0xF3F96FFFFBAE87EELL) == 0xF9FCB7FFFDD743F7;
  return (off_2A1E5DED0[(490 * v4) ^ v1])();
}

uint64_t sub_2979F3A60()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x538)))(v2);
  v4 = ((v1 - 121 - 0x2001003401954BELL) & (2 * v3)) + (v3 ^ 0xFEFFF7FE5FF3571DLL);
  STACK[0x1778] = v4;
  v5 = (off_2A1E5DED0[v1 + 732])((v4 - (((v1 ^ 0x2001003401952B9) + 2 * v4) & 0x234ED5574348A404) + 0x12A772AD41B0FAE6) ^ 0x11A76AABA1A45202, 0x100004077774924);
  STACK[0x1780] = v5;
  STACK[0x370] = v5;
  return (off_2A1E5DED0[((v5 == 0) | (4 * (v5 == 0))) ^ v1])();
}

uint64_t sub_2979F3B70()
{
  v5 = (*(v0 + 8 * (v1 ^ 0x4F6)))();
  v6 = (off_2A1E5DED0[v1 ^ 0x713])(v4, STACK[0x1780], v2 ^ v3, v5);
  return (off_2A1E5DED0[(((v1 ^ 0x45 ^ ((((2 * v6) & 0xDF) + (v6 ^ 0xEF)) == 239)) & 1) * ((v1 - 239) ^ 0x3E9)) ^ v1])();
}

uint64_t sub_2979F3C0C(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x360]) = ((v2 ^ 0x6B4) - 1158958946) ^ v3;
  v4 = (*(a2 + 8 * (v2 ^ 0x2FC)))((((v2 - 1212) | 0x176u) + 4294966920) & v3 ^ 0xA1A45202, 50, 3699141799);
  STACK[0x13A0] = v4;
  return (off_2A1E5DED0[(86 * (v4 == 0)) ^ v2])();
}

uint64_t sub_2979F4008()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x282)))(v2);
  v4 = (((v1 + 104) - 0x11C20E207A08057ELL) ^ v3) - (off_2A1E5DED0[v1 ^ 0x2BB])() + ((2 * v3) & 0xDC7BE3BF0BEFFEEELL) == 0xEE3DF1DF85F7FF77;
  return (off_2A1E5DED0[((16 * (((v1 ^ 0x5C1 ^ v4) & 1) == 0)) & 0xBF | (((v1 ^ 0xC1 ^ ~v4) & 1) << 6)) ^ v1])();
}

uint64_t sub_2979F40C4()
{
  v3 = (*(v0 + 8 * (v1 + 1219)))(v2);
  v4 = ((2 * v3) & 0x7EFCEFB7E7FFFFF6) - (off_2A1E5DED0[v1 ^ 0x709])() + (v3 ^ ((v1 ^ 0x309u) + 446) ^ 0x3F7E77DBF3FFFBF8) == 0x3F7E77DBF3FFFFFBLL;
  return (off_2A1E5DED0[(844 * v4) ^ v1])();
}

uint64_t sub_2979F4178()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x245)))(v2, 4, &STACK[0x490]);
  v4 = (((2 * v3) & 0xF7) + (v3 ^ 0xFB)) == (v1 - 8);
  return (off_2A1E5DED0[(((v1 + 108) ^ v4) & 1 | ((((v1 + 108) ^ v4) & 1) << 6)) ^ v1])();
}

uint64_t sub_2979F41F4()
{
  v2 = v1 - 410;
  LODWORD(STACK[0x360]) = 458219693;
  v3 = (*(v0 + 8 * (v2 ^ 0x424)))(8, 0x100004077774924);
  STACK[0x17A0] = v3;
  return (off_2A1E5DED0[((v3 == 0) * ((v2 ^ 0x2C) + 12 * (v2 ^ 0x238) - 1549)) | v2])();
}

uint64_t sub_2979F427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = STACK[0x17A0];
  *v15 = (LOBYTE(STACK[0x497]) - (((v14 - 30) & 0x59 ^ 0x9A) & (2 * LOBYTE(STACK[0x497]))) + 73) ^ 0x49;
  v15[1] = (HIWORD(STACK[0x490]) - ((STACK[0x490] >> 47) & 0x6E) - 73) ^ 0xB7;
  v15[2] = ((WORD2(STACK[0x490]) >> 8) - ((STACK[0x490] >> 39) & 0x96) - 53) ^ 0xCB;
  v15[3] = (HIDWORD(STACK[0x490]) - ((STACK[0x490] >> 31) & 0x24) + 18) ^ 0x12;
  v15[4] = (HIBYTE(LODWORD(STACK[0x490])) - ((LODWORD(STACK[0x490]) >> 23) & 0x68) - 76) ^ 0xB4;
  v15[5] = (HIWORD(LODWORD(STACK[0x490])) - ((LODWORD(STACK[0x490]) >> 15) & 0x9E) + 79) ^ 0x4F;
  v15[6] = (BYTE1(LODWORD(STACK[0x490])) - ((LODWORD(STACK[0x490]) >> 7) & 0x88) + 68) ^ 0x44;
  v15[7] = (LOBYTE(STACK[0x490]) - ((2 * LOBYTE(STACK[0x490])) & 0xF8) - 4) ^ 0xFC;
  v16 = (*(v13 + 8 * (v14 ^ 0x58D)))(8, 50, 2949872162);
  STACK[0x1208] = v16;
  v17 = off_2A1E5DED0[(1991 * (v16 != 0)) ^ v14];
  LODWORD(STACK[0xE8C]) = v14;
  STACK[0xE90] = 0x6310D5DA34E1AFBCLL;
  STACK[0xE98] = 0x793989529A29A2D2;
  STACK[0xEA0] = 0x2A464FC7394222FCLL;
  return v17(v16, off_2A1E5DED0, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13);
}

void sub_2979F446C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xEA0];
  STACK[0xEA8] = STACK[0xEA0];
  v3 = STACK[0xE98];
  STACK[0xEB0] = STACK[0xE98];
  STACK[0xEB8] = STACK[0xE90];
  v4 = STACK[0xE8C];
  LODWORD(STACK[0xEC0]) = STACK[0xE8C];
  v5 = (v4 + 1011448892);
  LOBYTE(v2) = *(v2 + STACK[0x17A0] - 0x2A464FC7394222FCLL);
  v6 = STACK[0x1208] + v3 + (v5 ^ 0x86C676AD599FDD26);
  v7 = 233206231 * ((v6 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158))) & 0x7FFFFFFF);
  v8 = 233206231 * (v7 ^ HIWORD(v7));
  v9 = byte_297A1CEB0[v8 >> 24];
  LODWORD(STACK[0xEC4]) = v5;
  LOBYTE(STACK[0x5D2]) = v9 ^ v2 ^ byte_297A20260[(v8 >> 24) + 6] ^ byte_297A231B0[v8 >> 24] ^ v8 ^ (117 * BYTE3(v8));
  STACK[0x5C8] = v6;
  STACK[0x5C0] = *(a2 + 8 * (v4 + 498));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979F4570()
{
  v3 = (*(v0 + 8 * (v1 + 295)))(v2);
  v4 = v3 + v1 - 688 + (v1 ^ 0x19E05D82) - ((2 * v3) & 0x33C0B738) - 32;
  LODWORD(STACK[0x141C]) = v4 ^ 0x2AFBB39;
  LODWORD(STACK[0x360]) = v4 ^ 0x2AFBB39;
  v5 = (off_2A1E5DED0[v1 + 344])(v4 ^ 0x19E05B9Cu, 0x100004077774924);
  STACK[0x1420] = v5;
  return (off_2A1E5DED0[(462 * (v5 != 0)) ^ v1])();
}

uint64_t sub_2979F4634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = (a16 + a15 - 0x1DE6F38923D0DCF7);
  *v20 = 0;
  v20[1] = (v18 ^ 0x7EEFFAF6F96F7D5FLL) + (v17 ^ 0xAE2BBD1E) + (((((v17 ^ 0x71) - 643) | 8u) ^ 0x1F2DEF8B6) & (2 * v18)) - 0x7EEFFAF7A79B374ALL;
  v21 = STACK[0x1420];
  (*(v16 + 8 * (v17 ^ 0x2D9)))(v19, 0);
  v22 = (off_2A1E5DED0[v17 ^ 0x2B4])(v18, 50, 3775244939);
  STACK[0x1560] = v22;
  return (off_2A1E5DED0[(79 * (v22 != 0)) ^ v17 ^ 0x71])();
}

uint64_t sub_2979F4734(uint64_t a1, uint64_t a2)
{
  v6 = (v5 ^ 0xF753FED78BFFB2CBLL) + (v4 & 0x117FF6596) + 0x8AC0129222C0720;
  STACK[0x1680] = v6;
  v7 = v6 < 0xAE2BB9EB;
  v8 = *(a2 + 8 * (v3 ^ v2 ^ (101 * (((v3 + 11) ^ ((((v3 - v6) | (v6 - v3)) & 0x8000000000000000) != 0)) & 1))));
  LOBYTE(STACK[0x168F]) = v7;
  LODWORD(STACK[0xE4C]) = (v3 - 224158965) & 0x5F30AF8D;
  STACK[0xE50] = 0x75427ED747150ECELL;
  STACK[0xE58] = 0x50BB7D52B389F11ELL;
  STACK[0xE60] = 0x46E8047FA80B27E8;
  return v8();
}

void sub_2979F4828(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0xE60];
  STACK[0xE68] = STACK[0xE60];
  v3 = STACK[0xE58];
  STACK[0xE70] = STACK[0xE58];
  STACK[0xE78] = STACK[0xE50];
  v4 = STACK[0xE4C];
  LODWORD(STACK[0xE84]) = STACK[0xE4C];
  v5 = (v4 - 644) | 9;
  LOBYTE(v2) = *(v2 + STACK[0x1420] - 0x46E8047FA80B27E8);
  v6 = v3 + STACK[0x1560] - 0x50BB7D52B389F11ELL;
  v7 = ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v6) & 0x7FFFFFFF) * (v5 ^ 0xDE673DE);
  v8 = 233206231 * (v7 ^ HIWORD(v7));
  v9 = byte_297A1CEB0[v8 >> 24];
  LODWORD(STACK[0xE88]) = v5;
  LOBYTE(STACK[0x5D2]) = v9 ^ v2 ^ byte_297A20260[(v8 >> 24) + 6] ^ byte_297A231B0[v8 >> 24] ^ v8 ^ (117 * BYTE3(v8));
  STACK[0x5C8] = v6;
  STACK[0x5C0] = *(a2 + 8 * (v4 + 322));
  JUMPOUT(0x2979D0DC0);
}

uint64_t sub_2979F4958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = STACK[0x1778] + 0x1000801FD58A025;
  STACK[0x1640] = v14;
  LOBYTE(STACK[0x164F]) = v14 < 0x5D4BF742;
  v15 = *(a2 + 8 * (((v14 == 1565259586) * ((v13 + 385) ^ 0x20F)) ^ v13));
  LODWORD(STACK[0x6E8]) = v13 + 385;
  LODWORD(STACK[0xF5C]) = v13;
  STACK[0xF60] = 0x562CCCA058B7C832;
  STACK[0xF68] = 0x64BF76FFD1F46D68;
  STACK[0xF70] = 0x2CEFADA161AE67BBLL;
  return v15(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

void sub_2979F4A18(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x6E8];
  v3 = (LODWORD(STACK[0x6E8]) + 970017831) & 0xC62EB2E9;
  LODWORD(STACK[0x6EC]) = v3;
  v4 = STACK[0x1778] + STACK[0x13A0] + 0x1000801A00CA8E3;
  v5 = 233206231 * ((v3 + 2147483126) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ (LODWORD(STACK[0x1778]) + LODWORD(STACK[0x13A0]) - 1609783069)));
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  LOBYTE(STACK[0x5D2]) = byte_297A20260[(v6 >> 24) + 6] ^ byte_297A1CEB0[v6 >> 24] ^ byte_297A231B0[v6 >> 24] ^ v6 ^ (117 * BYTE3(v6));
  STACK[0x5C8] = v4;
  STACK[0x5C0] = *(a2 + 8 * (v2 + 655));
  JUMPOUT(0x2979D0DC0);
}

void sub_2979F4AF8(int a1@<W8>)
{
  LODWORD(STACK[0x414]) = a1;
  v2 = (v1 + 1011449343) ^ LODWORD(STACK[0x141C]) ^ 0xFFFF81DB;
  v4 = STACK[0x1560];
  v3 = STACK[0x1420];
  JUMPOUT(0x2979F3D20);
}

uint64_t sub_2979F4B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = v7;
  v11 = v7 - 668032979;
  v12 = v7 + 1;
  v13 = *(a3 + 4 * v11) ^ 0xFE6A3DE9 ^ ((*(a3 + 4 * v11) >> 30) | 0xAF0AE9D8);
  v14 = (v10 + 359613753);
  v15 = (*(a3 + 4 * (v12 - 668032979)) ^ 0x58E5815D ^ (1664525 * v13 - ((3329050 * v13) & 0x130AAADA) + 159733101)) + (*(STACK[0x1278] + 4 * (v6 - 289242895)) ^ 0x75E35D9E);
  v16 = (v15 ^ 0x77FCD8F5) + v6 + ((2 * v15) & 0xEFF9B1EA);
  *(a3 + 4 * (v12 - 668032979)) = v16 - ((2 * v16 - 309637128) & 0xA2C1A860) - 937001940;
  v17 = *(a2 + 8 * ((v4 - 1123784888) ^ 0x1FFFFFFFF94DE7C9)) ^ v8;
  *(v9 - 200) = v14 ^ v8;
  *(v9 - 192) = v17;
  *(v9 - 208) = v8 + 1;
  *(v9 - 224) = v8 ^ (v4 - 1123784888) ^ 0xD2;
  *(v9 - 220) = v4 - 1123784888 + v8;
  *(v9 - 184) = (v4 - 1123784959) ^ v8;
  *(v9 - 180) = 922745793 - v8 + v4;
  *(v9 - 216) = v5;
  v18 = (*(a2 + 8 * (v4 ^ (v3 + 1595))))(v9 - 224);
  return (off_2A1E5DED0[*(v9 - 176)])(v18);
}

uint64_t sub_2979F4DA8()
{
  v6 = (v0 + 2122155094) & 0xBDCBF9BC;
  LODWORD(xmmword_2A13A3880) = dword_2A13A423C;
  v7 = *(v2 + 8 * ((v6 - 556833948) ^ 0x1B18E30ALL));
  v8 = 912661583 * ((0x7734EA95426B6971 - ((v5 - 224) | 0x7734EA95426B6971) + v3) ^ 0x7D7F48F1A9955B7BLL);
  v9 = (v6 - 556833948) ^ v8;
  *(v5 - 216) = (v4 + 1154774026) + v8;
  *(v5 - 224) = v9;
  *(v5 - 220) = v8;
  *(v5 - 208) = ((v6 - 556833948) ^ 0x51) + v8;
  *(v5 - 200) = v8 ^ 0x5611F318;
  *(v5 - 192) = v7 ^ v8;
  *(v5 - 184) = v9 ^ 0xD8;
  *(v5 - 180) = 922745793 - v8 + v6;
  v10 = (*(v2 + 8 * (v6 + v1)))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 176)])(v10);
}

uint64_t sub_2979F50E4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v4;
  v7 = v4 + 1;
  v8 = *(a2 + 4 * (v6 - 668032979));
  v9 = (*(a2 + 4 * (v7 - 668032979)) ^ 0x738EBBB4 ^ (1566083941 * (v8 ^ 0x5160D431 ^ (v8 >> 30)) - ((984684234 * (v8 ^ 0x5160D431 ^ (v8 >> 30))) & 0x45DCDF08) + 586051460)) - v6;
  *(a2 + 4 * (v7 - 668032979)) = v9 - ((2 * v9 + 1336065956) & 0xA2C1A860) + 2033333250;
  v10 = *(a1 + 8 * ((a3 - 1458768251) ^ 0x1FFFFFFFE5567614));
  v11 = 912661583 * ((~((v5 - 224) | 0x9D7952ECB315556) + ((v5 - 224) & 0x9D7952ECB315556)) ^ 0x39C374A20CF675CLL);
  *(v5 - 208) = v11 + 1;
  *(v5 - 216) = v11 + 2889916151;
  *(v5 - 200) = (v6 - 2073084122) ^ v11;
  *(v5 - 192) = v10 ^ v11;
  *(v5 - 184) = (a3 - 1458768258) ^ v11;
  *(v5 - 180) = 922745793 - v11 + a3;
  *(v5 - 224) = (a3 - 1458768229) ^ v11;
  *(v5 - 220) = a3 - 1458768251 + v11;
  v12 = (*(a1 + 8 * (a3 + v3)))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 176)])(v12);
}

uint64_t sub_2979F5360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (v70 - 976723557) & 0xFDC9B2EE;
  LODWORD(xmmword_2A13A3880) = v71 - 1793633240 + (((a59 - v70) | (v70 - a59)) >> 31);
  (*(a2 + 8 * (v70 ^ 0x78B76D42)))(a70);
  v72 = vld1q_dup_f32(&xmmword_2A13A3880);
  v73 = (v71 - 653215147) & 0xEAA5C7FB;
  v74.i64[0] = 0x8000000080000000;
  v74.i64[1] = 0x8000000080000000;
  v75.i64[0] = 0x100000001;
  v75.i64[1] = 0x100000001;
  v76.i64[0] = *(&xmmword_2A13A3880 + 4);
  v76.i32[2] = HIDWORD(xmmword_2A13A3880);
  v77 = vextq_s8(v72, v76, 0xCuLL);
  v78 = v76;
  v78.i32[3] = *(&xmmword_2A13A3880 + v73 - 597);
  v79 = veorq_s8(vorrq_s8(vandq_s8(v78, vnegq_f32(v75)), vandq_s8(v77, v74)), vdupq_n_s32(0x5160D430u));
  v80.i32[0] = *(&STACK[0x19F0] + (BYTE4(xmmword_2A13A3880) & 1));
  v80.i32[1] = *(&STACK[0x19F0] + (BYTE8(xmmword_2A13A3880) & 1));
  v80.i32[2] = *(&STACK[0x19F0] + (BYTE12(xmmword_2A13A3880) & 1));
  v80.i32[3] = *(&STACK[0x19F0] + (v78.i8[12] & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v80), vdupq_n_s32(0x84F0BD4F)), vshrq_n_u32(vaddq_s32(vsubq_s32(v79, vandq_s8(vaddq_s32(v79, v79), vdupq_n_s32(0x78FAF5D8u))), vdupq_n_s32(0xBC7D7AED)), 1uLL));
  return (off_2A1E5DED0[v73])();
}

uint64_t sub_2979F5404()
{
  LODWORD(STACK[0x23C]) = 458219693;
  v2 = (*(v0 + 8 * (v1 ^ 0x219)))(8, 0x100004077774924);
  STACK[0x1228] = v2;
  return (off_2A1E5DED0[((v2 == 0) * (((((v1 ^ 0x13C) - 696) | 0x105) ^ 0xFFFFFCC6) + 13 * (v1 ^ 0x449))) ^ v1 ^ 0x13C])();
}

uint64_t sub_2979F5498()
{
  v3 = STACK[0x1228];
  *v3 = (HIBYTE(STACK[0x2A8]) - ((STACK[0x2A8] >> 55) & 0x96) + ((2 * v1) ^ 0x34) + 5) ^ 0xCB;
  v3[1] = (HIWORD(STACK[0x2A8]) - ((STACK[0x2A8] >> 47) & 0xEC) + 118) ^ 0x76;
  v3[2] = ((WORD2(STACK[0x2A8]) >> 8) - ((STACK[0x2A8] >> 39) & 0x1A) + 13) ^ v2;
  v3[3] = ((HIDWORD(STACK[0x2A8]) - ((STACK[0x2A8] >> 31) & 0x66) + 115) ^ 0x33) - 64;
  v3[4] = (HIBYTE(LODWORD(STACK[0x2A8])) - ((LODWORD(STACK[0x2A8]) >> 23) & 0xA6) - 45) ^ 0xD3;
  v3[5] = (HIWORD(LODWORD(STACK[0x2A8])) - ((LODWORD(STACK[0x2A8]) >> 15) & 0xD0) - 24) ^ 0xE8;
  v3[6] = (BYTE1(LODWORD(STACK[0x2A8])) - ((LODWORD(STACK[0x2A8]) >> 7) & 0xBE) - 33) ^ 0xDF;
  v3[7] = (LOBYTE(STACK[0x2A8]) - ((2 * LOBYTE(STACK[0x2A8])) & 0x52) - 87) ^ 0xA9;
  v4 = (*(v0 + 8 * (v1 ^ 0x738)))(8, 50, 464388300);
  STACK[0x1528] = v4;
  v5 = off_2A1E5DED0[(243 * (v4 == 0)) ^ v1];
  LODWORD(STACK[0x78C]) = v1;
  STACK[0x790] = 0x3A9F0EEAC627C922;
  STACK[0x798] = 0x473EA542B3F91B5ALL;
  STACK[0x7A0] = 0x55CEAE74395DFC99;
  return v5();
}

uint64_t sub_2979F567C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x220]) = v4;
  v6 = *(a4 + 8 * v5);
  v8 = STACK[0x1528];
  return (*(a4 + 8 * ((31 * (((((v5 + 1035) ^ 0x565) + 1011449530) ^ 0xE7947F20) == -606208224)) ^ (v5 + 1035))))(STACK[0x1228], a2, 3283519043);
}

uint64_t sub_2979F56B0()
{
  v2 = (*(v0 + 8 * (v1 + 1203)))(STACK[0x1660]);
  v3 = (v2 ^ 0x7D9B3F57FDDFFFFELL) - (off_2A1E5DED0[v1 + 1257])() + ((v2 << (((73 * (v1 ^ 0x51) - 117) | 0x14) ^ 0x55u)) & 0xFB367EAFFBBFFFFCLL) == 0x7D9B3F57FDDFFFFELL;
  return (off_2A1E5DED0[(59 * v3) ^ v1])();
}

uint64_t sub_2979F57D8@<X0>(int a1@<W8>)
{
  v3 = (v1 | ((v1 < 0x4E54499A) << 32)) + 1111954256;
  STACK[0x1230] = v3;
  LOBYTE(STACK[0x123F]) = v3 < 0x909B5CEA;
  v4 = *(v2 + 8 * ((((v1 | ((v1 < 0x4E54499A) << 32)) != 1314146714) * (((a1 + 1031374524) & 0xFECFF5FC) - 1011449846)) ^ a1));
  LODWORD(STACK[0x10C4]) = a1;
  STACK[0x10C8] = 0x30361E6284ED364DLL;
  STACK[0x10D0] = 0x279A5DA3FDCF75F5;
  STACK[0x10D8] = 0x7CE98D170AD06380;
  return v4();
}

void sub_2979F58A4()
{
  v1 = STACK[0x10D8];
  STACK[0x10E0] = STACK[0x10D8];
  STACK[0x10E8] = STACK[0x10D0];
  STACK[0x10F0] = STACK[0x10C8];
  v2 = STACK[0x10C4];
  LODWORD(STACK[0x10F8]) = STACK[0x10C4];
  LODWORD(STACK[0x10FC]) = v2 - v0 + 764;
  v3 = v1 + STACK[0x1800];
  STACK[0x1100] = v3 - 0x7CE98D170AD06380;
  STACK[0x588] = v3 + 0x237D1D0CE96CD16ELL;
  JUMPOUT(0x2979F590CLL);
}

uint64_t sub_2979F5920()
{
  v3 = (v0 - 492350933) & 0x1D58ADEC;
  LODWORD(STACK[0x1258]) = v1 - 324452859;
  LOBYTE(STACK[0x125F]) = (v1 - 324452859) < 0xF8E42E4B;
  v4 = *(v2 + 8 * (((v1 != 205189190) * (v3 ^ 0x4DB)) ^ v0));
  LODWORD(STACK[0xA94]) = v0 - 73;
  LODWORD(STACK[0xA98]) = 2041345615;
  LODWORD(STACK[0x1188]) = v3;
  LODWORD(STACK[0x118C]) = 2041345615;
  STACK[0x1190] = 0;
  return v4();
}

void sub_2979F59AC()
{
  v1 = LODWORD(STACK[0xA98]);
  LODWORD(STACK[0xA9C]) = v1;
  v2 = STACK[0xA94];
  LODWORD(STACK[0xAA0]) = STACK[0xA94];
  v3 = v2 ^ 0x9Fu;
  LODWORD(STACK[0xAA4]) = v3;
  v4 = v1 - 2041346659 + ((v1 < v0) << 32) + v3;
  STACK[0xAA8] = v4;
  v5 = STACK[0x1580] + v4;
  STACK[0xAB0] = v5;
  STACK[0x588] = v5 - 0x5F9955DC0BC2CB12;
  JUMPOUT(0x2979CB8A4);
}

uint64_t sub_2979F5B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = v72;
  v78 = v72 - 1166307450;
  v79 = v72 + 1;
  v80 = *(a3 + 4 * v78) ^ 0x5160D431 ^ (*(a3 + 4 * v78) >> 30);
  v81 = (*(a3 + 4 * (v79 - 1166307450)) ^ 0x9592F980 ^ (1664525 * v80 - ((3329050 * v80) & 0x89E45B60) - 990761552)) + (*(a70 + 4 * (v71 - 506536003)) ^ 0x6D1E6561);
  v82 = (v81 ^ 0x2BCFFF7F) + v71 + ((2 * v81) & 0x579FFEFE);
  *(a3 + 4 * (v79 - 1166307450)) = v82 - ((2 * v82 + 1811791996) & 0xA2C1A860) + 123712622;
  v83 = v75 ^ (v73 - 66165729);
  *(v76 - 224) = v83 ^ 0x76;
  *(v76 - 220) = v73 - 66165729 + v75;
  *(v76 - 208) = v75 + 1;
  *(v76 - 184) = v83 ^ 0x24;
  *(v76 - 180) = 922745793 - v75 + v73;
  v84 = (v77 - 404669946);
  v85 = *(a2 + 8 * ((v73 - 66165729) ^ 0x3857E4BELL)) ^ v75;
  *(v76 - 200) = v84 ^ v75;
  *(v76 - 192) = v85;
  *(v76 - 216) = v74;
  v86 = (*(a2 + 8 * (v73 ^ (v70 + 1595))))(v76 - 224);
  return (off_2A1E5DED0[*(v76 - 176)])(v86);
}

uint64_t sub_2979F5D2C()
{
  v7 = (v0 + 2147085907) & 0xBC4F90ED;
  LODWORD(xmmword_2A13A3880) = dword_2A13A423C;
  v8 = *(v2 + 8 * ((v7 - 381271757) ^ 0x258FC1A2)) ^ v4;
  *(v6 - 200) = (v3 + 1104246702) ^ v4;
  *(v6 - 192) = v8;
  *(v6 - 208) = v4 + 1;
  *(v6 - 184) = (v7 - 381271794) ^ v4;
  *(v6 - 180) = 922745793 - v4 + v7;
  *(v6 - 224) = (v7 - 381271742) ^ v4;
  *(v6 - 220) = v7 - 381271757 + v4;
  *(v6 - 216) = v5;
  v9 = (*(v2 + 8 * (v7 ^ (v1 + 1595))))(v6 - 224);
  return (off_2A1E5DED0[*(v6 - 176)])(v9);
}

uint64_t sub_2979F5FF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W8>)
{
  v6 = v4;
  v7 = v4 + 1;
  v8 = *(a2 + 4 * (v6 - 1166307450));
  v9 = (*(a2 + 4 * (v7 - 1166307450)) ^ 0x739112EF ^ (1566083941 * (v8 ^ 0x5160D431 ^ (v8 >> 30)) - ((984684234 * (v8 ^ 0x5160D431 ^ (v8 >> 30))) & 0x45E38DBE) + 586270431)) - v6;
  *(a2 + 4 * (v7 - 1166307450)) = v9 - ((2 * v9 - 1962352398) & 0xA2C1A860) - 1763359575;
  v10 = *(a1 + 8 * ((a3 + 329026928) ^ 0x4FE60DE1));
  v11 = 912661583 * ((v5 + 0x8BB4A10E2BE7F7ELL - 2 * ((v5 - 224) & 0x8BB4A10E2BE805ELL)) ^ 0xFD0F178BF6BF4DABLL);
  *(v5 - 208) = 912661583 * ((v5 - 490832002 - 2 * ((v5 - 224) & 0xE2BE805E)) ^ 0xF6BF4DAB) + 1;
  *(v5 - 216) = v11 + 4031535813u;
  *(v5 - 224) = (912661583 * ((v5 - 490832002 - 2 * ((v5 - 224) & 0xE2BE805E)) ^ 0xF6BF4DAB)) ^ (a3 + 329026928) ^ 0xB9;
  *(v5 - 220) = a3 + 329026928 + 912661583 * ((v5 - 490832002 - 2 * ((v5 - 224) & 0xE2BE805E)) ^ 0xF6BF4DAB);
  *(v5 - 184) = (a3 + 329026887) ^ (912661583 * ((v5 - 490832002 - 2 * ((v5 - 224) & 0xE2BE805E)) ^ 0xF6BF4DAB));
  *(v5 - 180) = 922745793 - 912661583 * ((v5 - 490832002 - 2 * ((v5 - 224) & 0xE2BE805E)) ^ 0xF6BF4DAB) + a3;
  *(v5 - 200) = (v6 - 1429738931) ^ v11;
  *(v5 - 192) = v10 ^ v11;
  v12 = (*(a1 + 8 * (a3 ^ (v3 + 1595))))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 176)])(v12);
}

uint64_t sub_2979F6254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int a62, uint64_t a63)
{
  v68 = v67 ^ 0x44FEEB76;
  if (((a62 - v67) | (v67 - a62)) < 0)
  {
    v69 = -782183376;
  }

  else
  {
    v69 = -782183375;
  }

  LODWORD(xmmword_2A13A3880) = 1013836661 - v67 + v68 + v69;
  (*(a2 + 8 * (v67 - 2025284930)))(a67);
  v76 = vld1q_dup_f32(&xmmword_2A13A3880);
  v77 = (v68 - 1258227435) & 0xEB587FF;
  v78.i64[0] = 0x8000000080000000;
  v78.i64[1] = 0x8000000080000000;
  v79.i64[0] = 0x100000001;
  v79.i64[1] = 0x100000001;
  v70.i64[0] = *(&xmmword_2A13A3880 + 4);
  v70.i32[2] = *(&xmmword_2A13A3880 + v77 - 282);
  v71 = vextq_s8(v76, v70, 0xCuLL);
  v72 = v70;
  v72.i32[3] = dword_2A13A3890;
  v73 = veorq_s8(vorrq_s8(vandq_s8(v72, vnegq_f32(v79)), vandq_s8(v71, v78)), vdupq_n_s32(0x5160D430u));
  v74.i32[0] = *(&STACK[0x22F0] + (BYTE4(xmmword_2A13A3880) & 1));
  v74.i32[1] = *(&STACK[0x22F0] + (BYTE8(xmmword_2A13A3880) & 1));
  v74.i32[2] = *(&STACK[0x22F0] + (*(&xmmword_2A13A3880 + v77 - 282) & 1));
  v74.i32[3] = *(&STACK[0x22F0] + (dword_2A13A3890 & 1));
  xmmword_2A13A3880 = veorq_s8(veorq_s8(veorq_s8(xmmword_2A13A3EB4, v74), vdupq_n_s32(0x578AD444u)), vshrq_n_u32(vaddq_s32(vsubq_s32(v73, vandq_s8(vaddq_s32(v73, v73), vdupq_n_s32(0x6B91A000u))), vdupq_n_s32(0xB5C8D001)), 1uLL));
  return (off_2A1E5DED0[v68 - 1011448960])();
}

uint64_t sub_2979F62FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  (*(a2 + 12904))(a57 + 0x52400C30B048C111, 0x100004077774924);
  v61 = (off_2A1E5DED0[v59 + 1011449812])();
  v62 = v61 + ((v60 + 178) ^ 0xD2) - ((2 * v61) & 0xA2C1A860);
  LODWORD(xmmword_2A13A3880) = v62;
  v63 = v62 ^ (v60 + 1) ^ (v62 >> 30);
  v64 = (1812433253 * v63) ^ 0xF36BD6BD;
  v65 = (-670100790 * v63) & 0xE6D7AD7A;
  v66 = (2 * (v64 + v65 + 1469981814) + 1777076636) & 0xA2C1A860;
  DWORD1(xmmword_2A13A3880) = 1576336756 - v66 + v64 + v65;
  return (off_2A1E5DED0[210])(v65, v66, off_2A1E5DED0[210], off_2A1E5DED0, &xmmword_2A13A3880, 3624866506, 1812433253, v67, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_2979F6484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(a63) = v72;
  LODWORD(STACK[0x21C]) = v70;
  v73 = (*(a4 + 8 * (v71 ^ 0x5B6)))(a70 + 4, 0);
  v74 = a70[4] + 1830708577 - (((v71 + 1011448863) ^ 0xE6754ACA) & (2 * a70[4]));
  a70[1] = a70[6] + 1830708577 - ((2 * a70[6]) & 0xDA3CCAC2);
  a70[2] = v74;
  v75 = off_2A1E5DED0[v71 + 558];
  v76 = (v75)(v73);
  a70[3] = v76 + 1830708577 - ((2 * v76) & 0xDA3CCAC2);
  v77 = v75();
  *a70 = v77 + 1830708577 - ((2 * v77) & 0xDA3CCAC2);
  return sub_2979F5B08(v77, off_2A1E5DED0, &xmmword_2A13A3880, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_2979F6644()
{
  v2 = (*(v0 + 8 * (v1 + 1200)))(STACK[0x1558]);
  v3 = ((v1 - 1716346224) & 0x664D5F3D ^ 0xDF77BEB9DF77F450 ^ v2) - (off_2A1E5DED0[v1 ^ 0x769])() + ((2 * v2) & 0xBEEF7D73BEEFEEFALL) + 0x7E8F33C515733EACLL == ((v1 + 536584702) & 0xE0045FE7 ^ 0x5E06F27EF4EB356CLL);
  return (off_2A1E5DED0[(61 * v3) ^ v1])();
}

uint64_t sub_2979F6734()
{
  v6 = v4 - 1064;
  v7 = (*(v0 + 8 * (v6 - 1011448287)))(LODWORD(STACK[0x284]));
  return (*(v5 + 8 * ((61 * (((*(v1 + 2144) == v2 + 466) ^ ((v6 ^ 0xCB) - v3 + 62)) & 1)) ^ v6 ^ 0x3C49839D)))(v7);
}

uint64_t sub_2979F6878@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>, int8x16_t a5@<Q1>, int8x16_t a6@<Q2>, int8x16_t a7@<Q3>, int8x16_t a8@<Q4>, int32x4_t a9@<Q5>, int8x16_t a10@<Q6>, int8x16_t a11@<Q7>)
{
  v11 = a2 + 4 * v19;
  a11.i64[0] = *(v11 + 4);
  a11.i32[2] = *(a2 + 4 * (a3 + v19) - 1128);
  v12 = vextq_s8(a4, a11, 0xCuLL);
  v13 = a11;
  v13.i32[3] = *(a2 + 4 * (v19 + 4));
  v14 = veorq_s8(vorrq_s8(vandq_s8(v13, a6), vandq_s8(v12, a5)), a7);
  v15.i32[0] = *(v18 + 4 * (*(v11 + 4) & 1));
  v15.i32[1] = *(v18 + 4 * (*(v11 + 8) & 1));
  v15.i32[2] = *(v18 + 4 * (*(a2 + 4 * (a3 + v19) - 1128) & 1));
  v15.i32[3] = *(v18 + 4 * (v13.i8[12] & 1));
  *v11 = veorq_s8(veorq_s8(veorq_s8(*(v11 + 1588), v15), a10), vshrq_n_u32(vaddq_s32(vsubq_s32(v14, vandq_s8(vaddq_s32(v14, v14), a8)), a9), 1uLL));
  return (*(a1 + 8 * (((8 * (v19 == 220)) | (16 * (v19 == 220))) ^ v17)))();
}

uint64_t sub_2979F6880@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W8>)
{
  v8 = v3 & 0x80000000;
  v9 = *(a2 + 4 * (((a3 + 1564468514) & 0x22C01BFA ^ v7) + v4));
  *(a2 + 4 * (v7 + v4) + 2132) = *(a2 + 4 * (v7 + v4) + 3720) ^ *(&STACK[0x22F0] + (v9 & 1)) ^ ((((v9 & 0x7FFFFFFE | v8) ^ v6) - ((2 * ((v9 & 0x7FFFFFFE | v8) ^ v6)) & 0x6B91A000) - 1245130751) >> 1) ^ 0x578AD444;
  return (*(a1 + 8 * ((51 * (v4 + 1 != v5 + 3)) ^ a3)))();
}

uint64_t sub_2979F692C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v12 ^ 0x12;
  v14 = (a11 + 908);
  v15 = vld1q_dup_f32(v14);
  v16 = 4 * v13 - 1288;
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  a8.i64[0] = *(a11 + 912);
  a8.i32[2] = *(a11 + v16);
  v19 = vextq_s8(v15, a8, 0xCuLL);
  v20 = a8;
  v20.i32[3] = *(a11 + 924);
  v21 = veorq_s8(vorrq_s8(vandq_s8(v20, vnegq_f32(v18)), vandq_s8(v19, v17)), vdupq_n_s32(0x5160D430u));
  v22.i32[0] = *(v11 + 4 * (*(a11 + 912) & 1));
  v22.i32[1] = *(v11 + 4 * (*(a11 + 916) & 1));
  v22.i32[2] = *(v11 + 4 * (*(a11 + v16) & 1));
  v22.i32[3] = *(v11 + 4 * (v20.i8[12] & 1));
  *(a11 + 908) = veorq_s8(veorq_s8(veorq_s8(*a11, v22), vdupq_n_s32(0x3A9D54FAu)), vshrq_n_u32(vaddq_s32(vsubq_s32(v21, vandq_s8(vaddq_s32(v21, v21), vdupq_n_s32(0xDFCFA2F8))), vdupq_n_s32(0x6FE7D17Cu)), 1uLL));
  return (*(a10 + 8 * (v13 | 0x12)))();
}

uint64_t sub_2979F6A44@<X0>(int a1@<W0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, int a5@<W8>)
{
  v5 = (a5 + 47) ^ (a1 + 599) ^ a4 ^ (*a3 & 0x7FFFFFFE | a3[623] & 0x80000000);
  a3[623] = a3[396] ^ *(&STACK[0x22F0] + (*a3 & 1)) ^ ((v5 - ((((a5 - 8792153) & 0x3CCFA638) + 1093394516) & (2 * v5)) - 1095061457) >> 1) ^ 0x5233E453;
  return (*(a2 + 8 * ((13 * (LODWORD(STACK[0x21C]) > 0x26F)) ^ (a5 + 47))))();
}

uint64_t sub_2979F6AF0(int a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x21C]) = 0;
  v7 = LODWORD(STACK[0x21C]);
  LODWORD(STACK[0x21C]) = v7 + 1;
  v8 = *(a3 + 4 * v7);
  *(v4 + 2140) = v7 + 1306450981;
  v9 = (*(v5 + 2136) - 516293303);
  v10 = 912661583 * ((-2 - ((~(v6 - 224) | 0xD10AF477D6DAB2E5) + ((v6 - 224) | 0x2EF50B8829254D1ALL))) ^ 0x24BEA9ECC2DB7F10);
  v11 = *(a2 + 8 * ((v3 - 1997338133) ^ 0x1FFFFFFFC53C8995)) ^ v10;
  *(v6 - 200) = v10 ^ 0x59F168C7;
  *(v6 - 192) = v11;
  *(v6 - 216) = v9 + v10;
  v12 = (v3 - 1997338133) ^ v10;
  *(v6 - 208) = v10 + v3 - 1997338133 - 58;
  *(v6 - 184) = v12 ^ 0x19;
  *(v6 - 180) = 922745793 - v10 + v3;
  *(v6 - 224) = v12;
  *(v6 - 220) = v10;
  v13 = (*(a2 + 8 * (v3 ^ (a1 + 1595))))(v6 - 224);
  return (off_2A1E5DED0[*(v6 - 176)])(v13);
}

uint64_t sub_2979F6C2C()
{
  if (v0 >= v1)
  {
    v3 = *(v2 + 2136) + 1;
  }

  else
  {
    v3 = 2025286526;
  }

  *(v2 + 2136) = v3;
  return sub_2979F6D3C(3982445107, 3283519043);
}

uint64_t sub_2979F6D3C@<X0>(int a1@<W0>, uint64_t a2@<X2>, int a3@<W8>)
{
  v7 = (a3 - 73) | 0x30;
  *(v5 + (v6 - 575096412)) = ((((v7 + a1) ^ v3) >> (v4 - 6)) - ((2 * (((v7 + a1) ^ v3) >> (v4 - 6))) & 0x26) + 19) ^ 0x7E;
  return (*(a2 + 8 * ((436 * (v6 - (((((v7 + a1) ^ v3) >> (v4 - 6)) - ((2 * (((v7 + a1) ^ v3) >> (v4 - 6))) & 0x26) + 19) != 126) == 575096411)) | a3)))();
}

uint64_t sub_2979F6DF8(uint64_t a1, int a2, uint64_t a3)
{
  STACK[0x22F0] = 0x94660C9B0D6EBC44;
  LODWORD(STACK[0x21C]) = *(v5 + 2140) - 1306450980;
  v8 = *(v6 + 2136);
  STACK[0x538] = *(a3 + 8 * (v3 - 1011449776));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v8;
  STACK[0x550] = v4;
  LODWORD(STACK[0x558]) = (v3 + 1082852815) ^ 0x11;
  LODWORD(STACK[0x55C]) = v3 + 1082852799;
  LODWORD(STACK[0x560]) = v3 + 1082852815;
  *(v7 - 216) = &STACK[0x538];
  *(v7 - 208) = 1508565502 - 490657303 * ((2 * (((v7 - 224) ^ 0xE9E6FB64) & 0x6D727960) - ((v7 - 224) ^ 0xE9E6FB64) - 1836218722) ^ 0x969D7337) + v3;
  v9 = (*(a3 + 8 * (a2 + v3 - 49)))(v7 - 224);
  return (off_2A1E5DED0[*(v7 - 224)])(v9);
}

uint64_t sub_2979F6FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t (*a51)(uint64_t), uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x300] = v67;
  STACK[0x320] = a67;
  return a51(a53);
}

uint64_t sub_2979F70A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, unint64_t a48)
{
  v49 = (a1 - 565) | 0x18C;
  LODWORD(STACK[0x18E8]) = STACK[0x274];
  STACK[0x18E0] = a48;
  (*(v48 + 8 * (v49 ^ 0x7A9)))(STACK[0x1250]);
  v50 = (off_2A1E5DED0[v49 + 1175])(STACK[0x1490]);
  return (off_2A1E5DED0[((v49 - 281) | 0x20) ^ 0xC4 ^ v49])(v50);
}

uint64_t sub_2979F713C()
{
  v2 = MEMORY[0x29EDBB110];
  LODWORD(STACK[0x18D8]) = 144770237;
  v3 = (*(v1 + 8 * (v0 ^ 0x6C5)))(*v2, "IODeviceTree:/product");
  return (*(v1 + 8 * ((((((v0 ^ 0x186) - 729809216) & (2 * v3)) + (v3 ^ 0x6A3FFFF1) != 1782579185) * (v0 + 252)) ^ v0)))();
}

uint64_t sub_2979F71D0@<X0>(int a1@<W8>)
{
  v3 = *MEMORY[0x29EDB8ED8];
  LODWORD(STACK[0x165C]) = a1 - 1782579185;
  v4 = (*(v2 + 8 * (v1 ^ 0x74A)))();
  STACK[0x1660] = v4;
  return (off_2A1E5DED0[((((v1 - 1) ^ (v4 == 0)) & 1) * (((v1 - 278) | 0x392) ^ 0x38D)) ^ v1])();
}

uint64_t sub_2979F7254()
{
  STACK[0x438] = STACK[0x1280];
  v2 = (LODWORD(STACK[0x1288]) * ((v1 - 115) ^ 0x1B)) & 0x20;
  STACK[0x1298] = ((4 * v1) ^ 0xA28u) + v2 + 0x2B63E36587BDB553 + ((2 * v2) ^ 0x40);
  v3 = (*(v0 + 8 * (v1 + 625)))(STACK[0x1660]);
  v4 = (v3 ^ 0x76DCF7CDFCEBBFFELL) - (off_2A1E5DED0[v1 ^ 0x5CD])() + ((2 * v3) & 0xEDB9EF9BF9D77FFCLL) != 0x76DCF7CDFCEBBFFELL;
  return (off_2A1E5DED0[v4 ^ v1])();
}

uint64_t sub_2979F7324()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x724)))(STACK[0x1660]);
  v3 = ((v1 + 808) | 0x104u) + (v2 ^ 0xFFFFFD7ED67BBDDFLL) - (off_2A1E5DED0[v1 + 1291])() + ((v2 << ((v1 + 49) ^ 0x5Du)) & 0xFFFFFAFDACF77BBELL) != 0xFFFFFD7ED67BC336;
  return (off_2A1E5DED0[(114 * v3) ^ v1])();
}

uint64_t sub_2979F73D4()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x34B)))(STACK[0x1660]);
  v3 = v2 - ((2 * v2) & 0x2C12FCFE) + 369720959;
  LODWORD(STACK[0x13AC]) = v3 ^ 0xD469EDA;
  LODWORD(STACK[0x23C]) = v3 ^ 0xD469EDA;
  v4 = (off_2A1E5DED0[v1 ^ 0x31A])(((v1 - 1187) | 0x301) ^ 0x16097DCA ^ v3, 0x100004077774924);
  STACK[0x13B0] = v4;
  return (off_2A1E5DED0[(211 * (v4 == 0)) ^ v1])();
}

uint64_t sub_2979F7494()
{
  v4 = (v1 - 1634291803) & 0x61694BF7;
  v5 = (STACK[0x1298] + STACK[0x1278] - 0x2B63E36587BDB9C3);
  *v5 = 0;
  v5[1] = (v3 ^ (v2 + 193) ^ v4 ^ 0x7E1F4DD7F7DABEECLL) + ((2 * (v3 ^ (v2 + 193) ^ v4)) & 0x1EFB57DD8) - 0x7E1F4DD7F7DABEECLL;
  v6 = STACK[0x13B0];
  (*(v0 + 8 * ((v1 - 183) ^ 0x28C)))(STACK[0x1660], 0);
  v7 = (off_2A1E5DED0[v1 + 234])(v3 ^ (v2 + 193) ^ v4, 50, 4057136937);
  STACK[0x1320] = v7;
  return (off_2A1E5DED0[((v7 != 0) * (v1 - 1355)) ^ (v1 - 183)])();
}

uint64_t sub_2979F75AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v6 ^ 0x5969F7FDE9F9ECEFLL) + (v5 & 0x1D3F3D9DELL) - 0x5969F7FDC4593235;
  LOBYTE(STACK[0x16DF]) = v7 < (v4 - 242) + 631290552;
  STACK[0x16D0] = v7;
  v8 = *(a4 + 8 * ((414 * (v7 != 631290554)) ^ v4));
  LODWORD(STACK[0xF9C]) = v4;
  STACK[0xFA0] = 0x5F82A450722FCFB4;
  STACK[0xFA8] = 0x176EF2B13CBA7C0BLL;
  STACK[0xFB0] = 0x1BB7FB64911A6031;
  return v8();
}

void sub_2979F7678()
{
  v0 = STACK[0xFB0];
  STACK[0xFB8] = STACK[0xFB0];
  v1 = STACK[0xFA8];
  STACK[0xFC0] = STACK[0xFA8];
  STACK[0xFC8] = STACK[0xFA0];
  v2 = STACK[0xF9C];
  LODWORD(STACK[0xFD4]) = STACK[0xF9C];
  LOBYTE(v0) = *(v0 + STACK[0x13B0] - 0x1BB7FB64911A6031);
  v3 = v1 + STACK[0x1320] - 0x176EF2B13CBA7C0BLL;
  v4 = 233206231 * (((v2 - 242) ^ 0x7FFFFFFD) & (*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v3));
  v5 = 233206231 * (v4 ^ HIWORD(v4));
  v6 = byte_297A20DA0[v5 >> 24];
  LODWORD(STACK[0xFD8]) = v2 - 242;
  LOBYTE(STACK[0x5D2]) = v6 ^ v0 ^ byte_297A242D0[(v5 >> 24) + 4] ^ byte_297A1DA20[(v5 >> 24) + 1] ^ v5 ^ (103 * BYTE3(v5));
  STACK[0x5C8] = v3;
  JUMPOUT(0x2979EE85CLL);
}

uint64_t sub_2979F7780()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x219)))(STACK[0x1660]);
  v3 = v2 + 0xFFAF6EA05183A5ALL - ((((v1 - 1786800273) & 0x6A8067F5) + 0x1FF5EDD40A307173) & (2 * v2)) + 58;
  STACK[0x1848] = v3;
  v4 = (off_2A1E5DED0[v1 ^ 0x21D])((((v1 - 904) | 6u) ^ 0xFFAF6EA05183A5ALL ^ v3) + 1, 0x100004077774924);
  STACK[0x1850] = v4;
  STACK[0x268] = v4;
  return (off_2A1E5DED0[(149 * (v4 == 0)) ^ v1])();
}

uint64_t sub_2979F7868()
{
  v3 = (*(v0 + 8 * (v1 ^ 0x6C0)))();
  v4 = (off_2A1E5DED0[v1 + 1309])(STACK[0x1660], STACK[0x1850], v2 + 1, v3) == (~(v1 - 1951371471) & 0xCD);
  return (off_2A1E5DED0[(v4 * ((v1 ^ 0x3C4980C6) - 1011449847)) ^ v1])();
}

uint64_t sub_2979F790C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5 / 2 - (((v5 / 2) << ((((v4 & 0xCD) + 32) & 0x1Au) - 7)) & 0xADD66536) - 689229157;
  LODWORD(STACK[0x23C]) = v6 ^ 0xCDA4D23E;
  v7 = (*(a4 + 8 * ((v4 & 0x744F92CD) + 884)))(v6 ^ 0xD6EB329B, 50, 1703429062);
  STACK[0x1738] = v7;
  return (*(&off_2A1E5DED0[16 * ((v4 & 0xCD ^ (v7 == 0)) & 1u)] + (v4 & 0x744F92CD)))();
}

void sub_2979F7A50()
{
  v3 = (v1 + ((v0 - 544560868) & 0x207553BD) + 396) ^ v2;
  if (v3 <= 1)
  {
    v3 = 1;
  }

  LODWORD(STACK[0x140C]) = v3 + 1091788908;
  JUMPOUT(0x2979F7A90);
}

uint64_t sub_2979F7D3C@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X3>, int a4@<W8>)
{
  v6 = v5 ^ (a1 + 975);
  v8 = a4 + 1518751813 < 0 && v4 - 1070564015 <= v6 - 992;
  v9 = *(a3 + 8 * ((a2 + v5 - 296) ^ (v8 << 6)));
  LODWORD(STACK[0xF10]) = v6;
  return v9();
}

uint64_t sub_2979F7E30@<X0>(int a1@<W1>, uint64_t a2@<X3>, char a3@<W8>)
{
  v9 = STACK[0xF10];
  LODWORD(STACK[0xF14]) = STACK[0xF10];
  LODWORD(STACK[0xF18]) = a1 + v9 - 991;
  LODWORD(STACK[0xF1C]) = (a1 + v9 - 1887870700) & 0x343D1BBD;
  v10 = (16 * a3 - 40) ^ (a1 + v9 + 20) & 0xBD ^ 0x31 | (v6 + 41);
  v11 = STACK[0x1738] + (LODWORD(STACK[0x182C]) - 1091788909);
  v12 = 233206231 * ((v11 ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158))) & 0x7FFFFFFF);
  v13 = 233206231 * (v12 ^ HIWORD(v12));
  LOBYTE(STACK[0x5D2]) = byte_297A20DA0[v13 >> 24] ^ byte_297A242D0[(v13 >> 24) + 4] ^ byte_297A1DA20[(v13 >> 24) + 1] ^ v13 ^ (v10 - ((2 * v10) & 0xD4) - 22) ^ (103 * BYTE3(v13)) ^ 0xEA;
  STACK[0x5C8] = v11;
  STACK[0x5C0] = *(a2 + 8 * (v9 + 501));
  v3 = STACK[0x5C8];
  LOBYTE(STACK[0x5D3]) = STACK[0x5D2];
  v4 = (*(qword_2A13A4DD8 + 32 * *(((v3 - *(v8 + 3520)) & 0xFFFFFFFFFFFFFFF0) + *(v7 + 3512) + 8) + 16))();
  return (STACK[0x5C0])(v4);
}

void sub_2979F7F64(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 ^ (a2 + 1583))))(STACK[0x1738]);
  v7 = STACK[0x1738];
  LODWORD(STACK[0x254]) = -45002;
  v5 = LOWORD(STACK[0x1848]) ^ (v4 - 1011453872);
  v6 = STACK[0x1850];
  JUMPOUT(0x2979F7FC8);
}

uint64_t sub_2979F812C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53)
{
  v55 = (v54 - 1647993191) & 0x623A63BF;
  LODWORD(STACK[0x1900]) = STACK[0x23C];
  STACK[0x18F8] = a53;
  STACK[0x438] = STACK[0x1270];
  (*(v53 + 8 * (v55 ^ 0x581)))(STACK[0x1660]);
  v56 = (off_2A1E5DED0[v55 + 628])(LODWORD(STACK[0x165C]));
  return (off_2A1E5DED0[((v55 == 0x3B5) * (v55 ^ 0x477)) ^ v55])(v56);
}

uint64_t sub_2979F81F4()
{
  LODWORD(STACK[0x18F0]) = 144770236;
  v2 = *(v1 + 8 * (v0 ^ 0x5F8));
  STACK[0x15C0] = v2(1024, 0x100004077774924);
  STACK[0x15C8] = v2(1025, 0x100004077774924);
  STACK[0x15D0] = (off_2A1E5DED0[v0 ^ 0x5F4])(1024, 50, 2752786028);
  v3 = (off_2A1E5DED0[(v0 ^ 0x26B) + 1123])(1025, 50, 3442469929);
  STACK[0x15D8] = v3;
  if (STACK[0x15C0])
  {
    v4 = STACK[0x15C8] == 0;
  }

  else
  {
    v4 = 1;
  }

  v7 = v4 || STACK[0x15D0] == 0 || v3 == 0;
  return (*(v1 + 8 * (v7 ^ v0 ^ 0x26B)))();
}

uint64_t sub_2979F8344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v60 = a5 ^ 0x7C5DEABF;
  v61 = ((&STACK[0x3D4] ^ 0x3FF7F7C2FE5B6FFFLL) - 0x3FF7F7C2FE5B6FFFLL + ((2 * &STACK[0x3D4]) & 0x7FEFEF85FCB6DFF8)) % 0x25;
  v65 = (v61 << (v60 + 38)) & 0x1C;
  v64 = (v61 ^ 0xFB5F2FEFEBFF33CELL) + 0x4A0D0101400CC42;
  v62 = STACK[0x4B8];
  v67 = STACK[0x3D8];
  v66 = STACK[0x1278];
  return (*(v59 + 8 * (((2 * (v60 ^ 0x3D9) == 516) * ((v60 ^ 0x3D9) + 1499)) ^ v60)))(a1, 1953928255, 798583966, 761705750, 761706774, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, v64, a53, v65, a55, a56, a57, a58, a59);
}

uint64_t sub_2979F8540(int a1)
{
  STACK[0x19F0] = 0x43C6B0E6DACE0039;
  LODWORD(STACK[0x3D4]) = *(v3 + 2140) - 1306450980;
  v6 = dword_2A13A3858;
  STACK[0x538] = *(v4 + 8 * ((v1 - 1212409438) ^ 0x1FFFFFFFF40599F2));
  LODWORD(STACK[0x540]) = 0;
  STACK[0x548] = v6;
  STACK[0x550] = v2;
  LODWORD(STACK[0x558]) = (v1 - 1212409438) ^ 0x75;
  LODWORD(STACK[0x55C]) = v1 - 1212409432;
  LODWORD(STACK[0x560]) = v1 - 1212409438;
  *(v5 - 208) = 1508565502 - 490657303 * ((v5 - 1544333496 - 2 * ((v5 - 224) & 0xA3F35828)) ^ 0x4E0556E5) + v1;
  *(v5 - 216) = &STACK[0x538];
  v7 = (*(v4 + 8 * (a1 + v1 - 49)))(v5 - 224);
  return (off_2A1E5DED0[*(v5 - 224)])(v7);
}

uint64_t sub_2979F8658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = v64 + v63;
  (*(a6 + 8 * (v65 + 2)))(a55 + a57, 0x100004077774924);
  v66 = (off_2A1E5DED0[v65 - 52])();
  LODWORD(xmmword_2A13A3880) = v66 + 1365300272 - ((2 * v66) & 0xA2C1A860);
  v67 = xmmword_2A13A3880 ^ 0x5160D431 ^ (xmmword_2A13A3880 >> 30);
  v68 = (1812433253 * v67) ^ 0xFD9FBEBB;
  v69 = (-670100790 * v67) & 0xFB3F7D76;
  v70 = 2 * ((v68 + v69 - 2107621050) & 0x5160D43C ^ (((101 * v67) ^ 0xBB) + ((-54 * v67) & 0x76) + 6) & 0xC);
  DWORD1(xmmword_2A13A3880) = v68 + v69 - v70 + 1405162870;
  return (off_2A1E5DED0[563])(v69, v70, off_2A1E5DED0[563], 1365300284, off_2A1E5DED0, &xmmword_2A13A3880, 3624866506, 1812433253, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, v62, a60, a61, a62);
}

uint64_t sub_2979F8928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x3D4]) = v67;
  v70 = (*(a5 + 8 * (v68 ^ (v69 + 56))))(a67 + 4, 0);
  v71 = a67[4] + 1977834910 - ((2 * a67[4]) & 0xEBC6BB3C);
  a67[1] = a67[6] + 1977834910 - ((a67[6] << ((v68 - 4) ^ 9)) & 0xEBC6BB3C);
  a67[2] = v71;
  v72 = off_2A1E5DED0[v68 ^ v69];
  v73 = (v72)(v70);
  a67[3] = v73 + 1977834910 - ((2 * v73) & 0xEBC6BB3C);
  v74 = v72();
  *a67 = v74 + 1977834910 - ((2 * v74) & 0xEBC6BB3C);
  return sub_2979F4B6C(v74, off_2A1E5DED0, &xmmword_2A13A3880);
}

uint64_t sub_2979F8ACC@<X0>(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  STACK[0x4B8] = a1;
  STACK[0x3D8] = a63;
  STACK[0x13F8] = STACK[0x15C8] + 1;
  return (*(v64 + 8 * (((dword_2A13A3860 == v63 + 854147086) * (5 * (v63 ^ 0x38F) - 121)) ^ v63)))();
}

uint64_t sub_2979F8BB0()
{
  strcpy(&STACK[0x1A09], "com_apple_driver_FairPlayIOKit");
  v2 = (*(v1 + 8 * (v0 + 64)))(&STACK[0x1A09]) == 0;
  return (*(v1 + 8 * ((v2 * (((v0 - 1001) | 0x210) + ((v0 - 558790516) & 0x214E73D7) - 1366)) | v0)))();
}

void sub_2979F8DD4()
{
  v5 = v3 ^ (v0 + 504);
  *(v2 + 2144) = (v5 ^ LODWORD(STACK[0x444]) ^ 0x8FB4CBF7) + ((2 * LODWORD(STACK[0x444])) & 0x67FA97FE) + 2129393591;
  (*(v1 + 8 * (v5 - 1011448287)))(v4);
  JUMPOUT(0x2979F6738);
}

void sub_2979F941C(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 1599)))();
  STACK[0x18F8] = 0;
  LODWORD(STACK[0x1900]) = 458219685;
  JUMPOUT(0x2979F9464);
}

void sub_2979F9488(int a1@<W8>)
{
  (*(v1 + 8 * (((a1 - 1479) | 0x119) ^ 0x7A2)))();
  STACK[0x18E0] = 0;
  LODWORD(STACK[0x18E8]) = 458219685;
  JUMPOUT(0x2979F94E0);
}

void sub_2979F9524(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 774)))();
  STACK[0x18C8] = 0;
  *STACK[0x1310] = 458219685;
  JUMPOUT(0x2979F9568);
}

void sub_2979F95AC(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 658)))();
  STACK[0x18B0] = 0;
  LODWORD(STACK[0x18B8]) = 458219685;
  JUMPOUT(0x2979F95E0);
}

uint64_t sub_2979F9658()
{
  v2 = *(v1 - 168);
  v3 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t sub_2979F96AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x224]) = v4 ^ 0x2C7CAF25;
  v5 = (*(a3 + 8 * (v3 ^ 0x309)))((((v3 + 1780537910) & 0x95DF21BB) + 4294966981) & v4 ^ 0x37334F80, 50, 2813373418);
  STACK[0x12B8] = v5;
  return (off_2A1E5DED0[v3 | (2 * (v5 == 0))])();
}

uint64_t sub_2979F973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 - 1122);
  v5 = STACK[0x1458] + 0x46208200E6048EE3 + v4;
  STACK[0x1510] = v5;
  LOBYTE(STACK[0x151F]) = v5 < 0x8DEECF84;
  v6 = *(a3 + 8 * ((437 * (v5 == 2381238148)) ^ (v3 - 661)));
  LODWORD(STACK[0xAC0]) = v4;
  LODWORD(STACK[0xC74]) = v3 - 661;
  STACK[0xC78] = 0x5381B70AE734BCELL;
  STACK[0xC80] = 0x184220A16D4081B6;
  STACK[0xC88] = 0x19F51AAFE451B1D8;
  return v6();
}

void sub_2979F97E4()
{
  v0 = STACK[0xC88];
  STACK[0xC90] = STACK[0xC88];
  v1 = STACK[0xC80];
  STACK[0xC98] = STACK[0xC80];
  STACK[0xCA0] = STACK[0xC78];
  v2 = STACK[0xC74];
  LODWORD(STACK[0xCAC]) = STACK[0xC74];
  v3 = (v2 - 461);
  LOBYTE(v0) = *(STACK[0x1460] + (v3 ^ 0xE60AE5501BAE4ECELL) + v0);
  LODWORD(STACK[0xCB0]) = v3;
  v4 = v1 + STACK[0x12B8] - 0x184220A16D4081B6;
  LODWORD(v3) = 233206231 * ((*(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0xB0F28158)) ^ v4) & 0x7FFFFFFF);
  v5 = 233206231 * (v3 ^ WORD1(v3));
  LOBYTE(STACK[0x5D2]) = byte_297A20DA0[v5 >> 24] ^ v0 ^ byte_297A242D0[(v5 >> 24) + 4] ^ byte_297A1DA20[(v5 >> 24) + 1] ^ v5 ^ (103 * BYTE3(v5));
  STACK[0x5C8] = v4;
  JUMPOUT(0x2979CD984);
}

uint64_t sub_2979F9978()
{
  v2 = STACK[0x438];
  STACK[0x12C0] = STACK[0x438];
  STACK[0x12C8] = &STACK[0x1A70] + v2;
  STACK[0x438] = v2 + 64;
  STACK[0x12D0] = (((32 * (&STACK[0x1A70] + v2) + 16 * ~(&STACK[0x1A70] + v2)) & 0x20) * ((619 * (v1 ^ 0x3EA)) ^ 0x4D5u)) ^ ((v1 ^ 0x2B7u) - 0x20427304E0002622);
  v3 = (*(v0 + 8 * (v1 ^ 0x5E7)))(STACK[0x1558]);
  v4 = (v3 ^ 0xE7ABDDFDAFEB6CFELL) - (off_2A1E5DED0[v1 ^ 0x5BB])() + ((2 * v3) & 0xCF57BBFB5FD6D9FCLL) == 0xE7ABDDFDAFEB6CFELL;
  return (off_2A1E5DED0[(29 * v4) ^ v1])();
}

uint64_t sub_2979F9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (*(v63 + 8 * (v64 + 371)))(STACK[0x1558]);
  v66 = ((2 * v65) & 0x73BEFBFF4FD47F76) + (v65 ^ 0xB9DF7DFFA7EA3FBBLL);
  STACK[0x1458] = v66;
  v67 = (off_2A1E5DED0[v64 ^ 0x29B])((v66 - ((2 * v66 + 0xC410400B02B808CLL) & ((v64 - 1008) ^ 0x7D4654146E669FE6)) - 0x7B3C53F570B6F03ALL) ^ ((v64 - 39) + 0x3EA32A0A37334AD1), 0x100004077774924);
  STACK[0x1460] = v67;
  return (off_2A1E5DED0[v64 | (8 * (v67 == 0))])(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_2979F9B80()
{
  v4 = (*(v0 + 8 * (v2 ^ 0x6E8)))();
  v5 = (off_2A1E5DED0[v2 ^ 0x50D])(STACK[0x1558], STACK[0x1460], v1 ^ v3, v4);
  v6 = (((((((2 * v2) ^ 0x84) - 74) & 0x3A) + 52) & (2 * v5)) + (v5 ^ 0x37)) != 55;
  return (off_2A1E5DED0[v6 | (8 * v6) | v2])();
}

uint64_t sub_2979F9DD4()
{
  v2 = (v1 + 1956277803) & 0x8B658FF5;
  v3 = *(v0 + 8 * (v1 ^ 0x29B));
  v3(STACK[0x1558]);
  v3(STACK[0x1388]);
  return (off_2A1E5DED0[(((((v2 - 678) ^ (STACK[0x1940] == 0)) & 1) == 0) * (v2 ^ 0x2D6)) | v2])();
}

void sub_2979F9E6C(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 792)))();
  STACK[0x1958] = 0;
  LODWORD(STACK[0x1960]) = 458219685;
  JUMPOUT(0x2979F9E98);
}

void sub_2979F9EE0(int a1@<W8>)
{
  (*(v1 + 8 * ((a1 | 0x180) ^ 0x795)))();
  STACK[0x1940] = 0;
  LODWORD(STACK[0x1948]) = 458219685;
  JUMPOUT(0x2979F9F2CLL);
}

uint64_t sub_2979F9F88@<X0>(int a1@<W8>)
{
  v2 = (a1 + 245) | 0x90;
  (*(v1 + 8 * (a1 + 1009)))();
  STACK[0x1910] = 0;
  LODWORD(STACK[0x1918]) = 458219685;
  return (off_2A1E5DED0[(((((v2 - 946) | 0x188) ^ 0xC3B68663) + ((v2 + 738753581) | 0x10410008)) * (STACK[0x1928] != 0)) ^ v2])();
}

void sub_2979FA020(int a1@<W8>)
{
  (*(v1 + 8 * (a1 ^ 0x796)))();
  STACK[0x1928] = 0;
  LODWORD(STACK[0x1930]) = 458219685;
  JUMPOUT(0x2979F93E0);
}

uint64_t sub_2979FA1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t (*a51)(uint64_t), uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x228] = v70;
  STACK[0x338] = a70;
  return a51(a53);
}

uint64_t sub_2979FA1E4(uint64_t a1, uint64_t a2)
{
  v4 = v3 + v2 - 1378;
  v6 = (*(a2 + 8 * (v2 ^ (v2 + 1580))))();
  return (*(a2 + 8 * (((LODWORD(STACK[0x2F4]) == 0) * (((v4 + 63) | 0x82) + 641)) ^ v4)))(v6);
}

uint64_t sub_2979FA294()
{
  v3 = 3 * (v1 ^ 0x67);
  LODWORD(STACK[0x1948]) = STACK[0x3A0];
  STACK[0x1940] = v2;
  STACK[0x438] = STACK[0x14F8];
  v4 = *(v0 + 8 * (v3 ^ 0x79E));
  v4(STACK[0x17D8]);
  v5 = (v4)(STACK[0x1818]);
  return (off_2A1E5DED0[(((v3 - 1420640876) & 0x54AD43DF) - 700) ^ v3])(v5);
}

uint64_t sub_2979FA32C()
{
  LODWORD(STACK[0x1938]) = 144770232;
  v2 = off_2A13A3848[0];
  LOBYTE(STACK[0x187A]) = *off_2A13A3848[0] ^ 0xA1;
  LOBYTE(STACK[0x187B]) = v2[1] ^ 0xA1;
  LOBYTE(STACK[0x187C]) = v2[2] ^ 0xA1;
  LOBYTE(STACK[0x187D]) = v2[3] ^ 0xA1;
  LOBYTE(STACK[0x187E]) = v2[4] ^ (((53 * (v0 ^ 0x11) + 53) | 0x80) - 47);
  LOBYTE(STACK[0x187F]) = v2[5] ^ 0xA1;
  LOBYTE(STACK[0x1880]) = v2[6] ^ 0xA1;
  LOBYTE(STACK[0x1881]) = v2[7] ^ 0xA1;
  LOBYTE(STACK[0x1882]) = v2[8] ^ 0xA1;
  LOBYTE(STACK[0x1883]) = v2[9] ^ 0xA1;
  LOBYTE(STACK[0x1884]) = v2[10] ^ 0xA1;
  LOBYTE(STACK[0x1885]) = v2[11] ^ 0xA1;
  LOBYTE(STACK[0x1886]) = v2[12] ^ 0xA1;
  LOBYTE(STACK[0x1887]) = v2[13] ^ 0xA1;
  LOBYTE(STACK[0x1888]) = v2[14] ^ 0xA1;
  LOBYTE(STACK[0x1889]) = v2[15] ^ 0xA1;
  LOBYTE(STACK[0x188A]) = v2[16] ^ 0xA1;
  LOBYTE(STACK[0x188B]) = v2[17] ^ 0xA1;
  LOBYTE(STACK[0x188C]) = v2[18] ^ 0xA1;
  LOBYTE(STACK[0x188D]) = v2[19] ^ 0xA1;
  v3 = off_2A13A3848[0];
  LOBYTE(STACK[0x188E]) = off_2A13A3848[0][20] ^ 0xA1;
  LOBYTE(STACK[0x188F]) = v3[21] ^ 0xA1;
  LOBYTE(STACK[0x1890]) = v3[22] ^ 0xA1;
  v4 = (*(v1 + 8 * (v0 + 752)))();
  v5 = (off_2A1E5DED0[v0 + 759])(0, &STACK[0x187A], v4);
  STACK[0x1388] = v5;
  return (*(v1 + 8 * ((57 * (v5 == 0)) ^ v0)))();
}

uint64_t sub_2979FA4E8()
{
  v2 = (*(v1 + 8 * (v0 + 802)))(STACK[0x1388], 0);
  STACK[0x1558] = v2;
  return (off_2A1E5DED0[((v2 != 0) * ((((v0 - 27293969) & 0x3DE9F5FD) - 1011448864) ^ 0x3D1)) ^ v0])();
}

uint64_t sub_2979FA578()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x3C498649)))(9, 50, 2160335611);
  STACK[0x14C8] = v3;
  v4 = *(v2 + 8 * (((v3 == 0) * ((v0 ^ 0x3C498221) + v0 - 1011449144 + 397)) ^ (v1 + v0 - 1058)));
  LODWORD(STACK[0xD3C]) = v0 ^ 0x3C498221;
  STACK[0xD40] = 188786074;
  return v4();
}

void sub_2979FA5F8()
{
  v1 = STACK[0xD40];
  STACK[0xD48] = STACK[0xD40];
  v2 = STACK[0xD3C];
  LODWORD(STACK[0xD54]) = STACK[0xD3C];
  LODWORD(STACK[0xD58]) = v2 + 1242403963;
  v1 -= 188786074;
  v3 = aJZFdl[v1];
  v4 = STACK[0x14C8] + v1;
  v5 = 233206231 * ((*(qword_2A13A4DA8 + ((v2 - 1326285009) & dword_2A13A4DB4)) ^ v4) & 0x7FFFFFFF);
  v6 = 233206231 * (v5 ^ HIWORD(v5));
  LOBYTE(STACK[0x5D2]) = v3 ^ byte_297A216A0[v6 >> 24] ^ byte_297A1F840[v6 >> 24] ^ byte_297A1AF40[v6 >> 24] ^ v6 ^ (107 * BYTE3(v6)) ^ 9;
  STACK[0x5C8] = v4;
  STACK[0x5C0] = *(v0 + 8 * (v2 ^ 0x79B));
  JUMPOUT(0x2979D0DC0);
}

void sub_2979FA7FC()
{
  v2 = STACK[0xEC8];
  LODWORD(STACK[0xECC]) = STACK[0xEC8];
  LODWORD(STACK[0xED0]) = v2 ^ 0x1F48DE3E;
  v3 = (v2 ^ 0x1F48DE3E) + 943866221;
  LODWORD(STACK[0xED4]) = v3;
  v4 = STACK[0x14A0] + 24 * v0;
  STACK[0xED8] = v4;
  LOBYTE(v4) = *(v4 - 0x2800D80E2920DCE6);
  v5 = STACK[0x200];
  STACK[0xEE0] = STACK[0x200];
  v6 = LODWORD(STACK[0x17E4]);
  LODWORD(STACK[0xEEC]) = v6 - 384021950;
  v7 = (v6 | ((v6 < 0x54D90827) << 32)) + v5;
  LODWORD(v5) = 233206231 * (((v6 + v5 - 1423509543) ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358))) & 0x7FFFFFFF);
  v8 = 233206231 * ((v5 >> (v3 ^ (v1 + 16))) ^ v5);
  LOBYTE(STACK[0x5D2]) = v4 ^ byte_297A1F940[v8 >> 24] ^ byte_297A1A230[(v8 >> 24) + 2] ^ byte_297A1BDA0[(v8 >> 24) + 2] ^ v8 ^ ~(35 * BYTE3(v8));
  STACK[0x5C8] = v7 - 0x5F9955DC609BD339;
  JUMPOUT(0x2979FA944);
}

void sub_2979FA954()
{
  STACK[0x2E0] = STACK[0x200];
  v0 = STACK[0x260];
  JUMPOUT(0x2979FA974);
}

uint64_t sub_2979FA9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x1580] = STACK[0x2E0];
  v75 = ((((a73 - 205189190) & 0xFFFFFFF0) - ((v73 + 2090926894) & (2 * (a73 - 205189190))) - 1102019627) ^ 0xBE5083D5) + ((v73 + 98) ^ 0x4C4);
  v76 = ((2 * v75) & 0xFFF67C7E) + (v75 ^ 0x7FFB3E3F);
  LODWORD(STACK[0x158C]) = v76;
  LODWORD(STACK[0x1590]) = v76 - 1392581651;
  LODWORD(STACK[0x1594]) = v76 - 2147171903;
  v77 = (*(v74 + 8 * (v73 + 463)))();
  STACK[0x1598] = v77;
  STACK[0x15A0] = v77 + 0xB757426B61DC812;
  STACK[0x288] = v77 + 0xB757426B61DC812;
  return (off_2A1E5DED0[(239 * (v77 == 0)) ^ v73])();
}

uint64_t sub_2979FAAEC@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x1AF;
  (*(v1 + 8 * (a1 ^ 0x6CA)))();
  STACK[0x19B8] = 0;
  LODWORD(STACK[0x19C0]) = 458219685;
  return (off_2A1E5DED0[((STACK[0x19A0] == 0) * ((((v2 + 170) ^ 0x397) + 324) ^ ((v2 + 170) | 0x1A))) ^ v2])();
}

uint64_t sub_2979FABA0@<X0>(int a1@<W8>)
{
  v2 = a1 + 139;
  (*(v1 + 8 * (a1 + 1196)))();
  STACK[0x19A0] = 0;
  LODWORD(STACK[0x19A8]) = 458219685;
  return (off_2A1E5DED0[((*STACK[0x16E8] != 0) * ((v2 ^ 0x3C498216) - 1011449792)) ^ v2])();
}

void sub_2979FAC10()
{
  (*(v1 + 8 * (v0 ^ 0x421)))();
  *STACK[0x16E8] = 0;
  *STACK[0x16E0] = 458219685;
  JUMPOUT(0x2979FAC54);
}

uint64_t sub_2979FACA4@<X0>(int a1@<W8>)
{
  v4 = (a1 + 742391482) | 0x10098008;
  (*(v3 + 8 * (a1 ^ 0x779)))();
  *STACK[0x1448] = 0;
  *STACK[0x1440] = 458219685;
  return (off_2A1E5DED0[((STACK[0x1958] == 0) * (((2 * (v4 ^ 0x3C498160)) ^ 0xFFFFFE3B) + (v4 ^ 0x3C49832F))) ^ (v2 + v4 - 456)])();
}

uint64_t sub_2979FAD3C()
{
  v2 = (13 * (v0 ^ 0x48C) - 927) | 0x8B;
  v3 = STACK[0x388];
  LODWORD(STACK[0x1554]) = STACK[0x388];
  v4 = *(v1 + 8 * (((v3 == 754590252) * (v2 ^ 0x1BC)) ^ v0));
  LODWORD(STACK[0x748]) = v2;
  return v4();
}

uint64_t sub_2979FADA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  STACK[0x1800] = STACK[0x430];
  LODWORD(STACK[0x180C]) = LODWORD(STACK[0x20C]) - 1314146714;
  v25 = (*(v24 + 8 * (v23 + 1079)))();
  STACK[0x1810] = v25;
  *a23 = v25;
  return (off_2A1E5DED0[((((v23 - 1) ^ (v25 == 0)) & 1) * (((v23 + 618) | 0x38) - 1154)) ^ v23])();
}

void sub_2979FAE2C()
{
  v1 = STACK[0x748];
  LODWORD(STACK[0x74C]) = STACK[0x748];
  LODWORD(STACK[0x750]) = v1 + 537;
  v2 = (v1 - 11798926) & 0x3CFD880A;
  LODWORD(STACK[0x754]) = v2;
  v3 = STACK[0x378];
  v4 = STACK[0x430];
  STACK[0x758] = STACK[0x430];
  v5 = LODWORD(STACK[0x1544]);
  LODWORD(STACK[0x764]) = v5 + 324134706;
  v6 = (v5 | ((v5 < 0x3373A386) << 32)) + v4;
  v7 = (((v6 - 863216518) ^ *(qword_2A13A4DA8 + (dword_2A13A4DB4 & 0x8F59B358))) & 0x7FFFFFFF) * (v2 - 778243633);
  v8 = 233206231 * (v7 ^ HIWORD(v7));
  LOBYTE(STACK[0x5D2]) = v3 ^ byte_297A19D20[v8 >> 24] ^ byte_297A1BA70[v8 >> 24] ^ byte_297A1BC80[v8 >> 24] ^ v8 ^ (5 * BYTE3(v8)) ^ 0x2F;
  STACK[0x5C8] = v6 - 0x5F9955DC3F366E98;
  STACK[0x5C0] = *(v0 + 8 * (v1 + 1031));
  JUMPOUT(0x2979FAF54);
}

uint64_t sub_2979FAF5C(uint64_t a1)
{
  v1 = 912661583 * ((~a1 & 0x900763AC2835811CLL | a1 & 0x6FF89C53D7CA7EE3) ^ 0x65B33E373C344CE9);
  v2 = (*(a1 + 32) ^ v1);
  v3 = *(a1 + 8) - v1;
  v4 = (*(a1 + 16) - v1);
  v5 = *(a1 + 24) ^ v1;
  v6 = *a1 ^ v1;
  v7 = (*(a1 + 4) - v1);
  v8 = *(a1 + 40) ^ v1;
  return v2();
}

uint64_t sub_2979FAFD4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v7 = v5 < v6;
  v8 = v5 < v6;
  v9 = v7;
  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (!v10)
  {
    v2 = v3;
  }

  *(result + 48) = v2 ^ a2;
  return result;
}

void *sub_2979FB020(unint64_t a1)
{
  v1 = (qword_2A13A4260 - qword_2A13A4270) ^ &v251;
  qword_2A13A4270 = 1460649907 * (v1 - 0x4D1A8838E7FB21C9);
  qword_2A13A4260 = 1460649907 * (v1 ^ 0x4D1A8838E7FB21C9);
  v2 = dword_2A13A4E20++;
  v3 = qword_2A13A4E10[v2 & 1];
  if (!v3)
  {
    return 0;
  }

  if ((*(v3 + 880) & 2) != 0 && atomic_exchange((v3 + 884), 1u))
  {
    v5 = 1;
    while (*(v3 + 884) || atomic_exchange((v3 + 884), 1u))
    {
      if ((v5 & 0x3F) == 0)
      {
        (off_2A1E5DED0[((-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x80]) + 1473])();
      }

      ++v5;
    }
  }

  if (a1 <= 0xE0)
  {
    v6 = (a1 + 31) & 0x1F0;
    if (a1 < 0xF)
    {
      v6 = 32;
    }

    v7 = v6 >> 3;
    v8 = *v3;
    v9 = *v3 >> (v6 >> 3);
    if ((v9 & 3) != 0)
    {
      v10 = ((*v3 >> (v6 >> 3)) & 1 | v7) ^ 1;
      v11 = v3 + 8 * (2 * v10);
      v12 = v11 + 72;
      v13 = *(v11 + 88);
      v14 = v13[2];
      if (v12 == v14)
      {
        *v3 = v8 & ~(1 << v10);
      }

      else
      {
        *(v14 + 24) = v12;
        *(v12 + 16) = v14;
      }

      v13[1] = (8 * (v10 & 0x3F)) | 3;
      v32 = &v13[v10];
      v32[1] |= 1uLL;
      *v32 = qword_2A13A4DE0 ^ v3;
      goto LABEL_93;
    }

    if (v6 > *(v3 + 8))
    {
      if (v9)
      {
        v19 = (v9 << v7) & ((2 << v7) | -(2 << v7));
        v20 = (v19 - 1) & ~v19;
        v21 = (v20 >> 12) & 0x10;
        v22 = v20 >> v21;
        v23 = v21 & 0xFFFFFFF0 | (v22 >> 5) & 0xF;
        v24 = v22 >> ((v22 >> 5) & 8);
        v25 = v23 & 0xFFFFFFF8 | (v24 >> 2) & 7;
        v26 = v24 >> ((v24 >> 2) & 4);
        v27 = (v25 & 0xFFFFFFFC | (v26 >> 1) & 2 | (v26 >> ((v26 >> 1) & 2) >> 1) & 1) + (v26 >> ((v26 >> 1) & 2) >> (((v26 >> ((v26 >> 1) & 2)) & 2) != 0));
        v28 = v3 + 16 * v27;
        v29 = v28 + 72;
        v30 = *(v28 + 88);
        v31 = *(v30 + 16);
        if (v29 == v31)
        {
          *v3 = v8 & ~(1 << v27);
        }

        else
        {
          *(v31 + 24) = v29;
          *(v29 + 16) = v31;
        }

        v119 = 8 * v27;
        v63 = v119 - v6;
        if (v119 - v6 <= 0x1F)
        {
          *(v30 + 8) = v119 | 3;
          v120 = (v30 + v119);
LABEL_217:
          v120[1] |= 1uLL;
          *v120 = qword_2A13A4DE0 ^ v3;
          result = (v30 + 16);
          goto LABEL_94;
        }

        *(v30 + 8) = v6 | 3;
        v121 = (v30 + v6);
        *v121 = qword_2A13A4DE0 ^ v3;
        v121[1] = v63 | 1;
        goto LABEL_219;
      }

      v55 = *(v3 + 4);
      if (v55)
      {
        v56 = (v55 - 1) & ~v55;
        v57 = (v56 >> 12) & 0x10;
        v58 = v56 >> v57;
        v59 = v57 & 0xFFFFFFF0 | (v58 >> 5) & 0xF;
        v60 = v58 >> ((v58 >> 5) & 8);
        v61 = v59 & 0xFFFFFFF8 | (v60 >> 2) & 7;
        v62 = v60 >> ((v60 >> 2) & 4);
        v30 = *(v3 + 8 * ((v61 & 0xFFFFFFFC | (v62 >> 1) & 2 | (v62 >> ((v62 >> 1) & 2) >> 1) & 1) + (v62 >> ((v62 >> 1) & 2) >> (((v62 >> ((v62 >> 1) & 2)) & 2) != 0))) + 600);
        v63 = (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8) - v6;
        v64 = 32;
        if (!*(v30 + 32))
        {
          v64 = 40;
        }

        for (i = *(v30 + v64); i; i = *(i + v66))
        {
          if ((*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v6 < v63)
          {
            v30 = i;
            v63 = (*(i + 8) & 0xFFFFFFFFFFFFFFF8) - v6;
          }

          if (*(i + 32))
          {
            v66 = 32;
          }

          else
          {
            v66 = 40;
          }
        }

        v67 = *(v30 + 48);
        v68 = *(v30 + 24);
        if (v68 == v30)
        {
          v138 = (v30 + 40);
          v139 = *(v30 + 40);
          if (v139 || (v138 = (v30 + 32), (v139 = *(v30 + 32)) != 0))
          {
            do
            {
              do
              {
                v140 = v138;
                v68 = v139;
                v138 = v139 + 5;
                v139 = v139[5];
              }

              while (v139);
              v138 = v68 + 4;
              v139 = v68[4];
            }

            while (v139);
            *v140 = 0;
            if (!v67)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v68 = 0;
            if (!v67)
            {
              goto LABEL_215;
            }
          }
        }

        else
        {
          v69 = *(v30 + 16);
          *(v69 + 24) = v68;
          v68[2] = v69;
          if (!v67)
          {
            goto LABEL_215;
          }
        }

        v141 = v3 + 8 * *(v30 + 56);
        if (v30 == *(v141 + 600))
        {
          *(v141 + 600) = v68;
          if (!v68)
          {
            *(v3 + 4) &= ~(1 << *(v30 + 56));
LABEL_215:
            if (v63 <= 0x1F)
            {
              v170 = v63 + v6;
              *(v30 + 8) = v170 | 3;
              v120 = (v30 + v170);
              goto LABEL_217;
            }

            *(v30 + 8) = v6 | 3;
            *(v30 + v6) = qword_2A13A4DE0 ^ v3;
            v121 = (v30 + v6);
            v121[1] = v63 | 1;
LABEL_219:
            *(v121 + v63) = v63;
            v171 = *(v3 + 8);
            if (v171)
            {
              v172 = *(v3 + 32);
              v173 = v171 >> 3;
              v174 = v3 + ((2 * v171) & 0x7FFFFFFF0) + 72;
              v175 = 1 << v173;
              if ((*v3 & v175) != 0)
              {
                v176 = *(v174 + 16);
              }

              else
              {
                *v3 |= v175;
                v176 = v174;
              }

              *(v174 + 16) = v172;
              *(v176 + 24) = v172;
              *(v172 + 16) = v176;
              *(v172 + 24) = v174;
            }

            *(v3 + 8) = v63;
            *(v3 + 32) = v121;
            result = (v30 + 16);
            goto LABEL_94;
          }
        }

        else
        {
          v142 = 40;
          if (*(v67 + 32) == v30)
          {
            v142 = 32;
          }

          *(v67 + v142) = v68;
          if (!v68)
          {
            goto LABEL_215;
          }
        }

        v68[6] = v67;
        v149 = *(v30 + 32);
        if (v149)
        {
          v68[4] = v149;
          *(v149 + 48) = v68;
        }

        v150 = *(v30 + 40);
        if (v150)
        {
          v68[5] = v150;
          *(v150 + 48) = v68;
        }

        goto LABEL_215;
      }
    }

    goto LABEL_71;
  }

  if (a1 > 0xFFFFFFFFFFFFFF7FLL)
  {
    v6 = -1;
    goto LABEL_71;
  }

  v6 = (a1 + 31) & 0xFFFFFFFFFFFFFFF0;
  v16 = *(v3 + 4);
  v263 = (v3 + 4);
  if (v16)
  {
    v17 = -v6;
    if (a1 <= 0xFFFFE0)
    {
      v33 = (a1 + 31) >> 8;
      v34 = ((v33 + 1048320) >> 16) & 8;
      LODWORD(v33) = v33 << v34;
      LODWORD(v33) = (v33 << (((v33 + 520192) >> 16) & 4) << ((((v33 << (((v33 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v33 + 520192) >> 16) & 4 | v34 | (((v33 << (((v33 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
      v18 = ((v6 >> (v33 + 21)) & 1 | (2 * v33)) + 28;
    }

    else
    {
      v18 = 31;
    }

    v35 = *(v3 + 8 * v18 + 600);
    if (v35)
    {
      v36 = 0;
      v37 = 0;
      v38 = 57 - (v18 >> 1);
      if (v18 == 31)
      {
        LOBYTE(v38) = 0;
      }

      v39 = v6 << v38;
      while (1)
      {
        v42 = (v35[1] & 0xFFFFFFFFFFFFFFF8) - v6;
        if (v42 < v17)
        {
          v36 = v35;
          v17 = (v35[1] & 0xFFFFFFFFFFFFFFF8) - v6;
          if (!v42)
          {
            break;
          }
        }

        v40 = v35[5];
        v35 = v35[(v39 >> 63) + 4];
        if (v40 != v35 && v40 != 0)
        {
          v37 = v40;
        }

        v39 *= 2;
        if (!v35)
        {
          goto LABEL_43;
        }
      }

      v36 = v35;
    }

    else
    {
      v36 = 0;
      v37 = 0;
LABEL_43:
      if (!(v37 | v36))
      {
        v43 = ((2 << v18) | -(2 << v18)) & v16;
        if (!v43)
        {
          goto LABEL_71;
        }

        v36 = 0;
        v44 = (v43 - 1) & ~v43;
        v45 = (v44 >> 12) & 0x10;
        v46 = v44 >> v45;
        v47 = v45 & 0xFFFFFFF0 | (v46 >> 5) & 0xF;
        v48 = v46 >> ((v46 >> 5) & 8);
        v49 = v47 & 0xFFFFFFF8 | (v48 >> 2) & 7;
        v50 = v48 >> ((v48 >> 2) & 4);
        v37 = *(v3 + 8 * ((v49 & 0xFFFFFFFC | (v50 >> 1) & 2 | (v50 >> ((v50 >> 1) & 2) >> 1) & 1) + (v50 >> ((v50 >> 1) & 2) >> (((v50 >> ((v50 >> 1) & 2)) & 2) != 0))) + 600);
      }

      v35 = v37;
      if (!v37)
      {
LABEL_53:
        v264 = v36;
        v265 = v17;
        if (!v36 || v265 >= *(v3 + 8) - v6)
        {
          goto LABEL_71;
        }

        v266 = v264 + v6;
        v52 = v264[6];
        v53 = v264[3];
        if (v53 == v264)
        {
          v122 = v264 + 5;
          v123 = v264[5];
          if (v123 || (v122 = v264 + 4, (v123 = v264[4]) != 0))
          {
            do
            {
              do
              {
                v124 = v122;
                v53 = v123;
                v122 = v123 + 5;
                v123 = v123[5];
              }

              while (v123);
              v122 = v53 + 4;
              v123 = v53[4];
            }

            while (v123);
            *v124 = 0;
            if (!v52)
            {
              goto LABEL_198;
            }
          }

          else
          {
            v53 = 0;
            if (!v52)
            {
              goto LABEL_198;
            }
          }
        }

        else
        {
          v54 = v264[2];
          *(v54 + 24) = v53;
          v53[2] = v54;
          if (!v52)
          {
            goto LABEL_198;
          }
        }

        v125 = v264;
        v126 = v3 + 8 * *(v264 + 14);
        if (v264 == *(v126 + 600))
        {
          *(v126 + 600) = v53;
          if (!v53)
          {
            *v263 &= ~(1 << *(v125 + 14));
            goto LABEL_198;
          }
        }

        else
        {
          v127 = 40;
          if (*(v52 + 32) == v264)
          {
            v127 = 32;
          }

          *(v52 + v127) = v53;
          if (!v53)
          {
LABEL_198:
            if (v265 > 0x1F)
            {
              v157 = v264;
              v264[1] = v6 | 3;
              *(v157 + v6) = qword_2A13A4DE0 ^ v3;
              v158 = v265;
              v159 = v266;
              *(v266 + 8) = v265 | 1;
              *(v159 + v158) = v158;
              if (v158 > 0xFF)
              {
                v252 = 31;
                if (!(v158 >> 24))
                {
                  v164 = (((v265 >> 8) + 1048320) >> 16) & 8;
                  v165 = (v265 >> 8) << v164;
                  v166 = (v165 << (((v165 + 520192) >> 16) & 4) << ((((v165 << (((v165 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v165 + 520192) >> 16) & 4 | v164 | (((v165 << (((v165 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                  v252 = ((v265 >> (v166 + 21)) & 1 | (2 * v166)) + 28;
                }

                v253 = v252;
                v254 = v3 + 8 * v252 + 600;
                v167 = v266;
                *(v266 + 56) = v252;
                v250 = (v167 + 32);
                v168 = off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4270) ^ 0xC9)) ^ byte_297A24A00[byte_297A24900[(-77 * ((qword_2A13A4260 + qword_2A13A4270) ^ 0xC9))] ^ 0xF3]) + 1317];
                goto LABEL_282;
              }

              v160 = v158 >> 3;
              v161 = v3 + 16 * (v158 >> 3) + 72;
              v162 = 1 << v160;
              if ((v162 & *v3) != 0)
              {
                v163 = *(v161 + 16);
              }

              else
              {
                *v3 |= v162;
                v163 = v161;
              }

              v169 = v266;
              *(v161 + 16) = v266;
              *(v163 + 24) = v169;
              *(v169 + 16) = v163;
              *(v169 + 24) = v161;
            }

            else
            {
              v154 = v264;
              v155 = v265 + v6;
              v264[1] = v155 | 3;
              v156 = (v154 + v155);
              v156[1] |= 1uLL;
              *v156 = qword_2A13A4DE0 ^ v3;
            }

            v13 = v264;
LABEL_93:
            result = v13 + 2;
            goto LABEL_94;
          }
        }

        v53[6] = v52;
        v128 = v264[4];
        if (v128)
        {
          v53[4] = v128;
          *(v128 + 48) = v53;
        }

        v129 = v264[5];
        if (v129)
        {
          v53[5] = v129;
          *(v129 + 48) = v53;
        }

        goto LABEL_198;
      }
    }

    do
    {
      if ((v35[1] & 0xFFFFFFFFFFFFFFF8) - v6 < v17)
      {
        v36 = v35;
        v17 = (v35[1] & 0xFFFFFFFFFFFFFFF8) - v6;
      }

      if (v35[4])
      {
        v51 = 4;
      }

      else
      {
        v51 = 5;
      }

      v35 = v35[v51];
    }

    while (v35);
    goto LABEL_53;
  }

LABEL_71:
  v267 = v6;
  v70 = *(v3 + 8);
  if (v6 <= v70)
  {
    v76 = v70 - v267;
    v13 = *(v3 + 32);
    if (v70 - v267 < 0x20)
    {
      *(v3 + 8) = 0;
      *(v3 + 32) = 0;
      v13[1] = v70 | 3;
      *(v13 + v70 + 8) |= 1uLL;
    }

    else
    {
      v70 = v267;
      v77 = v13 + v267;
      *(v3 + 32) = v13 + v267;
      *(v3 + 8) = v76;
      *(v77 + 1) = v76 | 1;
      *&v77[v76] = v76;
      v13[1] = v70 | 3;
    }

    *(v13 + v70) = qword_2A13A4DE0 ^ v3;
    goto LABEL_93;
  }

  v71 = *(v3 + 16);
  v268 = (v3 + 16);
  if (v267 < v71)
  {
    v72 = v267;
    v73 = v71 - v267;
    *v268 = v73;
    v74 = *(v3 + 40);
    v75 = (v74 + v72);
    *(v3 + 40) = v74 + v72;
    v75[1] = v73 | 1;
    *(v74 + 8) = v72 | 3;
    *v75 = qword_2A13A4DE0 ^ v3;
    result = (v74 + 16);
    goto LABEL_94;
  }

  if (v71)
  {
    if ((*(v3 + 880) & 1) != 0 && *(&xmmword_2A13A4DF0 + 1) <= v267)
    {
      v78 = (qword_2A13A4DE8 + v267 + 62) & -qword_2A13A4DE8;
      v79 = *(v3 + 872);
      if (!v79 || (v80 = *(v3 + 856), v80 + v78 > v80) && v80 + v78 <= v79)
      {
        if (v78 > v267)
        {
          v81 = (off_2A1E5DED0[((-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24800[byte_297A24700[(-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x80]) + 1484])(0, (qword_2A13A4DE8 + v267 + 62) & -qword_2A13A4DE8, 3, 4098, 0xFFFFFFFFLL, 0);
          if (v81 != -1)
          {
            v82 = -(v81 + 16) & 0xFLL;
            if (((v81 + 16) & 0xF) == 0)
            {
              v82 = 0;
            }

            v13 = (v81 + v82);
            *v13 = v82;
            v13[1] = v78 - v82 - 32;
            v83 = (v81 + v78 - 32);
            *v83 = qword_2A13A4DE0 ^ v3;
            v83[1] = 11;
            *(v78 + v81 - 16) = 0;
            v84 = *(v3 + 24);
            if (!v84 || v81 < v84)
            {
              *(v3 + 24) = v81;
            }

            v85 = *(v3 + 856) + v78;
            *(v3 + 856) = v85;
            if (v85 > *(v3 + 864))
            {
              *(v3 + 864) = v85;
            }

            goto LABEL_93;
          }
        }
      }
    }
  }

  result = 0;
  v86 = (xmmword_2A13A4DF0 + v267 + 95) & -xmmword_2A13A4DF0;
  if (v86 > v267)
  {
    v87 = *(v3 + 872);
    if (!v87 || (result = 0, v88 = *(v3 + 856), v88 + v86 > v88) && v88 + v86 <= v87)
    {
      v89 = (off_2A1E5DED0[((-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260))] ^ 0xBE]) + 1595])(0, (xmmword_2A13A4DF0 + v267 + 95) & -xmmword_2A13A4DF0, 3, 4098, 0xFFFFFFFFLL, 0);
      v90 = v89 != -1;
      if (v89 == -1)
      {
        v91 = 0;
      }

      else
      {
        v91 = v86;
      }

      if (v89 == -1)
      {
LABEL_377:
        v248 = (off_2A1E5DED0[((-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260)) ^ byte_297A24A00[byte_297A24900[(-77 * (qword_2A13A4270 ^ 0xC9 ^ qword_2A13A4260))] ^ 0x46]) + 1492])();
        result = 0;
        *v248 = 12;
        goto LABEL_94;
      }

      v92 = *(v3 + 856) + v86;
      *(v3 + 856) = v92;
      if (v92 > *(v3 + 864))
      {
        *(v3 + 864) = v92;
      }

      v93 = *(v3 + 40);
      v269 = (v3 + 40);
      if (!v93)
      {
        v130 = *(v3 + 24);
        if (!v130 || v89 < v130)
        {
          *(v3 + 24) = v89;
        }

        *(v3 + 888) = v89;
        *(v3 + 896) = v86;
        *(v3 + 912) = v90;
        v131 = qword_2A13A4DE0;
        *(v3 + 56) = 4095;
        *(v3 + 64) = v131;
        *(v3 + 96) = v3 + 72;
        *(v3 + 88) = v3 + 72;
        *(v3 + 112) = v3 + 88;
        *(v3 + 104) = v3 + 88;
        *(v3 + 128) = v3 + 104;
        *(v3 + 120) = v3 + 104;
        *(v3 + 144) = v3 + 120;
        *(v3 + 136) = v3 + 120;
        *(v3 + 160) = v3 + 136;
        *(v3 + 152) = v3 + 136;
        *(v3 + 176) = v3 + 152;
        *(v3 + 168) = v3 + 152;
        *(v3 + 192) = v3 + 168;
        *(v3 + 184) = v3 + 168;
        *(v3 + 208) = v3 + 184;
        *(v3 + 200) = v3 + 184;
        *(v3 + 224) = v3 + 200;
        *(v3 + 216) = v3 + 200;
        *(v3 + 240) = v3 + 216;
        *(v3 + 232) = v3 + 216;
        *(v3 + 248) = v3 + 232;
        *(v3 + 256) = v3 + 232;
        *(v3 + 264) = v3 + 248;
        *(v3 + 272) = v3 + 248;
        *(v3 + 280) = v3 + 264;
        *(v3 + 288) = v3 + 264;
        *(v3 + 296) = v3 + 280;
        *(v3 + 304) = v3 + 280;
        *(v3 + 312) = v3 + 296;
        *(v3 + 320) = v3 + 296;
        *(v3 + 328) = v3 + 312;
        *(v3 + 336) = v3 + 312;
        *(v3 + 344) = v3 + 328;
        *(v3 + 352) = v3 + 328;
        *(v3 + 360) = v3 + 344;
        *(v3 + 368) = v3 + 344;
        *(v3 + 376) = v3 + 360;
        *(v3 + 384) = v3 + 360;
        *(v3 + 392) = v3 + 376;
        *(v3 + 400) = v3 + 376;
        *(v3 + 408) = v3 + 392;
        *(v3 + 416) = v3 + 392;
        *(v3 + 424) = v3 + 408;
        *(v3 + 432) = v3 + 408;
        *(v3 + 440) = v3 + 424;
        *(v3 + 448) = v3 + 424;
        *(v3 + 456) = v3 + 440;
        *(v3 + 464) = v3 + 440;
        *(v3 + 472) = v3 + 456;
        *(v3 + 480) = v3 + 456;
        *(v3 + 488) = v3 + 472;
        *(v3 + 504) = v3 + 488;
        *(v3 + 512) = v3 + 488;
        *(v3 + 496) = v3 + 472;
        *(v3 + 528) = v3 + 504;
        *(v3 + 520) = v3 + 504;
        *(v3 + 544) = v3 + 520;
        *(v3 + 536) = v3 + 520;
        *(v3 + 560) = v3 + 536;
        *(v3 + 552) = v3 + 536;
        *(v3 + 576) = v3 + 552;
        *(v3 + 568) = v3 + 552;
        *(v3 + 592) = v3 + 568;
        *(v3 + 584) = v3 + 568;
        v132 = v3 + (*(v3 - 8) & 0xFFFFFFFFFFFFFFF8);
        v133 = v132 - 16;
        if ((v132 & 0xF) != 0)
        {
          v134 = -v132 & 0xFLL;
        }

        else
        {
          v134 = 0;
        }

        v135 = v133 + v134;
        v136 = v89 + v86 - v133 - v134 - 80;
        v137 = v268;
        *v269 = v135;
        *v137 = v136;
        *(v135 + 8) = v136 | 1;
        *(v135 + v136 + 8) = 80;
        *(v3 + 48) = qword_2A13A4E00;
LABEL_375:
        if (*v268 > v267)
        {
          v244 = v267;
          v245 = *v268 - v267;
          *v268 = v245;
          v246 = *v269;
          v247 = (*v269 + v244);
          *v269 = v247;
          v247[1] = v245 | 1;
          v246[1] = v244 | 3;
          *v247 = qword_2A13A4DE0 ^ v3;
          result = v246 + 2;
          goto LABEL_94;
        }

        goto LABEL_377;
      }

      v94 = *(v3 + 888);
      v95 = *(v3 + 896);
      if (v89 == v94 + v95 && v93 < v89 && v93 >= v94)
      {
        v144 = *(v3 + 912);
        if ((v144 & 1) != 0 && (v144 & 8) == 0)
        {
          *(v3 + 896) = v95 + v86;
          v145 = v268;
          if (((v93 + 2) & 0xF) != 0)
          {
            v146 = -(v93 + 16) & 0xFLL;
          }

          else
          {
            v146 = 0;
          }

          v147 = (v93 + v146);
          v148 = v86 - v146 + *v268;
          *v269 = v147;
          *v145 = v148;
          v147[1] = v148 | 1;
          *(v147 + v148 + 8) = 80;
          *(v3 + 48) = qword_2A13A4E00;
          goto LABEL_375;
        }
      }

      v96 = (v3 + 888);
      if (v89 < *(v3 + 24))
      {
        *(v3 + 24) = v89;
      }

      v97 = *v96;
      v98 = (v3 + 888);
      if (*v96 == v89 + v86)
      {
        v99 = *(v3 + 912);
        v98 = (v3 + 888);
        if (v99)
        {
          v98 = (v3 + 888);
          if ((v99 & 8) == 0)
          {
            *v96 = v89;
            *(v3 + 896) += v86;
            if (((v89 + 16) & 0xF) != 0)
            {
              v100 = -(v89 + 16) & 0xFLL;
            }

            else
            {
              v100 = 0;
            }

            v101 = v89 + v100;
            if (((v97 + 16) & 0xF) != 0)
            {
              v102 = -(v97 + 16) & 0xFLL;
            }

            else
            {
              v102 = 0;
            }

            v103 = v97 + v102;
            v104 = v267;
            v270 = v101;
            v271 = v101 + v267;
            v105 = v97 + v102 - v101 - v267;
            *(v101 + 8) = v267 | 3;
            *(v101 + v104) = qword_2A13A4DE0 ^ v3;
            if (v103 == *v269)
            {
              v186 = v269;
              v187 = *v268 + v105;
              *v268 = v187;
              v188 = v271;
              *v186 = v271;
              *(v188 + 8) = v187 | 1;
            }

            else
            {
              if (v103 != *(v3 + 32))
              {
                v106 = *(v103 + 8);
                if ((v106 & 3) != 1)
                {
LABEL_272:
                  v272 = v105;
                  *(v103 + 8) = v106 & 0xFFFFFFFFFFFFFFFELL;
                  v201 = v271;
                  *(v271 + 8) = v105 | 1;
                  *(v201 + v105) = v105;
                  if (v105 <= 0xFF)
                  {
                    v202 = v105 >> 3;
                    v203 = v3 + 16 * (v105 >> 3) + 72;
                    v204 = 1 << v202;
                    if ((v204 & *v3) != 0)
                    {
                      v205 = *(v203 + 16);
                    }

                    else
                    {
                      *v3 |= v204;
                      v205 = v203;
                    }

                    v211 = v271;
                    *(v203 + 16) = v271;
                    *(v205 + 24) = v211;
                    *(v211 + 16) = v205;
                    *(v211 + 24) = v203;
                    goto LABEL_378;
                  }

                  v255 = 31;
                  if (!(v105 >> 24))
                  {
                    v206 = (((v272 >> 8) + 1048320) >> 16) & 8;
                    v207 = (v272 >> 8) << v206;
                    v208 = (v207 << (((v207 + 520192) >> 16) & 4) << ((((v207 << (((v207 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v207 + 520192) >> 16) & 4 | v206 | (((v207 << (((v207 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                    v255 = ((v272 >> (v208 + 21)) & 1 | (2 * v208)) + 28;
                  }

                  v256 = v255;
                  v209 = v3 + 8 * v255 + 600;
                  v210 = v271;
                  *(v271 + 56) = v255;
                  v257 = v209;
                  v258 = v3 + 4;
                  v250 = (v210 + 32);
                  v168 = off_2A1E5DED0[((-77 * ((qword_2A13A4260 + qword_2A13A4270) ^ 0xC9)) ^ byte_297A24800[byte_297A24700[(-77 * ((qword_2A13A4260 + qword_2A13A4270) ^ 0xC9))] ^ 0xA7]) + 1481];
LABEL_282:
                  v249 = v168;
                  v212 = v250;
                  v213 = -v250 & 7;
                  if (v213 > 0x10)
                  {
                    LODWORD(v213) = 16;
                  }

                  if (v213 <= 3)
                  {
                    if (v213 == 1)
                    {
LABEL_300:
                      *v212++ = 0;
                      goto LABEL_301;
                    }

                    if (v213 == 2)
                    {
LABEL_299:
                      *v212++ = 0;
                      goto LABEL_300;
                    }

                    if (v213 != 3)
                    {
LABEL_301:
                      v214 = 16 - v213;
                      if (v214 >= 8)
                      {
                        v215 = ((v214 >> 3) + 7) >> 3;
                        v216 = (v214 >> 3) & 7;
                        if (v216 > 3)
                        {
                          if (((v214 >> 3) & 7) <= 5)
                          {
                            if (v216 == 4)
                            {
                              goto LABEL_353;
                            }

                            goto LABEL_352;
                          }

                          if (v216 == 6)
                          {
                            goto LABEL_351;
                          }

                          goto LABEL_350;
                        }

                        if (((v214 >> 3) & 7) > 1)
                        {
                          if (v216 == 2)
                          {
                            goto LABEL_355;
                          }

                          goto LABEL_354;
                        }

                        if (v216)
                        {
                          goto LABEL_356;
                        }

                        do
                        {
                          *v212 = 0;
                          v212 += 8;
LABEL_350:
                          *v212 = 0;
                          v212 += 8;
LABEL_351:
                          *v212 = 0;
                          v212 += 8;
LABEL_352:
                          *v212 = 0;
                          v212 += 8;
LABEL_353:
                          *v212 = 0;
                          v212 += 8;
LABEL_354:
                          *v212 = 0;
                          v212 += 8;
LABEL_355:
                          *v212 = 0;
                          v212 += 8;
LABEL_356:
                          *v212 = 0;
                          v212 += 8;
                          --v215;
                        }

                        while (v215);
                      }

                      v243 = v214 & 7;
                      if (v243 <= 3)
                      {
                        if (v243 <= 1)
                        {
                          if (!v243)
                          {
LABEL_374:
                            __asm { BRAA            X8, X17 }
                          }

LABEL_373:
                          *v212 = 0;
                          goto LABEL_374;
                        }

                        if (v243 == 2)
                        {
LABEL_372:
                          *v212++ = 0;
                          goto LABEL_373;
                        }

LABEL_371:
                        *v212++ = 0;
                        goto LABEL_372;
                      }

                      if (v243 > 5)
                      {
                        if (v243 != 6)
                        {
                          *v212++ = 0;
                        }

                        *v212++ = 0;
                      }

                      else if (v243 == 4)
                      {
                        goto LABEL_370;
                      }

                      *v212++ = 0;
LABEL_370:
                      *v212++ = 0;
                      goto LABEL_371;
                    }

LABEL_298:
                    *v212++ = 0;
                    goto LABEL_299;
                  }

                  if (v213 > 5)
                  {
                    if (v213 != 6)
                    {
                      if (v213 != 7)
                      {
                        goto LABEL_301;
                      }

                      *v250 = 0;
                      v212 = v250 + 1;
                    }

                    *v212++ = 0;
                  }

                  else if (v213 == 4)
                  {
LABEL_297:
                    *v212++ = 0;
                    goto LABEL_298;
                  }

                  *v212++ = 0;
                  goto LABEL_297;
                }

                v107 = v106 & 0xFFFFFFFFFFFFFFF8;
                if (v106 <= 0xFF)
                {
                  v108 = *(v103 + 16);
                  v109 = *(v103 + 24);
                  if (v109 == v108)
                  {
                    *v3 &= ~(1 << (v106 >> 3));
                  }

                  else
                  {
                    *(v108 + 24) = v109;
                    *(v109 + 16) = v108;
                  }

                  goto LABEL_271;
                }

                v191 = *(v103 + 48);
                v192 = *(v103 + 24);
                if (v192 == v103)
                {
                  v194 = (v103 + 40);
                  v195 = *(v103 + 40);
                  if (v195 || (v194 = (v103 + 32), (v195 = *(v103 + 32)) != 0))
                  {
                    do
                    {
                      do
                      {
                        v196 = v194;
                        v192 = v195;
                        v194 = v195 + 5;
                        v195 = v195[5];
                      }

                      while (v195);
                      v194 = v192 + 4;
                      v195 = v192[4];
                    }

                    while (v195);
                    *v196 = 0;
                    if (!v191)
                    {
                      goto LABEL_271;
                    }
                  }

                  else
                  {
                    v192 = 0;
                    if (!v191)
                    {
                      goto LABEL_271;
                    }
                  }
                }

                else
                {
                  v193 = *(v103 + 16);
                  *(v193 + 24) = v192;
                  v192[2] = v193;
                  if (!v191)
                  {
                    goto LABEL_271;
                  }
                }

                v197 = v3 + 8 * *(v103 + 56);
                if (v103 == *(v197 + 600))
                {
                  *(v197 + 600) = v192;
                  if (!v192)
                  {
                    *(v3 + 4) &= ~(1 << *(v103 + 56));
LABEL_271:
                    v103 += v107;
                    v105 += v107;
                    v106 = *(v103 + 8);
                    goto LABEL_272;
                  }
                }

                else
                {
                  v198 = 40;
                  if (*(v191 + 32) == v103)
                  {
                    v198 = 32;
                  }

                  *(v191 + v198) = v192;
                  if (!v192)
                  {
                    goto LABEL_271;
                  }
                }

                v192[6] = v191;
                v199 = *(v103 + 32);
                if (v199)
                {
                  v192[4] = v199;
                  *(v199 + 48) = v192;
                }

                v200 = *(v103 + 40);
                if (v200)
                {
                  v192[5] = v200;
                  *(v200 + 48) = v192;
                }

                goto LABEL_271;
              }

              v189 = *(v3 + 8) + v105;
              *(v3 + 8) = v189;
              v190 = v271;
              *(v3 + 32) = v271;
              *(v190 + 8) = v189 | 1;
              *(v190 + v189) = v189;
            }

LABEL_378:
            v13 = v270;
            goto LABEL_93;
          }
        }
      }

      while (1)
      {
        if (*v98 <= v93)
        {
          v110 = *v98 + v98[1];
          if (v110 > v93)
          {
            break;
          }
        }

        v98 = v98[2];
      }

      if (((v110 - 79) & 0xF) != 0)
      {
        v111 = (79 - v110) & 0xFLL;
      }

      else
      {
        v111 = 0;
      }

      v112 = (v110 + v111 - 95);
      if (v112 < v93 + 4)
      {
        v112 = v93;
      }

      v113 = v112 + 2;
      if (((v89 + 16) & 0xF) != 0)
      {
        v114 = -(v89 + 16) & 0xFLL;
      }

      else
      {
        v114 = 0;
      }

      v115 = v91 - v114;
      v116 = v89 + v114;
      v115 -= 80;
      *v269 = v116;
      *v268 = v115;
      *(v116 + 8) = v115 | 1;
      *(v116 + v115 + 8) = 80;
      *(v3 + 48) = qword_2A13A4E00;
      v112[1] = 51;
      v112[6] = qword_2A13A4DE0 ^ v3;
      if (((v113 ^ v96) & 7) != 0)
      {
        v117 = 0;
        do
        {
          v118 = &v113[v117 * 8];
          *v118 = v96[v117];
          v118[1] = BYTE1(v96[v117]);
          v118[2] = BYTE2(v96[v117]);
          v118[3] = BYTE3(v96[v117]);
          v118[4] = BYTE4(v96[v117]);
          v118[5] = BYTE5(v96[v117]);
          v118[6] = BYTE6(v96[v117]);
          v118[7] = HIBYTE(v96[v117++]);
        }

        while ((v117 * 8) != 32);
        goto LABEL_338;
      }

      v151 = -v96 & 7;
      v152 = (v3 + 888);
      v153 = (v112 + 2);
      if ((-v96 & 7u) <= 3)
      {
        if ((-v96 & 7u) <= 1)
        {
          if (!v151)
          {
LABEL_237:
            v183 = 32 - v151;
            if (v183 >= 8)
            {
              v184 = v183 >> 3;
              v185 = ((v183 >> 3) + 7) >> 3;
              if (v183 >> 3 > 3)
              {
                if (v183 >> 3 <= 5)
                {
                  if (v184 == 4)
                  {
                    goto LABEL_317;
                  }

                  goto LABEL_316;
                }

                if (v184 == 6)
                {
                  goto LABEL_315;
                }

                goto LABEL_314;
              }

              if (v183 >> 3 > 1)
              {
                if (v184 == 2)
                {
                  goto LABEL_319;
                }

                goto LABEL_318;
              }

              if (v184)
              {
                goto LABEL_320;
              }

              do
              {
                v217 = *v152;
                v152 += 8;
                *v153 = v217;
                v153 += 8;
LABEL_314:
                v218 = *v152;
                v152 += 8;
                *v153 = v218;
                v153 += 8;
LABEL_315:
                v219 = *v152;
                v152 += 8;
                *v153 = v219;
                v153 += 8;
LABEL_316:
                v220 = *v152;
                v152 += 8;
                *v153 = v220;
                v153 += 8;
LABEL_317:
                v221 = *v152;
                v152 += 8;
                *v153 = v221;
                v153 += 8;
LABEL_318:
                v222 = *v152;
                v152 += 8;
                *v153 = v222;
                v153 += 8;
LABEL_319:
                v223 = *v152;
                v152 += 8;
                *v153 = v223;
                v153 += 8;
LABEL_320:
                v224 = *v152;
                v152 += 8;
                *v153 = v224;
                v153 += 8;
                --v185;
              }

              while (v185);
            }

            v225 = v183 & 7;
            if (v225 <= 3)
            {
              if (v225 <= 1)
              {
                if (!v225)
                {
LABEL_338:
                  *v96 = v89;
                  *(v3 + 896) = v91;
                  *(v3 + 912) = v90;
                  v232 = v112 + 7;
                  *(v3 + 904) = v113;
                  do
                  {
                    *v232++ = 11;
                  }

                  while (v232 < v110);
                  v233 = v112 - v93;
                  if (v112 == v93)
                  {
                    goto LABEL_375;
                  }

                  v273 = v93;
                  v274 = v112 - v93;
                  v112[1] &= ~1uLL;
                  v93[1] = v233 | 1;
                  *v112 = v233;
                  if (v233 <= 0xFF)
                  {
                    v234 = v3 + 16 * (v233 >> 3) + 72;
                    v235 = 1 << (v233 >> 3);
                    if ((v235 & *v3) != 0)
                    {
                      v236 = *(v3 + 16 * (v233 >> 3) + 88);
                    }

                    else
                    {
                      *v3 |= v235;
                      v236 = v3 + 16 * (v233 >> 3) + 72;
                    }

                    v242 = v273;
                    *(v234 + 16) = v273;
                    *(v236 + 24) = v242;
                    v242[2] = v236;
                    v242[3] = v234;
                    goto LABEL_375;
                  }

                  v259 = 31;
                  if (!(v233 >> 24))
                  {
                    v237 = (((v274 >> 8) + 1048320) >> 16) & 8;
                    v238 = (v274 >> 8) << v237;
                    v239 = (v238 << (((v238 + 520192) >> 16) & 4) << ((((v238 << (((v238 + 520192) >> 16) & 4)) + 245760) >> 16) & 2) >> 15) - (((v238 + 520192) >> 16) & 4 | v237 | (((v238 << (((v238 + 520192) >> 16) & 4)) + 245760) >> 16) & 2);
                    v259 = ((v274 >> (v239 + 21)) & 1 | (2 * v239)) + 28;
                  }

                  v260 = v259;
                  v240 = v3 + 8 * v259 + 600;
                  v241 = v273;
                  *(v273 + 14) = v259;
                  v261 = v240;
                  v262 = v3 + 4;
                  v250 = v241 + 4;
                  v168 = off_2A1E5DED0[((-77 * ((qword_2A13A4260 - qword_2A13A4270) ^ 0xC9)) ^ byte_297A24C00[byte_297A24B00[(-77 * ((qword_2A13A4260 - qword_2A13A4270) ^ 0xC9))] ^ 0xFD]) + 1393];
                  goto LABEL_282;
                }

LABEL_337:
                *v153 = *v152;
                goto LABEL_338;
              }

              if (v225 == 2)
              {
LABEL_336:
                v231 = *v152++;
                *v153++ = v231;
                goto LABEL_337;
              }

LABEL_335:
              v230 = *v152++;
              *v153++ = v230;
              goto LABEL_336;
            }

            if (v225 > 5)
            {
              if (v225 != 6)
              {
                v226 = *v152++;
                *v153++ = v226;
              }

              v227 = *v152++;
              *v153++ = v227;
            }

            else if (v225 == 4)
            {
              goto LABEL_334;
            }

            v228 = *v152++;
            *v153++ = v228;
LABEL_334:
            v229 = *v152++;
            *v153++ = v229;
            goto LABEL_335;
          }

LABEL_236:
          v182 = *v152++;
          *v153++ = v182;
          goto LABEL_237;
        }

        if (v151 == 2)
        {
LABEL_235:
          v181 = *v152++;
          *v153++ = v181;
          goto LABEL_236;
        }

LABEL_234:
        v180 = *v152++;
        *v153++ = v180;
        goto LABEL_235;
      }

      if ((-v96 & 7u) > 5)
      {
        if (v151 != 6)
        {
          v152 = (v3 + 889);
          *v113 = *v96;
          v153 = v112 + 17;
        }

        v177 = *v152++;
        *v153++ = v177;
      }

      else if (v151 == 4)
      {
        goto LABEL_233;
      }

      v178 = *v152++;
      *v153++ = v178;
LABEL_233:
      v179 = *v152++;
      *v153++ = v179;
      goto LABEL_234;
    }
  }

LABEL_94:
  if ((*(v3 + 880) & 2) != 0)
  {
    atomic_store(0, (v3 + 884));
  }

  return result;
}