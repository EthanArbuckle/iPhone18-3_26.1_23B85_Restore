unint64_t sub_1AD498774(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1ADB06B20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1ADB063B0();
        sub_1ADB07090();
        v11 = v10;
        sub_1ADB06460();
        v12 = sub_1ADB070D0();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1AD498954(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1ADB06B20();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1ADB07090();
        ProvisioningRequirement.RequirementType.rawValue.getter();
        sub_1ADB06460();

        v10 = sub_1ADB070D0() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + v2);
          v13 = (v11 + v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unsigned __int8 *sub_1AD498B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v76 = a2;

  result = sub_1ADB06540();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AD49781C();
    v42 = v41;

    v5 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1ADB06C70();
      v7 = v74;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v26 = result + 1;
            v27 = a3;
            v16 = 1;
            do
            {
              v28 = *v26;
              if (v28 < 0x30 || v28 >= v23)
              {
                if (v28 < 0x41 || v28 >= v24)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v13 * v27;
              v31 = (v13 * v27);
              if (v31 != v30)
              {
                goto LABEL_126;
              }

              v13 = v31 + (v28 + v29);
              if (v13 != v13)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v16 = 0;
            v19 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          LOWORD(v35) = 0;
          v36 = a3;
          v16 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v32)
            {
              if (v37 < 0x41 || v37 >= v33)
              {
                v19 = 0;
                if (v37 < 0x61 || v37 >= v34)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v35 * v36;
            v40 = (v35 * v36);
            if (v40 != v39)
            {
              goto LABEL_126;
            }

            v35 = v40 + (v37 + v38);
            if (v35 != v35)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = a3;
          v16 = 1;
          while (1)
          {
            v17 = *v14;
            if (v17 < 0x30 || v17 >= v10)
            {
              if (v17 < 0x41 || v17 >= v11)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v12)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v13 * v15;
            v21 = (v13 * v15);
            if (v21 != v20)
            {
              goto LABEL_126;
            }

            v13 = v21 - (v17 + v18);
            if (v13 != v13)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        return (v19 | (v16 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v5) & 0xF;
  v75 = v6;
  v76 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v43)
      {
        LOWORD(v45) = 0;
        v65 = a3 + 48;
        v66 = a3 + 55;
        v67 = a3 + 87;
        if (a3 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v75;
        v69 = a3;
        v16 = 1;
        while (1)
        {
          v70 = *v68;
          if (v70 < 0x30 || v70 >= v65)
          {
            if (v70 < 0x41 || v70 >= v66)
            {
              v19 = 0;
              if (v70 < 0x61 || v70 >= v67)
              {
                goto LABEL_127;
              }

              v71 = -87;
            }

            else
            {
              v71 = -55;
            }
          }

          else
          {
            v71 = -48;
          }

          v72 = v45 * v69;
          v73 = (v45 * v69);
          if (v73 != v72)
          {
            goto LABEL_126;
          }

          v45 = v73 + (v70 + v71);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          v68 = (v68 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        LOWORD(v45) = 0;
        v46 = a3 + 48;
        v47 = a3 + 55;
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v75 + 1;
        v50 = a3;
        v16 = 1;
        while (1)
        {
          v51 = *v49;
          if (v51 < 0x30 || v51 >= v46)
          {
            if (v51 < 0x41 || v51 >= v47)
            {
              v19 = 0;
              if (v51 < 0x61 || v51 >= v48)
              {
                goto LABEL_127;
              }

              v52 = -87;
            }

            else
            {
              v52 = -55;
            }
          }

          else
          {
            v52 = -48;
          }

          v53 = v45 * v50;
          v54 = (v45 * v50);
          if (v54 != v53)
          {
            goto LABEL_126;
          }

          v45 = v54 - (v51 + v52);
          if (v45 != v45)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v55 = v43 - 1;
    if (v55)
    {
      LOWORD(v45) = 0;
      v56 = a3 + 48;
      v57 = a3 + 55;
      v58 = a3 + 87;
      if (a3 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v75 + 1;
      v60 = a3;
      v16 = 1;
      do
      {
        v61 = *v59;
        if (v61 < 0x30 || v61 >= v56)
        {
          if (v61 < 0x41 || v61 >= v57)
          {
            v19 = 0;
            if (v61 < 0x61 || v61 >= v58)
            {
              goto LABEL_127;
            }

            v62 = -87;
          }

          else
          {
            v62 = -55;
          }
        }

        else
        {
          v62 = -48;
        }

        v63 = v45 * v60;
        v64 = (v45 * v60);
        if (v64 != v63)
        {
          goto LABEL_126;
        }

        v45 = v64 + (v61 + v62);
        if (v45 != v45)
        {
          goto LABEL_126;
        }

        ++v59;
        --v55;
      }

      while (v55);
LABEL_125:
      v16 = 0;
      v19 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AD499108(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B26F6840](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1AD494CE0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AD4991A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PKContactField(0);
  v4 = v3;
  v5 = sub_1AD499BB8();
  result = MEMORY[0x1B26F6840](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1AD494E30(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1AD49922C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AD499D34();
  result = MEMORY[0x1B26F6840](v2, &type metadata for ProvisioningRequirement.RequirementType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1AD494FDC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AD4992A0(uint64_t a1)
{
  v2 = PKInAppSupportedPaymentNetworks();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1ADB06610();

  v14 = *(a1 + 16);
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = 0;
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  do
  {

    if (v6)
    {
      v9 = 0;
      v10 = v4 + 40;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        sub_1AD499C10();
        result = sub_1ADB06AB0();
        if (!result)
        {
          break;
        }

        ++v9;
        v10 += 16;
        if (v6 == v9)
        {
          goto LABEL_4;
        }
      }

      v11 = sub_1ADB06370();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AD4252E0(0, v7[2] + 1, 1, v7);
      }

      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1AD4252E0((v12 > 1), v13 + 1, 1, v7);
      }

      v7[2] = v13 + 1;
      v7[v13 + 4] = v11;
    }

    else
    {
LABEL_4:
    }

    ++v5;
  }

  while (v5 != v14);

  return v7;
}

uint64_t sub_1AD499488(uint64_t a1)
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
    v5 = *v4++;
    result |= qword_1ADB82EF8[v5];
    --v1;
  }

  while (v1);
  return result;
}

id sub_1AD4994C4(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598880);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  v11 = sub_1ADB05DE0();
  v47 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v48 = [objc_allocWithZone(PKPaymentSummaryItem) init];
  v20 = type metadata accessor for RemoteNetworkPaymentCodable.Types.LineItem(0);
  v21 = a1[*(v20 + 56)];
  if (v21 != 2)
  {
    if (v21)
    {
      v28 = PKInstantFundsOutFeeSummaryItem;
    }

    else
    {
      v28 = PKDisbursementSummaryItem;
    }

    v24 = [objc_allocWithZone(v28) init];
    goto LABEL_11;
  }

  v22 = v20;
  v23 = a1[40];
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = [objc_allocWithZone(PKDeferredPaymentSummaryItem) init];
      sub_1AD3D0E9C(&a1[v22[12]], v10, &qword_1EB598880);
      v36 = v47;
      if ((*(v47 + 48))(v10, 1, v11) == 1)
      {

        sub_1AD3D0E3C(v10, &qword_1EB598880);
      }

      else
      {
        (*(v36 + 32))(v19, v10, v11);
        v38 = sub_1ADB05D80();
        [v24 setDeferredDate_];

        (*(v36 + 8))(v19, v11);
      }

      goto LABEL_14;
    }

    if (v23 == 3)
    {
      v24 = [objc_allocWithZone(PKAutomaticReloadPaymentSummaryItem) init];
      if (*&a1[v22[13] + 8])
      {
        v25 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        v26 = sub_1ADB06370();
        v27 = [v25 initWithString_];

        [v24 setThresholdAmount_];
        goto LABEL_14;
      }

LABEL_11:

      goto LABEL_14;
    }

LABEL_13:
    v24 = v48;
    goto LABEL_14;
  }

  if (!a1[40])
  {
    goto LABEL_13;
  }

  v24 = [objc_allocWithZone(PKRecurringPaymentSummaryItem) init];
  sub_1AD3D0E9C(&a1[v22[8]], v8, &qword_1EB598880);
  v37 = v47;
  v46 = *(v47 + 48);
  if (v46(v8, 1, v11) == 1)
  {
    result = sub_1AD3D0E3C(v8, &qword_1EB598880);
  }

  else
  {
    (*(v37 + 32))(v17, v8, v11);
    v39 = sub_1ADB05D80();
    [v24 setStartDate_];

    result = (*(v37 + 8))(v17, v11);
  }

  v40 = a1[v22[9]];
  if (v40 <= 2)
  {
    if (a1[v22[9]])
    {
      if (v40 == 1)
      {
        v41 = 8;
      }

      else
      {
        v41 = 16;
      }
    }

    else
    {
      v41 = 4;
    }

    goto LABEL_38;
  }

  if (v40 == 3)
  {
    v41 = 32;
    goto LABEL_38;
  }

  if (v40 == 4)
  {
    v41 = 64;
LABEL_38:
    result = [v24 setIntervalUnit_];
  }

  v42 = &a1[v22[10]];
  if ((v42[8] & 1) == 0)
  {
    if ((*v42 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    [v24 setIntervalCount_];
  }

  sub_1AD3D0E9C(&a1[v22[11]], v5, &qword_1EB598880);
  if (v46(v5, 1, v11) == 1)
  {

    sub_1AD3D0E3C(v5, &qword_1EB598880);
  }

  else
  {
    v43 = v47;
    (*(v47 + 32))(v14, v5, v11);
    v44 = sub_1ADB05D80();
    [v24 setEndDate_];

    (*(v43 + 8))(v14, v11);
  }

LABEL_14:
  if (*(a1 + 2))
  {
    v29 = sub_1ADB06370();
    [v24 setLabel_];
  }

  if (*(a1 + 4))
  {
    v30 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v31 = sub_1ADB06370();
    v32 = [v30 initWithString_];

    [v24 setAmount_];
  }

  v33 = *a1;
  v34 = v33 != 2 && (v33 & 1) == 0;
  [v24 setType_];
  return v24;
}

uint64_t sub_1AD499B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AD499BB8()
{
  result = qword_1EB598560;
  if (!qword_1EB598560)
  {
    type metadata accessor for PKContactField(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB598560);
  }

  return result;
}

unint64_t sub_1AD499C10()
{
  result = qword_1EB597F58;
  if (!qword_1EB597F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB597F58);
  }

  return result;
}

uint64_t sub_1AD499C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AD499CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AD499D34()
{
  result = qword_1EB59BC60;
  if (!qword_1EB59BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59BC60);
  }

  return result;
}

uint64_t sub_1AD499D88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    v5 = a3;
    v6 = 2;
    v7 = 3;
    if (a3 != 3)
    {
      v7 = 8;
    }

    if (a3 != 2)
    {
      v6 = v7;
    }

    if (a3)
    {
      v5 = 1;
    }

    if (a3 <= 1u)
    {
      v4 = v5;
    }

    else
    {
      v4 = v6;
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8)
    {
      v4 = 6;
    }

    else
    {
      if (a3 != 9)
      {
        return 9;
      }

      v4 = 7;
    }
  }

  else
  {
    v3 = 4;
    if (a3 != 6)
    {
      v3 = 5;
    }

    if (a3 == 5)
    {
      v4 = 9;
    }

    else
    {
      v4 = v3;
    }
  }

  sub_1AD47A4EC(a1, a2, a3);
  return v4;
}

__n128 ProvisioningStepPrecursorPass.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u8[8];
  *(v6 + 16) = a1;
  result = *a2;
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = a3;
  return result;
}

uint64_t ProvisioningStepPrecursorPass.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  return v3;
}

uint64_t ProvisioningStepPrecursorPass.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepPrecursorPass.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD499F4C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepPrecursorPass();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *a4 = v8;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PassKitCore025ProvisioningStepPrecursorA0C0F6ResultO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

void sub_1AD49A030(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v71 = a7;
  v72 = a8;
  v69 = a5;
  v70 = a6;
  v61 = a3;
  v12 = sub_1ADB06040();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ADB06060();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a2)
  {
    v72 = v18;
    sub_1AD3D3200(0, &qword_1EB59A670);
    v21 = sub_1ADB068B0();
    v22 = swift_allocObject();
    v23 = v61;
    v22[2] = a2;
    v22[3] = v23;
    v22[4] = a4;
    v77 = sub_1AD49B630;
    v78 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1AD471DC4;
    v76 = &block_descriptor_12_2;
    v24 = _Block_copy(&aBlock);

    v25 = a2;

    sub_1ADB06050();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1AD3D76F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD3D7750();
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v20, v15, v24);
    _Block_release(v24);

    (*(v13 + 8))(v15, v12);
    (*(v17 + 8))(v20, v72);
    return;
  }

  v26 = objc_allocWithZone(PKAsyncUnaryOperationComposer);
  v27 = a1;
  v28 = &selRef_identifierFromRecord_;
  v68 = [v26 init];
  v67 = swift_allocObject();
  *(v67 + 16) = MEMORY[0x1E69E7CC0];
  v29 = [v27 downloadablePasses];
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = v29;
  sub_1AD3D3200(0, &qword_1EB5988B8);
  v31 = sub_1ADB06610();

  if (v31 >> 62)
  {
    v32 = sub_1ADB06D00();
    v33 = "Code" + 4;
    if (v32)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    v52 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) v28[99]];
    v53 = swift_allocObject();
    v54 = v61;
    v53[2] = v67;
    v53[3] = v54;
    v53[4] = a4;
    v77 = sub_1AD49B6BC;
    v78 = v53;
    aBlock = MEMORY[0x1E69E9820];
    v74 = 1107296256;
    v75 = sub_1AD434CF8;
    v76 = &block_descriptor_33_0;
    v55 = _Block_copy(&aBlock);

    v56 = v68;
    v57 = [v68 evaluateWithInput:v52 completion:v55];
    _Block_release(v55);

    swift_unknownObjectRelease();

    return;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v33 = "";
  if (!v32)
  {
    goto LABEL_15;
  }

LABEL_7:
  v59 = v27;
  v60 = a4;
  if (v32 >= 1)
  {
    v34 = 0;
    v64 = v31 & 0xC000000000000001;
    v65 = a9;
    v62 = &v75;
    v35 = *(v33 + 8);
    v66 = v31;
    v63 = v32;
    v37 = v70;
    v36 = v71;
    do
    {
      if (v64)
      {
        v38 = MEMORY[0x1B26F6CC0](v34, v31);
      }

      else
      {
        v38 = *(v31 + 8 * v34 + 32);
      }

      v39 = v38;
      ++v34;
      v40 = swift_allocObject();
      v41 = v69;
      *(v40 + 16) = v69;
      *(v40 + 24) = v39;
      v77 = sub_1AD49B63C;
      v78 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v74 = v35;
      v75 = sub_1AD433EF4;
      v76 = &block_descriptor_21_0;
      v42 = _Block_copy(&aBlock);
      v43 = v41;
      v44 = v39;

      v45 = v68;
      [v68 addOperation_];
      _Block_release(v42);
      v46 = swift_allocObject();
      v46[2] = v44;
      v46[3] = v37;
      v47 = v72;
      v46[4] = v36;
      v46[5] = v47;
      v48 = v67;
      v46[6] = v65;
      v46[7] = v48;
      v77 = sub_1AD49B644;
      v78 = v46;
      aBlock = MEMORY[0x1E69E9820];
      v74 = v35;
      v75 = sub_1AD433EF4;
      v76 = &block_descriptor_27_1;
      v49 = _Block_copy(&aBlock);

      v50 = v44;
      v51 = v37;
      swift_unknownObjectRetain();

      [v45 addOperation_];
      _Block_release(v49);

      v31 = v66;
    }

    while (v63 != v34);

    a4 = v60;
    v27 = v59;
    v28 = &selRef_identifierFromRecord_;
    goto LABEL_16;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1AD49A704(uint64_t a1, void (*a2)(id, uint64_t))
{
  if (a1)
  {
    v3 = sub_1ADB05CB0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() errorWithUnderlyingError:v3 defaultSeverity:5];

  v5 = v4;
  a2(v4, 1);
}

void sub_1AD49A7B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = sub_1ADB05D20();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a6 passURL];
  if (v15)
  {
    v16 = v15;
    sub_1ADB05D00();

    v17 = sub_1ADB05CE0();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a2;
  aBlock[4] = sub_1AD49B704;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD49A998;
  aBlock[3] = &block_descriptor_51_2;
  v19 = _Block_copy(aBlock);
  v20 = a6;

  v21 = a2;

  [a5 passAtURL:v17 completion:v19];
  _Block_release(v19);
}

void sub_1AD49A998(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1AD49AA10(int a1, void *a2, void (*a3)(void *, void), uint64_t a4, id a5, void *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v16 = [a5 secureElementPass];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1ADB06370();
    v19 = swift_allocObject();
    v19[2] = a10;
    v19[3] = v17;
    v19[4] = a3;
    v19[5] = a4;
    v19[6] = a2;
    v23[4] = sub_1AD49B6D4;
    v23[5] = v19;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1AD49AC78;
    v23[3] = &block_descriptor_45_1;
    v20 = _Block_copy(v23);

    v21 = v17;

    v22 = a2;

    [a6 ingestProvisioningPassData:a5 cloudStoreCoordinatorDelegate:a7 moreInfoURLs:0 ingestionProperties:0 sid:v18 completion:v20];
    _Block_release(v20);
  }

  else
  {
    a3(a2, 0);
  }
}

uint64_t sub_1AD49AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    v11 = a10;
    v12 = 1;
  }

  else
  {
    swift_beginAccess();
    v15 = a7;
    MEMORY[0x1B26F6680]();
    if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1ADB06640();
    }

    sub_1ADB06670();
    swift_endAccess();
    v11 = a10;
    v12 = 0;
  }

  return a8(v11, v12);
}

uint64_t sub_1AD49AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_1AD3D3200(0, &unk_1EB59B390);
    v10 = sub_1ADB06610();
  }

  v12 = a6;
  v11(v10, a3, a4, a5, a6);
}

uint64_t sub_1AD49AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1ADB06040();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1ADB06060();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AD3D3200(0, &qword_1EB59A670);
  v16 = sub_1ADB068B0();
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a3;
  v17[4] = a5;
  v17[5] = a6;
  aBlock[4] = sub_1AD49B6C8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_39;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  sub_1ADB06050();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1AD3D76F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD3D7750();
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v15, v12, v18);
  _Block_release(v18);

  (*(v21 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v20);
}

void sub_1AD49AFFC(uint64_t a1, void *a2, void (*a3)(void))
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (!(v6 >> 62))
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    if ([a2 isCanceled])
    {
      return;
    }

    swift_beginAccess();
    v7 = *(a1 + 16);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B26F6CC0](0, *(a1 + 16));
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v7 + 32);
    }

    v9 = v8;
    swift_endAccess();

    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_1AD42674C(MEMORY[0x1E69E7CC0]);
    if (!(v10 >> 62))
    {
      v12 = MEMORY[0x1E69E7CC8];
LABEL_9:
      v13 = objc_allocWithZone(type metadata accessor for SEProvisionedPasses());
      SEProvisionedPasses.init(primaryPass:passes:moreInfoItemsForPass:externalProvisioningMode:suppressMakeDefaultOfferForPass:isExpressModeSetupOptional:isExpressEnabled:)(v9, v7, v12, 0, 2, v11, 0, 0);
      v15 = v14;
      a3();

      return;
    }

    v16 = sub_1ADB06D00();
    v12 = MEMORY[0x1E69E7CC8];
    if (!v16)
    {
      goto LABEL_9;
    }

    v17 = [v9 uniqueID];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1ADB063B0();
      v21 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1AD4ECB74(MEMORY[0x1E69E7CC0], v19, v21, isUniquelyReferenced_nonNull_native);

      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    return;
  }

  if (sub_1ADB06D00())
  {
    goto LABEL_3;
  }
}

void sub_1AD49B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  if (*(a1 + 48))
  {

    goto LABEL_3;
  }

  v11 = *(a1 + 24);

  v12 = [v11 precursorCredential];
  if (v12)
  {
    v13 = v12;
    v14 = [*(a1 + 56) sid];
    v15 = sub_1ADB063B0();
    v38 = v16;
    v40 = v15;

    v17 = *(a1 + 16);
    swift_beginAccess();
    v18 = [objc_allocWithZone(PKProvisioningUtility) initWithDestinationWebService:v17[9] managingWebService:v17[6]];
    v19 = v17[9];
    swift_beginAccess();
    v20 = v17[2];
    v21 = v19;
    v22 = [v20 cloudStoreCoordinator];
    v23 = [v13 passTypeIdentifier];
    if (v23)
    {
      v24 = v23;
      sub_1ADB063B0();
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = [v13 serialNumber];
    if (v27)
    {
      v28 = v27;
      sub_1ADB063B0();
      v30 = v29;

      if (v26)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v30 = 0;
      if (v26)
      {
LABEL_12:
        v31 = sub_1ADB06370();

        if (v30)
        {
LABEL_13:
          v32 = sub_1ADB06370();

LABEL_17:
          v33 = [objc_allocWithZone(PKPaymentProvisionPrecursorPassRequest) initWithPassTypeIdentifier:v31 passSerialNumber:v32 actions:0];

          v34 = swift_allocObject();
          v34[2] = sub_1AD49B5D8;
          v34[3] = v8;
          v34[4] = v21;
          v34[5] = v18;
          v34[6] = v22;
          v34[7] = v41;
          v34[8] = v39;
          aBlock[4] = sub_1AD49B5E4;
          aBlock[5] = v34;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1AD3C8BB0;
          aBlock[3] = &block_descriptor_24;
          v35 = _Block_copy(aBlock);
          v36 = v21;

          v37 = v18;
          swift_unknownObjectRetain();

          [v36 provisionPrecursorPassForRequest:v33 completion:v35];
          _Block_release(v35);

          swift_unknownObjectRelease();
          return;
        }

LABEL_16:
        v32 = 0;
        goto LABEL_17;
      }
    }

    v31 = 0;
    if (v30)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

LABEL_3:
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    (*(v9 + 40))(0, 2, a3, a4, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AD49B704(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = a2 == 0;
  [v3 setSecureElementPass_];
  return v4(v5, v6);
}

unint64_t ProvisioningStep.description.getter(unsigned __int8 a1)
{
  v1 = a1;
  result = 0x6544737365737361;
  switch(v1)
  {
    case 4:
      return result;
    case 5:
      return 0x65646F4D74736F6CLL;
    case 6:
    case 25:
      v3 = 5;
      goto LABEL_17;
    case 7:
      v3 = 13;
      goto LABEL_17;
    case 8:
      return 0x6363417075746573;
    case 9:
      return 0x6F73727563657270;
    case 10:
      return 0x6D65726975716572;
    case 11:
      return 0x6C69626967696C65;
    case 12:
      return 0x7A69726F68747561;
    case 13:
      return 0xD000000000000016;
    case 14:
      return 0xD000000000000014;
    case 15:
      return 0x736D726574;
    case 16:
      return 0xD000000000000010;
    case 17:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 18:
    case 24:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x6F697369766F7270;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x747365676E69;
      break;
    case 22:
      result = 0x6341657461647075;
      break;
    case 23:
      result = 0x70756E61656C63;
      break;
    case 26:
      result = 0x6574656C706D6F63;
      break;
    default:
      v4 = 0xE400000000000000;
      v5 = 1701602409;
      v6 = 0xEB00000000676E69;
      v7 = 0x746361736E617274;
      if (v1 != 2)
      {
        v7 = 0x6C69614664616572;
        v6 = 0xEB00000000657275;
      }

      if (v1)
      {
        v5 = 0x676E696C6C6F70;
        v4 = 0xE700000000000000;
      }

      if (v1 <= 1)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }

      if (v1 <= 1)
      {
        v9 = v4;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x1B26F6530](v8, v9);

      MEMORY[0x1B26F6530](41, 0xE100000000000000);
      result = 0x6472614364616572;
      break;
  }

  return result;
}

uint64_t ProvisioningStep.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      v2 = 0;
      goto LABEL_25;
    case 5:
      v2 = 1;
      goto LABEL_25;
    case 6:
      v2 = 2;
      goto LABEL_25;
    case 7:
      v2 = 3;
      goto LABEL_25;
    case 8:
      v2 = 4;
      goto LABEL_25;
    case 9:
      v2 = 5;
      goto LABEL_25;
    case 10:
      v2 = 6;
      goto LABEL_25;
    case 11:
      v2 = 8;
      goto LABEL_25;
    case 12:
      v2 = 9;
      goto LABEL_25;
    case 13:
      v2 = 10;
      goto LABEL_25;
    case 14:
      v2 = 11;
      goto LABEL_25;
    case 15:
      v2 = 12;
      goto LABEL_25;
    case 16:
      v2 = 13;
      goto LABEL_25;
    case 17:
      v2 = 14;
      goto LABEL_25;
    case 18:
      v2 = 15;
      goto LABEL_25;
    case 19:
      v2 = 16;
      goto LABEL_25;
    case 20:
      v2 = 17;
      goto LABEL_25;
    case 21:
      v2 = 18;
      goto LABEL_25;
    case 22:
      v2 = 19;
      goto LABEL_25;
    case 23:
      v2 = 20;
      goto LABEL_25;
    case 24:
      v2 = 21;
      goto LABEL_25;
    case 25:
      v2 = 22;
      goto LABEL_25;
    case 26:
      v2 = 23;
LABEL_25:
      result = MEMORY[0x1B26F7130](v2);
      break;
    default:
      MEMORY[0x1B26F7130](7);
      sub_1ADB06460();

      break;
  }

  return result;
}

uint64_t ProvisioningStep.hashValue.getter(char a1)
{
  sub_1ADB07090();
  ProvisioningStep.hash(into:)(v3, a1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD49BD30()
{
  v1 = *v0;
  sub_1ADB07090();
  ProvisioningStep.hash(into:)(v3, v1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD49BD80()
{
  v1 = *v0;
  sub_1ADB07090();
  ProvisioningStep.hash(into:)(v3, v1);
  return sub_1ADB070D0();
}

uint64_t ProvisioningStep.ReadCardStep.description.getter(unsigned __int8 a1)
{
  v1 = 1701602409;
  v2 = 0x746361736E617274;
  if (a1 != 2)
  {
    v2 = 0x6C69614664616572;
  }

  if (a1)
  {
    v1 = 0x676E696C6C6F70;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AD49BE54()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD49BF20()
{
  sub_1ADB06460();
}

uint64_t sub_1AD49BFD8()
{
  sub_1ADB07090();
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD49C0A0@<X0>(_BYTE *a1@<X8>)
{
  result = _s11PassKitCore16ProvisioningStepO08ReadCardE0O8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1AD49C0D0(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701602409;
  v4 = 0xEB00000000676E69;
  v5 = 0x746361736E617274;
  if (*v1 != 2)
  {
    v5 = 0x6C69614664616572;
    v4 = 0xEB00000000657275;
  }

  if (*v1)
  {
    v3 = 0x676E696C6C6F70;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AD49C158(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701602409;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0x746361736E617274;
  v6 = 0xEB00000000676E69;
  if (v3 != 2)
  {
    v5 = 0x6C69614664616572;
    v6 = 0xEB00000000657275;
  }

  v7 = 0x676E696C6C6F70;
  if (*a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v7 = 1701602409;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE400000000000000;
  v11 = 0x746361736E617274;
  v12 = 0xEB00000000676E69;
  if (*a2 != 2)
  {
    v11 = 0x6C69614664616572;
    v12 = 0xEB00000000657275;
  }

  if (*a2)
  {
    v2 = 0x676E696C6C6F70;
    v10 = 0xE700000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1ADB06F50();
  }

  return v15 & 1;
}

uint64_t sub_1AD49C2B4()
{
  v1 = 1701602409;
  v2 = 0x746361736E617274;
  if (*v0 != 2)
  {
    v2 = 0x6C69614664616572;
  }

  if (*v0)
  {
    v1 = 0x676E696C6C6F70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AD49C33C(char a1)
{
  result = 0x72756F53646E6966;
  switch(a1)
  {
    case 1:
      result = 0x4974736575716572;
      break;
    case 2:
      result = 0x6D726157657270;
      break;
    case 3:
      result = 1919508848;
      break;
    case 4:
      result = 0x7472617473;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x62697461706D6F63;
      break;
    case 8:
      result = 0x747065636361;
      break;
    case 9:
      result = 0x6B63617254657270;
      break;
    case 10:
      result = 0x6974617669746361;
      break;
    case 11:
      result = 0x747365747461;
      break;
    case 12:
      result = 0x6B63617274;
      break;
    case 13:
      result = 0x746361736E617274;
      break;
    case 14:
      result = 0x747365676E69;
      break;
    case 15:
      result = 0x6D6F436F54646461;
      break;
    case 16:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AD49C514()
{
  v1 = *v0;
  sub_1ADB07090();
  ProvisioningCarKeyStep.description.getter(v1);
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD49C578()
{
  ProvisioningCarKeyStep.description.getter(*v0);
  sub_1ADB06460();
}

uint64_t sub_1AD49C5CC()
{
  v1 = *v0;
  sub_1ADB07090();
  ProvisioningCarKeyStep.description.getter(v1);
  sub_1ADB06460();

  return sub_1ADB070D0();
}

uint64_t sub_1AD49C62C@<X0>(_BYTE *a1@<X8>)
{
  result = _s11PassKitCore22ProvisioningCarKeyStepO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1AD49C65C@<X0>(uint64_t *a1@<X8>)
{
  result = ProvisioningCarKeyStep.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AD49C688(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ProvisioningCarKeyStep.description.getter(*a1);
  v5 = v4;
  if (v3 == ProvisioningCarKeyStep.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ADB06F50();
  }

  return v8 & 1;
}

uint64_t _s11PassKitCore16ProvisioningStepO2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 4u:
      if (a2 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 5u:
      if (a2 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 6u:
      if (a2 != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 7u:
      if (a2 != 7)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 8u:
      if (a2 != 8)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 9u:
      if (a2 != 9)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xAu:
      if (a2 != 10)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xBu:
      if (a2 != 11)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xCu:
      if (a2 != 12)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xDu:
      if (a2 != 13)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xEu:
      if (a2 != 14)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0xFu:
      if (a2 != 15)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x10u:
      if (a2 != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x11u:
      if (a2 != 17)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x12u:
      if (a2 != 18)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x13u:
      if (a2 != 19)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x14u:
      if (a2 != 20)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x15u:
      if (a2 != 21)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x16u:
      if (a2 != 22)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x17u:
      if (a2 == 23)
      {
        goto LABEL_47;
      }

      goto LABEL_49;
    case 0x18u:
      if (a2 != 24)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x19u:
      if (a2 != 25)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    case 0x1Au:
      if (a2 != 26)
      {
        goto LABEL_49;
      }

LABEL_47:
      result = 1;
      break;
    default:
      if (a2 - 4 >= 0x17)
      {
        v3 = 1701602409;
        v4 = a1;
        if (a1 > 1u)
        {
          if (a1 == 2)
          {
            v5 = 0x746361736E617274;
          }

          else
          {
            v5 = 0x6C69614664616572;
          }

          if (v4 == 2)
          {
            v6 = 0xEB00000000676E69;
          }

          else
          {
            v6 = 0xEB00000000657275;
          }
        }

        else
        {
          if (a1)
          {
            v5 = 0x676E696C6C6F70;
          }

          else
          {
            v5 = 1701602409;
          }

          if (v4)
          {
            v6 = 0xE700000000000000;
          }

          else
          {
            v6 = 0xE400000000000000;
          }
        }

        v7 = 0xE400000000000000;
        v8 = 0x746361736E617274;
        v9 = 0xEB00000000676E69;
        if (a2 != 2)
        {
          v8 = 0x6C69614664616572;
          v9 = 0xEB00000000657275;
        }

        if (a2)
        {
          v3 = 0x676E696C6C6F70;
          v7 = 0xE700000000000000;
        }

        if (a2 <= 1u)
        {
          v10 = v3;
        }

        else
        {
          v10 = v8;
        }

        if (a2 <= 1u)
        {
          v11 = v7;
        }

        else
        {
          v11 = v9;
        }

        if (v5 == v10 && v6 == v11)
        {

          result = 1;
        }

        else
        {
          v12 = sub_1ADB06F50();

          result = v12 & 1;
        }
      }

      else
      {
LABEL_49:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t _s11PassKitCore16ProvisioningStepO08ReadCardE0O8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1ADB06D60();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t _s11PassKitCore22ProvisioningCarKeyStepO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1ADB06FC0();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1AD49CAAC()
{
  result = qword_1EB59B400;
  if (!qword_1EB59B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B400);
  }

  return result;
}

unint64_t sub_1AD49CB00()
{
  result = qword_1EB59B408;
  if (!qword_1EB59B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B408);
  }

  return result;
}

unint64_t sub_1AD49CB58()
{
  result = qword_1EB59B410;
  if (!qword_1EB59B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B410);
  }

  return result;
}

unint64_t sub_1AD49CBB0()
{
  result = qword_1EB59B418;
  if (!qword_1EB59B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B418);
  }

  return result;
}

unint64_t sub_1AD49CC30()
{
  result = qword_1EB59B420;
  if (!qword_1EB59B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B420);
  }

  return result;
}

unint64_t sub_1AD49CC84()
{
  result = qword_1EB59B428;
  if (!qword_1EB59B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B428);
  }

  return result;
}

unint64_t sub_1AD49CCDC()
{
  result = qword_1EB59B430;
  if (!qword_1EB59B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B430);
  }

  return result;
}

uint64_t sub_1AD49CD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AD49CD98()
{
  result = qword_1EB59B438;
  if (!qword_1EB59B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B438);
  }

  return result;
}

unint64_t sub_1AD49CDEC()
{
  result = qword_1EB59B440;
  if (!qword_1EB59B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59B440);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProvisioningStep(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_20;
  }

  v2 = a2 + 26;
  if (a2 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 26;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 26;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 0x18)
  {
    return v8 - 23;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProvisioningStep(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 26;
  if (a3 + 26 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xE6)
  {
    v5 = 0;
  }

  if (a2 > 0xE5)
  {
    v6 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1AD49CF98(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1AD49CFAC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t static ProvisioningOperationWorker<>.unarchive(outputData:)()
{
  return 0;
}

{
  sub_1AD3D3200(0, &qword_1EB59A0E0);
  swift_getAssociatedTypeWitness();
  return sub_1ADB06870();
}

uint64_t static Result<>.success.getter()
{
  sub_1ADB070E0();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1AD49D09C(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = sub_1ADB05D70();
  }

  else
  {
    v4 = v2;
    v5 = sub_1ADB05CC0();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t static ProvisioningOperationWorker<>.archive(output:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v7];
  v2 = v7[0];
  if (v1)
  {
    v3 = sub_1ADB05D70();
  }

  else
  {
    v4 = v2;
    v5 = sub_1ADB05CC0();

    swift_willThrow();
    return 0;
  }

  return v3;
}

uint64_t sub_1AD49D330@<X0>(unint64_t *a1@<X4>, uint64_t *a2@<X8>)
{
  sub_1AD3D3200(0, &qword_1EB59A0E0);
  sub_1AD3D3200(0, a1);
  result = sub_1ADB06870();
  *a2 = result;
  return result;
}

uint64_t ProvisioningOperationComposer.preflight(to:completion:)(char *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = sub_1ADB06A20();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v45 - v13;
  v14 = *(v7 + 88);
  v15 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v45 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v53 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v52 = &v45 - v20;
  v54 = *(v8 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v57 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v45 - v23;
  v24 = v4[9];
  os_unfair_lock_lock(v24 + 4);
  if (*(v4 + 80) == 2)
  {
    v47 = v12;
    v48 = v16;
    v49 = v15;
    v50 = a2;
    v51 = a3;
    v25 = swift_beginAccess();
    v62 = v4[14];
    v26 = MEMORY[0x1EEE9AC00](v25);
    MEMORY[0x1EEE9AC00](v26);
    v46 = v14;
    sub_1ADB066A0();

    swift_getWitnessTable();
    sub_1ADB06800();

    if ((v61 & 1) != 0 || v60 < v4[13])
    {
      os_unfair_lock_unlock(v24 + 4);
      return v50(0);
    }

    else
    {
      swift_beginAccess();
      v28 = v52;
      sub_1ADB066B0();
      v29 = v54;
      v30 = *(v54 + 16);
      v31 = v58;
      v30(v58, v28, v8);
      (*(v53 + 8))(v28, TupleTypeMetadata2);
      swift_endAccess();
      if (v4[12] <= 1000)
      {
        v32 = v4[12];
      }

      else
      {
        v32 = 0;
      }

      v4[12] = v32 + 2;
      v30(v57, v31, v8);
      v33 = *(v29 + 56);
      v34 = v56;
      v33(v56, 1, 1, v8);
      v35 = v47;
      v30(v47, v59, v8);
      v33(v35, 0, 1, v8);
      v36 = swift_allocObject();
      v37 = v46;
      v36[2] = v8;
      v36[3] = v37;
      v39 = v50;
      v38 = v51;
      v36[4] = v50;
      v36[5] = v38;
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v38;
      v44 = v40;
      v41 = v32 + 1;
      v42 = v55;
      sub_1AD4A307C(v41, v57, v34, v35, sub_1AD4A3F6C, v36, 0, 0, v55, 0, 0, sub_1AD4A3F98, v44, v8);
      v43 = *v42;
      v4[10] = 1;
      v4[11] = v43;
      swift_retain_n();
      sub_1AD4A3624(v42);
      (*(v48 + 8))(v42, v49);
      return (*(v29 + 8))(v58, v8);
    }
  }

  else
  {
    os_unfair_lock_unlock(v24 + 4);
    return a2(0);
  }
}

unsigned __int8 *static ProvisioningOperationResult<A>.success(_:)@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t static ProvisioningOperationResult.silentFailure.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for ProvisioningOperationResult();

  return swift_storeEnumTagMultiPayload();
}

uint64_t *ProvisioningOperationComposer.__allocating_init(context:credential:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1AD4B225C(a1, a2, a3);

  return v6;
}

char *sub_1AD49DAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v35[1] = a7;
  v36 = a6;
  v19 = *(a8 - 8);
  v37 = a8;
  v38 = v19;
  MEMORY[0x1EEE9AC00](a1);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v22;
  v40 = v23;
  v41 = v25;
  v42 = v24;
  type metadata accessor for ProvisioningOperationComposer.RunnerWithInput();
  swift_allocObject();
  swift_unknownObjectRetain();

  v26 = sub_1AD4AB260(a2, a3, a4, a11, a15);
  v36(a1);
  v39 = 32;
  v40 = 0xE100000000000000;
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  *(inited + 32) = a2;
  *(inited + 40) = a15;
  swift_unknownObjectRetain();

  v28 = sub_1AD4A21FC(v21, inited);
  v30 = v29;

  swift_setDeallocating();
  swift_unknownObjectRelease();
  MEMORY[0x1B26F6530](v28, v30);

  v31 = v39;
  v32 = v40;
  swift_beginAccess();
  MEMORY[0x1B26F6530](v31, v32);
  swift_endAccess();

  swift_unownedRetainStrong();
  WitnessTable = swift_getWitnessTable();

  sub_1AD4A2418(v21, v26, WitnessTable);

  (*(v38 + 8))(v21, v37);
  return v26;
}

uint64_t sub_1AD49DD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v17);
  swift_unownedRetainStrong();
  sub_1AD4A27F4(a1, v16, a8, a11);

  return (*(v14 + 8))(v16, a6);
}

char *sub_1AD49DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v62 = a8;
  v58 = a6;
  v61 = a1;
  v60 = a10;
  v59 = a9;
  v57 = a15;
  v56 = a16;
  v55 = a22;
  v49 = a23;
  v50 = a24;
  v54 = a21;
  v53 = a17;
  v64 = a11;
  v65 = *(a11 - 8);
  v52 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v51 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v31;
  v67 = v30;
  v68 = v33;
  v69 = v32;
  v63 = type metadata accessor for ProvisioningOperationComposer.RunnerWithInput4();
  swift_allocObject();
  v48 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v35 = v55;
  v36 = v54;
  v37 = sub_1AD4AC8FC(a2, a3, v34, a5, v58, a7, v52, v57, v56, v53, v54, v55, a23, a24);
  v59(v61);
  v66 = 32;
  v67 = 0xE100000000000000;
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB832E0;
  *(inited + 32) = v48;
  *(inited + 40) = v36;
  *(inited + 48) = a3;
  *(inited + 56) = v35;
  *(inited + 64) = v34;
  *(inited + 72) = v49;
  *(inited + 80) = a5;
  *(inited + 88) = v50;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v39 = v51;
  v40 = sub_1AD4A21FC(v51, inited);
  v42 = v41;

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
  swift_arrayDestroy();
  MEMORY[0x1B26F6530](v40, v42);

  v43 = v66;
  v44 = v67;
  swift_beginAccess();
  MEMORY[0x1B26F6530](v43, v44);
  swift_endAccess();

  swift_unownedRetainStrong();
  WitnessTable = swift_getWitnessTable();

  sub_1AD4A2418(v39, v37, WitnessTable);

  (*(v65 + 8))(v39, v64);
  return v37;
}

char *sub_1AD49E26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v48 = a8;
  v49 = a7;
  v46 = a5;
  v47 = a1;
  v44 = a14;
  v43 = a15;
  v41 = a21;
  v45 = a9;
  v51 = a10;
  v52 = *(a10 - 8);
  v42 = a13;
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v28;
  v54 = v27;
  v55 = v30;
  v56 = v29;
  v50 = type metadata accessor for ProvisioningOperationComposer.RunnerWithInput3();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v31 = sub_1AD4ABE80(a2, a3, a4, v46, a6, v42, v44, v43, a19, a20, a21);
  v48(v47);
  v53 = 32;
  v54 = 0xE100000000000000;
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 32) = a2;
  *(inited + 16) = xmmword_1ADB832F0;
  *(inited + 40) = a19;
  *(inited + 48) = a3;
  *(inited + 56) = a20;
  *(inited + 64) = a4;
  *(inited + 72) = v41;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v33 = sub_1AD4A21FC(v26, inited);
  v35 = v34;

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
  swift_arrayDestroy();
  MEMORY[0x1B26F6530](v33, v35);

  v36 = v53;
  v37 = v54;
  swift_beginAccess();
  MEMORY[0x1B26F6530](v36, v37);
  swift_endAccess();

  swift_unownedRetainStrong();
  WitnessTable = swift_getWitnessTable();

  sub_1AD4A2418(v26, v31, WitnessTable);

  (*(v52 + 8))(v26, v51);
  return v31;
}

char *sub_1AD49E5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v40 = a8;
  v41 = a7;
  v38 = a18;
  v39 = a1;
  v43 = a9;
  v44 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v25;
  v46 = v24;
  v47 = v27;
  v48 = v26;
  v42 = type metadata accessor for ProvisioningOperationComposer.RunnerWithInput2();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v28 = v38;
  v29 = sub_1AD4AB70C(a2, a3, a4, a5, a12, a13, a17, v38);
  v41(v39);
  v45 = 32;
  v46 = 0xE100000000000000;
  swift_unownedRetainStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB81FB0;
  *(inited + 32) = a2;
  *(inited + 40) = a17;
  *(inited + 48) = a3;
  *(inited + 56) = v28;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v31 = sub_1AD4A21FC(v23, inited);
  v33 = v32;

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A858);
  swift_arrayDestroy();
  MEMORY[0x1B26F6530](v31, v33);

  v34 = v45;
  v35 = v46;
  swift_beginAccess();
  MEMORY[0x1B26F6530](v34, v35);
  swift_endAccess();

  swift_unownedRetainStrong();
  WitnessTable = swift_getWitnessTable();

  sub_1AD4A2418(v23, v29, WitnessTable);

  (*(v44 + 8))(v23, v43);
  return v29;
}

uint64_t ProvisioningOperationResultSuccessResolution.hashValue.getter()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](v1);
  return sub_1ADB070D0();
}

uint64_t sub_1AD49E95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = (*a1 + *(**a1 + 184));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1AD4B3910;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_1AD3C5F14(v6);
}

uint64_t sub_1AD49EA1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1AD4B38D8;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + *(**a2 + 184));
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  sub_1AD3C5F14(v5);
  return sub_1AD3C5FB8(v11);
}

uint64_t ProvisioningOperationComposer.onError.getter()
{
  v1 = (v0 + *(*v0 + 184));
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

uint64_t ProvisioningOperationComposer.onError.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 184));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD49EC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t, unsigned __int8 *)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = (*a1 + *(**a1 + 192));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1AD4B48A0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_1AD3C5F14(v6);
}

uint64_t sub_1AD49ECFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1AD4B4934;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + *(**a2 + 192));
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  sub_1AD3C5F14(v5);
  return sub_1AD3C5FB8(v11);
}

uint64_t ProvisioningOperationComposer.onStepChange.getter()
{
  v1 = (v0 + *(*v0 + 192));
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

uint64_t ProvisioningOperationComposer.onStepChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 192));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD49EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, unsigned __int8 *a2)@<X8>)
{
  v11 = *(a2 + a3 - 16);
  v5 = (*a1 + *(**a1 + 200));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  if (v6)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v11;
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = sub_1AD4B3874;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;
  return sub_1AD3C5F14(v6);
}

uint64_t sub_1AD49EFDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = sub_1AD4B3870;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = (*a2 + *(**a2 + 200));
  swift_beginAccess();
  v11 = *v10;
  *v10 = v9;
  v10[1] = v8;
  sub_1AD3C5F14(v5);
  return sub_1AD3C5FB8(v11);
}

uint64_t ProvisioningOperationComposer.onStepCompletion.getter()
{
  v1 = (v0 + *(*v0 + 200));
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

uint64_t ProvisioningOperationComposer.onStepCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 200));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD49F1FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 208));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD4B4954;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD49F2A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4B48D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 208));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

uint64_t ProvisioningOperationComposer.onCompletion.getter()
{
  v1 = (v0 + *(*v0 + 208));
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

uint64_t ProvisioningOperationComposer.onCompletion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 208));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t sub_1AD49F4BC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t (**a1)()@<X8>)@<X8>)
{
  v3 = (*a1 + *(**a1 + 216));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1AD4B3800;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1AD3C5F14(v4);
}

uint64_t sub_1AD49F568(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1AD4B3790;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 216));
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1AD3C5F14(v3);
  return sub_1AD3C5FB8(v8);
}

uint64_t ProvisioningOperationComposer.onPerformingStep.getter()
{
  v1 = (v0 + *(*v0 + 216));
  swift_beginAccess();
  v2 = *v1;
  sub_1AD3C5F14(*v1);
  return v2;
}

uint64_t ProvisioningOperationComposer.onPerformingStep.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 216));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1AD3C5FB8(v6);
}

uint64_t ProvisioningOperationComposer.sid.getter()
{
  v1 = [*(v0 + 56) sid];
  v2 = sub_1ADB063B0();

  return v2;
}

uint64_t sub_1AD49F7D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = v5[10];
  v6[3] = v5[11];
  v6[4] = a1;
  v6[5] = a2;
  v7 = (v2 + v5[23]);
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_1AD4B3988;
  v7[1] = v6;
  return sub_1AD3C5FB8(v8);
}

uint64_t sub_1AD49F8A8(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, uint64_t))
{
  if (a3)
  {
    sub_1ADB06F40();
    a3(0, 0xE000000000000000, a2);
  }

  return result;
}

uint64_t sub_1AD49F934(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_allocObject();
  v6[2] = v5[10];
  v6[3] = v5[11];
  v6[4] = a1;
  v6[5] = a2;
  v7 = (v2 + v5[25]);
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_1AD4B393C;
  v7[1] = v6;
  return sub_1AD3C5FB8(v8);
}

uint64_t sub_1AD49FA08(uint64_t a1, char a2, void (*a3)(void, unint64_t, void))
{
  if (a3)
  {
    sub_1ADB06F40();
    a3(0, 0xE000000000000000, a2 & 1);
  }

  return result;
}

uint64_t *ProvisioningOperationComposer.init(context:credential:replyQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1AD4B225C(a1, a2, a3);

  return v3;
}

void ProvisioningOperationComposer.updateCredential(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(v1 + 72);
  v6 = *(a1 + 24);
  os_unfair_lock_lock(v5 + 4);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v10 = *(v1 + 48);
  *(v1 + 48) = v6;
  sub_1AD3DF24C(v2, v3, v4, v6);
  sub_1AD3CC2E0(v7, v8, v9, v10);

  os_unfair_lock_unlock(v5 + 4);
}

void __swiftcall ProvisioningOperationComposer.archiveState(invalidate:isArchiveForBackup:)(PKSecureElementProvisioningState *__return_ptr retstr, Swift::Bool invalidate, Swift::Bool isArchiveForBackup)
{
  v76 = isArchiveForBackup;
  v74 = invalidate;
  v72 = *v3;
  v4 = *(v72 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_1ADB06A20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v69 - v11;
  v75 = v3[7];
  v13 = [v75 sid];
  v70 = sub_1ADB063B0();
  v73 = v14;

  v71 = v3[9];
  os_unfair_lock_lock(v71 + 4);
  swift_beginAccess();
  v69 = v3;
  v15 = v3[14];
  v83 = (v7 + 32);
  v84 = TupleTypeMetadata2 - 8;
  v81 = v4 - 8;

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v77 = TupleTypeMetadata2;
  v79 = v12;
  v80 = v10;
  v82 = v15;
  while (1)
  {
    if (v16 == sub_1ADB06690())
    {
      v18 = *(TupleTypeMetadata2 - 8);
      (*(v18 + 56))(v10, 1, 1, TupleTypeMetadata2);
    }

    else
    {
      v19 = sub_1ADB06660();
      sub_1ADB06630();
      if (v19)
      {
        v20 = *(TupleTypeMetadata2 - 8);
        (*(v20 + 16))(v10, v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16, TupleTypeMetadata2);
        v21 = __OFADD__(v16++, 1);
        if (v21)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v51 = sub_1ADB06C20();
        v20 = *(TupleTypeMetadata2 - 8);
        if (*(v20 + 64) != 8)
        {
          __break(1u);
LABEL_48:
          sub_1ADB06FF0();
          __break(1u);
          return;
        }

        v86 = v51;
        (*(v20 + 16))(v10, &v86, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v21 = __OFADD__(v16++, 1);
        if (v21)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          swift_once();
          goto LABEL_33;
        }
      }

      v18 = v20;
      (*(v20 + 56))(v10, 0, 1, TupleTypeMetadata2);
    }

    (*v83)(v12, v10, v6);
    if ((*(v18 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v85 = v16;
    v22 = *&v12[*(TupleTypeMetadata2 + 48) + 8];
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 48))(ObjectType, v22);
    v26 = v25;
    v27 = (*(v22 + 56))(ObjectType, v22);
    if (v28 >> 60 != 15)
    {
      v33 = v28;
      v78 = v27;
      TupleTypeMetadata2 = v6;
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v17;
      v36 = sub_1AD425BEC(v24, v26);
      v37 = v17;
      v38 = v17[2];
      v39 = (v35 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_44;
      }

      v41 = v35;
      if (v37[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AD4B0CFC();
        }
      }

      else
      {
        sub_1AD4AE610(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_1AD425BEC(v24, v26);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_48;
        }

        v36 = v42;
      }

      v4 = v6;
      v6 = TupleTypeMetadata2;
      if (v41)
      {

        v17 = v86;
        v44 = (v86[7] + 16 * v36);
        v45 = *v44;
        v46 = v44[1];
        *v44 = v78;
        v44[1] = v33;
        sub_1AD3C757C(v45, v46);
        swift_unknownObjectRelease();
        TupleTypeMetadata2 = v77;
      }

      else
      {
        v17 = v86;
        v86[(v36 >> 6) + 8] |= 1 << v36;
        v47 = (v17[6] + 16 * v36);
        *v47 = v24;
        v47[1] = v26;
        v48 = (v17[7] + 16 * v36);
        *v48 = v78;
        v48[1] = v33;
        swift_unknownObjectRelease();
        v49 = v17[2];
        v21 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        TupleTypeMetadata2 = v77;
        if (v21)
        {
          goto LABEL_45;
        }

        v17[2] = v50;
      }

      goto LABEL_3;
    }

    v29 = sub_1AD425BEC(v24, v26);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      swift_unknownObjectRelease();
LABEL_3:
      v12 = v79;
      v10 = v80;
      goto LABEL_4;
    }

    v32 = swift_isUniquelyReferenced_nonNull_native();
    v86 = v17;
    v12 = v79;
    v10 = v80;
    if (!v32)
    {
      sub_1AD4B0CFC();
      v17 = v86;
    }

    sub_1AD3C757C(*(v17[7] + 16 * v29), *(v17[7] + 16 * v29 + 8));
    sub_1AD4B02D8(v29, v17);
    swift_unknownObjectRelease();
LABEL_4:
    (*(*(v4 - 8) + 8))(v12, v4);
    v15 = v82;
    v16 = v85;
  }

  LOBYTE(v6) = v74;
  if (v74)
  {
    *(v69 + 5) = xmmword_1ADB83300;
  }

  os_unfair_lock_unlock(v71 + 4);
  TupleTypeMetadata2 = v73;
  if (qword_1EB5981C0 != -1)
  {
    goto LABEL_46;
  }

LABEL_33:
  v52 = sub_1ADB05FA0();
  __swift_project_value_buffer(v52, qword_1EB59AB68);

  v53 = sub_1ADB05F80();
  v54 = sub_1ADB06860();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v86 = v56;
    *v55 = 136315650;
    v57 = sub_1AD3CA88C(v70, TupleTypeMetadata2, &v86);
    v58 = v17;
    v59 = v57;

    *(v55 + 4) = v59;
    *(v55 + 12) = 2080;
    if (v6)
    {
      v60 = 0x766E6920646E6120;
    }

    else
    {
      v60 = 0;
    }

    if (v6)
    {
      v61 = 0xEF676E6964696C61;
    }

    else
    {
      v61 = 0xE000000000000000;
    }

    v62 = sub_1AD3CA88C(v60, v61, &v86);

    *(v55 + 14) = v62;
    *(v55 + 22) = 2048;
    v63 = v58[2];

    *(v55 + 24) = v63;

    _os_log_impl(&dword_1AD337000, v53, v54, "[%s] ProvisioningOperationComposer: archiving state%s. %ld outputs archived.", v55, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v56, -1, -1);
    MEMORY[0x1B26F9F20](v55, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v64 = [v75 createDivergentStateClaimNonce_];
  v65 = sub_1AD4A0490();
  v67 = v66;

  v68 = sub_1ADB05D50();
  sub_1AD3C757C(v65, v67);
  [v64 setProvisioningStepState_];
}

uint64_t sub_1AD4A0490()
{
  sub_1ADB059D0();
  swift_allocObject();
  sub_1ADB059C0();
  type metadata accessor for ProvisioningOperationComposer.StateArchive();
  swift_getWitnessTable();
  v0 = sub_1ADB059B0();

  return v0;
}

Swift::tuple_isRunning_Bool_isPreflighting_Bool __swiftcall ProvisioningOperationComposer.runState()()
{
  v1 = *(v0 + 72);
  os_unfair_lock_lock(v1 + 4);
  sub_1AD4B2544(&v5);
  os_unfair_lock_unlock(v1 + 4);
  v3 = v5;
  result.isPreflighting = v2;
  result.isRunning = v3;
  return result;
}

uint64_t sub_1AD4A05F8(int a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v61 = a4;
  v70 = a2;
  v7 = sub_1ADB06040();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1ADB06060();
  isa = v10[-1].isa;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(v4 + 56);
  v14 = [v62 sid];
  v73 = sub_1ADB063B0();
  v16 = v15;

  v69 = a1;
  if (a1)
  {
    v17 = 0x73736563637573;
  }

  else
  {
    v17 = 0x6572756C696166;
  }

  v18 = *(v4 + 72);
  os_unfair_lock_lock(v18 + 4);
  if (*(v4 + 80) == 3)
  {
    os_unfair_lock_unlock(v18 + 4);

    if (a3)
    {
      return a3(result);
    }
  }

  else
  {
    v72 = v16;
    v54 = a3;
    v57 = v9;
    v71 = xmmword_1ADB83300;
    *(v4 + 80) = xmmword_1ADB83300;
    os_unfair_lock_unlock(v18 + 4);
    v63 = v4;
    *(v4 + 80) = v71;
    if (qword_1EB5981C0 != -1)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v55 = v13;
      v56 = isa;
      v20 = sub_1ADB05FA0();
      __swift_project_value_buffer(v20, qword_1EB59AB68);
      isa = v72;

      v21 = sub_1ADB05F80();
      v22 = sub_1ADB06860();

      v23 = os_log_type_enabled(v21, v22);
      v59 = v7;
      v58 = v10;
      v53 = v17;
      if (v23)
      {
        v7 = v17;
        v17 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        aBlock = v10;
        *v17 = 136315394;
        *(v17 + 4) = sub_1AD3CA88C(v73, isa, &aBlock);
        *(v17 + 12) = 2080;
        *(v17 + 14) = sub_1AD3CA88C(v7, 0xE700000000000000, &aBlock);
        _os_log_impl(&dword_1AD337000, v21, v22, "[%s] ProvisioningOperationComposer: Invalidating for %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v10, -1, -1);
        MEMORY[0x1B26F9F20](v17, -1, -1);
      }

      v24 = v63;
      v68 = dispatch_group_create();
      swift_beginAccess();
      v25 = *(v24 + 112);
      v26 = *(v25 + 16);
      *&v71 = v25;

      v67 = v26;
      if (!v26)
      {
        break;
      }

      v27 = 0;
      v66 = &v77;
      v28 = (v71 + 48);
      while (v27 < *(v71 + 16))
      {
        v37 = *(v28 - 1);
        v13 = *v28;
        if (v70)
        {
          ObjectType = swift_getObjectType();
          v38 = *(v63 + 24);
          v64 = *(v63 + 16);
          v39 = *(v63 + 32);
          v40 = *(v63 + 40);
          v41 = *(v63 + 48);
          aBlock = v38;
          v76 = v39;
          v77 = v40;
          LOBYTE(v78) = v41;
          v42 = *(v13 + 5);
          swift_unknownObjectRetain();
          sub_1AD3DF24C(v38, v39, v40, v41);
          v42(v64, &aBlock, v62, ObjectType, v13);
          sub_1AD3CC2E0(aBlock, v76, v77, v78);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v29 = v72;
        ++v27;
        v30 = v68;
        dispatch_group_enter(v68);
        v31 = swift_allocObject();
        v31[2] = v73;
        v31[3] = v29;
        v31[4] = v37;
        v31[5] = v13;
        v31[6] = v30;
        v32 = objc_allocWithZone(PKDeallocationGuard);
        v79 = sub_1AD4B48B0;
        v80 = v31;
        aBlock = MEMORY[0x1E69E9820];
        v76 = 1107296256;
        v77 = sub_1AD471DC4;
        v78 = &block_descriptor_278;
        v33 = _Block_copy(&aBlock);

        swift_unknownObjectRetain();
        v10 = v30;
        v34 = [v32 initWithBlock_];
        _Block_release(v33);

        v7 = swift_getObjectType();
        isa = swift_allocObject();
        *(isa + 16) = v34;
        *(isa + 24) = v10;
        v35 = *(v13 + 4);
        v36 = v10;
        v17 = v34;
        v35(v69 & 1, sub_1AD4B48B4, isa, v7, v13);

        swift_unknownObjectRelease();

        v28 += 3;
        if (v67 == v27)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
    }

LABEL_17:

    v43 = swift_allocObject();
    v44 = v72;
    v43[2] = v73;
    v43[3] = v44;
    v43[4] = v53;
    v43[5] = 0xE700000000000000;
    v45 = v54;
    v46 = v61;
    v43[6] = v54;
    v43[7] = v46;
    v79 = sub_1AD4B48B8;
    v80 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1AD471DC4;
    v78 = &block_descriptor_289;
    v47 = _Block_copy(&aBlock);
    sub_1AD3C5F14(v45);
    v48 = v55;
    sub_1ADB06050();
    v74 = MEMORY[0x1E69E7CC0];
    sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    v49 = v57;
    v50 = v59;
    sub_1ADB06B00();
    v51 = v68;
    sub_1ADB06890();
    _Block_release(v47);

    (*(v60 + 8))(v49, v50);
    (*(v56 + 8))(v48, v58);
  }

  return result;
}

void *sub_1AD4A0E48(int a1, int a2, uint64_t (*a3)(void), uint64_t a4)
{
  v82 = a4;
  v92 = a2;
  v7 = *v4;
  v8 = sub_1ADB06040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1ADB06060();
  v79 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v7 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  v96 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v94 = sub_1ADB06A20();
  v98 = *(v94 - 8);
  v15 = MEMORY[0x1EEE9AC00](v94);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v74 - v18;
  v83 = v4[7];
  v19 = [v83 sid];
  v97 = sub_1ADB063B0();
  v21 = v20;

  v91 = a1;
  v22 = 0x6572756C696166;
  if (a1)
  {
    v22 = 0x73736563637573;
  }

  v81 = v22;
  v23 = v4[9];
  os_unfair_lock_lock(v23 + 4);
  if (*(v4 + 80) != 3)
  {
    v93 = v21;
    v74 = a3;
    v75 = v11;
    v76 = v9;
    v77 = v8;
    v90 = xmmword_1ADB83300;
    *(v4 + 5) = xmmword_1ADB83300;
    os_unfair_lock_unlock(v23 + 4);
    v84 = v4;
    *(v4 + 5) = v90;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v25 = sub_1ADB05FA0();
    __swift_project_value_buffer(v25, qword_1EB59AB68);
    v26 = v93;

    v27 = sub_1ADB05F80();
    v28 = sub_1ADB06860();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v26;
      v32 = v17;
      v33 = v30;
      aBlock = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_1AD3CA88C(v97, v31, &aBlock);
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_1AD3CA88C(v81, 0xE700000000000000, &aBlock);
      _os_log_impl(&dword_1AD337000, v27, v28, "[%s] ProvisioningOperationComposer: Invalidating for %s", v29, 0x16u);
      swift_arrayDestroy();
      v34 = v33;
      v17 = v32;
      MEMORY[0x1B26F9F20](v34, -1, -1);
      MEMORY[0x1B26F9F20](v29, -1, -1);
    }

    v35 = v95;
    v36 = v98;
    v89 = dispatch_group_create();
    v37 = v84;
    swift_beginAccess();
    v38 = v37[14];
    v98 = TupleTypeMetadata2 - 8;
    *&v90 = v36 + 32;
    v86 = &v102;
    v85 = v96 - 8;

    v39 = 0;
    v88 = v17;
    for (i = v38; ; v38 = i)
    {
      if (v39 == sub_1ADB06690())
      {
        v52 = *(TupleTypeMetadata2 - 8);
        (*(v52 + 56))(v17, 1, 1, TupleTypeMetadata2);
      }

      else
      {
        v53 = sub_1ADB06660();
        sub_1ADB06630();
        if (v53)
        {
          v54 = *(TupleTypeMetadata2 - 8);
          (*(v54 + 16))(v17, v38 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v39, TupleTypeMetadata2);
          v55 = __OFADD__(v39++, 1);
          if (v55)
          {
            goto LABEL_23;
          }
        }

        else
        {
          result = sub_1ADB06C20();
          v54 = *(TupleTypeMetadata2 - 8);
          if (*(v54 + 64) != 8)
          {
            __break(1u);
            return result;
          }

          aBlock = result;
          (*(v54 + 16))(v17, &aBlock, TupleTypeMetadata2);
          swift_unknownObjectRelease();
          v55 = __OFADD__(v39++, 1);
          if (v55)
          {
LABEL_23:
            __break(1u);
LABEL_24:

            v65 = swift_allocObject();
            v66 = v93;
            v65[2] = v97;
            v65[3] = v66;
            v65[4] = v81;
            v65[5] = 0xE700000000000000;
            v67 = v74;
            v68 = v82;
            v65[6] = v74;
            v65[7] = v68;
            v104 = sub_1AD4B3994;
            v105 = v65;
            aBlock = MEMORY[0x1E69E9820];
            v101 = 1107296256;
            v102 = sub_1AD471DC4;
            v103 = &block_descriptor_139;
            v69 = _Block_copy(&aBlock);
            sub_1AD3C5F14(v67);
            v70 = v78;
            sub_1ADB06050();
            v99 = MEMORY[0x1E69E7CC0];
            sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
            sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
            v71 = v80;
            v72 = v77;
            sub_1ADB06B00();
            v73 = v89;
            sub_1ADB06890();
            _Block_release(v69);

            (*(v76 + 8))(v71, v72);
            (*(v79 + 8))(v70, v75);
          }
        }

        v52 = v54;
        (*(v54 + 56))(v17, 0, 1, TupleTypeMetadata2);
      }

      (*v90)(v35, v17, v94);
      if ((*(v52 + 48))(v35, 1, TupleTypeMetadata2) == 1)
      {
        goto LABEL_24;
      }

      v56 = &v35[*(TupleTypeMetadata2 + 48)];
      v57 = *v56;
      v58 = *(v56 + 1);
      if (v92)
      {
        ObjectType = swift_getObjectType();
        v60 = v84[2];
        v61 = v84[4];
        v62 = v84[5];
        v63 = *(v84 + 48);
        aBlock = v84[3];
        v101 = v61;
        v102 = v62;
        LOBYTE(v103) = v63;
        v64 = *(v58 + 40);
        sub_1AD3DF24C(aBlock, v61, v62, v63);
        v64(v60, &aBlock, v83, ObjectType, v58);
        sub_1AD3CC2E0(aBlock, v101, v102, v103);
      }

      v40 = v89;
      dispatch_group_enter(v89);
      v41 = swift_allocObject();
      v42 = v93;
      v41[2] = v97;
      v41[3] = v42;
      v41[4] = v57;
      v41[5] = v58;
      v41[6] = v40;
      v43 = objc_allocWithZone(PKDeallocationGuard);
      v104 = sub_1AD4B39E0;
      v105 = v41;
      aBlock = MEMORY[0x1E69E9820];
      v101 = 1107296256;
      v102 = sub_1AD471DC4;
      v103 = &block_descriptor_145;
      v44 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();
      v45 = v40;
      v46 = [v43 initWithBlock_];
      _Block_release(v44);

      v47 = swift_getObjectType();
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      *(v48 + 24) = v45;
      v49 = *(v58 + 32);
      v50 = v45;
      v51 = v46;
      v49(v91 & 1, sub_1AD4B39F8, v48, v47, v58);

      swift_unknownObjectRelease();

      v35 = v95;
      (*(*(v96 - 8) + 8))(v95);
      v17 = v88;
    }
  }

  os_unfair_lock_unlock(v23 + 4);

  if (a3)
  {
    return a3(result);
  }

  return result;
}

uint64_t ProvisioningOperationComposer.deinit()
{
  sub_1AD4A0E48(0, 0, 0, 0);

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  v1 = *(*v0 + 176);
  v2 = sub_1ADB06A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AD3C5FB8(*(v0 + *(*v0 + 184)));
  sub_1AD3C5FB8(*(v0 + *(*v0 + 192)));
  sub_1AD3C5FB8(*(v0 + *(*v0 + 200)));
  sub_1AD3C5FB8(*(v0 + *(*v0 + 208)));
  sub_1AD3C5FB8(*(v0 + *(*v0 + 216)));
  return v0;
}

Swift::Void __swiftcall ProvisioningOperationComposer.run()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1ADB06A20();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = v40 - v6;
  v48 = *(v1 + 88);
  v7 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v49 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = v40 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v40 - v12;
  v14 = *(v2 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v40 - v18;
  v20 = v0[9];
  os_unfair_lock_lock(v20 + 4);
  if (*(v0 + 80) == 2)
  {
    swift_beginAccess();
    sub_1ADB066B0();
    v44 = v14;
    v45 = v19;
    v46 = v7;
    v21 = *(v14 + 16);
    v21(v19, v13, v2);
    (*(v10 + 8))(v13, TupleTypeMetadata2);
    swift_endAccess();
    v22 = v0[12];
    if (v22 > 1000)
    {
      v22 = 0;
    }

    v42 = v22;
    v0[12] = v22 + 2;
    v43 = v17;
    v21(v17, v19, v2);
    v23 = *(v14 + 56);
    v23(v51, 1, 1, v2);
    v23(v50, 1, 1, v2);
    v24 = (v0 + *(*v0 + 184));
    swift_beginAccess();
    v25 = v24[1];
    v41 = *v24;
    v26 = (v0 + *(*v0 + 192));
    swift_beginAccess();
    v28 = *v26;
    v27 = v26[1];
    v29 = (v0 + *(*v0 + 200));
    swift_beginAccess();
    v30 = *v29;
    v31 = v29[1];
    v40[1] = v31;
    v32 = v47;
    v33 = (v0 + *(*v0 + 208));
    swift_beginAccess();
    v34 = *v33;
    v38 = v30;
    v39 = v31;
    v35 = v30;
    v36 = v41;
    sub_1AD4A307C(v42 + 1, v43, v51, v50, v41, v25, v28, v27, v32, v38, v39, *v33, v33[1], v2);
    v37 = *v32;
    v0[10] = 0;
    v0[11] = v37;
    sub_1AD3C5F14(v36);
    sub_1AD3C5F14(v28);
    sub_1AD3C5F14(v35);
    sub_1AD3C5F14(v34);
    sub_1AD4A3624(v32);
    (*(v49 + 8))(v32, v46);
    (*(v44 + 8))(v45, v2);
  }

  else
  {

    os_unfair_lock_unlock(v20 + 4);
  }
}

uint64_t sub_1AD4A21FC(uint64_t a1, uint64_t a2)
{
  v4 = v2[9];
  os_unfair_lock_lock(v4 + 4);
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = v4;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1AD4506A8(0, v5, 0);
    v6 = v21;
    v7 = (a2 + 32);
    do
    {
      v18 = *v7;
      swift_unknownObjectRetain();
      sub_1AD4A2DEC(&v18, v2, &v19);
      swift_unknownObjectRelease();
      v8 = v19;
      v9 = v20;
      v21 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AD4506A8((v10 > 1), v11 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v11 + 1;
      v12 = v6 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      ++v7;
      --v5;
    }

    while (v5);
    v4 = v17;
  }

  v19 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
  sub_1AD43FACC(&qword_1EB59C220, &qword_1EB59A750);
  v13 = sub_1ADB062F0();
  v15 = v14;

  os_unfair_lock_unlock(v4 + 4);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1ADB06F40();
  MEMORY[0x1B26F6530](40, 0xE100000000000000);
  MEMORY[0x1B26F6530](v13, v15);

  MEMORY[0x1B26F6530](41, 0xE100000000000000);
  return v19;
}

void sub_1AD4A2418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v13 - v9;
  v11 = v3[9];
  os_unfair_lock_lock(v11 + 4);
  v12 = &v10[*(TupleTypeMetadata2 + 48)];
  (*(*(v7 - 8) + 16))(v10, a1, v7);
  *v12 = a2;
  *(v12 + 1) = a3;
  swift_beginAccess();
  sub_1ADB066A0();
  swift_unknownObjectRetain();
  sub_1ADB06680();
  swift_endAccess();
  os_unfair_lock_unlock(v11 + 4);
}

void sub_1AD4A27F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a2;
  v40 = a1;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v41 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = sub_1ADB06A20();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v15 = &v33 - v14;
  v42 = sub_1ADB06A20();
  v16 = *(v42 - 8);
  v17 = MEMORY[0x1EEE9AC00](v42);
  v36 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  os_unfair_lock_lock((v5[9] + 16));
  swift_beginAccess();
  v55 = v5[14];
  v50 = v9;
  v51 = a3;
  v52 = *(v8 + 88);
  v53 = a4;
  v54 = v40;
  v43 = v9;
  v44 = a3;
  v40 = v52;
  v45 = v52;
  v46 = a4;
  v47 = sub_1AD4B3A14;
  v48 = &v49;
  sub_1ADB066A0();

  swift_getWitnessTable();
  sub_1ADB06570();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
  {
    (*(v34 + 8))(v15, v35);
    v24 = 1;
    v25 = v41;
  }

  else
  {
    swift_unknownObjectRelease();
    v25 = v41;
    (*(v41 + 4))(v23, v15, v9);
    v24 = 0;
  }

  v26 = *(v25 + 7);
  v26(v23, v24, 1, v9);
  v27 = v42;
  (*(v16 + 16))(v21, v23, v42);
  if ((*(v25 + 6))(v21, 1, v9) == 1)
  {
    v28 = *(v16 + 8);
    v28(v23, v27);
    v28(v21, v27);
  }

  else
  {
    v29 = *(v25 + 4);
    v41 = v23;
    v35 = v16;
    v30 = v39;
    v29(v39, v21, v9);
    v31 = *(v25 + 2);
    v31(v37, v30, v9);
    v32 = v36;
    v31(v36, v38, v9);
    v26(v32, 0, 1, v9);
    swift_beginAccess();
    sub_1ADB062A0();
    sub_1ADB062C0();
    swift_endAccess();
    (*(v25 + 1))(v30, v9);
    (*(v35 + 8))(v41, v42);
  }

  os_unfair_lock_unlock((v5[9] + 16));
}

uint64_t sub_1AD4A2DEC@<X0>(__int128 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1ADB06A20();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  swift_beginAccess();
  v22 = a2[14];
  v19 = v6;
  v20 = *(v5 + 88);
  v21 = *a1;
  sub_1ADB066A0();

  swift_getWitnessTable();
  sub_1ADB06570();

  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    result = (*(v9 + 8))(v11, v8);
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E75;
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = sub_1ADB06EF0();
    v13 = v15;
    result = (*(*(v6 - 8) + 8))(v11, v6);
  }

  v16 = v18;
  *v18 = v14;
  v16[1] = v13;
  return result;
}

uint64_t sub_1AD4A307C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  v19 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  (*(*(a14 - 8) + 32))(&a9[v19[9]], a2, a14);
  v20 = v19[10];
  v21 = sub_1ADB06A20();
  v22 = *(*(v21 - 8) + 32);
  v22(&a9[v20], a3, v21);
  result = (v22)(&a9[v19[11]], a4, v21);
  v24 = &a9[v19[12]];
  *v24 = a5;
  *(v24 + 1) = a6;
  v25 = &a9[v19[13]];
  *v25 = a7;
  *(v25 + 1) = a8;
  v26 = &a9[v19[14]];
  *v26 = a10;
  *(v26 + 1) = a11;
  v27 = &a9[v19[15]];
  *v27 = a12;
  *(v27 + 1) = a13;
  return result;
}

uint64_t sub_1AD4A31F8(__int128 *a1)
{
  v3 = sub_1ADB06040();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ADB06060();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[9];
  os_unfair_lock_assert_owner(v11 + 4);
  swift_beginAccess();
  v13 = v1[13];
  v12 = v1[14];
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = v13 >= v14;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    os_unfair_lock_unlock(v11 + 4);
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = *a1;
    *(v16 + 40) = a1[1];
    v18 = a1[3];
    *(v16 + 56) = a1[2];
    *(v16 + 72) = v18;
    *(v16 + 88) = a1[4];
    *(v16 + 24) = v17;
    sub_1AD4B4370(a1, aBlock);

    sub_1AD4A05F8(1, 0, sub_1AD4B4328, v16);
  }

  else
  {
    v31 = v8;
    v32 = v7;
    v19 = v12 + 24 * v13;
    v20 = *(v19 + 32);
    v21 = swift_allocObject();
    v30 = v4;
    v22 = v21;
    v28 = *(v19 + 40);
    v23 = a1[4];
    *(v21 + 64) = a1[3];
    *(v21 + 80) = v23;
    v24 = a1[2];
    *(v21 + 32) = a1[1];
    *(v21 + 48) = v24;
    *(v21 + 16) = *a1;
    *(v21 + 24) = v20;
    swift_unknownObjectRetain();
    sub_1AD4B4370(a1, aBlock);
    os_unfair_lock_unlock(v11 + 4);
    v29 = v1[8];
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v20;
    *(v25 + 32) = v1;
    *(v25 + 40) = v28;
    aBlock[4] = sub_1AD4B43E0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_226;
    v26 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    sub_1ADB06050();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v10, v6, v26);
    _Block_release(v26);
    swift_unknownObjectRelease();
    (*(v30 + 8))(v6, v3);
    (*(v31 + 8))(v10, v32);
  }
}

uint64_t sub_1AD4A3624(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v3 = *(*v1 + 80);
  v67 = *(*v1 + 88);
  v4 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v65 = *(v4 - 8);
  v66 = v4;
  v54 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *&v55 = &v51 - v5;
  v6 = sub_1ADB06040();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1ADB06060();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = sub_1ADB06A20();
  v51 = *(v52 - 1);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v51 - v10;
  v12 = swift_getTupleTypeMetadata2();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  v64 = *(v3 - 8);
  v16 = *(v64 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v51 - v18;
  v19 = v1[9];
  os_unfair_lock_assert_owner(v19 + 4);
  swift_beginAccess();
  v20 = v1[13];
  aBlock[0] = v1[14];
  v69 = v20;
  sub_1ADB066A0();
  swift_getWitnessTable();
  RandomAccessCollection.subscript.getter(&v69, v11);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v11, 1, TupleTypeMetadata2) == 1)
  {
    (*(v51 + 8))(v11, v52);
    os_unfair_lock_unlock(v19 + 4);
    v22 = v65;
    v21 = v66;
    v23 = v55;
    (*(v65 + 16))(v55, v63, v66);
    v24 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v25 = swift_allocObject();
    v26 = v67;
    *(v25 + 2) = v3;
    *(v25 + 3) = v26;
    *(v25 + 4) = v2;
    (*(v22 + 32))(&v25[v24], v23, v21);

    sub_1AD4A0E48(1, 0, sub_1AD4B3B28, v25);
  }

  else
  {
    v27 = *(TupleTypeMetadata2 + 48);
    v28 = *(v12 + 48);
    v29 = v3;
    v30 = *(v64 + 32);
    v52 = v30;
    v55 = *&v11[v27];
    v30(v15, v11, v29);
    *&v15[v28] = v55;
    v55 = *&v15[*(v12 + 48)];
    v31 = v62;
    (v30)();
    v32 = v66;
    v33 = swift_allocBox();
    v35 = v34;
    (*(v65 + 16))(v34, v63, v32);
    v36 = v64;
    v37 = v35 + *(v32 + 36);
    v38 = v31;
    (*(v64 + 24))(v37, v31, v29);
    os_unfair_lock_unlock(v19 + 4);
    v66 = v2[8];
    v39 = v53;
    (*(v36 + 16))(v53, v38, v29);
    v40 = (*(v36 + 80) + 40) & ~*(v36 + 80);
    v41 = (v16 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    v43 = v67;
    *(v42 + 2) = v29;
    *(v42 + 3) = v43;
    v54 = v33;
    *(v42 + 4) = v33;
    v44 = v39;
    v45 = v29;
    v52(&v42[v40], v44, v29);
    *&v42[v41] = v2;
    *&v42[(v41 + 15) & 0xFFFFFFFFFFFFFFF8] = v55;
    aBlock[4] = sub_1AD4B3B90;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471DC4;
    aBlock[3] = &block_descriptor_158;
    v46 = _Block_copy(aBlock);

    swift_unknownObjectRetain();
    v47 = v56;
    sub_1ADB06050();
    v69 = MEMORY[0x1E69E7CC0];
    sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    v48 = v58;
    v49 = v61;
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v47, v48, v46);
    _Block_release(v46);
    swift_unknownObjectRelease();
    (*(v60 + 8))(v48, v49);
    (*(v57 + 8))(v47, v59);
    (*(v36 + 8))(v62, v45);
  }
}

uint64_t ProvisioningOperationComposer.preflight(to:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  ProvisioningOperationComposer.preflight(to:completion:)(a1, sub_1AD42F7F8, v6);
}

void sub_1AD4A3FDC(uint64_t a1)
{
  v3 = *(v1 + 72);
  os_unfair_lock_assert_not_owner(v3 + 4);
  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 80) == 3)
  {

    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {

    sub_1AD4A3624(a1);
  }
}

uint64_t sub_1AD4A405C(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1ADB06040();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1ADB06060();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = a2[3];
  v9[3] = a2[2];
  v9[4] = v10;
  v9[5] = a2[4];
  v11 = a2[1];
  v9[1] = *a2;
  v9[2] = v11;
  aBlock[4] = sub_1AD4B46EC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_295;
  v12 = _Block_copy(aBlock);
  sub_1AD4B4370(a2, v16);
  sub_1ADB06050();
  v16[0] = MEMORY[0x1E69E7CC0];
  sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v8, v5, v12);
  _Block_release(v12);
  (*(v15 + 8))(v5, v3);
  (*(v6 + 8))(v8, v14);
}

uint64_t sub_1AD4A4348(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v22 = sub_1ADB06040();
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1ADB06060();
  v21 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  v20 = a1[8];
  (*(v12 + 16))(&v20 - v13, a2, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  *(v16 + 24) = v10;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = sub_1AD4B4278;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AD471DC4;
  aBlock[3] = &block_descriptor_207;
  v17 = _Block_copy(aBlock);
  sub_1ADB06050();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  v18 = v22;
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v8, v6, v17);
  _Block_release(v17);
  (*(v24 + 8))(v6, v18);
  (*(v21 + 8))(v8, v23);
}

uint64_t sub_1AD4A4718(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a2;
  swift_beginAccess();
  v8 = *(a1 + 48);
  if (v8)
  {

    v8(&v31, 1);
    sub_1AD3C5FB8(v8);
  }

  swift_beginAccess();
  v9 = *(a3 + 200);
  if (v9)
  {

    v11 = v9(v10);
    v13 = v12;
    sub_1AD3C5FB8(v9);
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  ObjectType = swift_getObjectType();
  v24 = *(a3 + 16);
  v15 = *(a3 + 32);
  v21 = *(a3 + 40);
  v16 = *(a3 + 48);
  v26 = ObjectType;
  v27 = *(a3 + 24);
  v22 = v27;
  v28 = v15;
  v29 = v21;
  v30 = v16;
  v23 = *(a3 + 56);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v17;
  v18[5] = a1;
  v18[6] = a4;
  v18[7] = a5;
  v20 = *(a5 + 24);
  sub_1AD3DF24C(v22, v15, v21, v16);
  sub_1AD3C5F14(v11);

  swift_unknownObjectRetain();
  v20(v24, &v27, v23, sub_1AD4B43F4, v18, v26, a5);

  sub_1AD3C5FB8(v11);
  sub_1AD3CC2E0(v27, v28, v29, v30);
}

uint64_t sub_1AD4A492C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = *(*a3 + 88);
  v32 = *(*a3 + 80);
  v9 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v10 = a1;
  v11 = swift_projectBox();
  swift_beginAccess();
  v12 = *(v11 + *(v9 + 52));
  if (v12)
  {

    v12(a2, 1);
    sub_1AD3C5FB8(v12);
  }

  v13 = (a3 + *(*a3 + 216));
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {

    v16 = v14(v15);
    v18 = v17;
    sub_1AD3C5FB8(v14);
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  ObjectType = swift_getObjectType();
  v29 = *(a3 + 16);
  v30 = ObjectType;
  v21 = *(a3 + 32);
  v27 = *(a3 + 40);
  v22 = a4;
  v23 = *(a3 + 48);
  v35 = *(a3 + 24);
  v20 = v35;
  v36 = v21;
  v37 = v27;
  v38 = v23;
  v28 = *(a3 + 56);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v32;
  v25[3] = v31;
  v25[4] = v16;
  v25[5] = v18;
  v25[6] = v24;
  v25[7] = v10;
  v25[8] = v22;
  v25[9] = a5;
  v33 = *(a5 + 24);
  sub_1AD3DF24C(v20, v21, v27, v23);
  sub_1AD3C5F14(v16);

  swift_unknownObjectRetain();
  v33(v29, &v35, v28, sub_1AD4B3C0C, v25, v30, a5);

  sub_1AD3C5FB8(v16);
  sub_1AD3CC2E0(v35, v36, v37, v38);
}

void sub_1AD4A4BA8(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    a3();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + 72);

    os_unfair_lock_lock(v14 + 4);

    v16 = *(v13 + 80);
    v15 = *(v13 + 88);
    swift_beginAccess();
    LOBYTE(v14) = *(v13 + 128);
    swift_beginAccess();
    *(a6 + 25) = v14;
    *(v13 + 128) = 27;
    v17 = *(v13 + 72);

    os_unfair_lock_unlock(v17 + 4);

    swift_beginAccess();
    if ((v16 & 0xFE) == 2 || v15 != *(a6 + 16))
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v20 = sub_1ADB05FA0();
      __swift_project_value_buffer(v20, qword_1EB59AB68);

      swift_unknownObjectRetain();
      v21 = sub_1ADB05F80();
      v22 = sub_1ADB06860();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v40 = v24;
        *v23 = 136315394;
        v25 = [*(v13 + 56) sid];
        v26 = sub_1ADB063B0();
        v28 = v27;

        v29 = sub_1AD3CA88C(v26, v28, &v40);

        *(v23 + 4) = v29;
        *(v23 + 12) = 2082;
        ObjectType = swift_getObjectType();
        v31 = (*(a8 + 48))(ObjectType, a8);
        v33 = sub_1AD3CA88C(v31, v32, &v40);

        *(v23 + 14) = v33;
        _os_log_impl(&dword_1AD337000, v21, v22, "[%s] ProvisioningOperationComposer: Ignoring '%{public}s' completion because perform context identifier mismatch", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v24, -1, -1);
        MEMORY[0x1B26F9F20](v23, -1, -1);
      }
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          swift_beginAccess();
          v18 = *(a6 + 64);
          v42 = *(a6 + 48);
          v43 = v18;
          v44 = *(a6 + 80);
          v19 = *(a6 + 32);
          v40 = *(a6 + 16);
          v41 = v19;
          sub_1AD4B4370(&v40, v39);
          sub_1AD4A6938(a1, &v40);
        }

        else
        {
          swift_beginAccess();
          v36 = *(a6 + 80);
          v43 = *(a6 + 64);
          v44 = v36;
          v37 = *(a6 + 48);
          v41 = *(a6 + 32);
          v42 = v37;
          v40 = *(a6 + 16);
          v38 = *(v13 + 72);
          sub_1AD4B4370(&v40, v39);
          os_unfair_lock_assert_not_owner(v38 + 4);
          os_unfair_lock_lock((*(v13 + 72) + 16));
          if (*(v13 + 80) == 3)
          {
            os_unfair_lock_unlock((*(v13 + 72) + 16));
            sub_1AD3D0E3C(&v40, qword_1EB59B928);

            return;
          }

          sub_1AD4A31F8(&v40);
        }
      }

      else
      {
        swift_beginAccess();
        v34 = *(a6 + 64);
        v42 = *(a6 + 48);
        v43 = v34;
        v44 = *(a6 + 80);
        v35 = *(a6 + 32);
        v40 = *(a6 + 16);
        v41 = v35;
        sub_1AD4B4370(&v40, v39);
        sub_1AD4A55D0(a1 & 1, &v40);
      }

      sub_1AD3D0E3C(&v40, qword_1EB59B928);
    }
  }
}

void sub_1AD4A4FE4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a6;
  v51 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - v12;
  v13 = sub_1ADB06A20();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v47 = *a1;
  v17 = *(a1 + 8);
  v18 = swift_projectBox();
  if (a2)
  {
    a2();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v46 = v17;
    v45 = a7;
    v21 = *(Strong + 72);

    os_unfair_lock_lock(v21 + 4);

    v23 = *(v20 + 80);
    v22 = *(v20 + 88);
    v24 = *(*v20 + 176);
    swift_beginAccess();
    (*(v14 + 16))(v16, v20 + v24, v13);
    swift_beginAccess();
    v25 = *(v14 + 40);
    v25(&v18[*(v51 + 40)], v16, v13);
    (*(*(a8 - 8) + 56))(v16, 1, 1, a8);
    swift_beginAccess();
    v25((v20 + v24), v16, v13);
    swift_endAccess();
    v26 = *(v20 + 72);

    os_unfair_lock_unlock(v26 + 4);

    swift_beginAccess();
    if ((v23 & 0xFE) == 2)
    {
      v27 = 0;
    }

    else
    {
      v27 = v22;
    }

    if ((v23 & 0xFE) == 2 || v27 != *v18)
    {
      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v31 = sub_1ADB05FA0();
      __swift_project_value_buffer(v31, qword_1EB59AB68);

      swift_unknownObjectRetain();
      v32 = sub_1ADB05F80();
      v33 = sub_1ADB06860();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136315394;
        v36 = [*(v20 + 56) sid];
        v37 = sub_1ADB063B0();
        v39 = v38;

        v40 = sub_1AD3CA88C(v37, v39, v53);

        *(v34 + 4) = v40;
        *(v34 + 12) = 2082;
        ObjectType = swift_getObjectType();
        v42 = (*(v45 + 48))(ObjectType);
        v44 = sub_1AD3CA88C(v42, v43, v53);

        *(v34 + 14) = v44;
        _os_log_impl(&dword_1AD337000, v32, v33, "[%s] ProvisioningOperationComposer: Ignoring '%{public}s' completion because perform context identifier mismatch", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B26F9F20](v35, -1, -1);
        MEMORY[0x1B26F9F20](v34, -1, -1);
      }
    }

    else
    {
      if (v46)
      {
        if (v46 == 1)
        {
          swift_beginAccess();
          v29 = v48;
          v28 = v49;
          v30 = v51;
          (*(v49 + 16))(v48, v18, v51);
          sub_1AD4A76CC(v47, v29);
        }

        else
        {
          swift_beginAccess();
          v29 = v48;
          v28 = v49;
          v30 = v51;
          (*(v49 + 16))(v48, v18, v51);
          sub_1AD4A3FDC(v29);
        }
      }

      else
      {
        v52 = v47 & 1;
        swift_beginAccess();
        v29 = v48;
        v28 = v49;
        v30 = v51;
        (*(v49 + 16))(v48, v18, v51);
        sub_1AD4A5C84(&v52, v29);
      }

      (*(v28 + 8))(v29, v30);
    }
  }
}

void sub_1AD4A55D0(int a1, uint64_t a2)
{
  v54 = sub_1ADB06040();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1ADB06060();
  v8 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 72);
  os_unfair_lock_lock(v11 + 4);
  v12 = *(v2 + 104);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  v15 = v13;
  v53 = v5;
  v52 = v8;
  v47 = a1;
  if (a1)
  {
    if ((v15 & 1) == 0)
    {
      *(v2 + 104) = v14;
      v16 = *(a2 + 10);
      if (v16 == 27)
      {
        v17 = 0;
      }

      else
      {
        v17 = _s11PassKitCore16ProvisioningStepO2eeoiySbAC_ACtFZ_0(*(a2 + 8), v16);
      }

LABEL_13:
      v51 = v17;
      *(v2 + 80) = xmmword_1ADB83310;
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (v15)
  {
    goto LABEL_23;
  }

  *(v2 + 104) = v14;
  v18 = *(a2 + 10);
  if (v18 != 27)
  {
    v17 = _s11PassKitCore16ProvisioningStepO2eeoiySbAC_ACtFZ_0(*(a2 + 8), v18);
    if (v17)
    {
      goto LABEL_13;
    }
  }

  v51 = 0;
LABEL_14:
  v45 = v11;
  os_unfair_lock_unlock(v11 + 4);
  v44 = v2;
  v19 = *(v2 + 64);
  v20 = swift_allocObject();
  v21 = *(a2 + 48);
  v20[3] = *(a2 + 32);
  v20[4] = v21;
  v20[5] = *(a2 + 64);
  v22 = *(a2 + 16);
  v20[1] = *a2;
  v20[2] = v22;
  v61 = sub_1AD4B4410;
  v62 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v46 = &v59;
  v59 = sub_1AD471DC4;
  v60 = &block_descriptor_238_0;
  v23 = _Block_copy(&aBlock);
  sub_1AD4B4370(a2, v56);
  sub_1ADB06050();
  v56[0] = MEMORY[0x1E69E7CC0];
  v24 = sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  v49 = v25;
  v26 = v7;
  v27 = v54;
  v50 = v24;
  sub_1ADB06B00();
  v48 = v19;
  MEMORY[0x1B26F6950](0, v10, v26, v23);
  _Block_release(v23);
  v28 = *(v53 + 1);
  v28(v26, v27);
  v29 = *(v52 + 8);
  v30 = v55;
  v29(v10, v55);

  if (v51)
  {
    v31 = swift_allocObject();
    v32 = *(a2 + 48);
    v31[3] = *(a2 + 32);
    v31[4] = v32;
    v31[5] = *(a2 + 64);
    v33 = *(a2 + 16);
    v31[1] = *a2;
    v31[2] = v33;
    v61 = sub_1AD4B48BC;
    v62 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1AD471DC4;
    v60 = &block_descriptor_250;
    v34 = _Block_copy(&aBlock);
    v53 = v29;
    v35 = v34;
    sub_1AD4B4370(a2, v56);
    sub_1ADB06050();
    v56[0] = MEMORY[0x1E69E7CC0];
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v10, v26, v35);
    _Block_release(v35);
    v28(v26, v27);
    v53(v10, v30);
LABEL_18:

    return;
  }

  v53 = v28;
  if (v47)
  {
    v36 = swift_allocObject();
    v37 = *(a2 + 48);
    v36[3] = *(a2 + 32);
    v36[4] = v37;
    v36[5] = *(a2 + 64);
    v38 = *(a2 + 16);
    v36[1] = *a2;
    v36[2] = v38;
    v61 = sub_1AD4B4470;
    v62 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v58 = 1107296256;
    v59 = sub_1AD471DC4;
    v60 = &block_descriptor_244;
    v39 = v29;
    v40 = _Block_copy(&aBlock);
    sub_1AD4B4370(a2, v56);
    sub_1ADB06050();
    v56[0] = MEMORY[0x1E69E7CC0];
    v41 = v54;
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v10, v26, v40);
    _Block_release(v40);
    v53(v26, v41);
    v39(v10, v55);
    goto LABEL_18;
  }

  v42 = v45;
  os_unfair_lock_assert_not_owner(v45 + 4);
  os_unfair_lock_lock(v42 + 4);
  if (*(v44 + 80) == 3)
  {
    os_unfair_lock_unlock(v42 + 4);
  }

  else
  {
    sub_1AD4A31F8(a2);
  }
}

void sub_1AD4A5C84(unsigned __int8 *a1, uint64_t a2)
{
  v117 = a2;
  v4 = *v2;
  v106 = sub_1ADB06040();
  v102 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1ADB06060();
  v101 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v100 = *(v11 - 8);
  v112 = *(v100 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v92 - v13;
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v92 - v14;
  v115 = v9;
  v16 = sub_1ADB06A20();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v95 = *(TupleTypeMetadata2 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v92 - v19;
  v99 = v16;
  v108 = *(v16 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v107 = &v92 - v23;
  v24 = *a1;
  v25 = v2[9];
  os_unfair_lock_lock(v25 + 4);
  v116 = v2;
  v26 = v2[13];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  v29 = v27;
  v105 = v24;
  if (v24)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_8:
  v92 = v15;
  v98 = v25;
  v114 = v10;
  v103 = v8;
  v104 = v6;
  v30 = v117;
  v116[13] = v28;
  v31 = v109;
  v32 = v107;
  v33 = v115;
  (*(v109 + 16))(v107, v30 + *(v11 + 36), v115);
  (*(v31 + 56))(v32, 0, 1, v33);
  v111 = v11;
  v96 = *(v11 + 44);
  v93 = TupleTypeMetadata2;
  v34 = *(TupleTypeMetadata2 + 48);
  v35 = v108;
  v36 = *(v108 + 16);
  v37 = v99;
  v36(v20, v32, v99);
  v97 = v34;
  v36(&v34[v20], (v30 + v96), v37);
  v38 = *(v31 + 48);
  if (v38(v20, 1, v33) == 1)
  {
    v39 = *(v35 + 8);
    v39(v32, v37);
    v40 = v38(&v97[v20], 1, v33);
    v41 = v103;
    v42 = v117;
    v43 = v37;
    v44 = v98;
    if (v40 == 1)
    {
      v39(v20, v43);
      LOBYTE(v45) = 1;
      v46 = v100;
      v47 = v113;
      goto LABEL_16;
    }

LABEL_13:
    (*(v95 + 8))(v20, v93);
    LOBYTE(v45) = 0;
    v52 = 0;
    v46 = v100;
    v47 = v113;
    if ((v105 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v48 = v94;
  v36(v94, v20, v37);
  v49 = v97;
  v50 = v38(&v97[v20], 1, v33);
  v51 = v98;
  if (v50 == 1)
  {
    (*(v108 + 8))(v107, v37);
    (*(v109 + 8))(v48, v33);
    v41 = v103;
    v42 = v117;
    v44 = v51;
    goto LABEL_13;
  }

  v53 = v109;
  v54 = v92;
  (*(v109 + 32))(v92, &v49[v20], v33);
  v45 = sub_1ADB06360();
  v55 = *(v53 + 8);
  v55(v54, v33);
  v56 = *(v108 + 8);
  v56(v107, v37);
  v55(v48, v33);
  v56(v20, v37);
  v41 = v103;
  v42 = v117;
  v46 = v100;
  v47 = v113;
  v44 = v51;
  if (((v105 | v45) & 1) == 0)
  {
    v52 = 0;
    goto LABEL_17;
  }

LABEL_16:
  *(v116 + 5) = xmmword_1ADB83310;
  v52 = v45;
LABEL_17:
  os_unfair_lock_unlock(v44 + 4);
  v57 = v116[8];
  v58 = v111;
  v107 = *(v46 + 16);
  v108 = v46 + 16;
  (v107)(v47, v42, v111);
  v59 = v47;
  v60 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v100 = *(v46 + 80);
  v61 = swift_allocObject();
  v62 = v114;
  *(v61 + 16) = v115;
  *(v61 + 24) = v62;
  v63 = *(v46 + 32);
  v109 = v60;
  v99 = v63;
  v63(v61 + v60, v59, v58);
  v123 = sub_1AD4B3C40;
  v124 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v120 = 1107296256;
  v93 = &v121;
  v121 = sub_1AD471DC4;
  v122 = &block_descriptor_170;
  v64 = _Block_copy(&aBlock);
  sub_1ADB06050();
  v118 = MEMORY[0x1E69E7CC0];
  v65 = sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  v67 = sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  v68 = v104;
  v95 = v66;
  v69 = v106;
  v96 = v65;
  sub_1ADB06B00();
  v98 = v57;
  MEMORY[0x1B26F6950](0, v41, v68, v64);
  _Block_release(v64);
  v70 = *(v102 + 8);
  v70(v68, v69);
  v71 = v110;
  v102 = *(v101 + 8);
  (v102)(v41, v110);

  v97 = v70;
  v94 = v67;
  if (v52)
  {
    v72 = v113;
    v73 = v111;
    (v107)(v113, v117, v111);
    v74 = v109;
    v75 = swift_allocObject();
    v76 = v114;
    *(v75 + 16) = v115;
    *(v75 + 24) = v76;
    v99(v75 + v74, v72, v73);
    v123 = sub_1AD4B48AC;
    v124 = v75;
    aBlock = MEMORY[0x1E69E9820];
    v120 = 1107296256;
    v121 = sub_1AD471DC4;
    v122 = &block_descriptor_182;
    v77 = _Block_copy(&aBlock);
    sub_1ADB06050();
    v118 = MEMORY[0x1E69E7CC0];
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v41, v68, v77);
    _Block_release(v77);
    (v97)(v68, v69);
    v78 = v41;
    v79 = v110;
LABEL_21:
    (v102)(v78, v79);

    return;
  }

  v80 = v99;
  v81 = v109;
  if (v105)
  {
    v82 = v113;
    v83 = v111;
    (v107)(v113, v117, v111);
    v84 = v81;
    v85 = v71;
    v86 = swift_allocObject();
    v87 = v114;
    *(v86 + 16) = v115;
    *(v86 + 24) = v87;
    v80(v86 + v84, v82, v83);
    v123 = sub_1AD4B3C58;
    v124 = v86;
    aBlock = MEMORY[0x1E69E9820];
    v120 = 1107296256;
    v121 = sub_1AD471DC4;
    v122 = &block_descriptor_176;
    v88 = _Block_copy(&aBlock);
    v89 = v103;
    sub_1ADB06050();
    v118 = MEMORY[0x1E69E7CC0];
    v90 = v104;
    v91 = v106;
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v89, v90, v88);
    _Block_release(v88);
    (v97)(v90, v91);
    v78 = v89;
    v79 = v85;
    goto LABEL_21;
  }

  sub_1AD4A3FDC(v117);
}

uint64_t sub_1AD4A6938(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1ADB06040();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v77 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ADB06060();
  v78 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v76 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v3 + 56) sid];
  v82 = sub_1ADB063B0();
  v13 = v12;

  v73 = *(v3 + 72);
  os_unfair_lock_lock(v73 + 4);
  v81 = a2;
  v84 = *(a2 + 8);
  v72 = ProvisioningStep.description.getter(v84);
  v15 = v14;
  if (qword_1EB5981C0 != -1)
  {
    goto LABEL_107;
  }

  while (1)
  {
    v16 = sub_1ADB05FA0();
    __swift_project_value_buffer(v16, qword_1EB59AB68);
    v17 = a1;

    v18 = sub_1ADB05F80();
    v19 = sub_1ADB06850();

    v20 = os_log_type_enabled(v18, v19);
    v80 = v6;
    v79 = v7;
    v83 = v9;
    v75 = a1;
    v74 = v17;
    if (v20)
    {
      v6 = v17;
      v21 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v85[0] = v71;
      *v21 = 136315650;
      v22 = sub_1AD3CA88C(v82, v13, v85);

      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      v23 = sub_1AD3CA88C(v72, v15, v85);

      *(v21 + 14) = v23;
      *(v21 + 22) = 2112;
      *(v21 + 24) = v6;
      *v9 = a1;
      v24 = v6;
      _os_log_impl(&dword_1AD337000, v18, v19, "[%s] ProvisioningOperationComposer: Step '%s' failed with error %@", v21, 0x20u);
      sub_1AD3D0E3C(v9, &unk_1EB59A340);
      MEMORY[0x1B26F9F20](v9, -1, -1);
      v25 = v71;
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v25, -1, -1);
      MEMORY[0x1B26F9F20](v21, -1, -1);
    }

    else
    {
    }

    v26 = swift_allocObject();
    v27 = v84;
    v82 = v26;
    *(v26 + 16) = v84;
    v15 = *(v3 + 104);
    swift_beginAccess();
    v28 = *(v3 + 120);
    v29 = v81;
    if (!*(v28 + 16) || (v30 = sub_1AD42BE78(v27), (v31 & 1) == 0))
    {
      result = swift_endAccess();
      goto LABEL_89;
    }

    v32 = *(*(v28 + 56) + v30);
    swift_endAccess();
    swift_beginAccess();
    v33 = *(v3 + 112);
    v7 = *(v33 + 16);

    if (!v7)
    {
      break;
    }

    v9 = 0;
    a1 = 32;
    v13 = (v32 - 4);
    v34 = 1701602409;
    while (2)
    {
      if (v9 < *(v33 + 16))
      {
        v36 = *(v33 + a1);
        switch(v13)
        {
          case 0:
            if (v36 != 4)
            {
              goto LABEL_11;
            }

            goto LABEL_101;
          case 1:
            if (v36 == 5)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 2:
            if (v36 == 6)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 3:
            if (v36 == 7)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 4:
            if (v36 == 8)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 5:
            if (v36 == 9)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 6:
            if (v36 == 10)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 7:
            if (v36 == 11)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 8:
            if (v36 == 12)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 9:
            if (v36 == 13)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 10:
            if (v36 == 14)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 11:
            if (v36 == 15)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 12:
            if (v36 == 16)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 13:
            if (v36 == 17)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 14:
            if (v36 == 18)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 15:
            if (v36 == 19)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 16:
            if (v36 != 20)
            {
              goto LABEL_11;
            }

            goto LABEL_101;
          case 17:
            if (v36 == 21)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 18:
            if (v36 == 22)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 19:
            if (v36 == 23)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 20:
            if (v36 == 24)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 21:
            if (v36 == 25)
            {
              goto LABEL_101;
            }

            goto LABEL_11;
          case 22:
            if (v36 != 26)
            {
              goto LABEL_11;
            }

LABEL_101:
            LODWORD(v72) = v32;
            goto LABEL_102;
          default:
            if ((v36 - 4) < 0x17)
            {
              goto LABEL_11;
            }

            LODWORD(v72) = v32;
            if (v32 > 1)
            {
              if (v32 == 2)
              {
                v38 = 0x746361736E617274;
              }

              else
              {
                v38 = 0x6C69614664616572;
              }

              if (v32 == 2)
              {
                v37 = 0xEB00000000676E69;
              }

              else
              {
                v37 = 0xEB00000000657275;
              }
            }

            else if (v32)
            {
              v37 = 0xE700000000000000;
              v38 = 0x676E696C6C6F70;
            }

            else
            {
              v37 = 0xE400000000000000;
              v38 = 1701602409;
            }

            if (v36 == 2)
            {
              v39 = 0x746361736E617274;
            }

            else
            {
              v39 = 0x6C69614664616572;
            }

            if (v36 == 2)
            {
              v40 = 0xEB00000000676E69;
            }

            else
            {
              v40 = 0xEB00000000657275;
            }

            if (v36)
            {
              v34 = 0x676E696C6C6F70;
              v41 = 0xE700000000000000;
            }

            else
            {
              v41 = 0xE400000000000000;
            }

            if (v36 <= 1)
            {
              v42 = v34;
            }

            else
            {
              v42 = v39;
            }

            if (v36 <= 1)
            {
              v43 = v41;
            }

            else
            {
              v43 = v40;
            }

            if (v38 == v42 && v37 == v43)
            {
              goto LABEL_105;
            }

            v6 = sub_1ADB06F50();

            v34 = 1701602409;
            v32 = v72;
            if (v6)
            {
              goto LABEL_102;
            }

LABEL_11:
            v9 = (v9 + 1);
            a1 += 24;
            if (v7 != v9)
            {
              continue;
            }

            goto LABEL_88;
        }
      }

      break;
    }

    __break(1u);
LABEL_107:
    swift_once();
  }

LABEL_88:

LABEL_89:
  v44 = *(v3 + 104);
  while (1)
  {
    if (v15 < v44)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    if ((v44 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_105:

LABEL_102:

    v44 = *(v3 + 104);
    if (v44 >= v9)
    {
      *(v3 + 104) = v9;
      *(v82 + 16) = v72;
      v44 = v9;
    }
  }

  v45 = *(v3 + 112);
  if (v44 >= *(v45 + 16))
  {
LABEL_96:
    __break(1u);
  }

  else
  {
    v46 = 24 * v44;
    while (1)
    {
      v47 = *(v45 + v46 + 48);
      ObjectType = swift_getObjectType();
      v49 = *(v47 + 32);
      swift_unknownObjectRetain();
      v49(0, nullsub_3, 0, ObjectType, v47);
      swift_unknownObjectRelease();
      if (v15 == v44)
      {
        break;
      }

      ++v44;
      v45 = *(v3 + 112);
      v46 += 24;
      if (v44 >= *(v45 + 16))
      {
        goto LABEL_96;
      }
    }
  }

  *(v3 + 80) = xmmword_1ADB83310;
  os_unfair_lock_unlock(v73 + 4);
  v50 = *(v3 + 64);
  v51 = swift_allocObject();
  v52 = *(v29 + 48);
  *(v51 + 48) = *(v29 + 32);
  *(v51 + 64) = v52;
  *(v51 + 80) = *(v29 + 64);
  v53 = *(v29 + 16);
  *(v51 + 16) = *v29;
  *(v51 + 32) = v53;
  v54 = v84;
  *(v51 + 96) = v84;
  v90 = sub_1AD4B44C8;
  v91 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v87 = 1107296256;
  v70[1] = &v88;
  v88 = sub_1AD471DC4;
  v89 = &block_descriptor_259_0;
  v55 = _Block_copy(&aBlock);
  sub_1AD4B4370(v29, v85);
  v56 = v76;
  sub_1ADB06050();
  v85[0] = MEMORY[0x1E69E7CC0];
  v57 = sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
  sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
  v59 = v77;
  v70[2] = v58;
  v60 = v80;
  v72 = v57;
  sub_1ADB06B00();
  v73 = v50;
  MEMORY[0x1B26F6950](0, v56, v59, v55);
  _Block_release(v55);
  v71 = v79[1];
  v71(v59, v60);
  v79 = *(v78 + 8);
  (v79)(v56, v83);

  if (*(v29 + 10) == 27)
  {
    v61 = swift_allocObject();
    v62 = *v29;
    *(v61 + 40) = *(v29 + 16);
    v63 = *(v29 + 48);
    *(v61 + 56) = *(v29 + 32);
    *(v61 + 72) = v63;
    *(v61 + 88) = *(v29 + 64);
    *(v61 + 16) = v75;
    *(v61 + 24) = v62;
    *(v61 + 104) = v54;
    *(v61 + 112) = v82;
    v90 = sub_1AD4B4510;
    v91 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1AD471DC4;
    v89 = &block_descriptor_265;
    v64 = _Block_copy(&aBlock);
    v65 = v74;
    sub_1AD4B4370(v29, v85);
  }

  else
  {
    v66 = swift_allocObject();
    v67 = *v29;
    *(v66 + 40) = *(v29 + 16);
    v68 = *(v29 + 48);
    *(v66 + 56) = *(v29 + 32);
    *(v66 + 72) = v68;
    *(v66 + 88) = *(v29 + 64);
    *(v66 + 16) = v75;
    *(v66 + 24) = v67;
    *(v66 + 104) = v54;
    v90 = sub_1AD4B4560;
    v91 = v66;
    aBlock = MEMORY[0x1E69E9820];
    v87 = 1107296256;
    v88 = sub_1AD471DC4;
    v89 = &block_descriptor_271;
    v64 = _Block_copy(&aBlock);
    v69 = v74;
    sub_1AD4B4370(v29, v85);
  }

  sub_1ADB06050();
  v85[0] = MEMORY[0x1E69E7CC0];
  sub_1ADB06B00();
  MEMORY[0x1B26F6950](0, v56, v59, v64);
  _Block_release(v64);
  v71(v59, v60);
  (v79)(v56, v83);
}

uint64_t sub_1AD4A76CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v154 = a2;
  v147 = a1;
  v4 = *v2;
  v146 = sub_1ADB06040();
  v151 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_1ADB06060();
  v150 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 80);
  v157 = *(v4 + 88);
  v8 = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v149 = *(v8 - 8);
  v134 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v148 = &v121 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB59A858);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v137 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v121 - v14;
  v139 = sub_1ADB06A20();
  v138 = *(v139 - 8);
  v16 = MEMORY[0x1EEE9AC00](v139);
  v136 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v158 = &v121 - v19;
  v20 = *(v7 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v141 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v129 = &v121 - v24;
  v140 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v121 - v26;
  v28 = [v3[7] sid];
  v133 = sub_1ADB063B0();
  v30 = v29;

  v159 = v3;
  v132 = v3[9];
  os_unfair_lock_lock(v132 + 4);
  v142 = v8;
  v31 = *(v8 + 36);
  v155 = v20;
  v32 = *(v20 + 16);
  v153 = v20 + 16;
  v152 = v32;
  v32(v27, (v154 + v31), v7);
  aBlock = 0;
  v163 = 0xE000000000000000;
  v156 = v27;
  v160 = v7;
  sub_1ADB06F40();
  v33 = aBlock;
  v34 = v163;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v35 = sub_1ADB05FA0();
  __swift_project_value_buffer(v35, qword_1EB59AB68);
  v36 = v147;
  v37 = v147;

  v38 = sub_1ADB05F80();
  v39 = sub_1ADB06850();

  v40 = os_log_type_enabled(v38, v39);
  v135 = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v128 = v33;
    v42 = v41;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    aBlock = v131;
    *v42 = 136315650;
    v43 = sub_1AD3CA88C(v133, v30, &aBlock);
    v133 = v38;
    v44 = v43;

    *(v42 + 4) = v44;
    *(v42 + 12) = 2080;
    v45 = sub_1AD3CA88C(v128, v34, &aBlock);

    *(v42 + 14) = v45;
    *(v42 + 22) = 2112;
    *(v42 + 24) = v37;
    v46 = v130;
    *v130 = v36;
    v47 = v37;
    v38 = v133;
    _os_log_impl(&dword_1AD337000, v133, v39, "[%s] ProvisioningOperationComposer: Step '%s' failed with error %@", v42, 0x20u);
    sub_1AD3D0E3C(v46, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v46, -1, -1);
    v48 = v131;
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v48, -1, -1);
    MEMORY[0x1B26F9F20](v42, -1, -1);
  }

  else
  {
  }

  v49 = v158;
  v50 = v160;
  v133 = swift_allocBox();
  v52 = v51;
  v152(v51, v156, v50);
  v53 = v159;
  v158 = v159[13];
  swift_beginAccess();
  v54 = v157;
  sub_1ADB062B0();
  v55 = v155;
  v56 = *(v155 + 48);
  v131 = v155 + 48;
  v130 = v56;
  if (v56(v49, 1, v50) == 1)
  {
    (*(v138 + 8))(v49, v139);
    result = swift_endAccess();
  }

  else
  {
    v128 = v52;
    v58 = *(v55 + 32);
    v59 = v129;
    v58(v129, v49, v50);
    swift_endAccess();
    v60 = swift_beginAccess();
    v161 = v53[14];
    v61 = MEMORY[0x1EEE9AC00](v60);
    *(&v121 - 4) = v50;
    *(&v121 - 3) = v54;
    *(&v121 - 2) = v59;
    MEMORY[0x1EEE9AC00](v61);
    *(&v121 - 4) = v50;
    *(&v121 - 3) = v54;
    *(&v121 - 2) = sub_1AD4B3FC4;
    *(&v121 - 1) = v62;
    sub_1ADB066A0();
    v63 = v53;

    swift_getWitnessTable();
    v64 = v160;
    sub_1ADB06800();
    v65 = v59;

    v55 = v155;
    if ((v163 & 1) == 0 && v63[13] >= aBlock)
    {
      v63[13] = aBlock;
      (*(v55 + 24))(v128, v65, v64);
    }

    result = (*(v55 + 8))(v65, v64);
    v53 = v63;
  }

  v66 = v53[13];
  if (v158 < v66)
  {
    __break(1u);
  }

  else
  {
    v67 = (v55 + 32);
    v68 = (v137 + 8);
    while (1)
    {
      swift_beginAccess();
      sub_1ADB066B0();
      v69 = *(TupleTypeMetadata2 + 48);
      v70 = *&v15[v69];
      v71 = *&v15[v69 + 8];
      v72 = &v13[v69];
      v73 = *v67;
      (*v67)(v13, v15, v160);
      *v72 = v70;
      *(v72 + 1) = v71;
      swift_endAccess();
      v74 = *v68;
      swift_unknownObjectRetain();
      v74(v13, TupleTypeMetadata2);
      ObjectType = swift_getObjectType();
      (*(v71 + 32))(0, nullsub_3, 0, ObjectType, v71);
      swift_unknownObjectRelease();
      if (v158 == v66)
      {
        break;
      }

      v76 = __OFADD__(v66++, 1);
      v73 = v159;
      if (v76)
      {
        __break(1u);
        break;
      }
    }

    v77 = v159;
    *(v159 + 5) = xmmword_1ADB83310;
    os_unfair_lock_unlock(v132 + 4);
    v159 = v77[8];
    v78 = v149;
    v79 = *(v149 + 16);
    v124 = v149 + 16;
    v125 = v79;
    v80 = v148;
    v81 = v142;
    v79(v148, v154, v142);
    v82 = v141;
    v83 = v160;
    v152(v141, v156, v160);
    v121 = *(v78 + 80);
    v84 = (v121 + 32) & ~v121;
    v122 = *(v155 + 80);
    v123 = &v134[v122];
    v85 = &v134[v122 + v84] & ~v122;
    v126 = v121 | v122;
    v86 = swift_allocObject();
    v87 = v157;
    *(v86 + 16) = v83;
    *(v86 + 24) = v87;
    v88 = *(v78 + 32);
    v149 = v78 + 32;
    v127 = v88;
    v88((v86 + v84), v80, v81);
    v73((v86 + v85), v82, v83);
    v166 = sub_1AD4B3D08;
    v167 = v86;
    aBlock = MEMORY[0x1E69E9820];
    v163 = 1107296256;
    v128 = &v164;
    v164 = sub_1AD471DC4;
    v165 = &block_descriptor_188;
    v89 = _Block_copy(&aBlock);
    v90 = v143;
    sub_1ADB06050();
    v161 = MEMORY[0x1E69E7CC0];
    v91 = sub_1AD4B3998(&qword_1EB598900, MEMORY[0x1E69E7F60]);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59BB30);
    v93 = sub_1AD43FACC(&qword_1EB598910, &qword_1EB59BB30);
    v94 = v144;
    v132 = v92;
    v129 = v93;
    v95 = v146;
    v158 = v91;
    sub_1ADB06B00();
    MEMORY[0x1B26F6950](0, v90, v94, v89);
    v96 = v89;
    v97 = v142;
    _Block_release(v96);
    v98 = *(v151 + 8);
    v151 += 8;
    v134 = v98;
    (v98)(v94, v95);
    v99 = *(v150 + 8);
    v150 += 8;
    v137 = v99;
    (v99)(v90, v145);

    v100 = v138;
    v101 = v154;
    v102 = v136;
    v103 = v139;
    (*(v138 + 16))(v136, v154 + *(v97 + 44), v139);
    LODWORD(v86) = v130(v102, 1, v83);
    v104 = v141;
    (*(v100 + 8))(v102, v103);
    v125(v148, v101, v97);
    v152(v104, v156, v83);
    v105 = (v121 + 40) & ~v121;
    v106 = &v123[v105] & ~v122;
    if (v86 == 1)
    {
      v107 = (v140 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v109 = v157;
      *(v108 + 2) = v83;
      *(v108 + 3) = v109;
      *(v108 + 4) = v147;
      v127(&v108[v105], v148, v97);
      v73(&v108[v106], v104, v83);
      *&v108[v107] = v133;
      v166 = sub_1AD4B3DE0;
      v167 = v108;
      aBlock = MEMORY[0x1E69E9820];
      v163 = 1107296256;
      v164 = sub_1AD471DC4;
      v165 = &block_descriptor_194;
      v110 = _Block_copy(&aBlock);
      v111 = v135;

      v112 = v143;
      sub_1ADB06050();
      v161 = MEMORY[0x1E69E7CC0];
      v113 = v144;
      v114 = v146;
      sub_1ADB06B00();
      MEMORY[0x1B26F6950](0, v112, v113, v110);
      _Block_release(v110);
      (v134)(v113, v114);
    }

    else
    {
      v115 = swift_allocObject();
      v116 = v157;
      *(v115 + 2) = v83;
      *(v115 + 3) = v116;
      *(v115 + 4) = v147;
      v127(&v115[v105], v148, v97);
      v73(&v115[v106], v104, v83);
      v166 = sub_1AD4B3EE8;
      v167 = v115;
      aBlock = MEMORY[0x1E69E9820];
      v163 = 1107296256;
      v164 = sub_1AD471DC4;
      v165 = &block_descriptor_200;
      v117 = _Block_copy(&aBlock);
      v118 = v135;
      v112 = v143;
      sub_1ADB06050();
      v161 = MEMORY[0x1E69E7CC0];
      v119 = v144;
      v120 = v146;
      sub_1ADB06B00();
      MEMORY[0x1B26F6950](0, v112, v119, v117);
      _Block_release(v117);
      (v134)(v119, v120);
    }

    (v137)(v112, v145);
    (*(v155 + 8))(v156, v83);
  }

  return result;
}

uint64_t sub_1AD4A899C(uint64_t a1)
{
  result = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v3 = *(a1 + *(result + 56));
  if (v3)
  {
    return v3(a1 + *(result + 36), 1);
  }

  return result;
}

uint64_t sub_1AD4A89EC(uint64_t a1)
{
  result = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v3 = *(a1 + *(result + 52));
  if (v3)
  {
    return v3(a1 + *(result + 36), 0);
  }

  return result;
}

void sub_1AD4A8A3C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (v6 = *(a2 + *(type metadata accessor for ProvisioningOperationComposer.PerformContext() + 48))) != 0)
  {
    v8 = a1;
    sub_1AD3C5F14(v6);
    v6(a3, v8);
    sub_1AD3C5FB8(v6);
  }

  else
  {
    v7 = (a2 + *(type metadata accessor for ProvisioningOperationComposer.PerformContext() + 60));
    if (*v7)
    {
      (*v7)();
    }
  }
}

uint64_t sub_1AD4A8B34(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v13 = a3;
  if (a1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = a1;
      v7(&v13, v8);
    }
  }

  swift_beginAccess();
  result = _s11PassKitCore16ProvisioningStepO2eeoiySbAC_ACtFZ_0(*(a4 + 16), a3);
  v10 = *(a2 + 32);
  if (result)
  {
    if (!v10)
    {
      return result;
    }

    v11 = *(a2 + 9);
    if (v11 != 27)
    {
      goto LABEL_10;
    }
  }

  else if (!v10)
  {
    return result;
  }

  swift_beginAccess();
  LOBYTE(v11) = *(a4 + 16);
LABEL_10:
  v12 = v11;
  return v10(&v12, 0);
}

uint64_t sub_1AD4A8C18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ADB06A20();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v30 = &v29 - v11;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v31 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - v15;
  v17 = swift_projectBox();
  if (a1)
  {
    v18 = *(a2 + *(type metadata accessor for ProvisioningOperationComposer.PerformContext() + 48));
    if (v18)
    {
      v19 = a1;
      v18(a3, v19);
    }
  }

  swift_beginAccess();
  v20 = *(v12 + 16);
  v20(v16, v17, a5);
  v21 = sub_1ADB06360();
  v34 = *(v12 + 8);
  v34(v16, a5);
  result = type metadata accessor for ProvisioningOperationComposer.PerformContext();
  v23 = a2 + *(result + 52);
  v24 = *v23;
  if (v21)
  {
    if (!v24)
    {
      return result;
    }

    v29 = *(v23 + 8);
    v25 = v30;
    (*(v32 + 16))(v30, a2 + *(result + 40), v33);
    v26 = *(v12 + 48);
    if (v26(v25, 1, a5) == 1)
    {
      swift_beginAccess();
      v27 = v31;
      v20(v31, v17, a5);
      v16 = v27;
      if (v26(v25, 1, a5) != 1)
      {
        (*(v32 + 8))(v25, v33);
      }
    }

    else
    {
      v16 = v31;
      (*(v12 + 32))(v31, v25, a5);
    }

    v28 = v16;
  }

  else
  {
    if (!v24)
    {
      return result;
    }

    swift_beginAccess();
    v20(v16, v17, a5);
    v28 = v16;
  }

  v24(v28, 0);
  return (v34)(v16, a5);
}

void sub_1AD4A8FBC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1ADB05FA0();
  __swift_project_value_buffer(v9, qword_1EB59AB68);

  swift_unknownObjectRetain();
  v10 = sub_1ADB05F80();
  v11 = sub_1ADB06850();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_1AD3CA88C(a1, a2, &v18);
    *(v12 + 12) = 2082;
    ObjectType = swift_getObjectType();
    v15 = (*(a4 + 48))(ObjectType, a4);
    v17 = sub_1AD3CA88C(v15, v16, &v18);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1AD337000, v10, v11, "[%s] ProvisioningOperationComposer: Step '%{public}s' failed to call completion", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v13, -1, -1);
    MEMORY[0x1B26F9F20](v12, -1, -1);
  }

  dispatch_group_leave(a5);
}

void sub_1AD4A919C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v10 = sub_1ADB05FA0();
  __swift_project_value_buffer(v10, qword_1EB59AB68);

  v11 = sub_1ADB05F80();
  v12 = sub_1ADB06860();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1AD3CA88C(a1, a2, &v15);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1AD3CA88C(a3, a4, &v15);
    _os_log_impl(&dword_1AD337000, v11, v12, "[%s] ProvisioningOperationComposer: Invalidated for %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v14, -1, -1);
    MEMORY[0x1B26F9F20](v13, -1, -1);
  }

  if (a5)
  {
    a5();
  }
}

uint64_t sub_1AD4A9350(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v40 = a1;
  v6 = *v3;
  v7 = *v3;
  v38 = a3;
  v39 = v7;
  v8 = *(v6 + 88);
  v9 = sub_1ADB06A20();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31[-v13];
  v16 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v32 = *(a2 + 24);
  v18 = *(v6 + 128);
  swift_beginAccess();
  v19 = *(v10 + 16);
  v33 = v18;
  v19(v14, &v4[v18], v9);
  v20 = *(v8 - 8);
  v21 = *(v20 + 48);
  v34 = v8;
  LODWORD(v6) = v21(v14, 1, v8);
  v35 = v10;
  v22 = *(v10 + 8);
  v37 = v9;
  result = v22(v14, v9);
  if (v6 == 1)
  {
    v41[0] = v16;
    v41[1] = v15;
    v41[2] = v17;
    v24 = v32;
    v42 = v32;
    v25 = v40;
    v26 = *(v39 + 104);
    v39 = *(v26 + 16);
    v27 = v36;

    sub_1AD3DF24C(v16, v15, v17, v24);
    v28 = v38;
    v29 = v34;
    (v39)(v25, v41, v28, v34, v26);
    (*(v20 + 56))(v27, 0, 1, v29);
    v30 = v33;
    swift_beginAccess();
    (*(v35 + 40))(&v4[v30], v27, v37);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1AD4A9630(uint64_t a1, __int128 *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v77 = a4;
  v78 = a5;
  v76 = a1;
  v72 = *v6;
  v9 = v72[11];
  v71 = v72[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = sub_1ADB06A20();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v69 - v10;
  v12 = sub_1ADB06A20();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v69 - v15;
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v69 - v18;
  v20 = *(a2 + 2);
  v21 = *(a2 + 24);
  v22 = *a2;
  v23 = a3;
  aBlock = v22;
  v80 = v20;
  LOBYTE(v81) = v21;
  sub_1AD4A9350(v76, &aBlock, a3);
  v24 = *(*v6 + 128);
  swift_beginAccess();
  (*(v13 + 16))(v16, &v6[v24], v12);
  result = (*(v17 + 48))(v16, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v19, v16, v9);
    v26 = *(*v6 + 144);
    swift_beginAccess();
    v27 = v73;
    v28 = &v6[v26];
    v29 = v75;
    (v73)[2](v11, v28, v75);
    v30 = (*(*(AssociatedTypeWitness - 8) + 48))(v11, 1);
    (v27[1])(v11, v29);
    if (v30 == 1)
    {
      v75 = v19;
      v76 = v17;
      v31 = &v6[*(*v6 + 136)];
      swift_beginAccess();
      v32 = *v31;
      v33 = v31[1];
      v34 = swift_allocObject();
      v34[2] = v23;
      v34[3] = v32;
      AssociatedTypeWitness = v32;
      v35 = v77;
      v36 = v78;
      v34[4] = v33;
      v34[5] = v35;
      v34[6] = v36;
      v37 = objc_allocWithZone(PKDeallocationGuard);
      v82 = sub_1AD4B3720;
      v83 = v34;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v80 = sub_1AD471DC4;
      v81 = &block_descriptor_25;
      v38 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      v39 = v23;

      v40 = [v37 initWithBlock_];
      _Block_release(v38);

      if (qword_1EB5981C0 != -1)
      {
        swift_once();
      }

      v41 = sub_1ADB05FA0();
      __swift_project_value_buffer(v41, qword_1EB59AB68);

      v42 = v39;
      v43 = sub_1ADB05F80();
      v44 = sub_1ADB06860();

      v45 = os_log_type_enabled(v43, v44);
      v73 = v42;
      if (v45)
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v70 = v40;
        v48 = v47;
        *&aBlock = v47;
        *v46 = 136315394;
        v49 = [v42 sid];
        v50 = v9;
        v51 = sub_1ADB063B0();
        v53 = v52;

        v54 = v51;
        v9 = v50;
        v55 = sub_1AD3CA88C(v54, v53, &aBlock);

        *(v46 + 4) = v55;
        *(v46 + 12) = 2082;
        v56 = AssociatedTypeWitness;
        *(v46 + 14) = sub_1AD3CA88C(AssociatedTypeWitness, v33, &aBlock);
        _os_log_impl(&dword_1AD337000, v43, v44, "[%s] ProvisioningOperationComposer: starting step '%{public}s'", v46, 0x16u);
        swift_arrayDestroy();
        v57 = v48;
        v40 = v70;
        MEMORY[0x1B26F9F20](v57, -1, -1);
        MEMORY[0x1B26F9F20](v46, -1, -1);

        v58 = *(v6 + 2);
        if (v58)
        {
LABEL_7:
          v59 = swift_allocObject();
          swift_weakInit();
          v60 = swift_allocObject();
          v61 = v72;
          v60[2] = v72[10];
          v60[3] = v9;
          v62 = v71;
          v60[4] = v61[12];
          v60[5] = v62;
          v63 = v73;
          v60[6] = v40;
          v60[7] = v63;
          v60[8] = v56;
          v60[9] = v33;
          v64 = v77;
          v65 = v78;
          v60[10] = v59;
          v60[11] = v64;
          v60[12] = v65;
          v66 = v63;

          sub_1AD3C5F14(v58);
          v67 = v40;

          v68 = v75;
          v58(v75, sub_1AD4B3750, v60);

          sub_1AD3C5FB8(v58);

          (*(v76 + 8))(v68, v9);
        }
      }

      else
      {

        v56 = AssociatedTypeWitness;
        v58 = *(v6 + 2);
        if (v58)
        {
          goto LABEL_7;
        }
      }

      return (*(v76 + 8))(v75, v9);
    }

    else
    {
      *&aBlock = 0;
      BYTE8(aBlock) = 0;
      v77(&aBlock);
      return (*(v17 + 8))(v19, v9);
    }
  }

  return result;
}

void sub_1AD4A9DF8(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1ADB05FA0();
  __swift_project_value_buffer(v8, qword_1EB59AB68);
  v9 = a1;

  v10 = sub_1ADB05F80();
  v11 = sub_1ADB06850();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315394;
    v13 = [v9 sid];
    v14 = sub_1ADB063B0();
    v15 = a4;
    v17 = v16;

    v18 = sub_1AD3CA88C(v14, v17, &v22);
    a4 = v15;

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1AD3CA88C(a2, a3, &v22);
    _os_log_impl(&dword_1AD337000, v10, v11, "[%s] ProvisioningOperationComposer: Step '%{public}s' failed to call completion", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v21, -1, -1);
    MEMORY[0x1B26F9F20](v12, -1, -1);
  }

  v22 = [objc_opt_self() errorWithSeverity_];
  v23 = 1;
  a4(&v22);
  v19 = v22;
  v20 = v23;

  sub_1AD451EE8(v19, v20);
}

void sub_1AD4AA038(uint64_t a1, void *a2, NSObject *a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(id *), uint64_t a8)
{
  v45 = a8;
  v46 = a7;
  v43 = a6;
  v44 = a4;
  v47 = a5;
  v48 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1ADB06A20();
  v42 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v18 = type metadata accessor for ProvisioningOperationResult();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v41 - v20);
  if ([a2 invalidate])
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v22 = sub_1ADB05FA0();
    __swift_project_value_buffer(v22, qword_1EB59AB68);
    v23 = v48;
    v24 = v47;

    v48 = sub_1ADB05F80();
    v25 = sub_1ADB06850();

    if (os_log_type_enabled(v48, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v51 = v27;
      *v26 = 136315394;
      v28 = [v23 sid];
      v29 = sub_1ADB063B0();
      v31 = v30;

      v32 = sub_1AD3CA88C(v29, v31, &v51);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_1AD3CA88C(v44, v24, &v51);
      _os_log_impl(&dword_1AD337000, v48, v25, "[%s] ProvisioningOperationComposer: Step '%{public}s' called completion twice", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v27, -1, -1);
      MEMORY[0x1B26F9F20](v26, -1, -1);
    }

    else
    {
      v35 = v48;
    }
  }

  else
  {
    (*(v19 + 16))(v21, a1, v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v51 = *v21;
        v52 = 1;
        v34 = v51;
        v46(&v51);

        sub_1AD451EE8(v51, v52);
      }

      else
      {
        v51 = 0;
        v52 = 2;
        v46(&v51);
      }
    }

    else
    {
      v36 = *v21;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v15 + 32))(v17, v21 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        (*(v15 + 16))(v14, v17, AssociatedTypeWitness);
        (*(v15 + 56))(v14, 0, 1, AssociatedTypeWitness);
        v40 = *(*v39 + 144);
        swift_beginAccess();
        (*(v42 + 40))(v39 + v40, v14, v11);
        swift_endAccess();
      }

      v49 = v36;
      v50 = 0;
      v46(&v49);
      (*(v15 + 8))(v17, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1AD4AA5A8(int a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v38 = a3;
  v34 = a1;
  v5 = *v3;
  v6 = v5[11];
  v36 = sub_1ADB06A20();
  v39 = *(v36 - 8);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - v13;
  v32 = v5[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1ADB06A20();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = v5[18];
  swift_beginAccess();
  (*(v16 + 16))(v21, &v4[v22], v15);
  v23 = *(*(AssociatedTypeWitness - 8) + 56);
  v24 = AssociatedTypeWitness;
  v25 = v36;
  v23(v19, 1, 1, v24);
  swift_beginAccess();
  (*(v16 + 40))(&v4[v22], v19, v15);
  swift_endAccess();
  v26 = *(*v4 + 128);
  swift_beginAccess();
  (*(v39 + 16))(v11, &v4[v26], v25);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    v27 = (*(v39 + 8))(v11, v25);
    v37(v27);
    return (*(v16 + 8))(v21, v15);
  }

  else
  {
    v29 = v33;
    (*(v12 + 32))(v33, v11, v6);
    (*(v32 + 24))(v34 & 1, v21, v37, v38, v6);
    (*(v12 + 8))(v29, v6);
    (*(v16 + 8))(v21, v15);
    v30 = v35;
    (*(v12 + 56))(v35, 1, 1, v6);
    swift_beginAccess();
    (*(v39 + 40))(&v4[v26], v30, v25);
    return swift_endAccess();
  }
}

uint64_t sub_1AD4AAA48()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1ADB06A20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  v13 = *(v1 + 144);
  swift_beginAccess();
  (*(v6 + 16))(v9, v0 + v13, v5);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, AssociatedTypeWitness);
    v15 = (*(v2 + 32))(v12, v3, v2);
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    return v15;
  }
}

uint64_t sub_1AD4AACBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v5 = *(*v3 + 104);
  v6 = *(*v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1ADB06A20();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - v16;
  (*(v5 + 40))(a1, v26, v6, v5);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v14, v8);
  }

  v26 = v9;
  v19 = *(v15 + 32);
  v19(v17, v14, AssociatedTypeWitness);
  v20 = *(v3 + 4);

  LOBYTE(v20) = v20(v21);

  if ((v20 & 1) == 0)
  {
    return (*(v15 + 8))(v17, AssociatedTypeWitness);
  }

  v22 = v25;
  v19(v25, v17, AssociatedTypeWitness);
  (*(v15 + 56))(v22, 0, 1, AssociatedTypeWitness);
  v23 = *(*v3 + 144);
  swift_beginAccess();
  (*(v26 + 40))(&v3[v23], v22, v8);
  return swift_endAccess();
}

uint64_t *sub_1AD4AAFC4()
{
  sub_1AD3C5FB8(v0[2]);

  v1 = *(*v0 + 128);
  v2 = sub_1ADB06A20();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 144);
  swift_getAssociatedTypeWitness();
  v4 = sub_1ADB06A20();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1AD4AB11C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1ADB06A20();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1AD4AB1E4()
{
  v1 = (v0 + *(*v0 + 136));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

char *sub_1AD4AB260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = swift_allocObject();
  v12 = v10[41];
  v11[2] = v12;
  v13 = v10[42];
  v11[3] = v13;
  v11[4] = a4;
  v14 = v10[43];
  v11[5] = v14;
  v15 = v10[44];
  v11[6] = v15;
  v11[7] = a5;
  v11[8] = a1;
  v11[9] = a2;
  v11[10] = a3;
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v13;
  v16[4] = a4;
  v16[5] = v14;
  v16[6] = v15;
  v16[7] = a5;
  v16[8] = a1;
  swift_unknownObjectRetain();
  v17 = sub_1AD4B1B98(sub_1AD4B36D0, v11, sub_1AD4B370C, v16);

  return v17;
}

uint64_t sub_1AD4AB3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v24 = a6;
  v25 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1ADB06A20();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v24 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v24 - v21;
  (*(a12 + 16))(a9, a12);
  result = (*(v20 + 48))(v19, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
    v25(a1, v22, a2, a3);
    return (*(v20 + 8))(v22, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1AD4AB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1ADB06A20();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  (*(a7 + 16))(a4, a7);
  v14 = 1;
  LODWORD(AssociatedTypeWitness) = (*(*(AssociatedTypeWitness - 8) + 48))(v13, 1, AssociatedTypeWitness);
  (*(v11 + 8))(v13, v10);
  if (AssociatedTypeWitness == 1)
  {
    v14 = (*(a7 + 72))(a4, a7) ^ 1;
  }

  return v14 & 1;
}

char *sub_1AD4AB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = swift_allocObject();
  v16 = v14[41];
  v15[2] = v16;
  v17 = v14[42];
  v15[3] = v17;
  v15[4] = a5;
  v15[5] = a6;
  v18 = v14[43];
  v15[6] = v18;
  v19 = v14[44];
  v15[7] = v19;
  v15[8] = a7;
  v15[9] = a8;
  v15[10] = a1;
  v15[11] = a2;
  v15[12] = a3;
  v15[13] = a4;
  v20 = swift_allocObject();
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = v18;
  v20[7] = v19;
  v20[8] = a7;
  v20[9] = a8;
  v20[10] = a1;
  v20[11] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1AD4B1B98(sub_1AD4B364C, v15, sub_1AD4B3694, v20);

  return v21;
}

uint64_t sub_1AD4AB894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, char *, char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v36 = a7;
  v37 = a6;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v40 = a5;
  v41 = a10;
  v38 = a11;
  v39 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1ADB06A20();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v32 - v21;
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1ADB06A20();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v32 - v26;
  v28 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v32 - v29;
  (*(a14 + 16))(v41, a14);
  result = (*(v28 + 48))(v27, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v28 + 32))(v30, v27, v23);
    (*(v39 + 16))(v38);
    result = (*(v20 + 48))(v19, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      (*(v20 + 32))(v22, v19, AssociatedTypeWitness);
      v37(v33, v30, v22, v34, v35);
      (*(v20 + 8))(v22, AssociatedTypeWitness);
      return (*(v28 + 8))(v30, v23);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD4ABBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a2;
  v27 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1ADB06A20();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1ADB06A20();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - v18;
  (*(a9 + 16))(a5, a9);
  LODWORD(v15) = (*(*(v15 - 8) + 48))(v19, 1, v15);
  (*(v17 + 8))(v19, v16);
  if (v15 == 1 && ((*(a9 + 72))(a5, a9) & 1) != 0)
  {
    v20 = 0;
  }

  else
  {
    v21 = v27;
    (*(a10 + 16))(v27, a10);
    v20 = 1;
    v22 = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness);
    (*(v24 + 8))(v14, v25);
    if (v22 == 1)
    {
      v20 = (*(a10 + 72))(v21, a10) ^ 1;
    }
  }

  return v20 & 1;
}

char *sub_1AD4ABE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = *v11;
  v16 = swift_allocObject();
  v26 = v15[41];
  v16[2] = v26;
  v17 = v15[42];
  v16[3] = v17;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v18 = v15[43];
  v16[7] = v18;
  v19 = v15[44];
  v16[8] = v19;
  v16[9] = a9;
  v16[10] = a10;
  v16[11] = a11;
  v16[12] = a1;
  v16[13] = a2;
  v16[14] = a3;
  v16[15] = a4;
  v16[16] = a5;
  v20 = swift_allocObject();
  v20[2] = v26;
  v20[3] = v17;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = a8;
  v20[7] = v18;
  v20[8] = v19;
  v20[9] = a9;
  v20[10] = a10;
  v20[11] = a11;
  v20[12] = a1;
  v20[13] = a2;
  v20[14] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1AD4B1B98(sub_1AD4B35C0, v16, sub_1AD4B3604, v20);

  return v21;
}

uint64_t sub_1AD4AC03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, char *, char *, char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v49 = a8;
  v50 = a7;
  v59 = a5;
  v60 = a4;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v54 = a18;
  v55 = a6;
  v53 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_1ADB06A20();
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v52 = &v44 - v21;
  v56 = AssociatedTypeWitness;
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v45 = &v44 - v22;
  v57 = a17;
  v58 = a12;
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1ADB06A20();
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v44 - v26;
  v28 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v44 - v29;
  v31 = swift_getAssociatedTypeWitness();
  v32 = sub_1ADB06A20();
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v44 - v34;
  v36 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v44 - v37;
  (*(a16 + 16))(a11, a16);
  result = (*(v36 + 48))(v35, 1, v31);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v36 + 32))(v38, v35, v31);
  (*(v57 + 16))(v58);
  result = (*(v28 + 48))(v27, 1, v23);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(v28 + 32))(v30, v27, v23);
  v40 = v52;
  (*(v54 + 16))(v53);
  v41 = v51;
  v42 = v56;
  result = (*(v51 + 48))(v40, 1, v56);
  if (result != 1)
  {
    v43 = v45;
    (*(v41 + 32))(v45, v40, v42);
    v50(v46, v38, v30, v43, v47, v48);
    (*(v41 + 8))(v43, v42);
    (*(v28 + 8))(v30, v23);
    return (*(v36 + 8))(v38, v31);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AD4AC4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v44 = a2;
  v39 = a13;
  v40 = a3;
  v41 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_1ADB06A20();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v34 - v15;
  v43 = a12;
  v45 = a7;
  v16 = swift_getAssociatedTypeWitness();
  v42 = sub_1ADB06A20();
  v17 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v19 = &v34 - v18;
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_1ADB06A20();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - v23;
  (*(a11 + 16))(a6, a11);
  LODWORD(v20) = (*(*(v20 - 8) + 48))(v24, 1, v20);
  (*(v22 + 8))(v24, v21);
  if (v20 == 1 && ((*(a11 + 72))(a6, a11) & 1) != 0 || (v25 = v43, v26 = v45, (*(v43 + 16))(v45, v43), v27 = (*(*(v16 - 8) + 48))(v19, 1, v16), (*(v17 + 8))(v19, v42), v27 == 1) && ((*(v25 + 72))(v26, v25) & 1) != 0)
  {
    v28 = 0;
  }

  else
  {
    v29 = v39;
    v30 = v35;
    v31 = v41;
    (*(v39 + 16))(v41, v39);
    v28 = 1;
    v32 = (*(*(AssociatedTypeWitness - 8) + 48))(v30, 1);
    (*(v36 + 8))(v30, v38);
    if (v32 == 1)
    {
      v28 = (*(v29 + 72))(v31, v29) ^ 1;
    }
  }

  return v28 & 1;
}

char *sub_1AD4AC8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *v14;
  v18 = swift_allocObject();
  v27 = v17[41];
  v18[2] = v27;
  v19 = v17[42];
  v18[3] = v19;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a9;
  v18[7] = a10;
  v20 = v17[43];
  v18[8] = v20;
  v21 = v17[44];
  v18[9] = v21;
  v18[10] = a11;
  v18[11] = a12;
  v18[12] = a13;
  v18[13] = a14;
  v18[14] = a1;
  v18[15] = a2;
  v18[16] = a3;
  v18[17] = a4;
  v18[18] = a5;
  v18[19] = a6;
  v22 = swift_allocObject();
  v22[2] = v27;
  v22[3] = v19;
  v22[4] = a7;
  v22[5] = a8;
  v22[6] = a9;
  v22[7] = a10;
  v22[8] = v20;
  v22[9] = v21;
  v22[10] = a11;
  v22[11] = a12;
  v22[12] = a13;
  v22[13] = a14;
  v22[14] = a1;
  v22[15] = a2;
  v22[16] = a3;
  v22[17] = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_1AD4B1B98(sub_1AD4B3504, v18, sub_1AD4B3574, v22);

  return v23;
}

uint64_t sub_1AD4ACAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, char *, char *, char *, char *, uint64_t, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v63 = a3;
  v64 = a8;
  v76 = a6;
  v79 = a5;
  v80 = a4;
  v61 = a1;
  v62 = a2;
  v69 = a21;
  v70 = a7;
  v68 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1ADB06A20();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v66 = &v59 - v24;
  v71 = AssociatedTypeWitness;
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v59 - v25;
  v74 = a20;
  v75 = a14;
  v26 = swift_getAssociatedTypeWitness();
  v27 = sub_1ADB06A20();
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v59 - v29;
  v73 = v26;
  v72 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v65 = &v59 - v31;
  v77 = a19;
  v78 = a13;
  v32 = swift_getAssociatedTypeWitness();
  v33 = sub_1ADB06A20();
  v34 = MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v59 - v35;
  v37 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v81 = &v59 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v40 = sub_1ADB06A20();
  v41 = MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v59 - v42;
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v59 - v45;
  (*(a18 + 16))(a12, a18);
  result = (*(v44 + 48))(v43, 1, v39);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v48 = *(v44 + 32);
  v80 = v39;
  v48(v46, v43, v39);
  (*(v77 + 16))(v78);
  result = (*(v37 + 48))(v36, 1, v32);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v49 = v46;
  v50 = *(v37 + 32);
  v79 = v32;
  v50(v81, v36, v32);
  (*(v74 + 16))(v75);
  v51 = v72;
  v52 = v73;
  result = (*(v72 + 48))(v30, 1, v73);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v78 = v37;
  v53 = v65;
  (*(v51 + 32))(v65, v30, v52);
  v54 = v66;
  (*(v69 + 16))(v68);
  v55 = v67;
  v56 = v71;
  result = (*(v67 + 48))(v54, 1, v71);
  if (result != 1)
  {
    v57 = v60;
    (*(v55 + 32))(v60, v54, v56);
    v58 = v81;
    v64(v61, v49, v81, v53, v57, v62, v63);
    (*(v55 + 8))(v57, v56);
    (*(v51 + 8))(v53, v52);
    (*(v78 + 8))(v58, v79);
    return (*(v44 + 8))(v49, v80);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1AD4AD110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v56 = a3;
  v59 = a2;
  v48 = a16;
  v49 = a4;
  v47 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = sub_1ADB06A20();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v42 - v18;
  v54 = a9;
  v55 = a15;
  v52 = swift_getAssociatedTypeWitness();
  v53 = sub_1ADB06A20();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v42 - v19;
  v58 = a14;
  v60 = a8;
  v20 = swift_getAssociatedTypeWitness();
  v57 = sub_1ADB06A20();
  v21 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v23 = &v42 - v22;
  v24 = swift_getAssociatedTypeWitness();
  v25 = sub_1ADB06A20();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  (*(a13 + 16))(a7, a13);
  LODWORD(v24) = (*(*(v24 - 8) + 48))(v28, 1, v24);
  (*(v26 + 8))(v28, v25);
  if (v24 == 1 && ((*(a13 + 72))(a7, a13) & 1) != 0 || (v29 = v58, v30 = v60, (*(v58 + 16))(v60, v58), v31 = (*(*(v20 - 8) + 48))(v23, 1, v20), (*(v21 + 8))(v23, v57), v31 == 1) && ((*(v29 + 72))(v30, v29) & 1) != 0 || (v32 = v55, v33 = v50, v34 = v54, (*(v55 + 16))(v54, v55), v35 = (*(*(v52 - 8) + 48))(v33, 1), (*(v51 + 8))(v33, v53), v35 == 1) && ((*(v32 + 72))(v34, v32) & 1) != 0)
  {
    v36 = 0;
  }

  else
  {
    v37 = v48;
    v38 = v43;
    v39 = v47;
    (*(v48 + 16))(v47, v48);
    v36 = 1;
    v40 = (*(*(AssociatedTypeWitness - 8) + 48))(v38, 1);
    (*(v44 + 8))(v38, v46);
    if (v40 == 1)
    {
      v36 = (*(v37 + 72))(v39, v37) ^ 1;
    }
  }

  return v36 & 1;
}

uint64_t sub_1AD4AD680(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1AD4AD6DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ADB06F50();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1AD4AD754(void *a1, uint64_t a2)
{
  type metadata accessor for ProvisioningOperationComposer.StateArchive.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_1ADB06EE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADB07150();
  v9[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B9B0);
  sub_1AD4B4774(&qword_1EB59B9B8, sub_1AD3C7618);
  sub_1ADB06ED0();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1AD4AD918(void *a1)
{
  type metadata accessor for ProvisioningOperationComposer.StateArchive.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1ADB06E30();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADB07120();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B9B0);
    sub_1AD4B4774(qword_1EB59B9C0, sub_1AD3C6384);
    sub_1ADB06E10();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1AD4ADB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AD4AD6DC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AD4ADB60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD3CD77C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1AD4ADB90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AD4ADBE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

void *sub_1AD4ADC38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AD4AD918(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AD4ADCB8@<X0>(void (*a1)(void)@<X4>, uint64_t *a2@<X8>)
{
  sub_1AD3D3200(0, &qword_1EB59A0E0);
  a1(0);
  result = sub_1ADB06870();
  *a2 = result;
  return result;
}

uint64_t sub_1AD4ADDB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A020);
  v33 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1AD41C9D0(v24, v34);
      }

      else
      {
        sub_1AD3C94C4(v24, v34);
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1AD41C9D0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AE070(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A048);
  v38 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1AD426AE8(v25, v26, v27);
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AE350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A028);
  v37 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AE610(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A058);
  v33 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1AD3C7528(v34, *(&v34 + 1));
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AE8CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B918);
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_1ADB07090();
      ProvisioningStep.hash(into:)(v31, v20);
      result = sub_1ADB070D0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AEB4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B910);
  v35 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1AD41C9D0(v22, v36);
      }

      else
      {
        sub_1AD3C94C4(v22, v36);
        v23 = v21;
      }

      sub_1ADB063B0();
      sub_1ADB07090();
      sub_1ADB06460();
      v24 = sub_1ADB070D0();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1AD41C9D0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AEE1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59B920);
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + v22);
      sub_1ADB07090();
      sub_1ADB06460();

      result = sub_1ADB070D0();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_1AD4AF284(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A040);
  v38 = a2;
  result = sub_1ADB06D20();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1AD426AD0(v25, v26, v27);
      }

      sub_1ADB07090();
      sub_1ADB06460();
      result = sub_1ADB070D0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}