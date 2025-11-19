uint64_t sub_1AF790800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF4486E4();
  v6 = sub_1AFDFDF28();
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];

  v11 = MEMORY[0x1B27189E0](v7, v8, v9, v10);
  v13 = v12;

  v14 = v6[8];
  v15 = v6[9];
  v16 = v6[10];
  v17 = v6[11];

  v18 = MEMORY[0x1B27189E0](v14, v15, v16, v17);
  v20 = v19;

  v21 = *(*(v4 + 136) + 32);
  if (!*(v21 + 16) || (, v22 = sub_1AF419914(v11, v13), v24 = v23, , (v24 & 1) == 0))
  {

LABEL_12:

    return 0;
  }

  v25 = *(*(v21 + 56) + 8 * v22);

  v26 = *(v25 + 56);
  if (!v26 || !*(v26 + 16) || (v27 = sub_1AF41A220(*(*a3 + 24)), (v28 & 1) == 0))
  {

    goto LABEL_12;
  }

  v29 = *(*(v26 + 56) + 16 * v27);
  if (*(v29 + 16))
  {

    v30 = sub_1AF419914(v18, v20);
    v32 = v31;

    if (v32)
    {
      v33 = (*(v29 + 56) + 16 * v30);
      v34 = *v33;
      v35 = v33[1];

      sub_1AF64E080(0, 0, v34, v35);

      return 1;
    }
  }

  return 0;
}

char *sub_1AF790A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AF4486E4();
  v6 = sub_1AFDFDF28();
  v7 = v6[4];
  v8 = v6[5];
  v9 = v6[6];
  v10 = v6[7];

  v11 = MEMORY[0x1B27189E0](v7, v8, v9, v10);
  v13 = v12;

  v14 = v6[8];
  v15 = v6[9];
  v16 = v6[10];
  v17 = v6[11];

  v18 = MEMORY[0x1B27189E0](v14, v15, v16, v17);
  v20 = v19;

  v56 = MEMORY[0x1E69E7CC0];
  v21 = *(*(v4 + 136) + 32);
  if (*(v21 + 16) && (, v22 = sub_1AF419914(v11, v13), v24 = v23, , (v24 & 1) != 0))
  {
    v25 = *(*(v21 + 56) + 8 * v22);

    v26 = *(v25 + 56);
    if (v26 && *(v26 + 16) && (v27 = sub_1AF41A220(a3), (v28 & 1) != 0))
    {
      v29 = *(*(v26 + 56) + 16 * v27 + 8);
      if (*(v29 + 16))
      {

        v30 = sub_1AF419914(v18, v20);
        v32 = v31;

        if (v32)
        {
          v33 = *(*(v29 + 56) + 8 * v30);

          v54 = *(v33 + 16);
          if (v54)
          {
            v34 = 0;
            v52 = v33 + 32;
            v53 = a3;
            do
            {
              v35 = (v52 + 16 * v34);
              v37 = *v35;
              v36 = v35[1];

              sub_1AF6B0504(v37, v36);
              v55 = sub_1AF790A30(v37, v36, a3);
              v38 = *(v55 + 16);
              if (v38)
              {
                v39 = 0;
                v40 = v56;
                do
                {
                  v42 = (v55 + 32 + 16 * v39);
                  v44 = *v42;
                  v43 = v42[1];
                  v45 = *(v40 + 2);
                  if (v45)
                  {
                    v46 = v40 + 40;
                    v47 = *(v40 + 2);
                    while (1)
                    {
                      v48 = *(v46 - 1) == v44 && *v46 == v43;
                      if (v48 || (sub_1AFDFEE28() & 1) != 0)
                      {
                        break;
                      }

                      v46 += 2;
                      if (!--v47)
                      {
                        goto LABEL_23;
                      }
                    }
                  }

                  else
                  {
LABEL_23:
                    swift_bridgeObjectRetain_n();
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v40 = sub_1AF420554(0, v45 + 1, 1, v40);
                    }

                    v50 = *(v40 + 2);
                    v49 = *(v40 + 3);
                    if (v50 >= v49 >> 1)
                    {
                      v40 = sub_1AF420554(v49 > 1, v50 + 1, 1, v40);
                    }

                    *(v40 + 2) = v50 + 1;
                    v41 = &v40[16 * v50];
                    *(v41 + 4) = v44;
                    *(v41 + 5) = v43;

                    v56 = v40;
                  }

                  ++v39;
                }

                while (v39 != v38);
              }

              ++v34;
              a3 = v53;
            }

            while (v34 != v54);
          }
        }
      }
    }

    else
    {
    }

    return v56;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1AF790DD0(uint64_t result)
{
  v1 = *result;
  if (*(*result + 40) == 1)
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v4 = *(*(v1 + 104) + 16);

    v26 = v4;
    if (v4)
    {
      v6 = 0;
      v24 = v5 + 32;
      v25 = v1;
      do
      {
        v7 = (v24 + 16 * v6);
        v9 = *v7;
        v8 = v7[1];
        v10 = *(v1 + 24);

        v11 = sub_1AF790A30(v9, v8, v10);
        v12 = *(v11 + 2);
        if (v12)
        {
          v13 = (v11 + 40);
          do
          {
            v14 = *(v13 - 1);
            v15 = *v13;

            sub_1AF6B0504(v14, v15);

            v13 += 2;
            --v12;
          }

          while (v12);
        }

        ++v6;
        sub_1AF6B0504(v9, v8);

        v1 = v25;
      }

      while (v6 != v26);
      v3 = v29;
    }

    v16 = *(v3 + 16);
    if (v16)
    {
      v17 = (v3 + 16 * v16 + 24);
      do
      {
        v19 = *(v17 - 1);
        v18 = *v17;

        if ((sub_1AF790800(v19, v18, v2) & 1) == 0)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v27 = 0;
          v28 = 0xE000000000000000;
          sub_1AFDFE218();

          v27 = 0xD00000000000001ALL;
          v28 = 0x80000001AFF34660;
          MEMORY[0x1B2718AE0](v19, v18);
          MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF34680);
          v21 = v27;
          v20 = v28;
          v22 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v23 = v22;
            swift_once();
            v22 = v23;
          }

          v27 = 0;
          sub_1AF0D4F18(v22, &v27, v21, v20);
        }

        v17 -= 2;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t sub_1AF791074(void *a1)
{
  sub_1AF7FDC2C(0x6C706D6554657375, 0xEB00000000657461, &v62);
  v2 = MEMORY[0x1E69E7CA0];
  if (v63)
  {
    if (swift_dynamicCast() & 1) != 0 && (v73)
    {
      sub_1AF786F68(1, &v62);
      if (!*(&v62 + 1))
      {
        v10 = 0;
        v57 = 0;
        v6 = 0;
        goto LABEL_52;
      }

      v52 = *(&v62 + 1);
      v53 = v62;
      v54 = v64;
      *&v55 = v66;
      *(&v55 + 1) = v65;
      v3 = v68;
      v77 = v67;
      v78[0] = v68;
      if (v68)
      {
        sub_1AF8D3CBC(*(v68 + 168));
        if (v5)
        {
          v6 = v4;
          sub_1AF7A7CEC(v78, &v73, &qword_1EB63EA70, _s7ContextCMa);
          sub_1AF7A7CEC(v78, &v73, &qword_1EB63EA70, _s7ContextCMa);
        }

        else
        {
          sub_1AF7A7CEC(v78, &v73, &qword_1EB63EA70, _s7ContextCMa);
          sub_1AF7A7CEC(v78, &v73, &qword_1EB63EA70, _s7ContextCMa);
          v6 = 0;
        }

        sub_1AF8D3CBC(*(v3 + 176));
        v10 = v16;
        sub_1AF7A7C7C(v78, &qword_1EB63EA70, _s7ContextCMa);
      }

      else
      {
        v10 = 0;
        v6 = 0;
      }

      v75 = MEMORY[0x1E69E6158];
      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v73, &v69);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v73);
      sub_1AF449D40(&v69, &v73);
      swift_dynamicCast();
      if (__PAIR128__(v59[0], v59[1]) == v55)
      {
      }

      else
      {
        v17 = sub_1AFDFEE28();

        if ((v17 & 1) == 0)
        {
          v18 = BYTE7(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v18 = *(&v55 + 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {
            v75 = MEMORY[0x1E69E6158];
            *&v73 = 0;
            *(&v73 + 1) = 0xE000000000000000;
            sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v73, &v69);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v73);
            sub_1AF449D40(&v69, &v73);
            swift_dynamicCast();
            sub_1AF7FB48C(&v69);
            v19 = v69;
            v20 = v72;
            v47 = *(&v69 + 1);
            v48 = v71;
            v49 = v70;

            sub_1AF7FB48C(&v73);
            v21 = v74;
            v50 = v75;
            v51 = v76;
            v56 = *(&v73 + 1);
            v22 = 0xE700000000000000;
            v23 = 0x6E69746C697542;
            v46 = v73;
            if (v19 != 1)
            {
              v23 = 1919251285;
              v22 = 0xE400000000000000;
            }

            if (v19)
            {
              v24 = v23;
            }

            else
            {
              v24 = 0x6C61636F4CLL;
            }

            if (v19)
            {
              v25 = v22;
            }

            else
            {
              v25 = 0xE500000000000000;
            }

            MEMORY[0x1B2718AE0](v24, v25);

            MEMORY[0x1B2718AE0](v47, v49);
            MEMORY[0x1B2718AE0](v48, v20);

            v59[0] = 0;
            v59[1] = 0xE000000000000000;
            if (v46)
            {
              if (v46 == 1)
              {
                v26 = 0x6E69746C697542;
              }

              else
              {
                v26 = 1919251285;
              }

              if (v46 == 1)
              {
                v27 = 0xE700000000000000;
              }

              else
              {
                v27 = 0xE400000000000000;
              }
            }

            else
            {
              v27 = 0xE500000000000000;
              v26 = 0x6C61636F4CLL;
            }

            MEMORY[0x1B2718AE0](v26, v27);

            MEMORY[0x1B2718AE0](v56, v21);
            MEMORY[0x1B2718AE0](v50, v51);

            v57 = a1[3];
            v61 = *v59;
            sub_1AF4486E4();

            v29 = MEMORY[0x1E69E6158];
            v30 = sub_1AFDFDEB8();
            v32 = v31;

            a1[3] = v30;
            a1[4] = v32;

            v60 = v29;
            v59[0] = *(&v55 + 1);
            v59[1] = v55;

            sub_1AF7FDB64(1701667182, 0xE400000000000000, v59);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
            v60 = v29;
            v59[0] = v53;
            v59[1] = v52;

            sub_1AF7FDB64(0x6574616C706D6574, 0xEC000000656D614ELL, v59);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
            *v59 = v77;
            *&v58[0] = 0x7C72657355;
            *(&v58[0] + 1) = 0xE500000000000000;
            *&v61 = 0;
            *(&v61 + 1) = 0xE000000000000000;
            v33 = sub_1AFDFDEB8();
            v60 = v29;
            v59[0] = v33;
            v59[1] = v34;
            sub_1AF7FDB64(0x6C6562616CLL, 0xE500000000000000, v59);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);

            if (v54)
            {
LABEL_45:
              v28 = sub_1AFDFEE28();

              if ((v28 & 1) == 0)
              {
                sub_1AF7A7C7C(v78, &qword_1EB63EA70, _s7ContextCMa);
                sub_1AF7A2FA4(&v62, &qword_1EB63EA78, &_s8TemplateVN);
                if (v3)
                {
                  goto LABEL_62;
                }

                goto LABEL_52;
              }

LABEL_51:
              v35 = MEMORY[0x1E69E6530];
              v60 = MEMORY[0x1E69E6530];
              v59[0] = 1;
              sub_1AF7FDB64(0x6E4F646165725F5FLL, 0xEA0000000000796CLL, v59);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
              v60 = v35;
              v59[0] = 1;
              sub_1AF7FDB64(0xD000000000000012, 0x80000001AFF34640, v59);
              sub_1AF7A2FA4(&v62, &qword_1EB63EA78, &_s8TemplateVN);
              sub_1AF7A7C7C(v78, &qword_1EB63EA70, _s7ContextCMa);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
              if (v3)
              {
                goto LABEL_62;
              }

LABEL_52:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v59[0] = 0;
              v59[1] = 0xE000000000000000;
              sub_1AFDFE218();
              v61 = *v59;
              MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF345F0);
              v60 = MEMORY[0x1E69E6158];
              v59[0] = 0;
              v59[1] = 0xE000000000000000;
              sub_1AF7FDDF0(1701667182, 0xE400000000000000, v59, v58);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v59);
              sub_1AF449D40(v58, v59);
              swift_dynamicCast();
              MEMORY[0x1B2718AE0]();

              MEMORY[0x1B2718AE0](0x2064697520, 0xE500000000000000);
              sub_1AF7FDC2C(0x6574616C706D6574, 0xEB00000000646955, v59);
              if (v60)
              {
                if (swift_dynamicCast())
                {
                  v37 = *(&v58[0] + 1);
                  v36 = *&v58[0];
LABEL_59:
                  MEMORY[0x1B2718AE0](v36, v37);

                  MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF34610);

                  v39 = sub_1AF7827B0(v38);

                  v40 = MEMORY[0x1B2718E40](v39, MEMORY[0x1E69E6158]);
                  v42 = v41;

                  MEMORY[0x1B2718AE0](v40, v42);

                  v43 = v61;
                  v44 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    v45 = v44;
                    swift_once();
                    v44 = v45;
                  }

                  v59[0] = 0;
                  sub_1AF0D4F18(v44, v59, v43, *(&v43 + 1));

LABEL_62:
                  if (!v10)
                  {

                    return v57;
                  }

                  if (!v6)
                  {
                    goto LABEL_16;
                  }

                  goto LABEL_14;
                }
              }

              else
              {
                sub_1AF7A2FA4(v59, &qword_1ED726850, v2 + 8);
              }

              v37 = 0xE800000000000000;
              v36 = 0x21474E495353494DLL;
              goto LABEL_59;
            }

LABEL_50:

            goto LABEL_51;
          }
        }
      }

      v57 = 0;
      if (v54)
      {
        goto LABEL_45;
      }

      goto LABEL_50;
    }
  }

  else
  {
    sub_1AF7A2FA4(&v62, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  }

  sub_1AF8D3CBC(a1[21]);
  if (v8)
  {
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  sub_1AF8D3CBC(a1[22]);
  v10 = v9;

  if (!v6)
  {
    v57 = 0;
LABEL_16:
    v12 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v57 = 0;
LABEL_14:
  v11 = *(v6 + 80);

  v12 = *(v6 + 88);

LABEL_17:
  v13 = *(v10 + 40);
  v14 = *(v10 + 48);

  sub_1AF786B1C(a1, v11, v12, v13, v14);

  return v57;
}

uint64_t sub_1AF791BC4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {
        if (!*(v5[23] + 16))
        {
          return 0;
        }
      }

      else if (a1 != 9 || !*(v5[24] + 16))
      {
        return 0;
      }
    }

    else
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {
          if (*(v5[22] + 16))
          {

            sub_1AF419914(a2, a3);
            if (v10)
            {

              v11 = sub_1AF7B0A00(a4, a5);
LABEL_33:
              v17 = v11;
              goto LABEL_34;
            }

            goto LABEL_41;
          }

          return 0;
        }

        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v32[1] = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000046, 0x80000001AFF345A0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x3A49556573616220, 0xE900000000000020);
        MEMORY[0x1B2718AE0](a2, a3);
        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF34580);
        MEMORY[0x1B2718AE0](a4, a5);
        v20 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v31 = v20;
          swift_once();
          v20 = v31;
        }

        v32[0] = 0;
        sub_1AF0D4F18(v20, v32, 0, 0xE000000000000000);
LABEL_41:

        return 0;
      }

      if (!*(v5[28] + 16))
      {
        return 0;
      }
    }

LABEL_31:

    sub_1AF419914(a2, a3);
    if (v18)
    {

      v11 = sub_1AF764B14(a4, a5);
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (!*(v5[31] + 16))
      {
        return 0;
      }
    }

    else if (a1 == 3)
    {
      if (!*(v5[26] + 16))
      {
        return 0;
      }
    }

    else if (!*(v5[27] + 16))
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (a1)
  {
    if (!*(v5[30] + 16))
    {
      return 0;
    }

    goto LABEL_31;
  }

  v12 = v5[25];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = sub_1AF419914(a2, a3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_41;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v16 = sub_1AF764B14(a4, a5);
  if (v16)
  {
    v17 = v16;
LABEL_34:

    return v17;
  }

  v21 = *(v15 + 136);
  v22 = *(v21 + 152);
  if (!v22)
  {
    goto LABEL_55;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_55;
  }

  v24 = 0;
  while (1)
  {
    v25 = *(v22 + v24 + 32) == a4 && *(v22 + v24 + 40) == a5;
    if (v25 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v24 += 16;
    if (!--v23)
    {
      goto LABEL_55;
    }
  }

  v26 = *(v21 + 160);
  if (!v26)
  {
LABEL_55:

    return 0;
  }

  v27 = v26 + v24;
  v28 = *(v27 + 32);
  v29 = *(v27 + 40);

  v30 = sub_1AF764B14(v28, v29);

  return v30;
}

uint64_t sub_1AF791FE0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        if (*(v5[25] + 16))
        {

          sub_1AF419914(a2, a3);
          if (v11)
          {
            swift_retain_n();

            v12 = sub_1AF764C68(a4, a5);

            return v12;
          }

          goto LABEL_39;
        }

        return 0;
      }

      if (!*(v5[30] + 16))
      {
        return 0;
      }
    }

    else if (a1 == 2)
    {
      if (!*(v5[31] + 16))
      {
        return 0;
      }
    }

    else if (a1 == 3)
    {
      if (!*(v5[26] + 16))
      {
        return 0;
      }
    }

    else if (!*(v5[27] + 16))
    {
      return 0;
    }

LABEL_32:

    sub_1AF419914(a2, a3);
    if (v13)
    {

      v14 = sub_1AF764C68(a4, a5);
LABEL_34:
      v12 = v14;

      return v12;
    }

LABEL_39:

    return 0;
  }

  if (a1 > 7u)
  {
    if (a1 == 8)
    {
      if (!*(v5[23] + 16))
      {
        return 0;
      }
    }

    else if (a1 != 9 || !*(v5[24] + 16))
    {
      return 0;
    }

    goto LABEL_32;
  }

  if (a1 == 5)
  {
    if (!*(v5[28] + 16))
    {
      return 0;
    }

    goto LABEL_32;
  }

  if (a1 == 6)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v18[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF34530);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x3A49556573616220, 0xE900000000000020);
    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF34580);
    MEMORY[0x1B2718AE0](a4, a5);
    v10 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v17 = v10;
      swift_once();
      v10 = v17;
    }

    v18[0] = 0;
    sub_1AF0D4F18(v10, v18, 0, 0xE000000000000000);
    goto LABEL_39;
  }

  if (*(v5[21] + 16))
  {

    sub_1AF419914(a2, a3);
    if (v16)
    {

      v14 = sub_1AF7AF5BC(a4, a5);
      goto LABEL_34;
    }

    goto LABEL_39;
  }

  return 0;
}

void *sub_1AF792358(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = v1;

  v5 = sub_1AF7A24A4(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1AFC8604C(*(v5 + 16), 0);
    sub_1AFC871B8(&v44, (v7 + 4), v6, v5);
    sub_1AF0FBB14();
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v44 = v7;
  sub_1AF782220(&v44);
  v9 = v44[2];
  v43 = v44;

  if (v9)
  {
    v10 = v43 + 5;
    do
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      v14 = sub_1AFDFD188();

      if (v14)
      {
        sub_1AFDFD048();
        sub_1AFDFD078();
        v15 = sub_1AFDFD1F8();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v13 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
        v12 = v22;
      }

      v11 = *(v2 + 136);

      sub_1AF769A18(v13, v12, v11);

      v10 += 13;
      --v9;
    }

    while (v9);
  }

  v8 = v43;

  if (*(a1 + 16))
  {

    v24 = sub_1AF7A24A4(v23);

    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = sub_1AFC8604C(*(v24 + 16), 0);
      sub_1AFC871B8(&v44, (v26 + 4), v25, v24);
      sub_1AF0FBB14();
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    v44 = v26;
    sub_1AF782220(&v44);
    v27 = v44[2];
    v42 = v44;

    if (v27)
    {
      v28 = v42 + 5;
      do
      {
        v31 = *(v28 - 1);
        v30 = *v28;
        v32 = sub_1AFDFD188();

        if (v32)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v33 = sub_1AFDFD1F8();
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v31 = MEMORY[0x1B27189E0](v33, v35, v37, v39);
          v30 = v40;
        }

        v29 = *(v2 + 136);

        sub_1AF76AA44(v31, v30, v29);

        v28 += 13;
        --v27;
      }

      while (v27);
    }

    return v43;
  }

  return v8;
}

uint64_t sub_1AF7927A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (a2 + 40);
      do
      {
        v10 = *(v6 - 1);
        v9 = *v6;
        v11 = sub_1AFDFD188();

        if (v11)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v12 = sub_1AFDFD1F8();
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v10 = MEMORY[0x1B27189E0](v12, v14, v16, v18);
          v9 = v19;
        }

        v7 = *(v3 + 136);

        sub_1AF769A18(v10, v9, v7);

        v6 += 13;
        --v5;
      }

      while (v5);
    }
  }

  if (a3)
  {
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = 0xEB0000000074754FLL;
      v22 = 0x6E657474616C662ELL;
      v23 = (a3 + 40);
      do
      {
        v26 = *(v23 - 1);
        v25 = *v23;
        v27 = sub_1AFDFD188();

        if (v27)
        {
          sub_1AFDFD048();
          sub_1AFDFD078();
          v28 = sub_1AFDFD1F8();
          v30 = v29;
          v31 = v4;
          v32 = v22;
          v33 = v21;
          v35 = v34;
          v37 = v36;

          v38 = v35;
          v21 = v33;
          v22 = v32;
          v4 = v31;
          v26 = MEMORY[0x1B27189E0](v28, v30, v38, v37);
          v25 = v39;
        }

        v24 = *(v4 + 136);

        sub_1AF76AA44(v26, v25, v24);

        v23 += 13;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t sub_1AF792A90()
{
  sub_1AF7A4728(0, &qword_1EB63E860, _s11ContextExitCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7BB0();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 176);

      v3 = v4;
    }

    *(v0 + 176) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF792CB8()
{
  sub_1AF7A4728(0, &qword_1EB63E878, _s12ContextEntryCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7AE4();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 168);

      v3 = v4;
    }

    *(v0 + 168) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF792EE8()
{
  sub_1AF7A4728(0, &qword_1EB63E8A8, _s20ArraySequenceSnippetCMa);
  v16 = 5;
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7A18();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v15[0];
    if (!v15[0])
    {
      v4 = *(v0 + 192);

      v3 = v4;
    }

    *(v0 + 192) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7)) | (v10 << 6);
      v12 = (*(v3 + 48) + 16 * v11);
      v13 = *(*(v3 + 56) + 8 * v11);
      v14 = v12[1];
      v7 &= v7 - 1;
      v15[0] = *v12;
      v15[1] = v14;
      v15[2] = v13;

      sub_1AF79C23C(v15, v0);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF7930E4(uint64_t a1, void **a2)
{
  sub_1AF7A4728(0, &qword_1EB63E890, _s10SubContextCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A794C();
  result = sub_1AFDFE6E8();
  if (!v3)
  {
    v32 = a2;
    v6 = v35;
    if (!v35)
    {
      v7 = *(v2 + 184);

      v6 = v7;
    }

    *(v2 + 184) = v6;

    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
LABEL_13:
      v15 = *(*(v6 + 56) + 8 * (__clz(__rbit64(v10)) | (v12 << 6)));

      v17 = sub_1AF792358(v16);
      v33 = v18;
      v34 = v17;
      v19 = sub_1AF791074(v15);
      if (v20)
      {
        v23 = v19;
        v24 = v20;
        v30 = v22;
        v31 = v21;
        v25 = *v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1AF42533C(0, v25[2] + 1, 1, v25);
        }

        v27 = v25[2];
        v26 = v25[3];
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v29 = sub_1AF42533C(v26 > 1, v27 + 1, 1, v25);
          v28 = v27 + 1;
          v25 = v29;
        }

        v25[2] = v28;
        v13 = &v25[4 * v27];
        v13[4] = v23;
        v13[5] = v24;
        v13[6] = v31;
        v13[7] = v30;
        *v32 = v25;
      }

      v10 &= v10 - 1;
      sub_1AF7927A8(v15, v34, v33);

      sub_1AF7A5914(v15);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (v12 + 1 >= v11)
      {
        break;
      }

      v10 = *(v6 + 8 * v12++ + 72);
      if (v10)
      {
        v12 = v14;
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t sub_1AF7933AC()
{
  sub_1AF7A4728(0, &qword_1EB63E8D0, _s17CustomCodeSnippetCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7880();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 208);

      v3 = v4;
    }

    *(v0 + 208) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF7935DC()
{
  sub_1AF7A4728(0, &qword_1EB63E928, _s15VariableSnippetCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A77B4();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 240);

      v3 = v4;
    }

    *(v0 + 240) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF79380C()
{
  sub_1AF7A4728(0, &qword_1EB63E940, _s24VariableReferenceSnippetCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A76E8();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 248);

      v3 = v4;
    }

    *(v0 + 248) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF793A3C()
{
  sub_1AF7A4728(0, &qword_1EB63E8E8, _s17TypedArraySnippetCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A761C();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 216);

      v3 = v4;
    }

    *(v0 + 216) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF793C6C()
{
  sub_1AF7A4728(0, &qword_1EB63E900, _s19StaticSwitchSnippetCMa);
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7550();
  result = sub_1AFDFE6E8();
  if (!v1)
  {
    v3 = v16;
    if (!v16)
    {
      v4 = *(v0 + 224);

      v3 = v4;
    }

    *(v0 + 224) = v3;

    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(*(v3 + 56) + 8 * (v11 | (v10 << 6)));

      v14 = sub_1AF792358(v13);
      sub_1AF7927A8(v12, v14, v15);

      sub_1AF788F8C(v12, 1);
      sub_1AF7A5914(v12);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        break;
      }

      v7 = *(v3 + 8 * v9++ + 72);
      if (v7)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t sub_1AF793E9C()
{
  v2 = sub_1AF432818(MEMORY[0x1E69E7CC0]);
  sub_1AF7A38D8();
  v23 = 10;
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A3938(&qword_1EB63E9D0, sub_1AF7A7420);
  sub_1AFDFE6E8();
  if (v1)
  {
  }

  v19 = v0;
  if (v20)
  {

    v2 = v20;
  }

  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (v2[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = v2[7] + 56 * v11;
    v17 = *(v15 + 16);
    v16 = *(v15 + 32);
    v18 = *v15;
    v22 = *(v15 + 48);
    v21[1] = v17;
    v21[2] = v16;
    v21[0] = v18;

    sub_1AF7A7474(v21, &v20);
    sub_1AF79C734(v13, v14, v21, v19);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      break;
    }

    v6 = v2[v8++ + 9];
    if (v6)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1AF794108(uint64_t *a1)
{
  v2 = *(v1 + 288);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v52 = v2;
  v53 = v6;
  while (v5)
  {
LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v2 + 48) + 16 * v10);
    v55 = *v11;
    v60 = v11[1];
    v12 = (*(v2 + 56) + 56 * v10);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v56 = v12[4];
    v57 = v13;
    v58 = v12[5];
    v59 = v12[6];
    v17 = qword_1F2500378;
    v18 = unk_1F2500380;
    v19 = *v12 == *aMath_2 && v13 == unk_1F2500370;
    if (v19 || (sub_1AFDFEE28()) && (v16 == v17 ? (v20 = v15 == v18) : (v20 = 0), v20 || (sub_1AFDFEE28()) || ((v21 = qword_1F2500398, v22 = unk_1F25003A0, v14 == *aMath_3) ? (v23 = v13 == unk_1F2500390) : (v23 = 0), (v23 || (sub_1AFDFEE28()) && (v16 == v21 ? (v24 = v15 == v22) : (v24 = 0), v24 || (sub_1AFDFEE28())))
    {

      sub_1AF7F42EC(1, v14, v13, v16, v15, v56, v58);
      v26 = v25;
      v28 = v27;

      if (v28)
      {
        v36 = sub_1AF787F94(v26, v28);
        v37 = v36;
        if (v59)
        {
          v2 = v52;
          if (!v36[2])
          {
            v36[2] = sub_1AF432414(MEMORY[0x1E69E7CC0]);
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v37[2];
          v37[2] = 0x8000000000000000;
          sub_1AF7A6008(v59, sub_1AF7A2CE4, 0, isUniquelyReferenced_nonNull_native, &v61);

          v37[2] = v61;
        }

        else
        {
          v2 = v52;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1AF420554(0, *(v51 + 2) + 1, 1, v51);
        }

        v40 = *(v51 + 2);
        v39 = *(v51 + 3);
        if (v40 >= v39 >> 1)
        {
          v51 = sub_1AF420554(v39 > 1, v40 + 1, 1, v51);
        }

        *(v51 + 2) = v40 + 1;
        v41 = &v51[16 * v40];
        *(v41 + 4) = v55;
        *(v41 + 5) = v60;
        v42 = v37[4];
        v49 = v37[3];

        v43 = swift_isUniquelyReferenced_nonNull_native();
        v61 = *a1;
        sub_1AF854CE8(v49, v42, v55, v60, v43);

        *a1 = v61;

        v6 = v53;
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v61 = 0;
        v62 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002FLL, 0x80000001AFF34480);
        MEMORY[0x1B2718AE0](v14, v13);
        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v16, v15);
        MEMORY[0x1B2718AE0](58, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v56, v58);
        v30 = v61;
        v29 = v62;
        v31 = sub_1AFDFDA08();
        v6 = v53;
        if (qword_1ED731058 != -1)
        {
          v44 = v31;
          swift_once();
          v31 = v44;
        }

        v61 = 0;
        sub_1AF0D4F18(v31, &v61, v30, v29);

        v2 = v52;
      }
    }

    else
    {
      v32 = qword_1ED730EA0;

      if (v32 != -1)
      {
        swift_once();
      }

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1AFDFE218();
      v68 = v61;
      v69 = v62;
      MEMORY[0x1B2718AE0](0xD000000000000032, 0x80000001AFF344B0);
      MEMORY[0x1B2718AE0](v55, v60);
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      v61 = v14;
      v62 = v57;
      v63 = v16;
      v64 = v15;
      v65 = v56;
      v66 = v58;
      v67 = v59;
      sub_1AFDFE458();
      v34 = v68;
      v33 = v69;
      v35 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v45 = v35;
        swift_once();
        v35 = v45;
      }

      v61 = 0;
      sub_1AF0D4F18(v35, &v61, v34, v33);
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7++ + 72);
    if (v5)
    {
      v7 = v8;
      goto LABEL_8;
    }
  }

  if (*(v51 + 2))
  {

    v47 = sub_1AF7A64F4(v46, v51);

    *(v54 + 288) = v47;
  }
}

uint64_t sub_1AF7948B8(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  sub_1AF0D4E74();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFC298();
  v145 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AF43DEFC(MEMORY[0x1E69E7CC0]);
  sub_1AF7A71A0();
  LOBYTE(v122) = 8;
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  sub_1AF7A7200();
  sub_1AFDFE6E8();
  if (v2)
  {
  }

  v111 = v7;
  v14 = v145;
  v113 = v11;
  v110 = v8;
  v15 = v125[0];
  if (v125[0])
  {
  }

  else
  {
    v15 = v12;
  }

  sub_1AF432C7C(MEMORY[0x1E69E7CC0]);

  sub_1AF7A4728(0, &qword_1EB63E988, _s11MetadataSetCMa);
  LOBYTE(v122) = 9;
  sub_1AF7A72CC();
  sub_1AFDFE6E8();
  v102[0] = 0;
  if (v125[0])
  {
    v106 = v125[0];
  }

  else
  {
    v106 = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
  }

  v109 = v4;
  v16 = -1 << *(v15 + 32);
  v17 = ~v16;
  v18 = v15[8];
  v19 = -v16;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v139 = v15;
  v140 = v15 + 8;
  v141 = v17;
  v142 = 0;
  v143 = v20 & v18;
  v144 = 0;
  v103 = "__hasMissingAssignment";
  v108 = (v14 + 32);
  v105 = "): unable to connect ";
  v104 = "\n    assignments: ";
  v102[1] = v15;

  v107 = xmmword_1AFE431C0;
  while (1)
  {
    sub_1AF7820F4(v125);
    v23 = v125[1];
    v24 = v126;
    v25 = v127;
    v138[0] = *v128;
    *(v138 + 3) = *&v128[3];
    v26 = v130;
    v28 = v131;
    v27 = v132;
    v29 = v133;
    v137[0] = *v134;
    *(v137 + 3) = *&v134[3];
    if (!v126)
    {
      break;
    }

    v30 = v136;
    *v128 = v138[0];
    *&v128[3] = *(v138 + 3);
    v117 = v129;
    *v134 = v137[0];
    *&v134[3] = *(v137 + 3);
    v118 = v135;
    sub_1AF7AC220(v125, &v122, sub_1AF7A7398);

    v145 = v30;

    v31 = v114;
    v32 = *(v114 + 16);

    v119 = v26;
    v116 = v23;
    v120 = v28;
    v121 = v24;
    if (v32)
    {

      v33 = sub_1AF419914(v23, v24);
      v35 = v34;

      if (v35)
      {

        v36 = (*(v31 + 56) + 16 * v33);
        v37 = *v36;
        v25 = 8;
        v24 = v36[1];
        v38 = v120;
        v39 = v27;
      }

      else
      {
        if (!*(v31 + 16))
        {
          v37 = v23;
          v38 = v120;
          v46 = v27;
          v39 = v27;
          goto LABEL_26;
        }

        v40 = v31;
        v41 = v120;
        v42 = sub_1AF419914(v120, v27);
        v44 = v43;

        if ((v44 & 1) == 0)
        {
          v37 = v23;
          v24 = v121;
          v38 = v41;
          v39 = v27;
          v46 = v27;
          goto LABEL_26;
        }

        v45 = (*(v40 + 56) + 16 * v42);
        v38 = *v45;
        v29 = 8;
        v37 = v23;
        v24 = v121;
        v39 = v45[1];
      }
    }

    else
    {
      v37 = v23;
      v38 = v28;
      v39 = v27;
    }

    v46 = v27;

LABEL_26:
    v47 = v29;
    v48 = v115;
    v49 = sub_1AF791FE0(v47, v38, v39, v118, v145);

    v50 = v119;
    v51 = sub_1AF791BC4(v25, v37, v24, v117, v119);

    if (v49)
    {
      v52 = v113;
      v53 = v121;
      if (v51)
      {
        v54 = v49;

        v55 = v106;
        if (v106[2])
        {
          v56 = v51;
          v57 = *(v51 + 48);
          v21 = v56;
          v58 = *(v56 + 40);

          v59 = sub_1AF419914(v58, v57);
          v61 = v60;

          if (v61)
          {
            v62 = *(*(v55[7] + 8 * v59) + 16);
            if (v62)
            {
              v63 = *(v62 + 16);

              if (v63)
              {

                sub_1AF419914(1701536102, 0xE400000000000000);
                v22 = v64;

                goto LABEL_15;
              }
            }

            else
            {
            }

            v22 = 0;
            goto LABEL_15;
          }
        }

        else
        {
          v21 = v51;
        }

        v22 = 0;
LABEL_15:
        sub_1AF7893A8(v54, v21, v22 & 1);

        goto LABEL_16;
      }

      v112 = v49;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v122 = 0;
      v123 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6445206870617247, 0xEE002820726F7469);
      v83 = *(v48 + 24);
      v84 = *(v48 + 32);

      MEMORY[0x1B2718AE0](v83, v84);

      MEMORY[0x1B2718AE0](0xD000000000000016, v103 | 0x8000000000000000);

      MEMORY[0x1B2718AE0](v116, v53);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v117, v50);

      MEMORY[0x1B2718AE0](0x206F74205DLL, 0xE500000000000000);

      MEMORY[0x1B2718AE0](v120, v46);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v85 = v145;

      MEMORY[0x1B2718AE0](v118, v85);

      v86 = v122;
      v87 = v123;
      v88 = sub_1AFDFDA18();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
      v89 = swift_allocObject();
      *(v89 + 16) = v107;
      *(v89 + 56) = MEMORY[0x1E69E6158];
      *(v89 + 64) = sub_1AF0D544C();
      *(v89 + 32) = v86;
      *(v89 + 40) = v87;

      sub_1AFDFC4C8();

      sub_1AFDFC288();
      v90 = v109[12];
      v91 = v109[16];
      v92 = v52;
      v93 = v111;
      v94 = v86;
      v95 = &v111[v109[20]];
      (*v108)(v111, v92, v110);
      *(v93 + v90) = v88;
      *(v93 + v91) = 0;
      *v95 = v94;
      *(v95 + 1) = v87;

      sub_1AFDFC608();

      sub_1AF7A45D8(v93, sub_1AF0D4E74);

      v96 = v115;
      if (*(*(v115 + 200) + 16))
      {

        sub_1AF419914(v120, v46);
        v97 = v116;
        if (v98)
        {

          v124 = MEMORY[0x1E69E6530];
          v122 = 1;
          sub_1AF7FDB64(0xD000000000000016, v105 | 0x8000000000000000, &v122);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v122);
        }

        else
        {
        }
      }

      else
      {

        v97 = v116;
      }

      v100 = v121;
      if (*(*(v96 + 200) + 16))
      {

        sub_1AF419914(v97, v100);
        if ((v101 & 1) == 0)
        {

          goto LABEL_70;
        }

        v124 = MEMORY[0x1E69E6530];
        v122 = 1;
        sub_1AF7FDB64(0xD000000000000016, v105 | 0x8000000000000000, &v122);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v122);
      }

      else
      {

LABEL_70:

LABEL_16:
      }
    }

    else
    {
      v112 = v51;
      v65 = v113;
      v66 = v121;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v122 = 0;
      v123 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6445206870617247, 0xEE002820726F7469);
      v67 = *(v48 + 24);
      v68 = *(v48 + 32);

      MEMORY[0x1B2718AE0](v67, v68);

      MEMORY[0x1B2718AE0](0xD000000000000015, v104 | 0x8000000000000000);

      MEMORY[0x1B2718AE0](v116, v66);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);

      MEMORY[0x1B2718AE0](v117, v50);

      MEMORY[0x1B2718AE0](0x5B206F7420, 0xE500000000000000);

      MEMORY[0x1B2718AE0](v120, v46);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v69 = v145;

      MEMORY[0x1B2718AE0](v118, v69);

      MEMORY[0x1B2718AE0](93, 0xE100000000000000);
      v70 = v122;
      v71 = v123;
      v72 = sub_1AFDFDA18();
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      if (qword_1ED730E98 != -1)
      {
        swift_once();
      }

      sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
      v73 = swift_allocObject();
      *(v73 + 16) = v107;
      *(v73 + 56) = MEMORY[0x1E69E6158];
      *(v73 + 64) = sub_1AF0D544C();
      *(v73 + 32) = v70;
      *(v73 + 40) = v71;

      sub_1AFDFC4C8();

      sub_1AFDFC288();
      v74 = v109[12];
      v75 = v109[16];
      v76 = v65;
      v77 = v111;
      v78 = &v111[v109[20]];
      (*v108)(v111, v76, v110);
      *(v77 + v74) = v72;
      *(v77 + v75) = 0;
      *v78 = v70;
      v78[1] = v71;

      sub_1AFDFC608();

      sub_1AF7A45D8(v77, sub_1AF0D4E74);

      v79 = v115;
      if (*(*(v115 + 200) + 16))
      {

        sub_1AF419914(v120, v46);
        v80 = v116;
        v81 = v121;
        if (v82)
        {

          v124 = MEMORY[0x1E69E6530];
          v122 = 1;
          sub_1AF7FDB64(0xD000000000000016, v105 | 0x8000000000000000, &v122);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v122);
        }

        else
        {
        }
      }

      else
      {

        v80 = v116;
        v81 = v121;
      }

      if (*(*(v79 + 200) + 16))
      {

        sub_1AF419914(v80, v81);
        if ((v99 & 1) == 0)
        {

          goto LABEL_60;
        }

        v124 = MEMORY[0x1E69E6530];
        v122 = 1;
        sub_1AF7FDB64(0xD000000000000016, v105 | 0x8000000000000000, &v122);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v122);
      }

      else
      {
LABEL_60:
      }
    }
  }

  sub_1AF0FBB14();
}

uint64_t sub_1AF795AA0()
{
  v1 = *(v0 + 176);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v4 &= v4 - 1;

        sub_1AF7A6B30(v8);
      }

      while (v4);
      continue;
    }
  }
}

uint64_t sub_1AF795BA4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1AFDFEE28() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1AFDFEE28() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AF795CE8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1AF782B8C();
  }

  return result;
}

void *sub_1AF795D38(uint64_t a1)
{
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 168) = sub_1AF432588(MEMORY[0x1E69E7CC0]);
  *(v1 + 176) = sub_1AF4325A0(v3);
  *(v1 + 184) = sub_1AF4325B8(v3);
  *(v1 + 192) = sub_1AF4325D0(v3);
  *(v1 + 200) = sub_1AF4325E8(v3);
  *(v1 + 208) = sub_1AF432600(v3);
  *(v1 + 216) = sub_1AF432618(v3);
  *(v1 + 224) = sub_1AF432630(v3);
  *(v1 + 232) = sub_1AF432648(v3);
  *(v1 + 240) = sub_1AF432660(v3);
  *(v1 + 248) = sub_1AF432678(v3);
  *(v1 + 256) = sub_1AF432690(v3);
  *(v1 + 264) = sub_1AF4327E8(v3);
  *(v1 + 272) = sub_1AF432800(v3);
  *(v1 + 280) = sub_1AF432800(v3);
  *(v1 + 288) = sub_1AF432818(v3);
  v4 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID;
  v5 = sub_1AFDFC318();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = (v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_switchCaseValuePrefix);
  *v6 = 0xD000000000000010;
  v6[1] = 0x80000001AFF34160;
  v7 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_templateRemapping;
  v8 = sub_1AF432980(&unk_1F24F7B08);
  sub_1AF7A45D8(&unk_1F24F7B28, sub_1AF757298);
  *(v1 + v7) = v8;
  v9 = sub_1AF76B438(0);

  sub_1AF7828AC(a1);

  return v9;
}

void *sub_1AF795F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 160) = 1;
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + 168) = sub_1AF432588(MEMORY[0x1E69E7CC0]);
  *(v3 + 176) = sub_1AF4325A0(v7);
  *(v3 + 184) = sub_1AF4325B8(v7);
  *(v3 + 192) = sub_1AF4325D0(v7);
  *(v3 + 200) = sub_1AF4325E8(v7);
  *(v3 + 208) = sub_1AF432600(v7);
  *(v3 + 216) = sub_1AF432618(v7);
  *(v3 + 224) = sub_1AF432630(v7);
  *(v3 + 232) = sub_1AF432648(v7);
  *(v3 + 240) = sub_1AF432660(v7);
  *(v3 + 248) = sub_1AF432678(v7);
  *(v3 + 256) = sub_1AF432690(v7);
  *(v3 + 264) = sub_1AF4327E8(v7);
  *(v3 + 272) = sub_1AF432800(v7);
  *(v3 + 280) = sub_1AF432800(v7);
  *(v3 + 288) = sub_1AF432818(v7);
  v8 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID;
  v9 = sub_1AFDFC318();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  v10 = (v3 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_switchCaseValuePrefix);
  *v10 = 0xD000000000000010;
  v10[1] = 0x80000001AFF34160;
  v11 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_templateRemapping;
  v12 = sub_1AF432980(&unk_1F24F7B48);
  sub_1AF7A45D8(&unk_1F24F7B68, sub_1AF757298);
  *(v3 + v11) = v12;
  v13 = sub_1AF76B46C(a1, a2, 0);

  sub_1AF7828AC(a3);

  return v13;
}

uint64_t sub_1AF796110()
{

  sub_1AF7A7C7C(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
}

uint64_t sub_1AF796208()
{
  v1 = MEMORY[0x1E69695A8];
  sub_1AF7A4574(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7A7CEC(v0 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID, v5, &qword_1ED72DF30, v1);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1AF7A7C7C(v5, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v11 = *(v0 + 136);
    v12 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock;
    v13 = *(v11 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration9Resources_lock);

    [v13 lock];
    v14 = sub_1AF3D86F8(v10);
    sub_1AF0FB8EC(v14);
    [*(v11 + v12) unlock];

    (*(v7 + 8))(v10, v6);
  }

  v15 = sub_1AF76CB54();

  sub_1AF7A7C7C(v15 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID, &qword_1ED72DF30, MEMORY[0x1E69695A8]);

  return v15;
}

uint64_t sub_1AF796518()
{
  sub_1AF796208();

  return swift_deallocClassInstance();
}

uint64_t _s7ContextCMa()
{
  result = qword_1EB63E808;
  if (!qword_1EB63E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AF7965C0()
{
  sub_1AF7A4574(319, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AF7966D8()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF34280);
  _s12ContextEntryCMa();

  v0 = sub_1AFDFCC18();
  v2 = v1;

  MEMORY[0x1B2718AE0](v0, v2);

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF342A0);
  _s11ContextExitCMa();

  v3 = sub_1AFDFCC18();
  v5 = v4;

  MEMORY[0x1B2718AE0](v3, v5);

  MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF342C0);
  _s10SubContextCMa();

  v6 = sub_1AFDFCC18();
  v8 = v7;

  MEMORY[0x1B2718AE0](v6, v8);

  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF342E0);
  _s15VariableSnippetCMa();

  v9 = sub_1AFDFCC18();
  v11 = v10;

  MEMORY[0x1B2718AE0](v9, v11);

  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF34300);
  _s24VariableReferenceSnippetCMa();

  v12 = sub_1AFDFCC18();
  v14 = v13;

  MEMORY[0x1B2718AE0](v12, v14);

  MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF34320);
  _s20ArraySequenceSnippetCMa();

  v15 = sub_1AFDFCC18();
  v17 = v16;

  MEMORY[0x1B2718AE0](v15, v17);

  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF34340);
  _s7ContextCMa();

  v18 = sub_1AFDFCC18();
  v20 = v19;

  MEMORY[0x1B2718AE0](v18, v20);

  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF34360);
  _s11CodeSnippetCMa();

  v21 = sub_1AFDFCC18();
  v23 = v22;

  MEMORY[0x1B2718AE0](v21, v23);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF34380);
  _s17CustomCodeSnippetCMa();

  v24 = sub_1AFDFCC18();
  v26 = v25;

  MEMORY[0x1B2718AE0](v24, v26);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF343A0);
  _s17TypedArraySnippetCMa();

  v27 = sub_1AFDFCC18();
  v29 = v28;

  MEMORY[0x1B2718AE0](v27, v29);

  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF343C0);
  _s19StaticSwitchSnippetCMa();

  v30 = sub_1AFDFCC18();
  v32 = v31;

  MEMORY[0x1B2718AE0](v30, v32);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF343E0);
  type metadata accessor for GraphV1CodeGeneration.BaseObject();

  v33 = sub_1AFDFCC18();
  v35 = v34;

  MEMORY[0x1B2718AE0](v33, v35);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF34400);
  sub_1AF444CB4();

  v36 = sub_1AFDFCC18();
  v38 = v37;

  MEMORY[0x1B2718AE0](v36, v38);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1AF796CE4()
{
  v1 = v0;
  sub_1AF8D3CBC(*(v0 + 168));
  if (v3)
  {
    v4 = v2;

    v5 = *(v4 + 88);

    v6 = *(v5 + 16);
    if (v6)
    {
      v42[0] = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v6, 0);
      v7 = 32;
      v8 = v42[0];
      do
      {
        v9 = *(v5 + v7);
        v10 = *(v5 + v7 + 16);
        v47 = *(v5 + v7 + 32);
        v46[0] = v9;
        v46[1] = v10;
        sub_1AF444F60(v46, v44);
        v11 = sub_1AF7FE65C();
        v13 = v12;
        sub_1AF444FBC(v46);
        v42[0] = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1AFC05CE4(v14 > 1, v15 + 1, 1);
          v8 = v42[0];
        }

        *(v8 + 16) = v15 + 1;
        v16 = v8 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        v7 += 40;
        --v6;
      }

      while (v6);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    *&v44[0] = v8;
    v19 = MEMORY[0x1E69E6158];
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v19);
    v17 = sub_1AFDFCD98();
    v18 = v20;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  sub_1AF8D3CBC(*(v1 + 176));
  if (v22)
  {
    v23 = v21;

    v24 = *(v23 + 48);

    v25 = *(v24 + 16);
    if (v25)
    {
      v41 = v17;
      v43 = MEMORY[0x1E69E7CC0];
      sub_1AFC05CE4(0, v25, 0);
      v26 = 32;
      v27 = v43;
      do
      {
        v28 = *(v24 + v26);
        v29 = *(v24 + v26 + 16);
        v45 = *(v24 + v26 + 32);
        v44[0] = v28;
        v44[1] = v29;
        sub_1AF444F60(v44, v42);
        v30 = sub_1AF7FE65C();
        v32 = v31;
        sub_1AF444FBC(v44);
        v43 = v27;
        v34 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1AFC05CE4(v33 > 1, v34 + 1, 1);
          v27 = v43;
        }

        *(v27 + 16) = v34 + 1;
        v35 = v27 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        v26 += 40;
        --v25;
      }

      while (v25);

      v17 = v41;
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v42[0] = v27;
    v38 = MEMORY[0x1E69E6158];
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v38);
    v36 = sub_1AFDFCD98();
    v37 = v39;
  }

  else
  {
    v36 = 0;
    v37 = 0xE000000000000000;
  }

  v42[0] = 40;
  v42[1] = 0xE100000000000000;
  MEMORY[0x1B2718AE0](v17, v18);

  MEMORY[0x1B2718AE0](675163433, 0xE400000000000000);
  MEMORY[0x1B2718AE0](v36, v37);

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  return v42[0];
}

uint64_t sub_1AF7970C8()
{
  v1 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v3 = sub_1AFDFBBE8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  sub_1AFDFBBC8();
  sub_1AFDFBC38();
  swift_allocObject();
  sub_1AFDFBC28();
  (*(v4 + 16))(v7, v11, v3);
  sub_1AFDFBBF8();
  v22 = v0;
  _s7ContextCMa();
  sub_1AF7A2F5C(&qword_1EB63E8C8, _s7ContextCMa);
  v14 = sub_1AFDFBC08();
  v16 = v15;
  sub_1AFDFCF58();
  sub_1AFDFCF18();
  v18 = v17;
  sub_1AF439ED8(v14, v16);

  (*(v4 + 8))(v11, v3);
  if (v18)
  {
    v19 = sub_1AF7A41B4();

    return v19;
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v12 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v20 = v12;
      swift_once();
      v12 = v20;
    }

    v22 = 0;
    sub_1AF0D4F18(v12, &v22, 0xD00000000000003FLL, 0x80000001AFF34240);
    return 0;
  }
}

uint64_t sub_1AF7973DC(uint64_t a1)
{
  v2 = v1;
  *(v1 + 160) = (*(v1 + 160) | *(*(a1 + 136) + 108)) & 1;
  result = sub_1AF774020(*(v1 + 24));
  if (v4)
  {
    MEMORY[0x1B2718AE0](result);

    v5 = *(v1 + 168);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 168) = v5;
    if ((result & 1) == 0)
    {
      result = sub_1AF420554(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
      *(v2 + 168) = result;
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      result = sub_1AF420554(v6 > 1, v7 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = 8201;
    *(v8 + 40) = 0xE200000000000000;
    *(v2 + 168) = v5;
  }

  return result;
}

uint64_t sub_1AF7974D8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 128);
  v4 = *(v3 + 16);
  v55 = v3;

  v47 = v1;
  if (v4)
  {
    v5 = (v55 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      *&v58 = 9;
      *(&v58 + 1) = 0xE100000000000000;

      MEMORY[0x1B2718AE0](v7, v6);
      v8 = v58;
      v9 = *(v2 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 128) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1AF420554(0, *(v9 + 2) + 1, 1, v9);
        *(v2 + 128) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        *(v47 + 128) = sub_1AF420554(v11 > 1, v12 + 1, 1, v9);
      }

      v13 = *(v47 + 128);
      *(v13 + 16) = v12 + 1;
      v14 = v13 + 16 * v12;
      v2 = v47;
      *(v14 + 32) = v8;
      *(v47 + 128) = v13;
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v15 = *(*(a1 + 144) + 16);
  v44 = *(a1 + 144);

  v45 = v15;
  if (v15)
  {
    v16 = 0;
    do
    {
      v46 = v16;
      v18 = (v44 + 32 + (v16 << 6));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[3];
      v60 = v18[2];
      v61 = v21;
      v58 = v19;
      v59 = v20;
      v48 = *(v2 + 144);
      v22 = *(v48 + 16);
      if (v22)
      {
        v49 = *(&v61 + 1);
        v50 = v61;
        v51 = *(&v60 + 1);
        v52 = v60;
        v54 = *(&v59 + 1);
        v56 = v59;
        v23 = (v48 + 48);
        v24 = v58;
        while (1)
        {
          v25 = *v23;
          v26 = v23[1];
          v27 = v23[2];
          v28 = v23[3];
          v29 = v23[4];
          v30 = v23[5];
          v31 = *(v23 - 2) == v24 && *(v23 - 1) == *(&v24 + 1);
          if (v31 || (sub_1AFDFEE28() & 1) != 0)
          {
            v32 = v25 == v56 && v26 == v54;
            if (v32 || (sub_1AFDFEE28() & 1) != 0)
            {
              v33 = v27 == v52 && v28 == v51;
              if (v33 || (sub_1AFDFEE28() & 1) != 0)
              {
                v34 = v29 == v50 && v30 == v49;
                if (v34 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }
              }
            }
          }

          v23 += 8;
          if (!--v22)
          {
            goto LABEL_36;
          }
        }

        v17 = v46;
        v2 = v47;
      }

      else
      {
LABEL_36:
        sub_1AF7613E4(&v58, v57);
        v35 = v48;
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v2 = v47;
        *(v47 + 144) = v48;
        if ((v36 & 1) == 0)
        {
          v35 = sub_1AF424EC0(0, *(v48 + 16) + 1, 1, v48);
          *(v47 + 144) = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = sub_1AF424EC0(v37 > 1, v38 + 1, 1, v35);
        }

        v17 = v46;
        *(v35 + 2) = v38 + 1;
        v39 = &v35[64 * v38];
        v40 = v58;
        v41 = v59;
        v42 = v61;
        *(v39 + 4) = v60;
        *(v39 + 5) = v42;
        *(v39 + 2) = v40;
        *(v39 + 3) = v41;
        *(v47 + 144) = v35;
      }

      v16 = v17 + 1;
    }

    while (v16 != v45);
  }
}

uint64_t sub_1AF797808()
{
  v1 = v0;
  v2 = *(v0[22] + 16);
  v31 = v0[22];

  if (v2)
  {
    v3 = 0;
    v4 = "SwitchCaseValue:";
    v32 = 0x80000001AFF341A0;
    v5 = (v31 + 40);
    v36 = "SwitchCaseValue:";
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v37 = v6;
      sub_1AF782D90(v6, v7);

      v9 = v1[11];
      v8 = v1[12];

      sub_1AF6B0504(v9, v8);

      sub_1AF7FDC2C(0xD000000000000010, v4 | 0x8000000000000000, &v39);
      if (!*(&v40 + 1))
      {
        break;
      }

      sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      v10 = swift_dynamicCast();
      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }

      v12 = v44;
      v13 = v1[12];
      *&v39 = v1[11];
      *(&v39 + 1) = v13;
      MEMORY[0x1EEE9AC00](v10, v11);
      v30[2] = &v39;

      v14 = sub_1AF7B9518(sub_1AF771190, v30, v12);

      if (v14)
      {
      }

      else
      {
        v35 = v3;
        *(&v40 + 1) = MEMORY[0x1E69E6158];
        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v39, v43);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v39);
        sub_1AF449D40(v43, &v44);
        swift_dynamicCast();
        v33 = *(&v38 + 1);
        v34 = v38;
        v15 = sub_1AF762980();
        v17 = v16;
        *&v38 = 0;
        *(&v38 + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v38 = 0xD000000000000011;
        *(&v38 + 1) = v32;
        v18 = v1[11];
        v19 = v1[12];

        MEMORY[0x1B2718AE0](v18, v19);

        MEMORY[0x1B2718AE0](46, 0xE100000000000000);
        *&v39 = v37;
        *(&v39 + 1) = v7;
        *&v40 = v34;
        *(&v40 + 1) = v33;
        *&v41 = v15;
        *(&v41 + 1) = v17;
        v42 = v38;
        v45 = v39;
        v46 = v40;
        v47 = v41;
        v48 = v38;
        v20 = v1[18];
        sub_1AF51E760(&v45, v20);
        LOBYTE(v18) = v21;

        if (v18)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1[18] = v20;
          v4 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v20 = sub_1AF424EC0(0, *(v20 + 2) + 1, 1, v20);
            v1[18] = v20;
          }

          v24 = *(v20 + 2);
          v23 = *(v20 + 3);
          if (v24 >= v23 >> 1)
          {
            v1[18] = sub_1AF424EC0(v23 > 1, v24 + 1, 1, v20);
          }

          v25 = v1[18];
          *(v25 + 16) = v24 + 1;
          v26 = (v25 + (v24 << 6));
          v27 = v46;
          v26[2] = v45;
          v26[3] = v27;
          v28 = v48;
          v26[4] = v47;
          v26[5] = v28;
          v1[18] = v25;
          v3 = v35;
          goto LABEL_5;
        }

        sub_1AF761440(&v39);

        v3 = v35;
      }

      v4 = v36;
LABEL_5:
      v5 += 2;
      if (!--v2)
      {
      }
    }

    sub_1AF7A2FA4(&v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
LABEL_4:

    goto LABEL_5;
  }
}

uint64_t sub_1AF797CF0()
{

  return v0;
}

uint64_t sub_1AF797D98()
{
  sub_1AF797CF0();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF797DCC(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  v76[0] = *(*a1 + 56);
  v76[1] = v9;
  v77 = *(v8 + 88);
  sub_1AF444F60(v76, v74);
  v10 = sub_1AF7FE430();
  v12 = v11;
  result = sub_1AF444FBC(v76);
  if (v12)
  {
    return result;
  }

  v68 = a5;
  if (!a2)
  {

LABEL_5:
    *&v72[0] = v10;
    *&v74[0] = sub_1AFDFEA08();
    *(&v74[0] + 1) = v15;
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v17 = *(&v74[0] + 1);
    v16 = *&v74[0];
    goto LABEL_7;
  }

  v14 = sub_1AFDFEE28();

  if (v14)
  {
    goto LABEL_5;
  }

  v16 = 0;
  v17 = 0xE000000000000000;
LABEL_7:
  if (a2)
  {
    v18 = sub_1AFDFEE28();

    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v19 = *(v8 + 72);
  v74[0] = *(v8 + 56);
  v74[1] = v19;
  v75 = *(v8 + 88);
  sub_1AF444F60(v74, v72);
  sub_1AF7FE65C();
  sub_1AF444FBC(v74);
  v20 = sub_1AFDFD188();

  if ((v20 & 1) == 0)
  {
    v21 = *(v8 + 72);
    v72[0] = *(v8 + 56);
    v72[1] = v21;
    v73 = *(v8 + 88);
    sub_1AF444F60(v72, v70);
    if (sub_1AF7FE65C() == 0x676E69727453 && v22 == 0xE600000000000000)
    {

LABEL_15:
      sub_1AF444FBC(v72);
      goto LABEL_16;
    }

    v23 = sub_1AFDFEE28();

    if (v23)
    {
      goto LABEL_15;
    }

    v63 = sub_1AF7FE65C();
    v65 = v64;
    sub_1AF444FBC(v72);
    if (v63 == 5001813 && v65 == 0xE300000000000000)
    {
    }

    else
    {
      v66 = sub_1AFDFEE28();

      if ((v66 & 1) == 0)
      {
        v25 = 0xE100000000000000;
        v24 = 38;
        goto LABEL_17;
      }
    }
  }

LABEL_16:
  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_17:
  *&v70[0] = v16;
  *(&v70[0] + 1) = v17;
  MEMORY[0x1B2718AE0](v24, v25);

  v27 = *(v8 + 40);
  v26 = *(v8 + 48);

  v28 = sub_1AF76ED08(v27, v26);
  v30 = v29;

  MEMORY[0x1B2718AE0](v28, v30);

  v31 = v70[0];
  v32 = *(v8 + 72);
  v70[0] = *(v8 + 56);
  v70[1] = v32;
  v71 = *(v8 + 88);
  sub_1AF444F60(v70, &v69);
  sub_1AF7FE65C();
  sub_1AF444FBC(v70);
  LOBYTE(v26) = sub_1AFDFD188();

  if (v26)
  {
    v34 = *(v8 + 40);
    v33 = *(v8 + 48);

    v35 = sub_1AF78AD48(v34, v33, a2);
    v67 = a2;

    v69 = v31;
    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    v78 = v35;
    v36 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v36);

    v37 = *(&v69 + 1);
    v38 = v69;
    v39 = *a4;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000030, 0x80000001AFF347C0);
    v41 = *(*a4 + 88);
    v40 = *(*a4 + 96);

    MEMORY[0x1B2718AE0](v41, v40);

    MEMORY[0x1B2718AE0](572533794, 0xE400000000000000);
    v43 = *(v68 + 24);
    v42 = *(v68 + 32);

    MEMORY[0x1B2718AE0](v43, v42);

    MEMORY[0x1B2718AE0](572533794, 0xE400000000000000);
    v45 = *(v8 + 24);
    v44 = *(v8 + 32);

    MEMORY[0x1B2718AE0](v45, v44);

    MEMORY[0x1B2718AE0](2108450, 0xE300000000000000);
    v78 = *(*(*a4 + 128) + 16);
    v46 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v46);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v38, v37);

    v47 = 0xE100000000000000;
    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    if (v67 == 3)
    {
      v48 = 0;
    }

    else
    {
      v48 = 59;
    }

    if (v67 == 3)
    {
      v47 = 0xE000000000000000;
    }
  }

  else
  {
    v39 = *a4;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF34780);
    v50 = *(*a4 + 88);
    v49 = *(*a4 + 96);

    MEMORY[0x1B2718AE0](v50, v49);

    MEMORY[0x1B2718AE0](572533794, 0xE400000000000000);
    v52 = *(v68 + 24);
    v51 = *(v68 + 32);

    MEMORY[0x1B2718AE0](v52, v51);

    MEMORY[0x1B2718AE0](572533794, 0xE400000000000000);
    v54 = *(v8 + 24);
    v53 = *(v8 + 32);

    MEMORY[0x1B2718AE0](v54, v53);

    MEMORY[0x1B2718AE0](2108450, 0xE300000000000000);
    v78 = *(*(*a4 + 128) + 16);
    v55 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v55);

    MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v31, *(&v31 + 1));

    v47 = 0xE100000000000000;
    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    if (a2 == 3)
    {
      v48 = 0;
    }

    else
    {
      v48 = 59;
    }

    if (a2 == 3)
    {
      v47 = 0xE000000000000000;
    }
  }

  MEMORY[0x1B2718AE0](v48, v47);

  v57 = *(&v69 + 1);
  v56 = v69;
  v58 = *(v39 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v39 + 128) = v58;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v58 = sub_1AF420554(0, *(v58 + 2) + 1, 1, v58);
    *(v39 + 128) = v58;
  }

  v61 = *(v58 + 2);
  v60 = *(v58 + 3);
  if (v61 >= v60 >> 1)
  {
    v58 = sub_1AF420554(v60 > 1, v61 + 1, 1, v58);
  }

  *(v58 + 2) = v61 + 1;
  v62 = &v58[16 * v61];
  *(v62 + 4) = v56;
  *(v62 + 5) = v57;
  *(v39 + 128) = v58;
}

uint64_t sub_1AF79861C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 40);
  v8 = *(*a1 + 48);

  v9 = sub_1AF789F84(v7, v8);

  if ((v9 & 1) == 0)
  {
    return result;
  }

  v11 = *(v6 + 72);
  v47[0] = *(v6 + 56);
  v47[1] = v11;
  v48 = *(v6 + 88);
  sub_1AF444F60(v47, &v37);
  sub_1AF7FCDD4(v47, 1, &v39);
  sub_1AF444FBC(v47);
  if (!*(&v39 + 1))
  {
    return sub_1AF7A2FA4(&v39, &qword_1EB6335B0, &_s8MetadataVN);
  }

  v45[2] = v41;
  v45[3] = v42;
  v45[4] = v43;
  v46 = v44;
  v45[0] = v39;
  v45[1] = v40;
  *&v41 = *(v6 + 88);
  v12 = *(v6 + 72);
  v39 = *(v6 + 56);
  v40 = v12;
  v13 = *(v6 + 40);
  v14 = *(v6 + 48);

  sub_1AF444F60(&v39, &v37);
  v15 = sub_1AF76ED08(v13, v14);
  v17 = v16;

  v18 = sub_1AF7DBFF8(&v39, v15, v17, 0, a3);
  v20 = v19;

  sub_1AF444FBC(&v39);
  v21 = *a4;
  if (a3 > 2u)
  {
    if (a3 == 3)
    {

      v22 = sub_1AF7DD4B4(v45, v21, 0, 0, 3);
      goto LABEL_10;
    }

LABEL_9:

    v22 = sub_1AF7E0118(v45, v21, 0, 0, a3);
    goto LABEL_10;
  }

  if (a3 < 2u)
  {
    goto LABEL_9;
  }

  v22 = sub_1AF7E5CBC(v45, v21);
LABEL_10:
  v24 = v22;
  v25 = v23;

  v26 = *a4;
  v37 = 8201;
  v38 = 0xE200000000000000;

  MEMORY[0x1B2718AE0](v18, v20);

  MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v24, v25);

  if (a3 == 3)
  {
    v27 = 0;
  }

  else
  {
    v27 = 59;
  }

  if (a3 == 3)
  {
    v28 = 0xE000000000000000;
  }

  else
  {
    v28 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v27, v28);

  v29 = v37;
  v30 = v38;
  v31 = *(v26 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 128) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_1AF420554(0, *(v31 + 2) + 1, 1, v31);
    *(v26 + 128) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    *(v26 + 128) = sub_1AF420554(v33 > 1, v34 + 1, 1, v31);
  }

  sub_1AF761390(v45);
  v35 = *(v26 + 128);
  *(v35 + 16) = v34 + 1;
  v36 = v35 + 16 * v34;
  *(v36 + 32) = v29;
  *(v36 + 40) = v30;
  *(v26 + 128) = v35;
}

uint64_t sub_1AF798948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8, uint64_t a9, char **a10, void *a11)
{
  result = sub_1AF764B14(a1, a2);
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = *(a6 + 256);
  v227 = a7;
  v228 = a6;
  if (!*(v18 + 16))
  {
LABEL_20:
    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1AFE431C0;
    *(v37 + 32) = a3;
    *(v37 + 40) = a4;

    sub_1AF78A3AC(a7, v37);
    swift_setDeallocating();
    sub_1AF585778(v37 + 32);
    swift_deallocClassInstance();
    if (swift_weakLoadStrong())
    {
      v38 = v17[4];
      *&v249[0] = v17[3];
      *(&v249[0] + 1) = v38;

      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      sub_1AF7FDD44(*&v249[0], *(&v249[0] + 1), &v233);

      if (*(&v233 + 1))
      {
        v241 = v235;
        v242 = v236;
        v243 = v237;
        v244 = v238;
        v239 = v233;
        v240 = v234;
        sub_1AF4455CC(&v239, &v233);
        v39 = sub_1AF425364(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v41 >= v40 >> 1)
        {
          v39 = sub_1AF425364(v40 > 1, v41 + 1, 1, v39);
        }

        sub_1AF761390(&v239);
        *(v39 + 2) = v41 + 1;
        v42 = &v39[88 * v41];
        v43 = v234;
        *(v42 + 2) = v233;
        *(v42 + 3) = v43;
        v45 = v236;
        v44 = v237;
        v46 = v235;
        *(v42 + 14) = v238;
        *(v42 + 5) = v45;
        *(v42 + 6) = v44;
        *(v42 + 4) = v46;
LABEL_29:
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1AFE431C0;
        *(v51 + 32) = a3;
        *(v51 + 40) = a4;
        sub_1AF7AD234(0, &qword_1EB638880, &_s12MetadataTypeON, MEMORY[0x1E69E6F90]);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1AFE431C0;
        v54 = v17[7];
        v53 = v17[8];
        v55 = v17;
        v56 = v17[9];
        v58 = v55[10];
        v57 = v55[11];
        *(v52 + 32) = v54;
        v59 = v52 + 32;
        *(v52 + 40) = v53;
        *(v52 + 48) = v56;
        *(v52 + 56) = v58;
        *(v52 + 64) = v57;

        sub_1AF687F90(v54, v53);
        v60 = sub_1AF3C46D8(v39);

        sub_1AF78AFC4(v227, v51, v52, v60);
        swift_setDeallocating();
        v61 = v51 + 32;
LABEL_43:
        sub_1AF585778(v61);
        swift_deallocClassInstance();

        swift_setDeallocating();
        sub_1AF444FBC(v59);
        return swift_deallocClassInstance();
      }
    }

    else
    {
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v233 = 0u;
    }

    sub_1AF7A2FA4(&v233, &qword_1EB6335B0, &_s8MetadataVN);
    v47 = *(v17 + 9);
    v233 = *(v17 + 7);
    v234 = v47;
    *&v235 = v17[11];
    sub_1AF444F60(&v233, &v239);
    sub_1AF7FCDD4(&v233, 1, &v239);
    sub_1AF444FBC(&v233);
    v39 = sub_1AF425364(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v49 = *(v39 + 2);
    v48 = *(v39 + 3);
    if (v49 >= v48 >> 1)
    {
      v39 = sub_1AF425364(v48 > 1, v49 + 1, 1, v39);
    }

    *(v39 + 2) = v49 + 1;
    v50 = &v39[88 * v49];
    *(v50 + 4) = v241;
    *(v50 + 5) = v242;
    *(v50 + 6) = v243;
    *(v50 + 14) = v244;
    *(v50 + 2) = v239;
    *(v50 + 3) = v240;
    goto LABEL_29;
  }

  v19 = sub_1AF419914(a3, a4);
  if ((v20 & 1) == 0)
  {

    goto LABEL_20;
  }

  v21 = (*(v18 + 56) + 24 * v19);
  v23 = *v21;
  v22 = v21[1];

  v24 = *(a6 + 264);
  v225 = a4;
  if (!*(v24 + 16))
  {

    goto LABEL_32;
  }

  v25 = sub_1AF419914(v23, v22);
  if ((v26 & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_32;
  }

  v27 = *(*(v24 + 56) + 8 * v25);

  if (*v27 == _TtCO3VFX21GraphV1CodeGeneration12ParameterOut)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (*v27 != _TtCO3VFX21GraphV1CodeGeneration12ParameterOut)
  {

    swift_bridgeObjectRelease_n();

LABEL_32:
    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    v224 = xmmword_1AFE431C0;
    *(v62 + 16) = xmmword_1AFE431C0;
    *(v62 + 32) = a3;
    v63 = v62 + 32;
    *(v62 + 40) = v225;

    v64 = a7;
    v65 = v62;
    goto LABEL_33;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    swift_bridgeObjectRelease_n();

    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v89 = swift_allocObject();
LABEL_47:
    v90 = v89;
    v224 = xmmword_1AFE431C0;
    *(v89 + 16) = xmmword_1AFE431C0;
    *(v89 + 32) = a3;
    v63 = v89 + 32;
    *(v89 + 40) = v225;

    v64 = a7;
    v65 = v90;
LABEL_33:
    sub_1AF78A3AC(v64, v65);
    swift_setDeallocating();
    sub_1AF585778(v63);
    swift_deallocClassInstance();
    if (swift_weakLoadStrong())
    {
      v66 = v17[4];
      *&v249[0] = v17[3];
      *(&v249[0] + 1) = v66;

      MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
      sub_1AF7FDD44(*&v249[0], *(&v249[0] + 1), &v233);

      if (*(&v233 + 1))
      {
        v241 = v235;
        v242 = v236;
        v243 = v237;
        v244 = v238;
        v239 = v233;
        v240 = v234;
        sub_1AF4455CC(&v239, &v233);
        v67 = sub_1AF425364(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v69 = *(v67 + 2);
        v68 = *(v67 + 3);
        v70 = v225;
        if (v69 >= v68 >> 1)
        {
          v67 = sub_1AF425364(v68 > 1, v69 + 1, 1, v67);
        }

        sub_1AF761390(&v239);
        *(v67 + 2) = v69 + 1;
        v71 = &v67[88 * v69];
        v72 = v234;
        *(v71 + 2) = v233;
        *(v71 + 3) = v72;
        v74 = v236;
        v73 = v237;
        v75 = v235;
        *(v71 + 14) = v238;
        *(v71 + 5) = v74;
        *(v71 + 6) = v73;
        *(v71 + 4) = v75;
LABEL_42:
        v80 = swift_allocObject();
        *(v80 + 16) = v224;
        *(v80 + 32) = a3;
        *(v80 + 40) = v70;
        sub_1AF7AD234(0, &qword_1EB638880, &_s12MetadataTypeON, MEMORY[0x1E69E6F90]);
        v81 = swift_allocObject();
        *(v81 + 16) = v224;
        v82 = v17[7];
        v83 = v17[8];
        v84 = v17;
        v85 = v17[9];
        v86 = v84[10];
        v87 = v84[11];
        *(v81 + 32) = v82;
        v59 = v81 + 32;
        *(v81 + 40) = v83;
        *(v81 + 48) = v85;
        *(v81 + 56) = v86;
        *(v81 + 64) = v87;

        sub_1AF687F90(v82, v83);
        v88 = sub_1AF3C46D8(v67);

        sub_1AF78AFC4(v227, v80, v81, v88);
        swift_setDeallocating();
        v61 = v80 + 32;
        goto LABEL_43;
      }
    }

    else
    {
      v238 = 0;
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v233 = 0u;
    }

    sub_1AF7A2FA4(&v233, &qword_1EB6335B0, &_s8MetadataVN);
    v76 = *(v17 + 9);
    v233 = *(v17 + 7);
    v234 = v76;
    *&v235 = v17[11];
    sub_1AF444F60(&v233, &v239);
    sub_1AF7FCDD4(&v233, 1, &v239);
    sub_1AF444FBC(&v233);
    v67 = sub_1AF425364(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v78 = *(v67 + 2);
    v77 = *(v67 + 3);
    v70 = v225;
    if (v78 >= v77 >> 1)
    {
      v67 = sub_1AF425364(v77 > 1, v78 + 1, 1, v67);
    }

    *(v67 + 2) = v78 + 1;
    v79 = &v67[88 * v78];
    *(v79 + 4) = v241;
    *(v79 + 5) = v242;
    *(v79 + 6) = v243;
    *(v79 + 14) = v244;
    *(v79 + 2) = v239;
    *(v79 + 3) = v240;
    goto LABEL_42;
  }

  v221 = v28;
  v220 = v23;
  v223 = Strong;
  swift_retain_n();

  v31 = sub_1AF7AA418(v30, v27, sub_1AF7AC334, sub_1AF7AC334);

  v32 = *(v31 + 16);

  if (v32 != 1)
  {

    swift_bridgeObjectRelease_n();

    sub_1AF7AD234(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v89 = swift_allocObject();
    goto LABEL_47;
  }

  v33 = sub_1AF761970();
  if (sub_1AF76ACE8(v33) == 0x65746E6F43627553 && v34 == 0xEA00000000007478)
  {
  }

  else
  {
    v36 = sub_1AFDFEE28();

    if ((v36 & 1) == 0)
    {

      swift_bridgeObjectRelease_n();

      goto LABEL_32;
    }
  }

  v217 = v22;
  v222 = v17;
  v92 = *(*a7 + 48);
  v91 = *(*a7 + 56);
  v93 = *(*a7 + 96);
  v218 = *(*a7 + 88);
  swift_bridgeObjectRetain_n();

  v94 = MEMORY[0x1E69E7CC0];
  v95 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  _s7ContextC14GenerationDataCMa();
  v96 = swift_allocObject();
  *(v96 + 104) = v94;
  *(v96 + 112) = v94;
  *(v96 + 120) = v94;
  *(v96 + 128) = v94;
  *(v96 + 136) = v94;
  *(v96 + 144) = v94;
  sub_1AF432980(v94);
  *(v96 + 168) = v94;
  *(v96 + 176) = v94;
  *(v96 + 16) = v228;
  *(v96 + 24) = a8;
  *(v96 + 25) = 0;
  *(v96 + 27) = 0;
  *(v96 + 32) = v94;
  *(v96 + 40) = 1;
  v216 = v92;
  *(v96 + 48) = v92;
  *(v96 + 56) = v91;
  *(v96 + 64) = 257;
  *(v96 + 72) = 0;
  *(v96 + 80) = 0;
  *(v96 + 88) = v218;
  *(v96 + 96) = v93;
  *(v96 + 152) = v95;

  *(v96 + 160) = 0;
  v232[0] = v96;
  *(v96 + 136) = *a9;

  if (*v223 == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
  {

    sub_1AF78CA54(v232, v223, 0);

    v97 = v17;
    goto LABEL_60;
  }

  v97 = v17;
  if (*v223 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
  {

    sub_1AF790074(v232, v223);
LABEL_59:

    goto LABEL_60;
  }

  _s10SubContextCMa();
  v98 = swift_dynamicCastClass();
  if (v98)
  {
    v99 = v98;

    sub_1AF78F438(v232, v99, 0);
    goto LABEL_59;
  }

  _s19StaticSwitchSnippetCMa();
  v100 = swift_dynamicCastClass();
  if (v100)
  {
    v101 = v100;

    sub_1AF78F0D4(v232, v101, 0);
    goto LABEL_59;
  }

  _s17CustomCodeSnippetCMa();
  v102 = swift_dynamicCastClass();
  if (v102)
  {
    v103 = v102;

    sub_1AF78F23C(v232, v103, 0);
    goto LABEL_59;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v239 = 0;
  *(&v239 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF34760);
  *&v233 = v223;
  type metadata accessor for GraphV1CodeGeneration.BaseObject();
  sub_1AFDFE458();
  v210 = v239;
  v211 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v212 = v211;
    swift_once();
    v211 = v212;
  }

  *&v239 = 0;
  sub_1AF0D4F18(v211, &v239, v210, *(&v210 + 1));

  v97 = v17;
LABEL_60:
  v104 = sub_1AF78BD70(v232, v223);
  v219 = v232[0];
  if (*(*a9 + 16) < *(*(v232[0] + 136) + 16))
  {
    if (*(*(v232[0] + 128) + 16))
    {
      v105 = sub_1AFADB484();
      v107 = v106;
    }

    else
    {
      v105 = 0;
      v107 = 0;
    }

    sub_1AF64E080(0, 0, v105, v107);
  }

  v108 = (*(*v223 + 1424))(v104);
  sub_1AF78A3AC(v227, v108);

  v109 = sub_1AF76ED08(a3, v225);
  v111 = v110;
  v112 = *a10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a10 = v112;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v112 = sub_1AF420554(0, *(v112 + 2) + 1, 1, v112);
    *a10 = v112;
  }

  v115 = *(v112 + 2);
  v114 = *(v112 + 3);
  if (v115 >= v114 >> 1)
  {
    v112 = sub_1AF420554(v114 > 1, v115 + 1, 1, v112);
    *a10 = v112;
  }

  *(v112 + 2) = v115 + 1;
  v116 = &v112[16 * v115];
  v215 = v109;
  *(v116 + 4) = v109;
  *(v116 + 5) = v111;
  v231 = MEMORY[0x1E69E7CC0];

  v118 = sub_1AF7AA0A4(v117, v228, v223, sub_1AF7A7FF4, sub_1AF7A7FF4);

  sub_1AF7A5798(v118, v228, &v231, a8);

  v119 = v231;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v119 = sub_1AFC0DBC0(v119);
  }

  v120 = v119[2];
  *&v239 = v119 + 4;
  *(&v239 + 1) = v120;
  sub_1AF79F9D4(&v239);
  v121 = v97[5];
  v122 = v97[6];

  v123 = sub_1AF76ED08(v121, v122);
  v125 = v124;

  v126 = v119[2];
  v226 = v119;
  if (v126)
  {
    v213 = v123;
    v214 = v125;
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v126, 0);
    v127 = v239;
    v128 = v119 + 5;
    v129 = v126;
    do
    {
      v131 = *(v128 - 1);
      v130 = *v128;
      *&v239 = v127;
      v133 = *(v127 + 16);
      v132 = *(v127 + 24);

      if (v133 >= v132 >> 1)
      {
        sub_1AFC05CE4(v132 > 1, v133 + 1, 1);
        v127 = v239;
      }

      *(v127 + 16) = v133 + 1;
      v134 = v127 + 16 * v133;
      *(v134 + 32) = v131;
      *(v134 + 40) = v130;
      v128 += 4;
      --v129;
    }

    while (v129);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    *&v239 = *a11;
    sub_1AF856E18(v127, v213, v214, v135);

    *a11 = v239;
    *&v239 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v126, 0);
    v136 = v239;
    v137 = v226 + 7;
    v138 = v217;
    do
    {
      v140 = *(v137 - 1);
      v139 = *v137;
      *&v239 = v136;
      v142 = *(v136 + 16);
      v141 = *(v136 + 24);

      if (v142 >= v141 >> 1)
      {
        sub_1AFC05CE4(v141 > 1, v142 + 1, 1);
        v136 = v239;
      }

      *(v136 + 16) = v142 + 1;
      v143 = v136 + 16 * v142;
      *(v143 + 32) = v140;
      *(v143 + 40) = v139;
      v137 += 4;
      --v126;
    }

    while (v126);
    v97 = v222;
  }

  else
  {
    v144 = swift_isUniquelyReferenced_nonNull_native();
    *&v239 = *a11;
    v136 = MEMORY[0x1E69E7CC0];
    sub_1AF856E18(MEMORY[0x1E69E7CC0], v123, v125, v144);

    *a11 = v239;
    v138 = v217;
  }

  v145 = *(v97 + 9);
  v239 = *(v97 + 7);
  v240 = v145;
  *&v241 = v97[11];
  sub_1AF444F60(&v239, &v233);
  v146 = sub_1AF7DCE50(&v239, a8);
  v148 = v147;
  sub_1AF444FBC(&v239);
  if (a8 == 3)
  {
    *&v233 = v216;
    sub_1AF48FAF8(v136);
    sub_1AF48FAF8(MEMORY[0x1E69E7CC0]);
    v149 = v233;
    *&v233 = 540945696;
    *(&v233 + 1) = 0xE400000000000000;
    MEMORY[0x1B2718AE0](v146, v148);
    v150 = v233;
    *&v233 = 0;
    *(&v233 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v233 = 0x20636E7566;
    *(&v233 + 1) = 0xE500000000000000;
    MEMORY[0x1B2718AE0](v215, v111);

    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    *&v249[0] = v149;
    v151 = MEMORY[0x1E69E6158];
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v151);
    v152 = sub_1AFDFCD98();
    v154 = v153;

    MEMORY[0x1B2718AE0](v152, v154);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v150, *(&v150 + 1));

    MEMORY[0x1B2718AE0](31520, 0xE200000000000000);
  }

  else
  {
    *&v233 = 0;
    *(&v233 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v233 = 0x20746375727473;
    *(&v233 + 1) = 0xE700000000000000;
    MEMORY[0x1B2718AE0](v215, v111);

    MEMORY[0x1B2718AE0](2128672, 0xE300000000000000);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](0x20636974617473, 0xE700000000000000);
    *&v249[0] = v216;
    sub_1AF48FAF8(v136);
    sub_1AF48FAF8(MEMORY[0x1E69E7CC0]);
    v155 = *&v249[0];
    *&v249[0] = 0;
    *(&v249[0] + 1) = 0xE000000000000000;

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    MEMORY[0x1B2718AE0](v146, v148);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](6516326, 0xE300000000000000);
    MEMORY[0x1B2718AE0](40, 0xE100000000000000);
    *&v247[0] = v155;
    v156 = MEMORY[0x1E69E6158];
    sub_1AF7AD234(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AF7A48C4(&qword_1ED726C68, &qword_1ED726C70, v156);
    v157 = sub_1AFDFCD98();
    v159 = v158;

    MEMORY[0x1B2718AE0](v157, v159);

    MEMORY[0x1B2718AE0](8069161, 0xE300000000000000);
    MEMORY[0x1B2718AE0](*&v249[0], *(&v249[0] + 1));
  }

  v160 = v233;
  v161 = *v227;
  *&v233 = 8201;
  *(&v233 + 1) = 0xE200000000000000;

  MEMORY[0x1B2718AE0](v160, *(&v160 + 1));

  v162 = v233;
  v163 = *(v161 + 128);
  v164 = swift_isUniquelyReferenced_nonNull_native();
  *(v161 + 128) = v163;
  if ((v164 & 1) == 0)
  {
    v163 = sub_1AF420554(0, *(v163 + 2) + 1, 1, v163);
    *(v161 + 128) = v163;
  }

  v166 = *(v163 + 2);
  v165 = *(v163 + 3);
  if (v166 >= v165 >> 1)
  {
    v163 = sub_1AF420554(v165 > 1, v166 + 1, 1, v163);
  }

  *(v163 + 2) = v166 + 1;
  *&v163[16 * v166 + 32] = v162;
  *(v161 + 128) = v163;

  sub_1AF7974D8(v219);

  v167 = *(v222 + 9);
  v233 = *(v222 + 7);
  v234 = v167;
  *&v235 = v222[11];
  v168 = *(v221 + 9);
  v249[0] = *(v221 + 7);
  v249[1] = v168;
  v250 = v221[11];
  sub_1AF444F60(&v233, v247);
  sub_1AF444F60(v249, v247);
  v169 = sub_1AF7FE65C();
  v171 = v170;
  if (v169 == sub_1AF7FE65C() && v171 == v172)
  {

    sub_1AF444FBC(v249);
    sub_1AF444FBC(&v233);
LABEL_93:

LABEL_94:
    v174 = *v227;
    v229 = 0x7275746572200909;
    v230 = 0xEA0000000000206ELL;

    v175 = sub_1AF76ED08(v220, v138);
    v177 = v176;

    MEMORY[0x1B2718AE0](v175, v177);

    v178 = a8 == 3;
    goto LABEL_95;
  }

  v173 = sub_1AFDFEE28();

  sub_1AF444FBC(v249);
  sub_1AF444FBC(&v233);
  if (v173)
  {
    goto LABEL_93;
  }

  v189 = *(v222 + 9);
  v245[0] = *(v222 + 7);
  v245[1] = v189;
  v246 = v222[11];
  sub_1AF444F60(v245, v247);

  v190 = *(v221 + 9);
  v247[0] = *(v221 + 7);
  v247[1] = v190;
  v248 = v221[11];
  v191 = v221[5];
  v192 = v221[6];

  sub_1AF444F60(v247, &v229);
  v193 = sub_1AF76ED08(v191, v192);
  v195 = v194;

  v196 = sub_1AF78A068(v245, v247, v193, v195, a8);
  v198 = v197;

  sub_1AF444FBC(v247);
  sub_1AF444FBC(v245);
  if (!v198)
  {
    goto LABEL_94;
  }

  v174 = *v227;
  v229 = 0x7275746572200909;
  v230 = 0xEA0000000000206ELL;

  MEMORY[0x1B2718AE0](v196, v198);

  v178 = a8 == 3;
LABEL_95:
  if (v178)
  {
    v179 = 0;
  }

  else
  {
    v179 = 59;
  }

  if (v178)
  {
    v180 = 0xE000000000000000;
  }

  else
  {
    v180 = 0xE100000000000000;
  }

  MEMORY[0x1B2718AE0](v179, v180);

  v181 = v229;
  v182 = v230;
  v183 = *(v174 + 128);
  v184 = swift_isUniquelyReferenced_nonNull_native();
  *(v174 + 128) = v183;
  if ((v184 & 1) == 0)
  {
    v183 = sub_1AF420554(0, *(v183 + 2) + 1, 1, v183);
    *(v174 + 128) = v183;
  }

  v186 = *(v183 + 2);
  v185 = *(v183 + 3);
  if (v186 >= v185 >> 1)
  {
    v183 = sub_1AF420554(v185 > 1, v186 + 1, 1, v183);
  }

  *(v183 + 2) = v186 + 1;
  v187 = &v183[16 * v186];
  *(v187 + 4) = v181;
  *(v187 + 5) = v182;
  *(v174 + 128) = v183;

  v188 = *v227;
  if (a8 == 3)
  {
  }

  else
  {
    v199 = sub_1AFDFEE28();

    if ((v199 & 1) == 0)
    {
      v229 = 2099281161;
      v230 = 0xE400000000000000;
      if (a8 == 3)
      {
        v202 = 0;
      }

      else
      {
        v202 = 59;
      }

      if (a8 == 3)
      {
        v203 = 0xE000000000000000;
      }

      else
      {
        v203 = 0xE100000000000000;
      }

      MEMORY[0x1B2718AE0](v202, v203);

      v201 = v229;
      v200 = v230;
      goto LABEL_119;
    }
  }

  v200 = 0xE200000000000000;
  v201 = 32009;
LABEL_119:
  v204 = *(v188 + 128);
  v205 = swift_isUniquelyReferenced_nonNull_native();
  *(v188 + 128) = v204;
  if ((v205 & 1) == 0)
  {
    v204 = sub_1AF420554(0, *(v204 + 2) + 1, 1, v204);
    *(v188 + 128) = v204;
  }

  v207 = *(v204 + 2);
  v206 = *(v204 + 3);
  if (v207 >= v206 >> 1)
  {
    v204 = sub_1AF420554(v206 > 1, v207 + 1, 1, v204);
  }

  *(v204 + 2) = v207 + 1;
  v208 = &v204[16 * v207];
  *(v208 + 4) = v201;
  *(v208 + 5) = v200;
  *(v188 + 128) = v204;

  sub_1AF782388(v209);
}

uint64_t sub_1AF79A55C(uint64_t result, uint64_t a2, void **a3, unsigned __int8 a4)
{
  v4 = *(a2 + 264);
  if (*(v4 + 16))
  {
    v6 = *(result + 16);
    v7 = *(result + 24);

    v8 = sub_1AF419914(v6, v7);
    if ((v9 & 1) == 0)
    {
    }

    v10 = *(*(v4 + 56) + 8 * v8);

    v43 = a3;
    v11 = *a3;
    v12 = (*a3)[2];
    v45 = v11;

    if (v12)
    {
      v13 = v45 + 7;
      while (1)
      {
        v15 = *(v13 - 3);
        v14 = *(v13 - 2);
        v16 = *(v10 + 40);
        v17 = *(v10 + 48);

        v18 = sub_1AF76ED08(v16, v17);
        v20 = v19;

        if (v15 == v18 && v14 == v20)
        {
        }

        v22 = sub_1AFDFEE28();

        if (v22)
        {
          break;
        }

        v13 += 4;
        if (!--v12)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_11:

    v24 = *(v10 + 40);
    v23 = *(v10 + 48);

    v25 = sub_1AF76ED08(v24, v23);
    v27 = v26;

    v29 = *(v10 + 40);
    v28 = *(v10 + 48);

    v30 = sub_1AF76ED08(v29, v28);
    v32 = v31;

    v33 = *(v10 + 72);
    v47[0] = *(v10 + 56);
    v47[1] = v33;
    v48 = *(v10 + 88);
    sub_1AF444F60(v47, v46);
    v34 = sub_1AF7E9044(v30, v32, v47, a4);
    v36 = v35;
    sub_1AF444FBC(v47);

    v37 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_1AF42548C(0, v37[2] + 1, 1, v37);
      *v43 = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      *v43 = sub_1AF42548C(v39 > 1, v40 + 1, 1, v37);
    }

    v41 = *v43;
    v41[2] = v40 + 1;
    v42 = &v41[4 * v40];
    v42[4] = v25;
    v42[5] = v27;
    v42[6] = v34;
    v42[7] = v36;
  }

  return result;
}

__n128 sub_1AF79A814(uint64_t *a1, char **a2)
{
  v3 = *a1;
  if (swift_weakLoadStrong())
  {
    v23 = *(v3 + 24);
    v24 = *(v3 + 32);

    MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
    sub_1AF7FDD44(v23, v24, &v25);

    if (*(&v25 + 1))
    {
      v33 = v27;
      v34 = v28;
      v35 = v29;
      v36 = v30;
      v31 = v25;
      v32 = v26;
      sub_1AF4455CC(&v31, &v25);
      v4 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_1AF425364(0, *(v4 + 2) + 1, 1, v4);
        *a2 = v4;
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        *a2 = sub_1AF425364(v6 > 1, v7 + 1, 1, v4);
      }

      sub_1AF761390(&v31);
      v8 = *a2;
      *(v8 + 2) = v7 + 1;
      v9 = &v8[88 * v7];
      result = v27;
      v10 = v28;
      v11 = v29;
      *(v9 + 14) = v30;
      *(v9 + 5) = v10;
      *(v9 + 6) = v11;
      *(v9 + 4) = result;
      result.n128_u64[0] = v25;
      v13 = v26;
      *(v9 + 2) = v25;
      *(v9 + 3) = v13;
      return result;
    }
  }

  else
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
  }

  sub_1AF7A2FA4(&v25, &qword_1EB6335B0, &_s8MetadataVN);
  v14 = *(v3 + 72);
  v25 = *(v3 + 56);
  v26 = v14;
  v27.n128_u64[0] = *(v3 + 88);
  sub_1AF444F60(&v25, &v31);
  sub_1AF7FCDD4(&v25, 1, &v31);
  sub_1AF444FBC(&v25);
  v15 = *a2;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  if ((v16 & 1) == 0)
  {
    v15 = sub_1AF425364(0, *(v15 + 2) + 1, 1, v15);
    *a2 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1AF425364(v17 > 1, v18 + 1, 1, v15);
    *a2 = v15;
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[88 * v18];
  v20 = v32;
  *(v19 + 2) = v31;
  *(v19 + 3) = v20;
  result = v33;
  v21 = v34;
  v22 = v35;
  *(v19 + 14) = v36;
  *(v19 + 5) = v21;
  *(v19 + 6) = v22;
  *(v19 + 4) = result;
  return result;
}

uint64_t sub_1AF79AA9C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(a2 + 256);
  if (*(v3 + 16))
  {
    v6 = *result;
    v7 = *(*result + 40);
    v8 = *(*result + 48);

    v9 = sub_1AF419914(v7, v8);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
    }

    v12 = (*(v3 + 56) + 24 * v9);
    v14 = *v12;
    v13 = v12[1];

    swift_bridgeObjectRetain_n();

    sub_1AF7AC2F0(v14, v13);
    if (!*(*(a2 + 264) + 16))
    {
    }

    sub_1AF419914(v14, v13);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
    }

    if (!swift_weakLoadStrong())
    {
    }

    v17 = sub_1AF761D68(0x746C7561666564, 0xE700000000000000);
    if (v17)
    {
      v18 = v17;
      sub_1AF7FDC2C(0x65756C6176, 0xE500000000000000, &v26);
      if (!v27)
      {

        return sub_1AF7A2FA4(&v26, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      v19 = *(v6 + 24);
      v20 = *(v6 + 32);
      v25 = v19;
      v21 = v18 + 16 * v28;
      v22 = *(v21 + 32);
      v23 = *(v21 + 40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v26 = *a3;
      *a3 = 0x8000000000000000;
      sub_1AF854CE8(v22, v23, v25, v20, isUniquelyReferenced_nonNull_native);

      *a3 = v26;
    }
  }

  return result;
}

uint64_t sub_1AF79AD2C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *a1;
  v10 = a1[1];
  *&v73[0] = *a1;
  *(&v73[0] + 1) = v10;
  v72[0] = 46;
  v72[1] = 0xE100000000000000;
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    v69 = a4;
    v68 = a6;
    *&v73[0] = v9;
    *(&v73[0] + 1) = v10;
    v11 = sub_1AFDFDF28();
    v70 = a2;
    v12 = *(*a2 + 16);
    if (v12)
    {
      v75 = v11[2];
      v13 = 0;
      v14 = ( + 40);
      while (1)
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        if (v75)
        {
          v18 = v11[6];
          v17 = v11[7];
          v19 = v11[4] >> 16;
          v20 = v11[5] >> 16;
        }

        else
        {
          v19 = 0;
          v20 = 0;
          v18 = 0;
          v17 = 0;
        }

        v21 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v15 & 0xFFFFFFFFFFFFLL;
        v22 = v15 == v18 && v17 == v16;
        v23 = v22 && v19 == 0;
        if (v23 && v21 == v20)
        {
          break;
        }

        v25 = sub_1AFDFE9E8();

        if (v25)
        {

          goto LABEL_44;
        }

        ++v13;
        v14 += 8;
        if (v12 == v13)
        {

          goto LABEL_41;
        }
      }

LABEL_44:
    }

    else
    {
LABEL_41:

      v13 = 0;
    }

    v37 = v13 << 6;
    v38 = (*v70 + (v13 << 6));
    v40 = v38[3];
    v39 = v38[4];
    v41 = v38[2];
    *&v74[9] = *(v38 + 73);
    v73[1] = v40;
    *v74 = v39;
    v73[0] = v41;
    v42 = v74[24];
    v43 = *(&v40 + 1);
    v44 = v40;
    sub_1AF7AC220(v73, v72, sub_1AF7AC288);

    result = sub_1AF687FE4(v44, v43);
    if ((v42 & 1) == 0)
    {
      v45 = *v70;
      v46 = (*v70 + v37);
      v47 = v46[5];
      v66 = v46[4];
      v48 = v46[6];
      v49 = v46[7];
      v50 = v46[8];
      v51 = v46[9];
      v52 = v46[10];

      sub_1AF687F90(v48, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v70 = v45;
      v75 = v48;
      v67 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = sub_1AFC0DBD4(v45);
        *v70 = v45;
      }

      *(v45 + v37 + 88) = 1;
      v54 = sub_1AF7AF740(v66, v47);
      v56 = v55;
      _s12ParameterOutCMa();
      v57 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v57[3] = v66;
      v57[4] = v47;
      v57[5] = v54;
      v57[6] = v56;
      v57[7] = v75;
      v57[8] = v67;
      v57[9] = v50;
      v57[10] = v51;
      v57[11] = v52;
      if (*(*v69 + 161))
      {
LABEL_49:

        MEMORY[0x1B2718E00](v58);
        if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        sub_1AFDFD4B8();
      }

      else
      {
        v59 = 1 << *(a5 + 32);
        v60 = -1;
        if (v59 < 64)
        {
          v60 = ~(-1 << v59);
        }

        v61 = v60 & *(a5 + 64);
        v62 = (v59 + 63) >> 6;

        v63 = 0;
        while (v61)
        {
LABEL_59:
          v61 &= v61 - 1;

          v65 = sub_1AFDFD178();

          if (v65)
          {

            goto LABEL_49;
          }
        }

        while (1)
        {
          v64 = v63 + 1;
          if (v63 + 1 >= v62)
          {
            break;
          }

          v61 = *(a5 + 8 * v63++ + 72);
          if (v61)
          {
            v63 = v64;
            goto LABEL_59;
          }
        }
      }
    }
  }

  else
  {
    v26 = sub_1AF7AF5BC(v9, v10);
    if (*(*a4 + 161))
    {
LABEL_24:

      MEMORY[0x1B2718E00](v27);
      if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
    }

    else
    {
      v29 = 0;
      v30 = 1 << *(a5 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(a5 + 64);
      v33 = (v30 + 63) >> 6;
      while (v32)
      {
LABEL_35:
        v35 = (*(a5 + 56) + 24 * (__clz(__rbit64(v32)) | (v29 << 6)));
        if (*v35 != v26[5] || v35[1] != v26[6])
        {
          v32 &= v32 - 1;
          if ((sub_1AFDFEE28() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_24;
      }

      while (1)
      {
        v34 = v29 + 1;
        if (v29 + 1 >= v33)
        {
          break;
        }

        v32 = *(a5 + 72 + 8 * v29++);
        if (v32)
        {
          v29 = v34;
          goto LABEL_35;
        }
      }
    }
  }

  return result;
}

void *sub_1AF79B318(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF7B0A00(*a1, a1[1]);
  if (result)
  {
    v5 = result;

    v7 = sub_1AF7AA418(v6, v5, sub_1AF7AA2D8, sub_1AF7AA2D8);

    sub_1AF8CC960(v7, v34);

    if (!v34[1])
    {
    }

    v8 = v34[2];
    v9 = v34[3];
    v10 = *(a3 + 264);
    v11 = *(v10 + 16);

    if (v11)
    {

      v12 = sub_1AF419914(v8, v9);
      v14 = v13;

      if (v14)
      {
        v15 = *(*(v10 + 56) + 8 * v12);

        if (*v15 == _TtCO3VFX21GraphV1CodeGeneration12ParameterOut)
        {
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v17 = Strong;
            if (sub_1AF761C80())
            {
              v33 = MEMORY[0x1E69E6158];
              *&v32 = 0;
              *(&v32 + 1) = 0xE000000000000000;
              v34[6] = v17;
              sub_1AF7FDDF0(1701667182, 0xE400000000000000, &v32, v31);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v32);
              sub_1AF449D40(v31, &v32);
              swift_dynamicCast();
              v18 = v29;
              v19 = v30;
              if (sub_1AFDFD178())
              {
                sub_1AFDFD048();
                v20 = sub_1AF701628();
                v27 = v21;
                v28 = v20;
                v26 = v22;
                v24 = v23;

                v18 = MEMORY[0x1B27189E0](v28, v27, v26, v24);
                v19 = v25;
              }

              sub_1AF6B0504(v18, v19);

              goto LABEL_15;
            }
          }
        }

LABEL_15:
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1AF79B654(void *a1)
{
  v3 = v1;
  sub_1AF7AEE6C(0, &qword_1EB63EAB0, sub_1AF7AEDC4, &_s7ContextC14AssignmentInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF7AEDC4();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v14 = 1;
    sub_1AF7AEE18();
    sub_1AFDFE918();
    v13 = 2;
    sub_1AFDFE8B8();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1AF79B828(char a1)
{
  result = 7890025;
  switch(a1)
  {
    case 1:
    case 6:
      result = 0x6574616C706D6574;
      break;
    case 2:
    case 3:
      result = 0x45747865746E6F63;
      break;
    case 4:
      result = 0x65746E6F43627573;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6D655464656B6162;
      break;
    case 8:
      result = 0x656D6E6769737361;
      break;
    case 9:
    case 13:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0x7374657070696E73;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0x656A624F72657375;
      break;
    case 15:
      result = 0x656C626169726176;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF79BA14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6570795465736162;
  if (v2 != 1)
  {
    v4 = 0x6574656D61726170;
    v3 = 0xED0000656D614E72;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x44495565736162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795465736162;
  if (*a2 != 1)
  {
    v8 = 0x6574656D61726170;
    v7 = 0xED0000656D614E72;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44495565736162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF79BB30()
{
  v1 = 0x6570795465736162;
  if (*v0 != 1)
  {
    v1 = 0x6574656D61726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44495565736162;
  }
}

uint64_t sub_1AF79BB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF7A4970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF79BBC0(uint64_t a1)
{
  v2 = sub_1AF7AEDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF79BBFC(uint64_t a1)
{
  v2 = sub_1AF7AEDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF79BC38()
{
  v1 = *(v0 + 16);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AF76ACE8(v1);
  sub_1AFDFD038();

  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF79BCD4()
{
  v1 = *(v0 + 16);
  sub_1AFDFD038();
  sub_1AF76ACE8(v1);
  sub_1AFDFD038();

  return sub_1AFDFD038();
}

uint64_t sub_1AF79BD50()
{
  v1 = *(v0 + 16);
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AF76ACE8(v1);
  sub_1AFDFD038();

  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

double sub_1AF79BDE8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF7A7D6C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1AF79BE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  v9 = sub_1AF76ACE8(v2);
  v11 = v10;
  if (v9 == sub_1AF76ACE8(v5) && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1AFDFEE28();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AF79BF78(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF79B828(*a1);
  v5 = v4;
  if (v3 == sub_1AF79B828(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF79C000()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF79B828(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF79C064()
{
  sub_1AF79B828(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF79C0B8()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF79B828(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF79C118@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7A491C();
  *a1 = result;
  return result;
}

unint64_t sub_1AF79C148@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF79B828(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF79C190@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF7A491C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF79C1C4(uint64_t a1)
{
  v2 = sub_1AF79F4B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF79C200(uint64_t a1)
{
  v2 = sub_1AF79F4B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF79C23C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = swift_retain_n();
  v5 = sub_1AF792358(v4);
  v50 = v6;
  v51 = v5;
  v7 = v3[5];

  v8 = v3[6];

  v9 = v3[10];

  v10 = v3[11];

  v3[5] = v7;

  v3[6] = v8;

  sub_1AF76B4B4();
  sub_1AF764300();
  v3[10] = v9;

  v3[11] = v10;

  sub_1AF763428();

  v11 = v3[5];

  v54 = *(v11 + 16);
  if (v54)
  {
    v12 = 0;
    v52 = v11 + 32;
    while (1)
    {
      v13 = (v52 + 16 * v12);
      v14 = v13[1];
      v15 = v3[5];
      v16 = *(v15 + 16);
      if (!v16)
      {
        break;
      }

      v17 = *v13;
      v18 = (v15 + 40);
      v19 = (v15 + 40);
      while (1)
      {
        v20 = *(v19 - 1) == v17 && *v19 == v14;
        if (v20 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v19 += 2;
        if (!--v16)
        {
          goto LABEL_60;
        }
      }

      v21 = *(v15 + 16);
      if (!v21)
      {
        break;
      }

      v22 = 0;
      while (1)
      {
        v23 = *(v18 - 1) == v17 && *v18 == v14;
        if (v23 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v22;
        v18 += 2;
        if (v21 == v22)
        {
          goto LABEL_60;
        }
      }

      v24 = v3[7];
      if (v24 >> 62)
      {
        if (v22 >= sub_1AFDFE108())
        {
          break;
        }
      }

      else if (v22 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v25 = v3[7];
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = MEMORY[0x1B2719C70](v22, v25);
      }

      else
      {
        v26 = *(v25 + 8 * v22 + 32);
      }

      ++v12;
      v27 = *(v26 + 40);
      v28 = *(v26 + 48);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = *(a2 + 264);
      *(a2 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v26, v27, v28, isUniquelyReferenced_nonNull_native);

      *(a2 + 264) = v56;

      if (v12 == v54)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
LABEL_30:

    v30 = v3[10];

    v55 = *(v30 + 16);
    if (!v55)
    {
LABEL_59:

      sub_1AF7927A8(v3, v51, v50);

      sub_1AF7A5914(v3);
    }

    v31 = 0;
    v53 = v30 + 32;
    while (1)
    {
      v32 = (v53 + 16 * v31);
      v33 = v32[1];
      v34 = v3[10];
      v35 = *(v34 + 16);
      if (!v35)
      {
        break;
      }

      v36 = *v32;
      v37 = (v34 + 40);
      v38 = (v34 + 40);
      while (1)
      {
        v39 = *(v38 - 1) == v36 && *v38 == v33;
        if (v39 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v38 += 2;
        if (!--v35)
        {
          goto LABEL_60;
        }
      }

      v40 = *(v34 + 16);
      if (!v40)
      {
        break;
      }

      v41 = 0;
      while (1)
      {
        v42 = *(v37 - 1) == v36 && *v37 == v33;
        if (v42 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        ++v41;
        v37 += 2;
        if (v40 == v41)
        {
          goto LABEL_60;
        }
      }

      v43 = v3[12];
      if (v43 >> 62)
      {
        if (v41 >= sub_1AFDFE108())
        {
          break;
        }
      }

      else if (v41 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v44 = v3[12];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = MEMORY[0x1B2719C70](v41, v44);
      }

      else
      {
        v45 = *(v44 + 8 * v41 + 32);
      }

      ++v31;
      v46 = *(v45 + 40);
      v47 = *(v45 + 48);

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(a2 + 264);
      *(a2 + 264) = 0x8000000000000000;
      sub_1AF854E5C(v45, v46, v47, v48);

      *(a2 + 264) = v57;

      if (v31 == v55)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_60:

  __break(1u);
  return result;
}

uint64_t sub_1AF79C734(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  v12 = a3[4];
  v11 = a3[5];
  v46 = a3[6];

  v13 = sub_1AF7F48D4(v8, v7, v9, v10, v12, v11);
  v15 = v14;

  if (!v13)
  {

    sub_1AF7A7474(a3, &v60);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v60 = a4[36];
    a4[36] = 0x8000000000000000;
    sub_1AF856E44(a3, a1, a2, isUniquelyReferenced_nonNull_native);

    a4[36] = v60;
    return result;
  }

  v16 = a1;
  if (!a1 && a2 == 0xE000000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v17 = *(v13 + 16);
    v18 = *(v13 + 24);

    v16 = sub_1AF782F9C(v17, v18);
    a2 = v19;
  }

  else
  {
  }

  v22 = a4[17];
  _s11CodeSnippetCMa();
  swift_allocObject();

  v24 = sub_1AF7752A8(v23, v16, a2, v46, v22);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = a4[25];
  a4[25] = 0x8000000000000000;
  sub_1AF856CE4(v24, v16, a2, v25);

  a4[25] = v60;

  sub_1AF771628(v26);

  if (v15)
  {
    sub_1AF7FDD44(0x65756C6176, 0xE500000000000000, &v54);
    v62 = v56;
    v63[0] = v57;
    v63[1] = v58;
    v64 = v59;
    v60 = v54;
    v61 = v55;
    v27 = v24[7];
    if (v27 >> 62)
    {
      v28 = sub_1AFDFE108();
      if (v28)
      {
LABEL_11:
        v29 = v28 - 1;
        if ((v27 & 0xC000000000000001) != 0)
        {

          v30 = MEMORY[0x1B2719C70](v29, v27);
        }

        else
        {
          v30 = *(v27 + 8 * v29 + 32);
        }

LABEL_15:
        v54 = v61;
        v55 = v62;
        *&v56 = *&v63[0];
        v31 = *(v30 + 72);
        v65[0] = *(v30 + 56);
        v65[1] = v31;
        v66 = *(v30 + 88);

        sub_1AF444F60(v65, &v51);
        v32 = sub_1AF7FE65C();
        v34 = v33;
        v35 = sub_1AF7FE65C();
        v37 = v36;
        sub_1AF444FBC(v65);
        if (v32 == v35 && v34 == v37)
        {
        }

        else
        {
          v38 = sub_1AFDFEE28();

          if ((v38 & 1) == 0)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            *&v51 = 0;
            *(&v51 + 1) = 0xE000000000000000;
            sub_1AFDFE218();
            v49 = v51;
            MEMORY[0x1B2718AE0](0xD000000000000034, 0x80000001AFF344F0);
            v51 = v54;
            v52 = v55;
            v53 = v56;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x64616574736E6920, 0xEC00000020666F20);
            v39 = *(v30 + 56);
            v40 = *(v30 + 64);
            v41 = *(v30 + 72);
            v42 = *(v30 + 80);
            v43 = *(v30 + 88);
            sub_1AF687F90(v39, v40);

            *&v51 = v39;
            *(&v51 + 1) = v40;
            *&v52 = v41;
            *(&v52 + 1) = v42;
            v53 = v43;
            sub_1AFDFE458();
            sub_1AF687FE4(v39, v40);
            v44 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v45 = v44;
              swift_once();
              v44 = v45;
            }

            *&v51 = 0;
            sub_1AF0D4F18(v44, &v51, v49, *(&v49 + 1));

            goto LABEL_28;
          }
        }

        sub_1AF7A74D0(v63 + 8, &v51, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
        if (swift_weakLoadStrong())
        {
          v48 = *(v30 + 24);
          v50 = *(v30 + 32);

          MEMORY[0x1B2718AE0](0x746C75616665642ELL, 0xED000065756C6156);
          sub_1AF7FDB64(v48, v50, &v51);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v51);
LABEL_28:
        sub_1AF7FDA4C(0x65756C6176, 0xE500000000000000);

        sub_1AF761390(&v60);
        goto LABEL_29;
      }
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_11;
      }
    }

    v30 = 0;
    goto LABEL_15;
  }

LABEL_29:
  sub_1AF7A5914(v24);
}

uint64_t sub_1AF79CDC8(void *a1)
{
  sub_1AF7AEE6C(0, &qword_1EB63E818, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - v7;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + 168) = sub_1AF432588(MEMORY[0x1E69E7CC0]);
  *(v1 + 176) = sub_1AF4325A0(v9);
  *(v1 + 184) = sub_1AF4325B8(v9);
  *(v1 + 192) = sub_1AF4325D0(v9);
  *(v1 + 200) = sub_1AF4325E8(v9);
  *(v1 + 208) = sub_1AF432600(v9);
  *(v1 + 216) = sub_1AF432618(v9);
  *(v1 + 224) = sub_1AF432630(v9);
  *(v1 + 232) = sub_1AF432648(v9);
  *(v1 + 240) = sub_1AF432660(v9);
  *(v1 + 248) = sub_1AF432678(v9);
  *(v1 + 256) = sub_1AF432690(v9);
  *(v1 + 264) = sub_1AF4327E8(v9);
  *(v1 + 272) = sub_1AF432800(v9);
  *(v1 + 280) = sub_1AF432800(v9);
  *(v1 + 288) = sub_1AF432818(v9);
  v10 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_onUserTemplatesChangedUUID;
  v11 = sub_1AFDFC318();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_switchCaseValuePrefix);
  *v12 = 0xD000000000000010;
  v12[1] = 0x80000001AFF34160;
  v13 = OBJC_IVAR____TtCO3VFX21GraphV1CodeGeneration7Context_templateRemapping;
  v14 = sub_1AF432980(&unk_1F25003A8);
  sub_1AF7A45D8(&unk_1F25003C8, sub_1AF757298);
  *(v1 + v13) = v14;
  v43 = v9;
  v42 = sub_1AF432980(v9);
  sub_1AF441194(a1, &v39);
  v15 = sub_1AF76BC24(&v39);
  if (v2)
  {

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  else
  {
    v36 = v5;
    sub_1AF441150(a1, a1[3]);
    sub_1AF79F4B8();
    sub_1AFDFF3B8();
    LOBYTE(v39) = 0;
    v16 = sub_1AFDFE6D8();
    v35 = v8;
    if (v17)
    {
      v16 = *(v15 + 144);
    }

    *(v15 + 144) = v16;
    sub_1AF7AD234(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v38 = 1;
    sub_1AF7A2D30();
    sub_1AFDFE6E8();
    v19 = v39;
    v20 = v40;
    v21 = v41;
    if (v41)
    {
      v19 = 0;
    }

    *(v15 + 152) = v19;
    *(v15 + 160) = v20 & ~v21 & 1;
    sub_1AF7A4728(0, &qword_1EB63E828, _s7ContextCMa);
    v38 = 6;
    sub_1AF7A2DC4();
    sub_1AFDFE6E8();
    v22 = v39;
    if (!v39)
    {
    }

    *(v15 + 272) = v22;

    v38 = 7;
    sub_1AFDFE6E8();
    v23 = v39;
    if (!v39)
    {
    }

    *(v15 + 280) = v23;

    sub_1AF7A4728(0, &qword_1EB63E840, type metadata accessor for GraphV1CodeGeneration.BaseObject);
    v38 = 14;
    sub_1AF7A2E90();
    sub_1AFDFE6E8();
    v24 = v39;
    if (!v39)
    {
    }

    *(v15 + 232) = v24;

    v25 = v35;
    sub_1AF792A90();
    sub_1AF792CB8();
    sub_1AF792EE8();
    sub_1AF7930E4(v25, &v43);
    sub_1AF7933AC();
    sub_1AF7935DC();
    sub_1AF79380C();
    sub_1AF793A3C();
    sub_1AF793C6C();
    sub_1AF793E9C();
    sub_1AF794108(&v42);
    sub_1AF7948B8(v35, v42);
    v34 = v43;
    v26 = v43[2];

    if (v26)
    {
      v27 = v26;
      v28 = v34 + 7;
      do
      {
        v29 = *(v28 - 3);
        v30 = *(v28 - 2);
        v31 = *(v28 - 1);
        v32 = *v28;

        sub_1AF783728(v29, v30, v31, v32, 1, 0);

        v28 += 4;
        --v27;
      }

      while (v27);
    }

    sub_1AF795AA0();
    (*(v37 + 8))(v35, v36);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  return v15;
}

uint64_t sub_1AF79D5CC(void *a1)
{
  sub_1AF0D4E74();
  v150 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC298();
  v149 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF7AEE6C(0, &qword_1EB63E858, sub_1AF79F4B8, &_s7ContextC10CodingKeysON, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v123 - v15;
  v17 = v151;
  result = sub_1AF76C660(a1);
  if (!v17)
  {
    v146 = v10;
    v147 = v7;
    v148 = v6;
    v19 = v150;
    v151 = v13;
    sub_1AF441150(a1, a1[3]);
    sub_1AF79F4B8();
    sub_1AFDFF3F8();
    LOBYTE(v152) = 0;
    v20 = 0;
    sub_1AFDFE8F8();
    v21 = v1;
    if ((*(v1 + 160) & 1) == 0)
    {
      LOBYTE(v152) = 1;
      sub_1AFDFE8F8();
    }

    if (*(*(v1 + 176) + 16))
    {
      v152 = *(v1 + 176);
      v156 = 2;
      sub_1AF7A4728(0, &qword_1EB63E860, _s11ContextExitCMa);
      sub_1AF7A3014();
      sub_1AFDFE918();
    }

    if (*(*(v1 + 168) + 16))
    {
      v152 = *(v1 + 168);
      v156 = 3;
      sub_1AF7A4728(0, &qword_1EB63E878, _s12ContextEntryCMa);
      sub_1AF7A30E0();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 184) + 16))
    {
      v152 = *(v1 + 184);
      v156 = 4;
      sub_1AF7A4728(0, &qword_1EB63E890, _s10SubContextCMa);
      sub_1AF7A31AC();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 192) + 16))
    {
      v152 = *(v1 + 192);
      v156 = 5;
      sub_1AF7A4728(0, &qword_1EB63E8A8, _s20ArraySequenceSnippetCMa);
      sub_1AF7A3278();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 272) + 16))
    {
      v152 = *(v1 + 272);
      v156 = 6;
      sub_1AF7A4728(0, &qword_1EB63E828, _s7ContextCMa);
      sub_1AF7A3344();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 280) + 16))
    {
      v152 = *(v1 + 280);
      v156 = 7;
      sub_1AF7A4728(0, &qword_1EB63E828, _s7ContextCMa);
      sub_1AF7A3344();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 208) + 16))
    {
      v152 = *(v1 + 208);
      v156 = 11;
      sub_1AF7A4728(0, &qword_1EB63E8D0, _s17CustomCodeSnippetCMa);
      sub_1AF7A3410();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 216) + 16))
    {
      v152 = *(v1 + 216);
      v156 = 12;
      sub_1AF7A4728(0, &qword_1EB63E8E8, _s17TypedArraySnippetCMa);
      sub_1AF7A34DC();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 224) + 16))
    {
      v152 = *(v1 + 224);
      v156 = 13;
      sub_1AF7A4728(0, &qword_1EB63E900, _s19StaticSwitchSnippetCMa);
      sub_1AF7A35A8();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 232) + 16))
    {
      v152 = *(v1 + 232);
      v156 = 14;
      sub_1AF7A4728(0, &qword_1EB63E840, type metadata accessor for GraphV1CodeGeneration.BaseObject);
      sub_1AF7A3674();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 240) + 16))
    {
      v152 = *(v1 + 240);
      v156 = 15;
      sub_1AF7A4728(0, &qword_1EB63E928, _s15VariableSnippetCMa);
      sub_1AF7A3740();
      v20 = 0;
      sub_1AFDFE918();
    }

    if (*(*(v1 + 248) + 16))
    {
      v152 = *(v1 + 248);
      v156 = 16;
      sub_1AF7A4728(0, &qword_1EB63E940, _s24VariableReferenceSnippetCMa);
      sub_1AF7A380C();
      v20 = 0;
      sub_1AFDFE918();
    }

    v141 = 0;
    v22 = sub_1AF432818(MEMORY[0x1E69E7CC0]);
    v23 = *(v1 + 200);
    v24 = 1 << v23[32];
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v23 + 8);
    v27 = (v24 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v28 = 0;
    v131 = v27;
    v132 = v23;
LABEL_34:
    v145 = v22;
    if (v26)
    {
      goto LABEL_38;
    }

    while (1)
    {
      v35 = v28 + 1;
      if (v28 + 1 >= v27)
      {
        break;
      }

      v26 = *&v23[8 * v28++ + 72];
      if (v26)
      {
        v28 = v35;
LABEL_38:
        v36 = __clz(__rbit64(v26)) | (v28 << 6);
        v37 = *(v23 + 6) + 16 * v36;
        v38 = *(*(v23 + 7) + 8 * v36);
        v40 = *v37;
        v39 = *(v37 + 8);
        v41 = *(v38 + 136);
        v42 = v41[43];
        v137 = v41[42];
        v43 = v41[3];
        v139 = v41[2];
        v142 = v40;
        v143 = v43;
        v144 = v39;
        swift_bridgeObjectRetain_n();

        v138 = v42;

        v135 = sub_1AF776F1C();
        v136 = v44;

        v140 = v38;
        if (*(v38 + 16))
        {

          v20 = v141;
          v134 = sub_1AF80592C(v45);
          v141 = v20;
        }

        else
        {
          v134 = 0;
        }

        v46 = v145;
        LODWORD(v133) = swift_isUniquelyReferenced_nonNull_native();
        v152 = v46;
        v47 = v142;
        v48 = v144;
        v49 = sub_1AF419914(v142, v144);
        v51 = *(v46 + 2) + ((v50 & 1) == 0);
        if (*(v46 + 3) >= v51)
        {
          if ((v133 & 1) == 0)
          {
            v145 = v49;
            v59 = v50;
            sub_1AF84C3E4();
            LOBYTE(v50) = v59;
            v49 = v145;
          }
        }

        else
        {
          LODWORD(v145) = v50;
          sub_1AF83AF9C(v51, v133);
          v49 = sub_1AF419914(v47, v48);
          v52 = v50 & 1;
          LOBYTE(v50) = v145;
          if ((v145 & 1) != v52)
          {
            sub_1AFDFF1A8();
            __break(1u);
            goto LABEL_143;
          }
        }

        v53 = v142;
        v54 = v152;
        v145 = v152;
        if (v50)
        {
          v55 = (*(v152 + 7) + 56 * v49);
          v142 = v55[1];
          v56 = v138;
          *v55 = v137;
          v55[1] = v56;
          v57 = v143;
          v55[2] = v139;
          v55[3] = v57;
          v58 = v136;
          v55[4] = v135;
          v55[5] = v58;
          v55[6] = v134;

          swift_bridgeObjectRelease_n();
        }

        else
        {
          *&v152[8 * (v49 >> 6) + 64] |= 1 << v49;
          v29 = (*(v54 + 6) + 16 * v49);
          v30 = v144;
          *v29 = v53;
          v29[1] = v30;
          v31 = (*(v54 + 7) + 56 * v49);
          v32 = v138;
          *v31 = v137;
          v31[1] = v32;
          v33 = v143;
          v31[2] = v139;
          v31[3] = v33;
          v34 = v136;
          v31[4] = v135;
          v31[5] = v34;
          v31[6] = v134;
          ++*(v54 + 2);
        }

        v23 = v132;
        v27 = v131;
        v26 &= v26 - 1;

        v22 = v145;
        goto LABEL_34;
      }
    }

    if (*(v22 + 2))
    {
      v152 = v22;
      v156 = 10;
      sub_1AF7A38D8();
      sub_1AF7A3938(&qword_1EB63E960, sub_1AF7A39B0);
      v60 = v141;
      sub_1AFDFE918();
      v141 = v60;
      if (v60)
      {
        (*(v151 + 8))(v16, v12);
      }
    }

    v61 = MEMORY[0x1E69E7CC0];
    v137 = sub_1AF432C7C(MEMORY[0x1E69E7CC0]);
    v62 = *(v21 + 256);
    v63 = *(v62 + 16);
    if (v63)
    {
      v61 = sub_1AFC85C2C(*(v62 + 16), 0);
      sub_1AFC86D54(&v152, v61 + 4, v63, v62);
      v143 = v155;
      v144 = v154;

      sub_1AF0FBB14();
    }

    v152 = v61;
    v20 = v141;
    sub_1AF782304(&v152, sub_1AF6247D8, sub_1AF79F50C);
    if (!v20)
    {
      v134 = v16;
      v133 = v12;
      v64 = *(v152 + 2);
      v141 = 0;
      v132 = v152;
      if (!v64)
      {
        LODWORD(v136) = 0;
        v142 = MEMORY[0x1E69E7CC0];
LABEL_135:

        if (*(v142 + 2) && (v152 = v142, v156 = 8, sub_1AF7AD234(0, &qword_1EB63E970, &_s7ContextC14AssignmentInfoVN, MEMORY[0x1E69E62F8]), sub_1AF7A4638(), v120 = v133, v121 = v134, v122 = v141, sub_1AFDFE918(), (v141 = v122) != 0))
        {
          (*(v151 + 8))(v121, v120);
        }

        else
        {
          if (v136)
          {
            v152 = v137;
            v156 = 9;
            sub_1AF7A4728(0, &qword_1EB63E988, _s11MetadataSetCMa);
            sub_1AF7A478C();
            sub_1AFDFE918();
            (*(v151 + 8))(v134, v133);
          }

          (*(v151 + 8))(v134, v133);
        }
      }

      LODWORD(v136) = 0;
      v131 = "not supported in ";
      v123 = "own baseType for inParameter";
      v130 = (v149 + 32);
      v124 = "Ignoring assignment from ";
      v65 = (v152 + 64);
      v142 = MEMORY[0x1E69E7CC0];
      v129 = xmmword_1AFE431C0;
      v135 = v21;
      while (1)
      {
        v66 = *(v21 + 264);
        if (*(v66 + 16))
        {
          v68 = *(v65 - 4);
          v67 = *(v65 - 3);
          v69 = *(v65 - 1);
          v149 = *(v65 - 2);
          v70 = *v65;

          v71 = sub_1AF419914(v68, v67);
          if (v72)
          {
            v144 = v70;
            v73 = *(*(v66 + 56) + 8 * v71);

            v74 = *(v21 + 264);
            if (*(v74 + 16))
            {

              v75 = sub_1AF419914(v149, v69);
              if (v76)
              {
                v143 = *(*(v74 + 56) + 8 * v75);

                Strong = swift_weakLoadStrong();
                v138 = v73;
                v139 = v69;
                v140 = v67;
                if (Strong)
                {
                  v78 = Strong;
                  _s17TypedArraySnippetCMa();
                  if (swift_dynamicCastClass())
                  {
                    v79 = 4;
                  }

                  else
                  {
                    _s19StaticSwitchSnippetCMa();
                    if (swift_dynamicCastClass())
                    {
                      v79 = 5;
                    }

                    else
                    {
                      _s15VariableSnippetCMa();
                      if (swift_dynamicCastClass())
                      {
                        v79 = 1;
                      }

                      else
                      {
                        _s24VariableReferenceSnippetCMa();
                        if (swift_dynamicCastClass())
                        {
                          v79 = 2;
                        }

                        else
                        {
                          _s20ArraySequenceSnippetCMa();
                          if (swift_dynamicCastClass())
                          {
                            v79 = 9;
                          }

                          else if (*v78 == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
                          {
                            v79 = 0;
                          }

                          else
                          {
                            v87 = *v78;
                            _s17CustomCodeSnippetCMa();
                            if (swift_dynamicCastClass())
                            {
                              v79 = 3;
                            }

                            else if (v87 == _TtCO3VFX21GraphV1CodeGeneration11ContextExit)
                            {
                              v79 = 6;
                            }

                            else if (v87 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
                            {
                              v79 = 7;
                            }

                            else
                            {
                              _s10SubContextCMa();
                              if (swift_dynamicCastClass())
                              {
                                v79 = 8;
                              }

                              else
                              {
                                v79 = 10;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v88 = swift_weakLoadStrong();
                  if (v88)
                  {
                    v89 = v88;
                    LODWORD(v149) = v79;
                    if (swift_dynamicCastClass())
                    {
                      v90 = 4;
                      goto LABEL_112;
                    }

                    _s19StaticSwitchSnippetCMa();
                    if (swift_dynamicCastClass())
                    {
                      v90 = 5;
                      goto LABEL_112;
                    }

                    _s15VariableSnippetCMa();
                    if (swift_dynamicCastClass())
                    {
                      v90 = 1;
                      goto LABEL_112;
                    }

                    _s24VariableReferenceSnippetCMa();
                    if (swift_dynamicCastClass())
                    {
                      v90 = 2;
                      goto LABEL_112;
                    }

                    _s20ArraySequenceSnippetCMa();
                    if (swift_dynamicCastClass())
                    {
                      v90 = 9;
                      goto LABEL_112;
                    }

                    if (*v89 == _TtCO3VFX21GraphV1CodeGeneration11CodeSnippet)
                    {
                      LODWORD(v128) = 0;
                    }

                    else
                    {
                      v119 = *v89;
                      _s17CustomCodeSnippetCMa();
                      if (swift_dynamicCastClass())
                      {
                        v90 = 3;
                      }

                      else if (v119 == _TtCO3VFX21GraphV1CodeGeneration11ContextExit)
                      {
                        v90 = 6;
                      }

                      else if (v119 == _TtCO3VFX21GraphV1CodeGeneration12ContextEntry)
                      {
                        v90 = 7;
                      }

                      else
                      {
                        _s10SubContextCMa();
                        if (swift_dynamicCastClass())
                        {
                          v90 = 8;
                        }

                        else
                        {
                          v90 = 10;
                        }
                      }

LABEL_112:
                      LODWORD(v128) = v90;
                    }

                    v98 = v144;
                    LODWORD(v127) = v144 != 0;
                    if (v144)
                    {

                      v99 = v140;

                      v100 = v137;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v152 = v100;
                      sub_1AF856FC8(v98, v68, v99, isUniquelyReferenced_nonNull_native);

                      v137 = v152;
                    }

                    v102 = v138;
                    v103 = swift_weakLoadStrong();
                    v104 = *(v103 + 32);
                    v126 = *(v103 + 24);

                    v105 = *(v102 + 4);
                    v125 = *(v102 + 3);

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v142 = sub_1AF425704(0, *(v142 + 2) + 1, 1, v142);
                    }

                    v107 = *(v142 + 2);
                    v106 = *(v142 + 3);
                    if (v107 >= v106 >> 1)
                    {
                      v142 = sub_1AF425704(v106 > 1, v107 + 1, 1, v142);
                    }

                    v108 = v142;
                    *(v142 + 2) = v107 + 1;
                    v109 = &v108[40 * v107];
                    *(v109 + 4) = v126;
                    *(v109 + 5) = v104;
                    v109[48] = v149;
                    *(v109 + 7) = v125;
                    *(v109 + 8) = v105;
                    v110 = v143;
                    v111 = swift_weakLoadStrong();
                    v113 = *(v111 + 24);
                    v112 = *(v111 + 32);

                    v114 = *(v110 + 4);
                    v149 = *(v110 + 3);
                    v116 = *(v108 + 2);
                    v115 = *(v108 + 3);

                    if (v116 >= v115 >> 1)
                    {
                      v142 = sub_1AF425704(v115 > 1, v116 + 1, 1, v142);
                    }

                    LODWORD(v136) = v136 | v127;

                    v117 = v142;
                    *(v142 + 2) = v116 + 1;
                    v118 = &v117[40 * v116];
                    *(v118 + 4) = v113;
                    *(v118 + 5) = v112;
                    v118[48] = v128;
                    *(v118 + 7) = v149;
                    *(v118 + 8) = v114;
                  }

                  else
                  {
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    v152 = 0;
                    v153 = 0xE000000000000000;
                    sub_1AFDFE218();
                    MEMORY[0x1B2718AE0](0xD000000000000019, v131 | 0x8000000000000000);
                    MEMORY[0x1B2718AE0](v68, v140);
                    MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
                    MEMORY[0x1B2718AE0](v149, v139);
                    MEMORY[0x1B2718AE0](0xD00000000000002DLL, v123 | 0x8000000000000000);
                    v91 = v152;
                    v92 = v153;
                    v93 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                    v94 = swift_allocObject();
                    *(v94 + 16) = v129;
                    *(v94 + 56) = MEMORY[0x1E69E6158];
                    *(v94 + 64) = sub_1AF0D544C();
                    v149 = v91;
                    *(v94 + 32) = v91;
                    *(v94 + 40) = v92;

                    sub_1AFDFC4C8();

                    v95 = v146;
                    sub_1AFDFC288();
                    v128 = v19[12];
                    v127 = v19[16];
                    v96 = v148;
                    v97 = &v148[v19[20]];
                    (*v130)(v148, v95, v147);
                    *(v96 + v128) = v93;
                    *(v96 + v127) = 0;
                    *v97 = v149;
                    v97[1] = v92;

                    sub_1AFDFC608();

                    sub_1AF7A45D8(v96, sub_1AF0D4E74);
                  }
                }

                else
                {
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  v152 = 0;
                  v153 = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000019, v131 | 0x8000000000000000);
                  MEMORY[0x1B2718AE0](v68, v67);
                  MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
                  MEMORY[0x1B2718AE0](v149, v69);
                  MEMORY[0x1B2718AE0](0xD00000000000002CLL, v124 | 0x8000000000000000);
                  v81 = v152;
                  v80 = v153;
                  v82 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF7A4574(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
                  v83 = swift_allocObject();
                  *(v83 + 16) = v129;
                  *(v83 + 56) = MEMORY[0x1E69E6158];
                  *(v83 + 64) = sub_1AF0D544C();
                  v149 = v81;
                  *(v83 + 32) = v81;
                  *(v83 + 40) = v80;

                  sub_1AFDFC4C8();

                  v84 = v146;
                  sub_1AFDFC288();
                  v128 = v19[12];
                  v127 = v19[16];
                  v85 = v148;
                  v86 = &v148[v19[20]];
                  (*v130)(v148, v84, v147);
                  *(v85 + v128) = v82;
                  *(v85 + v127) = 0;
                  *v86 = v149;
                  v86[1] = v80;

                  sub_1AFDFC608();

                  sub_1AF7A45D8(v85, sub_1AF0D4E74);
                }

                v21 = v135;
                goto LABEL_57;
              }
            }

            else
            {
            }
          }

          else
          {
          }
        }

LABEL_57:
        v65 += 5;
        if (!--v64)
        {
          goto LABEL_135;
        }
      }
    }

LABEL_143:

    __break(1u);
  }

  return result;
}

uint64_t _s9ErrorInfoVwxx()
{
}

void *_s9ErrorInfoVwcp(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;

  return a1;
}

void *_s9ErrorInfoVwca(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  a1[6] = a2[6];
  a1[7] = a2[7];

  return a1;
}

void *_s9ErrorInfoVwta(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;

  v7 = a2[7];
  a1[6] = a2[6];
  a1[7] = v7;

  return a1;
}

uint64_t _s7ContextC18GenerationSettingsVwxx()
{
}

uint64_t _s7ContextC18GenerationSettingsVwcp(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

uint64_t _s7ContextC18GenerationSettingsVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t _s7ContextC18GenerationSettingsVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  return a1;
}

unint64_t sub_1AF79F4B8()
{
  result = qword_1EB63E820;
  if (!qword_1EB63E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63E820);
  }

  return result;
}

uint64_t sub_1AF79F50C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = (v7 + 40 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v8;
        v15 = v10;
        do
        {
          if (v12 == *v15 && v13 == *(v15 + 8))
          {
            break;
          }

          result = sub_1AFDFEE28();
          if ((result & 1) == 0)
          {
            break;
          }

          v17 = *(v15 + 56);
          v18 = *(v15 + 72);
          v19 = *(v15 + 16);
          *(v15 + 40) = *v15;
          *(v15 + 56) = v19;
          *(v15 + 72) = *(v15 + 32);
          *v15 = v12;
          *(v15 + 8) = v13;
          *(v15 + 16) = v17;
          *(v15 + 32) = v18;
          v15 -= 40;
        }

        while (!__CFADD__(v14++, 1));
        ++v9;
        v10 += 40;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF7A4858();
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v21[0] = (v6 + 32);
    v21[1] = v5;
    sub_1AF79FDA4(v21, v22, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF79F688(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF79FB54(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    if (v2 <= 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF4485F8(0, &qword_1EB63E698);
      v5 = sub_1AFDFD488();
      *(v5 + 16) = v2 / 2;
    }

    v7[0] = (v5 + 32);
    v7[1] = (v2 / 2);
    v6 = v5;
    sub_1AF7A02E0(v7, v8, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF79F790(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2)
    {
      return sub_1AF79FCE4(0, v2, 1, a1);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      _s12ParameterOutCMa();
      v6 = sub_1AFDFD488();
      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    }

    v7 = v6 & 0xFFFFFFFFFFFFFF8;
    v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
    v8[1] = v5;
    sub_1AF7A092C(v8, v9, a1, v4);
    *(v7 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF79F880(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = (v7 + 16 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v8;
        v15 = v10;
        do
        {
          if (v12 == *v15 && v13 == *(v15 + 8))
          {
            break;
          }

          result = sub_1AFDFEE28();
          if ((result & 1) == 0)
          {
            break;
          }

          *(v15 + 16) = *v15;
          *v15 = v12;
          *(v15 + 8) = v13;
          v15 -= 16;
        }

        while (!__CFADD__(v14++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v18[0] = (v6 + 32);
    v18[1] = v5;
    sub_1AF7A0DE4(v18, v19, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF79F9D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AFDFE9D8();
  if (result >= v2)
  {
    if (v2 >= 2)
    {
      v7 = *a1;
      v8 = -1;
      v9 = 1;
      v10 = *a1;
      do
      {
        v11 = (v7 + 32 * v9);
        v12 = *v11;
        v13 = v11[1];
        v14 = v8;
        v15 = v10;
        do
        {
          if (v12 == *v15 && v13 == *(v15 + 8))
          {
            break;
          }

          result = sub_1AFDFEE28();
          if ((result & 1) == 0)
          {
            break;
          }

          v17 = *(v15 + 48);
          v18 = *(v15 + 56);
          v19 = *(v15 + 16);
          *(v15 + 32) = *v15;
          *(v15 + 48) = v19;
          *v15 = v12;
          *(v15 + 8) = v13;
          *(v15 + 16) = v17;
          *(v15 + 24) = v18;
          v15 -= 32;
        }

        while (!__CFADD__(v14++, 1));
        ++v9;
        v10 += 32;
        --v8;
      }

      while (v9 != v2);
    }
  }

  else
  {
    v4 = result;
    v5 = v2 / 2;
    if (v2 <= 1)
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      sub_1AF4485F8(0, &unk_1EB6388E8);
      v6 = sub_1AFDFD488();
      *(v6 + 16) = v5;
    }

    v21[0] = (v6 + 32);
    v21[1] = v5;
    sub_1AF7A12D8(v21, v22, a1, v4);
    *(v6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1AF79FB54(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4 + 104 * a3;
    v7 = result - a3;
    do
    {
      v8 = v7;
      v9 = v6;
      while (1)
      {
        sub_1AF7A70A0(v9, &v20);
        v10 = (v9 - 104);
        sub_1AF7A70A0(v9 - 104, v19);
        if (v20 == v19[0] && *(&v20 + 1) == v19[1])
        {
          break;
        }

        v12 = sub_1AFDFEE28();
        sub_1AF7A7124(v19);
        result = sub_1AF7A7124(&v20);
        if (v12)
        {
          v23 = *(v9 + 48);
          v24 = *(v9 + 64);
          v25 = *(v9 + 80);
          v26 = *(v9 + 96);
          v20 = *v9;
          v21 = *(v9 + 16);
          v22 = *(v9 + 32);
          v13 = *(v9 - 88);
          *v9 = *v10;
          *(v9 + 16) = v13;
          v14 = *(v9 - 72);
          v15 = *(v9 - 56);
          v16 = *(v9 - 40);
          v17 = *(v9 - 24);
          *(v9 + 96) = *(v9 - 8);
          *(v9 + 64) = v16;
          *(v9 + 80) = v17;
          *(v9 + 32) = v14;
          *(v9 + 48) = v15;
          *(v9 - 24) = v25;
          *(v9 - 40) = v24;
          *(v9 - 56) = v23;
          *(v9 - 8) = v26;
          *v10 = v20;
          *(v9 - 88) = v21;
          *(v9 - 72) = v22;
          v9 -= 104;
          if (!__CFADD__(v8++, 1))
          {
            continue;
          }
        }

        goto LABEL_5;
      }

      sub_1AF7A7124(v19);
      result = sub_1AF7A7124(&v20);
LABEL_5:
      ++v4;
      v6 += 104;
      --v7;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1AF79FCE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
    do
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v11 = v7;
      do
      {
        result = *(v9 + 40);
        if (result == *(*v11 + 40) && *(v9 + 48) == *(*v11 + 48))
        {
          break;
        }

        result = sub_1AFDFEE28();
        if ((result & 1) == 0)
        {
          break;
        }

        v13 = *v11;
        *v11 = v9;
        v11[1] = v13;
        --v11;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 += 8;
      --v8;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t sub_1AF79FDA4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v87 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v86 = v9;
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        ++v8;
        v9 = v86;
        goto LABEL_32;
      }

      v12 = *a3;
      v13 = (*a3 + 40 * v11);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*a3 + 40 * v8);
      if (v14 == *v16 && v15 == v16[1])
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_1AFDFEE28();
      }

      v19 = v8 + 2;
      if (v8 + 2 < v6)
      {
        v20 = (v12 + 40 * v8 + 48);
        v21 = v20;
        v9 = v86;
        while (1)
        {
          v8 = v19;
          v23 = v21[5];
          v21 += 5;
          v22 = v23;
          if (v20[4] == *(v20 - 1) && v22 == *v20)
          {
            if (v18)
            {
              if (v10 <= v19 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v18 ^ sub_1AFDFEE28()))
          {
            v11 = v8 - 1;
            goto LABEL_27;
          }

          v19 = v8 + 1;
          v20 = v21;
          if (v6 == v8 + 1)
          {
            v11 = v8;
            v8 = v6;
            goto LABEL_27;
          }
        }
      }

      v8 += 2;
LABEL_27:
      v25 = v10 <= v11;
      v9 = v86;
      if (v18 & v25)
      {
LABEL_28:
        v26 = 40 * v8 - 16;
        v27 = 40 * v10 + 32;
        v28 = v8;
        v29 = v10;
        do
        {
          if (v29 != --v28)
          {
            v30 = (*a3 + v27);
            v31 = *a3 + v26;
            v32 = *(v30 - 2);
            v33 = *(v30 - 1);
            v34 = *v30;
            v35 = *(v31 + 8);
            v36 = *(v31 - 8);
            *(v30 - 2) = *(v31 - 24);
            *(v30 - 1) = v36;
            *v30 = v35;
            *(v31 - 24) = v32;
            *(v31 - 8) = v33;
            *(v31 + 8) = v34;
          }

          ++v29;
          v26 -= 40;
          v27 += 40;
        }

        while (v29 < v28);
      }

LABEL_32:
      v37 = a3[1];
      if (v8 < v37 && v8 - v10 < v7)
      {
        if (v10 + v7 >= v37)
        {
          v39 = a3[1];
        }

        else
        {
          v39 = v10 + v7;
        }

        if (v10 + v7 == v8)
        {
          v8 = v39;
        }

        else
        {
          v82 = v10;
          v83 = v5;
          v40 = *a3;
          v41 = *a3 + 40 * v8 - 40;
          v42 = v10 - v8;
          do
          {
            v43 = (v40 + 40 * v8);
            v44 = *v43;
            v45 = v43[1];
            v46 = v42;
            v47 = v41;
            do
            {
              if (v44 == *v47 && v45 == *(v47 + 8))
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v49 = *(v47 + 56);
              v50 = *(v47 + 72);
              v51 = *(v47 + 16);
              *(v47 + 40) = *v47;
              *(v47 + 56) = v51;
              *(v47 + 72) = *(v47 + 32);
              *v47 = v44;
              *(v47 + 8) = v45;
              *(v47 + 16) = v49;
              *(v47 + 32) = v50;
              v47 -= 40;
            }

            while (!__CFADD__(v46++, 1));
            ++v8;
            v41 += 40;
            --v42;
          }

          while (v8 != v39);
          v8 = v39;
          v10 = v82;
          v5 = v83;
          v9 = v86;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v54 = *(v9 + 2);
      v53 = *(v9 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v9 = sub_1AF4209A4(v53 > 1, v54 + 1, 1, v9);
      }

      *(v9 + 2) = v55;
      v56 = v9 + 32;
      v57 = &v9[16 * v54 + 32];
      *v57 = v10;
      *(v57 + 1) = v8;
      if (v54)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v58 = v55 - 1;
      if (v55 >= 4)
      {
        v62 = &v56[16 * v55];
        v63 = *(v62 - 7) - *(v62 - 8);
        v61 = *(v62 - 5) - *(v62 - 6);
        v64 = &v9[16 * v55];
        v59 = *v64;
        v60 = *(v64 + 1);
        if (v61 - v59 + v60 >= v63)
        {
          v67 = v55 - 2;
          v66 = *&v56[16 * v58 + 8] - *&v56[16 * v58];
          goto LABEL_69;
        }
      }

      else
      {
        if (v55 != 3)
        {
          v65 = *&v9[16 * v55 + 8] - *&v9[16 * v55];
          v66 = *&v56[16 * v58 + 8] - *&v56[16 * v58];
LABEL_66:
          if (v66 < v65)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v59 = *(v9 + 6);
        v60 = *(v9 + 7);
        v61 = *(v9 + 5) - *(v9 + 4);
      }

      v65 = v60 - v59;
      v66 = *&v56[16 * v58 + 8] - *&v56[16 * v58];
      if (v65 + v66 < v61)
      {
        goto LABEL_66;
      }

      v67 = v55 - 2;
LABEL_69:
      if (v61 < v66)
      {
        v58 = v67;
      }

LABEL_71:
      v68 = &v56[16 * v58];
      v69 = *(v68 - 2);
      v70 = *(v68 + 1);
      sub_1AF7A17E0((*a3 + 40 * v69), (*a3 + 40 * *v68), *a3 + 40 * v70, v87);
      if (v5)
      {
      }

      *(v68 - 2) = v69;
      *(v68 - 1) = v70;
      v71 = *(v9 + 2);
      v55 = v71 - 1;
      memmove(&v56[16 * v58], v68 + 16, 16 * (v71 - 1 - v58));
      *(v9 + 2) = v71 - 1;
      if (v71 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v88 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v72 = v9;
  v75 = *(v9 + 2);
  v73 = (v9 + 16);
  v74 = v75;
  if (v75 >= 2)
  {
    do
    {
      v76 = &v72[16 * v74];
      v77 = *v76;
      v78 = &v73[2 * v74];
      v79 = v78[1];
      sub_1AF7A17E0((*a3 + 40 * *v76), (*a3 + 40 * *v78), *a3 + 40 * v79, v88);
      if (v5)
      {
        break;
      }

      *v76 = v77;
      *(v76 + 1) = v79;
      v80 = *v73 - 1;
      memmove(&v73[2 * v74], v78 + 2, 16 * (*v73 - v74));
      *v73 = v80;
      v74 = v80;
    }

    while (v80 > 1);
  }
}

uint64_t sub_1AF7A02E0(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    __dst = *a1;
    v6 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v8 = *a3;
        sub_1AF7A70A0(*a3 + 104 * v5, &v81);
        sub_1AF7A70A0(v8 + 104 * v7, &v79);
        v9 = v81 == v79 && *(&v81 + 1) == v80;
        v73 = v6;
        if (v9)
        {
          v77 = 0;
        }

        else
        {
          v77 = sub_1AFDFEE28();
        }

        sub_1AF7A7124(&v79);
        sub_1AF7A7124(&v81);
        v10 = v7 + 2;
        v71 = v7;
        v11 = 104 * v7;
        v12 = v8 + 104 * v7 + 208;
        v13 = v11 + 104;
        do
        {
          v15 = v10;
          v16 = v5;
          v17 = v13;
          if (v10 >= v4)
          {
            break;
          }

          sub_1AF7A70A0(v12, &v81);
          sub_1AF7A70A0(v12 - 104, &v79);
          v18 = v81 == v79 && *(&v81 + 1) == v80;
          v14 = v18 ? 0 : sub_1AFDFEE28();
          sub_1AF7A7124(&v79);
          sub_1AF7A7124(&v81);
          v10 = v15 + 1;
          v12 += 104;
          ++v5;
          v13 = v17 + 104;
        }

        while (((v77 ^ v14) & 1) == 0);
        v7 = v71;
        if (v71 < v15 && (v77 & 1) != 0)
        {
          v19 = v71;
          do
          {
            if (v19 != v16)
            {
              v20 = (*a3 + v11);
              v21 = (*a3 + v17);
              v84 = v20[3];
              v85 = v20[4];
              v86 = v20[5];
              v87 = *(v20 + 12);
              v81 = *v20;
              v82 = v20[1];
              v83 = v20[2];
              memmove(v20, v21, 0x68uLL);
              v21[3] = v84;
              v21[4] = v85;
              v21[5] = v86;
              *(v21 + 12) = v87;
              *v21 = v81;
              v21[1] = v82;
              v21[2] = v83;
            }

            ++v19;
            v17 -= 104;
            v11 += 104;
            v23 = v19 < v16--;
          }

          while (v23);
        }

        v5 = v15;
        v6 = v73;
        a4 = v75;
      }

      v22 = a3[1];
      v23 = v5 < v22 && v5 - v7 < a4;
      if (v23)
      {
        if (v7 + a4 >= v22)
        {
          v24 = a3[1];
        }

        else
        {
          v24 = v7 + a4;
        }

        if (v7 + a4 == v5)
        {
          v5 = v24;
        }

        else
        {
          v72 = v7;
          v74 = v6;
          v25 = *a3 + 104 * v5;
          v26 = v7 - v5;
          do
          {
            v27 = v26;
            v28 = v25;
            while (1)
            {
              sub_1AF7A70A0(v28, &v81);
              v29 = (v28 - 104);
              sub_1AF7A70A0(v28 - 104, &v79);
              if (v81 == v79 && *(&v81 + 1) == v80)
              {
                break;
              }

              v31 = sub_1AFDFEE28();
              sub_1AF7A7124(&v79);
              sub_1AF7A7124(&v81);
              if (v31)
              {
                v84 = *(v28 + 48);
                v85 = *(v28 + 64);
                v86 = *(v28 + 80);
                v87 = *(v28 + 96);
                v81 = *v28;
                v82 = *(v28 + 16);
                v83 = *(v28 + 32);
                v32 = *(v28 - 88);
                *v28 = *v29;
                *(v28 + 16) = v32;
                v33 = *(v28 - 72);
                v34 = *(v28 - 56);
                v35 = *(v28 - 40);
                v36 = *(v28 - 24);
                *(v28 + 96) = *(v28 - 8);
                *(v28 + 64) = v35;
                *(v28 + 80) = v36;
                *(v28 + 32) = v33;
                *(v28 + 48) = v34;
                *(v28 - 24) = v86;
                *(v28 - 40) = v85;
                *(v28 - 56) = v84;
                *(v28 - 8) = v87;
                *v29 = v81;
                *(v28 - 88) = v82;
                *(v28 - 72) = v83;
                v28 -= 104;
                if (!__CFADD__(v27++, 1))
                {
                  continue;
                }
              }

              goto LABEL_39;
            }

            sub_1AF7A7124(&v79);
            sub_1AF7A7124(&v81);
LABEL_39:
            ++v5;
            v25 += 104;
            --v26;
          }

          while (v5 != v24);
          v5 = v24;
          v7 = v72;
          v6 = v74;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AF4209A4(0, *(v6 + 2) + 1, 1, v6);
      }

      v39 = *(v6 + 2);
      v38 = *(v6 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v6 = sub_1AF4209A4(v38 > 1, v39 + 1, 1, v6);
      }

      *(v6 + 2) = v40;
      v41 = v6 + 32;
      v42 = &v6[16 * v39 + 32];
      *v42 = v7;
      *(v42 + 1) = v5;
      if (v39)
      {
        break;
      }

LABEL_3:
      v4 = a3[1];
      a4 = v75;
      if (v5 >= v4)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v43 = v40 - 1;
      if (v40 >= 4)
      {
        v47 = &v41[16 * v40];
        v48 = *(v47 - 7) - *(v47 - 8);
        v46 = *(v47 - 5) - *(v47 - 6);
        v49 = &v6[16 * v40];
        v44 = *v49;
        v45 = *(v49 + 1);
        if (v46 - v44 + v45 >= v48)
        {
          v52 = v40 - 2;
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
          goto LABEL_65;
        }
      }

      else
      {
        if (v40 != 3)
        {
          v50 = *&v6[16 * v40 + 8] - *&v6[16 * v40];
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
LABEL_62:
          if (v51 < v50)
          {
            goto LABEL_3;
          }

          goto LABEL_67;
        }

        v44 = *(v6 + 6);
        v45 = *(v6 + 7);
        v46 = *(v6 + 5) - *(v6 + 4);
      }

      v50 = v45 - v44;
      v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
      if (v50 + v51 < v46)
      {
        goto LABEL_62;
      }

      v52 = v40 - 2;
LABEL_65:
      if (v46 < v51)
      {
        v43 = v52;
      }

LABEL_67:
      v53 = v6;
      v54 = &v41[16 * v43];
      v55 = *(v54 - 2);
      v56 = *(v54 + 1);
      v57 = v88;
      sub_1AF7A1A40((*a3 + 104 * v55), (*a3 + 104 * *v54), (*a3 + 104 * v56), __dst);
      v88 = v57;
      if (v57)
      {
      }

      *(v54 - 2) = v55;
      *(v54 - 1) = v56;
      v6 = v53;
      v58 = *(v53 + 2);
      v40 = v58 - 1;
      memmove(&v41[16 * v43], v54 + 16, 16 * (v58 - 1 - v43));
      *(v53 + 2) = v58 - 1;
      if (v58 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v59 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF650C88(v6);
  }

  v60 = v6 + 16;
  v61 = *(v6 + 2);
  if (v61 >= 2)
  {
    do
    {
      v62 = v6;
      v63 = &v6[16 * v61];
      v64 = *v63;
      v65 = &v60[2 * v61];
      v66 = v65[1];
      v67 = v88;
      sub_1AF7A1A40((*a3 + 104 * *v63), (*a3 + 104 * *v65), (*a3 + 104 * v66), v59);
      v88 = v67;
      if (v67)
      {
        break;
      }

      *v63 = v64;
      *(v63 + 1) = v66;
      v68 = *v60 - 1;
      memmove(&v60[2 * v61], v65 + 2, 16 * (*v60 - v61));
      *v60 = v68;
      v61 = v68;
      v23 = v68 > 1;
      v6 = v62;
    }

    while (v23);
  }
}

uint64_t sub_1AF7A092C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v72 = *a1;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        ++v6;
        v15 = a4;
        goto LABEL_32;
      }

      v10 = *a3;
      v11 = *(*a3 + 8 * v9);
      v12 = *(*a3 + 8 * v6);
      if (*(v11 + 40) == *(v12 + 40) && *(v11 + 48) == *(v12 + 48))
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_1AFDFEE28();
      }

      v16 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v17 = v10 + 8 * v6 + 16;
        while (1)
        {
          v6 = v16;
          v18 = *(v17 - 8);
          if (*(*v17 + 40) == *(v18 + 40) && *(*v17 + 48) == *(v18 + 48))
          {
            if (v14)
            {
              v15 = a4;
              if (v8 <= v16 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v14 ^ sub_1AFDFEE28()))
          {
            v9 = v6 - 1;
            goto LABEL_27;
          }

          v16 = v6 + 1;
          v17 += 8;
          if (v5 == v6 + 1)
          {
            v9 = v6;
            v6 = v5;
            goto LABEL_27;
          }
        }
      }

      v6 += 2;
LABEL_27:
      v15 = a4;
      if ((v14 & (v8 <= v9)) != 0)
      {
LABEL_28:
        v20 = 8 * v6 - 8;
        v21 = 8 * v8;
        v22 = v6;
        v23 = v8;
        do
        {
          if (v23 != --v22)
          {
            v24 = *a3;
            v25 = *(*a3 + v21);
            *(v24 + v21) = *(*a3 + v20);
            *(v24 + v20) = v25;
          }

          ++v23;
          v20 -= 8;
          v21 += 8;
        }

        while (v23 < v22);
      }

LABEL_32:
      v26 = a3[1];
      if (v6 < v26 && v6 - v8 < v15)
      {
        if (v8 + v15 >= v26)
        {
          v28 = a3[1];
        }

        else
        {
          v28 = v8 + v15;
        }

        if (v8 + v15 == v6)
        {
          v6 = v28;
        }

        else
        {
          v68 = v8;
          v69 = v7;
          v29 = *a3;
          v30 = *a3 + 8 * v6 - 8;
          v31 = v8 - v6;
          do
          {
            v32 = *(v29 + 8 * v6);
            v33 = v31;
            v34 = v30;
            do
            {
              if (*(v32 + 40) == *(*v34 + 40) && *(v32 + 48) == *(*v34 + 48))
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v36 = *v34;
              *v34 = v32;
              v34[1] = v36;
              --v34;
            }

            while (!__CFADD__(v33++, 1));
            ++v6;
            v30 += 8;
            --v31;
          }

          while (v6 != v28);
          v6 = v28;
          v8 = v68;
          v7 = v69;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF4209A4(0, *(v7 + 2) + 1, 1, v7);
      }

      v39 = *(v7 + 2);
      v38 = *(v7 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v7 = sub_1AF4209A4(v38 > 1, v39 + 1, 1, v7);
      }

      *(v7 + 2) = v40;
      v41 = v7 + 32;
      v42 = &v7[16 * v39 + 32];
      *v42 = v8;
      *(v42 + 1) = v6;
      if (v39)
      {
        break;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v43 = v40 - 1;
      if (v40 >= 4)
      {
        v47 = &v41[16 * v40];
        v48 = *(v47 - 7) - *(v47 - 8);
        v46 = *(v47 - 5) - *(v47 - 6);
        v49 = &v7[16 * v40];
        v44 = *v49;
        v45 = *(v49 + 1);
        if (v46 - v44 + v45 >= v48)
        {
          v52 = v40 - 2;
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
          goto LABEL_69;
        }
      }

      else
      {
        if (v40 != 3)
        {
          v50 = *&v7[16 * v40 + 8] - *&v7[16 * v40];
          v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
LABEL_66:
          if (v51 < v50)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v44 = *(v7 + 6);
        v45 = *(v7 + 7);
        v46 = *(v7 + 5) - *(v7 + 4);
      }

      v50 = v45 - v44;
      v51 = *&v41[16 * v43 + 8] - *&v41[16 * v43];
      if (v50 + v51 < v46)
      {
        goto LABEL_66;
      }

      v52 = v40 - 2;
LABEL_69:
      if (v46 < v51)
      {
        v43 = v52;
      }

LABEL_71:
      v53 = &v41[16 * v43];
      v54 = *(v53 - 2);
      v55 = *(v53 + 1);
      sub_1AF7A1D70((*a3 + 8 * v54), (*a3 + 8 * *v53), (*a3 + 8 * v55), v72);
      if (v4)
      {
      }

      *(v53 - 2) = v54;
      *(v53 - 1) = v55;
      v56 = *(v7 + 2);
      v40 = v56 - 1;
      memmove(&v41[16 * v43], v53 + 16, 16 * (v56 - 1 - v43));
      *(v7 + 2) = v56 - 1;
      if (v56 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v57 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AF650C88(v7);
  }

  v58 = v7;
  v61 = *(v7 + 2);
  v59 = (v7 + 16);
  v60 = v61;
  if (v61 >= 2)
  {
    do
    {
      v62 = &v58[16 * v60];
      v63 = *v62;
      v64 = &v59[2 * v60];
      v65 = v64[1];
      sub_1AF7A1D70((*a3 + 8 * *v62), (*a3 + 8 * *v64), (*a3 + 8 * v65), v57);
      if (v4)
      {
        break;
      }

      *v62 = v63;
      *(v62 + 1) = v65;
      v66 = *v59 - 1;
      memmove(&v59[2 * v60], v64 + 2, 16 * (*v59 - v60));
      *v59 = v66;
      v60 = v66;
    }

    while (v66 > 1);
  }
}

uint64_t sub_1AF7A0DE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v80 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v79 = v9;
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        ++v8;
        v9 = v79;
        goto LABEL_32;
      }

      v12 = (*a3 + 16 * v11);
      v13 = (*a3 + 16 * v8);
      if (*v12 == *v13 && v12[1] == v13[1])
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1AFDFEE28();
      }

      v16 = v8 + 2;
      if (v8 + 2 < v6)
      {
        v17 = v13 + 3;
        v18 = v13 + 3;
        while (1)
        {
          v8 = v16;
          v20 = v18[2];
          v18 += 2;
          v19 = v20;
          if (v17[1] == *(v17 - 1) && v19 == *v17)
          {
            if (v15)
            {
              v9 = v79;
              if (v10 <= v16 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v15 ^ sub_1AFDFEE28()))
          {
            v11 = v8 - 1;
            goto LABEL_27;
          }

          v16 = v8 + 1;
          v17 = v18;
          if (v6 == v8 + 1)
          {
            v11 = v8;
            v8 = v6;
            goto LABEL_27;
          }
        }
      }

      v8 += 2;
LABEL_27:
      v22 = v10 <= v11;
      v9 = v79;
      if (v15 & v22)
      {
LABEL_28:
        v23 = 0;
        v24 = 16 * v8;
        v25 = 16 * v10;
        v26 = v10;
        do
        {
          if (v26 != v8 + v23 - 1)
          {
            v27 = (*a3 + v25);
            v28 = *a3 + v24;
            v29 = *v27;
            v30 = v27[1];
            *v27 = *(v28 - 16);
            *(v28 - 16) = v29;
            *(v28 - 8) = v30;
          }

          ++v26;
          --v23;
          v24 -= 16;
          v25 += 16;
        }

        while (v26 < v8 + v23);
      }

LABEL_32:
      v31 = a3[1];
      if (v8 < v31 && v8 - v10 < v7)
      {
        if (v10 + v7 >= v31)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = v10 + v7;
        }

        if (v10 + v7 == v8)
        {
          v8 = v33;
        }

        else
        {
          v75 = v10;
          v76 = v5;
          v34 = *a3;
          v35 = *a3 + 16 * v8 - 16;
          v36 = v10 - v8;
          do
          {
            v37 = (v34 + 16 * v8);
            v38 = *v37;
            v39 = v37[1];
            v40 = v36;
            v41 = v35;
            do
            {
              if (v38 == *v41 && v39 == *(v41 + 8))
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              *(v41 + 16) = *v41;
              *v41 = v38;
              *(v41 + 8) = v39;
              v41 -= 16;
            }

            while (!__CFADD__(v40++, 1));
            ++v8;
            v35 += 16;
            --v36;
          }

          while (v8 != v33);
          v8 = v33;
          v10 = v75;
          v5 = v76;
          v9 = v79;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v45 = *(v9 + 2);
      v44 = *(v9 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v9 = sub_1AF4209A4(v44 > 1, v45 + 1, 1, v9);
      }

      *(v9 + 2) = v46;
      v47 = v9 + 32;
      v48 = &v9[16 * v45 + 32];
      *v48 = v10;
      *(v48 + 1) = v8;
      if (v45)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v49 = v46 - 1;
      if (v46 >= 4)
      {
        v53 = &v47[16 * v46];
        v54 = *(v53 - 7) - *(v53 - 8);
        v52 = *(v53 - 5) - *(v53 - 6);
        v55 = &v9[16 * v46];
        v50 = *v55;
        v51 = *(v55 + 1);
        if (v52 - v50 + v51 >= v54)
        {
          v58 = v46 - 2;
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
          goto LABEL_69;
        }
      }

      else
      {
        if (v46 != 3)
        {
          v56 = *&v9[16 * v46 + 8] - *&v9[16 * v46];
          v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
LABEL_66:
          if (v57 < v56)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v50 = *(v9 + 6);
        v51 = *(v9 + 7);
        v52 = *(v9 + 5) - *(v9 + 4);
      }

      v56 = v51 - v50;
      v57 = *&v47[16 * v49 + 8] - *&v47[16 * v49];
      if (v56 + v57 < v52)
      {
        goto LABEL_66;
      }

      v58 = v46 - 2;
LABEL_69:
      if (v52 < v57)
      {
        v49 = v58;
      }

LABEL_71:
      v59 = &v47[16 * v49];
      v60 = *(v59 - 2);
      v61 = *(v59 + 1);
      sub_1AF7A1FA8((*a3 + 16 * v60), (*a3 + 16 * *v59), (*a3 + 16 * v61), v80);
      if (v5)
      {
      }

      *(v59 - 2) = v60;
      *(v59 - 1) = v61;
      v62 = *(v9 + 2);
      v46 = v62 - 1;
      memmove(&v47[16 * v49], v59 + 16, 16 * (v62 - 1 - v49));
      *(v9 + 2) = v62 - 1;
      if (v62 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v63 = *a1;
  v64 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v65 = v9;
  v68 = *(v9 + 2);
  v66 = (v9 + 16);
  v67 = v68;
  if (v68 >= 2)
  {
    do
    {
      v69 = &v65[16 * v67];
      v70 = *v69;
      v71 = &v66[2 * v67];
      v72 = v71[1];
      sub_1AF7A1FA8((*a3 + 16 * *v69), (*a3 + 16 * *v71), (*a3 + 16 * v72), v63);
      if (v64)
      {
        break;
      }

      *v69 = v70;
      *(v69 + 1) = v72;
      v73 = *v66 - 1;
      memmove(&v66[2 * v67], v71 + 2, 16 * (*v66 - v67));
      *v66 = v73;
      v67 = v73;
    }

    while (v73 > 1);
  }
}

uint64_t sub_1AF7A12D8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = a4;
    v8 = 0;
    v85 = *a1;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v84 = v9;
      v10 = v8;
      v11 = v8 + 1;
      if (v8 + 1 >= v6)
      {
        ++v8;
        v9 = v84;
        goto LABEL_32;
      }

      v12 = (*a3 + 32 * v11);
      v13 = (*a3 + 32 * v8);
      if (*v12 == *v13 && v12[1] == v13[1])
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1AFDFEE28();
      }

      v16 = v8 + 2;
      if (v8 + 2 < v6)
      {
        v17 = v13 + 5;
        v18 = v13 + 5;
        while (1)
        {
          v8 = v16;
          v20 = v18[4];
          v18 += 4;
          v19 = v20;
          if (v17[3] == *(v17 - 1) && v19 == *v17)
          {
            if (v15)
            {
              v9 = v84;
              if (v10 <= v16 - 1)
              {
                goto LABEL_28;
              }

              goto LABEL_32;
            }
          }

          else if ((v15 ^ sub_1AFDFEE28()))
          {
            v11 = v8 - 1;
            goto LABEL_27;
          }

          v16 = v8 + 1;
          v17 = v18;
          if (v6 == v8 + 1)
          {
            v11 = v8;
            v8 = v6;
            goto LABEL_27;
          }
        }
      }

      v8 += 2;
LABEL_27:
      v22 = v10 <= v11;
      v9 = v84;
      if (v15 & v22)
      {
LABEL_28:
        v23 = 32 * v8 - 16;
        v24 = (32 * v10) | 0x18;
        v25 = v8;
        v26 = v10;
        do
        {
          if (v26 != --v25)
          {
            v27 = (*a3 + v24);
            v28 = *a3 + v23;
            v29 = *(v27 - 3);
            v30 = *(v27 - 1);
            v31 = *v27;
            v32 = *v28;
            *(v27 - 3) = *(v28 - 16);
            *(v27 - 1) = v32;
            *(v28 - 16) = v29;
            *v28 = v30;
            *(v28 + 8) = v31;
          }

          ++v26;
          v23 -= 32;
          v24 += 32;
        }

        while (v26 < v25);
      }

LABEL_32:
      v33 = a3[1];
      if (v8 < v33 && v8 - v10 < v7)
      {
        if (v10 + v7 >= v33)
        {
          v35 = a3[1];
        }

        else
        {
          v35 = v10 + v7;
        }

        if (v10 + v7 == v8)
        {
          v8 = v35;
        }

        else
        {
          v80 = v10;
          v81 = v5;
          v36 = *a3;
          v37 = *a3 + 32 * v8 - 32;
          v38 = v10 - v8;
          do
          {
            v39 = (v36 + 32 * v8);
            v40 = *v39;
            v41 = v39[1];
            v42 = v38;
            v43 = v37;
            do
            {
              if (v40 == *v43 && v41 == *(v43 + 8))
              {
                break;
              }

              if ((sub_1AFDFEE28() & 1) == 0)
              {
                break;
              }

              v45 = *(v43 + 48);
              v46 = *(v43 + 56);
              v47 = *(v43 + 16);
              *(v43 + 32) = *v43;
              *(v43 + 48) = v47;
              *v43 = v40;
              *(v43 + 8) = v41;
              *(v43 + 16) = v45;
              *(v43 + 24) = v46;
              v43 -= 32;
            }

            while (!__CFADD__(v42++, 1));
            ++v8;
            v37 += 32;
            --v38;
          }

          while (v8 != v35);
          v8 = v35;
          v10 = v80;
          v5 = v81;
          v9 = v84;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1AF4209A4(0, *(v9 + 2) + 1, 1, v9);
      }

      v50 = *(v9 + 2);
      v49 = *(v9 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v9 = sub_1AF4209A4(v49 > 1, v50 + 1, 1, v9);
      }

      *(v9 + 2) = v51;
      v52 = v9 + 32;
      v53 = &v9[16 * v50 + 32];
      *v53 = v10;
      *(v53 + 1) = v8;
      if (v50)
      {
        break;
      }

LABEL_3:
      v6 = a3[1];
      v7 = a4;
      if (v8 >= v6)
      {
        goto LABEL_75;
      }
    }

    while (1)
    {
      v54 = v51 - 1;
      if (v51 >= 4)
      {
        v58 = &v52[16 * v51];
        v59 = *(v58 - 7) - *(v58 - 8);
        v57 = *(v58 - 5) - *(v58 - 6);
        v60 = &v9[16 * v51];
        v55 = *v60;
        v56 = *(v60 + 1);
        if (v57 - v55 + v56 >= v59)
        {
          v63 = v51 - 2;
          v62 = *&v52[16 * v54 + 8] - *&v52[16 * v54];
          goto LABEL_69;
        }
      }

      else
      {
        if (v51 != 3)
        {
          v61 = *&v9[16 * v51 + 8] - *&v9[16 * v51];
          v62 = *&v52[16 * v54 + 8] - *&v52[16 * v54];
LABEL_66:
          if (v62 < v61)
          {
            goto LABEL_3;
          }

          goto LABEL_71;
        }

        v55 = *(v9 + 6);
        v56 = *(v9 + 7);
        v57 = *(v9 + 5) - *(v9 + 4);
      }

      v61 = v56 - v55;
      v62 = *&v52[16 * v54 + 8] - *&v52[16 * v54];
      if (v61 + v62 < v57)
      {
        goto LABEL_66;
      }

      v63 = v51 - 2;
LABEL_69:
      if (v57 < v62)
      {
        v54 = v63;
      }

LABEL_71:
      v64 = &v52[16 * v54];
      v65 = *(v64 - 2);
      v66 = *(v64 + 1);
      sub_1AF7A21D0((*a3 + 32 * v65), (*a3 + 32 * *v64), (*a3 + 32 * v66), v85);
      if (v5)
      {
      }

      *(v64 - 2) = v65;
      *(v64 - 1) = v66;
      v67 = *(v9 + 2);
      v51 = v67 - 1;
      memmove(&v52[16 * v54], v64 + 16, 16 * (v67 - 1 - v54));
      *(v9 + 2) = v67 - 1;
      if (v67 <= 2)
      {
        goto LABEL_3;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v68 = *a1;
  v69 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1AF650C88(v9);
  }

  v70 = v9;
  v73 = *(v9 + 2);
  v71 = (v9 + 16);
  v72 = v73;
  if (v73 >= 2)
  {
    do
    {
      v74 = &v70[16 * v72];
      v75 = *v74;
      v76 = &v71[2 * v72];
      v77 = v76[1];
      sub_1AF7A21D0((*a3 + 32 * *v74), (*a3 + 32 * *v76), (*a3 + 32 * v77), v68);
      if (v69)
      {
        break;
      }

      *v74 = v75;
      *(v74 + 1) = v77;
      v78 = *v71 - 1;
      memmove(&v71[2 * v72], v76 + 2, 16 * (*v71 - v72));
      *v71 = v78;
      v72 = v78;
    }

    while (v78 > 1);
  }
}

uint64_t sub_1AF7A17E0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v16 = v7 == v4;
      v4 += 40;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v16 = v7 == v6;
    v6 += 40;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 40;
    v5 -= 40;
    v18 = v12;
    do
    {
      v19 = *(v18 - 40);
      v20 = *(v18 - 32);
      v18 -= 40;
      v21 = v19 == *(v6 - 5) && v20 == *(v6 - 4);
      if (!v21 && (sub_1AFDFEE28() & 1) != 0)
      {
        if ((v5 + 40) != v6)
        {
          v24 = *v17;
          v25 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v12 <= v4 || (v6 -= 40, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 40) != v12)
      {
        v22 = *v18;
        v23 = *(v18 + 16);
        *(v5 + 32) = *(v18 + 32);
        *v5 = v22;
        *(v5 + 16) = v23;
      }

      v5 -= 40;
      v12 = v18;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_39:
  v26 = (v12 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v26])
  {
    memmove(v6, v4, 40 * v26);
  }

  return 1;
}

uint64_t sub_1AF7A1A40(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 104;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 104;
  if (v9 >= v11)
  {
    if (__dst != a2 || &a2[104 * v11] <= __dst)
    {
      memmove(__dst, a2, 104 * v11);
    }

    v12 = &v4[104 * v11];
    if (v10 < 104)
    {
      v16 = v6;
      goto LABEL_46;
    }

    if (v6 <= v7)
    {
      v16 = v6;
      goto LABEL_46;
    }

    while (1)
    {
      v16 = v6 - 104;
      v17 = v12 - 104;
      v5 -= 104;
      while (1)
      {
        sub_1AF7A70A0(v17, &v26);
        sub_1AF7A70A0((v6 - 104), &v24);
        v20 = v26 == v24 && v27 == v25;
        v21 = v20 ? 0 : sub_1AFDFEE28();
        sub_1AF7A7124(&v24);
        sub_1AF7A7124(&v26);
        if (v21)
        {
          break;
        }

        if (v5 + 104 != v17 + 104)
        {
          memmove(v5, v17, 0x68uLL);
        }

        v18 = v17 - 104;
        v5 -= 104;
        v19 = v17 > v4;
        v17 -= 104;
        if (!v19)
        {
          v12 = v18 + 104;
          v16 = v6;
          goto LABEL_46;
        }
      }

      if (v5 + 104 != v6)
      {
        memmove(v5, v6 - 104, 0x68uLL);
      }

      v12 = v17 + 104;
      if (v17 + 104 > v4)
      {
        v6 -= 104;
        if (v16 > v7)
        {
          continue;
        }
      }

      v12 = v17 + 104;
      goto LABEL_46;
    }
  }

  if (__dst != __src || &__src[104 * v9] <= __dst)
  {
    memmove(__dst, __src, 104 * v9);
  }

  v12 = &v4[104 * v9];
  if (v8 < 104 || v6 >= v5)
  {
    v16 = v7;
    goto LABEL_46;
  }

  do
  {
    sub_1AF7A70A0(v6, &v26);
    sub_1AF7A70A0(v4, &v24);
    v13 = v26 == v24 && v27 == v25;
    if (v13)
    {
      sub_1AF7A7124(&v24);
      sub_1AF7A7124(&v26);
    }

    else
    {
      v14 = sub_1AFDFEE28();
      sub_1AF7A7124(&v24);
      sub_1AF7A7124(&v26);
      if (v14)
      {
        v15 = v6;
        v13 = v7 == v6;
        v6 += 104;
        if (v13)
        {
          goto LABEL_18;
        }

LABEL_17:
        memmove(v7, v15, 0x68uLL);
        goto LABEL_18;
      }
    }

    v15 = v4;
    v13 = v7 == v4;
    v4 += 104;
    if (!v13)
    {
      goto LABEL_17;
    }

LABEL_18:
    v7 += 104;
  }

  while (v4 < v12 && v6 < v5);
  v16 = v7;
LABEL_46:
  v22 = (v12 - v4) / 104;
  if (v16 != v4 || v16 >= &v4[104 * v22])
  {
    memmove(v16, v4, 104 * v22);
  }

  return 1;
}

uint64_t sub_1AF7A1D70(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 40) == *(*v4 + 40) && *(*v6 + 48) == *(*v4 + 48);
      if (!v16 && (sub_1AFDFEE28() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 48);
      v21 = *(v19 + 40) == *(*v17 + 40) && v20 == *(*v17 + 48);
      if (!v21 && (sub_1AFDFEE28() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}