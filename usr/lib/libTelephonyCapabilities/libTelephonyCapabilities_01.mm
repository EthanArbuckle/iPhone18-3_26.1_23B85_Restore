uint64_t capabilities::ct::supportsDERFileFormat(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD840))
  {
    byte_1ED7FD5AC = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FD840);
  }

  return byte_1ED7FD5AC;
}

uint64_t capabilities::ct::shouldSaveVinylInfo(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD848))
  {
    byte_1ED7FD5AD = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FD848);
  }

  return byte_1ED7FD5AD;
}

uint64_t capabilities::ct::integratedPDPStatisticsInterval(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD858))
  {
    v2 = TelephonyRadiosGetRadioVendor() - 1;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_1CAE5FAB0[v2];
    }

    qword_1ED7FD850 = v3;
    __cxa_guard_release(&qword_1ED7FD858);
  }

  return qword_1ED7FD850;
}

uint64_t capabilities::ct::integratedPDPStatisticsIntervalForVendor(int a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1CAE5FAB0[a1 - 1];
  }
}

uint64_t capabilities::ct::supportedVinylSlotCount(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD868))
  {
    qword_1ED7FD860 = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FD868);
  }

  return qword_1ED7FD860;
}

uint64_t capabilities::ct::supportsVinylFirmwareUpdate(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD870))
  {
    byte_1ED7FD5AE = TelephonyRadiosGetRadioVendor() - 1 < 4;
    __cxa_guard_release(&qword_1ED7FD870);
  }

  return byte_1ED7FD5AE;
}

void capabilities::ct::compatibleHardwareConfigurationString(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD880))
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::ct::sCompatibleHardwareConfigurationString(&xmmword_1ED7FDDD0, Product);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDDD0, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD880);
  }

  if (byte_1ED7FDDE7 < 0)
  {
    v3 = xmmword_1ED7FDDD0;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDDD0;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDDE0;
  }
}

void *capabilities::ct::sCompatibleHardwareConfigurationString(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  switch(a2)
  {
    case 60:
    case 61:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 825504078;
      goto LABEL_246;
    case 79:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825373508;
      goto LABEL_317;
    case 80:
    case 81:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v6 = 825373508;
      goto LABEL_184;
    case 82:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v17 = 942748234;
      goto LABEL_241;
    case 83:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825373514;
      goto LABEL_317;
    case 84:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825505870;
      goto LABEL_317;
    case 87:
    case 88:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 909390158;
      goto LABEL_246;
    case 89:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825307722;
      goto LABEL_317;
    case 90:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942748234;
      goto LABEL_317;
    case 91:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 875573582;
      goto LABEL_317;
    case 92:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v15 = 825373508;
      goto LABEL_316;
    case 93:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825439300;
      goto LABEL_317;
    case 94:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 842477898;
      goto LABEL_317;
    case 95:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825373770;
      goto LABEL_317;
    case 96:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v11 = 942748234;
      goto LABEL_269;
    case 97:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v19 = 57;
      goto LABEL_313;
    case 99:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 1731343684;
      goto LABEL_317;
    case 100:
    case 101:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v6 = 1731343684;
LABEL_184:
      v7 = v6 | 0x10000;
      goto LABEL_317;
    case 102:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 1882469700;
      goto LABEL_317;
    case 103:
    case 104:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 842281294;
      goto LABEL_246;
    case 105:
    case 106:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 943010126;
      goto LABEL_246;
    case 107:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942682954;
      goto LABEL_317;
    case 108:
    case 109:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v5 = 942748234;
      goto LABEL_266;
    case 110:
    case 111:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 858928458;
      goto LABEL_317;
    case 112:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 97;
      v4 = 842477898;
      goto LABEL_246;
    case 114:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v20 = 54;
      goto LABEL_300;
    case 115:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v20 = 55;
LABEL_300:
      *(result + 2) = v20;
      v14 = 12612;
      goto LABEL_324;
    case 116:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v16 = 51;
      goto LABEL_228;
    case 117:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v16 = 52;
LABEL_228:
      *(result + 2) = v16;
      v14 = 13892;
      goto LABEL_324;
    case 118:
    case 119:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 943206734;
      goto LABEL_246;
    case 120:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v17 = 825307722;
LABEL_241:
      v7 = v17 | 0x100;
      goto LABEL_317;
    case 122:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 842543434;
      goto LABEL_317;
    case 123:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v15 = 942682954;
      goto LABEL_316;
    case 124:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v13 = 57;
      goto LABEL_323;
    case 125:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942749258;
      goto LABEL_317;
    case 126:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825374282;
      goto LABEL_317;
    case 127:
    case 128:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 959721806;
      goto LABEL_246;
    case 129:
    case 130:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 943272270;
      goto LABEL_246;
    case 131:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 960049486;
      goto LABEL_317;
    case 132:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 55;
      goto LABEL_310;
    case 133:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 56;
      goto LABEL_310;
    case 134:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v19 = 51;
      goto LABEL_313;
    case 135:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v19 = 52;
LABEL_313:
      *(result + 2) = v19;
      v14 = 14148;
      goto LABEL_324;
    case 136:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v15 = 842477898;
      goto LABEL_316;
    case 137:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v11 = 942682954;
      goto LABEL_269;
    case 138:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942880074;
      goto LABEL_317;
    case 139:
    case 140:
    case 209:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 942682702;
      goto LABEL_246;
    case 141:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 808530510;
      goto LABEL_317;
    case 142:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v12 = 55;
      goto LABEL_251;
    case 143:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v12 = 56;
LABEL_251:
      *(result + 2) = v12;
      v14 = 13124;
      goto LABEL_324;
    case 144:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v10 = 51;
      goto LABEL_320;
    case 145:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v10 = 52;
LABEL_320:
      *(result + 2) = v10;
      v14 = 14404;
      goto LABEL_324;
    case 146:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v11 = 825307722;
LABEL_269:
      v7 = v11 + 512;
      goto LABEL_317;
    case 147:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942749514;
      goto LABEL_317;
    case 148:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825374538;
      goto LABEL_317;
    case 149:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v13 = 55;
      goto LABEL_323;
    case 150:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v13 = 56;
LABEL_323:
      *(result + 2) = v13;
      v14 = 13380;
      goto LABEL_324;
    case 151:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v9 = 51;
      goto LABEL_211;
    case 152:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v9 = 52;
LABEL_211:
      *(result + 2) = v9;
      v14 = 14660;
      goto LABEL_324;
    case 153:
    case 154:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 942748238;
      goto LABEL_246;
    case 155:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 808661582;
      goto LABEL_317;
    case 156:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 57;
      goto LABEL_303;
    case 157:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 842544202;
      goto LABEL_317;
    case 158:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v5 = 942682954;
LABEL_266:
      v7 = v5 + 768;
      goto LABEL_317;
    case 159:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v15 = 942880074;
LABEL_316:
      v7 = v15 + 256;
      goto LABEL_317;
    case 160:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 942749770;
      goto LABEL_317;
    case 161:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 825374794;
      goto LABEL_317;
    case 162:
    case 163:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 875835982;
      goto LABEL_246;
    case 164:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 51;
      goto LABEL_303;
    case 165:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 52;
      goto LABEL_303;
    case 166:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 55;
LABEL_303:
      *(result + 2) = v18;
      v14 = 13654;
      goto LABEL_324;
    case 167:
      if (*(result + 23) < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 51;
LABEL_310:
      *(result + 2) = v8;
      v14 = 12868;
LABEL_324:
      *result = v14;
      result = (result + 3);
      break;
    case 168:
    case 169:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 115;
      v4 = 942813774;
      goto LABEL_246;
    case 173:
      if (*(result + 23) < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v7 = 959787350;
LABEL_317:
      *result = v7;
      result = (result + 4);
      break;
    case 200:
      if (*(result + 23) < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      *(result + 2) = 30768;
      *result = 825309268;
      result = (result + 6);
      break;
    case 211:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 50;
      v4 = 858927444;
      goto LABEL_246;
    case 212:
      if (*(result + 23) < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 48;
      v4 = 858796628;
LABEL_246:
      *result = v4;
      result = (result + 5);
      break;
    default:
      if (*(result + 23) < 0)
      {
        result[1] = 0;
        result = *result;
      }

      else
      {
        *(result + 23) = 0;
      }

      break;
  }

  *result = 0;
  return result;
}

uint64_t capabilities::ct::supportsVoLTE(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD888))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B0 = capabilities::ct::sSupportsVoLTE(Product);
    __cxa_guard_release(&qword_1ED7FD888);
  }

  return byte_1ED7FD5B0;
}

uint64_t capabilities::ct::sSupportsVoLTE(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::getRUIMDeprecationStrategy(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD890))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD668 = capabilities::ct::sGetRUIMDeprecationStrategy(Product);
    __cxa_guard_release(&qword_1ED7FD890);
  }

  return dword_1ED7FD668;
}

uint64_t capabilities::ct::sGetRUIMDeprecationStrategy(int a1)
{
  result = 0;
  if (((a1 - 87) > 0x3D || ((1 << (a1 - 87)) & 0x387E1FD381EF0003) == 0) && ((a1 - 153) > 0x3A || ((1 << (a1 + 103)) & 0x5000000000F87F7) == 0))
  {
    if ((a1 - 60) >= 2)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::getDefaultEmergencyNumberList(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD898))
  {
    Radio = TelephonyRadiosGetRadio();
    v3 = 2 * (Radio == 16);
    if (Radio == 4)
    {
      v3 = 1;
    }

    dword_1ED7FD66C = v3;
    __cxa_guard_release(&qword_1ED7FD898);
  }

  return dword_1ED7FD66C;
}

uint64_t capabilities::ct::getDefaultEmergencyNumberListForRadio(int a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 16);
  }
}

uint64_t capabilities::ct::supportsBasebandVoiceLinkQualityNotification(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8A0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B1 = capabilities::ct::sSupportsBasebandVoiceLinkQualityNotification(Product);
    __cxa_guard_release(&qword_1ED7FD8A0);
  }

  return byte_1ED7FD5B1;
}

uint64_t capabilities::ct::sSupportsBasebandVoiceLinkQualityNotification(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsBasebandAddressFormationNotification(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8A8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B2 = capabilities::ct::sSupportsBasebandAddressFormationNotification(Product);
    __cxa_guard_release(&qword_1ED7FD8A8);
  }

  return byte_1ED7FD5B2;
}

BOOL capabilities::ct::sSupportsBasebandAddressFormationNotification(int a1)
{
  result = 1;
  if (((a1 - 153) > 0x3F || ((1 << (a1 + 103)) & 0xF5FF8000001FC78FLL) == 0) && ((a1 - 79) > 0x3E || ((1 << (a1 - 79)) & 0x701F01800F047327) == 0))
  {
    return (a1 - 60) < 2;
  }

  return result;
}

uint64_t capabilities::ct::supportsCMASCampOnlyMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8B0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B3 = capabilities::ct::sSupportsCMASCampOnlyMode(Product);
    __cxa_guard_release(&qword_1ED7FD8B0);
  }

  return byte_1ED7FD5B3;
}

BOOL capabilities::ct::sSupportsCMASCampOnlyMode(int a1)
{
  result = 1;
  if (((a1 - 153) > 0x3F || ((1 << (a1 + 103)) & 0xB1428000001E418BLL) == 0) && ((a1 - 87) > 0x36 || ((1 << (a1 - 87)) & 0x701F01800F0003) == 0))
  {
    return (a1 - 60) < 2;
  }

  return result;
}

uint64_t capabilities::ct::LASDRecordMaxCount(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8C0))
  {
    Radio = TelephonyRadiosGetRadio();
    v3 = Radio == 16 || Radio == 4;
    v4 = 50;
    if (v3)
    {
      v4 = 100;
    }

    qword_1ED7FD8B8 = v4;
    __cxa_guard_release(&qword_1ED7FD8C0);
  }

  return qword_1ED7FD8B8;
}

uint64_t capabilities::ct::LASDRecordMaxCountForRadio(int a1)
{
  if (a1 == 16 || a1 == 4)
  {
    return 100;
  }

  else
  {
    return 50;
  }
}

uint64_t capabilities::ct::shouldAWDWakeAP(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8C8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B4 = capabilities::ct::sShouldAWDWakeAP(Product);
    __cxa_guard_release(&qword_1ED7FD8C8);
  }

  return byte_1ED7FD5B4;
}

uint64_t capabilities::ct::sShouldAWDWakeAP(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsOnlineModeDueToUserPowerCycle(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8D0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5B5 = v4;
    __cxa_guard_release(&qword_1ED7FD8D0);
  }

  return byte_1ED7FD5B5;
}

uint64_t capabilities::ct::supportsEnhancedLQMLinkPowerCost(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8D8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5B6 = capabilities::ct::sSupportsEnhancedLQMLinkPowerCost(Product);
    __cxa_guard_release(&qword_1ED7FD8D8);
  }

  return byte_1ED7FD5B6;
}

uint64_t capabilities::ct::sSupportsEnhancedLQMLinkPowerCost(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsBIPController(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8E0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5B7 = v4;
    __cxa_guard_release(&qword_1ED7FD8E0);
  }

  return byte_1ED7FD5B7;
}

uint64_t capabilities::ct::supportsEcoDataMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8E8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5B8 = v4;
    __cxa_guard_release(&qword_1ED7FD8E8);
  }

  return byte_1ED7FD5B8;
}

uint64_t capabilities::ct::supportsOTABundleUpdateDemoModeOnly(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD8F0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5B9 = v4;
    __cxa_guard_release(&qword_1ED7FD8F0);
  }

  return byte_1ED7FD5B9;
}

uint64_t capabilities::ct::supportsNormalEmergencySetup(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD900))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5BB = capabilities::ct::sSupportsBasebandAddressFormationNotification(Product);
    __cxa_guard_release(&qword_1ED7FD900);
  }

  return byte_1ED7FD5BB;
}

uint64_t capabilities::ct::supportsSetVoLTEAudioCodec(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD908))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5BC = v4;
    __cxa_guard_release(&qword_1ED7FD908);
  }

  return byte_1ED7FD5BC;
}

uint64_t capabilities::ct::supportsSilenceAssertion(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD910))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5BD = v4;
    __cxa_guard_release(&qword_1ED7FD910);
  }

  return byte_1ED7FD5BD;
}

uint64_t capabilities::ct::supportsFallbackToBrickAfterEmergency(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD918))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5BE = v4;
    __cxa_guard_release(&qword_1ED7FD918);
  }

  return byte_1ED7FD5BE;
}

uint64_t capabilities::ct::supportsWidgetMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD920))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5BF = v4;
    __cxa_guard_release(&qword_1ED7FD920);
  }

  return byte_1ED7FD5BF;
}

uint64_t capabilities::ct::supportsSTKSendIMSRegEvent(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD928, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD928))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5C0 = v4;
    __cxa_guard_release(&qword_1ED7FD928);
  }

  return byte_1ED7FD5C0;
}

uint64_t capabilities::ct::supportsBundleUpdateFromVinylInfo(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD930))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C1 = capabilities::ct::sSupportsBundleUpdateFromVinylInfo(Product);
    __cxa_guard_release(&qword_1ED7FD930);
  }

  return byte_1ED7FD5C1;
}

uint64_t capabilities::ct::sSupportsBundleUpdateFromVinylInfo(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsNanoRegistryDevices(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD938))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C2 = capabilities::ct::sSupportsNanoRegistryDevices(Product);
    __cxa_guard_release(&qword_1ED7FD938);
  }

  return byte_1ED7FD5C2;
}

uint64_t capabilities::ct::sSupportsNanoRegistryDevices(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsWEAGeofencing(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD940))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C3 = capabilities::ct::sSupportsWEAGeofencing(Product);
    __cxa_guard_release(&qword_1ED7FD940);
  }

  return byte_1ED7FD5C3;
}

uint64_t capabilities::ct::sSupportsWEAGeofencing(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
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
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 52:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 62:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
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
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::sSupportsVoiceCall(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsMeadowMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD950))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5C5 = v4;
    __cxa_guard_release(&qword_1ED7FD950);
  }

  return byte_1ED7FD5C5;
}

uint64_t capabilities::ct::supportsWakingEmergencyCellIndication(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD958))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5C6 = v4;
    __cxa_guard_release(&qword_1ED7FD958);
  }

  return byte_1ED7FD5C6;
}

uint64_t capabilities::ct::requiresIMSFeatureMasking(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD960))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C7 = capabilities::ct::sRequiresIMSFeatureMasking(Product);
    __cxa_guard_release(&qword_1ED7FD960);
  }

  return byte_1ED7FD5C7;
}

uint64_t capabilities::ct::sRequiresIMSFeatureMasking(int a1)
{
  result = 1;
  if (((a1 - 124) > 0x31 || ((1 << (a1 - 124)) & 0x3FFF1FE3F8FF9) == 0) && ((a1 - 60) > 0x3B || ((1 << (a1 - 60)) & 0xFC07F8018000003) == 0))
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x1FBF7) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsPhoneNumberRegistration(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD968))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C8 = capabilities::ct::sSupportsPhoneNumberRegistration(Product);
    __cxa_guard_release(&qword_1ED7FD968);
  }

  return byte_1ED7FD5C8;
}

uint64_t capabilities::ct::sSupportsPhoneNumberRegistration(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::sSupportedPDPContextCount(int a1)
{
  v1 = a1 - 60;
  result = 6;
  switch(v1)
  {
    case 0:
    case 1:
    case 27:
    case 28:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 63:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 76:
    case 79:
    case 80:
    case 81:
    case 93:
    case 94:
    case 95:
    case 102:
    case 103:
    case 108:
    case 109:
    case 149:
    case 151:
      return result;
    case 19:
    case 20:
    case 21:
    case 24:
    case 31:
    case 32:
    case 33:
    case 37:
    case 143:
      result = 8;
      break;
    case 22:
    case 23:
    case 29:
    case 30:
    case 34:
    case 35:
    case 36:
    case 47:
    case 52:
    case 62:
      result = 5;
      break;
    case 65:
    case 66:
    case 72:
    case 73:
    case 74:
    case 75:
    case 77:
    case 78:
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
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 104:
    case 105:
    case 106:
    case 107:
    case 110:
    case 111:
    case 112:
    case 113:
    case 140:
    case 141:
    case 142:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
      result = 10;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsCapabilityAPN(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD980))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5C9 = capabilities::ct::sSupportsCapabilityAPN(Product);
    __cxa_guard_release(&qword_1ED7FD980);
  }

  return byte_1ED7FD5C9;
}

uint64_t capabilities::ct::sSupportsCapabilityAPN(int a1)
{
  result = 1;
  switch(a1)
  {
    case 82:
    case 83:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 118:
    case 119:
    case 120:
    case 122:
    case 123:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 209:
    case 211:
      return result;
    case 84:
    case 85:
    case 86:
    case 91:
    case 92:
    case 93:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 121:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 164:
    case 165:
    case 166:
    case 167:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    default:
      if ((a1 - 60) >= 2)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsCambioModeQuery(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD988))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5CA = capabilities::ct::sSupportsCambioModeQuery(Product);
    __cxa_guard_release(&qword_1ED7FD988);
  }

  return byte_1ED7FD5CA;
}

uint64_t capabilities::ct::sSupportsCambioModeQuery(int a1)
{
  result = 1;
  switch(a1)
  {
    case 82:
    case 83:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 118:
    case 119:
    case 120:
    case 122:
    case 123:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 209:
    case 211:
      return result;
    case 84:
    case 85:
    case 86:
    case 91:
    case 92:
    case 93:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 121:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 164:
    case 165:
    case 166:
    case 167:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    default:
      if ((a1 - 60) >= 2)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsHandoverPDN(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD990))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5CB = capabilities::ct::sSupportsHandoverPDN(Product);
    __cxa_guard_release(&qword_1ED7FD990);
  }

  return byte_1ED7FD5CB;
}

uint64_t capabilities::ct::sSupportsHandoverPDN(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsSystemSelectionDataRoaming(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD998))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5CC = capabilities::ct::sSupportsSystemSelectionDataRoaming(Product);
    __cxa_guard_release(&qword_1ED7FD998);
  }

  return byte_1ED7FD5CC;
}

uint64_t capabilities::ct::sSupportsSystemSelectionDataRoaming(int a1)
{
  result = 1;
  switch(a1)
  {
    case 79:
    case 80:
    case 81:
    case 84:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 124:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 168:
    case 169:
    case 203:
    case 209:
    case 211:
    case 212:
      return result;
    case 82:
    case 83:
    case 85:
    case 86:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 98:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 120:
    case 121:
    case 122:
    case 123:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 146:
    case 147:
    case 148:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    default:
      if ((a1 - 60) >= 2)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsMidCallSRVCC(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9A0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5CD = capabilities::ct::sSupportsMidCallSRVCC(Product);
    __cxa_guard_release(&qword_1ED7FD9A0);
  }

  return byte_1ED7FD5CD;
}

uint64_t capabilities::ct::sSupportsMidCallSRVCC(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
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
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsP2PAsGizmo(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9A8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5CE = v4;
    __cxa_guard_release(&qword_1ED7FD9A8);
  }

  return byte_1ED7FD5CE;
}

uint64_t capabilities::ct::debugIsGizmoWithVinyl(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9B0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5CF = v4;
    __cxa_guard_release(&qword_1ED7FD9B0);
  }

  return byte_1ED7FD5CF;
}

uint64_t capabilities::ct::supportsSIMProvisioningAsSignupDestination(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9C0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5D1 = v4;
    __cxa_guard_release(&qword_1ED7FD9C0);
  }

  return byte_1ED7FD5D1;
}

uint64_t capabilities::ct::getCarrierBundleBaseDir(capabilities::ct *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::ct::getCarrierBundleBaseDir(void)::ret = capabilities::ct::sGetCarrierBundleBaseDir(Product);
  }

  return capabilities::ct::getCarrierBundleBaseDir(void)::ret;
}

uint64_t capabilities::ct::sGetCarrierBundleBaseDir(int a1)
{
  if ((a1 - 60) > 0x9C)
  {
    return 3;
  }

  else
  {
    return dword_1CAE5FAD0[a1 - 60];
  }
}

uint64_t capabilities::ct::supportsPacketFilterCallType(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9C8))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5D2 = v4;
    __cxa_guard_release(&qword_1ED7FD9C8);
  }

  return byte_1ED7FD5D2;
}

uint64_t capabilities::ct::vinylOperationRequiresBasebandBoot(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9D0))
  {
    Radio = TelephonyRadiosGetRadio();
    v4 = Radio == 4 || Radio == 16;
    byte_1ED7FD5D3 = v4;
    __cxa_guard_release(&qword_1ED7FD9D0);
  }

  return byte_1ED7FD5D3;
}

uint64_t capabilities::ct::supportsEmergencySoSOverCell(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9D8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D4 = capabilities::ct::sSupportsEmergencySoSOverCell(Product);
    __cxa_guard_release(&qword_1ED7FD9D8);
  }

  return byte_1ED7FD5D4;
}

uint64_t capabilities::ct::sSupportsEmergencySoSOverCell(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::sSupportsCellRadio(int a1)
{
  result = 1;
  if ((a1 - 122) >= 0x34 && ((a1 - 60) > 0x3C || ((1 << (a1 - 60)) & 0x1FDFFFBFF9F80003) == 0))
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17A8D) == 0)
    {
      return 0;
    }
  }

  return result;
}

void capabilities::ct::getSupportedMessageModes(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD9E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9E8))
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::ct::sGetSupportedMessageModes(&qword_1ED7FDDE8, Product);
    __cxa_atexit(std::vector<capabilities::ct::SupportedMessageMode>::~vector[abi:ne200100], &qword_1ED7FDDE8, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD9E8);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = qword_1ED7FDDE8;
  v4 = *algn_1ED7FDDF0 - qword_1ED7FDDE8;
  if (*algn_1ED7FDDF0 != qword_1ED7FDDE8)
  {
    std::vector<capabilities::ct::SupportedMessageMode>::__vallocate[abi:ne200100](a1, v4 >> 2);
    v5 = a1[1];
    memmove(v5, v3, v4);
    a1[1] = &v5[v4];
  }
}

void *capabilities::ct::sGetSupportedMessageModes(void *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = operator new(0x10uLL);
  *a1 = v4;
  *v4++ = xmmword_1CAE5F0F0;
  a1[1] = v4;
  a1[2] = v4;
  switch(a2)
  {
    case 82:
    case 83:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 120:
    case 122:
    case 123:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 146:
    case 147:
    case 148:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 170:
    case 171:
    case 172:
      LODWORD(v7) = 2;
      result = std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(a1, &v7, &v7 + 4, 1uLL);
      goto LABEL_7;
    case 84:
    case 85:
    case 86:
    case 91:
    case 92:
    case 93:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 121:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 164:
    case 165:
    case 166:
    case 167:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    case 87:
    case 88:
    case 103:
    case 104:
    case 105:
    case 106:
    case 118:
    case 119:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 139:
    case 140:
    case 141:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 168:
    case 169:
    case 209:
    case 211:
      goto LABEL_6;
    default:
      if ((a2 - 0x8000) < 3 || (a2 - 60) >= 2)
      {
LABEL_4:
        v7 = xmmword_1CAE5F0F0;
        result = std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(a1, &v7, v8, 4uLL);
      }

      else
      {
LABEL_6:
        LODWORD(v7) = 4;
        result = std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(a1, &v7, &v7 + 4, 1uLL);
      }

LABEL_7:
      v6 = *MEMORY[0x1E69E9840];
      return result;
  }
}

void sub_1CAE4F2AC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<capabilities::ct::SupportedMessageMode>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void capabilities::ct::getSupportedMTSMSTypes(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FD9F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9F0))
  {
    Radio = TelephonyRadiosGetRadio();
    capabilities::ct::sGetSupportedMTSMSTypes(qword_1ED7FDE00, Radio);
    __cxa_atexit(std::vector<capabilities::ct::SupportedMTSMSTypes>::~vector[abi:ne200100], qword_1ED7FDE00, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FD9F0);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = qword_1ED7FDE00[0];
  v4 = unk_1ED7FDE08 - qword_1ED7FDE00[0];
  if (unk_1ED7FDE08 != qword_1ED7FDE00[0])
  {
    std::vector<capabilities::ct::SupportedMessageMode>::__vallocate[abi:ne200100](a1, v4 >> 2);
    v5 = a1[1];
    memmove(v5, v3, v4);
    a1[1] = &v5[v4];
  }
}

void *capabilities::ct::sGetSupportedMTSMSTypes(void *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = operator new(4uLL);
  *a1 = v4;
  *v4++ = 0;
  a1[1] = v4;
  a1[2] = v4;
  if (a2 == 4 || a2 == 16)
  {
    v7 = 0x100000002;
    result = std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(a1, &v7, &v8, 2uLL);
  }

  else
  {
    LODWORD(v7) = 0;
    result = std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(a1, &v7, &v7 + 4, 1uLL);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1CAE4F4DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<capabilities::ct::SupportedMTSMSTypes>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t capabilities::ct::getCardProvisioningStatusVersion(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FD9F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FD9F8))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD670 = capabilities::ct::sGetCardProvisioningStatusVersion(Product);
    __cxa_guard_release(&qword_1ED7FD9F8);
  }

  return dword_1ED7FD670;
}

uint64_t capabilities::ct::sGetCardProvisioningStatusVersion(int a1)
{
  result = 2;
  switch(a1)
  {
    case 79:
    case 80:
    case 81:
    case 84:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 124:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 168:
    case 169:
    case 203:
    case 209:
    case 211:
    case 212:
      return result;
    case 82:
    case 83:
    case 85:
    case 86:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 98:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 120:
    case 121:
    case 122:
    case 123:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 146:
    case 147:
    case 148:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    default:
      if ((a1 - 60) >= 2)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::sSupportsThumperService(int a1)
{
  result = 1;
  switch(a1)
  {
    case 82:
    case 83:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 118:
    case 119:
    case 120:
    case 122:
    case 123:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 209:
    case 211:
      return result;
    case 84:
    case 85:
    case 86:
    case 91:
    case 92:
    case 93:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 121:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 164:
    case 165:
    case 166:
    case 167:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_5;
    default:
      if ((a1 - 0x8000) >= 3 && (a1 - 60) >= 2)
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsAudioLoggingUserConsent(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA08))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D7 = capabilities::ct::sSupportsAudioLoggingUserConsent(Product);
    __cxa_guard_release(&qword_1ED7FDA08);
  }

  return byte_1ED7FD5D7;
}

uint64_t capabilities::ct::sSupportsAudioLoggingUserConsent(int a1)
{
  result = 1;
  switch(a1)
  {
    case 60:
    case 61:
    case 79:
    case 80:
    case 81:
    case 84:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 124:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 135:
    case 139:
    case 140:
    case 141:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 173:
    case 200:
    case 202:
    case 203:
    case 207:
    case 209:
    case 211:
    case 212:
    case 213:
    case 214:
    case 216:
      return result;
    case 62:
    case 63:
    case 64:
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
    case 82:
    case 83:
    case 85:
    case 86:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 98:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 120:
    case 121:
    case 122:
    case 123:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 146:
    case 147:
    case 148:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 170:
    case 171:
    case 172:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 201:
    case 204:
    case 205:
    case 206:
    case 208:
    case 210:
    case 215:
      goto LABEL_4;
    default:
      if ((a1 - 0x8000) >= 2)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsLazuli(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA10))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D8 = capabilities::ct::sSupportsLazuli(Product);
    __cxa_guard_release(&qword_1ED7FDA10);
  }

  return byte_1ED7FD5D8;
}

uint64_t capabilities::ct::sSupportsLazuli(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 19:
    case 20:
    case 21:
    case 24:
    case 27:
    case 28:
    case 31:
    case 32:
    case 33:
    case 37:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 113:
    case 140:
    case 142:
    case 143:
    case 147:
    case 149:
    case 151:
    case 152:
    case 153:
    case 154:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsNASCallEndReason(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA18))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5D9 = capabilities::ct::sSupportsNASCallEndReason(Product);
    __cxa_guard_release(&qword_1ED7FDA18);
  }

  return byte_1ED7FD5D9;
}

uint64_t capabilities::ct::sSupportsNASCallEndReason(int a1)
{
  result = 1;
  switch(a1)
  {
    case 60:
    case 61:
    case 65:
    case 66:
    case 67:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
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
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 112:
    case 118:
    case 119:
    case 122:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 139:
    case 140:
    case 141:
    case 153:
    case 154:
    case 155:
    case 156:
    case 160:
    case 161:
    case 162:
    case 163:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 209:
    case 211:
    case 213:
    case 214:
    case 215:
    case 216:
      return result;
    case 62:
    case 63:
    case 64:
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
    case 85:
    case 86:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 108:
    case 109:
    case 110:
    case 111:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 120:
    case 121:
    case 123:
    case 124:
    case 125:
    case 126:
    case 132:
    case 133:
    case 134:
    case 135:
    case 136:
    case 137:
    case 138:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 157:
    case 158:
    case 159:
    case 164:
    case 165:
    case 166:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 210:
    case 212:
      goto LABEL_4;
    default:
      if ((a1 - 0x8000) >= 3)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::shouldSetCellularTextModemForRTT(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA20))
  {
    byte_1ED7FD5DA = TelephonyRadiosGetRadioVendor() - 2 < 3;
    __cxa_guard_release(&qword_1ED7FDA20);
  }

  return byte_1ED7FD5DA;
}

uint64_t capabilities::ct::shouldEnableDesense(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA28))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5DB = capabilities::ct::sShouldEnableDesense(Product);
    __cxa_guard_release(&qword_1ED7FDA28);
  }

  return byte_1ED7FD5DB;
}

uint64_t capabilities::ct::sShouldEnableDesense(int a1)
{
  result = 1;
  switch(a1)
  {
    case 60:
    case 61:
    case 65:
    case 66:
    case 67:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
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
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 122:
    case 123:
    case 124:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 136:
    case 139:
    case 140:
    case 141:
    case 153:
    case 154:
    case 155:
    case 162:
    case 163:
    case 168:
    case 169:
    case 203:
    case 209:
    case 211:
      return result;
    case 62:
    case 63:
    case 64:
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
    case 85:
    case 86:
    case 98:
    case 113:
    case 121:
    case 125:
    case 126:
    case 132:
    case 133:
    case 134:
    case 135:
    case 137:
    case 138:
    case 142:
    case 143:
    case 144:
    case 145:
    case 146:
    case 147:
    case 148:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 194:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
    case 204:
    case 205:
    case 206:
    case 207:
    case 208:
    case 210:
      goto LABEL_4;
    default:
      if ((a1 - 0x8000) >= 3)
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsSignalStrengthOnIMSVoiceNetwork(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA30))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5DC = capabilities::ct::sSupportsSignalStrengthOnIMSVoiceNetwork(Product);
    __cxa_guard_release(&qword_1ED7FDA30);
  }

  return byte_1ED7FD5DC;
}

uint64_t capabilities::ct::sSupportsSignalStrengthOnIMSVoiceNetwork(int a1)
{
  v1 = a1 - 60;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 5:
    case 6:
    case 7:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 27:
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
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 52:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 62:
    case 64:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
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
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

void capabilities::ct::deviceName(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FDA38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA38))
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::ct::sDeviceName(&xmmword_1ED7FDE18, Product);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDE18, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FDA38);
  }

  if (byte_1ED7FDE2F < 0)
  {
    v3 = xmmword_1ED7FDE18;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDE18;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDE28;
  }
}

void *capabilities::ct::sDeviceName(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  v4 = *(result + 23);
  switch(a2)
  {
    case 79:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825373508;
      goto LABEL_376;
    case 80:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v27 = 825373508;
      goto LABEL_313;
    case 81:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 112;
      v14 = 825439044;
      goto LABEL_367;
    case 82:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v20 = 942748234;
      goto LABEL_288;
    case 83:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825373514;
      goto LABEL_376;
    case 84:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825505870;
      goto LABEL_376;
    case 89:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825307722;
      goto LABEL_376;
    case 90:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942748234;
      goto LABEL_376;
    case 91:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 875573582;
      goto LABEL_376;
    case 92:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v30 = 825373508;
      goto LABEL_349;
    case 93:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825439300;
      goto LABEL_376;
    case 94:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 842477898;
      goto LABEL_376;
    case 95:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825373770;
      goto LABEL_376;
    case 96:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v13 = 942748234;
      goto LABEL_325;
    case 97:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v29 = 57;
      goto LABEL_355;
    case 99:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 1731343684;
      goto LABEL_376;
    case 100:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v27 = 1731343684;
LABEL_313:
      v10 = v27 | 0x10000;
      goto LABEL_376;
    case 101:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 1882404164;
      goto LABEL_376;
    case 102:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v17 = 1882404164;
      goto LABEL_310;
    case 105:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v23 = 115;
      goto LABEL_322;
    case 106:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v23 = 98;
LABEL_322:
      *(result + 4) = v23;
      v14 = 943010126;
      goto LABEL_367;
    case 107:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942682954;
      goto LABEL_376;
    case 108:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v22 = 942748234;
      goto LABEL_373;
    case 109:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 120;
      v19 = 13642;
      goto LABEL_344;
    case 110:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 858928458;
      goto LABEL_376;
    case 111:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 120;
      v5 = 13642;
      goto LABEL_228;
    case 112:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 97;
      v14 = 842477898;
      goto LABEL_367;
    case 114:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v21 = 54;
      goto LABEL_338;
    case 115:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v21 = 55;
LABEL_338:
      *(result + 2) = v21;
      v28 = 12612;
      goto LABEL_380;
    case 116:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v24 = 51;
      goto LABEL_285;
    case 117:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v24 = 52;
LABEL_285:
      *(result + 2) = v24;
      v28 = 13892;
      goto LABEL_380;
    case 118:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v25 = 115;
      goto LABEL_352;
    case 119:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v25 = 98;
LABEL_352:
      *(result + 4) = v25;
      v14 = 943206734;
      goto LABEL_367;
    case 120:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v20 = 825307722;
LABEL_288:
      v10 = v20 | 0x100;
      goto LABEL_376;
    case 122:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v17 = 842477898;
LABEL_310:
      v10 = v17 + 0x10000;
      goto LABEL_376;
    case 123:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v30 = 942682954;
      goto LABEL_349;
    case 124:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v16 = 57;
      goto LABEL_370;
    case 125:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942749258;
      goto LABEL_376;
    case 126:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825374282;
      goto LABEL_376;
    case 127:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v15 = 115;
      goto LABEL_243;
    case 128:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v15 = 98;
LABEL_243:
      *(result + 4) = v15;
      v14 = 959721806;
      goto LABEL_367;
    case 129:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v26 = 115;
      goto LABEL_319;
    case 130:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v26 = 98;
LABEL_319:
      *(result + 4) = v26;
      v14 = 943272270;
      goto LABEL_367;
    case 131:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 960049486;
      goto LABEL_376;
    case 132:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v6 = 55;
      goto LABEL_276;
    case 133:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v6 = 56;
      goto LABEL_276;
    case 134:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v29 = 51;
      goto LABEL_355;
    case 135:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v29 = 52;
LABEL_355:
      *(result + 2) = v29;
      v28 = 14148;
      goto LABEL_380;
    case 136:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v30 = 842477898;
      goto LABEL_349;
    case 137:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v13 = 942682954;
      goto LABEL_325;
    case 138:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942880074;
      goto LABEL_376;
    case 139:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v32 = 115;
      goto LABEL_366;
    case 140:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v32 = 98;
LABEL_366:
      *(result + 4) = v32;
      v14 = 942682702;
      goto LABEL_367;
    case 141:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 808530510;
      goto LABEL_376;
    case 142:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v31 = 55;
      goto LABEL_316;
    case 143:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v31 = 56;
LABEL_316:
      *(result + 2) = v31;
      v28 = 13124;
      goto LABEL_380;
    case 144:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v12 = 51;
      goto LABEL_335;
    case 145:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v12 = 52;
LABEL_335:
      *(result + 2) = v12;
      v28 = 14404;
      goto LABEL_380;
    case 146:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v13 = 825307722;
LABEL_325:
      v10 = v13 + 512;
      goto LABEL_376;
    case 147:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942749514;
      goto LABEL_376;
    case 148:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825374538;
      goto LABEL_376;
    case 149:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v16 = 55;
      goto LABEL_370;
    case 150:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v16 = 56;
LABEL_370:
      *(result + 2) = v16;
      v28 = 13380;
      goto LABEL_380;
    case 151:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 51;
      goto LABEL_330;
    case 152:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v18 = 52;
LABEL_330:
      *(result + 2) = v18;
      v28 = 14660;
      goto LABEL_380;
    case 153:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v9 = 115;
      goto LABEL_343;
    case 154:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v9 = 98;
LABEL_343:
      *(result + 4) = v9;
      v19 = 12878;
LABEL_344:
      v14 = v19 | 0x38310000;
      goto LABEL_367;
    case 155:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 808661582;
      goto LABEL_376;
    case 156:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 57;
      goto LABEL_379;
    case 157:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 842544202;
      goto LABEL_376;
    case 158:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v22 = 942682954;
LABEL_373:
      v10 = v22 + 768;
      goto LABEL_376;
    case 159:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v30 = 942880074;
LABEL_349:
      v10 = v30 + 256;
      goto LABEL_376;
    case 160:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 942749770;
      goto LABEL_376;
    case 161:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 825374794;
      goto LABEL_376;
    case 162:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v11 = 115;
      goto LABEL_301;
    case 163:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v11 = 98;
LABEL_301:
      *(result + 4) = v11;
      v14 = 875835982;
      goto LABEL_367;
    case 164:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 51;
      goto LABEL_379;
    case 165:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 52;
      goto LABEL_379;
    case 166:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v8 = 55;
LABEL_379:
      *(result + 2) = v8;
      v28 = 13654;
      goto LABEL_380;
    case 167:
      if (v4 < 0)
      {
        result[1] = 3;
        result = *result;
      }

      else
      {
        *(result + 23) = 3;
      }

      v6 = 51;
LABEL_276:
      *(result + 2) = v6;
      v28 = 12868;
LABEL_380:
      *result = v28;
      result = (result + 3);
      break;
    case 168:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v7 = 115;
      goto LABEL_211;
    case 169:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      v7 = 98;
LABEL_211:
      *(result + 4) = v7;
      v14 = 942813774;
      goto LABEL_367;
    case 173:
      if (v4 < 0)
      {
        result[1] = 4;
        result = *result;
      }

      else
      {
        *(result + 23) = 4;
      }

      v10 = 959787350;
LABEL_376:
      *result = v10;
      result = (result + 4);
      break;
    case 200:
      if (v4 < 0)
      {
        result[1] = 6;
        result = *result;
      }

      else
      {
        *(result + 23) = 6;
      }

      *(result + 2) = 30768;
      *result = 825309268;
      result = (result + 6);
      break;
    case 209:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 51;
      v14 = 892416340;
      goto LABEL_367;
    case 211:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 50;
      v5 = 12628;
LABEL_228:
      v14 = v5 | 0x33320000;
      goto LABEL_367;
    case 212:
      if (v4 < 0)
      {
        result[1] = 5;
        result = *result;
      }

      else
      {
        *(result + 23) = 5;
      }

      *(result + 4) = 48;
      v14 = 858796628;
LABEL_367:
      *result = v14;
      result = (result + 5);
      break;
    default:
      if (v4 < 0)
      {
        result[1] = 0;
        result = *result;
      }

      else
      {
        *(result + 23) = 0;
      }

      break;
  }

  *result = 0;
  return result;
}

uint64_t capabilities::ct::sGetDeviceEvoType(int a1)
{
  if ((a1 - 79) > 0x89)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5FD44[a1 - 79];
  }
}

void capabilities::ct::SARValue(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED7FDA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA48))
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::ct::sSARValue(&xmmword_1ED7FDE30, Product);
    __cxa_atexit(MEMORY[0x1E69E52C0], &xmmword_1ED7FDE30, &dword_1CAE37000);
    __cxa_guard_release(&qword_1ED7FDA48);
  }

  if (byte_1ED7FDE47 < 0)
  {
    v3 = xmmword_1ED7FDE30;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_1ED7FDE30;
    a1->__r_.__value_.__r.__words[2] = unk_1ED7FDE40;
  }
}

void *capabilities::ct::sSARValue(void *a1, int a2)
{
  memset(a1, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a1, &unk_1CAE5DA75);
  switch(a2)
  {
    case 79:
    case 80:
    case 81:
    case 84:
    case 92:
    case 93:
    case 99:
    case 100:
    case 101:
    case 102:
    case 114:
    case 115:
    case 116:
    case 117:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 164:
    case 165:
    case 166:
    case 167:
    case 173:
      goto LABEL_2;
    case 82:
    case 83:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 98:
    case 103:
    case 104:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 120:
    case 121:
    case 122:
    case 123:
    case 125:
    case 126:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 160:
    case 161:
    case 162:
    case 163:
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
      goto LABEL_10;
    case 91:
      if (*(result + 23) < 0)
      {
        result[1] = 13;
        result = *result;
      }

      else
      {
        *(result + 23) = 13;
      }

      v4 = "1.18 W/Kg(1g)";
      goto LABEL_14;
    case 97:
      if (*(result + 23) < 0)
      {
        result[1] = 13;
        result = *result;
      }

      else
      {
        *(result + 23) = 13;
      }

      v4 = "1.15 W/Kg(1g)";
      goto LABEL_14;
    case 105:
    case 106:
    case 118:
    case 119:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
      if (*(result + 23) < 0)
      {
        result[1] = 13;
        result = *result;
      }

      else
      {
        *(result + 23) = 13;
      }

      v4 = "0.99 W/Kg(1g)";
LABEL_14:
      *result = *v4;
      *(result + 5) = *(v4 + 5);
      result = (result + 13);
      break;
    default:
      if ((a2 - 200) <= 0xD && ((1 << (a2 + 56)) & 0x3085) != 0)
      {
LABEL_2:
        if (*(result + 23) < 0)
        {
          result[1] = 12;
          result = *result;
        }

        else
        {
          *(result + 23) = 12;
        }

        *(result + 2) = 694628648;
        *result = *"1.2 W/Kg(1g)";
        result = (result + 12);
      }

      else
      {
LABEL_10:
        if (*(result + 23) < 0)
        {
          result[1] = 0;
          result = *result;
        }

        else
        {
          *(result + 23) = 0;
        }
      }

      break;
  }

  *result = 0;
  return result;
}

uint64_t capabilities::ct::supportsCapabilityTDSCDMADevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA50))
  {
    byte_1ED7FD5DD = TelephonyRadiosGetRadio() - 7 < 2;
    __cxa_guard_release(&qword_1ED7FDA50);
  }

  return byte_1ED7FD5DD;
}

uint64_t capabilities::ct::getCDMASettingsSupport(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA60))
  {
    v2 = TelephonyRadiosGetRadio() - 7;
    if (v2 > 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = dword_1CAE5F100[v2];
    }

    dword_1ED7FD678 = v3;
    __cxa_guard_release(&qword_1ED7FDA60);
  }

  return dword_1ED7FD678;
}

uint64_t capabilities::ct::getCDMASettingsSupportForRadio(int a1)
{
  if ((a1 - 7) > 3)
  {
    return 0;
  }

  else
  {
    return dword_1CAE5F100[a1 - 7];
  }
}

uint64_t capabilities::ct::supportsCapabilityeHRPDDevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA68))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5DF = capabilities::ct::sSupportsCapabilityeHRPDDevice(Product);
    __cxa_guard_release(&qword_1ED7FDA68);
  }

  return byte_1ED7FD5DF;
}

BOOL capabilities::ct::sSupportsCapabilityeHRPDDevice(int a1)
{
  result = 1;
  if ((a1 - 79) > 0x39 || ((1 << (a1 - 79)) & 0x2001A7BF0F7FC3FLL) == 0)
  {
    return a1 == 203 || a1 == 32770;
  }

  return result;
}

uint64_t capabilities::ct::tempUpdateAudioCatWhenSubSwitch(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA70))
  {
    byte_1ED7FD5E0 = TelephonyRadiosGetRadio() - 7 < 3;
    __cxa_guard_release(&qword_1ED7FDA70);
  }

  return byte_1ED7FD5E0;
}

uint64_t capabilities::ct::getCLTMInterfaceSupport(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA78))
  {
    Radio = TelephonyRadiosGetRadio();
    if (Radio > 0x13 || (v3 = 1, ((1 << Radio) & 0x8C080) == 0))
    {
      v3 = 0;
    }

    dword_1ED7FD67C = v3;
    __cxa_guard_release(&qword_1ED7FDA78);
  }

  return dword_1ED7FD67C;
}

uint64_t capabilities::ct::getCLTMInterfaceSupportForRadio(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  v1 = a1;
  result = 1;
  if (((1 << v1) & 0x8C080) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t capabilities::ct::supportsWiFiEnhancedThroughput(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA80))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E1 = capabilities::ct::sSupportsWiFiEnhancedThroughput(Product);
    __cxa_guard_release(&qword_1ED7FDA80);
  }

  return byte_1ED7FD5E1;
}

uint64_t capabilities::ct::sSupportsWiFiEnhancedThroughput(int a1)
{
  result = 1;
  if (((a1 - 79) > 0x38 || ((1 << (a1 - 79)) & 0x1E0207800F47027) == 0) && ((a1 - 142) > 0x3D || ((1 << (a1 + 114)) & 0x340000008200478FLL) == 0))
  {
    v3 = a1 - 207;
    if (v3 > 9 || ((1 << v3) & 0x2E1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL capabilities::ct::sSupportsCapabilityC2KDevice(int a1)
{
  result = 1;
  if ((a1 - 79) > 0x39 || ((1 << (a1 - 79)) & 0x2001279E0F47027) == 0)
  {
    return a1 == 203;
  }

  return result;
}

uint64_t capabilities::ct::requiresIMSStatusUpdateInCSFB(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA90))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E3 = capabilities::ct::sRequiresIMSStatusUpdateInCSFB(Product);
    __cxa_guard_release(&qword_1ED7FDA90);
  }

  return byte_1ED7FD5E3;
}

uint64_t capabilities::ct::sRequiresIMSStatusUpdateInCSFB(int a1)
{
  result = 1;
  if ((a1 - 156) > 0x3C || ((1 << (a1 + 100)) & 0x1E1FF0000003C831) == 0)
  {
    v3 = a1 - 79;
    if (v3 > 0x12 || ((1 << v3) & 0x47027) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsNVRAMUpdateWithoutBasebandReboot(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDA98))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E4 = capabilities::ct::sSupportsNVRAMUpdateWithoutBasebandReboot(Product);
    __cxa_guard_release(&qword_1ED7FDA98);
  }

  return byte_1ED7FD5E4;
}

uint64_t capabilities::ct::sSupportsNVRAMUpdateWithoutBasebandReboot(int a1)
{
  result = 1;
  switch(a1)
  {
    case 79:
    case 80:
    case 81:
    case 84:
    case 91:
    case 92:
    case 93:
    case 97:
    case 99:
    case 100:
    case 101:
    case 102:
    case 114:
    case 115:
    case 116:
    case 117:
    case 124:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 160:
    case 161:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
      return result;
    case 82:
    case 83:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 98:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 125:
    case 126:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 162:
    case 163:
    case 168:
    case 169:
      goto LABEL_5;
    default:
      v3 = a1 - 200;
      if (v3 > 0x10 || ((1 << v3) & 0x1F1FF) == 0)
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsDualPhysicalSIM(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAA0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E5 = capabilities::ct::sSupportsDualPhysicalSIM(Product);
    __cxa_guard_release(&qword_1ED7FDAA0);
  }

  return byte_1ED7FD5E5;
}

uint64_t capabilities::ct::sSupportsDualPhysicalSIM(int a1)
{
  result = 1;
  switch(a1)
  {
    case 79:
    case 80:
    case 81:
    case 84:
    case 91:
    case 92:
    case 93:
    case 100:
    case 101:
    case 102:
    case 114:
    case 115:
    case 116:
    case 117:
    case 132:
    case 133:
    case 134:
    case 135:
    case 142:
    case 143:
    case 144:
    case 145:
    case 149:
    case 150:
    case 151:
    case 152:
    case 156:
    case 160:
    case 161:
    case 164:
    case 165:
    case 166:
    case 167:
    case 170:
    case 171:
    case 172:
    case 173:
      return result;
    case 82:
    case 83:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
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
    case 136:
    case 137:
    case 138:
    case 139:
    case 140:
    case 141:
    case 146:
    case 147:
    case 148:
    case 153:
    case 154:
    case 155:
    case 157:
    case 158:
    case 159:
    case 162:
    case 163:
    case 168:
    case 169:
      goto LABEL_5;
    default:
      v3 = a1 - 200;
      if (v3 > 0x10 || ((1 << v3) & 0x1F1FF) == 0)
      {
LABEL_5:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsSIMDetectionInterrupt(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAA8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E6 = capabilities::ct::sSupportsSIMDetectionInterrupt(Product);
    __cxa_guard_release(&qword_1ED7FDAA8);
  }

  return byte_1ED7FD5E6;
}

BOOL capabilities::ct::sSupportsSIMDetectionInterrupt(int a1)
{
  result = 1;
  if (((a1 - 84) > 0x3D || ((1 << (a1 - 84)) & 0x3C0F0103C007A381) == 0) && ((a1 - 149) > 0x3F || ((1 << (a1 + 107)) & 0x804000000003800FLL) == 0))
  {
    return (a1 - 79) < 3;
  }

  return result;
}

uint64_t capabilities::ct::supportedLPASVN(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAB0))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD680 = capabilities::ct::sSupportedLPASVN(Product);
    __cxa_guard_release(&qword_1ED7FDAB0);
  }

  return dword_1ED7FD680;
}

uint64_t capabilities::ct::sSupportedLPASVN(int a1)
{
  if ((a1 - 79) > 0x89)
  {
    return 0x20000;
  }

  else
  {
    return dword_1CAE5FF6C[a1 - 79];
  }
}

uint64_t capabilities::ct::sSupportsGemini(int a1)
{
  result = 1;
  if (((a1 - 79) > 0x38 || ((1 << (a1 - 79)) & 0x1E0207800F47027) == 0) && ((a1 - 142) > 0x3D || ((1 << (a1 + 114)) & 0x3400000083C0478FLL) == 0))
  {
    v3 = a1 - 207;
    if (v3 > 9 || ((1 << v3) & 0x2E1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsThumperSourcing(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAC0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E8 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDAC0);
  }

  return byte_1ED7FD5E8;
}

uint64_t capabilities::ct::supportsActivationPushRegistration(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAC8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5E9 = capabilities::ct::sSupportsActivationPushRegistration(Product);
    __cxa_guard_release(&qword_1ED7FDAC8);
  }

  return byte_1ED7FD5E9;
}

uint64_t capabilities::ct::sSupportsActivationPushRegistration(int a1)
{
  v1 = a1 - 79;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 5:
    case 12:
    case 13:
    case 14:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 35:
    case 36:
    case 37:
    case 38:
    case 45:
    case 53:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 121:
    case 123:
    case 124:
    case 128:
    case 133:
    case 134:
    case 135:
    case 137:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsBasebandPLMNPriorityList(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAD0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5EA = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDAD0);
  }

  return byte_1ED7FD5EA;
}

uint64_t capabilities::ct::supportsCarrierSpace(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAD8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5EB = capabilities::ct::sSupportsCarrierSpace(Product);
    __cxa_guard_release(&qword_1ED7FDAD8);
  }

  return byte_1ED7FD5EB;
}

uint64_t capabilities::ct::sSupportsCarrierSpace(int a1)
{
  v1 = a1 - 79;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 121:
    case 123:
    case 124:
    case 128:
    case 133:
    case 134:
    case 135:
    case 137:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsTEMS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAE0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5EC = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDAE0);
  }

  return byte_1ED7FD5EC;
}

uint64_t capabilities::ct::shouldSendWiFiCallStatus(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAE8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5ED = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDAE8);
  }

  return byte_1ED7FD5ED;
}

uint64_t capabilities::ct::supportsCellularPlanInfoInCloud(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAF0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5EE = capabilities::ct::sSupportsCellularPlanInfoInCloud(Product);
    __cxa_guard_release(&qword_1ED7FDAF0);
  }

  return byte_1ED7FD5EE;
}

uint64_t capabilities::ct::sSupportsCellularPlanInfoInCloud(int a1)
{
  v1 = a1 - 79;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 121:
    case 123:
    case 124:
    case 128:
    case 133:
    case 134:
    case 135:
    case 137:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsWirelessModem(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDAF8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5EF = capabilities::ct::sSupportsWirelessModem(Product);
    __cxa_guard_release(&qword_1ED7FDAF8);
  }

  return byte_1ED7FD5EF;
}

uint64_t capabilities::ct::sSupportsWirelessModem(int a1)
{
  v1 = a1 - 79;
  result = 1;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 20:
    case 21:
    case 22:
    case 23:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 35:
    case 36:
    case 37:
    case 38:
    case 41:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 121:
    case 123:
    case 124:
    case 128:
    case 133:
    case 134:
    case 135:
    case 137:
      return result;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t capabilities::ct::supportsQualityIndication(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB00))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F0 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB00);
  }

  return byte_1ED7FD5F0;
}

uint64_t capabilities::ct::supportsAudioPolicyForTopAntenna(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB08))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F1 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB08);
  }

  return byte_1ED7FD5F1;
}

uint64_t capabilities::ct::supportsAudioPolicyForBottomAntenna(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB10))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F2 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB10);
  }

  return byte_1ED7FD5F2;
}

uint64_t capabilities::ct::getAntennaSwitchCommandType(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB18))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD684 = capabilities::ct::sGetAntennaSwitchCommandType(Product);
    __cxa_guard_release(&qword_1ED7FDB18);
  }

  return dword_1ED7FD684;
}

uint64_t capabilities::ct::sGetAntennaSwitchCommandType(int a1)
{
  result = 0;
  if (((a1 - 79) > 0x38 || ((1 << (a1 - 79)) & 0x1E0207800F47027) == 0) && ((a1 - 142) > 0x3D || ((1 << (a1 + 114)) & 0x3400000083C0478FLL) == 0))
  {
    v3 = a1 - 207;
    if (v3 > 9 || ((1 << v3) & 0x2E1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsP2PAsPhone(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB20))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F3 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB20);
  }

  return byte_1ED7FD5F3;
}

uint64_t capabilities::ct::supportsRemoteCellularPlan(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB28))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F4 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB28);
  }

  return byte_1ED7FD5F4;
}

uint64_t capabilities::ct::supportsSIMProvisioningAsSignupSource(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB30))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F5 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB30);
  }

  return byte_1ED7FD5F5;
}

uint64_t capabilities::ct::supportsCellularHealthDiagnostics(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB38))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F6 = capabilities::ct::sSupportsGemini(Product);
    __cxa_guard_release(&qword_1ED7FDB38);
  }

  return byte_1ED7FD5F6;
}

uint64_t capabilities::ct::activationSIMInfoHardwareSlotBased(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB40))
  {
    byte_1ED7FD5F7 = TelephonyRadiosGetRadio() - 7 < 3;
    __cxa_guard_release(&qword_1ED7FDB40);
  }

  return byte_1ED7FD5F7;
}

uint64_t capabilities::ct::supportsSMSIMSStack(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB48))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5F8 = capabilities::ct::sSupportsSMSIMSStack(Product);
    __cxa_guard_release(&qword_1ED7FDB48);
  }

  return byte_1ED7FD5F8;
}

uint64_t capabilities::ct::sSupportsSMSIMSStack(int a1)
{
  result = 1;
  if ((a1 - 82) > 0x38 || ((1 << (a1 - 82)) & 0x1C01B407E007183) == 0)
  {
    v3 = a1 - 146;
    if (v3 > 0x1A || ((1 << v3) & 0x700F807) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::getProvisioningProfileSupport(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB50))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD688 = capabilities::ct::sGetProvisioningProfileSupport(Product);
    __cxa_guard_release(&qword_1ED7FDB50);
  }

  return dword_1ED7FD688;
}

uint64_t capabilities::ct::sGetProvisioningProfileSupport(int a1)
{
  if ((a1 - 82) > 0x86)
  {
    return 0;
  }

  else
  {
    return dword_1CAE60194[a1 - 82];
  }
}

uint64_t capabilities::ct::sSupportsSecurityStatus(int a1)
{
  result = 1;
  if ((a1 - 156) > 0x3C || ((1 << (a1 + 100)) & 0x1E1FF0000003C831) == 0)
  {
    v3 = a1 - 91;
    if (v3 > 6 || ((1 << v3) & 0x47) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::nonPrimaryDLServingCellBandwidthMaxValue(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB88))
  {
    Product = TelephonyRadiosGetProduct();
    v3 = 0xFFFFFFFFLL;
    if ((Product - 95) < 2)
    {
      v3 = 5000000;
    }

    qword_1ED7FDB80 = v3;
    __cxa_guard_release(&qword_1ED7FDB88);
  }

  return qword_1ED7FDB80;
}

uint64_t capabilities::ct::nonPrimaryDLServingCellBandwidthMaxValueForProduct(int a1)
{
  if ((a1 - 95) >= 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 5000000;
  }
}

uint64_t capabilities::ct::supportsMultiClientDesense(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB90))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD5FE = capabilities::ct::sSupportsMultiClientDesense(Product);
    __cxa_guard_release(&qword_1ED7FDB90);
  }

  return byte_1ED7FD5FE;
}

BOOL capabilities::ct::sSupportsMultiClientDesense(int a1)
{
  result = 1;
  if ((a1 - 120) > 0x34 || ((1 << (a1 - 120)) & 0x1C03E01C070069) == 0)
  {
    return (a1 - 95) < 2;
  }

  return result;
}

uint64_t capabilities::ct::supportsDisableICCIDCommand(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDB98))
  {
    byte_1ED7FD5FF = TelephonyRadiosGetProduct() - 99 < 4;
    __cxa_guard_release(&qword_1ED7FDB98);
  }

  return byte_1ED7FD5FF;
}

uint64_t capabilities::ct::supportsCellNetworkSearchGeoMCC(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBA0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD600 = capabilities::ct::sSupportsCellNetworkSearchGeoMCC(Product);
    __cxa_guard_release(&qword_1ED7FDBA0);
  }

  return byte_1ED7FD600;
}

uint64_t capabilities::ct::sSupportsCellNetworkSearchGeoMCC(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x39 || ((1 << (a1 - 99)) & 0x33C781E0207800FLL) == 0)
  {
    v3 = a1 - 162;
    if (v3 > 0x36 || ((1 << v3) & 0x4C0100000008FFLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsCompleteCleanupOnFilePushFailure(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBA8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD601 = capabilities::ct::sSupportsCompleteCleanupOnFilePushFailure(Product);
    __cxa_guard_release(&qword_1ED7FDBA8);
  }

  return byte_1ED7FD601;
}

uint64_t capabilities::ct::sSupportsCompleteCleanupOnFilePushFailure(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x3E || ((1 << (a1 - 99)) & 0x623C781E0207800FLL) == 0)
  {
    v3 = a1 - 164;
    if (v3 > 0x34 || ((1 << v3) & 0x1F1F70000003CFLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsEmergencyQMIExtensions(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBB0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD602 = capabilities::ct::sSupportsEmergencyQMIExtensions(Product);
    __cxa_guard_release(&qword_1ED7FDBB0);
  }

  return byte_1ED7FD602;
}

uint64_t capabilities::ct::sSupportsEmergencyQMIExtensions(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x35 || ((1 << (a1 - 99)) & 0x3C781E0207800FLL) == 0)
  {
    v3 = a1 - 164;
    if (v3 > 0x30 || ((1 << v3) & 0x1000000000007) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsEMFTypeForEmergencyTexts(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBB8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD603 = capabilities::ct::sSupportsEMFTypeForEmergencyTexts(Product);
    __cxa_guard_release(&qword_1ED7FDBB8);
  }

  return byte_1ED7FD603;
}

uint64_t capabilities::ct::sSupportsEMFTypeForEmergencyTexts(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x38 || ((1 << (a1 - 99)) & 0x13C781E0207800FLL) == 0)
  {
    v3 = a1 - 162;
    if (v3 > 0x32 || ((1 << v3) & 0x60000000000DFLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsSIMAPNSingleFile(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBC0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD604 = capabilities::ct::sSupportsEmergencyQMIExtensions(Product);
    __cxa_guard_release(&qword_1ED7FDBC0);
  }

  return byte_1ED7FD604;
}

uint64_t capabilities::ct::supportsPrivateNetwork(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBC8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD605 = capabilities::ct::sSupportsPrivateNetwork(Product);
    __cxa_guard_release(&qword_1ED7FDBC8);
  }

  return byte_1ED7FD605;
}

uint64_t capabilities::ct::sSupportsPrivateNetwork(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x3E || ((1 << (a1 - 99)) & 0x7E3FF8FE0F27800FLL) == 0)
  {
    v3 = a1 - 164;
    if (v3 > 0x34 || ((1 << v3) & 0x1F1F70000003CFLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsForceUserConfirmationForSTKCalls(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBD0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD606 = capabilities::ct::sSupportsEmergencyQMIExtensions(Product);
    __cxa_guard_release(&qword_1ED7FDBD0);
  }

  return byte_1ED7FD606;
}

uint64_t capabilities::ct::supportsVoicemailIndicationInCS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBD8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD607 = capabilities::ct::sSupportsVoicemailIndicationInCS(Product);
    __cxa_guard_release(&qword_1ED7FDBD8);
  }

  return byte_1ED7FD607;
}

uint64_t capabilities::ct::sSupportsVoicemailIndicationInCS(int a1)
{
  result = 1;
  if ((a1 - 99) > 0x39 || ((1 << (a1 - 99)) & 0x23C781E0207800FLL) == 0)
  {
    v3 = a1 - 164;
    if (v3 > 0x34 || ((1 << v3) & 0x1708500000020FLL) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsXcapForUncertifiedCarriers(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBE0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD608 = capabilities::ct::sSupportsVoicemailIndicationInCS(Product);
    __cxa_guard_release(&qword_1ED7FDBE0);
  }

  return byte_1ED7FD608;
}

uint64_t capabilities::ct::bootstrapProvisioningSupportedOnSlotID(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBE8))
  {
    Product = TelephonyRadiosGetProduct();
    dword_1ED7FD68C = capabilities::ct::sBootstrapProvisioningSupportedOnSlotID(Product);
    __cxa_guard_release(&qword_1ED7FDBE8);
  }

  return dword_1ED7FD68C;
}

uint64_t capabilities::ct::sBootstrapProvisioningSupportedOnSlotID(int a1)
{
  result = 2;
  if ((a1 - 120) > 0x34 || ((1 << (a1 - 120)) & 0x1C03E01C070069) == 0)
  {
    if ((a1 - 108) >= 4)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsHydra(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBF0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD609 = capabilities::ct::sSupportsHydra(Product);
    __cxa_guard_release(&qword_1ED7FDBF0);
  }

  return byte_1ED7FD609;
}

uint64_t capabilities::ct::sSupportsHydra(int a1)
{
  result = 1;
  if ((a1 - 114) > 0x3B || ((1 << (a1 - 114)) & 0x83C0478F03C040FLL) == 0)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17085) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsVoNR(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDBF8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD60A = capabilities::ct::sSupportsVoNR(Product);
    __cxa_guard_release(&qword_1ED7FDBF8);
  }

  return byte_1ED7FD60A;
}

uint64_t capabilities::ct::sSupportsVoNR(int a1)
{
  result = 1;
  if ((a1 - 114) > 0x3B || ((1 << (a1 - 114)) & 0x8FF0678F03C040FLL) == 0)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17885) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsPCOOptions(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC00))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD60B = capabilities::ct::sSupportsPCOOptions(Product);
    __cxa_guard_release(&qword_1ED7FDC00);
  }

  return byte_1ED7FD60B;
}

BOOL capabilities::ct::sSupportsPCOOptions(int a1)
{
  result = 1;
  if ((a1 - 114) > 0x34 || ((1 << (a1 - 114)) & 0x1C0078F03C040FLL) == 0)
  {
    return a1 == 212;
  }

  return result;
}

uint64_t capabilities::ct::supportsCellSatellite(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC08))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD60C = capabilities::ct::sSupportsCellSatellite(Product);
    __cxa_guard_release(&qword_1ED7FDC08);
  }

  return byte_1ED7FD60C;
}

uint64_t capabilities::ct::sSupportsCellSatellite(int a1)
{
  result = 1;
  if ((a1 - 114) > 0x3B || ((1 << (a1 - 114)) & 0x8FF0678F03C000FLL) == 0)
  {
    v3 = a1 - 202;
    if (v3 > 0xE || ((1 << v3) & 0x4C01) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsSendingLTECoverageToAP(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC10))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD60D = capabilities::ct::sSupportsPCOOptions(Product);
    __cxa_guard_release(&qword_1ED7FDC10);
  }

  return byte_1ED7FD60D;
}

uint64_t capabilities::ct::supportsEnhanced5GCellularHarvesting(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC18))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD60E = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC18);
  }

  return byte_1ED7FD60E;
}

uint64_t capabilities::ct::supportsVinylTestMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC20))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD60F = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC20);
  }

  return byte_1ED7FD60F;
}

uint64_t capabilities::ct::supportsExclusiveAssertions(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC28))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD610 = (Radio < 0x13) & (0x63C00u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC28);
  }

  return byte_1ED7FD610;
}

uint64_t capabilities::ct::supportsLLFilters(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC30))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD611 = (Radio < 0x14) & (0xEFC00u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC30);
  }

  return byte_1ED7FD611;
}

uint64_t capabilities::ct::supportsDynamicRRCReleaseVersionUpdate(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC38))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD612 = (Radio < 0x14) & (0xEF800u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC38);
  }

  return byte_1ED7FD612;
}

uint64_t capabilities::ct::supportsRRCRejectionCodeReporting(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC40))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD613 = (Radio < 0x14) & (0xEF800u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC40);
  }

  return byte_1ED7FD613;
}

uint64_t capabilities::ct::supportsSimultaneousNRStandaloneInDualSIMMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC48))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD614 = capabilities::ct::sSupportsSimultaneousNRStandaloneInDualSIMMode(Product);
    __cxa_guard_release(&qword_1ED7FDC48);
  }

  return byte_1ED7FD614;
}

uint64_t capabilities::ct::sSupportsSimultaneousNRStandaloneInDualSIMMode(int a1)
{
  result = 1;
  if ((a1 - 124) > 0x31 || ((1 << (a1 - 124)) & 0x20F0F1FFC6F07) == 0)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17085) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsThroughputEngineering(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC50))
  {
    byte_1ED7FD615 = TelephonyRadiosGetRadio() - 12 < 8;
    __cxa_guard_release(&qword_1ED7FDC50);
  }

  return byte_1ED7FD615;
}

uint64_t capabilities::ct::supportsLLFiltersIMS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC58))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD616 = (Radio < 0x14) & (0xEF000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC58);
  }

  return byte_1ED7FD616;
}

uint64_t capabilities::ct::supportsQMIWakeUpForDFC(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC60))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD617 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC60);
  }

  return byte_1ED7FD617;
}

uint64_t capabilities::ct::sSupports5GSlicing(int a1)
{
  result = 1;
  if ((a1 - 125) > 0x30 || ((1 << (a1 - 125)) & 0x1E79F8FFE3783) == 0)
  {
    v3 = a1 - 202;
    if (v3 > 0xE || ((1 << v3) & 0x4C01) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsCSFBFastSAReturn(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC70))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD619 = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC70);
  }

  return byte_1ED7FD619;
}

uint64_t capabilities::ct::supportsUplinkHealthUpdate(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC78))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD61A = (Radio < 0x14) & (0xEF000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC78);
  }

  return byte_1ED7FD61A;
}

uint64_t capabilities::ct::supportsGPSVisibilityReporting(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC80))
  {
    Radio = TelephonyRadiosGetRadio();
    byte_1ED7FD61B = (Radio < 0x13) & (0x63000u >> Radio);
    __cxa_guard_release(&qword_1ED7FDC80);
  }

  return byte_1ED7FD61B;
}

uint64_t capabilities::ct::allowChinaWSKUWatchesToProvisionROWPlans(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC88))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD61C = capabilities::ct::sAllowChinaWSKUWatchesToProvisionROWPlans(Product);
    __cxa_guard_release(&qword_1ED7FDC88);
  }

  return byte_1ED7FD61C;
}

BOOL capabilities::ct::sAllowChinaWSKUWatchesToProvisionROWPlans(int a1)
{
  result = 1;
  if ((a1 - 127) > 0x2A || ((1 << (a1 - 127)) & 0x6181C00701FLL) == 0)
  {
    return a1 == 209 || a1 == 211;
  }

  return result;
}

uint64_t capabilities::ct::disallowROWWSKUWatchesToProvisionChinaPlans(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC90))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD61D = capabilities::ct::sAllowChinaWSKUWatchesToProvisionROWPlans(Product);
    __cxa_guard_release(&qword_1ED7FDC90);
  }

  return byte_1ED7FD61D;
}

uint64_t capabilities::ct::requiresSeparateOperatingModeForStewie(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDC98))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD61E = capabilities::ct::sRequiresSeparateOperatingModeForStewie(Product);
    __cxa_guard_release(&qword_1ED7FDC98);
  }

  return byte_1ED7FD61E;
}

BOOL capabilities::ct::sRequiresSeparateOperatingModeForStewie(int a1)
{
  result = 1;
  if ((a1 - 132) > 0x22 || ((1 << (a1 + 124)) & 0x7009E3C0FLL) == 0)
  {
    return a1 == 212;
  }

  return result;
}

uint64_t capabilities::ct::supportsSARAveraging(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCA0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD61F = capabilities::ct::sRequiresSeparateOperatingModeForStewie(Product);
    __cxa_guard_release(&qword_1ED7FDCA0);
  }

  return byte_1ED7FD61F;
}

uint64_t capabilities::ct::supportsCampOnlyMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCA8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD620 = capabilities::ct::sSupportsCampOnlyMode(Product);
    __cxa_guard_release(&qword_1ED7FDCA8);
  }

  return byte_1ED7FD620;
}

BOOL capabilities::ct::sSupportsCampOnlyMode(int a1)
{
  result = 1;
  if ((a1 - 132) > 0x25 || ((1 << (a1 + 124)) & 0x37CE9FFC6FLL) == 0)
  {
    return (a1 - 211) < 2;
  }

  return result;
}

uint64_t capabilities::ct::supportsTurnOffCellular(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCB0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD621 = capabilities::ct::sSupportsTurnOffCellular(Product);
    __cxa_guard_release(&qword_1ED7FDCB0);
  }

  return byte_1ED7FD621;
}

BOOL capabilities::ct::sSupportsTurnOffCellular(int a1)
{
  result = 1;
  if ((a1 - 132) > 0x22 || ((1 << (a1 + 124)) & 0x7001E3C0FLL) == 0)
  {
    return a1 == 212;
  }

  return result;
}

uint64_t capabilities::ct::sSupportsStewie(int a1)
{
  result = 1;
  if ((a1 - 132) > 0x29 || ((1 << (a1 + 124)) & 0x20F019E3C0FLL) == 0)
  {
    v3 = a1 - 202;
    if (v3 > 0xE || ((1 << v3) & 0x4C01) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsSubwayDetection(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCC0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD623 = capabilities::ct::sSupportsSubwayDetection(Product);
    __cxa_guard_release(&qword_1ED7FDCC0);
  }

  return byte_1ED7FD623;
}

uint64_t capabilities::ct::sSupportsSubwayDetection(int a1)
{
  result = 1;
  if ((a1 - 132) > 0x29 || ((1 << (a1 + 124)) & 0x20F011E3C0FLL) == 0)
  {
    v3 = a1 - 200;
    if (v3 > 0x10 || ((1 << v3) & 0x17085) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t capabilities::ct::supportsTurboMode(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCC8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD624 = capabilities::ct::sSupportsSubwayDetection(Product);
    __cxa_guard_release(&qword_1ED7FDCC8);
  }

  return byte_1ED7FD624;
}

uint64_t capabilities::ct::supportsRegulatoryRestriction(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCD0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD625 = ((Product - 136) < 0x25) & (0x1C83E01C07uLL >> (Product + 120));
    __cxa_guard_release(&qword_1ED7FDCD0);
  }

  return byte_1ED7FD625;
}

uint64_t capabilities::ct::dataOnlySingleSIMDevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCD8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD626 = ((Product - 137) < 0x24) & (0xE01F00E03uLL >> (Product + 119));
    __cxa_guard_release(&qword_1ED7FDCD8);
  }

  return byte_1ED7FD626;
}

uint64_t capabilities::ct::basebandGlobalSKU(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCE0))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD627 = capabilities::ct::sBasebandGlobalSKU(Product);
    __cxa_guard_release(&qword_1ED7FDCE0);
  }

  return byte_1ED7FD627;
}

BOOL capabilities::ct::sBasebandGlobalSKU(int a1)
{
  result = 1;
  if ((a1 - 153) > 0x3A || ((1 << (a1 + 103)) & 0x500000000018607) == 0)
  {
    return (a1 - 139) < 3;
  }

  return result;
}

uint64_t capabilities::ct::latestAndGreatestDevice(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCE8))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD628 = ((Product - 146) < 0x1B) & (0x71CF07Fu >> (Product + 110));
    __cxa_guard_release(&qword_1ED7FDCE8);
  }

  return byte_1ED7FD628;
}

uint64_t capabilities::ct::supportsMultiClientCPMS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCF0))
  {
    byte_1ED7FD629 = TelephonyRadiosGetProduct() == 155;
    __cxa_guard_release(&qword_1ED7FDCF0);
  }

  return byte_1ED7FD629;
}

uint64_t capabilities::ct::requiresMultipleFilesPush(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDCF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDCF8))
  {
    byte_1ED7FD62A = TelephonyRadiosGetRadioVendor() == 4;
    __cxa_guard_release(&qword_1ED7FDCF8);
  }

  return byte_1ED7FD62A;
}

uint64_t capabilities::ct::supportsHiSpeedFiler(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD00))
  {
    byte_1ED7FD62B = TelephonyRadiosGetRadioVendor() - 3 < 2;
    __cxa_guard_release(&qword_1ED7FDD00);
  }

  return byte_1ED7FD62B;
}

uint64_t capabilities::ct::supportsRadioModeWorkaroundForWatch(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD08))
  {
    byte_1ED7FD62C = TelephonyRadiosGetRadioVendor() == 4;
    __cxa_guard_release(&qword_1ED7FDD08);
  }

  return byte_1ED7FD62C;
}

uint64_t capabilities::ct::supportsDynamicBootstrapGemini(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD10))
  {
    Product = TelephonyRadiosGetProduct();
    byte_1ED7FD62D = ((Product - 156) < 0xC) & (0xF01u >> (Product + 100));
    __cxa_guard_release(&qword_1ED7FDD10);
  }

  return byte_1ED7FD62D;
}

uint64_t capabilities::ct::supportsNewPhonebook(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD18))
  {
    byte_1ED7FD62E = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD18);
  }

  return byte_1ED7FD62E;
}

uint64_t capabilities::ct::supportsNRFlowInformation(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD20))
  {
    byte_1ED7FD62F = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD20);
  }

  return byte_1ED7FD62F;
}

uint64_t capabilities::ct::supportsIPCInterfaceConfig(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD28))
  {
    byte_1ED7FD630 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD28);
  }

  return byte_1ED7FD630;
}

uint64_t capabilities::ct::supportsIPCInterfaceConfigStage2(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD30))
  {
    byte_1ED7FD631 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD30);
  }

  return byte_1ED7FD631;
}

uint64_t capabilities::ct::supportsBBTimePrecisionInMilliseconds(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD38))
  {
    byte_1ED7FD632 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD38);
  }

  return byte_1ED7FD632;
}

uint64_t capabilities::ct::supportsBBTimePrecisionInMillisecondsWithMCT(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD40))
  {
    byte_1ED7FD633 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD40);
  }

  return byte_1ED7FD633;
}

uint64_t capabilities::ct::shouldEnableSystemDeterminationWatchdog(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD50))
  {
    byte_1ED7FD635 = TelephonyRadiosGetRadioVendor() != 3;
    __cxa_guard_release(&qword_1ED7FDD50);
  }

  return byte_1ED7FD635;
}

uint64_t capabilities::ct::shouldSaveInCallIMSPrefForCSCall(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD58))
  {
    byte_1ED7FD636 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD58);
  }

  return byte_1ED7FD636;
}

uint64_t capabilities::ct::supportsCachedNetworkTimeQuery(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD60))
  {
    byte_1ED7FD637 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD60);
  }

  return byte_1ED7FD637;
}

uint64_t capabilities::ct::supportsEnhancedNRSignalStrength(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD68))
  {
    byte_1ED7FD638 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD68);
  }

  return byte_1ED7FD638;
}

uint64_t capabilities::ct::supportsTARandomization(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD70))
  {
    byte_1ED7FD639 = TelephonyRadiosGetRadioVendor() == 3;
    __cxa_guard_release(&qword_1ED7FDD70);
  }

  return byte_1ED7FD639;
}

uint64_t capabilities::ct::supportsMultiRegionALS(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD78))
  {
    byte_1ED7FD63A = TelephonyRadiosGetProduct() == 167;
    __cxa_guard_release(&qword_1ED7FDD78);
  }

  return byte_1ED7FD63A;
}

uint64_t capabilities::ct::supportseSIMCountRestriction(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD80))
  {
    Product = TelephonyRadiosGetProduct();
    v4 = Product == 167 || Product == 173;
    byte_1ED7FD63B = v4;
    __cxa_guard_release(&qword_1ED7FDD80);
  }

  return byte_1ED7FD63B;
}

uint64_t capabilities::ct::useLegacyPhoneNumberSelectionMethod(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD88))
  {
    byte_1ED7FD63C = (TelephonyRadiosGetProduct() & 0xFFFFFFFE) == 0x8000;
    __cxa_guard_release(&qword_1ED7FDD88);
  }

  return byte_1ED7FD63C;
}

uint64_t capabilities::ct::requireVinylManagerInd(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD90))
  {
    byte_1ED7FD63D = TelephonyRadiosGetProduct() - 0x8000 < 3;
    __cxa_guard_release(&qword_1ED7FDD90);
  }

  return byte_1ED7FD63D;
}

uint64_t capabilities::ct::supportsLogDumpForFailedBundlePush(capabilities::ct *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDD98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDD98))
  {
    byte_1ED7FD63E = TelephonyRadiosGetProduct() == 32770;
    __cxa_guard_release(&qword_1ED7FDD98);
  }

  return byte_1ED7FD63E;
}

void *capabilities::ct::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5F78[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5F98[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5FB0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5FC8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5FE0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 4)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A5FF8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6020[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6038[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6050[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6068[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6080[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6098[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A60B0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_1E83A6330)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_1E83A6348)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 5)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_1E83A6368)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void *capabilities::ct::asString@<X0>(int a1@<W0>, void *a2@<X8>)
{
  v2 = "???";
  if (a1 == 1)
  {
    v2 = "kNone";
  }

  if (a1)
  {
    v3 = v2;
  }

  else
  {
    v3 = "kMicPreferred";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v3);
}

{
  if (a1 > 131585)
  {
    switch(a1)
    {
      case 131586:
        v2 = "kV2_2_2";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 131840:
        v2 = "kV2_3";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      case 132352:
        v2 = "kV2_5";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

LABEL_13:
    v2 = "???";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 == 0x20000)
  {
    v2 = "kV2_0";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 == 131584)
  {
    v2 = "kV2_2";
    return std::string::basic_string[abi:ne200100]<0>(a2, v2);
  }

  if (a1 != 131585)
  {
    goto LABEL_13;
  }

  v2 = "kV2_2_1";
  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  v2 = "kV2_3_1";
  v3 = "???";
  if (a1 == 131328)
  {
    v3 = "kV2_1";
  }

  if (a1 != 131841)
  {
    v2 = v3;
  }

  if (a1 == 0x20000)
  {
    v4 = "kV2_0";
  }

  else
  {
    v4 = v2;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v4);
}

char *std::vector<capabilities::ct::SupportedMessageMode>::__vallocate[abi:ne200100](void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(4 * a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[4 * a2];
  return result;
}

void *std::vector<capabilities::ct::SupportedMessageMode>::__assign_with_size[abi:ne200100]<capabilities::ct::SupportedMessageMode const*,capabilities::ct::SupportedMessageMode const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 2)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (a4 <= (v14 - v9) >> 2)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16;
          v16 += 4;
          *v18 = v19;
          v18 += 4;
          v17 += 4;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v10 = v8 >> 1;
    if (v8 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<capabilities::ct::SupportedMessageMode>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6;
      v6 += 4;
      *v12 = v13;
      v12 += 4;
    }
  }

  v7[1] = v12;
  return result;
}

uint64_t capabilities::debug::shouldTriggerStackshotOnSnapshot(capabilities::debug *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE58))
  {
    _MergedGlobals_6 = 0;
    __cxa_guard_release(&qword_1ED7FDE58);
  }

  return _MergedGlobals_6;
}

uint64_t capabilities::debug::environment(capabilities::debug *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE60))
  {
    dword_1ED7FDE4C = 0;
    __cxa_guard_release(&qword_1ED7FDE60);
  }

  return dword_1ED7FDE4C;
}

uint64_t capabilities::debug::bootLoggerType(capabilities::debug *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE68))
  {
    TelephonyRadiosGetRadioVendor();
    dword_1ED7FDE50 = 0;
    __cxa_guard_release(&qword_1ED7FDE68);
  }

  return dword_1ED7FDE50;
}

uint64_t capabilities::debug::operator&(unsigned int a1, int a2)
{
  return a2 & a1;
}

{
  return a2 & a1;
}

_DWORD *capabilities::debug::operator&=(_DWORD *result, int a2)
{
  *result &= a2;
  return result;
}

{
  *result &= a2;
  return result;
}

uint64_t capabilities::debug::operator|(unsigned int a1, int a2)
{
  return a2 | a1;
}

{
  return a2 | a1;
}

_DWORD *capabilities::debug::operator|=(_DWORD *result, int a2)
{
  *result |= a2;
  return result;
}

{
  *result |= a2;
  return result;
}

uint64_t capabilities::debug::operator^(unsigned int a1, int a2)
{
  return a2 ^ a1;
}

{
  return a2 ^ a1;
}

_DWORD *capabilities::debug::operator^=(_DWORD *result, int a2)
{
  *result ^= a2;
  return result;
}

{
  *result ^= a2;
  return result;
}

uint64_t capabilities::debug::operator~(int a1)
{
  return ~a1;
}

{
  return ~a1;
}

void capabilities::debug::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_14;
  }

  if ((a1 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kBoot"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) != 0)
    {
LABEL_5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kShutdown");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 4) != 0)
  {
    goto LABEL_5;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_14:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_14;
  }

  if ((a1 & 2) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kPCIE"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 4) != 0)
    {
LABEL_5:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kUART");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 4) != 0)
  {
    goto LABEL_5;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_14:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE5567C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1CAE55818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t capabilities::diag::supportsMultipleMasks(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE88))
  {
    _MergedGlobals_7 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FDE88);
  }

  return _MergedGlobals_7;
}

uint64_t capabilities::diag::supportedDuringAPSleep(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE90))
  {
    byte_1ED7FDE71 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FDE90);
  }

  return byte_1ED7FDE71;
}

uint64_t capabilities::diag::supportsBuffering(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDE98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDE98))
  {
    byte_1ED7FDE72 = ((TelephonyRadiosGetRadioVendor() - 1) & 0xFFFFFFFD) == 0;
    __cxa_guard_release(&qword_1ED7FDE98);
  }

  return byte_1ED7FDE72;
}

uint64_t capabilities::diag::supportsQDSS(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEA0))
  {
    byte_1ED7FDE73 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FDEA0);
  }

  return byte_1ED7FDE73;
}

uint64_t capabilities::diag::supportsADPL(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEA8))
  {
    byte_1ED7FDE74 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FDEA8);
  }

  return byte_1ED7FDE74;
}

uint64_t capabilities::diag::supportsQShrink4(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEB0))
  {
    byte_1ED7FDE75 = TelephonyRadiosGetRadioVendor() == 1;
    __cxa_guard_release(&qword_1ED7FDEB0);
  }

  return byte_1ED7FDE75;
}

uint64_t capabilities::diag::supportedInterfaces(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEB8))
  {
    dword_1ED7FDE78 = 8 * (TelephonyRadiosGetRadioVendor() - 1 < 4);
    __cxa_guard_release(&qword_1ED7FDEB8);
  }

  return dword_1ED7FDE78;
}

uint64_t capabilities::diag::interfaceAfterBoot(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEC0))
  {
    if (TelephonyRadiosGetRadioVendor() - 1 >= 4)
    {
      v2 = 1;
    }

    else
    {
      v2 = 8;
    }

    dword_1ED7FDE7C = v2;
    __cxa_guard_release(&qword_1ED7FDEC0);
  }

  return dword_1ED7FDE7C;
}

uint64_t capabilities::diag::interfaceAfterBootForVendor(int a1)
{
  if ((a1 - 1) >= 4)
  {
    return 1;
  }

  else
  {
    return 8;
  }
}

uint64_t capabilities::diag::preferredInterface(capabilities::diag *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEC8))
  {
    dword_1ED7FDE80 = 8 * (TelephonyRadiosGetRadioVendor() - 1 < 4);
    __cxa_guard_release(&qword_1ED7FDEC8);
  }

  return dword_1ED7FDE80;
}

uint64_t capabilities::diag::operator&(unsigned int a1, int a2)
{
  return a2 & a1;
}

{
  return a2 & a1;
}

_DWORD *capabilities::diag::operator&=(_DWORD *result, int a2)
{
  *result &= a2;
  return result;
}

{
  *result &= a2;
  return result;
}

uint64_t capabilities::diag::operator|(unsigned int a1, int a2)
{
  return a2 | a1;
}

{
  return a2 | a1;
}

_DWORD *capabilities::diag::operator|=(_DWORD *result, int a2)
{
  *result |= a2;
  return result;
}

{
  *result |= a2;
  return result;
}

uint64_t capabilities::diag::operator^(unsigned int a1, int a2)
{
  return a2 ^ a1;
}

{
  return a2 ^ a1;
}

_DWORD *capabilities::diag::operator^=(_DWORD *result, int a2)
{
  *result ^= a2;
  return result;
}

{
  *result ^= a2;
  return result;
}

uint64_t capabilities::diag::operator~(int a1)
{
  return ~a1;
}

{
  return ~a1;
}

void capabilities::diag::asString(int a1@<W0>, std::string *a2@<X8>)
{
  memset(&v8, 170, sizeof(v8));
  std::string::basic_string[abi:ne200100]<0>(&v8, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (!a1)
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "kNone");
    goto LABEL_20;
  }

  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kUART"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_9;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kUSB");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  if ((a1 & 4) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kHSIC"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 8) != 0)
    {
LABEL_12:
      std::string::basic_string[abi:ne200100]<0>(&__p, "kPCI");
      std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if ((a1 & 8) != 0)
  {
    goto LABEL_12;
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    v8 = __p;
  }

  *a2 = v8;
  memset(&v8, 0, sizeof(v8));
LABEL_20:
  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1CAE55FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void capabilities::diag::asString(char a1@<W0>, char *a2@<X8>)
{
  memset(a2, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(a2, "???");
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if ((a1 & 1) != 0 && (std::string::basic_string[abi:ne200100]<0>(&__p, "kStreaming"), std::vector<std::string>::push_back[abi:ne200100](&v5, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((a1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "kThreshold");
  std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_7:
  if ((a1 & 4) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "kCircular");
    std::vector<std::string>::push_back[abi:ne200100](&v5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v6 != v5)
  {
    ctu::join<std::__wrap_iter<std::string *>>(v5, v6, " | ", 3uLL, &__p);
    if (a2[23] < 0)
    {
      operator delete(*a2);
    }

    *a2 = __p;
  }

  __p.__r_.__value_.__r.__words[0] = &v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1CAE56168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(a1);
}

uint64_t capabilities::etl::getMaverickIPALoopbackV2ParametersType(capabilities::etl *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDED8))
  {
    v2 = TelephonyRadiosGetRadio() - 9;
    if (v2 > 9)
    {
      v3 = 2;
    }

    else
    {
      v3 = dword_1CAE603B0[v2];
    }

    dword_1ED7FDED4 = v3;
    __cxa_guard_release(&qword_1ED7FDED8);
  }

  return dword_1ED7FDED4;
}

uint64_t capabilities::etl::getMaverickIPALoopbackV2ParametersTypeForRadio(int a1)
{
  if ((a1 - 9) > 9)
  {
    return 2;
  }

  else
  {
    return dword_1CAE603B0[a1 - 9];
  }
}

uint64_t capabilities::etl::DPLVersion(capabilities::etl *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEE0))
  {
    v2 = TelephonyRadiosGetRadio() - 9;
    if (v2 > 9)
    {
      v3 = 0;
    }

    else
    {
      v3 = byte_1CAE603D8[v2];
    }

    _MergedGlobals_8 = v3;
    __cxa_guard_release(&qword_1ED7FDEE0);
  }

  return _MergedGlobals_8;
}

uint64_t capabilities::etl::DPLVersionForRadio(int a1)
{
  if ((a1 - 9) > 9)
  {
    return 0;
  }

  else
  {
    return byte_1CAE603D8[a1 - 9];
  }
}

void *capabilities::etl::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A60C8[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t capabilities::fusing::modeSetTimeout(capabilities::fusing *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDEF0))
  {
    _MergedGlobals_9 = 4000;
    __cxa_guard_release(&qword_1ED7FDEF0);
  }

  return _MergedGlobals_9;
}

uint64_t capabilities::fusing::commandTimeout(capabilities::fusing *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED7FDF00))
  {
    qword_1ED7FDEF8 = 2000;
    __cxa_guard_release(&qword_1ED7FDF00);
  }

  return qword_1ED7FDEF8;
}

uint64_t capabilities::fusing::supportsCertIDFromPublicKeyHash(capabilities::fusing *this)
{
  {
    RadioVendor = TelephonyRadiosGetRadioVendor();
    capabilities::fusing::supportsCertIDFromPublicKeyHash(void)::ret = (RadioVendor < 5) & (0x16u >> RadioVendor);
  }

  return capabilities::fusing::supportsCertIDFromPublicKeyHash(void)::ret;
}

uint64_t capabilities::fusing::defaultCertID(capabilities::fusing *this)
{
  {
    Product = TelephonyRadiosGetProduct();
    capabilities::fusing::defaultCertID(void)::ret = capabilities::fusing::sDefaultCertID(Product);
  }

  return capabilities::fusing::defaultCertID(void)::ret;
}

uint64_t capabilities::fusing::sDefaultCertID(int a1)
{
  result = 3557748310;
  v3 = a1 - 99;
  if ((a1 - 99) <= 0x3C)
  {
    if (((1 << v3) & 0x1C3FF8DE0E079E0FLL) != 0)
    {
      return result;
    }

    if (((1 << v3) & 0x2001200000) != 0)
    {
      return 3425784744;
    }
  }

  v4 = a1 - 164;
  if (v4 > 0x30 || ((1 << v4) & 0x1000000000007) == 0)
  {
    return 0;
  }

  return result;
}

void *capabilities::fusing::asString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A60E0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

{
  if (a1 > 4)
  {
    v2 = "???";
  }

  else
  {
    v2 = off_1E83A6100[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t capabilities::fusing::inferFusingStateFromCertID(capabilities::fusing *this)
{
  v1 = this;
  result = capabilities::fusing::supportsCertIDFromPublicKeyHash(this);
  if (result)
  {
    if (v1)
    {
      if (capabilities::fusing::defaultCertID(result) == v1)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t capabilities::fusing::determineConfig(capabilities::fusing *this, int a2, int a3)
{
  v3 = (this | a2) == 0;
  if (!(this | a2) && !a3)
  {
    return 1;
  }

  if (a3 != 1)
  {
    v3 = 0;
  }

  if (v3)
  {
    return 2;
  }

  if (!this && a2 == 1 && a3 == 1)
  {
    return 3;
  }

  if (a3 == 1 && a2 == 1 && this == 1)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t capabilities::ipc::supportsUART(capabilities::ipc *this)
{
  if ((atomic_load_explicit(&qword_1ED7FDF20, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_1ED7FDF20);
    if (v2)
    {
      byte_1ED7FDF09 = (capabilities::ipc::typeInternal(v2) & 8) != 0;
      __cxa_guard_release(&qword_1ED7FDF20);
    }
  }

  return byte_1ED7FDF09;
}