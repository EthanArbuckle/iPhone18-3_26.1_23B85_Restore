char *BlueFin::GlDbgCodecBase::Encode(char *this, char *a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = this;
  this[562] = 1;
  v9 = this + 32;
  v10 = (this + 552);
  v11 = this + 296;
  v12 = this + 292;
  do
  {
    if (a3)
    {
      while (1)
      {
        v13 = *(v8 + 288);
        if (v13 > 0xFF)
        {
          break;
        }

        v14 = *a2++;
        *(v8 + 288) = v13 + 1;
        v9[v13] = v14;
        if (!--a3)
        {
          goto LABEL_5;
        }
      }

      v15 = 1;
    }

    else
    {
LABEL_5:
      a3 = 0;
      if (*(v8 + 560))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        if (!a4)
        {
          return this;
        }
      }
    }

    v16 = *(v8 + 567);
    if (!v16)
    {
      v17 = *v10;
      if (v17 > 0xFF)
      {
        v16 = 0;
        goto LABEL_23;
      }

      *(v8 + 552) = v17 + 1;
      v11[v17] = 123;
      v16 = *(v8 + 567) + 1;
      *(v8 + 567) = v16;
    }

    if (v16 == 1)
    {
      (*(*v8 + 88))(v8, v9, v11, v12, v10, *(v8 + 288), 256, (v15 ^ 1) & a4);
      if (a4)
      {
        v18 = (*(*v8 + 96))(v8);
        v16 = *(v8 + 567);
        if (v18)
        {
          *(v8 + 567) = ++v16;
        }
      }

      else
      {
        v16 = *(v8 + 567);
      }
    }

    v17 = *v10;
    if (v16 == 2)
    {
      v16 = 2;
      if (v17 <= 0xFF)
      {
        if (a4)
        {
          v16 = 0;
          *(v8 + 552) = v17 + 1;
          v11[v17] = 125;
          *(v8 + 567) = 0;
          v17 = *(v8 + 552);
        }
      }
    }

LABEL_23:
    if (v16)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0;
    }

    this = (*(*v8 + 80))(v8, &v11[*(v8 + 556)], v17, a5);
    *(v8 + 552) = 0;
    v20 = *(v8 + 292);
    v21 = *(v8 + 288);
    if (v21 == v20)
    {
      *(v8 + 288) = 0;
    }

    else
    {
      v22 = (v21 - v20);
      *(v8 + 288) = v22;
      this = memmove(v9, &v9[v20], v22);
    }

    *v12 = 0;
  }

  while (((v15 | v19) & 1) != 0);
  return this;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, const __int16 *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *v5 = bswap32(*a2) >> 16;
    return BlueFin::GlDbgCodecBase::Encode(this, v5, 2, 0, 0);
  }

  return result;
}

void *BlueFin::GlDbgProxy::Rawwrite(BlueFin::GlDbgProxy *this, unsigned __int8 *__src, unsigned int a3, int a4)
{
  v8 = this + 6624;
  v9 = *(this + 1720);
  while (1)
  {
    v10 = 251 - v9 >= a3 ? a3 : (251 - v9);
    result = memcpy(&v8[v9 + 3], __src, v10);
    v8[(v10 + *(this + 1720) + 3)] = 10;
    v8[(v10 + *(this + 1720) + 4)] = 0;
    a3 -= v10;
    if (!a3 && !a4)
    {
      break;
    }

    v12 = *(this + 112);
    if (v12)
    {
      result = v12(this + 608, v8);
    }

    v9 = 0;
    __src += v10;
    *(this + 1720) = 0;
    if (!a3)
    {
      return result;
    }
  }

  *(this + 1720) += v10;
  return result;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, double *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  result = (*(*this + 120))(this);
  if (result)
  {
    BlueFin::GlDbgCodecBase::External(this, v6, *a2);
    result = BlueFin::GlDbgCodecBase::Encode(this, v6, 8, 0, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

void BlueFin::GlDbgCodecBase::External(BlueFin::GlDbgCodecBase *this, unsigned __int8 *a2, double a3)
{
  __e = 0;
  v5 = fabs(a3);
  v6 = vcvtd_n_s64_f64(frexp(v5, &__e), 0x35uLL);
  if (__e <= -1022)
  {
    v7 = -1023;
  }

  else
  {
    v7 = __e - 1;
  }

  if (__e <= -1022)
  {
    v8 = v6 >> (3 - __e);
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 == 0;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = -1023;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v5 > 1.79769313e308)
  {
    v10 = 1024;
    v11 = 0;
  }

  v12 = ((v10 << 52) + 0x3FF0000000000000) | *(&__const__ZN7BlueFin14GlDbgCodecBase8ExternalEPhd_ullSigns + ((~*&a3 >> 60) & 8));
  v13 = v12 | v11 & 0xFFFFFFFFFFFFFLL;
  *(a2 + 1) = bswap32(v13);
  a2[3] = BYTE4(v13);
  a2[2] = BYTE5(v13);
  a2[1] = BYTE6(v13);
  *a2 = HIBYTE(v12);
}

uint64_t gnss::FireGnssDevice::setAssistanceAccel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FireMessageHandler::setAssistanceAccel(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);

  return std::function<void ()(gnss::Result)>::operator()(a3, v9);
}

__n128 std::deque<BlueFin::GlSensRawData>::push_back(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 204 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<BlueFin::GlSensRawData>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = (*(v6 + 8 * (v8 / 0xCC)) + 20 * (v8 % 0xCC));
  result = *a2;
  v9[1].n128_u32[0] = a2[1].n128_u32[0];
  *v9 = result;
  ++*(a1 + 40);
  return result;
}

void FireMessageHandler::SetAssistanceRawSensor(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v42 = *MEMORY[0x29EDCA608];
  v9 = a2[5];
  if (v9)
  {
    v12 = 0;
    while (1)
    {
      if ((*(a1 + 2200) & 1) == 0)
      {
        v13 = *(a1 + 1296);
        LOBYTE(v38) = 1;
        *(&v38 + 1) = 0;
        *(&v38 + 5) = 16842752;
        *(&v38 + 9) = 0;
        HIDWORD(v38) = 0;
        v39 = 257;
        v40 = 0;
        if ((*(*v13 + 536))())
        {
          FireDeviceLog::DeviceLogBase(5, "SetAssistanceRawSensorConfig,pass,enable,%d", v14, v15, v16, v17, v18, v19, 1);
        }

        else
        {
          FireDeviceLog::DeviceLogBase(2, "SetAssistanceRawSensorConfig,fail,enable,%d", v14, v15, v16, v17, v18, v19, 1);
        }

        *(a1 + 2200) = 1;
        v9 = a2[5];
      }

      v20 = a2[1];
      v21 = a2[4];
      v22 = v20[v21 / 0xCC] + 20 * (v21 % 0xCC);
      v23 = *(v22 + 16);
      v24 = *v22;
      v25 = &v41 + 5 * v12;
      *v25 = v24;
      v25[4] = v23;
      a2[4] = ++v21;
      a2[5] = v9 - 1;
      if (v21 >= 0x198)
      {
        operator delete(*v20);
        a2[1] += 8;
        a2[4] -= 204;
      }

      if (v12 != -1)
      {
        v26 = v12 + 1;
        if (v12 != 39)
        {
          v9 = a2[5];
          if (v9)
          {
            goto LABEL_17;
          }
        }

        *(&v38 + 1) = &v41;
        *&v38 = v26;
        v27 = (*(**(a1 + 1296) + 528))(*(a1 + 1296), &v38);
        v34 = "Warning";
        if (v27)
        {
          v34 = "";
        }

        v37 = a2[5];
        FireDeviceLog::DeviceLogBase(6, "#%s,GPSD_SENSOR,isPass,%d,timeStamp,%u,SensorType,%d,Size,%zu,InQueue,%zu", v28, v29, v30, v31, v32, v33, v34);
      }

      v26 = 0;
      v9 = a2[5];
LABEL_17:
      v12 = v26;
      if (!v9)
      {
        v35 = *MEMORY[0x29EDCA608];
        return;
      }
    }
  }

  v36 = *MEMORY[0x29EDCA608];

  FireDeviceLog::DeviceLogBase(3, "#Warning GPSD_SENSOR,No Raw Sensor Data", a3, a4, a5, a6, a7, a8, a9);
}

uint64_t FireMessageHandler::setAssistanceAccel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v11 = (*v9 + 500000) / 0xF4240uLL;
      v13.n128_u32[0] = 0;
      v13.n128_u32[1] = v11;
      v13.n128_u64[1] = *(v9 + 8);
      v14 = *(v9 + 16);
      std::deque<BlueFin::GlSensRawData>::push_back(a1 + 1840, &v13);
      v9 += 24;
    }

    while (v9 != v10);
  }

  FireMessageHandler::send(a1, 1073741833, a3, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t BlueFin::GlDbgEngine::SetSensRawInfo(uint64_t a1, uint64_t a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1584);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v4 = BlueFin::GlEngineImplStd::SetSensRawInfo(a1 + 368, a2);
  v7 = v4;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1584);
  v5 = *(a1 + 8);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v7);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v4;
}

uint64_t FireMessageHandler::setAssistanceGyro(uint64_t a1, float32x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    v14 = vdupq_n_s64(0xC04CA5DC1A63C1F8);
    do
    {
      v11 = (*v9 + 500000) / 0xF4240uLL;
      v15.n128_u32[0] = 2;
      v15.n128_u32[1] = v11;
      *&v15.n128_i8[8] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v9[1]), v14));
      v12 = -v9[2].f32[0] * 57.2957795;
      v16 = v12;
      std::deque<BlueFin::GlSensRawData>::push_back(a1 + 1888, &v15);
      v9 += 3;
    }

    while (v9 != v10);
  }

  FireMessageHandler::send(a1, 1073741834, a3, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, uint64_t a2)
{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  switch(*a2)
  {
    case 0:
    case 1:
    case 2:
    case 6:
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
      break;
    case 3:
    case 4:
    case 5:
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
      break;
    default:
      DeviceFaultNotify("gldebug_codec.cpp", 7039, "Rvw", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7039, "false");
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  v5 = *(a2 + 32);
  result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 32) = v5;
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  if (!*(a1 + 143))
  {
    *(a2 + 6) = 32;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 6));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  if ((*(*a1 + 112))(a1) < 0x5F)
  {
    v4 = 3;
    goto LABEL_5;
  }

  v6 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v6);
  if (!*(a1 + 143))
  {
    v4 = v6;
LABEL_5:
    *a2 = v4;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), (a2 + 6));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = 7;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  if (!*(a1 + 143))
  {
    *a2 = 14;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), a2);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 24);
  LOBYTE(v22) = *(a2 + 40);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 40) = v22;
  }

  v5 = *(a2 + 44);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::checkArraySize(a1, (a2 + 44), v5);
  if (*(a2 + 44) >= 1)
  {
    v6 = 0;
    v7 = (a2 + 84);
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 36);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 35);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 34);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 33);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 16);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 15);
      if ((*(*a1 + 112))(a1) < 0x68)
      {
        LOWORD(v22) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        *(v7 - 4) = v22;
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 4);
      }

      BlueFin::GlDbgCodec::Rvw(a1, v7 - 6);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 5);
      if ((*(*a1 + 112))(a1) < 0x68)
      {
        LOWORD(v22) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        *(v7 - 4) = v22;
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      }

      BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      if ((*(*a1 + 112))(a1) >= 0x2B)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 1);
        BlueFin::GlDbgCodec::Rvw(a1, v7);
      }

      if ((*(*a1 + 112))(a1) >= 0xBF)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      }

      ++v6;
      v7 += 40;
    }

    while (v6 < *(a2 + 44));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4048));
  LOBYTE(v22) = *(a2 + 4060);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 4060) = v22;
  }

  LOBYTE(v22) = *(a2 + 4064);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 4064) = v22;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4068));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4072));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4080));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4088));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4096));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4136));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4172));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4184));
  if (v4 >= 0x4D)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4051));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4176));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4256));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4258));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4260));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4264));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4268));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4272));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4274));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4280));
  v23 = 0;
  if (v4 >= 0x58)
  {
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5816), &v23);
LABEL_25:
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 4600), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 4856), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5112), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5368), &v23);
LABEL_26:
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5624));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5752));
    v8 = 1;
    goto LABEL_27;
  }

  if (v4 >= 0x42)
  {
    goto LABEL_25;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4600));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4856));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5368));
  if (v4 >= 8)
  {
    goto LABEL_26;
  }

  v8 = 0;
LABEL_27:
  v23 = 188;
  BlueFin::GlDbgCodec::Rvw(a1, &v23);
  BlueFin::GlDbgCodec::checkArraySize(a1, &v23, 0xBCu);
  if (v23)
  {
    v9 = 0;
    v10 = a2 + 6136;
    do
    {
      LOBYTE(v22) = *(v10 + 4 * v9);
      BlueFin::GlDbgCodec::Rvw(a1, &v22);
      if (!*(a1 + 143))
      {
        *(v10 + 4 * v9) = v22;
      }

      ++v9;
    }

    while (v9 < v23);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6888));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6892));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6896));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6900));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6904));
  LOBYTE(v22) = *(a2 + 6912);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 6912) = v22;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6916));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6920));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6924));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6928));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6932));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6936));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6940));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6944));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6948));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6952));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6960));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6968));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6976));
  v22 = *(a2 + 4200);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6984));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6992));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7000));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7008));
  __dst[0] = *(a2 + 7012);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7012) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7016));
  v11 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7024));
  v12 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7032));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7034));
  __dst[0] = *(a2 + 7036);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7036) = __dst[0];
  }

  if (v12 >= 0x19)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7040));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7048));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7056));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7064));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7068));
  __dst[0] = *(a2 + 7072);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7072) = __dst[0];
  }

  __dst[0] = *(a2 + 7076);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7076) = __dst[0];
  }

  __dst[0] = *(a2 + 7080);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7080) = __dst[0];
  }

  __dst[0] = *(a2 + 7084);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7084) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7088);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7096);
  __dst[0] = *(a2 + 7104);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7104) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7108));
  __dst[0] = *(a2 + 7112);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7112) = __dst[0];
  }

  if (v11 >= 0x38)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7116));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7120));
    __dst[0] = *(a2 + 7124);
    BlueFin::GlDbgCodec::Rvw(a1, __dst);
    if (!*(a1 + 143))
    {
      *(a2 + 7124) = __dst[0];
    }

    __dst[0] = *(a2 + 7128);
    BlueFin::GlDbgCodec::Rvw(a1, __dst);
    if (!*(a1 + 143))
    {
      *(a2 + 7128) = __dst[0];
    }
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7148));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7176));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7180));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7184));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7188));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7196));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7204));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7212));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7220));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7228));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7232));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7236));
  if ((*(*a1 + 112))(a1) >= 0x54)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7240));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7244));
  }

  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7248);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7268));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7272));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7273));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7274));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7276));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7277));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7278));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7280));
  v13 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7284));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7285));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7288));
  if (v13 >= 0xE)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7292));
  }

  if (v4 <= 0x5B && *(a1 + 143) <= 1u)
  {
    BlueFin::GlDbgCodecBase::Decode(a1, __dst, 4u);
    v15 = bswap32(*__dst);
    if (v15)
    {
      v16 = 3 * v15;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = -v16;
      do
      {
        BlueFin::GlDbgCodecBase::Decode(a1, __dst, 1u);
        v18 = __CFADD__(v17++, 1);
      }

      while (!v18);
    }

    result = BlueFin::GlDbgCodecBase::Decode(a1, __dst, 4u);
    v19 = bswap32(*__dst);
    if (v19)
    {
      v20 = 9 * v19;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = -v20;
      do
      {
        result = BlueFin::GlDbgCodecBase::Decode(a1, __dst, 1u);
        v18 = __CFADD__(v21++, 1);
      }

      while (!v18);
    }
  }

  if (v8)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7296));
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7300));
  }

  if (v4 >= 0x3C)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7316));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7318));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7320));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7322));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7324));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7326));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7328));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7332));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7334));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7336));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7338));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7340));
    result = (*(*a1 + 112))(a1);
    if (result < 172)
    {
      *(a2 + 7344) = 0;
      *(a2 + 7346) = 0;
    }

    else
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7344));
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7346));
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  v5 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
}

{
  if ((*(*a1 + 112))(a1) >= 0x6B)
  {
    v5 = *a2;
    BlueFin::GlDbgCodec::Rvw(a1, &v5);
    if (!*(a1 + 143))
    {
      *a2 = v5;
    }
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 66));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 67));
  if (v4 <= 0x43)
  {
    v5 = 32;
  }

  else
  {
    v5 = 63;
  }

  v7 = v5;
  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 68), &v7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 132);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 220));
  v7 = 5;
  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 224, &v7);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 30));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 34));
}

{
  v99[5] = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 64))(a2);
  v7 = v5[1];
  v6 = v5[2];
  v84 = *v5;
  v85 = v7;
  v86 = v6;
  v99[0] = &v84;
  v99[1] = &v84 + 8;
  v99[2] = &v84 + 4;
  v99[3] = &v84 | 0xC;
  v99[4] = &v85;
  v97[0] = 0;
  v97[1] = 0;
  v98 = 0;
  v8 = (*(*a2 + 16))(a2);
  v9 = (*(*a2 + 264))(a2);
  MaxAllowedCnstls = BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v9);
  if (v8 < MaxAllowedCnstls)
  {
    MaxAllowedCnstls = v8;
  }

  v83 = MaxAllowedCnstls;
  v11 = (*(*a2 + 24))(a2);
  (*(*a2 + 264))(a2);
  if (v11 >= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = v11;
  }

  v82 = v12;
  v13 = (*(*a2 + 200))(a2);
  v81 = v13;
  v14 = (*(*a2 + 208))(a2);
  v80 = v14;
  v15 = (*(*a2 + 216))(a2);
  v79 = v15;
  if (v15 > 0x5A || v13 > 0x7E || v14 >= 0xA1)
  {
    v75 = "(ucNumGearIds <= MAX_GEAR_IDS) && (ucNumSrchParams <= MAX_SP_PARAMS) && (ucNumBinningStepParams <= MAX_BS_PARAMS)";
    DeviceFaultNotify("gldebug_codec.cpp", 4001, "Rvw", "(ucNumGearIds <= MAX_GEAR_IDS) && (ucNumSrchParams <= MAX_SP_PARAMS) && (ucNumBinningStepParams <= MAX_BS_PARAMS)");
    v76 = 4001;
    goto LABEL_135;
  }

  BlueFin::GlDbgCodec::Rvw(a1, &v83);
  BlueFin::GlDbgCodec::Rvw(a1, &v82);
  *v77 = *(*(*a2 + 32))(a2);
  BlueFin::GlDbgCodec::Rvw(a1, v77);
  v16 = (*(*a2 + 136))(a2);
  __dst[0] = *v16;
  v18 = *(v16 + 32);
  v17 = *(v16 + 48);
  v19 = *(v16 + 16);
  *&__dst[4] = *(v16 + 64);
  __dst[2] = v18;
  __dst[3] = v17;
  __dst[1] = v19;
  v20 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 4);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 5);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 6);
  LOBYTE(v89[0]) = BYTE8(__dst[0]);
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  if (!*(a1 + 143))
  {
    DWORD2(__dst[0]) = LOBYTE(v89[0]);
  }

  LOBYTE(v89[0]) = BYTE12(__dst[0]);
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  if (!*(a1 + 143))
  {
    HIDWORD(__dst[0]) = LOBYTE(v89[0]);
  }

  LOBYTE(v89[0]) = __dst[1];
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  if (!*(a1 + 143))
  {
    LODWORD(__dst[1]) = LOBYTE(v89[0]);
  }

  LOBYTE(v89[0]) = BYTE4(__dst[1]);
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  if (!*(a1 + 143))
  {
    DWORD1(__dst[1]) = LOBYTE(v89[0]);
  }

  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 10);
  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 3);
  LOBYTE(v89[0]) = __dst[2];
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  if (!*(a1 + 143))
  {
    LODWORD(__dst[2]) = LOBYTE(v89[0]);
  }

  if (v20 <= 0x18)
  {
    v21 = (*(*a1 + 128))(a1);
    if ((*(*(v21 + 976) + 704))(v21 + 976) == 1)
    {
      BlueFin::GlMeSrdTrkCvecTapConfig::GlMeSrdTrkCvecTapConfig(v89, 4u, 1u);
      BlueFin::GlMeTrkCvecTapConfig::operator=(&__dst[2] + 4, v89);
      BYTE8(__dst[3]) = 0;
      goto LABEL_27;
    }

    v75 = "Proxy().Eng().GetEngineType() == GL_ENGINE_TYPE_SINGLE_ME";
    DeviceFaultNotify("gldebug_codec.cpp", 5194, "Rvw", "Proxy().Eng().GetEngineType() == GL_ENGINE_TYPE_SINGLE_ME");
    v76 = 5194;
LABEL_135:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v76, v75);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (&__dst[2] + 4));
  if (v20 - 117 <= 0x1C)
  {
    LOBYTE(v89[0]) = 0;
    BlueFin::GlDbgCodec::Rvw(a1, v89);
    BYTE8(__dst[3]) = LOBYTE(v89[0]) != 0;
LABEL_27:
    BYTE9(__dst[3]) = 0;
    goto LABEL_28;
  }

  BYTE8(__dst[3]) = 0;
  if (v20 <= 0x92)
  {
    goto LABEL_27;
  }

  LOBYTE(v89[0]) = *&__dst[4] != 0;
  BlueFin::GlDbgCodec::Rvw(a1, v89);
  BYTE9(__dst[3]) = LOBYTE(v89[0]) != 0;
  if (v20 >= 0xCA)
  {
    LOBYTE(v89[0]) = 0;
    BlueFin::GlDbgCodec::Rvw(a1, v89);
  }

LABEL_28:
  BlueFin::GlDbgCodec::Rvw(a1, &v81);
  BlueFin::GlDbgCodec::Rvw(a1, &v80);
  BlueFin::GlDbgCodec::Rvw(a1, &v79);
  (*(*a2 + 224))(a2);
  (*(*a2 + 232))(a2);
  if (v4 >= 0x2F)
  {
    BlueFin::GlDbgCodec::Rvw(a1, &v84);
    BlueFin::GlDbgCodec::Rvw(a1, &v84 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v84 + 2);
    BlueFin::GlDbgCodec::Rvw(a1, (&v84 | 0xC));
    BlueFin::GlDbgCodec::Rvw(a1, &v85);
    BlueFin::GlDbgCodec::Rvw(a1, &v85 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v85 + 2);
    BlueFin::GlDbgCodec::Rvw(a1, &v85 + 3);
    BlueFin::GlDbgCodec::Rvw(a1, &v86);
    BlueFin::GlDbgCodec::Rvw(a1, &v86 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v86 + 2);
    if ((*(*a1 + 112))(a1) >= 0x5D)
    {
      BlueFin::GlDbgCodec::Rvw(a1, &v86 + 3);
    }
  }

  if (v83 >= 1)
  {
    v22 = 0;
    do
    {
      if (v4 <= 0x2E)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v99[v22]);
      }

      v77[0] = (*(*a2 + 128))(a2, v22);
      BlueFin::GlDbgCodec::Rvw(a1, v77);
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      memset(v90, 0, sizeof(v90));
      memset(v89, 0, sizeof(v89));
      if (v77[0])
      {
        v23 = (*(*a2 + 152))(a2, v22);
        v24 = 0;
        v25 = *(v23 + 13);
        v89[0] = *v23;
        *(v89 + 13) = v25;
        do
        {
          *&v90[v24] = *(v23 + v24 + 32);
          v24 += 4;
        }

        while (v24 != 32);
        v26 = v23[5];
        v91 = v23[4];
        v92 = v26;
        v27 = v23[6];
        v28 = v23[7];
        v29 = v23[9];
        v95 = v23[8];
        v96 = v29;
        v93 = v27;
        v94 = v28;
      }

      BlueFin::GlDbgCodec::Rvw(a1, v89, v97);
      if (v82 >= 1)
      {
        v30 = 0;
        do
        {
          if (v77[0])
          {
            v31 = (*(*a2 + 120))(a2, v22, v30);
          }

          else
          {
            v31 = 0;
          }

          v87 = v31;
          v78 = 0;
          BlueFin::GlDbgCodec::Rvw(a1, &v87);
          if (v87)
          {
            v78 = (*(*a2 + 96))(a2, v22, v30);
            v32 = (*(*a2 + 192))(a2, v22, v30);
            v33 = *(v32 + 16);
            __dst[0] = *v32;
            __dst[1] = v33;
            v34 = *(v32 + 80);
            v36 = *(v32 + 32);
            v35 = *(v32 + 48);
            __dst[4] = *(v32 + 64);
            __dst[5] = v34;
            __dst[2] = v36;
            __dst[3] = v35;
            v38 = *(v32 + 112);
            v37 = *(v32 + 128);
            v39 = *(v32 + 96);
            LODWORD(__dst[9]) = *(v32 + 144);
            __dst[7] = v38;
            __dst[8] = v37;
            __dst[6] = v39;
            BlueFin::GlMeTrkCvecTapConfig::operator=(&__dst[9] + 4, v32 + 148);
            v40 = *(v32 + 168);
            v41 = *(v32 + 184);
            *(&__dst[12] + 1) = *(v32 + 200);
            *(&__dst[11] + 8) = v41;
            *(&__dst[10] + 8) = v40;
            BlueFin::GlDbgCodec::Rvw(a1, &v78);
            BlueFin::GlDbgCodec::Rvw(a1, __dst, v97);
          }

          v30 = (v30 + 1);
          v42 = v82;
          if (v82 >= 6)
          {
            v42 = 6;
          }
        }

        while (v30 < v42);
      }

      ++v22;
      v43 = v83;
      if (v83 >= 6)
      {
        v43 = 6;
      }
    }

    while (v22 < v43);
  }

  if (v4 < 0x30)
  {
    v82 = 6;
  }

  if (v79)
  {
    v44 = 0;
    do
    {
      LODWORD(v45) = (*(*a2 + 72))(a2, v44);
      LODWORD(v46) = (*(*a2 + 80))(a2, v44);
      LOBYTE(__dst[0]) = v45;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      if (*(a1 + 143))
      {
        v45 = v45;
      }

      else
      {
        v45 = LOBYTE(__dst[0]);
      }

      LOBYTE(__dst[0]) = v46;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      if (*(a1 + 143))
      {
        v46 = v46;
      }

      else
      {
        v46 = LOBYTE(__dst[0]);
      }

      if (v4 <= 0xA)
      {
        LOBYTE(__dst[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, __dst);
      }

      v87 = 0;
      memset(__dst, 0, 288);
      if ((*(*a2 + 120))(a2, v46, v45))
      {
        v87 = (*(*a2 + 112))(a2, v44);
        v47 = (*(*a2 + 184))(a2, v44);
        memcpy(__dst, v47, 0x120uLL);
      }

      BlueFin::GlDbgCodec::Rvw(a1, &v87);
      if (v4 <= 0xA)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v77, v97);
        BlueFin::GlDbgCodec::Rvw(a1, v89, v97);
      }

      if ((*(*a1 + 112))(a1) <= 0xC)
      {
        LOBYTE(v89[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, v89);
      }

      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      LOBYTE(v89[0]) = BYTE4(__dst[0]);
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      if (!*(a1 + 143))
      {
        DWORD1(__dst[0]) = LOBYTE(v89[0]);
      }

      BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 12);
      LOBYTE(v89[0]) = __dst[5];
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      if (!*(a1 + 143))
      {
        LODWORD(__dst[5]) = LOBYTE(v89[0]);
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[6]);
      LODWORD(v89[0]) = 3;
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      BlueFin::GlDbgCodec::checkArraySize(a1, v89, 3u);
      if (LODWORD(v89[0]))
      {
        v48 = 0;
        do
        {
          v77[0] = *(&__dst[6] + v48 + 1);
          BlueFin::GlDbgCodec::Rvw(a1, v77);
          if (!*(a1 + 143))
          {
            *(&__dst[6] + v48 + 1) = v77[0];
          }

          ++v48;
        }

        while (v48 < LODWORD(v89[0]));
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9] + 2);
      LOBYTE(v89[0]) = BYTE12(__dst[9]);
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[9]) = LOBYTE(v89[0]);
      }

      LODWORD(v89[0]) = 5;
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      BlueFin::GlDbgCodec::checkArraySize(a1, v89, 5u);
      if (LODWORD(v89[0]))
      {
        v49 = 0;
        do
        {
          v77[0] = *(&__dst[10] + v49);
          BlueFin::GlDbgCodec::Rvw(a1, v77);
          if (!*(a1 + 143))
          {
            *(&__dst[10] + v49) = v77[0];
          }

          ++v49;
        }

        while (v49 < LODWORD(v89[0]));
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[11] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[11] + 8);
      v77[0] = BYTE12(__dst[11]);
      BlueFin::GlDbgCodec::Rvw(a1, v77);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[11]) = v77[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13] + 2);
      v77[0] = BYTE12(__dst[13]);
      BlueFin::GlDbgCodec::Rvw(a1, v77);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[13]) = v77[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[16]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[16] + 1);
      LODWORD(v89[0]) = 3;
      BlueFin::GlDbgCodec::Rvw(a1, v89);
      BlueFin::GlDbgCodec::checkArraySize(a1, v89, 3u);
      if (LODWORD(v89[0]))
      {
        v50 = 0;
        v51 = &__dst[16] + 4;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v51);
          ++v50;
          ++v51;
        }

        while (v50 < LODWORD(v89[0]));
      }

      LOBYTE(__dst[17]) = 1;
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 3);
      ++v44;
      v52 = v79;
      if (v79 >= 0x5Au)
      {
        v52 = 90;
      }
    }

    while (v44 < v52);
  }

  if (v4 >= 0xA)
  {
    v53 = v81;
  }

  else
  {
    v53 = 64;
  }

  if (v53)
  {
    for (i = 0; i != v53; ++i)
    {
      v55 = (*(*a2 + 240))(a2, i);
      v56 = *(v55 + 32);
      v57 = *(v55 + 16);
      __dst[0] = *v55;
      __dst[1] = v57;
      *&__dst[2] = v56;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
    }
  }

  if (v4 >= 0xA)
  {
    v58 = v80;
  }

  else
  {
    v58 = 98;
  }

  if (v58)
  {
    for (j = 0; j != v58; ++j)
    {
      if (v4 <= 0xA)
      {
        memset(__dst, 0, 40);
        BlueFin::GlDbgCodec::Rvw(a1, __dst);
      }

      v60 = (*(*a2 + 256))(a2, j);
      v61 = *(v60 + 4);
      LODWORD(__dst[0]) = *v60;
      WORD2(__dst[0]) = v61;
      v62 = (*(*a1 + 112))(a1);
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 1);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 3);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 4);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 5);
      if (v62 >= 0xCD)
      {
        LOBYTE(v89[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, v89);
      }
    }
  }

  result = (*(*a2 + 264))(a2);
  if (v4 > 0x10)
  {
    v64 = result;
    LOBYTE(__dst[0]) = result;
    result = BlueFin::GlDbgCodec::Rvw(a1, __dst);
    v65 = *(a1 + 143) ? v64 : LOBYTE(__dst[0]);
    if (v4 >= 0x93)
    {
      result = (*(*a2 + 136))(a2);
      if (*(result + 57) == 1)
      {
        if (v65 == 5 && *((*(*a2 + 136))(a2) + 64))
        {
          v66 = (*(*a2 + 136))(a2);
          memcpy(__dst, *(v66 + 64), 0x18CuLL);
        }

        if ((*(*a1 + 112))(a1) < 0x9D)
        {
          v71 = 0;
          v87 = 0;
          *v77 = 0;
          LODWORD(v89[0]) = 0;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, &v87);
            v72 = v71++ >= 3;
          }

          while (!v72);
          BlueFin::GlDbgCodec::Rvw(a1, v89);
          v73 = 0;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v89);
            BlueFin::GlDbgCodec::Rvw(a1, v89);
            BlueFin::GlDbgCodec::Rvw(a1, v89);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            BlueFin::GlDbgCodec::Rvw(a1, &v87);
            BlueFin::GlDbgCodec::Rvw(a1, &v87);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            BlueFin::GlDbgCodec::Rvw(a1, v89);
            BlueFin::GlDbgCodec::Rvw(a1, v89);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            BlueFin::GlDbgCodec::Rvw(a1, v77);
            result = BlueFin::GlDbgCodec::Rvw(a1, v77);
            v72 = v73++ >= 0xF;
          }

          while (!v72);
        }

        else
        {
          v67 = __dst;
          v68 = 8;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v67++);
            --v68;
          }

          while (v68);
          BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
          v69 = &__dst[1] + 3;
          v70 = 32;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, (v69 - 3));
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 1);
            result = BlueFin::GlDbgCodec::Rvw(a1, v69);
            v69 += 6;
            --v70;
          }

          while (v70);
        }
      }
    }
  }

  v74 = *MEMORY[0x29EDCA608];
  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 22));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 26));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 29));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 30));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 23));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 22));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  result = (*(*a1 + 112))(a1);
  v5 = result;
  if (result >= 0xAC)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
    goto LABEL_4;
  }

  *(a2 + 16) = 0;
  if (result >= 0x91)
  {
LABEL_4:
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
    if (v5 <= 0x99)
    {
      *(a2 + 44) = 0;
    }

    else
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
    }

    goto LABEL_8;
  }

  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 44) = 0;
  *(a2 + 36) = 0;
  if (result <= 0x62)
  {
    *(a2 + 56) = 0;
    *(a2 + 48) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(a2 + 104) = 0;
    goto LABEL_15;
  }

LABEL_8:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 50));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 54));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 84));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 100));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  if (v5 <= 0x63)
  {
LABEL_15:
    *(a2 + 8) = 0;
    *(a2 + 109) = 0;
    goto LABEL_16;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 110));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 109));
  if (v5 <= 0x7F)
  {
LABEL_16:
    *(a2 + 108) = -1;
    goto LABEL_17;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  if (v5 < 0x94)
  {
LABEL_17:
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 76) = 0;
LABEL_18:
    *(a2 + 112) = 0;
    return result;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 62));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 66));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 70));
  if (v5 <= 0xB8)
  {
    v7 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v7);
    *(a2 + 72) = v7;
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
    if (v5 == 184)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
    }

    goto LABEL_18;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  if (v5 >= 0xCF)
  {
    v6 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v6);
    v6 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v6);
    v6 = 0;
    return BlueFin::GlDbgCodec::Rvw(a1, &v6);
  }

  return result;
}

{
  v30 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  v26 = 14;
  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 116), &v26);
  if (v4 >= 0x17)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 188));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 196));
    if (v4 >= 0x31)
    {
      v5 = a2 + 4;
      *v28 = 8;
      BlueFin::GlDbgCodec::Rvw(a1, v28);
      if (*(a1 + 143) == 2)
      {
        v6 = 0;
        *v29 = 0;
        do
        {
          if (v6 != 4)
          {
            v29[v6] = *(v5 + BlueFin::GlImplGnss::m_aucImplGnssTable[v6]);
          }

          ++v6;
        }

        while (v6 != 8);
        for (i = 0; i != 8; ++i)
        {
          BlueFin::GlDbgCodec::Rvw(a1, &v29[i]);
        }
      }

      else
      {
        *v29 = 0;
        if (*v28 >= 8u)
        {
          v8 = 8;
        }

        else
        {
          v8 = *v28;
        }

        if (*v28)
        {
          v9 = 0;
          do
          {
            if (*(a1 + 143) == 1 && v9 != 4 && v9 != 8)
            {
              v29[v9] = *(v5 + BlueFin::GlImplGnss::m_aucImplGnssTable[v9]);
            }

            BlueFin::GlDbgCodec::Rvw(a1, &v29[v9++]);
          }

          while (v8 != v9);
          while (v8 < *v28)
          {
            v27 = 0;
            BlueFin::GlDbgCodec::Rvw(a1, &v27);
            LODWORD(v8) = v8 + 1;
          }
        }

        for (j = 0; j != 7; ++j)
        {
          *(v5 + j) = v29[BlueFin::GlImplGnss::m_aucEnabledGnssTable[j]];
        }
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 172));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 176));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 180));
      if (v4 < 0x61)
      {
        if (!*(a1 + 143))
        {
          *(a2 + 184) = 0;
        }

        if (v4 < 0x3E)
        {
          goto LABEL_40;
        }
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
      }

      v29[0] = *(a2 + 200);
      BlueFin::GlDbgCodec::Rvw(a1, v29);
      if (!*(a1 + 143))
      {
        *(a2 + 200) = v29[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 204));
      if (v4 - 96 <= 0x1C)
      {
        v13 = (a2 + 208);
        v29[0] = (**(a2 + 208) & 2) != 0;
        BlueFin::GlDbgCodec::Rvw(a1, v29);
        if (v29[0])
        {
          v14 = **v13 | 2;
          **v13 = v14;
        }

        else
        {
          BlueFin::GlSetBase::Remove(a2 + 208, 1);
          v14 = **v13;
        }

        v28[0] = (v14 & 4) != 0;
        BlueFin::GlDbgCodec::Rvw(a1, v28);
        if (v28[0])
        {
          v16 = *v13;
          goto LABEL_46;
        }

        v17 = a2 + 208;
        goto LABEL_52;
      }
    }
  }

LABEL_40:
  if (BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(1, *(a2 + 188)))
  {
    **(a2 + 208) |= 2u;
  }

  else
  {
    BlueFin::GlSetBase::Remove(a2 + 208, 1);
  }

  v15 = (*(a2 + 188) & 0xF000FFFE) - 805306382;
  if (v15 <= 6 && ((1 << v15) & 0x55) != 0)
  {
    v16 = *(a2 + 208);
LABEL_46:
    *v16 |= 4u;
    goto LABEL_53;
  }

  v17 = a2 + 208;
LABEL_52:
  BlueFin::GlSetBase::Remove(v17, 2);
LABEL_53:
  if (v4 == 124)
  {
    v29[0] = (**(a2 + 208) & 8) != 0;
    BlueFin::GlDbgCodec::Rvw(a1, v29);
    if (v29[0])
    {
      **(a2 + 208) |= 8u;
    }

    else
    {
      BlueFin::GlSetBase::Remove(a2 + 208, 3);
    }

LABEL_64:
    for (k = 4; k != 13; ++k)
    {
      result = BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(k, *(a2 + 188));
      if (result)
      {
        **(a2 + 208) |= 1 << k;
      }

      else
      {
        result = BlueFin::GlSetBase::Remove(a2 + 208, k);
      }
    }

    goto LABEL_69;
  }

  v18 = *(a2 + 188);
  v19 = (v18 & 0xF000FFFE) - 805306382;
  if (v19 <= 6 && ((1 << v19) & 0x55) != 0)
  {
    v20 = (a2 + 208);
LABEL_59:
    **v20 |= 8u;
    goto LABEL_60;
  }

  v20 = (a2 + 208);
  if ((v18 & 0xF0FFFFFE) == 0x3001000E)
  {
    goto LABEL_59;
  }

  BlueFin::GlSetBase::Remove(a2 + 208, 3);
LABEL_60:
  if (v4 <= 0x7C)
  {
    goto LABEL_64;
  }

  v28[0] = *(v20 + 8) & 0x3F;
  *v29 = 0;
  result = BlueFin::GlDbgCodec::Rvw(a1, v28);
  if (*(a1 + 143))
  {
    v22 = v28[0];
  }

  else
  {
    v22 = *(v20 + 8) & 0x3F;
    if (v22 != v28[0])
    {
      DeviceFaultNotify("gldebug_codec.cpp", 7084, "Rvw", "(rValue.GetMaxByteSize() >> 2) == ucWords");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7084, "(rValue.GetMaxByteSize() >> 2) == ucWords");
    }
  }

  if (v22)
  {
    v25 = 0;
    do
    {
      *v29 = BlueFin::GlSetBase::GetULong(v20, v25);
      result = BlueFin::GlDbgCodec::Rvw(a1, v29);
      if (!*(a1 + 143))
      {
        result = BlueFin::GlSetBase::SetULong(v20, v25, *v29);
      }

      ++v25;
    }

    while (v25 < v28[0]);
  }

LABEL_69:
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (v4 >= 0xE)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 17));
    if (v4 >= 0x19)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 19));
      if (v4 >= 0x1E)
      {

        return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
      }
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 84));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 100));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 116));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 124));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 132));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 136));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  if (*(a2 + 8) > 0x7Fu)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 7070, "Rvw", "rValue.wlanScan.size < GL_WLAN_AP_INFO_SIZE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7070, "rValue.wlanScan.size < GL_WLAN_AP_INFO_SIZE");
  }

  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = (a2 + 25);
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, (v6 - 9));
      BlueFin::GlDbgCodec::Rvw(a1, v6 - 1);
      result = BlueFin::GlDbgCodec::Rvw(a1, v6);
      ++v5;
      v6 += 16;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 20, (a2 + 16));
}

{
  v4 = (*(*a1 + 112))(a1);
  LOBYTE(v7) = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *a2 = v7;
  }

  LOBYTE(v7) = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v7;
  }

  LOBYTE(v7) = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  LOBYTE(v7) = *(a2 + 100);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 100) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  if (v4 <= 0xB)
  {
    v8 = 0;
    v7 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v8);
    BlueFin::GlDbgCodec::Rvw(a1, &v7);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 204));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 232));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 276));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 280));
  if (v4 >= 0xC)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
    if (v4 > 0x47)
    {
      v5 = 11;
    }

    else
    {
      v5 = 6;
    }

    v7 = v5;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 156), &v7);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 288));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 296));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 304));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 308));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 312));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 316));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 318));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 320));
  if (v4 <= 0xA3)
  {
    return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 321));
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  v19 = 0;
  if (v4 < 0xAF)
  {
    v19 = 1;
  }

  else
  {
    v5 = *(a1 + 143);
    if (v5 == 1)
    {
      *(a1 + 143) = 0;
    }

    BlueFin::GlDbgCodec::Rvw(a1, &v19);
    *(a1 + 143) = v5;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (v19)
  {
    v18 = v4;
    if (*a2)
    {
      v7 = 0;
      while (1)
      {
        v8 = a2 + 8 + 368 * v7;
        v9 = (*(*a1 + 112))(a1);
        if (v9 < 0x49)
        {
          break;
        }

        v22 = *v8;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        if (!*(a1 + 143))
        {
          *v8 = v22;
        }

        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 4));
        if (v9 < 0x4F)
        {
          goto LABEL_15;
        }

        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 5));
LABEL_16:
        v23 = *(v8 + 8);
        BlueFin::GlDbgCodec::Rvw(a1, &v23);
        if (!*(a1 + 143))
        {
          *(v8 + 8) = v23;
        }

        v10 = 368 * v7;
        v11 = 4;
        v12 = a2 + 216 + v10;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 24));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 32));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 40));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 48));
          v10 += 32;
          --v11;
        }

        while (v11);
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 144));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 152));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 160));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 168));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 172));
        v24 = *(v8 + 176);
        BlueFin::GlDbgCodec::Rvw(a1, &v24);
        if (!*(a1 + 143))
        {
          *(v8 + 176) = v24;
        }

        v25 = *(v8 + 180);
        BlueFin::GlDbgCodec::Rvw(a1, &v25);
        if (!*(a1 + 143))
        {
          *(v8 + 180) = v25;
        }

        v26 = *(v8 + 184);
        BlueFin::GlDbgCodec::Rvw(a1, &v26);
        if (!*(a1 + 143))
        {
          *(v8 + 184) = v26;
        }

        v27 = *(v8 + 188);
        BlueFin::GlDbgCodec::Rvw(a1, &v27);
        if (!*(a1 + 143))
        {
          *(v8 + 188) = v27;
        }

        v28 = *(v8 + 192);
        BlueFin::GlDbgCodec::Rvw(a1, &v28);
        if (!*(a1 + 143))
        {
          *(v8 + 192) = v28;
        }

        if (v9 <= 0x9D)
        {
          *(v8 + 196) = 0;
          *(v8 + 200) = 0;
        }

        else
        {
          BlueFin::GlDbgCodec::Rvw(a1, (v8 + 196));
          v29 = *(v8 + 200);
          BlueFin::GlDbgCodec::Rvw(a1, &v29);
          if (!*(a1 + 143))
          {
            *(v8 + 200) = v29;
          }
        }

        result = BlueFin::GlDbgCodec::Rvw(a1, (v8 + 204));
        if (*(v8 + 204))
        {
          v13 = 0;
          do
          {
            v30 = *v12;
            BlueFin::GlDbgCodec::Rvw(a1, &v30);
            if (!*(a1 + 143))
            {
              *v12 = v30;
            }

            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 16));
            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 24));
            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 32));
            result = (*(*a1 + 112))(a1);
            if (result < 0x90)
            {
              *(v12 + 4) = 1;
            }

            else
            {
              result = BlueFin::GlDbgCodec::Rvw(a1, (v12 + 4));
            }

            ++v13;
            v12 += 40;
          }

          while (v13 < *(v8 + 204));
        }

        if (*a2 <= ++v7)
        {
          goto LABEL_43;
        }
      }

      v21 = 0;
      BlueFin::GlDbgCodec::Rvw(a1, &v21);
      *v8 = v21;
      BlueFin::GlDbgCodec::Rvw(a1, (v8 + 4));
LABEL_15:
      *(v8 + 5) = -8;
      goto LABEL_16;
    }

LABEL_43:
    if (v18 <= 0x8F)
    {
      *(a2 + 55208) = -1;
      *(a2 + 55216) = 0u;
      *(a2 + 55232) = 0u;
      *(a2 + 55248) = 0u;
    }

    else
    {
      v20 = *(a2 + 55208);
      BlueFin::GlDbgCodec::Rvw(a1, &v20);
      if (!*(a1 + 143))
      {
        *(a2 + 55208) = v20;
      }

      v14 = (a2 + 55216);
      v15 = 4;
      do
      {
        BlueFin::GlDbgCodec::Rvw(a1, v14++);
        --v15;
      }

      while (v15);
      v16 = (a2 + 55248);
      v17 = 4;
      do
      {
        result = BlueFin::GlDbgCodec::Rvw(a1, v16++);
        --v17;
      }

      while (v17);
      if (v18 >= 0x96)
      {
        return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 55264));
      }
    }

    *(a2 + 55264) = 0;
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (*(a2 + 12))
  {
    v5 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 16) + v5++));
    }

    while (*(a2 + 12) > v5);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (*(a2 + 12))
  {
    v5 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 16) + v5++));
    }

    while (*(a2 + 12) > v5);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  v5 = *(a2 + 4);
  result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v5;
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  v6 = 0;
  if (v4 > 0xB)
  {
    if (v4 > 0x12)
    {
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, a2, &v6);
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 40), &v6);
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 80), &v6);
      goto LABEL_7;
    }

    v6 = 2;
    BlueFin::GlDbgCodec::RvwArray(a1, a2, &v6);
    v6 = 2;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 40), &v6);
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, a2);
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
LABEL_7:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 124));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 132));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 135));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  if (v4 < 0xCE)
  {
    if (v4 >= 0x13)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
      goto LABEL_7;
    }

    v8 = *(a2 + 24);
    BlueFin::GlDbgCodec::Rvw(a1, &v8);
    v5 = v8;
  }

  else
  {
    v9 = *(a2 + 24);
    BlueFin::GlDbgCodec::Rvw(a1, &v9);
    v5 = v9;
  }

  *(a2 + 24) = v5;
LABEL_7:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 26));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  if (v4 >= 0xD0)
  {
    v7 = 0;
    return BlueFin::GlDbgCodec::Rvw(a1, &v7);
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  if (v4 >= 0x30)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  }

  v6 = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v6);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v6;
  }

  v7 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 16);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 180));
  if (v4 >= 0x1D)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 182));
    if (v4 >= 0x26)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 185));
      if (v4 >= 0x42)
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 186));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 187));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 188));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 189));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 190));
        result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 191));
        if (v4 >= 0xA9)
        {
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
          result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 193));
          if (v4 >= 0xB2)
          {
            result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 194));
            if (v4 >= 0xC4)
            {
              return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 195));
            }
          }
        }
      }
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 136));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 162));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 164));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 176));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 224));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 232));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  result = (*(*a1 + 112))(a1);
  if (result >= 0x40)
  {

    return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 160));
  if (v4 >= 0x5C)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 168));
    if (v4 >= 0x6E)
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
      if (v4 >= 0x8A)
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
        result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
        if (v4 >= 0x8F)
        {
          v6 = *(a2 + 216);
          BlueFin::GlDbgCodec::Rvw(a1, &v6);
          if (!*(a1 + 143))
          {
            *(a2 + 216) = v6;
          }

          return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 220));
        }
      }
    }
  }

  return result;
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  v5 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  v5 = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
    *(a2 + 4) = -78;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  v4 = (*(*a1 + 112))(a1);
  v15 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v15);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  LOBYTE(v14) = 1;
  LODWORD(v13) = 0;
  BlueFin::GlDbgCodec::Rvw(a1, &v14);
  if (*(a1 + 143))
  {
    v5 = 1;
  }

  else
  {
    v5 = LOBYTE(v14) == 1;
  }

  if (!v5)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 7097, "Rvw", "(rValue.GetMaxByteSize() >> 2) == ucWords");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7097, "(rValue.GetMaxByteSize() >> 2) == ucWords");
  }

  if (LOBYTE(v14))
  {
    v6 = 0;
    do
    {
      LODWORD(v13) = *(a2 + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &v13);
      if (!*(a1 + 143))
      {
        *(a2 + 12) = LODWORD(v13);
      }

      ++v6;
    }

    while (v6 < LOBYTE(v14));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  v14 = -200.0;
  if (v4 <= 0x1E)
  {
    BlueFin::GlDbgCodec::Rvw(a1, &v14);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  v13 = *(a2 + 96);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v7 = v13;
  *(a2 + 96) = v7;
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  v13 = *(a2 + 100);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v8 = v13;
  *(a2 + 100) = v8;
  v13 = *(a2 + 104);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v9 = v13;
  *(a2 + 104) = v9;
  v13 = *(a2 + 108);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v10 = v13;
  *(a2 + 108) = v10;
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  v12 = 0;
  BlueFin::GlDbgCodec::Rvw(a1, &v12);
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 116));
  if (v4 >= 0x79)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  }

  if (v14 > -200.0 && (*(a2 + 13) & 0x40) == 0)
  {
    *(a2 + 116) = v14 + 174.0;
  }

  if (v4 >= 0x1B)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
    if (v4 >= 0x7E)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
    }
  }

  return result;
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
    *(a2 + 4) = 1;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
}

uint64_t gnss::FireGnssDevice::setAssistanceGyro(uint64_t a1, float32x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = FireMessageHandler::setAssistanceGyro(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);

  return std::function<void ()(gnss::Result)>::operator()(a3, v9);
}

uint64_t BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *a1, uint64_t a2)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    *(a1 + 143) = 2;
    v5 = *(a2 + 8);

    return BlueFin::GlDbgCodec::RvwArray(a1, v5, a2);
  }

  return result;
}

uint64_t BlueFin::SensorsDownsampleFilt::Update(BlueFin::SensorsDownsampleFilt *this, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(this + 832) != 1)
  {
    *(this + 212) = v4;
    *(this + 211) = v4;
    *(this + 213) = 1;
    v6 = *(this + 214);
LABEL_13:
    v10 = (4.0 / v6) * 3.14159265;
    v11 = tanf(v10) / 3.14159265;
    v12 = 1.0 / (v11 * 3.14159265);
    v13 = v12 * v12;
    v14 = v12 * -1.4142;
    v15 = (v13 - v14) + 1.0;
    *(this + 223) = v15;
    *(this + 224) = (v13 * -2.0) + 2.0;
    v16 = (v13 + v14) + 1.0;
    *(this + 225) = v16;
    v17 = (1.0 - v16) / v15;
    v18 = (this + 876);
    v19 = 3;
    v20 = a2;
    do
    {
      *(v18 - 4) = (1.0 - (1.0 / v15)) * *v20;
      v21 = *v20++;
      *v18++ = v17 * v21;
      --v19;
    }

    while (v19);
    goto LABEL_15;
  }

  v5 = *(this + 213);
  v6 = (v5 * 1000.0) / (v4 - *(this + 211));
  *(this + 213) = v5 + 1;
  if (((v5 + 1) & 7) == 1)
  {
    v7 = vcvts_n_f32_u32(v4 - *(this + 212), 3uLL);
    *(this + 212) = v4;
    v8 = ((v6 * v7) / 1000.0) + -1.0;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v7 == 0.0 || v8 > 0.2)
    {
      *(this + 211) = v4;
      *(this + 213) = 1;
      goto LABEL_15;
    }
  }

  if (v5 + 1 >= 0x81)
  {
    *(this + 211) = v4;
    *(this + 213) = 1;
    v9 = (v6 / *(this + 214)) + -1.0;
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 0.1)
    {
      *(this + 214) = v6;
      goto LABEL_13;
    }
  }

LABEL_15:
  for (i = 0; i != 12; i += 4)
  {
    v23 = *(a2 + i);
    v24 = *(this + 223);
    v25 = (this + i);
    v26 = (v23 / v24) + *(this + i + 860);
    *(&v41 + i) = v26;
    v25[215] = *(this + i + 876) + (((v23 * 2.0) - (v26 * *(this + 224))) / v24);
    v25[219] = (*(a2 + i) - (v26 * *(this + 225))) / *(this + 223);
  }

  HIDWORD(v41) = v4;
  BlueFin::SensorsDownsampleFilt::Flush(this);
  v27 = *(a2 + 12);
  v28 = *(this + 209);
  v29 = v27 - v28;
  if (v27 < v28 && v28 - v27 >= 0x80000001)
  {
    *(this + 840) = 1;
  }

  v30 = 2 * v27;
  if (*(this + 832))
  {
    v31 = *(this + 103);
    *(this + 209) = v27;
    if (v29 < -50 || v30 - v31 >= 250)
    {
      result = 0;
      *(this + 209) = 0;
      *(this + 103) = 0;
      *(this + 832) = 0;
      *(this + 840) = 0;
      *(this + 50) = 0u;
      *(this + 204) = 0;
      return result;
    }

    if (v30 - v31 >= 50)
    {
      v32 = *(this + 201);
      if (v32)
      {
        v33 = (*(this + 101) / v32) >> 1;
        v34 = *(this + 200);
        *(this + 4 * v34 + 3) = v33;
      }

      else
      {
        LODWORD(v34) = *(this + 200);
      }

      *(this + 101) = 0;
      *(this + 840) = 0;
      *(this + 103) = v31 + 100;
      *(this + 100) = (v34 + 1);
    }
  }

  else
  {
    *(this + 103) = 100 * (((v30 + 50) * 0x28F5C28F5C28F5DuLL) >> 64);
    *(this + 832) = 1;
    *(this + 209) = v27;
  }

  v35 = *(this + 200);
  if (v35 < 0x32)
  {
    v37 = *(this + 201);
    *(this + 201) = v37 + 1;
    v38 = *(this + 101) + v30;
    *(this + 101) = v38;
    if (*(this + 840) == 1)
    {
      *(this + 101) = v38 + 0x200000000;
    }

    if (v37 == -1)
    {
      DeviceFaultNotify("glpe_sensors_data.cpp", 216, "Update", "rawCnt != 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensors_data.cpp", 216, "rawCnt != 0");
    }

    v39 = (this + 16 * v35);
    if (v37)
    {
      for (j = 0; j != 12; j += 4)
      {
        *(v39 + j) = *(v39 + j) + ((*(&v41 + j) - *(v39 + j)) / (v37 + 1));
      }
    }

    else
    {
      *v39 = v41;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(this + 200) = 50;
  }

  return result;
}

uint64_t BlueFin::GlPeSensorsMgr::Update(uint64_t result, __int16 *a2)
{
  if (!result)
  {
    DeviceFaultNotify("glpe_sensmgr.cpp", 280, "Update", "GetSensorsConfig()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", 280, "GetSensorsConfig()");
  }

  if (*a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 24;
    v6 = result + 296;
    v7 = result + 2264;
    v8 = (*(a2 + 1) + 8);
    do
    {
      v9 = v8[-1].i32[0];
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
            {
              result = (*(*v5 + 32))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
            }

            ++*(v3 + 2396);
          }

          else if (v9 == 2)
          {
            if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
            {
              result = (*(*v5 + 40))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
            }

            if (*(v3 + 7) == 1)
            {
              v10 = vneg_f32(*v8);
              *&v11 = -v8[1].f32[0];
              HIDWORD(v11) = v8[-1].i32[1];
              result = (*(*(v3 + 296) + 32))(v6, &v10);
              ++*(v3 + 2388);
            }
          }
        }

        else
        {
          if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
          {
            result = (*(*v5 + 24))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
          }

          if (*(v3 + 7) == 1)
          {
            v10 = *v8;
            LODWORD(v11) = v8[1].i32[0];
            HIDWORD(v11) = v8[-1].i32[1];
            result = (*(*(v3 + 296) + 24))(v6, &v10);
            ++*(v3 + 2384);
          }
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          ++*(v3 + 2404);
        }

        else if (v9 == 10)
        {
          result = (*(*v7 + 16))(v7, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
        }
      }

      else if (v9 == 3)
      {
        if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
        {
          result = (*(*v5 + 16))(v5, v8[-1].u32[1], v8->f32[0]);
        }

        ++*(v3 + 2408);
      }

      else
      {
        if (*(v3 + 8) == 1)
        {
          result = (*(*v6 + 48))(v6, v8[-1].u32[1], v8->f32[0]);
        }

        ++*(v3 + 2400);
      }

      ++v4;
      v8 = (v8 + 20);
    }

    while (v4 < *a2);
  }

  v10 = &unk_2A1F17BB0;
  v11 = a2;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeSensorsData::SerializeImpl(&v10);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, __int16 *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, __int16 *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, uint64_t a2, __int16 *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3 >= 1)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 20;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::checkArraySize(uint64_t this, unsigned __int16 *a2, int a3)
{
  v3 = *(this + 584);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*a2 > a3)
      {
        v4 = "rssActualLength <= ssMaxLength";
        DeviceFaultNotify("gldebug_codec.cpp", 784, "checkArraySize", "rssActualLength <= ssMaxLength");
        v5 = 784;
LABEL_8:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v5, v4);
      }
    }

    else if (v3 == 2 && *a2 != a3)
    {
      v4 = "rssActualLength == ssMaxLength";
      DeviceFaultNotify("gldebug_codec.cpp", 783, "checkArraySize", "rssActualLength == ssMaxLength");
      v5 = 783;
      goto LABEL_8;
    }
  }

  else if (*a2 > a3)
  {
    *a2 = a3;
  }

  return this;
}

void BlueFin::GlDbgCodecBase::External(BlueFin::GlDbgCodecBase *this, unsigned __int8 *a2, float a3)
{
  v15 = 0;
  v5 = fabsf(a3);
  v6 = vcvts_n_s32_f32(frexpf(v5, &v15), 0x18uLL);
  if (v15 <= -126)
  {
    v7 = -127;
  }

  else
  {
    v7 = v15 - 1;
  }

  if (v15 <= -126)
  {
    v8 = v6 >> (-125 - v15);
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 == 0;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = -127;
  }

  if (v9)
  {
    v8 = 0;
  }

  if (v5 <= 3.4028e38)
  {
    v11 = v10;
  }

  else
  {
    v11 = 128;
  }

  if (v5 <= 3.4028e38)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = ((v11 << 23) + 1065353216) | __const__ZN7BlueFin14GlDbgCodecBase8ExternalEPhf_ulSigns[a3 >= 0.0];
  v14 = v13 | v12 & 0x7FFFFF;
  *(a2 + 1) = bswap32(v14) >> 16;
  a2[1] = BYTE2(v14);
  *a2 = HIBYTE(v13);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unsigned int *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, float *a2)
{
  v8[6] = *MEMORY[0x29EDCA608];
  v8[1] = 0;
  v8[3] = 0;
  v8[0] = BlueFin::GlDbgCodec::Read;
  v8[2] = BlueFin::GlDbgCodec::Verify;
  v8[4] = BlueFin::GlDbgCodec::Write;
  v8[5] = 0;
  v2 = &v8[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v6 = *MEMORY[0x29EDCA608];

  return v3(v5, a2);
}

{
  v4 = 3;
  v5 = a2;
  do
  {
    BlueFin::GlDbgCodec::Rvw(this, v5++);
    --v4;
  }

  while (v4);
  v6 = a2 + 3;
  v7 = 4;
  do
  {
    result = BlueFin::GlDbgCodec::Rvw(this, v6);
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, float *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
}

void *std::deque<BlueFin::GlSensRawData>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xCC;
  v3 = v1 - 204;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<FireMessageHandler::GLRefPositionExtended *>::emplace_back<FireMessageHandler::GLRefPositionExtended *&>(a1, &v10);
}

void sub_2988A6804(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t BlueFin::SensorsData::addacc(uint64_t result, float *a2)
{
  if (fabsf(*a2) < 100.0 && fabsf(a2[1]) < 100.0 && fabsf(a2[2]) < 100.0)
  {
    v2 = result;
    result = BlueFin::SensorsDownsampleFilt::Update((result + 8), a2);
    if ((result & 1) == 0)
    {
      result = (*(*v2 + 232))(v2);
      v2[206] = v2[202];
      v2[432] = v2[428];
    }
  }

  return result;
}

uint64_t BlueFin::GlStream::GetBits(BlueFin::GlStream *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (*this + ((a2 + v3 + 7) >> 3) > v4)
  {
    v11 = "m_uiOffset+((m_uiBitOffset+ulNumBits+7)/8)<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 314, "GetBits", "m_uiOffset+((m_uiBitOffset+ulNumBits+7)/8)<=m_uiMaxOffset");
    v12 = 314;
    goto LABEL_15;
  }

  if (a2 > 0x20)
  {
    v11 = "ulNumBits <= 32";
    DeviceFaultNotify("glutl_stream.cpp", 315, "GetBits", "ulNumBits <= 32");
    v12 = 315;
    goto LABEL_15;
  }

  v5 = 0;
  if (a2)
  {
    v6 = 0;
    while (1)
    {
      if (v2 >= v4)
      {
        v11 = "m_uiOffset < m_uiMaxOffset";
        DeviceFaultNotify("glutl_stream.cpp", 331, "GetBits", "m_uiOffset < m_uiMaxOffset");
        v12 = 331;
        goto LABEL_15;
      }

      v7 = 8 - v3;
      if (8 - v3 >= a2)
      {
        v7 = a2;
      }

      v8 = *(*(this + 1) + v2);
      v9 = v7 + v3;
      *(this + 6) = v7 + v3;
      if (v7 + v3 >= 9)
      {
        break;
      }

      if (v9 == 8)
      {
        v9 = 0;
        *(this + 6) = 0;
        *this = ++v2;
      }

      v5 = (((v8 >> v3) & ~(-1 << v7)) << v6) | v5;
      v6 += v7;
      v3 = v9;
      a2 -= v7;
      if (!a2)
      {
        return v5;
      }
    }

    v11 = "m_uiBitOffset <= 8";
    DeviceFaultNotify("glutl_stream.cpp", 340, "GetBits", "m_uiBitOffset <= 8");
    v12 = 340;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v12, v11);
  }

  return v5;
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(uint64_t this, int a2)
{
  if (*(this + 8))
  {
    if (*(this + 12) != a2)
    {
      DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 130, "CheckInstanceId", "m_ucSatId == ucInstanceId");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 130, "m_ucSatId == ucInstanceId");
    }
  }

  else
  {
    *(this + 12) = a2;
  }

  return this;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkMsmt(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v6 = BlueFin::GlStream::GetU08(a2);
  v126 = 0;
  v7 = v5 & 0xE;
  v8 = v6 & 1;
  memset(v125, 0, sizeof(v125));
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v110 = 0u;
  v111 = 0u;
  memset(v109, 0, 308);
  v108 = 0;
  v107 = 0;
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  memset(v104, 0, sizeof(v104));
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v9 = v5 & 0xF1 | (4 * (v6 & 1)) | (2 * v6) & 8;
  S16 = 0;
  U16 = BlueFin::GlStream::GetU16(a2);
  v117 = ((U16 << 16) & 0xFFE00000) >> U16;
  v99 = v6;
  if (v6)
  {
    *&v118 = 0;
    WORD2(v126) = BlueFin::GlStream::GetU16(a2);
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v110 = 0u;
    v111 = 0u;
    S16 = BlueFin::GlStream::GetS16(a2);
    p_S16 = &S16;
  }

  else
  {
    v11 = BlueFin::GlStream::GetU16(a2);
    v12 = BlueFin::GlStream::GetU16(a2);
    v13.i32[0] = v11 & 0xFFFF7FFF;
    v13.i32[1] = v12 & 0xFFFF7FFF;
    v14 = vshl_u32((*&vshl_n_s32(v13, 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(v13, 0x1F0000001FLL)));
    *&v118 = vshl_n_s32(vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v12, v11), 0x10uLL), 0x10uLL)), vneg_s32(v14), v14), 8uLL);
    WORD2(v126) = BlueFin::GlStream::GetU16(a2);
    v15 = (*(**(*(this + 1) + 17032) + 824))();
    v16 = BlueFin::GlStream::GetU16(a2);
    v17 = v16 << 16;
    if (v15 < 0x85)
    {
      v17 = (v17 & 0x7FE00000) >> v16;
      if (v16 < 0)
      {
        v17 = -v17;
      }
    }

    LODWORD(v115) = v17;
    v18 = BlueFin::GlStream::GetU16(a2);
    if ((v18 & 0x8000u) == 0)
    {
      v19 = ((v18 << 16) & 0x7FE00000u) >> v18;
    }

    else
    {
      v19 = -(((v18 << 16) & 0x7FE00000u) >> v18);
    }

    HIDWORD(v115) = v19;
    v20 = BlueFin::GlStream::GetU16(a2);
    LODWORD(v116) = ((v20 << 16) & 0xFFE00000) >> v20;
    v21 = (*(**(*(this + 1) + 17032) + 824))();
    v22 = BlueFin::GlStream::GetU16(a2);
    v23 = v22 << 16;
    if (v21 < 0x85)
    {
      v23 = (v23 & 0x7FE00000) >> v22;
      if (v22 < 0)
      {
        v23 = -v23;
      }
    }

    LODWORD(v113) = v23;
    v24 = BlueFin::GlStream::GetU16(a2);
    if ((v24 & 0x8000u) == 0)
    {
      v25 = ((v24 << 16) & 0x7FE00000u) >> v24;
    }

    else
    {
      v25 = -(((v24 << 16) & 0x7FE00000u) >> v24);
    }

    HIDWORD(v113) = v25;
    LOWORD(v114) = BlueFin::GlStream::GetBits(a2, 0xAu);
    BYTE2(v114) = BlueFin::GlStream::GetBits(a2, 1u);
    BYTE4(v116) = BlueFin::GlStream::GetBits(a2, 1u);
    HIBYTE(v114) = BlueFin::GlStream::GetBits(a2, 3u);
    BlueFin::GlStream::GetBits(a2, 1u);
    for (i = 0; i != 32; i += 4)
    {
      v27 = BlueFin::GlStream::GetU16(a2);
      *(&v110 + i) = ((v27 << 16) & 0xFFE00000) >> v27;
    }

    p_S16 = 0;
  }

  for (j = 0; j != 32; j += 4)
  {
    v29 = BlueFin::GlStream::GetU16(a2);
    *&v112[j] = ((v29 << 16) & 0xFFE00000) >> v29;
  }

  LOBYTE(v109[0]) = (v6 & 2) != 0;
  if ((v6 & 2) != 0)
  {
    v97 = v6 & 1;
    if ((*(**(*(this + 1) + 17032) + 824))(*(*(this + 1) + 17032)) > 0x85)
    {
      v34 = BlueFin::GlStream::CarpGetBits(a2, 3u, 0x20u) & 7;
      v35 = v34 & 0xFFFFFF07 | (8 * (BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u) & 0x1F));
      v36 = v35 & 0xFFFFE0FF | ((BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u) & 0x1F) << 8);
      Bits = BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u);
      v38 = v36 & 0xFF001FFF | ((Bits & 0x1F) << 13) & 0xFF03FFFF | ((BlueFin::GlStream::CarpGetBits(a2, 6u, 0x20u) & 0x3F) << 18);
      v39 = BlueFin::GlStream::CarpGetBits(a2, 7u, 0x20u);
      v32 = (BlueFin::GlStream::CarpGetBits(a2, 1u, 0x20u) << 31) | ((v39 & 0x7F) << 24) | v38;
      v109[1] = v32;
      if ((Bits & 0x10) != 0)
      {
        v91 = "mpf.settings.bits.points <= MAX_MPF_TAPS";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1328, "Handle_SatRpt_TrkMsmt", "mpf.settings.bits.points <= MAX_MPF_TAPS");
        v92 = 1328;
LABEL_76:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v92, v91);
      }
    }

    else
    {
      v31 = 0;
      v32 = -1805320152;
      v109[1] = -1805320152;
      do
      {
        BlueFin::GlStream::GetS32(a2);
      }

      while (v31++ < 4);
    }

    v94 = v9;
    v40 = v7;
    v41 = this;
    v42 = U08;
    v43 = 0;
    v44 = (v32 >> 13) & 0xF;
    v45 = ((v32 >> 7) & 0x3E) + 10;
    v46 = &v109[2];
    do
    {
      v47 = v46;
      v48 = v44;
      if (v44)
      {
        do
        {
          v49 = BlueFin::GlStream::GetU16(a2);
          *v47++ = ((v49 << 16) & 0xFFE00000) >> v49 >> v45;
          --v48;
        }

        while (v48);
      }

      ++v43;
      v46 += 15;
    }

    while (v43 != 5);
    v30 = v109;
    U08 = v42;
    this = v41;
    v7 = v40;
    v9 = v94;
    v8 = v97;
  }

  else
  {
    v30 = 0;
  }

  if (v7 == 2)
  {
    LOWORD(v103) = BlueFin::GlStream::GetU16(a2);
    v50 = BlueFin::GlStream::GetU16(a2);
  }

  else
  {
    LOWORD(v103) = BlueFin::GlStream::GetU08(a2);
    v50 = BlueFin::GlStream::GetU08(a2);
  }

  HIWORD(v103) = v50;
  v51 = v9;
  if ((v9 & 0x10) == 0)
  {
    v52 = 0;
    goto LABEL_57;
  }

  if ((0x5055u >> v7))
  {
    LODWORD(v53) = byte_298A336EA[v7];
  }

  else if (v7 == 8)
  {
    LODWORD(v53) = 25;
  }

  else
  {
    LODWORD(v53) = 0;
  }

  LOBYTE(v105[0]) = v53;
  v54 = BlueFin::GlStream::GetBits(a2, 0xFu);
  WORD1(v105[0]) = v54 & 0x7FFF | (BlueFin::GlStream::GetBits(a2, 1u) << 15);
  if (v7 != 8 && (v7 != 6 || !(*(**(*(this + 1) + 17032) + 664))(*(*(this + 1) + 17032))))
  {
    if (v53)
    {
      v96 = U08;
      v70 = this;
      v71 = v30;
      v53 = v53;
      v72 = 4;
      do
      {
        v73 = BlueFin::GlStream::GetU16(a2);
        v52 = v105;
        *(v105 + v72) = ((v73 << 16) & 0xFFE00000) >> v73;
        v72 += 4;
        --v53;
      }

      while (v53);
      v30 = v71;
      this = v70;
      U08 = v96;
      goto LABEL_57;
    }

LABEL_56:
    v52 = v105;
    goto LABEL_57;
  }

  BYTE8(v118) = v53;
  if (!v53)
  {
    goto LABEL_56;
  }

  v93 = v30;
  v95 = U08;
  v55 = v125;
  v56 = 4;
  __asm { FMOV            V9.2S, #16.0 }

  v53 = v53;
  do
  {
    v61 = BlueFin::GlStream::GetU16(a2);
    v62 = BlueFin::GlStream::GetU16(a2);
    v63.i32[0] = v61 & 0xFFFF7FFF;
    v63.i32[1] = v62 & 0xFFFF7FFF;
    v64 = vshl_u32((*&vshl_n_s32(v63, 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(v63, 0x1F0000001FLL)));
    *v65.i8 = vneg_s32(v64);
    v66 = vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v62, v61), 0x10uLL), 0x10uLL)), *v65.i8, v64);
    *v67.i8 = vmul_f32(vcvt_f32_s32(v66), _D9);
    *v67.i8 = vmul_f32(*v67.i8, *v67.i8);
    *v67.i32 = sqrtf(vaddv_f32(*v67.i8));
    *v65.i32 = *v67.i32 - (truncf(*v67.i32 * 2.3283e-10) * 4295000000.0);
    v68.i64[0] = 0x8000000080000000;
    v68.i64[1] = 0x8000000080000000;
    LODWORD(v69) = vbslq_s8(v68, v65, v67).u32[0];
    if (*v67.i32 > 4295000000.0)
    {
      *v67.i32 = v69;
    }

    v52 = v105;
    *v55 = v66.i32[1];
    *(v55 - 25) = v66.i32[0];
    *(v105 + v56) = *v67.i32;
    v56 += 4;
    ++v55;
    --v53;
  }

  while (v53);
  U08 = v95;
  v30 = v93;
LABEL_57:
  v108 = 0;
  v107 = 0;
  if ((v99 & 8) != 0)
  {
    LOBYTE(v107) = 1;
    v74 = BlueFin::GlStream::GetU08(a2);
    BYTE1(v107) = v74 & 0xF;
    BYTE2(v107) = v74 >> 4;
    v108 = BlueFin::GlStream::GetU16(a2);
  }

  if ((v9 & 0x20) != 0)
  {
    LOBYTE(v101) = BlueFin::GlStream::GetU08(a2);
    if (v8)
    {
      v89 = 0;
      *(&v101 + 1) = 0;
      DWORD1(v101) = 0;
      DWORD1(v102) = 0;
    }

    else
    {
      v80 = v9;
      v81 = BlueFin::GlStream::GetU16(a2);
      v82 = __PAIR64__(BlueFin::GlStream::GetU16(a2), v81);
      v9 = v80;
      v83 = vshr_n_s32(vshl_n_s32(v82, 0x10uLL), 0x10uLL);
      v84 = vshl_u32((*&vshl_n_s32((*&v82 & 0xFFFF7FFFFFFF7FFFLL), 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8((*&v82 & 0xFFFF7FFFFFFF7FFFLL), 0x1F0000001FLL)));
      *(&v101 + 4) = vbsl_s8(vcltz_s32(v83), vneg_s32(v84), v84);
      v85 = BlueFin::GlStream::GetU16(a2);
      if ((v85 & 0x8000u) == 0)
      {
        v86 = ((v85 << 16) & 0x7FE00000u) >> v85;
      }

      else
      {
        v86 = -(((v85 << 16) & 0x7FE00000u) >> v85);
      }

      HIDWORD(v101) = v86;
      v87 = BlueFin::GlStream::GetU16(a2);
      DWORD1(v102) = ((v87 << 16) & 0xFFE00000) >> v87;
      v88 = BlueFin::GlStream::GetU16(a2);
      v89 = ((v88 << 16) & 0xFFE00000) >> v88;
    }

    DWORD2(v102) = v89;
    BYTE12(v102) = BlueFin::GlStream::GetU08(a2);
    BYTE13(v102) = BlueFin::GlStream::GetU08(a2);
    BYTE14(v102) = BlueFin::GlStream::GetU08(a2);
    v75 = &v101;
    if ((v51 & 0x40) != 0)
    {
      goto LABEL_61;
    }

LABEL_71:
    v79 = 0;
    goto LABEL_72;
  }

  v75 = 0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_71;
  }

LABEL_61:
  v76 = U08;
  v77 = v9;
  for (k = 0; k != 32; k += 4)
  {
    v79 = v104;
    *(v104 + k) = BlueFin::GlStream::GetS32(a2);
    *(&v104[2] + k) = BlueFin::GlStream::GetS32(a2);
  }

  v9 = v77;
  U08 = v76;
LABEL_72:
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v91 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1471, "Handle_SatRpt_TrkMsmt", "otStream.GetAvailableSize() == 0");
    v92 = 1471;
    goto LABEL_76;
  }

  return (*(**(*(this + 1) + 17072) + 56))(*(*(this + 1) + 17072), U08, v7, v9, &v117, &v115, &v113, p_S16, v112, &v110, &v103, v30, v52, &v107, v79, v75);
}

BOOL BlueFin::GlMeSrdSatReportMgr::CheckForTrackReset(BlueFin::GlMeSrdSatReportMgr *this, const BlueFin::GlSatCarrId *a2, const BlueFin::GlSignalId *a3)
{
  v6 = *(this + 122);
  if ((v6 & 0x20000) != 0 || (*(this + 122) & 0x12) == 0x12)
  {
    if (BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4)))
    {
      return 1;
    }

    v8 = *(this + 456);
    if (*a2 + 100 * *(a2 + 4) - *(v8 + 28) >= *(v8 + 30))
    {
LABEL_22:
      v15 = "handle - m_usMinHandle < m_usNumHandles";
      DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
      v16 = 313;
      goto LABEL_24;
    }

    v9 = *(*(v8 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v8 + 28)));
    if (*(v8 + 32) <= v9)
    {
LABEL_23:
      v15 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v16 = 319;
LABEL_24:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v16, v15);
    }

    result = *(*v8 + *(v8 + 24) * v9 + 500) != *a3;
    v6 = *(this + 122);
  }

  else
  {
    result = 0;
  }

  if (~v6 & 0x12) != 0 || (result)
  {
    return result;
  }

  if (BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4)))
  {
    return 0;
  }

  v10 = *(this + 456);
  if (*a2 + 100 * *(a2 + 4) - *(v10 + 28) >= *(v10 + 30))
  {
    goto LABEL_22;
  }

  v11 = *(*(v10 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v10 + 28)));
  if (v11 != 0xFFFF)
  {
    if (*(v10 + 32) > v11)
    {
      v12 = (*v10 + *(v10 + 24) * v11);
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_19:
  v13 = *(this + 14);
  v14 = *(this + 1842);

  return BlueFin::GlMeSrdSatReport::HasTrackReset(v12, (this + 480), a3, v13);
}

BOOL BlueFin::GlMeSrdSatReport::HasTrackReset(BlueFin::GlMeSrdSatReport *this, const BlueFin::GlMeSrdSatRptRpcBuffer *a2, const BlueFin::GlSignalId *a3, int a4)
{
  if ((~*(a2 + 2) & 0x12) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report.cpp", 116, "HasTrackReset", "rRpcBuffer.HaveTrkMsmt()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report.cpp", 116, "rRpcBuffer.HaveTrkMsmt()");
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = **(this + 1);
  v14[0] = a2;
  v14[1] = this + 24;
  v14[2] = v7;
  v15 = a4;
  v16 = a3;
  v8 = 255;
  v9 = -1;
  v10 = 255;
  do
  {
    if (v10 == 255)
    {
      v11 = *(a2 + v6 + 25);
    }

    else
    {
      v11 = v8;
    }

    if (v10 == 255)
    {
      v12 = *(a2 + v6 + 25);
    }

    else
    {
      v12 = v10;
    }

    if (*(a2 + v6 + 25) != 255)
    {
      v8 = v11;
      v9 = *(a2 + v6 + 25);
      v4 = v5 + 1;
      v10 = v12;
      ++v5;
    }

    ++v6;
  }

  while (v6 != 5);
  v19 = v4;
  v18 = v9;
  v17 = v8;
  return BlueFin::GlMeSrdSatRptTrkMsmtMIBase::IsTrackReset(v14);
}

BOOL BlueFin::GlMeSrdSatRptTrkMsmtMIBase::IsTrackReset(BlueFin::GlMeSrdSatRptTrkMsmtMIBase *this)
{
  if (!**(this + 1))
  {
    return 0;
  }

  v2 = (*(**(this + 2) + 168))(*(this + 2), *(this + 41));
  EpochCntInBits = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
  v4 = *(*(this + 1) + 4);
  *v5.i64 = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((*this + 36), *(this + 4), *(this + 6));
  *v7.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *&v10 = vbslq_s8(v9, v7, v5).u64[0];
  if (*v5.i64 > 4294967300.0)
  {
    *v5.i64 = v10;
  }

  if (*v5.i64 < -4294967300.0)
  {
    *v6.i64 = -*v5.i64;
    *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
    *v5.i64 = -*vbslq_s8(v9, v5, v6).i64;
  }

  if (*v5.i64 < 0.0)
  {
    v11 = --*v5.i64;
  }

  else
  {
    v11 = *v5.i64;
  }

  v12 = **(this + 1);
  v13 = *(this + 4);
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v13);
  if (*(v13 + 4) >= 0x23Fu)
  {
    v25 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v26 = 679;
    goto LABEL_29;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]])
  {
    v25 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v26 = 686;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v26, v25);
  }

  v15 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]] * EpochPerSymbol) * 0.001;
  v16 = *(this + 4);
  v17 = *v16;
  if ((v17 - 76) <= 0x3Eu && (*(*this + 24) & 0xF) == 0 && (v17 + 122) >= 5u && (v17 - 76) >= 5u)
  {
    v15 = 0.001;
  }

  if (BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this) < *(*(this + 1) + 4))
  {
    return 1;
  }

  v19 = EpochCntInBits - v4;
  v20 = (v11 - v12) * 0.001;
  v21 = 0.02;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v16 + 1) - *(v16 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v17]] != 1)
  {
    v21 = v15;
  }

  v22 = v20 - v19 * v21;
  v23 = -(v20 + -v19 * v21);
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  return v23 > (*(v2 + 44) * 5.0);
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(BlueFin::GlMeSrdSatRptTrkMsmtMIBase *this)
{
  v2 = *this;
  if ((*(*this + 8) & 4) != 0)
  {
    result = *(v2 + 96);
    if (*(v2 + 100))
    {
      v4 = *(*(this + 1) + 4);
      v5 = (v4 & 0xFFFF8000) + result;
      if (v5 >= v4)
      {
        result = v5;
      }

      else
      {
        result = v5 + 0x8000;
      }
    }
  }

  else
  {
    result = 0;
  }

  if ((*(v2 + 24) & 0xF) == 2)
  {
    v6 = *(this + 4);
    v7 = *v6;
    if ((v7 - 139) > 0x23)
    {
      if ((v7 - 81) > 0x34)
      {
        if ((v7 - 52) <= 0xD)
        {
          v8 = *(*(this + 1) + 4);
          v9 = floor(vcvtd_n_f64_u32(result - v8, 1uLL));
          return (v8 + (v9 + v9));
        }
      }

      else if (*(v6 + 1) == 2)
      {
        return (100 * result);
      }

      else
      {
        return result;
      }
    }

    else if ((*(v6 + 1) - 1) >= 2)
    {
      return result;
    }

    else
    {
      return (100 * result);
    }
  }

  return result;
}

double BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  Lms16ToLms32 = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*a1, a3);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v14 = "glsignalid.h";
    v15 = 807;
    goto LABEL_11;
  }

  v6 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v7 = *(a2 + 1);
  v8 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v7 + v6];
  v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v7 - v7 + v6];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v14 = "glsignalid.h";
    v15 = 815;
    goto LABEL_11;
  }

  v11 = 1000 * v8 / v9 * BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  if (!v11)
  {
    v13 = "ulTwentiethPerS != 0";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 341, "EswUtStructToFinalUserTimeMs", "ulTwentiethPerS != 0");
    v14 = "glmesrd_asic_unit_converter.cpp";
    v15 = 341;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v14, v15, v13);
  }

  return (1000 * a1[1]) / v11 + Lms16ToLms32;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::GetSatRptSniffStatePtr(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(a2 + 1);
  v4 = a3 + 4;
  if (v3 != *(a3 + 1))
  {
    v12 = "otSatCarrId.GetSignalIndex() == otSignalId.GetSignalIndex()";
    DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 37, "GetSatRptSniffStatePtr", "otSatCarrId.GetSignalIndex() == otSignalId.GetSignalIndex()");
    v13 = 37;
    goto LABEL_27;
  }

  if (v3)
  {
    return 0;
  }

  v8 = *a2;
  v9 = ~*(a1 + 488) & 0x10002;
  v10 = (*(**(a1 + 3656) + 40))(*(a1 + 3656), v8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    result = (*(**(a1 + 3656) + 16))(*(a1 + 3656), v8);
    if (result)
    {
      (*(**(a1 + 3656) + 32))(*(a1 + 3656), v8);
      return 0;
    }

    return result;
  }

  v11 = **(a1 + 3656);
  if (!v10)
  {
    if ((*(v11 + 64))())
    {
      (*(**(a1 + 3656) + 80))(&v19);
      if (v20 >= *(v19 + 38))
      {
        goto LABEL_30;
      }

      v14 = -1;
      v15 = 3.4028e38;
      do
      {
        v16 = BlueFin::GlArrayIterator::Next(&v19);
        v17 = *((*(**(a1 + 3656) + 16))(*(a1 + 3656), v16) + 48);
        if (v17 < v15)
        {
          v14 = v16;
          v15 = v17;
        }
      }

      while (v20 < *(v19 + 38));
      if (v14 == 0xFF)
      {
LABEL_30:
        v12 = "ucInstanceIdOlder != 0xFF";
        DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 91, "GetSatRptSniffStatePtr", "ucInstanceIdOlder != 0xFF");
        v13 = 91;
      }

      else
      {
        (*(**(a1 + 3656) + 32))(*(a1 + 3656), v14);
        result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
        if (result)
        {
          goto LABEL_25;
        }

        v12 = "pstSatRptSniffState != nullptr";
        DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 99, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
        v13 = 99;
      }
    }

    else
    {
      result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
      if (result)
      {
        goto LABEL_25;
      }

      v12 = "pstSatRptSniffState != nullptr";
      DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 69, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
      v13 = 69;
    }

LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr_sniff.cpp", v13, v12);
  }

  result = (*(v11 + 16))();
  if (!result)
  {
    v12 = "pstSatRptSniffState != nullptr";
    DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 53, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
    v13 = 53;
    goto LABEL_27;
  }

  if (*(result + 24) != *a3 || *(result + 28) != *v4)
  {
    (*(**(a1 + 3656) + 32))(*(a1 + 3656), v8);
    result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
    if (!result)
    {
      v12 = "pstSatRptSniffState != nullptr";
      DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 60, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
      v13 = 60;
      goto LABEL_27;
    }

LABEL_25:
    *result = 0;
    *(result + 10) = 0;
    *(result + 2) = 0;
    *(result + 17) = 0;
    *(result + 24) = *a3;
    v18 = *v4;
    *(result + 32) = *(v4 + 2);
    *(result + 28) = v18;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkBits(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  Bits = BlueFin::GlStream::GetBits(a2, 0xCu);
  v47 = BlueFin::GlStream::GetBits(a2, 4u);
  if ((v47 & 0xF8) != 0)
  {
    v7 = Bits;
    v47 = 0;
  }

  else
  {
    v7 = Bits & 0xFFF;
  }

  v46 = v7;
  if (v7)
  {
    v8 = ((v7 - 1) >> 3) + 1;
  }

  else
  {
    LOWORD(v8) = 0;
  }

  if (v8 >= 0x41u)
  {
    v29 = "usNumBytes <= _DIM(fll_bvec.word)*4";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 856, "Handle_SatRpt_TrkBits", "usNumBytes <= _DIM(fll_bvec.word)*4");
    v30 = 856;
    goto LABEL_56;
  }

  if ((v5 & 2) == 0)
  {
    v9 = 0;
LABEL_13:
    if ((v5 & 4) != 0)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      if (v8)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = BlueFin::GlStream::GetU08(a2);
          v12 = &v41;
          *(&v41 + (v14++ & 0xFFFFFFFC)) |= v15 << (v13 & 0x18);
          v13 += 8;
        }

        while (v8 != v14);
      }

      else
      {
        v12 = &v41;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_24;
  }

  memset(v45, 0, sizeof(v45));
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v9 = v45;
      *(v45 + (v11++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v10 & 0x18);
      v10 += 8;
    }

    while (v8 != v11);
    goto LABEL_13;
  }

  if ((v5 & 4) != 0)
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v12 = &v41;
  }

  else
  {
    v12 = 0;
  }

  v9 = v45;
LABEL_24:
  v34 = v8;
  v33 = v12;
  if ((v5 & 8) != 0)
  {
    memset(v40, 0, sizeof(v40));
    if (!v8)
    {
      if ((v5 & 0x10) != 0)
      {
        v38 = 0uLL;
        v39 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v19 = &v36;
      }

      else
      {
        v19 = 0;
      }

      v16 = v40;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      v16 = v40;
      *(v40 + (v18++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v17 & 0x18);
      v17 += 8;
    }

    while (v8 != v18);
  }

  else
  {
    v16 = 0;
  }

  if ((v5 & 0x10) == 0)
  {
    v19 = 0;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_44:
    v24 = 0;
    goto LABEL_45;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (v8)
  {
    v25 = 0;
    v26 = 0;
    v27 = v8;
    do
    {
      v19 = &v36;
      *(&v36 + (v26++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v25 & 0x18);
      v25 += 8;
    }

    while (v27 != v26);
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  v19 = &v36;
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v31 = this;
  v32 = v5;
  v20 = 0;
  memset(&v35[2], 0, 224);
  if ((v5 & 0x40) != 0)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  memset(v35, 0, 32);
  do
  {
    if (v34)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        *(&v35[4 * v20] + (v23++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v22 & 0x18);
        v22 += 8;
      }

      while (v34 != v23);
    }

    ++v20;
  }

  while (v20 != v21);
  v24 = v35;
  v5 = v32;
  U08 = U08;
  this = v31;
LABEL_45:
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v29 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 912, "Handle_SatRpt_TrkBits", "otStream.GetAvailableSize() == 0");
    v30 = 912;
LABEL_56:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v30, v29);
  }

  return (*(**(*(this + 1) + 17072) + 72))(*(*(this + 1) + 17072), U08, v5, &v46, v9, v33, v16, v19, v24);
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_bits(uint64_t a1, int a2, char a3, _DWORD *a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, __int128 *a9)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v16 = *(a1 + 8);
  if ((v16 & 0x400) != 0)
  {
    v45 = "m_otFlags.Missing(FLGS_RECEIVED_TRACKBITS)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 275, "gll_satrpt_rpc_trk_bits", "m_otFlags.Missing(FLGS_RECEIVED_TRACKBITS)");
    v46 = 275;
    goto LABEL_22;
  }

  v17 = v16 | 0x400;
  *(a1 + 8) = v16 | 0x400;
  *(a1 + 944) = a3;
  *(a1 + 946) = *a4;
  if (!(a5 | a6 | a7 | a8) || a9)
  {
    if (!a8 && !a7 && !a6 && !a5 && a9)
    {
      *(a1 + 8) = v16 | 0x8400;
      v30 = *a9;
      v31 = a9[1];
      v32 = a9[3];
      *(a1 + 984) = a9[2];
      *(a1 + 1000) = v32;
      *(a1 + 952) = v30;
      *(a1 + 968) = v31;
      v33 = a9[4];
      v34 = a9[5];
      v35 = a9[7];
      *(a1 + 1048) = a9[6];
      *(a1 + 1064) = v35;
      *(a1 + 1016) = v33;
      *(a1 + 1032) = v34;
      v36 = a9[8];
      v37 = a9[9];
      v38 = a9[11];
      *(a1 + 1112) = a9[10];
      *(a1 + 1128) = v38;
      *(a1 + 1080) = v36;
      *(a1 + 1096) = v37;
      v39 = a9[12];
      v40 = a9[13];
      v41 = a9[15];
      *(a1 + 1176) = a9[14];
      *(a1 + 1192) = v41;
      *(a1 + 1144) = v39;
      *(a1 + 1160) = v40;
      goto LABEL_18;
    }

    v45 = "0";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 315, "gll_satrpt_rpc_trk_bits", "0");
    v46 = 315;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", v46, v45);
  }

  if (a5)
  {
    v17 = v16 | 0xC00;
    *(a1 + 8) = v16 | 0xC00;
    v18 = *a5;
    v19 = *(a5 + 16);
    v20 = *(a5 + 48);
    *(a1 + 984) = *(a5 + 32);
    *(a1 + 1000) = v20;
    *(a1 + 952) = v18;
    *(a1 + 968) = v19;
  }

  if (a6)
  {
    v17 |= 0x2000u;
    *(a1 + 8) = v17;
    v21 = *a6;
    v22 = *(a6 + 16);
    v23 = *(a6 + 48);
    *(a1 + 1048) = *(a6 + 32);
    *(a1 + 1064) = v23;
    *(a1 + 1016) = v21;
    *(a1 + 1032) = v22;
  }

  if (a7)
  {
    v17 |= 0x1000u;
    *(a1 + 8) = v17;
    v24 = *a7;
    v25 = *(a7 + 16);
    v26 = *(a7 + 48);
    *(a1 + 1112) = *(a7 + 32);
    *(a1 + 1128) = v26;
    *(a1 + 1080) = v24;
    *(a1 + 1096) = v25;
  }

  if (a8)
  {
    *(a1 + 8) = v17 | 0x4000;
    v27 = *a8;
    v28 = *(a8 + 16);
    v29 = *(a8 + 48);
    *(a1 + 1176) = *(a8 + 32);
    *(a1 + 1192) = v29;
    *(a1 + 1144) = v27;
    *(a1 + 1160) = v28;
  }

LABEL_18:
  v42 = *(a1 + 3152);
  v43 = *(*v42 + 72);

  return v43(v42);
}

void BlueFin::GlMeSrdEstCarrPrm::OverrideTrkCarrPrmRmse(uint64_t a1, const BlueFin::GlSignalId *a2, uint64_t a3, float a4)
{
  v4 = *(a3 + 1) != 1 || *(a3 + 20) == 7;
  if (!v4 && (a2 & 1) != 0)
  {
    if (a4 <= 40.0)
    {
      if (a4 >= 10.0)
      {
        v5 = (((a4 + -10.0) * -0.15) + 5.0) * 0.000000001;
      }

      else
      {
        v5 = 0.000000005;
      }
    }

    else
    {
      v5 = 5.0e-10;
    }

    *(a3 + 16) = BlueFin::GlMeSrdAsicUnitConverter::PpuToHz((a1 + 376), v5, a2);
  }
}

void BlueFin::GlMeSrdEstCodePrm::Run(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, unsigned __int8 *a7, uint64_t a8, _DWORD *a9, uint64_t a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, float *a18, float *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if ((*a16 & 1) == 0)
  {
    v116 = "stAsicCodePrmTrkMsmt.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 925, "Run", "stAsicCodePrmTrkMsmt.bValid");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 925;
    goto LABEL_173;
  }

  if ((*(a16 + 24) & 1) == 0)
  {
    v116 = "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 926, "Run", "stAsicCodePrmTrkMsmt.stClosedLpDll.bValid");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 926;
    goto LABEL_173;
  }

  v22 = *a7;
  if ((v22 - 1) >= 0xBC)
  {
    v116 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 927, "Run", "otSignalId.GetSvId().isValid()");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 927;
    goto LABEL_173;
  }

  v26 = a19;
  v27 = a9;
  if ((a1 + 8) == a7)
  {
    v28 = *(a1 + 16);
  }

  else
  {
    *(a1 + 8) = v22;
    *(a1 + 12) = *(a7 + 1);
    v28 = *(a7 + 4);
    *(a1 + 16) = v28;
  }

  if (v28 >= 0x23F)
  {
    goto LABEL_158;
  }

  v29 = *(a1 + 12);
  v30 = BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)];
  v31 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v29 + v30];
  if (!v31)
  {
LABEL_159:
    v116 = "ucChipsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
    v117 = "glsignalid.h";
    v118 = 785;
    goto LABEL_173;
  }

  v32 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v29 - v29 + v30];
  if (!v32)
  {
    goto LABEL_160;
  }

  if (*a19 == 1)
  {
    v33 = a6[12];
    if ((a15 & (*(a17 + 8) < 20.0)) != 0)
    {
      v33 = 0.36;
    }

    v34 = a19[2] <= v33;
    v35 = (*a18 == 1) & ~a11;
    if (a18[2] > v33)
    {
      v35 = 0;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v36 = *(a16 + 16);
  v37 = 1.0;
  v38 = 0.0;
  v121 = v31;
  if ((v35 & 1) == 0 && !v34)
  {
    v39 = a3;
    v40 = 0;
    v122 = 0;
    v120 = 0;
LABEL_20:
    v119 = 1;
    goto LABEL_37;
  }

  if (((v34 | v35) & 1) == 0)
  {
    v116 = "bExtCvecOk || bNomCvecOk";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 107, "EstTrkCodePrmViaOpenLpPeakFit", "bExtCvecOk || bNomCvecOk");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 107;
    goto LABEL_173;
  }

  v41 = v32 * 0.001;
  if (!v34)
  {
    v26 = a18;
  }

  v42 = v26[7];
  v43 = v26[3] + fabsf(v42);
  if (*(a16 + 68) == 2)
  {
    v44 = v43;
  }

  else
  {
    v44 = v26[3];
  }

  if (*(a16 + 56) != 1 || *(a16 + 60) != 2)
  {
    goto LABEL_35;
  }

  v45 = *(a16 + 120) - *(a16 + 96);
  if (v45 <= 0.0)
  {
    v116 = "dDeltaTimeStampInRxSec > 0";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1788, "CalcDllPullInCompensation", "dDeltaTimeStampInRxSec > 0");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1788;
    goto LABEL_173;
  }

  v37 = v26[2];
  v46 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(a1, v45 * (*(a16 + 88) + 1.0));
  v48 = BlueFin::GlMeSrdEstCodePrm::SubMsPart(v47, *(a16 + 128) - *(a16 + 104));
  v49 = v41 * 0.5;
  if (v46 < v49 * -1.0001)
  {
    v116 = "dExpectedDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1798, "CalcDllPullInCompensation", "dExpectedDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1798;
    goto LABEL_173;
  }

  if (v46 > v49 * 1.0001)
  {
    v116 = "dExpectedDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1799, "CalcDllPullInCompensation", "dExpectedDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1799;
    goto LABEL_173;
  }

  if (v48 < v49 * -1.0001)
  {
    v116 = "dActualDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1801, "CalcDllPullInCompensation", "dActualDeltaCodePhsInSec >= (-fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1801;
    goto LABEL_173;
  }

  if (v48 > v49 * 1.0001)
  {
    v116 = "dActualDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1802, "CalcDllPullInCompensation", "dActualDeltaCodePhsInSec <= (fCaEpochInSec * 0.5 * 1.0001)");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1802;
    goto LABEL_173;
  }

  v50 = v48 - v46 + (v48 - v46) * -0.5;
  v51 = v121;
  v27 = a9;
  if (fabs(v50) > v49 / v121)
  {
LABEL_35:
    if (v41 > 0.0)
    {
      v39 = a3;
      v40 = 0;
      v122 = 1;
      v119 = 1;
      v120 = 0;
      v37 = 1.0;
      goto LABEL_37;
    }

LABEL_166:
    v116 = "fCaEpochInSec > 0.0f";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 137, "EstTrkCodePrmViaOpenLpPeakFit", "fCaEpochInSec > 0.0f");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 137;
    goto LABEL_173;
  }

  if (v41 <= 0.0)
  {
    goto LABEL_166;
  }

  v39 = a3;
  v38 = v36 - (v42 + v50 * (v51 / v41));
  if (v38 >= 0.0)
  {
    if (v38 < v51)
    {
      v122 = 0;
      v120 = 0;
      v40 = 1;
      v121 = v44;
      goto LABEL_20;
    }

    v122 = 0;
    v38 = v38 - v51;
    v119 = 0;
    v120 = -1;
    v40 = 1;
    v121 = v44;
  }

  else
  {
    v122 = 0;
    v38 = v38 + v51;
    v40 = 1;
    v121 = v44;
    v119 = 0;
    v120 = 1;
  }

LABEL_37:
  v52 = *(a16 + 16);
  v53 = *(a6 + 16);
  if (!*(a6 + 16))
  {
    v59 = *(a6 + 24);
    if (!*(a6 + 24))
    {
      v116 = "!otEstValidityChkBitMsk32.IsEmpty()";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 1474, "DetermineDllValidity", "!otEstValidityChkBitMsk32.IsEmpty()");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 1474;
LABEL_173:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v117, v118, v116);
    }

    v60 = 0;
    v61 = 2;
    goto LABEL_59;
  }

  __src = *(a16 + 32) - *(a16 + 28);
  v129 = *(a16 + 48);
  v54 = *(a16 + 40);
  v55 = v54;
  v56 = v40;
  v57 = v27;
  if (v54 <= 0.0)
  {
    if (v54 >= 0.0)
    {
      LOWORD(v62) = 0;
      goto LABEL_46;
    }

    v58 = -0.5;
  }

  else
  {
    v58 = 0.5;
  }

  v62 = (v55 + v58);
LABEL_46:
  v128 = v62;
  memcpy((*(a1 + 72) + *(a1 + 83) * *(a1 + 82)), &__src, *(a1 + 83));
  v65 = *(a1 + 82) + 1;
  *(a1 + 82) = v65;
  if (*(a1 + 81) <= v65)
  {
    *(a1 + 80) = 1;
    *(a1 + 82) = 0;
    v66 = 9;
  }

  else
  {
    v66 = 9;
    if ((*(a1 + 80) & 1) == 0)
    {
      v66 = 10;
    }
  }

  if (*(a1 + 72 + v66) < v53 || *a17 != 1)
  {
    v60 = 0;
    goto LABEL_57;
  }

  v125[0] = *(a17 + 8);
  if (*(a1 + 16) >= 0x23Fu)
  {
    v116 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v117 = "glsignalid.h";
    v118 = 679;
    goto LABEL_173;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 12) - *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]])
  {
LABEL_160:
    v116 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v117 = "glsignalid.h";
    v118 = 686;
    goto LABEL_173;
  }

  v67 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a1 + 12) - *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]] * 0.001;
  v68 = *v57;
  *&v125[1] = v67;
  v125[2] = v68;
  v125[3] = *(a5 + 20);
  v126 = *(a16 + 49);
  v69 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 72), v53, v125, BlueFin::GlMeSrdEstCodePrm::CalcEarlyMinusLateDllValidityTestStatSummand);
  v60 = a6[5] >= v69;
LABEL_57:
  v59 = *(a6 + 24);
  if (!*(a6 + 24))
  {
    v61 = 1;
    v40 = v56;
    goto LABEL_75;
  }

  v61 = 3;
  v27 = v57;
  v40 = v56;
LABEL_59:
  v70 = *(v27 + 1);
  if (a12 <= 3u)
  {
    v72 = *(a5 + 20) / **(v39 + 24);
  }

  else
  {
    v71 = *(a5 + 20) / **(v39 + 24);
    v72 = v71 * v71;
  }

  v73 = (v70 * a6[9]) * v72;
  v74 = *(a1 + 40);
  v75 = v74 - v73;
  if ((v74 - v73) < 0.0)
  {
    v75 = -(v74 - v73);
  }

  if (v75 >= 1.0 || v74 == 0.0 && v73 != 0.0)
  {
    *(a1 + 40) = v73;
    *v125 = v73;
    *(a1 + 58) = 0;
    *(a1 + 56) = 1;
    if (*(a1 + 57))
    {
      v76 = 0;
      do
      {
        memcpy((*(a1 + 48) + v76 * *(a1 + 59)), v125, *(a1 + 59));
        ++v76;
      }

      while (v76 < *(a1 + 57));
    }
  }

  v125[0] = *(a16 + 36);
  memcpy((*(a1 + 48) + *(a1 + 59) * *(a1 + 58)), v125, *(a1 + 59));
  v77 = *(a1 + 58) + 1;
  *(a1 + 58) = v77;
  if (*(a1 + 57) <= v77)
  {
    *(a1 + 56) = 1;
    *(a1 + 58) = 0;
  }

  v78 = v72 * (v70 * a6[10]);
  v79 = BlueFin::GlMeSrdObsBuf::SumFcn((a1 + 48), v59, 0, BlueFin::GlMeSrdEstCodePrm::CalcPromptMagSqrdDllValidityTestStatSummand) / v59;
  if (v78 <= v79)
  {
    v60 |= 2u;
  }

LABEL_75:
  if ((v60 & ~v61) != 0)
  {
    v116 = "otValRslt.IsEmpty()";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 1480, "DetermineDllValidity", "otValRslt.IsEmpty()");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 1480;
    goto LABEL_173;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x3F);
  }

  if (v61 == v60)
  {
    v80 = *(a5 + 92);
    v81 = *(a5 + 20) * (2.0 - v80);
    v82 = __exp10f(*(a17 + 8) / 10.0);
    v83 = sqrtf(((v80 * *(a5 + 88)) * ((2.0 / (v81 * v82)) + 1.0)) / (v82 + v82));
    goto LABEL_83;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
LABEL_158:
    v116 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 778, "GetChipsPerEpoch", "IsValid()");
    v117 = "glsignalid.h";
    v118 = 778;
    goto LABEL_173;
  }

  v84 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * *(a1 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]];
  if (!v84)
  {
    goto LABEL_159;
  }

  v83 = v84;
LABEL_83:
  v85 = *(a16 + 4);
  v86 = *(a10 + 1);
  v87 = *(a10 + 3);
  *a22 = 0;
  *(a22 + 2) = 0;
  *(a22 + 8) = 0;
  *(a22 + 16) = 0;
  *(a22 + 28) = v40 & (v122 ^ 1);
  v88 = *(a6 + 22);
  if ((v86 & 0x20) != 0)
  {
    v89 = a13;
  }

  else
  {
    v89 = 1;
  }

  if ((v87 & 0x10) != 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 1;
  }

  if ((v90 & 1) == 0)
  {
    *(a1 + 20) = 1;
    *(a1 + 28) = v85;
    v91 = *(a1 + 22);
    if (v88 > v91)
    {
      LOWORD(v91) = v88;
    }

    *(a1 + 22) = v91;
  }

  if (v85 > v88)
  {
    v92 = *(a1 + 24);
    if (v61 == v60 || (v40 & 1) != 0)
    {
      if (v92 >= 4)
      {
        *(a1 + 20) = 1;
        *(a1 + 24) = 0;
      }
    }

    else
    {
      v93 = v92 + 1;
      *(a1 + 24) = v93;
      v94 = *(a1 + 22);
      if (v88 > v94)
      {
        LOWORD(v94) = v88;
      }

      *(a1 + 22) = v94;
      if (v93 >= 4)
      {
        *(a1 + 20) = 1;
        *(a1 + 28) = v85;
      }
    }

    v95 = *(a1 + 28);
    v96 = v85 >= v95;
    v97 = v85 - v95;
    if (!v96)
    {
      v116 = "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 727, "UpdateDllProbation", "ulEpochCntInMs >= m_stCodePhsState.m_ulStartOfDllProbationPeriodInMs");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 727;
      goto LABEL_173;
    }

    if (*(a1 + 20) != 1 || (v98 = *(a1 + 22), v97 > v98))
    {
      v99 = 0;
      *(a1 + 20) = 0;
      *(a1 + 22) = 0;
      if (v122)
      {
        goto LABEL_135;
      }

      goto LABEL_113;
    }

    if (v88 <= v98)
    {
      v100 = *(a1 + 22);
    }

    else
    {
      v100 = v88;
    }

    *(a1 + 22) = v100;
  }

  v99 = 1;
  if (v122)
  {
    goto LABEL_135;
  }

LABEL_113:
  v101 = a13 & ~a14;
  v63 = *a6;
  v102 = v63 != 0;
  if ((v101 & 1) == 0 && !v63)
  {
    goto LABEL_135;
  }

  v103 = 0;
  v104 = *(a6 + 13) >= v85;
  v105 = v119 & v104 & v90;
  v106 = v104 & v40;
  while (1)
  {
    v64 = v102;
    v63 = v102 ? v63 : v101 & 1u;
    v107 = v63 != 1;
    if (v63 == 1)
    {
      break;
    }

    if (v63 != 2)
    {
      v116 = "0";
      DeviceFaultNotify("glmesrd_codeprm.cpp", 466, "SelectPublishedCodePrmEst", "0");
      v117 = "glmesrd_codeprm.cpp";
      v118 = 466;
      goto LABEL_173;
    }

    if (v106)
    {
      *a22 = 1;
      *(a22 + 20) = 2;
      *(a22 + 8) = v38;
      *(a22 + 2) = v120;
      goto LABEL_134;
    }

LABEL_129:
    v103 += v64;
    v101 &= v102 && v107;
    v63 = LODWORD(a6[v103]);
    v102 = v63 != 0;
    v64 = v102 | v101;
    if (!((v63 != 0) | v101 & 1))
    {
      goto LABEL_135;
    }
  }

  if (((v61 == v60) & v40) == 0)
  {
    goto LABEL_129;
  }

  if (*(a1 + 16) >= 0x23Fu)
  {
    goto LABEL_158;
  }

  v63 = *(a1 + 12);
  v108 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v63 + BlueFin::GlSvId::s_aucSvId2gnss[*(a1 + 8)]];
  if (!v108)
  {
    goto LABEL_159;
  }

  if (vabdd_f64(v38 - (v108 * v120), v52) >= vcvtd_n_f64_u32(v108, 1uLL))
  {
    goto LABEL_129;
  }

  if (!v99)
  {
    *a22 = v40;
    *(a22 + 20) = 1;
    *(a22 + 8) = v52;
    goto LABEL_154;
  }

  if (!v105)
  {
    goto LABEL_129;
  }

  if (v88 <= *(a1 + 22))
  {
    v88 = *(a1 + 22);
  }

  if (!v88)
  {
    v116 = "dMaxDllPullinProbationTimeInMs > 0.0";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 403, "SelectPublishedCodePrmEst", "dMaxDllPullinProbationTimeInMs > 0.0");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 403;
    goto LABEL_173;
  }

  v109 = (v85 - *(a1 + 28)) / v88;
  v110 = 1.0 - v109;
  v111 = v109;
  v112 = 1.0 - v109;
  v113 = fabsf(v112);
  if (fabsf(v111) > 1.0 && v113 > 1.0)
  {
    v116 = "FABS_F((float)dWeightApplyToDLL) <= 1.0f||FABS_F((float)dWeightApplyToPkfit) <= 1.0f";
    DeviceFaultNotify("glmesrd_codeprm.cpp", 408, "SelectPublishedCodePrmEst", "FABS_F((float)dWeightApplyToDLL) <= 1.0f||FABS_F((float)dWeightApplyToPkfit) <= 1.0f");
    v117 = "glmesrd_codeprm.cpp";
    v118 = 408;
    goto LABEL_173;
  }

  *a22 = v40;
  *(a22 + 20) = 1;
  *(a22 + 8) = v38 * v110 + v109 * v52;
  v83 = v110 * v121 + v109 * v83;
LABEL_154:
  *(a22 + 16) = v83;
  if (v63 == 2)
  {
    v115 = v121;
    if (v121 < v83)
    {
      v115 = v83;
    }

    v121 = v115;
LABEL_134:
    *(a22 + 16) = v121;
  }

LABEL_135:
  *(a22 + 1) = *(a16 + 8);
  *(a22 + 26) = 1;
  *(a22 + 27) = v40 ^ 1;
  *(a22 + 32) = v37;
  *(a22 + 24) = 1;
  *(a22 + 25) = v61 != v60;
  if (*(a7 + 1) == 2)
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmsev2022(a1, v63, v64, a17, a5, a22);
  }

  else
  {

    BlueFin::GlMeSrdEstCodePrm::OverrideTrkCodePrmRmse(a1, v63, v64, a17, a5, a22);
  }
}

void BlueFin::GlMeSrdSatReport::ProcessMsmt(uint64_t a1, uint64_t a2, int a3, __int16 a4, uint64_t a5, const BlueFin::GlSignalId *a6, _BYTE *a7, BlueFin::GlMeSrdStats *a8)
{
  v8 = *(a2 + 8);
  if ((~v8 & 0xA) != 0)
  {
    if ((~v8 & 0x12) != 0)
    {
      if ((~v8 & 0x10002) == 0)
      {
        BlueFin::GlMeSrdSatReport::ProcessSniffMsmt(a1, a2, a6, a3, a5, a7);
      }
    }

    else
    {
      BlueFin::GlMeSrdSatReport::ProcessTrkMsmt(a1, a2, a6, a3, a4, a5, a8);
    }
  }

  else
  {
    BlueFin::GlMeSrdSatReport::ProcessSrchMsmt(a1, a2, a6, a3, a5);
  }
}

uint64_t BlueFin::GlMeSrdStats::setAcqWin(uint64_t result, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  if (*(a3 + 4) == 1 && (*(a3 + 8) & 0xF) != 5)
  {
    v10 = result;
    if (*(result + 42954) == -1)
    {
      GlCustomLog(126, "IQDUMP_ACQ WARNING m_otAcqWinArray overflow\n");
      BlueFin::GlBigArray::Clear(v10 + 42920);
    }

    v11 = BlueFin::GlBigArray::Add((v10 + 42920), *(a2 + 4));
    if (!v11)
    {
      DeviceFaultNotify("glmesrd_stats.cpp", 876, "setAcqWin", "nullptr != pAcqWin");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_stats.cpp", 876, "nullptr != pAcqWin");
    }

    v12 = v11;
    GlCustomLog(126, "IQDUMP_ACQ,%d:%s,%d,%d", BlueFin::GlSvId::s_aucSvId2prn[*a2], BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]]], *a4, a4[1]);
    *v12 = (BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs(a4, a2, a6) * 1000000000.0);
    v14 = (v12 + 6);
    for (i = 8; i != 28; i += 4)
    {
      v16 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(a5 + i), a2, v13);
      v18 = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(a2, v16, v17);
      v19 = ((1.0 - v18) * 0.2 * 1.0e12);
      *(v14 - 5) = v19;
      v20 = v18;
      *v14++ = v20 * 299792458.0;
      GlCustomLog(126, ",%.1f ms(%.0f ppb)", v19 / 1000.0 / 1000.0 / 1000.0, v20 * 1000000000.0);
    }

    return GlCustomLog(126, "\n");
  }

  return result;
}

float BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v3 = *this;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  v5 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v4]];
  if (v4 == 2)
  {
    v6 = (v3 - 59);
    if ((v3 - 52) >= 0xE)
    {
      v6 = -8.0;
    }

    v5 = v5 + v6 * 562500.0;
  }

  v7 = v5;
  return a2 / v7;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::GetSatReportPtr(BlueFin::GlMeSrdSatReportMgr *this, const BlueFin::GlSatCarrId *a2, const BlueFin::GlSignalId *a3, int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  if (a4 && BlueFin::GlBigArray::Has(*(this + 456), *a2 + 100 * *(a2 + 4)))
  {
    v7 = *(this + 456);
    if (*a2 + 100 * *(a2 + 4) - *(v7 + 28) >= *(v7 + 30))
    {
      goto LABEL_44;
    }

    v8 = *(*(v7 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v7 + 28)));
    if (v8 == 0xFFFF)
    {
      goto LABEL_11;
    }

    if (*(v7 + 32) <= v8)
    {
      goto LABEL_45;
    }

    if (*v7 && (v9 = *v7 + *(v7 + 24) * v8, *(v9 + 500) == *a3) && *(v9 + 504) == *(a3 + 1))
    {
      memcpy(__dst, (v9 + 160), sizeof(__dst));
      v10 = 1;
    }

    else
    {
LABEL_11:
      v10 = 0;
    }

    BlueFin::GlMeSrdSatReportMgr::DestroySatReport(this, a2);
  }

  else
  {
    v10 = 0;
  }

  v11 = BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4));
  v12 = *(this + 456);
  if (!v11)
  {
    if (*a2 + 100 * *(a2 + 4) - *(v12 + 28) < *(v12 + 30))
    {
      v22 = *(*(v12 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v12 + 28)));
      if (*(v12 + 32) > v22)
      {
        v21 = *v12 + *(v12 + 24) * v22;
        if (*(v21 + 500) == *a3 && *(v21 + 504) == *(a3 + 1))
        {
          goto LABEL_35;
        }

        v28 = "pSatReport->GetSignalIndex() == otSignalId";
        DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 225, "GetSatReportPtr", "pSatReport->GetSignalIndex() == otSignalId");
        v29 = "glmesrd_sat_report_mgr.cpp";
        v30 = 225;
LABEL_47:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v29, v30, v28);
      }

LABEL_45:
      v28 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v29 = "glinc_array.h";
      v30 = 319;
      goto LABEL_47;
    }

LABEL_44:
    v28 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v29 = "glinc_array.h";
    v30 = 313;
    goto LABEL_47;
  }

  if (*(v12 + 34) != -1)
  {
    goto LABEL_25;
  }

  if (!*(v12 + 32))
  {
    goto LABEL_49;
  }

  v13 = 0;
  v14 = -1;
  v15 = -1;
  do
  {
    v16 = (*(v12 + 28) + *(*(v12 + 16) + 2 * v13));
    if (!BlueFin::GlBigArray::Has(v12, v16))
    {
      v28 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v29 = "glinc_array.h";
      v30 = 362;
      goto LABEL_47;
    }

    v17 = *(this + 456);
    if (v16 - *(v17 + 28) >= *(v17 + 30))
    {
      goto LABEL_44;
    }

    v18 = *(*(v17 + 8) + 2 * (v16 - *(v17 + 28)));
    if (*(v17 + 32) <= v18)
    {
      goto LABEL_45;
    }

    ++v13;
    v19 = *(*v17 + *(v17 + 24) * v18 + 24);
    if (v19 < v14)
    {
      v14 = v19;
      v15 = v16;
    }
  }

  while (v13 < *(v12 + 32));
  if (v15 == 0xFFFF)
  {
LABEL_49:
    v28 = "usHandleOlder != 0xFFFF";
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 200, "GetSatReportPtr", "usHandleOlder != 0xFFFF");
    v29 = "glmesrd_sat_report_mgr.cpp";
    v30 = 200;
    goto LABEL_47;
  }

  BlueFin::GlMeSrdSatReportMgr::DestroySatReportByHandle(this, v15);
  v12 = *(this + 456);
LABEL_25:
  v20 = BlueFin::GlBigArray::Add(v12, *a2 + 100 * *(a2 + 4));
  if (!v20)
  {
    v28 = "pSlot != nullptr";
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 206, "GetSatReportPtr", "pSlot != nullptr");
    v29 = "glmesrd_sat_report_mgr.cpp";
    v30 = 206;
    goto LABEL_47;
  }

  v21 = v20;
  BlueFin::GlMeSrdSatReport::GlMeSrdSatReport(v20, this + 24, *a2, a3, *(this + 1), *(this + 2));
  if (v10)
  {
    memcpy((v21 + 160), __dst, 0x150uLL);
  }

LABEL_35:
  if (*a3 - 33 <= 0x12 && !(*(**(this + 458) + 16))(*(this + 458), *a2))
  {
    v24 = (*(**(this + 458) + 24))(*(this + 458), *a2);
    if (v24)
    {
      *(v24 + 416) = 0;
      *(v24 + 384) = 0u;
      *(v24 + 400) = 0u;
      *(v24 + 352) = 0u;
      *(v24 + 368) = 0u;
      *(v24 + 320) = 0u;
      *(v24 + 336) = 0u;
      *(v24 + 288) = 0u;
      *(v24 + 304) = 0u;
      *(v24 + 256) = 0u;
      *(v24 + 272) = 0u;
      *(v24 + 224) = 0u;
      *(v24 + 240) = 0u;
      *(v24 + 192) = 0u;
      *(v24 + 208) = 0u;
      *(v24 + 160) = 0u;
      *(v24 + 176) = 0u;
      *(v24 + 128) = 0u;
      *(v24 + 144) = 0u;
      *(v24 + 96) = 0u;
      *(v24 + 112) = 0u;
      *(v24 + 64) = 0u;
      *(v24 + 80) = 0u;
      *(v24 + 32) = 0u;
      *(v24 + 48) = 0u;
      *v24 = 0u;
      *(v24 + 16) = 0u;
      *(v24 + 417) = 255;
      *(v21 + 3128) = v24;
    }
  }

  if (*a3 - 1 <= 0x1F && !(*(**(this + 459) + 16))(*(this + 459), *a2))
  {
    v25 = (*(**(this + 459) + 24))(*(this + 459), *a2);
    if (v25)
    {
      *(v21 + 3136) = BlueFin::GlMeSrdEstLowTow::GlMeSrdEstLowTow(v25);
    }
  }

  v26 = *MEMORY[0x29EDCA608];
  return v21;
}

double BlueFin::GlMeSrdSatReport::ProcessTrkMsmt(uint64_t a1, uint64_t a2, const BlueFin::GlSignalId *a3, int a4, __int16 a5, uint64_t a6, BlueFin::GlMeSrdStats *a7)
{
  *(a1 + 48) = (*(**(*(a1 + 8) + 24) + 48))(*(*(a1 + 8) + 24));
  BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(v28, a2, a3, a1 + 24, **(a1 + 8), *a1, a4, a5);
  v14 = **(a1 + 8);
  v15 = (*(**a1 + 16))();
  v24[0] = *a3;
  v25 = *(a3 + 1);
  v26 = *(a3 + 4);
  BlueFin::GlMeSrdSatRptNoiseStats::GlMeSrdSatRptNoiseStats(v27, v14, v15, v24);
  v16 = v29;
  v17 = (*(**(*(a1 + 8) + 24) + 40))(*(*(a1 + 8) + 24));
  if (a7 && v17)
  {
    GlCustomLog(15, "SetTrkMsmtIQPower for SvId: %d Index %s PLL I %ul PLL Q %ul\n", *a3, BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a3 + 1) - *(a3 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a3]]], *(a2 + 932), *(a2 + 936));
    BlueFin::GlMeSrdStats::SetTrkMsmtIQPower(a7, *(a2 + 932), *(a2 + 936), a3);
  }

  v18 = (*(***(a1 + 8) + 32))(**(a1 + 8));
  v19 = (*(***(a1 + 8) + 136))(**(a1 + 8));
  v20 = (*(***(a1 + 8) + 144))(**(a1 + 8), v16);
  v21 = (*(***(a1 + 8) + 168))(**(a1 + 8), v16);
  v22 = (*(***(a1 + 8) + 184))(**(a1 + 8), v16);
  BlueFin::GlMeSrdSatReport::RunTrkEstimatorAlgorithms(a1, v18, v19, v20, v21, v22, v27, v28, a6);
  *&result = BlueFin::GlMeSrdSatRptTrkMsmtMI::UpdateState(v28, a1 + 24).n128_u64[0];
  return result;
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMI::GlMeSrdSatRptTrkMsmtMI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, __int16 a8)
{
  v13 = 0;
  v14 = 0;
  *a1 = a2;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a7;
  *(a1 + 32) = a3;
  v15 = a1 + 972;
  *(a1 + 40) = -1;
  v16 = a2 + 25;
  *(a1 + 42) = 0;
  v17 = 255;
  do
  {
    if (*(v16 + v14) != 255)
    {
      *(a1 + 42) = ++v13;
      v18 = *(v16 + v14);
      *(a1 + 41) = v18;
      if (v17 == 255)
      {
        *(a1 + 40) = v18;
        v17 = v18;
      }
    }

    ++v14;
  }

  while (v14 != 5);
  *(a1 + 56) = 0;
  *(a1 + 48) = a6;
  *(a1 + 64) = 0;
  v19 = a1 + 64;
  *(a1 + 60) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 575;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 140) = vneg_f32(0x80000000800000);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt(a1 + 152, 0);
  BlueFin::GlMeSrdAsicCorrVecTrkMsmt::GlMeSrdAsicCorrVecTrkMsmt(a1 + 344, 1);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 548) = 0x7F7FFFFF7F7FFFFFLL;
  *(a1 + 560) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 576) = -1;
  *(a1 + 580) = -1;
  *(a1 + 584) = 0;
  *(a1 + 608) = 0;
  *(a1 + 624) = 0;
  *(a1 + 680) = 0;
  *(a1 + 732) = 0;
  *(a1 + 740) = -1;
  *(a1 + 736) = -1;
  *(a1 + 844) = 0;
  *(a1 + 852) = -1;
  *(a1 + 848) = -1;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0;
  *(a1 + 952) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 728) = 0;
  *(a1 + 980) = 0;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *v15 = vdup_n_s32(0xFF7FFFFD);
  v256 = vdupq_n_s64(0x47EFFFFFA0000000uLL);
  *(v15 + 12) = v256;
  *(a1 + 1000) = 0;
  *(a1 + 1004) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 1024) = 0;
  *(a1 + 1042) = 0;
  v255 = (a1 + 1028);
  *(a1 + 1028) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1060) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1068) = 0;
  *(a1 + 1072) = 575;
  *(a1 + 1076) = 0;
  *(a1 + 1080) = 0;
  *(a1 + 1136) = 0;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 1536) = 0;
  *(a1 + 1538) = 0;
  *(a1 + 1806) = 0;
  *(a1 + 1816) = -1;
  *(a1 + 1146) = -1;
  *(a1 + 1539) = -1;
  *(a1 + 1544) = -1;
  *(a1 + 1804) = -1;
  *(a1 + 1808) = -1;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1772) = 0u;
  *(a1 + 1788) = 0u;
  *(a1 + 1740) = 0u;
  *(a1 + 1756) = 0u;
  *(a1 + 1708) = 0u;
  *(a1 + 1724) = 0u;
  *(a1 + 1676) = 0u;
  *(a1 + 1692) = 0u;
  *(a1 + 1644) = 0u;
  *(a1 + 1660) = 0u;
  *(a1 + 1612) = 0u;
  *(a1 + 1628) = 0u;
  *(a1 + 1580) = 0u;
  *(a1 + 1596) = 0u;
  *(a1 + 1548) = 0u;
  *(a1 + 1564) = 0u;
  *(a1 + 2156) = 0;
  *(a1 + 2124) = 0u;
  *(a1 + 2140) = 0u;
  *(a1 + 2092) = 0u;
  *(a1 + 2108) = 0u;
  *(a1 + 2060) = 0u;
  *(a1 + 2076) = 0u;
  *(a1 + 2028) = 0u;
  *(a1 + 2044) = 0u;
  *(a1 + 1996) = 0u;
  *(a1 + 2012) = 0u;
  *(a1 + 1964) = 0u;
  *(a1 + 1980) = 0u;
  *(a1 + 1932) = 0u;
  *(a1 + 1948) = 0u;
  *(a1 + 1900) = 0u;
  *(a1 + 1916) = 0u;
  *(a1 + 1868) = 0u;
  *(a1 + 1884) = 0u;
  *(a1 + 1836) = 0u;
  *(a1 + 1852) = 0u;
  *(a1 + 1820) = 0u;
  BlueFin::GlMeSrdGridResults::GlMeSrdGridResults((a1 + 2160));
  *(a1 + 3472) = a7;
  *(a1 + 3476) = a8;
  v20 = *(a1 + 16);
  v21 = (*(*a6 + 16))(a6);
  *(a1 + 3480) = (*(*v20 + 48))(v20, v21, a3);
  v22 = *a1;
  v23 = *(*a1 + 8);
  v24 = *a1;
  if ((*&v23 & 0x1011ELL) != 0x116)
  {
    v24 = *a1;
    if ((v23 & 0x200000) == 0)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 185, "CheckRpcBuffer", "(otFlags.Has(FLGS_RECEIVED_ACQ_WIN) && otFlags.Has(FLG_ACQWIN_HAS_COUNT) && otFlags.Has(FLGS_RECEIVED_TRACK) && otFlags.Missing(FLGS_RECEIVED_SEARCH) && otFlags.Missing(FLGS_RECEIVED_SNIFF) && otFlags.Has(FLG_TRACK_HAS_DEBUG)) || otFlags.Has(FLGS_RECEIVED_CW)");
      CrashData();
      v24 = *a1;
    }
  }

  v257 = (a1 + 56);
  v258 = v15;
  if (!*(v24 + 324) && (*(v22 + 10) & 0x20) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 187, "CheckRpcBuffer", "m_rRpcBuffer.GetTrkMsmtRawData().hss.nb_samples > 0 || otFlags.Has(FLGS_RECEIVED_CW)");
    CrashData();
    v24 = *a1;
  }

  v25 = 0;
  v26 = v24 + 25;
  do
  {
    if (*(v26 + v25) != 255)
    {
      v27 = (*(**(a1 + 16) + 80))(*(a1 + 16), *(a1 + 40));
      if (v27 != (*(**(a1 + 16) + 80))(*(a1 + 16), *(v26 + v25)))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 195, "CheckRpcBuffer", "m_rRxParam.GetCnstl(m_ucFirstBlkGearId) == m_rRxParam.GetCnstl(sAcqWin.id.flags.te.blk_gear_id[i])");
        CrashData();
      }
    }

    ++v25;
  }

  while (v25 != 5);
  if (*(a1 + 40) == 255 || *(a1 + 41) == 255)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 198, "CheckRpcBuffer", "m_ucFirstBlkGearId != INVALID_GEAR_ID && m_ucLastBlkGearId != INVALID_GEAR_ID");
    CrashData();
    v254 = *(a1 + 41);
  }

  v28 = (*(**(a1 + 16) + 80))(*(a1 + 16));
  v29 = *(a1 + 32);
  v30 = *v29;
  v31 = BlueFin::GlSvId::s_aucSvId2gnss[*v29];
  if (v28 <= 1)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        if (v31 == 2)
        {
          goto LABEL_64;
        }

        v33 = "INC_GLO( eGnss == GNSS_GLONASS) OMIT_GLO(false)";
        v34 = 213;
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if ((v31 - 3) < 4 || v31 == 0)
    {
      goto LABEL_64;
    }

    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| eGnss == GNSS_BEIDOU) INC_GAL(|| eGnss == GNSS_GALILEO) INC_NIC(|| eGnss == GNSS_NAVIC)";
    v34 = 210;
LABEL_52:
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", v34, "CheckRpcBuffer", v33);
    CrashData();
    goto LABEL_64;
  }

  if (v28 == 2)
  {
    if ((*(v22 + 10) & 0x20) != 0 || v31 == 1 || v31 == 4 && (v30 - 76) <= 0x3E && ((1 << (v30 - 76)) & 0x7C0000000000001FLL) != 0)
    {
      goto LABEL_64;
    }

    v33 = "otFlags.Has(FLGS_RECEIVED_CW) INC_SBS(|| (eGnss == GNSS_SBAS)) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouGeo()))";
    v34 = 218;
    goto LABEL_52;
  }

  if (v28 == 3)
  {
    if (BlueFin::GlSvId::s_aucSvId2gnss[*v29] > 3u)
    {
      if (v31 == 4)
      {
        if ((v30 - 134) > 0xFFFFFFCA)
        {
          goto LABEL_64;
        }
      }

      else if (v31 == 5)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (BlueFin::GlSvId::s_aucSvId2gnss[*v29])
      {
        v35 = v31 == 3;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_64;
      }
    }

    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouNonGeo())) INC_GAL(|| (eGnss == GNSS_GALILEO))";
    v34 = 224;
    goto LABEL_52;
  }

  if (v28 != 4)
  {
LABEL_51:
    v33 = "false";
    v34 = 240;
    goto LABEL_52;
  }

  if (*(v29 + 1) != 3)
  {
    if (v31 == 5)
    {
      goto LABEL_64;
    }

    v33 = "INC_GAL(eGnss == GNSS_GALILEO) OMIT_GAL(false)";
    v34 = 236;
    goto LABEL_52;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*v29] > 3u)
  {
    if (v31 == 4)
    {
      if ((v30 - 134) > 0xFFFFFFCA)
      {
        goto LABEL_64;
      }
    }

    else if (v31 == 5)
    {
      goto LABEL_64;
    }

LABEL_360:
    v33 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS) INC_BDS(|| (eGnss == GNSS_BEIDOU && m_otSignalId.IsBeidouNonGeo())) INC_GAL(|| eGnss == GNSS_GALILEO)";
    v34 = 232;
    goto LABEL_52;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*v29])
  {
    v32 = v31 == 3;
  }

  else
  {
    v32 = 1;
  }

  if (!v32)
  {
    goto LABEL_360;
  }

LABEL_64:
  v37 = (*(**(a1 + 16) + 72))(*(a1 + 16), *(a1 + 41));
  v38 = *(*a1 + 24) & 0xF;
  if (v37 > 2)
  {
    if (v37 == 3)
    {
      if (v38 == 6)
      {
        goto LABEL_84;
      }

      v39 = "eTrkMode == TRK_POST_FRAMENCVEC_MODE";
      v40 = 251;
      goto LABEL_80;
    }

    if (v37 != 4)
    {
      if (v37 == 5)
      {
        if (v38 == 1)
        {
          goto LABEL_84;
        }

        v39 = "eTrkMode == TRK_POST_BIT_MODE";
        v40 = 253;
        goto LABEL_80;
      }

LABEL_79:
      v39 = "false";
      v40 = 255;
LABEL_80:
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", v40, "CheckRpcBuffer", v39);
      CrashData();
      goto LABEL_84;
    }

    if (v38 != 3)
    {
      v39 = "eTrkMode == TRK_DATA_WIPEOFF_MODE";
      v40 = 252;
      goto LABEL_80;
    }
  }

  else
  {
    if (!v37)
    {
      if ((*(*a1 + 24) & 0xF) == 0)
      {
        goto LABEL_84;
      }

      v39 = "eTrkMode == TRK_PRE_BIT_MODE";
      v40 = 248;
      goto LABEL_80;
    }

    if (v37 != 1)
    {
      if (v37 == 2)
      {
        if (v38 == 2)
        {
          goto LABEL_84;
        }

        v39 = "eTrkMode == TRK_POST_FRAME_MODE";
        v40 = 250;
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    if (v38 != 1)
    {
      v39 = "eTrkMode == TRK_POST_BIT_MODE";
      v40 = 249;
      goto LABEL_80;
    }
  }

LABEL_84:
  v41 = (*(**(a1 + 16) + 184))(*(a1 + 16), *(a1 + 41));
  v42 = *a1;
  v43 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  v44 = v43;
  v45 = *(*a1 + 8);
  if ((~v45 & 0x100002) == 0)
  {
    v46 = (*(v42 + 3146) >> 1) & 0x1F;
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 552, "BuildAcqWindowMsmtInfo", "rTrkGrid.tapcfg.tap_info.bits.cfg_id < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = (*(v42 + 3146) >> 1) & 0x1F;
    }

LABEL_90:
    v48 = v47 + 12 * v46 + 12;
    goto LABEL_91;
  }

  if ((~v45 & 0x40002) == 0)
  {
    v46 = *(v42 + 1845);
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 557, "BuildAcqWindowMsmtInfo", "rTrkGrid.data.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = *(v42 + 1845);
    }

    goto LABEL_90;
  }

  if ((~v45 & 0x80002) == 0)
  {
    v46 = *(v42 + 2913);
    v47 = *(v43 + 64);
    if (*(v47 + 8) <= v46)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 562, "BuildAcqWindowMsmtInfo", "rTrkGrid.msmt.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
      CrashData();
      v47 = *(v44 + 64);
      v46 = *(v42 + 2913);
    }

    goto LABEL_90;
  }

  v48 = *(*(a1 + 8) + 464);
  if (!v48)
  {
    v49 = 0.0;
    goto LABEL_97;
  }

LABEL_91:
  v49 = 0.0;
  if ((*(*a1 + 104) & 8) != 0)
  {
    v50 = (*(v48 + 8) >> 4) & 0x1F;
    if (v50)
    {
      v51 = *(a1 + 32);
      if (*(v51 + 4) >= 0x23Fu)
      {
        goto LABEL_353;
      }

      v52 = *(v51 + 1);
      v53 = BlueFin::GlSvId::s_aucSvId2gnss[*v51];
      v54 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + v53];
      if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v52 - v52 + v53])
      {
        goto LABEL_354;
      }

      v55 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v52 + v53];
      if (!v55)
      {
LABEL_355:
        v252 = "ucChipsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 785, "GetChipsPerEpoch", "ucChipsPerEpoch != 0");
        v253 = 785;
LABEL_356:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v253, v252);
      }

      v49 = v54 * 0.001 * v50 / v55;
    }
  }

LABEL_97:
  *(a1 + 56) = 1;
  *(a1 + 60) = 2;
  v56 = *(a1 + 32);
  if (v19 != v56)
  {
    *(a1 + 64) = *v56;
    *(a1 + 68) = *(v56 + 4);
    *(a1 + 72) = *(v56 + 8);
  }

  *(a1 + 96) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToInitialUserTimeMs(v42 + 36, v56, *(a1 + 24)) * 0.001;
  *(a1 + 96) = *(a1 + 96) - (*(**(a1 + 16) + 56))(*(a1 + 16), *(a1 + 32));
  *(a1 + 96) = *(a1 + 96) - BlueFin::GlSignalId::GetInterSignalBiasInMs(*(a1 + 32), *(a1 + 48)) * 0.001 - v49;
  v59 = *(a1 + 32);
  if (*(v59 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v60 = *(v59 + 1);
  v61 = BlueFin::GlSvId::s_aucSvId2gnss[*v59];
  v62 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v60 - v60 + v61];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v60 - v60 + v61])
  {
    goto LABEL_354;
  }

  v63 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v60 + v61];
  if (!v63)
  {
    goto LABEL_355;
  }

  v64 = *(v42 + 44);
  LOWORD(v57) = *(v42 + 56);
  LODWORD(v58) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v65 = v57 / v58;
  v66 = *&v65 + (v64 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v65) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a1 + 104) = (v66 / v65 + (v64 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v62 * 0.001) / v63;
  *(a1 + 120) = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((v42 + 36), v59, *(a1 + 24)) * 0.001;
  *(a1 + 120) = *(a1 + 120) - (*(**(a1 + 16) + 56))(*(a1 + 16), *(a1 + 32));
  *(a1 + 120) = *(a1 + 120) - BlueFin::GlSignalId::GetInterSignalBiasInMs(*(a1 + 32), *(a1 + 48)) * 0.001 - v49;
  v69 = *(a1 + 32);
  if (*(v69 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v70 = *(v69 + 1);
  v71 = BlueFin::GlSvId::s_aucSvId2gnss[*v69];
  v72 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v70 - v70 + v71];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v70 - v70 + v71])
  {
    goto LABEL_354;
  }

  v73 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v70 + v71];
  if (!v73)
  {
    goto LABEL_355;
  }

  v74 = *(v42 + 48);
  LOWORD(v67) = *(v42 + 58);
  LODWORD(v68) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v75 = v67 / v68;
  v76 = *&v75 + (v74 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v75) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  *(a1 + 128) = (v76 / v75 + (v74 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft)) * (v72 * 0.001) / v73;
  EpochCntInMs = BlueFin::GlMeSrdSatRptTrkMsmtMI::GetEpochCntInMs(a1);
  v79 = 0;
  v80 = 0;
  *(a1 + 76) = EpochCntInMs;
  *(a1 + 80) = 0;
  v81 = v42 + 25;
  do
  {
    if (*(v81 + v80) != 255)
    {
      *(a1 + 80) = ++v79;
    }

    ++v80;
  }

  while (v80 != 5);
  v83 = *(v42 + 72);
  v82 = v42 + 72;
  *(a1 + 81) = (*(v82 - 42) & 0x10) != 0;
  v85 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v83, *(a1 + 32), v78);
  if (*(v82 - 52) == 1)
  {
    v86 = 0;
    LOBYTE(v87) = 4;
    do
    {
      if (*(v81 + v86) != 0xFF)
      {
        LOBYTE(v87) = v86;
      }

      ++v86;
    }

    while (v86 != 5);
    v87 = v87;
  }

  else
  {
    v87 = 4;
  }

  v88 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v82 + 4 * v87), *(a1 + 32), v84);
  *(a1 + 88) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(*(a1 + 32), v85, v89);
  *(a1 + 112) = BlueFin::GlMeSrdAsicUnitConverter::HzToPpu(*(a1 + 32), v88, v90);
  v91 = BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCNoMsmt(a1, *(a4 + 24));
  v92 = *a1;
  v93 = (*(**(a1 + 16) + 168))(*(a1 + 16), *(a1 + 41), v91);
  v94 = *a1;
  if (*(v93 + 157) == 1 && (*(v94 + 104) & 8) != 0)
  {
    v95 = *(v93 + 158);
    if (v95 <= 7)
    {
      v96 = v95 + 1;
      v97 = (v92 + 4 * v95 + 392);
      do
      {
        *(v97 - 8) = 0;
        *v97++ = 0;
        v98 = v96++;
      }

      while (v98 != 8);
    }
  }

  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(a1, v94 + 360, v94 + 848, 0, a1 + 152, *(a1 + 80), *(v41 + 16));
  if ((*(*a1 + 9) & 2) != 0)
  {
    BlueFin::GlMeSrdAsicCorrVecTrkMsmt::CopyFrom(a1 + 344, a1 + 152);
    *(a1 + 352) = 1;
  }

  else
  {
    BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCvecMsmt(a1, *a1 + 392, *a1 + 848, 1, a1 + 344, *(a1 + 80), *(v41 + 20));
  }

  v99 = *a1;
  v101 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  v102 = *a1;
  *(a1 + 2156) = *(v99 + 107);
  v103 = 1832;
  v104 = 1824;
  do
  {
    v105 = (*(v102 + v104 - 1799) != 255) & *(v99 + 424);
    *(a1 + v104) = v105;
    if (v105 == 1)
    {
      *(a1 + v103) = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*(v102 + v103 - 1760), *(a1 + 32), v100);
    }

    v103 += 4;
    ++v104;
  }

  while (v103 != 1852);
  if (*(v99 + 424))
  {
    v106 = *(a1 + 32);
    if (*(v106 + 4) >= 0x23Fu)
    {
      goto LABEL_353;
    }

    v107 = *(v106 + 1);
    v108 = BlueFin::GlSvId::s_aucSvId2gnss[*v106];
    v109 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v107 - v107];
    v110 = v109[v108];
    if (!v109[v108])
    {
      goto LABEL_354;
    }

    v111 = 0;
    v112 = (a1 + 1852);
    v113 = (v99 + 432);
    v114 = (*(a1 + 3480) / (v110 * 0.001) * *v101);
    *(a1 + 2152) = v114;
    do
    {
      v115 = *v113++;
      *v112++ = v115 - v114;
      v142 = v111++ >= 0x4A;
    }

    while (!v142);
  }

  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCarrMsmt(a1);
  v116 = *a1;
  if ((*(*a1 + 8) & 0x20) == 0)
  {
    *(a1 + 732) = 0;
    goto LABEL_217;
  }

  v117 = *(*(a1 + 8) + 28);
  v118 = *a1;
  if (*(v116 + 736) >= 0x1Au)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1164, "BuildBitPhsMsmt", "rTrkMsmt.hvec.size <= GlMeSrdAsicBitPhsTrkMsmt::MAX_HIST_VEC_LEN");
    CrashData();
    v118 = *a1;
  }

  if (*(v118 + 105) == 8)
  {
    LODWORD(v119) = 0;
    v120 = -1;
    v121 = 1.0;
  }

  else
  {
    if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1))
    {
      v121 = 1.0;
    }

    else
    {
      v121 = 47.448;
    }

    if (*(*a1 + 105) == 8 || (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) & 1) != 0)
    {
      LODWORD(v119) = 0;
    }

    else
    {
      if ((*(**(a1 + 48) + 344))(*(a1 + 48)) >= 0x21)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1183, "BuildBitPhsMsmt", "m_rAsicConfigIfc.GetTrkBitHistObsBitWth() <= 32");
        CrashData();
      }

      if ((*(**(a1 + 48) + 344))(*(a1 + 48)) == 32)
      {
        LODWORD(v119) = 0;
      }

      else
      {
        v119 = 1 << (*(**(a1 + 48) + 344))(*(a1 + 48));
      }

      if ((*(**(a1 + 48) + 344))(*(a1 + 48)) != 32)
      {
        v120 = ~(-1 << (*(**(a1 + 48) + 344))(*(a1 + 48)));
        goto LABEL_150;
      }
    }

    v120 = -1;
  }

LABEL_150:
  if (*(*a1 + 105) == 8 || (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) & 1) != 0)
  {
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
LABEL_153:
    v124 = -1;
    goto LABEL_154;
  }

  if ((*(**(a1 + 48) + 336))(*(a1 + 48)) >= 0x21)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1206, "BuildBitPhsMsmt", "m_rAsicConfigIfc.GetTrkBitHistBitWth() <= 32");
    CrashData();
  }

  if ((*(**(a1 + 48) + 336))(*(a1 + 48)) == 32)
  {
    LODWORD(v123) = 0;
  }

  else
  {
    v123 = 1 << (*(**(a1 + 48) + 336))(*(a1 + 48));
  }

  v122 = 1 << ((*(**(a1 + 48) + 336))(*(a1 + 48)) >> 1);
  if ((*(**(a1 + 48) + 336))() == 32)
  {
    goto LABEL_153;
  }

  v124 = ~(-1 << (*(**(a1 + 48) + 336))(*(a1 + 48)));
LABEL_154:
  v125 = *a1;
  if (*(*a1 + 105) == 8)
  {
LABEL_157:
    v127 = *(v125 + 24);
    goto LABEL_165;
  }

  v126 = *(v116 + 369);
  if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1))
  {
    v125 = *a1;
    goto LABEL_157;
  }

  v127 = v126 & 0x7FFF;
LABEL_165:
  v128 = *(a1 + 8);
  v129 = *(v128 + 28);
  if ((v129 & v120) <= v127)
  {
    v130 = 0;
  }

  else
  {
    v130 = v119;
  }

  v131 = (v129 & ~v120) + v127 + v130;
  if (*(v116 + 369) < 0)
  {
    v132 = v131;
  }

  else
  {
    v132 = v127;
  }

  if (v129)
  {
    v133 = 0;
  }

  else
  {
    if (*(*a1 + 105) == 8)
    {
      v133 = 0;
      v129 = 0;
      goto LABEL_178;
    }

    v133 = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1) ^ 1;
    v128 = *(a1 + 8);
    v129 = *(v128 + 28);
  }

  if (v132 > 0x31 || !v129)
  {
LABEL_178:
    if (v132 > v129)
    {
      goto LABEL_180;
    }
  }

  v133 = 1;
LABEL_180:
  v134 = *(v116 + 736);
  if (v134)
  {
    v135 = (v128 + 32);
    v136 = (v116 + 740);
    v137 = *(v116 + 736);
    while (1)
    {
      v138 = *v135++;
      v139 = v138 & v124;
      v140 = *v136++;
      v142 = v139 >= v140;
      v141 = v139 - v140;
      v142 = v141 == 0 || !v142 || v141 >= v122;
      if (!v142)
      {
        break;
      }

      if (!--v137)
      {
        goto LABEL_188;
      }
    }

    v133 = 1;
  }

LABEL_188:
  if ((v117 == 0) | v133 & 1)
  {
    v129 = 0;
  }

  v143 = v132 - v129;
  v144 = *(*a1 + 105) != 8 || v143 % 0x19 == 0;
  *(a1 + 732) = 1;
  *(a1 + 740) = v134;
  v145 = !v144;
  *(a1 + 736) = v132;
  *(a1 + 844) = 1;
  v146 = v145 | v133;
  *(a1 + 845) = (v145 | v133) & 1;
  *(a1 + 852) = v134;
  *(a1 + 848) = v143;
  *(a1 + 3488) = v132;
  *(a1 + 728) = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1);
  *(a1 + 729) = *(*a1 + 105) == 8;
  v147 = *(a1 + 852);
  if (*(a1 + 852))
  {
    v148 = 0;
    v149 = v116 + 740;
    do
    {
      if ((v117 == 0) | v146 & 1)
      {
        v150 = *&v149[4 * v148];
        v151 = v150;
        v152 = v150;
      }

      else
      {
        v153 = *(*(a1 + 8) + 4 * v148 + 32);
        v154 = *&v149[4 * v148];
        if ((v153 & v124) <= v154)
        {
          v155 = 0;
        }

        else
        {
          v155 = v123;
        }

        v150 = v154 + (v153 & ~v124) + v155;
        if ((*(a1 + 729) & 1) != 0 || *(a1 + 728) == 1)
        {
          v151 = v150;
          v152 = v153 + v150;
        }

        else
        {
          v151 = v150;
          v152 = v150 - v153;
        }

        if (v152 < 0.0)
        {
          v152 = 0.0;
        }
      }

      *(a1 + 856 + 4 * v148) = v121 * v152;
      *(a1 + 744 + 4 * v148) = v121 * v151;
      *(a1 + 3492 + 4 * v148) = v150;
      if (*(*a1 + 105) == 8)
      {
        if (v146)
        {
          goto LABEL_213;
        }
      }

      else
      {
        IsBeidouPrebitWithHssSec = BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(a1);
        v147 = *(a1 + 852);
        if (IsBeidouPrebitWithHssSec & v146)
        {
LABEL_213:
          if (v147)
          {
            v157 = v147;
            v158 = (a1 + 744);
            do
            {
              v158[28] = 0;
              *v158++ = 0;
              --v157;
            }

            while (v157);
          }
        }
      }

      ++v148;
    }

    while (v148 < v147);
  }

LABEL_217:
  if ((*v257 & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1576, "BuildCodePrmMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  if (*(a1 + 152) != 1 || (*(a1 + 344) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1577, "BuildCodePrmMsmt", "m_stNomCvecMsmt.m_bValid && m_stExtCvecMsmt.m_bValid");
    CrashData();
  }

  v159 = (*(**(a1 + 16) + 136))(*(a1 + 16));
  v160 = (*(**(a1 + 16) + 168))(*(a1 + 16), *(a1 + 41));
  v161 = (*(**(a1 + 16) + 184))(*(a1 + 16), *(a1 + 41));
  v162 = *a1;
  v163 = (*(**(a1 + 16) + 72))(*(a1 + 16), *(a1 + 41));
  v164 = (*(**(a1 + 16) + 80))(*(a1 + 16), *(a1 + 41));
  if (v163)
  {
    v167 = 0;
  }

  else
  {
    v167 = v164 == 3;
  }

  if (v167)
  {
    v168 = *(v162 + 376);
    *(v162 + 392) = *(v162 + 360);
    *(v162 + 408) = v168;
  }

  v169 = *v160;
  v170 = *(v161 + 20);
  v171 = *(v161 + 92);
  v172 = *(v160 + 156);
  *(a1 + 1000) = 1;
  *(a1 + 1008) = *(v162 + 61);
  *(a1 + 1024) = 1;
  v173 = *(v162 + 12);
  LOWORD(v165) = *(v162 + 29);
  LODWORD(v166) = BlueFin::GlMeSrdAsicUnitConverter::ulChnTmNcoLsbScale;
  *&v174 = v165 / v166;
  v175 = *&v174 + (v173 & BlueFin::GlMeSrdAsicUnitConverter::usChnTmNcoMsbMsk);
  LOBYTE(v174) = BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  v176 = v175 / v174 + (v173 >> BlueFin::GlMeSrdAsicUnitConverter::ucChnTmNcoMsbSft);
  *(a1 + 1016) = v176;
  *(a1 + 1004) = *(a1 + 76);
  LOWORD(v176) = *(v162 + 162);
  v177 = (v169 * LODWORD(v176)) / v170;
  v178 = (v171 * v172) * 0.5;
  v179 = v178;
  if (v178 > 0.0)
  {
    v180 = 0.5;
LABEL_232:
    v181 = (v179 + v180);
    goto LABEL_233;
  }

  if (v178 < 0.0)
  {
    v180 = -0.5;
    goto LABEL_232;
  }

  LOBYTE(v181) = 0;
LABEL_233:
  v182 = 0.5;
  v183 = v171 * 0.5;
  *(a1 + 1044) = v183;
  *(a1 + 1048) = v181;
  *(a1 + 1049) = v172;
  *(a1 + 1040) = v177;
  v184 = *(v160 + 153);
  v185 = *(v160 + 154);
  v186 = *(v160 + 155);
  if (!*(*(a1 + 32) + 4) && (*(**(a1 + 48) + 256))(*(a1 + 48)) && (*(**(a1 + 48) + 824))(*(a1 + 48)) <= 0x82 && *(v160 + 148) == 7)
  {
    LOBYTE(v183) = *(v159 + 26);
    LOWORD(v182) = *(v159 + 24);
    v185 = 1;
    v186 = 2;
    v184 = 4;
    v187 = LODWORD(v183) / v182;
  }

  else
  {
    LOBYTE(v183) = *(v159 + 26);
    LOWORD(v182) = *(v159 + 24);
    v187 = LODWORD(v183) / v182;
    if (v184 >= 8)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1645, "BuildCodePrmMsmt", "ucCvecPromptIdx < _DIM(m_stExtCvecMsmt.m_stMagSqCvec.m_afCvec)");
      CrashData();
    }
  }

  v188 = v162 + 392;
  *(a1 + 1036) = (v187 * *(v162 + v184 + 98)) / v177;
  v189 = *(*(a1 + 32) + 4);
  if (v189 && v189 != 3)
  {
    v191 = (*(v160 + 148) - 5) < 3;
  }

  else
  {
    if ((*(v160 + 148) - 5) <= 2)
    {
      *v255 = (v187 * *&v188[4 * v186]) / v177;
      v190 = v258;
      goto LABEL_251;
    }

    v191 = 0;
  }

  *v255 = (v187 * *&v188[4 * v184 + 4 * v181]) / v177;
  v190 = v258;
  if (!v191)
  {
    if (v184 < v181)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1670, "BuildCodePrmMsmt", "ucCvecPromptIdx >= ucEarlyOrLateCvDlyOffWrtPrompt");
      CrashData();
    }

    if (v184 - v181 >= 8)
    {
      DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1671, "BuildCodePrmMsmt", "ucCvecPromptIdx-ucEarlyOrLateCvDlyOffWrtPrompt < _DIM(m_stExtCvecMsmt.m_stMagSqCvec.m_afCvec)");
      CrashData();
    }
  }

LABEL_251:
  v192 = *(*(a1 + 32) + 4);
  if (v192 != 3 && v192 || (*(v160 + 148) - 5) > 2)
  {
    v193 = (v184 - v181);
  }

  else
  {
    v193 = v185;
  }

  *(a1 + 1032) = (v187 * *&v188[4 * v193]) / v177;
  *(a1 + 1136) = BlueFin::GlMeSrdSatRptTrkMsmtMI::AidApplied(a1);
  BlueFin::GlMeSrdAcqWindowMsmtInfo::CopyFrom(a1 + 1056, v257);
  BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildNavBitMsmt(a1);
  *(a1 + 980) = 0;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *v190 = vdup_n_s32(0xFF7FFFFD);
  *(v190 + 12) = v256;
  v194 = *a1;
  if (*(*a1 + 105) != 12 || (*(v194 + 24) & 0xF) != 1)
  {
    goto LABEL_307;
  }

  *(a1 + 960) = 257;
  v195.i32[0] = *(*(**(a1 + 16) + 168))(*(a1 + 16), *(a1 + 41));
  v194 = *a1;
  LOWORD(v196) = *(*a1 + 324);
  v197 = v196;
  v198 = *v195.i32 * v196;
  if (*(a1 + 152) == 1)
  {
    v199 = *(a1 + 32);
    v200 = a1 + 1152;
    v201 = a1 + 1548;
    if (*(v199 + 4) < 0x23Fu)
    {
      v202 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v199 + 1) - *(v199 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v199]];
      if (v202)
      {
        v203 = *(a1 + 328);
        v204 = v197 / (v203 / *v195.i32);
        v205 = v203 / (v202 * 0.001);
        v206 = *(a1 + 3480) * v205;
        *(a1 + 972) = (((v198 / v204) * *(a1 + 4 * *(a1 + 301) + 172)) - v206) / (v205 * v205);
        goto LABEL_263;
      }

LABEL_354:
      v252 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v253 = 686;
      goto LABEL_356;
    }

LABEL_353:
    v252 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v253 = 679;
    goto LABEL_356;
  }

  *(a1 + 961) = 0;
  v200 = a1 + 1152;
  v201 = a1 + 1548;
LABEL_263:
  if (*(a1 + 344) != 1)
  {
    v214 = 0;
    goto LABEL_269;
  }

  v207 = *(a1 + 32);
  if (*(v207 + 4) >= 0x23Fu)
  {
    goto LABEL_353;
  }

  v208 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v207 + 1) - *(v207 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v207]];
  if (!v208)
  {
    goto LABEL_354;
  }

  v209 = *(a1 + 520);
  v210 = v197 / (v209 / *v195.i32);
  v211 = v209 / (v208 * 0.001);
  v212 = *(a1 + 3480) * v211;
  v213 = (((v198 / v210) * *(a1 + 4 * *(a1 + 493) + 364)) - v212) / (v211 * v211);
  *(a1 + 976) = v213;
  v214 = *(a1 + 961);
  if (v214)
  {
    *(a1 + 980) = *(a1 + 972) / v213;
  }

LABEL_269:
  if (*(a1 + 1144) == 1)
  {
    v215 = *(a1 + 1536);
    v216 = *(a1 + 1146);
    if (v215 == 1)
    {
      if (!*(a1 + 1146))
      {
        v219 = *(a1 + 1806);
        if (v219)
        {
          v216 = 0;
LABEL_297:
          v223 = v214 != 0;
          if (v215)
          {
            v224 = 1;
          }

          else
          {
            v224 = v219;
          }

          if ((v223 & v216) != 0)
          {
            v222 = v224;
          }

          else
          {
            v222 = 0;
          }

          goto LABEL_303;
        }

        v216 = 0;
LABEL_296:
        v216 = v216 != 0;
        goto LABEL_297;
      }

      v217 = *(a1 + 964);
      if (*(a1 + 1816))
      {
        v218 = 0;
        do
        {
          v195 = vcnt_s8(*(v200 + 4 * v218));
          v195.i16[0] = vaddlv_u8(v195);
          v217 = v217 + v195.u32[0];
          ++v218;
        }

        while (*(a1 + 1816) > v218);
      }

      *(a1 + 964) = v217 / v216;
    }

    v219 = *(a1 + 1806);
    if (v219)
    {
      if (v216)
      {
        v220 = *(a1 + 968);
        if (*(a1 + 1816))
        {
          v221 = 0;
          do
          {
            v195.i32[0] = *(v201 + 4 * v221) ^ (*(v201 + 4 * v221) >> 1);
            v195 = vcnt_s8(v195);
            v195.i16[0] = vaddlv_u8(v195);
            v220 = v220 + v195.u32[0];
            ++v221;
          }

          while (*(a1 + 1816) > v221);
        }

        *(a1 + 968) = v220 / v216;
        v216 = 1;
      }

      goto LABEL_297;
    }

    goto LABEL_296;
  }

  v222 = 0;
LABEL_303:
  *(a1 + 961) = v222;
  if (*(a1 + 624) == 1)
  {
    *(a1 + 962) = *(a1 + 658);
    *(a1 + 984) = *(a1 + 632);
  }

  if (*(a1 + 680) == 1)
  {
    *(a1 + 963) = *(a1 + 706);
    *(a1 + 992) = *(a1 + 688);
  }

LABEL_307:
  v225 = *(v194 + 2);
  if ((v225 & 0x200100) != 0)
  {
    *(a1 + 1820) = 1;
    *(a1 + 1821) = *(v194 + 940);
    *(a1 + 1822) = *(v194 + 941);
  }

  else
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1945, "BuildAidStatus", "0");
    CrashData();
    v194 = *a1;
    v225 = *(*a1 + 8);
  }

  if ((~v225 & 0x100002) == 0 || (v225 & 0x40002) == 0x40002 || (v225 & 0x80002) == 0x80002)
  {
    v226 = (*(**(a1 + 16) + 136))(*(a1 + 16));
    if ((~*(*a1 + 8) & 0xC0002) == 0)
    {
      if (*(v194 + 1844) != *(v194 + 2912))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1969, "BuildGridMsmt", "rTrkGrid.data.hw == rTrkGrid.msmt.hw");
        CrashData();
      }

      if (*(v194 + 1845) != *(v194 + 2913))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1970, "BuildGridMsmt", "rTrkGrid.data.cfg == rTrkGrid.msmt.cfg");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x140002) == 0)
    {
      v227 = *(v194 + 1573);
      if (((v227 >> 1) & 0x1F) != *(v194 + 1845))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1975, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id == rTrkGrid.data.cfg");
        CrashData();
        LOWORD(v227) = *(v194 + 1573);
      }

      if ((v227 & 1) != *(v194 + 1844))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1976, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.hw_type == rTrkGrid.data.hw");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x180002) == 0)
    {
      v228 = *(v194 + 1573);
      if (((v228 >> 1) & 0x1F) != *(v194 + 2913))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1981, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id == rTrkGrid.msmt.cfg");
        CrashData();
        LOWORD(v228) = *(v194 + 1573);
      }

      if ((v228 & 1) != *(v194 + 1844))
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1982, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.hw_type == rTrkGrid.data.hw");
        CrashData();
      }
    }

    if ((~*(*a1 + 8) & 0x100002) == 0)
    {
      *(a1 + 2163) = 1;
      *(a1 + 2160) = *(v194 + 3146) & 1;
      v229 = *(v194 + 3132);
      *(a1 + 3432) = *(v194 + 3116);
      *(a1 + 3448) = v229;
      v230 = (*(v194 + 1573) >> 1) & 0x1F;
      v231 = *(v226 + 64);
      if (*(v231 + 8) <= v230)
      {
        DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1991, "BuildGridMsmt", "rTrkGrid.tapcfg.tap_info.bits.cfg_id < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
        CrashData();
        v231 = *(v226 + 64);
        v230 = (*(v194 + 1573) >> 1) & 0x1F;
      }

      *(a1 + 3464) = v231 + 12 * v230 + 12;
    }

    if (*(a1 + 80) >= 5u)
    {
      v232 = *a1;
      v233 = *(*a1 + 8);
      if ((~v233 & 0x40002) == 0)
      {
        v234 = *(v194 + 1853);
        if (!*(v194 + 1853))
        {
          goto LABEL_341;
        }

        v235 = 0;
        v236 = (v194 + 1856);
        v237 = *(v194 + 1853);
        do
        {
          v238 = *v236++;
          v235 |= v238;
          --v237;
        }

        while (v237);
        if (v235)
        {
          *(a1 + 2161) = 1;
          *(a1 + 2160) = *(v194 + 1844);
          *(a1 + 2164) = *(v194 + 1846);
          *(a1 + 2166) = *(v194 + 462);
          *(a1 + 2171) = *(v194 + 1852);
          *(a1 + 2170) = v234;
          *(a1 + 2172) = (*(v194 + 1854) >> 2) & 3;
          *(a1 + 2173) = (*(v194 + 927) >> 4) & 0x1F;
          *(a1 + 2174) = *(v194 + 1854) & 3;
          memcpy((a1 + 2176), v194 + 1856, 4 * v234);
          memcpy((a1 + 2208), v194 + 1888, 4 * *(v194 + 925));
          v239 = *(v194 + 1845);
          v240 = *(v226 + 64);
          if (*(v240 + 8) <= v239)
          {
            DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 2021, "BuildGridMsmt", "rTrkGrid.data.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
            CrashData();
            v240 = *(v226 + 64);
            v239 = *(v194 + 1845);
            v232 = *a1;
          }

          *(a1 + 3464) = v240 + 12 * v239 + 12;
          v233 = *(v232 + 2);
        }

        else
        {
LABEL_341:
          *(a1 + 2161) = 0;
        }
      }

      if ((~v233 & 0x80002) == 0)
      {
        *(a1 + 2162) = 1;
        *(a1 + 2160) = *(v194 + 1844);
        *(a1 + 3233) = *(v194 + 2914);
        *(a1 + 3232) = *(v194 + 2918);
        *(a1 + 3235) = *(v194 + 2917);
        v241 = *(v194 + 2916);
        *(a1 + 3234) = v241;
        *(a1 + 3239) = *(v194 + 2915);
        *(a1 + 3236) = (*(v194 + 2920) >> 2) & 3;
        *(a1 + 3237) = (*(v194 + 1460) >> 4) & 0x1F;
        *(a1 + 3238) = *(v194 + 2920) & 3;
        if (v241)
        {
          v242 = 0;
          v243 = 0;
          do
          {
            v244 = (v194 + v242);
            v245 = a1 + v242;
            *(a1 + v242 + 3240) = *(v194 + v242 + 2924);
            v246 = *(v194 + v242 + 2928);
            if (*(a1 + 3232) == 1)
            {
              *(v245 + 3244) = v246;
              v247 = v244[733];
            }

            else
            {
              v248 = v246 / 1000.0;
              *(v245 + 3244) = v248;
              v247 = *(v244 + 733) / 1000.0;
            }

            *(a1 + v242 + 3248) = v247;
            memcpy((a1 + v242 + 3252), v194 + v242 + 2936, 4 * *(a1 + 3239));
            ++v243;
            v242 += 48;
          }

          while (v243 < *(v194 + 2916));
        }

        v249 = *(v194 + 2913);
        v250 = *(v226 + 64);
        if (*(v250 + 8) <= v249)
        {
          DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 2062, "BuildGridMsmt", "rTrkGrid.msmt.cfg < (GlIntU8)(stAllCnstlTrkParams.ptrStrTrkGridConfigLUT->nb_configs)");
          CrashData();
          v250 = *(v226 + 64);
          v249 = *(v194 + 2913);
        }

        *(a1 + 3464) = v250 + 12 * v249 + 12;
      }
    }
  }

  return a1;
}

uint64_t BlueFin::GlStream::GetS32(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v16 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 160, "GetS32", "m_uiBitOffset == 0");
    v17 = 160;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v16 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 161, "GetS32", "m_uiBitsRemainingInWord == 0");
    v17 = 161;
    goto LABEL_10;
  }

  v1 = *this;
  v2 = v1 + 4;
  if ((v1 + 4) > *(this + 4))
  {
    v16 = "m_uiOffset + 4 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 163, "GetS32", "m_uiOffset + 4 <= m_uiMaxOffset");
    v17 = 163;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v17, v16);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  if (v3 == 1)
  {
    v7 = v1 + 2;
    *this = v1 + 2;
    v8 = *(v4 + v5);
    v9 = v1 + 3;
    *this = v9;
    v10 = (v6 << 24) | (v8 << 16) | (*(v4 + v7) << 8);
    *this = v2;
    return v10 | *(v4 + v9);
  }

  else
  {
    v12 = v1 + 2;
    *this = v1 + 2;
    v13 = *(v4 + v5);
    v14 = v1 + 3;
    *this = v14;
    v15 = *(v4 + v12) << 16;
    *this = v2;
    return v15 | (v13 << 8) | (*(v4 + v14) << 24) | v6;
  }
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_msmt(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, __int128 *a5, _OWORD *a6, uint64_t *a7, _DWORD *a8, _OWORD *a9, _OWORD *a10, _DWORD *a11, const void *a12, __int128 *a13, int *a14, __int128 *a15, _OWORD *a16)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v21 = *(a1 + 8);
  if ((v21 & 0x10) != 0)
  {
    v55 = "m_otFlags.Missing(FLGS_RECEIVED_TRACK)";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 329, "gll_satrpt_rpc_trk_msmt", "m_otFlags.Missing(FLGS_RECEIVED_TRACK)");
    v56 = 329;
    goto LABEL_24;
  }

  if (a4)
  {
    v22 = 2097168;
  }

  else
  {
    v22 = 16;
  }

  v23 = v21 | v22;
  *(a1 + 8) = v23;
  *(a1 + 104) = a4;
  *(a1 + 105) = a3;
  v24 = *a5;
  *(a1 + 124) = a5[1];
  *(a1 + 108) = v24;
  v25 = a5[2];
  v26 = a5[3];
  v27 = a5[4];
  *(a1 + 188) = a5[5];
  *(a1 + 172) = v27;
  *(a1 + 156) = v26;
  *(a1 + 140) = v25;
  v28 = a5[6];
  v29 = a5[7];
  v30 = a5[8];
  *(a1 + 252) = a5[9];
  *(a1 + 236) = v30;
  *(a1 + 220) = v29;
  *(a1 + 204) = v28;
  v31 = a5[10];
  v32 = a5[11];
  v33 = a5[12];
  *(a1 + 312) = *(a5 + 204);
  *(a1 + 284) = v32;
  *(a1 + 300) = v33;
  *(a1 + 268) = v31;
  v34 = a6;
  *(a1 + 328) = *a6;
  v35 = *a7;
  *(a1 + 352) = *(a7 + 2);
  *(a1 + 344) = v35;
  v36 = a9[1];
  *(a1 + 360) = *a9;
  *(a1 + 376) = v36;
  v37 = a10[1];
  *(a1 + 392) = *a10;
  *(a1 + 408) = v37;
  *(a1 + 732) = *a11;
  LODWORD(v35) = *a14;
  *(a1 + 844) = *(a14 + 2);
  *(a1 + 840) = v35;
  if (a13)
  {
    v23 |= 0x20u;
    *(a1 + 8) = v23;
    v38 = *a13;
    v39 = a13[2];
    *(a1 + 752) = a13[1];
    *(a1 + 768) = v39;
    *(a1 + 736) = v38;
    v40 = a13[3];
    v41 = a13[4];
    v42 = a13[5];
    *(a1 + 832) = *(a13 + 12);
    *(a1 + 800) = v41;
    *(a1 + 816) = v42;
    *(a1 + 784) = v40;
    v44 = a16;
    v43 = a8;
    v45 = a15;
    if (a3 != 12)
    {
      goto LABEL_9;
    }

    if (*(a1 + 736) == 2)
    {
      v46 = *(a1 + 740);
      *(a1 + 748) = v46.i32[0];
      *(a1 + 740) = vrev64_s32(v46);
LABEL_9:
      if (!a15)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v55 = "m_otRawdata.u.sTrk.sTrkMsmt.hvec.size == 2 && sizeof(m_otRawdata.u.sTrk.sTrkMsmt.hvec.vec) > 3";
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 357, "gll_satrpt_rpc_trk_msmt", "m_otRawdata.u.sTrk.sTrkMsmt.hvec.size == 2 && sizeof(m_otRawdata.u.sTrk.sTrkMsmt.hvec.vec) > 3");
    v56 = 357;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", v56, v55);
  }

  v44 = a16;
  v43 = a8;
  v45 = a15;
  if (a15)
  {
LABEL_10:
    v23 |= 0x80u;
    *(a1 + 8) = v23;
    v47 = *v45;
    v48 = v45[1];
    v49 = v45[3];
    *(a1 + 880) = v45[2];
    *(a1 + 896) = v49;
    *(a1 + 848) = v47;
    *(a1 + 864) = v48;
  }

LABEL_11:
  if (v44)
  {
    v23 |= 0x100u;
    *(a1 + 8) = v23;
    v50 = v44[1];
    *(a1 + 912) = *v44;
    *(a1 + 928) = v50;
  }

  if (v43)
  {
    v23 |= 0x200u;
    *(a1 + 8) = v23;
    *(a1 + 356) = *v43;
  }

  v51 = *a14;
  *(a1 + 844) = *(a14 + 2);
  *(a1 + 840) = v51;
  if (a12)
  {
    *(a1 + 8) = v23 | 0x40;
    memcpy((a1 + 424), a12, 0x134uLL);
    v43 = a8;
    v34 = a6;
  }

  v52 = *(a1 + 3152);
  v53 = *(*v52 + 56);

  return v53(v52, a2, a3, a4, a5, v34, a7, v43);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_AcquisitionWindow(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v6 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
  v7 = v6[v5];
  v46[0] = v6[v5];
  Bits = BlueFin::GlStream::GetBits(a2, 1u);
  v47 = Bits;
  if (Bits)
  {
    if (Bits != 1)
    {
      v27 = "0";
      DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2113, "Handle_SatRpt_AcquisitionWindow", "0");
      v28 = 2113;
LABEL_37:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v28, v27);
    }

    v9 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    v48 = v9 & 0xCF | (16 * (BlueFin::GlStream::GetBits(a2, 3u) & 3));
    v10 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    v49[5] = v10 & 0xEF | (16 * (BlueFin::GlStream::GetBits(a2, 1u) & 1));
    BlueFin::GlStream::GetBits(a2, 3u);
    if (v9 == 5)
    {
      LOBYTE(v29) = 0;
      HIDWORD(v29) = BlueFin::GlStream::GetU32(a2);
      v30 = 0;
      LODWORD(v31) = 0;
      *v49 = -1;
      v11 = &v29;
      v49[4] = -1;
    }

    else
    {
      for (i = 0; i != 5; ++i)
      {
        v49[i] = BlueFin::GlStream::GetU08(a2);
      }

      v11 = 0;
    }

    U16 = BlueFin::GlStream::GetU16(a2);
    v43 = BlueFin::GlStream::GetU16(a2);
    v12 = 1;
    v13 = (2 * v43) | 1;
    v44 = BlueFin::GlStream::GetU16(a2);
    v45 = BlueFin::GlStream::GetU16(a2);
    v14 = (2 * v45) | 1;
  }

  else
  {
    *&v49[3] = BlueFin::GlStream::GetBits(a2, 7u);
    v48 = BlueFin::GlStream::GetU08(a2);
    v51 = BlueFin::GlStream::GetBits(a2, 4u) & 0xF;
    BlueFin::GlStream::GetBits(a2, 4u);
    U16 = BlueFin::GlStream::GetU16(a2);
    v43 = 0;
    v45 = 0;
    v9 = v48 & 0xF;
    v11 = 0;
    v12 = 0;
    v50 = BlueFin::GlStream::GetU16(a2);
    v13 = 1;
    v14 = 1;
  }

  if ((v7 - 76) <= 0x3E && (v49[5] & 0xF) == 1)
  {
    v43 = v13;
    v45 = v14;
  }

  v41 = BlueFin::GlStream::GetU08(a2);
  if ((v12 & 1) == 0)
  {
    U24 = BlueFin::GlStream::GetU24(a2);
    v37 = 0;
    U32 = U24;
    v39 = 0;
    v40 = 0;
    v34 = 0;
LABEL_24:
    v22 = BlueFin::GlStream::GetU24(a2);
    if (v22 >= 0x800000)
    {
      v23 = -16777216;
    }

    else
    {
      v23 = 0;
    }

    v36 = v23 | v22;
    v35 = vdupq_n_s32(v23 | v22);
    goto LABEL_28;
  }

  U32 = BlueFin::GlStream::GetU32(a2);
  HIWORD(v39) = BlueFin::GlStream::GetU16(a2);
  LODWORD(v39) = BlueFin::GlStream::GetS32(a2);
  v40 = BlueFin::GlStream::GetU08(a2);
  v37 = BlueFin::GlStream::GetU32(a2);
  WORD2(v39) = BlueFin::GlStream::GetU16(a2);
  v16 = BlueFin::GlStream::GetU24(a2);
  v17 = v16 & 0x7FFFFF;
  if (v16 >= 0x800000)
  {
    v17 = -v17;
  }

  LODWORD(v34) = v17;
  HIDWORD(v34) = BlueFin::GlStream::GetU32(a2);
  if (v9 == 5)
  {
    goto LABEL_24;
  }

  for (j = 8; j != 28; j += 4)
  {
    v19 = BlueFin::GlStream::GetU24(a2);
    if (v19 >= 0x800000)
    {
      v20 = -16777216;
    }

    else
    {
      v20 = 0;
    }

    *(&v34 + j) = v20 | v19;
  }

LABEL_28:
  if (v9 == 5)
  {
    v24 = 0;
  }

  else
  {
    v24 = v12;
  }

  if (v24 == 1)
  {
    v32 = BlueFin::GlStream::GetU32(a2);
    v33 = 0;
    BlueFin::GlStream::GetU32(a2);
    HIDWORD(v31) = -1;
    v25 = &v31 + 4;
  }

  else
  {
    v25 = 0;
  }

  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v27 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 2184, "Handle_SatRpt_AcquisitionWindow", "otStream.GetAvailableSize() == 0");
    v28 = 2184;
    goto LABEL_37;
  }

  return (*(**(*(this + 1) + 17072) + 48))(*(*(this + 1) + 17072), U08, v46, &U16, &v37, &v34, v25, v11, v29, v30, v31);
}

uint64_t BlueFin::GlStream::GetU24(BlueFin::GlStream *this)
{
  if (*(this + 6))
  {
    v11 = "m_uiBitOffset == 0";
    DeviceFaultNotify("glutl_stream.h", 110, "GetU24", "m_uiBitOffset == 0");
    v12 = 110;
    goto LABEL_10;
  }

  if (*(this + 7))
  {
    v11 = "m_uiBitsRemainingInWord == 0";
    DeviceFaultNotify("glutl_stream.h", 111, "GetU24", "m_uiBitsRemainingInWord == 0");
    v12 = 111;
    goto LABEL_10;
  }

  v1 = *this;
  v2 = v1 + 3;
  if ((v1 + 3) > *(this + 4))
  {
    v11 = "m_uiOffset + 3 <= m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.h", 113, "GetU24", "m_uiOffset + 3 <= m_uiMaxOffset");
    v12 = 113;
LABEL_10:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.h", v12, v11);
  }

  v3 = *(this + 20);
  v4 = *(this + 1);
  v5 = v1 + 1;
  *this = v1 + 1;
  v6 = *(v4 + v1);
  v7 = v1 + 2;
  *this = v7;
  if (v3 == 1)
  {
    v8 = (v6 << 16) | (*(v4 + v5) << 8);
    *this = v2;
    return v8 | *(v4 + v7);
  }

  else
  {
    v10 = *(v4 + v5);
    *this = v2;
    return (*(v4 + v7) << 16) | (v10 << 8) | v6;
  }
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_acquisition_window(uint64_t a1, int a2, __int128 *a3, void *a4, __int128 *a5, __int128 *a6, uint64_t *a7, __int128 *a8)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v15 = *(a1 + 8);
  if ((v15 & 2) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 451, "gll_satrpt_rpc_acquisition_window", "m_otFlags.Missing(FLGS_RECEIVED_ACQ_WIN)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 451, "m_otFlags.Missing(FLGS_RECEIVED_ACQ_WIN)");
  }

  v16 = v15 | 2;
  *(a1 + 8) = v15 | 2;
  v17 = *a3;
  *(a1 + 32) = *(a3 + 4);
  *(a1 + 16) = v17;
  *(a1 + 36) = *a4;
  v18 = *a5;
  *(a1 + 60) = *(a5 + 4);
  *(a1 + 44) = v18;
  v19 = *a6;
  *(a1 + 76) = *(a6 + 12);
  *(a1 + 64) = v19;
  if (a7)
  {
    v16 = v15 | 6;
    *(a1 + 8) = v15 | 6;
    v20 = *a7;
    *(a1 + 100) = *(a7 + 2);
    *(a1 + 92) = v20;
  }

  if (a8)
  {
    *(a1 + 8) = v16 | 0x10000;
    v21 = *a8;
    *(a1 + 120) = *(a8 + 4);
    *(a1 + 104) = v21;
  }

  v22 = *(**(a1 + 3152) + 48);

  return v22();
}

void BlueFin::GlMeSrdSatRptRpcListener::gll_satrpt_rpc_acquisition_window(uint64_t a1, unsigned int a2, unsigned __int8 *a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a1 + 8) + 488);
  v12 = v11 & 0x10002;
  v13 = (v11 & 0x10002) == 0x10002 || (~v11 & 0x12) == 0;
  v14 = 14;
  if (!v13)
  {
    v14 = 18;
  }

  GlSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetGlSignalIndex(*a3, a3[v14] & 0xF);
  v35[0] = *a3;
  v36 = GlSignalIndex;
  if (v35[0] - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v35[0]], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * GlSignalIndex - GlSignalIndex + v16] == 255) || (v37 = BlueFin::GlSignalId::s_ausGnss2signalId[v16] + v35[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v16] + GlSignalIndex * BlueFin::GlSvId::s_aucGnss2numSvId[v16], v37 >= 0x23Fu))
  {
    DeviceFaultNotify("glmesrd_sat_report_mgr.cpp", 419, "gll_satrpt_rpc_acquisition_window", "otSignalId.IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr.cpp", 419, "otSignalId.IsValid()");
  }

  v18 = (~*(*(a1 + 8) + 488) & 0xA) == 0 || v12 == 65538;
  BlueFin::GlSatCarrId::GlSatCarrId(v34, a2, GlSignalIndex);
  v19 = BlueFin::GlMeSrdSatReportMgr::CheckForTrackReset(*(a1 + 8), v34, v35);
  SatRptSniffStatePtr = BlueFin::GlMeSrdSatReportMgr::GetSatRptSniffStatePtr(*(a1 + 8), v34, v35);
  v24[0] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 575;
  v29 = 0;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = *(a1 + 8);
  if (*(v21 + 3640))
  {
    BlueFin::GlMeSrdStats::setAcqWin(*(v21 + 3640), v35, a3, a4, a6, *(v21 + 56));
    v21 = *(a1 + 8);
  }

  SatReportPtr = BlueFin::GlMeSrdSatReportMgr::GetSatReportPtr(v21, v34, v35, v18 || v19);
  BlueFin::GlMeSrdSatReport::ProcessMsmt(SatReportPtr, *(a1 + 8) + 480, *(*(a1 + 8) + 56), *(*(a1 + 8) + 3684), v24, v35, SatRptSniffStatePtr, *(*(a1 + 8) + 3640));
  v23 = *(a1 + 8);
  if (v18 && ((~*(v23 + 488) & 0xA) != 0 || *(v23 + 585) != 2))
  {
    BlueFin::GlMeSrdSatReportMgr::DestroySatReport(v23, v34);
    v23 = *(a1 + 8);
  }

  *(v23 + 488) = 0;
  *(v23 + 492) = -1;
  bzero((v23 + 496), 0xC3CuLL);
}

BOOL BlueFin::GlBigArray::Missing(BlueFin::GlBigArray *this, int a2)
{
  v2 = a2 - *(this + 14);
  if (v2 >= *(this + 15))
  {
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", 313, "handle - m_usMinHandle < m_usNumHandles");
  }

  return *(*(this + 1) + 2 * v2) == -1;
}

float BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(BlueFin::GlMeSrdAsicUnitConverter *this, unsigned __int8 *a2, const BlueFin::GlSignalId *a3)
{
  v3 = 1.0;
  if (BlueFin::GlMeSrdAsicUnitConverter::bIsMinnowAsicType == 1)
  {
    if (!BlueFin::GlMeSrdAsicUnitConverter::s_aucSignalIndexAndGnss2NcoScaleFactor[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
    {
      v10 = "ucNcoScaleFactor != 0";
      DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 526, "EswCarrierNcoIncToCarrFreqInHz", "ucNcoScaleFactor != 0");
      v11 = "glmesrd_asic_unit_converter.cpp";
      v12 = 526;
LABEL_13:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v11, v12, v10);
    }

    v3 = BlueFin::GlMeSrdAsicUnitConverter::s_aucSignalIndexAndGnss2NcoScaleFactor[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  }

  if (*(a2 + 4) >= 0x23Fu)
  {
    v10 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v11 = "glsignalid.h";
    v12 = 807;
    goto LABEL_13;
  }

  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v5 = *(a2 + 1);
  v6 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v5 + v4];
  v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v5 - v5 + v4];
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v11 = "glsignalid.h";
    v12 = 815;
    goto LABEL_13;
  }

  return ((this * (1000 * v6 / v7)) * 20.0) / (v3 * BlueFin::GlMeSrdAsicUnitConverter::ulFrqNco2HzScale);
}

uint64_t BlueFin::SensorsData::addgyr(uint64_t result, float *a2)
{
  if (fabsf(*a2) < 750.0 && fabsf(a2[1]) < 750.0 && fabsf(a2[2]) < 750.0)
  {
    v2 = result;
    result = BlueFin::SensorsDownsampleFilt::Update((result + 912), a2);
    if ((result & 1) == 0)
    {
      result = (*(*v2 + 224))(v2);
      v2[206] = v2[202];
      v2[432] = v2[428];
    }
  }

  return result;
}

uint64_t BlueFin::GlPePrawnKf::SetExtSensInfo(uint64_t result, uint64_t a2, int a3)
{
  if (*(a2 + 32) < 0)
  {
    v13 = "rotData.sNumSamples >= 0";
    DeviceFaultNotify("glpe_prawnkf.cpp", 1097, "SetExtSensInfo", "rotData.sNumSamples >= 0");
    v14 = 1097;
    goto LABEL_18;
  }

  if (*(a2 + 32) >= 0x29u)
  {
    v13 = "rotData.sNumSamples <= GL_EXT_SENS_MAX_SAMPLES";
    DeviceFaultNotify("glpe_prawnkf.cpp", 1098, "SetExtSensInfo", "rotData.sNumSamples <= GL_EXT_SENS_MAX_SAMPLES");
    v14 = 1098;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_prawnkf.cpp", v14, v13);
  }

  v3 = *a2;
  if (*(a2 + 32))
  {
    v4 = v3 > 5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = result;
    v6 = result + 9136;
    result = BlueFin::GlPeShrimpSensBuffer::Write(result + 9136, a3, a2 + 40, *(a2 + 32), v3);
    if (*(v5 + 10820) == *(v5 + 10816))
    {
      if (*(v5 + 10832) == 1)
      {
        *(v5 + 5041) = 1;
      }

      v7 = *(v5 + 10824);
      if ((*(v5 + 10828) - v7 + ((*(v5 + 10828) - v7) < 0 ? 0x3C : 0)) >= 1)
      {
        v15 = vdupq_n_s64(0x3F91DF46A2529D34uLL);
        do
        {
          v8 = v6 + 28 * v7;
          v9 = *(v8 + 8);
          v10 = *(v8 + 20);
          v11 = *(v8 + 24);
          *(v5 + 10820) = 0;
          *(v8 + 24) = 0;
          *(v5 + 10824) = (v7 + 1) % 0x3C;
          *(v5 + 10832) = 0;
          v19 = vcvtq_f64_f32(*v8);
          v20 = v9;
          v21 = 0;
          v16 = vmulq_f64(vcvtq_f64_f32(*(v8 + 12)), v15);
          v17 = v10 * 0.0174532925;
          v18 = 0;
          result = BlueFin::GlPeShrimpKf::SensorUpdate(v5, v19.f64, v16.f64, v11);
          v7 = *(v5 + 10824);
        }

        while ((*(v5 + 10828) - v7 + ((*(v5 + 10828) - v7) < 0 ? 0x3C : 0)) >= 1 && (result & 1) != 0);
      }

      v12 = *v5;
      *(v5 + *(*v5 - 24) + 256) |= 8u;
      *(v5 + *(v12 - 24) + 256) |= 4u;
    }
  }

  return result;
}

void BlueFin::GlMeSrdSatRptTrkMsmtMI::BuildCarrMsmt(BlueFin::GlMeSrdSatRptTrkMsmtMI *this)
{
  if ((*(this + 56) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 886, "BuildCarrMsmt", "m_stAcqWindowMsmtInfo.m_bValid");
    CrashData();
  }

  v2 = (*(**(this + 2) + 136))(*(this + 2));
  v3 = (*(**(this + 2) + 168))(*(this + 2), *(this + 41));
  v4 = (*(**(this + 2) + 184))(*(this + 2), *(this + 41));
  v5 = (*(**(this + 6) + 16))(*(this + 6));
  v6 = *(v4 + 52);
  v7 = *v3;
  v8 = *this;
  LOWORD(v9) = *(*this + 324);
  *&v10 = v9;
  v11 = *v3 * *&v10;
  LOBYTE(v10) = *(v2 + 26);
  v12 = v10;
  LOWORD(v10) = *(v2 + 24);
  v13 = v10;
  v14 = (*this + 72);
  *(this + 137) = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(*v14, *(this + 4), v15);
  if (*(v8 + 20) == 1)
  {
    v17 = 0;
    LOBYTE(v18) = 4;
    do
    {
      if (*(v8 + 25 + v17) != 0xFF)
      {
        LOBYTE(v18) = v17;
      }

      ++v17;
    }

    while (v17 != 5);
    v18 = v18;
  }

  else
  {
    v18 = 4;
  }

  v19 = v5 & 0xF000FFFE;
  v20 = v11 / v6;
  v21 = v12 / v13;
  v22 = BlueFin::GlMeSrdAsicUnitConverter::EswCarrierNcoIncToCarrFreqInHz(v14[v18], *(this + 4), v16);
  v23 = *(v8 + 68);
  v24 = *(v8 + 64);
  *(this + 138) = v22;
  v25 = vcvtd_n_f64_s32(v23, 0x18uLL) + v24;
  *(this + 71) = *(this + 15);
  v26 = *(this + 1);
  v27 = *(v26 + 16);
  if (vabdd_f64(v27, v25) > 4194304.0)
  {
    if (v27 <= v25)
    {
      v28 = -8388608.0;
    }

    else
    {
      v28 = 8388608.0;
    }

    v25 = v25 + v28;
  }

  v29 = v19 - 805306389;
  v30 = v21 / v20;
  *(this + 70) = v25 + *(v26 + 8) * 8388608.0;
  for (i = 576; i != 581; ++i)
  {
    if (*(*this + i - 551) == 255)
    {
      v32 = -1;
    }

    else
    {
      v32 = (*(**(this + 2) + 112))(*(this + 2));
    }

    *(this + i) = v32;
  }

  *(this + 544) = 1;
  v33 = *this;
  if ((*(*this + 9) & 2) != 0)
  {
    if (!BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
    {
      *(this + 584) = 0;
      goto LABEL_44;
    }

    v33 = *this;
  }

  *(this + 584) = 1;
  if (*(v33 + 105) == 8 || BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
  {
    if (*(v8 + 736))
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      do
      {
        v38 = *(v8 + 740 + 4 * v35);
        v39 = v37 >= v38;
        if (v37 <= v38)
        {
          v37 = *(v8 + 740 + 4 * v35);
        }

        if (!v39)
        {
          v36 = v34;
        }

        v34 = ++v35;
      }

      while (v35 < *(v8 + 736));
      v40 = v8 + 4 * v36;
      v41 = *(v40 + 224);
      v42 = *(v40 + 124);
    }

    else
    {
      v42 = *(v8 + 112);
      v41 = *(v8 + 116);
      if (BlueFin::GlMeSrdSatRptTrkMsmtMI::IsBeidouPrebitWithHssSec(this))
      {
        *(this + 584) = 0;
      }
    }
  }

  else
  {
    v42 = *(v8 + 112);
    v41 = *(v8 + 116);
  }

  v43 = v3[12];
  v44 = v43 <= v7 || v29 >= 0xFFFFFFFB;
  v45 = *(v8 + 324);
  *(this + 298) = v45;
  *(this + 147) = v42;
  *(this + 148) = v41;
  if (!v44)
  {
    v43 = v7;
  }

  if (v43 > v7)
  {
    *(this + 298) = v45 / llroundf(v43 / v7);
  }

LABEL_44:
  if ((*(*this + 8) & 0x200) != 0)
  {
    *(this + 608) = 1;
    *(this + 77) = *(v8 + 356);
    *(this + 624) = 0;
    goto LABEL_53;
  }

  *(this + 608) = 0;
  *(this + 80) = vcvtd_n_f64_u32(*(v8 + 328), 0x19uLL);
  *(this + 79) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(*(v8 + 332), v7);
  if ((*(*this + 9) & 0x2001) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_trk_msmt.cpp", 1078, "BuildCarrMsmt", "m_rRpcBuffer.GetFlags().Has(FLG_TRACK_HAS_DEBUG) || m_rRpcBuffer.GetFlags().Has(FLGS_RECEIVED_CW)");
    CrashData();
  }

  *(this + 81) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhi2DotToHzPerSec(*(v8 + 916), v7);
  v46 = *(v8 + 336);
  *(this + 165) = v30 * v46;
  *(this + 328) = *(v8 + 734);
  *(this + 658) = (*(v8 + 340) & 1) == 0;
  *(this + 83) = *(v8 + 920);
  v47 = *(this + 4);
  if (*(v47 + 4) >= 0x23Fu)
  {
    v53 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v54 = 679;
    goto LABEL_59;
  }

  v48 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v47 + 1) - *(v47 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v47]];
  if (!v48)
  {
    v53 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v54 = 686;
LABEL_59:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v54, v53);
  }

  *&v49 = v48;
  LOWORD(v49) = *(v2 + 24);
  v50 = sqrtf((*(v8 + 112) * *(v8 + 112)) + (*(v8 + 116) * *(v8 + 116))) + *(this + 435) / v48 * v49 * v11 * 62.5;
  if (v3[12] > v7 && *(this + 580) == 5)
  {
    v50 = v50 * 16.0;
  }

  *(this + 150) = v50 / v11;
  *(this + 168) = v46 / v11;
  *(this + 624) = 1;
  if ((*(*this + 8) & 0x200) == 0)
  {
    *(this + 87) = vcvtd_n_f64_u32(*(v8 + 344), 0x19uLL);
    *(this + 86) = BlueFin::GlMeSrdAsicUnitConverter::EswFllOrPllPhiDotToHz(*(v8 + 348), v7);
    *(this + 352) = *(v8 + 732);
    *(this + 177) = *(v8 + 352);
    v51 = 1;
    *(this + 706) = (*(v8 + 354) & 1) == 0;
    *(this + 89) = *(v8 + 932);
    v52 = *(v8 + 355);
    *(this + 720) = v52 & 1;
    *(this + 721) = (v52 & 2) != 0;
    *(this + 722) = (v52 & 4) != 0;
    goto LABEL_56;
  }

LABEL_53:
  v51 = 0;
LABEL_56:
  *(this + 680) = v51;
  *(this + 536) = 1;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetGearNumber(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 112);

  return v1();
}

uint64_t BlueFin::GlMeSrdCorrVecAccumulator::CalcAvgCvec(_BYTE *a1, unsigned int a2, unsigned int a3, _BYTE *a4, char a5, int a6)
{
  if (a2 >= 0xB)
  {
    v27 = "ucMinNumCvecsToAverage <= GlMeSrdCorrvecAccumulatorArrays::SRD_CORRVEC_MAX_VECS";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 173, "CalcAvgCvec", "ucMinNumCvecsToAverage <= GlMeSrdCorrvecAccumulatorArrays::SRD_CORRVEC_MAX_VECS");
    v28 = 173;
    goto LABEL_39;
  }

  LODWORD(v6) = a1[13];
  if (!a1[13])
  {
    v27 = "m_ucCorrVecLen > 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 174, "CalcAvgCvec", "m_ucCorrVecLen > 0");
    v28 = 174;
    goto LABEL_39;
  }

  v7 = a1[12];
  if (v7 < a2)
  {
    v27 = "ucMinNumCvecsToAverage <= m_ucNumVecs";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 175, "CalcAvgCvec", "ucMinNumCvecsToAverage <= m_ucNumVecs");
    v28 = 175;
    goto LABEL_39;
  }

  v8 = a1[14];
  if (!a1[14])
  {
    v8 = a1[12];
  }

  v9 = v8 - 1;
  v10 = &a1[40 * v8 - 24];
  if (!*v10)
  {
    v27 = "potCorrVecArray[ssSampInd].m_ulTimeStamp != 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 186, "CalcAvgCvec", "potCorrVecArray[ssSampInd].m_ulTimeStamp != 0");
    v28 = 186;
    goto LABEL_39;
  }

  v11 = *(v10 + 5);
  if (a6)
  {
    if (a1[10] == 1)
    {
      LODWORD(v6) = a1[11];
      if (!a1[11])
      {
        v27 = "m_ucIdxOfFirstVeryEarlySample > 0";
        DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 195, "CalcAvgCvec", "m_ucIdxOfFirstVeryEarlySample > 0");
        v28 = 195;
        goto LABEL_39;
      }
    }
  }

  v12 = (v10 + 8);
  v13 = (a4 + 16);
  v6 = v6;
  v14 = a4 + 16;
  v15 = v6;
  do
  {
    v16 = *v12++;
    *v14++ = v16;
    --v15;
  }

  while (v15);
  v17 = *(v10 + 4);
  if (v7 < 2)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v18 = v11 + 8;
    v19 = 1;
    while (a2 > v19 || a3 > v17)
    {
      v9 = (v7 & ((v9 - 1) >> 15)) + v9 - 1;
      v20 = &a1[40 * v9 + 16];
      if (!*v20 || (a5 & 1) == 0 && *(v20 + 5) > v18)
      {
        break;
      }

      v21 = (v20 + 8);
      v22 = (a4 + 16);
      v23 = v6;
      do
      {
        v24 = *v21++;
        *v22 = v24 + *v22;
        ++v22;
        --v23;
      }

      while (v23);
      ++v19;
      v17 += *(v20 + 4);
      if (v7 <= v19)
      {
        goto LABEL_25;
      }
    }

    LOBYTE(v7) = v19;
  }

LABEL_25:
  *a4 = v6;
  if (a6 && (a1[10] & 1) != 0)
  {
    v25 = 0;
    a4[1] = 0;
  }

  else
  {
    a4[1] = a1[10];
    v25 = a1[11];
  }

  a4[2] = v25;
  result = v7;
  if (v7 != 1)
  {
    if (v7)
    {
      do
      {
        *v13 = *v13 / v7;
        ++v13;
        --v6;
      }

      while (v6);
      goto LABEL_32;
    }

    v27 = "ucNumCvecsAveraged > 0";
    DeviceFaultNotify("glmesrd_corrvec_accumulator.cpp", 259, "CalcAvgCvec", "ucNumCvecsAveraged > 0");
    v28 = 259;
LABEL_39:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_corrvec_accumulator.cpp", v28, v27);
  }

LABEL_32:
  a4[12] = v7;
  a4[13] = v17;
  return result;
}

uint64_t BlueFin::GlMeSrdEstPkFit::Run(int a1, int a2, _BYTE *a3, _BYTE *a4, int a5, unsigned int a6, unsigned int a7, char a8, float a9, char a10, char a11, unsigned __int8 a12, signed __int8 *a13, uint64_t a14, uint64_t a15, char a16, char a17, BlueFin::GlMeTrkCvecTapConfig *a18, BlueFin::GlMeSrdEstPkFit *a19, unsigned __int8 *a20)
{
  v74 = *MEMORY[0x29EDCA608];
  if ((*a15 & 1) == 0)
  {
    v63 = "stCNoResults.bValid";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 362, "Run", "stCNoResults.bValid");
    v64 = "glmesrd_pkfit.cpp";
    v65 = 362;
    goto LABEL_60;
  }

  if (*a13 - 1 >= 0xBC)
  {
    v63 = "otSignalId.GetSvId().isValid()";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 363, "Run", "otSignalId.GetSvId().isValid()");
    v64 = "glmesrd_pkfit.cpp";
    v65 = 363;
    goto LABEL_60;
  }

  result = BlueFin::GlMeSrdCorrVecAccumulator::CalcAvgCvec(a3, a6, a7, a20, a8, 0);
  if (a11)
  {
    if (a20[13] < a7 && *(a15 + 8) < 32.0)
    {
      *a18 = 0;
      goto LABEL_54;
    }
  }

  if (*a20 >= 9u)
  {
    v63 = "stAvgdMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN";
    DeviceFaultNotify("glmesrd_pkfit.cpp", 381, "Run", "stAvgdMagSqCvec.m_ucCvecLen <= MAX_CVEC_LEN");
    v64 = "glmesrd_pkfit.cpp";
    v65 = 381;
    goto LABEL_60;
  }

  if (a19 != a20)
  {
    BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(a19, a20);
  }

  v26 = *a19;
  if (*a19)
  {
    v27 = (a19 + 16);
    v28 = *a19;
    do
    {
      v29 = *v27++;
      v30 = v29;
      if (v29 < a9)
      {
        a9 = v30;
      }

      --v28;
    }

    while (v28);
    v31 = (a19 + 16);
    do
    {
      *v31 = sqrtf(*v31 - a9);
      ++v31;
      --v26;
    }

    while (v26);
  }

  *(a19 + 2) = 0;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x97);
  }

  v32 = *(a13 + 1);
  v33 = (v32 == 3 || !v32) && (*a4 - 5) < 2;
  LOBYTE(v66) = a17;
  result = BlueFin::GlMeSrdEstPkFit::CheckForUsableCorrvec((a19 + 16), *a19, *(a19 + 1), *(a19 + 2), v33, a18 + 46, a12, a4, v66, v68);
  *a18 = result;
  if (result != 1)
  {
    goto LABEL_54;
  }

  if (*(a13 + 4) >= 0x23Fu)
  {
    v63 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v64 = "glsignalid.h";
    v65 = 807;
    goto LABEL_60;
  }

  v34 = BlueFin::GlSvId::s_aucSvId2gnss[*a13];
  v35 = *(a13 + 1);
  v36 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v35 + v34];
  v37 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v35 - v35 + v34];
  if (v36)
  {
    v38 = v37 == 0;
  }

  else
  {
    v38 = 1;
  }

  if (v38)
  {
    v63 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v64 = "glsignalid.h";
    v65 = 815;
LABEL_60:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v64, v65, v63);
  }

  v39 = (1000 * v36 / v37);
  *(a18 + 3) = v39 * 0.00000033333;
  if (*a15 == 1)
  {
    v40 = a3[8];
    if (v40 >= 3)
    {
      v41 = 0.2728 / (*(a15 + 12) * v40);
      *(a18 + 3) = v41;
      v42 = v39 * 0.0000000066713;
      if (v41 < v42)
      {
        *(a18 + 3) = v42;
      }
    }
  }

  result = BlueFin::GlMeTrkCvecTapConfig::GetTrackCvecDelayOffsetArray(a4, v73, *a19);
  *(a18 + 2) = 0;
  if (a20[1] != 1)
  {
    goto LABEL_53;
  }

  v44 = a20[2];
  if (!a20[2])
  {
    goto LABEL_53;
  }

  v43 = 0.0;
  v45 = 16;
  v46 = a20[2];
  do
  {
    if (*&a20[v45] > *&v43)
    {
      LODWORD(v43) = *&a20[v45];
    }

    v45 += 4;
    --v46;
  }

  while (v46);
  if (*&v43 <= 0.0)
  {
    goto LABEL_53;
  }

  v47 = *a20;
  v48 = 0.0;
  v49 = 0;
  v50 = 0;
  if (v44 < v47)
  {
    v51 = v47 - v44;
    v52 = 4 * v44;
    v53 = &v73[v44];
    v54 = v52 + 16;
    v55 = (a19 + v52 + 16);
    v56 = &a20[v54];
    do
    {
      if ((*v56 / *&v43) > v48)
      {
        v49 = *v55;
        v50 = *v53;
        v48 = *v56 / *&v43;
      }

      ++v53;
      ++v55;
      ++v56;
      --v51;
    }

    while (v51);
  }

  if (*(a13 + 1))
  {
    *(a18 + 4) = v49;
LABEL_52:
    *(a18 + 5) = v50;
LABEL_53:
    v57 = a3[9];
    v71 = 0;
    v72 = 0;
    v70 = 0.0;
    BYTE5(v67) = v33;
    BYTE4(v67) = a10;
    LODWORD(v67) = *(a13 + 1);
    result = BlueFin::GlMeSrdEstPkFit::LeastSquaresPeakFit((a19 + 16), v73, *a19, a3[8], *(a19 + 1), *(a19 + 2), v57, *a13, v43, v67, &v72 + 1, &v72, &v71 + 1, &v71, &v70, v69);
    v58 = *(&v72 + 1);
    v59 = v73[v57] - v73[0];
    v61 = HIDWORD(v71);
    v60 = v72;
    *(a18 + 1) = *&v72 + *(&v71 + 1);
    *(a18 + 6) = v71;
    *(a18 + 7) = v58;
    *(a18 + 8) = v59 + v58;
    *(a18 + 9) = v60;
    *(a18 + 10) = v61;
    *(a18 + 22) = *(a19 + 6);
    *(a18 + 2) = v70;
    goto LABEL_54;
  }

  *(a18 + 4) = v48;
  v43 = v48;
  if (v48 <= 0.9)
  {
    goto LABEL_52;
  }

  *a18 = 4;
LABEL_54:
  v62 = *MEMORY[0x29EDCA608];
  return result;
}

float BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  *a1 = v2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 4);
  *(a1 + 4) = v3;
  *(a1 + 12) = *(a2 + 6);
  if (v2)
  {
    v4 = (a2 + 16);
    v5 = (a1 + 16);
    do
    {
      v6 = *v4++;
      LODWORD(v3) = v6;
      *v5++ = v6;
      --v2;
    }

    while (v2);
  }

  return *&v3;
}

double BlueFin::GlSystemTime::getSubEpochTime(BlueFin::GlSystemTime *this, const BlueFin::GlSignalId *a2, unsigned __int8 a3)
{
  if (*(a2 + 4) >= 0x23Fu)
  {
    v5 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v6 = 679;
    goto LABEL_8;
  }

  v3 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v5 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v6 = 686;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v6, v5);
  }

  result = *this - ((*this * dbl_298A3A520[*this < 0.0]) / v3 * v3) * dbl_298A3A510[*this < 0.0];
  if ((a3 & (result < 0.0)) != 0)
  {
    return result + v3 * 0.001;
  }

  return result;
}

double BlueFin::GlSystemTime::getSubBitTime(BlueFin::GlSystemTime *this, const BlueFin::GlSignalId *a2, unsigned __int8 a3)
{
  EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(a2);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v11 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v12 = 679;
    goto LABEL_8;
  }

  v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
  {
    v11 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v12 = 686;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v12, v11);
  }

  v8 = v7 * EpochPerBit;
  v9 = (*this * dbl_298A3A520[*this < 0.0]);
  result = dbl_298A3A510[*this < 0.0] * (v9 / v7 * v7 - v9 / v8 * v8);
  if ((a3 & (result < 0.0)) != 0)
  {
    return result + v8 * 0.001;
  }

  return result;
}

void BlueFin::GlMeSrdSvIdReportMgr::SetDSPMeas(BlueFin::GlMeSrdSvIdReportMgr *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3, const BlueFin::GlMeSrdMultiPeakResults *a4)
{
  if (BlueFin::GlMeSrdDspMeasAux::isGarbage(a3))
  {
    v78 = "!otDspMeasAux.isGarbage()";
    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 83, "SetDSPMeas", "!otDspMeasAux.isGarbage()");
    v79 = "glmesrd_svid_report_mgr.cpp";
    v80 = 83;
    goto LABEL_177;
  }

  (*(**(this + 598) + 24))(*(this + 598), a2, a3);
  v8 = BlueFin::GlUtils::m_pInstance;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) != 1 || ((*(*a2 + 24))(a2, 0, 0), (v8 = BlueFin::GlUtils::m_pInstance) != 0))
    {
      if (*(v8 + 1122) == 1)
      {
        (*(*a3 + 24))(a3, 0, 0);
      }
    }
  }

  v9 = *(a2 + 26);
  if (!v9 || v9 == 3 || (*(a3 + 34) & 1) != 0 || v9 == 2 && (((*(**(this + 599) + 1200))(*(this + 599)) & 1) != 0 || *(a2 + 35) == 10))
  {
    v10 = *(a2 + 35);
    if ((v10 - 10) >= 3)
    {
      if (v10 == 14)
      {
LABEL_14:
        if (((*(**(this + 598) + 8))(*(this + 598), *(a2 + 112)) & 1) == 0)
        {
          v11 = *(a2 + 100);
          v12 = *(this + 606);
          v13 = v11 >> 5;
          v14 = *(v12 + 4 * (v11 >> 5));
          v15 = 1 << (v11 & 0x1F);
          if ((v15 & v14) != 0)
          {
            if ((v15 & *(*(this + 600) + 4 * v13)) != 0)
            {
              BlueFin::GlSetBase::Remove(this + 4848, v11);
              (***(this + 598))(*(this + 598), *(a2 + 112));
            }
          }

          else
          {
            *(v12 + 4 * v13) = (1 << (v11 & 0x1F)) | v14;
          }
        }

LABEL_23:
        MsmtHistorySlot = BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
        if ((~*(a2 + 21) & 0x70) == 0)
        {
          v17 = *(a2 + 35);
          if ((v17 - 13) >= 4 && (v17 != 10 || *(a2 + 10) >= 20.0))
          {
            *MsmtHistorySlot = 1;
            *(MsmtHistorySlot + 4) = *(a2 + 8);
            *(MsmtHistorySlot + 8) = *(a2 + 3);
          }
        }

        if (BlueFin::GlMeSatIdProbationMgr::Ignoring(this + 4544, *(a2 + 112), a2 + 100))
        {
          goto LABEL_137;
        }

        v18 = *(a3 + 9);
        if (v18 != 1)
        {
          goto LABEL_45;
        }

        SrchRslts = BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3);
        if (*(SrchRslts + 16) != 0.0)
        {
          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          (*(**(this + 598) + 64))(*(this + 598), a2);
LABEL_32:
          BlueFin::GlMeSatIdProbationMgr::Ignore(this + 4544, *(a2 + 112), a2 + 100);
          goto LABEL_137;
        }

        v20 = SrchRslts;
        if (*(a2 + 35) == 15)
        {
          if (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 13) & 1) != 0 || (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 12))
          {
            if (*(a2 + 35) != 15)
            {
              goto LABEL_38;
            }

            v21 = BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
            if (BlueFin::GlMeSrdSvIdMsmtHistorySlot::Verify2dBitOkToPublish(v21, a2, 0))
            {
              goto LABEL_38;
            }

            BlueFin::GlMeSrdSvIdMsmtHistoryBuffer::GetMsmtHistorySlot((this + 1536), (a2 + 100));
            if ((~*(a2 + 21) & 0x70) != 0)
            {
              goto LABEL_32;
            }
          }

          else
          {
            GlCustomLog(14, "GlMeSrdSvIdReportMgr::MsmtIsGood4Saving SvId %u CarrType %s SatId %u - bad ESW controlled 2dbit estimate\n", *(a2 + 100), BlueFin::GlSignalId::s_ausSignalType2str[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 26) - *(a2 + 26) + BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 100)]]], *(a2 + 112));
          }

          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          goto LABEL_32;
        }

LABEL_38:
        if (*(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 13) == 1 && *(BlueFin::GlMeSrdDspMeasAux::GetSrchRslts(a3) + 12) == 1)
        {
          (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          (*(**(this + 598) + 64))(*(this + 598), a2);
        }

        else if (*(v20 + 4) < (*(v20 + 8) * 0.8))
        {
          if (*(a2 + 35) != 15)
          {
            (*(**(this + 598) + 16))(*(this + 598), *(a2 + 112));
          }

          goto LABEL_137;
        }

        v18 = *(a3 + 9);
LABEL_45:
        BlueFin::GlSatCarrId::GlSatCarrId(v86, *(a2 + 112), *(a2 + 26));
        if (v18 != 4)
        {
          if (v18 == 3)
          {
            goto LABEL_68;
          }

          if (v18 != 2)
          {
            v26 = 0;
            goto LABEL_70;
          }
        }

        TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
        v23 = TrkRslts;
        v24 = *(a2 + 35);
        if (v24 <= 0x11 && ((1 << v24) & 0x21800) != 0)
        {
          v25 = *(TrkRslts + 128);
          if ((v25 & 0x200) != 0)
          {
            (*(**(this + 598) + 40))(*(this + 598), v86);
          }

          else if ((v25 & 0x400) != 0)
          {
            (*(**(this + 598) + 56))(*(this + 598), v86);
          }
        }

        if (v23[136])
        {
          (***(this + 598))(*(this + 598), v86[0]);
          goto LABEL_66;
        }

        if (v23[137] & 1) != 0 || (v23[138] & 1) != 0 || (v23[139] & 1) != 0 || (v23[140] & 1) != 0 || (v23[141] & 1) != 0 || (v23[142] & 1) != 0 || (v23[143])
        {
          v27 = *(**(this + 598) + 32);
        }

        else
        {
          if ((v23[144] & 1) == 0 && (v23[145] & 1) == 0 && (v23[146] & 1) == 0 && (v23[147] & 1) == 0 && (v23[148] & 1) == 0 && (v23[149] & 1) == 0 && (v23[150] & 1) == 0 && v23[151] != 1)
          {
LABEL_66:
            v26 = v18 == 3;
            if (v18 != 2)
            {
              goto LABEL_70;
            }

            v28 = *(a2 + 21);
            if ((v28 & 0x20) != 0)
            {
              v26 = (v28 & 0x40) == 0;
LABEL_70:
              v29 = BlueFin::GlBigArray::Has((*(this + 1) + 800), v86[0] + 100 * v87);
              v30 = *(this + 1);
              if (v29)
              {
                if (v86[0] + 100 * v87 - *(v30 + 828) >= *(v30 + 830))
                {
                  goto LABEL_156;
                }

                v31 = *(*(v30 + 808) + 2 * (v86[0] + 100 * v87 - *(v30 + 828)));
                if (*(v30 + 832) <= v31)
                {
                  goto LABEL_158;
                }

                v32 = *(v30 + 800) + *(v30 + 824) * v31;
                v33 = *(v32 + 140);
                v34 = v33 > 0xF;
                v35 = (1 << v33) & 0x8300;
                if (!v34 && v35 != 0)
                {
                  v37 = *(v32 + 84);
                  if ((v37 & 0x20) != 0 && (v37 & 0x40) != 0 && v26)
                  {
                    goto LABEL_137;
                  }
                }
              }

              if (*(v30 + 834) == -1 && v26)
              {
                goto LABEL_137;
              }

              v38 = BlueFin::GlBigArray::Has((v30 + 800), v86[0] + 100 * v87);
              v39 = v38;
              v40 = *(this + 1);
              if (*(v40 + 834) != -1 || v38)
              {
                goto LABEL_120;
              }

              v81 = v38;
              if (!*(v40 + 832))
              {
                goto LABEL_179;
              }

              v82 = a4;
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v84 = 0;
              v85 = 0;
              v83 = 0;
              v45 = 0.0;
              v46 = 0.0;
              v47 = 0.0;
              do
              {
                v48 = *(this + 1);
                v49 = (*(v40 + 828) + *(*(v40 + 816) + 2 * v41));
                if (!BlueFin::GlBigArray::Has((v40 + 800), v49))
                {
                  v78 = "m_potArray->Has(handle)";
                  DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
                  v79 = "glinc_array.h";
                  v80 = 362;
                  goto LABEL_177;
                }

                if (v49 - *(v48 + 828) >= *(v48 + 830))
                {
                  goto LABEL_156;
                }

                v50 = *(*(v48 + 808) + 2 * (v49 - *(v48 + 828)));
                if (v50 == 0xFFFF)
                {
                  v51 = 0;
                }

                else
                {
                  if (*(v48 + 832) <= v50)
                  {
                    goto LABEL_158;
                  }

                  v51 = *(v48 + 800) + *(v48 + 824) * v50;
                }

                BlueFin::GlSatCarrId::GlSatCarrId(v88, *(v51 + 112), *(v51 + 104));
                v52 = *(v51 + 164);
                switch(v52)
                {
                  case 1:
                    if ((v43 & 1) != 0 && v46 < *(v51 + 24))
                    {
                      v43 = 1;
                    }

                    else
                    {
                      if (v89)
                      {
                        v78 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0";
                        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1486, "GarbageCollector", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0");
                        v79 = "glmesrd_svid_report_mgr.cpp";
                        v80 = 1486;
                        goto LABEL_177;
                      }

                      v46 = *(v51 + 24);
                      v43 = 1;
                      BYTE4(v84) = v88[0];
                    }

                    break;
                  case 2:
                    if ((v42 & (v47 < *(v51 + 24))) != 0)
                    {
                      v42 = 1;
                    }

                    else
                    {
                      v42 = 1;
                      v83 = v89;
                      LOBYTE(v84) = v88[0];
                      v47 = *(v51 + 24);
                    }

                    break;
                  case 3:
                    if ((v44 & 1) != 0 && v45 < *(v51 + 24))
                    {
                      v44 = 1;
                    }

                    else
                    {
                      if (v89 && v89 != 3)
                      {
                        v78 = "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3";
                        DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1465, "GarbageCollector", "otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_0 || otSatCarrId.GetSignalIndex() == SIGNAL_INDEX_3");
                        v79 = "glmesrd_svid_report_mgr.cpp";
                        v80 = 1465;
                        goto LABEL_177;
                      }

                      BYTE4(v85) = v89;
                      v45 = *(v51 + 24);
                      v44 = 1;
                      LOBYTE(v85) = v88[0];
                    }

                    break;
                }

                ++v41;
              }

              while (v41 < *(v40 + 832));
              v53 = v44 | v43 | v42;
              v54 = v84;
              if (v43)
              {
                v54 = BYTE4(v84);
              }

              v55 = v83;
              if (v43)
              {
                v55 = 0;
              }

              if (v44)
              {
                v54 = v85;
                v55 = BYTE4(v85);
              }

              a4 = v82;
              if ((v53 & 1) == 0)
              {
LABEL_179:
                v78 = "0";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1518, "GarbageCollector", "0");
                v79 = "glmesrd_svid_report_mgr.cpp";
                v80 = 1518;
                goto LABEL_177;
              }

              v39 = v81;
              if (v54 == 0xFF)
              {
                v78 = "otSatCarrToRemove.GetSatId() != INVALID_SATID";
                DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 1521, "GarbageCollector", "otSatCarrToRemove.GetSatId() != INVALID_SATID");
                v79 = "glmesrd_svid_report_mgr.cpp";
                v80 = 1521;
                goto LABEL_177;
              }

              v56 = *(this + 1);
              v57 = 100 * v55 + v54;
              if (v57 - *(v56 + 828) < *(v56 + 830))
              {
                v58 = *(*(v56 + 808) + 2 * (v57 - *(v56 + 828)));
                if (v58 == 0xFFFF || *(v56 + 832) > v58)
                {
                  BlueFin::GlBigArray::Remove(v56 + 800, v57);
                  v40 = *(this + 1);
LABEL_120:
                  v59 = BlueFin::GlBigArray::Add((v40 + 800), v86[0] + 100 * v87);
                  if (!v59)
                  {
                    v78 = "potMsmtSlot != nullptr";
                    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 485, "SaveMsmt", "potMsmtSlot != nullptr");
                    v79 = "glmesrd_svid_report_mgr.cpp";
                    v80 = 485;
                    goto LABEL_177;
                  }

                  if (!v39)
                  {
                    v59 = BlueFin::GlMeSrdSvIdReportMsmtSlot::GlMeSrdSvIdReportMsmtSlot(v59);
                  }

                  BlueFin::GlMeSrdSvIdReportMsmtSlot::Save(v59, a2, a3);
                  if (!a4 || *a4 != 1)
                  {
                    goto LABEL_137;
                  }

                  v60 = *(a2 + 26);
                  if (v60 != 2)
                  {
                    if (!v60 && *(a4 + 1))
                    {
                      ++*(this + 32);
                      *(this + 33) += *(a4 + 3);
                    }

                    goto LABEL_137;
                  }

                  v61 = (*(**(this + 3) + 40))(*(this + 3), *(a2 + 112));
                  if (!(*(**(this + 3) + 64))(*(this + 3)) || v61)
                  {
                    v62 = (*(**(this + 3) + 24))(*(this + 3), *(a2 + 112));
                    if (v62)
                    {
                      if ((v61 & 1) == 0)
                      {
                        *v62 = 0;
                        v63 = (v62 + 20);
                        v64 = 80;
                        do
                        {
                          *(v63 - 2) = 0;
                          *(v63 - 1) = 0;
                          *v63 = 1176492032;
                          v63 += 5;
                          v64 -= 20;
                        }

                        while (v64);
                        *(v62 + 84) = 0;
                      }

                      v65 = *(a4 + 1);
                      *v62 = *a4;
                      *(v62 + 16) = v65;
                      v66 = *(a4 + 2);
                      v67 = *(a4 + 3);
                      v68 = *(a4 + 4);
                      *(v62 + 80) = *(a4 + 20);
                      *(v62 + 48) = v67;
                      *(v62 + 64) = v68;
                      *(v62 + 32) = v66;
                      *(v62 + 84) = 1;
                      goto LABEL_137;
                    }

                    v78 = "potMultiPeakResultsSlot != nullptr";
                    DeviceFaultNotify("glmesrd_svid_report_mgr.cpp", 523, "SaveMsmt", "potMultiPeakResultsSlot != nullptr");
                    v79 = "glmesrd_svid_report_mgr.cpp";
                    v80 = 523;
LABEL_177:
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v79, v80, v78);
                  }

LABEL_137:
                  if ((*(this + 4768) & 1) == 0)
                  {
                    v69 = *(this + 1);
                    BlueFin::GlSatCarrId::GlSatCarrId(v88, *(a2 + 112), *(a2 + 26));
                    v70 = BlueFin::GlBigArray::Has((v69 + 800), v88[0] + 100 * v89);
                    v73 = *(a2 + 35);
                    if ((v73 == 15 || v73 == 9) && (*(a2 + 21) & 0x20) != 0 && ((*(a2 + 21) >> 6) & 1 & *&v70) != 0)
                    {
                      v72.n128_u32[0] = *(this + 1193);
                      v74 = *(a2 + 3) + v72.n128_u64[0] * -0.001;
                      v72.n128_f64[0] = v74 + 0.2;
                      v34 = v74 <= 0.0;
                      v71.n128_u64[0] = 1.0;
                      if (!v34 && v72.n128_f64[0] < 1.0)
                      {
                        *(this + 4768) = 1;
                        if (!*(a2 + 26))
                        {
                          (*(**(this + 597) + 24))(*(this + 597), a2, v71, v72);
                          v76 = *(a2 + 3) * 1000.0;
                          v77 = *(**(this + 597) + 64);

                          v77();
                        }
                      }
                    }
                  }

                  return;
                }

LABEL_158:
                v78 = "slot < m_usNumSlots";
                DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
                v79 = "glinc_array.h";
                v80 = 319;
                goto LABEL_177;
              }

LABEL_156:
              v78 = "handle - m_usMinHandle < m_usNumHandles";
              DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
              v79 = "glinc_array.h";
              v80 = 313;
              goto LABEL_177;
            }

LABEL_68:
            v26 = 1;
            goto LABEL_70;
          }

          if ((v23[147] & 1) == 0 && (v23[148] & 1) == 0 && (v23[149] & 1) == 0)
          {
            v23[150];
          }

          v27 = *(**(this + 598) + 32);
        }

        v27();
        goto LABEL_66;
      }

      if (v10 != 17)
      {
        goto LABEL_23;
      }
    }

    *(*(this + 600) + ((*(a2 + 100) >> 3) & 0x1C)) |= 1 << *(a2 + 100);
    if (v10 != 14)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }
}