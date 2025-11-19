uint64_t sub_1AD46FFEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x657463656E6E6F63;
    v13 = 0xE900000000000064;
    if (a1 != 2)
    {
      v12 = 0xD000000000000016;
      v13 = 0x80000001ADB9C6C0;
    }

    v14 = 0x697463656E6E6F63;
    if (a1)
    {
      v11 = 0xEA0000000000676ELL;
    }

    else
    {
      v14 = 0x6C616974696E69;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x80000001ADB9C720;
    v4 = 0xD00000000000001ALL;
    v5 = 0x656E6E6F63736964;
    v6 = 0xEC00000064657463;
    if (a1 != 7)
    {
      v5 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xD000000000000015;
    v8 = 0x80000001ADB9C6E0;
    if (a1 != 4)
    {
      v7 = 0xD00000000000001BLL;
      v8 = 0x80000001ADB9C700;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE900000000000064;
        if (v9 != 0x657463656E6E6F63)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0x80000001ADB9C6C0;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xEA0000000000676ELL;
      if (v9 != 0x697463656E6E6F63)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x6C616974696E69)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0x80000001ADB9C6E0;
      if (v9 != 0xD000000000000015)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0x80000001ADB9C700;
      if (v9 != 0xD00000000000001BLL)
      {
LABEL_52:
        v16 = sub_1ADB06F50();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0x80000001ADB9C720;
    if (v9 != 0xD00000000000001ALL)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xEC00000064657463;
    if (v9 != 0x656E6E6F63736964)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x6574656C706D6F63)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1AD4702F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = "paymentSheetClosed";
  v4 = a1;
  if (a1 == 4)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a1 == 4)
  {
    v6 = "shippingContactSelected";
  }

  else
  {
    v6 = "shippingMethodSelected";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v7 = v5;
  }

  if (v4 == 3)
  {
    v8 = "couponCodeChanged";
  }

  else
  {
    v8 = v6;
  }

  if (v4 == 1)
  {
    v9 = 0xD000000000000015;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (v4 == 1)
  {
    v10 = "readyForMerchantValidation";
  }

  else
  {
    v10 = "paymentMethodSelected";
  }

  if (!v4)
  {
    v9 = 0xD000000000000016;
    v10 = "paymentSheetClosed";
  }

  if (v4 > 2)
  {
    v11 = v8;
  }

  else
  {
    v7 = v9;
    v11 = v10;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000017;
      v3 = "couponCodeChanged";
    }

    else if (a2 == 4)
    {
      v3 = "shippingContactSelected";
    }

    else
    {
      v2 = 0xD000000000000010;
      v3 = "shippingMethodSelected";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000015;
      v3 = "readyForMerchantValidation";
    }

    else
    {
      v2 = 0xD000000000000011;
      v3 = "paymentMethodSelected";
    }
  }

  if (v7 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ADB06F50();
  }

  return v12 & 1;
}

uint64_t sub_1AD47045C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000011;
  v3 = "receiverMetadata";
  v4 = a1;
  v5 = 0xD000000000000022;
  if (a1 == 4)
  {
    v6 = "getPaymentRequestResponse";
  }

  else
  {
    v5 = 0xD000000000000012;
    v6 = "rchantUpdatedEvent";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "paymentRequestAuthorizedEvent";
  }

  v8 = 0xD00000000000001ELL;
  if (a1 == 1)
  {
    v9 = "getPaymentRequest";
  }

  else
  {
    v8 = 0xD00000000000001DLL;
    v9 = "paymentRequestUserUpdatedEvent";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD000000000000011;
    v10 = "receiverMetadata";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD000000000000019;
      v3 = "paymentRequestAuthorizedEvent";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000022;
      v3 = "getPaymentRequestResponse";
    }

    else
    {
      v2 = 0xD000000000000012;
      v3 = "rchantUpdatedEvent";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000001ELL;
      v3 = "getPaymentRequest";
    }

    else
    {
      v2 = 0xD00000000000001DLL;
      v3 = "paymentRequestUserUpdatedEvent";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ADB06F50();
  }

  return v13 & 1;
}

uint64_t sub_1AD4705C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000018;
  if (a1 == 4)
  {
    v3 = 0x80000001ADB9B770;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    v4 = 0xD00000000000001CLL;
    v5 = 0x80000001ADB9B750;
  }

  else
  {
    v5 = v3;
  }

  v6 = 0x80000001ADB9B710;
  if (a1 != 1)
  {
    v6 = 0x80000001ADB9B730;
  }

  if (a1)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (!a1)
  {
    v6 = 0x80000001ADB9B6F0;
  }

  if (a1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (v2 <= 2)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0x80000001ADB9B750;
      if (v8 != 0xD00000000000001CLL)
      {
        goto LABEL_38;
      }
    }

    else if (a2 == 4)
    {
      v10 = 0x80000001ADB9B770;
      if (v8 != 0xD000000000000018)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
LABEL_38:
        v11 = sub_1ADB06F50();
        goto LABEL_39;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0x80000001ADB9B710;
    }

    else
    {
      v10 = 0x80000001ADB9B730;
    }

    if (v8 != 0xD000000000000014)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = 0x80000001ADB9B6F0;
    if (v8 != 0xD000000000000013)
    {
      goto LABEL_38;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

uint64_t sub_1AD470768(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000017;
  v3 = "upported";
  if (a1 <= 3u)
  {
    v4 = "paymentSheetShownFailed";
    v5 = 0xD00000000000001ALL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000015;
      v4 = "readyForMerchantValidation";
    }

    v8 = "paymentSheetShownSuccess";
    if (a1)
    {
      v9 = 0xD000000000000017;
    }

    else
    {
      v9 = 0xD000000000000018;
    }

    if (!a1)
    {
      v8 = "upported";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "shippingContactSelected";
    v5 = 0xD000000000000016;
    v6 = "shippingMethodSelected";
    v7 = 0xD000000000000010;
    if (a1 != 7)
    {
      v7 = 0xD000000000000012;
      v6 = "paymentCancelled";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "paymentMethodSelected";
    v9 = 0xD000000000000011;
    if (a1 != 4)
    {
      v9 = 0xD000000000000017;
      v8 = "couponCodeChanged";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "shippingContactSelected";
        v2 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v3 = "shippingMethodSelected";
        v2 = 0xD000000000000010;
      }

      else
      {
        v3 = "paymentCancelled";
        v2 = 0xD000000000000012;
      }

      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v3 = "paymentMethodSelected";
      v2 = 0xD000000000000011;
      goto LABEL_41;
    }

    v13 = "shippingContactSelected";
LABEL_40:
    v3 = (v13 - 32);
    goto LABEL_41;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = 0xD000000000000018;
      goto LABEL_41;
    }

    v13 = "paymentSheetShownFailed";
    goto LABEL_40;
  }

  if (a2 == 2)
  {
    v3 = "paymentSheetShownFailed";
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "readyForMerchantValidation";
    v2 = 0xD000000000000015;
  }

LABEL_41:
  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1ADB06F50();
  }

  return v14 & 1;
}

uint64_t sub_1AD470994(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x726F707075736E75;
    v10 = 0xEF64726143646574;
    if (a1 != 6)
    {
      v9 = 0xD000000000000017;
      v10 = 0x80000001ADB9BDE0;
    }

    v11 = 0x80000001ADB9BD90;
    if (a1 != 4)
    {
      v11 = 0x80000001ADB9BDB0;
    }

    if (a1 <= 5u)
    {
      v7 = 0xD000000000000011;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x80000001ADB9BD50;
    v5 = 0xD000000000000015;
    if (a1 != 2)
    {
      v5 = 0xD000000000000014;
      v4 = 0x80000001ADB9BD70;
    }

    v6 = 0xD000000000000016;
    if (a1)
    {
      v3 = 0x80000001ADB9BD30;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xEF64726143646574;
        if (v7 != 0x726F707075736E75)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0x80000001ADB9BDE0;
        if (v7 != 0xD000000000000017)
        {
LABEL_47:
          v14 = sub_1ADB06F50();
          goto LABEL_48;
        }
      }
    }

    else
    {
      if (a2 == 4)
      {
        v13 = "couponCodeInvalid";
      }

      else
      {
        v13 = "couponCodeExpired";
      }

      v12 = (v13 - 32) | 0x8000000000000000;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0x80000001ADB9BD50;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0x80000001ADB9BD70;
      if (v7 != 0xD000000000000014)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v12 = 0x80000001ADB9BD30;
    if (v7 != 0xD000000000000016)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v12)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1AD470C0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000534433;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xEB00000000564D45;
    }

    else
    {
      v5 = 0xEB00000000534433;
    }

    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v5 = 0xEE00746964657243;
LABEL_13:
    v4 = 0x7374726F70707573;
    goto LABEL_14;
  }

  if (a1 == 3)
  {
    v4 = 0x7374726F70707573;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3 == 3)
  {
    v5 = 0xED00007469626544;
  }

  else
  {
    v5 = 0x80000001ADB9BC30;
  }

LABEL_14:
  v6 = 0xD000000000000017;
  v7 = 0x80000001ADB9BC30;
  if (a2 == 3)
  {
    v6 = 0x7374726F70707573;
    v7 = 0xED00007469626544;
  }

  if (a2 == 2)
  {
    v8 = 0x7374726F70707573;
  }

  else
  {
    v8 = v6;
  }

  if (a2 == 2)
  {
    v7 = 0xEE00746964657243;
  }

  if (a2)
  {
    v2 = 0xEB00000000564D45;
  }

  if (a2 <= 1u)
  {
    v9 = 0x7374726F70707573;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ADB06F50();
  }

  return v11 & 1;
}

uint64_t sub_1AD470D70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656E6F6870;
    }

    else
    {
      v4 = 0x636972656E6567;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6578544;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6863746177;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 6513005;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E6F6870;
    }

    else
    {
      v9 = 0x636972656E6567;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x6863746177;
    if (a2 != 3)
    {
      v6 = 6513005;
      v5 = 0xE300000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6578544;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1ADB06F50();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1AD470ECC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C69616D65;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1701667182;
    }

    else
    {
      v5 = 0x6C69616D65;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x636974656E6F6870;
    v4 = 0xEC000000656D614ELL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x656E6F6870;
  }

  else
  {
    v5 = 0x64416C6174736F70;
    v4 = 0xED00007373657264;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE400000000000000;
    v8 = 1701667182;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x636974656E6F6870;
    v6 = 0xEC000000656D614ELL;
    v7 = 0xE500000000000000;
    v8 = 0x656E6F6870;
    if (a2 != 3)
    {
      v8 = 0x64416C6174736F70;
      v7 = 0xED00007373657264;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ADB06F50();
  }

  return v12 & 1;
}

uint64_t sub_1AD471054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x6574617669746361;
    }

    if (v3)
    {
      v7 = 0x80000001ADB9BEA0;
    }

    else
    {
      v7 = 0xE900000000000064;
    }
  }

  else
  {
    v4 = 0x65646E6570737573;
    if (a1 == 3)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v4 = 0x6176697463616564;
      v5 = 0xEB00000000646574;
    }

    if (a1 == 2)
    {
      v6 = 0x6974617669746361;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xEA0000000000676ELL;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x6574617669746361;
    }

    if (a2)
    {
      v2 = 0x80000001ADB9BEA0;
    }

    if (v6 != v8)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0xEA0000000000676ELL;
    if (v6 != 0x6974617669746361)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    if (v6 != 0x65646E6570737573)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0xEB00000000646574;
    if (v6 != 0x6176697463616564)
    {
LABEL_34:
      v9 = sub_1ADB06F50();
      goto LABEL_35;
    }
  }

  if (v7 != v2)
  {
    goto LABEL_34;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1AD471208(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6448503;
    }

    else
    {
      v4 = 0x65726F74536E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7368801;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE300000000000000;
  v8 = 6448503;
  if (a2 != 2)
  {
    v8 = 0x65726F74536E69;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 7368801;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ADB06F50();
  }

  return v11 & 1;
}

uint64_t sub_1AD47132C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x676E697070696873;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x63695065726F7473;
    }

    else
    {
      v4 = 0x5065636976726573;
    }

    if (v3 == 2)
    {
      v5 = 0xEB0000000070756BLL;
    }

    else
    {
      v5 = 0xED000070756B6369;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x79726576696C6564;
    }

    else
    {
      v4 = 0x676E697070696873;
    }

    v5 = 0xE800000000000000;
  }

  v6 = 0x63695065726F7473;
  v7 = 0xEB0000000070756BLL;
  if (a2 != 2)
  {
    v6 = 0x5065636976726573;
    v7 = 0xED000070756B6369;
  }

  if (a2)
  {
    v2 = 0x79726576696C6564;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE800000000000000;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ADB06F50();
  }

  return v10 & 1;
}

uint64_t sub_1AD471498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7469626564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64696170657270;
    }

    else
    {
      v4 = 0x65726F7473;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746964657263;
    }

    else
    {
      v4 = 0x7469626564;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x64696170657270;
  if (a2 != 2)
  {
    v8 = 0x65726F7473;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x746964657263;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ADB06F50();
  }

  return v11 & 1;
}

uint64_t sub_1AD4715C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x68746E6F6DLL;
    }

    else
    {
      v4 = 1918985593;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7954788;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1920298856;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6574756E696DLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x68746E6F6DLL;
    }

    else
    {
      v9 = 1918985593;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1920298856;
    if (a2 != 3)
    {
      v6 = 0x6574756E696DLL;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7954788;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1ADB06F50();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1AD47171C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x74616964656D6D69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6465727265666564;
    }

    else
    {
      v5 = 0x6974616D6F747561;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEF64616F6C655263;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E69727275636572;
    }

    else
    {
      v5 = 0x74616964656D6D69;
    }

    if (v4)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465727265666564;
  if (a2 != 2)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xEF64616F6C655263;
  }

  if (a2)
  {
    v3 = 0x6E69727275636572;
    v2 = 0xE900000000000067;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1ADB06F50();
  }

  return v11 & 1;
}

uint64_t sub_1AD471878()
{
  sub_1ADB06460();
}

uint64_t sub_1AD4719D8()
{
  sub_1ADB06460();
}

uint64_t sub_1AD471B48()
{
  sub_1ADB06460();
}

uint64_t sub_1AD471C70()
{
  sub_1ADB06460();
}

uint64_t sub_1AD471DC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1AD471E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1AD471E5C(__int128 *a1, unsigned __int8 a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = 0xD000000000000017;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  *(inited + 32) = 0x7954657461647075;
  v11 = inited + 32;
  *(inited + 40) = 0xEA00000000006570;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = "shippingContactSelected";
        v9 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v12 = "shippingMethodSelected";
        v9 = 0xD000000000000010;
      }

      else
      {
        v12 = "paymentCancelled";
        v9 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v12 = "paymentMethodSelected";
      v9 = 0xD000000000000011;
      goto LABEL_19;
    }

    v13 = "shippingContactSelected";
LABEL_18:
    v12 = v13 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v13 = "paymentSheetShownFailed";
    }

    else
    {
      v9 = 0xD000000000000018;
      v13 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v12 = "paymentSheetShownFailed";
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v12 = "readyForMerchantValidation";
    v9 = 0xD000000000000015;
  }

LABEL_19:
  *(inited + 48) = v9;
  *(inited + 56) = v12 | 0x8000000000000000;
  v14 = sub_1AD4262D4(inited);
  swift_setDeallocating();
  sub_1AD3D0E3C(v11, &qword_1EB59AD80);
  sub_1AD47A3D0(a1, &v27);
  sub_1AD437594(a1, v14, v32);
  sub_1AD47A37C(a1);
  v15 = v32[0];
  v16 = v32[1];
  v18 = v32[4];
  v17 = v32[5];
  v20 = v32[2];
  v19 = v32[3];
  v21 = v32[6];

  sub_1AD47A37C(v32);
  BYTE9(v30) = a2;
  *&v27 = v15;
  *(&v27 + 1) = v16;
  *&v28 = v18;
  *(&v28 + 1) = v17;
  *&v29 = v20;
  *(&v29 + 1) = v19;
  *&v30 = v21;
  BYTE8(v30) = 1;
  v31 = 0;
  if (qword_1EB5980F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  sub_1AD47A530(a5, a3);
  v22 = sub_1ADB059B0();
  v25[2] = v29;
  v25[3] = v30;
  v26 = v31;
  v25[0] = v27;
  v25[1] = v28;
  v23 = v22;
  sub_1AD3D0E3C(v25, a3);
  return v23;
}

uint64_t sub_1AD4722C0(__int128 *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = 0xD000000000000017;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59ADE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59ADF0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  sub_1AD47A488(a3, &v31 + *(v12 + 36) - v13);
  *v14 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  *(inited + 32) = 0x7954657461647075;
  v16 = inited + 32;
  *(inited + 40) = 0xEA00000000006570;
  v32 = v10;
  v33 = v14;
  v31 = v11;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v17 = "shippingContactSelected";
        v6 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v17 = "shippingMethodSelected";
        v6 = 0xD000000000000010;
      }

      else
      {
        v17 = "paymentCancelled";
        v6 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v17 = "paymentMethodSelected";
      v6 = 0xD000000000000011;
      goto LABEL_19;
    }

    v18 = "shippingContactSelected";
LABEL_18:
    v17 = v18 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v18 = "paymentSheetShownFailed";
    }

    else
    {
      v6 = 0xD000000000000018;
      v18 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v17 = "paymentSheetShownFailed";
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v17 = "readyForMerchantValidation";
    v6 = 0xD000000000000015;
  }

LABEL_19:
  *(inited + 48) = v6;
  *(inited + 56) = v17 | 0x8000000000000000;
  v19 = sub_1AD4262D4(inited);
  swift_setDeallocating();
  sub_1AD3D0E3C(v16, &qword_1EB59AD80);
  sub_1AD47A3D0(a1, v34);
  sub_1AD437594(a1, v19, v34);
  sub_1AD47A37C(a1);
  v21 = v34[0];
  v20 = v34[1];
  v22 = v34[4];
  v23 = v34[5];
  v24 = v34[2];
  v25 = v34[3];
  v26 = v34[6];

  sub_1AD47A37C(v34);
  v27 = v7;
  v28 = *(v7 + 44);
  sub_1AD3D0E9C(v33, &v9[v28], &qword_1EB59ADF0);
  (*(v31 + 56))(&v9[v28], 0, 1, v32);
  *v9 = v21;
  *(v9 + 1) = v20;
  *(v9 + 2) = v22;
  *(v9 + 3) = v23;
  *(v9 + 4) = v24;
  *(v9 + 5) = v25;
  *(v9 + 6) = v26;
  v9[56] = 1;
  *&v9[*(v27 + 48)] = 0;
  if (qword_1EB5980F8 != -1)
  {
    swift_once();
  }

  sub_1AD47A530(&qword_1EB59ADF8, &qword_1EB59ADE8);
  v29 = sub_1ADB059B0();
  sub_1AD3D0E3C(v9, &qword_1EB59ADE8);
  sub_1AD3D0E3C(v33, &qword_1EB59ADF0);
  return v29;
}

uint64_t sub_1AD472808(__int128 *a1, unsigned __int8 a2, void *__src)
{
  v6 = 0xD000000000000017;
  memcpy(&__srca[7], __src, 0x148uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ADB78CE0;
  *(v7 + 32) = 0x7954657461647075;
  v8 = v7 + 32;
  *(v7 + 40) = 0xEA00000000006570;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "shippingContactSelected";
        v6 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v9 = "shippingMethodSelected";
        v6 = 0xD000000000000010;
      }

      else
      {
        v9 = "paymentCancelled";
        v6 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v9 = "paymentMethodSelected";
      v6 = 0xD000000000000011;
      goto LABEL_19;
    }

    v10 = "shippingContactSelected";
LABEL_18:
    v9 = v10 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = "paymentSheetShownFailed";
    }

    else
    {
      v6 = 0xD000000000000018;
      v10 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v9 = "paymentSheetShownFailed";
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = "readyForMerchantValidation";
    v6 = 0xD000000000000015;
  }

LABEL_19:
  *(v7 + 48) = v6;
  *(v7 + 56) = v9 | 0x8000000000000000;
  v11 = v7;
  sub_1AD40D7A4(__src, v25);
  v12 = sub_1AD4262D4(v11);
  swift_setDeallocating();
  sub_1AD3D0E3C(v8, &qword_1EB59AD80);
  swift_deallocClassInstance();
  sub_1AD47A3D0(a1, v25);
  sub_1AD437594(a1, v12, v29);
  sub_1AD47A37C(a1);
  v14 = v29[0];
  v13 = v29[1];
  v16 = v29[4];
  v15 = v29[5];
  v18 = v29[2];
  v17 = v29[3];
  v19 = v29[6];

  sub_1AD47A37C(v29);
  v26[0] = a2;
  memcpy(&v26[1], __srca, 0x14FuLL);
  memcpy(__dst, v26, sizeof(__dst));
  nullsub_3(__dst);
  memcpy(&v25[8], __dst, 0x150uLL);
  v25[0] = v14;
  v25[1] = v13;
  v25[2] = v16;
  v25[3] = v15;
  v25[4] = v18;
  v25[5] = v17;
  v25[6] = v19;
  LOBYTE(v25[7]) = 1;
  v25[50] = 0;
  sub_1AD3D0E9C(v26, v22, &qword_1EB59ADA8);
  if (qword_1EB5980F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59ADB0);
  sub_1AD47A530(&qword_1EB59ADB8, &qword_1EB59ADB0);
  v20 = sub_1ADB059B0();
  memcpy(v22, v25, sizeof(v22));
  sub_1AD3D0E3C(v22, &qword_1EB59ADB0);
  v23 = a2;
  memcpy(v24, __srca, sizeof(v24));
  sub_1AD3D0E3C(&v23, &qword_1EB59ADA8);
  return v20;
}

uint64_t sub_1AD472D50(__int128 *a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  v8 = 0xD000000000000017;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB78CE0;
  *(inited + 32) = 0x7954657461647075;
  v10 = inited + 32;
  *(inited + 40) = 0xEA00000000006570;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = "shippingContactSelected";
        v8 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v11 = "shippingMethodSelected";
        v8 = 0xD000000000000010;
      }

      else
      {
        v11 = "paymentCancelled";
        v8 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v11 = "paymentMethodSelected";
      v8 = 0xD000000000000011;
      goto LABEL_19;
    }

    v12 = "shippingContactSelected";
LABEL_18:
    v11 = v12 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v12 = "paymentSheetShownFailed";
    }

    else
    {
      v8 = 0xD000000000000018;
      v12 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v11 = "paymentSheetShownFailed";
    v8 = 0xD00000000000001ALL;
  }

  else
  {
    v11 = "readyForMerchantValidation";
    v8 = 0xD000000000000015;
  }

LABEL_19:
  *(inited + 48) = v8;
  *(inited + 56) = v11 | 0x8000000000000000;
  v13 = sub_1AD4262D4(inited);
  swift_setDeallocating();
  sub_1AD3D0E3C(v10, &qword_1EB59AD80);
  sub_1AD47A3D0(a1, &v26);
  sub_1AD437594(a1, v13, v32);
  sub_1AD47A37C(a1);
  v15 = v32[0];
  v14 = v32[1];
  v17 = v32[4];
  v16 = v32[5];
  v19 = v32[2];
  v18 = v32[3];
  v20 = v32[6];

  sub_1AD47A37C(v32);
  *&v30 = a2;
  *(&v30 + 1) = a3;
  *&v26 = v15;
  *(&v26 + 1) = v14;
  *&v27 = v17;
  *(&v27 + 1) = v16;
  *&v28 = v19;
  *(&v28 + 1) = v18;
  *&v29 = v20;
  BYTE8(v29) = 1;
  v31 = a4;
  v21 = qword_1EB5980F8;

  if (v21 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59ADD8);
  sub_1AD47A530(&qword_1EB59ADE0, &qword_1EB59ADD8);
  v22 = sub_1ADB059B0();
  v25[2] = v28;
  v25[3] = v29;
  v25[4] = v30;
  v25[5] = v31;
  v25[0] = v26;
  v25[1] = v27;
  v23 = v22;
  sub_1AD3D0E3C(v25, &qword_1EB59ADD8);
  return v23;
}

uint64_t sub_1AD4731D8(__int128 *a1, unsigned __int8 a2, uint64_t a3)
{
  v6 = *(a3 + 176);
  *(&v59[10] + 7) = *(a3 + 160);
  *(&v59[11] + 7) = v6;
  *(&v59[12] + 7) = *(a3 + 192);
  v7 = *(a3 + 112);
  *(&v59[6] + 7) = *(a3 + 96);
  *(&v59[7] + 7) = v7;
  v8 = *(a3 + 144);
  *(&v59[8] + 7) = *(a3 + 128);
  *(&v59[9] + 7) = v8;
  v9 = *(a3 + 48);
  *(&v59[2] + 7) = *(a3 + 32);
  *(&v59[3] + 7) = v9;
  v10 = *(a3 + 80);
  *(&v59[4] + 7) = *(a3 + 64);
  *(&v59[5] + 7) = v10;
  v11 = *(a3 + 16);
  *(v59 + 7) = *a3;
  v12 = 0xD000000000000017;
  *(&v59[13] + 7) = *(a3 + 208);
  *(&v59[1] + 7) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ADB78CE0;
  *(v13 + 32) = 0x7954657461647075;
  v14 = v13 + 32;
  *(v13 + 40) = 0xEA00000000006570;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = "shippingContactSelected";
        v12 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v15 = "shippingMethodSelected";
        v12 = 0xD000000000000010;
      }

      else
      {
        v15 = "paymentCancelled";
        v12 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v15 = "paymentMethodSelected";
      v12 = 0xD000000000000011;
      goto LABEL_19;
    }

    v16 = "shippingContactSelected";
LABEL_18:
    v15 = v16 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = "paymentSheetShownFailed";
    }

    else
    {
      v12 = 0xD000000000000018;
      v16 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v15 = "paymentSheetShownFailed";
    v12 = 0xD00000000000001ALL;
  }

  else
  {
    v15 = "readyForMerchantValidation";
    v12 = 0xD000000000000015;
  }

LABEL_19:
  *(v13 + 48) = v12;
  *(v13 + 56) = v15 | 0x8000000000000000;
  v17 = v13;
  sub_1AD40D640(a3, __src);
  v18 = sub_1AD4262D4(v17);
  swift_setDeallocating();
  sub_1AD3D0E3C(v14, &qword_1EB59AD80);
  swift_deallocClassInstance();
  sub_1AD47A3D0(a1, __src);
  sub_1AD437594(a1, v18, v60);
  sub_1AD47A37C(a1);
  v20 = v60[0];
  v19 = v60[1];
  v22 = v60[4];
  v21 = v60[5];
  v24 = v60[2];
  v23 = v60[3];
  v25 = v60[6];

  sub_1AD47A37C(v60);
  v44[0] = a2;
  *&v44[161] = v59[10];
  *&v44[177] = v59[11];
  *&v44[193] = v59[12];
  *&v44[1] = v59[0];
  *&v44[17] = v59[1];
  *&v44[208] = *(&v59[12] + 15);
  *&v44[97] = v59[6];
  *&v44[113] = v59[7];
  *&v44[129] = v59[8];
  *&v44[145] = v59[9];
  *&v44[33] = v59[2];
  *&v44[49] = v59[3];
  *&v44[65] = v59[4];
  *&v44[81] = v59[5];
  v56 = *&v44[176];
  v57 = *&v44[192];
  v58 = *(&v59[12] + 15);
  v52 = *&v44[112];
  v53 = *&v44[128];
  v54 = *&v44[144];
  v55 = *&v44[160];
  v48 = *&v44[48];
  v49 = *&v44[64];
  v50 = *&v44[80];
  v51 = *&v44[96];
  v45 = *v44;
  v46 = *&v44[16];
  v47 = *&v44[32];
  nullsub_3(&v45);
  *&__src[224] = v55;
  *&__src[240] = v56;
  *&__src[256] = v57;
  *&__src[272] = v58;
  *&__src[160] = v51;
  *&__src[176] = v52;
  *&__src[192] = v53;
  *&__src[208] = v54;
  *&__src[96] = v47;
  *&__src[112] = v48;
  *&__src[128] = v49;
  *&__src[144] = v50;
  *&__src[64] = v45;
  *&__src[80] = v46;
  *__src = v20;
  *&__src[8] = v19;
  *&__src[16] = v22;
  *&__src[24] = v21;
  *&__src[32] = v24;
  *&__src[40] = v23;
  *&__src[48] = v25;
  __src[56] = 1;
  *&__src[288] = 0;
  sub_1AD3D0E9C(v44, __dst, &qword_1EB59ADC0);
  if (qword_1EB5980F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59ADC8);
  sub_1AD47A530(&qword_1EB59ADD0, &qword_1EB59ADC8);
  v26 = sub_1ADB059B0();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AD3D0E3C(__dst, &qword_1EB59ADC8);
  v40 = v59[10];
  v41 = v59[11];
  *v42 = v59[12];
  *&v42[15] = *(&v59[12] + 15);
  v36 = v59[6];
  v37 = v59[7];
  v38 = v59[8];
  v39 = v59[9];
  v32 = v59[2];
  v33 = v59[3];
  v34 = v59[4];
  v35 = v59[5];
  v30 = v59[0];
  v29 = a2;
  v31 = v59[1];
  sub_1AD3D0E3C(&v29, &qword_1EB59ADC0);
  return v26;
}

uint64_t sub_1AD4739C4(__int128 *a1, unsigned __int8 a2, _OWORD *a3)
{
  v6 = a3[9];
  *&v57[135] = a3[8];
  *&v57[151] = v6;
  *&v57[167] = a3[10];
  *&v57[178] = *(a3 + 171);
  v7 = a3[5];
  *&v57[71] = a3[4];
  *&v57[87] = v7;
  v8 = a3[7];
  *&v57[103] = a3[6];
  *&v57[119] = v8;
  v9 = a3[1];
  *&v57[7] = *a3;
  *&v57[23] = v9;
  v10 = a3[3];
  *&v57[39] = a3[2];
  v11 = 0xD000000000000017;
  *&v57[55] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD78);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ADB78CE0;
  *(v12 + 32) = 0x7954657461647075;
  v13 = v12 + 32;
  *(v12 + 40) = 0xEA00000000006570;
  v27 = a2;
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "shippingContactSelected";
        v11 = 0xD000000000000016;
      }

      else if (a2 == 7)
      {
        v14 = "shippingMethodSelected";
        v11 = 0xD000000000000010;
      }

      else
      {
        v14 = "paymentCancelled";
        v11 = 0xD000000000000012;
      }

      goto LABEL_19;
    }

    if (a2 == 4)
    {
      v14 = "paymentMethodSelected";
      v11 = 0xD000000000000011;
      goto LABEL_19;
    }

    v15 = "shippingContactSelected";
LABEL_18:
    v14 = v15 - 32;
    goto LABEL_19;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v15 = "paymentSheetShownFailed";
    }

    else
    {
      v11 = 0xD000000000000018;
      v15 = "paymentSheetShownSuccess";
    }

    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v14 = "paymentSheetShownFailed";
    v11 = 0xD00000000000001ALL;
  }

  else
  {
    v14 = "readyForMerchantValidation";
    v11 = 0xD000000000000015;
  }

LABEL_19:
  *(v12 + 48) = v11;
  *(v12 + 56) = v14 | 0x8000000000000000;
  v16 = v12;
  sub_1AD40DC1C(a3, __src);
  v17 = sub_1AD4262D4(v16);
  swift_setDeallocating();
  sub_1AD3D0E3C(v13, &qword_1EB59AD80);
  swift_deallocClassInstance();
  sub_1AD47A3D0(a1, __src);
  sub_1AD437594(a1, v17, v58);
  sub_1AD47A37C(a1);
  v19 = v58[0];
  v18 = v58[1];
  v21 = v58[4];
  v20 = v58[5];
  v22 = v58[2];
  v23 = v58[3];
  v24 = v58[6];

  sub_1AD47A37C(v58);
  *&v44[145] = *&v57[144];
  *&v44[161] = *&v57[160];
  *&v44[177] = *&v57[176];
  *&v44[81] = *&v57[80];
  *&v44[97] = *&v57[96];
  *&v44[113] = *&v57[112];
  *&v44[129] = *&v57[128];
  *&v44[17] = *&v57[16];
  *&v44[33] = *&v57[32];
  *&v44[49] = *&v57[48];
  v44[0] = v27;
  *&v44[193] = *&v57[192];
  *&v44[65] = *&v57[64];
  *&v44[1] = *v57;
  v55 = *&v44[160];
  v56[0] = *&v44[176];
  *(v56 + 15) = *&v44[191];
  v51 = *&v44[96];
  v52 = *&v44[112];
  v53 = *&v44[128];
  v54 = *&v44[144];
  v47 = *&v44[32];
  v48 = *&v44[48];
  v49 = *&v44[64];
  v50 = *&v44[80];
  v45 = *v44;
  v46 = *&v44[16];
  nullsub_3(&v45);
  __src[14] = v55;
  __src[15] = v56[0];
  *(&__src[15] + 15) = *(v56 + 15);
  __src[10] = v51;
  __src[11] = v52;
  __src[13] = v54;
  __src[12] = v53;
  __src[6] = v47;
  __src[7] = v48;
  __src[9] = v50;
  __src[8] = v49;
  __src[5] = v46;
  __src[4] = v45;
  *&__src[0] = v19;
  *(&__src[0] + 1) = v18;
  *&__src[1] = v21;
  *(&__src[1] + 1) = v20;
  *&__src[2] = v22;
  *(&__src[2] + 1) = v23;
  *&__src[3] = v24;
  BYTE8(__src[3]) = 1;
  *(&__src[16] + 1) = 0;
  sub_1AD3D0E9C(v44, __dst, &qword_1EB59AD88);
  if (qword_1EB5980F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AD90);
  sub_1AD47A530(&unk_1EB59AD98, &qword_1EB59AD90);
  v25 = sub_1ADB059B0();
  memcpy(__dst, __src, sizeof(__dst));
  sub_1AD3D0E3C(__dst, &qword_1EB59AD90);
  v39 = *&v57[144];
  v40 = *&v57[160];
  v41 = *&v57[176];
  v35 = *&v57[80];
  v36 = *&v57[96];
  v37 = *&v57[112];
  v38 = *&v57[128];
  v31 = *&v57[16];
  v32 = *&v57[32];
  v33 = *&v57[48];
  v34 = *&v57[64];
  v29 = v27;
  v42 = *&v57[192];
  v30 = *v57;
  sub_1AD3D0E3C(&v29, &qword_1EB59AD88);
  return v25;
}

uint64_t sub_1AD4740F0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C616974696E69;
    v6 = 0x657463656E6E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000016;
    }

    if (a1)
    {
      v5 = 0x697463656E6E6F63;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001ALL;
    v2 = 0x656E6E6F63736964;
    if (a1 != 7)
    {
      v2 = 0x6574656C706D6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AD474238()
{
  sub_1ADB07090();
  sub_1AD4719D8();
  return sub_1ADB070D0();
}

uint64_t sub_1AD474288()
{
  sub_1ADB07090();
  sub_1AD4719D8();
  return sub_1ADB070D0();
}

uint64_t sub_1AD4742CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AD47A294();
  *a1 = result;
  return result;
}

uint64_t sub_1AD4742FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AD4740F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1AD474328(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state;
  if ((sub_1AD46FFEC(a1, v1[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state]) & 1) == 0)
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v5 = sub_1ADB05FA0();
    __swift_project_value_buffer(v5, qword_1EB59AA18);
    v6 = v1;
    v7 = sub_1ADB05F80();
    v8 = sub_1ADB06830();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 0x6C616974696E69;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34[0] = v11;
      *v10 = 33686274;
      *(v10 + 4) = *&v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier];

      *(v10 + 6) = 2080;
      if (a1 <= 3u)
      {
        v20 = 0xE700000000000000;
        v21 = 0x657463656E6E6F63;
        v22 = 0xE900000000000064;
        if (a1 != 2)
        {
          v21 = 0xD000000000000016;
          v22 = 0x80000001ADB9C6C0;
        }

        v23 = 0x697463656E6E6F63;
        if (a1)
        {
          v20 = 0xEA0000000000676ELL;
        }

        else
        {
          v23 = 0x6C616974696E69;
        }

        if (a1 <= 1u)
        {
          v18 = v23;
        }

        else
        {
          v18 = v21;
        }

        if (a1 <= 1u)
        {
          v19 = v20;
        }

        else
        {
          v19 = v22;
        }
      }

      else
      {
        v12 = 0x80000001ADB9C720;
        v13 = 0xD00000000000001ALL;
        v14 = 0x656E6E6F63736964;
        v15 = 0xEC00000064657463;
        if (a1 != 7)
        {
          v14 = 0x6574656C706D6F63;
          v15 = 0xE800000000000000;
        }

        if (a1 != 6)
        {
          v13 = v14;
          v12 = v15;
        }

        v16 = 0xD000000000000015;
        v17 = 0x80000001ADB9C6E0;
        if (a1 != 4)
        {
          v16 = 0xD00000000000001BLL;
          v17 = 0x80000001ADB9C700;
        }

        if (a1 <= 5u)
        {
          v18 = v16;
        }

        else
        {
          v18 = v13;
        }

        if (a1 <= 5u)
        {
          v19 = v17;
        }

        else
        {
          v19 = v12;
        }
      }

      v24 = sub_1AD3CA88C(v18, v19, v34);

      *(v10 + 8) = v24;
      *(v10 + 16) = 2080;
      v25 = v2[v4];
      if (v25 <= 3)
      {
        if (v2[v4] > 1u)
        {
          if (v25 == 2)
          {
            v9 = 0x657463656E6E6F63;
            v26 = 0xE900000000000064;
          }

          else
          {
            v26 = 0x80000001ADB9C6C0;
            v9 = 0xD000000000000016;
          }
        }

        else if (v2[v4])
        {
          v9 = 0x697463656E6E6F63;
          v26 = 0xEA0000000000676ELL;
        }

        else
        {
          v26 = 0xE700000000000000;
        }
      }

      else if (v2[v4] <= 5u)
      {
        if (v25 == 4)
        {
          v9 = 0xD000000000000015;
          v26 = 0x80000001ADB9C6E0;
        }

        else
        {
          v26 = 0x80000001ADB9C700;
          v9 = 0xD00000000000001BLL;
        }
      }

      else if (v25 == 6)
      {
        v26 = 0x80000001ADB9C720;
        v9 = 0xD00000000000001ALL;
      }

      else if (v25 == 7)
      {
        v9 = 0x656E6E6F63736964;
        v26 = 0xEC00000064657463;
      }

      else
      {
        v26 = 0xE800000000000000;
        v9 = 0x6574656C706D6F63;
      }

      v27 = sub_1AD3CA88C(v9, v26, v34);

      *(v10 + 18) = v27;
      _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: State changed from '%s' to '%s'", v10, 0x1Au);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v11, -1, -1);
      MEMORY[0x1B26F9F20](v10, -1, -1);
    }

    else
    {
    }

    v28 = v2[v4];
    if (v28 == 4)
    {
      v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented] = 1;
    }

    else if (v28 == 8)
    {
      if (v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authCoordinatorPresented] == 1 && ((v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_walletUninstallDetected] & 1) != 0 || v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented] == 1))
      {
        v29 = *&v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator];
        v30 = swift_allocObject();
        *(v30 + 16) = v6;
        v34[4] = sub_1AD47A334;
        v34[5] = v30;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 1107296256;
        v34[2] = sub_1AD471DC4;
        v34[3] = &block_descriptor_19;
        v31 = _Block_copy(v34);
        v32 = v6;
        v33 = v29;

        [v33 dismissWithCompletion_];
        _Block_release(v31);
      }

      else
      {
        if ((v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported] & 1) == 0)
        {
          sub_1AD4757F0(0, &unk_1F2261758);
          sub_1AD47A2E0(&unk_1F2261778);
        }

        sub_1AD4D6F74();
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1AD4BFA30();

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_1AD47490C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented) == 1)
  {
    sub_1AD475D60();
  }

  else if ((*(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported) & 1) == 0)
  {
    sub_1AD4757F0(0, &unk_1F2261790);
    sub_1AD47A2E0(&unk_1F22617B0);
  }

  sub_1AD4D6F74();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1AD4BFA30();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1AD4749D4()
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v1 = sub_1ADB05FA0();
  __swift_project_value_buffer(v1, qword_1EB59AA18);
  v2 = v0;
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06840();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 33685760;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v3, v4, "Session %{public}hd: Deinit", v5, 6u);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  *(*(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_websocket) + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  sub_1AD4D6F74();
  swift_unknownObjectRelease();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RemoteNetworkPaymentSession();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1AD474C64()
{
  v1 = 0xEA0000000000676ELL;
  v2 = 0x697463656E6E6F63;
  v3 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state;
  if (v0[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state] <= 3u && !v0[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state])
  {

LABEL_5:
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v5 = sub_1ADB05FA0();
    __swift_project_value_buffer(v5, qword_1EB59AA18);
    v6 = v0;
    v7 = sub_1ADB05F80();
    v8 = sub_1ADB06830();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 33685760;
      *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Presenting loading screen", v9, 6u);
      MEMORY[0x1B26F9F20](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v17 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator;
    [*(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator) setRemoteNetworkPaymentInvokingProcess_];
    v18 = *(&v6->isa + v17);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1AD47AD3C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD471E08;
    aBlock[3] = &block_descriptor_115;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 presentWithCompletion_];
    _Block_release(v20);

    return;
  }

  v4 = sub_1ADB06F50();

  if (v4)
  {
    goto LABEL_5;
  }

  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v10 = sub_1ADB05FA0();
  __swift_project_value_buffer(v10, qword_1EB59AA18);
  v11 = v0;
  v23 = v0;
  v12 = sub_1ADB05F80();
  v13 = sub_1ADB06850();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 33686018;
    *(v14 + 4) = *&v23[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier];

    *(v14 + 6) = 2080;
    v16 = v11[v3];
    if (v16 <= 3)
    {
      if (v11[v3] > 1u)
      {
        if (v16 == 2)
        {
          v2 = 0x657463656E6E6F63;
          v1 = 0xE900000000000064;
        }

        else
        {
          v1 = 0x80000001ADB9C6C0;
          v2 = 0xD000000000000016;
        }
      }

      else if (!v11[v3])
      {
        v1 = 0xE700000000000000;
        v2 = 0x6C616974696E69;
      }
    }

    else if (v11[v3] <= 5u)
    {
      if (v16 == 4)
      {
        v2 = 0xD000000000000015;
        v1 = 0x80000001ADB9C6E0;
      }

      else
      {
        v1 = 0x80000001ADB9C700;
        v2 = 0xD00000000000001BLL;
      }
    }

    else if (v16 == 6)
    {
      v1 = 0x80000001ADB9C720;
      v2 = 0xD00000000000001ALL;
    }

    else if (v16 == 7)
    {
      v2 = 0x656E6E6F63736964;
      v1 = 0xEC00000064657463;
    }

    else
    {
      v1 = 0xE800000000000000;
      v2 = 0x6574656C706D6F63;
    }

    v22 = sub_1AD3CA88C(v2, v1, aBlock);

    *(v14 + 8) = v22;
    _os_log_impl(&dword_1AD337000, v12, v13, "Session %{public}hd: Unable to start session, currently in state: %s", v14, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B26F9F20](v15, -1, -1);
    MEMORY[0x1B26F9F20](v14, -1, -1);
  }

  else
  {
  }
}

void sub_1AD475274(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      *(Strong + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authCoordinatorPresented) = 1;
      if (PKPassbookIsCurrentlyDeletedByUser())
      {
        if (qword_1EB598150 != -1)
        {
          swift_once();
        }

        v4 = sub_1ADB05FA0();
        __swift_project_value_buffer(v4, qword_1EB59AA18);
        v5 = v3;
        v6 = sub_1ADB05F80();
        v7 = sub_1ADB06830();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 33685760;
          *(v8 + 4) = *(&v5->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

          _os_log_impl(&dword_1AD337000, v6, v7, "Session %{public}hd: Wallet is not installed, immediately complete", v8, 6u);
          MEMORY[0x1B26F9F20](v8, -1, -1);
        }

        else
        {

          v6 = v5;
        }

        *(&v5->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_walletUninstallDetected) = 1;
        goto LABEL_18;
      }

      if (qword_1EB598150 != -1)
      {
        swift_once();
      }

      v10 = sub_1ADB05FA0();
      __swift_project_value_buffer(v10, qword_1EB59AA18);
      v11 = v3;
      v12 = sub_1ADB05F80();
      v13 = sub_1ADB06830();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 33685760;
        *(v14 + 4) = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

        _os_log_impl(&dword_1AD337000, v12, v13, "Session %{public}hd: Starting session", v14, 6u);
        MEMORY[0x1B26F9F20](v14, -1, -1);
      }

      else
      {

        v12 = v11;
      }

      *(*(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_websocket) + OBJC_IVAR____TtC11PassKitCore39RemoteNetworkPaymentWebsocketURLSession_delegate + 8) = &off_1F226B528;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRetain();
      sub_1AD4D6C1C();
      swift_unknownObjectRelease();
      v9 = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 1;
    }

    else
    {
      v9 = *(Strong + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(v3 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 8;
    }

    sub_1AD474328(v9);
LABEL_18:
  }
}

void sub_1AD475544()
{
  v1 = sub_1ADB05E30();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v0;
  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06830();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33685760;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Requesting Payment Request", v9, 6u);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  sub_1ADB05E20();
  v10 = sub_1ADB05E00();
  v12 = v11;
  (*(v2 + 8))(v4, v1);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  v19[2] = 0;
  v19[3] = 0xE000000000000000;
  v19[4] = v10;
  v19[5] = v12;
  v19[6] = 0;
  v13 = *(&v6[2].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_remoteIdentifier);
  v20[0] = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_remoteIdentifier);
  v20[1] = v13;
  v20[2] = *(&v6[4].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_remoteIdentifier);
  v21 = *(&v6[6].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_remoteIdentifier);
  v14 = sub_1AD437680(v19, v20);
  v16 = v15;
  sub_1AD47A37C(v19);
  if (v16 >> 60 == 15)
  {
    sub_1AD4757F0(0, &unk_1F22617C8);
    sub_1AD47A2E0(&unk_1F22617E8);
    sub_1AD4790F0(0xD000000000000020, 0x80000001ADBA0800);
  }

  else
  {
    sub_1AD4D711C(v14, v16);
    v17 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 3;
    sub_1AD474328(v17);
    sub_1AD422FB0(v14, v16);
  }
}

uint64_t sub_1AD4757F0(int a1, uint64_t a2)
{
  v5 = sub_1ADB05E30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v9 = sub_1ADB05FA0();
  __swift_project_value_buffer(v9, qword_1EB59AA18);
  v10 = v2;
  v11 = sub_1ADB05F80();
  v12 = sub_1ADB06830();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 33686016;
    *(v13 + 4) = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    *(v13 + 6) = 1024;
    *(v13 + 8) = a1 & 1;
    _os_log_impl(&dword_1AD337000, v11, v12, "Session %{public}hd: Sending 'Payment Sheet Shown (%{BOOL}d)'", v13, 0xCu);
    MEMORY[0x1B26F9F20](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  if (*(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported))
  {
    return sub_1AD4790F0(0xD000000000000025, 0x80000001ADBA07D0);
  }

  v51 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported;
  v52 = a1;
  if (a1)
  {
    v15 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
    v16 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
    v18 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
    v17 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

    sub_1ADB05E20();
    v19 = sub_1ADB05E00();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    *&v55 = v15;
    *(&v55 + 1) = v16;
    v56 = v18;
    v57 = v17;
    v58 = v19;
    v59 = v21;
    v60 = 0;
    v22 = &unk_1EB59AE10;
    v23 = &unk_1ADB82500;
    v24 = &unk_1EB59AE18;
    v25 = 0;
  }

  else
  {
    if ((*(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentRequestReceived) & 1) == 0 && (*(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestPromiseRejected) & 1) == 0)
    {
      *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestPromiseRejected) = 1;
      if (a2 && *(a2 + 16))
      {
        v27 = *(a2 + 32);
        v26 = *(a2 + 40);
        v28 = *(a2 + 48);
        sub_1AD47A518(v27, v26, v28);
        v29 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator);
        v30 = 9;
        v31 = 6;
        v32 = 7;
        if (v28 != 9)
        {
          v32 = 9;
        }

        if (v28 != 8)
        {
          v31 = v32;
        }

        v33 = 4;
        if (v28 != 6)
        {
          v33 = 5;
        }

        if (v28 != 5)
        {
          v30 = v33;
        }

        if (v28 > 7)
        {
          v30 = v31;
        }

        v34 = 2;
        v35 = 3;
        if (v28 != 3)
        {
          v35 = 8;
        }

        if (v28 != 2)
        {
          v34 = v35;
        }

        if (v28 <= 1)
        {
          v34 = v28 != 0;
        }

        if (v28 <= 4)
        {
          v36 = v34;
        }

        else
        {
          v36 = v30;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v29 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator);
        LOBYTE(v28) = -1;
        v36 = 9;
      }

      [v29 rejectRemotePaymentRequestPromiseWithFailure_];
      sub_1AD47A4EC(v27, v26, v28);
    }

    v37 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
    v38 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
    v40 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
    v39 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

    sub_1ADB05E20();
    v41 = sub_1ADB05E00();
    v43 = v42;
    (*(v6 + 8))(v8, v5);
    *&v55 = v37;
    *(&v55 + 1) = v38;
    v56 = v40;
    v57 = v39;
    v58 = v41;
    v59 = v43;
    v60 = 0;
    v22 = &unk_1EB59AE20;
    v23 = &unk_1ADB82508;
    v24 = &unk_1EB59AE28;
    v25 = 1;
  }

  v44 = sub_1AD471E5C(&v55, v25, v22, v23, v24);
  v46 = v45;
  sub_1AD47A37C(&v55);
  v47 = v52;
  if (v46 >> 60 == 15)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1ADB06C10();

    v53 = 0xD000000000000027;
    v54 = 0x80000001ADBA07A0;
    if (v47)
    {
      v48 = 1702195828;
    }

    else
    {
      v48 = 0x65736C6166;
    }

    if (v47)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE500000000000000;
    }

    MEMORY[0x1B26F6530](v48, v49);

    MEMORY[0x1B26F6530](10025, 0xE200000000000000);
    sub_1AD4790F0(v53, v54);
  }

  else
  {
    sub_1AD3C7528(v44, v46);
    sub_1AD4D711C(v44, v46);
    sub_1AD422FB0(v44, v46);
    *(&v10->isa + v51) = 1;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_1AD422FB0(v44, v46);
  }

  sub_1AD4BF8F4(v47 & 1);
  sub_1AD422FB0(v44, v46);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AD475D60()
{
  v1 = sub_1ADB05E30();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v0;
  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06830();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33685760;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Sending 'Payment Sheet Closed'", v9, 6u);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v11 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v10 = *(&v6[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v13 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v12 = *(&v6[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v14 = sub_1ADB05E00();
  v16 = v15;
  (*(v2 + 8))(v4, v1);
  *&v22 = v11;
  *(&v22 + 1) = v10;
  v23 = v13;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v27 = 0;
  v17 = sub_1AD471E5C(&v22, 8u, &qword_1EB59AE00, &unk_1ADB824F8, &qword_1EB59AE08);
  v19 = v18;
  sub_1AD47A37C(&v22);
  if (v19 >> 60 == 15)
  {
    return sub_1AD4790F0(0xD000000000000027, 0x80000001ADBA0770);
  }

  sub_1AD4D711C(v17, v19);
  return sub_1AD422FB0(v17, v19);
}

void sub_1AD475FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v36 = a1;
  v4 = type metadata accessor for RemoteNetworkPaymentCodable.Request.UserUpdate.ReadyForMerchantValidation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1ADB05E30();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v10 = sub_1ADB05FA0();
  __swift_project_value_buffer(v10, qword_1EB59AA18);
  v11 = v3;
  v12 = sub_1ADB05F80();
  v13 = sub_1ADB06830();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 33685760;
    *(v14 + 4) = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v12, v13, "Session %{public}hd: Requesting Merchant Session Update", v14, 6u);
    MEMORY[0x1B26F9F20](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  v15 = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v16 = *(&v11[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v17 = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v18 = *(&v11[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v19 = sub_1ADB05E00();
  v21 = v20;
  (*(v7 + 8))(v9, v35);
  *&v38 = v15;
  *(&v38 + 1) = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v21;
  v43 = 0;
  v22 = sub_1ADB05D20();
  (*(*(v22 - 8) + 16))(v6, v36, v22);
  v23 = sub_1AD4722C0(&v38, 2u, v6);
  v25 = v24;
  sub_1AD47A42C(v6);
  if (v25 >> 60 == 15)
  {
    sub_1AD47A37C(&v38);
    sub_1AD4790F0(0xD00000000000002BLL, 0x80000001ADBA0740);
  }

  else
  {
    v26 = v41;
    v27 = v42;
    v28 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    swift_beginAccess();

    v29 = v34;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(&v11->isa + v28);
    *(&v11->isa + v28) = 0x8000000000000000;
    sub_1AD4EC838(v33, v29, 0, v26, v27, isUniquelyReferenced_nonNull_native);

    *(&v11->isa + v28) = v37;
    swift_endAccess();
    sub_1AD47A37C(&v38);
    sub_1AD4D711C(v23, v25);
    v31 = *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v11->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 5;
    sub_1AD474328(v31);
    sub_1AD422FB0(v23, v25);
  }
}

void sub_1AD4763BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a1;
  v35 = a2;
  v5 = sub_1ADB05E30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v9 = sub_1ADB05FA0();
  __swift_project_value_buffer(v9, qword_1EB59AA18);
  v10 = v4;
  v11 = sub_1ADB05F80();
  v12 = sub_1ADB06830();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 33685760;
    *(v13 + 4) = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v11, v12, "Session %{public}hd: Coupon Code Changed", v13, 6u);
    MEMORY[0x1B26F9F20](v13, -1, -1);
  }

  else
  {

    v11 = v10;
  }

  v14 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v15 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v16 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v17 = *(&v10[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v18 = sub_1ADB05E00();
  v20 = v19;
  (*(v6 + 8))(v8, v5);
  *&v37 = v14;
  *(&v37 + 1) = v15;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v20;
  v42 = 0;
  v21 = sub_1AD472D50(&v37, 4u, v34, v35);
  if (v22 >> 60 == 15)
  {
    sub_1AD47A37C(&v37);
    sub_1AD4790F0(0xD000000000000022, 0x80000001ADBA0710);
  }

  else
  {
    v23 = v40;
    v24 = v41;
    v25 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    v26 = v21;
    v27 = v22;
    swift_beginAccess();

    v28 = v33;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(&v10->isa + v25);
    *(&v10->isa + v25) = 0x8000000000000000;
    sub_1AD4EC838(v32, v28, 1, v23, v24, isUniquelyReferenced_nonNull_native);

    *(&v10->isa + v25) = v36;
    swift_endAccess();
    sub_1AD47A37C(&v37);
    sub_1AD4D711C(v26, v27);
    v30 = *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v10->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 5;
    sub_1AD474328(v30);
    sub_1AD422FB0(v26, v27);
  }
}

void sub_1AD4766F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v32 = a1;
  v31 = sub_1ADB05E30();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v3;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Shipping Contact Selected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v13 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v14 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v15 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v16 = sub_1ADB05E00();
  v18 = v17;
  (*(v4 + 8))(v6, v31);
  *&v36 = v12;
  *(&v36 + 1) = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v18;
  v41 = 0;
  v19 = objc_allocWithZone(PKContact);
  sub_1AD402F54([v19 initWithCNContact_], v34);
  v42[10] = v34[10];
  v42[11] = v34[11];
  v42[12] = v34[12];
  v43 = v35;
  v42[6] = v34[6];
  v42[7] = v34[7];
  v42[8] = v34[8];
  v42[9] = v34[9];
  v42[2] = v34[2];
  v42[3] = v34[3];
  v42[4] = v34[4];
  v42[5] = v34[5];
  v42[0] = v34[0];
  v42[1] = v34[1];
  v20 = sub_1AD4731D8(&v36, 5u, v42);
  v22 = v21;
  sub_1AD40D6CC(v34);
  if (v22 >> 60 == 15)
  {
    sub_1AD47A37C(&v36);
    sub_1AD4790F0(0xD000000000000028, 0x80000001ADBA06E0);
  }

  else
  {
    v23 = v39;
    v24 = v40;
    v25 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    swift_beginAccess();

    v26 = v30;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(&v8->isa + v25);
    *(&v8->isa + v25) = 0x8000000000000000;
    sub_1AD4EC838(v29, v26, 2, v23, v24, isUniquelyReferenced_nonNull_native);

    *(&v8->isa + v25) = v33;
    swift_endAccess();
    sub_1AD47A37C(&v36);
    sub_1AD4D711C(v20, v22);
    v28 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 5;
    sub_1AD474328(v28);
    sub_1AD422FB0(v20, v22);
  }
}

void sub_1AD476A9C(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v33 = a1;
  v32 = sub_1ADB05E30();
  v4 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v3;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Payment Method Selected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v13 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v14 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v15 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v16 = sub_1ADB05E00();
  v18 = v17;
  (*(v4 + 8))(v6, v32);
  *&v36 = v12;
  *(&v36 + 1) = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v18;
  v41 = 0;
  v19 = v33;
  v20 = v33;
  sub_1AD407338(v19, v35);
  memcpy(v42, v35, 0x148uLL);
  v21 = sub_1AD472808(&v36, 3u, v42);
  v23 = v22;
  sub_1AD40D830(v35);
  if (v23 >> 60 == 15)
  {
    sub_1AD47A37C(&v36);
    sub_1AD4790F0(0xD000000000000026, 0x80000001ADBA06B0);
  }

  else
  {
    v24 = v39;
    v25 = v40;
    v26 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    swift_beginAccess();

    v27 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(&v8->isa + v26);
    *(&v8->isa + v26) = 0x8000000000000000;
    sub_1AD4EC838(v30, v27, 3, v24, v25, isUniquelyReferenced_nonNull_native);

    *(&v8->isa + v26) = v34;
    swift_endAccess();
    sub_1AD47A37C(&v36);
    sub_1AD4D711C(v21, v23);
    v29 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 5;
    sub_1AD474328(v29);
    sub_1AD422FB0(v21, v23);
  }
}

void sub_1AD476E04(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v32 = a1;
  v4 = sub_1ADB05E30();
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v3;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Shipping Method Selected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v13 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v14 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v15 = *(&v8[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v16 = sub_1ADB05E00();
  v18 = v17;
  (*(v30 + 8))(v6, v31);
  *&v36 = v12;
  *(&v36 + 1) = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v18;
  v41 = 0;
  sub_1AD401B0C(v32, v34);
  v42[8] = v34[8];
  v42[9] = v34[9];
  v43[0] = v35[0];
  *(v43 + 11) = *(v35 + 11);
  v42[4] = v34[4];
  v42[5] = v34[5];
  v42[6] = v34[6];
  v42[7] = v34[7];
  v42[0] = v34[0];
  v42[1] = v34[1];
  v42[2] = v34[2];
  v42[3] = v34[3];
  v19 = sub_1AD4739C4(&v36, 6u, v42);
  v21 = v20;
  sub_1AD40DCA8(v34);
  if (v21 >> 60 == 15)
  {
    sub_1AD47A37C(&v36);
    sub_1AD4790F0(0xD000000000000027, 0x80000001ADBA0680);
  }

  else
  {
    v22 = v39;
    v23 = v40;
    v24 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    swift_beginAccess();

    v25 = v29;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(&v8->isa + v24);
    *(&v8->isa + v24) = 0x8000000000000000;
    sub_1AD4EC838(v28, v25, 4, v22, v23, isUniquelyReferenced_nonNull_native);

    *(&v8->isa + v24) = v33;
    swift_endAccess();
    sub_1AD47A37C(&v36);
    sub_1AD4D711C(v19, v21);
    v27 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 5;
    sub_1AD474328(v27);
    sub_1AD422FB0(v19, v21);
  }
}

void sub_1AD4771A4(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v31 = a3;
  v32 = a1;
  v4 = sub_1ADB05E30();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v8 = sub_1ADB05FA0();
  __swift_project_value_buffer(v8, qword_1EB59AA18);
  v9 = v3;
  v10 = sub_1ADB05F80();
  v11 = sub_1ADB06830();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 33685760;
    *(v12 + 4) = *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v10, v11, "Session %{public}hd: Payment Authorized", v12, 6u);
    MEMORY[0x1B26F9F20](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v13 = *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v14 = *(&v9[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
  v15 = *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
  v16 = *(&v9[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);

  sub_1ADB05E20();
  v17 = sub_1ADB05E00();
  v19 = v18;
  (*(v5 + 8))(v7, v4);
  v34[0] = v13;
  v34[1] = v14;
  v34[2] = v15;
  v34[3] = v16;
  v35 = v17;
  v36 = v19;
  v37 = 0;
  v20 = sub_1AD437948(v34, v32);
  if (v21 >> 60 == 15)
  {
    sub_1AD47A37C(v34);
    sub_1AD4790F0(0xD00000000000002ELL, 0x80000001ADBA0650);
  }

  else
  {
    v22 = v35;
    v23 = v36;
    v24 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
    v25 = v20;
    v26 = v21;
    swift_beginAccess();

    v27 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(&v9->isa + v24);
    *(&v9->isa + v24) = 0x8000000000000000;
    sub_1AD4EC838(v30, v27, 5, v22, v23, isUniquelyReferenced_nonNull_native);

    *(&v9->isa + v24) = v33;
    swift_endAccess();
    sub_1AD47A37C(v34);
    sub_1AD4D711C(v25, v26);
    v29 = *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
    *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 6;
    sub_1AD474328(v29);
    sub_1AD422FB0(v25, v26);
  }
}

void sub_1AD4774D8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v2;
  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06830();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33685760;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Processing getPaymentRequestResponse", v9, 6u);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v10 = sub_1AD437EFC();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_1AD43872C(a1, a2, *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_initiationType), *(&v6[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_initiationType));
    if (v14)
    {
      v41 = v14;
      v15 = sub_1AD437C90();
      if (v16)
      {
        *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentRequestReceived) = 1;
        v17 = (v6 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID);
        *v17 = v15;
        v17[1] = v16;

        v18 = (v6 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID);
        *v18 = v12;
        v18[1] = v13;

        v19 = [v41 APIType];
        v20 = v6 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestAPIType;
        *v20 = v19;
        v20[8] = 0;
        v21 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator);
        v22 = swift_allocObject();
        *(v22 + 16) = v6;
        aBlock[4] = sub_1AD47A374;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1AD471E08;
        aBlock[3] = &block_descriptor_82_0;
        v23 = _Block_copy(aBlock);
        v24 = v6;
        v25 = v21;

        [v25 fulfillRemotePaymentRequestPromise:v41 completion:v23];
        _Block_release(v23);
      }

      else
      {

        sub_1AD4790F0(0xD00000000000001FLL, 0x80000001ADBA0620);
      }
    }

    else
    {

      v26 = v6;
      v27 = sub_1ADB05F80();
      v28 = sub_1ADB06850();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 33685760;
        *(v29 + 4) = *(&v26->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

        _os_log_impl(&dword_1AD337000, v27, v28, "Session %{public}hd: Failed to decode payment request response", v29, 6u);
        MEMORY[0x1B26F9F20](v29, -1, -1);
      }

      else
      {

        v27 = v26;
      }

      v30 = sub_1AD4383D4();
      v31 = v26;
      v32 = sub_1ADB05F80();
      v33 = sub_1ADB06850();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 33686018;
        *(v34 + 4) = *(&v31->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

        *(v34 + 6) = 2080;
        if (v30)
        {
          v36 = MEMORY[0x1B26F66B0](v30, &type metadata for RemoteNetworkPaymentRequestErrorReason);
          v38 = v37;
        }

        else
        {
          v38 = 0xE300000000000000;
          v36 = 7104878;
        }

        v39 = sub_1AD3CA88C(v36, v38, aBlock);

        *(v34 + 8) = v39;
        _os_log_impl(&dword_1AD337000, v32, v33, "Session %{public}hd: Errors: %s", v34, 0x10u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1B26F9F20](v35, -1, -1);
        MEMORY[0x1B26F9F20](v34, -1, -1);
      }

      else
      {
      }

      sub_1AD4757F0(0, v30);

      v40 = *(&v31->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v31->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 8;
      sub_1AD474328(v40);
    }
  }

  else
  {
    sub_1AD4790F0(0xD00000000000001FLL, 0x80000001ADBA0600);
  }
}

void sub_1AD4779F4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v2;
  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06830();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33685760;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Processing merchantUpdateEvent", v9, 6u);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  v10 = sub_1AD4397AC();
  if (v10 == 6)
  {
    v11 = 0xD000000000000026;
    v12 = 0x80000001ADBA05D0;
LABEL_14:
    sub_1AD4790F0(v11, v12);
    return;
  }

  v13 = v10;
  v14 = sub_1AD438168();
  if (!v15)
  {
    v12 = 0x80000001ADBA0410;
    v11 = 0xD00000000000001ALL;
    goto LABEL_14;
  }

  if (v13 > 2u)
  {
    if (v13 == 3)
    {
      sub_1AD4785C8(a1, a2, v14, v15);
    }

    else
    {
      if (v13 != 4)
      {

        sub_1AD478F98();
        return;
      }

      sub_1AD4788F8(a1, a2, v14, v15);
    }
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      sub_1AD477F68(a1, a2, v14, v15);
    }

    else
    {
      sub_1AD478298(a1, a2, v14, v15);
    }
  }

  else
  {
    sub_1AD477C3C(a1, a2, v14, v15);
  }
}

void sub_1AD477C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v4;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Processing merchantSessionCreated", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = sub_1AD439EC4();
  if (!v12)
  {
    sub_1AD4790F0(0xD000000000000029, 0x80000001ADBA05A0);
    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v15 = *(&v8->isa + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_13;
  }

  v16 = sub_1AD425BEC(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_13:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](a3, a4);
    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v18 = *(v15 + 56) + 24 * v16;
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1AD426AD0(*v18, v19, *(v18 + 16));

  if (v21)
  {
    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v20, v19, v21);
  }

  else
  {
    v22 = v13;
    v20(v13);

    swift_beginAccess();

    sub_1AD50FB94(0, 0, 255, a3, a4);
    swift_endAccess();
    if (!(*(&v8->isa + v14))[2])
    {
      v23 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v23);
    }

    sub_1AD47A35C(v20, v19, 0);
  }
}

void sub_1AD477F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v4;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Processing paymentMethodSelected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = sub_1AD43B538();
  if (!v12)
  {
    sub_1AD4790F0(0xD000000000000031, 0x80000001ADBA0560);
    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v15 = *(&v8->isa + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = sub_1AD425BEC(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_15:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](a3, a4);
    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v18 = *(v15 + 56) + 24 * v16;
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1AD426AD0(*v18, v19, *(v18 + 16));

  if (v21 == 3)
  {
    v22 = v13;
    v20(v13);

    swift_beginAccess();

    sub_1AD50FB94(0, 0, 255, a3, a4);
    swift_endAccess();
    if (!(*(&v8->isa + v14))[2])
    {
      v23 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v23);
    }

    sub_1AD47A35C(v20, v19, 3u);
  }

  else
  {
    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v20, v19, v21);
  }
}

void sub_1AD478298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v4;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Processing couponCodeChanged", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = sub_1AD43C44C();
  if (!v12)
  {
    sub_1AD4790F0(0xD00000000000002DLL, 0x80000001ADBA0530);
    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v15 = *(&v8->isa + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = sub_1AD425BEC(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_15:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](a3, a4);
    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v18 = *(v15 + 56) + 24 * v16;
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1AD426AD0(*v18, v19, *(v18 + 16));

  if (v21 == 1)
  {
    v22 = v13;
    v20(v13);

    swift_beginAccess();

    sub_1AD50FB94(0, 0, 255, a3, a4);
    swift_endAccess();
    if (!(*(&v8->isa + v14))[2])
    {
      v23 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v23);
    }

    sub_1AD47A35C(v20, v19, 1u);
  }

  else
  {
    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v20, v19, v21);
  }
}

void sub_1AD4785C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v4;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Processing shippingContactSelected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = sub_1AD43D360();
  if (!v12)
  {
    sub_1AD4790F0(0xD000000000000033, 0x80000001ADBA04F0);
    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v15 = *(&v8->isa + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = sub_1AD425BEC(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_15:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](a3, a4);
    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v18 = *(v15 + 56) + 24 * v16;
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1AD426AD0(*v18, v19, *(v18 + 16));

  if (v21 == 2)
  {
    v22 = v13;
    v20(v13);

    swift_beginAccess();

    sub_1AD50FB94(0, 0, 255, a3, a4);
    swift_endAccess();
    if (!(*(&v8->isa + v14))[2])
    {
      v23 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v23);
    }

    sub_1AD47A35C(v20, v19, 2u);
  }

  else
  {
    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v20, v19, v21);
  }
}

void sub_1AD4788F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v7 = sub_1ADB05FA0();
  __swift_project_value_buffer(v7, qword_1EB59AA18);
  v8 = v4;
  v9 = sub_1ADB05F80();
  v10 = sub_1ADB06830();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 33685760;
    *(v11 + 4) = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v9, v10, "Session %{public}hd: Processing shippingMethodSelected", v11, 6u);
    MEMORY[0x1B26F9F20](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  v12 = sub_1AD43E248();
  if (!v12)
  {
    sub_1AD4790F0(0xD000000000000032, 0x80000001ADBA04B0);
    return;
  }

  v13 = v12;
  v14 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v15 = *(&v8->isa + v14);
  if (!*(v15 + 16))
  {
    goto LABEL_15;
  }

  v16 = sub_1AD425BEC(a3, a4);
  if ((v17 & 1) == 0)
  {

LABEL_15:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](a3, a4);
    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v18 = *(v15 + 56) + 24 * v16;
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = *(v18 + 16);
  sub_1AD426AD0(*v18, v19, *(v18 + 16));

  if (v21 == 4)
  {
    v22 = v13;
    v20(v13);

    swift_beginAccess();

    sub_1AD50FB94(0, 0, 255, a3, a4);
    swift_endAccess();
    if (!(*(&v8->isa + v14))[2])
    {
      v23 = *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v8->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v23);
    }

    sub_1AD47A35C(v20, v19, 4u);
  }

  else
  {
    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v20, v19, v21);
  }
}

void sub_1AD478C28()
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v1 = sub_1ADB05FA0();
  __swift_project_value_buffer(v1, qword_1EB59AA18);
  v2 = v0;
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06830();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 33685760;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v3, v4, "Session %{public}hd: Processing paymentResultEvent", v5, 6u);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  v6 = sub_1AD438168();
  if (!v7)
  {
    v22 = 0x80000001ADBA0410;
    v23 = 0xD00000000000001ALL;
LABEL_16:
    sub_1AD4790F0(v23, v22);
    return;
  }

  v8 = v6;
  v9 = v7;
  v10 = sub_1AD43F00C();
  if (!v10)
  {

    v23 = 0xD000000000000025;
    v22 = 0x80000001ADBA0430;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  swift_beginAccess();
  v13 = *(&v2->isa + v12);
  if (!*(v13 + 16))
  {
LABEL_18:
    sub_1ADB06C10();

    MEMORY[0x1B26F6530](v8, v9);

    sub_1AD4790F0(0xD00000000000002ALL, 0x80000001ADBA0460);

    return;
  }

  v14 = sub_1AD425BEC(v8, v9);
  if ((v15 & 1) == 0)
  {

    goto LABEL_18;
  }

  v16 = *(v13 + 56) + 24 * v14;
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  sub_1AD426AD0(*v16, v17, *(v16 + 16));

  if (v19 == 5)
  {
    v20 = v11;
    v18(v11);

    swift_beginAccess();
    sub_1AD50FB94(0, 0, 255, v8, v9);
    swift_endAccess();
    if (!(*(&v2->isa + v12))[2])
    {
      v21 = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
      *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 4;
      sub_1AD474328(v21);
    }

    sub_1AD47A35C(v18, v17, 5u);
  }

  else
  {

    sub_1AD4790F0(0xD00000000000001ELL, 0x80000001ADBA0490);
    sub_1AD47A35C(v18, v17, v19);
  }
}

void sub_1AD478F98()
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v1 = sub_1ADB05FA0();
  __swift_project_value_buffer(v1, qword_1EB59AA18);
  v2 = v0;
  v3 = sub_1ADB05F80();
  v4 = sub_1ADB06830();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 33685760;
    *(v5 + 4) = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v3, v4, "Session %{public}hd: Processing merchantCancelledPayment", v5, 6u);
    MEMORY[0x1B26F9F20](v5, -1, -1);
  }

  else
  {

    v3 = v2;
  }

  if ((*(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported) & 1) == 0)
  {
    sub_1AD4757F0(0, &unk_1F2261800);
    sub_1AD47A2E0(&unk_1F2261820);
  }

  v6 = *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
  *(&v2->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 8;
  sub_1AD474328(v6);
}

void sub_1AD4790F0(uint64_t a1, unint64_t a2)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v2;

  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06850();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 33686018;
    *(v9 + 4) = *&v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier];

    *(v9 + 6) = 2082;
    *(v9 + 8) = sub_1AD3CA88C(a1, a2, &v12);
    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: Fatal Error: %{public}s", v9, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B26F9F20](v10, -1, -1);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {
  }

  v11 = v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state];
  v6[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state] = 8;
  sub_1AD474328(v11);
}

void sub_1AD47928C(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v3 = sub_1ADB05FA0();
    __swift_project_value_buffer(v3, qword_1EB59AA18);
    v4 = a2;
    v5 = sub_1ADB05F80();
    v6 = sub_1ADB06830();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 33685760;
      *(v7 + 4) = *(&v4->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v5, v6, "Session %{public}hd: Payment sheet presented successfully", v7, 6u);
      MEMORY[0x1B26F9F20](v7, -1, -1);
    }

    else
    {

      v5 = v4;
    }

    sub_1AD4757F0(1, 0);
    v13 = 4;
  }

  else
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v8 = sub_1ADB05FA0();
    __swift_project_value_buffer(v8, qword_1EB59AA18);
    v9 = a2;
    v10 = sub_1ADB05F80();
    v11 = sub_1ADB06850();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 33685760;
      *(v12 + 4) = *(&v9->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

      _os_log_impl(&dword_1AD337000, v10, v11, "Session %{public}hd: Payment sheet failed to present", v12, 6u);
      MEMORY[0x1B26F9F20](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    sub_1AD4757F0(0, &unk_1F2261838);
    sub_1AD47A2E0(&unk_1F2261858);
    v13 = 8;
  }

  v14 = *(a2 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
  *(a2 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = v13;
  sub_1AD474328(v14);
}

void sub_1AD4794D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1ADB05D20();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((a1 & 1) == 0)
    {
LABEL_5:
      sub_1AD4790F0(0xD000000000000042, 0x80000001ADBA08D0);

      return;
    }

    sub_1AD3D0E9C(a2, v11, &qword_1EB59AE30);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1AD3D0E3C(v11, &qword_1EB59AE30);
      goto LABEL_5;
    }

    (*(v13 + 32))(v15, v11, v12);
    if (a4)
    {
      sub_1AD475FFC(v15, a4, a5);

      (*(v13 + 8))(v15, v12);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v18 = sub_1ADB05FA0();
    __swift_project_value_buffer(v18, qword_1EB59AA18);
    v19 = sub_1ADB05F80();
    v20 = sub_1ADB06850();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1AD337000, v19, v20, "Session: didRequestMerchantSessionUpdate: Session deallocated", v21, 2u);
      MEMORY[0x1B26F9F20](v21, -1, -1);
    }
  }
}

uint64_t sub_1AD4797A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1ADB05D00();
    v10 = sub_1ADB05D20();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1ADB05D20();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v9(a2, v8);

  return sub_1AD3D0E3C(v8, &qword_1EB59AE30);
}

void sub_1AD479DC4(void *a1)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v3 = sub_1ADB05FA0();
  __swift_project_value_buffer(v3, qword_1EB59AA18);
  v4 = v1;
  v5 = sub_1ADB05F80();
  v6 = sub_1ADB06830();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 33685760;
    *(v7 + 4) = *(&v4->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v5, v6, "Session %{public}hd: Received paymentAuthorizationCoordinatorDidFinish", v7, 6u);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    v11[4] = sub_1AD47A354;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1AD471DC4;
    v11[3] = &block_descriptor_74_0;
    v9 = _Block_copy(v11);
    v10 = v4;

    [a1 dismissWithCompletion_];
    _Block_release(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AD479F94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented;
  if (*(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented) == 1)
  {
    sub_1AD475D60();
    *(a1 + v2) = 0;
  }

  else if ((*(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported) & 1) == 0)
  {
    sub_1AD4757F0(0, &unk_1F2261870);
    sub_1AD47A2E0(&unk_1F2261890);
  }

  *(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authCoordinatorPresented) = 0;
  v3 = *(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state);
  *(a1 + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state) = 8;
  sub_1AD474328(v3);
}

uint64_t sub_1AD47A108(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AD47A150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1AD47A1A8()
{
  result = qword_1EB59AD70;
  if (!qword_1EB59AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59AD70);
  }

  return result;
}

uint64_t sub_1AD47A1FC(uint64_t result)
{
  if (result)
  {
    __buf[3] = v1;
    __buf[4] = v2;
    v3 = result;
    __buf[0] = 0;
    arc4random_buf(__buf, 8uLL);
    v4 = v3;
    v5 = LOWORD(__buf[0]) * v3;
    if (v3 > (LOWORD(__buf[0]) * v3) && -v3 % v3 > (LOWORD(__buf[0]) * v3))
    {
      v6 = (-v3 % v3);
      do
      {
        __buf[0] = 0;
        arc4random_buf(__buf, 8uLL);
        v5 = LOWORD(__buf[0]) * v4;
      }

      while (v6 > (LOWORD(__buf[0]) * v4));
    }

    return HIWORD(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AD47A294()
{
  v0 = sub_1ADB06D60();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AD47A35C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1AD47A42C(uint64_t a1)
{
  v2 = type metadata accessor for RemoteNetworkPaymentCodable.Request.UserUpdate.ReadyForMerchantValidation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AD47A488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteNetworkPaymentCodable.Request.UserUpdate.ReadyForMerchantValidation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AD47A4EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1AD47A500(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AD47A500(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u)
  {
  }

  return result;
}

uint64_t sub_1AD47A518(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u)
  {
  }

  return result;
}

uint64_t sub_1AD47A530(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1AD47A584(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v57 = a5;
  v59 = a2;
  v9 = sub_1ADB05D20();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - v13;
  v15 = &v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentTopicID];
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = &v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_conversationID];
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = &v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestAPIType];
  *v17 = 0;
  v17[8] = 1;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentRequestReceived] = 0;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetPresented] = 0;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_paymentSheetStatusReported] = 0;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestPromiseRejected] = 0;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authCoordinatorPresented] = 0;
  v5[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_walletUninstallDetected] = 0;
  v18 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_pendingUpdateEvents;
  v19 = v5;
  *&v5[v18] = sub_1AD426628(MEMORY[0x1E69E7CC0]);
  v20 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier;
  *&v19[v20] = sub_1AD47A1FC(0x8000);
  v21 = OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_inAppPaymentService;
  *&v19[v21] = [objc_allocWithZone(PKInAppPaymentService) init];
  *&v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_remoteIdentifier];
  v24 = *(a1 + 16);
  v23 = *(a1 + 32);
  v25 = *a1;
  *(v22 + 6) = *(a1 + 48);
  *(v22 + 1) = v24;
  *(v22 + 2) = v23;
  *v22 = v25;
  v26 = &v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_initiationType];
  *v26 = v59;
  v26[1] = a3;
  v27 = v57;
  *&v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_originatingProcess] = v57;
  v56 = v10;
  v28 = *(v10 + 16);
  v58 = a4;
  v59 = v9;
  v28(v14, a4, v9);
  v54 = v20;
  LODWORD(v20) = *&v19[v20];
  objc_allocWithZone(type metadata accessor for RemoteNetworkPaymentWebsocketURLSession());
  sub_1AD47AD44(a1, v61);
  sub_1AD47AD44(a1, v61);

  v29 = v27;
  v30 = sub_1AD4D63A0(v14, a1, v20);
  v31 = &v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_websocket];
  *v31 = v30;
  v31[1] = &off_1F2270470;
  result = [objc_allocWithZone(PKPaymentAuthorizationCoordinator) initWithRemotePaymentRequestPromised];
  if (result)
  {
    v33 = result;

    sub_1AD47ADA0(a1);
    *&v19[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator] = v33;
    if (qword_1EB598150 != -1)
    {
      swift_once();
    }

    v34 = sub_1ADB05FA0();
    __swift_project_value_buffer(v34, qword_1EB59AA18);
    v35 = v55;
    v36 = v59;
    v28(v55, v58, v59);
    v37 = v19;
    v38 = sub_1ADB05F80();
    v39 = sub_1ADB06860();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61[0] = v42;
      *v41 = 33686274;
      *(v41 + 4) = *&v19[v54];

      *(v41 + 6) = 2080;
      v43 = *v22;
      v44 = *(v22 + 1);

      v45 = sub_1AD3CA88C(v43, v44, v61);

      *(v41 + 8) = v45;
      *(v41 + 16) = 2080;
      sub_1AD47ADF4();
      v46 = sub_1ADB06EF0();
      v48 = v47;
      v49 = *(v56 + 8);
      v49(v40, v59);
      v50 = sub_1AD3CA88C(v46, v48, v61);

      *(v41 + 18) = v50;
      _os_log_impl(&dword_1AD337000, v38, v39, "Session %{public}hd: Created with remote identifier: %s, Websocket URL %s", v41, 0x1Au);
      swift_arrayDestroy();
      MEMORY[0x1B26F9F20](v42, -1, -1);
      v36 = v59;
      MEMORY[0x1B26F9F20](v41, -1, -1);
    }

    else
    {

      v49 = *(v56 + 8);
      v49(v35, v36);
    }

    v37[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_state] = 0;
    v51 = type metadata accessor for RemoteNetworkPaymentSession();
    v60.receiver = v37;
    v60.super_class = v51;
    v52 = objc_msgSendSuper2(&v60, sel_init);
    [*&v52[OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_authorizationCoordinator] setDelegate_];
    v49(v58, v36);
    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AD47AAE4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB598150 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AA18);
  v6 = v2;
  v7 = sub_1ADB05F80();
  v8 = sub_1ADB06830();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 33685760;
    *(v9 + 4) = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_sessionIdentifier);

    _os_log_impl(&dword_1AD337000, v7, v8, "Session %{public}hd: didRequestMerchantSessionUpdate: Fetching validation URL", v9, 6u);
    MEMORY[0x1B26F9F20](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  if (*(&v6[1].isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestAPIType))
  {
    sub_1AD4790F0(0xD000000000000040, 0x80000001ADBA0860);
  }

  else
  {
    v10 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_inAppPaymentService);
    if (v10)
    {
      v11 = *(&v6->isa + OBJC_IVAR____TtC11PassKitCore27RemoteNetworkPaymentSession_requestAPIType);
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = a1;
      v13[4] = a2;
      v15[4] = sub_1AD47AD30;
      v15[5] = v13;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_1AD4797A8;
      v15[3] = &block_descriptor_111_0;
      v14 = _Block_copy(v15);
      sub_1AD3C5F14(a1);

      [v10 paymentServicesMerchantURLForAPIType:v11 completion:v14];
      _Block_release(v14);
    }
  }
}

unint64_t sub_1AD47ADF4()
{
  result = qword_1EB59AE38;
  if (!qword_1EB59AE38)
  {
    sub_1ADB05D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB59AE38);
  }

  return result;
}

__n128 ProvisioningStepAuthorization.__allocating_init(context:credential:sharedState:)(uint64_t a1, __n128 *a2, uint64_t a3)
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
  *(v6 + 64) = 0;
  return result;
}

uint64_t ProvisioningStepAuthorization.init(context:credential:sharedState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  *(v3 + 16) = a1;
  *(v3 + 24) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  *(v3 + 56) = a3;
  *(v3 + 64) = 0;
  return v3;
}

uint64_t ProvisioningStepAuthorization.deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return v0;
}

uint64_t ProvisioningStepAuthorization.__deallocating_deinit()
{

  sub_1AD3CC2E0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

__n128 sub_1AD47AF90@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ProvisioningStepAuthorization();
  v8 = swift_allocObject();
  v9 = a2[1].n128_u64[0];
  v10 = a2[1].n128_u8[8];
  *(v8 + 16) = a1;
  result = *a2;
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  *(v8 + 56) = a3;
  *(v8 + 64) = 0;
  *a4 = v8;
  return result;
}

uint64_t sub_1AD47AFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  [*(v5 + 64) invalidate];
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;

  return a3();
}

uint64_t ProvisioningStepAuthorization.terminateOperation(success:output:completion:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  [*(v3 + 64) invalidate];
  v5 = *(v3 + 64);
  *(v3 + 64) = 0;

  return a3();
}

uint64_t sub_1AD47B0F4(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v6 = *(v2 + 16);
  swift_beginAccess();
  if (*(v6 + 64) == 1)
  {
    return 0;
  }

  result = 0;
  v8 = *(v6 + 33);
  if (v8 != 49152 && (v8 & 0xC000) != 0x8000)
  {
    if ([a2 shouldGenerateFidoKey] & 1) != 0 || (objc_msgSend(a2, sel_shouldSignFidoChallenge))
    {
      return 1;
    }

    result = 0;
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          v9 = [v4 metadataProviders];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE80);
          v10 = sub_1ADB06610();

          if (v10 >> 62)
          {
            result = sub_1ADB06D00();
            if (result)
            {
              goto LABEL_14;
            }
          }

          else
          {
            result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
LABEL_14:
              if ((v10 & 0xC000000000000001) != 0)
              {
                v11 = MEMORY[0x1B26F6CC0](0, v10);
              }

              else
              {
                if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v11 = *(v10 + 32);
                swift_unknownObjectRetain();
              }

              v12 = [v11 provisioningTarget];
              swift_unknownObjectRelease();
              v13 = [v12 relyingPartyIdentifier];
              if (v13)
              {
                v14 = v13;

                return 1;
              }

              v16 = [v12 accountHash];
              if (v16)
              {

                goto LABEL_24;
              }

              return 0;
            }
          }

          return 0;
        }
      }

      else
      {
        result = [v4 remoteCredential];
        if (result)
        {
          v15 = result;
          v12 = [result fidoProfile];

          if (v12)
          {
LABEL_24:

            return 1;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

void sub_1AD47B33C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, void (*a7)(void))
{
  if (a1)
  {
    v12 = a2 == 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1ADB05FA0();
  __swift_project_value_buffer(v14, qword_1EB59AB68);

  v15 = sub_1ADB05F80();
  v16 = sub_1ADB06860();

  if (os_log_type_enabled(v15, v16))
  {
    v31 = a5;
    v17 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1AD3CA88C(a3, a4, &v33);
    *(v18 + 12) = 2080;
    if (v13)
    {
      v20 = 7562585;
    }

    else
    {
      v20 = 28494;
    }

    if (v13)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    v22 = sub_1AD3CA88C(v20, v21, &v33);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1AD337000, v15, v16, "[%s] ProvisioningStepAuthorization: authenticated user with success: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26F9F20](v19, -1, -1);
    v23 = v18;
    a7 = v17;
    MEMORY[0x1B26F9F20](v23, -1, -1);
  }

  if (v13)
  {
    v24 = [a5 externalizedContext];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1ADB05D70();
      v28 = v27;

      v29 = *(a6 + 56);
      sub_1AD3C7528(v26, v28);
      v30 = sub_1ADB05D50();
      sub_1AD3C757C(v26, v28);
    }

    else
    {
      v30 = 0;
      v26 = 0;
      v29 = *(a6 + 56);
      v28 = 0xF000000000000000;
    }

    [v29 setExternalizedAuth_];

    (a7)(0, 0);

    sub_1AD422FB0(v26, v28);
  }

  else
  {
    v32 = [objc_opt_self() userCancelError];
    a7();
  }
}

uint64_t sub_1AD47B644(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1ADB06280();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1AD47B6F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v11 = *(a2 + 56);

  v12 = [v11 sid];
  v71 = sub_1ADB063B0();
  v14 = v13;

  v15 = *(a2 + 16);
  swift_beginAccess();
  if ([*(v15 + 16) hasExternalizedAuth])
  {
    v69 = a4;
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1ADB05FA0();
    __swift_project_value_buffer(v16, qword_1EB59AB68);

    v17 = sub_1ADB05F80();
    v18 = sub_1ADB06860();

    v67 = a1;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v66 = v10;
      v20 = a5;
      v21 = v14;
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v19 = 136315138;
      *(v19 + 4) = sub_1AD3CA88C(v71, v21, &aBlock);
      _os_log_impl(&dword_1AD337000, v17, v18, "[%s] ProvisioningStepAuthorization: Using externalized auth from provisioning controller", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v23 = v22;
      v14 = v21;
      a5 = v20;
      v10 = v66;
      MEMORY[0x1B26F9F20](v23, -1, -1);
      MEMORY[0x1B26F9F20](v19, -1, -1);
    }

    v24 = [*(v15 + 16) retrieveExternalizedAuth];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1ADB05D70();
      v28 = v27;

      v29 = sub_1ADB05D50();
      sub_1AD3C757C(v26, v28);
    }

    else
    {
      v29 = 0;
    }

    a1 = v67;
    a4 = v69;
    [v11 setExternalizedAuth_];
  }

  v30 = *(a2 + 32);
  v31 = *(a2 + 40);
  v32 = *(a2 + 48);
  aBlock = *(a2 + 24);
  v73 = v30;
  v74 = v31;
  LOBYTE(v75) = v32;
  sub_1AD3DF24C(aBlock, v30, v31, v32);
  v33 = sub_1AD47B0F4(&aBlock, a1);
  sub_1AD3CC2E0(aBlock, v73, v74, v75);
  if ((v33 & 1) == 0)
  {
    goto LABEL_13;
  }

  v34 = [v11 externalizedAuth];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1ADB05D70();
    v38 = v37;

    sub_1AD3C757C(v36, v38);
LABEL_13:

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(a3 + 24);
      ObjectType = swift_getObjectType();
      (*(v39 + 8))(0, 0, a4, a5, ObjectType, v39);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v68 = v14;
  v70 = [objc_allocWithZone(MEMORY[0x1E696EE50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ADB81FB0;
  *(inited + 32) = 2;
  v42 = PKPassKitBundle();
  if (v42)
  {
    v43 = v42;
    v44 = sub_1ADB06370();
    v45 = sub_1ADB06370();
    v46 = sub_1ADB06370();
    v47 = [v43 localizedStringForKey:v44 value:v45 table:v46];

    v48 = sub_1ADB063B0();
    v50 = v49;

    *(inited + 40) = v48;
    *(inited + 48) = v50;
    *(inited + 56) = 1021;
    v51 = PKPassKitBundle();
    if (v51)
    {
      v52 = v51;
      v53 = sub_1ADB06370();
      v54 = sub_1ADB06370();
      v55 = sub_1ADB06370();
      v56 = [v52 localizedStringForKey:v53 value:v54 table:v55];

      v57 = sub_1ADB063B0();
      v59 = v58;

      *(inited + 64) = v57;
      *(inited + 72) = v59;
      v60 = sub_1AD426500(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE50);
      swift_arrayDestroy();
      sub_1AD41C254(v60);

      v61 = sub_1ADB06260();

      v62 = swift_allocObject();
      v62[2] = v71;
      v62[3] = v68;
      v62[4] = v70;
      v62[5] = a2;
      v62[6] = sub_1AD42F778;
      v62[7] = v10;
      v76 = sub_1AD47BDDC;
      v77 = v62;
      aBlock = MEMORY[0x1E69E9820];
      v73 = 1107296256;
      v74 = sub_1AD47B644;
      v75 = &block_descriptor_20;
      v63 = _Block_copy(&aBlock);
      v64 = v70;

      [v64 evaluatePolicy:2 options:v61 reply:v63];
      _Block_release(v63);

      v65 = *(a2 + 64);
      *(a2 + 64) = v64;

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProvisioningSEStorageManager.__allocating_init(webService:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____PKProvisioningSEStorageManager_secureElement;
  *&v3[v4] = [objc_allocWithZone(PKSecureElement) init];
  *&v3[OBJC_IVAR____PKProvisioningSEStorageManager_webService] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id ProvisioningSEStorageManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProvisioningSEStorageManager.init()()
{
  if (PKRunningInPassd())
  {

    return [v0 initWithWebService_];
  }

  else
  {
    v2 = [objc_opt_self() sharedService];
    v3 = [v0 initWithWebService_];

    return v3;
  }
}

id ProvisioningSEStorageManager.init(webService:)(uint64_t a1)
{
  v3 = OBJC_IVAR____PKProvisioningSEStorageManager_secureElement;
  *&v1[v3] = [objc_allocWithZone(PKSecureElement) init];
  *&v1[OBJC_IVAR____PKProvisioningSEStorageManager_webService] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ProvisioningSEStorageManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProvisioningSEStorageManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningSEStorageManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AD47C24C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    sub_1ADB05E30();
    v7 = sub_1ADB06600();
  }

  if (a3)
  {
    v8 = sub_1ADB05CB0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2 & 1);
}

uint64_t ProvisioningSEStorageManager.delete(reservation:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  sub_1AD3C5F14(a2);

  sub_1AD486660(v3, a2, a3, a1);

  return sub_1AD3C5FB8(a2);
}

uint64_t sub_1AD47C368(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v15 - v10;
  if (a1)
  {
    v12 = sub_1ADB06720();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a4;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = a3;
    v14 = a1;

    sub_1AD3C5F14(a2);
    sub_1AD457038(0, 0, v11, &unk_1ADB82680, v13);
  }

  else if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1AD47C4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1ADB05E30();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD47C580, 0, 0);
}

uint64_t sub_1AD47C580()
{
  v31 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 80) = v2;
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 128) = v6;
    *(v0 + 88) = *(v4 + 56);
    *(v0 + 96) = v5;
    *(v0 + 104) = 0;
    v5(*(v0 + 72), v1 + ((v6 + 32) & ~v6), v3);
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 48);
    v11 = sub_1ADB05FA0();
    __swift_project_value_buffer(v11, qword_1EB59AB68);
    v7(v8, v9, v10);
    v12 = sub_1ADB05F80();
    v13 = sub_1ADB06860();
    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    if (v14)
    {
      v18 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v18 = 136315138;
      sub_1AD487DE0();
      v19 = sub_1ADB06EF0();
      v21 = v20;
      v22 = *(v16 + 8);
      v22(v15, v17);
      v23 = sub_1AD3CA88C(v19, v21, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1AD337000, v12, v13, "SEStorage: Deleting reservation %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1B26F9F20](v29, -1, -1);
      MEMORY[0x1B26F9F20](v18, -1, -1);
    }

    else
    {

      v22 = *(v16 + 8);
      v22(v15, v17);
    }

    *(v0 + 112) = v22;
    v27 = swift_task_alloc();
    *(v0 + 120) = v27;
    *v27 = v0;
    v27[1] = sub_1AD47C878;
    v28 = *(v0 + 72);

    return MEMORY[0x1EEE32D80](v28);
  }

  else
  {
    v24 = *(v0 + 32);
    if (v24)
    {
      v24();
    }

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1AD47C878()
{

  if (v0)
  {

    v1 = sub_1AD4885F8;
  }

  else
  {
    v1 = sub_1AD47C990;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1AD47C990()
{
  v30 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 104) + 1;
  v3 = (*(v0 + 112))(*(v0 + 72), *(v0 + 48));
  if (v2 == v1)
  {
    v4 = *(v0 + 32);
    if (v4)
    {
      v4(v3);
    }

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 104) + 1;
    *(v0 + 104) = v8;
    v7(*(v0 + 72), *(v0 + 16) + ((*(v0 + 128) + 32) & ~*(v0 + 128)) + *(v0 + 88) * v8, *(v0 + 48));
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = sub_1ADB05FA0();
    __swift_project_value_buffer(v13, qword_1EB59AB68);
    v9(v10, v11, v12);
    v14 = sub_1ADB05F80();
    v15 = sub_1ADB06860();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 56);
    v17 = *(v0 + 64);
    v19 = *(v0 + 48);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v20 = 136315138;
      sub_1AD487DE0();
      v21 = sub_1ADB06EF0();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v17, v19);
      v25 = sub_1AD3CA88C(v21, v23, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1AD337000, v14, v15, "SEStorage: Deleting reservation %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1B26F9F20](v28, -1, -1);
      MEMORY[0x1B26F9F20](v20, -1, -1);
    }

    else
    {

      v24 = *(v18 + 8);
      v24(v17, v19);
    }

    *(v0 + 112) = v24;
    v26 = swift_task_alloc();
    *(v0 + 120) = v26;
    *v26 = v0;
    v26[1] = sub_1AD47C878;
    v27 = *(v0 + 72);

    return MEMORY[0x1EEE32D80](v27);
  }
}

uint64_t sub_1AD47CD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v5 = sub_1ADB05E30();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ADB05DE0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v72 = v13[6];
  *(a3 + v72) = 0;
  v77 = v13[7];
  *(a3 + v77) = 0;
  v14 = v13[8];
  sub_1ADB05DD0();
  sub_1ADB05D90();
  v16 = v15;
  v17 = *(v10 + 8);
  v75 = v12;
  v76 = v9;
  v18 = v9;
  v19 = a3;
  v20 = v82;
  v74 = v17;
  v17(v12, v18);
  *(v19 + v14) = v16;
  v21 = (v19 + v13[9]);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v19 + v13[10]);
  *v22 = 0;
  v22[1] = 0;
  v78 = v14;
  v79 = v22;
  v23 = (v19 + v13[11]);
  *v23 = 0;
  v23[1] = 0;
  v80 = v23;
  v81 = v13[12];
  *(v19 + v81) = 0;
  (*(v6 + 16))(v19, a1, v5);
  if (!v20)
  {
    sub_1ADB05E20();
    v36 = sub_1ADB05E00();
    v37 = v5;
    v39 = v38;
    v40 = *(v6 + 8);
    v40(a1, v37);
    result = (v40)(v8, v37);
    v42 = (v19 + v13[5]);
    *v42 = v36;
    v42[1] = v39;
    return result;
  }

  v73 = v21;
  if (*(v20 + 16) && (v24 = sub_1AD425BEC(0x65644970756F7267, 0xEF7265696669746ELL), (v25 & 1) != 0) && (sub_1AD3C94C4(*(v20 + 56) + 32 * v24, v85), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v5;
    v27 = v83;
    v28 = v84;
  }

  else
  {
    sub_1ADB05E20();
    v27 = sub_1ADB05E00();
    v29 = v5;
    v28 = v30;
    v31 = v8;
    v26 = v29;
    (*(v6 + 8))(v31, v29);
  }

  v32 = (v19 + v13[5]);
  *v32 = v27;
  v32[1] = v28;
  v33 = *(v20 + 16);
  if (v33)
  {
    v34 = sub_1AD425BEC(0x696D6974704F7369, 0xEC00000063697473);
    if ((v35 & 1) != 0 && (sub_1AD3C94C4(*(v20 + 56) + 32 * v34, v85), swift_dynamicCast()))
    {
      LOBYTE(v33) = v83;
    }

    else
    {
      LOBYTE(v33) = 0;
    }
  }

  *(v19 + v77) = v33;
  if (*(v20 + 16))
  {
    v43 = sub_1AD425BEC(0x696D6974704F7369, 0xEC00000063697473);
    if (v44)
    {
      sub_1AD3C94C4(*(v20 + 56) + 32 * v43, v85);
      if (swift_dynamicCast())
      {
        if (v83 == 250)
        {
          v45 = 2;
        }

        else
        {
          v45 = v83 == 500;
        }

        *(v19 + v72) = v45;
      }
    }
  }

  if (*(v20 + 16) && (v46 = sub_1AD425BEC(0x4164657461657263, 0xE900000000000074), (v47 & 1) != 0) && (sub_1AD3C94C4(*(v20 + 56) + 32 * v46, v85), swift_dynamicCast()))
  {
    v48 = v83;
  }

  else
  {
    v49 = v75;
    sub_1ADB05DD0();
    sub_1ADB05D90();
    v48 = v50;
    v74(v49, v76);
  }

  *(v19 + v78) = v48;
  v51 = *(v20 + 16);
  if (!v51)
  {
    goto LABEL_30;
  }

  v52 = sub_1AD425BEC(0xD000000000000010, 0x80000001ADBA0A60);
  if ((v53 & 1) == 0)
  {
    v51 = 0;
LABEL_30:
    v55 = 0;
    goto LABEL_31;
  }

  sub_1AD3C94C4(*(v20 + 56) + 32 * v52, v85);
  v54 = swift_dynamicCast();
  v51 = v83;
  v55 = v84;
  if (!v54)
  {
    v51 = 0;
    v55 = 0;
  }

LABEL_31:
  v56 = v73;
  *v73 = v51;
  v56[1] = v55;
  v57 = *(v20 + 16);
  if (!v57)
  {
LABEL_36:
    v61 = 0;
    goto LABEL_37;
  }

  v58 = sub_1AD425BEC(0xD000000000000012, 0x80000001ADBA0A80);
  if ((v59 & 1) == 0)
  {
    v57 = 0;
    goto LABEL_36;
  }

  sub_1AD3C94C4(*(v20 + 56) + 32 * v58, v85);
  v60 = swift_dynamicCast();
  v57 = v83;
  v61 = v84;
  if (!v60)
  {
    v57 = 0;
    v61 = 0;
  }

LABEL_37:
  v62 = v79;
  *v79 = v57;
  v62[1] = v61;
  v63 = *(v20 + 16);
  if (v63)
  {
    v64 = sub_1AD425BEC(0xD000000000000014, 0x80000001ADBA0AA0);
    if (v65)
    {
      sub_1AD3C94C4(*(v20 + 56) + 32 * v64, v85);
      v66 = swift_dynamicCast();
      v63 = v83;
      v67 = v84;
      if (!v66)
      {
        v63 = 0;
        v67 = 0;
      }

      goto LABEL_43;
    }

    v63 = 0;
  }

  v67 = 0;
LABEL_43:
  v68 = v80;
  *v80 = v63;
  v68[1] = v67;
  if (*(v20 + 16) && (v69 = sub_1AD425BEC(0xD000000000000015, 0x80000001ADBA0AC0), (v70 & 1) != 0))
  {
    sub_1AD3C94C4(*(v20 + 56) + 32 * v69, v85);
    (*(v6 + 8))(a1, v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
    result = swift_dynamicCast();
    v71 = v83;
    if (!result)
    {
      v71 = 0;
    }
  }

  else
  {

    result = (*(v6 + 8))(a1, v26);
    v71 = 0;
  }

  *(v19 + v81) = v71;
  return result;
}

uint64_t sub_1AD47D494()
{
  v1 = v0;
  v2 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  v6 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6158];
  *&v34 = v4;
  *(&v34 + 1) = v5;
  sub_1AD41C9D0(&v34, v33);

  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v7;
  sub_1AD4EC028(v33, 0x65644970756F7267, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
  v9 = v36;
  v10 = *(v1 + v2[7]);
  v35 = MEMORY[0x1E69E6370];
  LOBYTE(v34) = v10;
  sub_1AD41C9D0(&v34, v33);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v9;
  sub_1AD4EC028(v33, 0x696D6974704F7369, 0xEC00000063697473, v11);
  v12 = v36;
  v13 = *(v1 + v2[8]);
  v35 = MEMORY[0x1E69E63B0];
  *&v34 = v13;
  sub_1AD41C9D0(&v34, v33);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1AD4EC028(v33, 0x4164657461657263, 0xE900000000000074, v14);
  v36 = v12;
  v15 = (v1 + v2[9]);
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v35 = v6;
    *&v34 = v17;
    *(&v34 + 1) = v16;
    sub_1AD41C9D0(&v34, v33);

    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC028(v33, 0xD000000000000010, 0x80000001ADBA0A60, v18);
    v36 = v12;
  }

  else
  {
    sub_1AD4336B4(0xD000000000000010, 0x80000001ADBA0A60, &v34);
    sub_1AD3D0E3C(&v34, &unk_1EB59AE90);
  }

  v19 = (v1 + v2[10]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v35 = v6;
    *&v34 = v21;
    *(&v34 + 1) = v20;
    sub_1AD41C9D0(&v34, v33);

    v22 = v36;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC028(v33, 0xD000000000000012, 0x80000001ADBA0A80, v23);
    v36 = v22;
  }

  else
  {
    sub_1AD4336B4(0xD000000000000012, 0x80000001ADBA0A80, &v34);
    sub_1AD3D0E3C(&v34, &unk_1EB59AE90);
  }

  v24 = (v1 + v2[11]);
  v25 = v24[1];
  if (v25)
  {
    v26 = *v24;
    v35 = v6;
    *&v34 = v26;
    *(&v34 + 1) = v25;
    sub_1AD41C9D0(&v34, v33);

    v27 = v36;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC028(v33, 0xD000000000000014, 0x80000001ADBA0AA0, v28);
    v36 = v27;
  }

  else
  {
    sub_1AD4336B4(0xD000000000000014, 0x80000001ADBA0AA0, &v34);
    sub_1AD3D0E3C(&v34, &unk_1EB59AE90);
  }

  v29 = *(v1 + v2[12]);
  if (v29)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
    *&v34 = v29;
    sub_1AD41C9D0(&v34, v33);

    v30 = v36;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AD4EC028(v33, 0xD000000000000015, 0x80000001ADBA0AC0, v31);
    return v30;
  }

  else
  {
    sub_1AD4336B4(0xD000000000000015, 0x80000001ADBA0AC0, &v34);
    sub_1AD3D0E3C(&v34, &unk_1EB59AE90);
    return v36;
  }
}

uint64_t ProvisioningSEStorageManager.currentSnapshot(completion:)(void (*a1)(void), uint64_t a2)
{
  if (PKDisableDynamicSEAllocation())
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v5 = sub_1ADB05FA0();
    __swift_project_value_buffer(v5, qword_1EB59AB68);
    v6 = sub_1ADB05F80();
    v7 = sub_1ADB06860();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v6, v7, "SEStorage: Feature disabled", v8, 2u);
      MEMORY[0x1B26F9F20](v8, -1, -1);
    }

    return (a1)(0);
  }

  else
  {

    sub_1AD486B68(v2, a1, a2);
  }
}

void sub_1AD47D9E0(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = type metadata accessor for ProvisioningSEStorageSnapshot();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot] = a1;
    v9.receiver = v5;
    v9.super_class = v4;
    v6 = a1;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    (a2)(v7, v8);
  }

  else
  {
    a2();
  }
}

uint64_t ProvisioningSEStorageManager.deleteExpiredReservations(completion:)(void (*a1)(void), uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v2;
  *(v5 + 40) = 513;
  v6 = *&v2[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
  swift_retain_n();
  v7 = v2;
  v8 = [v6 primarySecureElementIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1ADB063B0();
    v12 = v11;

    v13 = swift_allocObject();
    v13[2] = sub_1AD486DC0;
    v13[3] = v5;
    v13[4] = v10;
    v13[5] = v12;
    v20[4] = sub_1AD486DC4;
    v20[5] = v13;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = sub_1AD482FD0;
    v20[3] = &block_descriptor_21;
    v14 = _Block_copy(v20);

    [v6 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v14);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1ADB05FA0();
    __swift_project_value_buffer(v15, qword_1EB59AB68);
    v16 = sub_1ADB05F80();
    v17 = sub_1ADB06850();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1AD337000, v16, v17, "SEStorage: Failed to get SEID", v18, 2u);
      MEMORY[0x1B26F9F20](v18, -1, -1);
    }

    a1();
  }
}

void ProvisioningSEStorageManager.debugReservationDescriptions(completion:)(void (*a1)(void), uint64_t a2)
{

  v5 = v2;
  sub_1AD486DE8(v5, a1, a2, v5);
}

uint64_t sub_1AD47DE48(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  if (!a1)
  {
    return a2(MEMORY[0x1E69E7CC0]);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = sub_1ADB06720();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = 0;
  *(v11 + 48) = sub_1AD487DD8;
  *(v11 + 56) = v9;
  v12 = a1;

  sub_1AD457038(0, 0, v8, &unk_1ADB82648, v11);
}

uint64_t sub_1AD47DFB4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v21[1] = a3;
    v22 = a2;
    v23 = MEMORY[0x1E69E7CC0];
    sub_1AD4506A8(0, v10, 0);
    v11 = v23;
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_1AD4873E8(v12, v9);
      v14 = sub_1AD47E144();
      v16 = v15;
      sub_1AD48744C(v9);
      v23 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AD4506A8((v17 > 1), v18 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += v13;
      --v10;
    }

    while (v10);
    a2 = v22;
  }

  a2(v11);
}

uint64_t sub_1AD47E144()
{
  v1 = 7104878;
  sub_1ADB06C10();
  MEMORY[0x1B26F6530](0xD00000000000001FLL, 0x80000001ADBA0AE0);
  sub_1ADB05E30();
  sub_1AD487DE0();
  v2 = sub_1ADB06EF0();
  MEMORY[0x1B26F6530](v2);

  MEMORY[0x1B26F6530](0x7469726F69727020, 0xEB00000000203A79);
  v3 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v4 = sub_1ADB06EF0();
  MEMORY[0x1B26F6530](v4);

  MEMORY[0x1B26F6530](0x6D6974704F736920, 0xEF203A6369747369);
  if (*(v0 + v3[7]))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + v3[7]))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1B26F6530](v5, v6);

  MEMORY[0x1B26F6530](0x6465746165726320, 0xEC000000203A7441);
  sub_1ADB06770();
  MEMORY[0x1B26F6530](0xD000000000000013, 0x80000001ADBA0B00);
  v7 = (v0 + v3[9]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  MEMORY[0x1B26F6530](v8, v9);

  MEMORY[0x1B26F6530](0xD000000000000015, 0x80000001ADBA0B20);
  v10 = (v0 + v3[10]);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 7104878;
  }

  MEMORY[0x1B26F6530](v11, v12);

  MEMORY[0x1B26F6530](0xD000000000000017, 0x80000001ADBA0B40);
  v13 = (v0 + v3[11]);
  if (v13[1])
  {
    v1 = *v13;
    v14 = v13[1];
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B26F6530](v1, v14);

  MEMORY[0x1B26F6530](0xD000000000000018, 0x80000001ADBA0B60);
  if (*(v0 + v3[12]))
  {
    v15 = *(v0 + v3[12]);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v16 = MEMORY[0x1B26F66B0](v15, MEMORY[0x1E69E6158]);
  v18 = v17;

  MEMORY[0x1B26F6530](v16, v18);

  MEMORY[0x1B26F6530](15904, 0xE200000000000000);
  return 0;
}

uint64_t ProvisioningSEStorageManager.performDebugSECleanup(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1AD47E5DC(0, 0, sub_1AD42F824, v4);
}

uint64_t sub_1AD47E5DC(char a1, char a2, void (*a3)(void), uint64_t a4)
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v9 = sub_1ADB05FA0();
  __swift_project_value_buffer(v9, qword_1EB59AB68);
  v10 = sub_1ADB05F80();
  v11 = sub_1ADB06860();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AD337000, v10, v11, "SEStorage: Performing secure element cleanup", v12, 2u);
    MEMORY[0x1B26F9F20](v12, -1, -1);
  }

  v13 = swift_allocObject();
  v13[2] = v4;
  v13[3] = a3;
  v13[4] = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1AD4877DC;
  *(v14 + 24) = v13;
  *(v14 + 32) = v4;
  *(v14 + 40) = a1 & 1;
  *(v14 + 41) = a2;
  v15 = *&v4[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
  v16 = v4;
  swift_retain_n();
  swift_retain_n();
  v17 = v16;
  v18 = [v15 primarySecureElementIdentifier];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1ADB063B0();
    v22 = v21;

    v23 = swift_allocObject();
    v23[2] = sub_1AD48864C;
    v23[3] = v14;
    v23[4] = v20;
    v23[5] = v22;
    v29[4] = sub_1AD4885F0;
    v29[5] = v23;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 1107296256;
    v29[2] = sub_1AD482FD0;
    v29[3] = &block_descriptor_166;
    v24 = _Block_copy(v29);

    [v15 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v24);
  }

  else
  {
    v25 = sub_1ADB05F80();
    v26 = sub_1ADB06850();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1AD337000, v25, v26, "SEStorage: Failed to get SEID", v27, 2u);
      MEMORY[0x1B26F9F20](v27, -1, -1);
    }

    sub_1AD487834(v17, a3, a4);
  }
}

void ProvisioningSEStorageManager.reclaimUnusedSEMemory(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1AD487050;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1AD471DC4;
  v7[3] = &block_descriptor_12_0;
  v6 = _Block_copy(v7);

  [v2 deleteExpiredReservationsWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_1AD47EAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1ADB06720();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1AD457038(0, 0, v6, &unk_1ADB82640, v8);
}

uint64_t sub_1AD47EC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_1ADB06170();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1AD47ECA8;

  return MEMORY[0x1EEE32D90]();
}

uint64_t sub_1AD47ECA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1AD47EE9C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1AD47EDD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AD47EDD0()
{
  receiver = v0[4].receiver;
  v2 = v0[2].receiver;
  v3 = type metadata accessor for ProvisioningSEStorageSnapshot();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____PKProvisioningSEStorageSnapshot_snapshot] = receiver;
  v0[1].receiver = v4;
  v0[1].super_class = v3;
  v5 = receiver;
  v6 = objc_msgSendSuper2(v0 + 1, sel_init);
  v2(v6, 0);

  super_class = v0->super_class;

  return super_class();
}

uint64_t sub_1AD47EE9C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_1AD47F054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1ADB05CB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1AD47F0C4(uint64_t a1)
{
  v2 = sub_1ADB061A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59AE70);
    v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1ADB78CE0;
    (*(v3 + 104))(v22 + v30, *MEMORY[0x1E69C8638], v29);
    return v22;
  }

  v77 = a1;
  v78 = v6;
  v75 = v5;
  v10 = 0;
  v11 = a1 + 40;
  v12 = MEMORY[0x1E69E7CC0];
  do
  {
    v13 = v12;
    v14 = (v11 + 16 * v10);
    v12 = v10;
    while (1)
    {
      if (v12 >= v9)
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_54;
      }

      v16 = *(v14 - 1);
      v15 = *v14;

      v17._countAndFlagsBits = v16;
      v17._object = v15;
      ProvisioningSEStorageAppletType.init(rawValue:)(v17);
      v18 = v79;
      if (v79 != 27)
      {
        break;
      }

      ++v12;
      v14 += 2;
      if (v10 == v9)
      {
        v12 = v13;
        v21 = *(v13 + 2);
        goto LABEL_14;
      }
    }

    v12 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1AD425558(0, *(v13 + 2) + 1, 1, v13);
    }

    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    v21 = v20 + 1;
    if (v20 >= v19 >> 1)
    {
      v12 = sub_1AD425558((v19 > 1), v20 + 1, 1, v12);
    }

    *(v12 + 2) = v21;
    v12[v20 + 32] = v18;
  }

  while (v10 != v9);
LABEL_14:
  v10 = MEMORY[0x1E69C8638];
  if (v21 != v9)
  {
    if (qword_1EB5981C0 == -1)
    {
LABEL_48:
      v31 = sub_1ADB05FA0();
      __swift_project_value_buffer(v31, qword_1EB59AB68);
      v32 = v77;

      v33 = sub_1ADB05F80();
      v34 = sub_1ADB06860();

      v35 = os_log_type_enabled(v33, v34);
      v36 = v75;
      if (v35)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v79 = v38;
        *v37 = 136315394;
        v39 = MEMORY[0x1B26F66B0](v32, MEMORY[0x1E69E6158]);
        v41 = v12;
        v42 = sub_1AD3CA88C(v39, v40, &v79);

        *(v37 + 4) = v42;
        *(v37 + 12) = 2080;
        v43 = MEMORY[0x1B26F66B0](v41, &type metadata for ProvisioningSEStorageAppletType);
        v45 = v44;

        v46 = sub_1AD3CA88C(v43, v45, &v79);

        *(v37 + 14) = v46;
        _os_log_impl(&dword_1AD337000, v33, v34, "SEStorage: Warning: Unable to map payment application types to credentials. \nGiven: %s \nCreated: %s", v37, 0x16u);
        swift_arrayDestroy();
        v47 = v38;
        v10 = MEMORY[0x1E69C8638];
        MEMORY[0x1B26F9F20](v47, -1, -1);
        MEMORY[0x1B26F9F20](v37, -1, -1);
      }

      else
      {
      }

      v48 = v78;
      (*(v3 + 104))(v78, *v10, v36);
      return sub_1AD504C10(v48, v9);
    }

LABEL_55:
    swift_once();
    goto LABEL_48;
  }

  v78 = v12;
  v79 = MEMORY[0x1E69E7CC0];
  sub_1AD4507AC(0, v9, 0);
  v22 = v79;
  v76 = *(v3 + 104);
  v77 = v3;
  v74 = *v10;
  v73 = *MEMORY[0x1E69C85C0];
  v72 = *MEMORY[0x1E69C8630];
  v71 = *MEMORY[0x1E69C8628];
  v70 = *MEMORY[0x1E69C8598];
  v69 = *MEMORY[0x1E69C8600];
  v68 = *MEMORY[0x1E69C85F0];
  v67 = *MEMORY[0x1E69C85E0];
  v66 = *MEMORY[0x1E69C8618];
  v65 = *MEMORY[0x1E69C85F8];
  v64 = *MEMORY[0x1E69C85E8];
  v63 = *MEMORY[0x1E69C8588];
  v62 = *MEMORY[0x1E69C8590];
  v61 = *MEMORY[0x1E69C8578];
  v60 = *MEMORY[0x1E69C8580];
  v59 = *MEMORY[0x1E69C8610];
  v58 = *MEMORY[0x1E69C85D8];
  v57 = *MEMORY[0x1E69C8608];
  v56 = *MEMORY[0x1E69C85B0];
  v55 = *MEMORY[0x1E69C85D0];
  v54 = *MEMORY[0x1E69C8640];
  v53 = *MEMORY[0x1E69C85A8];
  v52 = *MEMORY[0x1E69C85C8];
  v51 = *MEMORY[0x1E69C8620];
  HIDWORD(v50) = *MEMORY[0x1E69C85A0];
  v23 = 32;
  v24 = *MEMORY[0x1E69C85B8];
  v25 = v75;
  do
  {
    v26 = v24;
    switch(v78[v23])
    {
      case 1:
        v26 = HIDWORD(v50);
        break;
      case 2:
        v26 = v51;
        break;
      case 3:
        v26 = v52;
        break;
      case 4:
        v26 = v53;
        break;
      case 5:
        v26 = v54;
        break;
      case 6:
        v26 = v55;
        break;
      case 7:
        v26 = v56;
        break;
      case 8:
        v26 = v57;
        break;
      case 9:
        v26 = v58;
        break;
      case 10:
        v26 = v59;
        break;
      case 11:
        v26 = v60;
        break;
      case 12:
        v26 = v61;
        break;
      case 13:
        v26 = v62;
        break;
      case 14:
        v26 = v63;
        break;
      case 15:
        v26 = v64;
        break;
      case 16:
        v26 = v65;
        break;
      case 17:
        v26 = v66;
        break;
      case 18:
        v26 = v67;
        break;
      case 19:
        v26 = v68;
        break;
      case 20:
        v26 = v69;
        break;
      case 21:
        v26 = v70;
        break;
      case 22:
        v26 = v71;
        break;
      case 23:
        v26 = v72;
        break;
      case 24:
        v26 = v73;
        break;
      case 25:
      case 26:
        v26 = v74;
        break;
      default:
        break;
    }

    v76(v8, v26, v25);
    v79 = v22;
    v28 = *(v22 + 16);
    v27 = *(v22 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1AD4507AC(v27 > 1, v28 + 1, 1);
      v22 = v79;
    }

    *(v22 + 16) = v28 + 1;
    (*(v77 + 32))(v22 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v28, v8, v25);
    ++v23;
    --v9;
  }

  while (v9);

  return v22;
}

uint64_t sub_1AD47F864(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (a1)
  {
    return (a2)(a1, 0, 0);
  }

  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v12 = sub_1ADB05FA0();
  __swift_project_value_buffer(v12, qword_1EB59AB68);

  v13 = sub_1ADB05F80();
  v14 = sub_1ADB06860();

  if (os_log_type_enabled(v13, v14))
  {
    v38 = a6;
    v15 = swift_slowAlloc();
    v16 = v7;
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v15 = 136315138;
    v18 = sub_1ADB061A0();
    v19 = MEMORY[0x1B26F66B0](a5, v18);
    v21 = sub_1AD3CA88C(v19, v20, aBlock);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1AD337000, v13, v14, "SEStorage: Attempting to reserve space for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v22 = v17;
    v7 = v16;
    MEMORY[0x1B26F9F20](v22, -1, -1);
    v23 = v15;
    a6 = v38;
    MEMORY[0x1B26F9F20](v23, -1, -1);
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a5;
  *(v24 + 48) = 0;
  *(v24 + 56) = a6;
  v25 = *&a4[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
  swift_bridgeObjectRetain_n();

  v26 = a4;

  v27 = v26;
  v28 = [v25 primarySecureElementIdentifier];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1ADB063B0();
    v32 = v31;

    v33 = swift_allocObject();
    v33[2] = sub_1AD488648;
    v33[3] = v24;
    v33[4] = v30;
    v33[5] = v32;
    aBlock[4] = sub_1AD4885F0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD482FD0;
    aBlock[3] = &block_descriptor_147;
    v34 = _Block_copy(aBlock);

    [v25 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v34);
  }

  else
  {
    v35 = sub_1ADB05F80();
    v36 = sub_1ADB06850();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1AD337000, v35, v36, "SEStorage: Failed to get SEID", v37, 2u);
      MEMORY[0x1B26F9F20](v37, -1, -1);
    }

    v7(MEMORY[0x1E69E7CC0], 0, 0);
  }
}

void sub_1AD47FC78(void *a1, uint64_t (*a2)(void, void, void), uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a1)
  {

    v14 = a4;

    v15 = a1;

    sub_1AD4843AC(a5, v15, a6 & 1, a2, a3, a7, v14, a5, v15);
  }

  else
  {
    a2(MEMORY[0x1E69E7CC0], 0, 0);
  }
}

uint64_t sub_1AD47FD88(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5)
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
    v37 = a3;
    v13 = swift_slowAlloc();
    v14 = a4;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v13 = 136315138;
    v16 = sub_1ADB061A0();
    v17 = MEMORY[0x1B26F66B0](a2, v16);
    v19 = sub_1AD3CA88C(v17, v18, aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1AD337000, v11, v12, "SEStorage: Attempting to reserve space for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v20 = v15;
    a4 = v14;
    MEMORY[0x1B26F9F20](v20, -1, -1);
    v21 = v13;
    a3 = v37;
    MEMORY[0x1B26F9F20](v21, -1, -1);
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = 1;
  *(v22 + 56) = a3;
  v23 = *&a1[OBJC_IVAR____PKProvisioningSEStorageManager_secureElement];
  swift_bridgeObjectRetain_n();

  v24 = a1;

  v25 = v24;
  v26 = [v23 primarySecureElementIdentifier];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1ADB063B0();
    v30 = v29;

    v31 = swift_allocObject();
    v31[2] = sub_1AD488648;
    v31[3] = v22;
    v31[4] = v28;
    v31[5] = v30;
    aBlock[4] = sub_1AD4885F0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AD482FD0;
    aBlock[3] = &block_descriptor_136_0;
    v32 = _Block_copy(aBlock);

    [v23 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v32);
  }

  else
  {
    v33 = sub_1ADB05F80();
    v34 = sub_1ADB06850();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1AD337000, v33, v34, "SEStorage: Failed to get SEID", v35, 2u);
      MEMORY[0x1B26F9F20](v35, -1, -1);
    }

    a4(MEMORY[0x1E69E7CC0], 0, 0);
  }
}

uint64_t sub_1AD480138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1ADB05E30();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v11 = sub_1ADB061A0();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD4802DC, 0, 0);
}

uint64_t sub_1AD4802DC()
{
  v38 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 224) = v6;
    *(v0 + 160) = *(v4 + 56);
    *(v0 + 168) = v5;
    v7 = MEMORY[0x1E69E7CC0];
    *(v0 + 176) = 0;
    *(v0 + 184) = v7;
    v5(*(v0 + 144), v1 + ((v6 + 32) & ~v6), v3);

    v8 = sub_1ADB06260();
    *(v0 + 192) = v8;

    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1AD480740;
    v10 = *(v0 + 144);

    return MEMORY[0x1EEE32D70](v10, v8, 0);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1ADB05FA0();
    __swift_project_value_buffer(v11, qword_1EB59AB68);
    v12 = sub_1ADB05F80();
    v13 = sub_1ADB06860();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 88);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315138;

      v18 = MEMORY[0x1B26F66B0](v17, v14);
      v20 = v19;

      v21 = sub_1AD3CA88C(v18, v20, &v37);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1AD337000, v12, v13, "SEStorage: Successfully created reservations %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1B26F9F20](v16, -1, -1);
      MEMORY[0x1B26F9F20](v15, -1, -1);
    }

    v22 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v23)
    {
      v24 = *(v0 + 96);
      v25 = *(v0 + 64);
      v37 = MEMORY[0x1E69E7CC0];

      sub_1AD4507F0(0, v23, 0);
      v26 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v22 = v37;
      v36 = *(v24 + 72);
      do
      {
        v27 = *(v0 + 104);
        v28 = *(v0 + 72);
        v29 = *(v0 + 56);
        sub_1AD4873E8(v26, v27);
        (*(v25 + 16))(v28, v27, v29);
        sub_1AD48744C(v27);
        v37 = v22;
        v31 = *(v22 + 16);
        v30 = *(v22 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1AD4507F0(v30 > 1, v31 + 1, 1);
          v22 = v37;
        }

        v32 = *(v0 + 72);
        v33 = *(v0 + 56);
        *(v22 + 16) = v31 + 1;
        (*(v25 + 32))(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31, v32, v33);
        v26 += v36;
        --v23;
      }

      while (v23);
    }

    (*(v0 + 40))(v22, 0, 0);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1AD480740(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  if (v1)
  {
    v5 = sub_1AD480DCC;
  }

  else
  {
    v5 = sub_1AD48087C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AD48087C()
{
  v50 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  sub_1ADB06190();

  sub_1AD47CD84(v3, v4, v1);
  sub_1AD4873E8(v1, v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1AD4258DC(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v47 = sub_1AD4258DC(v7 > 1, v8 + 1, 1, v6);
  }

  else
  {
    v47 = v6;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);

  sub_1AD48744C(v14);
  (*(v13 + 8))(v10, v12);
  *(v47 + 16) = v8 + 1;
  sub_1AD487384(v15, v47 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v8);
  if (v9 + 1 == v11)
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1ADB05FA0();
    __swift_project_value_buffer(v17, qword_1EB59AB68);
    v18 = sub_1ADB05F80();
    v19 = sub_1ADB06860();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 88);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315138;

      v24 = MEMORY[0x1B26F66B0](v23, v20);
      v26 = v25;

      v27 = sub_1AD3CA88C(v24, v26, &v49);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_1AD337000, v18, v19, "SEStorage: Successfully created reservations %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B26F9F20](v22, -1, -1);
      MEMORY[0x1B26F9F20](v21, -1, -1);
    }

    v28 = *(v47 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v30 = *(v0 + 96);
      v31 = *(v0 + 64);
      v49 = MEMORY[0x1E69E7CC0];

      sub_1AD4507F0(0, v28, 0);
      v29 = v49;
      v32 = v47 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
      v48 = *(v30 + 72);
      do
      {
        v33 = *(v0 + 104);
        v34 = *(v0 + 72);
        v35 = *(v0 + 56);
        sub_1AD4873E8(v32, v33);
        (*(v31 + 16))(v34, v33, v35);
        sub_1AD48744C(v33);
        v49 = v29;
        v37 = *(v29 + 16);
        v36 = *(v29 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1AD4507F0(v36 > 1, v37 + 1, 1);
          v29 = v49;
        }

        v38 = *(v0 + 72);
        v39 = *(v0 + 56);
        *(v29 + 16) = v37 + 1;
        (*(v31 + 32))(v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v37, v38, v39);
        v32 += v48;
        --v28;
      }

      while (v28);
    }

    (*(v0 + 40))(v29, 0, 0);

    v45 = *(v0 + 8);

    return v45();
  }

  else
  {
    v40 = *(v0 + 168);
    v41 = *(v0 + 176) + 1;
    *(v0 + 176) = v41;
    *(v0 + 184) = v47;
    v40(*(v0 + 144), *(v0 + 16) + ((*(v0 + 224) + 32) & ~*(v0 + 224)) + *(v0 + 160) * v41, *(v0 + 128));

    v42 = sub_1ADB06260();
    *(v0 + 192) = v42;

    v43 = swift_task_alloc();
    *(v0 + 200) = v43;
    *v43 = v0;
    v43[1] = sub_1AD480740;
    v44 = *(v0 + 144);

    return MEMORY[0x1EEE32D70](v44, v42, 0);
  }
}

uint64_t sub_1AD480DCC()
{
  v1 = v0[27];
  v2 = v0[5];
  (*(v0[17] + 8))(v0[18], v0[16]);
  v3 = v1;
  v2(0, 0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AD480EC8(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  if (!a1)
  {
    return a2(v12);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a5 & 1;
  *(v15 + 17) = a6;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  v16 = sub_1ADB06720();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a1;
  *(v17 + 40) = 0;
  *(v17 + 48) = sub_1AD487F2C;
  *(v17 + 56) = v15;
  v18 = a1;

  sub_1AD457038(0, 0, v14, &unk_1ADB82660, v17);
}

uint64_t sub_1AD481050(uint64_t a1, char a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_1ADB06720();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 41) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = a5;
  *(v16 + 64) = a6;

  v17 = a4;

  sub_1AD457038(0, 0, v14, &unk_1ADB82670, v16);
}

uint64_t sub_1AD48119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a8;
  *(v8 + 40) = v14;
  *(v8 + 181) = a6;
  *(v8 + 180) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a7;
  v9 = sub_1ADB05E30();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();
  v10 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  v11 = sub_1ADB05DE0();
  *(v8 + 112) = v11;
  *(v8 + 120) = *(v11 - 8);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD481340, 0, 0);
}

uint64_t sub_1AD481340()
{
  v42 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 16);
  sub_1ADB05DD0();
  sub_1ADB05D90();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = v6 + -1800.0;
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v12 = *(v9 + 72);
    v13 = *(v0 + 16) + v11;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      v15 = *(v0 + 104);
      sub_1AD4873E8(v13, v15);
      v16 = *(v0 + 104);
      if (*(v15 + v10[8]) >= v8 && (*(v16 + v10[7]) != 1 || *(v0 + 180) == 1 && qword_1ADB827A8[*(v16 + v10[6])] >= qword_1ADB827A8[*(v0 + 181)]))
      {
        sub_1AD48744C(v16);
      }

      else
      {
        sub_1AD487384(v16, *(v0 + 96));
        v41 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1AD450834(0, *(v14 + 16) + 1, 1);
          v14 = v41;
        }

        v18 = *(v14 + 16);
        v17 = *(v14 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1AD450834(v17 > 1, v18 + 1, 1);
          v14 = v41;
        }

        v19 = *(v0 + 96);
        *(v14 + 16) = v18 + 1;
        sub_1AD487384(v19, v14 + v11 + v18 * v12);
      }

      v13 += v12;
      --v7;
    }

    while (v7);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 136) = v14;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v20 = sub_1ADB05FA0();
  __swift_project_value_buffer(v20, qword_1EB59AB68);

  v21 = sub_1ADB05F80();
  v22 = sub_1ADB06860();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 72);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x1B26F66B0](v14, v23);
    v28 = sub_1AD3CA88C(v26, v27, &v41);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1AD337000, v21, v22, "SEStorage: Removing reservations: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1B26F9F20](v25, -1, -1);
    MEMORY[0x1B26F9F20](v24, -1, -1);
  }

  v29 = *(v14 + 16);
  *(v0 + 144) = v29;
  if (v29)
  {
    v30 = *(v0 + 80);
    v31 = *(v0 + 88);
    v32 = *(v30 + 80);
    *(v0 + 176) = v32;
    *(v0 + 152) = *(v30 + 72);
    *(v0 + 160) = 0;
    v34 = *(v0 + 56);
    v33 = *(v0 + 64);
    v35 = *(v0 + 48);
    sub_1AD4873E8(*(v0 + 136) + ((v32 + 32) & ~v32), v31);
    (*(v34 + 16))(v33, v31, v35);
    sub_1AD48744C(v31);
    v36 = swift_task_alloc();
    *(v0 + 168) = v36;
    *v36 = v0;
    v36[1] = sub_1AD481794;
    v37 = *(v0 + 64);

    return MEMORY[0x1EEE32D80](v37);
  }

  else
  {

    (*(v0 + 32))(v38);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_1AD481794()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  v6 = (v4 + 8);
  if (v0)
  {

    (*v6)(v3, v5);
    v7 = sub_1AD48865C;
  }

  else
  {
    (*v6)(v3, v5);
    v7 = sub_1AD481928;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1AD481928()
{
  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 144))
  {

    (*(v0 + 32))(v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 160) = v1;
    v5 = *(v0 + 88);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    sub_1AD4873E8(*(v0 + 136) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(v0 + 152) * v1, v5);
    (*(v7 + 16))(v6, v5, v8);
    sub_1AD48744C(v5);
    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_1AD481794;
    v10 = *(v0 + 64);

    return MEMORY[0x1EEE32D80](v10);
  }
}

void sub_1AD481AC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);
  v9 = sub_1ADB06370();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  v13[4] = sub_1AD42334C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1AD471E08;
  v13[3] = &block_descriptor_187;
  v11 = _Block_copy(v13);

  v12 = a2;

  [v8 connectToServerWithPushTopic:v9 performSECleanup:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1AD481BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v5 = sub_1ADB05FA0();
  __swift_project_value_buffer(v5, qword_1EB59AB68);
  v6 = sub_1ADB05F80();
  v7 = sub_1ADB06860();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1AD337000, v6, v7, "SEStorage: Finished performing TSM sync to cleanup SE", v8, 2u);
    MEMORY[0x1B26F9F20](v8, -1, -1);
  }

  return a4();
}

uint64_t sub_1AD481CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void *a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v37 = a4;
  v38 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = &v34 - v11;
  v40 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v12 = MEMORY[0x1EEE9AC00](v40);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v15 + 72);
    v39 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v20 = a1 + v39;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AD4873E8(v20, v17);
      v22 = &v17[*(v40 + 20)];
      v23 = *v22 == a2 && *(v22 + 1) == a3;
      if (v23 || (sub_1ADB06F50() & 1) != 0)
      {
        sub_1AD487384(v17, v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AD450834(0, *(v21 + 16) + 1, 1);
          v21 = v41;
        }

        v26 = *(v21 + 16);
        v25 = *(v21 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1AD450834(v25 > 1, v26 + 1, 1);
          v21 = v41;
        }

        *(v21 + 16) = v26 + 1;
        sub_1AD487384(v14, v21 + v39 + v26 * v19);
      }

      else
      {
        sub_1AD48744C(v17);
      }

      v20 += v19;
      --v18;
    }

    while (v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  if (*(v21 + 16))
  {
    v27 = sub_1ADB06720();
    v28 = v34;
    (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v35;
    v29[4] = v21;
    v29[5] = v30;
    v31 = v37;
    v29[6] = v36;
    v29[7] = v31;
    v29[8] = v38;
    v32 = v30;

    sub_1AD457038(0, 0, v28, &unk_1ADB82618, v29);
  }

  else
  {

    return v37(0);
  }
}

uint64_t sub_1AD481FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_1ADB05E30();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AD482128, 0, 0);
}

uint64_t sub_1AD482128()
{
  v36 = v0;
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AD4507F0(0, v2, 0);
    v3 = v35;
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = *(v5 + 72);
    do
    {
      v7 = *(v0 + 104);
      v9 = *(v0 + 72);
      v8 = *(v0 + 80);
      sub_1AD4873E8(v6, v9);
      (*(v4 + 16))(v7, v9, v8);
      sub_1AD48744C(v9);
      v35 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AD4507F0(v10 > 1, v11 + 1, 1);
        v3 = v35;
      }

      v12 = *(v0 + 104);
      v13 = *(v0 + 80);
      *(v3 + 16) = v11 + 1;
      (*(v4 + 32))(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
      v6 += v34;
      --v2;
    }

    while (v2);
  }

  *(v0 + 112) = v3;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v14 = sub_1ADB05FA0();
  __swift_project_value_buffer(v14, qword_1EB59AB68);

  v15 = sub_1ADB05F80();
  v16 = sub_1ADB06860();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = *(v0 + 56);
    v18 = *(v0 + 16);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x1B26F66B0](v18, v17);
    v23 = sub_1AD3CA88C(v21, v22, &v35);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1AD337000, v15, v16, "SEStorage: Reusing existing reservations: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B26F9F20](v20, -1, -1);
    MEMORY[0x1B26F9F20](v19, -1, -1);
  }

  v24 = *(v3 + 16);
  *(v0 + 120) = v24;
  if (v24)
  {
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);
    v27 = *(v26 + 16);
    v26 += 16;
    v28 = *(v26 + 64);
    *(v0 + 168) = v28;
    *(v0 + 128) = *(v26 + 56);
    *(v0 + 136) = v27;
    *(v0 + 144) = 0;
    v27(*(v0 + 96), *(v0 + 112) + ((v28 + 32) & ~v28), v25);
    v29 = sub_1ADB06260();
    *(v0 + 152) = v29;
    v30 = swift_task_alloc();
    *(v0 + 160) = v30;
    *v30 = v0;
    v30[1] = sub_1AD48251C;
    v31 = *(v0 + 96);

    return MEMORY[0x1EEE32D78](v31, v29);
  }

  else
  {
    (*(v0 + 40))(*(v0 + 112));

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1AD48251C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);

  v6 = v4[12];
  v7 = v4[11];
  v8 = v4[10];
  if (v1)
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1AD4885E0;
  }

  else
  {

    (*(v7 + 8))(v6, v8);
    v9 = sub_1AD4826D4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1AD4826D4()
{
  v1 = *(v0 + 144) + 1;
  if (v1 == *(v0 + 120))
  {
    (*(v0 + 40))(*(v0 + 112));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 144) = v1;
    (*(v0 + 136))(*(v0 + 96), *(v0 + 112) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 128) * v1, *(v0 + 80));
    v4 = sub_1ADB06260();
    *(v0 + 152) = v4;
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_1AD48251C;
    v6 = *(v0 + 96);

    return MEMORY[0x1EEE32D78](v6, v4);
  }
}

void sub_1AD482874(void *a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v16 = sub_1ADB05FA0();
  __swift_project_value_buffer(v16, qword_1EB59AB68);
  v17 = sub_1ADB05F80();
  v18 = sub_1ADB06860();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a1;
    v20 = v15;
    v21 = a2;
    v22 = a7;
    v23 = a3;
    v24 = a5;
    v25 = a4;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1AD337000, v17, v18, "SEStorage: asynchronously fetching current SE snapshot", v19, 2u);
    v27 = v26;
    a4 = v25;
    a5 = v24;
    a3 = v23;
    a7 = v22;
    a2 = v21;
    v15 = v20;
    a1 = v35;
    MEMORY[0x1B26F9F20](v27, -1, -1);
  }

  if (a1)
  {
    v28 = sub_1ADB06720();
    (*(*(v28 - 8) + 56))(v15, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v30 = v36;
    v29[4] = a1;
    v29[5] = v30;
    v29[6] = a7;
    v29[7] = a2;
    v29[8] = a3;
    v29[9] = a4;
    v29[10] = a5;
    v31 = a1;

    sub_1AD3C5F14(a2);

    sub_1AD457038(0, 0, v15, &unk_1ADB82658, v29);
  }

  else
  {
    v32 = sub_1ADB05F80();
    v33 = sub_1ADB06850();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1AD337000, v32, v33, "SEStorage: Unable to get SE session", v34, 2u);
      MEMORY[0x1B26F9F20](v34, -1, -1);
    }

    if (a2)
    {
      a2();
      a4(0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1AD482B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v15;
  v8[5] = v16;
  v8[2] = a7;
  v8[3] = a8;
  sub_1ADB06170();
  v12 = swift_task_alloc();
  v8[6] = v12;
  *v12 = v8;
  v12[1] = sub_1AD482C30;

  return MEMORY[0x1EEE32D88](a4, a5, a6);
}

uint64_t sub_1AD482C30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1AD482E00;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1AD482D58;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_1AD482D58()
{
  v1 = *(v0 + 16);
  result = *(v0 + 64);
  if (v1)
  {
    v3 = result;
    v4 = *(v0 + 32);
    v1();
    v4(v3);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AD482E00()
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1ADB05FA0();
  __swift_project_value_buffer(v2, qword_1EB59AB68);
  v3 = v1;
  v4 = sub_1ADB05F80();
  v5 = sub_1ADB06850();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1AD337000, v4, v5, "SEStorage: Failed to get current snapshot with error: %@", v8, 0xCu);
    sub_1AD3D0E3C(v9, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v9, -1, -1);
    MEMORY[0x1B26F9F20](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  if (v12)
  {
    v13 = v0[4];
    v12();
    v13(0);
    v14 = v0[1];

    v14();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AD482FD0(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_1AD4885EC;
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v4(a2, v5, v6);

  sub_1AD3C5FB8(v5);
}

uint64_t sub_1AD483094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  sub_1ADB05E30();
  v7[4] = swift_task_alloc();
  v9 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[8] = v10;
  *v10 = v7;
  v10[1] = sub_1AD4831BC;

  return MEMORY[0x1EEE32D50](a5);
}

uint64_t sub_1AD4831BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1AD483714;
  }

  else
  {
    v4 = sub_1AD4832D0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AD4832D0()
{
  v43 = v1;
  v5 = *(v1 + 72);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_21:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

  v6 = sub_1ADB06D00();
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_3:
  v41 = MEMORY[0x1E69E7CC0];
  sub_1AD450834(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 48);
    v8 = v41;
    v3 = *(v1 + 72);
    v9 = *(v1 + 80);
    v40 = v5 & 0xC000000000000001;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B26F6CC0](0, v3);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    v11 = v10;
    v12 = sub_1ADB06180();
    if (!v9)
    {
      v42 = 0;
      v9 = v12;
      sub_1ADB06270();
    }

    v13 = *(v1 + 56);
    v14 = *(v1 + 32);
    sub_1ADB06190();
    sub_1AD47CD84(v14, 0, v13);

    v4 = *(v41 + 16);
    v7 = *(v41 + 24);
    v0 = v4 + 1;
    if (v4 < v7 >> 1)
    {
      goto LABEL_10;
    }
  }

  sub_1AD450834(v7 > 1, v0, 1);
  v8 = v41;
LABEL_10:
  v15 = *(v1 + 56);
  *(v8 + 16) = v0;
  v39 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v16 = *(v2 + 72);
  sub_1AD487384(v15, v8 + v39 + v16 * v4);
  if (v6 != 1)
  {
    v17 = (v3 + 40);
    v18 = 1;
    v19 = v6;
    do
    {
      if (v40)
      {
        v20 = MEMORY[0x1B26F6CC0](v18, *(v1 + 72));
      }

      else
      {
        v20 = *v17;
      }

      v21 = v20;
      v42 = 0;
      v22 = sub_1ADB06180();
      sub_1ADB06270();

      v23 = *(v1 + 56);
      v24 = *(v1 + 32);
      sub_1ADB06190();
      sub_1AD47CD84(v24, 0, v23);

      v26 = *(v8 + 16);
      v25 = *(v8 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1AD450834(v25 > 1, v26 + 1, 1);
      }

      v27 = *(v1 + 56);
      ++v18;
      *(v8 + 16) = v26 + 1;
      sub_1AD487384(v27, v8 + v39 + v16 * v26);
      ++v17;
    }

    while (v19 != v18);
  }

LABEL_22:
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1ADB05FA0();
  __swift_project_value_buffer(v28, qword_1EB59AB68);

  v29 = sub_1ADB05F80();
  v30 = sub_1ADB06860();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v1 + 40);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x1B26F66B0](v8, v31);
    v36 = sub_1AD3CA88C(v34, v35, &v42);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_1AD337000, v29, v30, "SEStorage: All Reservation %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1B26F9F20](v33, -1, -1);
    MEMORY[0x1B26F9F20](v32, -1, -1);
  }

  (*(v1 + 16))(v8);

  v37 = *(v1 + 8);

  return v37();
}

uint64_t sub_1AD483714()
{
  if (qword_1EB5981C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1ADB05FA0();
  __swift_project_value_buffer(v2, qword_1EB59AB68);
  v3 = v1;
  v4 = sub_1ADB05F80();
  v5 = sub_1ADB06850();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1AD337000, v4, v5, "SEStorage: Failed to get SEReservations with error: %@", v7, 0xCu);
    sub_1AD3D0E3C(v8, &unk_1EB59A340);
    MEMORY[0x1B26F9F20](v8, -1, -1);
    MEMORY[0x1B26F9F20](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[2];

  v12(MEMORY[0x1E69E7CC0]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1AD4838F8()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](qword_1ADB827A8[v1]);
  return sub_1ADB070D0();
}

uint64_t sub_1AD483980()
{
  v1 = *v0;
  sub_1ADB07090();
  MEMORY[0x1B26F7130](qword_1ADB827A8[v1]);
  return sub_1ADB070D0();
}

uint64_t *sub_1AD4839CC@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result == 1000)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 500)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 250)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

char *_s11PassKitCore28ProvisioningSEStorageManagerC19reservationMetadata3for12isOptimisticSDySSypG8metadata_SS15groupIdentifiertSgAA0D24CredentialsConfigurationC10CredentialO_SbtF_0(uint64_t a1, int a2)
{
  v76 = a2;
  v3 = sub_1ADB05DE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1ADB05E30();
  v7 = *(v78 - 8);
  v8 = MEMORY[0x1EEE9AC00](v78);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v71 - v11;
  v13 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *a1;
  LODWORD(v77) = *(a1 + 24);
  sub_1ADB05E20();
  v15[v13[6]] = 0;
  v16 = v13[8];
  sub_1ADB05DD0();
  sub_1ADB05D90();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  *&v15[v16] = v18;
  v19 = &v15[v13[9]];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v15[v13[10]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v15[v13[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v73 = v21;
  v74 = v13[12];
  *&v15[v74] = 0;
  v22 = v78;
  (*(v7 + 16))(v15, v12, v78);
  v23 = v10;
  sub_1ADB05E20();
  v24 = sub_1ADB05E00();
  v26 = v25;
  v27 = *(v7 + 8);
  v27(v23, v22);
  v28 = v22;
  v29 = v13;
  v27(v12, v28);
  v30 = &v15[v13[5]];
  v31 = v77;
  *v30 = v24;
  v30[1] = v26;
  if (v31 > 2)
  {
    goto LABEL_4;
  }

  if (!v31)
  {
    v33 = [v75 underlyingPaymentPass];
    v32 = v76;
    if (v33)
    {
      v77 = v30;
      v78 = v29;
      v34 = v33;
      v35 = [v34 uniqueID];
      v71[1] = v24;
      v72 = v15;
      if (v35)
      {
        v36 = v35;
        sub_1ADB063B0();
      }

      v55 = [v34 serialNumber];
      v56 = sub_1ADB063B0();
      v58 = v57;

      *v19 = v56;
      v19[1] = v58;
      v59 = [v34 passTypeIdentifier];

      v60 = sub_1ADB063B0();
      v62 = v61;

      v63 = v73;
      *v73 = v60;
      v63[1] = v62;
      v15 = v72;
      v30 = v77;
      v29 = v78;
    }

    v64 = [v75 secureElementReservationGroupIdentifier];
    if (!v64)
    {
      goto LABEL_29;
    }

    v65 = v64;
    v66 = sub_1ADB063B0();
    v68 = v67;

    goto LABEL_28;
  }

  if (v31 == 1)
  {
LABEL_4:
    v32 = v76;
LABEL_29:
    v15[*(v29 + 28)] = v32 & 1;
    v70 = sub_1AD47D494();

    sub_1AD48744C(v15);
    return v70;
  }

  v73 = v26;
  v78 = v13;
  v37 = [v75 metadataProviders];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB59AE80);
  v38 = sub_1ADB06610();

  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_10;
    }

LABEL_26:

    v42 = MEMORY[0x1E69E7CC0];
LABEL_27:
    *&v15[v74] = v42;
    v79 = v42;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB59A750);
    sub_1AD488320();
    v66 = sub_1ADB062F0();
    v68 = v69;

    v32 = v76;
    v29 = v78;
LABEL_28:
    *v30 = v66;
    v30[1] = v68;
    goto LABEL_29;
  }

  v39 = sub_1ADB06D00();
  if (!v39)
  {
    goto LABEL_26;
  }

LABEL_10:
  v77 = v30;
  v72 = v15;
  v79 = MEMORY[0x1E69E7CC0];
  result = sub_1AD4506A8(0, v39 & ~(v39 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    v42 = v79;
    v43 = v38;
    v44 = v38 & 0xC000000000000001;
    v45 = v38;
    do
    {
      if (v44)
      {
        v46 = MEMORY[0x1B26F6CC0](v41, v43);
      }

      else
      {
        v46 = *(v43 + 8 * v41 + 32);
        swift_unknownObjectRetain();
      }

      v47 = [v46 provisioningTarget];
      v48 = [v47 provisioningCredentialIdentifier];

      if (v48)
      {
        v49 = sub_1ADB063B0();
        v51 = v50;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v49 = 0;
        v51 = 0xE000000000000000;
      }

      v79 = v42;
      v53 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1AD4506A8((v52 > 1), v53 + 1, 1);
        v42 = v79;
      }

      ++v41;
      *(v42 + 16) = v53 + 1;
      v54 = v42 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v43 = v45;
    }

    while (v39 != v41);

    v15 = v72;
    v30 = v77;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AD484130(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, char a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 41) = a6;
  v13 = *(a1 + OBJC_IVAR____PKProvisioningSEStorageManager_secureElement);

  v14 = a4;
  v15 = [v13 primarySecureElementIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1ADB063B0();
    v19 = v18;

    v20 = swift_allocObject();
    v20[2] = sub_1AD48864C;
    v20[3] = v12;
    v20[4] = v17;
    v20[5] = v19;
    v27[4] = sub_1AD4885F0;
    v27[5] = v20;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = sub_1AD482FD0;
    v27[3] = &block_descriptor_238;
    v21 = _Block_copy(v27);

    [v13 accessAsyncSecureElementManagerSessionWithHandler_];
    _Block_release(v21);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v23 = sub_1ADB05FA0();
    __swift_project_value_buffer(v23, qword_1EB59AB68);
    v24 = sub_1ADB05F80();
    v25 = sub_1ADB06850();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1AD337000, v24, v25, "SEStorage: Failed to get SEID", v26, 2u);
      MEMORY[0x1B26F9F20](v26, -1, -1);
    }

    a2();
  }
}

uint64_t sub_1AD4843AC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void, void, void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v40 = a7;
  v41 = a8;
  v42 = a4;
  v43 = a5;
  v11 = sub_1ADB05E30();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ProvisioningSEStorageManager.ReservationEntry();
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB598840);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v39 - v19;
  if (sub_1ADB06160())
  {
    v21 = sub_1ADB06720();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v23 = v42;
    v22[4] = v41;
    v22[5] = a9;
    v22[6] = a6;
    v22[7] = v23;
    v22[8] = v43;

    v24 = a9;
    sub_1AD457038(0, 0, v20, &unk_1ADB82628, v22);
  }

  else
  {
    if (qword_1EB5981C0 != -1)
    {
      swift_once();
    }

    v26 = sub_1ADB05FA0();
    __swift_project_value_buffer(v26, qword_1EB59AB68);
    v27 = sub_1ADB05F80();
    v28 = sub_1ADB06860();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1AD337000, v27, v28, "SEStorage: Insufficient SE space for credentials", v29, 2u);
      MEMORY[0x1B26F9F20](v29, -1, -1);
    }

    if (a3)
    {
      return v42(0, 1, 0);
    }

    else
    {

      sub_1ADB05E20();
      sub_1AD47CD84(v13, a6, v17);
      if (v17[*(v14 + 28)] == 1)
      {
        v30 = sub_1ADB05F80();
        v31 = sub_1ADB06860();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_1AD337000, v30, v31, "SEStorage: Not attempting clean up because reservation is optimistic", v32, 2u);
          MEMORY[0x1B26F9F20](v32, -1, -1);
        }

        v42(0, 0, 0);
      }

      else
      {
        v33 = v17[*(v14 + 24)];
        v34 = swift_allocObject();
        v35 = v40;
        v34[2] = v40;
        v36 = v42;
        v34[3] = v41;
        v34[4] = a6;
        v37 = v43;
        v34[5] = v36;
        v34[6] = v37;

        v38 = v35;
        sub_1AD47E5DC(0, v33, sub_1AD4885E4, v34);
      }

      return sub_1AD48744C(v17);
    }
  }
}