uint64_t tls_handshake_create(char a1, char a2)
{
  v4 = malloc_type_malloc(0x468uLL, 0x10F00405A3378A2uLL);
  v5 = v4;
  if (v4)
  {
    bzero(v4, 0x468uLL);
    *(v5 + 16) = a1;
    *(v5 + 840) = 1400;
    *(v5 + 17) = a2;
    *(v5 + 24) = Ssl3Callouts;
    InitCipherSpecParams(v5);
    tls_handshake_set_config(v5, 0);
    if ((*(v5 + 17) & 1) == 0)
    {
      *(v5 + 1066) = 1;
      *(v5 + 1008) = 1;
    }

    *(v5 + 768) = 1;
    tls_handshake_set_curves(v5, KnownCurves, 3u);
    *(v5 + 144) = -1;
    *(v5 + 784) = -1;
    tls_handshake_set_sigalgs(v5, KnownSigAlgs, 8u);
    if (*(v5 + 17))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(v5 + 380) = v6;
  }

  return v5;
}

uint64_t InitCipherSpecParams(uint64_t a1)
{
  v2 = *(a1 + 328);
  *(a1 + 332) = v2;
  *(a1 + 343) = sslCipherSuiteGetMacSize(v2);
  *(a1 + 344) = sslCipherSuiteGetMacAlgorithm(*(a1 + 328));
  *(a1 + 340) = sslCipherSuiteGetSymmetricCipherKeySize(*(a1 + 328));
  SymmetricCipherBlockIvSize = sslCipherSuiteGetSymmetricCipherBlockIvSize(*(a1 + 328));
  *(a1 + 342) = SymmetricCipherBlockIvSize;
  *(a1 + 341) = SymmetricCipherBlockIvSize;
  result = sslCipherSuiteGetKeyExchangeMethod(*(a1 + 328));
  *(a1 + 336) = result;
  return result;
}

uint64_t sslCipherSuiteGetMacSize(int a1)
{
  if (sslCipherSuiteGetSymmetricCipherAlgorithm(a1) - 7 >= 2)
  {
    return (0x3020141000uLL >> (8 * sslCipherSuiteGetMacAlgorithm(a1)));
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

uint64_t sslCipherSuiteGetSymmetricCipherAlgorithm(int a1)
{
  result = 0;
  if (a1 > 4865)
  {
    if (a1 > 65407)
    {
      if (a1 == 65411)
      {
        return 4;
      }

      else if (a1 == 65410)
      {
        return 3;
      }

      else
      {
        return a1 == 65408;
      }
    }

    else
    {
      switch(a1)
      {
        case 49154:
        case 49159:
        case 49164:
        case 49169:
        case 49174:
LABEL_10:
          result = 2;
          break;
        case 49155:
        case 49160:
        case 49165:
        case 49170:
        case 49175:
          return 4;
        case 49156:
        case 49161:
        case 49166:
        case 49171:
        case 49176:
        case 49187:
        case 49189:
        case 49191:
        case 49193:
LABEL_6:
          result = 5;
          break;
        case 49157:
        case 49162:
        case 49167:
        case 49172:
        case 49177:
        case 49188:
        case 49190:
        case 49192:
        case 49194:
LABEL_7:
          result = 6;
          break;
        case 49158:
        case 49163:
        case 49168:
        case 49173:
        case 49178:
        case 49179:
        case 49180:
        case 49181:
        case 49182:
        case 49183:
        case 49184:
        case 49185:
        case 49186:
          return result;
        case 49195:
        case 49197:
        case 49199:
        case 49201:
LABEL_8:
          result = 7;
          break;
        case 49196:
        case 49198:
        case 49200:
        case 49202:
LABEL_9:
          result = 8;
          break;
        default:
          if (a1 == 4867)
          {
            v3 = 9;
          }

          else
          {
            v3 = 0;
          }

          if (a1 == 4866)
          {
            result = 8;
          }

          else
          {
            result = v3;
          }

          break;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 4:
      case 5:
      case 24:
      case 138:
      case 142:
      case 146:
        goto LABEL_10;
      case 6:
      case 7:
      case 8:
      case 11:
      case 14:
      case 17:
      case 20:
      case 23:
      case 25:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 59:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 150:
      case 151:
      case 152:
      case 153:
      case 154:
      case 155:
      case 176:
      case 177:
      case 180:
      case 181:
        return result;
      case 9:
      case 12:
      case 15:
      case 18:
      case 21:
      case 26:
        return 3;
      case 10:
      case 13:
      case 16:
      case 19:
      case 22:
      case 27:
      case 139:
      case 143:
      case 147:
        return 4;
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 60:
      case 62:
      case 63:
      case 64:
      case 103:
      case 108:
      case 140:
      case 144:
      case 148:
      case 174:
      case 178:
      case 182:
        goto LABEL_6;
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 61:
      case 104:
      case 105:
      case 106:
      case 107:
      case 109:
      case 141:
      case 145:
      case 149:
      case 175:
      case 179:
      case 183:
        goto LABEL_7;
      case 156:
      case 158:
      case 160:
      case 162:
      case 164:
      case 166:
      case 168:
      case 170:
      case 172:
        goto LABEL_8;
      case 157:
      case 159:
      case 161:
      case 163:
      case 165:
      case 167:
      case 169:
      case 171:
      case 173:
        goto LABEL_9;
      default:
        if (a1 == 4865)
        {
          result = 7;
        }

        else
        {
          result = 0;
        }

        break;
    }
  }

  return result;
}

uint64_t tls_handshake_set_ciphersuites_internal(uint64_t a1, int a2, unsigned __int16 *a3, unsigned int a4)
{
  if (!a4)
  {
    return 4294967246;
  }

  v4 = a3;
  v7 = 0;
  v8 = a4;
  v9 = a4;
  v10 = a3;
  do
  {
    v12 = *v10++;
    v11 = v12;
    if (tls_handshake_ciphersuite_is_supported(*(a1 + 17), *(a1 + 16), v12))
    {
      v7 += tls_handshake_ciphersuite_is_allowed(a2, v11);
    }

    --v9;
  }

  while (v9);
  if (!v7)
  {
    return 4294967246;
  }

  sslFree(*(a1 + 352));
  *(a1 + 360) = 0;
  v13 = sslMalloc(2 * v7);
  if (!v13)
  {
    return 4294967188;
  }

  v14 = v13;
  *(a1 + 360) = v7;
  *(a1 + 352) = v13;
  do
  {
    v16 = *v4++;
    v15 = v16;
    if (tls_handshake_ciphersuite_is_supported(*(a1 + 17), *(a1 + 16), v16) && tls_handshake_ciphersuite_is_allowed(a2, v15))
    {
      *v14++ = v15;
    }

    --v8;
  }

  while (v8);
  sslAnalyzeCipherSpecs(a1);
  return 0;
}

uint64_t sslCipherSuiteGetMacAlgorithm(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 3:
    case 4:
    case 6:
    case 23:
    case 24:
      return 1;
    case 2:
    case 5:
    case 7:
    case 8:
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
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 138:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
      return 2;
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
      return result;
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 156:
    case 158:
    case 160:
    case 162:
    case 164:
    case 166:
    case 168:
    case 170:
    case 172:
    case 174:
    case 176:
    case 178:
    case 180:
    case 182:
    case 184:
      return 3;
    case 157:
    case 159:
    case 161:
    case 163:
    case 165:
    case 167:
    case 169:
    case 171:
    case 173:
    case 175:
    case 177:
    case 179:
    case 181:
    case 183:
    case 185:
      return 4;
    default:
      v3 = a1 - 1;
      if ((a1 - 49153) > 0x31)
      {
        goto LABEL_10;
      }

      if (((1 << v3) & 0x1FFFFFF) != 0)
      {
        return 2;
      }

      if (((1 << v3) & 0x1555400000000) != 0)
      {
        return 3;
      }

      if (((1 << v3) & 0x2AAA800000000) != 0)
      {
        return 4;
      }

LABEL_10:
      v4 = a1 - 65408;
      if (v4 <= 3 && v4 != 1)
      {
        return 1;
      }

      return result;
  }
}

BOOL tls_handshake_ciphersuite_is_supported(uint64_t a1, char a2, int a3)
{
  KeyExchangeMethod = sslCipherSuiteGetKeyExchangeMethod(a3);
  SymmetricCipherAlgorithm = sslCipherSuiteGetSymmetricCipherAlgorithm(a3);
  MacAlgorithm = sslCipherSuiteGetMacAlgorithm(a3);
  v8 = 0;
  if (KeyExchangeMethod <= 0x13 && ((1 << KeyExchangeMethod) & 0xE8A02) != 0)
  {
    return ((SymmetricCipherAlgorithm - 4) < 5 || !SymmetricCipherAlgorithm || SymmetricCipherAlgorithm == 2 && (a2 & 1) == 0) && MacAlgorithm < 5;
  }

  return v8;
}

uint64_t sslCipherSuiteGetKeyExchangeMethod(int a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    case 9:
    case 10:
    case 47:
    case 53:
    case 59:
    case 60:
    case 61:
    case 156:
    case 157:
LABEL_2:
      result = 1;
      break;
    case 3:
    case 6:
    case 8:
      result = 2;
      break;
    case 11:
      result = 4;
      break;
    case 12:
    case 13:
    case 48:
    case 54:
    case 62:
    case 104:
    case 164:
    case 165:
      result = 3;
      break;
    case 14:
      result = 6;
      break;
    case 15:
    case 16:
    case 49:
    case 55:
    case 63:
    case 105:
    case 160:
    case 161:
      result = 5;
      break;
    case 17:
      result = 8;
      break;
    case 18:
    case 19:
    case 50:
    case 56:
    case 64:
    case 106:
    case 162:
    case 163:
      result = 7;
      break;
    case 20:
      result = 10;
      break;
    case 21:
    case 22:
    case 51:
    case 57:
    case 103:
    case 107:
    case 158:
    case 159:
      result = 9;
      break;
    case 23:
    case 25:
      result = 12;
      break;
    case 24:
    case 26:
    case 27:
    case 52:
    case 58:
    case 108:
    case 109:
    case 166:
    case 167:
      result = 11;
      break;
    case 28:
    case 29:
      result = 13;
      break;
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
      return result;
    case 44:
    case 138:
    case 139:
    case 140:
    case 141:
    case 168:
    case 169:
    case 174:
    case 175:
    case 176:
    case 177:
      result = 19;
      break;
    case 45:
    case 142:
    case 143:
    case 144:
    case 145:
    case 170:
    case 171:
    case 178:
    case 179:
    case 180:
    case 181:
      result = 20;
      break;
    case 46:
    case 146:
    case 147:
    case 148:
    case 149:
    case 172:
    case 173:
    case 182:
    case 183:
    case 184:
    case 185:
      result = 21;
      break;
    default:
      switch(a1)
      {
        case 49153:
        case 49154:
        case 49155:
        case 49156:
        case 49157:
        case 49189:
        case 49190:
        case 49197:
        case 49198:
          result = 14;
          break;
        case 49158:
        case 49159:
        case 49160:
        case 49161:
        case 49162:
        case 49187:
        case 49188:
        case 49195:
        case 49196:
          result = 15;
          break;
        case 49163:
        case 49164:
        case 49165:
        case 49166:
        case 49167:
        case 49193:
        case 49194:
        case 49201:
        case 49202:
          result = 16;
          break;
        case 49168:
        case 49169:
        case 49170:
        case 49171:
        case 49172:
        case 49191:
        case 49192:
        case 49199:
        case 49200:
          result = 17;
          break;
        case 49173:
        case 49174:
        case 49175:
        case 49176:
        case 49177:
          result = 18;
          break;
        case 49178:
        case 49179:
        case 49180:
        case 49181:
        case 49182:
        case 49183:
        case 49184:
        case 49185:
        case 49186:
          return result;
        default:
          v3 = a1 - 65408;
          if (v3 <= 3 && v3 != 1)
          {
            goto LABEL_2;
          }

          break;
      }

      break;
  }

  return result;
}

uint64_t tls_handshake_set_config(uint64_t a1, int a2)
{
  *(a1 + 1092) = a2;
  if (*(a1 + 16))
  {
    v2 = 65279;
    *(a1 + 8) = 65279;
  }

  else
  {
    v3 = a2 + 1;
    if ((a2 + 1) >= 0xF)
    {
      v4 = 769;
    }

    else
    {
      v4 = dword_2986B90E0[v3];
    }

    *(a1 + 8) = v4;
    if (v3 > 0xE)
    {
      v2 = 771;
    }

    else
    {
      v2 = dword_2986B911C[v3];
    }
  }

  *(a1 + 12) = v2;
  *(a1 + 76) = 1024;
  v5 = 0x100000000000101uLL >> (8 * (a2 - 4));
  if ((a2 - 4) > 7)
  {
    LOBYTE(v5) = 0;
  }

  if (*(a1 + 17))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  *(a1 + 1064) = v6;
  return tls_handshake_set_ciphersuites_internal(a1, a2, all_ciphersuites, 0x24u);
}

BOOL tls_handshake_ciphersuite_is_allowed(int a1, int a2)
{
  KeyExchangeMethod = sslCipherSuiteGetKeyExchangeMethod(a2);
  SymmetricCipherAlgorithm = sslCipherSuiteGetSymmetricCipherAlgorithm(a2);
  MacAlgorithm = sslCipherSuiteGetMacAlgorithm(a2);
  if (a1 <= 5)
  {
    if (a1 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (a1 > 9)
  {
    if ((a1 - 10) < 2)
    {
LABEL_16:
      v7 = 0;
      if (KeyExchangeMethod <= 0x11 && ((1 << KeyExchangeMethod) & 0x28002) != 0)
      {
        goto LABEL_18;
      }

      return v7;
    }

    if (a1 == 12)
    {
      v7 = 0;
      if (KeyExchangeMethod != 15 || SymmetricCipherAlgorithm <= 4)
      {
        return v7;
      }

      return MacAlgorithm > 1;
    }

    if (a1 != 13)
    {
      goto LABEL_16;
    }

LABEL_18:
    v7 = 1;
    switch(a1)
    {
      case -1:
        return v7;
      case 0:
      case 4:
      case 10:
      case 11:
        if (SymmetricCipherAlgorithm >= 0xA)
        {
          goto LABEL_40;
        }

        v8 = 527;
        goto LABEL_28;
      case 1:
      case 3:
      case 5:
      case 8:
        goto LABEL_32;
      case 2:
      case 6:
      case 7:
      case 9:
        goto LABEL_26;
      case 12:
        if (SymmetricCipherAlgorithm > 4)
        {
          return MacAlgorithm > 1;
        }

        return 0;
      case 13:
        if (SymmetricCipherAlgorithm > 6)
        {
          return MacAlgorithm > 1;
        }

        return 0;
      default:
        if (SymmetricCipherAlgorithm > 3)
        {
          goto LABEL_40;
        }

        return 0;
    }
  }

  if (a1 <= 7)
  {
    if (a1 != 6)
    {
      goto LABEL_16;
    }

    if (KeyExchangeMethod == 15 || KeyExchangeMethod == 17)
    {
LABEL_26:
      if (SymmetricCipherAlgorithm < 0xA)
      {
        v8 = 543;
LABEL_28:
        if ((v8 >> SymmetricCipherAlgorithm))
        {
          return 0;
        }
      }

      goto LABEL_40;
    }

    return 0;
  }

  if (a1 != 8)
  {
    if (KeyExchangeMethod == 11 || KeyExchangeMethod == 18)
    {
      goto LABEL_26;
    }

    return 0;
  }

  v7 = 0;
  HIDWORD(v10) = KeyExchangeMethod - 1;
  LODWORD(v10) = KeyExchangeMethod - 1;
  v9 = v10 >> 1;
  if (v9 > 8 || ((1 << v9) & 0x191) == 0)
  {
    return v7;
  }

LABEL_32:
  v7 = 0;
  v12 = SymmetricCipherAlgorithm == 2 || SymmetricCipherAlgorithm > 3;
  if (SymmetricCipherAlgorithm != 9 && v12)
  {
LABEL_40:
    if (a1 > 0xD || ((1 << a1) & 0xD3F) != 0)
    {
      return MacAlgorithm != 0;
    }

    return MacAlgorithm > 1;
  }

  return v7;
}

void sslFree(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sslAnalyzeCipherSpecs(uint64_t result)
{
  v1 = *(result + 352);
  *(result + 771) = 0;
  if (*(result + 360))
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sslCipherSuiteGetKeyExchangeMethod(*(v1 + 2 * v3));
      if (result <= 0x12 && ((1 << result) & 0x68000) != 0)
      {
        *(v2 + 771) = 1;
      }

      ++v3;
    }

    while (v3 < *(v2 + 360));
  }

  return result;
}

uint64_t tls_handshake_set_curves(uint64_t a1, unsigned __int16 *a2, unsigned int a3)
{
  v4 = a2;
  v6 = 0;
  if (a3)
  {
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *v8++;
      v6 += tls_handshake_curve_is_supported(v9);
      --v7;
    }

    while (v7);
  }

  sslFree(*(a1 + 112));
  *(a1 + 120) = 0;
  v10 = sslMalloc(2 * v6);
  if (!v10)
  {
    return 4294967188;
  }

  v11 = v10;
  *(a1 + 120) = v6;
  *(a1 + 112) = v10;
  if (a3)
  {
    v12 = a3;
    do
    {
      v14 = *v4++;
      v13 = v14;
      if (tls_handshake_curve_is_supported(v14))
      {
        *v11++ = v13;
      }

      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t CCSymmAEADSetIV(void *a1, void *a2)
{
  if (a2 && *a2)
  {
    *(a2 + 20) = *a1;
    v4 = a2[1];
    v6 = a2[4];
    v5 = a2[5];

    return MEMORY[0x2A1C74508]();
  }

  else
  {
    __ssl_debug("sslError", "CCSymmAEADSetIV", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAesGcmCipher.c", 99, "CCSymmAEADSetIV: NULL cipherCtx\n", v2, v3);
    return 4294957296;
  }
}

uint64_t tls_record_parse_header(uint64_t a1, unint64_t a2, _BYTE *a3, void *a4, _BYTE *a5)
{
  v5 = 5;
  if (*(a1 + 488))
  {
    v5 = 13;
  }

  if (a2 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = SSLDecodeInt(&a3[v5 - 2], 2);
  result = 0;
  if (a5)
  {
    *a5 = *a3;
  }

  return result;
}

uint64_t SSLDecodeInt(unsigned __int8 *a1, uint64_t a2)
{
  for (i = 0; a2; --a2)
  {
    v3 = *a1++;
    i = v3 | (i << 8);
  }

  return i;
}

uint64_t tls_record_decrypt(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, _BYTE *a5)
{
  v25[2] = *MEMORY[0x29EDCA608];
  v5 = 5;
  if (*(a1 + 488))
  {
    v5 = 13;
  }

  if (a2 < v5)
  {
    goto LABEL_10;
  }

  v12 = a3 + 3;
  v11 = *a3;
  if (*(a1 + 488))
  {
    v13 = SSLDecodeUInt64(a3 + 3, 8);
    v12 = a3 + 11;
  }

  else
  {
    v13 = 0;
  }

  v14 = SSLDecodeInt(v12, 2);
  v15 = v14;
  __n = v14;
  __src = v12 + 2;
  v16 = 5;
  if (*(a1 + 488))
  {
    v16 = 13;
  }

  if (a2 < v16 + v14)
  {
    goto LABEL_10;
  }

  if (*(a1 + 488))
  {
    if ((*(a1 + 40) ^ v13) >> 48)
    {
      result = 4294957287;
      goto LABEL_11;
    }

    *(a1 + 40) = v13;
  }

  v19 = *(a1 + 16);
  if (*(*v19 + 1) == 2)
  {
    if (v15 < 0x18)
    {
      result = 4294957288;
      goto LABEL_11;
    }

    v20 = *(a1 + 24);
    if (v19[3]())
    {
      goto LABEL_10;
    }

    memset(v25, 170, 13);
    SSLEncodeUInt64(v25, *(a1 + 40));
    v21 = *(v12 - 1);
    LOWORD(v25[1]) = *(v12 - 3);
    BYTE2(v25[1]) = v21;
    *(&v25[1] + 3) = bswap32(v15 - 24) >> 16;
    if ((*(*(a1 + 16) + 40))(v25, 13, *(a1 + 24)))
    {
      goto LABEL_10;
    }
  }

  result = SSLDecryptRecord(v11, &__n, a1);
  if (result)
  {
    goto LABEL_11;
  }

  v22 = __n;
  if (*a4 < __n)
  {
LABEL_10:
    result = 4294967246;
  }

  else
  {
    *a4 = __n;
    memcpy(*(a4 + 8), __src, v22);
    IncrementUInt64((a1 + 40));
    result = 0;
    if (a5)
    {
      *a5 = v11;
    }
  }

LABEL_11:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SSLDecryptRecord(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  *&v42 = 0xAAAAAAAAAAAAAAAALL;
  *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a3 + 16);
  v7 = (*v6)[1];
  if (!v7)
  {
    if ((v6[4])(a2[1], a2[1], *a2, *(a3 + 24)))
    {
LABEL_16:
      result = 4294957290;
      goto LABEL_54;
    }

    v10 = a2[1];
    v11 = **(a3 + 8);
    v33 = *a2 >= v11;
    v12 = *a2 - v11;
    *&v42 = v12;
    *(&v42 + 1) = v10;
    if (!v33)
    {
      goto LABEL_22;
    }

    if (!v11)
    {
      goto LABEL_17;
    }

    v13 = !SSLVerifyMac(a1, &v42, 0, v10 + v12, a3);
LABEL_50:
    if (v13)
    {
      result = 4294957289;
    }

    else
    {
      result = 0;
    }

    goto LABEL_53;
  }

  if (v7 != 1)
  {
    if (v7 != 2)
    {
      result = 2863311530;
LABEL_53:
      *a2 = v42;
      goto LABEL_54;
    }

    if (!(v6[7])(a2[1] + 8, a2[1] + 8, *a2 - 8, *(a3 + 24)))
    {
      v8 = a2[1] + 8;
      v33 = *a2 >= 0x18;
      *&v42 = *a2 - 24;
      *(&v42 + 1) = v8;
      if (!v33)
      {
LABEL_22:
        result = 4294957292;
        goto LABEL_54;
      }

LABEL_17:
      result = 0;
      goto LABEL_53;
    }

    goto LABEL_16;
  }

  if (!(*a2 % *(*v6 + 10)))
  {
    v14 = *(a3 + 24);
    v15 = (v6[4])(a2[1], a2[1]);
    if (v15)
    {
      goto LABEL_16;
    }

    v16 = *(a3 + 492);
    v17 = a2[1];
    if (v16 < 0x302)
    {
      v21 = **(a3 + 8);
      v20 = v21;
      v19 = a2[1];
    }

    else
    {
      v18 = *(**(a3 + 16) + 10);
      v19 = v17 + v18;
      v20 = **(a3 + 8);
      v21 = v20 + v18;
    }

    v22 = *a2;
    v23 = *a2 + ~v21;
    *&v42 = v23;
    *(&v42 + 1) = v19;
    if (v23 > v22)
    {
      goto LABEL_22;
    }

    v24 = *(v17 + v22 - 1);
    if (v16 == 768)
    {
      v25 = *(**(a3 + 16) + 10) - 1;
    }

    else
    {
      v25 = 255;
    }

    if (v25 >= v23)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    v27 = v26 >= v24;
    if (v26 < v24)
    {
      v28 = 0;
    }

    else
    {
      v28 = -1;
    }

    v29 = v26 & ~v28 | v28 & v24;
    if (v16 != 768 && v26)
    {
      v30 = 0;
      v31 = (v22 + v17 - 1);
      do
      {
        v32 = *v31--;
        v33 = v32 == v29 || v30 >= v29;
        v34 = v30 + 1;
        if (!v33)
        {
          v27 = 0;
        }

        ++v30;
      }

      while (v26 != v34);
    }

    if (v20)
    {
      v41 = &v41;
      MEMORY[0x2A1C7C4A8](v15);
      memset(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v20);
      v35 = **(a3 + 8);
      bzero(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
      v36 = 0;
      v37 = a2[1] + ~v35 + *a2 - v26;
      do
      {
        v38 = 0;
        if (v36 == v26 - v29)
        {
          v39 = -1;
        }

        else
        {
          v39 = 0;
        }

        do
        {
          *(&v41 + v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0)) = *(&v41 + v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0)) & ~v39 | v39 & *(v37 + v38);
          ++v38;
        }

        while (v20 != v38);
        ++v36;
        ++v37;
      }

      while (v36 <= v35 + v26 - v20);
      v27 &= SSLVerifyMac(a1, &v42, v29, &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
      *&v42 = v23 - v29;
    }

    v13 = v27 == 0;
    goto LABEL_50;
  }

  result = 4294957288;
LABEL_54:
  v40 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SSLEncodeUInt64(uint64_t a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  for (i = 3; i != -1; --i)
  {
    *(a1 + i) = v2;
    v2 >>= 8;
  }

  v4 = a2;
  for (j = 7; j != 3; --j)
  {
    *(a1 + j) = v4;
    v4 >>= 8;
  }

  return a1 + 8;
}

uint64_t CCSymmAddADD(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 && *a3)
  {
    v5 = a3[1];

    return MEMORY[0x2A1C744F8]();
  }

  else
  {
    __ssl_debug("sslError", "CCSymmAddADD", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAesGcmCipher.c", 187, "CCSymmAddADD: NULL cipherCtx\n", v3, v4);
    return 4294957296;
  }
}

uint64_t CCSymmAEADDecrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a4 && *a4)
  {
    v18 = *(a1 + a3 - 16);
    v5 = a4[1];
    v6 = ccgcm_update();
    v7 = *a4;
    v8 = a4[1];
    v9 = ccgcm_finalize() | v6;
    v10 = *a4;
    v11 = a4[1];
    v12 = ccgcm_reset();
    v13 = *a4;
    v14 = a4[1];
    v15 = v9 | v12 | ccgcm_inc_iv();
    if (v15)
    {
      cc_clear();
    }
  }

  else
  {
    puts("CCSymmAEADDecrypt: NULL cipherCtx");
    v15 = 0xFFFFFFFFLL;
  }

  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t tls_record_encrypted_size(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 490) == 1)
  {
    if (*(a1 + 492) < 0x302u)
    {
      v4 = ((a2 == 23) & *(a1 + 489)) & (*(**(a1 + 112) + 4) == 1);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = (a3 - v4) >> 14;
  v6 = (a3 - v4) & 0x3FFF;
  v7 = tls_record_encrypted_size_1(a1, 0x4000);
  v8 = tls_record_encrypted_size_1(a1, 1) * v4 + v5 * v7;
  if (v6)
  {
    v8 += tls_record_encrypted_size_1(a1, v6);
  }

  return v8;
}

uint64_t tls_record_encrypted_size_1(uint64_t a1, uint64_t a2)
{
  v2 = **(a1 + 112);
  v3 = *(v2 + 4);
  if (v3)
  {
    if (v3 == 2)
    {
      a2 += 24;
    }

    else if (v3 == 1)
    {
      v4 = *(v2 + 10);
      v5 = **(a1 + 104) + a2;
      v6 = v5 / v4 * v4 - v5;
      v7 = v4 + v5;
      if (*(a1 + 492) <= 0x301u)
      {
        v4 = 0;
      }

      a2 = v7 + v4 + v6;
    }
  }

  else
  {
    a2 += **(a1 + 104);
  }

  v8 = 5;
  if (*(a1 + 488))
  {
    v8 = 13;
  }

  return v8 + a2;
}

uint64_t tls_record_encrypt(uint64_t a1, unint64_t a2, char *a3, int a4, unint64_t *a5)
{
  v34[2] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = a4;
    v6 = a2;
    v8 = *a5;
    v9 = a5[1];
    if (*(a1 + 490) == 1)
    {
      if (*(**(a1 + 112) + 4) == 1)
      {
        v10 = (a4 == 23) & *(a1 + 489);
      }

      else
      {
        v10 = 0;
      }

      if (*(a1 + 492) >= 0x302u)
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 490) = a4 == 23;
    v29 = a4;
    while (1)
    {
      v12 = 0x4000;
      if (v6 < 0x4000)
      {
        v12 = v6;
      }

      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v14 = tls_record_encrypted_size_1(a1, v13);
      if (v8 < v14)
      {
        result = 4294967246;
        goto LABEL_49;
      }

      v30 = *(a1 + 112);
      v15 = (*v30)[1];
      v16 = *(*v30 + 10);
      if (*(a1 + 488))
      {
        v17 = -13;
      }

      else
      {
        v17 = -5;
      }

      *v9 = v5;
      v18 = SSLEncodeInt((v9 + 1), *(a1 + 492), 2);
      if (*(a1 + 488) == 1)
      {
        v18 = SSLEncodeUInt64(v18, *(a1 + 136));
      }

      v19 = (v17 + v14);
      v20 = SSLEncodeInt(v18, v19, 2);
      v21 = v20;
      if (*(a1 + 492) >= 0x302u && v15 == 1)
      {
        result = (**(a1 + 496))();
        if (result)
        {
          goto LABEL_49;
        }

        v21 += v16;
        v33 = v21;
      }

      else
      {
        v33 = v20;
        if (v15 == 2)
        {
          result = (*(*(a1 + 112) + 32))(v20, *(a1 + 120));
          if (result)
          {
            goto LABEL_49;
          }

          result = (*(*(a1 + 112) + 24))(v21, *(a1 + 120));
          if (result)
          {
            goto LABEL_49;
          }

          memset(v34, 170, 13);
          SSLEncodeUInt64(v34, *(a1 + 136));
          v22 = *(v21 - 3);
          LOWORD(v34[1]) = *(v21 - 5);
          BYTE2(v34[1]) = v22;
          *(&v34[1] + 3) = bswap32(v13) >> 16;
          result = (*(*(a1 + 112) + 40))(v34, 13, *(a1 + 120));
          if (result)
          {
            goto LABEL_49;
          }

          memcpy((v21 + 8), a3, v13);
          v32 = v19;
          result = (v30[6])(v21, v21, v19, *(a1 + 120));
          v5 = v29;
          if (result)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }
      }

      memcpy(v21, a3, v13);
      v32 = v13;
      if (**(a1 + 104))
      {
        result = SSLComputeMac(v29, &v32, 0, v21 + v13, (a1 + 104), *(a1 + 492));
        if (result)
        {
          goto LABEL_49;
        }
      }

      if (*(a1 + 492) >= 0x302u && v15 == 1)
      {
        v32 = v19;
        v33 -= v16;
        v5 = v29;
      }

      else
      {
        v32 = v19;
        v5 = v29;
        if (!v15)
        {
          v23 = v30;
          goto LABEL_45;
        }

        if (v15 != 1)
        {
          result = 4294957296;
          goto LABEL_49;
        }
      }

      v23 = v30;
      v24 = v16 + ~((**(a1 + 104) + v13) % v16);
      if (v24 >= 0)
      {
        v25 = 0;
        v26 = -1;
        do
        {
          *(v33 + v32 + v26) = v24;
          ++v25;
          --v26;
        }

        while (v25 <= v24);
        v19 = v32;
      }

LABEL_45:
      result = (v23[3])(v33, v33, v19, *(a1 + 120));
      if (result)
      {
        goto LABEL_49;
      }

LABEL_46:
      IncrementUInt64((a1 + 136));
      v10 = 0;
      a3 += v13;
      v9 += v14;
      v8 -= v14;
      v6 -= v13;
      if (!v6)
      {
        result = 0;
        *a5 -= v8;
        goto LABEL_49;
      }
    }
  }

  result = 0;
LABEL_49:
  v27 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t SSLEncodeInt(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      *(a1 - 1 + v3) = a2;
      a2 >>= 8;
      --v3;
    }

    while (v3);
  }

  return a1 + a3;
}

uint64_t CCSymmAEADGetIV(void *a1, void *a2)
{
  if (a2 && *a2)
  {
    result = 0;
    *a1 = *(a2 + 20);
  }

  else
  {
    __ssl_debug("sslError", "CCSymmAEADGetIV", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAesGcmCipher.c", 115, "CCSymmAEADSetIV: NULL cipherCtx\n", v2, v3);
    return 4294957296;
  }

  return result;
}

uint64_t CCSymmAEADEncrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a4 && *a4)
  {
    v5 = a4[1];
    v6 = ccgcm_update();
    v7 = *a4;
    v8 = a4[1];
    v9 = ccgcm_finalize() | v6;
    v10 = *a4;
    v11 = a4[1];
    v12 = ccgcm_reset();
    v13 = *a4;
    v14 = a4[1];
    return v9 | v12 | ccgcm_inc_iv();
  }

  else
  {
    __ssl_debug("sslError", "CCSymmAEADEncrypt", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAesGcmCipher.c", 134, "CCSymmAEADEncrypt: NULL cipherCtx\n");
    return 4294957296;
  }
}

uint64_t tls_handshake_set_sigalgs(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  LODWORD(v3) = a3;
  v4 = a2;
  if (a3)
  {
    v6 = 0;
    v7 = a3;
    v8 = a2;
    do
    {
      v9 = *v8++;
      v6 += tls_handshake_sigalg_is_supported(v9);
      --v7;
    }

    while (v7);
    v10 = 8 * v6;
  }

  else
  {
    v10 = 0;
  }

  sslFree(*(a1 + 808));
  *(a1 + 800) = 0;
  v11 = sslMalloc(v10);
  *(a1 + 808) = v11;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 4294967188;
  }

  if (v11 && v3)
  {
    v3 = v3;
    do
    {
      if (tls_handshake_sigalg_is_supported(*v4))
      {
        v13 = *(a1 + 808);
        v14 = *(a1 + 800);
        *(a1 + 800) = v14 + 1;
        *(v13 + 8 * v14) = *v4;
      }

      ++v4;
      --v3;
    }

    while (v3);
    return 0;
  }

  return result;
}

uint64_t tls_handshake_sigalg_is_supported(uint64_t a1)
{
  if (((HIDWORD(a1) - 1) & 0xFFFFFFFD) != 0)
  {
    return 0;
  }

  else
  {
    return (a1 < 7) & (0x74u >> a1);
  }
}

unsigned __int16 *tls_record_create(char a1, uint64_t a2)
{
  v4 = sslMalloc(0x1F8uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 62) = 0;
    *(v4 + 29) = 0u;
    *(v4 + 30) = 0u;
    *(v4 + 27) = 0u;
    *(v4 + 28) = 0u;
    *(v4 + 25) = 0u;
    *(v4 + 26) = 0u;
    *(v4 + 23) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 21) = 0u;
    *(v4 + 22) = 0u;
    *(v4 + 19) = 0u;
    *(v4 + 20) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 18) = 0u;
    *(v4 + 15) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 13) = 0u;
    *(v4 + 14) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 12) = 0u;
    *(v4 + 9) = 0u;
    *(v4 + 10) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    *(v4 + 123) = 0;
    *v4 = 0;
    *(v4 + 13) = sslCipherSuiteGetDigestInfo(0);
    *(v5 + 1) = sslCipherSuiteGetDigestInfo(*v5);
    *(v5 + 2) = sslCipherSuiteGetSymmetricCipher(*v5);
    *(v5 + 14) = sslCipherSuiteGetSymmetricCipher(*v5);
    *(v5 + 32) = 0;
    *(v5 + 128) = 1;
    *(v5 + 488) = a1;
    *(v5 + 62) = a2;
  }

  return v5;
}

void *sslCipherSuiteGetDigestInfo(int a1)
{
  MacAlgorithm = sslCipherSuiteGetMacAlgorithm(a1);
  if (MacAlgorithm <= 1)
  {
    if (!MacAlgorithm)
    {
      return &null_di;
    }

    if (MacAlgorithm != 1)
    {
      goto LABEL_20;
    }

    return ccmd5_di();
  }

  else
  {
    switch(MacAlgorithm)
    {
      case 2:

        return ccsha1_di();
      case 3:

        return ccsha256_di();
      case 4:

        return ccsha384_di();
      default:
LABEL_20:
        __ssl_debug("sslError", "sslCipherSuiteGetDigestInfo", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/tls_record.c", 64, "Invalid hashAlgorithm %d", MacAlgorithm);
        return 0;
    }
  }
}

_UNKNOWN **sslCipherSuiteGetSymmetricCipher(int a1)
{
  v1 = sslCipherSuiteGetSymmetricCipherAlgorithm(a1) - 4;
  if (v1 > 4)
  {
    return &SSLCipherNull;
  }

  else
  {
    return off_29EEA6948[v1];
  }
}

char *tls_private_key_create(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sslMalloc(0x30uLL);
  if (result)
  {
    *result = a2;
    *(result + 1) = a3;
    v7 = *a1;
    *(result + 4) = *a1;
    if (v7 > 1)
    {
      sslFree(result);
      return 0;
    }

    else
    {
      v8 = *(a1 + 8);
      *(result + 5) = *(a1 + 24);
      *(result + 24) = v8;
    }
  }

  return result;
}

uint64_t tls_handshake_set_identity(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  SSLFreeCertificates(*(a1 + 56));
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = v6[1];
    if (v7 && *v6)
    {
      v7();
    }

    sslFree(v6);
  }

  if (a2)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    tls_copy_buffer_list(a2, &v11);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 56) = v8;
  if (a3)
  {
    v9 = tls_private_key_create((a3 + 2), *a3, a3[1]);
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 32) = v9;
  return 0;
}

uint64_t tls_free_buffer_list(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = v1[2];
      if (v3)
      {
        free(v3);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t tls_copy_buffer_list(uint64_t **a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v6 = malloc_type_malloc(0x18uLL, 0x7E6F9180uLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      *v6 = 0;
      v8 = v3[1];
      v9 = sslAllocCopy(v3[2], v8);
      v7[2] = v9;
      if (!v9)
      {
        free(v7);
        break;
      }

      v7[1] = v8;
      v10 = v7;
      if (v5)
      {
        *v4 = v7;
        v10 = v5;
      }

      v3 = *v3;
      v4 = v7;
      v5 = v10;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    tls_free_buffer_list(v5);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = 0;
LABEL_10:
    result = 0;
    *a2 = v10;
  }

  return result;
}

void *sslAllocCopy(const void *a1, size_t size)
{
  result = malloc_type_malloc(size, 0x7E6F9180uLL);
  if (result)
  {

    return memmove(result, a1, size);
  }

  return result;
}

void tls_private_key_destroy(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      v2();
    }
  }

  sslFree(a1);
}

uint64_t SSLAllocBuffer(size_t *a1, size_t size)
{
  v4 = malloc_type_malloc(size, 0x7E6F9180uLL);
  if (v4)
  {
    v5 = size;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  *a1 = v5;
  a1[1] = v4;
  return v6;
}

uint64_t SSLFreeBuffer(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  result = 0;
  *a1 = 0;
  a1[1] = 0;
  return result;
}

uint64_t SSLResetFlight(uint64_t a1)
{
  *(a1 + 204) = 0;
  if (*(a1 + 16) == 1)
  {
    (*(*(a1 + 1112) + 24))(*(a1 + 1104), 0);
  }

  v2 = *(a1 + 664);
  *(a1 + 672) = 0;
  if (v2)
  {
    while (1)
    {
      result = SSLFreeBuffer(v2 + 1);
      if (result)
      {
        break;
      }

      v4 = *v2;
      sslFree(v2);
      v2 = v4;
      if (!v4)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    result = 0;
    *(a1 + 664) = 0;
  }

  return result;
}

uint64_t CloseHash(uint64_t a1, void *a2)
{
  if (!a2[1])
  {
    return 0;
  }

  result = (*(a1 + 40))(a2);
  if (!result)
  {

    return SSLFreeBuffer(a2);
  }

  return result;
}

void tls_record_destroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    (*(v2 + 8))(a1[3]);
  }

  v3 = a1[14];
  if (v3)
  {
    (*(v3 + 8))(a1[15]);
  }

  v4 = a1[26];
  if (v4)
  {
    (*(v4 + 8))(a1[27]);
  }

  v5 = a1[38];
  if (v5)
  {
    (*(v5 + 8))(a1[39]);
  }

  v6 = a1[50];
  if (v6)
  {
    (*(v6 + 8))(a1[51]);
  }

  sslFree(a1);
}

uint64_t SessionCacheCleanup(void **a1)
{
  v2 = time(0);
  v3 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = 0;
    do
    {
      if (v3[5] >= v4)
      {
        v5 = 1;
        a1 = v3;
      }

      else
      {
        *a1 = *v3;
        SSLFreeBuffer(v3 + 1);
        SSLFreeBuffer(v3 + 3);
        sslFree(v3);
      }

      v3 = *a1;
    }

    while (*a1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t SSLSendAlert(char a1, int a2, uint64_t a3)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (!*a3 || (*(a3 + 704) & 1) != 0)
  {
    return 0;
  }

  v8 = 2;
  v4 = SSLAllocBuffer(&v8, 2uLL);
  if (!v4)
  {
    *v9 = a1;
    v9[1] = a2;
    v4 = (**(a3 + 1112))(*(a3 + 1104), v8, v9, 21);
    SSLFreeBuffer(&v8);
    if (!a2)
    {
      *(a3 + 704) = 1;
    }
  }

  return v4;
}

uint64_t tls_handshake_close(uint64_t a1)
{
  result = SSLSendAlert(1, 0, a1);
  *(a1 + 380) = 3;
  return result;
}

void tls_handshake_destroy(uint64_t a1)
{
  tls_metric_destroyed(a1);
  SSLResetFlight(a1);
  CloseHash(&SSLHashSHA1, (a1 + 568));
  CloseHash(&SSLHashMD5, (a1 + 584));
  CloseHash(&SSLHashSHA256, (a1 + 600));
  CloseHash(&SSLHashSHA384, (a1 + 616));
  CloseHash(&SSLHashSHA512, (a1 + 632));
  sslFreePubKey(a1 + 40);
  sslFreePubKey(a1 + 168);
  SSLFreeBuffer((a1 + 648));
  SSLFreeBuffer((a1 + 248));
  SSLFreeBuffer((a1 + 288));
  SSLFreeBuffer((a1 + 304));
  SSLFreeBuffer((a1 + 712));
  SSLFreeBuffer((a1 + 736));
  SSLFreeBuffer((a1 + 504));
  SSLFreeBuffer((a1 + 80));
  SSLFreeBuffer((a1 + 128));
  SSLFreeBuffer((a1 + 936));
  SSLFreeBuffer((a1 + 952));
  SSLFreeBuffer((a1 + 976));
  SSLFreeBuffer((a1 + 992));
  SSLFreeBuffer((a1 + 856));
  SSLFreeBuffer((a1 + 872));
  SSLFreeBuffer((a1 + 912));
  SSLFreeBuffer((a1 + 896));
  SSLFreeBuffer((a1 + 392));
  SSLFreeBuffer((a1 + 1048));
  SSLFreeBuffer((a1 + 1016));
  tls_free_buffer_list(*(a1 + 1032));
  tls_free_buffer_list(*(a1 + 1072));
  sslFree(*(a1 + 408));
  sslFree(*(a1 + 352));
  sslFree(*(a1 + 368));
  sslFree(*(a1 + 112));
  sslFree(*(a1 + 792));
  sslFree(*(a1 + 808));
  sslFree(*(a1 + 776));
  sslFree(*(a1 + 152));
  sslFree(*(a1 + 96));
  sslFree(*(a1 + 104));
  sslFree(*(a1 + 1080));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[1];
    if (v3 && *v2)
    {
      v3();
    }

    sslFree(v2);
  }

  SSLFreeCertificates(*(a1 + 56));
  SSLFreeCertificates(*(a1 + 64));
  if ((*(a1 + 17) & 1) == 0)
  {
    SSLFreeCertificates(*(a1 + 384));
  }

  free(a1);
}

void tls_metric_destroyed(uint64_t a1)
{
  if (!arc4random_uniform(0x64u))
  {
    if (*(a1 + 17))
    {
      v2 = "server_released";
    }

    else
    {
      v2 = "client_released";
    }

    if (process_identifier___csops_once != -1)
    {
      v5 = v2;
      tls_metric_client_finished_cold_1();
      v2 = v5;
    }

    if (*(a1 + 16))
    {
      v3 = "dtls";
    }

    else
    {
      v3 = "tls";
    }

    v4 = tls_metric_event_new(v2, process_identifier_data, v3);

    free(v4);
  }
}

uint64_t sslFreePubKey(uint64_t a1)
{
  if (a1)
  {
    sslFree(*(a1 + 8));
    *(a1 + 8) = 0;
    sslFree(0);
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t CCSymmFinish(void *a1)
{
  if (a1)
  {
    v2 = (*(*a1 + 8) + ((**a1 + 15) & 0xFFFFFFFFFFFFFFF0) + 15) & 0xFFFFFFFFFFFFFFF0;
    cc_clear();
    sslFree(a1);
  }

  return 0;
}

uint64_t CCSymmFinish_0(uint64_t **a1)
{
  if (a1)
  {
    v2 = a1[1];
    v3 = **a1;
    cc_clear();
    sslFree(a1[1]);
    v5 = a1[4];
    v4 = a1[5];
    cc_clear();
    sslFree(a1[4]);
    sslFree(a1);
  }

  return 0;
}

uint64_t tls_cache_cleanup(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  SessionCacheCleanup(a1);

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t NullCrypt(void *__src, void *__dst, size_t a3)
{
  if (__src != __dst)
  {
    memcpy(__dst, __src, a3);
  }

  return 0;
}

uint64_t tls_handshake_process(uint64_t a1, size_t size, unsigned __int8 *__src, int a4)
{
  v6 = 4294957496;
  if (a4 > 21)
  {
    if (a4 == 128)
    {
      v7 = SSLProcessSSL2Message(size, __src, a1);
    }

    else
    {
      if (a4 != 22)
      {
        return v6;
      }

      v7 = SSLProcessHandshakeRecord(size, __src, a1);
    }
  }

  else if (a4 == 20)
  {
    v7 = SSLProcessChangeCipherSpec(size, __src, a1);
  }

  else
  {
    if (a4 != 21)
    {
      return v6;
    }

    v7 = SSLProcessAlert(size, __src, a1);
  }

  v6 = v7;
  if (v7 == -9849)
  {
    v6 = DTLSRetransmit(a1);
  }

  if (v6)
  {
    __ssl_debug("sslError", "tls_handshake_process", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/tls_handshake.c", 326, "Error processing a message (ct=%d, err=%d)", a4, v6);
  }

  return v6;
}

uint64_t SSLProcessHandshakeRecordInner(size_t size, char *__src, uint64_t a3)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  while (size >= 4)
  {
    v25 = __src;
    v6 = *__src;
    v7 = SSLDecodeSize((__src + 1), 3);
    v8 = size - (v7 + 4);
    if (size < v7 + 4)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v9 = v7;
    v10 = __src + 4;
    v23 = v10;
    v24 = v7 + 4;
    v21[0] = v6;
    v21[1] = 0;
    v22 = v7;
    v11 = SSLProcessHandshakeMessage(v21, a3);
    if (v11)
    {
      return v11;
    }

    if (v6)
    {
      v12 = SSLUpdateHandshakeMacs(&v24, a3);
      if (v12)
      {
        v14 = v12;
        SSLFatalSessionAlert(80, a3);
        return v14;
      }
    }

    __src = &v10[v9];
    *(a3 + 416) = 1;
    *(a3 + 420) = v6;
    v13 = (*(*(a3 + 1112) + 8))(*(a3 + 1104), v6);
    if (v13)
    {
      v14 = v13;
      size = v8;
      if (v8)
      {
        goto LABEL_14;
      }

LABEL_19:
      if (*(a3 + 656))
      {
        v18 = SSLFreeBuffer((a3 + 648));
        if (v18)
        {
          v19 = v18;
          SSLFatalSessionAlert(80, a3);
          return v19;
        }
      }

      return v14;
    }

    v11 = SSLAdvanceHandshake(v6, a3);
    size = v8;
    if (v11)
    {
      return v11;
    }
  }

  v14 = 0;
  if (!size)
  {
    goto LABEL_19;
  }

LABEL_14:
  v15 = *(a3 + 656);
  if (!v15)
  {
    v16 = SSLAllocBuffer((a3 + 648), size);
    if (v16)
    {
      v17 = v16;
      SSLFatalSessionAlert(80, a3);
      return v17;
    }

    v15 = *(a3 + 656);
  }

  if (__src != v15)
  {
    memmove(v15, __src, size);
    *(a3 + 648) = size;
  }

  return v14;
}

unint64_t SSLDecodeSize(unint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  do
  {
    v3 = *v2++;
    result = v3 | (result << 8);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t SSLProcessHandshakeMessage(uint64_t a1, uint64_t a2)
{
  switch(*a1)
  {
    case 0:
      if (*(a2 + 17))
      {
        goto LABEL_45;
      }

      if (*(a1 + 8))
      {
        v3 = 4294957496;
        goto LABEL_50;
      }

      return 0;
    case 1:
      v7 = *(a2 + 380);
      if (v7 == 1)
      {
        goto LABEL_21;
      }

      if (v7 != 16)
      {
        goto LABEL_45;
      }

      if (*(a2 + 321))
      {
LABEL_21:
        v4 = SSLProcessClientHello(*(a1 + 8), *(a1 + 16), a2);
      }

      else
      {
        v4 = SSLSendAlert(1, 100, a2);
      }

      goto LABEL_49;
    case 2:
      if (*(a2 + 380) != 6)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessServerHello(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 3:
      if ((*(a2 + 17) & 1) != 0 || *(a2 + 380) != 6)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessServerHelloVerifyRequest(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 4:
      if (*(a2 + 380) != 13)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessNewSessionTicket(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x15:
      goto LABEL_45;
    case 0xB:
      if ((*(a2 + 380) | 2) != 0xA)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessCertificate(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 0xC:
      v8 = *(a2 + 380);
      if (v8 != 9 && v8 != 7)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessServerKeyExchange(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 0xD:
      if (*(a2 + 380) != 9 || (*(a2 + 432) & 1) != 0)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessCertificateRequest(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 0xE:
      if (*(a2 + 380) != 9)
      {
        goto LABEL_45;
      }

      v10 = *(a1 + 16);
      v4 = SSLProcessServerHelloDone(*(a1 + 8));
      goto LABEL_49;
    case 0xF:
      if (*(a2 + 380) != 12)
      {
        goto LABEL_45;
      }

      v3 = SSLProcessCertificateVerify(*(a1 + 8), *(a1 + 16), a2);
      if (!v3)
      {
        return v3;
      }

      *(a2 + 428) = 3;
      goto LABEL_50;
    case 0x10:
      if (*(a2 + 380) != 11)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessKeyExchange(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 0x14:
      if (*(a2 + 380) != 15)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessFinished(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    case 0x16:
      v5 = *(a2 + 380);
      if (v5 != 9 && v5 != 7)
      {
        goto LABEL_45;
      }

      v4 = SSLProcessCertificateStatus(*(a1 + 8), *(a1 + 16), a2);
      goto LABEL_49;
    default:
      if (*a1 != 67 || *(a2 + 380) != 15)
      {
LABEL_45:
        v11 = 10;
        goto LABEL_46;
      }

      v4 = SSLProcessEncryptedExtension(*(a1 + 8), *(a1 + 16), a2);
LABEL_49:
      v3 = v4;
      if (!v4)
      {
        return v3;
      }

LABEL_50:
      if (*(a2 + 704))
      {
        return v3;
      }

      if (v3 > -9804)
      {
        if (v3 == -9803)
        {
          return v3;
        }

        if (v3 == -9801)
        {
          SSLFatalSessionAlert(40, a2);
          return 4294957495;
        }

        if (v3 != -9800)
        {
          goto LABEL_59;
        }

        v11 = 47;
LABEL_46:
        SSLFatalSessionAlert(v11, a2);
        return 4294957496;
      }

      if ((v3 + 9842) >= 2)
      {
        if (v3 == -9810)
        {
          SSLFatalSessionAlert(80, a2);
          return 4294957486;
        }

LABEL_59:
        SSLFatalSessionAlert(0, a2);
      }

      return v3;
  }
}

uint64_t SSLProcessClientHello(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 0x28)
  {
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1481, "SSLProcessClientHello: msg len error 1\n");
    return 4294957496;
  }

  v7 = SSLDecodeInt(a2, 2);
  *(a3 + 4) = v7;
  v8 = *(a3 + 8);
  if (*(a3 + 16) != 1)
  {
    if (v8 > v7)
    {
      goto LABEL_15;
    }

    v9 = *(a3 + 12);
    v10 = v7;
    if (v9 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v8 < v7)
  {
    goto LABEL_15;
  }

  v9 = *(a3 + 12);
  v10 = v7;
  if (v9 > v7)
  {
LABEL_10:
    v10 = v9;
    if (*(a3 + 17))
    {
      goto LABEL_11;
    }

LABEL_15:
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1490, "SSLProcessClientHello: protocol version error %04x\n", v7);
    return 4294957495;
  }

LABEL_11:
  result = 4294957495;
  if (v10 > 770)
  {
    if (v10 == 771)
    {
      v11 = Tls12Callouts;
      goto LABEL_21;
    }

    if (v10 != 65279)
    {
      return result;
    }

LABEL_19:
    v11 = Tls1Callouts;
    goto LABEL_21;
  }

  if ((v10 - 769) < 2)
  {
    goto LABEL_19;
  }

  if (v10 != 768)
  {
    return result;
  }

  v11 = Ssl3Callouts;
LABEL_21:
  *(a3 + 24) = v11;
  *a3 = v10;
  result = (*(*(a3 + 1112) + 96))(*(a3 + 1104));
  if (result)
  {
    return result;
  }

  v12 = *(a2 + 18);
  *(a3 + 436) = *(a2 + 2);
  *(a3 + 452) = v12;
  v13 = *(a2 + 34);
  if (a1 < v13 + 41)
  {
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1519, "SSLProcessClientHello: msg len error 2\n");
    return 4294957496;
  }

  SSLFreeBuffer((a3 + 288));
  if (v13)
  {
    v14 = SSLCopyBufferFromData((a2 + 35), v13, (a3 + 288));
    v15 = v13;
    if (v14)
    {
      return 4294967188;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = a2 + a1;
  v17 = (a2 + 35 + v15);
  if (*(a3 + 16) == 1)
  {
    v20 = *v17;
    v19 = (v17 + 1);
    v18 = v20;
    v21 = &v19[v20];
    if (v21 > v16)
    {
      __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1539, "SSLProcessClientHello: msg len error 3\n");
      return 4294957496;
    }

    v22 = *(a3 + 184);
    v23 = !v22 || v22 == v18 && !memcmp(*(a3 + 192), v19, v18);
    *(a3 + 200) = v23;
    v17 = v21;
  }

  v24 = SSLDecodeInt(v17, 2);
  v25 = v24;
  if (&v17[v24 + 2] > v16)
  {
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1560, "SSLProcessClientHello: msg len error 4\n");
    return 4294957496;
  }

  v26 = v24;
  if ((v24 & 1) != 0 || v24 < 2u || a1 < v13 + v24 + 39)
  {
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1566, "SSLProcessClientHello: msg len error 5\n");
    return 4294957496;
  }

  sslFree(*(a3 + 368));
  v27 = sslMalloc(v26 & 0xFFFE);
  *(a3 + 368) = v27;
  if (!v27)
  {
    return 4294967188;
  }

  v28 = 0;
  *(a3 + 850) = 0;
  *(a3 + 1065) = 0;
  *(a3 + 376) = v25 >> 1;
  v29 = v17 - a1 - a2 + 3;
  do
  {
    v30 = SSLDecodeInt(v17 + 2, 2);
    *(*(a3 + 368) + 2 * v28) = v30;
    if (v30 == 255)
    {
      *(a3 + 850) = 1;
    }

    if (v30 == 22016)
    {
      *(a3 + 1065) = 1;
    }

    ++v28;
    v17 += 2;
    v29 += 2;
  }

  while (v28 < *(a3 + 376));
  v31 = v17[2];
  if (!v17[2] || a1 < v13 + v25 + v31 + 38)
  {
    __ssl_debug("sslError", "SSLProcessClientHello", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1594, "SSLProcessClientHello: msg len error 6\n");
    return 4294957496;
  }

  v32 = &v17[v17[2] + 3];
  if (v32 < v16)
  {
    SSLProcessClientHelloExtensions(a3, (-v29 - v31), v32);
  }

  if (!*(a3 + 872))
  {
    if (*(a3 + 850))
    {
      v33 = 1;
    }

    else
    {
      v33 = *(a3 + 849);
    }

    *(a3 + 848) = v33;
    goto LABEL_65;
  }

  if (*(a3 + 848) == 1 && ((*(a3 + 850) & 1) != 0 || (*(a3 + 849) & 1) == 0))
  {
    return 4294957495;
  }

LABEL_65:

  return SSLInitMessageHashes(a3);
}

void SSLProcessClientHelloExtensions(uint64_t a1, unsigned int a2, unsigned __int8 *a3)
{
  if (a2 <= 1)
  {
    v3 = "SSLProcessClientHelloExtensions";
    v4 = "SSLProcessClientHelloExtensions: need a least 2 bytes\n";
    v5 = 1380;
    goto LABEL_5;
  }

  v7 = a2;
  *(a1 + 1009) = 0;
  SSLFreeBuffer((a1 + 392));
  *(a1 + 769) = 0;
  v9 = SSLDecodeInt(a3, 2);
  if (v9 > (v7 - 2))
  {
    v3 = "SSLProcessClientHelloExtensions";
    v4 = "SSLProcessClientHelloExtensions: ext len error 1\n";
    v5 = 1395;
    goto LABEL_5;
  }

  v10 = v9;
  if (v9 < (v7 - 2))
  {
    __ssl_debug("sslError", "SSLProcessClientHelloExtensions", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", 1400, "Warning: SSLProcessClientHelloExtensions: Too many bytes\n");
  }

  if (v10)
  {
    v11 = a3 + 2;
    do
    {
      if (v10 <= 3u)
      {
        v3 = "SSLProcessClientHelloExtensions";
        v4 = "SSLProcessClientHelloExtensions: ext len error\n";
        v5 = 1408;
        goto LABEL_5;
      }

      v12 = SSLDecodeInt(v11, 2);
      v13 = SSLDecodeInt(v11 + 2, 2);
      v14 = v13;
      v15 = v13 + 4;
      if (v15 > v10)
      {
        v3 = "SSLProcessClientHelloExtensions";
        v4 = "SSLProcessClientHelloExtension: ext len error 2\n";
        v5 = 1416;
        goto LABEL_5;
      }

      v16 = v13;
      v17 = v11 + 4;
      if (v12 > 0x11u)
      {
        if (v12 > 0x3373u)
        {
          if (v12 == 13172)
          {
            if (*(a1 + 930))
            {
              return;
            }

            if (v13)
            {
              v3 = "SSLProcessClientHelloExtension_NPN";
              v4 = "SSLProcessClientHelloExtension_NPN: length decode error 1\n";
              v5 = 1147;
              goto LABEL_5;
            }

            *(a1 + 930) = 1;
          }

          else if (v12 == 65281)
          {
            *(a1 + 849) = 0;
            v32 = *(a1 + 872);
            if (v32 + 1 != v13 || v32 != *v17 || memcmp(v11 + 5, *(a1 + 880), v32))
            {
              return;
            }

            *(a1 + 849) = 1;
          }
        }

        else if (v12 == 18)
        {
          if (v13)
          {
            v3 = "SSLProcessClientHelloExtension_SCT";
            v4 = "SSLProcessClientHelloExtension_SCT: length decode error 1\n";
            v5 = 1160;
            goto LABEL_5;
          }

          *(a1 + 1067) = 1;
        }

        else if (v12 == 23)
        {
          *(a1 + 769) = 1;
        }
      }

      else if (v12 > 9u)
      {
        if (v12 == 10)
        {
          if (v13 <= 1u)
          {
            v3 = "SSLProcessClientHelloExtension_EllipticCurves";
            v4 = "SSLProcessClientHelloExtension_SignatureAlgorithms: length decode error 1\n";
            v5 = 1322;
            goto LABEL_5;
          }

          v40 = SSLDecodeInt(v11 + 4, 2);
          if (v40 != (v16 - 2) || v40 < 2 || (v40 & 1) != 0)
          {
            return;
          }

          *(a1 + 1088) = v40 >> 1;
          sslFree(*(a1 + 1080));
          *(a1 + 1080) = sslMalloc(2 * *(a1 + 1088));
          if (*(a1 + 1088))
          {
            v41 = 0;
            v42 = v11 + 6;
            do
            {
              *(*(a1 + 1080) + 2 * v41++) = SSLDecodeInt(v42, 2);
              v42 += 2;
            }

            while (v41 < *(a1 + 1088));
          }
        }

        else if (v12 == 13)
        {
          if (v13 <= 1u)
          {
            v3 = "SSLProcessClientHelloExtension_SignatureAlgorithms";
            v4 = "SSLProcessClientHelloExtension_SignatureAlgorithms: length decode error 1\n";
            v5 = 1287;
            goto LABEL_5;
          }

          v25 = SSLDecodeInt(v11 + 4, 2);
          if (v16)
          {
            return;
          }

          v26 = (v16 - 2);
          if (v25 != v26 || (v25 & 1) != 0)
          {
            return;
          }

          *(a1 + 788) = v26 >> 1;
          sslFree(*(a1 + 792));
          v27 = sslMalloc(8 * *(a1 + 788));
          *(a1 + 792) = v27;
          v28 = *(a1 + 788);
          if (v28)
          {
            v29 = v27 + 4;
            v30 = v11 + 7;
            do
            {
              *(v29 - 1) = *(v30 - 1);
              v31 = *v30;
              v30 += 2;
              *v29 = v31;
              v29 += 2;
              --v28;
            }

            while (v28);
          }
        }
      }

      else if (v12)
      {
        if (v12 == 5)
        {
          if (!v13)
          {
            v3 = "SSLProcessClientHelloExtension_StatusRequest";
            v4 = "SSLProcessClientHelloExtension_StatusRequest: length decode error 1\n";
            v5 = 1175;
            goto LABEL_5;
          }

          if (*(a1 + 1008) == 1 && v11[4] == 1)
          {
            if (v13 <= 2u)
            {
              v3 = "SSLProcessClientHelloExtension_StatusRequest";
              v4 = "SSLProcessClientHelloExtension_StatusRequest: length decode error 2\n";
              v5 = 1186;
              goto LABEL_5;
            }

            v18 = SSLDecodeSize((v11 + 5), 2);
            v19 = v16 - 3;
            if (v18 > v19)
            {
              v3 = "SSLProcessClientHelloExtension_StatusRequest";
              v4 = "SSLProcessClientHelloExtension_StatusRequest: length decode error 3\n";
              v5 = 1192;
              goto LABEL_5;
            }

            v20 = v18;
            v21 = v11 + 7;
            if (SSLDecodeBufferList(v21, v18, 2, (a1 + 1032)))
            {
              return;
            }

            v22 = v19 - v20;
            if (v22 <= 1u)
            {
              v3 = "SSLProcessClientHelloExtension_StatusRequest";
              v4 = "SSLProcessClientHelloExtension_StatusRequest: length decode error 4\n";
              v5 = 1202;
              goto LABEL_5;
            }

            v23 = &v21[v20];
            v24 = SSLDecodeSize(v23, 2);
            if (v24 != (v22 - 2))
            {
              v3 = "SSLProcessClientHelloExtension_StatusRequest";
              v4 = "SSLProcessClientHelloExtension_StatusRequest: length decode error 5\n";
              v5 = 1209;
              goto LABEL_5;
            }

            SSLCopyBufferFromData((v23 + 2), v24, (a1 + 1016));
            *(a1 + 1009) = 1;
          }
        }
      }

      else
      {
        if (v13 <= 1u)
        {
          v3 = "SSLProcessClientHelloExtension_ServerName";
          v4 = "SSLProcessClientHelloExtension_ServerName: length decode error 1\n";
          v5 = 1226;
          goto LABEL_5;
        }

        v33 = v13 - 2;
        if (SSLDecodeSize((v11 + 4), 2) != (v13 - 2))
        {
          v3 = "SSLProcessClientHelloExtension_ServerName";
          v4 = "SSLProcessClientHelloExtension_ServerName: length decode error 2\n";
          v5 = 1232;
          goto LABEL_5;
        }

        if (v33)
        {
          v34 = (v11 + 6);
          while (1)
          {
            if (v33 <= 2u)
            {
              v3 = "SSLProcessClientHelloExtension_ServerName";
              v4 = "SSLProcessClientHelloExtension_ServerName: length decode error 3\n";
              v5 = 1241;
              goto LABEL_5;
            }

            v35 = v34 + 3;
            v36 = *v34;
            v37 = SSLDecodeSize((v34 + 1), 2);
            v38 = v33 - 3;
            if (v37 > v38)
            {
              break;
            }

            v39 = v37;
            if (!v36)
            {
              SSLFreeBuffer((a1 + 392));
              SSLAllocBuffer((a1 + 392), v39 + 1);
              memcpy(*(a1 + 400), v35, v39);
              *(*(a1 + 400) + v39) = 0;
            }

            v34 = &v35[v39];
            v33 = v38 - v39;
            if (!v33)
            {
              goto LABEL_70;
            }
          }

          v3 = "SSLProcessClientHelloExtension_ServerName";
          v4 = "SSLProcessClientHelloExtension_ServerName: length decode error 4\n";
          v5 = 1249;
LABEL_5:

          __ssl_debug("sslError", v3, "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeHello.c", v5, v4);
          return;
        }
      }

LABEL_70:
      v10 -= v15;
      v11 = &v17[v14];
    }

    while (v10);
  }
}

uint64_t SSLInitMessageHashes(size_t *a1)
{
  result = CloseHash(&SSLHashSHA1, a1 + 71);
  if (!result)
  {
    result = CloseHash(&SSLHashMD5, a1 + 73);
    if (!result)
    {
      result = CloseHash(&SSLHashSHA256, a1 + 75);
      if (!result)
      {
        result = CloseHash(&SSLHashSHA384, a1 + 77);
        if (!result)
        {
          result = CloseHash(&SSLHashSHA512, a1 + 79);
          if (!result)
          {
            result = ReadyHash(&SSLHashSHA1, a1 + 71);
            if (!result)
            {
              result = ReadyHash(&SSLHashMD5, a1 + 73);
              if (!result)
              {
                result = ReadyHash(&SSLHashSHA256, a1 + 75);
                if (!result)
                {
                  result = ReadyHash(&SSLHashSHA384, a1 + 77);
                  if (!result)
                  {

                    return ReadyHash(&SSLHashSHA512, a1 + 79);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ReadyHash(uint64_t a1, size_t *a2)
{
  result = SSLAllocBuffer(a2, *(a1 + 8));
  if (!result)
  {
    v5 = *(a1 + 16);

    return v5(a2);
  }

  return result;
}

uint64_t HashSHA1Init(uint64_t a1)
{
  ccsha1_di();
  v2 = *(a1 + 8);
  ccdigest_init();
  return 0;
}

uint64_t HashMD5Init(uint64_t a1)
{
  ccmd5_di();
  v2 = *(a1 + 8);
  ccdigest_init();
  return 0;
}

uint64_t HashSHA256Init(uint64_t a1)
{
  ccsha256_di();
  v2 = *(a1 + 8);
  ccdigest_init();
  return 0;
}

uint64_t HashSHA384Init(uint64_t a1)
{
  ccsha384_di();
  v2 = *(a1 + 8);
  ccdigest_init();
  return 0;
}

uint64_t HashSHA512Init(uint64_t a1)
{
  ccsha512_di();
  v2 = *(a1 + 8);
  ccdigest_init();
  return 0;
}

uint64_t SSLUpdateHandshakeMacs(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (!*a2)
  {
    v7 = *(a2 + 12);
    if (*(a2 + 16))
    {
      if (v7 >= 0xFEFF)
      {
LABEL_9:
        v6 = 0;
        goto LABEL_12;
      }
    }

    else if (v7 < 0x303)
    {
      goto LABEL_9;
    }

    v6 = 1;
LABEL_12:
    result = (off_2A1EFF3E8[0])(a2 + 584, a1);
    if (result)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (*(a2 + 16))
  {
    v5 = 65279;
  }

  else
  {
    v5 = 770;
  }

  if (*a2 <= v5)
  {
    goto LABEL_9;
  }

  v6 = 1;
LABEL_13:
  result = (off_2A1EFF3B0[0])(a2 + 568, a1);
  if (v6)
  {
    if (!result)
    {
      result = off_2A1EFF378(a2 + 600, a1);
      if (!result)
      {
        result = off_2A1EFF340(a2 + 616, a1);
        if (!result)
        {
          v9 = off_2A1EFF308[0];

          return v9(a2 + 632, a1);
        }
      }
    }
  }

  return result;
}

uint64_t HashSHA1Update(uint64_t a1, uint64_t *a2)
{
  ccsha1_di();
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ccdigest_update();
  return 0;
}

uint64_t HashSHA256Update(uint64_t a1, uint64_t *a2)
{
  ccsha256_di();
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ccdigest_update();
  return 0;
}

uint64_t HashSHA384Update(uint64_t a1, uint64_t *a2)
{
  ccsha384_di();
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ccdigest_update();
  return 0;
}

uint64_t HashSHA512Update(uint64_t a1, uint64_t *a2)
{
  ccsha512_di();
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  ccdigest_update();
  return 0;
}

uint64_t SSLAdvanceHandshake(int a1, uint64_t a2)
{
  SSLResetFlight(a2);
  *(a2 + 416) = 0;
  if (a1 > 11)
  {
    if (a1 <= 14)
    {
      if (a1 == 12)
      {
        goto LABEL_38;
      }

      if (a1 == 13)
      {
        if (*(a2 + 64))
        {
          *(a2 + 432) = 1;
          *(a2 + 428) = 1;
          return SSLSendFlight(a2);
        }

        SSLFatalSessionAlert(40, a2);
        return 4294957496;
      }

      if (!*(a2 + 64))
      {
LABEL_21:
        if (*(a2 + 428) != 1)
        {
LABEL_137:
          v17 = SSLPrepareAndQueueMessage(SSLEncodeKeyExchange, 22, a2);
          if (v17)
          {
            return v17;
          }

          v22 = (*(*(a2 + 24) + 8))(a2);
          if (v22)
          {
            goto LABEL_162;
          }

          v22 = SSLInitPendingCiphers(a2);
          if (v22)
          {
            goto LABEL_162;
          }

          bzero(*(a2 + 512), *(a2 + 504));
          v17 = SSLFreeBuffer((a2 + 504));
          if (v17)
          {
            return v17;
          }

          if (*(a2 + 433) == 1)
          {
            v17 = SSLPrepareAndQueueMessage(SSLEncodeCertificateVerify, 22, a2);
            if (v17)
            {
              return v17;
            }
          }

          v17 = SSLPrepareAndQueueMessage(SSLEncodeChangeCipherSpec, 20, a2);
          if (v17)
          {
            return v17;
          }

          if ((*(a2 + 17) & 1) == 0 && *(a2 + 932) == 1 && (*(a2 + 931) & 1) == 0)
          {
            v17 = SSLPrepareAndQueueMessage(SSLEncodeNPNEncryptedExtensionMessage, 22, a2);
            if (v17)
            {
              return v17;
            }
          }

          v17 = SSLPrepareAndQueueMessage(SSLEncodeFinishedMessage, 22, a2);
          if (v17)
          {
            return v17;
          }

          if (*(a2 + 707) == 1)
          {
            v13 = 13;
            goto LABEL_152;
          }

          goto LABEL_151;
        }

        if (*(a2 + 56))
        {
          v7 = *(a2 + 32);
          if (v7)
          {
            v8 = *(v7 + 16);
            if (v8 == 1)
            {
              v9 = 64;
              goto LABEL_135;
            }

            if (!v8)
            {
              v9 = 1;
LABEL_135:
              *(a2 + 784) = v9;
LABEL_136:
              v17 = SSLPrepareAndQueueMessage(SSLEncodeCertificate, 22, a2);
              if (v17)
              {
                return v17;
              }

              goto LABEL_137;
            }
          }
        }

        *(a2 + 784) = -1;
        if (*a2 < 0x301u)
        {
          v17 = SSLSendAlert(1, 41, a2);
          if (v17)
          {
            return v17;
          }

          goto LABEL_137;
        }

        goto LABEL_136;
      }

      v6 = *(a2 + 72);
      if (v6 <= 1)
      {
        if (!v6)
        {
          goto LABEL_21;
        }

LABEL_46:
        if (v6 == 1)
        {
          v14 = 80;
          v15 = 4294957486;
LABEL_127:
          SSLFatalSessionAlert(v14, a2);
          if (*(a2 + 17) == 1 && *(a2 + 64))
          {
            *(a2 + 428) = 3;
          }

          return v15;
        }

        goto LABEL_126;
      }

LABEL_93:
      if (v6 == 3)
      {
        v14 = 45;
        v15 = 4294957482;
        goto LABEL_127;
      }

      if (v6 == 2)
      {
        v14 = 48;
        v15 = 4294957484;
        goto LABEL_127;
      }

LABEL_126:
      v14 = 46;
      v15 = 4294957489;
      goto LABEL_127;
    }

    if (a1 == 15)
    {
      goto LABEL_151;
    }

    if (a1 == 16)
    {
      v22 = (*(*(a2 + 24) + 8))(a2);
      if (v22)
      {
        goto LABEL_162;
      }

      v22 = SSLInitPendingCiphers(a2);
      if (v22)
      {
        goto LABEL_162;
      }

      bzero(*(a2 + 512), *(a2 + 504));
      v17 = SSLFreeBuffer((a2 + 504));
      if (v17)
      {
        return v17;
      }

      if (*(a2 + 434) == 1)
      {
        v13 = 12;
        goto LABEL_152;
      }

      goto LABEL_151;
    }

    if (a1 != 20)
    {
      return SSLSendFlight(a2);
    }

    if (*(a2 + 17) == 1 && *(a2 + 432) == 1)
    {
      v6 = *(a2 + 72);
      if (v6 > 1)
      {
        goto LABEL_93;
      }

      if (v6)
      {
        goto LABEL_46;
      }
    }

    if ((*(a2 + 322) & 1) == 0)
    {
      *(a2 + 322) = 1;
      (*(*(a2 + 1112) + 16))(*(a2 + 1104), 0, 1);
    }

    if (*(a2 + 325) == 1)
    {
      v17 = SSLPrepareAndQueueMessage(SSLEncodeChangeCipherSpec, 20, a2);
      if (v17)
      {
        return v17;
      }

      if ((*(a2 + 17) & 1) == 0 && *(a2 + 932) == 1 && (*(a2 + 931) & 1) == 0)
      {
        v17 = SSLPrepareAndQueueMessage(SSLEncodeNPNEncryptedExtensionMessage, 22, a2);
        if (v17)
        {
          return v17;
        }
      }

      v17 = SSLPrepareAndQueueMessage(SSLEncodeFinishedMessage, 22, a2);
      if (v17)
      {
        return v17;
      }
    }

    else if ((*(a2 + 323) & 1) == 0)
    {
      *(a2 + 323) = 1;
      (*(*(a2 + 1112) + 16))(*(a2 + 1104), 1, 1);
    }

    if (*(a2 + 17) == 1)
    {
      *(a2 + 380) = 16;
    }

    else
    {
      *(a2 + 380) = 17;
      if ((*(a2 + 320) & 1) == 0)
      {
        tls_metric_client_finished(a2);
      }
    }

    if (*(a2 + 280) == 1 && (*(a2 + 320) != 1 || *(a2 + 720)))
    {
      SSLAddSessionData(a2);
    }

    return SSLSendFlight(a2);
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      goto LABEL_50;
    }

    if (a1 != 4)
    {
      if (a1 != 11)
      {
        return SSLSendFlight(a2);
      }

      if (*(a2 + 17) == 1 && *(a2 + 64))
      {
        *(a2 + 428) = 2;
      }

      v10 = *(a2 + 380);
      if (v10 == 10)
      {
        *(a2 + 380) = 11;
        if (*(a2 + 64))
        {
          *(a2 + 434) = 1;
        }

        return SSLSendFlight(a2);
      }

      if (v10 != 8)
      {
        return SSLSendFlight(a2);
      }

      HIDWORD(v12) = *(a2 + 336) - 1;
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 1;
      if ((v11 - 7) < 2 || v11 == 4)
      {
        goto LABEL_92;
      }

      if (v11)
      {
        return SSLSendFlight(a2);
      }

LABEL_38:
      v13 = 9;
LABEL_152:
      *(a2 + 380) = v13;
      return SSLSendFlight(a2);
    }

LABEL_151:
    v13 = 14;
    goto LABEL_152;
  }

  if (!a1)
  {
    v16 = *(a2 + 380);
    if (v16 != 17 && v16 != 2)
    {
      return 0;
    }

LABEL_50:
    *(a2 + 428) = 0;
    if (*(a2 + 322))
    {
      *(a2 + 322) = 0;
      (*(*(a2 + 1112) + 16))(*(a2 + 1104), 0, 0);
    }

    if (*(a2 + 323))
    {
      *(a2 + 323) = 0;
      (*(*(a2 + 1112) + 16))(*(a2 + 1104), 1, 0);
    }

    v17 = SSLPrepareAndQueueMessage(SSLEncodeClientHello, 22, a2);
    if (v17)
    {
      return v17;
    }

    v13 = 6;
    goto LABEL_152;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return SSLSendFlight(a2);
    }

    *(a2 + 320) = 0;
    v4 = *(a2 + 272);
    if (!v4 || !*(a2 + 312) || (__n = 0xAAAAAAAAAAAAAAAALL, __s1 = 0xAAAAAAAAAAAAAAAALL, SSLRetrieveSessionID(*(a2 + 264), v4, &__n), __n != *(a2 + 304)) || memcmp(__s1, *(a2 + 312), __n))
    {
      v5 = *(a2 + 336);
      if (v5 <= 0x13)
      {
        if (((1 << v5) & 0x28202) != 0)
        {
          v13 = 8;
          goto LABEL_152;
        }

        if (((1 << v5) & 0x40801) == 0)
        {
          if (v5 != 19)
          {
            return SSLSendFlight(a2);
          }

          goto LABEL_38;
        }

LABEL_92:
        v13 = 7;
        goto LABEL_152;
      }

      return SSLSendFlight(a2);
    }

    if (SSLClientValidateSessionDataAfter(*(a2 + 264), *(a2 + 272), a2))
    {
      v15 = 4294957496;
      v25 = 47;
LABEL_163:
      SSLFatalSessionAlert(v25, a2);
      return v15;
    }

    v22 = SSLInstallSessionFromData(*(a2 + 264), *(a2 + 272), a2);
    if (!v22)
    {
      v22 = SSLInitPendingCiphers(a2);
      if (!v22)
      {
        *(a2 + 320) = 1;
        if (*(a2 + 707))
        {
          v13 = 13;
        }

        else
        {
          v13 = 14;
        }

        goto LABEL_152;
      }
    }

LABEL_162:
    v15 = v22;
    v25 = 80;
    goto LABEL_163;
  }

  *(a2 + 320) = 0;
  *(a2 + 428) = 0;
  if (*(a2 + 322))
  {
    *(a2 + 322) = 0;
    (*(*(a2 + 1112) + 16))(*(a2 + 1104), 0, 0);
  }

  if (*(a2 + 323))
  {
    *(a2 + 323) = 0;
    (*(*(a2 + 1112) + 16))(*(a2 + 1104), 1, 0);
  }

  v18 = *(a2 + 16);
  if ((*(a2 + 1065) & 1) == 0)
  {
    goto LABEL_63;
  }

  v19 = *(a2 + 12);
  v20 = *(a2 + 4);
  if (*(a2 + 16))
  {
    if (v19 >= v20)
    {
      goto LABEL_63;
    }

LABEL_106:
    SSLFatalSessionAlert(86, a2);
    return 4294957460;
  }

  if (v19 > v20)
  {
    goto LABEL_106;
  }

LABEL_63:
  if ((*(a2 + 16) & 1) != 0 && (*(a2 + 200) & 1) == 0)
  {
    v17 = SSLPrepareAndQueueMessage(SSLEncodeServerHelloVerifyRequest, 22, a2);
    if (!v17)
    {
      return SSLSendFlight(a2);
    }

    return v17;
  }

  v21 = *(a2 + 296);
  if (!v21)
  {
LABEL_72:
    if (*(a2 + 320) == 1)
    {
      SSLFreeBuffer((a2 + 304));
      SSLCopyBuffer(a2 + 288, (a2 + 304));
      v17 = SSLResumeServerSide(a2);
      if (!v17)
      {
        return SSLSendFlight(a2);
      }

      return v17;
    }

    v17 = SelectNewCiphersuite(a2);
    if (!v17)
    {
      SSLFreeBuffer((a2 + 304));
      if (*(a2 + 280) == 1 && !SSLAllocBuffer((a2 + 304), 0x10uLL))
      {
        v22 = sslRand((a2 + 304));
        if (v22)
        {
          goto LABEL_162;
        }
      }

      v17 = SSLPrepareAndQueueMessage(SSLEncodeServerHello, 22, a2);
      if (!v17)
      {
        v23 = *(a2 + 336);
        if (v23 <= 0x13)
        {
          v24 = 1 << v23;
          if ((v24 & 0x28202) != 0)
          {
            if (!*(a2 + 56))
            {
              __ssl_debug("sslError", "SSLAdvanceHandshake", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 841, "SSLAdvanceHandshake: No server cert!\n");
              goto LABEL_181;
            }

            v17 = SSLPrepareAndQueueMessage(SSLEncodeCertificate, 22, a2);
            if (v17)
            {
              return v17;
            }

            if (*(a2 + 1009) == 1)
            {
              if (*(a2 + 1048))
              {
                v17 = SSLPrepareAndQueueMessage(SSLEncodeCertificateStatus, 22, a2);
                if (v17)
                {
                  return v17;
                }
              }
            }

LABEL_171:
            v27 = *(a2 + 336);
            if (v27 <= 0x12 && (((1 << v27) & 0x68A00) != 0 || v27 == 1 && *(a2 + 176)))
            {
              v17 = SSLPrepareAndQueueMessage(SSLEncodeServerKeyExchange, 22, a2);
              if (v17)
              {
                return v17;
              }
            }

            if (*(a2 + 424) == 1)
            {
              v17 = SSLPrepareAndQueueMessage(SSLEncodeCertificateRequest, 22, a2);
              if (v17)
              {
                return v17;
              }

              *(a2 + 432) = 1;
              *(a2 + 428) = 1;
            }

            v17 = SSLPrepareAndQueueMessage(SSLEncodeServerHelloDone, 22, a2);
            if (v17)
            {
              return v17;
            }

            if (*(a2 + 432) == 1)
            {
              v13 = 10;
            }

            else
            {
              v13 = 11;
            }

            goto LABEL_152;
          }

          if ((v24 & 0xC0801) != 0)
          {
            if (*(a2 + 424) == 1)
            {
              __ssl_debug("sslError", "SSLAdvanceHandshake", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 826, "SSLAdvanceHandshake: Attempting Client Auth with Anonyous CipherSuite!\n");
LABEL_181:
              SSLFatalSessionAlert(80, a2);
              return 4294957448;
            }

            *(a2 + 424) = 0;
            goto LABEL_171;
          }
        }

        __ssl_debug("sslError", "SSLAdvanceHandshake", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 855, "SSLAdvanceHandshake: Unsupported KEM!\n");
        SSLFatalSessionAlert(80, a2);
        return 4294957486;
      }
    }

    return v17;
  }

  __n = 0xAAAAAAAAAAAAAAAALL;
  __s1 = 0xAAAAAAAAAAAAAAAALL;
  v15 = (*(*(a2 + 1112) + 40))(*(a2 + 1104), *(a2 + 288), v21, &__n);
  if (!v15)
  {
    v15 = SSLServerValidateSessionData(__n, __s1, a2);
  }

  if (v15 != -9802)
  {
    if (v15)
    {
      goto LABEL_72;
    }

    v15 = SSLInstallSessionFromData(__n, __s1, a2);
    if (!v15)
    {
      *(a2 + 320) = 1;
      goto LABEL_72;
    }
  }

  return v15;
}

uint64_t SelectNewCiphersuite(uint64_t a1)
{
  if (!*(a1 + 360))
  {
    return 4294957495;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(a1 + 376);
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = *(*(a1 + 352) + 2 * v2);
    v5 = *(a1 + 368);
    if (*v5 != v4)
    {
      v6 = 1;
      do
      {
        v7 = v6;
        if (v3 == v6)
        {
          break;
        }

        v8 = v5[v6++];
      }

      while (v8 != v4);
      if (v7 >= v3)
      {
        goto LABEL_20;
      }
    }

    HIDWORD(v10) = sslCipherSuiteGetKeyExchangeMethod(v4) - 1;
    LODWORD(v10) = HIDWORD(v10);
    v9 = v10 >> 1;
    if (v9 <= 6)
    {
      break;
    }

    if (v9 == 7)
    {
      v11 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_20;
      }

      v12 = 1;
      goto LABEL_19;
    }

    if (v9 != 8)
    {
      goto LABEL_23;
    }

LABEL_15:
    v11 = *(a1 + 32);
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = 0;
LABEL_19:
    if (*(v11 + 16) == v12)
    {
      goto LABEL_23;
    }

LABEL_20:
    if (++v2 >= *(a1 + 360))
    {
      return 4294957495;
    }
  }

  if (!v9 || v9 == 4)
  {
    goto LABEL_15;
  }

LABEL_23:
  *(a1 + 328) = *(*(a1 + 352) + 2 * v2);
  InitCipherSpecParams(a1);
  return 0;
}

uint64_t SSLPrepareAndQueueMessage(uint64_t (*a1)(size_t *a1, uint64_t a2), int a2, uint64_t a3)
{
  v14 = 0uLL;
  v6 = a1(&v14, a3);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
LABEL_3:
    SSLFatalSessionAlert(v8, a3);
LABEL_4:
    SSLFreeBuffer(&v14);
    return v7;
  }

  if (a2 == 22)
  {
    if (a1 != SSLEncodeServerHelloRequest)
    {
      v10 = SSLUpdateHandshakeMacs(&v14, a3);
      if (v10)
      {
        v7 = v10;
        v8 = 80;
        goto LABEL_3;
      }
    }

    ++*(a3 + 202);
  }

  v11 = sslMalloc(0x20uLL);
  if (!v11)
  {
    v7 = 4294957486;
    goto LABEL_4;
  }

  *v11 = 0;
  *(v11 + 8) = v14;
  v11[24] = a2;
  v12 = *(a3 + 664);
  if (v12)
  {
    do
    {
      v13 = v12;
      v12 = *v12;
    }

    while (v12);
    v7 = 0;
    *v13 = v11;
  }

  else
  {
    v7 = 0;
    *(a3 + 664) = v11;
  }

  return v7;
}

uint64_t SSLEncodeServerHello(size_t *a1, unsigned int *a2)
{
  if (!*(a2 + 39) || (v4 = *(a2 + 38)) == 0)
  {
    v4 = 32;
  }

  if (*(a2 + 929) == 1 && *(a2 + 930) == 1 && (*(a2 + 931) & 1) == 0)
  {
    v5 = *(a2 + 117) + 4;
    *(a2 + 931) = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 122);
  if (v6 && *(a2 + 969) == 1)
  {
    v5 += v6 + 6;
    *(a2 + 970) = 1;
  }

  if (*(a2 + 1009) == 1 && *(a2 + 1008))
  {
    v5 += 4;
  }

  if (*(a2 + 1067) == 1 && (v7 = *(a2 + 134)) != 0 && (a2[80] & 1) == 0)
  {
    v8 = SSLEncodedBufferListSize(v7, 2);
    v5 += v8 + 6;
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 50))
  {
    v5 += 4;
  }

  if (*(a2 + 848) == 1)
  {
    v5 += *(a2 + 107) + *(a2 + 109) + 5;
  }

  if (*(a2 + 768) == 1 && *(a2 + 769))
  {
    v5 += 4;
  }

  v9 = v5 + 2;
  if (!v5)
  {
    v9 = 0;
  }

  v10 = v9 + v4 + 38;
  v11 = 4;
  if (*(a2 + 16))
  {
    v11 = 12;
  }

  result = SSLAllocBuffer(a1, v10 + v11);
  if (!result)
  {
    v13 = SSLEncodeHandshakeHeader(a2, a1, 2, v10);
    v14 = SSLEncodeInt(v13, *a2, 2);
    result = SSLEncodeRandom((a2 + 117));
    if (!result)
    {
      v15 = *(a2 + 121);
      *v14 = *(a2 + 117);
      *(v14 + 16) = v15;
      v16 = (v14 + 33);
      *(v14 + 32) = v4;
      v17 = *(a2 + 39);
      if (v17)
      {
        v18 = v4;
        memcpy(v16, v17, v4);
      }

      else
      {
        v36[0] = 32;
        v36[1] = v14 + 33;
        sslRand(v36);
        v18 = v4;
      }

      v19 = SSLEncodeInt(v16 + v18, *(a2 + 164), 2);
      *v19 = 0;
      v20 = (v19 + 1);
      if (v5)
      {
        v20 = SSLEncodeInt(v20, v5, 2);
        if (*(a2 + 50))
        {
          v21 = SSLEncodeInt(v20, 0, 2);
          v20 = SSLEncodeInt(v21, 0, 2);
        }

        if (*(a2 + 931) == 1)
        {
          v22 = SSLEncodeInt(v20, 0x3374uLL, 2);
          v23 = SSLEncodeInt(v22, *(a2 + 117), 2);
          memcpy(v23, *(a2 + 118), *(a2 + 117));
          v20 = v23 + *(a2 + 117);
        }

        if (*(a2 + 970) == 1)
        {
          v24 = SSLEncodeInt(v20, 0x10uLL, 2);
          v25 = SSLEncodeInt(v24, *(a2 + 122) + 2, 2);
          v26 = SSLEncodeInt(v25, *(a2 + 122), 2);
          memcpy(v26, *(a2 + 123), *(a2 + 122));
          v20 = v26 + *(a2 + 122);
        }

        if (*(a2 + 1008) == 1 && *(a2 + 1009) == 1)
        {
          v27 = SSLEncodeInt(v20, 5uLL, 2);
          v20 = SSLEncodeInt(v27, 0, 2);
        }

        if (v8)
        {
          v28 = SSLEncodeInt(v20, 0x12uLL, 2);
          v29 = SSLEncodeInt(v28, v8 + 2, 2);
          v30 = SSLEncodeInt(v29, v8, 2);
          v20 = SSLEncodeBufferList(*(a2 + 134), 2, v30);
        }

        if (*(a2 + 848) == 1)
        {
          v31 = SSLEncodeInt(v20, 0xFF01uLL, 2);
          v32 = SSLEncodeInt(v31, *(a2 + 107) + *(a2 + 109) + 1, 2);
          v33 = SSLEncodeInt(v32, *(a2 + 109) + *(a2 + 107), 1);
          memcpy(v33, *(a2 + 110), *(a2 + 109));
          v34 = &v33[*(a2 + 109)];
          memcpy(v34, *(a2 + 108), *(a2 + 107));
          v20 = &v34[*(a2 + 107)];
        }

        if (*(a2 + 768) == 1 && *(a2 + 769) == 1)
        {
          v35 = SSLEncodeInt(v20, 0x17uLL, 2);
          v20 = SSLEncodeInt(v35, 0, 2);
        }
      }

      if (v20 == a1[1] + *a1)
      {
        return 0;
      }

      else
      {
        return 4294957486;
      }
    }
  }

  return result;
}

uint64_t SSLEncodeHandshakeHeader(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  v6 = *(a2 + 8);
  *v6 = a3;
  result = SSLEncodeInt((v6 + 1), a4, 3);
  if (*(a1 + 16) == 1)
  {
    v8 = SSLEncodeInt(result, *(a1 + 202), 2);
    v9 = SSLEncodeInt(v8, 0, 3);

    return SSLEncodeInt(v9, a4, 3);
  }

  return result;
}

uint64_t SSLProcessHandshakeRecord(size_t size, unsigned __int8 *__src, uint64_t a3)
{
  v5 = size;
  v43 = *MEMORY[0x29EDCA608];
  v6 = (a3 + 648);
  if (*(a3 + 656))
  {
    v7 = *v6;
    v8 = SSLReallocBuffer(a3 + 648, *v6 + size);
    if (v8)
    {
LABEL_3:
      v9 = v8;
      SSLFatalSessionAlert(80, a3);
      goto LABEL_43;
    }

    memcpy((*(a3 + 656) + v7), __src, v5);
    v5 = *(a3 + 648);
    v10 = *(a3 + 656);
    __src = v10;
  }

  else
  {
    v10 = 0;
  }

  if (*(a3 + 16) != 1)
  {
    v27 = *MEMORY[0x29EDCA608];

    return SSLProcessHandshakeRecordInner(v5, __src, a3);
  }

  if (!v5)
  {
    v9 = 0;
LABEL_37:
    if (v10)
    {
      v29 = SSLFreeBuffer(v6);
      if (v29)
      {
        v30 = v29;
        SSLFatalSessionAlert(80, a3);
        v9 = v30;
      }
    }

    goto LABEL_43;
  }

  v36 = v6;
  v37 = off_2A1EFF3E8[0];
  v38 = off_2A1EFF3B0[0];
  v11 = v5;
  while (1)
  {
    if (v11 <= 0xB)
    {
      __ssl_debug("sslError", "DTLSProcessHandshakeRecordInner", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 308, "DTLSProcessHandshakeRecord: remaining too small (%lu out of %lu)\n");
LABEL_41:
      v9 = 4294957447;
      goto LABEL_42;
    }

    v13 = (__src + 12);
    v12 = *__src;
    v14 = SSLDecodeInt(__src + 1, 3);
    v15 = SSLDecodeInt(__src + 4, 2);
    v16 = SSLDecodeInt(__src + 6, 3);
    v17 = SSLDecodeInt(__src + 9, 3);
    v18 = v17;
    v19 = v11 - 12;
    if (v17 + v16 > v14 || v19 < v17 || v15 != *(a3 + 208) || (v20 = *(a3 + 240), v16 != v20))
    {
LABEL_40:
      v31 = *(a3 + 224);
      v35 = *(a3 + 216);
      __ssl_debug("sslError", "DTLSProcessHandshakeRecordInner", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 337, "DTLSProcessHandshakeRecord: wrong fragment (fl=%d, fo=%d, ml=%d, rm=%d | ms=%d/%d | mt=%d/%d, ml=%d/%d\n", v17, v16, v14, v11 - 12);
      goto LABEL_41;
    }

    if (v16)
    {
      if (*(a3 + 216) != v12 || *(a3 + 224) != v14)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v8 = SSLAllocBuffer((a3 + 224), v14);
      if (v8)
      {
        goto LABEL_3;
      }

      *(a3 + 216) = v12;
      v20 = *(a3 + 240);
    }

    v21 = v18;
    memcpy((*(a3 + 232) + v20), v13, v18);
    v22 = *(a3 + 240) + v18;
    *(a3 + 240) = v22;
    __src = &v13[v18];
    v11 = v19 - v21;
    if (*(a3 + 224) != v22)
    {
      goto LABEL_30;
    }

    v39 = *(a3 + 216);
    v40 = *(a3 + 232);
    v23 = SSLProcessHandshakeMessage(&v39, a3);
    if (v23)
    {
      v9 = v23;
LABEL_42:
      __ssl_debug("sslError", "DTLSProcessHandshakeRecordInner", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 456, "DTLSProcessHandshakeRecord: flushing record (err=%d)\n", v9);
      SSLFreeBuffer((a3 + 224));
      *(a3 + 240) = 0;
      goto LABEL_43;
    }

    if (v12)
    {
      if (v12 != 3)
      {
        memset(v42, 170, sizeof(v42));
        *&v39 = 12;
        *(&v39 + 1) = &v41;
        v41 = v12;
        SSLEncodeInt(v42, v14, 3);
        SSLEncodeInt(&v42[3], v15, 2);
        SSLEncodeInt(&v42[5], 0, 3);
        SSLEncodeInt(&v42[8], v14, 3);
        v24 = (v38)(a3 + 568, &v39);
        if (v24 || (v24 = (v37)(a3 + 584, &v39), v24) || (v24 = (v38)(a3 + 568, a3 + 224), v24) || (v24 = (v37)(a3 + 584, a3 + 224), v24))
        {
          v9 = v24;
          SSLFatalSessionAlert(80, a3);
          goto LABEL_42;
        }
      }
    }

    SSLFreeBuffer((a3 + 224));
    *(a3 + 240) = 0;
    ++*(a3 + 208);
    *(a3 + 416) = 1;
    *(a3 + 420) = v12;
    v25 = (*(*(a3 + 1112) + 8))(*(a3 + 1104), v12);
    if (v25)
    {
      break;
    }

    v26 = SSLAdvanceHandshake(v12, a3);
    if (v26)
    {
      v9 = v26;
      __ssl_debug("sslError", "DTLSProcessHandshakeRecordInner", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshake.c", 421, "AdvanceHandshake error: %d\n", v26);
      goto LABEL_42;
    }

LABEL_30:
    if (!v11)
    {
      v9 = 0;
      v10 = *(a3 + 656);
LABEL_32:
      v6 = v36;
      goto LABEL_37;
    }
  }

  v9 = v25;
  v10 = *(a3 + 656);
  if (!v11)
  {
    goto LABEL_32;
  }

  if (v10)
  {
LABEL_49:
    if (__src != v10)
    {
      memmove(v10, __src, v11);
      *v36 = v11;
    }
  }

  else
  {
    v33 = SSLAllocBuffer(v36, v11);
    if (!v33)
    {
      v10 = *(a3 + 656);
      goto LABEL_49;
    }

    v34 = v33;
    SSLFatalSessionAlert(80, a3);
    v9 = v34;
  }

LABEL_43:
  v32 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t SSLEncodeRandom(uint64_t a1)
{
  v3[0] = 0xAAAAAAAAAAAAAAAALL;
  time(v3);
  SSLEncodeInt(a1, LODWORD(v3[0]), 4);
  v3[0] = 28;
  v3[1] = a1 + 4;
  return sslRand(v3);
}

uint64_t sslRand(uint64_t *a1)
{
  if (*a1)
  {
    v2 = ccDRBGGetRngState();
    if (!v2)
    {
      abort();
    }

    v3 = *a1;
    v4 = a1[1];
    v5 = *v2;

    return v5();
  }

  else
  {
    __ssl_debug("sslError", "sslRand", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 275, "sslRand: zero buf->length\n");
    return 0;
  }
}

uint64_t SSLEncodeCertificate(size_t *a1, uint64_t a2)
{
  if ((*(a2 + 17) & 1) == 0 && *(a2 + 784) == -1)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = 0;
      v6 = *(a2 + 56);
      do
      {
        v7 = v6;
        v6 = *v6;
        v5 += v7[1] + 3;
      }

      while (v6);
    }

    else
    {
      v5 = 0;
    }
  }

  v8 = 4;
  if (*(a2 + 16))
  {
    v8 = 12;
  }

  result = SSLAllocBuffer(a1, v5 + 3 + v8);
  if (!result)
  {
    v10 = SSLEncodeHandshakeHeader(a2, a1, 11, v5 + 3);
    for (i = SSLEncodeInt(v10, v5, 3); v4; i = v12 + v13[1])
    {
      v12 = SSLEncodeInt(i, v4[1], 3);
      memcpy(v12, v4[2], v4[1]);
      v13 = v4;
      v4 = *v4;
    }

    if ((*(a2 + 17) & 1) != 0 || *(a2 + 784) == -1)
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a2 + 433) = 1;
      *(a2 + 428) = 2;
    }
  }

  return result;
}

uint64_t SSLEncodeServerKeyExchange(size_t *a1, uint64_t a2)
{
  v76 = *MEMORY[0x29EDCA608];
  v2 = *(a2 + 336);
  v3 = 4294967292;
  if (v2 > 0x12)
  {
    goto LABEL_31;
  }

  if (((1 << v2) & 0x28202) == 0)
  {
    if (((1 << v2) & 0x40800) == 0)
    {
      goto LABEL_31;
    }

    if (*(a2 + 16))
    {
      v20 = 12;
    }

    else
    {
      v20 = 4;
    }

    if (v2 == 18)
    {
      v21 = SSLGenServerECDHParamsAndKey(a2);
      if (!v21)
      {
        v27 = **(a2 + 152);
        v28 = cczp_bitlen();
        v21 = SSLAllocBuffer(a1, (((v28 + 7) >> 2) | 1) + 4 + v20);
        if (!v21)
        {
          v29 = OUTLINED_FUNCTION_0();
          SSLEncodeECDHKeyParams(a2, v29);
          goto LABEL_30;
        }
      }
    }

    else
    {
      if (v2 != 11)
      {
        SSLFreeBuffer(a1);
        v3 = 4294957486;
        goto LABEL_31;
      }

      v21 = SSLGenServerDHParamsAndKey(a2);
      if (!v21)
      {
        v22 = SSLEncodedDHKeyParamsLen(a2);
        v21 = SSLAllocBuffer(a1, v22 + v20);
        if (!v21)
        {
          v23 = OUTLINED_FUNCTION_0();
          SSLEncodeDHKeyParams(a2, v23);
LABEL_30:
          v3 = 0;
          goto LABEL_31;
        }
      }
    }

    v3 = v21;
    goto LABEL_31;
  }

  v67 = 0xAAAAAAAAAAAAAAAALL;
  size = 0xAAAAAAAAAAAAAAAALL;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = 0;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0;
  HIDWORD(v6) = v2 - 1;
  LODWORD(v6) = v2 - 1;
  v3 = 4294957486;
  v7 = *(a2 + 16);
  v8 = 1;
  switch((v6 >> 1))
  {
    case 0u:
      v9 = **(a2 + 176);
      v10 = ccn_write_uint_size();
      v11 = ccn_write_uint_size();
      MaxSigSize = SSLAllocBuffer(&v63, v10 + v11 + 4);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      v13 = v64;
      v14 = **(a2 + 176);
      v15 = ccn_write_uint_size();
      v16 = ccn_write_uint_size();
      v17 = SSLEncodeInt(v13, v15, 2);
      v18 = *(a2 + 176);
      ccn_write_uint();
      SSLEncodeInt(v17 + v15, v16, 2);
      v19 = **(a2 + 176);
      ccn_write_uint();
      v8 = 1;
      goto LABEL_22;
    case 4u:
      MaxSigSize = SSLGenServerDHParamsAndKey(a2);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      v24 = SSLEncodedDHKeyParamsLen(a2);
      MaxSigSize = SSLAllocBuffer(&v63, v24);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      SSLEncodeDHKeyParams(a2, v64);
      goto LABEL_22;
    case 7u:
      v8 = 0;
      goto LABEL_19;
    case 8u:
LABEL_19:
      MaxSigSize = SSLGenServerECDHParamsAndKey(a2);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      v25 = **(a2 + 152);
      v26 = cczp_bitlen();
      MaxSigSize = SSLAllocBuffer(&v63, (((v26 + 7) >> 2) | 1) + 4);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      SSLEncodeECDHKeyParams(a2, v64);
LABEL_22:
      MaxSigSize = sslGetMaxSigSize(*(a2 + 32), &size);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      MaxSigSize = SSLAllocBuffer(&v65, size);
      if (MaxSigSize)
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_1();
      if (!v35)
      {
        v33 = 65279;
      }

      if (v34 <= v33)
      {
        v40 = v32 + 2;
        v41 = v65;
        v42 = v66;
        v72[0] = v32;
        v72[1] = v64;
        v75 = -1431655766;
        *&v43 = 0xAAAAAAAAAAAAAAAALL;
        *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v73 = v43;
        v74 = v43;
        memset(v69, 170, 24);
        v69[3] = 0;
        v71[0] = 32;
        v71[1] = a2 + 436;
        v70[0] = 32;
        v70[1] = a2 + 468;
        if (v8)
        {
          v69[0] = 16;
          v69[1] = &v73;
          ready = ReadyHash(&SSLHashMD5, &v69[2]);
          if (ready)
          {
            goto LABEL_59;
          }

          v45 = off_2A1EFF3E8[0];
          ready = (off_2A1EFF3E8[0])(&v69[2], v71);
          if (ready)
          {
            goto LABEL_59;
          }

          ready = v45(&v69[2], v70);
          if (ready)
          {
            goto LABEL_59;
          }

          ready = v45(&v69[2], v72);
          if (ready)
          {
            goto LABEL_59;
          }

          ready = (off_2A1EFF3F0[0])(&v69[2], v69);
          if (ready)
          {
            goto LABEL_59;
          }

          ready = SSLFreeBuffer(&v69[2]);
          if (ready)
          {
            goto LABEL_59;
          }

          v46 = &v73;
          v47 = 36;
        }

        else
        {
          v46 = &v74;
          v47 = 20;
        }

        v69[0] = 20;
        v69[1] = &v74;
        ready = ReadyHash(&SSLHashSHA1, &v69[2]);
        if (!ready)
        {
          v62 = v46;
          v48 = off_2A1EFF3B0[0];
          ready = (off_2A1EFF3B0[0])(&v69[2], v71);
          if (!ready)
          {
            ready = v48(&v69[2], v70);
            if (!ready)
            {
              ready = v48(&v69[2], v72);
              if (!ready)
              {
                ready = (off_2A1EFF3B8[0])(&v69[2], v69);
                if (!ready)
                {
                  ready = SSLFreeBuffer(&v69[2]);
                  if (!ready)
                  {
                    ready = sslRawSign(*(a2 + 32), v62, v47, v42, v41, &v67);
                  }
                }
              }
            }
          }
        }

LABEL_59:
        v3 = ready;
        SSLFreeBuffer(&v69[2]);
        LOBYTE(v39) = 0;
        LOBYTE(v49) = 0;
        if (v3)
        {
          goto LABEL_25;
        }

LABEL_60:
        v50 = 4;
        if (v7)
        {
          v50 = 12;
        }

        MaxSigSize = SSLAllocBuffer(a1, v67 + v40 + v50);
        if (MaxSigSize)
        {
LABEL_24:
          v3 = MaxSigSize;
        }

        else
        {
          v51 = OUTLINED_FUNCTION_0();
          memcpy(v51, v64, v63);
          OUTLINED_FUNCTION_1();
          if (!v35)
          {
            v53 = 65279;
          }

          if (v54 > v53)
          {
            *v52 = v49;
            v52[1] = v39;
            v52 += 2;
          }

          v55 = SSLEncodeInt(v52, v67, 2);
          memcpy(v55, v66, v67);
          v3 = 0;
        }

        goto LABEL_25;
      }

      if (!*(a2 + 788))
      {
        goto LABEL_50;
      }

      v36 = *(a2 + 792);
      if (!v36)
      {
        goto LABEL_50;
      }

      v37 = *(a2 + 32);
      if (!v37)
      {
        goto LABEL_50;
      }

      v38 = *(v37 + 16);
      if (v38)
      {
        if (v38 == 1)
        {
          v39 = 3;
          goto LABEL_69;
        }

LABEL_50:
        v3 = 4294957486;
        goto LABEL_25;
      }

      v39 = 1;
LABEL_69:
      v56 = *(a2 + 800);
      if (!v56)
      {
        v3 = 4294957496;
        goto LABEL_25;
      }

      v57 = 0;
      v58 = (v36 + 4);
      v3 = 4294957496;
      while (1)
      {
        v59 = (*(a2 + 808) + 8 * v57);
        if (v39 == v59[1])
        {
          break;
        }

LABEL_76:
        if (++v57 == v56)
        {
          goto LABEL_25;
        }
      }

      v49 = *v59;
      v60 = v58;
      v61 = *(a2 + 788);
      while (v39 != *v60 || v49 != *(v60 - 1))
      {
        v60 += 2;
        if (!--v61)
        {
          goto LABEL_76;
        }
      }

      v40 = v32 + 4;
      v3 = SSLSignServerKeyExchangeTls12(a2, v49 | (v39 << 32), v32, v64, v65, v66, &v67);
      if (!v3)
      {
        goto LABEL_60;
      }

LABEL_25:
      SSLFreeBuffer(&v63);
      SSLFreeBuffer(&v65);
      if (!v3)
      {
        goto LABEL_30;
      }

LABEL_31:
      v30 = *MEMORY[0x29EDCA608];
      return v3;
    default:
      goto LABEL_25;
  }
}

uint64_t SSLGenServerECDHParamsAndKey(uint64_t a1)
{
  if (*(a1 + 1088))
  {
    v2 = 0;
    while (!tls_handshake_curve_is_supported(*(*(a1 + 1080) + 2 * v2)))
    {
      if (++v2 >= *(a1 + 1088))
      {
        goto LABEL_7;
      }
    }

    *(a1 + 144) = *(*(a1 + 1080) + 2 * v2);
  }

LABEL_7:
  v3 = *(a1 + 144);
  switch(v3)
  {
    case 25:
      v4 = ccec_cp_521();
      break;
    case 24:
      v4 = MEMORY[0x29C28DAA0]();
      break;
    case 23:
      v4 = MEMORY[0x29C28DA90]();
      break;
    default:
      return 4294957496;
  }

  return sslEcdhCreateKey(v4, (a1 + 152));
}

uint64_t sslEcdhCreateKey(void *a1, void *a2)
{
  v3 = sslMalloc((32 * *a1) | 0x10);
  if (!v3)
  {
    return 4294967188;
  }

  v4 = v3;
  if (!ccDRBGGetRngState())
  {
    abort();
  }

  result = ccec_generate_key();
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t SSLEncodeECDHKeyParams(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 152);
  v5 = (cczp_bitlen() + 7) >> 2;
  v6 = SSLEncodeInt(a2, 3uLL, 1);
  v7 = SSLEncodeInt(v6, *(a1 + 144), 2);
  SSLEncodeInt(v7, v5 | 1, 1);
  v8 = *(a1 + 152);

  return ccec_export_pub();
}

uint64_t sslGetMaxSigSize(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294957486;
  }

  if (*(a1 + 16) > 1u)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 24);
  return result;
}

uint64_t SSLSignServerKeyExchangeTls12(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, size_t a5, char *a6, size_t *a7)
{
  v30 = *MEMORY[0x29EDCA608];
  v28[0] = a3;
  v28[1] = a4;
  v26[0] = 0xAAAAAAAAAAAAAAAALL;
  v26[1] = 0;
  v25[0] = 32;
  v25[1] = a1 + 436;
  v24[1] = a1 + 468;
  v23[1] = 0;
  v24[0] = 32;
  v8 = a2 - 2;
  if (a2 - 2) < 5 && ((0x1Du >> v8))
  {
    v13 = *(&off_29EEA7248 + v8);
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v29[2] = v14;
    v29[3] = v14;
    v29[0] = v14;
    v29[1] = v14;
    v23[0] = 0xAAAAAAAAAAAAAAAALL;
    v15 = *v13;
    v27[0] = v15;
    v27[1] = v29;
    ready = ReadyHash(v13, v26);
    if (ready || (v17 = *(v13 + 3), ready = v17(v26, v25), ready) || (ready = v17(v26, v24), ready) || (ready = v17(v26, v28), ready) || (ready = (*(v13 + 4))(v26, v27), ready))
    {
      v18 = ready;
    }

    else
    {
      v21 = *(a1 + 32);
      if (HIDWORD(a2) == 1)
      {
        v22 = sslRsaSign(v21, a2, v29, v15, a6, a5, a7);
      }

      else
      {
        v22 = sslRawSign(v21, v29, v15, a6, a5, a7);
      }

      v18 = v22;
      if (v22)
      {
        __ssl_debug("sslError", "SSLSignServerKeyExchangeTls12", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 287, "SSLDecodeSignedServerKeyExchangeTls12: sslRawVerify returned %d\n", v22);
      }
    }

    SSLFreeBuffer(v23);
    SSLFreeBuffer(v26);
  }

  else
  {
    __ssl_debug("sslError", "SSLSignServerKeyExchangeTls12", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 247, "SSLVerifySignedServerKeyExchangeTls12: unsupported hash %d\n", a2);
    v18 = 4294957496;
  }

  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t HashSHA256Final(uint64_t a1, void *a2)
{
  v4 = ccsha256_di();
  (*(v4 + 56))(v4, *(a1 + 8), a2[1]);
  *a2 = *v4;
  return 0;
}

uint64_t sslRsaSign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, size_t a6, size_t *a7)
{
  v8 = a6;
  __len = a6;
  v10 = (*(a1 + 32))(*a1, a2, a3, a4, a5, &__len);
  if (v10)
  {
    __ssl_debug("sslError", "sslRsaSign", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 399, "privKey->desc.rsa.sign: failed (error %d)\n", v10);
    v8 = __len;
  }

  else
  {
    v11 = v8 - __len;
    if (v8 <= __len)
    {
      v8 = __len;
    }

    else
    {
      memmove(&a5[v11], a5, __len);
      bzero(a5, v11);
    }
  }

  *a7 = v8;
  return v10;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return SSLEncodeHandshakeHeader(v0, v1, 12, v2);
}

uint64_t SSLEncodeCertificateRequest(size_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 65279;
  }

  else
  {
    v4 = 770;
  }

  if (*a2 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = (2 * *(a2 + 800) + 2);
  }

  v6 = *(a2 + 384);
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = v6;
      v6 = *v6;
      v7 += v8[1] + 2;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v9 = 4;
  if (*(a2 + 16))
  {
    v9 = 12;
  }

  result = SSLAllocBuffer(a1, v5 + v7 + 5 + v9);
  if (!result)
  {
    v11 = SSLEncodeHandshakeHeader(a2, a1, 13, v5 + v7 + 5);
    *v11 = 258;
    v12 = v11 + 3;
    *(v11 + 2) = 64;
    if (v5)
    {
      v12 = SSLEncodeInt(v12, v5 - 2, 2);
      if (*(a2 + 800))
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = SSLEncodeInt(v12, *(*(a2 + 808) + v13), 1);
          v12 = SSLEncodeInt(v15, *(*(a2 + 808) + v13 + 4), 1);
          ++v14;
          v13 += 8;
        }

        while (v14 < *(a2 + 800));
      }
    }

    v16 = SSLEncodeInt(v12, v7, 2);
    for (i = *(a2 + 384); i; v16 = v18 + v19[1])
    {
      v18 = SSLEncodeInt(v16, i[1], 2);
      memcpy(v18, i[2], i[1]);
      v19 = i;
      i = *i;
    }

    return 0;
  }

  return result;
}

uint64_t SSLEncodeServerHelloDone(size_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 12;
  }

  else
  {
    v4 = 4;
  }

  v5 = SSLAllocBuffer(a1, v4);
  if (!v5)
  {
    SSLEncodeHandshakeHeader(a2, a1, 14, 0);
  }

  return v5;
}

uint64_t SSLSendFlight(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 204) + 1;
    *(a1 + 204) = v2;
    if (v2 > 0xA)
    {
      return 4294957452;
    }

    (*(*(a1 + 1112) + 24))(*(a1 + 1104));
  }

  v4 = a1 + 664;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = *(v4 + 24);
    v6 = *(v4 + 8);
    if (*(a1 + 16) == 1 && (v7 = *(v4 + 16), v5 == 22))
    {
      v25 = 0xAAAAAAAAAAAAAAAALL;
      v26 = 0xAAAAAAAAAAAAAAAALL;
      SSLDecodeInt(v7 + 4, 2);
      v8 = *(a1 + 840) - 13;
      v9 = *(a1 + 343);
      if (*(a1 + 342))
      {
        v8 = (v8 & -*(a1 + 342)) + ~*(a1 + 342);
      }

      v10 = v8 - v9;
      v11 = SSLAllocBuffer(&v25, v8 - v9);
      if (v11)
      {
        return v11;
      }

      v12 = v10 - 12;
      v13 = v6 - 12;
      v14 = v26;
      v15 = *v7;
      *(v26 + 4) = *(v7 + 2);
      *v14 = v15;
      if (v13 <= v10 - 12)
      {
        v16 = 0;
LABEL_23:
        SSLEncodeInt(v26 + 6, v16, 3);
        SSLEncodeInt(v26 + 9, v13, 3);
        memcpy((v26 + 12), &v7[v16 + 12], v13);
        v25 = v13 + 12;
        v17 = (**(a1 + 1112))(*(a1 + 1104));
      }

      else
      {
        v16 = 0;
        while (1)
        {
          SSLEncodeInt(v26 + 6, v16, 3);
          SSLEncodeInt(v26 + 9, v12, 3);
          memcpy((v26 + 12), &v7[v16 + 12], v12);
          v17 = (**(a1 + 1112))(*(a1 + 1104), v25, v26, 22);
          if (v17)
          {
            break;
          }

          v13 -= v12;
          v16 += v12;
          if (v13 <= v12)
          {
            goto LABEL_23;
          }
        }
      }

      v3 = v17;
      SSLFreeBuffer(&v25);
    }

    else
    {
      v11 = (**(a1 + 1112))(*(a1 + 1104), *(v4 + 8), *(v4 + 16), *(v4 + 24));
      if (v11)
      {
        return v11;
      }

      if (v5 == 20)
      {
        v3 = (*(*(a1 + 1112) + 72))(*(a1 + 1104));
        if (v3)
        {
          SSLFatalSessionAlert(80, a1);
          return v3;
        }

        *(a1 + 325) = 0;
      }

      else
      {
        v3 = 0;
      }
    }

    if (v3)
    {
      return v3;
    }
  }

  if (*(a1 + 672) == 1)
  {
    SymmetricCipherAlgorithm = sslCipherSuiteGetSymmetricCipherAlgorithm(*(a1 + 328));
    KeyExchangeMethod = sslCipherSuiteGetKeyExchangeMethod(*(a1 + 328));
    v20 = *(a1 + 928) != 1 || (SymmetricCipherAlgorithm - 5) > 3;
    v21 = v20 || KeyExchangeMethod > 0x11;
    v22 = v21 || ((1 << KeyExchangeMethod) & 0x28200) == 0;
    if (!v22 && ((v23 = *(a1 + 784), v23 == -1) || v23 == 1 || v23 == 64) || *(a1 + 322) == 1)
    {
      if ((*(a1 + 323) & 1) == 0)
      {
        *(a1 + 323) = 1;
        (*(*(a1 + 1112) + 16))(*(a1 + 1104), 1, 1);
      }
    }
  }

  return 0;
}

uint64_t SSLProcessCertificate(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 > 2)
  {
    v6 = SSLDecodeInt(a2, 3);
    if (v6 + 3 != a1)
    {
      __ssl_debug("sslError", "SSLProcessCertificate", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 208, "SSLProcessCertificate: length decode error 1\n");
      return 4294957496;
    }

    v11 = 0xAAAAAAAAAAAAAAAALL;
    result = SSLDecodeBufferList(a2 + 3, v6, 3, &v11);
    if (result)
    {
      return result;
    }

    v8 = *(a3 + 64);
    if (*(a3 + 888))
    {
      if (v8)
      {
LABEL_21:
        tls_free_buffer_list(*(a3 + 64));
        result = 0;
        *(a3 + 64) = v11;
        return result;
      }
    }

    else if (v8)
    {
      v9 = v11;
      while (v8)
      {
        if (!v9)
        {
          break;
        }

        v10 = *(v8 + 8);
        if (v10 != *(v9 + 8) || memcmp(*(v8 + 16), *(v9 + 16), v10))
        {
          break;
        }

        v8 = *v8;
        v9 = *v9;
        if (!(v8 | v9))
        {
          goto LABEL_21;
        }
      }

      __ssl_debug("sslError", "SSLProcessCertificate", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 232, "Illegal server identity change during renegotiation\n");
      tls_free_buffer_list(v11);
      return 4294957496;
    }

    if (__ssl_debug_enabled("sslLogNegotiateDebug"))
    {
      debug_log_chain(v11);
    }

    goto LABEL_21;
  }

  __ssl_debug("sslError", "SSLProcessCertificate", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 200, "SSLProcessCertificate: message length decode error\n");
  return 4294957496;
}

uint64_t SSLDecodeBufferList(unsigned __int8 *a1, unint64_t a2, int a3, void ***a4)
{
  if (!a2)
  {
    v17 = 0;
LABEL_13:
    v18 = 0;
    *a4 = v17;
    return v18;
  }

  v5 = a2;
  v7 = 0;
  v8 = 0;
  v9 = a3;
  while (1)
  {
    if (v5 < v9)
    {
      __ssl_debug("sslError", "SSLDecodeBufferList", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslDecode.c", 72, "SSLDecodeBufferList: length decode error 2\n");
LABEL_17:
      v18 = 4294957496;
      goto LABEL_20;
    }

    v10 = SSLDecodeInt(a1, v9);
    v11 = v9 + v10;
    if (v5 < v11)
    {
      __ssl_debug("sslError", "SSLDecodeBufferList", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslDecode.c", 79, "SSLDecodeBufferList: length decode error 3\n");
      goto LABEL_17;
    }

    v12 = v10;
    if (!v10)
    {
      __ssl_debug("sslError", "SSLDecodeBufferList", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslDecode.c", 84, "SSLDecodeBufferList: lenght decode error 4 (empty item)\n");
      goto LABEL_17;
    }

    v13 = sslMalloc(0x18uLL);
    if (!v13)
    {
      v18 = 4294967188;
      goto LABEL_20;
    }

    v14 = v13;
    v15 = SSLAllocBuffer(v13 + 1, v12);
    if (v15)
    {
      break;
    }

    v16 = &a1[v9];
    *v14 = 0;
    memcpy(v14[2], v16, v12);
    v17 = v14;
    if (v8)
    {
      *v7 = v14;
      v17 = v8;
    }

    a1 = &v16[v12];
    v7 = v14;
    v8 = v17;
    v5 -= v11;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v18 = v15;
  sslFree(v14);
LABEL_20:
  tls_free_buffer_list(v8);
  return v18;
}

uint64_t __ssl_debug_enabled(const char *a1)
{
  pthread_once(&__ssl_debug_enabled___security_debug_once, __security_debug_init);
  if (__ssl_debug_all)
  {
    return 1;
  }

  result = gDebugScope;
  if (gDebugScope)
  {
    result = xpc_dictionary_get_value(gDebugScope, a1);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t tls_handshake_set_peer_rsa_public_key(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sslFreePubKey(a1 + 40);

  return sslGetPubKeyFromBits(a2, a3, a1 + 40);
}

uint64_t sslGetPubKeyFromBits(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v6 = *a1 + 7;
    v7 = MEMORY[0x2A1C7C4A8](a1);
    v9 = (8 * (v6 >> 3) + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v6 > 7)
    {
      v11 = (v8 - 1) & 0xFFFFFFFFFFFFFFF8;
      v12 = memset(v20 - v9, 170, v11 + 8);
      MEMORY[0x2A1C7C4A8](v12);
      memset(v20 - v9, 170, v11 + 8);
    }

    else
    {
      MEMORY[0x2A1C7C4A8](v7);
    }

    v13 = *a1;
    v14 = a1[1];
    if (ccn_read_uint() || (v15 = *a2, v16 = a2[1], ccn_read_uint()) || ccn_bitlen() < 2 || (v17 = sslMalloc(3 * (v6 & 0xFFFFFFFFFFFFFFF8) + 40)) == 0)
    {
      sslGetPubKeyFromBits_cold_1();
      result = 4294957487;
    }

    else
    {
      v18 = v17;
      *v17 = v6 >> 3;
      ccrsa_init_pub();
      result = 0;
      *a3 = 1;
      *(a3 + 8) = v18;
    }
  }

  else
  {
    result = 4294967246;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void __ssl_debug(const char *a1, const char *a2, uint64_t a3, uint64_t a4, char *a5, ...)
{
  va_start(va, a5);
  v8[0] = 0;
  va_copy(&v8[1], va);
  vasprintf(v8, a5, va);
  if (v8[0])
  {
    if (__ssl_debug_enabled(a1))
    {
      syslog(4, "[%s] %s: %s", a1, a2, v8[0]);
    }

    for (i = gDebugLoggers; i; i = *(i + 16))
    {
      (*i)(*(i + 8), a1, a2, v8[0]);
    }

    sslFree(v8[0]);
  }
}

uint64_t tls_handshake_continue(uint64_t a1)
{
  if (*(a1 + 416) != 1)
  {
    return 0;
  }

  result = SSLAdvanceHandshake(*(a1 + 420), a1);
  if (result)
  {
    return result;
  }

  v3 = *(a1 + 656);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 648);

  return SSLProcessHandshakeRecordInner(v4, v3, a1);
}

uint64_t SSLProcessKeyExchange(unint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = a2;
  v34 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 336);
  if (v6 > 0x13)
  {
LABEL_18:
    if (v6 == 1)
    {
      v32 = 0;
      v11 = *(a3 + 32);
      v12 = sslPrivKeyLengthInBytes(v11);
      if (v12)
      {
        v13 = v12;
        if (a1 != v12)
        {
          if (a1 != v12 + 2 || *a3 < 0x301u)
          {
            __ssl_debug("sslError", "SSLDecodeRSAKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 886, "SSLDecodeRSAKeyExchange: length error (exp %u got %u)\n");
            goto LABEL_42;
          }

          v4 += 2;
        }

        v10 = SSLAllocBuffer((a3 + 504), 0x30uLL);
        if (!v10)
        {
          *&v14 = 0xAAAAAAAAAAAAAAAALL;
          *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v33[1] = v14;
          v33[2] = v14;
          v33[0] = v14;
          v31[0] = 48;
          v31[1] = v33;
          sslRand(v31);
          v15 = *(a3 + 512);
          v16 = sslRsaDecrypt(v11, v4, v13, v15, 48, &v32);
          v17 = 0;
          v18 = vorr_s8(vneg_s32(veor_s8(vshr_n_u32(*a3, 8uLL), vdup_n_s32(*v15))), vneg_s32(veor_s8(vand_s8(*a3, 0xFF000000FFLL), vdup_n_s32(v15[1]))));
          v19 = ((v32 ^ 0xFFFFFFFFFFFFFFCFLL) + 1) | -v16 | v16 | v32 | v18.i32[1] & v18.i32[0];
          do
          {
            v20 = v33 + v17;
            if (v19 >= 0)
            {
              v20 = &v15[v17];
            }

            v15[v17++] = *v20;
          }

          while (v17 != 48);
          goto LABEL_47;
        }
      }

      else
      {
        __ssl_debug("sslError", "SSLDecodeRSAKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 867, "SSLDecodeRSAKeyExchange: private key modulus is 0\n");
        v10 = 4294957487;
      }
    }

    else
    {
      __ssl_debug("sslError", "SSLProcessKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1862, "SSLProcessKeyExchange: unknown keyExchangeMethod (%d)\n", v6);
      v10 = 4294967292;
    }

    goto LABEL_43;
  }

  if (((1 << v6) & 0x68000) == 0)
  {
    if (((1 << v6) & 0xA00) != 0)
    {
      if (*(a3 + 104))
      {
        if (a1 <= 1)
        {
          __ssl_debug("sslError", "SSLDecodeDHClientKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1301, "SSLDecodeDHClientKeyExchange: msg len error 1\n");
LABEL_42:
          v10 = 4294957496;
          goto LABEL_43;
        }

        v21 = SSLDecodeInt(a2, 2);
        if (a1 < v21 + 2)
        {
          __ssl_debug("sslError", "SSLDecodeDHClientKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1309, "SSLDecodeDHClientKeyExchange: msg len error 2\n");
          goto LABEL_42;
        }

        v23 = v21;
        SSLFreeBuffer((a3 + 80));
        v24 = SSLAllocBuffer((a3 + 80), v23);
        if (!v24)
        {
          memmove(*(a3 + 88), (v4 + 2), v23);
          SSLFreeBuffer((a3 + 504));
          v24 = sslDhKeyExchange(*(a3 + 104), (a3 + 80), (a3 + 504));
          if (!v24)
          {
LABEL_47:
            v10 = 0;
            goto LABEL_43;
          }
        }

        goto LABEL_40;
      }

      goto LABEL_14;
    }

    if (v6 == 19)
    {
      if (a1 <= 1)
      {
        __ssl_debug("sslError", "SSLDecodePSKClientKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1662, "SSLDecodePSKClientKeyExchange: msg len error 1\n");
        goto LABEL_42;
      }

      v22 = SSLDecodeInt(a2, 2);
      if (a1 < v22 + 2)
      {
        __ssl_debug("sslError", "SSLDecodePSKClientKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslKeyExchange.c", 1670, "SSLDecodePSKClientKeyExchange: msg len error 2\n");
        goto LABEL_42;
      }

      v25 = v22;
      SSLFreeBuffer((a3 + 912));
      v24 = SSLAllocBuffer((a3 + 912), v25);
      if (!v24)
      {
        memmove(*(a3 + 920), (v4 + 2), v25);
        v28 = *(a3 + 896);
        if (!v28)
        {
          v10 = 4294957448;
          goto LABEL_43;
        }

        v24 = SSLAllocBuffer((a3 + 504), 2 * v28 + 4);
        if (!v24)
        {
          v29 = SSLEncodeInt(*(a3 + 512), v28, 2);
          bzero(v29, v28);
          v30 = SSLEncodeInt(v29 + v28, v28, 2);
          memcpy(v30, *(a3 + 904), v28);
          goto LABEL_47;
        }
      }

LABEL_40:
      v10 = v24;
      goto LABEL_43;
    }

    goto LABEL_18;
  }

  *&v33[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v33[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a3 + 152))
  {
LABEL_14:
    v10 = 4294957486;
    goto LABEL_43;
  }

  if (!a1)
  {
    goto LABEL_42;
  }

  v7 = SSLDecodeInt(a2, 1);
  if (a1 != v7 + 1)
  {
    goto LABEL_42;
  }

  v8 = v7;
  SSLFreeBuffer((a3 + 128));
  EcPubKeyFromBits = SSLAllocBuffer((a3 + 128), v8);
  if (EcPubKeyFromBits || (memmove(*(a3 + 136), (v4 + 1), v8), EcPubKeyFromBits = sslGetEcPubKeyFromBits(*(a3 + 144), (a3 + 128), v33), EcPubKeyFromBits))
  {
    v10 = EcPubKeyFromBits;
    sslFreePubKey(v33);
    goto LABEL_43;
  }

  SSLFreeBuffer((a3 + 504));
  v10 = sslEcdhKeyExchange(*(a3 + 152), *(&v33[0] + 1), (a3 + 504));
  sslFreePubKey(v33);
  if (!v10)
  {
    goto LABEL_47;
  }

LABEL_43:
  v26 = *MEMORY[0x29EDCA608];
  return v10;
}

uint64_t sslGetEcPubKeyFromBits(int a1, void *a2, uint64_t a3)
{
  switch(a1)
  {
    case 25:
      v5 = ccec_cp_521();
      break;
    case 24:
      v5 = MEMORY[0x29C28DAA0]();
      break;
    case 23:
      v5 = MEMORY[0x29C28DA90]();
      break;
    default:
      __ssl_debug("sslError", "sslGetEcPubKeyFromBits", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 768, "sslEcdhGenerateKeyPair: bad namedCurve (%u)\n", a1);
      return 4294967246;
  }

  v6 = v5;
  v7 = sslMalloc(24 * *v5 + 16);
  if (!v7)
  {
    return 4294967188;
  }

  v8 = v7;
  result = MEMORY[0x29C28DAE0](v6, *a2, a2[1], v7);
  if (result)
  {
    sslFree(v8);
    return 4294957487;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = v8;
  }

  return result;
}

uint64_t sslEcdhKeyExchange(uint64_t **a1, uint64_t a2, size_t *a3)
{
  v6 = **a1;
  v7 = ccDRBGGetRngState();
  if (!v7)
  {
    abort();
  }

  v8 = v7;
  result = SSLAllocBuffer(a3, (16 * v6) | 1);
  if (!result)
  {
    v10 = a3[1];

    return MEMORY[0x2A1C744D8](a1, a2, a3, v10, v8);
  }

  return result;
}

uint64_t tls_handshake_internal_prf(uint64_t a1, uint64_t a2, unint64_t a3, const void *a4, size_t a5, void *a6, size_t a7, char *a8, size_t a9)
{
  v10 = a7;
  if (a4)
  {
    v17 = a7 + a5;
    v18 = sslMalloc(a7 + a5);
    if (!v18)
    {
      return 4294967188;
    }

    v19 = v18;
    memmove(v18, a4, a5);
    memmove(&v19[a5], a6, v10);
    a6 = v19;
    v10 = v17;
  }

  if (*(a1 + 16))
  {
    v20 = 65279;
  }

  else
  {
    v20 = 770;
  }

  if (*a1 <= v20)
  {
    v23 = sslMalloc(a9);
    if (!v23)
    {
      v24 = 4294967188;
      if (!a4)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v22 = tlsPHash(&TlsHmacMD5, a2, a3 - (a3 >> 1), a6, v10, a8, a9);
    if (!v22)
    {
      v22 = tlsPHash(&TlsHmacSHA1, a2 + (a3 >> 1), a3 - (a3 >> 1), a6, v10, v23, a9);
      if (!v22)
      {
        if (a9)
        {
          for (i = 0; i != a9; ++i)
          {
            a8[i] ^= v23[i];
          }
        }

LABEL_12:
        v24 = 0;
        if (!a4)
        {
          goto LABEL_23;
        }

LABEL_21:
        if (a6)
        {
          sslFree(a6);
        }

        goto LABEL_23;
      }
    }
  }

  else
  {
    if (*(a1 + 344) == 4)
    {
      v21 = &TlsHmacSHA384;
    }

    else
    {
      v21 = &TlsHmacSHA256;
    }

    v22 = tlsPHash(v21, a2, a3, a6, v10, a8, a9);
    v23 = 0;
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  v24 = v22;
  if (a4)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (v23)
  {
    sslFree(v23);
  }

  return v24;
}

uint64_t tls12GenerateMasterSecret(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v2;
  v14[3] = v2;
  v14[0] = v2;
  v14[1] = v2;
  v13[0] = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 768) == 1 && *(a1 + 769) == 1)
  {
    v3 = *(a1 + 344);
    if (v3 == 4)
    {
      v4 = &SSLHashSHA384;
    }

    else
    {
      v4 = &SSLHashSHA256;
    }

    v5 = 600;
    if (v3 == 4)
    {
      v5 = 616;
    }

    v13[1] = 0;
    v6 = CloneHashState(v4, a1 + v5, v13);
    if (!v6)
    {
      *&v15[0] = *v4;
      *(&v15[0] + 1) = v14;
      v7 = off_2A1EFF348;
      if (v3 != 4)
      {
        v7 = off_2A1EFF380;
      }

      v8 = (*v7)(v13, v15);
      if (!v8)
      {
        v8 = tls_handshake_internal_prf(a1, *(a1 + 512), *(a1 + 504), "extended master secret", 0x16uLL, *(&v15[0] + 1), *&v15[0], (a1 + 520), 0x30uLL);
      }

      v6 = v8;
      SSLFreeBuffer(v13);
    }
  }

  else
  {
    v9 = *(a1 + 452);
    v15[0] = *(a1 + 436);
    v15[1] = v9;
    v10 = *(a1 + 484);
    v15[2] = *(a1 + 468);
    v15[3] = v10;
    v6 = tls_handshake_internal_prf(a1, *(a1 + 512), *(a1 + 504), "master secret", 0xDuLL, v15, 0x40uLL, (a1 + 520), 0x30uLL);
  }

  v11 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t tlsPHash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, size_t a7)
{
  v21 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = v12;
  v20[2] = v12;
  __src[2] = v12;
  v20[0] = v12;
  __src[0] = v12;
  __src[1] = v12;
  __len = *a1;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v13 = (*(a1 + 16))(a1, a2, a3, &v18);
  if (!v13)
  {
    for (i = (*(a1 + 56))(v18, a4, a5, v20, &__len); ; i = (*(a1 + 56))(v18, v20, __len, v20, &__len))
    {
      if (i || (i = (*(a1 + 32))(v18), i) || (i = (*(a1 + 40))(v18, v20, __len), i) || (i = (*(a1 + 40))(v18, a4, a5), i) || (i = (*(a1 + 48))(v18, __src, &__len), i))
      {
        v13 = i;
        goto LABEL_11;
      }

      if (a7 <= __len)
      {
        break;
      }

      memmove(a6, __src, __len);
      a6 += __len;
      a7 -= __len;
    }

    memmove(a6, __src, a7);
    v13 = 0;
LABEL_11:
    (*(a1 + 24))(v18);
  }

  v15 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t HMAC_Alloc(uint64_t a1, char *a2, size_t a3, void *a4)
{
  v40[2] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 8) - 1;
  if (v4 <= 3 && (v8 = *&SSLMACPad2[8 * v4 + 48], v9 = *(&off_29EEA7298 + v4), v10 = v9[2], (v11 = sslMalloc((3 * v10) + 56)) != 0))
  {
    v12 = v11;
    v36 = a4;
    *v11 = v9;
    v11[1] = v10;
    v11[2] = v11 + 7;
    v13 = v11 + v10 + 56;
    v11[3] = v10;
    v11[4] = v13;
    v11[5] = v10;
    v35 = v11 + 5;
    v11[6] = &v13[v10];
    v14 = *(v9 + 2);
    v33 = v11 + 1;
    v14();
    v15 = (v14)(v12 + 3);
    v34 = &v32;
    v16 = *v9;
    v17 = MEMORY[0x2A1C7C4A8](v15);
    if (v16)
    {
      v17 = memset(&v32 - ((v16 + 15) & 0x1FFFFFFF0), 170, v16);
    }

    MEMORY[0x2A1C7C4A8](v17);
    v18 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    memset(v18, 170, v8);
    v40[0] = v8;
    v40[1] = v18;
    if (v8 < a3)
    {
      v39[0] = a3;
      v39[1] = a2;
      v37 = v16;
      v38 = &v32 - ((v16 + 15) & 0x1FFFFFFF0);
      (*(v9 + 3))(v12 + 3, v39);
      (*(v9 + 4))(v12 + 3, &v37);
      a3 = v37;
      a2 = v38;
      (v14)(v12 + 3);
    }

    v20 = v35;
    v19 = v36;
    if (a3)
    {
      v21 = a2;
      v22 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      v23 = a3;
      do
      {
        v24 = *v21++;
        *v22++ = v24 ^ 0x5C;
        --v23;
      }

      while (v23);
    }

    v25 = v8 - a3;
    memset(&v18[a3], 92, v25);
    v26 = *(v9 + 3);
    v26(v33, v40);
    if (a3)
    {
      v27 = v18;
      v28 = a3;
      do
      {
        v29 = *a2++;
        *v27++ = v29 ^ 0x36;
        --v28;
      }

      while (v28);
    }

    memset(&v18[a3], 54, v25);
    v26(v12 + 3, v40);
    bzero(v18, a3);
    (*(v9 + 6))(v12 + 3, v20);
    *v19 = v12;
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v31 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HashSHA384Clone(uint64_t a1, uint64_t a2)
{
  v4 = ccsha384_di();
  memcpy(*(a2 + 8), *(a1 + 8), *(v4 + 8) + *(v4 + 16) + 12);
  return 0;
}

void HMAC_Hmac(HMAC_CTX *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unsigned int *a5)
{
  if (a1)
  {
    (a1->md->final)(&a1->i_ctx);
    (a1->md->copy)(&a1->md_ctx.flags, &a1->i_ctx);
    v10[0] = a3;
    v10[1] = a2;
    (a1->md->init)(&a1->i_ctx, v10);
    HMAC_Final(a1, a4, a5);
  }
}

void HMAC_Final(HMAC_CTX *ctx, unsigned __int8 *md, unsigned int *len)
{
  v12 = *MEMORY[0x29EDCA608];
  v10[0] = 48;
  v10[1] = v11;
  if (ctx && md && len)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[1] = v5;
    v11[2] = v5;
    v11[0] = v5;
    v9[0] = *len;
    v9[1] = md;
    (ctx->md->update)(&ctx->i_ctx, v10);
    (ctx->md->copy)(&ctx->md_ctx, &ctx->i_ctx);
    (ctx->md->init)(&ctx->i_ctx, v10);
    v6 = ctx->md;
    type = ctx->md->type;
    __memset_chk();
    (v6->update)(&ctx->i_ctx, v9);
    *len = ctx->md->type;
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t HashSHA384Final(uint64_t a1, void *a2)
{
  v4 = ccsha384_di();
  (*(v4 + 56))(v4, *(a1 + 8), a2[1]);
  *a2 = *v4;
  return 0;
}

void HMAC_Update(HMAC_CTX *ctx, const unsigned __int8 *data, size_t len)
{
  v3[0] = len;
  v3[1] = data;
  if (ctx)
  {
    (ctx->md->init)(&ctx->i_ctx, v3);
  }
}

uint64_t HMAC_Free(void **a1)
{
  if (a1)
  {
    (*(*a1 + 5))(a1 + 1);
    (*(*a1 + 5))(a1 + 3);
    (*(*a1 + 5))(a1 + 5);
    bzero(a1[2], a1[1]);
    bzero(a1[4], a1[3]);
    bzero(a1[6], a1[5]);
    sslFree(a1);
  }

  return 0;
}

uint64_t SSLInitPendingCiphers(uint64_t a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0;
  v2 = SSLAllocBuffer(&v5, 2 * (*(a1 + 340) + *(a1 + 343) + *(a1 + 341)));
  if (!v2)
  {
    v3 = (**(a1 + 24))(v5, v6, a1);
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = (*(*(a1 + 1112) + 64))(*(a1 + 1104), *(a1 + 328), *(a1 + 17), v5, v6);
      if (!v2)
      {
        *(a1 + 324) = 257;
      }
    }

    SSLFreeBuffer(&v5);
  }

  return v2;
}

uint64_t tls1GenerateKeyMaterial(size_t a1, char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *(a3 + 484);
  v8 = *(a3 + 468);
  v9 = v3;
  v4 = *(a3 + 452);
  v10 = *(a3 + 436);
  qmemcpy(v7, "key expansion", sizeof(v7));
  v11 = v4;
  result = tls_handshake_internal_prf(a3, a3 + 520, 0x30uLL, 0, 0, v7, 0x4DuLL, a2, a1);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t tls_record_init_pending_ciphers(uint64_t a1, int a2, int a3, uint64_t a4, char *a5)
{
  *a1 = a2;
  *(a1 + 200) = sslCipherSuiteGetDigestInfo(a2);
  *(a1 + 296) = sslCipherSuiteGetDigestInfo(a2);
  *(a1 + 208) = sslCipherSuiteGetSymmetricCipher(a2);
  *(a1 + 304) = sslCipherSuiteGetSymmetricCipher(a2);
  *(a1 + 224) = 0;
  *(a1 + 320) = 1;
  if (*(a1 + 488) == 1)
  {
    *(a1 + 232) = (*(a1 + 238) << 48) + 0x1000000000000;
    *(a1 + 328) = (*(a1 + 334) << 48) + 0x1000000000000;
  }

  else
  {
    *(a1 + 328) = 0;
    *(a1 + 232) = 0;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = a1 + 296;
  }

  else
  {
    v11 = a1 + 200;
  }

  if (v10)
  {
    v12 = a1 + 296;
  }

  else
  {
    v12 = a1 + 200;
  }

  v13 = *(a1 + 208);
  v14 = *v13;
  if (*(*v13 + 1) == 2)
  {
    v15 = *(v14 + 8);
    if (a4 != 2 * (*(v14 + 9) + v15))
    {
      return 4294957296;
    }
  }

  else
  {
    v16 = **(a1 + 200);
    if (a4 != 2 * (v16 + *(v14 + 8) + *(v14 + 9)))
    {
      return 4294957296;
    }

    memcpy((v12 + 41), a5, v16);
    v17 = **(a1 + 200);
    v18 = &a5[v17];
    memcpy((v11 + 41), v18, v17);
    v13 = *(a1 + 208);
    a5 = &v18[**(a1 + 200)];
    v15 = (*v13)[8];
  }

  v19 = &a5[v15];
  result = (v13[2])(**(v12 + 8), *(v12 + 24), a5, &a5[v15 + v15], *(a1 + 496), v12 + 16);
  if (!result)
  {
    v21 = *(a1 + 208);
    v22 = -8;
    if ((*v21)[1] != 2)
    {
      v22 = 0;
    }

    result = (v21[2])(**(v11 + 8), *(v11 + 24), v19, &v19[*(*v21 + 8) + *(*v21 + 9) + v22], *(a1 + 496), v11 + 16);
    if (!result)
    {
      *(a1 + 336) = 1;
      *(a1 + 240) = 1;
    }
  }

  return result;
}

uint64_t CCGCMSymmInit(uint64_t a1, int a2, const void *a3, _DWORD *a4, void (**a5)(void, uint64_t, uint64_t), void **a6)
{
  if (*a6)
  {
    sslFree(*a6);
  }

  if (a2)
  {
    v12 = ccaes_gcm_encrypt_mode();
  }

  else
  {
    v12 = ccaes_gcm_decrypt_mode();
  }

  v13 = v12;
  v14 = sslMalloc(0x30uLL);
  if (v14)
  {
    v15 = v14;
    *v14 = v13;
    v14[1] = sslMalloc(*v13);
    *(v15 + 4) = *a4;
    (*a5)(a5, 8, v15 + 20);
    v16 = *(a1 + 8);
    v15[5] = v16;
    v17 = sslMalloc(v16);
    v15[4] = v17;
    memcpy(v17, a3, v15[5]);
    result = 0;
    *a6 = v15;
  }

  else
  {
    __ssl_debug("sslError", "CCGCMSymmInit", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslAesGcmCipher.c", 69, "CCSymmInit: Can't allocate context\n");
    return 4294957296;
  }

  return result;
}

uint64_t tls12ComputeCertVfyMac(uint64_t a1, void *a2, int a3)
{
  v9[1] = 0;
  v3 = a3 - 2;
  if ((a3 - 2) > 4 || ((0x1Du >> v3) & 1) == 0)
  {
    return 4294957486;
  }

  v5 = qword_2986B9208[v3];
  v6 = *(&off_29EEA7270 + v3);
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v7 = CloneHashState(v6, a1 + v5, v9);
  if (!v7)
  {
    *a2 = *v6;
    v7 = (*(v6 + 4))(v9, a2);
  }

  SSLFreeBuffer(v9);
  return v7;
}

uint64_t SSLProcessCertificateVerify(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[2] = v4;
  v15[3] = v4;
  v15[0] = v4;
  v15[1] = v4;
  if (*(a3 + 16))
  {
    v5 = 65279;
  }

  else
  {
    v5 = 770;
  }

  if (*a3 <= v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = a2;
  }

  else
  {
    if (a1 <= 1)
    {
      __ssl_debug("sslError", "SSLProcessCertificateVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 677, "SSLProcessCertificateVerify: msg len error 1\n");
LABEL_13:
      v9 = 4294957496;
      goto LABEL_14;
    }

    v6 = *a2;
    v8 = (a2 + 2);
    v7 = a2[1] == 1;
  }

  if (v8 + 2 > &a2[a1])
  {
    __ssl_debug("sslError", "SSLProcessCertificateVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 685, "SSLProcessCertificateVerify: msg len error\n");
    goto LABEL_13;
  }

  if (v8 + 2 + SSLDecodeSize(v8, 2) > &a2[a1])
  {
    __ssl_debug("sslError", "SSLProcessCertificateVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 692, "SSLProcessCertificateVerify: sig len error 1\n");
    goto LABEL_13;
  }

  v14[0] = 64;
  v14[1] = v15;
  v9 = (*(*(a3 + 24) + 24))(a3, v14, v6);
  if (!v9)
  {
    if (*(a3 + 16))
    {
      v12 = 65279;
    }

    else
    {
      v12 = 770;
    }

    if (*a3 > v12 && v7)
    {
      v13 = sslRsaVerify(a3 + 40, v6);
    }

    else
    {
      v13 = sslRawVerify(a3 + 40);
    }

    v9 = v13;
    if (v13)
    {
      SSLFatalSessionAlert(51, a3);
    }
  }

LABEL_14:
  v10 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t CloneHashState(uint64_t a1, uint64_t a2, size_t *a3)
{
  result = SSLAllocBuffer(a3, *(a1 + 8));
  if (!result)
  {
    v7 = *(a1 + 48);

    return v7(a2, a3);
  }

  return result;
}

uint64_t HashSHA256Clone(uint64_t a1, uint64_t a2)
{
  v4 = ccsha256_di();
  memcpy(*(a2 + 8), *(a1 + 8), *(v4 + 8) + *(v4 + 16) + 12);
  return 0;
}

uint64_t sslRsaVerify(uint64_t a1, int a2)
{
  if ((a2 - 2) <= 4)
  {
    v2 = (&off_29EEA6970)[a2 - 2];
  }

  if (*a1 == 1 && *(a1 + 8))
  {
    v3 = ccrsa_verify_pkcs1v15();
    if (v3)
    {
      v4 = v3;
      __ssl_debug("sslError", "sslRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 535, "sslRsaVerify: ccrsa_verify_pkcs1v15 failed (error %d)\n", v3);
    }

    else
    {
      __ssl_debug("sslError", "sslRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 538, "sslRsaVerify: ccrsa_verify_pkcs1v15 signature verify error\n", 0);
      return 4294957487;
    }
  }

  else
  {
    __ssl_debug("sslError", "sslRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 528, "Internal Error: Invalid RSA public key\n");
    return 4294957486;
  }

  return v4;
}

uint64_t SSLProcessChangeCipherSpec(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a1 != 1 || *a2 != 1)
  {
    if ((*(a3 + 16) & 1) == 0)
    {
      SSLFatalSessionAlert(10, a3);
      v8 = *a2;
      __ssl_debug("sslError", "SSLProcessChangeCipherSpec", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslChangeCipher.c", 69, "***bad changeCipherSpec msg: length %d data 0x%x\n");
      return 4294957496;
    }

    return 4294957447;
  }

  if ((*(a3 + 17) & 1) != 0 || !*(a3 + 736) || (*(a3 + 380) - 7) > 1 || (v5 = *(a3 + 752)) == 0)
  {
LABEL_16:
    if (*(a3 + 324) == 1 && *(a3 + 380) == 14)
    {
      v6 = (*(*(a3 + 1112) + 88))(*(a3 + 1104));
      if (!v6)
      {
        *(a3 + 324) = 0;
        *(a3 + 380) = 15;
        return v6;
      }

      goto LABEL_19;
    }

    if ((*(a3 + 16) & 1) == 0)
    {
      SSLFatalSessionAlert(10, a3);
      v10 = *(a3 + 324);
      v11 = *(a3 + 380);
      __ssl_debug("sslError", "SSLProcessChangeCipherSpec", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslChangeCipher.c", 110, "***bad changeCipherSpec msg: readPending.ready %d state %d\n");
      return 4294957496;
    }

    return 4294957447;
  }

  v12 = 48;
  v5(*(a3 + 760), a3 + 520, &v12);
  *(a3 + 320) = 1;
  v6 = ValidateSelectedCiphersuite(a3);
  if (!v6)
  {
    v7 = SSLInitPendingCiphers(a3);
    if (v7)
    {
      v6 = v7;
LABEL_19:
      SSLFatalSessionAlert(80, a3);
      return v6;
    }

    *(a3 + 380) = 14;
    goto LABEL_16;
  }

  return v6;
}

double tls_record_advance_read_cipher(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2 || !(*(v2 + 8))(*(a1 + 24)))
  {
    *(a1 + 40) = *(a1 + 232);
    *(a1 + 56) = *(a1 + 248);
    *(a1 + 8) = *(a1 + 200);
    *(a1 + 24) = *(a1 + 216);
    v4 = *(a1 + 280);
    *(a1 + 72) = *(a1 + 264);
    *(a1 + 88) = v4;
    result = 0.0;
    *(a1 + 200) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
  }

  return result;
}

uint64_t SSLProcessFinished(size_t size, const void *a2, int *a3)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a3;
  if ((*a3 - 769) < 3)
  {
LABEL_4:
    v7 = 12;
    goto LABEL_5;
  }

  if (v6 != 768)
  {
    if (v6 != 65279)
    {
      return 4294957486;
    }

    goto LABEL_4;
  }

  v7 = 36;
LABEL_5:
  if (size == v7)
  {
    __s1 = 0;
    v8 = SSLAllocBuffer(&v10, size);
    if (!v8)
    {
      v8 = (*(*(a3 + 3) + 16))(a3, v10, __s1, (*(a3 + 17) & 1) == 0);
      if (!v8)
      {
        if (!memcmp(__s1, a2, size))
        {
          SSLFreeBuffer(a3 + 109);
          v8 = SSLCopyBuffer(&v10, a3 + 109);
        }

        else
        {
          __ssl_debug("sslError", "SSLProcessFinished", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeFinish.c", 235, "SSLProcessFinished: memcmp failure\n");
          v8 = 4294957496;
        }
      }

      SSLFreeBuffer(&v10);
    }
  }

  else
  {
    __ssl_debug("sslError", "SSLProcessFinished", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslHandshakeFinish.c", 224, "SSLProcessFinished: msg len error 1\n");
    return 4294957496;
  }

  return v8;
}

uint64_t tls12ComputeFinishedMac(uint64_t a1, size_t a2, char *a3, int a4)
{
  v22 = *MEMORY[0x29EDCA608];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v8;
  v21[3] = v8;
  v21[0] = v8;
  v21[1] = v8;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *(a1 + 344);
  v10 = 600;
  if (v9 == 4)
  {
    v10 = 616;
    v11 = &SSLHashSHA384;
  }

  else
  {
    v11 = &SSLHashSHA256;
  }

  v18[0] = 0xAAAAAAAAAAAAAAAALL;
  v18[1] = 0;
  v12 = CloneHashState(v11, a1 + v10, v18);
  if (!v12)
  {
    v19 = *v11;
    v20 = v21;
    v13 = off_2A1EFF348;
    if (v9 != 4)
    {
      v13 = off_2A1EFF380;
    }

    v12 = (*v13)(v18, &v19);
    if (!v12)
    {
      if (a4)
      {
        v14 = "server finished";
      }

      else
      {
        v14 = "client finished";
      }

      v12 = tls_handshake_internal_prf(a1, a1 + 520, 0x30uLL, v14, 0xFuLL, v20, v19, a3, a2);
    }
  }

  v15 = v12;
  SSLFreeBuffer(v18);
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

uint64_t SSLCopyBuffer(uint64_t a1, size_t *a2)
{
  v3 = *a1;
  v4 = sslAllocCopy(*(a1 + 8), *a1);
  a2[1] = v4;
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t SSLEncodeChangeCipherSpec(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  result = SSLAllocBuffer(a1, 1uLL);
  if (!result)
  {
    **(a1 + 8) = 1;
    *(a2 + 672) = 1;
  }

  return result;
}

uint64_t SSLEncodeFinishedMessage(size_t *a1, uint64_t a2)
{
  v4 = *a2;
  if ((*a2 - 769) >= 3)
  {
    if (v4 == 768)
    {
      v5 = 36;
      goto LABEL_5;
    }

    if (v4 != 65279)
    {
      return 4294957486;
    }
  }

  v5 = 12;
LABEL_5:
  if (*(a2 + 16))
  {
    v6 = 12;
  }

  else
  {
    v6 = 4;
  }

  result = SSLAllocBuffer(a1, v6 + v5);
  if (!result)
  {
    v8 = v5;
    v9 = SSLEncodeHandshakeHeader(a2, a1, 20, v5);
    result = (*(*(a2 + 24) + 16))(a2, v5, v9, *(a2 + 17));
    if (!result)
    {
      SSLFreeBuffer((a2 + 856));
      return SSLCopyBuffer(&v8, (a2 + 856));
    }
  }

  return result;
}

void *SessionCacheInit(void *result)
{
  *result = 0;
  result[1] = 600;
  return result;
}

uint64_t SessionCacheAddEntry(size_t **a1, size_t *a2, uint64_t a3, size_t *a4)
{
  v8 = a1;
  do
  {
    v8 = *v8;
    if (!v8)
    {
      v11 = time(0);
      if (!a4)
      {
        a4 = a1[1];
      }

      v12 = sslMalloc(0x30uLL);
      v13 = v12;
      if (!v12)
      {
        goto LABEL_16;
      }

      if (!SSLCopyBuffer(a2, v12 + 1))
      {
        if (!SSLCopyBuffer(a3, v13 + 3))
        {
          v13[5] = a4 + v11;
          goto LABEL_16;
        }

        SSLFreeBuffer(v13 + 1);
      }

      sslFree(v13);
      v13 = 0;
LABEL_16:
      *v13 = *a1;
      *a1 = v13;
      return 0;
    }
  }

  while (!SessionCacheEntryMatchKey(v8, a2));
  v9 = *(v8 + 24);
  if (v9 == *a3 && !memcmp(*(v8 + 32), *(a3 + 8), v9))
  {
    return 0;
  }

  SSLFreeBuffer((v8 + 24));

  return SSLCopyBuffer(a3, (v8 + 24));
}

const void *SessionCacheEntryMatchKey(uint64_t a1, size_t *a2)
{
  v2 = *a2;
  if (*a2 != *(a1 + 8))
  {
    return 0;
  }

  result = a2[1];
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  return (memcmp(result, v5, v2) == 0);
}

uint64_t SessionCacheLookupEntry(void *a1, size_t *a2, size_t *a3)
{
  do
  {
    v6 = a1;
    a1 = *a1;
    if (!a1)
    {
      return 4294957492;
    }
  }

  while (!SessionCacheEntryMatchKey(a1, a2));
  if (a1[5] < time(0))
  {
    *v6 = *a1;
    SSLFreeBuffer(a1 + 1);
    SSLFreeBuffer(a1 + 3);
    sslFree(a1);
    return 4294957492;
  }

  return SSLCopyBuffer((a1 + 3), a3);
}

uint64_t SessionCacheDeleteEntry(void *a1, size_t *a2)
{
  while (1)
  {
    v4 = a1;
    a1 = *a1;
    if (!a1)
    {
      break;
    }

    if (SessionCacheEntryMatchKey(a1, a2))
    {
      *v4 = *a1;
      SSLFreeBuffer(a1 + 1);
      SSLFreeBuffer(a1 + 3);
      sslFree(a1);
      return 0;
    }
  }

  return 0;
}

void SessionCacheEmpty(void **a1)
{
  for (i = *a1; *a1; i = *a1)
  {
    *a1 = *i;
    SSLFreeBuffer(i + 1);
    SSLFreeBuffer(i + 3);
    sslFree(i);
  }
}

unint64_t tls_record_decrypted_size(uint64_t a1, unint64_t a2)
{
  v2 = 5;
  if (*(a1 + 488))
  {
    v2 = 13;
  }

  v3 = **(a1 + 16);
  v4 = *(v3 + 4);
  if (v4)
  {
    if (v4 == 2)
    {
      v2 += 24;
    }

    else if (v4 == 1)
    {
      v5 = *(v3 + 10);
      v6 = v2 + **(a1 + 8);
      if (*(a1 + 492) <= 0x301u)
      {
        v5 = 0;
      }

      v2 = v6 + v5 + 1;
    }
  }

  else
  {
    v2 += **(a1 + 8);
  }

  v7 = a2 >= v2;
  v8 = a2 - v2;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t tls_record_get_header_size(uint64_t a1)
{
  if (*(a1 + 488))
  {
    return 13;
  }

  else
  {
    return 5;
  }
}

double tls_record_rollback_write_cipher(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (!v2 || !(*(v2 + 8))(*(a1 + 312)))
  {
    v4 = *(a1 + 152);
    *(a1 + 328) = *(a1 + 136);
    *(a1 + 344) = v4;
    v5 = *(a1 + 184);
    *(a1 + 360) = *(a1 + 168);
    *(a1 + 376) = v5;
    v6 = *(a1 + 120);
    *(a1 + 296) = *(a1 + 104);
    *(a1 + 312) = v6;
    v7 = *(a1 + 440);
    *(a1 + 136) = *(a1 + 424);
    *(a1 + 152) = v7;
    v8 = *(a1 + 472);
    *(a1 + 168) = *(a1 + 456);
    *(a1 + 184) = v8;
    v9 = *(a1 + 408);
    *(a1 + 104) = *(a1 + 392);
    *(a1 + 120) = v9;
    result = 0.0;
    *(a1 + 456) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 408) = 0u;
  }

  return result;
}

double tls_record_advance_write_cipher(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (!v2 || !(*(v2 + 8))(*(a1 + 408)))
  {
    v4 = *(a1 + 152);
    *(a1 + 424) = *(a1 + 136);
    *(a1 + 440) = v4;
    v5 = *(a1 + 184);
    *(a1 + 456) = *(a1 + 168);
    *(a1 + 472) = v5;
    v6 = *(a1 + 120);
    *(a1 + 392) = *(a1 + 104);
    *(a1 + 408) = v6;
    v7 = *(a1 + 344);
    *(a1 + 136) = *(a1 + 328);
    *(a1 + 152) = v7;
    v8 = *(a1 + 376);
    *(a1 + 168) = *(a1 + 360);
    *(a1 + 184) = v8;
    v9 = *(a1 + 312);
    *(a1 + 104) = *(a1 + 296);
    *(a1 + 120) = v9;
    *(a1 + 490) = 0;
    result = 0.0;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
  }

  return result;
}

uint64_t tls_record_set_protocol_version(uint64_t a1, int a2)
{
  if ((a2 - 768) >= 4 && a2 != 65279)
  {
    return 4294957293;
  }

  v2 = 0;
  *(a1 + 492) = a2;
  return v2;
}

uint64_t tls_record_parse_ssl2_header(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4, _BYTE *a5)
{
  if (a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3 & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  *a4 = SSLDecodeInt(a3, 2) & 0x7FFF;
  result = 0;
  if (a5)
  {
    *a5 = 0x80;
  }

  return result;
}

double tls_stream_parser_create(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10900402D626F53uLL);
  result = 0.0;
  *v4 = 0u;
  v4[1] = 0u;
  *(v4 + 4) = a1;
  *(v4 + 5) = a2;
  return result;
}

void tls_stream_parser_destroy(void *a1)
{
  SSLFreeBuffer(a1 + 2);

  sslFree(a1);
}

void *tls_cache_create()
{
  v0 = malloc_type_malloc(0x50uLL, 0x102004089B94702uLL);
  v1 = v0;
  if (v0)
  {
    SessionCacheInit(v0);
    pthread_mutex_init((v1 + 2), 0);
  }

  return v1;
}

uint64_t tls_cache_destroy(uint64_t a1)
{
  SessionCacheEmpty(a1);

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t tls_cache_empty(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  SessionCacheEmpty(a1);

  return pthread_mutex_unlock((a1 + 16));
}

uint64_t tls_cache_save_session_data(uint64_t a1, size_t *a2, uint64_t a3, size_t *a4)
{
  pthread_mutex_lock((a1 + 16));
  v8 = SessionCacheAddEntry(a1, a2, a3, a4);
  pthread_mutex_unlock((a1 + 16));
  return v8;
}

uint64_t tls_cache_load_session_data(uint64_t a1, size_t *a2, size_t *a3)
{
  pthread_mutex_lock((a1 + 16));
  v6 = SessionCacheLookupEntry(a1, a2, a3);
  pthread_mutex_unlock((a1 + 16));
  return v6;
}

uint64_t tls_cache_delete_session_data(uint64_t a1, size_t *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = SessionCacheDeleteEntry(a1, a2);
  pthread_mutex_unlock((a1 + 16));
  return v4;
}

uint64_t SSLReallocBuffer(uint64_t a1, size_t a2)
{
  v4 = malloc_type_realloc(*(a1 + 8), a2, 0x977EAAC5uLL);
  if (v4)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  *a1 = v5;
  *(a1 + 8) = v4;
  return v6;
}

uint64_t SSLCopyBufferFromData(const void *a1, size_t a2, size_t *a3)
{
  v5 = sslAllocCopy(a1, a2);
  a3[1] = v5;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a3 = a2;
  return result;
}

uint64_t SSLCopyBufferTerm(const void *a1, size_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(a2 + 1, 0x7E6F9180uLL);
  if (v6)
  {
    v7 = a2 + 1;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v6;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  memmove(v6, a1, a2);
  *(*(a3 + 8) + a2) = 0;
  v8 = strlen(*(a3 + 8));
  result = 0;
  *a3 = v8;
  return result;
}

char *tls_private_key_rsa_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[1] = a2;
  v5[0] = 0xAAAAAAAA00000000;
  v5[2] = a3;
  v5[3] = a4;
  return tls_private_key_create(v5, a1, 0);
}

char *tls_private_key_ecdsa_create(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v5[1] = a2;
  v5[0] = 0xAAAAAAAA00000001;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = a4;
  LOWORD(v6) = a3;
  return tls_private_key_create(v5, a1, 0);
}

uint64_t tls_handshake_set_callbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 1104) = a3;
  *(a1 + 1112) = a2;
  return 0;
}

uint64_t tls_handshake_get_ciphersuites(uint64_t a1, void *a2, _DWORD *a3)
{
  *a2 = *(a1 + 352);
  *a3 = *(a1 + 360);
  return 0;
}

uint64_t tls_handshake_set_mtu(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x40)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 840) = a2;
  return result;
}

uint64_t tls_handshake_set_min_protocol_version(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = a2;
  v2 = *(a1 + 12);
  if (*(a1 + 16))
  {
    if (v2 <= a2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v2 < a2)
  {
LABEL_5:
    *(a1 + 12) = a2;
  }

  return 0;
}

uint64_t tls_handshake_set_max_protocol_version(uint64_t a1, unsigned int a2)
{
  *(a1 + 12) = a2;
  v2 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 >= a2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (v2 > a2)
  {
LABEL_5:
    *(a1 + 8) = a2;
  }

  return 0;
}

uint64_t tls_handshake_set_peer_hostname(uint64_t a1, const void *a2, size_t a3)
{
  SSLFreeBuffer((a1 + 392));

  return SSLCopyBufferTerm(a2, a3, a1 + 392);
}

uint64_t tls_handshake_get_peer_hostname(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 392);
  *a2 = *(a1 + 400);
  *a3 = v3;
  return 0;
}

uint64_t tls_handshake_set_min_dh_group_size(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x200)
  {
    v2 = 512;
  }

  else
  {
    v2 = a2;
  }

  if (v2 >= 0x800)
  {
    v2 = 2048;
  }

  *(a1 + 76) = v2;
  return 0;
}

uint64_t tls_handshake_set_dh_parameters(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = ccder_decode_dhparam_n();
  sslFree(*(a1 + 96));
  v6 = ccdh_gp_size();
  v7 = sslMalloc(v6);
  *(a1 + 96) = v7;
  if (!v7)
  {
    return 4294967188;
  }

  *v7 = v5;
  if (ccder_decode_dhparams())
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t tls_handshake_set_encrypt_rsa_public_key(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sslFreePubKey(a1 + 168);

  return sslGetPubKeyFromBits(a2, a3, a1 + 168);
}

uint64_t tls_handshake_set_acceptable_client_auth_type(uint64_t a1, const void *a2, unsigned int a3)
{
  sslFree(*(a1 + 776));
  v6 = sslMalloc(4 * a3);
  *(a1 + 776) = v6;
  if (!v6)
  {
    return 4294967188;
  }

  *(a1 + 772) = a3;
  memcpy(v6, a2, 4 * a3);
  return 0;
}

uint64_t tls_handshake_set_peer_ec_public_key(uint64_t a1, int a2, void *a3)
{
  sslFreePubKey(a1 + 40);

  return sslGetEcPubKeyFromBits(a2, a3, a1 + 40);
}

uint64_t tls_handshake_set_npn_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  SSLFreeBuffer((a1 + 936));
  return SSLCopyBuffer(v5, (a1 + 936));
}

uint64_t tls_handshake_set_alpn_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  SSLFreeBuffer((a1 + 976));
  return SSLCopyBuffer(v5, (a1 + 976));
}

uint64_t tls_handshake_set_ocsp_responder_id_list(uint64_t a1, uint64_t **a2)
{
  tls_free_buffer_list(*(a1 + 1032));

  return tls_copy_buffer_list(a2, (a1 + 1032));
}

uint64_t tls_handshake_set_ocsp_request_extensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  SSLFreeBuffer((a1 + 1016));
  return SSLCopyBuffer(v5, (a1 + 1016));
}

uint64_t tls_handshake_set_ocsp_response(uint64_t a1, uint64_t a2)
{
  SSLFreeBuffer((a1 + 1048));

  return SSLCopyBuffer(a2, (a1 + 1048));
}

uint64_t tls_handshake_set_sct_list(uint64_t a1, uint64_t **a2)
{
  tls_free_buffer_list(*(a1 + 1072));

  return tls_copy_buffer_list(a2, (a1 + 1072));
}

uint64_t tls_handshake_set_user_agent(uint64_t a1, const char *a2)
{
  sslFree(*(a1 + 408));
  *(a1 + 408) = 0;
  if (a2)
  {
    v4 = strlen(a2);
    v5 = sslMalloc(v4 + 1);
    *(a1 + 408) = v5;
    strcpy(v5, a2);
  }

  return 0;
}

uint64_t tls_handshake_negotiate(uint64_t a1, void *a2)
{
  v3 = *(a1 + 380);
  if (v3 != 17 && v3 != 2)
  {
    return 4294957466;
  }

  if (a2)
  {
    (*(*(a1 + 1112) + 40))(*(a1 + 1104), *a2, a2[1], a1 + 264);
    SSLFreeBuffer((a1 + 248));
    SSLCopyBuffer(a2, (a1 + 248));
  }

  else
  {
    SSLFreeBuffer((a1 + 248));
  }

  return SSLAdvanceHandshake(0, a1);
}

uint64_t tls_handshake_send_alert(uint64_t a1, int a2, unsigned int a3)
{
  if ((a3 > 0x3C || ((1 << a3) & 0x100FFF0040700401) == 0) && (a3 - 70 > 0x28 || ((1 << (a3 - 70)) & 0x10040110403) == 0))
  {
    return 4294967246;
  }

  if (a2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return SSLSendAlert(v4, a3, a1);
}

BOOL tls_handshake_get_session_proposed(uint64_t a1, void *a2)
{
  v2 = *(a1 + 296);
  if (a2)
  {
    *a2 = *(a1 + 288);
    a2[1] = v2;
  }

  return v2 != 0;
}

uint64_t tls_handshake_get_session_match(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 312);
    *a2 = *(a1 + 304);
    a2[1] = v2;
  }

  return *(a1 + 320);
}

uint64_t tls_handshake_get_peer_npn_data(uint64_t a1)
{
  if (*(a1 + 932))
  {
    return a1 + 952;
  }

  else
  {
    return 0;
  }
}

uint64_t tls_handshake_get_peer_alpn_data(uint64_t a1)
{
  if (*(a1 + 971))
  {
    return a1 + 992;
  }

  else
  {
    return 0;
  }
}

uint64_t tls_handshake_get_peer_ocsp_response(uint64_t a1)
{
  if (*(a1 + 1040))
  {
    return a1 + 1048;
  }

  else
  {
    return 0;
  }
}

uint64_t tls_handshake_get_peer_ocsp_request_extensions(uint64_t a1)
{
  if (*(a1 + 1009))
  {
    return a1 + 1016;
  }

  else
  {
    return 0;
  }
}

__n128 tls_handshake_internal_master_secret(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 >= 0x30uLL)
  {
    result = *(a1 + 520);
    v4 = *(a1 + 552);
    *(a2 + 16) = *(a1 + 536);
    *(a2 + 32) = v4;
    *a2 = result;
    *a3 = 48;
  }

  return result;
}

__n128 tls_handshake_internal_server_random(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 >= 0x20uLL)
  {
    result = *(a1 + 468);
    v4 = *(a1 + 484);
    *a2 = result;
    *(a2 + 16) = v4;
    *a3 = 32;
  }

  return result;
}

__n128 tls_handshake_internal_client_random(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 >= 0x20uLL)
  {
    result = *(a1 + 436);
    v4 = *(a1 + 452);
    *a2 = result;
    *(a2 + 16) = v4;
    *a3 = 32;
  }

  return result;
}

uint64_t tls_handshake_internal_set_master_secret_function(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 752) = a2;
  *(a1 + 760) = a3;
  return 0;
}

uint64_t tls_handshake_internal_set_session_ticket(uint64_t a1, const void *a2, size_t a3)
{
  if (a3 >> 16)
  {
    return 4294967246;
  }

  SSLFreeBuffer((a1 + 736));

  return SSLCopyBufferFromData(a2, a3, (a1 + 736));
}

uint64_t sslCipherSuiteGetMinSupportedTLSVersion(int a1)
{
  if (a1 > 155)
  {
    if ((a1 - 49153) >= 0x19)
    {
      return 771;
    }

    return 769;
  }

  else
  {
    result = 768;
    if (a1 >= 0x1E)
    {
      v3 = a1 - 47;
      if (v3 > 0x3E || ((1 << v3) & 0x7F0000000003F000) != 0 || ((1 << v3) & 0xFFF) == 0)
      {
        return 771;
      }
    }
  }

  return result;
}

uint64_t sslCipherSuiteGetKeydataSize(int a1)
{
  MacSize = sslCipherSuiteGetMacSize(a1);
  SymmetricCipherKeySize = sslCipherSuiteGetSymmetricCipherKeySize(a1);
  return 2 * ((SymmetricCipherKeySize + MacSize) & 0x7F) + 2 * (sslCipherSuiteGetSymmetricCipherBlockIvSize(a1) & 0x7F);
}

uint64_t SSLEncodedBufferListSize(void *a1, int a2)
{
  for (i = 0; a1; i += a2 + v3[1])
  {
    v3 = a1;
    a1 = *a1;
  }

  return i;
}

uint64_t SSLEncodeBufferList(uint64_t *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
    v4 = a2;
    do
    {
      v5 = SSLEncodeInt(a3, v3[1], v4);
      memcpy(v5, v3[2], v3[1]);
      v6 = v3;
      v3 = *v3;
      a3 = v5 + v6[1];
    }

    while (v3);
  }

  return a3;
}

uint64_t SSLAddSessionData(uint64_t a1)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (!*(a1 + 312) && !*(a1 + 720))
  {
    return 4294957492;
  }

  v2 = SSLEncodedBufferListSize(*(a1 + 1072), 2);
  v3 = SSLEncodedBufferListSize(*(a1 + 64), 3);
  v4 = SSLAllocBuffer(&v18, v2 + v3 + *(a1 + 712) + *(a1 + 1048) + 144);
  if (!v4)
  {
    v5 = v19;
    v6 = *(a1 + 312);
    if (v6)
    {
      v7 = *(a1 + 304);
      *v19 = v7;
      memcpy((v5 + 8), v6, v7);
    }

    else
    {
      *v19 = 14;
      qmemcpy((v5 + 8), "SESSION-TICKET", 14);
    }

    *(v5 + 40) = *a1;
    *(v5 + 48) = *(a1 + 328);
    v8 = *(a1 + 520);
    v9 = *(a1 + 536);
    *(v5 + 84) = *(a1 + 552);
    *(v5 + 68) = v9;
    *(v5 + 52) = v8;
    v10 = *(a1 + 712);
    v11 = *(a1 + 1048);
    *(v5 + 104) = v10;
    *(v5 + 112) = v11;
    *(v5 + 120) = v2;
    *(v5 + 128) = v3;
    *(v5 + 50) = 0;
    memcpy((v5 + 137), *(a1 + 720), v10);
    v12 = (v5 + 137 + *(a1 + 712));
    memcpy(v12, *(a1 + 1056), *(a1 + 1048));
    v13 = SSLEncodeBufferList(*(a1 + 1072), 2, v12 + *(a1 + 1048));
    SSLEncodeBufferList(*(a1 + 64), 3, v13);
    if (v18 >= 0x90 && v18 == vaddvq_s64(vaddq_s64(*(v19 + 104), *(v19 + 120))) + 144)
    {
      v14 = *(a1 + 768) == 1 && (*(a1 + 769) & 1) != 0;
      *(v5 + 136) = v14;
      v15 = 256;
      if (*(a1 + 17))
      {
        v15 = 312;
      }

      v16 = 248;
      if (*(a1 + 17))
      {
        v16 = 304;
      }

      v4 = (*(*(a1 + 1112) + 32))(*(a1 + 1104), *(a1 + v16), *(a1 + v15));
    }

    else
    {
      v4 = 4294957486;
    }

    SSLFreeBuffer(&v18);
  }

  return v4;
}

uint64_t SSLDeleteSessionData(void *a1)
{
  if (a1[39])
  {
    return (*(a1[139] + 48))(a1[138], a1[38]);
  }

  else
  {
    return 4294957492;
  }
}

uint64_t SSLRetrieveSessionTicket(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0x90)
  {
    return 4294957486;
  }

  v3 = *(a2 + 104);
  if (a1 != vaddvq_s64(vaddq_s64(v3, *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  result = 0;
  a3[1] = a2 + 137;
  *a3 = v3.i64[0];
  return result;
}

uint64_t SSLRetrieveSessionID(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0x90 || a1 != vaddvq_s64(vaddq_s64(*(a2 + 104), *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  result = 0;
  *a3 = *a2;
  a3[1] = a2 + 8;
  return result;
}

uint64_t SSLClientValidateSessionDataBefore(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x90 || a1 != vaddvq_s64(vaddq_s64(*(a2 + 104), *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  v3 = *(a3 + 12);
  if (v3 <= *(a2 + 44) && (v4 = *(a2 + 40), v4 <= v3) && v4 >= *(a3 + 8) && cipherSuiteInSet(*(a2 + 48), *(a3 + 352), *(a3 + 360)))
  {
    return 0;
  }

  else
  {
    return 4294957492;
  }
}

uint64_t SSLClientValidateSessionDataAfter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x90 || a1 != vaddvq_s64(vaddq_s64(*(a2 + 104), *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  if (*(a2 + 40) == *a3 && *(a2 + 48) == *(a3 + 328) && *(a2 + 136) == *(a3 + 769))
  {
    return 0;
  }

  return 4294957496;
}

uint64_t SSLInstallSessionFromData(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x90)
  {
    return 4294957486;
  }

  if (a1 != vaddvq_s64(vaddq_s64(*(a2 + 104), *(a2 + 120))) + 144)
  {
    return 4294957486;
  }

  v6 = *(a2 + 52);
  v7 = *(a2 + 84);
  *(a3 + 536) = *(a2 + 68);
  *(a3 + 552) = v7;
  *(a3 + 520) = v6;
  v8 = (a2 + *(a2 + 104) + 137);
  SSLFreeBuffer((a3 + 1048));
  *(a3 + 1040) = 0;
  v9 = *(a2 + 112);
  if (v9)
  {
    *(a3 + 1040) = 1;
    SSLCopyBufferFromData(v8, v9, (a3 + 1048));
    v10 = *(a2 + 112);
  }

  else
  {
    v10 = 0;
  }

  v11 = &v8[v10];
  tls_free_buffer_list(*(a3 + 1072));
  *(a3 + 1072) = 0;
  v12 = *(a2 + 120);
  if (v12)
  {
    result = SSLDecodeBufferList(v11, v12, 2, (a3 + 1072));
    if (result)
    {
      return result;
    }

    v13 = *(a2 + 120);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a3 + 64);
  v14 = (a3 + 64);
  SSLFreeCertificates(v15);
  *v14 = 0;
  v16 = *(a2 + 128);
  if (!v16)
  {
    return 0;
  }

  result = SSLDecodeBufferList(&v11[v13], v16, 3, v14);
  if (!result)
  {
    return 0;
  }

  return result;
}

BOOL cipherSuiteInSet(int a1, unsigned __int16 *a2, unint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*a2 == a1)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (a3 == v4)
    {
      break;
    }

    v6 = a2[v4++];
  }

  while (v6 != a1);
  return v5 < a3;
}

uint64_t ValidateSelectedCiphersuite(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (!v1)
  {
    return 4294957495;
  }

  v2 = *(a1 + 352);
  while (1)
  {
    v3 = *v2++;
    if (v3 == *(a1 + 328))
    {
      break;
    }

    if (!--v1)
    {
      return 4294957495;
    }
  }

  InitCipherSpecParams(a1);
  return 0;
}

uint64_t tls_handshake_ciphersuite_is_valid(uint64_t a1, int a2)
{
  KeyExchangeMethod = sslCipherSuiteGetKeyExchangeMethod(a2);
  SymmetricCipherAlgorithm = sslCipherSuiteGetSymmetricCipherAlgorithm(a2);
  sslCipherSuiteGetMacAlgorithm(a2);
  result = 0;
  if (KeyExchangeMethod <= 0x13)
  {
    if (((1 << KeyExchangeMethod) & 0x80A22) != 0)
    {
      goto LABEL_5;
    }

    if (((1 << KeyExchangeMethod) & 0x68000) == 0)
    {
      return result;
    }

    if (*(a1 + 12) != 768)
    {
LABEL_5:
      result = 0;
      if (SymmetricCipherAlgorithm > 8)
      {
        return result;
      }

      if (((1 << SymmetricCipherAlgorithm) & 0x70) != 0)
      {
        if (*(a1 + 12) != 768 || (*(a1 + 1064) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (((1 << SymmetricCipherAlgorithm) & 5) != 0)
        {
          return 1;
        }

        if (((1 << SymmetricCipherAlgorithm) & 0x180) == 0)
        {
          return result;
        }

        if (*(a1 + 12) == 771)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sslEncodeDhParams(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v8 = *a3 + 7;
  v9 = ccdh_gp_size();
  v10 = sslMalloc(v9);
  if (!v10)
  {
    return 4294967188;
  }

  v11 = v10;
  v12 = ccdh_gp_size();
  bzero(v11, v12);
  v13 = *a3;
  v14 = a3[1];
  v15 = *a4;
  v16 = *(a4 + 8);
  inited = ccdh_init_gp_from_bytes();
  v18 = inited;
  if (inited)
  {
    if (inited == -168)
    {
      v19 = copyHexString(a3[1], *a3);
      v20 = copyHexString(*(a4 + 8), *a4);
      tls_metric_insecure_dh_param();
      tls_handshake_set_session_warning(a1, -168);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      v18 = 4294957446;
    }

    sslFree(v11);
  }

  else
  {
    *a2 = v11;
  }

  return v18;
}

uint64_t sslDhCreateKey(uint64_t a1, void *a2)
{
  v3 = ccdh_ccn_size();
  v4 = sslMalloc(2 * v3 + 16);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  if (!ccDRBGGetRngState())
  {
    abort();
  }

  key = ccdh_generate_key();
  if (key)
  {
    sslFree(v5);
  }

  else
  {
    *a2 = v5;
  }

  return key;
}

uint64_t sslDhKeyExchange(uint64_t *a1, uint64_t *a2, size_t *a3)
{
  v19[1] = *MEMORY[0x29EDCA608];
  if (!ccDRBGGetRngState())
  {
    abort();
  }

  v6 = *a1;
  v7 = ccdh_ccn_size();
  MEMORY[0x2A1C7C4A8](v7);
  if (v9 >= 0x10)
  {
    v10 = (v19 - v8);
    do
    {
      *v10 = 0xAAAAAAAAAAAAAAAALL;
      v10[1] = 0xAAAAAAAAAAAAAAAALL;
      v10 += 2;
      v8 -= 16;
    }

    while (v8);
  }

  v11 = *a2;
  v12 = a2[1];
  if (ccdh_import_pub())
  {
    goto LABEL_10;
  }

  v13 = MEMORY[0x29C28DA10](v6);
  v14 = SSLAllocBuffer(a3, 8 * v13);
  if (v14)
  {
    v16 = v14;
    goto LABEL_12;
  }

  v15 = a3[1];
  if (ccdh_compute_shared_secret())
  {
LABEL_10:
    v16 = 4294957496;
LABEL_12:
    __ssl_debug("sslError", "sslDhKeyExchange", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 192, "sslDhKeyExchange: failed to compute key (error %d)\n", v16);
    goto LABEL_9;
  }

  v16 = 0;
LABEL_9:
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t sslRawSign(void *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5, size_t *a6)
{
  __len = a5;
  v10 = *(a1 + 4);
  if (v10 == 1)
  {
    v11 = (a1[5])(*a1, a2, a3, a4, &__len);
  }

  else
  {
    if (v10)
    {
      v12 = 4294967246;
      goto LABEL_12;
    }

    v11 = (a1[4])(*a1, 0, a2, a3, a4, &__len);
  }

  v12 = v11;
  if (v11)
  {
LABEL_12:
    __ssl_debug("sslError", "sslRawSign", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 336, "privKey->desc.rsa.sign: failed (error %d)\n", v12);
    v13 = __len;
    goto LABEL_13;
  }

  v13 = __len;
  if (*(a1 + 4))
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 > __len;
  }

  if (v14)
  {
    v16 = a5 - __len;
    memmove(&a4[a5 - __len], a4, __len);
    bzero(a4, v16);
    v12 = 0;
    v13 = a5;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:
  *a6 = v13;
  return v12;
}

uint64_t sslEcdsaSign(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a5;
  v7 = (*(a1 + 40))(*a1, a2, a3, a4, &v9);
  if (v7)
  {
    __ssl_debug("sslError", "sslEcdsaSign", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 373, "privKey->desc.ecdsa.sign: failed (error %d)\n", v7);
  }

  *a6 = v9;
  return v7;
}

uint64_t sslRawVerify(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (*(a1 + 8))
    {
      v3 = ccec_verify();
      if (v3)
      {
        v2 = v3;
        __ssl_debug("sslError", "sslRawEccVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 466, "sslRawEccVerify: ccec_verify failed (error %d)\n", v3);
        return v2;
      }

      __ssl_debug("sslError", "sslRawEccVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 469, "sslRawEccVerify: ccec_verify signature verify error\n", 0);
      return 4294957487;
    }

    __ssl_debug("sslError", "sslRawEccVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 460, "Internal Error: Invalid EC public key\n");
    return 4294957486;
  }

  if (!*(a1 + 8))
  {
    __ssl_debug("sslError", "sslRawRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 431, "Internal Error: Invalid RSA public key\n");
    return 4294957486;
  }

  v1 = ccrsa_verify_pkcs1v15();
  if (!v1)
  {
    __ssl_debug("sslError", "sslRawRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 441, "sslRawRsaVerify: ccrsa_verify_pkcs1v15 signature verify error\n", 0);
    return 4294957487;
  }

  v2 = v1;
  __ssl_debug("sslError", "sslRawRsaVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 438, "sslRawRsaVerify: ccrsa_verify_pkcs1v15 failed (error %d)\n", v1);
  return v2;
}

uint64_t sslRsaEncrypt(uint64_t a1, const void *a2, size_t a3, char *a4, size_t a5, size_t *a6)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*a1 == 1 && (v6 = *(a1 + 8)) != 0)
  {
    v26 = a5;
    v27 = a6;
    v28 = &v26;
    v10 = *v6;
    MEMORY[0x2A1C7C4A8](a1);
    v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v13)
    {
      memset(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v11);
    }

    v14 = *v6;
    v15 = ccn_write_uint_size();
    if (v15 - 11 < a3)
    {
      goto LABEL_22;
    }

    v16 = v15;
    v17 = v12;
    v18 = 8 * v14 - v15;
    if (v18)
    {
      bzero(v12, v18);
      v17 = &v12[v18];
    }

    *v17 = 512;
    v19 = v17 + 2;
    v20 = ccDRBGGetRngState();
    if (!v20)
    {
      abort();
    }

    if ((*v20)(v20, v16 - a3 - 3, v17 + 2))
    {
      goto LABEL_22;
    }

    if ((v16 - a3 - 3) >= 1)
    {
      do
      {
        if (!*v19)
        {
          *v19 = -1;
        }

        ++v19;
      }

      while (v19 < &v17[v16 - a3 - 1]);
    }

    *v19 = 0;
    memcpy(v19 + 1, a2, a3);
    v21 = *v6;
    ccn_swap();
    if (ccrsa_pub_crypt())
    {
LABEL_22:
      sslRsaEncrypt_cold_1();
      result = 4294957487;
    }

    else
    {
      v22 = *v6;
      ccn_write_uint_padded();
      v23 = v26;
      if (v26 <= v16)
      {
        v23 = v16;
      }

      else
      {
        memmove(&a4[v26 - v16], a4, v16);
        bzero(a4, v23 - v16);
      }

      result = 0;
      if (v27)
      {
        *v27 = v23;
      }
    }
  }

  else
  {
    __ssl_debug("sslError", "sslRsaEncrypt", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 565, "Internal Error: Invalid RSA public key\n");
    result = 4294957486;
  }

  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sslRsaDecrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a5;
  v7 = (*(a1 + 40))(*a1, a2, a3, a4, &v9);
  *a6 = v9;
  if (v7)
  {
    __ssl_debug("sslError", "sslRsaDecrypt", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCrypto.c", 662, "sslRsaDecrypt: privKey->desc.rsa->decrypt failed (error %d)\n", v7);
  }

  return v7;
}

void debug_log_chain(void *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v1 = a1;
    v2 = 0;
    do
    {
      v15 = -86;
      *&v3 = 0xAAAAAAAAAAAAAAAALL;
      *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14[2] = v3;
      v14[3] = v3;
      v14[0] = v3;
      v14[1] = v3;
      __ssl_debug("sslLogNegotiateDebug", "debug_log_chain", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 147, "cert: %lu", v2);
      __ssl_debug("sslLogNegotiateDebug", "debug_log_chain", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 148, "-----BEGIN CERTIFICATE-----");
      v4 = v1[1];
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          v7 = v1[2];
          v8 = *(v7 + v6) << 8;
          if (v6 + 1 < v4)
          {
            v8 |= *(v7 + v6 + 1);
          }

          v9 = (v8 << 8);
          if (v6 + 2 < v4)
          {
            v9 = v9 | *(v7 + v6 + 2);
          }

          v6 += 3;
          v10 = v14 + v5;
          *v10 = base64_chars[v9 >> 18];
          v10[1] = base64_chars[(v9 >> 12) & 0x3F];
          if (v6 <= v1[1] + 1)
          {
            v11 = base64_chars[(v9 >> 6) & 0x3F];
          }

          else
          {
            v11 = 61;
          }

          *(v14 + v5 + 2) = v11;
          if (v6 <= v1[1])
          {
            v12 = base64_chars[v9 & 0x3F];
          }

          else
          {
            v12 = 61;
          }

          *(v14 + v5 + 3) = v12;
          v5 += 4;
          if (v5 == 64)
          {
            v15 = 0;
            __ssl_debug("sslLogNegotiateDebug", "debug_log_chain", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 176, "%s", v14);
            v5 = 0;
          }

          v4 = v1[1];
        }

        while (v6 < v4);
        if (v5)
        {
          *(v14 + v5) = 0;
          __ssl_debug("sslLogNegotiateDebug", "debug_log_chain", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 183, "%s", v14);
        }
      }

      ++v2;
      __ssl_debug("sslLogNegotiateDebug", "debug_log_chain", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 185, "-----END CERTIFICATE-----");
      v1 = *v1;
    }

    while (v1);
  }

  v13 = *MEMORY[0x29EDCA608];
}

uint64_t SSLEncodeCertificateStatus(size_t *a1, uint64_t a2)
{
  v2 = *(a2 + 1048);
  if (!v2)
  {
    return 4294957486;
  }

  v5 = v2 + 4;
  v6 = 4;
  if (*(a2 + 16))
  {
    v6 = 12;
  }

  result = SSLAllocBuffer(a1, v6 + v5);
  if (!result)
  {
    v8 = SSLEncodeHandshakeHeader(a2, a1, 22, v5);
    *v8 = 1;
    v9 = SSLEncodeInt((v8 + 1), *(a2 + 1048), 3);
    memcpy(v9, *(a2 + 1056), *(a2 + 1048));
    return 0;
  }

  return result;
}

uint64_t SSLProcessCertificateStatus(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a1)
  {
    __ssl_debug("sslError", "SSLProcessCertificateStatus", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 294, "SSLProcessCertificateStatus: message length decode error (1)\n");
    return 4294957496;
  }

  if (*a2 != 1)
  {
    return 0;
  }

  if (a1 <= 2)
  {
    __ssl_debug("sslError", "SSLProcessCertificateStatus", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 305, "SSLProcessCertificateStatus: message length decode error (2)\n");
    return 4294957496;
  }

  v7 = SSLDecodeSize((a2 + 1), 3);
  if (!v7)
  {
    __ssl_debug("sslError", "SSLProcessCertificateStatus", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 312, "SSLProcessCertificateStatus: message length decode error (3)\n");
    return 4294957496;
  }

  v8 = v7;
  if (v7 + 4 != a1)
  {
    __ssl_debug("sslError", "SSLProcessCertificateStatus", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 317, "SSLProcessCertificateStatus: message length decode error (4)\n");
    return 4294957496;
  }

  *(a3 + 1040) = 1;
  SSLFreeBuffer((a3 + 1048));

  return SSLCopyBufferFromData(a2 + 4, v8, (a3 + 1048));
}

uint64_t SSLProcessCertificateRequest(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a3 + 16))
  {
    v3 = 65279;
  }

  else
  {
    v3 = 770;
  }

  if (*a3 <= v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 5;
  }

  if (a1 < v4)
  {
    __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 408, "SSLProcessCertificateRequest: length decode error 1\n", v31);
    return 4294957496;
  }

  v6 = *a2;
  if (!*a2 || (v8 = v4 + v6, a1 < v8))
  {
    __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 414, "SSLProcessCertificateRequest: length decode error 2\n", v31);
    return 4294957496;
  }

  sslFree(*(a3 + 776));
  *(a3 + 772) = v6;
  v12 = sslMalloc(4 * v6);
  *(a3 + 776) = v12;
  if (!v12)
  {
    return 4294957486;
  }

  v13 = a2 + 1;
  if (*(a3 + 772))
  {
    v14 = 0;
    do
    {
      v12[v14] = v13[v14];
      ++v14;
    }

    while (v14 < *(a3 + 772));
    v13 += v14;
  }

  if (*(a3 + 16))
  {
    v15 = 65279;
  }

  else
  {
    v15 = 770;
  }

  if (*a3 <= v15)
  {
    v17 = 0;
    goto LABEL_33;
  }

  v16 = SSLDecodeInt(v13, 2);
  if (v16 < 2 || (v17 = v16, a1 < v16 + v8))
  {
    __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 436, "SSLProcessCertificateRequest: length decode error 3\n", v31);
    return 4294957496;
  }

  if (v16)
  {
    __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 441, "SSLProcessCertificateRequest: signAlg len odd\n", v31);
    return 4294957496;
  }

  sslFree(*(a3 + 792));
  *(a3 + 788) = v17 >> 1;
  v18 = sslMalloc(8 * (v17 >> 1));
  *(a3 + 792) = v18;
  if (!v18)
  {
    return 4294957486;
  }

  v19 = *(a3 + 788);
  v13 += 2;
  if (v19)
  {
    v20 = v18 + 4;
    do
    {
      *(v20 - 1) = *v13;
      *v20 = v13[1];
      v20 += 2;
      v13 += 2;
      --v19;
    }

    while (v19);
  }

LABEL_33:
  tls_free_buffer_list(*(a3 + 384));
  *(a3 + 384) = 0;
  v21 = SSLDecodeInt(v13, 2);
  if (a1 != v17 + v8 + v21)
  {
    __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 468, "SSLProcessCertificateRequest: length decode error 3\n", v31);
    return 4294957496;
  }

  v9 = v21;
  v22 = v13 + 2;
  if (v21)
  {
    while (1)
    {
      if (v9 == 1)
      {
        __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 473, "SSLProcessCertificateRequest: dnListLen error 1\n", v31);
        return 4294957496;
      }

      v23 = SSLDecodeInt(v22, 2);
      v24 = v9 >= v23 + 2;
      v9 = v9 - (v23 + 2);
      if (!v24)
      {
        __ssl_debug("sslError", "SSLProcessCertificateRequest", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 479, "SSLProcessCertificateRequest: dnListLen error 2\n", v31);
        return 4294957496;
      }

      v25 = v23;
      v26 = SSLAllocBuffer(&v31, 0x18uLL);
      if (v26)
      {
        return v26;
      }

      v27 = v32;
      v28 = SSLAllocBuffer((v32 + 8), v25);
      if (v28)
      {
        break;
      }

      v29 = (v22 + 2);
      memcpy(*(v27 + 16), v29, v25);
      v22 = &v29[v25];
      *v27 = *(a3 + 384);
      *(a3 + 384) = v27;
      if (!v9)
      {
        return v9;
      }
    }

    v30 = v28;
    SSLFreeBuffer(&v31);
    return v30;
  }

  return v9;
}

uint64_t SSLEncodeCertificateVerify(size_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[2] = v4;
  v33[3] = v4;
  v33[0] = v4;
  v33[1] = v4;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0;
  v32[0] = 64;
  v32[1] = v33;
  MaxSigSize = sslGetMaxSigSize(*(a2 + 32), &v30);
  if (MaxSigSize)
  {
    goto LABEL_2;
  }

  v7 = *(*(a2 + 32) + 16);
  if (v7 == 1)
  {
    v8 = *a2;
    if (*a2 < 0x301u)
    {
      goto LABEL_44;
    }

    v9 = 0;
    v10 = 3;
  }

  else
  {
    if (v7)
    {
      goto LABEL_44;
    }

    v8 = *a2;
    v9 = 1;
    v10 = 1;
  }

  v11 = *(a2 + 16) == 0;
  if (*(a2 + 16))
  {
    v12 = 12;
  }

  else
  {
    v12 = 4;
  }

  v13 = v12 + v30;
  v14 = v12 + v30 + 2;
  v31 = v14;
  if (v11)
  {
    v15 = 770;
  }

  else
  {
    v15 = 65279;
  }

  if (v8 <= v15)
  {
    v19 = 0;
  }

  else
  {
    if (!*(a2 + 788))
    {
      goto LABEL_44;
    }

    v16 = *(a2 + 800);
    if (!v16)
    {
      goto LABEL_44;
    }

    v17 = 0;
    while (1)
    {
      v18 = (*(a2 + 808) + 8 * v17);
      if (v10 == v18[1])
      {
        break;
      }

LABEL_23:
      ++v17;
      v6 = 4294957496;
      if (v17 == v16)
      {
        goto LABEL_45;
      }
    }

    v19 = *v18;
    v20 = (*(a2 + 792) + 4);
    v21 = *(a2 + 788);
    while (v10 != *v20 || v19 != *(v20 - 1))
    {
      v20 += 2;
      if (!--v21)
      {
        goto LABEL_23;
      }
    }

    v14 = v13 + 4;
    v31 = v13 + 4;
    *(a2 + 816) = v19 | (v10 << 32);
  }

  MaxSigSize = (*(*(a2 + 24) + 24))(a2, v32, v19);
  if (MaxSigSize || (MaxSigSize = SSLAllocBuffer(a1, v14), MaxSigSize))
  {
LABEL_2:
    v6 = MaxSigSize;
    goto LABEL_45;
  }

  v22 = (a1[1] + v12);
  if (*(a2 + 16))
  {
    v23 = 65279;
  }

  else
  {
    v23 = 770;
  }

  if (*a2 > v23)
  {
    *v22 = v19;
    v22[1] = v10;
    if (v19 <= 6 && ((1 << v19) & 0x74) != 0)
    {
      v24 = *(a2 + 32);
      if (v9)
      {
        v25 = sslRsaSign(v24, v19, v33, v32[0], v22 + 4, v30, &v31);
      }

      else
      {
        v25 = sslEcdsaSign(v24, v33, v32[0], (v22 + 4), v30, &v31);
      }

      v6 = v25;
      v26 = v31;
      v27 = v31 + 4;
      v22 += 2;
      goto LABEL_40;
    }

    __ssl_debug("sslError", "SSLEncodeCertificateVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 610, "SSLEncodeCertificateVerify: unsupported signature hash algorithm (%d)\n", v19);
LABEL_44:
    v6 = 4294957486;
    goto LABEL_45;
  }

  v6 = sslRawSign(*(a2 + 32), v33, v32[0], v22 + 2, v30, &v31);
  v26 = v31;
  v27 = v31 + 2;
LABEL_40:
  if (v6)
  {
    __ssl_debug("sslError", "SSLEncodeCertificateVerify", "/Library/Caches/com.apple.xbs/Sources/coreTLS/lib/sslCert.c", 643, "SSLEncodeCertificateVerify: unable to sign data (error %d)\n", v6);
  }

  else
  {
    *a1 = v27 + v12;
    SSLEncodeInt(v22, v26, 2);
    SSLEncodeHandshakeHeader(a2, a1, 15, v27);
  }

LABEL_45:
  v28 = *MEMORY[0x29EDCA608];
  return v6;
}